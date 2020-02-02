(def safe-requires
  "List of namespaces to require and refer when inside user ns at load time.
   Can be given an initialization body to execute after having been required.
   To do so, wrap the lib spec in a vector, and all elements after the lib
   spec vector will be evaled after the lib spec has been required."
  '[[clojure.repl :as repl :refer (source apropos dir pst doc find-doc)]
    [clojure.java.javadoc :as javadoc :refer (javadoc)]
    [clojure.pprint :as pprint :refer (pp pprint)]
    [clojure.stacktrace :as stacktrace :refer (e)]
    [clojure.set :as set]
    [clojure.string :as str]
    [[io.aviso.repl :as aviso]
     ((resolve 'aviso/install-pretty-exceptions))]
    [[puget.printer :as puget :refer (cprint)]
     (add-tap (bound-fn* (resolve 'puget/cprint)))]])

(def lazy-safe-requires
  "List of namespaces to require lazily, by creating a function which
   can be called inside user namespace to cause the require.
   All requiring-fn will be prepended with req- for easy auto-complete.
   Can group requires within a single requiring-fn by listing multiple
   requires. Lib spec can be a safe-require with an init body if wrapped
   in a vector themselves."
  '[[async [clojure.core.async :as async]]
    [logic [clojure.core.logic :as logic]]
    [reducers [clojure.core.reducers :as reducers]]
    [edn [clojure.edn :as edn]]
    [inspector [clojure.inspector :as inspector]]
    [reflect [clojure.reflect :as reflect]]
    [spec [clojure.spec.alpha :as s]
     [clojure.spec.gen.alpha :as sgen]
     [clojure.spec.test.alpha :as stest]]
    [walk [clojure.walk :as walk]]
    [fast [clj-memory-meter.core :as fast-memory-meter :refer (measure)]
     [clj-java-decompiler.core :as fast-decompiler :refer (decompile)]
     [clj-async-profiler.core :as fast-profiler :refer (profile)]
     [jvm-alloc-rate-meter.core :as fast-alloc-rate-meter :refer (start-alloc-rate-meter)]
     [jvm-hiccup-meter.core :as fast-hiccup-meter :refer (start-hiccup-meter)]]
    [viz [com.hypirion.clj-xchart :as viz-xchart]]
    [rebl [[cognitect.rebl :as rebl]
           ((resolve 'rebl/ui))]]
    [math [fastmath.core :as math]]
    [deps [[cemerick.pomegranate :as deps-pomegranate]
           (defn add-lein-deps
             "Given one or more lein style dependency vector, will dynamically
              download them and add them to the classpath so they can be used
              in the current program. Given lein style dependency vectors must be quoted."
             [& lein-style-dependency]
             (let [cl (.getContextClassLoader (Thread/currentThread))]
               (.setContextClassLoader (Thread/currentThread) (clojure.lang.DynamicClassLoader. cl))
               ((resolve 'deps-pomegranate/add-dependencies)
                :coordinates `[~@lein-style-dependency]
                :repositories (merge @(resolve 'cemerick.pomegranate.aether/maven-central)
                                     {"clojars" "https://clojars.org/repo"}))))]]])

(defn safe-require-init [req]
  (let [init? (-> req first vector?)
        lib (if init? (first req) req)
        init (when init? (rest req))]
    `(try
       (require '~lib)
       ~@init
       (catch Throwable t#
         (println ~(str "Error loading " lib ":")
                  (or (.getMessage t#)
                      (type t#)))))))

(defmacro safe-require-inits []
  `(do
     ~@(for [req safe-requires]
         (safe-require-init req))))

(safe-require-inits)

(defmacro def-lazy-requiring-fns []
  `(do
     ~@(for [req-group lazy-safe-requires]
         (let [requiring-fn-name (first req-group)
               requires (rest req-group)]
           `(defn ~(symbol (str "req-" requiring-fn-name)) []
              ~@(for [req requires]
                  (safe-require-init req)))))))

(def-lazy-requiring-fns)
