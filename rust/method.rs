// @expect verified

struct Car;

impl Car {
    fn num_wheels(&self) -> isize {
        4
    }
    fn num_headlights(&self) -> isize {
        2
    }
    fn milage_left(&self, miles: isize) -> isize {
        300000 - miles 
    }
}

fn main() {
    let c = Car;
    assert!(c.num_wheels() == 4);
    assert!(c.num_headlights() == 2);
    assert!(c.milage_left(250000) == 50000);
}
