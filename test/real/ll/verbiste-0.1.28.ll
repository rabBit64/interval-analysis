; ModuleID = '/tmp/tmp.ll'
source_filename = "c/verbiste-0.1.28.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.__anonstruct_Verbiste_ModeTense_26 = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"conjugator.c: demo of the C API of Verbiste\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: conjugator VERB\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Note: this program expects Latin-1 and writes Latin-1.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"LIBDATADIR\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"/usr/local/share/verbiste-0.1\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s/conjugation-fr.xml\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s/verbs-fr.xml\00", align 1
@verbiste_valid_modes_and_tenses = external global [0 x %struct.__anonstruct_Verbiste_ModeTense_26], align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Unknown infinitive.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"- %s %s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !38 {
entry:
  %conjFN = alloca [512 x i8], align 16
  %verbsFN = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i8** %argv, metadata !47, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [512 x i8]* %conjFN, metadata !48, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [512 x i8]* %verbsFN, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata !44, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata !44, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata !44, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata !44, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata !44, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata !44, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata !44, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata !44, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata !44, metadata !71, metadata !DIExpression()), !dbg !72
  %cmp = icmp slt i32 %argc, 2, !dbg !73
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)), !dbg !77
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)), !dbg !81
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0)), !dbg !83
  br label %return, !dbg !85

if.end:                                           ; preds = %entry
  %call3 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !86
  call void @llvm.dbg.value(metadata i8* %call3, metadata !89, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i8* %call3, metadata !90, metadata !DIExpression()), !dbg !46
  %0 = ptrtoint i8* %call3 to i64, !dbg !91
  %cmp4 = icmp eq i64 %0, 0, !dbg !93
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !94

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), metadata !90, metadata !DIExpression()), !dbg !46
  br label %if.end6, !dbg !95

if.end6:                                          ; preds = %if.then5, %if.end
  %libdatadir.0 = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), %if.then5 ], [ %call3, %if.end ], !dbg !97
  call void @llvm.dbg.value(metadata i8* %libdatadir.0, metadata !90, metadata !DIExpression()), !dbg !46
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %conjFN, i32 0, i32 0, !dbg !98
  %call7 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay, i32 512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %libdatadir.0) #4, !dbg !101
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %verbsFN, i32 0, i32 0, !dbg !102
  %call9 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay8, i32 512, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %libdatadir.0) #4, !dbg !104
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %conjFN, i32 0, i32 0, !dbg !105
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %verbsFN, i32 0, i32 0, !dbg !107
  %call12 = call i32 @verbiste_init(i8* %arraydecay10, i8* %arraydecay11), !dbg !108
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !109
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !111
  %call13 = call i32 @demo(i8* %1), !dbg !112
  call void @llvm.dbg.value(metadata i32 %call13, metadata !113, metadata !DIExpression()), !dbg !46
  %call14 = call i32 @verbiste_close(), !dbg !114
  br label %return, !dbg !116

return:                                           ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call13, %if.end6 ], !dbg !97
  ret i32 %retval.0, !dbg !117
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #3

declare i32 @verbiste_init(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @demo(i8* %latin1_infinitive) #0 !dbg !118 {
entry:
  call void @llvm.dbg.value(metadata i8* %latin1_infinitive, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata !44, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata !44, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata !44, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata !44, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata !44, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata !44, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !122
  br label %while.body, !dbg !136

while.body:                                       ; preds = %while_break___0, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc41, %while_break___0 ], !dbg !140
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !135, metadata !DIExpression()), !dbg !122
  br label %while_continue___2, !dbg !141

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !141

while_continue:                                   ; preds = %while_continue___2
  %idxprom = sext i32 %k.0 to i64, !dbg !142
  %arrayidx = getelementptr inbounds [0 x %struct.__anonstruct_Verbiste_ModeTense_26], [0 x %struct.__anonstruct_Verbiste_ModeTense_26]* @verbiste_valid_modes_and_tenses, i64 0, i64 %idxprom, !dbg !142
  %mode1 = getelementptr inbounds %struct.__anonstruct_Verbiste_ModeTense_26, %struct.__anonstruct_Verbiste_ModeTense_26* %arrayidx, i32 0, i32 0, !dbg !145
  %0 = load i32, i32* %mode1, align 4, !dbg !145
  %cmp = icmp ne i32 %0, 0, !dbg !146
  br i1 %cmp, label %if.end, label %if.then, !dbg !147

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !148

if.end:                                           ; preds = %while_continue
  %idxprom2 = sext i32 %k.0 to i64, !dbg !150
  %arrayidx3 = getelementptr inbounds [0 x %struct.__anonstruct_Verbiste_ModeTense_26], [0 x %struct.__anonstruct_Verbiste_ModeTense_26]* @verbiste_valid_modes_and_tenses, i64 0, i64 %idxprom2, !dbg !150
  %mode4 = getelementptr inbounds %struct.__anonstruct_Verbiste_ModeTense_26, %struct.__anonstruct_Verbiste_ModeTense_26* %arrayidx3, i32 0, i32 0, !dbg !152
  %1 = load i32, i32* %mode4, align 4, !dbg !152
  call void @llvm.dbg.value(metadata i32 %1, metadata !153, metadata !DIExpression()), !dbg !122
  %idxprom5 = sext i32 %k.0 to i64, !dbg !154
  %arrayidx6 = getelementptr inbounds [0 x %struct.__anonstruct_Verbiste_ModeTense_26], [0 x %struct.__anonstruct_Verbiste_ModeTense_26]* @verbiste_valid_modes_and_tenses, i64 0, i64 %idxprom5, !dbg !154
  %tense7 = getelementptr inbounds %struct.__anonstruct_Verbiste_ModeTense_26, %struct.__anonstruct_Verbiste_ModeTense_26* %arrayidx6, i32 0, i32 1, !dbg !155
  %2 = load i32, i32* %tense7, align 4, !dbg !155
  call void @llvm.dbg.value(metadata i32 %2, metadata !156, metadata !DIExpression()), !dbg !122
  %call = call i8* @verbiste_tolower_latin1(i8* %latin1_infinitive), !dbg !157
  call void @llvm.dbg.value(metadata i8* %call, metadata !159, metadata !DIExpression()), !dbg !122
  %call8 = call i8*** @verbiste_conjugate(i8* %call, i32 %1, i32 %2, i32 0), !dbg !160
  call void @llvm.dbg.value(metadata i8*** %call8, metadata !162, metadata !DIExpression()), !dbg !122
  call void @verbiste_free_string(i8* %call), !dbg !166
  %3 = ptrtoint i8*** %call8 to i64, !dbg !168
  %cmp9 = icmp eq i64 %3, 0, !dbg !170
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !171

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)), !dbg !172
  br label %return, !dbg !176

if.end12:                                         ; preds = %if.end
  %call13 = call i8* @verbiste_get_tense_name(i32 %2), !dbg !177
  call void @llvm.dbg.value(metadata i8* %call13, metadata !180, metadata !DIExpression()), !dbg !122
  %call14 = call i8* @verbiste_get_mode_name(i32 %1), !dbg !181
  call void @llvm.dbg.value(metadata i8* %call14, metadata !183, metadata !DIExpression()), !dbg !122
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %call14, i8* %call13), !dbg !184
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !122
  br label %while.body17, !dbg !187

while.body17:                                     ; preds = %while_break___1, %if.end12
  %i.0 = phi i32 [ 0, %if.end12 ], [ %inc40, %while_break___1 ], !dbg !190
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !186, metadata !DIExpression()), !dbg !122
  br label %while_continue___3, !dbg !191

while_continue___3:                               ; preds = %while.body17
  br label %while_continue___0, !dbg !191

while_continue___0:                               ; preds = %while_continue___3
  %idx.ext = zext i32 %i.0 to i64, !dbg !192
  %add.ptr = getelementptr inbounds i8**, i8*** %call8, i64 %idx.ext, !dbg !192
  %4 = load i8**, i8*** %add.ptr, align 8, !dbg !195
  %5 = ptrtoint i8** %4 to i64, !dbg !196
  %cmp18 = icmp ne i64 %5, 0, !dbg !197
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !198

if.then19:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !199

if.end20:                                         ; preds = %while_continue___0
  call void @llvm.dbg.value(metadata i32 0, metadata !201, metadata !DIExpression()), !dbg !122
  br label %while.body22, !dbg !202

while.body22:                                     ; preds = %if.end33, %if.end20
  %j.0 = phi i32 [ 0, %if.end20 ], [ %inc, %if.end33 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !201, metadata !DIExpression()), !dbg !122
  br label %while_continue___4, !dbg !206

while_continue___4:                               ; preds = %while.body22
  br label %while_continue___1, !dbg !206

while_continue___1:                               ; preds = %while_continue___4
  %idx.ext23 = zext i32 %i.0 to i64, !dbg !207
  %add.ptr24 = getelementptr inbounds i8**, i8*** %call8, i64 %idx.ext23, !dbg !207
  %6 = load i8**, i8*** %add.ptr24, align 8, !dbg !210
  %idx.ext25 = zext i32 %j.0 to i64, !dbg !211
  %add.ptr26 = getelementptr inbounds i8*, i8** %6, i64 %idx.ext25, !dbg !211
  %7 = load i8*, i8** %add.ptr26, align 8, !dbg !212
  %8 = ptrtoint i8* %7 to i64, !dbg !213
  %cmp27 = icmp ne i64 %8, 0, !dbg !214
  br i1 %cmp27, label %if.end29, label %if.then28, !dbg !215

if.then28:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !216

if.end29:                                         ; preds = %while_continue___1
  %cmp30 = icmp ne i32 %j.0, 0, !dbg !218
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !220

if.then31:                                        ; preds = %if.end29
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !221
  br label %if.end33, !dbg !225

if.end33:                                         ; preds = %if.then31, %if.end29
  %idx.ext34 = zext i32 %i.0 to i64, !dbg !226
  %add.ptr35 = getelementptr inbounds i8**, i8*** %call8, i64 %idx.ext34, !dbg !226
  %9 = load i8**, i8*** %add.ptr35, align 8, !dbg !229
  %idx.ext36 = zext i32 %j.0 to i64, !dbg !230
  %add.ptr37 = getelementptr inbounds i8*, i8** %9, i64 %idx.ext36, !dbg !230
  %10 = load i8*, i8** %add.ptr37, align 8, !dbg !231
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %10), !dbg !232
  %inc = add i32 %j.0, 1, !dbg !233
  call void @llvm.dbg.value(metadata i32 %inc, metadata !201, metadata !DIExpression()), !dbg !122
  br label %while.body22, !dbg !202, !llvm.loop !234

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !236

while_break___1:                                  ; preds = %while_break___4, %if.then28
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !237
  %inc40 = add i32 %i.0, 1, !dbg !240
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !186, metadata !DIExpression()), !dbg !122
  br label %while.body17, !dbg !187, !llvm.loop !241

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !243

while_break___0:                                  ; preds = %while_break___3, %if.then19
  call void @verbiste_free_person_array(i8*** %call8), !dbg !244
  %inc41 = add nsw i32 %k.0, 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 %inc41, metadata !135, metadata !DIExpression()), !dbg !122
  br label %while.body, !dbg !136, !llvm.loop !248

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !250

while_break:                                      ; preds = %while_break___2, %if.then
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)), !dbg !251
  br label %return, !dbg !254

return:                                           ; preds = %while_break, %if.then10
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %while_break ], !dbg !140
  ret i32 %retval.0, !dbg !255
}

declare i32 @verbiste_close() #2

declare i8* @verbiste_tolower_latin1(i8*) #2

declare i8*** @verbiste_conjugate(i8*, i32, i32, i32) #2

declare void @verbiste_free_string(i8*) #2

declare i8* @verbiste_get_tense_name(i32) #2

declare i8* @verbiste_get_mode_name(i32) #2

declare void @verbiste_free_person_array(i8***) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!37}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !26, nameTableKind: GNU)
!6 = !DIFile(filename: "c/verbiste-0.1.28.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{!8, !19}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_Verbiste_Mode_23", file: !9, line: 34, baseType: !10, size: 32, elements: !11)
!9 = !DIFile(filename: "../src/verbiste/c-api.h", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18}
!12 = !DIEnumerator(name: "VERBISTE_INVALID_MODE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "VERBISTE_INFINITIVE_MODE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "VERBISTE_INDICATIVE_MODE", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "VERBISTE_CONDITIONAL_MODE", value: 3, isUnsigned: true)
!16 = !DIEnumerator(name: "VERBISTE_SUBJUNCTIVE_MODE", value: 4, isUnsigned: true)
!17 = !DIEnumerator(name: "VERBISTE_IMPERATIVE_MODE", value: 5, isUnsigned: true)
!18 = !DIEnumerator(name: "VERBISTE_PARTICIPLE_MODE", value: 6, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_Verbiste_Tense_24", file: !9, line: 46, baseType: !10, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "VERBISTE_INVALID_TENSE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "VERBISTE_PRESENT_TENSE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "VERBISTE_PAST_TENSE", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "VERBISTE_IMPERFECT_TENSE", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "VERBISTE_FUTURE_TENSE", value: 4, isUnsigned: true)
!26 = !{!27, !30, !31, !32, !33, !10, !35, !36}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 211, baseType: !10)
!34 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "Verbiste_Mode", file: !9, line: 34, baseType: !8)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "Verbiste_Tense", file: !9, line: 46, baseType: !19)
!37 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!38 = distinct !DISubprogram(name: "main", scope: !39, file: !39, line: 57, type: !40, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !44)
!39 = !DIFile(filename: "/home/wslee/benchmarks/textformat/verbiste-0.1.28/examples/conjugator.c", directory: "")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !42, !43}
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!44 = !{}
!45 = !DILocalVariable(name: "argc", arg: 1, scope: !38, file: !39, line: 57, type: !42)
!46 = !DILocation(line: 0, scope: !38)
!47 = !DILocalVariable(name: "argv", arg: 2, scope: !38, file: !39, line: 57, type: !43)
!48 = !DILocalVariable(name: "conjFN", scope: !38, file: !39, line: 60, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4096, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 512)
!52 = !DILocation(line: 60, column: 8, scope: !38)
!53 = !DILocalVariable(name: "verbsFN", scope: !38, file: !39, line: 61, type: !49)
!54 = !DILocation(line: 61, column: 8, scope: !38)
!55 = !DILocalVariable(name: "__cil_tmp8", scope: !38, file: !39, line: 64, type: !31)
!56 = !DILocation(line: 64, column: 9, scope: !38)
!57 = !DILocalVariable(name: "__cil_tmp9", scope: !38, file: !39, line: 65, type: !31)
!58 = !DILocation(line: 65, column: 9, scope: !38)
!59 = !DILocalVariable(name: "__cil_tmp10", scope: !38, file: !39, line: 66, type: !32)
!60 = !DILocation(line: 66, column: 9, scope: !38)
!61 = !DILocalVariable(name: "__cil_tmp11", scope: !38, file: !39, line: 67, type: !32)
!62 = !DILocation(line: 67, column: 9, scope: !38)
!63 = !DILocalVariable(name: "__cil_tmp12", scope: !38, file: !39, line: 68, type: !32)
!64 = !DILocation(line: 68, column: 9, scope: !38)
!65 = !DILocalVariable(name: "__cil_tmp13", scope: !38, file: !39, line: 69, type: !32)
!66 = !DILocation(line: 69, column: 9, scope: !38)
!67 = !DILocalVariable(name: "__cil_tmp14", scope: !38, file: !39, line: 70, type: !32)
!68 = !DILocation(line: 70, column: 9, scope: !38)
!69 = !DILocalVariable(name: "__cil_tmp15", scope: !38, file: !39, line: 71, type: !32)
!70 = !DILocation(line: 71, column: 9, scope: !38)
!71 = !DILocalVariable(name: "__cil_tmp16", scope: !38, file: !39, line: 72, type: !32)
!72 = !DILocation(line: 72, column: 9, scope: !38)
!73 = !DILocation(line: 63, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !39, line: 63, column: 7)
!75 = distinct !DILexicalBlock(scope: !38, file: !39, line: 74, column: 3)
!76 = !DILocation(line: 63, column: 7, scope: !75)
!77 = !DILocation(line: 65, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !39, line: 65, column: 5)
!79 = distinct !DILexicalBlock(scope: !80, file: !39, line: 64, column: 5)
!80 = distinct !DILexicalBlock(scope: !74, file: !39, line: 63, column: 17)
!81 = !DILocation(line: 66, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !39, line: 67, column: 5)
!83 = !DILocation(line: 67, column: 5, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !39, line: 68, column: 5)
!85 = !DILocation(line: 68, column: 5, scope: !80)
!86 = !DILocation(line: 71, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !39, line: 71, column: 3)
!88 = distinct !DILexicalBlock(scope: !75, file: !39, line: 70, column: 3)
!89 = !DILocalVariable(name: "tmp", scope: !38, file: !39, line: 63, type: !32)
!90 = !DILocalVariable(name: "libdatadir", scope: !38, file: !39, line: 59, type: !27)
!91 = !DILocation(line: 72, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !75, file: !39, line: 72, column: 7)
!93 = !DILocation(line: 72, column: 34, scope: !92)
!94 = !DILocation(line: 72, column: 7, scope: !75)
!95 = !DILocation(line: 74, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !39, line: 72, column: 66)
!97 = !DILocation(line: 0, scope: !75)
!98 = !DILocation(line: 75, column: 37, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !39, line: 76, column: 3)
!100 = distinct !DILexicalBlock(scope: !75, file: !39, line: 75, column: 3)
!101 = !DILocation(line: 75, column: 3, scope: !99)
!102 = !DILocation(line: 76, column: 37, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !39, line: 78, column: 3)
!104 = !DILocation(line: 76, column: 3, scope: !103)
!105 = !DILocation(line: 78, column: 33, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !39, line: 79, column: 3)
!107 = !DILocation(line: 78, column: 59, scope: !106)
!108 = !DILocation(line: 78, column: 3, scope: !106)
!109 = !DILocation(line: 80, column: 45, scope: !110)
!110 = distinct !DILexicalBlock(scope: !100, file: !39, line: 80, column: 3)
!111 = !DILocation(line: 80, column: 38, scope: !110)
!112 = !DILocation(line: 80, column: 17, scope: !110)
!113 = !DILocalVariable(name: "exit_status", scope: !38, file: !39, line: 62, type: !42)
!114 = !DILocation(line: 82, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !100, file: !39, line: 82, column: 3)
!116 = !DILocation(line: 84, column: 3, scope: !75)
!117 = !DILocation(line: 86, column: 1, scope: !38)
!118 = distinct !DISubprogram(name: "demo", scope: !39, file: !39, line: 6, type: !119, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !44)
!119 = !DISubroutineType(types: !120)
!120 = !{!42, !27}
!121 = !DILocalVariable(name: "latin1_infinitive", arg: 1, scope: !118, file: !39, line: 6, type: !27)
!122 = !DILocation(line: 0, scope: !118)
!123 = !DILocalVariable(name: "__cil_tmp11", scope: !118, file: !39, line: 17, type: !32)
!124 = !DILocation(line: 17, column: 9, scope: !118)
!125 = !DILocalVariable(name: "__cil_tmp12", scope: !118, file: !39, line: 18, type: !32)
!126 = !DILocation(line: 18, column: 9, scope: !118)
!127 = !DILocalVariable(name: "__cil_tmp13", scope: !118, file: !39, line: 19, type: !32)
!128 = !DILocation(line: 19, column: 9, scope: !118)
!129 = !DILocalVariable(name: "__cil_tmp14", scope: !118, file: !39, line: 20, type: !32)
!130 = !DILocation(line: 20, column: 9, scope: !118)
!131 = !DILocalVariable(name: "__cil_tmp15", scope: !118, file: !39, line: 21, type: !32)
!132 = !DILocation(line: 21, column: 9, scope: !118)
!133 = !DILocalVariable(name: "__cil_tmp16", scope: !118, file: !39, line: 22, type: !32)
!134 = !DILocation(line: 22, column: 9, scope: !118)
!135 = !DILocalVariable(name: "k", scope: !118, file: !39, line: 8, type: !42)
!136 = !DILocation(line: 12, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !39, line: 14, column: 3)
!138 = distinct !DILexicalBlock(scope: !139, file: !39, line: 13, column: 3)
!139 = distinct !DILexicalBlock(scope: !118, file: !39, line: 24, column: 3)
!140 = !DILocation(line: 0, scope: !139)
!141 = !DILocation(line: 12, column: 13, scope: !137)
!142 = !DILocation(line: 12, column: 27, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !39, line: 12, column: 9)
!144 = distinct !DILexicalBlock(scope: !137, file: !39, line: 12, column: 13)
!145 = !DILocation(line: 12, column: 62, scope: !143)
!146 = !DILocation(line: 12, column: 67, scope: !143)
!147 = !DILocation(line: 12, column: 9, scope: !144)
!148 = !DILocation(line: 12, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !39, line: 12, column: 75)
!150 = !DILocation(line: 16, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !39, line: 14, column: 5)
!152 = !DILocation(line: 16, column: 47, scope: !151)
!153 = !DILocalVariable(name: "mode", scope: !118, file: !39, line: 9, type: !35)
!154 = !DILocation(line: 17, column: 13, scope: !151)
!155 = !DILocation(line: 17, column: 48, scope: !151)
!156 = !DILocalVariable(name: "tense", scope: !118, file: !39, line: 10, type: !36)
!157 = !DILocation(line: 22, column: 20, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !39, line: 18, column: 5)
!159 = !DILocalVariable(name: "lower_latin1", scope: !118, file: !39, line: 13, type: !32)
!160 = !DILocation(line: 23, column: 20, scope: !161)
!161 = distinct !DILexicalBlock(scope: !151, file: !39, line: 24, column: 5)
!162 = !DILocalVariable(name: "person_array", scope: !118, file: !39, line: 11, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "Verbiste_PersonArray", file: !9, line: 78, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Verbiste_InflectionArray", file: !9, line: 73, baseType: !43)
!166 = !DILocation(line: 24, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !151, file: !39, line: 26, column: 5)
!168 = !DILocation(line: 26, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !144, file: !39, line: 26, column: 9)
!170 = !DILocation(line: 26, column: 38, scope: !169)
!171 = !DILocation(line: 26, column: 9, scope: !144)
!172 = !DILocation(line: 28, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !39, line: 28, column: 7)
!174 = distinct !DILexicalBlock(scope: !175, file: !39, line: 27, column: 7)
!175 = distinct !DILexicalBlock(scope: !169, file: !39, line: 26, column: 70)
!176 = !DILocation(line: 29, column: 7, scope: !175)
!177 = !DILocation(line: 32, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !39, line: 32, column: 5)
!179 = distinct !DILexicalBlock(scope: !144, file: !39, line: 31, column: 5)
!180 = !DILocalVariable(name: "tmp", scope: !118, file: !39, line: 14, type: !27)
!181 = !DILocation(line: 32, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !39, line: 34, column: 5)
!183 = !DILocalVariable(name: "tmp___0", scope: !118, file: !39, line: 15, type: !27)
!184 = !DILocation(line: 32, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !39, line: 34, column: 5)
!186 = !DILocalVariable(name: "i", scope: !118, file: !39, line: 12, type: !33)
!187 = !DILocation(line: 37, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !39, line: 40, column: 5)
!189 = distinct !DILexicalBlock(scope: !144, file: !39, line: 39, column: 5)
!190 = !DILocation(line: 0, scope: !144)
!191 = !DILocation(line: 37, column: 15, scope: !188)
!192 = !DILocation(line: 37, column: 45, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !39, line: 37, column: 11)
!194 = distinct !DILexicalBlock(scope: !188, file: !39, line: 37, column: 15)
!195 = !DILocation(line: 37, column: 30, scope: !193)
!196 = !DILocation(line: 37, column: 14, scope: !193)
!197 = !DILocation(line: 37, column: 50, scope: !193)
!198 = !DILocation(line: 37, column: 11, scope: !194)
!199 = !DILocation(line: 37, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !39, line: 37, column: 83)
!201 = !DILocalVariable(name: "j", scope: !118, file: !39, line: 16, type: !33)
!202 = !DILocation(line: 41, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !39, line: 43, column: 7)
!204 = distinct !DILexicalBlock(scope: !194, file: !39, line: 42, column: 7)
!205 = !DILocation(line: 0, scope: !194)
!206 = !DILocation(line: 41, column: 17, scope: !203)
!207 = !DILocation(line: 41, column: 49, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !39, line: 41, column: 13)
!209 = distinct !DILexicalBlock(scope: !203, file: !39, line: 41, column: 17)
!210 = !DILocation(line: 41, column: 34, scope: !208)
!211 = !DILocation(line: 41, column: 54, scope: !208)
!212 = !DILocation(line: 41, column: 32, scope: !208)
!213 = !DILocation(line: 41, column: 16, scope: !208)
!214 = !DILocation(line: 41, column: 59, scope: !208)
!215 = !DILocation(line: 41, column: 13, scope: !209)
!216 = !DILocation(line: 41, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !208, file: !39, line: 41, column: 92)
!218 = !DILocation(line: 43, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !209, file: !39, line: 43, column: 13)
!220 = !DILocation(line: 43, column: 13, scope: !209)
!221 = !DILocation(line: 44, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !39, line: 45, column: 11)
!223 = distinct !DILexicalBlock(scope: !224, file: !39, line: 44, column: 11)
!224 = distinct !DILexicalBlock(scope: !219, file: !39, line: 43, column: 22)
!225 = !DILocation(line: 47, column: 9, scope: !224)
!226 = !DILocation(line: 45, column: 72, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !39, line: 49, column: 9)
!228 = distinct !DILexicalBlock(scope: !209, file: !39, line: 48, column: 9)
!229 = !DILocation(line: 45, column: 57, scope: !227)
!230 = !DILocation(line: 45, column: 77, scope: !227)
!231 = !DILocation(line: 45, column: 55, scope: !227)
!232 = !DILocation(line: 45, column: 9, scope: !227)
!233 = !DILocation(line: 41, column: 11, scope: !228)
!234 = distinct !{!234, !202, !235}
!235 = !DILocation(line: 43, column: 7, scope: !203)
!236 = !DILocation(line: 45, column: 7, scope: !203)
!237 = !DILocation(line: 47, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !39, line: 49, column: 7)
!239 = distinct !DILexicalBlock(scope: !194, file: !39, line: 48, column: 7)
!240 = !DILocation(line: 37, column: 9, scope: !239)
!241 = distinct !{!241, !187, !242}
!242 = !DILocation(line: 39, column: 5, scope: !188)
!243 = !DILocation(line: 41, column: 5, scope: !188)
!244 = !DILocation(line: 50, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !39, line: 45, column: 5)
!246 = distinct !DILexicalBlock(scope: !144, file: !39, line: 44, column: 5)
!247 = !DILocation(line: 12, column: 7, scope: !246)
!248 = distinct !{!248, !136, !249}
!249 = !DILocation(line: 14, column: 3, scope: !137)
!250 = !DILocation(line: 16, column: 3, scope: !137)
!251 = !DILocation(line: 52, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !39, line: 20, column: 3)
!253 = distinct !DILexicalBlock(scope: !139, file: !39, line: 19, column: 3)
!254 = !DILocation(line: 53, column: 3, scope: !139)
!255 = !DILocation(line: 55, column: 1, scope: !118)
