(local lume (require :lume))
(local enet (require :enet))
(local server "localhost:6789")

(let [host (enet.host_create server)]
  (print "Creating Server on" server)
  (print "Waiting for event")
  (while true
    (local event (host:service 100))
    (if event
      (let [] (print event.type)
      (if (= event.type "receive")
        (let []
        (print "Got message: " event.data event.peer)
        (event.peer:send event.data)))))))
