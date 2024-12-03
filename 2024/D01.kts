import java.io.File
import kotlin.math.abs

fun totalDistance(leftList: List<Int>, rightList: List<Int>): Int {
    val sortedLeft = leftList.sorted()
    val sortedRight = rightList.sorted()
    return sortedLeft.zip(sortedRight).sumOf { (left, right) -> abs(left - right) }
}

fun similarityScore(leftList: List<Int>, rightList: List<Int>): Int {
    val rightCount = rightList.groupingBy { it }.eachCount()
    return leftList.sumOf { it * (rightCount[it] ?: 0) }
}

val input = File("D01.txt").readLines()
val leftList = input.map { it.split("   ")[0].toInt() }
val rightList = input.map { it.split("   ")[1].toInt() }
println(totalDistance(leftList, rightList))
println(similarityScore(leftList, rightList))
