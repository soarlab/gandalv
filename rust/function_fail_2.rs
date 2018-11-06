// @expect error

fn cap(x: usize) -> usize {
    let mut y = x;
    if 10 < x {
        y = 10;
    }
    return y;
}

fn main() {
    let two = cap(2);
    let ten = cap(15);
    assert!(two == 2);
    assert!(ten != 10);
    let x = __VERIFIER_nondet_int();
    assert!(x <= 10);
}
