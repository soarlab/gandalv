
DIR=$(dirname $(realpath $1))
FILE=$(basename $1 .kt)
kotlinc -p bitcode -g -l $DIR/reqs/assert.klib $DIR/$FILE.kt $DIR/reqs/smackassert.kt -o $FILE.bc
#llvm-dis $FILE.bc 
shift
smack $FILE.bc \
	$DIR/reqs/cstubs.ll $DIR/reqs/assert.ll $DIR/reqs/Operator.cpp \
   	--entry-points "kfun:main(kotlin.Array<kotlin.String>)" \
	--back-entry-points kfun_main_kotlin.Array_kotlin.String__ \
	"$@"  
rm $FILE.bc
