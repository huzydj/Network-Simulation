package demo_test_one
import std.random.Random
import std.math
import std.io.*
import std.fs.*

func exponential_random(rng: Random, lambda: Float64): Float64 {
    let u = rng.nextFloat64()
    println(u)
    return (-math.log(u)) / lambda
}

main(): Int64 {
    
    let rng = Random()  
    let lambda = 0.5
    let file=File("value_exponential_data.csv", OpenOption.CreateOrAppend)
    let writer = StringWriter(BufferedOutputStream(file))
    for (_ in 0..1000) {
        let num = exponential_random(rng, lambda)
        writer.writeln(num.toString())
        }
    writer.flush()
    writer.close()
    println(exponential_random(rng,lambda))
    println("hello world")
    return 0
}