program ThreadTest2
    var s1 string(6)
    var s2 string(6)

    sub thread1 as thread
        s1 = "hello1"
        writeln("In thread1")
        while true
        wend
    end sub

    sub thread2 as thread
        call thread1
        s2 = "hello2"
        writeln("In thread2")
        while true
        wend
    end sub

    call thread2
    writeln("In main")
    wait

    writeln(s1)
    writeln(s2)
end