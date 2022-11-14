#[derive(Debug)]
pub struct Foo {
    a: u64,
    b: u64,
}

#[no_mangle]
pub fn do_work() -> Foo {
    let mut foo = Foo { a: 0, b: 1_000_000 };
    for _ in 0..1_000_000 {
        foo.a += 1;
        foo.b -= 1;
    }
    foo
}

fn main() {
    do_work();
}
