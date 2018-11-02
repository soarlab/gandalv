cinterop -def $1.def -compilerOpts -I. -o $1
cd $1-build/kotlin/$1/
kotlinc -p bitcode -g $1.kt -o $1.bc
llvm-dis $1.bc
mv $1.ll ../../../
rm $1.bc
cd ../../natives/
llvm-dis cstubs.bc
mv cstubs.ll ../../
cd ../../
