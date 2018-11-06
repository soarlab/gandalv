// @expect error
// @flag --unroll=10

fn fib(n: usize) -> usize {
    match n {
        x if x <= 0 => 0,
        1 => 1,
        _ => fib(n-1) + fib(n-2)
    }
}

fn main() {
    assert!(fib(2) == 1);
    assert!(fib(3) == 2);
    //assert!(fib(5) == 5);
    //assert!(fib(6) != 8);
}

