// Io: Day 2
/// Conditionals and loops
"Conditionals and loops" println
i := 1
while(i <= 10, i println; i = i + 1)
"Hello there" println

for(i, 1, 10, i println) /// Used this one in day 1
"Hello there" println

for(i, 1, 10, 2, i println)
"Hello there" println

if(false, "It is true.", "It is false.") println

/// Operators
"Operators" println

OperatorTable println
OperatorTable addOperator("xor", 11)
OperatorTable println

/// Implied infix
true xor := method(bool, if(bool, false, true))
false xor := method(bool, if(bool, true, false))

/// Be careful!
(true xor true) println
(true xor false) println
(true xor(true)) println
(true xor(false)) println
/// See this for an explanation https://stackoverflow.com/questions/46759732/io-language-different-behavior-between-interpreter-and-file-execution

/// Messages (sender/target/arguments)
"Messages" println

postOffice := Object clone
postOffice packageSender := method(call sender)
mailer := Object clone
mailer deliver := method(postOffice packageSender)

mailer deliver println

postOffice messageTarget := method(call target)
postOffice messageTarget println

postOffice messageArgs := method(call message arguments)
postOffice messageName := method(call message name)
postOffice messageNameNew := method(call message name)

postOffice messageArgs("one", 2, :three) println
postOffice messageName println
postOffice messageNameNew println

/// Note: Reserved words -> {sender,target,arguments,name}

unless := method(
    (call sender doMessage(call message argAt(0))) ifFalse(
    call sender doMessage(call message argAt(1))) ifTrue(
    call sender doMessage(call message argAt(2)))       
)

unless(1 == 2, write("One is not two\n"), write("one is two\n"))

/// Reflection
"Reflection" println

/// This errors...
//Object ancestors := method(
//      prototype := self proto  
//      if(prototype != Object,
//        writeln("Slots of ", prototype type, "\n---------------")
//        prototype slotNames foreach(slotName, writeln(slotName))
//        writeln
//        prototype ancestors))


Animal := Object clone
Animal speak := method(
            "ambiguous animal noise" println)

Duck := Animal clone
Duck speak := method(
            "quack" println)

Duck walk := method(
            "waddle" println)

disco := Duck clone
disco ancestors 

// Self study

List slotNames println

Matrix := List clone
Matrix dim := method(x, y,
    self xSize := x
    self ySize := y
    y repeat(self append(Range 0 to(x) asList() map(0)))
)
Matrix set := method(x, y, value,
    self at(x) atPut(y, value)
)
Matrix get := method(x, y, 
    self at(x) at(y)
)
Matrix print = method(
    for(i, 1, xSize, 
        for(j, 1, ySize, 
            //i print
            //j print
            //">" print
            get(i,j) print
            " " print
        )
        "" println
    )
)

firstMatrix := Matrix clone
A := firstMatrix dim(4,7)
A set(2,3,7)
A set(4,4,1)
A println
"" println
A xSize println
A ySize println
