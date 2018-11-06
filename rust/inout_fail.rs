// @expect error

fn add_five(x: &mut isize) {
    *x = *x + 5;
}

fn main() {
    let mut val = 2;
    let x = &mut val;
    add_five(x);
    assert!(*x != 7);
}
