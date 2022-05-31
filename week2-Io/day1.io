// Io: Day 1
"Hello, world!" println

/// Objects
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


