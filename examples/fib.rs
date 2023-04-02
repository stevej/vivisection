// For a given position, calculate the number in the fibonacci sequence
// TODO: what is the name of this formula? I found it in Manfred Schroeder's
// 'Number Theory in Science and Communication' 5th edition, pg 10.
pub fn fib(position: i32) -> i64 {
    (f64::powf(1.61803398875 /* the golden ratio */, position as f64) / f64::sqrt(5.0)).round()
        as i64
}

fn main() {
    for n in 1..75 {
        println!("{}", fib(n))
    }
}
