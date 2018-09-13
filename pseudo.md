
# Universal Regressions

## Hello World

`hello`

```
print "Hello, World"
```

## Basic Computation

`compute`

```
x = 10
y = 20
z = x + y
assert(z == 30)
```

## Function Call

`function`

```
function cap(x: int) -> int {
  y = x
  if 10 < x {
    y = 10
  }
  return y
}

assert(cap(2) == 2)
assert(cap(15) == 10)
x = __VERIFIER_nondet_int()
assert(cap(x) <= 10)
```

## For Loop

`forloop`

```
x = 0
for (int i = 0; i < 10; i++) {
  x += 5
}

assert(x == 50)
```

## Fibonacci Sequence

`fib`

```
function fib(n: int) -> int {
  if (n =< 0) return 0
  if (n == 1) return 1

  return fibonacci(n-1) + fibonacci(n-2)
}

assert(fib(5) == 5)
assert(fib(6) == 8)
```

## Compound Type

`compound`

```
struct Point {
  int x
  int y
}

p = new Point(2,3)
assert(p.x == 2)
assert(p.y == 3)
```

## Array

`array`

```
array = new array(size=1)
array[0] = 3
assert(array[0] == 3)
```

# Language-Specific Benchmarks

## Pointer

`pointer`

```
pointer = new box(3)
assert(get(pointer) == 3)
```

## Method Call

`method`

```
class Car {
  method numWheels() -> int {
    return 4
  }
  method numHeadlights() -> int {
    return 2
  }
  method milageLeft(miles: int) -> int {
    return 300,000 - miles
  }
}

car = new Car()
assert(car.numWheels() == 4)
assert(car.numHeadlights() == 2)
assert(car.milageLeft(250,000) == 50,000)

```

## Dynamic Dispatch

`dynamic`

```
class Fish {
  method numTails() -> int {
    return 1;
  }
}

class TwinTailBeta : Fish {
  override method numTails() -> int {
    return 2;
  }
}

fish = new Fish()
beta = new TwinTailBeta()

assert(fish.numTails() == 1)
assert(beta.numTails() == 2)
```

## Inout Parameter

`inout`

```
function addFive(inout x: int) {
  x += 5
}

int z = 2;
addFive(z);
assert(z == 7);

int x = __VERIFIER_nondet_int()
assume(0 < x)
addFive(x)
assert(5 < x)
```

# Future Regressions

## Function Overload

`overload`

```
function sum(x: int, y: int) -> int {
  return x + y;
}

function sum(x: int, y: int, z: int) -> int {
  return x + y + z;
}

assert(sum(2,2) == 4);
assert(sum(2,3,4) == 9);
```

## Generic Type
