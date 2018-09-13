// @expect verified

#[macro_use]
mod smack;
use smack::*;

fn main() {
    let mut array: Vec<isize> = vec![];
    array.push(3);
    assert!(array[0] == 3);
}
