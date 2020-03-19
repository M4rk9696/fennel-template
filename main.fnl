(local x "connect")

(if (= x "abc")
    (let []
    (print "Line 1")
    (print "Line 2"))
    
    (= x "connect")
    (let []
    (print "Line 3")
    (print "Line 4")))
