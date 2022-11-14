#[derive(Debug)]
pub struct Stuff {
    a: u64,
    b: u64,
}

#[no_mangle]
pub fn do_work() -> Stuff {
    let mut stuff = Stuff { a: 0, b: 1_000_000 };
    for _ in 0..1_000_000 {
        stuff.a += 1;
        stuff.b -= 1;
    }
    stuff
}

fn main() {
    do_work();
}
