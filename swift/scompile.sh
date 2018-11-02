swiftc -g -emit-ir -import-objc-header requirements/smack-Bridging-Header.h $1.swift > $1.ll
