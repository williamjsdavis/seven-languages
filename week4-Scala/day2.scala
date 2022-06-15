/* Scala: Day 2 */
import scala.collection.mutable.HashMap
object Main {
  def main(args: Array[String]): Unit = {
    def double(x:Int):Int = 2 * x
    println(double(4))

    /* Collections */
    val x = List(1,2,3,4,5)
    println(x)

    val y = Set("ham","eggs","eggs")
    println(y)
    val z = y + "spam"
    println(z)

    println(z & Set("pork","eggs"))

    /* Maps */
    val pairs = Map(0 -> "zero", 1 -> "one", 3 -> "three")
    println(pairs(3))

    val points = Map("zero" -> 0, "one" -> 1)
    println(points("one"))
    
    val mymap = new HashMap[Int, String]
    mymap += 4 -> "four"
    mymap += 2 -> "two"
    println(mymap)

    /* Foreach, count, filter, ... */
    x.foreach(println)
    y.foreach(println)

    println(x.head)
    println(x.tail)
    println(x.last)

    println(x.filter(a => a > 1))

    println((0 /: x) {(sum, i) => sum + i*i})
    println(x.foldLeft(0)((sum, i) => sum + i*i))
    println(x.foldLeft(0)((sum, i) => sum + i^2))
    
  }
}


