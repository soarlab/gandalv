; ModuleID = 'assert.bc'
source_filename = "out"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ObjHeader = type { %struct.TypeInfo*, i32 }
%struct.TypeInfo = type { %struct.GlobalHash, i32, %struct.TypeInfo*, i32*, i32, %struct.TypeInfo**, i32, %struct.MethodTableRecord*, i32, %struct.FieldTableRecord*, i32, %struct.ObjHeader*, %struct.ObjHeader* }
%struct.GlobalHash = type { [20 x i8] }
%struct.MethodTableRecord = type { i64, i8* }
%struct.FieldTableRecord = type { i64, i32 }
%struct.InitNode = type { void (i32)*, %struct.InitNode* }

@"kobj:kotlin.Unit" = external global %struct.ObjHeader

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader* @AllocInstance(%struct.TypeInfo*, %struct.ObjHeader**) #0

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader* @AllocArrayInstance(%struct.TypeInfo*, i32, %struct.ObjHeader**) #0

; Function Attrs: uwtable
declare %struct.ObjHeader* @InitInstance(%struct.ObjHeader**, %struct.TypeInfo*, void (%struct.ObjHeader*)*, %struct.ObjHeader**) #1

; Function Attrs: nounwind uwtable
declare void @UpdateReturnRef(%struct.ObjHeader**, %struct.ObjHeader*) #0

; Function Attrs: nounwind uwtable
declare void @UpdateRef(%struct.ObjHeader**, %struct.ObjHeader*) #0

; Function Attrs: nounwind uwtable
declare void @EnterFrame(%struct.ObjHeader**, i32, i32) #0

; Function Attrs: nounwind uwtable
declare void @LeaveFrame(%struct.ObjHeader**, i32, i32) #0

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader** @GetReturnSlotIfArena(%struct.ObjHeader**, %struct.ObjHeader**) #0

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader** @GetParamSlotIfArena(%struct.ObjHeader*, %struct.ObjHeader**) #0

; Function Attrs: nounwind readnone uwtable
declare i8* @LookupOpenMethod(%struct.TypeInfo*, i64) #2

; Function Attrs: nounwind readonly uwtable
declare i8 @IsInstance(%struct.ObjHeader*, %struct.TypeInfo*) #3

; Function Attrs: uwtable
declare void @CheckInstance(%struct.ObjHeader*, %struct.TypeInfo*) #1

; Function Attrs: uwtable
declare void @ThrowException(%struct.ObjHeader*) #1

; Function Attrs: nounwind uwtable
declare void @AppendToInitializersTail(%struct.InitNode*) #0

; Function Attrs: nounwind
declare i32 @__gxx_personality_v0(...) #4

; Function Attrs: nounwind
declare i8* @__cxa_begin_catch(i8*) #4

; Function Attrs: nounwind
declare void @__cxa_end_catch() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

define void @"kfun:assert.__VERIFIER_assert(kotlin.Int)"(i32) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5 {
prologue:
  %p-arg0 = alloca i32, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %p-arg0, metadata !13, metadata !14), !dbg !15
  br label %locals_init, !dbg !12

locals_init:                                      ; preds = %prologue
  %1 = phi %struct.ObjHeader** [ null, %prologue ], !dbg !12
  %2 = ptrtoint %struct.ObjHeader** %1 to i64, !dbg !12
  %3 = or i64 %2, 1, !dbg !12
  %4 = inttoptr i64 %3 to %struct.ObjHeader**, !dbg !12
  store i32 %0, i32* %p-arg0, !dbg !12
  br label %entry, !dbg !12

entry:                                            ; preds = %locals_init
  %5 = load i32, i32* %p-arg0, !dbg !16
  invoke void @assert_kniBridge0(i32 %5)
          to label %call_success unwind label %cleanup_landingpad, !dbg !17

call_success:                                     ; preds = %entry
  br label %epilogue, !dbg !17

unreachable:                                      ; No predecessors!
  br label %epilogue, !dbg !12

epilogue:                                         ; preds = %unreachable, %call_success
  ret void, !dbg !18

cleanup_landingpad:                               ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !18
  resume { i8*, i32 } %6, !dbg !18
}

define i32 @"kfun:assert.__VERIFIER_nondet_int()ValueType"() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !19 {
prologue:
  br label %locals_init, !dbg !22

locals_init:                                      ; preds = %prologue
  %0 = phi %struct.ObjHeader** [ null, %prologue ], !dbg !22
  %1 = ptrtoint %struct.ObjHeader** %0 to i64, !dbg !22
  %2 = or i64 %1, 1, !dbg !22
  %3 = inttoptr i64 %2 to %struct.ObjHeader**, !dbg !22
  br label %entry, !dbg !22

entry:                                            ; preds = %locals_init
  %4 = invoke i32 @assert_kniBridge1()
          to label %call_success unwind label %cleanup_landingpad, !dbg !23

call_success:                                     ; preds = %entry
  br label %epilogue, !dbg !23

epilogue:                                         ; preds = %call_success
  %5 = phi i32 [ %4, %call_success ], !dbg !24
  ret i32 %5, !dbg !24

cleanup_landingpad:                               ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !24
  resume { i8*, i32 } %6, !dbg !24
}

declare void @assert_kniBridge0(i32) #6

declare i32 @assert_kniBridge1() #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable }
attributes #1 = { uwtable }
attributes #2 = { nounwind readnone uwtable }
attributes #3 = { nounwind readonly uwtable }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }
attributes #6 = { "no-frame-pointer-elim"="true" }
attributes #7 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "konanc EAP 0.1.0.0 / kotlin-compiler: 1.1.60", isOptimized: false, runtimeVersion: 2, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "assert.bc", directory: "/home/vagrant/smack/gandalv/kotlin/requirements/assert-build/kotlin/assert")
!2 = !{}
!3 = !{i32 2, !"Dwarf Name", i32 2}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "__VERIFIER_assert", linkageName: "kfun:assert.__VERIFIER_assert(kotlin.Int)", scope: null, file: !6, line: 8, type: !7, isLocal: false, isDefinition: true, isOptimized: false, unit: !0, variables: !2)
!6 = !DIFile(filename: "assert.kt", directory: "/home/vagrant/smack/gandalv/kotlin/requirements/assert-build/kotlin/assert")
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "ObjHeader", flags: DIFlagFwdDecl)
!11 = !DIBasicType(name: "kotlin.Int", size: 32, align: 4, encoding: DW_ATE_signed)
!12 = !DILocation(line: 8, column: 1, scope: !5)
!13 = !DILocalVariable(name: "arg0", scope: !5, file: !6, line: 8, type: !11)
!14 = !DIExpression()
!15 = !DILocation(line: 8, column: 23, scope: !5)
!16 = !DILocation(line: 9, column: 23, scope: !5)
!17 = !DILocation(line: 9, column: 12, scope: !5)
!18 = !DILocation(line: 10, column: 2, scope: !5)
!19 = distinct !DISubprogram(name: "__VERIFIER_nondet_int", linkageName: "kfun:assert.__VERIFIER_nondet_int()ValueType", scope: null, file: !6, line: 12, type: !20, isLocal: false, isDefinition: true, isOptimized: false, unit: !0, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!11}
!22 = !DILocation(line: 12, column: 1, scope: !19)
!23 = !DILocation(line: 13, column: 12, scope: !19)
!24 = !DILocation(line: 14, column: 2, scope: !19)
