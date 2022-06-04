// Io: Day 3

/// Overloading forward
Builder := Object clone
Builder forward := method(
  writeln("<", call message name, ">")
  call message arguments foreach(
        arg, 
        content := self doMessage(arg); 
        if(content type == "Sequence", writeln(content)))
  writeln("</", call message name, ">"))
Builder  ul(
        li("Io"), 
        li("Lua"), 
        li("JavaScript"))

/// Concurrency: coroutines, actors, and futures

vizzini := Object clone
vizzini talk := method(
            "Fezzik, are there rocks ahead?" println
            yield 
            "No more rhymes now, I mean it." println
             yield)

fezzik := Object clone

fezzik rhyme := method(
                        yield
            "If there are, we'll all be dead." println
            yield 
            "Anybody want a peanut?" println)

//vizzini @@talk; fezzik @@rhyme

//Coroutine currentCoroutine pause

slower := Object clone
faster := Object clone

slower start := method(wait(2); writeln("slowly"))
faster start := method(wait(1); writeln("quickly"))

//slower start; faster start

//slower @@start; faster @@start; wait(3)

futureResult := method(wait(5); return(5))

writeln("This will block until the result is available.")
writeln("fetched ", futureResult, " bytes")

