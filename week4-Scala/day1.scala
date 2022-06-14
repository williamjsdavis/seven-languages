/* Scala: Day 1 */
object Main {
  def main(args: Array[String]): Unit = {
    println("Hello world!")

    /* Types */
    println(4 + 5)
    println("abc".size)
    println("abc" + 5)

    /* Expressions and conditions */
    println(4 > 5)

    var x = 2
    var y = 3
    if (x < y) {
      println("x less than y")
    } else {
      println("x greater than y")
    }

    /* Loops */
    def while_loop {
      var i = 1
      while (i < 5) {
        println(i)
        i += 1
      }
    }
    while_loop

    def for_loop {
      for (i <- 0 until 5) {
        println(i)
      }
    }
    for_loop

    /* Ranges and tuples */
    val a = 1 until 3
    val b = (0 to 10) by 2
    println(a)
    println(b)

    val elvis = ("Elvis", "Presley")
    println(elvis)
    println(elvis._1)

    /* Classes */
    val someone = new Person("Tom", "Simkin")
    println(someone)

    val mycompass = new Compass
    mycompass.turnRight()
    mycompass.turnRight()
    mycompass.turnLeft()
    mycompass.turnRight()

    /* Extending classes: companion objects*/
    Magnet.action
  }
}
class Person(firstName: String, lastName: String)
class Compass {
  val directions = List("north", "east", "south", "west")
  var bearing = 0
  print("Initial bearing: ")
  println(direction)

  def direction() = directions(bearing)

  def inform(turnDirection: String) {
    println("Turning " + turnDirection + ". Now bearing " + direction)
  }

  def turnRight() {
    bearing = (bearing + 1) % directions.size
    inform("right")
  }
  def turnLeft() {
    bearing = (bearing + (directions.size - 1)) % directions.size
    inform("left")
  }
}
object Magnet {
  def action = println("Point North")
}

