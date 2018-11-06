DIR=$(dirname $(realpath $1))
FILE=$(basename $1 .swift)
sudo swiftc -g -emit-ir -import-objc-header $DIR/reqs/smack-Bridging-Header.h $DIR/$FILE.swift > $FILE.ll
shift
smack $FILE.ll "$@"
rm $FILE.ll
