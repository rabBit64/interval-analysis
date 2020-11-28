; ModuleID = '/tmp/tmp.ll'
source_filename = "c/mod.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mod(i32 %a, i32 %b) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %b, metadata !15, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %a, metadata !17, metadata !DIExpression()), !dbg !14
  br label %while.cond, !dbg !18

while.cond:                                       ; preds = %while.body, %entry
  %q.0 = phi i32 [ 0, %entry ], [ %add, %while.body ], !dbg !14
  %r.0 = phi i32 [ %a, %entry ], [ %sub, %while.body ], !dbg !14
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !17, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %q.0, metadata !16, metadata !DIExpression()), !dbg !14
  %cmp = icmp sge i32 %r.0, %b, !dbg !19
  br i1 %cmp, label %while.body, label %while.end, !dbg !18

while.body:                                       ; preds = %while.cond
  %sub = sub nsw i32 %r.0, %b, !dbg !20
  call void @llvm.dbg.value(metadata i32 %sub, metadata !17, metadata !DIExpression()), !dbg !14
  %add = add nsw i32 %q.0, 1, !dbg !22
  call void @llvm.dbg.value(metadata i32 %add, metadata !16, metadata !DIExpression()), !dbg !14
  br label %while.cond, !dbg !18, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  ret i32 %r.0, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
!6 = !DIFile(filename: "c/mod.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test/toy")
!7 = !{}
!8 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!9 = distinct !DISubprogram(name: "mod", scope: !6, file: !6, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !6, line: 1, type: !12)
!14 = !DILocation(line: 0, scope: !9)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !6, line: 1, type: !12)
!16 = !DILocalVariable(name: "q", scope: !9, file: !6, line: 2, type: !12)
!17 = !DILocalVariable(name: "r", scope: !9, file: !6, line: 3, type: !12)
!18 = !DILocation(line: 4, column: 5, scope: !9)
!19 = !DILocation(line: 4, column: 14, scope: !9)
!20 = !DILocation(line: 5, column: 15, scope: !21)
!21 = distinct !DILexicalBlock(scope: !9, file: !6, line: 4, column: 20)
!22 = !DILocation(line: 6, column: 15, scope: !21)
!23 = distinct !{!23, !18, !24}
!24 = !DILocation(line: 7, column: 5, scope: !9)
!25 = !DILocation(line: 8, column: 5, scope: !9)
