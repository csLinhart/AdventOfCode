import java.io.File

fun d02(input: List<String>): Pair<Int, Int> {
    var result1 = 0
    var result2 = 0
    for (line in input) {
        var valid = true
        val game = line.split(':').first().split(' ').last().toInt()
        val sets = line.split(": ").last().split("; ")
        var minRed = 0
        var minGreen = 0
        var minBlue = 0
        for (set in sets) {
            val cubes = set.split(", ")
            for (cube in cubes) {
                val number = cube.split(' ').first().toInt()
                val colour = cube.split(' ').last()
                if (colour == "red" && number > 12 || colour == "green" && number > 13 || colour == "blue" && number > 14) {
                    valid = false
                }
                if (colour == "red" && number > minRed) {
                    minRed = number
                }
                if (colour == "green" && number > minGreen) {
                    minGreen = number
                }
                if (colour == "blue" && number > minBlue) {
                    minBlue = number
                }
            }
        }
        if (valid) {
            result1 += game
        }
        result2 += minRed * minGreen * minBlue
    }
    return Pair(result1, result2)
}

val input = File("D02.txt").readLines()
println(d02(input))
