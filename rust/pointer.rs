// @expect verified

fn main() {
    //let b = Box::new(3);
    let num = 3;
    let b = &num;
    assert!(*b == 3);
}
