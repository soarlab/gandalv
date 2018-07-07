// @expect verified

let pointer = UnsafeMutablePointer<UInt8>.allocate(capacity: 1);
pointer.initialize(to: 3)
__VERIFIER_assert(pointer.pointee != 3)
