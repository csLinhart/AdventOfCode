import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.pow
import kotlin.math.sqrt

fun d06p1(times: IntArray, distances: IntArray): Int {
    val results = intArrayOf(0, 0, 0, 0)
    for (i in times.indices) {
        val time = times[i].toDouble()
        val distance = distances[i]
        val s1 = floor((time - sqrt(time.pow(2.0) - 4 * distance)) / 2 + 1)
        val s2 = ceil((time + sqrt(time.pow(2.0) - 4 * distance)) / 2 - 1)
        results[i] = (s2 - s1 + 1).toInt()
    }
    return results.reduce { a, b -> a * b }
}

fun d06p2(time: Double, distance: Long): Int {
    val s1 = floor((time - sqrt(time.pow(2.0) - 4 * distance)) / 2 + 1)
    val s2 = ceil((time + sqrt(time.pow(2.0) - 4 * distance)) / 2 - 1)
    return (s2 - s1 + 1).toInt()
}

println(d06p1(intArrayOf(49, 87, 78, 95), intArrayOf(356, 1378, 1502, 1882)))
println(d06p2(49877895.toDouble(), "356137815021882".toLong()))
