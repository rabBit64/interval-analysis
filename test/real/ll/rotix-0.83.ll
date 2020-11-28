; ModuleID = '/tmp/tmp.ll'
source_filename = "c/rotix-0.83.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"       rotix [ -f <file> ] [ -o <file> ] [ -r <value> ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"       rotix -t <text> [ -o <file> ] [ -r <value> ]\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"-f <file>  specify input-file\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"-o <file>  specify output-file\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"-r <value> specify the value to rotate with\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"-a         use all sane values to rotate with\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"-R         rotate right\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"-L         rotate left\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"-t <text>  specify the text to rotate\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"For complete documentation:\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"man rotix\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Report bugs to: sjoerd@huiswerkservice.nl\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Rotix version 0.82\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Copyright (C) 2001 Sjoerd Hemminga <sjoerd@huiswerkservice.nl>\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c"Rotix is licensed under the GNU General Public License. See the file COPYING\0Afor details.\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"f:r:ao:t:LRhv\00", align 1
@rotix_options = internal global [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external global i8*, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [56 x i8] c"rotix: you cannot specify both an inputfile and a text\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"rotix: error opening file %s for reading\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%9i\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"rotix: error opening file %s for writing\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"rotix: not enough memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"rotix: fixme\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"ROT-%02i: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"rotix: error creating temporary file\0A\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"%255[^\0A]s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\0AROT-%02i:\0A=======\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"rot\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @display_help() #0 !dbg !97 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata !4, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata !4, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata !4, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata !4, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata !4, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata !4, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata !4, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata !4, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata !4, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata !4, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata !4, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata !4, metadata !125, metadata !DIExpression()), !dbg !126
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #6, !dbg !127
  call void @llvm.dbg.value(metadata i8* %call, metadata !131, metadata !DIExpression()), !dbg !132
  %call1 = call i32 (i8*, ...) @printf(i8* %call), !dbg !133
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !135
  call void @llvm.dbg.value(metadata i8* %call2, metadata !137, metadata !DIExpression()), !dbg !132
  %call3 = call i32 (i8*, ...) @printf(i8* %call2), !dbg !138
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !140
  call void @llvm.dbg.value(metadata i8* %call4, metadata !142, metadata !DIExpression()), !dbg !132
  %call5 = call i32 (i8*, ...) @printf(i8* %call4), !dbg !143
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !145
  call void @llvm.dbg.value(metadata i8* %call6, metadata !147, metadata !DIExpression()), !dbg !132
  %call7 = call i32 (i8*, ...) @printf(i8* %call6), !dbg !148
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !150
  call void @llvm.dbg.value(metadata i8* %call8, metadata !152, metadata !DIExpression()), !dbg !132
  %call9 = call i32 (i8*, ...) @printf(i8* %call8), !dbg !153
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !155
  call void @llvm.dbg.value(metadata i8* %call10, metadata !157, metadata !DIExpression()), !dbg !132
  %call11 = call i32 (i8*, ...) @printf(i8* %call10), !dbg !158
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !160
  call void @llvm.dbg.value(metadata i8* %call12, metadata !162, metadata !DIExpression()), !dbg !132
  %call13 = call i32 (i8*, ...) @printf(i8* %call12), !dbg !163
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !165
  call void @llvm.dbg.value(metadata i8* %call14, metadata !167, metadata !DIExpression()), !dbg !132
  %call15 = call i32 (i8*, ...) @printf(i8* %call14), !dbg !168
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !170
  call void @llvm.dbg.value(metadata i8* %call16, metadata !172, metadata !DIExpression()), !dbg !132
  %call17 = call i32 (i8*, ...) @printf(i8* %call16), !dbg !173
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !175
  call void @llvm.dbg.value(metadata i8* %call18, metadata !177, metadata !DIExpression()), !dbg !132
  %call19 = call i32 (i8*, ...) @printf(i8* %call18), !dbg !178
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !180
  call void @llvm.dbg.value(metadata i8* %call20, metadata !182, metadata !DIExpression()), !dbg !132
  %call21 = call i32 (i8*, ...) @printf(i8* %call20), !dbg !183
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)), !dbg !185
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !187
  call void @llvm.dbg.value(metadata i8* %call23, metadata !189, metadata !DIExpression()), !dbg !132
  %call24 = call i32 (i8*, ...) @printf(i8* %call23), !dbg !190
  ret void, !dbg !192
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @display_version() #0 !dbg !193 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata !4, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata !4, metadata !198, metadata !DIExpression()), !dbg !199
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !200
  call void @llvm.dbg.value(metadata i8* %call, metadata !204, metadata !DIExpression()), !dbg !205
  %call1 = call i32 (i8*, ...) @printf(i8* %call), !dbg !206
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0)), !dbg !208
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !210
  call void @llvm.dbg.value(metadata i8* %call3, metadata !212, metadata !DIExpression()), !dbg !205
  %call4 = call i32 (i8*, ...) @printf(i8* %call3), !dbg !213
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind ssp uwtable
define void @rotate(i32 %rotor, i8* %rotar, i8 signext %flags) #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i32 %rotor, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %rotar, metadata !222, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8 %flags, metadata !223, metadata !DIExpression()), !dbg !221
  %conv = sext i8 %flags to i32, !dbg !224
  %and = and i32 %conv, 1, !dbg !227
  %tobool = icmp ne i32 %and, 0, !dbg !227
  br i1 %tobool, label %if.end, label %if.then, !dbg !228

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %rotor, !dbg !229
  call void @llvm.dbg.value(metadata i32 %sub, metadata !220, metadata !DIExpression()), !dbg !221
  br label %if.end, !dbg !231

if.end:                                           ; preds = %if.then, %entry
  %rotor.addr.0 = phi i32 [ %rotor, %entry ], [ %sub, %if.then ]
  call void @llvm.dbg.value(metadata i32 %rotor.addr.0, metadata !220, metadata !DIExpression()), !dbg !221
  %rem = srem i32 %rotor.addr.0, 26, !dbg !232
  call void @llvm.dbg.value(metadata i32 %rem, metadata !220, metadata !DIExpression()), !dbg !221
  %cmp = icmp slt i32 %rem, 0, !dbg !233
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !235

if.then2:                                         ; preds = %if.end
  %add = add nsw i32 %rem, 26, !dbg !236
  call void @llvm.dbg.value(metadata i32 %add, metadata !220, metadata !DIExpression()), !dbg !221
  br label %if.end3, !dbg !238

if.end3:                                          ; preds = %if.then2, %if.end
  %rotor.addr.1 = phi i32 [ %add, %if.then2 ], [ %rem, %if.end ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %rotor.addr.1, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !221
  br label %while.body, !dbg !241

while.body:                                       ; preds = %if.end90, %if.end3
  %i.0 = phi i32 [ 0, %if.end3 ], [ %inc, %if.end90 ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !240, metadata !DIExpression()), !dbg !221
  br label %while_continue___0, !dbg !244

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !244

while_continue:                                   ; preds = %while_continue___0
  %idx.ext = sext i32 %i.0 to i64, !dbg !245
  %add.ptr = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext, !dbg !245
  %0 = load i8, i8* %add.ptr, align 1, !dbg !248
  %tobool4 = icmp ne i8 %0, 0, !dbg !248
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !249

if.then5:                                         ; preds = %while_continue
  br label %while_break, !dbg !250

if.end6:                                          ; preds = %while_continue
  %idx.ext7 = sext i32 %i.0 to i64, !dbg !252
  %add.ptr8 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext7, !dbg !252
  %1 = load i8, i8* %add.ptr8, align 1, !dbg !254
  %conv9 = sext i8 %1 to i32, !dbg !255
  %cmp10 = icmp sge i32 %conv9, 65, !dbg !256
  br i1 %cmp10, label %if.then12, label %if.end48, !dbg !257

if.then12:                                        ; preds = %if.end6
  %idx.ext13 = sext i32 %i.0 to i64, !dbg !258
  %add.ptr14 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext13, !dbg !258
  %2 = load i8, i8* %add.ptr14, align 1, !dbg !261
  %conv15 = sext i8 %2 to i32, !dbg !262
  %cmp16 = icmp sle i32 %conv15, 90, !dbg !263
  br i1 %cmp16, label %if.then18, label %if.end47, !dbg !264

if.then18:                                        ; preds = %if.then12
  %idx.ext19 = sext i32 %i.0 to i64, !dbg !265
  %add.ptr20 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext19, !dbg !265
  %3 = load i8, i8* %add.ptr20, align 1, !dbg !267
  %conv21 = sext i8 %3 to i32, !dbg !268
  %sub22 = sub nsw i32 %conv21, 65, !dbg !269
  %conv23 = trunc i32 %sub22 to i8, !dbg !270
  %idx.ext24 = sext i32 %i.0 to i64, !dbg !271
  %add.ptr25 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext24, !dbg !271
  store i8 %conv23, i8* %add.ptr25, align 1, !dbg !272
  %idx.ext26 = sext i32 %i.0 to i64, !dbg !273
  %add.ptr27 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext26, !dbg !273
  %4 = load i8, i8* %add.ptr27, align 1, !dbg !274
  %conv28 = sext i8 %4 to i32, !dbg !275
  %add29 = add nsw i32 %conv28, %rotor.addr.1, !dbg !276
  %conv30 = trunc i32 %add29 to i8, !dbg !277
  %idx.ext31 = sext i32 %i.0 to i64, !dbg !278
  %add.ptr32 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext31, !dbg !278
  store i8 %conv30, i8* %add.ptr32, align 1, !dbg !279
  %idx.ext33 = sext i32 %i.0 to i64, !dbg !280
  %add.ptr34 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext33, !dbg !280
  %5 = load i8, i8* %add.ptr34, align 1, !dbg !281
  %conv35 = sext i8 %5 to i32, !dbg !282
  %rem36 = srem i32 %conv35, 26, !dbg !283
  %conv37 = trunc i32 %rem36 to i8, !dbg !284
  %idx.ext38 = sext i32 %i.0 to i64, !dbg !285
  %add.ptr39 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext38, !dbg !285
  store i8 %conv37, i8* %add.ptr39, align 1, !dbg !286
  %idx.ext40 = sext i32 %i.0 to i64, !dbg !287
  %add.ptr41 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext40, !dbg !287
  %6 = load i8, i8* %add.ptr41, align 1, !dbg !288
  %conv42 = sext i8 %6 to i32, !dbg !289
  %add43 = add nsw i32 %conv42, 65, !dbg !290
  %conv44 = trunc i32 %add43 to i8, !dbg !291
  %idx.ext45 = sext i32 %i.0 to i64, !dbg !292
  %add.ptr46 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext45, !dbg !292
  store i8 %conv44, i8* %add.ptr46, align 1, !dbg !293
  br label %if.end47, !dbg !294

if.end47:                                         ; preds = %if.then18, %if.then12
  br label %if.end48, !dbg !295

if.end48:                                         ; preds = %if.end47, %if.end6
  %idx.ext49 = sext i32 %i.0 to i64, !dbg !296
  %add.ptr50 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext49, !dbg !296
  %7 = load i8, i8* %add.ptr50, align 1, !dbg !298
  %conv51 = sext i8 %7 to i32, !dbg !299
  %cmp52 = icmp sge i32 %conv51, 97, !dbg !300
  br i1 %cmp52, label %if.then54, label %if.end90, !dbg !301

if.then54:                                        ; preds = %if.end48
  %idx.ext55 = sext i32 %i.0 to i64, !dbg !302
  %add.ptr56 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext55, !dbg !302
  %8 = load i8, i8* %add.ptr56, align 1, !dbg !305
  %conv57 = sext i8 %8 to i32, !dbg !306
  %cmp58 = icmp sle i32 %conv57, 122, !dbg !307
  br i1 %cmp58, label %if.then60, label %if.end89, !dbg !308

if.then60:                                        ; preds = %if.then54
  %idx.ext61 = sext i32 %i.0 to i64, !dbg !309
  %add.ptr62 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext61, !dbg !309
  %9 = load i8, i8* %add.ptr62, align 1, !dbg !311
  %conv63 = sext i8 %9 to i32, !dbg !312
  %sub64 = sub nsw i32 %conv63, 97, !dbg !313
  %conv65 = trunc i32 %sub64 to i8, !dbg !314
  %idx.ext66 = sext i32 %i.0 to i64, !dbg !315
  %add.ptr67 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext66, !dbg !315
  store i8 %conv65, i8* %add.ptr67, align 1, !dbg !316
  %idx.ext68 = sext i32 %i.0 to i64, !dbg !317
  %add.ptr69 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext68, !dbg !317
  %10 = load i8, i8* %add.ptr69, align 1, !dbg !318
  %conv70 = sext i8 %10 to i32, !dbg !319
  %add71 = add nsw i32 %conv70, %rotor.addr.1, !dbg !320
  %conv72 = trunc i32 %add71 to i8, !dbg !321
  %idx.ext73 = sext i32 %i.0 to i64, !dbg !322
  %add.ptr74 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext73, !dbg !322
  store i8 %conv72, i8* %add.ptr74, align 1, !dbg !323
  %idx.ext75 = sext i32 %i.0 to i64, !dbg !324
  %add.ptr76 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext75, !dbg !324
  %11 = load i8, i8* %add.ptr76, align 1, !dbg !325
  %conv77 = sext i8 %11 to i32, !dbg !326
  %rem78 = srem i32 %conv77, 26, !dbg !327
  %conv79 = trunc i32 %rem78 to i8, !dbg !328
  %idx.ext80 = sext i32 %i.0 to i64, !dbg !329
  %add.ptr81 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext80, !dbg !329
  store i8 %conv79, i8* %add.ptr81, align 1, !dbg !330
  %idx.ext82 = sext i32 %i.0 to i64, !dbg !331
  %add.ptr83 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext82, !dbg !331
  %12 = load i8, i8* %add.ptr83, align 1, !dbg !332
  %conv84 = sext i8 %12 to i32, !dbg !333
  %add85 = add nsw i32 %conv84, 97, !dbg !334
  %conv86 = trunc i32 %add85 to i8, !dbg !335
  %idx.ext87 = sext i32 %i.0 to i64, !dbg !336
  %add.ptr88 = getelementptr inbounds i8, i8* %rotar, i64 %idx.ext87, !dbg !336
  store i8 %conv86, i8* %add.ptr88, align 1, !dbg !337
  br label %if.end89, !dbg !338

if.end89:                                         ; preds = %if.then60, %if.then54
  br label %if.end90, !dbg !339

if.end90:                                         ; preds = %if.end89, %if.end48
  %inc = add nsw i32 %i.0, 1, !dbg !340
  call void @llvm.dbg.value(metadata i32 %inc, metadata !240, metadata !DIExpression()), !dbg !221
  br label %while.body, !dbg !241, !llvm.loop !341

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !343

while_break:                                      ; preds = %while_break___0, %if.then5
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !345 {
entry:
  %rotor = alloca i32, align 4
  %rotme = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %argc, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8** %argv, metadata !351, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %rotor, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata [2 x i8]* %rotme, metadata !354, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata !4, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata !4, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata !4, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata !4, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata !4, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata !4, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata !4, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata !4, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata !4, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata !4, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata !4, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata !4, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata !4, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata !4, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata !4, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata !4, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata !4, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata !4, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata !4, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata !4, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata !4, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata !4, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata !4, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata !4, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata !4, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata !4, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata !4, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata !4, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata !4, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata !4, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata !4, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata !4, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata !4, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata !4, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata !4, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !350
  store i32 13, i32* %rotor, align 4, !dbg !430
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* null, metadata !433, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 0, metadata !434, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 0, metadata !435, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !437, metadata !DIExpression()), !dbg !350
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 1, !dbg !438
  store i8 0, i8* %arrayidx, align 1, !dbg !439
  %conv = sext i8 0 to i32, !dbg !440
  %or = or i32 %conv, 1, !dbg !441
  %conv1 = trunc i32 %or to i8, !dbg !442
  call void @llvm.dbg.value(metadata i8 %conv1, metadata !435, metadata !DIExpression()), !dbg !350
  br label %while.body, !dbg !443

while.body:                                       ; preds = %switch_break, %entry
  %option_flags.0 = phi i8 [ 0, %entry ], [ %option_flags.4, %switch_break ], !dbg !446
  %arg.0 = phi i8* [ null, %entry ], [ %arg.1, %switch_break ], !dbg !447
  %rotate_flags.0 = phi i8 [ %conv1, %entry ], [ %rotate_flags.2, %switch_break ], !dbg !448
  %ifp.0 = phi %struct._IO_FILE* [ null, %entry ], [ %ifp.2, %switch_break ], !dbg !449
  %ofp.0 = phi %struct._IO_FILE* [ null, %entry ], [ %ofp.2, %switch_break ], !dbg !450
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ofp.0, metadata !437, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.0, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %rotate_flags.0, metadata !435, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !433, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.0, metadata !434, metadata !DIExpression()), !dbg !350
  br label %while_continue___5, !dbg !451

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !451

while_continue:                                   ; preds = %while_continue___5
  %call = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @rotix_options, i32 0, i32 0), i32* null) #6, !dbg !452
  call void @llvm.dbg.value(metadata i32 %call, metadata !432, metadata !DIExpression()), !dbg !350
  %cmp = icmp eq i32 %call, -1, !dbg !456
  br i1 %cmp, label %if.then, label %if.end, !dbg !458

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !459

if.end:                                           ; preds = %while_continue
  %cmp3 = icmp eq i32 %call, 63, !dbg !461
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !464

if.then5:                                         ; preds = %if.end
  br label %case_63, !dbg !465

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %call, 58, !dbg !467
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !469

if.then9:                                         ; preds = %if.end6
  br label %case_58, !dbg !470

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp eq i32 %call, 118, !dbg !472
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !474

if.then13:                                        ; preds = %if.end10
  br label %case_118, !dbg !475

if.end14:                                         ; preds = %if.end10
  %cmp15 = icmp eq i32 %call, 104, !dbg !477
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !479

if.then17:                                        ; preds = %if.end14
  br label %case_104, !dbg !480

if.end18:                                         ; preds = %if.end14
  %cmp19 = icmp eq i32 %call, 82, !dbg !482
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !484

if.then21:                                        ; preds = %if.end18
  br label %case_82, !dbg !485

if.end22:                                         ; preds = %if.end18
  %cmp23 = icmp eq i32 %call, 76, !dbg !487
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !489

if.then25:                                        ; preds = %if.end22
  br label %case_76, !dbg !490

if.end26:                                         ; preds = %if.end22
  %cmp27 = icmp eq i32 %call, 102, !dbg !492
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !494

if.then29:                                        ; preds = %if.end26
  br label %case_102, !dbg !495

if.end30:                                         ; preds = %if.end26
  %cmp31 = icmp eq i32 %call, 114, !dbg !497
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !499

if.then33:                                        ; preds = %if.end30
  br label %case_114, !dbg !500

if.end34:                                         ; preds = %if.end30
  %cmp35 = icmp eq i32 %call, 97, !dbg !502
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !504

if.then37:                                        ; preds = %if.end34
  br label %case_97, !dbg !505

if.end38:                                         ; preds = %if.end34
  %cmp39 = icmp eq i32 %call, 111, !dbg !507
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !509

if.then41:                                        ; preds = %if.end38
  br label %case_111, !dbg !510

if.end42:                                         ; preds = %if.end38
  %cmp43 = icmp eq i32 %call, 116, !dbg !512
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !514

if.then45:                                        ; preds = %if.end42
  br label %case_116, !dbg !515

if.end46:                                         ; preds = %if.end42
  br label %switch_default, !dbg !517

case_63:                                          ; preds = %if.then5
  call void @display_help(), !dbg !518
  call void @exit(i32 1) #7, !dbg !521
  unreachable, !dbg !521

case_58:                                          ; preds = %if.then9
  call void @display_help(), !dbg !523
  call void @exit(i32 1) #7, !dbg !526
  unreachable, !dbg !526

case_118:                                         ; preds = %if.then13
  call void @display_version(), !dbg !528
  call void @exit(i32 0) #7, !dbg !531
  unreachable, !dbg !531

case_104:                                         ; preds = %if.then17
  call void @display_help(), !dbg !533
  call void @exit(i32 0) #7, !dbg !536
  unreachable, !dbg !536

case_82:                                          ; preds = %if.then21
  %conv47 = sext i8 %rotate_flags.0 to i32, !dbg !538
  %or48 = or i32 %conv47, 1, !dbg !539
  %conv49 = trunc i32 %or48 to i8, !dbg !540
  call void @llvm.dbg.value(metadata i8 %conv49, metadata !435, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !541

case_76:                                          ; preds = %if.then25
  %conv50 = sext i8 %rotate_flags.0 to i32, !dbg !542
  %and = and i32 %conv50, 1, !dbg !544
  %tobool = icmp ne i32 %and, 0, !dbg !544
  br i1 %tobool, label %if.then51, label %if.end54, !dbg !545

if.then51:                                        ; preds = %case_76
  %conv52 = sext i8 %rotate_flags.0 to i32, !dbg !546
  %sub = sub nsw i32 %conv52, 1, !dbg !548
  %conv53 = trunc i32 %sub to i8, !dbg !549
  call void @llvm.dbg.value(metadata i8 %conv53, metadata !435, metadata !DIExpression()), !dbg !350
  br label %if.end54, !dbg !550

if.end54:                                         ; preds = %if.then51, %case_76
  %rotate_flags.1 = phi i8 [ %conv53, %if.then51 ], [ %rotate_flags.0, %case_76 ], !dbg !448
  call void @llvm.dbg.value(metadata i8 %rotate_flags.1, metadata !435, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !551

case_102:                                         ; preds = %if.then29
  %0 = load i8*, i8** @optarg, align 8, !dbg !552
  %call55 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !555
  call void @llvm.dbg.value(metadata i32 %call55, metadata !556, metadata !DIExpression()), !dbg !350
  %cmp56 = icmp eq i32 %call55, 0, !dbg !557
  br i1 %cmp56, label %if.then58, label %if.else, !dbg !559

if.then58:                                        ; preds = %case_102
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !560
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !436, metadata !DIExpression()), !dbg !350
  %conv59 = sext i8 %option_flags.0 to i32, !dbg !562
  %or60 = or i32 %conv59, 16, !dbg !563
  %conv61 = trunc i32 %or60 to i8, !dbg !564
  call void @llvm.dbg.value(metadata i8 %conv61, metadata !434, metadata !DIExpression()), !dbg !350
  %conv62 = sext i8 %conv61 to i32, !dbg !565
  %and63 = and i32 %conv62, 4, !dbg !567
  %tobool64 = icmp ne i32 %and63, 0, !dbg !567
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !568

if.then65:                                        ; preds = %if.then58
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !569
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i32 0, i32 0)), !dbg !573
  call void @exit(i32 1) #7, !dbg !574
  unreachable, !dbg !574

if.end67:                                         ; preds = %if.then58
  br label %if.end84, !dbg !576

if.else:                                          ; preds = %case_102
  %3 = load i8*, i8** @optarg, align 8, !dbg !577
  %call68 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !581
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call68, metadata !436, metadata !DIExpression()), !dbg !350
  %conv69 = sext i8 %option_flags.0 to i32, !dbg !582
  %or70 = or i32 %conv69, 2, !dbg !583
  %conv71 = trunc i32 %or70 to i8, !dbg !584
  call void @llvm.dbg.value(metadata i8 %conv71, metadata !434, metadata !DIExpression()), !dbg !350
  %4 = ptrtoint %struct._IO_FILE* %call68 to i64, !dbg !585
  %cmp72 = icmp eq i64 %4, 0, !dbg !587
  br i1 %cmp72, label %if.then74, label %if.else76, !dbg !588

if.then74:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !589
  %6 = load i8*, i8** @optarg, align 8, !dbg !593
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %6), !dbg !594
  call void @exit(i32 1) #7, !dbg !595
  unreachable, !dbg !595

if.else76:                                        ; preds = %if.else
  %conv77 = sext i8 %conv71 to i32, !dbg !597
  %and78 = and i32 %conv77, 4, !dbg !599
  %tobool79 = icmp ne i32 %and78, 0, !dbg !599
  br i1 %tobool79, label %if.then80, label %if.end82, !dbg !600

if.then80:                                        ; preds = %if.else76
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !601
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i32 0, i32 0)), !dbg !605
  call void @exit(i32 1) #7, !dbg !606
  unreachable, !dbg !606

if.end82:                                         ; preds = %if.else76
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end67
  %option_flags.1 = phi i8 [ %conv61, %if.end67 ], [ %conv71, %if.end83 ], !dbg !608
  %ifp.1 = phi %struct._IO_FILE* [ %1, %if.end67 ], [ %call68, %if.end83 ], !dbg !608
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.1, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.1, metadata !434, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !609

case_114:                                         ; preds = %if.then33
  %8 = load i8*, i8** @optarg, align 8, !dbg !610
  %call85 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !613
  call void @llvm.dbg.value(metadata i32 %call85, metadata !614, metadata !DIExpression()), !dbg !350
  %cmp86 = icmp eq i32 %call85, 0, !dbg !615
  br i1 %cmp86, label %if.then88, label %if.else92, !dbg !617

if.then88:                                        ; preds = %case_114
  %conv89 = sext i8 %option_flags.0 to i32, !dbg !618
  %or90 = or i32 %conv89, 1, !dbg !620
  %conv91 = trunc i32 %or90 to i8, !dbg !621
  call void @llvm.dbg.value(metadata i8 %conv91, metadata !434, metadata !DIExpression()), !dbg !350
  br label %if.end97, !dbg !622

if.else92:                                        ; preds = %case_114
  %9 = load i8*, i8** @optarg, align 8, !dbg !623
  %call93 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32* %rotor) #6, !dbg !627
  call void @llvm.dbg.value(metadata i32 %call93, metadata !628, metadata !DIExpression()), !dbg !350
  %tobool94 = icmp ne i32 %call93, 0, !dbg !629
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !631

if.then95:                                        ; preds = %if.else92
  call void @display_help(), !dbg !632
  call void @exit(i32 1) #7, !dbg !636
  unreachable, !dbg !636

if.end96:                                         ; preds = %if.else92
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then88
  %option_flags.2 = phi i8 [ %conv91, %if.then88 ], [ %option_flags.0, %if.end96 ], !dbg !448
  call void @llvm.dbg.value(metadata i8 %option_flags.2, metadata !434, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !638

case_97:                                          ; preds = %if.then37
  %conv98 = sext i8 %option_flags.0 to i32, !dbg !639
  %or99 = or i32 %conv98, 1, !dbg !640
  %conv100 = trunc i32 %or99 to i8, !dbg !641
  call void @llvm.dbg.value(metadata i8 %conv100, metadata !434, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !642

case_111:                                         ; preds = %if.then41
  %10 = load i8*, i8** @optarg, align 8, !dbg !643
  %call101 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !646
  call void @llvm.dbg.value(metadata i32 %call101, metadata !647, metadata !DIExpression()), !dbg !350
  %cmp102 = icmp eq i32 %call101, 0, !dbg !648
  br i1 %cmp102, label %if.then104, label %if.else105, !dbg !650

if.then104:                                       ; preds = %case_111
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %11, metadata !437, metadata !DIExpression()), !dbg !350
  br label %if.end115, !dbg !653

if.else105:                                       ; preds = %case_111
  %12 = load i8*, i8** @optarg, align 8, !dbg !654
  %call106 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !658
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call106, metadata !437, metadata !DIExpression()), !dbg !350
  %conv107 = sext i8 %option_flags.0 to i32, !dbg !659
  %or108 = or i32 %conv107, 8, !dbg !660
  %conv109 = trunc i32 %or108 to i8, !dbg !661
  call void @llvm.dbg.value(metadata i8 %conv109, metadata !434, metadata !DIExpression()), !dbg !350
  %13 = ptrtoint %struct._IO_FILE* %call106 to i64, !dbg !662
  %cmp110 = icmp eq i64 %13, 0, !dbg !664
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !665

if.then112:                                       ; preds = %if.else105
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !666
  %15 = load i8*, i8** @optarg, align 8, !dbg !670
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* %15), !dbg !671
  call void @exit(i32 1) #7, !dbg !672
  unreachable, !dbg !672

if.end114:                                        ; preds = %if.else105
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then104
  %option_flags.3 = phi i8 [ %option_flags.0, %if.then104 ], [ %conv109, %if.end114 ], !dbg !448
  %ofp.1 = phi %struct._IO_FILE* [ %11, %if.then104 ], [ %call106, %if.end114 ], !dbg !674
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ofp.1, metadata !437, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.3, metadata !434, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !675

case_116:                                         ; preds = %if.then45
  %conv116 = sext i8 %option_flags.0 to i32, !dbg !676
  %and117 = and i32 %conv116, 2, !dbg !678
  %tobool118 = icmp ne i32 %and117, 0, !dbg !678
  br i1 %tobool118, label %if.then119, label %if.else121, !dbg !679

if.then119:                                       ; preds = %case_116
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !680
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i32 0, i32 0)), !dbg !684
  call void @exit(i32 1) #7, !dbg !685
  unreachable, !dbg !685

if.else121:                                       ; preds = %case_116
  %conv122 = sext i8 %option_flags.0 to i32, !dbg !687
  %and123 = and i32 %conv122, 16, !dbg !689
  %tobool124 = icmp ne i32 %and123, 0, !dbg !689
  br i1 %tobool124, label %if.then125, label %if.end127, !dbg !676

if.then125:                                       ; preds = %if.else121
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i32 0, i32 0)), !dbg !694
  call void @exit(i32 1) #7, !dbg !695
  unreachable, !dbg !695

if.end127:                                        ; preds = %if.else121
  br label %if.end128

if.end128:                                        ; preds = %if.end127
  %18 = load i8*, i8** @optarg, align 8, !dbg !697
  %call129 = call i32 @strlen(i8* %18) #8, !dbg !700
  call void @llvm.dbg.value(metadata i32 %call129, metadata !701, metadata !DIExpression()), !dbg !350
  %add = add i32 %call129, 1, !dbg !702
  %call130 = call noalias i8* @malloc(i32 %add) #6, !dbg !704
  call void @llvm.dbg.value(metadata i8* %call130, metadata !705, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %call130, metadata !433, metadata !DIExpression()), !dbg !350
  %19 = ptrtoint i8* %call130 to i64, !dbg !706
  %cmp131 = icmp eq i64 %19, 0, !dbg !708
  br i1 %cmp131, label %if.then133, label %if.end135, !dbg !709

if.then133:                                       ; preds = %if.end128
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !710
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !714
  call void @exit(i32 1) #7, !dbg !715
  unreachable, !dbg !715

if.end135:                                        ; preds = %if.end128
  %21 = load i8*, i8** @optarg, align 8, !dbg !717
  %call136 = call i8* @strcpy(i8* %call130, i8* %21) #6, !dbg !720
  %conv137 = sext i8 %option_flags.0 to i32, !dbg !721
  %or138 = or i32 %conv137, 4, !dbg !722
  %conv139 = trunc i32 %or138 to i8, !dbg !723
  call void @llvm.dbg.value(metadata i8 %conv139, metadata !434, metadata !DIExpression()), !dbg !350
  br label %switch_break, !dbg !724

switch_default:                                   ; preds = %if.end46
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)), !dbg !728
  call void @exit(i32 2) #7, !dbg !729
  unreachable, !dbg !729

switch_break:                                     ; preds = %if.end135, %if.end115, %case_97, %if.end97, %if.end84, %if.end54, %case_82
  %option_flags.4 = phi i8 [ %option_flags.0, %case_82 ], [ %option_flags.0, %if.end54 ], [ %option_flags.1, %if.end84 ], [ %option_flags.2, %if.end97 ], [ %conv100, %case_97 ], [ %option_flags.3, %if.end115 ], [ %conv139, %if.end135 ], !dbg !448
  %arg.1 = phi i8* [ %arg.0, %case_82 ], [ %arg.0, %if.end54 ], [ %arg.0, %if.end84 ], [ %arg.0, %if.end97 ], [ %arg.0, %case_97 ], [ %arg.0, %if.end115 ], [ %call130, %if.end135 ], !dbg !448
  %rotate_flags.2 = phi i8 [ %conv49, %case_82 ], [ %rotate_flags.1, %if.end54 ], [ %rotate_flags.0, %if.end84 ], [ %rotate_flags.0, %if.end97 ], [ %rotate_flags.0, %case_97 ], [ %rotate_flags.0, %if.end115 ], [ %rotate_flags.0, %if.end135 ], !dbg !448
  %ifp.2 = phi %struct._IO_FILE* [ %ifp.0, %case_82 ], [ %ifp.0, %if.end54 ], [ %ifp.1, %if.end84 ], [ %ifp.0, %if.end97 ], [ %ifp.0, %case_97 ], [ %ifp.0, %if.end115 ], [ %ifp.0, %if.end135 ], !dbg !448
  %ofp.2 = phi %struct._IO_FILE* [ %ofp.0, %case_82 ], [ %ofp.0, %if.end54 ], [ %ofp.0, %if.end84 ], [ %ofp.0, %if.end97 ], [ %ofp.0, %case_97 ], [ %ofp.1, %if.end115 ], [ %ofp.0, %if.end135 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ofp.2, metadata !437, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.2, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %rotate_flags.2, metadata !435, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %arg.1, metadata !433, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.4, metadata !434, metadata !DIExpression()), !dbg !350
  br label %while.body, !dbg !443, !llvm.loop !731

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !733

while_break:                                      ; preds = %while_break___5, %if.then
  %conv141 = sext i8 %option_flags.0 to i32, !dbg !734
  %and142 = and i32 %conv141, 2, !dbg !736
  %tobool143 = icmp ne i32 %and142, 0, !dbg !736
  br i1 %tobool143, label %if.end153, label %if.then144, !dbg !737

if.then144:                                       ; preds = %while_break
  %conv145 = sext i8 %option_flags.0 to i32, !dbg !738
  %and146 = and i32 %conv145, 4, !dbg !741
  %tobool147 = icmp ne i32 %and146, 0, !dbg !741
  br i1 %tobool147, label %if.end152, label %if.then148, !dbg !742

if.then148:                                       ; preds = %if.then144
  %conv149 = sext i8 %option_flags.0 to i32, !dbg !743
  %or150 = or i32 %conv149, 16, !dbg !745
  %conv151 = trunc i32 %or150 to i8, !dbg !746
  call void @llvm.dbg.value(metadata i8 %conv151, metadata !434, metadata !DIExpression()), !dbg !350
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !747
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !436, metadata !DIExpression()), !dbg !350
  br label %if.end152, !dbg !748

if.end152:                                        ; preds = %if.then148, %if.then144
  %option_flags.5 = phi i8 [ %option_flags.0, %if.then144 ], [ %conv151, %if.then148 ], !dbg !448
  %ifp.3 = phi %struct._IO_FILE* [ %ifp.0, %if.then144 ], [ %23, %if.then148 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.3, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.5, metadata !434, metadata !DIExpression()), !dbg !350
  br label %if.end153, !dbg !749

if.end153:                                        ; preds = %if.end152, %while_break
  %option_flags.6 = phi i8 [ %option_flags.0, %while_break ], [ %option_flags.5, %if.end152 ], !dbg !446
  %ifp.4 = phi %struct._IO_FILE* [ %ifp.0, %while_break ], [ %ifp.3, %if.end152 ], !dbg !449
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.4, metadata !436, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 %option_flags.6, metadata !434, metadata !DIExpression()), !dbg !350
  %24 = ptrtoint %struct._IO_FILE* %ofp.0 to i64, !dbg !750
  %cmp154 = icmp eq i64 %24, 0, !dbg !752
  br i1 %cmp154, label %if.then156, label %if.end157, !dbg !753

if.then156:                                       ; preds = %if.end153
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !437, metadata !DIExpression()), !dbg !350
  br label %if.end157, !dbg !756

if.end157:                                        ; preds = %if.then156, %if.end153
  %ofp.3 = phi %struct._IO_FILE* [ %25, %if.then156 ], [ %ofp.0, %if.end153 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ofp.3, metadata !437, metadata !DIExpression()), !dbg !350
  %conv158 = sext i8 %option_flags.6 to i32, !dbg !757
  %and159 = and i32 %conv158, 4, !dbg !759
  %tobool160 = icmp ne i32 %and159, 0, !dbg !759
  br i1 %tobool160, label %if.then161, label %if.else175, !dbg !760

if.then161:                                       ; preds = %if.end157
  %conv162 = sext i8 %option_flags.6 to i32, !dbg !761
  %and163 = and i32 %conv162, 1, !dbg !764
  %tobool164 = icmp ne i32 %and163, 0, !dbg !764
  br i1 %tobool164, label %if.then165, label %if.else172, !dbg !765

if.then165:                                       ; preds = %if.then161
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while.body166, !dbg !766

while.body166:                                    ; preds = %if.end170, %if.then165
  %i.0 = phi i32 [ 1, %if.then165 ], [ %inc, %if.end170 ], !dbg !770
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while_continue___6, !dbg !771

while_continue___6:                               ; preds = %while.body166
  br label %while_continue___0, !dbg !771

while_continue___0:                               ; preds = %while_continue___6
  %cmp167 = icmp slt i32 %i.0, 26, !dbg !772
  br i1 %cmp167, label %if.end170, label %if.then169, !dbg !775

if.then169:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !776

if.end170:                                        ; preds = %while_continue___0
  call void @rotate(i32 1, i8* %arg.0, i8 signext %rotate_flags.0), !dbg !778
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %i.0, i8* %arg.0), !dbg !781
  %inc = add nsw i32 %i.0, 1, !dbg !783
  call void @llvm.dbg.value(metadata i32 %inc, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while.body166, !dbg !766, !llvm.loop !784

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !786

while_break___0:                                  ; preds = %while_break___6, %if.then169
  call void @free(i8* %arg.0) #6, !dbg !787
  br label %if.end174, !dbg !790

if.else172:                                       ; preds = %if.then161
  %26 = load i32, i32* %rotor, align 4, !dbg !791
  call void @rotate(i32 %26, i8* %arg.0, i8 signext %rotate_flags.0), !dbg !795
  %call173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* %arg.0), !dbg !796
  br label %if.end174

if.end174:                                        ; preds = %if.else172, %while_break___0
  br label %if.end273, !dbg !798

if.else175:                                       ; preds = %if.end157
  %conv176 = sext i8 %option_flags.6 to i32, !dbg !799
  %and177 = and i32 %conv176, 1, !dbg !801
  %tobool178 = icmp ne i32 %and177, 0, !dbg !801
  br i1 %tobool178, label %if.then179, label %if.else246, !dbg !802

if.then179:                                       ; preds = %if.else175
  %27 = ptrtoint %struct._IO_FILE* %ifp.4 to i64, !dbg !803
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !806
  %29 = ptrtoint %struct._IO_FILE* %28 to i64, !dbg !807
  %cmp180 = icmp eq i64 %27, %29, !dbg !808
  br i1 %cmp180, label %if.then182, label %if.end212, !dbg !809

if.then182:                                       ; preds = %if.then179
  %call183 = call %struct._IO_FILE* @tmpfile(), !dbg !810
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call183, metadata !436, metadata !DIExpression()), !dbg !350
  %30 = ptrtoint %struct._IO_FILE* %call183 to i64, !dbg !814
  %cmp184 = icmp eq i64 %30, 0, !dbg !816
  br i1 %cmp184, label %if.then186, label %if.end188, !dbg !817

if.then186:                                       ; preds = %if.then182
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !818
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0)), !dbg !822
  call void @exit(i32 1) #7, !dbg !823
  unreachable, !dbg !823

if.end188:                                        ; preds = %if.then182
  %call189 = call noalias i8* @malloc(i32 265) #6, !dbg !825
  call void @llvm.dbg.value(metadata i8* %call189, metadata !828, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %call189, metadata !433, metadata !DIExpression()), !dbg !350
  %32 = ptrtoint i8* %call189 to i64, !dbg !829
  %cmp190 = icmp eq i64 %32, 0, !dbg !831
  br i1 %cmp190, label %if.then192, label %if.end194, !dbg !832

if.then192:                                       ; preds = %if.end188
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !837
  call void @exit(i32 1) #7, !dbg !838
  unreachable, !dbg !838

if.end194:                                        ; preds = %if.end188
  br label %while.body195, !dbg !840

while.body195:                                    ; preds = %if.end207, %if.end194
  br label %while_continue___7, !dbg !843

while_continue___7:                               ; preds = %while.body195
  br label %while_continue___1, !dbg !843

while_continue___1:                               ; preds = %while_continue___7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !844
  %call196 = call i32 @feof(%struct._IO_FILE* %34) #6, !dbg !848
  call void @llvm.dbg.value(metadata i32 %call196, metadata !849, metadata !DIExpression()), !dbg !350
  %tobool197 = icmp ne i32 %call196, 0, !dbg !850
  br i1 %tobool197, label %if.then198, label %if.end199, !dbg !852

if.then198:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !853

if.end199:                                        ; preds = %while_continue___1
  %call200 = call i8* @strcpy(i8* %call189, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !855
  %arrayidx201 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !858
  store i8 0, i8* %arrayidx201, align 1, !dbg !859
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !860
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %call189), !dbg !862
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %call189), !dbg !863
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !865
  %call204 = call i32 @feof(%struct._IO_FILE* %36) #6, !dbg !867
  call void @llvm.dbg.value(metadata i32 %call204, metadata !868, metadata !DIExpression()), !dbg !350
  %tobool205 = icmp ne i32 %call204, 0, !dbg !869
  br i1 %tobool205, label %if.then206, label %if.end207, !dbg !871

if.then206:                                       ; preds = %if.end199
  br label %while_break___1, !dbg !872

if.end207:                                        ; preds = %if.end199
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !874
  %call208 = call i32 @fgetc(%struct._IO_FILE* %37), !dbg !877
  call void @llvm.dbg.value(metadata i32 %call208, metadata !878, metadata !DIExpression()), !dbg !350
  %conv209 = trunc i32 %call208 to i8, !dbg !879
  %arrayidx210 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !880
  store i8 %conv209, i8* %arrayidx210, align 1, !dbg !881
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i32 0, i32 0, !dbg !882
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay), !dbg !884
  br label %while.body195, !dbg !840, !llvm.loop !885

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !887

while_break___1:                                  ; preds = %while_break___7, %if.then206, %if.then198
  call void @rewind(%struct._IO_FILE* %call183), !dbg !888
  br label %if.end212, !dbg !891

if.end212:                                        ; preds = %while_break___1, %if.then179
  %ifp.5 = phi %struct._IO_FILE* [ %call183, %while_break___1 ], [ %ifp.4, %if.then179 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.5, metadata !436, metadata !DIExpression()), !dbg !350
  %call213 = call noalias i8* @malloc(i32 256) #6, !dbg !892
  call void @llvm.dbg.value(metadata i8* %call213, metadata !895, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %call213, metadata !433, metadata !DIExpression()), !dbg !350
  %38 = ptrtoint i8* %call213 to i64, !dbg !896
  %cmp214 = icmp eq i64 %38, 0, !dbg !898
  br i1 %cmp214, label %if.then216, label %if.end218, !dbg !899

if.then216:                                       ; preds = %if.end212
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !900
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !904
  call void @exit(i32 1) #7, !dbg !905
  unreachable, !dbg !905

if.end218:                                        ; preds = %if.end212
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while.body219, !dbg !907

while.body219:                                    ; preds = %while_break___3, %if.end218
  %i.1 = phi i32 [ 1, %if.end218 ], [ %inc245, %while_break___3 ], !dbg !910
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while_continue___8, !dbg !911

while_continue___8:                               ; preds = %while.body219
  br label %while_continue___2, !dbg !911

while_continue___2:                               ; preds = %while_continue___8
  %cmp220 = icmp slt i32 %i.1, 26, !dbg !912
  br i1 %cmp220, label %if.end223, label %if.then222, !dbg !915

if.then222:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !916

if.end223:                                        ; preds = %while_continue___2
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i32 %i.1), !dbg !918
  br label %while.body226, !dbg !921

while.body226:                                    ; preds = %if.end238, %if.end223
  br label %while_continue___9, !dbg !924

while_continue___9:                               ; preds = %while.body226
  br label %while_continue___3, !dbg !924

while_continue___3:                               ; preds = %while_continue___9
  %call227 = call i32 @feof(%struct._IO_FILE* %ifp.5) #6, !dbg !925
  call void @llvm.dbg.value(metadata i32 %call227, metadata !929, metadata !DIExpression()), !dbg !350
  %tobool228 = icmp ne i32 %call227, 0, !dbg !930
  br i1 %tobool228, label %if.then229, label %if.end230, !dbg !932

if.then229:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !933

if.end230:                                        ; preds = %while_continue___3
  %call231 = call i8* @strcpy(i8* %call213, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !935
  %arrayidx232 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !938
  store i8 0, i8* %arrayidx232, align 1, !dbg !939
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %ifp.5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %call213), !dbg !940
  call void @rotate(i32 %i.1, i8* %call213, i8 signext %rotate_flags.0), !dbg !942
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %call213), !dbg !944
  %call235 = call i32 @feof(%struct._IO_FILE* %ifp.5) #6, !dbg !946
  call void @llvm.dbg.value(metadata i32 %call235, metadata !948, metadata !DIExpression()), !dbg !350
  %tobool236 = icmp ne i32 %call235, 0, !dbg !949
  br i1 %tobool236, label %if.then237, label %if.end238, !dbg !951

if.then237:                                       ; preds = %if.end230
  br label %while_break___3, !dbg !952

if.end238:                                        ; preds = %if.end230
  %call239 = call i32 @fgetc(%struct._IO_FILE* %ifp.5), !dbg !954
  call void @llvm.dbg.value(metadata i32 %call239, metadata !957, metadata !DIExpression()), !dbg !350
  %conv240 = trunc i32 %call239 to i8, !dbg !958
  %arrayidx241 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !959
  store i8 %conv240, i8* %arrayidx241, align 1, !dbg !960
  %arraydecay242 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i32 0, i32 0, !dbg !961
  call void @rotate(i32 %i.1, i8* %arraydecay242, i8 signext %rotate_flags.0), !dbg !963
  %arraydecay243 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i32 0, i32 0, !dbg !964
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay243), !dbg !966
  br label %while.body226, !dbg !921, !llvm.loop !967

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !969

while_break___3:                                  ; preds = %while_break___9, %if.then237, %if.then229
  call void @rewind(%struct._IO_FILE* %ifp.5), !dbg !970
  %inc245 = add nsw i32 %i.1, 1, !dbg !973
  call void @llvm.dbg.value(metadata i32 %inc245, metadata !429, metadata !DIExpression()), !dbg !350
  br label %while.body219, !dbg !907, !llvm.loop !974

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !976

while_break___2:                                  ; preds = %while_break___8, %if.then222
  call void @free(i8* %call213) #6, !dbg !977
  br label %if.end272, !dbg !980

if.else246:                                       ; preds = %if.else175
  %call247 = call noalias i8* @malloc(i32 256) #6, !dbg !981
  call void @llvm.dbg.value(metadata i8* %call247, metadata !985, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %call247, metadata !433, metadata !DIExpression()), !dbg !350
  %40 = ptrtoint i8* %call247 to i64, !dbg !986
  %cmp248 = icmp eq i64 %40, 0, !dbg !988
  br i1 %cmp248, label %if.then250, label %if.end252, !dbg !989

if.then250:                                       ; preds = %if.else246
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !994
  call void @exit(i32 1) #7, !dbg !995
  unreachable, !dbg !995

if.end252:                                        ; preds = %if.else246
  br label %while.body253, !dbg !997

while.body253:                                    ; preds = %if.end265, %if.end252
  br label %while_continue___10, !dbg !1000

while_continue___10:                              ; preds = %while.body253
  br label %while_continue___4, !dbg !1000

while_continue___4:                               ; preds = %while_continue___10
  %call254 = call i32 @feof(%struct._IO_FILE* %ifp.4) #6, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %call254, metadata !1005, metadata !DIExpression()), !dbg !350
  %tobool255 = icmp ne i32 %call254, 0, !dbg !1006
  br i1 %tobool255, label %if.then256, label %if.end257, !dbg !1008

if.then256:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !1009

if.end257:                                        ; preds = %while_continue___4
  %call258 = call i8* @strcpy(i8* %call247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !1011
  %arrayidx259 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !1014
  store i8 0, i8* %arrayidx259, align 1, !dbg !1015
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %ifp.4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %call247), !dbg !1016
  %42 = load i32, i32* %rotor, align 4, !dbg !1018
  call void @rotate(i32 %42, i8* %call247, i8 signext %rotate_flags.0), !dbg !1020
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %call247), !dbg !1021
  %call262 = call i32 @feof(%struct._IO_FILE* %ifp.4) #6, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %call262, metadata !1025, metadata !DIExpression()), !dbg !350
  %tobool263 = icmp ne i32 %call262, 0, !dbg !1026
  br i1 %tobool263, label %if.then264, label %if.end265, !dbg !1028

if.then264:                                       ; preds = %if.end257
  br label %while_break___4, !dbg !1029

if.end265:                                        ; preds = %if.end257
  %call266 = call i32 @fgetc(%struct._IO_FILE* %ifp.4), !dbg !1031
  call void @llvm.dbg.value(metadata i32 %call266, metadata !1034, metadata !DIExpression()), !dbg !350
  %conv267 = trunc i32 %call266 to i8, !dbg !1035
  %arrayidx268 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i64 0, i64 0, !dbg !1036
  store i8 %conv267, i8* %arrayidx268, align 1, !dbg !1037
  %43 = load i32, i32* %rotor, align 4, !dbg !1038
  %arraydecay269 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i32 0, i32 0, !dbg !1040
  call void @rotate(i32 %43, i8* %arraydecay269, i8 signext %rotate_flags.0), !dbg !1041
  %arraydecay270 = getelementptr inbounds [2 x i8], [2 x i8]* %rotme, i32 0, i32 0, !dbg !1042
  %call271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %ofp.3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay270), !dbg !1044
  br label %while.body253, !dbg !997, !llvm.loop !1045

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !1047

while_break___4:                                  ; preds = %while_break___10, %if.then264, %if.then256
  call void @free(i8* %call247) #6, !dbg !1048
  br label %if.end272

if.end272:                                        ; preds = %while_break___4, %while_break___2
  %ifp.6 = phi %struct._IO_FILE* [ %ifp.5, %while_break___2 ], [ %ifp.4, %while_break___4 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.6, metadata !436, metadata !DIExpression()), !dbg !350
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end174
  %ifp.7 = phi %struct._IO_FILE* [ %ifp.4, %if.end174 ], [ %ifp.6, %if.end272 ], !dbg !448
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %ifp.7, metadata !436, metadata !DIExpression()), !dbg !350
  %call274 = call i32 @fflush(%struct._IO_FILE* null), !dbg !1051
  %conv275 = sext i8 %option_flags.6 to i32, !dbg !1054
  %and276 = and i32 %conv275, 2, !dbg !1056
  %tobool277 = icmp ne i32 %and276, 0, !dbg !1056
  br i1 %tobool277, label %if.then278, label %if.end280, !dbg !1057

if.then278:                                       ; preds = %if.end273
  %call279 = call i32 @fclose(%struct._IO_FILE* %ifp.7), !dbg !1058
  br label %if.end280, !dbg !1062

if.end280:                                        ; preds = %if.then278, %if.end273
  %conv281 = sext i8 %option_flags.6 to i32, !dbg !1063
  %and282 = and i32 %conv281, 8, !dbg !1065
  %tobool283 = icmp ne i32 %and282, 0, !dbg !1065
  br i1 %tobool283, label %if.then284, label %if.end286, !dbg !1066

if.then284:                                       ; preds = %if.end280
  %call285 = call i32 @fclose(%struct._IO_FILE* %ofp.3), !dbg !1067
  br label %if.end286, !dbg !1071

if.end286:                                        ; preds = %if.then284, %if.end280
  ret i32 0, !dbg !1072
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @"\01__isoc99_sscanf"(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare %struct._IO_FILE* @tmpfile() #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @"\01__isoc99_fscanf"(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fgetc(%struct._IO_FILE*) #3

declare void @rewind(%struct._IO_FILE*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!91, !92, !93, !94, !95}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rotix_options", scope: !2, file: !87, line: 60, type: !88, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !86, nameTableKind: GNU)
!3 = !DIFile(filename: "c/rotix-0.83.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !9, !8, !10, !11, !12, !73, !75, !83, !85, !65}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !16, line: 271, size: 1728, elements: !17)
!16 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !38, !39, !40, !41, !45, !47, !49, !53, !56, !60, !61, !62, !63, !64, !68, !69}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !16, line: 272, baseType: !9, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !15, file: !16, line: 273, baseType: !10, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !15, file: !16, line: 274, baseType: !10, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !15, file: !16, line: 275, baseType: !10, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !15, file: !16, line: 276, baseType: !10, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !15, file: !16, line: 277, baseType: !10, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !15, file: !16, line: 278, baseType: !10, size: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !15, file: !16, line: 279, baseType: !10, size: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !15, file: !16, line: 280, baseType: !10, size: 64, offset: 512)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !15, file: !16, line: 281, baseType: !10, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !15, file: !16, line: 282, baseType: !10, size: 64, offset: 640)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !15, file: !16, line: 283, baseType: !10, size: 64, offset: 704)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !15, file: !16, line: 284, baseType: !31, size: 64, offset: 768)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !16, line: 186, size: 192, elements: !33)
!33 = !{!34, !35, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !32, file: !16, line: 187, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !32, file: !16, line: 188, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !32, file: !16, line: 189, baseType: !9, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !15, file: !16, line: 285, baseType: !36, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !15, file: !16, line: 286, baseType: !9, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !16, line: 287, baseType: !9, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !15, file: !16, line: 288, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 141, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !15, file: !16, line: 289, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !15, file: !16, line: 290, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !15, file: !16, line: 291, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 292, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !16, line: 180, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !16, line: 293, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 142, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !43, line: 56, baseType: !59)
!59 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !15, file: !16, line: 294, baseType: !11, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !15, file: !16, line: 295, baseType: !11, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !15, file: !16, line: 296, baseType: !11, size: 64, offset: 1344)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !15, file: !16, line: 297, baseType: !11, size: 64, offset: 1408)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !15, file: !16, line: 298, baseType: !65, size: 32, offset: 1472)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 211, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !15, file: !16, line: 299, baseType: !9, size: 32, offset: 1504)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !15, file: !16, line: 300, baseType: !70, size: 192, offset: 1536)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 24)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !78, line: 106, size: 256, elements: !79)
!78 = !DIFile(filename: "/usr/include/getopt.h", directory: "")
!79 = !{!80, !81, !82, !84}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !78, line: 107, baseType: !6, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !77, file: !78, line: 108, baseType: !9, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !77, file: !78, line: 109, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !78, line: 110, baseType: !9, size: 32, offset: 192)
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !{!0}
!87 = !DIFile(filename: "/home/wslee/benchmarks/textformat/rotix-0.83/rotix.c", directory: "")
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2560, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!92 = !{i32 2, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 7, !"PIC Level", i32 2}
!96 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!97 = distinct !DISubprogram(name: "display_help", scope: !98, file: !98, line: 34, type: !99, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DIFile(filename: "/home/wslee/benchmarks/textformat/rotix-0.83/help.c", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{null}
!101 = !DILocalVariable(name: "__cil_tmp13", scope: !97, file: !98, line: 48, type: !10)
!102 = !DILocation(line: 48, column: 9, scope: !97)
!103 = !DILocalVariable(name: "__cil_tmp14", scope: !97, file: !98, line: 49, type: !10)
!104 = !DILocation(line: 49, column: 9, scope: !97)
!105 = !DILocalVariable(name: "__cil_tmp15", scope: !97, file: !98, line: 50, type: !10)
!106 = !DILocation(line: 50, column: 9, scope: !97)
!107 = !DILocalVariable(name: "__cil_tmp16", scope: !97, file: !98, line: 51, type: !10)
!108 = !DILocation(line: 51, column: 9, scope: !97)
!109 = !DILocalVariable(name: "__cil_tmp17", scope: !97, file: !98, line: 52, type: !10)
!110 = !DILocation(line: 52, column: 9, scope: !97)
!111 = !DILocalVariable(name: "__cil_tmp18", scope: !97, file: !98, line: 53, type: !10)
!112 = !DILocation(line: 53, column: 9, scope: !97)
!113 = !DILocalVariable(name: "__cil_tmp19", scope: !97, file: !98, line: 54, type: !10)
!114 = !DILocation(line: 54, column: 9, scope: !97)
!115 = !DILocalVariable(name: "__cil_tmp20", scope: !97, file: !98, line: 55, type: !10)
!116 = !DILocation(line: 55, column: 9, scope: !97)
!117 = !DILocalVariable(name: "__cil_tmp21", scope: !97, file: !98, line: 56, type: !10)
!118 = !DILocation(line: 56, column: 9, scope: !97)
!119 = !DILocalVariable(name: "__cil_tmp22", scope: !97, file: !98, line: 57, type: !10)
!120 = !DILocation(line: 57, column: 9, scope: !97)
!121 = !DILocalVariable(name: "__cil_tmp23", scope: !97, file: !98, line: 58, type: !10)
!122 = !DILocation(line: 58, column: 9, scope: !97)
!123 = !DILocalVariable(name: "__cil_tmp24", scope: !97, file: !98, line: 59, type: !10)
!124 = !DILocation(line: 59, column: 9, scope: !97)
!125 = !DILocalVariable(name: "__cil_tmp25", scope: !97, file: !98, line: 60, type: !10)
!126 = !DILocation(line: 60, column: 9, scope: !97)
!127 = !DILocation(line: 36, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !98, line: 64, column: 3)
!129 = distinct !DILexicalBlock(scope: !130, file: !98, line: 63, column: 3)
!130 = distinct !DILexicalBlock(scope: !97, file: !98, line: 62, column: 3)
!131 = !DILocalVariable(name: "tmp", scope: !97, file: !98, line: 36, type: !10)
!132 = !DILocation(line: 0, scope: !97)
!133 = !DILocation(line: 36, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !98, line: 38, column: 3)
!135 = !DILocation(line: 37, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !98, line: 38, column: 3)
!137 = !DILocalVariable(name: "tmp___0", scope: !97, file: !98, line: 37, type: !10)
!138 = !DILocation(line: 37, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !98, line: 39, column: 3)
!140 = !DILocation(line: 38, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !129, file: !98, line: 39, column: 3)
!142 = !DILocalVariable(name: "tmp___1", scope: !97, file: !98, line: 38, type: !10)
!143 = !DILocation(line: 38, column: 3, scope: !144)
!144 = distinct !DILexicalBlock(scope: !129, file: !98, line: 40, column: 3)
!145 = !DILocation(line: 40, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !129, file: !98, line: 40, column: 3)
!147 = !DILocalVariable(name: "tmp___2", scope: !97, file: !98, line: 39, type: !10)
!148 = !DILocation(line: 40, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !129, file: !98, line: 42, column: 3)
!150 = !DILocation(line: 41, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !129, file: !98, line: 42, column: 3)
!152 = !DILocalVariable(name: "tmp___3", scope: !97, file: !98, line: 40, type: !10)
!153 = !DILocation(line: 41, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !129, file: !98, line: 43, column: 3)
!155 = !DILocation(line: 42, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !129, file: !98, line: 43, column: 3)
!157 = !DILocalVariable(name: "tmp___4", scope: !97, file: !98, line: 41, type: !10)
!158 = !DILocation(line: 42, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !129, file: !98, line: 44, column: 3)
!160 = !DILocation(line: 43, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !129, file: !98, line: 44, column: 3)
!162 = !DILocalVariable(name: "tmp___5", scope: !97, file: !98, line: 42, type: !10)
!163 = !DILocation(line: 43, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !129, file: !98, line: 45, column: 3)
!165 = !DILocation(line: 44, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !129, file: !98, line: 45, column: 3)
!167 = !DILocalVariable(name: "tmp___6", scope: !97, file: !98, line: 43, type: !10)
!168 = !DILocation(line: 44, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !129, file: !98, line: 46, column: 3)
!170 = !DILocation(line: 45, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !129, file: !98, line: 46, column: 3)
!172 = !DILocalVariable(name: "tmp___7", scope: !97, file: !98, line: 44, type: !10)
!173 = !DILocation(line: 45, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !129, file: !98, line: 47, column: 3)
!175 = !DILocation(line: 46, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !129, file: !98, line: 47, column: 3)
!177 = !DILocalVariable(name: "tmp___8", scope: !97, file: !98, line: 45, type: !10)
!178 = !DILocation(line: 46, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !129, file: !98, line: 48, column: 3)
!180 = !DILocation(line: 48, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !129, file: !98, line: 48, column: 3)
!182 = !DILocalVariable(name: "tmp___9", scope: !97, file: !98, line: 46, type: !10)
!183 = !DILocation(line: 48, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !129, file: !98, line: 50, column: 3)
!185 = !DILocation(line: 49, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !129, file: !98, line: 50, column: 3)
!187 = !DILocation(line: 51, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !129, file: !98, line: 51, column: 3)
!189 = !DILocalVariable(name: "tmp___10", scope: !97, file: !98, line: 47, type: !10)
!190 = !DILocation(line: 51, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !129, file: !98, line: 53, column: 3)
!192 = !DILocation(line: 52, column: 3, scope: !130)
!193 = distinct !DISubprogram(name: "display_version", scope: !98, file: !98, line: 54, type: !99, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DILocalVariable(name: "__cil_tmp3", scope: !193, file: !98, line: 58, type: !10)
!195 = !DILocation(line: 58, column: 9, scope: !193)
!196 = !DILocalVariable(name: "__cil_tmp4", scope: !193, file: !98, line: 59, type: !10)
!197 = !DILocation(line: 59, column: 9, scope: !193)
!198 = !DILocalVariable(name: "__cil_tmp5", scope: !193, file: !98, line: 60, type: !10)
!199 = !DILocation(line: 60, column: 9, scope: !193)
!200 = !DILocation(line: 56, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !98, line: 64, column: 3)
!202 = distinct !DILexicalBlock(scope: !203, file: !98, line: 63, column: 3)
!203 = distinct !DILexicalBlock(scope: !193, file: !98, line: 62, column: 3)
!204 = !DILocalVariable(name: "tmp", scope: !193, file: !98, line: 56, type: !10)
!205 = !DILocation(line: 0, scope: !193)
!206 = !DILocation(line: 56, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !98, line: 58, column: 3)
!208 = !DILocation(line: 58, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !98, line: 58, column: 3)
!210 = !DILocation(line: 60, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !98, line: 60, column: 3)
!212 = !DILocalVariable(name: "tmp___0", scope: !193, file: !98, line: 57, type: !10)
!213 = !DILocation(line: 60, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !98, line: 62, column: 3)
!215 = !DILocation(line: 62, column: 3, scope: !203)
!216 = distinct !DISubprogram(name: "rotate", scope: !217, file: !217, line: 37, type: !218, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!217 = !DIFile(filename: "/home/wslee/benchmarks/textformat/rotix-0.83/rot.c", directory: "")
!218 = !DISubroutineType(types: !219)
!219 = !{null, !9, !10, !8}
!220 = !DILocalVariable(name: "rotor", arg: 1, scope: !216, file: !217, line: 37, type: !9)
!221 = !DILocation(line: 0, scope: !216)
!222 = !DILocalVariable(name: "rotar", arg: 2, scope: !216, file: !217, line: 37, type: !10)
!223 = !DILocalVariable(name: "flags", arg: 3, scope: !216, file: !217, line: 37, type: !8)
!224 = !DILocation(line: 41, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !217, line: 41, column: 7)
!226 = distinct !DILexicalBlock(scope: !216, file: !217, line: 41, column: 3)
!227 = !DILocation(line: 41, column: 22, scope: !225)
!228 = !DILocation(line: 41, column: 7, scope: !226)
!229 = !DILocation(line: 43, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !217, line: 41, column: 28)
!231 = !DILocation(line: 44, column: 3, scope: !230)
!232 = !DILocation(line: 47, column: 9, scope: !226)
!233 = !DILocation(line: 50, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !226, file: !217, line: 50, column: 7)
!235 = !DILocation(line: 50, column: 7, scope: !226)
!236 = !DILocation(line: 51, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !217, line: 50, column: 18)
!238 = !DILocation(line: 52, column: 3, scope: !237)
!239 = !DILocation(line: 0, scope: !226)
!240 = !DILocalVariable(name: "i", scope: !216, file: !217, line: 39, type: !9)
!241 = !DILocation(line: 54, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !217, line: 56, column: 3)
!243 = distinct !DILexicalBlock(scope: !226, file: !217, line: 55, column: 3)
!244 = !DILocation(line: 54, column: 13, scope: !242)
!245 = !DILocation(line: 54, column: 19, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !217, line: 54, column: 9)
!247 = distinct !DILexicalBlock(scope: !242, file: !217, line: 54, column: 13)
!248 = !DILocation(line: 54, column: 11, scope: !246)
!249 = !DILocation(line: 54, column: 9, scope: !247)
!250 = !DILocation(line: 54, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !217, line: 54, column: 25)
!252 = !DILocation(line: 55, column: 23, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !217, line: 55, column: 9)
!254 = !DILocation(line: 55, column: 15, scope: !253)
!255 = !DILocation(line: 55, column: 9, scope: !253)
!256 = !DILocation(line: 55, column: 28, scope: !253)
!257 = !DILocation(line: 55, column: 9, scope: !247)
!258 = !DILocation(line: 55, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !217, line: 55, column: 11)
!260 = distinct !DILexicalBlock(scope: !253, file: !217, line: 55, column: 35)
!261 = !DILocation(line: 55, column: 17, scope: !259)
!262 = !DILocation(line: 55, column: 11, scope: !259)
!263 = !DILocation(line: 55, column: 30, scope: !259)
!264 = !DILocation(line: 55, column: 11, scope: !260)
!265 = !DILocation(line: 56, column: 46, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !217, line: 55, column: 37)
!267 = !DILocation(line: 56, column: 38, scope: !266)
!268 = !DILocation(line: 56, column: 32, scope: !266)
!269 = !DILocation(line: 56, column: 51, scope: !266)
!270 = !DILocation(line: 56, column: 24, scope: !266)
!271 = !DILocation(line: 56, column: 17, scope: !266)
!272 = !DILocation(line: 56, column: 22, scope: !266)
!273 = !DILocation(line: 57, column: 46, scope: !266)
!274 = !DILocation(line: 57, column: 38, scope: !266)
!275 = !DILocation(line: 57, column: 32, scope: !266)
!276 = !DILocation(line: 57, column: 51, scope: !266)
!277 = !DILocation(line: 57, column: 24, scope: !266)
!278 = !DILocation(line: 57, column: 17, scope: !266)
!279 = !DILocation(line: 57, column: 22, scope: !266)
!280 = !DILocation(line: 58, column: 46, scope: !266)
!281 = !DILocation(line: 58, column: 38, scope: !266)
!282 = !DILocation(line: 58, column: 32, scope: !266)
!283 = !DILocation(line: 58, column: 51, scope: !266)
!284 = !DILocation(line: 58, column: 24, scope: !266)
!285 = !DILocation(line: 58, column: 17, scope: !266)
!286 = !DILocation(line: 58, column: 22, scope: !266)
!287 = !DILocation(line: 59, column: 46, scope: !266)
!288 = !DILocation(line: 59, column: 38, scope: !266)
!289 = !DILocation(line: 59, column: 32, scope: !266)
!290 = !DILocation(line: 59, column: 51, scope: !266)
!291 = !DILocation(line: 59, column: 24, scope: !266)
!292 = !DILocation(line: 59, column: 17, scope: !266)
!293 = !DILocation(line: 59, column: 22, scope: !266)
!294 = !DILocation(line: 60, column: 7, scope: !266)
!295 = !DILocation(line: 61, column: 5, scope: !260)
!296 = !DILocation(line: 62, column: 23, scope: !297)
!297 = distinct !DILexicalBlock(scope: !247, file: !217, line: 62, column: 9)
!298 = !DILocation(line: 62, column: 15, scope: !297)
!299 = !DILocation(line: 62, column: 9, scope: !297)
!300 = !DILocation(line: 62, column: 28, scope: !297)
!301 = !DILocation(line: 62, column: 9, scope: !247)
!302 = !DILocation(line: 62, column: 25, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !217, line: 62, column: 11)
!304 = distinct !DILexicalBlock(scope: !297, file: !217, line: 62, column: 35)
!305 = !DILocation(line: 62, column: 17, scope: !303)
!306 = !DILocation(line: 62, column: 11, scope: !303)
!307 = !DILocation(line: 62, column: 30, scope: !303)
!308 = !DILocation(line: 62, column: 11, scope: !304)
!309 = !DILocation(line: 63, column: 46, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !217, line: 62, column: 38)
!311 = !DILocation(line: 63, column: 38, scope: !310)
!312 = !DILocation(line: 63, column: 32, scope: !310)
!313 = !DILocation(line: 63, column: 51, scope: !310)
!314 = !DILocation(line: 63, column: 24, scope: !310)
!315 = !DILocation(line: 63, column: 17, scope: !310)
!316 = !DILocation(line: 63, column: 22, scope: !310)
!317 = !DILocation(line: 64, column: 46, scope: !310)
!318 = !DILocation(line: 64, column: 38, scope: !310)
!319 = !DILocation(line: 64, column: 32, scope: !310)
!320 = !DILocation(line: 64, column: 51, scope: !310)
!321 = !DILocation(line: 64, column: 24, scope: !310)
!322 = !DILocation(line: 64, column: 17, scope: !310)
!323 = !DILocation(line: 64, column: 22, scope: !310)
!324 = !DILocation(line: 65, column: 46, scope: !310)
!325 = !DILocation(line: 65, column: 38, scope: !310)
!326 = !DILocation(line: 65, column: 32, scope: !310)
!327 = !DILocation(line: 65, column: 51, scope: !310)
!328 = !DILocation(line: 65, column: 24, scope: !310)
!329 = !DILocation(line: 65, column: 17, scope: !310)
!330 = !DILocation(line: 65, column: 22, scope: !310)
!331 = !DILocation(line: 66, column: 46, scope: !310)
!332 = !DILocation(line: 66, column: 38, scope: !310)
!333 = !DILocation(line: 66, column: 32, scope: !310)
!334 = !DILocation(line: 66, column: 51, scope: !310)
!335 = !DILocation(line: 66, column: 24, scope: !310)
!336 = !DILocation(line: 66, column: 17, scope: !310)
!337 = !DILocation(line: 66, column: 22, scope: !310)
!338 = !DILocation(line: 67, column: 7, scope: !310)
!339 = !DILocation(line: 68, column: 5, scope: !304)
!340 = !DILocation(line: 54, column: 7, scope: !247)
!341 = distinct !{!341, !241, !342}
!342 = !DILocation(line: 55, column: 3, scope: !242)
!343 = !DILocation(line: 57, column: 3, scope: !242)
!344 = !DILocation(line: 69, column: 3, scope: !226)
!345 = distinct !DISubprogram(name: "main", scope: !87, file: !87, line: 53, type: !346, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{!9, !9, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!349 = !DILocalVariable(name: "argc", arg: 1, scope: !345, file: !87, line: 53, type: !9)
!350 = !DILocation(line: 0, scope: !345)
!351 = !DILocalVariable(name: "argv", arg: 2, scope: !345, file: !87, line: 53, type: !348)
!352 = !DILocalVariable(name: "rotor", scope: !345, file: !87, line: 56, type: !9)
!353 = !DILocation(line: 56, column: 7, scope: !345)
!354 = !DILocalVariable(name: "rotme", scope: !345, file: !87, line: 61, type: !355)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 2)
!358 = !DILocation(line: 61, column: 8, scope: !345)
!359 = !DILocalVariable(name: "__cil_tmp30", scope: !345, file: !87, line: 82, type: !11)
!360 = !DILocation(line: 82, column: 9, scope: !345)
!361 = !DILocalVariable(name: "__cil_tmp31", scope: !345, file: !87, line: 83, type: !10)
!362 = !DILocation(line: 83, column: 9, scope: !345)
!363 = !DILocalVariable(name: "__cil_tmp32", scope: !345, file: !87, line: 84, type: !10)
!364 = !DILocation(line: 84, column: 9, scope: !345)
!365 = !DILocalVariable(name: "__cil_tmp33", scope: !345, file: !87, line: 85, type: !10)
!366 = !DILocation(line: 85, column: 9, scope: !345)
!367 = !DILocalVariable(name: "__cil_tmp34", scope: !345, file: !87, line: 86, type: !10)
!368 = !DILocation(line: 86, column: 9, scope: !345)
!369 = !DILocalVariable(name: "__cil_tmp35", scope: !345, file: !87, line: 87, type: !10)
!370 = !DILocation(line: 87, column: 9, scope: !345)
!371 = !DILocalVariable(name: "__cil_tmp36", scope: !345, file: !87, line: 88, type: !10)
!372 = !DILocation(line: 88, column: 9, scope: !345)
!373 = !DILocalVariable(name: "__cil_tmp37", scope: !345, file: !87, line: 89, type: !10)
!374 = !DILocation(line: 89, column: 9, scope: !345)
!375 = !DILocalVariable(name: "__cil_tmp38", scope: !345, file: !87, line: 90, type: !10)
!376 = !DILocation(line: 90, column: 9, scope: !345)
!377 = !DILocalVariable(name: "__cil_tmp39", scope: !345, file: !87, line: 91, type: !10)
!378 = !DILocation(line: 91, column: 9, scope: !345)
!379 = !DILocalVariable(name: "__cil_tmp40", scope: !345, file: !87, line: 92, type: !10)
!380 = !DILocation(line: 92, column: 9, scope: !345)
!381 = !DILocalVariable(name: "__cil_tmp41", scope: !345, file: !87, line: 93, type: !10)
!382 = !DILocation(line: 93, column: 9, scope: !345)
!383 = !DILocalVariable(name: "__cil_tmp42", scope: !345, file: !87, line: 94, type: !10)
!384 = !DILocation(line: 94, column: 9, scope: !345)
!385 = !DILocalVariable(name: "__cil_tmp43", scope: !345, file: !87, line: 95, type: !10)
!386 = !DILocation(line: 95, column: 9, scope: !345)
!387 = !DILocalVariable(name: "__cil_tmp44", scope: !345, file: !87, line: 96, type: !10)
!388 = !DILocation(line: 96, column: 9, scope: !345)
!389 = !DILocalVariable(name: "__cil_tmp45", scope: !345, file: !87, line: 97, type: !10)
!390 = !DILocation(line: 97, column: 9, scope: !345)
!391 = !DILocalVariable(name: "__cil_tmp46", scope: !345, file: !87, line: 98, type: !10)
!392 = !DILocation(line: 98, column: 9, scope: !345)
!393 = !DILocalVariable(name: "__cil_tmp47", scope: !345, file: !87, line: 99, type: !10)
!394 = !DILocation(line: 99, column: 9, scope: !345)
!395 = !DILocalVariable(name: "__cil_tmp48", scope: !345, file: !87, line: 100, type: !10)
!396 = !DILocation(line: 100, column: 9, scope: !345)
!397 = !DILocalVariable(name: "__cil_tmp49", scope: !345, file: !87, line: 101, type: !10)
!398 = !DILocation(line: 101, column: 9, scope: !345)
!399 = !DILocalVariable(name: "__cil_tmp50", scope: !345, file: !87, line: 102, type: !10)
!400 = !DILocation(line: 102, column: 9, scope: !345)
!401 = !DILocalVariable(name: "__cil_tmp51", scope: !345, file: !87, line: 103, type: !10)
!402 = !DILocation(line: 103, column: 9, scope: !345)
!403 = !DILocalVariable(name: "__cil_tmp52", scope: !345, file: !87, line: 104, type: !10)
!404 = !DILocation(line: 104, column: 9, scope: !345)
!405 = !DILocalVariable(name: "__cil_tmp53", scope: !345, file: !87, line: 105, type: !10)
!406 = !DILocation(line: 105, column: 9, scope: !345)
!407 = !DILocalVariable(name: "__cil_tmp54", scope: !345, file: !87, line: 106, type: !10)
!408 = !DILocation(line: 106, column: 9, scope: !345)
!409 = !DILocalVariable(name: "__cil_tmp55", scope: !345, file: !87, line: 107, type: !10)
!410 = !DILocation(line: 107, column: 9, scope: !345)
!411 = !DILocalVariable(name: "__cil_tmp56", scope: !345, file: !87, line: 108, type: !10)
!412 = !DILocation(line: 108, column: 9, scope: !345)
!413 = !DILocalVariable(name: "__cil_tmp57", scope: !345, file: !87, line: 109, type: !10)
!414 = !DILocation(line: 109, column: 9, scope: !345)
!415 = !DILocalVariable(name: "__cil_tmp58", scope: !345, file: !87, line: 110, type: !10)
!416 = !DILocation(line: 110, column: 9, scope: !345)
!417 = !DILocalVariable(name: "__cil_tmp59", scope: !345, file: !87, line: 111, type: !10)
!418 = !DILocation(line: 111, column: 9, scope: !345)
!419 = !DILocalVariable(name: "__cil_tmp60", scope: !345, file: !87, line: 112, type: !10)
!420 = !DILocation(line: 112, column: 9, scope: !345)
!421 = !DILocalVariable(name: "__cil_tmp61", scope: !345, file: !87, line: 113, type: !10)
!422 = !DILocation(line: 113, column: 9, scope: !345)
!423 = !DILocalVariable(name: "__cil_tmp62", scope: !345, file: !87, line: 114, type: !10)
!424 = !DILocation(line: 114, column: 9, scope: !345)
!425 = !DILocalVariable(name: "__cil_tmp63", scope: !345, file: !87, line: 115, type: !10)
!426 = !DILocation(line: 115, column: 9, scope: !345)
!427 = !DILocalVariable(name: "__cil_tmp64", scope: !345, file: !87, line: 116, type: !10)
!428 = !DILocation(line: 116, column: 9, scope: !345)
!429 = !DILocalVariable(name: "i", scope: !345, file: !87, line: 55, type: !9)
!430 = !DILocation(line: 55, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !345, file: !87, line: 118, column: 3)
!432 = !DILocalVariable(name: "option", scope: !345, file: !87, line: 57, type: !9)
!433 = !DILocalVariable(name: "arg", scope: !345, file: !87, line: 58, type: !10)
!434 = !DILocalVariable(name: "option_flags", scope: !345, file: !87, line: 59, type: !8)
!435 = !DILocalVariable(name: "rotate_flags", scope: !345, file: !87, line: 60, type: !8)
!436 = !DILocalVariable(name: "ifp", scope: !345, file: !87, line: 62, type: !12)
!437 = !DILocalVariable(name: "ofp", scope: !345, file: !87, line: 63, type: !12)
!438 = !DILocation(line: 89, column: 3, scope: !431)
!439 = !DILocation(line: 89, column: 12, scope: !431)
!440 = !DILocation(line: 90, column: 26, scope: !431)
!441 = !DILocation(line: 90, column: 45, scope: !431)
!442 = !DILocation(line: 90, column: 18, scope: !431)
!443 = !DILocation(line: 93, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !87, line: 92, column: 3)
!445 = distinct !DILexicalBlock(scope: !431, file: !87, line: 91, column: 3)
!446 = !DILocation(line: 56, column: 16, scope: !431)
!447 = !DILocation(line: 56, column: 7, scope: !431)
!448 = !DILocation(line: 0, scope: !431)
!449 = !DILocation(line: 78, column: 7, scope: !431)
!450 = !DILocation(line: 79, column: 7, scope: !431)
!451 = !DILocation(line: 93, column: 13, scope: !444)
!452 = !DILocation(line: 94, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !87, line: 97, column: 5)
!454 = distinct !DILexicalBlock(scope: !455, file: !87, line: 96, column: 5)
!455 = distinct !DILexicalBlock(scope: !444, file: !87, line: 93, column: 13)
!456 = !DILocation(line: 95, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !455, file: !87, line: 95, column: 9)
!458 = !DILocation(line: 95, column: 9, scope: !455)
!459 = !DILocation(line: 95, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !87, line: 95, column: 23)
!461 = !DILocation(line: 98, column: 16, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !87, line: 98, column: 9)
!463 = distinct !DILexicalBlock(scope: !455, file: !87, line: 97, column: 5)
!464 = !DILocation(line: 98, column: 9, scope: !463)
!465 = !DILocation(line: 98, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !87, line: 98, column: 23)
!467 = !DILocation(line: 101, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !87, line: 101, column: 9)
!469 = !DILocation(line: 101, column: 9, scope: !463)
!470 = !DILocation(line: 101, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !87, line: 101, column: 23)
!472 = !DILocation(line: 106, column: 16, scope: !473)
!473 = distinct !DILexicalBlock(scope: !463, file: !87, line: 106, column: 9)
!474 = !DILocation(line: 106, column: 9, scope: !463)
!475 = !DILocation(line: 106, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !87, line: 106, column: 24)
!477 = !DILocation(line: 109, column: 16, scope: !478)
!478 = distinct !DILexicalBlock(scope: !463, file: !87, line: 109, column: 9)
!479 = !DILocation(line: 109, column: 9, scope: !463)
!480 = !DILocation(line: 109, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !87, line: 109, column: 24)
!482 = !DILocation(line: 116, column: 16, scope: !483)
!483 = distinct !DILexicalBlock(scope: !463, file: !87, line: 116, column: 9)
!484 = !DILocation(line: 116, column: 9, scope: !463)
!485 = !DILocation(line: 116, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !87, line: 116, column: 23)
!487 = !DILocation(line: 120, column: 16, scope: !488)
!488 = distinct !DILexicalBlock(scope: !463, file: !87, line: 120, column: 9)
!489 = !DILocation(line: 120, column: 9, scope: !463)
!490 = !DILocation(line: 120, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !87, line: 120, column: 23)
!492 = !DILocation(line: 127, column: 16, scope: !493)
!493 = distinct !DILexicalBlock(scope: !463, file: !87, line: 127, column: 9)
!494 = !DILocation(line: 127, column: 9, scope: !463)
!495 = !DILocation(line: 127, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !87, line: 127, column: 24)
!497 = !DILocation(line: 151, column: 16, scope: !498)
!498 = distinct !DILexicalBlock(scope: !463, file: !87, line: 151, column: 9)
!499 = !DILocation(line: 151, column: 9, scope: !463)
!500 = !DILocation(line: 151, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !87, line: 151, column: 24)
!502 = !DILocation(line: 161, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !463, file: !87, line: 161, column: 9)
!504 = !DILocation(line: 161, column: 9, scope: !463)
!505 = !DILocation(line: 161, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !87, line: 161, column: 23)
!507 = !DILocation(line: 166, column: 16, scope: !508)
!508 = distinct !DILexicalBlock(scope: !463, file: !87, line: 166, column: 9)
!509 = !DILocation(line: 166, column: 9, scope: !463)
!510 = !DILocation(line: 166, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !87, line: 166, column: 24)
!512 = !DILocation(line: 182, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !463, file: !87, line: 182, column: 9)
!514 = !DILocation(line: 182, column: 9, scope: !463)
!515 = !DILocation(line: 182, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !87, line: 182, column: 24)
!517 = !DILocation(line: 198, column: 5, scope: !463)
!518 = !DILocation(line: 99, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !87, line: 201, column: 5)
!520 = distinct !DILexicalBlock(scope: !463, file: !87, line: 200, column: 5)
!521 = !DILocation(line: 100, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !87, line: 101, column: 5)
!523 = !DILocation(line: 104, column: 5, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !87, line: 105, column: 5)
!525 = distinct !DILexicalBlock(scope: !463, file: !87, line: 104, column: 5)
!526 = !DILocation(line: 105, column: 5, scope: !527)
!527 = distinct !DILexicalBlock(scope: !525, file: !87, line: 106, column: 5)
!528 = !DILocation(line: 107, column: 5, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !87, line: 110, column: 5)
!530 = distinct !DILexicalBlock(scope: !463, file: !87, line: 109, column: 5)
!531 = !DILocation(line: 108, column: 5, scope: !532)
!532 = distinct !DILexicalBlock(scope: !530, file: !87, line: 109, column: 5)
!533 = !DILocation(line: 110, column: 5, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !87, line: 113, column: 5)
!535 = distinct !DILexicalBlock(scope: !463, file: !87, line: 112, column: 5)
!536 = !DILocation(line: 111, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !87, line: 112, column: 5)
!538 = !DILocation(line: 117, column: 28, scope: !463)
!539 = !DILocation(line: 117, column: 47, scope: !463)
!540 = !DILocation(line: 117, column: 20, scope: !463)
!541 = !DILocation(line: 118, column: 5, scope: !463)
!542 = !DILocation(line: 121, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !463, file: !87, line: 121, column: 9)
!544 = !DILocation(line: 121, column: 28, scope: !543)
!545 = !DILocation(line: 121, column: 9, scope: !463)
!546 = !DILocation(line: 122, column: 30, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !87, line: 121, column: 33)
!548 = !DILocation(line: 122, column: 49, scope: !547)
!549 = !DILocation(line: 122, column: 22, scope: !547)
!550 = !DILocation(line: 123, column: 5, scope: !547)
!551 = !DILocation(line: 124, column: 5, scope: !463)
!552 = !DILocation(line: 128, column: 34, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !87, line: 127, column: 5)
!554 = distinct !DILexicalBlock(scope: !463, file: !87, line: 126, column: 5)
!555 = !DILocation(line: 128, column: 11, scope: !553)
!556 = !DILocalVariable(name: "tmp", scope: !345, file: !87, line: 64, type: !9)
!557 = !DILocation(line: 128, column: 13, scope: !558)
!558 = distinct !DILexicalBlock(scope: !463, file: !87, line: 128, column: 9)
!559 = !DILocation(line: 128, column: 9, scope: !463)
!560 = !DILocation(line: 129, column: 13, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !87, line: 128, column: 19)
!562 = !DILocation(line: 130, column: 30, scope: !561)
!563 = !DILocation(line: 130, column: 49, scope: !561)
!564 = !DILocation(line: 130, column: 22, scope: !561)
!565 = !DILocation(line: 132, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !87, line: 132, column: 11)
!567 = !DILocation(line: 132, column: 30, scope: !566)
!568 = !DILocation(line: 132, column: 11, scope: !561)
!569 = !DILocation(line: 133, column: 42, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !87, line: 134, column: 9)
!571 = distinct !DILexicalBlock(scope: !572, file: !87, line: 133, column: 9)
!572 = distinct !DILexicalBlock(scope: !566, file: !87, line: 132, column: 35)
!573 = !DILocation(line: 133, column: 9, scope: !570)
!574 = !DILocation(line: 134, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !87, line: 135, column: 9)
!576 = !DILocation(line: 138, column: 5, scope: !561)
!577 = !DILocation(line: 137, column: 52, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !87, line: 140, column: 7)
!579 = distinct !DILexicalBlock(scope: !580, file: !87, line: 139, column: 7)
!580 = distinct !DILexicalBlock(scope: !558, file: !87, line: 138, column: 12)
!581 = !DILocation(line: 137, column: 13, scope: !578)
!582 = !DILocation(line: 138, column: 30, scope: !579)
!583 = !DILocation(line: 138, column: 49, scope: !579)
!584 = !DILocation(line: 138, column: 22, scope: !579)
!585 = !DILocation(line: 140, column: 11, scope: !586)
!586 = distinct !DILexicalBlock(scope: !580, file: !87, line: 140, column: 11)
!587 = !DILocation(line: 140, column: 31, scope: !586)
!588 = !DILocation(line: 140, column: 11, scope: !580)
!589 = !DILocation(line: 141, column: 42, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !87, line: 142, column: 9)
!591 = distinct !DILexicalBlock(scope: !592, file: !87, line: 141, column: 9)
!592 = distinct !DILexicalBlock(scope: !586, file: !87, line: 140, column: 63)
!593 = !DILocation(line: 142, column: 17, scope: !590)
!594 = !DILocation(line: 141, column: 9, scope: !590)
!595 = !DILocation(line: 142, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !87, line: 144, column: 9)
!597 = !DILocation(line: 143, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !87, line: 143, column: 11)
!599 = !DILocation(line: 143, column: 30, scope: !598)
!600 = !DILocation(line: 143, column: 11, scope: !586)
!601 = !DILocation(line: 144, column: 42, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !87, line: 145, column: 9)
!603 = distinct !DILexicalBlock(scope: !604, file: !87, line: 144, column: 9)
!604 = distinct !DILexicalBlock(scope: !598, file: !87, line: 143, column: 35)
!605 = !DILocation(line: 144, column: 9, scope: !602)
!606 = !DILocation(line: 145, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !87, line: 146, column: 9)
!608 = !DILocation(line: 0, scope: !558)
!609 = !DILocation(line: 148, column: 5, scope: !463)
!610 = !DILocation(line: 152, column: 38, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !87, line: 151, column: 5)
!612 = distinct !DILexicalBlock(scope: !463, file: !87, line: 150, column: 5)
!613 = !DILocation(line: 152, column: 15, scope: !611)
!614 = !DILocalVariable(name: "tmp___1", scope: !345, file: !87, line: 66, type: !9)
!615 = !DILocation(line: 152, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !463, file: !87, line: 152, column: 9)
!617 = !DILocation(line: 152, column: 9, scope: !463)
!618 = !DILocation(line: 153, column: 30, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !87, line: 152, column: 23)
!620 = !DILocation(line: 153, column: 49, scope: !619)
!621 = !DILocation(line: 153, column: 22, scope: !619)
!622 = !DILocation(line: 154, column: 5, scope: !619)
!623 = !DILocation(line: 154, column: 57, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !87, line: 156, column: 7)
!625 = distinct !DILexicalBlock(scope: !626, file: !87, line: 155, column: 7)
!626 = distinct !DILexicalBlock(scope: !616, file: !87, line: 154, column: 12)
!627 = !DILocation(line: 154, column: 17, scope: !624)
!628 = !DILocalVariable(name: "tmp___0", scope: !345, file: !87, line: 65, type: !9)
!629 = !DILocation(line: 154, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !87, line: 154, column: 11)
!631 = !DILocation(line: 154, column: 11, scope: !626)
!632 = !DILocation(line: 155, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !87, line: 156, column: 9)
!634 = distinct !DILexicalBlock(scope: !635, file: !87, line: 155, column: 9)
!635 = distinct !DILexicalBlock(scope: !630, file: !87, line: 154, column: 22)
!636 = !DILocation(line: 156, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !87, line: 157, column: 9)
!638 = !DILocation(line: 158, column: 5, scope: !463)
!639 = !DILocation(line: 162, column: 28, scope: !463)
!640 = !DILocation(line: 162, column: 47, scope: !463)
!641 = !DILocation(line: 162, column: 20, scope: !463)
!642 = !DILocation(line: 163, column: 5, scope: !463)
!643 = !DILocation(line: 167, column: 38, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !87, line: 166, column: 5)
!645 = distinct !DILexicalBlock(scope: !463, file: !87, line: 165, column: 5)
!646 = !DILocation(line: 167, column: 15, scope: !644)
!647 = !DILocalVariable(name: "tmp___2", scope: !345, file: !87, line: 67, type: !9)
!648 = !DILocation(line: 167, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !463, file: !87, line: 167, column: 9)
!650 = !DILocation(line: 167, column: 9, scope: !463)
!651 = !DILocation(line: 168, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !87, line: 167, column: 23)
!653 = !DILocation(line: 169, column: 5, scope: !652)
!654 = !DILocation(line: 170, column: 52, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !87, line: 171, column: 7)
!656 = distinct !DILexicalBlock(scope: !657, file: !87, line: 170, column: 7)
!657 = distinct !DILexicalBlock(scope: !649, file: !87, line: 169, column: 12)
!658 = !DILocation(line: 170, column: 13, scope: !655)
!659 = !DILocation(line: 172, column: 30, scope: !656)
!660 = !DILocation(line: 172, column: 49, scope: !656)
!661 = !DILocation(line: 172, column: 22, scope: !656)
!662 = !DILocation(line: 174, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !87, line: 174, column: 11)
!664 = !DILocation(line: 174, column: 31, scope: !663)
!665 = !DILocation(line: 174, column: 11, scope: !657)
!666 = !DILocation(line: 175, column: 42, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !87, line: 176, column: 9)
!668 = distinct !DILexicalBlock(scope: !669, file: !87, line: 175, column: 9)
!669 = distinct !DILexicalBlock(scope: !663, file: !87, line: 174, column: 63)
!670 = !DILocation(line: 176, column: 17, scope: !667)
!671 = !DILocation(line: 175, column: 9, scope: !667)
!672 = !DILocation(line: 176, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !87, line: 178, column: 9)
!674 = !DILocation(line: 0, scope: !649)
!675 = !DILocation(line: 179, column: 5, scope: !463)
!676 = !DILocation(line: 183, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !463, file: !87, line: 183, column: 9)
!678 = !DILocation(line: 183, column: 28, scope: !677)
!679 = !DILocation(line: 183, column: 9, scope: !463)
!680 = !DILocation(line: 184, column: 40, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !87, line: 185, column: 7)
!682 = distinct !DILexicalBlock(scope: !683, file: !87, line: 184, column: 7)
!683 = distinct !DILexicalBlock(scope: !677, file: !87, line: 183, column: 33)
!684 = !DILocation(line: 184, column: 7, scope: !681)
!685 = !DILocation(line: 185, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !87, line: 186, column: 7)
!687 = !DILocation(line: 183, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !677, file: !87, line: 183, column: 9)
!689 = !DILocation(line: 183, column: 28, scope: !688)
!690 = !DILocation(line: 184, column: 40, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !87, line: 185, column: 7)
!692 = distinct !DILexicalBlock(scope: !693, file: !87, line: 184, column: 7)
!693 = distinct !DILexicalBlock(scope: !688, file: !87, line: 183, column: 34)
!694 = !DILocation(line: 184, column: 7, scope: !691)
!695 = !DILocation(line: 185, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !87, line: 186, column: 7)
!697 = !DILocation(line: 188, column: 38, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !87, line: 190, column: 5)
!699 = distinct !DILexicalBlock(scope: !463, file: !87, line: 189, column: 5)
!700 = !DILocation(line: 188, column: 15, scope: !698)
!701 = !DILocalVariable(name: "tmp___3", scope: !345, file: !87, line: 68, type: !65)
!702 = !DILocation(line: 188, column: 30, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !87, line: 190, column: 5)
!704 = !DILocation(line: 188, column: 15, scope: !703)
!705 = !DILocalVariable(name: "tmp___4", scope: !345, file: !87, line: 69, type: !11)
!706 = !DILocation(line: 189, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !463, file: !87, line: 189, column: 9)
!708 = !DILocation(line: 189, column: 29, scope: !707)
!709 = !DILocation(line: 189, column: 9, scope: !463)
!710 = !DILocation(line: 190, column: 40, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !87, line: 191, column: 7)
!712 = distinct !DILexicalBlock(scope: !713, file: !87, line: 190, column: 7)
!713 = distinct !DILexicalBlock(scope: !707, file: !87, line: 189, column: 61)
!714 = !DILocation(line: 190, column: 7, scope: !711)
!715 = !DILocation(line: 191, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !87, line: 192, column: 7)
!717 = !DILocation(line: 193, column: 75, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !87, line: 196, column: 5)
!719 = distinct !DILexicalBlock(scope: !463, file: !87, line: 195, column: 5)
!720 = !DILocation(line: 193, column: 5, scope: !718)
!721 = !DILocation(line: 194, column: 28, scope: !719)
!722 = !DILocation(line: 194, column: 47, scope: !719)
!723 = !DILocation(line: 194, column: 20, scope: !719)
!724 = !DILocation(line: 195, column: 5, scope: !463)
!725 = !DILocation(line: 199, column: 38, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !87, line: 198, column: 5)
!727 = distinct !DILexicalBlock(scope: !463, file: !87, line: 197, column: 5)
!728 = !DILocation(line: 199, column: 5, scope: !726)
!729 = !DILocation(line: 200, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !87, line: 201, column: 5)
!731 = distinct !{!731, !443, !732}
!732 = !DILocation(line: 205, column: 3, scope: !444)
!733 = !DILocation(line: 207, column: 3, scope: !444)
!734 = !DILocation(line: 204, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !431, file: !87, line: 204, column: 7)
!736 = !DILocation(line: 204, column: 29, scope: !735)
!737 = !DILocation(line: 204, column: 7, scope: !431)
!738 = !DILocation(line: 204, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !87, line: 204, column: 9)
!740 = distinct !DILexicalBlock(scope: !735, file: !87, line: 204, column: 35)
!741 = !DILocation(line: 204, column: 31, scope: !739)
!742 = !DILocation(line: 204, column: 9, scope: !740)
!743 = !DILocation(line: 205, column: 30, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !87, line: 204, column: 37)
!745 = !DILocation(line: 205, column: 49, scope: !744)
!746 = !DILocation(line: 205, column: 22, scope: !744)
!747 = !DILocation(line: 206, column: 13, scope: !744)
!748 = !DILocation(line: 207, column: 5, scope: !744)
!749 = !DILocation(line: 208, column: 3, scope: !740)
!750 = !DILocation(line: 209, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !431, file: !87, line: 209, column: 7)
!752 = !DILocation(line: 209, column: 27, scope: !751)
!753 = !DILocation(line: 209, column: 7, scope: !431)
!754 = !DILocation(line: 210, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !87, line: 209, column: 59)
!756 = !DILocation(line: 211, column: 3, scope: !755)
!757 = !DILocation(line: 216, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !431, file: !87, line: 216, column: 7)
!759 = !DILocation(line: 216, column: 26, scope: !758)
!760 = !DILocation(line: 216, column: 7, scope: !431)
!761 = !DILocation(line: 217, column: 9, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !87, line: 217, column: 9)
!763 = distinct !DILexicalBlock(scope: !758, file: !87, line: 216, column: 31)
!764 = !DILocation(line: 217, column: 28, scope: !762)
!765 = !DILocation(line: 217, column: 9, scope: !763)
!766 = !DILocation(line: 218, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !87, line: 220, column: 7)
!768 = distinct !DILexicalBlock(scope: !769, file: !87, line: 219, column: 7)
!769 = distinct !DILexicalBlock(scope: !762, file: !87, line: 217, column: 33)
!770 = !DILocation(line: 0, scope: !769)
!771 = !DILocation(line: 218, column: 17, scope: !767)
!772 = !DILocation(line: 218, column: 18, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !87, line: 218, column: 13)
!774 = distinct !DILexicalBlock(scope: !767, file: !87, line: 218, column: 17)
!775 = !DILocation(line: 218, column: 13, scope: !774)
!776 = !DILocation(line: 218, column: 11, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !87, line: 218, column: 25)
!778 = !DILocation(line: 219, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !87, line: 221, column: 9)
!780 = distinct !DILexicalBlock(scope: !774, file: !87, line: 220, column: 9)
!781 = !DILocation(line: 220, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !87, line: 221, column: 9)
!783 = !DILocation(line: 218, column: 11, scope: !780)
!784 = distinct !{!784, !766, !785}
!785 = !DILocation(line: 220, column: 7, scope: !767)
!786 = !DILocation(line: 222, column: 7, scope: !767)
!787 = !DILocation(line: 223, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !87, line: 226, column: 7)
!789 = distinct !DILexicalBlock(scope: !769, file: !87, line: 225, column: 7)
!790 = !DILocation(line: 226, column: 5, scope: !769)
!791 = !DILocation(line: 225, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !87, line: 228, column: 7)
!793 = distinct !DILexicalBlock(scope: !794, file: !87, line: 227, column: 7)
!794 = distinct !DILexicalBlock(scope: !762, file: !87, line: 226, column: 12)
!795 = !DILocation(line: 225, column: 7, scope: !792)
!796 = !DILocation(line: 226, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !87, line: 227, column: 7)
!798 = !DILocation(line: 231, column: 3, scope: !763)
!799 = !DILocation(line: 228, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !758, file: !87, line: 228, column: 7)
!801 = !DILocation(line: 228, column: 26, scope: !800)
!802 = !DILocation(line: 228, column: 7, scope: !758)
!803 = !DILocation(line: 231, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !87, line: 231, column: 9)
!805 = distinct !DILexicalBlock(scope: !800, file: !87, line: 228, column: 31)
!806 = !DILocation(line: 231, column: 48, scope: !804)
!807 = !DILocation(line: 231, column: 32, scope: !804)
!808 = !DILocation(line: 231, column: 29, scope: !804)
!809 = !DILocation(line: 231, column: 9, scope: !805)
!810 = !DILocation(line: 233, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !87, line: 233, column: 7)
!812 = distinct !DILexicalBlock(scope: !813, file: !87, line: 232, column: 7)
!813 = distinct !DILexicalBlock(scope: !804, file: !87, line: 231, column: 55)
!814 = !DILocation(line: 235, column: 11, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !87, line: 235, column: 11)
!816 = !DILocation(line: 235, column: 31, scope: !815)
!817 = !DILocation(line: 235, column: 11, scope: !813)
!818 = !DILocation(line: 236, column: 42, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !87, line: 237, column: 9)
!820 = distinct !DILexicalBlock(scope: !821, file: !87, line: 236, column: 9)
!821 = distinct !DILexicalBlock(scope: !815, file: !87, line: 235, column: 63)
!822 = !DILocation(line: 236, column: 9, scope: !819)
!823 = !DILocation(line: 237, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !87, line: 238, column: 9)
!825 = !DILocation(line: 240, column: 17, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !87, line: 242, column: 7)
!827 = distinct !DILexicalBlock(scope: !813, file: !87, line: 241, column: 7)
!828 = !DILocalVariable(name: "tmp___5", scope: !345, file: !87, line: 70, type: !11)
!829 = !DILocation(line: 241, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !813, file: !87, line: 241, column: 11)
!831 = !DILocation(line: 241, column: 31, scope: !830)
!832 = !DILocation(line: 241, column: 11, scope: !813)
!833 = !DILocation(line: 242, column: 42, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !87, line: 243, column: 9)
!835 = distinct !DILexicalBlock(scope: !836, file: !87, line: 242, column: 9)
!836 = distinct !DILexicalBlock(scope: !830, file: !87, line: 241, column: 63)
!837 = !DILocation(line: 242, column: 9, scope: !834)
!838 = !DILocation(line: 243, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !87, line: 244, column: 9)
!840 = !DILocation(line: 246, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !87, line: 248, column: 7)
!842 = distinct !DILexicalBlock(scope: !813, file: !87, line: 247, column: 7)
!843 = !DILocation(line: 246, column: 17, scope: !841)
!844 = !DILocation(line: 246, column: 24, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !87, line: 250, column: 9)
!846 = distinct !DILexicalBlock(scope: !847, file: !87, line: 249, column: 9)
!847 = distinct !DILexicalBlock(scope: !841, file: !87, line: 246, column: 17)
!848 = !DILocation(line: 246, column: 19, scope: !845)
!849 = !DILocalVariable(name: "tmp___8", scope: !345, file: !87, line: 73, type: !9)
!850 = !DILocation(line: 246, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !87, line: 246, column: 13)
!852 = !DILocation(line: 246, column: 13, scope: !847)
!853 = !DILocation(line: 246, column: 11, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !87, line: 246, column: 22)
!855 = !DILocation(line: 247, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !87, line: 249, column: 9)
!857 = distinct !DILexicalBlock(scope: !847, file: !87, line: 248, column: 9)
!858 = !DILocation(line: 248, column: 9, scope: !857)
!859 = !DILocation(line: 248, column: 18, scope: !857)
!860 = !DILocation(line: 250, column: 41, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !87, line: 249, column: 9)
!862 = !DILocation(line: 250, column: 9, scope: !861)
!863 = !DILocation(line: 251, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !857, file: !87, line: 253, column: 9)
!865 = !DILocation(line: 253, column: 24, scope: !866)
!866 = distinct !DILexicalBlock(scope: !857, file: !87, line: 254, column: 9)
!867 = !DILocation(line: 253, column: 19, scope: !866)
!868 = !DILocalVariable(name: "tmp___6", scope: !345, file: !87, line: 71, type: !9)
!869 = !DILocation(line: 253, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !847, file: !87, line: 253, column: 13)
!871 = !DILocation(line: 253, column: 13, scope: !847)
!872 = !DILocation(line: 253, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !87, line: 253, column: 22)
!874 = !DILocation(line: 255, column: 25, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !87, line: 256, column: 9)
!876 = distinct !DILexicalBlock(scope: !847, file: !87, line: 255, column: 9)
!877 = !DILocation(line: 255, column: 19, scope: !875)
!878 = !DILocalVariable(name: "tmp___7", scope: !345, file: !87, line: 72, type: !9)
!879 = !DILocation(line: 255, column: 20, scope: !876)
!880 = !DILocation(line: 255, column: 9, scope: !876)
!881 = !DILocation(line: 255, column: 18, scope: !876)
!882 = !DILocation(line: 257, column: 17, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !87, line: 256, column: 9)
!884 = !DILocation(line: 256, column: 9, scope: !883)
!885 = distinct !{!885, !840, !886}
!886 = !DILocation(line: 260, column: 7, scope: !841)
!887 = !DILocation(line: 262, column: 7, scope: !841)
!888 = !DILocation(line: 258, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !87, line: 266, column: 7)
!890 = distinct !DILexicalBlock(scope: !813, file: !87, line: 265, column: 7)
!891 = !DILocation(line: 261, column: 5, scope: !813)
!892 = !DILocation(line: 261, column: 15, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !87, line: 263, column: 5)
!894 = distinct !DILexicalBlock(scope: !805, file: !87, line: 262, column: 5)
!895 = !DILocalVariable(name: "tmp___9", scope: !345, file: !87, line: 74, type: !11)
!896 = !DILocation(line: 262, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !805, file: !87, line: 262, column: 9)
!898 = !DILocation(line: 262, column: 29, scope: !897)
!899 = !DILocation(line: 262, column: 9, scope: !805)
!900 = !DILocation(line: 263, column: 40, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !87, line: 264, column: 7)
!902 = distinct !DILexicalBlock(scope: !903, file: !87, line: 263, column: 7)
!903 = distinct !DILexicalBlock(scope: !897, file: !87, line: 262, column: 61)
!904 = !DILocation(line: 263, column: 7, scope: !901)
!905 = !DILocation(line: 264, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !87, line: 265, column: 7)
!907 = !DILocation(line: 267, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !87, line: 269, column: 5)
!909 = distinct !DILexicalBlock(scope: !805, file: !87, line: 268, column: 5)
!910 = !DILocation(line: 0, scope: !805)
!911 = !DILocation(line: 267, column: 15, scope: !908)
!912 = !DILocation(line: 267, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !87, line: 267, column: 11)
!914 = distinct !DILexicalBlock(scope: !908, file: !87, line: 267, column: 15)
!915 = !DILocation(line: 267, column: 11, scope: !914)
!916 = !DILocation(line: 267, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !87, line: 267, column: 23)
!918 = !DILocation(line: 268, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !87, line: 270, column: 7)
!920 = distinct !DILexicalBlock(scope: !914, file: !87, line: 269, column: 7)
!921 = !DILocation(line: 270, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !87, line: 273, column: 7)
!923 = distinct !DILexicalBlock(scope: !914, file: !87, line: 272, column: 7)
!924 = !DILocation(line: 270, column: 17, scope: !922)
!925 = !DILocation(line: 270, column: 20, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !87, line: 274, column: 9)
!927 = distinct !DILexicalBlock(scope: !928, file: !87, line: 273, column: 9)
!928 = distinct !DILexicalBlock(scope: !922, file: !87, line: 270, column: 17)
!929 = !DILocalVariable(name: "tmp___12", scope: !345, file: !87, line: 77, type: !9)
!930 = !DILocation(line: 270, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !87, line: 270, column: 13)
!932 = !DILocation(line: 270, column: 13, scope: !928)
!933 = !DILocation(line: 270, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !87, line: 270, column: 23)
!935 = !DILocation(line: 271, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !87, line: 273, column: 9)
!937 = distinct !DILexicalBlock(scope: !928, file: !87, line: 272, column: 9)
!938 = !DILocation(line: 272, column: 9, scope: !937)
!939 = !DILocation(line: 272, column: 18, scope: !937)
!940 = !DILocation(line: 274, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !87, line: 273, column: 9)
!942 = !DILocation(line: 275, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !937, file: !87, line: 277, column: 9)
!944 = !DILocation(line: 276, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !87, line: 277, column: 9)
!946 = !DILocation(line: 278, column: 20, scope: !947)
!947 = distinct !DILexicalBlock(scope: !937, file: !87, line: 279, column: 9)
!948 = !DILocalVariable(name: "tmp___10", scope: !345, file: !87, line: 75, type: !9)
!949 = !DILocation(line: 278, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !928, file: !87, line: 278, column: 13)
!951 = !DILocation(line: 278, column: 13, scope: !928)
!952 = !DILocation(line: 278, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !87, line: 278, column: 23)
!954 = !DILocation(line: 280, column: 20, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !87, line: 281, column: 9)
!956 = distinct !DILexicalBlock(scope: !928, file: !87, line: 280, column: 9)
!957 = !DILocalVariable(name: "tmp___11", scope: !345, file: !87, line: 76, type: !9)
!958 = !DILocation(line: 280, column: 20, scope: !956)
!959 = !DILocation(line: 280, column: 9, scope: !956)
!960 = !DILocation(line: 280, column: 18, scope: !956)
!961 = !DILocation(line: 281, column: 19, scope: !962)
!962 = distinct !DILexicalBlock(scope: !956, file: !87, line: 281, column: 9)
!963 = !DILocation(line: 281, column: 9, scope: !962)
!964 = !DILocation(line: 283, column: 17, scope: !965)
!965 = distinct !DILexicalBlock(scope: !956, file: !87, line: 283, column: 9)
!966 = !DILocation(line: 282, column: 9, scope: !965)
!967 = distinct !{!967, !921, !968}
!968 = !DILocation(line: 286, column: 7, scope: !922)
!969 = !DILocation(line: 288, column: 7, scope: !922)
!970 = !DILocation(line: 284, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !87, line: 292, column: 7)
!972 = distinct !DILexicalBlock(scope: !914, file: !87, line: 291, column: 7)
!973 = !DILocation(line: 267, column: 9, scope: !972)
!974 = distinct !{!974, !907, !975}
!975 = !DILocation(line: 269, column: 5, scope: !908)
!976 = !DILocation(line: 271, column: 5, scope: !908)
!977 = !DILocation(line: 286, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !87, line: 275, column: 5)
!979 = distinct !DILexicalBlock(scope: !805, file: !87, line: 274, column: 5)
!980 = !DILocation(line: 289, column: 3, scope: !805)
!981 = !DILocation(line: 288, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !87, line: 291, column: 5)
!983 = distinct !DILexicalBlock(scope: !984, file: !87, line: 290, column: 5)
!984 = distinct !DILexicalBlock(scope: !800, file: !87, line: 289, column: 10)
!985 = !DILocalVariable(name: "tmp___13", scope: !345, file: !87, line: 78, type: !11)
!986 = !DILocation(line: 289, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !87, line: 289, column: 9)
!988 = !DILocation(line: 289, column: 29, scope: !987)
!989 = !DILocation(line: 289, column: 9, scope: !984)
!990 = !DILocation(line: 290, column: 40, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !87, line: 291, column: 7)
!992 = distinct !DILexicalBlock(scope: !993, file: !87, line: 290, column: 7)
!993 = distinct !DILexicalBlock(scope: !987, file: !87, line: 289, column: 61)
!994 = !DILocation(line: 290, column: 7, scope: !991)
!995 = !DILocation(line: 291, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !87, line: 292, column: 7)
!997 = !DILocation(line: 294, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !87, line: 296, column: 5)
!999 = distinct !DILexicalBlock(scope: !984, file: !87, line: 295, column: 5)
!1000 = !DILocation(line: 294, column: 15, scope: !998)
!1001 = !DILocation(line: 294, column: 18, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !87, line: 298, column: 7)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !87, line: 297, column: 7)
!1004 = distinct !DILexicalBlock(scope: !998, file: !87, line: 294, column: 15)
!1005 = !DILocalVariable(name: "tmp___16", scope: !345, file: !87, line: 81, type: !9)
!1006 = !DILocation(line: 294, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !87, line: 294, column: 11)
!1008 = !DILocation(line: 294, column: 11, scope: !1004)
!1009 = !DILocation(line: 294, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !87, line: 294, column: 21)
!1011 = !DILocation(line: 295, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !87, line: 297, column: 7)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !87, line: 296, column: 7)
!1014 = !DILocation(line: 296, column: 7, scope: !1013)
!1015 = !DILocation(line: 296, column: 16, scope: !1013)
!1016 = !DILocation(line: 298, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !87, line: 297, column: 7)
!1018 = !DILocation(line: 299, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !87, line: 301, column: 7)
!1020 = !DILocation(line: 299, column: 7, scope: !1019)
!1021 = !DILocation(line: 300, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !87, line: 301, column: 7)
!1023 = !DILocation(line: 302, column: 18, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !87, line: 303, column: 7)
!1025 = !DILocalVariable(name: "tmp___14", scope: !345, file: !87, line: 79, type: !9)
!1026 = !DILocation(line: 302, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1004, file: !87, line: 302, column: 11)
!1028 = !DILocation(line: 302, column: 11, scope: !1004)
!1029 = !DILocation(line: 302, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !87, line: 302, column: 21)
!1031 = !DILocation(line: 304, column: 18, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 305, column: 7)
!1033 = distinct !DILexicalBlock(scope: !1004, file: !87, line: 304, column: 7)
!1034 = !DILocalVariable(name: "tmp___15", scope: !345, file: !87, line: 80, type: !9)
!1035 = !DILocation(line: 304, column: 18, scope: !1033)
!1036 = !DILocation(line: 304, column: 7, scope: !1033)
!1037 = !DILocation(line: 304, column: 16, scope: !1033)
!1038 = !DILocation(line: 305, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 305, column: 7)
!1040 = !DILocation(line: 305, column: 21, scope: !1039)
!1041 = !DILocation(line: 305, column: 7, scope: !1039)
!1042 = !DILocation(line: 307, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1033, file: !87, line: 307, column: 7)
!1044 = !DILocation(line: 306, column: 7, scope: !1043)
!1045 = distinct !{!1045, !997, !1046}
!1046 = !DILocation(line: 310, column: 5, scope: !998)
!1047 = !DILocation(line: 312, column: 5, scope: !998)
!1048 = !DILocation(line: 309, column: 5, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !87, line: 316, column: 5)
!1050 = distinct !DILexicalBlock(scope: !984, file: !87, line: 315, column: 5)
!1051 = !DILocation(line: 312, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !87, line: 314, column: 3)
!1053 = distinct !DILexicalBlock(scope: !431, file: !87, line: 313, column: 3)
!1054 = !DILocation(line: 314, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !431, file: !87, line: 314, column: 7)
!1056 = !DILocation(line: 314, column: 26, scope: !1055)
!1057 = !DILocation(line: 314, column: 7, scope: !431)
!1058 = !DILocation(line: 315, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !87, line: 316, column: 5)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !87, line: 315, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !87, line: 314, column: 31)
!1062 = !DILocation(line: 318, column: 3, scope: !1061)
!1063 = !DILocation(line: 318, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !431, file: !87, line: 318, column: 7)
!1065 = !DILocation(line: 318, column: 26, scope: !1064)
!1066 = !DILocation(line: 318, column: 7, scope: !431)
!1067 = !DILocation(line: 319, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !87, line: 320, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !87, line: 319, column: 5)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !87, line: 318, column: 31)
!1071 = !DILocation(line: 322, column: 3, scope: !1070)
!1072 = !DILocation(line: 322, column: 3, scope: !431)
