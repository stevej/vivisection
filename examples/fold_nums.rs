fn main() {
    let nums = vec![1, 2, 3, 4];
    let summed = nums.iter().fold(0, |n, m| m + n);
    println!("{}", summed);
}
