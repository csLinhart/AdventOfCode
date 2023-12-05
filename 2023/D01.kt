package y2023

import java.io.File

fun d01(input: List<String>): Pair<Int, Int> {
    val digits1 = input.map { it.toCharArray().filter { c -> c.isDigit() } }
    val result1 = digits1.sumOf { listOf(it.first(), it.last()).joinToString("").toInt() }

    val input2 = input.map {
        it.replace("one", "one1one")
            .replace("two", "two2two")
            .replace("three", "three3three")
            .replace("four", "four4four")
            .replace("five", "five5five")
            .replace("six", "six6six")
            .replace("seven", "seven7seven")
            .replace("eight", "eight8eight")
            .replace("nine", "nine9nine")
    }
    val digits2 = input2.map { it.toCharArray().filter { c -> c.isDigit() } }
    val result2 = digits2.sumOf { listOf(it.first(), it.last()).joinToString("").toInt() }
    return Pair(result1, result2)
}


fun main() {
    val input = File("inputs/2023/D01.txt").readLines()
    println(d01(input))
}