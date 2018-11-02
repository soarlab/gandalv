@file:kotlinx.cinterop.InteropStubs
@file:Suppress("UNUSED_VARIABLE", "UNUSED_EXPRESSION")
package assert

import konan.SymbolName
import kotlinx.cinterop.*

fun __VERIFIER_assert(arg0: Int): Unit {
    return kniBridge0(arg0)
}

fun __VERIFIER_nondet_int(): Int {
    return kniBridge1()
}

@SymbolName("assert_kniBridge0")
private external fun kniBridge0(p0: Int): Unit
@SymbolName("assert_kniBridge1")
private external fun kniBridge1(): Int
