// Io: Day 1
"Hello, world!" println

/// Objects
"Objects" println
Vehicle := Object clone
Vehicle println

Vehicle description := "Something to take you places"
Vehicle println

Vehicle description = "Something to take you far away"
Vehicle println

/// Will return exception
///Vehicle nonexistingSlot = "Something to take you far away"

Vehicle description println
Vehicle slotNames println
Vehicle type println
Object type println

/// Prototypes and inheritance
"Prototypes and inheritance" println
Car := Vehicle clone
Car slotNames println
Car description println

ferrari := Car clone
ferrari slotNames println
ferrari type println

/// Messages are forwarded to parents
/// Objects are containers of slots
/// Types have CapitalLetters (still an object)
/// Instances are lowercase (still an object)

/// Methods
"Methods" println
method("My method!" println) println
method() type println

Car drive := method("Zoom!" println)

ferrari drive

/// Get method of object
ferrari getSlot("drive") println

/// Or get method of parent
ferrari getSlot("type") println

/// Prototypes
"Getting prototypes" println
ferrari proto println

Car proto println
Object proto println

Lobby println

/// Lists
"Lists" println

toDos := list("find my car", "find Continuum Transfunctioner")
toDos println
toDos size println

toDos append("Find a present")
toDos append(ferrari)
toDos println

list(1, 2, 3, 4) average println
list(1, 2, 3, 4) sum println
list(5, 6, 7, 8) at(1) println /// Zero based indexing

list(3,2,1) append(0) println
list(3,2,1) prepend(4) println

myList := list(100,101,102)
myList println
myList pop println
myList println
myList isEmpty println

/// Lists
"Maps" println

elvis := Map clone
elvis atPut("home", "Graceland")
elvis atPut("style", "rock and roll")

elvis println
elvis at("home") println
elvis asObject println

/// elvis atPut(ferrari, "Graceland") /// Will error
elvis atPut("might own", ferrari)
elvis asObject println

elvis asList println
elvis keys println
elvis size println

/// Values and conditions
"Values and conditions" println

(4 > 5) println
(4 >= 4) println
(false and true) println
(true and 0) println

Highlander := Object clone
Highlander clone := Highlander
Highlander clone println
a := Highlander clone
b := Highlander clone
(a == b) println

c := Vehicle clone
d := Vehicle clone
(c == d) println

// Self study
" " println
" " println
" " println
" " println
" " println
" " println
"Self study" println

/// Example problems

/// Factorial
factorial := method(n, if(n==0,1,n*factorial(n-1)))

factorial(0) println
factorial(1) println
factorial(2) println
factorial(3) println
factorial(8) println

/// Cash register (British)
CashRegister := Object clone
CashRegister currency_list := list(1,2,5,10,20,50,100,200,500,1000,2000,5000)
CashRegister currency_length := CashRegister currency_list size
CashRegister currency_units := "pennies"
CashRegister make_change := method(owed, tendered, 
    value_to_return := tendered - owed
    denoms := currency_list clone
    currency_to_return := Map clone
    "To return: " print
    value_to_return println
    for(i,0,currency_length-1,
        currency_value := denoms pop
        currency_quantity := 0
        "Currency: " print
        currency_value println
        while(value_to_return>=currency_value,
            value_to_return = value_to_return - currency_value
            currency_quantity = currency_quantity + 1
            "Subtracting 1" println
            "Remaining balance: " print
            value_to_return println
        )
        if(currency_quantity>0,
            currency_to_return atPut(currency_value asString, currency_quantity)
        )
    )
    return(currency_to_return asObject)
)
CashRegister make_change_recursive := method(owed, tendered, 
    value_to_return := tendered - owed
    denoms := currency_list clone
    return(get_return(value_to_return, denoms))
)
get_return := method(value, denoms,
    if(value==0, return(list()),
        if(denoms isEmpty, false,
            if(value < (denoms last),
                denoms pop
                get_return(value, denoms),
                tmp := denoms last
                get_return(value - (denoms last), denoms) append(tmp)
            )
        )
    )
)
CashRegister println

myregister := CashRegister clone
myregister make_change(2146,2500) println
myregister make_change_recursive(2146,2500) println


