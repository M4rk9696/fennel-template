(local enet (require :enet))
(local host (enet.host_create))
(local server (host:connect "localhost:6789"))

(var done false)

(while (not done)
  (let [event (host:service 100)]
    (if event
      (let [] (print event.type event.peer)
        (if (= event.type "connect")
            (let []
            (print "Connected to" event.peer)
            (event.peer:send "hello world")
            (print "Sent message to server"))

            (= event.type "receive")
            (let []
            (print "Got message: " event.data event.peer)
            (set done true))
            )))))

(server:disconnect)
(host:flush)