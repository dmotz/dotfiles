{:user
 {:plugins
  [[cider/cider-nrepl "0.22.0"]
   [lein-ancient "0.6.15"]
   [lein-cljfmt "0.6.4"]
   [jonase/eastwood "0.3.6"]
   [lein-bikeshed "0.5.2"]
   [lein-try "0.4.3"]
   [lein-exec "0.3.7"]
   [lein-kibit "0.1.7"]]

  :middleware [cider-nrepl.plugin/middleware]

  :ultra {:color-scheme :solarized_dark}}}
