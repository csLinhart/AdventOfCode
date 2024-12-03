import java.io.File

fun isSafe(levels: List<Int>): Boolean {
    val isIncreasing = levels.zipWithNext().all { (a, b) -> b > a && b - a in 1..3 }
    val isDecreasing = levels.zipWithNext().all { (a, b) -> b < a && a - b in 1..3 }

    return isIncreasing || isDecreasing
}

fun isSafeWithDampener(levels: List<Int>): Boolean {
    if (isSafe(levels)) return true

    for (i in levels.indices) {
        val modifiedLevels = levels.toMutableList().apply { removeAt(i) }
        if (isSafe(modifiedLevels)) return true
    }
    return false
}

val input = File("D02.txt").readLines()
val reports = input.map { it.split(" ").map(String::toInt) }

println(reports.count { isSafe(it) })
println(reports.count { isSafeWithDampener(it) })
