// @expect error

class Fish {
  func numTails() -> Int {
    return 1
  }
}

class TwinTailBeta : Fish {
  override func numTails() -> Int {
    return 2
  }
}

let fish = Fish()
let beta = TwinTailBeta()

__VERIFIER_assert(fish.numTails() == 1)
__VERIFIER_assert(beta.numTails() != 2)
