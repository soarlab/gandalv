FILE=$(basename $1 .swift)
sudo swiftc -g -emit-ir -import-objc-header ./reqs/smack-Bridging-Header.h $FILE.swift > $FILE.ll
shift
smack $FILE.ll "$@"
rm $FILE.ll
