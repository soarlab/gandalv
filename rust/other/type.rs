// @expect verified

struct Location {
   x: isize,
}

fn main() {
    let l = Location { x: 3 };
    assert!(l.x == 3);
}
