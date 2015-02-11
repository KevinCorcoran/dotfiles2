{ :user { 
  :dependencies [[io.aviso/pretty "0.1.12" 
                  :exclusions [org.clojure/clojure]]] ; depends on 1.6 but our stuff is still on 1.5.1
  :repl-options {
    :nrepl-middleware [io.aviso.nrepl/pretty-middleware]}}}
