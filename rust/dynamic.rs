// @expect verified

trait Tailed {
    fn num_tails(&self) -> isize;
}

struct Fish;
struct TwinTailBeta;

impl Tailed for Fish {
    fn num_tails(&self) -> isize {
        1
    }
}

impl Tailed for TwinTailBeta {
    fn num_tails(&self) -> isize {
        2
    }
}

fn main() {
    let fish: &Tailed = &Fish;
    let beta: &Tailed = &TwinTailBeta;
    assert!(fish.num_tails() == 1);
    assert!(beta.num_tails() == 2);
}
