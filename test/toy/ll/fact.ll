; ModuleID = '/tmp/tmp.ll'
source_filename = "c/fact.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @fact(i32 %val) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 1, metadata !15, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 2, metadata !16, metadata !DIExpression()), !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %temp.0 = phi i32 [ 1, %entry ], [ %mul, %for.inc ], !dbg !14
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.inc ], !dbg !18
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !15, metadata !DIExpression()), !dbg !14
  %cmp = icmp sle i32 %i.0, %val, !dbg !20
  br i1 %cmp, label %for.body, label %for.end, !dbg !22

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %temp.0, %i.0, !dbg !23
  call void @llvm.dbg.value(metadata i32 %mul, metadata !15, metadata !DIExpression()), !dbg !14
  br label %for.inc, !dbg !24

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !25
  call void @llvm.dbg.value(metadata i32 %inc, metadata !16, metadata !DIExpression()), !dbg !18
  br label %for.cond, !dbg !26, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  ret i32 %temp.0, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !30 {
entry:
  %call = call i32 @fact(i32 5), !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!8}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: GNU)
!6 = !DIFile(filename: "c/fact.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test/toy")
!7 = !{}
!8 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!9 = distinct !DISubprogram(name: "fact", scope: !6, file: !6, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "val", arg: 1, scope: !9, file: !6, line: 1, type: !12)
!14 = !DILocation(line: 0, scope: !9)
!15 = !DILocalVariable(name: "temp", scope: !9, file: !6, line: 2, type: !12)
!16 = !DILocalVariable(name: "i", scope: !17, file: !6, line: 3, type: !12)
!17 = distinct !DILexicalBlock(scope: !9, file: !6, line: 3, column: 5)
!18 = !DILocation(line: 0, scope: !17)
!19 = !DILocation(line: 3, column: 10, scope: !17)
!20 = !DILocation(line: 3, column: 23, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !6, line: 3, column: 5)
!22 = !DILocation(line: 3, column: 5, scope: !17)
!23 = !DILocation(line: 4, column: 14, scope: !21)
!24 = !DILocation(line: 4, column: 9, scope: !21)
!25 = !DILocation(line: 3, column: 32, scope: !21)
!26 = !DILocation(line: 3, column: 5, scope: !21)
!27 = distinct !{!27, !22, !28}
!28 = !DILocation(line: 4, column: 17, scope: !17)
!29 = !DILocation(line: 5, column: 5, scope: !9)
!30 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 8, type: !31, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!31 = !DISubroutineType(types: !32)
!32 = !{!12}
!33 = !DILocation(line: 9, column: 5, scope: !30)
!34 = !DILocation(line: 10, column: 1, scope: !30)
