// @expect error
// @flag --unroll=11

fn main() {
    let mut x = 0;
    for _ in 0..2 {
        x += 5;
    }

    assert!(x != 10)
}
