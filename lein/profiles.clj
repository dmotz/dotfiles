{:user
 {:plugins
  [[cider/cider-nrepl "0.22.4"]
   [lein-ancient "0.6.15"]
   [lein-cljfmt "0.6.4"]
   [jonase/eastwood "0.3.6"]
   [lein-bikeshed "0.5.2"]
   [lein-try "0.4.3"]
   [lein-exec "0.3.7"]
   [lein-kibit "0.1.7"]]

  :dependencies [[antq/antq "RELEASE"]]

  :middleware [cider-nrepl.plugin/middleware]

  :aliases {"outdated" ["run" "-m" "antq.core"]}

  :ultra {:color-scheme :solarized_dark}}}
