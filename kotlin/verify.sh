
FILE=$(basename $1 .kt)
kotlinc -p bitcode -g -l reqs/assert.klib $FILE.kt reqs/smackassert.kt -o $FILE.bc
#llvm-dis $FILE.bc 
shift
echo $FILE
smack $FILE.bc \
	reqs/cstubs.ll reqs/assert.ll reqs/Operator.cpp \
   	--entry-points "kfun:main(kotlin.Array<kotlin.String>)" \
	--back-entry-points kfun_main_kotlin.Array_kotlin.String__ \
	"$@"  
rm $FILE.bc
