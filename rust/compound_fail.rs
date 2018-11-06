// @expect error

struct Point {
   x: isize,
   y: isize,
}

fn main() {
    let p = Point { x: 2, y: 3 };
    assert!(p.x != 2);
    assert!(p.y == 3);
}
