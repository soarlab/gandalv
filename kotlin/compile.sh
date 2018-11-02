kotlinc -p bitcode -g -l reqs/assert.klib $1.kt reqs/smackassert.kt -o $1.bc
llvm-dis $1.bc 
