; ModuleID = '/tmp/tmp.ll'
source_filename = "c/buthead-1.0.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Usage: %s count\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"buthead error: invalid line count '%s'\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"buthead error: EOF on line %ld while skipping %ld\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !78 {
entry:
  %p = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8** %argv, metadata !84, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i8** %p, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata !7, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata !7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata !7, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata !7, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata !7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata !7, metadata !97, metadata !DIExpression()), !dbg !98
  %cmp = icmp ne i32 %argc, 2, !dbg !99
  br i1 %cmp, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !103
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !107
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !108
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %1), !dbg !109
  call void @exit(i32 2) #6, !dbg !110
  unreachable, !dbg !110

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !112
  %2 = load i8*, i8** %add.ptr1, align 8, !dbg !115
  %call2 = call i64 @strtol(i8* %2, i8** %p, i32 10) #7, !dbg !116
  call void @llvm.dbg.value(metadata i64 %call2, metadata !117, metadata !DIExpression()), !dbg !83
  %call3 = call i32* @__errno_location() #8, !dbg !118
  call void @llvm.dbg.value(metadata i32* %call3, metadata !120, metadata !DIExpression()), !dbg !83
  %3 = load i32, i32* %call3, align 4, !dbg !122
  %tobool = icmp ne i32 %3, 0, !dbg !122
  br i1 %tobool, label %if.then4, label %if.else, !dbg !124

if.then4:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !125
  %add.ptr5 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !129
  %5 = load i8*, i8** %add.ptr5, align 8, !dbg !130
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %5), !dbg !131
  call void @exit(i32 2) #6, !dbg !132
  unreachable, !dbg !132

if.else:                                          ; preds = %if.end
  %cmp7 = icmp slt i64 %call2, 0, !dbg !134
  br i1 %cmp7, label %if.then8, label %if.else11, !dbg !122

if.then8:                                         ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !136
  %add.ptr9 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !140
  %7 = load i8*, i8** %add.ptr9, align 8, !dbg !141
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %7), !dbg !142
  call void @exit(i32 2) #6, !dbg !143
  unreachable, !dbg !143

if.else11:                                        ; preds = %if.else
  %add.ptr12 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !145
  %8 = load i8*, i8** %add.ptr12, align 8, !dbg !147
  %add.ptr13 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !148
  %9 = load i8, i8* %add.ptr13, align 1, !dbg !149
  %conv = sext i8 %9 to i32, !dbg !150
  %cmp14 = icmp eq i32 %conv, 0, !dbg !151
  br i1 %cmp14, label %if.then16, label %if.else19, !dbg !152

if.then16:                                        ; preds = %if.else11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !153
  %add.ptr17 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !157
  %11 = load i8*, i8** %add.ptr17, align 8, !dbg !158
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %11), !dbg !159
  call void @exit(i32 2) #6, !dbg !160
  unreachable, !dbg !160

if.else19:                                        ; preds = %if.else11
  %12 = load i8*, i8** %p, align 8, !dbg !162
  %13 = load i8, i8* %12, align 1, !dbg !164
  %conv20 = sext i8 %13 to i32, !dbg !165
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !166
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !150

if.then23:                                        ; preds = %if.else19
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !167
  %add.ptr24 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !171
  %15 = load i8*, i8** %add.ptr24, align 8, !dbg !172
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %15), !dbg !173
  call void @exit(i32 2) #6, !dbg !174
  unreachable, !dbg !174

if.end26:                                         ; preds = %if.else19
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !83
  br label %while.body, !dbg !177

while.body:                                       ; preds = %if.end43, %if.end29
  %i.0 = phi i64 [ 0, %if.end29 ], [ %i.1, %if.end43 ], !dbg !180
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !176, metadata !DIExpression()), !dbg !83
  br label %while_continue___1, !dbg !181

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !181

while_continue:                                   ; preds = %while_continue___1
  %cmp30 = icmp slt i64 %i.0, %call2, !dbg !182
  br i1 %cmp30, label %if.end33, label %if.then32, !dbg !185

if.then32:                                        ; preds = %while_continue
  br label %while_break, !dbg !186

if.end33:                                         ; preds = %while_continue
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !188
  %call34 = call i32 @_IO_getc(%struct._IO_FILE* %16), !dbg !191
  call void @llvm.dbg.value(metadata i32 %call34, metadata !192, metadata !DIExpression()), !dbg !83
  %cmp35 = icmp eq i32 %call34, -1, !dbg !193
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !195

if.then37:                                        ; preds = %if.end33
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !196
  %add = add nsw i64 %i.0, 1, !dbg !200
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i64 %add, i64 %call2), !dbg !201
  call void @exit(i32 1) #6, !dbg !202
  unreachable, !dbg !202

if.end39:                                         ; preds = %if.end33
  %cmp40 = icmp eq i32 %call34, 10, !dbg !204
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !206

if.then42:                                        ; preds = %if.end39
  %inc = add nsw i64 %i.0, 1, !dbg !207
  call void @llvm.dbg.value(metadata i64 %inc, metadata !176, metadata !DIExpression()), !dbg !83
  br label %if.end43, !dbg !209

if.end43:                                         ; preds = %if.then42, %if.end39
  %i.1 = phi i64 [ %inc, %if.then42 ], [ %i.0, %if.end39 ], !dbg !180
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !176, metadata !DIExpression()), !dbg !83
  br label %while.body, !dbg !177, !llvm.loop !210

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !212

while_break:                                      ; preds = %while_break___1, %if.then32
  br label %while.body44, !dbg !213

while.body44:                                     ; preds = %if.end49, %while_break
  br label %while_continue___2, !dbg !216

while_continue___2:                               ; preds = %while.body44
  br label %while_continue___0, !dbg !216

while_continue___0:                               ; preds = %while_continue___2
  %call45 = call i32 @getchar(), !dbg !217
  call void @llvm.dbg.value(metadata i32 %call45, metadata !192, metadata !DIExpression()), !dbg !83
  %cmp46 = icmp ne i32 %call45, -1, !dbg !221
  br i1 %cmp46, label %if.end49, label %if.then48, !dbg !223

if.then48:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !224

if.end49:                                         ; preds = %while_continue___0
  %call50 = call i32 @putchar(i32 %call45), !dbg !226
  br label %while.body44, !dbg !213, !llvm.loop !229

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !231

while_break___0:                                  ; preds = %while_break___2, %if.then48
  ret i32 0, !dbg !232
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare i32 @getchar() #2

declare i32 @putchar(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!77}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, nameTableKind: GNU)
!6 = !DIFile(filename: "c/buthead-1.0.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{}
!8 = !{!9, !74, !76, !16}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 49, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 271, size: 1728, elements: !14)
!13 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!14 = !{!15, !17, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !38, !39, !40, !41, !45, !47, !49, !53, !56, !60, !62, !63, !64, !65, !69, !70}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !13, line: 272, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !12, file: !13, line: 273, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !12, file: !13, line: 274, baseType: !18, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !12, file: !13, line: 275, baseType: !18, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !12, file: !13, line: 276, baseType: !18, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !12, file: !13, line: 277, baseType: !18, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !12, file: !13, line: 278, baseType: !18, size: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !12, file: !13, line: 279, baseType: !18, size: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !12, file: !13, line: 280, baseType: !18, size: 64, offset: 512)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !12, file: !13, line: 281, baseType: !18, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !12, file: !13, line: 282, baseType: !18, size: 64, offset: 640)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !12, file: !13, line: 283, baseType: !18, size: 64, offset: 704)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !12, file: !13, line: 284, baseType: !31, size: 64, offset: 768)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !13, line: 186, size: 192, elements: !33)
!33 = !{!34, !35, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !32, file: !13, line: 187, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !32, file: !13, line: 188, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !32, file: !13, line: 189, baseType: !16, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !12, file: !13, line: 285, baseType: !36, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !12, file: !13, line: 286, baseType: !16, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !12, file: !13, line: 287, baseType: !16, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !12, file: !13, line: 288, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 141, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !12, file: !13, line: 289, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !12, file: !13, line: 290, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !12, file: !13, line: 291, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !12, file: !13, line: 292, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !13, line: 180, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !13, line: 293, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 142, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !43, line: 56, baseType: !59)
!59 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !12, file: !13, line: 294, baseType: !61, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !12, file: !13, line: 295, baseType: !61, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !12, file: !13, line: 296, baseType: !61, size: 64, offset: 1344)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !12, file: !13, line: 297, baseType: !61, size: 64, offset: 1408)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !12, file: !13, line: 298, baseType: !66, size: 32, offset: 1472)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 211, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !12, file: !13, line: 299, baseType: !16, size: 32, offset: 1504)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !12, file: !13, line: 300, baseType: !71, size: 192, offset: 1536)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!77 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!78 = distinct !DISubprogram(name: "main", scope: !79, file: !79, line: 14, type: !80, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!79 = !DIFile(filename: "/home/wslee/benchmarks/textformat/buthead-1.0/buthead.c", directory: "")
!80 = !DISubroutineType(types: !81)
!81 = !{!16, !16, !76}
!82 = !DILocalVariable(name: "argc", arg: 1, scope: !78, file: !79, line: 14, type: !16)
!83 = !DILocation(line: 0, scope: !78)
!84 = !DILocalVariable(name: "argv", arg: 2, scope: !78, file: !79, line: 14, type: !76)
!85 = !DILocalVariable(name: "p", scope: !78, file: !79, line: 19, type: !18)
!86 = !DILocation(line: 19, column: 9, scope: !78)
!87 = !DILocalVariable(name: "__cil_tmp8", scope: !78, file: !79, line: 21, type: !18)
!88 = !DILocation(line: 21, column: 9, scope: !78)
!89 = !DILocalVariable(name: "__cil_tmp9", scope: !78, file: !79, line: 22, type: !18)
!90 = !DILocation(line: 22, column: 9, scope: !78)
!91 = !DILocalVariable(name: "__cil_tmp10", scope: !78, file: !79, line: 23, type: !18)
!92 = !DILocation(line: 23, column: 9, scope: !78)
!93 = !DILocalVariable(name: "__cil_tmp11", scope: !78, file: !79, line: 24, type: !18)
!94 = !DILocation(line: 24, column: 9, scope: !78)
!95 = !DILocalVariable(name: "__cil_tmp12", scope: !78, file: !79, line: 25, type: !18)
!96 = !DILocation(line: 25, column: 9, scope: !78)
!97 = !DILocalVariable(name: "__cil_tmp13", scope: !78, file: !79, line: 26, type: !18)
!98 = !DILocation(line: 26, column: 9, scope: !78)
!99 = !DILocation(line: 20, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !79, line: 20, column: 7)
!101 = distinct !DILexicalBlock(scope: !78, file: !79, line: 28, column: 3)
!102 = !DILocation(line: 20, column: 7, scope: !101)
!103 = !DILocation(line: 21, column: 38, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !79, line: 22, column: 5)
!105 = distinct !DILexicalBlock(scope: !106, file: !79, line: 21, column: 5)
!106 = distinct !DILexicalBlock(scope: !100, file: !79, line: 20, column: 18)
!107 = !DILocation(line: 22, column: 20, scope: !104)
!108 = !DILocation(line: 22, column: 13, scope: !104)
!109 = !DILocation(line: 21, column: 5, scope: !104)
!110 = !DILocation(line: 22, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !79, line: 24, column: 5)
!112 = !DILocation(line: 25, column: 66, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !79, line: 27, column: 3)
!114 = distinct !DILexicalBlock(scope: !101, file: !79, line: 26, column: 3)
!115 = !DILocation(line: 25, column: 59, scope: !113)
!116 = !DILocation(line: 25, column: 19, scope: !113)
!117 = !DILocalVariable(name: "lines_to_skip", scope: !78, file: !79, line: 16, type: !44)
!118 = !DILocation(line: 27, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !79, line: 28, column: 3)
!120 = !DILocalVariable(name: "tmp", scope: !78, file: !79, line: 20, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!122 = !DILocation(line: 27, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !101, file: !79, line: 27, column: 7)
!124 = !DILocation(line: 27, column: 7, scope: !101)
!125 = !DILocation(line: 28, column: 38, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !79, line: 29, column: 5)
!127 = distinct !DILexicalBlock(scope: !128, file: !79, line: 28, column: 5)
!128 = distinct !DILexicalBlock(scope: !123, file: !79, line: 27, column: 13)
!129 = !DILocation(line: 29, column: 20, scope: !126)
!130 = !DILocation(line: 29, column: 13, scope: !126)
!131 = !DILocation(line: 28, column: 5, scope: !126)
!132 = !DILocation(line: 29, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !79, line: 31, column: 5)
!134 = !DILocation(line: 27, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !79, line: 27, column: 7)
!136 = !DILocation(line: 28, column: 38, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !79, line: 29, column: 5)
!138 = distinct !DILexicalBlock(scope: !139, file: !79, line: 28, column: 5)
!139 = distinct !DILexicalBlock(scope: !135, file: !79, line: 27, column: 27)
!140 = !DILocation(line: 29, column: 20, scope: !137)
!141 = !DILocation(line: 29, column: 13, scope: !137)
!142 = !DILocation(line: 28, column: 5, scope: !137)
!143 = !DILocation(line: 29, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !79, line: 31, column: 5)
!145 = !DILocation(line: 27, column: 22, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !79, line: 27, column: 7)
!147 = !DILocation(line: 27, column: 15, scope: !146)
!148 = !DILocation(line: 27, column: 27, scope: !146)
!149 = !DILocation(line: 27, column: 13, scope: !146)
!150 = !DILocation(line: 27, column: 7, scope: !146)
!151 = !DILocation(line: 27, column: 32, scope: !146)
!152 = !DILocation(line: 27, column: 7, scope: !135)
!153 = !DILocation(line: 28, column: 38, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !79, line: 29, column: 5)
!155 = distinct !DILexicalBlock(scope: !156, file: !79, line: 28, column: 5)
!156 = distinct !DILexicalBlock(scope: !146, file: !79, line: 27, column: 38)
!157 = !DILocation(line: 29, column: 20, scope: !154)
!158 = !DILocation(line: 29, column: 13, scope: !154)
!159 = !DILocation(line: 28, column: 5, scope: !154)
!160 = !DILocation(line: 29, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !79, line: 31, column: 5)
!162 = !DILocation(line: 27, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !146, file: !79, line: 27, column: 7)
!164 = !DILocation(line: 27, column: 13, scope: !163)
!165 = !DILocation(line: 27, column: 7, scope: !163)
!166 = !DILocation(line: 27, column: 16, scope: !163)
!167 = !DILocation(line: 28, column: 38, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !79, line: 29, column: 5)
!169 = distinct !DILexicalBlock(scope: !170, file: !79, line: 28, column: 5)
!170 = distinct !DILexicalBlock(scope: !163, file: !79, line: 27, column: 22)
!171 = !DILocation(line: 29, column: 20, scope: !168)
!172 = !DILocation(line: 29, column: 13, scope: !168)
!173 = !DILocation(line: 28, column: 5, scope: !168)
!174 = !DILocation(line: 29, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !79, line: 31, column: 5)
!176 = !DILocalVariable(name: "i", scope: !78, file: !79, line: 17, type: !44)
!177 = !DILocation(line: 32, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !79, line: 34, column: 3)
!179 = distinct !DILexicalBlock(scope: !101, file: !79, line: 33, column: 3)
!180 = !DILocation(line: 0, scope: !101)
!181 = !DILocation(line: 32, column: 13, scope: !178)
!182 = !DILocation(line: 32, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !79, line: 32, column: 9)
!184 = distinct !DILexicalBlock(scope: !178, file: !79, line: 32, column: 13)
!185 = !DILocation(line: 32, column: 9, scope: !184)
!186 = !DILocation(line: 32, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !79, line: 32, column: 32)
!188 = !DILocation(line: 33, column: 18, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !79, line: 35, column: 5)
!190 = distinct !DILexicalBlock(scope: !184, file: !79, line: 34, column: 5)
!191 = !DILocation(line: 33, column: 9, scope: !189)
!192 = !DILocalVariable(name: "c", scope: !78, file: !79, line: 18, type: !16)
!193 = !DILocation(line: 33, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !184, file: !79, line: 33, column: 9)
!195 = !DILocation(line: 33, column: 9, scope: !184)
!196 = !DILocation(line: 34, column: 40, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !79, line: 35, column: 7)
!198 = distinct !DILexicalBlock(scope: !199, file: !79, line: 34, column: 7)
!199 = distinct !DILexicalBlock(scope: !194, file: !79, line: 33, column: 18)
!200 = !DILocation(line: 35, column: 17, scope: !197)
!201 = !DILocation(line: 34, column: 7, scope: !197)
!202 = !DILocation(line: 36, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !79, line: 37, column: 7)
!204 = !DILocation(line: 39, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !184, file: !79, line: 39, column: 9)
!206 = !DILocation(line: 39, column: 9, scope: !184)
!207 = !DILocation(line: 39, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !79, line: 39, column: 18)
!209 = !DILocation(line: 40, column: 5, scope: !208)
!210 = distinct !{!210, !177, !211}
!211 = !DILocation(line: 41, column: 3, scope: !178)
!212 = !DILocation(line: 43, column: 3, scope: !178)
!213 = !DILocation(line: 42, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !79, line: 47, column: 3)
!215 = distinct !DILexicalBlock(scope: !101, file: !79, line: 46, column: 3)
!216 = !DILocation(line: 42, column: 13, scope: !214)
!217 = !DILocation(line: 42, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !79, line: 46, column: 5)
!219 = distinct !DILexicalBlock(scope: !220, file: !79, line: 45, column: 5)
!220 = distinct !DILexicalBlock(scope: !214, file: !79, line: 42, column: 13)
!221 = !DILocation(line: 42, column: 14, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !79, line: 42, column: 9)
!223 = !DILocation(line: 42, column: 9, scope: !220)
!224 = !DILocation(line: 42, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !79, line: 42, column: 22)
!226 = !DILocation(line: 43, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !79, line: 45, column: 5)
!228 = distinct !DILexicalBlock(scope: !220, file: !79, line: 44, column: 5)
!229 = distinct !{!229, !213, !230}
!230 = !DILocation(line: 46, column: 3, scope: !214)
!231 = !DILocation(line: 48, column: 3, scope: !214)
!232 = !DILocation(line: 45, column: 3, scope: !101)
