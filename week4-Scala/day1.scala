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
  }
}

