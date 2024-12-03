import java.io.File

fun d03p1(input: String): Int {
    val regex = Regex("""mul\((\d+),(\d+)\)""")
    val matches = regex.findAll(input)

    val result = matches.sumOf { match ->
        val (x, y) = match.destructured
        x.toInt() * y.toInt()
    }
    return result
}

fun d03p2(input: String): Int {
    val mulRegex = Regex("""mul\((\d+),(\d+)\)""")
    val doRegex = Regex("""do\(\)""")
    val dontRegex = Regex("""don't\(\)""")

    var isEnabled = true
    var result = 0

    val matches = mulRegex.findAll(input)
    var lastIndex = 0

    for (match in matches) {
        val (x, y) = match.destructured
        val mulIndex = match.range.first
        
        val substring = input.substring(lastIndex, mulIndex)
        if (doRegex.containsMatchIn(substring)) {
            isEnabled = true
        }
        if (dontRegex.containsMatchIn(substring)) {
            isEnabled = false
        }

        if (isEnabled) {
            result += x.toInt() * y.toInt()
        }

        lastIndex = match.range.last + 1
    }
    return result
}

val input = File("D03.txt").readText()
println(d03p1(input))
println(d03p2(input))
