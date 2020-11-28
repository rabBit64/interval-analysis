; ModuleID = '/tmp/tmp.ll'
source_filename = "c/dtmfdial-0.2+1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@output = global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@bits = global i32 8, align 4, !dbg !80
@speed = global i32 8000, align 4, !dbg !83
@tone_time = global i32 100, align 4, !dbg !85
@silent_time = global i32 50, align 4, !dbg !87
@sleep_time = global i32 500, align 4, !dbg !89
@volume = global i32 100, align 4, !dbg !91
@format = global i32 8, align 4, !dbg !93
@use_audio = global i32 1, align 4, !dbg !95
@bufsize = global i32 4096, align 4, !dbg !97
@tabsize = global i32 256, align 4, !dbg !99
@dialed = global i32 0, align 4, !dbg !101
@right = global i32 0, align 4, !dbg !103
@left = global i32 0, align 4, !dbg !105
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [430 x i8] c"usage: dial [options] number ...\0A Valid options with their default values are:\0A   Duration options:\0A     --tone-time   100\0A     --silent-time 50\0A     --sleep-time  500\0A   Audio output  options:\0A     --output-dev  /dev/dsp\0A     --use-audio   1\0A     --bufsize     4096\0A     --speed       8000\0A     --bits        8\0A   Audio generation options:\0A     --table-size  256\0A     --volume      100\0A     --left        0\0A     --right       0\0A\00", align 1
@fd = common global i32 0, align 4, !dbg !113
@.str.2 = private unnamed_addr constant [27 x i8] c"ioctl(SNDCTL_DSP_CHANNELS)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ioctl(SNDCTL_DSP_SPEED)\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Your sound card does not support the requested speed\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Setting speed to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Value for %s should be in the range %d..%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"--table-size\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--tone-time\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"--sleep-time\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"--silent-time\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"--volume\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"--speed\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"--bits\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"--bufsize\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"--use-audio\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"--right\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"--left\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--output-dev\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Value for bits should be 8 or 16\0A\00", align 1
@buf = common global i8* null, align 8, !dbg !107
@.str.21 = private unnamed_addr constant [11 x i8] c"malloc buf\00", align 1
@bufidx = common global i32 0, align 4, !dbg !109
@costab = common global i16* null, align 8, !dbg !111
@.str.22 = private unnamed_addr constant [14 x i8] c"malloc costab\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @Usage() #0 !dbg !121 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !126
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([430 x i8], [430 x i8]* @.str.1, i32 0, i32 0)), !dbg !130
  %call1 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !131
  unreachable, !dbg !131

return:                                           ; No predecessors!
  ret void, !dbg !133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare i32 @exit(...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @initialize_audiodev() #0 !dbg !134 {
entry:
  %speed_local = alloca i32, align 4
  %channels = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %speed_local, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %channels, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata !4, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata !4, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata !4, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata !4, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata !4, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i32, i32* @speed, align 4, !dbg !149
  store i32 %0, i32* %speed_local, align 4, !dbg !151
  store i32 1, i32* %channels, align 4, !dbg !152
  %1 = load i32, i32* @use_audio, align 4, !dbg !153
  %tobool = icmp ne i32 %1, 0, !dbg !153
  br i1 %tobool, label %if.end, label %if.then, !dbg !155

if.then:                                          ; preds = %entry
  br label %return, !dbg !156

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @right, align 4, !dbg !158
  %tobool1 = icmp ne i32 %2, 0, !dbg !158
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !160

if.then2:                                         ; preds = %if.end
  store i32 2, i32* %channels, align 4, !dbg !161
  br label %if.end6, !dbg !163

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* @left, align 4, !dbg !164
  %tobool3 = icmp ne i32 %3, 0, !dbg !164
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !158

if.then4:                                         ; preds = %if.else
  store i32 2, i32* %channels, align 4, !dbg !166
  br label %if.end5, !dbg !168

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %4 = load i32, i32* @fd, align 4, !dbg !169
  %call = call i32 (i32, i64, i32*, ...) bitcast (i32 (...)* @ioctl to i32 (i32, i64, i32*, ...)*)(i32 %4, i64 3221508102, i32* %channels), !dbg !172
  call void @llvm.dbg.value(metadata i32 %call, metadata !173, metadata !DIExpression()), !dbg !174
  %tobool7 = icmp ne i32 %call, 0, !dbg !175
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !177

if.then8:                                         ; preds = %if.end6
  call void @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)), !dbg !178
  %call9 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !182
  unreachable, !dbg !182

if.end10:                                         ; preds = %if.end6
  %5 = load i32, i32* @fd, align 4, !dbg !184
  %call11 = call i32 (i32, i64, i32*, ...) bitcast (i32 (...)* @ioctl to i32 (i32, i64, i32*, ...)*)(i32 %5, i64 3221508101, i32* @format), !dbg !187
  call void @llvm.dbg.value(metadata i32 %call11, metadata !188, metadata !DIExpression()), !dbg !174
  %tobool12 = icmp ne i32 %call11, 0, !dbg !189
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !191

if.then13:                                        ; preds = %if.end10
  call void @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !192
  %call14 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !196
  unreachable, !dbg !196

if.end15:                                         ; preds = %if.end10
  %6 = load i32, i32* @fd, align 4, !dbg !198
  %call16 = call i32 (i32, i64, i32*, ...) bitcast (i32 (...)* @ioctl to i32 (i32, i64, i32*, ...)*)(i32 %6, i64 3221508098, i32* %speed_local), !dbg !201
  call void @llvm.dbg.value(metadata i32 %call16, metadata !202, metadata !DIExpression()), !dbg !174
  %tobool17 = icmp ne i32 %call16, 0, !dbg !203
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !205

if.then18:                                        ; preds = %if.end15
  call void @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !206
  %call19 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !210
  unreachable, !dbg !210

if.end20:                                         ; preds = %if.end15
  %7 = load i32, i32* %speed_local, align 4, !dbg !212
  %8 = load i32, i32* @speed, align 4, !dbg !213
  %sub = sub nsw i32 %7, %8, !dbg !214
  call void @llvm.dbg.value(metadata i32 %sub, metadata !215, metadata !DIExpression()), !dbg !174
  %cmp = icmp slt i32 %sub, 0, !dbg !216
  br i1 %cmp, label %if.then21, label %if.end23, !dbg !218

if.then21:                                        ; preds = %if.end20
  %sub22 = sub nsw i32 0, %sub, !dbg !219
  call void @llvm.dbg.value(metadata i32 %sub22, metadata !215, metadata !DIExpression()), !dbg !174
  br label %if.end23, !dbg !221

if.end23:                                         ; preds = %if.then21, %if.end20
  %diff.0 = phi i32 [ %sub22, %if.then21 ], [ %sub, %if.end20 ], !dbg !222
  call void @llvm.dbg.value(metadata i32 %diff.0, metadata !215, metadata !DIExpression()), !dbg !174
  %cmp24 = icmp sgt i32 %diff.0, 500, !dbg !223
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !225

if.then25:                                        ; preds = %if.end23
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !226
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0)), !dbg !230
  %call27 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !231
  unreachable, !dbg !231

if.end28:                                         ; preds = %if.end23
  %cmp29 = icmp ne i32 %diff.0, 0, !dbg !233
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !235

if.then30:                                        ; preds = %if.end28
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !236
  %11 = load i32, i32* %speed_local, align 4, !dbg !240
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %11), !dbg !241
  br label %if.end32, !dbg !242

if.end32:                                         ; preds = %if.then30, %if.end28
  %12 = load i32, i32* %speed_local, align 4, !dbg !243
  store i32 %12, i32* @speed, align 4, !dbg !244
  br label %return, !dbg !245

return:                                           ; preds = %if.end32, %if.then
  ret void, !dbg !246
}

declare i32 @ioctl(...) #2

declare void @perror(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @getvalue(i32* %arg, i32* %index, i32 %argc, i8** %argv, i32 %min, i32 %max) #0 !dbg !247 {
entry:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32* %index, metadata !254, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %argc, metadata !255, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i8** %argv, metadata !256, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %min, metadata !257, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %max, metadata !258, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata !4, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata !4, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i32, i32* %index, align 4, !dbg !263
  %sub = sub nsw i32 %argc, 1, !dbg !266
  %cmp = icmp sge i32 %0, %sub, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  call void @Usage(), !dbg !269
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %index, align 4, !dbg !274
  %add = add nsw i32 1, %1, !dbg !277
  %idx.ext = sext i32 %add to i64, !dbg !278
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !278
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !279
  %call = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %2), !dbg !280
  store i32 %call, i32* %arg, align 4, !dbg !281
  %3 = load i32, i32* %arg, align 4, !dbg !282
  %cmp1 = icmp slt i32 %3, %min, !dbg !284
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !285

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !286
  %5 = load i32, i32* %index, align 4, !dbg !290
  %idx.ext3 = sext i32 %5 to i64, !dbg !291
  %add.ptr4 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext3, !dbg !291
  %6 = load i8*, i8** %add.ptr4, align 8, !dbg !292
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !293
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* %add.ptr5, i32 %min, i32 %max), !dbg !294
  %call7 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !295
  unreachable, !dbg !295

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %arg, align 4, !dbg !297
  %cmp8 = icmp sgt i32 %7, %max, !dbg !299
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !282

if.then9:                                         ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !300
  %9 = load i32, i32* %index, align 4, !dbg !304
  %idx.ext10 = sext i32 %9 to i64, !dbg !305
  %add.ptr11 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext10, !dbg !305
  %10 = load i8*, i8** %add.ptr11, align 8, !dbg !306
  %add.ptr12 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !307
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* %add.ptr12, i32 %min, i32 %max), !dbg !308
  %call14 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !309
  unreachable, !dbg !309

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %11 = load i32, i32* %index, align 4, !dbg !311
  %inc = add nsw i32 %11, 1, !dbg !311
  store i32 %inc, i32* %index, align 4, !dbg !311
  ret void, !dbg !312
}

declare i32 @atoi(...) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @main(i32 %argc, i8** %argv) #0 !dbg !313 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8** %argv, metadata !318, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %i, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata !4, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata !4, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata !4, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata !4, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata !4, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata !4, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata !4, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata !4, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata !4, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata !4, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata !4, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata !4, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata !4, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata !4, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata !4, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata !4, metadata !351, metadata !DIExpression()), !dbg !352
  store i32 1, i32* %i, align 4, !dbg !353
  br label %while.body, !dbg !355

while.body:                                       ; preds = %if.end108, %entry
  br label %while_continue___2, !dbg !358

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !358

while_continue:                                   ; preds = %while_continue___2
  %0 = load i32, i32* %i, align 4, !dbg !359
  %cmp = icmp slt i32 %0, %argc, !dbg !362
  br i1 %cmp, label %if.end, label %if.then, !dbg !363

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !364

if.end:                                           ; preds = %while_continue
  %1 = load i32, i32* %i, align 4, !dbg !366
  %idx.ext = sext i32 %1 to i64, !dbg !368
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !368
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !369
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !370
  %3 = load i8, i8* %add.ptr1, align 1, !dbg !371
  %conv = sext i8 %3 to i32, !dbg !372
  %cmp2 = icmp ne i32 %conv, 45, !dbg !373
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !374

if.then4:                                         ; preds = %if.end
  br label %while_break, !dbg !375

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !377
  %idx.ext5 = sext i32 %4 to i64, !dbg !379
  %add.ptr6 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext5, !dbg !379
  %5 = load i8*, i8** %add.ptr6, align 8, !dbg !380
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !381
  %6 = load i8, i8* %add.ptr7, align 1, !dbg !382
  %conv8 = sext i8 %6 to i32, !dbg !383
  %cmp9 = icmp ne i32 %conv8, 45, !dbg !384
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !372

if.then11:                                        ; preds = %if.else
  br label %while_break, !dbg !385

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  %7 = load i32, i32* %i, align 4, !dbg !387
  %idx.ext14 = sext i32 %7 to i64, !dbg !390
  %add.ptr15 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext14, !dbg !390
  %8 = load i8*, i8** %add.ptr15, align 8, !dbg !391
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !392
  call void @llvm.dbg.value(metadata i32 %call, metadata !393, metadata !DIExpression()), !dbg !317
  %tobool = icmp ne i32 %call, 0, !dbg !394
  br i1 %tobool, label %if.then16, label %if.else107, !dbg !396

if.then16:                                        ; preds = %if.end13
  %9 = load i32, i32* %i, align 4, !dbg !397
  %idx.ext17 = sext i32 %9 to i64, !dbg !401
  %add.ptr18 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext17, !dbg !401
  %10 = load i8*, i8** %add.ptr18, align 8, !dbg !402
  %call19 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !403
  call void @llvm.dbg.value(metadata i32 %call19, metadata !404, metadata !DIExpression()), !dbg !317
  %tobool20 = icmp ne i32 %call19, 0, !dbg !405
  br i1 %tobool20, label %if.then21, label %if.else105, !dbg !407

if.then21:                                        ; preds = %if.then16
  %11 = load i32, i32* %i, align 4, !dbg !408
  %idx.ext22 = sext i32 %11 to i64, !dbg !412
  %add.ptr23 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext22, !dbg !412
  %12 = load i8*, i8** %add.ptr23, align 8, !dbg !413
  %call24 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !414
  call void @llvm.dbg.value(metadata i32 %call24, metadata !415, metadata !DIExpression()), !dbg !317
  %tobool25 = icmp ne i32 %call24, 0, !dbg !416
  br i1 %tobool25, label %if.then26, label %if.else103, !dbg !418

if.then26:                                        ; preds = %if.then21
  %13 = load i32, i32* %i, align 4, !dbg !419
  %idx.ext27 = sext i32 %13 to i64, !dbg !423
  %add.ptr28 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext27, !dbg !423
  %14 = load i8*, i8** %add.ptr28, align 8, !dbg !424
  %call29 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)), !dbg !425
  call void @llvm.dbg.value(metadata i32 %call29, metadata !426, metadata !DIExpression()), !dbg !317
  %tobool30 = icmp ne i32 %call29, 0, !dbg !427
  br i1 %tobool30, label %if.then31, label %if.else101, !dbg !429

if.then31:                                        ; preds = %if.then26
  %15 = load i32, i32* %i, align 4, !dbg !430
  %idx.ext32 = sext i32 %15 to i64, !dbg !434
  %add.ptr33 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext32, !dbg !434
  %16 = load i8*, i8** %add.ptr33, align 8, !dbg !435
  %call34 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !436
  call void @llvm.dbg.value(metadata i32 %call34, metadata !437, metadata !DIExpression()), !dbg !317
  %tobool35 = icmp ne i32 %call34, 0, !dbg !438
  br i1 %tobool35, label %if.then36, label %if.else99, !dbg !440

if.then36:                                        ; preds = %if.then31
  %17 = load i32, i32* %i, align 4, !dbg !441
  %idx.ext37 = sext i32 %17 to i64, !dbg !445
  %add.ptr38 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext37, !dbg !445
  %18 = load i8*, i8** %add.ptr38, align 8, !dbg !446
  %call39 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !447
  call void @llvm.dbg.value(metadata i32 %call39, metadata !448, metadata !DIExpression()), !dbg !317
  %tobool40 = icmp ne i32 %call39, 0, !dbg !449
  br i1 %tobool40, label %if.then41, label %if.else97, !dbg !451

if.then41:                                        ; preds = %if.then36
  %19 = load i32, i32* %i, align 4, !dbg !452
  %idx.ext42 = sext i32 %19 to i64, !dbg !456
  %add.ptr43 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext42, !dbg !456
  %20 = load i8*, i8** %add.ptr43, align 8, !dbg !457
  %call44 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !458
  call void @llvm.dbg.value(metadata i32 %call44, metadata !459, metadata !DIExpression()), !dbg !317
  %tobool45 = icmp ne i32 %call44, 0, !dbg !460
  br i1 %tobool45, label %if.then46, label %if.else95, !dbg !462

if.then46:                                        ; preds = %if.then41
  %21 = load i32, i32* %i, align 4, !dbg !463
  %idx.ext47 = sext i32 %21 to i64, !dbg !467
  %add.ptr48 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext47, !dbg !467
  %22 = load i8*, i8** %add.ptr48, align 8, !dbg !468
  %call49 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !469
  call void @llvm.dbg.value(metadata i32 %call49, metadata !470, metadata !DIExpression()), !dbg !317
  %tobool50 = icmp ne i32 %call49, 0, !dbg !471
  br i1 %tobool50, label %if.then51, label %if.else93, !dbg !473

if.then51:                                        ; preds = %if.then46
  %23 = load i32, i32* %i, align 4, !dbg !474
  %idx.ext52 = sext i32 %23 to i64, !dbg !478
  %add.ptr53 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext52, !dbg !478
  %24 = load i8*, i8** %add.ptr53, align 8, !dbg !479
  %call54 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)), !dbg !480
  call void @llvm.dbg.value(metadata i32 %call54, metadata !481, metadata !DIExpression()), !dbg !317
  %tobool55 = icmp ne i32 %call54, 0, !dbg !482
  br i1 %tobool55, label %if.then56, label %if.else91, !dbg !484

if.then56:                                        ; preds = %if.then51
  %25 = load i32, i32* %i, align 4, !dbg !485
  %idx.ext57 = sext i32 %25 to i64, !dbg !489
  %add.ptr58 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext57, !dbg !489
  %26 = load i8*, i8** %add.ptr58, align 8, !dbg !490
  %call59 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !491
  call void @llvm.dbg.value(metadata i32 %call59, metadata !492, metadata !DIExpression()), !dbg !317
  %tobool60 = icmp ne i32 %call59, 0, !dbg !493
  br i1 %tobool60, label %if.then61, label %if.else89, !dbg !495

if.then61:                                        ; preds = %if.then56
  %27 = load i32, i32* %i, align 4, !dbg !496
  %idx.ext62 = sext i32 %27 to i64, !dbg !500
  %add.ptr63 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext62, !dbg !500
  %28 = load i8*, i8** %add.ptr63, align 8, !dbg !501
  %call64 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)), !dbg !502
  call void @llvm.dbg.value(metadata i32 %call64, metadata !503, metadata !DIExpression()), !dbg !317
  %tobool65 = icmp ne i32 %call64, 0, !dbg !504
  br i1 %tobool65, label %if.then66, label %if.else87, !dbg !506

if.then66:                                        ; preds = %if.then61
  %29 = load i32, i32* %i, align 4, !dbg !507
  %idx.ext67 = sext i32 %29 to i64, !dbg !511
  %add.ptr68 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext67, !dbg !511
  %30 = load i8*, i8** %add.ptr68, align 8, !dbg !512
  %call69 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !513
  call void @llvm.dbg.value(metadata i32 %call69, metadata !514, metadata !DIExpression()), !dbg !317
  %tobool70 = icmp ne i32 %call69, 0, !dbg !515
  br i1 %tobool70, label %if.then71, label %if.else85, !dbg !517

if.then71:                                        ; preds = %if.then66
  %31 = load i32, i32* %i, align 4, !dbg !518
  %idx.ext72 = sext i32 %31 to i64, !dbg !522
  %add.ptr73 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext72, !dbg !522
  %32 = load i8*, i8** %add.ptr73, align 8, !dbg !523
  %call74 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !524
  call void @llvm.dbg.value(metadata i32 %call74, metadata !525, metadata !DIExpression()), !dbg !317
  %tobool75 = icmp ne i32 %call74, 0, !dbg !526
  br i1 %tobool75, label %if.then76, label %if.else77, !dbg !528

if.then76:                                        ; preds = %if.then71
  call void @Usage(), !dbg !529
  br label %if.end84, !dbg !533

if.else77:                                        ; preds = %if.then71
  %33 = load i32, i32* %i, align 4, !dbg !534
  %inc = add nsw i32 %33, 1, !dbg !534
  store i32 %inc, i32* %i, align 4, !dbg !534
  %34 = load i32, i32* %i, align 4, !dbg !536
  %cmp78 = icmp sge i32 %34, %argc, !dbg !538
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !539

if.then80:                                        ; preds = %if.else77
  call void @Usage(), !dbg !540
  br label %if.end81, !dbg !544

if.end81:                                         ; preds = %if.then80, %if.else77
  %35 = load i32, i32* %i, align 4, !dbg !545
  %idx.ext82 = sext i32 %35 to i64, !dbg !546
  %add.ptr83 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext82, !dbg !546
  %36 = load i8*, i8** %add.ptr83, align 8, !dbg !547
  store i8* %36, i8** @output, align 8, !dbg !548
  br label %if.end84

if.end84:                                         ; preds = %if.end81, %if.then76
  br label %if.end86, !dbg !549

if.else85:                                        ; preds = %if.then66
  call void @getvalue(i32* @left, i32* %i, i32 %argc, i8** %argv, i32 0, i32 1), !dbg !550
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.end84
  br label %if.end88, !dbg !554

if.else87:                                        ; preds = %if.then61
  call void @getvalue(i32* @right, i32* %i, i32 %argc, i8** %argv, i32 0, i32 1), !dbg !555
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.end86
  br label %if.end90, !dbg !559

if.else89:                                        ; preds = %if.then56
  call void @getvalue(i32* @use_audio, i32* %i, i32 %argc, i8** %argv, i32 0, i32 1), !dbg !560
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.end88
  br label %if.end92, !dbg !564

if.else91:                                        ; preds = %if.then51
  call void @getvalue(i32* @bufsize, i32* %i, i32 %argc, i8** %argv, i32 4, i32 65536), !dbg !565
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.end90
  br label %if.end94, !dbg !569

if.else93:                                        ; preds = %if.then46
  call void @getvalue(i32* @bits, i32* %i, i32 %argc, i8** %argv, i32 8, i32 16), !dbg !570
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.end92
  br label %if.end96, !dbg !574

if.else95:                                        ; preds = %if.then41
  call void @getvalue(i32* @speed, i32* %i, i32 %argc, i8** %argv, i32 5000, i32 48000), !dbg !575
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.end94
  br label %if.end98, !dbg !579

if.else97:                                        ; preds = %if.then36
  call void @getvalue(i32* @volume, i32* %i, i32 %argc, i8** %argv, i32 0, i32 100), !dbg !580
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %if.end96
  br label %if.end100, !dbg !584

if.else99:                                        ; preds = %if.then31
  call void @getvalue(i32* @sleep_time, i32* %i, i32 %argc, i8** %argv, i32 10, i32 100000), !dbg !585
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.end98
  br label %if.end102, !dbg !589

if.else101:                                       ; preds = %if.then26
  call void @getvalue(i32* @silent_time, i32* %i, i32 %argc, i8** %argv, i32 10, i32 10000), !dbg !590
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.end100
  br label %if.end104, !dbg !594

if.else103:                                       ; preds = %if.then21
  call void @getvalue(i32* @sleep_time, i32* %i, i32 %argc, i8** %argv, i32 10, i32 10000), !dbg !595
  br label %if.end104

if.end104:                                        ; preds = %if.else103, %if.end102
  br label %if.end106, !dbg !599

if.else105:                                       ; preds = %if.then16
  call void @getvalue(i32* @tone_time, i32* %i, i32 %argc, i8** %argv, i32 10, i32 10000), !dbg !600
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.end104
  br label %if.end108, !dbg !604

if.else107:                                       ; preds = %if.end13
  call void @getvalue(i32* @tabsize, i32* %i, i32 %argc, i8** %argv, i32 2, i32 65536), !dbg !605
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.end106
  %37 = load i32, i32* %i, align 4, !dbg !609
  %inc109 = add nsw i32 %37, 1, !dbg !609
  store i32 %inc109, i32* %i, align 4, !dbg !609
  br label %while.body, !dbg !355, !llvm.loop !610

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !612

while_break:                                      ; preds = %while_break___2, %if.then11, %if.then4, %if.then
  %38 = load i32, i32* %i, align 4, !dbg !613
  %cmp110 = icmp sge i32 %38, %argc, !dbg !615
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !616

if.then112:                                       ; preds = %while_break
  call void @Usage(), !dbg !617
  br label %if.end113, !dbg !621

if.end113:                                        ; preds = %if.then112, %while_break
  %39 = load i8*, i8** @output, align 8, !dbg !622
  %call114 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !625
  call void @llvm.dbg.value(metadata i32 %call114, metadata !626, metadata !DIExpression()), !dbg !317
  %tobool115 = icmp ne i32 %call114, 0, !dbg !627
  br i1 %tobool115, label %if.then116, label %if.else123, !dbg !629

if.then116:                                       ; preds = %if.end113
  %40 = load i8*, i8** @output, align 8, !dbg !630
  %call117 = call i32 (i8*, i32, ...) @open(i8* %40, i32 577, i32 420), !dbg !634
  store i32 %call117, i32* @fd, align 4, !dbg !635
  %41 = load i32, i32* @fd, align 4, !dbg !636
  %cmp118 = icmp slt i32 %41, 0, !dbg !638
  br i1 %cmp118, label %if.then120, label %if.end122, !dbg !639

if.then120:                                       ; preds = %if.then116
  %42 = load i8*, i8** @output, align 8, !dbg !640
  call void @perror(i8* %42), !dbg !644
  %call121 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !645
  unreachable, !dbg !645

if.end122:                                        ; preds = %if.then116
  br label %if.end124, !dbg !647

if.else123:                                       ; preds = %if.end113
  store i32 1, i32* @fd, align 4, !dbg !648
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.end122
  %43 = load i32, i32* @bits, align 4, !dbg !650
  %cmp125 = icmp eq i32 %43, 8, !dbg !653
  br i1 %cmp125, label %if.then127, label %if.end128, !dbg !654

if.then127:                                       ; preds = %if.end124
  br label %case_8, !dbg !655

if.end128:                                        ; preds = %if.end124
  %44 = load i32, i32* @bits, align 4, !dbg !657
  %cmp129 = icmp eq i32 %44, 16, !dbg !659
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !660

if.then131:                                       ; preds = %if.end128
  br label %case_16, !dbg !661

if.end132:                                        ; preds = %if.end128
  br label %switch_default, !dbg !663

case_8:                                           ; preds = %if.then127
  store i32 8, i32* @format, align 4, !dbg !664
  br label %switch_break, !dbg !665

case_16:                                          ; preds = %if.then131
  store i32 16, i32* @format, align 4, !dbg !666
  br label %switch_break, !dbg !667

switch_default:                                   ; preds = %if.end132
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !668
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0)), !dbg !671
  %call134 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !672
  unreachable, !dbg !672

switch_break:                                     ; preds = %case_16, %case_8
  call void @initialize_audiodev(), !dbg !674
  call void @gen_costab(), !dbg !677
  %46 = load i32, i32* @bufsize, align 4, !dbg !679
  %call135 = call noalias i8* @malloc(i32 %46) #6, !dbg !681
  call void @llvm.dbg.value(metadata i8* %call135, metadata !682, metadata !DIExpression()), !dbg !317
  store i8* %call135, i8** @buf, align 8, !dbg !683
  %47 = load i8*, i8** @buf, align 8, !dbg !684
  %48 = ptrtoint i8* %47 to i64, !dbg !686
  %cmp136 = icmp eq i64 %48, 0, !dbg !687
  br i1 %cmp136, label %if.then138, label %if.end140, !dbg !688

if.then138:                                       ; preds = %switch_break
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)), !dbg !689
  %call139 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !693
  unreachable, !dbg !693

if.end140:                                        ; preds = %switch_break
  store i32 0, i32* @bufidx, align 4, !dbg !695
  br label %while.body141, !dbg !696

while.body141:                                    ; preds = %while_break___1, %if.end140
  br label %while_continue___3, !dbg !699

while_continue___3:                               ; preds = %while.body141
  br label %while_continue___0, !dbg !699

while_continue___0:                               ; preds = %while_continue___3
  %49 = load i32, i32* %i, align 4, !dbg !700
  %cmp142 = icmp slt i32 %49, %argc, !dbg !703
  br i1 %cmp142, label %if.end145, label %if.then144, !dbg !704

if.then144:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !705

if.end145:                                        ; preds = %while_continue___0
  %50 = load i32, i32* %i, align 4, !dbg !707
  %idx.ext146 = sext i32 %50 to i64, !dbg !708
  %add.ptr147 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext146, !dbg !708
  %51 = load i8*, i8** %add.ptr147, align 8, !dbg !709
  call void @llvm.dbg.value(metadata i8* %51, metadata !710, metadata !DIExpression()), !dbg !317
  %52 = load i32, i32* @dialed, align 4, !dbg !711
  %tobool148 = icmp ne i32 %52, 0, !dbg !711
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !713

if.then149:                                       ; preds = %if.end145
  %53 = load i32, i32* @sleep_time, align 4, !dbg !714
  call void @silent(i32 %53), !dbg !718
  br label %if.end150, !dbg !719

if.end150:                                        ; preds = %if.then149, %if.end145
  br label %while.body152, !dbg !720

while.body152:                                    ; preds = %if.end175, %if.end150
  %cp.0 = phi i8* [ %51, %if.end150 ], [ %incdec.ptr, %if.end175 ], !dbg !723
  call void @llvm.dbg.value(metadata i8* %cp.0, metadata !710, metadata !DIExpression()), !dbg !317
  br label %while_continue___4, !dbg !724

while_continue___4:                               ; preds = %while.body152
  br label %while_continue___1, !dbg !724

while_continue___1:                               ; preds = %while_continue___4
  %tobool153 = icmp ne i8* %cp.0, null, !dbg !725
  br i1 %tobool153, label %if.then154, label %if.else158, !dbg !728

if.then154:                                       ; preds = %while_continue___1
  %54 = load i8, i8* %cp.0, align 1, !dbg !729
  %tobool155 = icmp ne i8 %54, 0, !dbg !729
  br i1 %tobool155, label %if.end157, label %if.then156, !dbg !732

if.then156:                                       ; preds = %if.then154
  br label %while_break___1, !dbg !733

if.end157:                                        ; preds = %if.then154
  br label %if.end159, !dbg !735

if.else158:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !736

if.end159:                                        ; preds = %if.end157
  %55 = load i8, i8* %cp.0, align 1, !dbg !738
  %conv160 = sext i8 %55 to i32, !dbg !740
  %cmp161 = icmp eq i32 %conv160, 44, !dbg !741
  br i1 %cmp161, label %if.then163, label %if.else164, !dbg !742

if.then163:                                       ; preds = %if.end159
  %56 = load i32, i32* @sleep_time, align 4, !dbg !743
  call void @silent(i32 %56), !dbg !747
  br label %if.end175, !dbg !748

if.else164:                                       ; preds = %if.end159
  %57 = load i8, i8* %cp.0, align 1, !dbg !749
  %conv165 = sext i8 %57 to i32, !dbg !751
  %cmp166 = icmp eq i32 %conv165, 32, !dbg !752
  br i1 %cmp166, label %if.then168, label %if.else169, !dbg !740

if.then168:                                       ; preds = %if.else164
  %58 = load i32, i32* @sleep_time, align 4, !dbg !753
  call void @silent(i32 %58), !dbg !757
  br label %if.end174, !dbg !758

if.else169:                                       ; preds = %if.else164
  %59 = load i32, i32* @dialed, align 4, !dbg !759
  %tobool170 = icmp ne i32 %59, 0, !dbg !759
  br i1 %tobool170, label %if.then171, label %if.end172, !dbg !762

if.then171:                                       ; preds = %if.else169
  %60 = load i32, i32* @silent_time, align 4, !dbg !763
  call void @silent(i32 %60), !dbg !767
  br label %if.end172, !dbg !768

if.end172:                                        ; preds = %if.then171, %if.else169
  %61 = load i8, i8* %cp.0, align 1, !dbg !769
  %conv173 = sext i8 %61 to i32, !dbg !772
  call void @dial_digit(i32 %conv173), !dbg !773
  br label %if.end174

if.end174:                                        ; preds = %if.end172, %if.then168
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then163
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.0, i32 1, !dbg !774
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !710, metadata !DIExpression()), !dbg !317
  br label %while.body152, !dbg !720, !llvm.loop !775

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !777

while_break___1:                                  ; preds = %while_break___4, %if.else158, %if.then156
  %62 = load i32, i32* %i, align 4, !dbg !778
  %inc176 = add nsw i32 %62, 1, !dbg !778
  store i32 %inc176, i32* %i, align 4, !dbg !778
  br label %while.body141, !dbg !696, !llvm.loop !779

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !781

while_break___0:                                  ; preds = %while_break___3, %if.then144
  %63 = load i32, i32* @bufidx, align 4, !dbg !782
  %cmp177 = icmp sgt i32 %63, 0, !dbg !784
  br i1 %cmp177, label %if.then179, label %if.end181, !dbg !785

if.then179:                                       ; preds = %while_break___0
  %64 = load i32, i32* @fd, align 4, !dbg !786
  %65 = load i8*, i8** @buf, align 8, !dbg !790
  %66 = load i32, i32* @bufidx, align 4, !dbg !791
  %call180 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %64, i8* %65, i32 %66), !dbg !792
  br label %if.end181, !dbg !793

if.end181:                                        ; preds = %if.then179, %while_break___0
  %call182 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 0) #5, !dbg !794
  unreachable, !dbg !794

return:                                           ; No predecessors!
  ret void, !dbg !797
}

declare i32 @strcmp(i8*, i8*) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @gen_costab() #0 !dbg !798 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load i32, i32* @tabsize, align 4, !dbg !801
  %conv = sext i32 %0 to i64, !dbg !805
  %mul = mul i64 %conv, 2, !dbg !806
  %conv1 = trunc i64 %mul to i32, !dbg !807
  %call = call noalias i8* @malloc(i32 %conv1) #6, !dbg !808
  call void @llvm.dbg.value(metadata i8* %call, metadata !809, metadata !DIExpression()), !dbg !810
  %1 = bitcast i8* %call to i16*, !dbg !811
  store i16* %1, i16** @costab, align 8, !dbg !812
  %2 = load i16*, i16** @costab, align 8, !dbg !813
  %3 = ptrtoint i16* %2 to i64, !dbg !815
  %cmp = icmp eq i64 %3, 0, !dbg !816
  br i1 %cmp, label %if.then, label %if.end, !dbg !817

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)), !dbg !818
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @exit to i32 (i32, ...)*)(i32 1) #5, !dbg !822
  unreachable, !dbg !822

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !824, metadata !DIExpression()), !dbg !810
  br label %while.body, !dbg !825

while.body:                                       ; preds = %if.end7, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end7 ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !824, metadata !DIExpression()), !dbg !810
  br label %while_continue___0, !dbg !829

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !829

while_continue:                                   ; preds = %while_continue___0
  %4 = load i32, i32* @tabsize, align 4, !dbg !830
  %cmp4 = icmp slt i32 %i.0, %4, !dbg !833
  br i1 %cmp4, label %if.end7, label %if.then6, !dbg !834

if.then6:                                         ; preds = %while_continue
  br label %while_break, !dbg !835

if.end7:                                          ; preds = %while_continue
  %conv8 = sitofp i32 %i.0 to double, !dbg !837
  %mul9 = fmul double 0x401921FB54442D18, %conv8, !dbg !839
  call void @llvm.dbg.value(metadata double %mul9, metadata !840, metadata !DIExpression()), !dbg !810
  %5 = load i32, i32* @tabsize, align 4, !dbg !841
  %conv10 = sitofp i32 %5 to double, !dbg !843
  %div = fdiv double %mul9, %conv10, !dbg !844
  %6 = call double @llvm.cos.f64(double %div), !dbg !845
  call void @llvm.dbg.value(metadata double %6, metadata !846, metadata !DIExpression()), !dbg !810
  %7 = load i32, i32* @volume, align 4, !dbg !847
  %conv11 = sitofp i32 %7 to double, !dbg !848
  %div12 = fdiv double %conv11, 1.000000e+02, !dbg !849
  %mul13 = fmul double %div12, 1.638300e+04, !dbg !850
  %mul14 = fmul double %mul13, %6, !dbg !851
  %conv15 = fptosi double %mul14 to i32, !dbg !852
  %conv16 = trunc i32 %conv15 to i16, !dbg !853
  %8 = load i16*, i16** @costab, align 8, !dbg !854
  %idx.ext = sext i32 %i.0 to i64, !dbg !855
  %add.ptr = getelementptr inbounds i16, i16* %8, i64 %idx.ext, !dbg !855
  store i16 %conv16, i16* %add.ptr, align 2, !dbg !856
  %inc = add nsw i32 %i.0, 1, !dbg !857
  call void @llvm.dbg.value(metadata i32 %inc, metadata !824, metadata !DIExpression()), !dbg !810
  br label %while.body, !dbg !825, !llvm.loop !858

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !860

while_break:                                      ; preds = %while_break___0, %if.then6
  ret void, !dbg !861
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @silent(i32 %msec) #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata i32 %msec, metadata !865, metadata !DIExpression()), !dbg !866
  %cmp = icmp sle i32 %msec, 0, !dbg !867
  br i1 %cmp, label %if.then, label %if.end, !dbg !870

if.then:                                          ; preds = %entry
  br label %return, !dbg !871

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @speed, align 4, !dbg !873
  %mul = mul nsw i32 %msec, %0, !dbg !874
  %div = sdiv i32 %mul, 1000, !dbg !875
  call void @llvm.dbg.value(metadata i32 %div, metadata !876, metadata !DIExpression()), !dbg !866
  br label %while.body, !dbg !877

while.body:                                       ; preds = %if.end34, %if.end
  %time.0 = phi i32 [ %div, %if.end ], [ %dec, %if.end34 ], !dbg !880
  call void @llvm.dbg.value(metadata i32 %time.0, metadata !876, metadata !DIExpression()), !dbg !866
  br label %while_continue___0, !dbg !881

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !881

while_continue:                                   ; preds = %while_continue___0
  %dec = add nsw i32 %time.0, -1, !dbg !882
  call void @llvm.dbg.value(metadata i32 %dec, metadata !876, metadata !DIExpression()), !dbg !866
  %cmp1 = icmp sge i32 %dec, 0, !dbg !884
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !886

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !887

if.end3:                                          ; preds = %while_continue
  %1 = load i32, i32* @format, align 4, !dbg !889
  %cmp4 = icmp eq i32 %1, 8, !dbg !891
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !892

if.then5:                                         ; preds = %if.end3
  %2 = load i32, i32* @bufidx, align 4, !dbg !893
  call void @llvm.dbg.value(metadata i32 %2, metadata !895, metadata !DIExpression()), !dbg !866
  %3 = load i32, i32* @bufidx, align 4, !dbg !896
  %inc = add nsw i32 %3, 1, !dbg !896
  store i32 %inc, i32* @bufidx, align 4, !dbg !896
  %4 = load i8*, i8** @buf, align 8, !dbg !897
  %idx.ext = sext i32 %2 to i64, !dbg !893
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext, !dbg !893
  store i8 -128, i8* %add.ptr, align 1, !dbg !898
  br label %if.end12, !dbg !899

if.else:                                          ; preds = %if.end3
  %5 = load i32, i32* @bufidx, align 4, !dbg !900
  call void @llvm.dbg.value(metadata i32 %5, metadata !902, metadata !DIExpression()), !dbg !866
  %6 = load i32, i32* @bufidx, align 4, !dbg !903
  %inc6 = add nsw i32 %6, 1, !dbg !903
  store i32 %inc6, i32* @bufidx, align 4, !dbg !903
  %7 = load i8*, i8** @buf, align 8, !dbg !904
  %idx.ext7 = sext i32 %5 to i64, !dbg !905
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 %idx.ext7, !dbg !905
  store i8 0, i8* %add.ptr8, align 1, !dbg !906
  %8 = load i32, i32* @bufidx, align 4, !dbg !907
  call void @llvm.dbg.value(metadata i32 %8, metadata !908, metadata !DIExpression()), !dbg !866
  %9 = load i32, i32* @bufidx, align 4, !dbg !909
  %inc9 = add nsw i32 %9, 1, !dbg !909
  store i32 %inc9, i32* @bufidx, align 4, !dbg !909
  %10 = load i8*, i8** @buf, align 8, !dbg !910
  %idx.ext10 = sext i32 %8 to i64, !dbg !911
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 %idx.ext10, !dbg !911
  store i8 0, i8* %add.ptr11, align 1, !dbg !912
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %11 = load i32, i32* @right, align 4, !dbg !913
  %tobool = icmp ne i32 %11, 0, !dbg !913
  br i1 %tobool, label %if.then13, label %if.else14, !dbg !915

if.then13:                                        ; preds = %if.end12
  br label %_L, !dbg !916

if.else14:                                        ; preds = %if.end12
  %12 = load i32, i32* @left, align 4, !dbg !918
  %tobool15 = icmp ne i32 %12, 0, !dbg !918
  br i1 %tobool15, label %if.then16, label %if.end30, !dbg !913

if.then16:                                        ; preds = %if.else14
  br label %_L, !dbg !920

_L:                                               ; preds = %if.then16, %if.then13
  %13 = load i32, i32* @format, align 4, !dbg !921
  %cmp17 = icmp eq i32 %13, 8, !dbg !924
  br i1 %cmp17, label %if.then18, label %if.else22, !dbg !925

if.then18:                                        ; preds = %_L
  %14 = load i32, i32* @bufidx, align 4, !dbg !926
  call void @llvm.dbg.value(metadata i32 %14, metadata !928, metadata !DIExpression()), !dbg !866
  %15 = load i32, i32* @bufidx, align 4, !dbg !929
  %inc19 = add nsw i32 %15, 1, !dbg !929
  store i32 %inc19, i32* @bufidx, align 4, !dbg !929
  %16 = load i8*, i8** @buf, align 8, !dbg !930
  %idx.ext20 = sext i32 %14 to i64, !dbg !931
  %add.ptr21 = getelementptr inbounds i8, i8* %16, i64 %idx.ext20, !dbg !931
  store i8 -128, i8* %add.ptr21, align 1, !dbg !932
  br label %if.end29, !dbg !933

if.else22:                                        ; preds = %_L
  %17 = load i32, i32* @bufidx, align 4, !dbg !934
  call void @llvm.dbg.value(metadata i32 %17, metadata !936, metadata !DIExpression()), !dbg !866
  %18 = load i32, i32* @bufidx, align 4, !dbg !937
  %inc23 = add nsw i32 %18, 1, !dbg !937
  store i32 %inc23, i32* @bufidx, align 4, !dbg !937
  %19 = load i8*, i8** @buf, align 8, !dbg !938
  %idx.ext24 = sext i32 %17 to i64, !dbg !939
  %add.ptr25 = getelementptr inbounds i8, i8* %19, i64 %idx.ext24, !dbg !939
  store i8 0, i8* %add.ptr25, align 1, !dbg !940
  %20 = load i32, i32* @bufidx, align 4, !dbg !941
  call void @llvm.dbg.value(metadata i32 %20, metadata !942, metadata !DIExpression()), !dbg !866
  %21 = load i32, i32* @bufidx, align 4, !dbg !943
  %inc26 = add nsw i32 %21, 1, !dbg !943
  store i32 %inc26, i32* @bufidx, align 4, !dbg !943
  %22 = load i8*, i8** @buf, align 8, !dbg !944
  %idx.ext27 = sext i32 %20 to i64, !dbg !945
  %add.ptr28 = getelementptr inbounds i8, i8* %22, i64 %idx.ext27, !dbg !945
  store i8 0, i8* %add.ptr28, align 1, !dbg !946
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %if.then18
  br label %if.end30, !dbg !947

if.end30:                                         ; preds = %if.end29, %if.else14
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  %23 = load i32, i32* @bufidx, align 4, !dbg !948
  %24 = load i32, i32* @bufsize, align 4, !dbg !950
  %cmp32 = icmp sge i32 %23, %24, !dbg !951
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !952

if.then33:                                        ; preds = %if.end31
  %25 = load i32, i32* @fd, align 4, !dbg !953
  %26 = load i8*, i8** @buf, align 8, !dbg !957
  %27 = load i32, i32* @bufsize, align 4, !dbg !958
  %call = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %25, i8* %26, i32 %27), !dbg !959
  store i32 0, i32* @bufidx, align 4, !dbg !960
  br label %if.end34, !dbg !961

if.end34:                                         ; preds = %if.then33, %if.end31
  br label %while.body, !dbg !877, !llvm.loop !962

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !964

while_break:                                      ; preds = %while_break___0, %if.then2
  store i32 0, i32* @dialed, align 4, !dbg !965
  br label %return, !dbg !966

return:                                           ; preds = %while_break, %if.then
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind ssp uwtable
define void @dial_digit(i32 %c) #0 !dbg !968 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !969, metadata !DIExpression()), !dbg !970
  %cmp = icmp eq i32 %c, 48, !dbg !971
  br i1 %cmp, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %entry
  br label %case_48, !dbg !976

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %c, 49, !dbg !978
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !980

if.then2:                                         ; preds = %if.end
  br label %case_49, !dbg !981

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %c, 50, !dbg !983
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !985

if.then5:                                         ; preds = %if.end3
  br label %case_50, !dbg !986

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %c, 51, !dbg !988
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !990

if.then8:                                         ; preds = %if.end6
  br label %case_51, !dbg !991

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %c, 52, !dbg !993
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !995

if.then11:                                        ; preds = %if.end9
  br label %case_52, !dbg !996

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %c, 53, !dbg !998
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1000

if.then14:                                        ; preds = %if.end12
  br label %case_53, !dbg !1001

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %c, 54, !dbg !1003
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1005

if.then17:                                        ; preds = %if.end15
  br label %case_54, !dbg !1006

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %c, 55, !dbg !1008
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1010

if.then20:                                        ; preds = %if.end18
  br label %case_55, !dbg !1011

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %c, 56, !dbg !1013
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1015

if.then23:                                        ; preds = %if.end21
  br label %case_56, !dbg !1016

if.end24:                                         ; preds = %if.end21
  %cmp25 = icmp eq i32 %c, 57, !dbg !1018
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1020

if.then26:                                        ; preds = %if.end24
  br label %case_57, !dbg !1021

if.end27:                                         ; preds = %if.end24
  %cmp28 = icmp eq i32 %c, 42, !dbg !1023
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1025

if.then29:                                        ; preds = %if.end27
  br label %case_42, !dbg !1026

if.end30:                                         ; preds = %if.end27
  %cmp31 = icmp eq i32 %c, 35, !dbg !1028
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !1030

if.then32:                                        ; preds = %if.end30
  br label %case_35, !dbg !1031

if.end33:                                         ; preds = %if.end30
  %cmp34 = icmp eq i32 %c, 65, !dbg !1033
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !1035

if.then35:                                        ; preds = %if.end33
  br label %case_65, !dbg !1036

if.end36:                                         ; preds = %if.end33
  %cmp37 = icmp eq i32 %c, 66, !dbg !1038
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1040

if.then38:                                        ; preds = %if.end36
  br label %case_66, !dbg !1041

if.end39:                                         ; preds = %if.end36
  %cmp40 = icmp eq i32 %c, 67, !dbg !1043
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1045

if.then41:                                        ; preds = %if.end39
  br label %case_67, !dbg !1046

if.end42:                                         ; preds = %if.end39
  %cmp43 = icmp eq i32 %c, 68, !dbg !1048
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !1050

if.then44:                                        ; preds = %if.end42
  br label %case_68, !dbg !1051

if.end45:                                         ; preds = %if.end42
  br label %switch_break, !dbg !1053

case_48:                                          ; preds = %if.then
  %0 = load i32, i32* @tone_time, align 4, !dbg !1054
  call void @dial(i32 941, i32 1336, i32 %0), !dbg !1057
  br label %switch_break, !dbg !1058

case_49:                                          ; preds = %if.then2
  %1 = load i32, i32* @tone_time, align 4, !dbg !1059
  call void @dial(i32 697, i32 1209, i32 %1), !dbg !1062
  br label %switch_break, !dbg !1063

case_50:                                          ; preds = %if.then5
  %2 = load i32, i32* @tone_time, align 4, !dbg !1064
  call void @dial(i32 697, i32 1336, i32 %2), !dbg !1067
  br label %switch_break, !dbg !1068

case_51:                                          ; preds = %if.then8
  %3 = load i32, i32* @tone_time, align 4, !dbg !1069
  call void @dial(i32 697, i32 1477, i32 %3), !dbg !1072
  br label %switch_break, !dbg !1073

case_52:                                          ; preds = %if.then11
  %4 = load i32, i32* @tone_time, align 4, !dbg !1074
  call void @dial(i32 770, i32 1209, i32 %4), !dbg !1077
  br label %switch_break, !dbg !1078

case_53:                                          ; preds = %if.then14
  %5 = load i32, i32* @tone_time, align 4, !dbg !1079
  call void @dial(i32 770, i32 1336, i32 %5), !dbg !1082
  br label %switch_break, !dbg !1083

case_54:                                          ; preds = %if.then17
  %6 = load i32, i32* @tone_time, align 4, !dbg !1084
  call void @dial(i32 770, i32 1477, i32 %6), !dbg !1087
  br label %switch_break, !dbg !1088

case_55:                                          ; preds = %if.then20
  %7 = load i32, i32* @tone_time, align 4, !dbg !1089
  call void @dial(i32 852, i32 1209, i32 %7), !dbg !1092
  br label %switch_break, !dbg !1093

case_56:                                          ; preds = %if.then23
  %8 = load i32, i32* @tone_time, align 4, !dbg !1094
  call void @dial(i32 852, i32 1336, i32 %8), !dbg !1097
  br label %switch_break, !dbg !1098

case_57:                                          ; preds = %if.then26
  %9 = load i32, i32* @tone_time, align 4, !dbg !1099
  call void @dial(i32 852, i32 1477, i32 %9), !dbg !1102
  br label %switch_break, !dbg !1103

case_42:                                          ; preds = %if.then29
  %10 = load i32, i32* @tone_time, align 4, !dbg !1104
  call void @dial(i32 941, i32 1209, i32 %10), !dbg !1107
  br label %switch_break, !dbg !1108

case_35:                                          ; preds = %if.then32
  %11 = load i32, i32* @tone_time, align 4, !dbg !1109
  call void @dial(i32 941, i32 1477, i32 %11), !dbg !1112
  br label %switch_break, !dbg !1113

case_65:                                          ; preds = %if.then35
  %12 = load i32, i32* @tone_time, align 4, !dbg !1114
  call void @dial(i32 697, i32 1633, i32 %12), !dbg !1117
  br label %switch_break, !dbg !1118

case_66:                                          ; preds = %if.then38
  %13 = load i32, i32* @tone_time, align 4, !dbg !1119
  call void @dial(i32 770, i32 1633, i32 %13), !dbg !1122
  br label %switch_break, !dbg !1123

case_67:                                          ; preds = %if.then41
  %14 = load i32, i32* @tone_time, align 4, !dbg !1124
  call void @dial(i32 852, i32 1633, i32 %14), !dbg !1127
  br label %switch_break, !dbg !1128

case_68:                                          ; preds = %if.then44
  %15 = load i32, i32* @tone_time, align 4, !dbg !1129
  call void @dial(i32 941, i32 1633, i32 %15), !dbg !1132
  br label %switch_break, !dbg !1133

switch_break:                                     ; preds = %case_68, %case_67, %case_66, %case_65, %case_35, %case_42, %case_57, %case_56, %case_55, %case_54, %case_53, %case_52, %case_51, %case_50, %case_49, %case_48, %if.end45
  ret void, !dbg !1134
}

declare i32 @write(...) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @dial(i32 %f1, i32 %f2, i32 %msec) #0 !dbg !1135 {
entry:
  call void @llvm.dbg.value(metadata i32 %f1, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %f2, metadata !1140, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %msec, metadata !1141, metadata !DIExpression()), !dbg !1139
  %cmp = icmp sle i32 %msec, 0, !dbg !1142
  br i1 %cmp, label %if.then, label %if.end, !dbg !1145

if.then:                                          ; preds = %entry
  br label %return, !dbg !1146

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @tabsize, align 4, !dbg !1148
  %mul = mul nsw i32 %f1, %0, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1138, metadata !DIExpression()), !dbg !1139
  %1 = load i32, i32* @tabsize, align 4, !dbg !1150
  %mul1 = mul nsw i32 %f2, %1, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %mul1, metadata !1140, metadata !DIExpression()), !dbg !1139
  %2 = load i32, i32* @speed, align 4, !dbg !1152
  %div = sdiv i32 %mul, %2, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %div, metadata !1154, metadata !DIExpression()), !dbg !1139
  %3 = load i32, i32* @speed, align 4, !dbg !1155
  %div2 = sdiv i32 %mul1, %3, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %div2, metadata !1157, metadata !DIExpression()), !dbg !1139
  %4 = load i32, i32* @speed, align 4, !dbg !1158
  %mul3 = mul nsw i32 %div, %4, !dbg !1159
  %sub = sub nsw i32 %mul, %mul3, !dbg !1160
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1161, metadata !DIExpression()), !dbg !1139
  %5 = load i32, i32* @speed, align 4, !dbg !1162
  %mul4 = mul nsw i32 %div2, %5, !dbg !1163
  %sub5 = sub nsw i32 %mul1, %mul4, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %sub5, metadata !1165, metadata !DIExpression()), !dbg !1139
  %6 = load i32, i32* @speed, align 4, !dbg !1166
  %div6 = sdiv i32 %6, 2, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %div6, metadata !1168, metadata !DIExpression()), !dbg !1139
  %7 = load i32, i32* @speed, align 4, !dbg !1169
  %div7 = sdiv i32 %7, 2, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %div7, metadata !1171, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1139
  %8 = load i32, i32* @speed, align 4, !dbg !1174
  %mul8 = mul nsw i32 %msec, %8, !dbg !1175
  %div9 = sdiv i32 %mul8, 1000, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %div9, metadata !1177, metadata !DIExpression()), !dbg !1139
  br label %while.body, !dbg !1178

while.body:                                       ; preds = %if.end110, %if.end
  %e1.0 = phi i32 [ %div6, %if.end ], [ %sub111, %if.end110 ], !dbg !1181
  %e2.0 = phi i32 [ %div7, %if.end ], [ %sub112, %if.end110 ], !dbg !1181
  %i2.0 = phi i32 [ 0, %if.end ], [ %i2.2, %if.end110 ], !dbg !1181
  %i1.0 = phi i32 [ 0, %if.end ], [ %i1.2, %if.end110 ], !dbg !1181
  %time.0 = phi i32 [ %div9, %if.end ], [ %dec, %if.end110 ], !dbg !1181
  call void @llvm.dbg.value(metadata i32 %time.0, metadata !1177, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %i1.0, metadata !1173, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %i2.0, metadata !1172, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %e2.0, metadata !1171, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %e1.0, metadata !1168, metadata !DIExpression()), !dbg !1139
  br label %while_continue___0, !dbg !1182

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1182

while_continue:                                   ; preds = %while_continue___0
  %dec = add nsw i32 %time.0, -1, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1177, metadata !DIExpression()), !dbg !1139
  %cmp10 = icmp sge i32 %dec, 0, !dbg !1185
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !1187

if.then11:                                        ; preds = %while_continue
  br label %while_break, !dbg !1188

if.end12:                                         ; preds = %while_continue
  %9 = load i16*, i16** @costab, align 8, !dbg !1190
  %idx.ext = sext i32 %i1.0 to i64, !dbg !1191
  %add.ptr = getelementptr inbounds i16, i16* %9, i64 %idx.ext, !dbg !1191
  %10 = load i16, i16* %add.ptr, align 2, !dbg !1192
  %conv = sext i16 %10 to i32, !dbg !1193
  %11 = load i16*, i16** @costab, align 8, !dbg !1194
  %idx.ext13 = sext i32 %i2.0 to i64, !dbg !1195
  %add.ptr14 = getelementptr inbounds i16, i16* %11, i64 %idx.ext13, !dbg !1195
  %12 = load i16, i16* %add.ptr14, align 2, !dbg !1196
  %conv15 = sext i16 %12 to i32, !dbg !1197
  %add = add nsw i32 %conv, %conv15, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %add, metadata !1199, metadata !DIExpression()), !dbg !1139
  %13 = load i32, i32* @left, align 4, !dbg !1200
  %tobool = icmp ne i32 %13, 0, !dbg !1200
  br i1 %tobool, label %if.then16, label %if.else, !dbg !1202

if.then16:                                        ; preds = %if.end12
  br label %_L, !dbg !1203

if.else:                                          ; preds = %if.end12
  %14 = load i32, i32* @right, align 4, !dbg !1205
  %tobool17 = icmp ne i32 %14, 0, !dbg !1205
  br i1 %tobool17, label %if.end38, label %if.then18, !dbg !1200

if.then18:                                        ; preds = %if.else
  br label %_L, !dbg !1207

_L:                                               ; preds = %if.then18, %if.then16
  %15 = load i32, i32* @format, align 4, !dbg !1208
  %cmp19 = icmp eq i32 %15, 8, !dbg !1211
  br i1 %cmp19, label %if.then21, label %if.else26, !dbg !1212

if.then21:                                        ; preds = %_L
  %16 = load i32, i32* @bufidx, align 4, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %16, metadata !1215, metadata !DIExpression()), !dbg !1139
  %17 = load i32, i32* @bufidx, align 4, !dbg !1216
  %inc = add nsw i32 %17, 1, !dbg !1216
  store i32 %inc, i32* @bufidx, align 4, !dbg !1216
  %shr = ashr i32 %add, 8, !dbg !1217
  %add22 = add nsw i32 128, %shr, !dbg !1218
  %conv23 = trunc i32 %add22 to i8, !dbg !1219
  %18 = load i8*, i8** @buf, align 8, !dbg !1220
  %idx.ext24 = sext i32 %16 to i64, !dbg !1213
  %add.ptr25 = getelementptr inbounds i8, i8* %18, i64 %idx.ext24, !dbg !1213
  store i8 %conv23, i8* %add.ptr25, align 1, !dbg !1221
  br label %if.end37, !dbg !1222

if.else26:                                        ; preds = %_L
  %19 = load i32, i32* @bufidx, align 4, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %19, metadata !1225, metadata !DIExpression()), !dbg !1139
  %20 = load i32, i32* @bufidx, align 4, !dbg !1226
  %inc27 = add nsw i32 %20, 1, !dbg !1226
  store i32 %inc27, i32* @bufidx, align 4, !dbg !1226
  %and = and i32 %add, 255, !dbg !1227
  %conv28 = trunc i32 %and to i8, !dbg !1228
  %21 = load i8*, i8** @buf, align 8, !dbg !1229
  %idx.ext29 = sext i32 %19 to i64, !dbg !1230
  %add.ptr30 = getelementptr inbounds i8, i8* %21, i64 %idx.ext29, !dbg !1230
  store i8 %conv28, i8* %add.ptr30, align 1, !dbg !1231
  %22 = load i32, i32* @bufidx, align 4, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %22, metadata !1233, metadata !DIExpression()), !dbg !1139
  %23 = load i32, i32* @bufidx, align 4, !dbg !1234
  %inc31 = add nsw i32 %23, 1, !dbg !1234
  store i32 %inc31, i32* @bufidx, align 4, !dbg !1234
  %shr32 = ashr i32 %add, 8, !dbg !1235
  %and33 = and i32 %shr32, 255, !dbg !1236
  %conv34 = trunc i32 %and33 to i8, !dbg !1237
  %24 = load i8*, i8** @buf, align 8, !dbg !1238
  %idx.ext35 = sext i32 %22 to i64, !dbg !1239
  %add.ptr36 = getelementptr inbounds i8, i8* %24, i64 %idx.ext35, !dbg !1239
  store i8 %conv34, i8* %add.ptr36, align 1, !dbg !1240
  br label %if.end37

if.end37:                                         ; preds = %if.else26, %if.then21
  br label %if.end38, !dbg !1241

if.end38:                                         ; preds = %if.end37, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  %25 = load i32, i32* @left, align 4, !dbg !1242
  %26 = load i32, i32* @right, align 4, !dbg !1244
  %cmp40 = icmp ne i32 %25, %26, !dbg !1245
  br i1 %cmp40, label %if.then42, label %if.end57, !dbg !1246

if.then42:                                        ; preds = %if.end39
  %27 = load i32, i32* @format, align 4, !dbg !1247
  %cmp43 = icmp eq i32 %27, 8, !dbg !1250
  br i1 %cmp43, label %if.then45, label %if.else49, !dbg !1251

if.then45:                                        ; preds = %if.then42
  %28 = load i32, i32* @bufidx, align 4, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %28, metadata !1254, metadata !DIExpression()), !dbg !1139
  %29 = load i32, i32* @bufidx, align 4, !dbg !1255
  %inc46 = add nsw i32 %29, 1, !dbg !1255
  store i32 %inc46, i32* @bufidx, align 4, !dbg !1255
  %30 = load i8*, i8** @buf, align 8, !dbg !1256
  %idx.ext47 = sext i32 %28 to i64, !dbg !1257
  %add.ptr48 = getelementptr inbounds i8, i8* %30, i64 %idx.ext47, !dbg !1257
  store i8 -128, i8* %add.ptr48, align 1, !dbg !1258
  br label %if.end56, !dbg !1259

if.else49:                                        ; preds = %if.then42
  %31 = load i32, i32* @bufidx, align 4, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %31, metadata !1262, metadata !DIExpression()), !dbg !1139
  %32 = load i32, i32* @bufidx, align 4, !dbg !1263
  %inc50 = add nsw i32 %32, 1, !dbg !1263
  store i32 %inc50, i32* @bufidx, align 4, !dbg !1263
  %33 = load i8*, i8** @buf, align 8, !dbg !1264
  %idx.ext51 = sext i32 %31 to i64, !dbg !1265
  %add.ptr52 = getelementptr inbounds i8, i8* %33, i64 %idx.ext51, !dbg !1265
  store i8 0, i8* %add.ptr52, align 1, !dbg !1266
  %34 = load i32, i32* @bufidx, align 4, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %34, metadata !1268, metadata !DIExpression()), !dbg !1139
  %35 = load i32, i32* @bufidx, align 4, !dbg !1269
  %inc53 = add nsw i32 %35, 1, !dbg !1269
  store i32 %inc53, i32* @bufidx, align 4, !dbg !1269
  %36 = load i8*, i8** @buf, align 8, !dbg !1270
  %idx.ext54 = sext i32 %34 to i64, !dbg !1271
  %add.ptr55 = getelementptr inbounds i8, i8* %36, i64 %idx.ext54, !dbg !1271
  store i8 0, i8* %add.ptr55, align 1, !dbg !1272
  br label %if.end56

if.end56:                                         ; preds = %if.else49, %if.then45
  br label %if.end57, !dbg !1273

if.end57:                                         ; preds = %if.end56, %if.end39
  %37 = load i32, i32* @right, align 4, !dbg !1274
  %tobool58 = icmp ne i32 %37, 0, !dbg !1274
  br i1 %tobool58, label %if.then59, label %if.end82, !dbg !1276

if.then59:                                        ; preds = %if.end57
  %38 = load i32, i32* @format, align 4, !dbg !1277
  %cmp60 = icmp eq i32 %38, 8, !dbg !1280
  br i1 %cmp60, label %if.then62, label %if.else69, !dbg !1281

if.then62:                                        ; preds = %if.then59
  %39 = load i32, i32* @bufidx, align 4, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %39, metadata !1284, metadata !DIExpression()), !dbg !1139
  %40 = load i32, i32* @bufidx, align 4, !dbg !1285
  %inc63 = add nsw i32 %40, 1, !dbg !1285
  store i32 %inc63, i32* @bufidx, align 4, !dbg !1285
  %shr64 = ashr i32 %add, 8, !dbg !1286
  %add65 = add nsw i32 128, %shr64, !dbg !1287
  %conv66 = trunc i32 %add65 to i8, !dbg !1288
  %41 = load i8*, i8** @buf, align 8, !dbg !1289
  %idx.ext67 = sext i32 %39 to i64, !dbg !1290
  %add.ptr68 = getelementptr inbounds i8, i8* %41, i64 %idx.ext67, !dbg !1290
  store i8 %conv66, i8* %add.ptr68, align 1, !dbg !1291
  br label %if.end81, !dbg !1292

if.else69:                                        ; preds = %if.then59
  %42 = load i32, i32* @bufidx, align 4, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %42, metadata !1295, metadata !DIExpression()), !dbg !1139
  %43 = load i32, i32* @bufidx, align 4, !dbg !1296
  %inc70 = add nsw i32 %43, 1, !dbg !1296
  store i32 %inc70, i32* @bufidx, align 4, !dbg !1296
  %and71 = and i32 %add, 255, !dbg !1297
  %conv72 = trunc i32 %and71 to i8, !dbg !1298
  %44 = load i8*, i8** @buf, align 8, !dbg !1299
  %idx.ext73 = sext i32 %42 to i64, !dbg !1300
  %add.ptr74 = getelementptr inbounds i8, i8* %44, i64 %idx.ext73, !dbg !1300
  store i8 %conv72, i8* %add.ptr74, align 1, !dbg !1301
  %45 = load i32, i32* @bufidx, align 4, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %45, metadata !1303, metadata !DIExpression()), !dbg !1139
  %46 = load i32, i32* @bufidx, align 4, !dbg !1304
  %inc75 = add nsw i32 %46, 1, !dbg !1304
  store i32 %inc75, i32* @bufidx, align 4, !dbg !1304
  %shr76 = ashr i32 %add, 8, !dbg !1305
  %and77 = and i32 %shr76, 255, !dbg !1306
  %conv78 = trunc i32 %and77 to i8, !dbg !1307
  %47 = load i8*, i8** @buf, align 8, !dbg !1308
  %idx.ext79 = sext i32 %45 to i64, !dbg !1309
  %add.ptr80 = getelementptr inbounds i8, i8* %47, i64 %idx.ext79, !dbg !1309
  store i8 %conv78, i8* %add.ptr80, align 1, !dbg !1310
  br label %if.end81

if.end81:                                         ; preds = %if.else69, %if.then62
  br label %if.end82, !dbg !1311

if.end82:                                         ; preds = %if.end81, %if.end57
  %add83 = add nsw i32 %i1.0, %div, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %add83, metadata !1173, metadata !DIExpression()), !dbg !1139
  %cmp84 = icmp slt i32 %e1.0, 0, !dbg !1313
  br i1 %cmp84, label %if.then86, label %if.end89, !dbg !1315

if.then86:                                        ; preds = %if.end82
  %48 = load i32, i32* @speed, align 4, !dbg !1316
  %add87 = add nsw i32 %e1.0, %48, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %add87, metadata !1168, metadata !DIExpression()), !dbg !1139
  %inc88 = add nsw i32 %add83, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %inc88, metadata !1173, metadata !DIExpression()), !dbg !1139
  br label %if.end89, !dbg !1320

if.end89:                                         ; preds = %if.then86, %if.end82
  %e1.1 = phi i32 [ %add87, %if.then86 ], [ %e1.0, %if.end82 ], !dbg !1181
  %i1.1 = phi i32 [ %inc88, %if.then86 ], [ %add83, %if.end82 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %i1.1, metadata !1173, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %e1.1, metadata !1168, metadata !DIExpression()), !dbg !1139
  %49 = load i32, i32* @tabsize, align 4, !dbg !1322
  %cmp90 = icmp sge i32 %i1.1, %49, !dbg !1324
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !1325

if.then92:                                        ; preds = %if.end89
  %50 = load i32, i32* @tabsize, align 4, !dbg !1326
  %sub93 = sub nsw i32 %i1.1, %50, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %sub93, metadata !1173, metadata !DIExpression()), !dbg !1139
  br label %if.end94, !dbg !1329

if.end94:                                         ; preds = %if.then92, %if.end89
  %i1.2 = phi i32 [ %sub93, %if.then92 ], [ %i1.1, %if.end89 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %i1.2, metadata !1173, metadata !DIExpression()), !dbg !1139
  %add95 = add nsw i32 %i2.0, %div2, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %add95, metadata !1172, metadata !DIExpression()), !dbg !1139
  %cmp96 = icmp slt i32 %e2.0, 0, !dbg !1331
  br i1 %cmp96, label %if.then98, label %if.end101, !dbg !1333

if.then98:                                        ; preds = %if.end94
  %51 = load i32, i32* @speed, align 4, !dbg !1334
  %add99 = add nsw i32 %e2.0, %51, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %add99, metadata !1171, metadata !DIExpression()), !dbg !1139
  %inc100 = add nsw i32 %add95, 1, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %inc100, metadata !1172, metadata !DIExpression()), !dbg !1139
  br label %if.end101, !dbg !1338

if.end101:                                        ; preds = %if.then98, %if.end94
  %e2.1 = phi i32 [ %add99, %if.then98 ], [ %e2.0, %if.end94 ], !dbg !1181
  %i2.1 = phi i32 [ %inc100, %if.then98 ], [ %add95, %if.end94 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %i2.1, metadata !1172, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %e2.1, metadata !1171, metadata !DIExpression()), !dbg !1139
  %52 = load i32, i32* @tabsize, align 4, !dbg !1339
  %cmp102 = icmp sge i32 %i2.1, %52, !dbg !1341
  br i1 %cmp102, label %if.then104, label %if.end106, !dbg !1342

if.then104:                                       ; preds = %if.end101
  %53 = load i32, i32* @tabsize, align 4, !dbg !1343
  %sub105 = sub nsw i32 %i2.1, %53, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %sub105, metadata !1172, metadata !DIExpression()), !dbg !1139
  br label %if.end106, !dbg !1346

if.end106:                                        ; preds = %if.then104, %if.end101
  %i2.2 = phi i32 [ %sub105, %if.then104 ], [ %i2.1, %if.end101 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %i2.2, metadata !1172, metadata !DIExpression()), !dbg !1139
  %54 = load i32, i32* @bufidx, align 4, !dbg !1347
  %55 = load i32, i32* @bufsize, align 4, !dbg !1349
  %cmp107 = icmp sge i32 %54, %55, !dbg !1350
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !1351

if.then109:                                       ; preds = %if.end106
  %56 = load i32, i32* @fd, align 4, !dbg !1352
  %57 = load i8*, i8** @buf, align 8, !dbg !1356
  %58 = load i32, i32* @bufsize, align 4, !dbg !1357
  %call = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %56, i8* %57, i32 %58), !dbg !1358
  store i32 0, i32* @bufidx, align 4, !dbg !1359
  br label %if.end110, !dbg !1360

if.end110:                                        ; preds = %if.then109, %if.end106
  %sub111 = sub nsw i32 %e1.1, %sub, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %sub111, metadata !1168, metadata !DIExpression()), !dbg !1139
  %sub112 = sub nsw i32 %e2.1, %sub5, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %sub112, metadata !1171, metadata !DIExpression()), !dbg !1139
  br label %while.body, !dbg !1178, !llvm.loop !1363

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1365

while_break:                                      ; preds = %while_break___0, %if.then11
  store i32 1, i32* @dialed, align 4, !dbg !1366
  br label %return, !dbg !1367

return:                                           ; preds = %while_break, %if.then
  ret void, !dbg !1368
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!115, !116, !117, !118, !119}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !82, line: 22, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !79, nameTableKind: GNU)
!3 = !DIFile(filename: "c/dtmfdial-0.2+1.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !71, !73, !65, !13, !63, !74, !58, !75, !76, !78, !77}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 49, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 271, size: 1728, elements: !11)
!10 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !35, !36, !37, !38, !42, !44, !46, !50, !53, !57, !59, !60, !61, !62, !66, !67}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 272, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 273, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 274, baseType: !15, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 275, baseType: !15, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 276, baseType: !15, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 277, baseType: !15, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 278, baseType: !15, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 279, baseType: !15, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 280, baseType: !15, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 281, baseType: !15, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 282, baseType: !15, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 283, baseType: !15, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 284, baseType: !28, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 186, size: 192, elements: !30)
!30 = !{!31, !32, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !29, file: !10, line: 187, baseType: !28, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !29, file: !10, line: 188, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !29, file: !10, line: 189, baseType: !13, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 285, baseType: !33, size: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 286, baseType: !13, size: 32, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 287, baseType: !13, size: 32, offset: 928)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 288, baseType: !39, size: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 141, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 289, baseType: !43, size: 16, offset: 1024)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 290, baseType: !45, size: 8, offset: 1040)
!45 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 291, baseType: !47, size: 8, offset: 1048)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 292, baseType: !51, size: 64, offset: 1088)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 180, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 293, baseType: !54, size: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 142, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !40, line: 56, baseType: !56)
!56 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !9, file: !10, line: 294, baseType: !58, size: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !9, file: !10, line: 295, baseType: !58, size: 64, offset: 1280)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !9, file: !10, line: 296, baseType: !58, size: 64, offset: 1344)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !9, file: !10, line: 297, baseType: !58, size: 64, offset: 1408)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 298, baseType: !63, size: 32, offset: 1472)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 211, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 299, baseType: !13, size: 32, offset: 1504)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 300, baseType: !68, size: 192, offset: 1536)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 24)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !{!0, !80, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "bits", scope: !2, file: !82, line: 23, type: !13, isLocal: false, isDefinition: true)
!82 = !DIFile(filename: "/home/wslee/benchmarks/sound/dtmfdial-0.2+1/dial.c", directory: "")
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "speed", scope: !2, file: !82, line: 24, type: !13, isLocal: false, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "tone_time", scope: !2, file: !82, line: 25, type: !13, isLocal: false, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "silent_time", scope: !2, file: !82, line: 26, type: !13, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "sleep_time", scope: !2, file: !82, line: 27, type: !13, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "volume", scope: !2, file: !82, line: 28, type: !13, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "format", scope: !2, file: !82, line: 29, type: !13, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "use_audio", scope: !2, file: !82, line: 30, type: !13, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "bufsize", scope: !2, file: !82, line: 35, type: !13, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "tabsize", scope: !2, file: !82, line: 41, type: !13, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "dialed", scope: !2, file: !82, line: 43, type: !13, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "right", scope: !2, file: !82, line: 45, type: !13, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "left", scope: !2, file: !82, line: 46, type: !13, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "buf", scope: !2, file: !82, line: 34, type: !74, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "bufidx", scope: !2, file: !82, line: 36, type: !13, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "costab", scope: !2, file: !82, line: 40, type: !76, isLocal: false, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "fd", scope: !2, file: !82, line: 48, type: !13, isLocal: false, isDefinition: true)
!115 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!116 = !{i32 2, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = !{i32 7, !"PIC Level", i32 2}
!120 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!121 = distinct !DISubprogram(name: "Usage", scope: !82, file: !82, line: 50, type: !122, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DILocalVariable(name: "__cil_tmp1", scope: !121, file: !82, line: 52, type: !15)
!125 = !DILocation(line: 52, column: 9, scope: !121)
!126 = !DILocation(line: 52, column: 36, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !82, line: 56, column: 3)
!128 = distinct !DILexicalBlock(scope: !129, file: !82, line: 55, column: 3)
!129 = distinct !DILexicalBlock(scope: !121, file: !82, line: 54, column: 3)
!130 = !DILocation(line: 52, column: 3, scope: !127)
!131 = !DILocation(line: 71, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !82, line: 54, column: 3)
!133 = !DILocation(line: 75, column: 1, scope: !121)
!134 = distinct !DISubprogram(name: "initialize_audiodev", scope: !82, file: !82, line: 74, type: !122, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!135 = !DILocalVariable(name: "speed_local", scope: !134, file: !82, line: 76, type: !13)
!136 = !DILocation(line: 76, column: 7, scope: !134)
!137 = !DILocalVariable(name: "channels", scope: !134, file: !82, line: 77, type: !13)
!138 = !DILocation(line: 77, column: 7, scope: !134)
!139 = !DILocalVariable(name: "__cil_tmp7", scope: !134, file: !82, line: 82, type: !15)
!140 = !DILocation(line: 82, column: 9, scope: !134)
!141 = !DILocalVariable(name: "__cil_tmp8", scope: !134, file: !82, line: 83, type: !15)
!142 = !DILocation(line: 83, column: 9, scope: !134)
!143 = !DILocalVariable(name: "__cil_tmp9", scope: !134, file: !82, line: 84, type: !15)
!144 = !DILocation(line: 84, column: 9, scope: !134)
!145 = !DILocalVariable(name: "__cil_tmp10", scope: !134, file: !82, line: 85, type: !15)
!146 = !DILocation(line: 85, column: 9, scope: !134)
!147 = !DILocalVariable(name: "__cil_tmp11", scope: !134, file: !82, line: 86, type: !15)
!148 = !DILocation(line: 86, column: 9, scope: !134)
!149 = !DILocation(line: 76, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !134, file: !82, line: 88, column: 3)
!151 = !DILocation(line: 76, column: 15, scope: !150)
!152 = !DILocation(line: 77, column: 12, scope: !150)
!153 = !DILocation(line: 80, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !82, line: 80, column: 7)
!155 = !DILocation(line: 80, column: 7, scope: !150)
!156 = !DILocation(line: 81, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !82, line: 80, column: 20)
!158 = !DILocation(line: 83, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !82, line: 83, column: 7)
!160 = !DILocation(line: 83, column: 7, scope: !150)
!161 = !DILocation(line: 84, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !82, line: 83, column: 14)
!163 = !DILocation(line: 85, column: 3, scope: !162)
!164 = !DILocation(line: 83, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !82, line: 83, column: 7)
!166 = !DILocation(line: 84, column: 14, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !82, line: 83, column: 13)
!168 = !DILocation(line: 85, column: 3, scope: !167)
!169 = !DILocation(line: 86, column: 15, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !82, line: 87, column: 3)
!171 = distinct !DILexicalBlock(scope: !150, file: !82, line: 86, column: 3)
!172 = !DILocation(line: 86, column: 9, scope: !170)
!173 = !DILocalVariable(name: "tmp", scope: !134, file: !82, line: 79, type: !13)
!174 = !DILocation(line: 0, scope: !134)
!175 = !DILocation(line: 86, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !150, file: !82, line: 86, column: 7)
!177 = !DILocation(line: 86, column: 7, scope: !150)
!178 = !DILocation(line: 87, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !82, line: 88, column: 5)
!180 = distinct !DILexicalBlock(scope: !181, file: !82, line: 87, column: 5)
!181 = distinct !DILexicalBlock(scope: !176, file: !82, line: 86, column: 12)
!182 = !DILocation(line: 88, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !82, line: 89, column: 5)
!184 = !DILocation(line: 91, column: 19, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !82, line: 93, column: 3)
!186 = distinct !DILexicalBlock(scope: !150, file: !82, line: 92, column: 3)
!187 = !DILocation(line: 91, column: 13, scope: !185)
!188 = !DILocalVariable(name: "tmp___0", scope: !134, file: !82, line: 80, type: !13)
!189 = !DILocation(line: 91, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !150, file: !82, line: 91, column: 7)
!191 = !DILocation(line: 91, column: 7, scope: !150)
!192 = !DILocation(line: 92, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !82, line: 93, column: 5)
!194 = distinct !DILexicalBlock(scope: !195, file: !82, line: 92, column: 5)
!195 = distinct !DILexicalBlock(scope: !190, file: !82, line: 91, column: 16)
!196 = !DILocation(line: 93, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !82, line: 94, column: 5)
!198 = !DILocation(line: 96, column: 19, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !82, line: 98, column: 3)
!200 = distinct !DILexicalBlock(scope: !150, file: !82, line: 97, column: 3)
!201 = !DILocation(line: 96, column: 13, scope: !199)
!202 = !DILocalVariable(name: "tmp___1", scope: !134, file: !82, line: 81, type: !13)
!203 = !DILocation(line: 96, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !150, file: !82, line: 96, column: 7)
!205 = !DILocation(line: 96, column: 7, scope: !150)
!206 = !DILocation(line: 97, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !82, line: 98, column: 5)
!208 = distinct !DILexicalBlock(scope: !209, file: !82, line: 97, column: 5)
!209 = distinct !DILexicalBlock(scope: !204, file: !82, line: 96, column: 16)
!210 = !DILocation(line: 98, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !82, line: 99, column: 5)
!212 = !DILocation(line: 101, column: 10, scope: !150)
!213 = !DILocation(line: 101, column: 24, scope: !150)
!214 = !DILocation(line: 101, column: 22, scope: !150)
!215 = !DILocalVariable(name: "diff", scope: !134, file: !82, line: 78, type: !13)
!216 = !DILocation(line: 102, column: 12, scope: !217)
!217 = distinct !DILexicalBlock(scope: !150, file: !82, line: 102, column: 7)
!218 = !DILocation(line: 102, column: 7, scope: !150)
!219 = !DILocation(line: 103, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !82, line: 102, column: 17)
!221 = !DILocation(line: 104, column: 3, scope: !220)
!222 = !DILocation(line: 0, scope: !150)
!223 = !DILocation(line: 104, column: 12, scope: !224)
!224 = distinct !DILexicalBlock(scope: !150, file: !82, line: 104, column: 7)
!225 = !DILocation(line: 104, column: 7, scope: !150)
!226 = !DILocation(line: 105, column: 38, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !82, line: 106, column: 5)
!228 = distinct !DILexicalBlock(scope: !229, file: !82, line: 105, column: 5)
!229 = distinct !DILexicalBlock(scope: !224, file: !82, line: 104, column: 19)
!230 = !DILocation(line: 105, column: 5, scope: !227)
!231 = !DILocation(line: 107, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !82, line: 107, column: 5)
!233 = !DILocation(line: 109, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !150, file: !82, line: 109, column: 7)
!235 = !DILocation(line: 109, column: 7, scope: !150)
!236 = !DILocation(line: 110, column: 38, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !82, line: 111, column: 5)
!238 = distinct !DILexicalBlock(scope: !239, file: !82, line: 110, column: 5)
!239 = distinct !DILexicalBlock(scope: !234, file: !82, line: 109, column: 18)
!240 = !DILocation(line: 111, column: 13, scope: !237)
!241 = !DILocation(line: 110, column: 5, scope: !237)
!242 = !DILocation(line: 114, column: 3, scope: !239)
!243 = !DILocation(line: 113, column: 11, scope: !150)
!244 = !DILocation(line: 113, column: 9, scope: !150)
!245 = !DILocation(line: 114, column: 3, scope: !150)
!246 = !DILocation(line: 116, column: 1, scope: !134)
!247 = distinct !DISubprogram(name: "getvalue", scope: !82, file: !82, line: 116, type: !248, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250, !250, !13, !251, !13, !13}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!252 = !DILocalVariable(name: "arg", arg: 1, scope: !247, file: !82, line: 116, type: !250)
!253 = !DILocation(line: 0, scope: !247)
!254 = !DILocalVariable(name: "index", arg: 2, scope: !247, file: !82, line: 116, type: !250)
!255 = !DILocalVariable(name: "argc", arg: 3, scope: !247, file: !82, line: 116, type: !13)
!256 = !DILocalVariable(name: "argv", arg: 4, scope: !247, file: !82, line: 116, type: !251)
!257 = !DILocalVariable(name: "min", arg: 5, scope: !247, file: !82, line: 116, type: !13)
!258 = !DILocalVariable(name: "max", arg: 6, scope: !247, file: !82, line: 116, type: !13)
!259 = !DILocalVariable(name: "__cil_tmp7", scope: !247, file: !82, line: 118, type: !15)
!260 = !DILocation(line: 118, column: 9, scope: !247)
!261 = !DILocalVariable(name: "__cil_tmp8", scope: !247, file: !82, line: 119, type: !15)
!262 = !DILocation(line: 119, column: 9, scope: !247)
!263 = !DILocation(line: 120, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !82, line: 120, column: 7)
!265 = distinct !DILexicalBlock(scope: !247, file: !82, line: 121, column: 3)
!266 = !DILocation(line: 120, column: 22, scope: !264)
!267 = !DILocation(line: 120, column: 14, scope: !264)
!268 = !DILocation(line: 120, column: 7, scope: !265)
!269 = !DILocation(line: 121, column: 5, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !82, line: 122, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !82, line: 121, column: 5)
!272 = distinct !DILexicalBlock(scope: !264, file: !82, line: 120, column: 27)
!273 = !DILocation(line: 124, column: 3, scope: !272)
!274 = !DILocation(line: 123, column: 29, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !82, line: 126, column: 3)
!276 = distinct !DILexicalBlock(scope: !265, file: !82, line: 125, column: 3)
!277 = !DILocation(line: 123, column: 27, scope: !275)
!278 = !DILocation(line: 123, column: 22, scope: !275)
!279 = !DILocation(line: 123, column: 15, scope: !275)
!280 = !DILocation(line: 123, column: 10, scope: !275)
!281 = !DILocation(line: 123, column: 8, scope: !275)
!282 = !DILocation(line: 125, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !265, file: !82, line: 125, column: 7)
!284 = !DILocation(line: 125, column: 12, scope: !283)
!285 = !DILocation(line: 125, column: 7, scope: !265)
!286 = !DILocation(line: 126, column: 38, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !82, line: 127, column: 5)
!288 = distinct !DILexicalBlock(scope: !289, file: !82, line: 126, column: 5)
!289 = distinct !DILexicalBlock(scope: !283, file: !82, line: 125, column: 19)
!290 = !DILocation(line: 127, column: 22, scope: !287)
!291 = !DILocation(line: 127, column: 20, scope: !287)
!292 = !DILocation(line: 127, column: 13, scope: !287)
!293 = !DILocation(line: 127, column: 30, scope: !287)
!294 = !DILocation(line: 126, column: 5, scope: !287)
!295 = !DILocation(line: 128, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !82, line: 129, column: 5)
!297 = !DILocation(line: 125, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !283, file: !82, line: 125, column: 7)
!299 = !DILocation(line: 125, column: 12, scope: !298)
!300 = !DILocation(line: 126, column: 38, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !82, line: 127, column: 5)
!302 = distinct !DILexicalBlock(scope: !303, file: !82, line: 126, column: 5)
!303 = distinct !DILexicalBlock(scope: !298, file: !82, line: 125, column: 19)
!304 = !DILocation(line: 127, column: 22, scope: !301)
!305 = !DILocation(line: 127, column: 20, scope: !301)
!306 = !DILocation(line: 127, column: 13, scope: !301)
!307 = !DILocation(line: 127, column: 30, scope: !301)
!308 = !DILocation(line: 126, column: 5, scope: !301)
!309 = !DILocation(line: 128, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !302, file: !82, line: 129, column: 5)
!311 = !DILocation(line: 130, column: 12, scope: !265)
!312 = !DILocation(line: 131, column: 3, scope: !265)
!313 = distinct !DISubprogram(name: "main", scope: !82, file: !82, line: 133, type: !314, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !13, !251}
!316 = !DILocalVariable(name: "argc", arg: 1, scope: !313, file: !82, line: 133, type: !13)
!317 = !DILocation(line: 0, scope: !313)
!318 = !DILocalVariable(name: "argv", arg: 2, scope: !313, file: !82, line: 133, type: !251)
!319 = !DILocalVariable(name: "i", scope: !313, file: !82, line: 136, type: !13)
!320 = !DILocation(line: 136, column: 7, scope: !313)
!321 = !DILocalVariable(name: "__cil_tmp20", scope: !313, file: !82, line: 152, type: !15)
!322 = !DILocation(line: 152, column: 9, scope: !313)
!323 = !DILocalVariable(name: "__cil_tmp21", scope: !313, file: !82, line: 153, type: !15)
!324 = !DILocation(line: 153, column: 9, scope: !313)
!325 = !DILocalVariable(name: "__cil_tmp22", scope: !313, file: !82, line: 154, type: !15)
!326 = !DILocation(line: 154, column: 9, scope: !313)
!327 = !DILocalVariable(name: "__cil_tmp23", scope: !313, file: !82, line: 155, type: !15)
!328 = !DILocation(line: 155, column: 9, scope: !313)
!329 = !DILocalVariable(name: "__cil_tmp24", scope: !313, file: !82, line: 156, type: !15)
!330 = !DILocation(line: 156, column: 9, scope: !313)
!331 = !DILocalVariable(name: "__cil_tmp25", scope: !313, file: !82, line: 157, type: !15)
!332 = !DILocation(line: 157, column: 9, scope: !313)
!333 = !DILocalVariable(name: "__cil_tmp26", scope: !313, file: !82, line: 158, type: !15)
!334 = !DILocation(line: 158, column: 9, scope: !313)
!335 = !DILocalVariable(name: "__cil_tmp27", scope: !313, file: !82, line: 159, type: !15)
!336 = !DILocation(line: 159, column: 9, scope: !313)
!337 = !DILocalVariable(name: "__cil_tmp28", scope: !313, file: !82, line: 160, type: !15)
!338 = !DILocation(line: 160, column: 9, scope: !313)
!339 = !DILocalVariable(name: "__cil_tmp29", scope: !313, file: !82, line: 161, type: !15)
!340 = !DILocation(line: 161, column: 9, scope: !313)
!341 = !DILocalVariable(name: "__cil_tmp30", scope: !313, file: !82, line: 162, type: !15)
!342 = !DILocation(line: 162, column: 9, scope: !313)
!343 = !DILocalVariable(name: "__cil_tmp31", scope: !313, file: !82, line: 163, type: !15)
!344 = !DILocation(line: 163, column: 9, scope: !313)
!345 = !DILocalVariable(name: "__cil_tmp32", scope: !313, file: !82, line: 164, type: !15)
!346 = !DILocation(line: 164, column: 9, scope: !313)
!347 = !DILocalVariable(name: "__cil_tmp33", scope: !313, file: !82, line: 165, type: !15)
!348 = !DILocation(line: 165, column: 9, scope: !313)
!349 = !DILocalVariable(name: "__cil_tmp34", scope: !313, file: !82, line: 166, type: !15)
!350 = !DILocation(line: 166, column: 9, scope: !313)
!351 = !DILocalVariable(name: "__cil_tmp35", scope: !313, file: !82, line: 167, type: !15)
!352 = !DILocation(line: 167, column: 9, scope: !313)
!353 = !DILocation(line: 139, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !313, file: !82, line: 169, column: 3)
!355 = !DILocation(line: 139, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !82, line: 141, column: 3)
!357 = distinct !DILexicalBlock(scope: !354, file: !82, line: 140, column: 3)
!358 = !DILocation(line: 139, column: 13, scope: !356)
!359 = !DILocation(line: 139, column: 12, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !82, line: 139, column: 9)
!361 = distinct !DILexicalBlock(scope: !356, file: !82, line: 139, column: 13)
!362 = !DILocation(line: 139, column: 14, scope: !360)
!363 = !DILocation(line: 139, column: 9, scope: !361)
!364 = !DILocation(line: 139, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !82, line: 139, column: 23)
!366 = !DILocation(line: 140, column: 26, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !82, line: 140, column: 9)
!368 = !DILocation(line: 140, column: 24, scope: !367)
!369 = !DILocation(line: 140, column: 17, scope: !367)
!370 = !DILocation(line: 140, column: 29, scope: !367)
!371 = !DILocation(line: 140, column: 15, scope: !367)
!372 = !DILocation(line: 140, column: 9, scope: !367)
!373 = !DILocation(line: 140, column: 34, scope: !367)
!374 = !DILocation(line: 140, column: 9, scope: !361)
!375 = !DILocation(line: 142, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !82, line: 140, column: 41)
!377 = !DILocation(line: 140, column: 26, scope: !378)
!378 = distinct !DILexicalBlock(scope: !367, file: !82, line: 140, column: 9)
!379 = !DILocation(line: 140, column: 24, scope: !378)
!380 = !DILocation(line: 140, column: 17, scope: !378)
!381 = !DILocation(line: 140, column: 29, scope: !378)
!382 = !DILocation(line: 140, column: 15, scope: !378)
!383 = !DILocation(line: 140, column: 9, scope: !378)
!384 = !DILocation(line: 140, column: 34, scope: !378)
!385 = !DILocation(line: 142, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !82, line: 140, column: 41)
!387 = !DILocation(line: 144, column: 32, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !82, line: 145, column: 5)
!389 = distinct !DILexicalBlock(scope: !361, file: !82, line: 144, column: 5)
!390 = !DILocation(line: 144, column: 30, scope: !388)
!391 = !DILocation(line: 144, column: 23, scope: !388)
!392 = !DILocation(line: 144, column: 16, scope: !388)
!393 = !DILocalVariable(name: "tmp___11", scope: !313, file: !82, line: 149, type: !13)
!394 = !DILocation(line: 144, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !361, file: !82, line: 144, column: 9)
!396 = !DILocation(line: 144, column: 9, scope: !361)
!397 = !DILocation(line: 148, column: 34, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !82, line: 146, column: 7)
!399 = distinct !DILexicalBlock(scope: !400, file: !82, line: 145, column: 7)
!400 = distinct !DILexicalBlock(scope: !395, file: !82, line: 144, column: 19)
!401 = !DILocation(line: 148, column: 32, scope: !398)
!402 = !DILocation(line: 148, column: 25, scope: !398)
!403 = !DILocation(line: 148, column: 18, scope: !398)
!404 = !DILocalVariable(name: "tmp___10", scope: !313, file: !82, line: 148, type: !13)
!405 = !DILocation(line: 148, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !82, line: 148, column: 11)
!407 = !DILocation(line: 148, column: 11, scope: !400)
!408 = !DILocation(line: 152, column: 35, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !82, line: 150, column: 9)
!410 = distinct !DILexicalBlock(scope: !411, file: !82, line: 149, column: 9)
!411 = distinct !DILexicalBlock(scope: !406, file: !82, line: 148, column: 21)
!412 = !DILocation(line: 152, column: 33, scope: !409)
!413 = !DILocation(line: 152, column: 26, scope: !409)
!414 = !DILocation(line: 152, column: 19, scope: !409)
!415 = !DILocalVariable(name: "tmp___9", scope: !313, file: !82, line: 147, type: !13)
!416 = !DILocation(line: 152, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !82, line: 152, column: 13)
!418 = !DILocation(line: 152, column: 13, scope: !411)
!419 = !DILocation(line: 156, column: 37, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !82, line: 154, column: 11)
!421 = distinct !DILexicalBlock(scope: !422, file: !82, line: 153, column: 11)
!422 = distinct !DILexicalBlock(scope: !417, file: !82, line: 152, column: 22)
!423 = !DILocation(line: 156, column: 35, scope: !420)
!424 = !DILocation(line: 156, column: 28, scope: !420)
!425 = !DILocation(line: 156, column: 21, scope: !420)
!426 = !DILocalVariable(name: "tmp___8", scope: !313, file: !82, line: 146, type: !13)
!427 = !DILocation(line: 156, column: 15, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !82, line: 156, column: 15)
!429 = !DILocation(line: 156, column: 15, scope: !422)
!430 = !DILocation(line: 160, column: 39, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !82, line: 158, column: 13)
!432 = distinct !DILexicalBlock(scope: !433, file: !82, line: 157, column: 13)
!433 = distinct !DILexicalBlock(scope: !428, file: !82, line: 156, column: 24)
!434 = !DILocation(line: 160, column: 37, scope: !431)
!435 = !DILocation(line: 160, column: 30, scope: !431)
!436 = !DILocation(line: 160, column: 23, scope: !431)
!437 = !DILocalVariable(name: "tmp___7", scope: !313, file: !82, line: 145, type: !13)
!438 = !DILocation(line: 160, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !433, file: !82, line: 160, column: 17)
!440 = !DILocation(line: 160, column: 17, scope: !433)
!441 = !DILocation(line: 164, column: 41, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !82, line: 162, column: 15)
!443 = distinct !DILexicalBlock(scope: !444, file: !82, line: 161, column: 15)
!444 = distinct !DILexicalBlock(scope: !439, file: !82, line: 160, column: 26)
!445 = !DILocation(line: 164, column: 39, scope: !442)
!446 = !DILocation(line: 164, column: 32, scope: !442)
!447 = !DILocation(line: 164, column: 25, scope: !442)
!448 = !DILocalVariable(name: "tmp___6", scope: !313, file: !82, line: 144, type: !13)
!449 = !DILocation(line: 164, column: 19, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !82, line: 164, column: 19)
!451 = !DILocation(line: 164, column: 19, scope: !444)
!452 = !DILocation(line: 168, column: 43, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !82, line: 166, column: 17)
!454 = distinct !DILexicalBlock(scope: !455, file: !82, line: 165, column: 17)
!455 = distinct !DILexicalBlock(scope: !450, file: !82, line: 164, column: 28)
!456 = !DILocation(line: 168, column: 41, scope: !453)
!457 = !DILocation(line: 168, column: 34, scope: !453)
!458 = !DILocation(line: 168, column: 27, scope: !453)
!459 = !DILocalVariable(name: "tmp___5", scope: !313, file: !82, line: 143, type: !13)
!460 = !DILocation(line: 168, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !82, line: 168, column: 21)
!462 = !DILocation(line: 168, column: 21, scope: !455)
!463 = !DILocation(line: 172, column: 45, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !82, line: 170, column: 19)
!465 = distinct !DILexicalBlock(scope: !466, file: !82, line: 169, column: 19)
!466 = distinct !DILexicalBlock(scope: !461, file: !82, line: 168, column: 30)
!467 = !DILocation(line: 172, column: 43, scope: !464)
!468 = !DILocation(line: 172, column: 36, scope: !464)
!469 = !DILocation(line: 172, column: 29, scope: !464)
!470 = !DILocalVariable(name: "tmp___4", scope: !313, file: !82, line: 142, type: !13)
!471 = !DILocation(line: 172, column: 23, scope: !472)
!472 = distinct !DILexicalBlock(scope: !466, file: !82, line: 172, column: 23)
!473 = !DILocation(line: 172, column: 23, scope: !466)
!474 = !DILocation(line: 176, column: 47, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !82, line: 174, column: 21)
!476 = distinct !DILexicalBlock(scope: !477, file: !82, line: 173, column: 21)
!477 = distinct !DILexicalBlock(scope: !472, file: !82, line: 172, column: 32)
!478 = !DILocation(line: 176, column: 45, scope: !475)
!479 = !DILocation(line: 176, column: 38, scope: !475)
!480 = !DILocation(line: 176, column: 31, scope: !475)
!481 = !DILocalVariable(name: "tmp___3", scope: !313, file: !82, line: 141, type: !13)
!482 = !DILocation(line: 176, column: 25, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !82, line: 176, column: 25)
!484 = !DILocation(line: 176, column: 25, scope: !477)
!485 = !DILocation(line: 180, column: 49, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !82, line: 178, column: 23)
!487 = distinct !DILexicalBlock(scope: !488, file: !82, line: 177, column: 23)
!488 = distinct !DILexicalBlock(scope: !483, file: !82, line: 176, column: 34)
!489 = !DILocation(line: 180, column: 47, scope: !486)
!490 = !DILocation(line: 180, column: 40, scope: !486)
!491 = !DILocation(line: 180, column: 33, scope: !486)
!492 = !DILocalVariable(name: "tmp___2", scope: !313, file: !82, line: 140, type: !13)
!493 = !DILocation(line: 180, column: 27, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !82, line: 180, column: 27)
!495 = !DILocation(line: 180, column: 27, scope: !488)
!496 = !DILocation(line: 184, column: 51, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !82, line: 182, column: 25)
!498 = distinct !DILexicalBlock(scope: !499, file: !82, line: 181, column: 25)
!499 = distinct !DILexicalBlock(scope: !494, file: !82, line: 180, column: 36)
!500 = !DILocation(line: 184, column: 49, scope: !497)
!501 = !DILocation(line: 184, column: 42, scope: !497)
!502 = !DILocation(line: 184, column: 35, scope: !497)
!503 = !DILocalVariable(name: "tmp___1", scope: !313, file: !82, line: 139, type: !13)
!504 = !DILocation(line: 184, column: 29, scope: !505)
!505 = distinct !DILexicalBlock(scope: !499, file: !82, line: 184, column: 29)
!506 = !DILocation(line: 184, column: 29, scope: !499)
!507 = !DILocation(line: 188, column: 53, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !82, line: 186, column: 27)
!509 = distinct !DILexicalBlock(scope: !510, file: !82, line: 185, column: 27)
!510 = distinct !DILexicalBlock(scope: !505, file: !82, line: 184, column: 38)
!511 = !DILocation(line: 188, column: 51, scope: !508)
!512 = !DILocation(line: 188, column: 44, scope: !508)
!513 = !DILocation(line: 188, column: 37, scope: !508)
!514 = !DILocalVariable(name: "tmp___0", scope: !313, file: !82, line: 138, type: !13)
!515 = !DILocation(line: 188, column: 31, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !82, line: 188, column: 31)
!517 = !DILocation(line: 188, column: 31, scope: !510)
!518 = !DILocation(line: 192, column: 51, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !82, line: 190, column: 29)
!520 = distinct !DILexicalBlock(scope: !521, file: !82, line: 189, column: 29)
!521 = distinct !DILexicalBlock(scope: !516, file: !82, line: 188, column: 40)
!522 = !DILocation(line: 192, column: 49, scope: !519)
!523 = !DILocation(line: 192, column: 42, scope: !519)
!524 = !DILocation(line: 192, column: 35, scope: !519)
!525 = !DILocalVariable(name: "tmp", scope: !313, file: !82, line: 137, type: !13)
!526 = !DILocation(line: 192, column: 33, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !82, line: 192, column: 33)
!528 = !DILocation(line: 192, column: 33, scope: !521)
!529 = !DILocation(line: 199, column: 31, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !82, line: 194, column: 31)
!531 = distinct !DILexicalBlock(scope: !532, file: !82, line: 193, column: 31)
!532 = distinct !DILexicalBlock(scope: !527, file: !82, line: 192, column: 38)
!533 = !DILocation(line: 202, column: 29, scope: !532)
!534 = !DILocation(line: 193, column: 33, scope: !535)
!535 = distinct !DILexicalBlock(scope: !527, file: !82, line: 202, column: 36)
!536 = !DILocation(line: 194, column: 35, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !82, line: 194, column: 35)
!538 = !DILocation(line: 194, column: 37, scope: !537)
!539 = !DILocation(line: 194, column: 35, scope: !535)
!540 = !DILocation(line: 195, column: 33, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !82, line: 196, column: 33)
!542 = distinct !DILexicalBlock(scope: !543, file: !82, line: 195, column: 33)
!543 = distinct !DILexicalBlock(scope: !537, file: !82, line: 194, column: 46)
!544 = !DILocation(line: 198, column: 31, scope: !543)
!545 = !DILocation(line: 196, column: 49, scope: !535)
!546 = !DILocation(line: 196, column: 47, scope: !535)
!547 = !DILocation(line: 196, column: 40, scope: !535)
!548 = !DILocation(line: 196, column: 38, scope: !535)
!549 = !DILocation(line: 198, column: 27, scope: !521)
!550 = !DILocation(line: 189, column: 29, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !82, line: 200, column: 29)
!552 = distinct !DILexicalBlock(scope: !553, file: !82, line: 199, column: 29)
!553 = distinct !DILexicalBlock(scope: !516, file: !82, line: 198, column: 34)
!554 = !DILocation(line: 193, column: 25, scope: !510)
!555 = !DILocation(line: 185, column: 27, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !82, line: 195, column: 27)
!557 = distinct !DILexicalBlock(scope: !558, file: !82, line: 194, column: 27)
!558 = distinct !DILexicalBlock(scope: !505, file: !82, line: 193, column: 32)
!559 = !DILocation(line: 189, column: 23, scope: !499)
!560 = !DILocation(line: 181, column: 25, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !82, line: 191, column: 25)
!562 = distinct !DILexicalBlock(scope: !563, file: !82, line: 190, column: 25)
!563 = distinct !DILexicalBlock(scope: !494, file: !82, line: 189, column: 30)
!564 = !DILocation(line: 185, column: 21, scope: !488)
!565 = !DILocation(line: 177, column: 23, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !82, line: 187, column: 23)
!567 = distinct !DILexicalBlock(scope: !568, file: !82, line: 186, column: 23)
!568 = distinct !DILexicalBlock(scope: !483, file: !82, line: 185, column: 28)
!569 = !DILocation(line: 181, column: 19, scope: !477)
!570 = !DILocation(line: 173, column: 21, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !82, line: 183, column: 21)
!572 = distinct !DILexicalBlock(scope: !573, file: !82, line: 182, column: 21)
!573 = distinct !DILexicalBlock(scope: !472, file: !82, line: 181, column: 26)
!574 = !DILocation(line: 177, column: 17, scope: !466)
!575 = !DILocation(line: 169, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !82, line: 179, column: 19)
!577 = distinct !DILexicalBlock(scope: !578, file: !82, line: 178, column: 19)
!578 = distinct !DILexicalBlock(scope: !461, file: !82, line: 177, column: 24)
!579 = !DILocation(line: 173, column: 15, scope: !455)
!580 = !DILocation(line: 165, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !82, line: 175, column: 17)
!582 = distinct !DILexicalBlock(scope: !583, file: !82, line: 174, column: 17)
!583 = distinct !DILexicalBlock(scope: !450, file: !82, line: 173, column: 22)
!584 = !DILocation(line: 169, column: 13, scope: !444)
!585 = !DILocation(line: 161, column: 15, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !82, line: 171, column: 15)
!587 = distinct !DILexicalBlock(scope: !588, file: !82, line: 170, column: 15)
!588 = distinct !DILexicalBlock(scope: !439, file: !82, line: 169, column: 20)
!589 = !DILocation(line: 165, column: 11, scope: !433)
!590 = !DILocation(line: 157, column: 13, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !82, line: 167, column: 13)
!592 = distinct !DILexicalBlock(scope: !593, file: !82, line: 166, column: 13)
!593 = distinct !DILexicalBlock(scope: !428, file: !82, line: 165, column: 18)
!594 = !DILocation(line: 161, column: 9, scope: !422)
!595 = !DILocation(line: 153, column: 11, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !82, line: 163, column: 11)
!597 = distinct !DILexicalBlock(scope: !598, file: !82, line: 162, column: 11)
!598 = distinct !DILexicalBlock(scope: !417, file: !82, line: 161, column: 16)
!599 = !DILocation(line: 157, column: 7, scope: !411)
!600 = !DILocation(line: 149, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !82, line: 159, column: 9)
!602 = distinct !DILexicalBlock(scope: !603, file: !82, line: 158, column: 9)
!603 = distinct !DILexicalBlock(scope: !406, file: !82, line: 157, column: 14)
!604 = !DILocation(line: 153, column: 5, scope: !400)
!605 = !DILocation(line: 145, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !82, line: 155, column: 7)
!607 = distinct !DILexicalBlock(scope: !608, file: !82, line: 154, column: 7)
!608 = distinct !DILexicalBlock(scope: !395, file: !82, line: 153, column: 12)
!609 = !DILocation(line: 139, column: 7, scope: !361)
!610 = distinct !{!610, !355, !611}
!611 = !DILocation(line: 140, column: 3, scope: !356)
!612 = !DILocation(line: 142, column: 3, scope: !356)
!613 = !DILocation(line: 202, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !354, file: !82, line: 202, column: 7)
!615 = !DILocation(line: 202, column: 9, scope: !614)
!616 = !DILocation(line: 202, column: 7, scope: !354)
!617 = !DILocation(line: 203, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !82, line: 204, column: 5)
!619 = distinct !DILexicalBlock(scope: !620, file: !82, line: 203, column: 5)
!620 = distinct !DILexicalBlock(scope: !614, file: !82, line: 202, column: 18)
!621 = !DILocation(line: 206, column: 3, scope: !620)
!622 = !DILocation(line: 205, column: 21, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !82, line: 208, column: 3)
!624 = distinct !DILexicalBlock(scope: !354, file: !82, line: 207, column: 3)
!625 = !DILocation(line: 205, column: 14, scope: !623)
!626 = !DILocalVariable(name: "tmp___12", scope: !313, file: !82, line: 150, type: !13)
!627 = !DILocation(line: 205, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !354, file: !82, line: 205, column: 7)
!629 = !DILocation(line: 205, column: 7, scope: !354)
!630 = !DILocation(line: 208, column: 31, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !82, line: 207, column: 5)
!632 = distinct !DILexicalBlock(scope: !633, file: !82, line: 206, column: 5)
!633 = distinct !DILexicalBlock(scope: !628, file: !82, line: 205, column: 17)
!634 = !DILocation(line: 208, column: 10, scope: !631)
!635 = !DILocation(line: 208, column: 8, scope: !631)
!636 = !DILocation(line: 209, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !82, line: 209, column: 9)
!638 = !DILocation(line: 209, column: 12, scope: !637)
!639 = !DILocation(line: 209, column: 9, scope: !633)
!640 = !DILocation(line: 210, column: 30, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !82, line: 211, column: 7)
!642 = distinct !DILexicalBlock(scope: !643, file: !82, line: 210, column: 7)
!643 = distinct !DILexicalBlock(scope: !637, file: !82, line: 209, column: 17)
!644 = !DILocation(line: 210, column: 7, scope: !641)
!645 = !DILocation(line: 211, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !82, line: 212, column: 7)
!647 = !DILocation(line: 215, column: 3, scope: !633)
!648 = !DILocation(line: 206, column: 8, scope: !649)
!649 = distinct !DILexicalBlock(scope: !628, file: !82, line: 215, column: 10)
!650 = !DILocation(line: 216, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !82, line: 216, column: 7)
!652 = distinct !DILexicalBlock(scope: !354, file: !82, line: 208, column: 3)
!653 = !DILocation(line: 216, column: 12, scope: !651)
!654 = !DILocation(line: 216, column: 7, scope: !652)
!655 = !DILocation(line: 216, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !82, line: 216, column: 18)
!657 = !DILocation(line: 219, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !652, file: !82, line: 219, column: 7)
!659 = !DILocation(line: 219, column: 12, scope: !658)
!660 = !DILocation(line: 219, column: 7, scope: !652)
!661 = !DILocation(line: 219, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !82, line: 219, column: 19)
!663 = !DILocation(line: 222, column: 3, scope: !652)
!664 = !DILocation(line: 217, column: 10, scope: !652)
!665 = !DILocation(line: 218, column: 3, scope: !652)
!666 = !DILocation(line: 220, column: 10, scope: !652)
!667 = !DILocation(line: 221, column: 3, scope: !652)
!668 = !DILocation(line: 223, column: 36, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !82, line: 224, column: 3)
!670 = distinct !DILexicalBlock(scope: !652, file: !82, line: 223, column: 3)
!671 = !DILocation(line: 223, column: 3, scope: !669)
!672 = !DILocation(line: 224, column: 3, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !82, line: 225, column: 3)
!674 = !DILocation(line: 227, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !82, line: 230, column: 3)
!676 = distinct !DILexicalBlock(scope: !354, file: !82, line: 229, column: 3)
!677 = !DILocation(line: 229, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !82, line: 229, column: 3)
!679 = !DILocation(line: 230, column: 30, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !82, line: 231, column: 3)
!681 = !DILocation(line: 230, column: 14, scope: !680)
!682 = !DILocalVariable(name: "tmp___13", scope: !313, file: !82, line: 151, type: !58)
!683 = !DILocation(line: 230, column: 7, scope: !676)
!684 = !DILocation(line: 231, column: 23, scope: !685)
!685 = distinct !DILexicalBlock(scope: !354, file: !82, line: 231, column: 7)
!686 = !DILocation(line: 231, column: 7, scope: !685)
!687 = !DILocation(line: 231, column: 27, scope: !685)
!688 = !DILocation(line: 231, column: 7, scope: !354)
!689 = !DILocation(line: 232, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !82, line: 233, column: 5)
!691 = distinct !DILexicalBlock(scope: !692, file: !82, line: 232, column: 5)
!692 = distinct !DILexicalBlock(scope: !685, file: !82, line: 231, column: 59)
!693 = !DILocation(line: 233, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !82, line: 234, column: 5)
!695 = !DILocation(line: 236, column: 10, scope: !354)
!696 = !DILocation(line: 237, column: 3, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !82, line: 238, column: 3)
!698 = distinct !DILexicalBlock(scope: !354, file: !82, line: 237, column: 3)
!699 = !DILocation(line: 237, column: 13, scope: !697)
!700 = !DILocation(line: 237, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !82, line: 237, column: 9)
!702 = distinct !DILexicalBlock(scope: !697, file: !82, line: 237, column: 13)
!703 = !DILocation(line: 237, column: 14, scope: !701)
!704 = !DILocation(line: 237, column: 9, scope: !702)
!705 = !DILocation(line: 237, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !82, line: 237, column: 23)
!707 = !DILocation(line: 238, column: 19, scope: !702)
!708 = !DILocation(line: 238, column: 17, scope: !702)
!709 = !DILocation(line: 238, column: 10, scope: !702)
!710 = !DILocalVariable(name: "cp", scope: !313, file: !82, line: 135, type: !15)
!711 = !DILocation(line: 239, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !702, file: !82, line: 239, column: 9)
!713 = !DILocation(line: 239, column: 9, scope: !702)
!714 = !DILocation(line: 240, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !82, line: 241, column: 7)
!716 = distinct !DILexicalBlock(scope: !717, file: !82, line: 240, column: 7)
!717 = distinct !DILexicalBlock(scope: !712, file: !82, line: 239, column: 17)
!718 = !DILocation(line: 240, column: 7, scope: !715)
!719 = !DILocation(line: 243, column: 5, scope: !717)
!720 = !DILocation(line: 241, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !82, line: 245, column: 5)
!722 = distinct !DILexicalBlock(scope: !702, file: !82, line: 244, column: 5)
!723 = !DILocation(line: 0, scope: !702)
!724 = !DILocation(line: 241, column: 15, scope: !721)
!725 = !DILocation(line: 241, column: 11, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !82, line: 241, column: 11)
!727 = distinct !DILexicalBlock(scope: !721, file: !82, line: 241, column: 15)
!728 = !DILocation(line: 241, column: 11, scope: !727)
!729 = !DILocation(line: 241, column: 15, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !82, line: 241, column: 13)
!731 = distinct !DILexicalBlock(scope: !726, file: !82, line: 241, column: 15)
!732 = !DILocation(line: 241, column: 13, scope: !731)
!733 = !DILocation(line: 241, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !82, line: 241, column: 20)
!735 = !DILocation(line: 243, column: 7, scope: !731)
!736 = !DILocation(line: 241, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !726, file: !82, line: 243, column: 14)
!738 = !DILocation(line: 242, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !727, file: !82, line: 242, column: 11)
!740 = !DILocation(line: 242, column: 11, scope: !739)
!741 = !DILocation(line: 242, column: 21, scope: !739)
!742 = !DILocation(line: 242, column: 11, scope: !727)
!743 = !DILocation(line: 243, column: 16, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !82, line: 244, column: 9)
!745 = distinct !DILexicalBlock(scope: !746, file: !82, line: 243, column: 9)
!746 = distinct !DILexicalBlock(scope: !739, file: !82, line: 242, column: 28)
!747 = !DILocation(line: 243, column: 9, scope: !744)
!748 = !DILocation(line: 246, column: 7, scope: !746)
!749 = !DILocation(line: 242, column: 17, scope: !750)
!750 = distinct !DILexicalBlock(scope: !739, file: !82, line: 242, column: 11)
!751 = !DILocation(line: 242, column: 11, scope: !750)
!752 = !DILocation(line: 242, column: 21, scope: !750)
!753 = !DILocation(line: 243, column: 16, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !82, line: 244, column: 9)
!755 = distinct !DILexicalBlock(scope: !756, file: !82, line: 243, column: 9)
!756 = distinct !DILexicalBlock(scope: !750, file: !82, line: 242, column: 28)
!757 = !DILocation(line: 243, column: 9, scope: !754)
!758 = !DILocation(line: 246, column: 7, scope: !756)
!759 = !DILocation(line: 245, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !82, line: 245, column: 13)
!761 = distinct !DILexicalBlock(scope: !750, file: !82, line: 246, column: 14)
!762 = !DILocation(line: 245, column: 13, scope: !761)
!763 = !DILocation(line: 246, column: 18, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !82, line: 247, column: 11)
!765 = distinct !DILexicalBlock(scope: !766, file: !82, line: 246, column: 11)
!766 = distinct !DILexicalBlock(scope: !760, file: !82, line: 245, column: 21)
!767 = !DILocation(line: 246, column: 11, scope: !764)
!768 = !DILocation(line: 249, column: 9, scope: !766)
!769 = !DILocation(line: 247, column: 26, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !82, line: 251, column: 9)
!771 = distinct !DILexicalBlock(scope: !761, file: !82, line: 250, column: 9)
!772 = !DILocation(line: 247, column: 20, scope: !770)
!773 = !DILocation(line: 247, column: 9, scope: !770)
!774 = !DILocation(line: 249, column: 10, scope: !727)
!775 = distinct !{!775, !720, !776}
!776 = !DILocation(line: 250, column: 5, scope: !721)
!777 = !DILocation(line: 252, column: 5, scope: !721)
!778 = !DILocation(line: 237, column: 7, scope: !702)
!779 = distinct !{!779, !696, !780}
!780 = !DILocation(line: 238, column: 3, scope: !697)
!781 = !DILocation(line: 240, column: 3, scope: !697)
!782 = !DILocation(line: 252, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !354, file: !82, line: 252, column: 7)
!784 = !DILocation(line: 252, column: 14, scope: !783)
!785 = !DILocation(line: 252, column: 7, scope: !354)
!786 = !DILocation(line: 264, column: 11, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !82, line: 254, column: 5)
!788 = distinct !DILexicalBlock(scope: !789, file: !82, line: 253, column: 5)
!789 = distinct !DILexicalBlock(scope: !783, file: !82, line: 252, column: 19)
!790 = !DILocation(line: 264, column: 15, scope: !787)
!791 = !DILocation(line: 264, column: 20, scope: !787)
!792 = !DILocation(line: 264, column: 5, scope: !787)
!793 = !DILocation(line: 267, column: 3, scope: !789)
!794 = !DILocation(line: 266, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !82, line: 269, column: 3)
!796 = distinct !DILexicalBlock(scope: !354, file: !82, line: 268, column: 3)
!797 = !DILocation(line: 270, column: 1, scope: !313)
!798 = distinct !DISubprogram(name: "gen_costab", scope: !82, file: !82, line: 438, type: !122, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!799 = !DILocalVariable(name: "__cil_tmp5", scope: !798, file: !82, line: 444, type: !15)
!800 = !DILocation(line: 444, column: 9, scope: !798)
!801 = !DILocation(line: 443, column: 42, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !82, line: 448, column: 3)
!803 = distinct !DILexicalBlock(scope: !804, file: !82, line: 447, column: 3)
!804 = distinct !DILexicalBlock(scope: !798, file: !82, line: 446, column: 3)
!805 = !DILocation(line: 443, column: 26, scope: !802)
!806 = !DILocation(line: 443, column: 50, scope: !802)
!807 = !DILocation(line: 443, column: 16, scope: !802)
!808 = !DILocation(line: 443, column: 9, scope: !802)
!809 = !DILocalVariable(name: "tmp", scope: !798, file: !82, line: 442, type: !58)
!810 = !DILocation(line: 0, scope: !798)
!811 = !DILocation(line: 443, column: 12, scope: !803)
!812 = !DILocation(line: 443, column: 10, scope: !803)
!813 = !DILocation(line: 444, column: 23, scope: !814)
!814 = distinct !DILexicalBlock(scope: !804, file: !82, line: 444, column: 7)
!815 = !DILocation(line: 444, column: 7, scope: !814)
!816 = !DILocation(line: 444, column: 30, scope: !814)
!817 = !DILocation(line: 444, column: 7, scope: !804)
!818 = !DILocation(line: 445, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !82, line: 446, column: 5)
!820 = distinct !DILexicalBlock(scope: !821, file: !82, line: 445, column: 5)
!821 = distinct !DILexicalBlock(scope: !814, file: !82, line: 444, column: 62)
!822 = !DILocation(line: 446, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !82, line: 447, column: 5)
!824 = !DILocalVariable(name: "i", scope: !798, file: !82, line: 440, type: !13)
!825 = !DILocation(line: 449, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !82, line: 451, column: 3)
!827 = distinct !DILexicalBlock(scope: !804, file: !82, line: 450, column: 3)
!828 = !DILocation(line: 0, scope: !804)
!829 = !DILocation(line: 449, column: 13, scope: !826)
!830 = !DILocation(line: 449, column: 16, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !82, line: 449, column: 9)
!832 = distinct !DILexicalBlock(scope: !826, file: !82, line: 449, column: 13)
!833 = !DILocation(line: 449, column: 14, scope: !831)
!834 = !DILocation(line: 449, column: 9, scope: !832)
!835 = !DILocation(line: 449, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !82, line: 449, column: 26)
!837 = !DILocation(line: 450, column: 49, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !82, line: 451, column: 5)
!839 = !DILocation(line: 450, column: 47, scope: !838)
!840 = !DILocalVariable(name: "d", scope: !798, file: !82, line: 441, type: !78)
!841 = !DILocation(line: 451, column: 32, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !82, line: 451, column: 5)
!843 = !DILocation(line: 451, column: 23, scope: !842)
!844 = !DILocation(line: 451, column: 21, scope: !842)
!845 = !DILocation(line: 451, column: 15, scope: !842)
!846 = !DILocalVariable(name: "tmp___0", scope: !798, file: !82, line: 443, type: !78)
!847 = !DILocation(line: 451, column: 48, scope: !838)
!848 = !DILocation(line: 451, column: 39, scope: !838)
!849 = !DILocation(line: 451, column: 55, scope: !838)
!850 = !DILocation(line: 451, column: 63, scope: !838)
!851 = !DILocation(line: 451, column: 73, scope: !838)
!852 = !DILocation(line: 451, column: 30, scope: !838)
!853 = !DILocation(line: 451, column: 21, scope: !838)
!854 = !DILocation(line: 451, column: 7, scope: !838)
!855 = !DILocation(line: 451, column: 14, scope: !838)
!856 = !DILocation(line: 451, column: 19, scope: !838)
!857 = !DILocation(line: 449, column: 7, scope: !838)
!858 = distinct !{!858, !825, !859}
!859 = !DILocation(line: 451, column: 3, scope: !826)
!860 = !DILocation(line: 453, column: 3, scope: !826)
!861 = !DILocation(line: 453, column: 3, scope: !804)
!862 = distinct !DISubprogram(name: "silent", scope: !82, file: !82, line: 324, type: !863, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !13}
!865 = !DILocalVariable(name: "msec", arg: 1, scope: !862, file: !82, line: 324, type: !13)
!866 = !DILocation(line: 0, scope: !862)
!867 = !DILocation(line: 327, column: 12, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !82, line: 327, column: 7)
!869 = distinct !DILexicalBlock(scope: !862, file: !82, line: 334, column: 3)
!870 = !DILocation(line: 327, column: 7, scope: !869)
!871 = !DILocation(line: 328, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !82, line: 327, column: 18)
!873 = !DILocation(line: 332, column: 18, scope: !869)
!874 = !DILocation(line: 332, column: 16, scope: !869)
!875 = !DILocation(line: 332, column: 25, scope: !869)
!876 = !DILocalVariable(name: "time", scope: !862, file: !82, line: 326, type: !13)
!877 = !DILocation(line: 333, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !82, line: 334, column: 3)
!879 = distinct !DILexicalBlock(scope: !869, file: !82, line: 333, column: 3)
!880 = !DILocation(line: 0, scope: !869)
!881 = !DILocation(line: 333, column: 13, scope: !878)
!882 = !DILocation(line: 333, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !82, line: 333, column: 13)
!884 = !DILocation(line: 333, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !883, file: !82, line: 333, column: 9)
!886 = !DILocation(line: 333, column: 9, scope: !883)
!887 = !DILocation(line: 333, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !82, line: 333, column: 24)
!889 = !DILocation(line: 334, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !883, file: !82, line: 334, column: 9)
!891 = !DILocation(line: 334, column: 16, scope: !890)
!892 = !DILocation(line: 334, column: 9, scope: !883)
!893 = !DILocation(line: 335, column: 13, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !82, line: 334, column: 22)
!895 = !DILocalVariable(name: "tmp", scope: !862, file: !82, line: 327, type: !13)
!896 = !DILocation(line: 335, column: 14, scope: !894)
!897 = !DILocation(line: 335, column: 9, scope: !894)
!898 = !DILocation(line: 335, column: 20, scope: !894)
!899 = !DILocation(line: 336, column: 5, scope: !894)
!900 = !DILocation(line: 338, column: 17, scope: !901)
!901 = distinct !DILexicalBlock(scope: !890, file: !82, line: 336, column: 12)
!902 = !DILocalVariable(name: "tmp___0", scope: !862, file: !82, line: 328, type: !13)
!903 = !DILocation(line: 338, column: 14, scope: !901)
!904 = !DILocation(line: 338, column: 9, scope: !901)
!905 = !DILocation(line: 338, column: 13, scope: !901)
!906 = !DILocation(line: 338, column: 24, scope: !901)
!907 = !DILocation(line: 339, column: 17, scope: !901)
!908 = !DILocalVariable(name: "tmp___1", scope: !862, file: !82, line: 329, type: !13)
!909 = !DILocation(line: 339, column: 14, scope: !901)
!910 = !DILocation(line: 339, column: 9, scope: !901)
!911 = !DILocation(line: 339, column: 13, scope: !901)
!912 = !DILocation(line: 339, column: 24, scope: !901)
!913 = !DILocation(line: 341, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !883, file: !82, line: 341, column: 9)
!915 = !DILocation(line: 341, column: 9, scope: !883)
!916 = !DILocation(line: 341, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !82, line: 341, column: 16)
!918 = !DILocation(line: 341, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !82, line: 341, column: 9)
!920 = !DILocation(line: 341, column: 15, scope: !919)
!921 = !DILocation(line: 342, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !82, line: 342, column: 11)
!923 = distinct !DILexicalBlock(scope: !919, file: !82, line: 341, column: 15)
!924 = !DILocation(line: 342, column: 18, scope: !922)
!925 = !DILocation(line: 342, column: 11, scope: !923)
!926 = !DILocation(line: 343, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !82, line: 342, column: 24)
!928 = !DILocalVariable(name: "tmp___2", scope: !862, file: !82, line: 330, type: !13)
!929 = !DILocation(line: 343, column: 16, scope: !927)
!930 = !DILocation(line: 343, column: 11, scope: !927)
!931 = !DILocation(line: 343, column: 15, scope: !927)
!932 = !DILocation(line: 343, column: 26, scope: !927)
!933 = !DILocation(line: 344, column: 7, scope: !927)
!934 = !DILocation(line: 346, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !922, file: !82, line: 344, column: 14)
!936 = !DILocalVariable(name: "tmp___3", scope: !862, file: !82, line: 331, type: !13)
!937 = !DILocation(line: 346, column: 16, scope: !935)
!938 = !DILocation(line: 346, column: 11, scope: !935)
!939 = !DILocation(line: 346, column: 15, scope: !935)
!940 = !DILocation(line: 346, column: 26, scope: !935)
!941 = !DILocation(line: 347, column: 19, scope: !935)
!942 = !DILocalVariable(name: "tmp___4", scope: !862, file: !82, line: 332, type: !13)
!943 = !DILocation(line: 347, column: 16, scope: !935)
!944 = !DILocation(line: 347, column: 11, scope: !935)
!945 = !DILocation(line: 347, column: 15, scope: !935)
!946 = !DILocation(line: 347, column: 26, scope: !935)
!947 = !DILocation(line: 349, column: 5, scope: !923)
!948 = !DILocation(line: 350, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !883, file: !82, line: 350, column: 9)
!950 = !DILocation(line: 350, column: 19, scope: !949)
!951 = !DILocation(line: 350, column: 16, scope: !949)
!952 = !DILocation(line: 350, column: 9, scope: !883)
!953 = !DILocation(line: 351, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !82, line: 352, column: 7)
!955 = distinct !DILexicalBlock(scope: !956, file: !82, line: 351, column: 7)
!956 = distinct !DILexicalBlock(scope: !949, file: !82, line: 350, column: 28)
!957 = !DILocation(line: 351, column: 17, scope: !954)
!958 = !DILocation(line: 351, column: 22, scope: !954)
!959 = !DILocation(line: 351, column: 7, scope: !954)
!960 = !DILocation(line: 352, column: 14, scope: !955)
!961 = !DILocation(line: 354, column: 5, scope: !956)
!962 = distinct !{!962, !877, !963}
!963 = !DILocation(line: 355, column: 3, scope: !878)
!964 = !DILocation(line: 357, column: 3, scope: !878)
!965 = !DILocation(line: 355, column: 10, scope: !869)
!966 = !DILocation(line: 356, column: 3, scope: !869)
!967 = !DILocation(line: 358, column: 1, scope: !862)
!968 = distinct !DISubprogram(name: "dial_digit", scope: !82, file: !82, line: 269, type: !863, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!969 = !DILocalVariable(name: "c", arg: 1, scope: !968, file: !82, line: 269, type: !13)
!970 = !DILocation(line: 0, scope: !968)
!971 = !DILocation(line: 273, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !82, line: 273, column: 7)
!973 = distinct !DILexicalBlock(scope: !974, file: !82, line: 274, column: 3)
!974 = distinct !DILexicalBlock(scope: !968, file: !82, line: 273, column: 3)
!975 = !DILocation(line: 273, column: 7, scope: !973)
!976 = !DILocation(line: 273, column: 5, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !82, line: 273, column: 16)
!978 = !DILocation(line: 276, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !82, line: 276, column: 7)
!980 = !DILocation(line: 276, column: 7, scope: !973)
!981 = !DILocation(line: 276, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !82, line: 276, column: 16)
!983 = !DILocation(line: 279, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !973, file: !82, line: 279, column: 7)
!985 = !DILocation(line: 279, column: 7, scope: !973)
!986 = !DILocation(line: 279, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !82, line: 279, column: 16)
!988 = !DILocation(line: 282, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !973, file: !82, line: 282, column: 7)
!990 = !DILocation(line: 282, column: 7, scope: !973)
!991 = !DILocation(line: 282, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !82, line: 282, column: 16)
!993 = !DILocation(line: 285, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !973, file: !82, line: 285, column: 7)
!995 = !DILocation(line: 285, column: 7, scope: !973)
!996 = !DILocation(line: 285, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !82, line: 285, column: 16)
!998 = !DILocation(line: 288, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !973, file: !82, line: 288, column: 7)
!1000 = !DILocation(line: 288, column: 7, scope: !973)
!1001 = !DILocation(line: 288, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !82, line: 288, column: 16)
!1003 = !DILocation(line: 291, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !973, file: !82, line: 291, column: 7)
!1005 = !DILocation(line: 291, column: 7, scope: !973)
!1006 = !DILocation(line: 291, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !82, line: 291, column: 16)
!1008 = !DILocation(line: 294, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !973, file: !82, line: 294, column: 7)
!1010 = !DILocation(line: 294, column: 7, scope: !973)
!1011 = !DILocation(line: 294, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !82, line: 294, column: 16)
!1013 = !DILocation(line: 297, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !973, file: !82, line: 297, column: 7)
!1015 = !DILocation(line: 297, column: 7, scope: !973)
!1016 = !DILocation(line: 297, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !82, line: 297, column: 16)
!1018 = !DILocation(line: 300, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !973, file: !82, line: 300, column: 7)
!1020 = !DILocation(line: 300, column: 7, scope: !973)
!1021 = !DILocation(line: 300, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !82, line: 300, column: 16)
!1023 = !DILocation(line: 303, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !973, file: !82, line: 303, column: 7)
!1025 = !DILocation(line: 303, column: 7, scope: !973)
!1026 = !DILocation(line: 303, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !82, line: 303, column: 16)
!1028 = !DILocation(line: 306, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !973, file: !82, line: 306, column: 7)
!1030 = !DILocation(line: 306, column: 7, scope: !973)
!1031 = !DILocation(line: 306, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !82, line: 306, column: 16)
!1033 = !DILocation(line: 309, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !973, file: !82, line: 309, column: 7)
!1035 = !DILocation(line: 309, column: 7, scope: !973)
!1036 = !DILocation(line: 309, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !82, line: 309, column: 16)
!1038 = !DILocation(line: 312, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !973, file: !82, line: 312, column: 7)
!1040 = !DILocation(line: 312, column: 7, scope: !973)
!1041 = !DILocation(line: 312, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !82, line: 312, column: 16)
!1043 = !DILocation(line: 315, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !973, file: !82, line: 315, column: 7)
!1045 = !DILocation(line: 315, column: 7, scope: !973)
!1046 = !DILocation(line: 315, column: 5, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !82, line: 315, column: 16)
!1048 = !DILocation(line: 318, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !973, file: !82, line: 318, column: 7)
!1050 = !DILocation(line: 318, column: 7, scope: !973)
!1051 = !DILocation(line: 318, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !82, line: 318, column: 16)
!1053 = !DILocation(line: 272, column: 3, scope: !973)
!1054 = !DILocation(line: 274, column: 19, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !82, line: 275, column: 3)
!1056 = distinct !DILexicalBlock(scope: !973, file: !82, line: 274, column: 3)
!1057 = !DILocation(line: 274, column: 3, scope: !1055)
!1058 = !DILocation(line: 275, column: 3, scope: !973)
!1059 = !DILocation(line: 277, column: 19, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !82, line: 278, column: 3)
!1061 = distinct !DILexicalBlock(scope: !973, file: !82, line: 277, column: 3)
!1062 = !DILocation(line: 277, column: 3, scope: !1060)
!1063 = !DILocation(line: 278, column: 3, scope: !973)
!1064 = !DILocation(line: 280, column: 19, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !82, line: 281, column: 3)
!1066 = distinct !DILexicalBlock(scope: !973, file: !82, line: 280, column: 3)
!1067 = !DILocation(line: 280, column: 3, scope: !1065)
!1068 = !DILocation(line: 281, column: 3, scope: !973)
!1069 = !DILocation(line: 283, column: 19, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !82, line: 284, column: 3)
!1071 = distinct !DILexicalBlock(scope: !973, file: !82, line: 283, column: 3)
!1072 = !DILocation(line: 283, column: 3, scope: !1070)
!1073 = !DILocation(line: 284, column: 3, scope: !973)
!1074 = !DILocation(line: 286, column: 19, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !82, line: 287, column: 3)
!1076 = distinct !DILexicalBlock(scope: !973, file: !82, line: 286, column: 3)
!1077 = !DILocation(line: 286, column: 3, scope: !1075)
!1078 = !DILocation(line: 287, column: 3, scope: !973)
!1079 = !DILocation(line: 289, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !82, line: 290, column: 3)
!1081 = distinct !DILexicalBlock(scope: !973, file: !82, line: 289, column: 3)
!1082 = !DILocation(line: 289, column: 3, scope: !1080)
!1083 = !DILocation(line: 290, column: 3, scope: !973)
!1084 = !DILocation(line: 292, column: 19, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !82, line: 293, column: 3)
!1086 = distinct !DILexicalBlock(scope: !973, file: !82, line: 292, column: 3)
!1087 = !DILocation(line: 292, column: 3, scope: !1085)
!1088 = !DILocation(line: 293, column: 3, scope: !973)
!1089 = !DILocation(line: 295, column: 19, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !82, line: 296, column: 3)
!1091 = distinct !DILexicalBlock(scope: !973, file: !82, line: 295, column: 3)
!1092 = !DILocation(line: 295, column: 3, scope: !1090)
!1093 = !DILocation(line: 296, column: 3, scope: !973)
!1094 = !DILocation(line: 298, column: 19, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !82, line: 299, column: 3)
!1096 = distinct !DILexicalBlock(scope: !973, file: !82, line: 298, column: 3)
!1097 = !DILocation(line: 298, column: 3, scope: !1095)
!1098 = !DILocation(line: 299, column: 3, scope: !973)
!1099 = !DILocation(line: 301, column: 19, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !82, line: 302, column: 3)
!1101 = distinct !DILexicalBlock(scope: !973, file: !82, line: 301, column: 3)
!1102 = !DILocation(line: 301, column: 3, scope: !1100)
!1103 = !DILocation(line: 302, column: 3, scope: !973)
!1104 = !DILocation(line: 304, column: 19, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !82, line: 305, column: 3)
!1106 = distinct !DILexicalBlock(scope: !973, file: !82, line: 304, column: 3)
!1107 = !DILocation(line: 304, column: 3, scope: !1105)
!1108 = !DILocation(line: 305, column: 3, scope: !973)
!1109 = !DILocation(line: 307, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 308, column: 3)
!1111 = distinct !DILexicalBlock(scope: !973, file: !82, line: 307, column: 3)
!1112 = !DILocation(line: 307, column: 3, scope: !1110)
!1113 = !DILocation(line: 308, column: 3, scope: !973)
!1114 = !DILocation(line: 310, column: 19, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !82, line: 311, column: 3)
!1116 = distinct !DILexicalBlock(scope: !973, file: !82, line: 310, column: 3)
!1117 = !DILocation(line: 310, column: 3, scope: !1115)
!1118 = !DILocation(line: 311, column: 3, scope: !973)
!1119 = !DILocation(line: 313, column: 19, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !82, line: 314, column: 3)
!1121 = distinct !DILexicalBlock(scope: !973, file: !82, line: 313, column: 3)
!1122 = !DILocation(line: 313, column: 3, scope: !1120)
!1123 = !DILocation(line: 314, column: 3, scope: !973)
!1124 = !DILocation(line: 316, column: 19, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !82, line: 317, column: 3)
!1126 = distinct !DILexicalBlock(scope: !973, file: !82, line: 316, column: 3)
!1127 = !DILocation(line: 316, column: 3, scope: !1125)
!1128 = !DILocation(line: 317, column: 3, scope: !973)
!1129 = !DILocation(line: 319, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !82, line: 320, column: 3)
!1131 = distinct !DILexicalBlock(scope: !973, file: !82, line: 319, column: 3)
!1132 = !DILocation(line: 319, column: 3, scope: !1130)
!1133 = !DILocation(line: 320, column: 3, scope: !973)
!1134 = !DILocation(line: 322, column: 3, scope: !974)
!1135 = distinct !DISubprogram(name: "dial", scope: !82, file: !82, line: 358, type: !1136, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !13, !13, !13}
!1138 = !DILocalVariable(name: "f1", arg: 1, scope: !1135, file: !82, line: 358, type: !13)
!1139 = !DILocation(line: 0, scope: !1135)
!1140 = !DILocalVariable(name: "f2", arg: 2, scope: !1135, file: !82, line: 358, type: !13)
!1141 = !DILocalVariable(name: "msec", arg: 3, scope: !1135, file: !82, line: 358, type: !13)
!1142 = !DILocation(line: 364, column: 12, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !82, line: 364, column: 7)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !82, line: 380, column: 3)
!1145 = !DILocation(line: 364, column: 7, scope: !1144)
!1146 = !DILocation(line: 365, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !82, line: 364, column: 18)
!1148 = !DILocation(line: 369, column: 9, scope: !1144)
!1149 = !DILocation(line: 369, column: 6, scope: !1144)
!1150 = !DILocation(line: 370, column: 9, scope: !1144)
!1151 = !DILocation(line: 370, column: 6, scope: !1144)
!1152 = !DILocation(line: 371, column: 13, scope: !1144)
!1153 = !DILocation(line: 371, column: 11, scope: !1144)
!1154 = !DILocalVariable(name: "d1", scope: !1135, file: !82, line: 362, type: !13)
!1155 = !DILocation(line: 372, column: 13, scope: !1144)
!1156 = !DILocation(line: 372, column: 11, scope: !1144)
!1157 = !DILocalVariable(name: "d2", scope: !1135, file: !82, line: 363, type: !13)
!1158 = !DILocation(line: 373, column: 18, scope: !1144)
!1159 = !DILocation(line: 373, column: 16, scope: !1144)
!1160 = !DILocation(line: 373, column: 11, scope: !1144)
!1161 = !DILocalVariable(name: "g1", scope: !1135, file: !82, line: 366, type: !13)
!1162 = !DILocation(line: 374, column: 18, scope: !1144)
!1163 = !DILocation(line: 374, column: 16, scope: !1144)
!1164 = !DILocation(line: 374, column: 11, scope: !1144)
!1165 = !DILocalVariable(name: "g2", scope: !1135, file: !82, line: 367, type: !13)
!1166 = !DILocation(line: 375, column: 8, scope: !1144)
!1167 = !DILocation(line: 375, column: 14, scope: !1144)
!1168 = !DILocalVariable(name: "e1", scope: !1135, file: !82, line: 364, type: !13)
!1169 = !DILocation(line: 376, column: 8, scope: !1144)
!1170 = !DILocation(line: 376, column: 14, scope: !1144)
!1171 = !DILocalVariable(name: "e2", scope: !1135, file: !82, line: 365, type: !13)
!1172 = !DILocalVariable(name: "i2", scope: !1135, file: !82, line: 361, type: !13)
!1173 = !DILocalVariable(name: "i1", scope: !1135, file: !82, line: 360, type: !13)
!1174 = !DILocation(line: 380, column: 18, scope: !1144)
!1175 = !DILocation(line: 380, column: 16, scope: !1144)
!1176 = !DILocation(line: 380, column: 25, scope: !1144)
!1177 = !DILocalVariable(name: "time", scope: !1135, file: !82, line: 368, type: !13)
!1178 = !DILocation(line: 381, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !82, line: 382, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1144, file: !82, line: 381, column: 3)
!1181 = !DILocation(line: 0, scope: !1144)
!1182 = !DILocation(line: 381, column: 13, scope: !1179)
!1183 = !DILocation(line: 381, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !82, line: 381, column: 13)
!1185 = !DILocation(line: 381, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 381, column: 9)
!1187 = !DILocation(line: 381, column: 9, scope: !1184)
!1188 = !DILocation(line: 381, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !82, line: 381, column: 24)
!1190 = !DILocation(line: 382, column: 19, scope: !1184)
!1191 = !DILocation(line: 382, column: 26, scope: !1184)
!1192 = !DILocation(line: 382, column: 17, scope: !1184)
!1193 = !DILocation(line: 382, column: 11, scope: !1184)
!1194 = !DILocation(line: 382, column: 42, scope: !1184)
!1195 = !DILocation(line: 382, column: 49, scope: !1184)
!1196 = !DILocation(line: 382, column: 40, scope: !1184)
!1197 = !DILocation(line: 382, column: 34, scope: !1184)
!1198 = !DILocation(line: 382, column: 32, scope: !1184)
!1199 = !DILocalVariable(name: "val", scope: !1135, file: !82, line: 369, type: !13)
!1200 = !DILocation(line: 384, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 384, column: 9)
!1202 = !DILocation(line: 384, column: 9, scope: !1184)
!1203 = !DILocation(line: 384, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !82, line: 384, column: 15)
!1205 = !DILocation(line: 384, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !82, line: 384, column: 9)
!1207 = !DILocation(line: 384, column: 18, scope: !1206)
!1208 = !DILocation(line: 385, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !82, line: 385, column: 11)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !82, line: 384, column: 18)
!1211 = !DILocation(line: 385, column: 18, scope: !1209)
!1212 = !DILocation(line: 385, column: 11, scope: !1210)
!1213 = !DILocation(line: 386, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 385, column: 24)
!1215 = !DILocalVariable(name: "tmp", scope: !1135, file: !82, line: 370, type: !13)
!1216 = !DILocation(line: 386, column: 16, scope: !1214)
!1217 = !DILocation(line: 386, column: 52, scope: !1214)
!1218 = !DILocation(line: 386, column: 45, scope: !1214)
!1219 = !DILocation(line: 386, column: 24, scope: !1214)
!1220 = !DILocation(line: 386, column: 11, scope: !1214)
!1221 = !DILocation(line: 386, column: 22, scope: !1214)
!1222 = !DILocation(line: 387, column: 7, scope: !1214)
!1223 = !DILocation(line: 389, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1209, file: !82, line: 387, column: 14)
!1225 = !DILocalVariable(name: "tmp___0", scope: !1135, file: !82, line: 371, type: !13)
!1226 = !DILocation(line: 389, column: 16, scope: !1224)
!1227 = !DILocation(line: 389, column: 49, scope: !1224)
!1228 = !DILocation(line: 389, column: 28, scope: !1224)
!1229 = !DILocation(line: 389, column: 11, scope: !1224)
!1230 = !DILocation(line: 389, column: 15, scope: !1224)
!1231 = !DILocation(line: 389, column: 26, scope: !1224)
!1232 = !DILocation(line: 390, column: 19, scope: !1224)
!1233 = !DILocalVariable(name: "tmp___1", scope: !1135, file: !82, line: 372, type: !13)
!1234 = !DILocation(line: 390, column: 16, scope: !1224)
!1235 = !DILocation(line: 390, column: 50, scope: !1224)
!1236 = !DILocation(line: 390, column: 56, scope: !1224)
!1237 = !DILocation(line: 390, column: 28, scope: !1224)
!1238 = !DILocation(line: 390, column: 11, scope: !1224)
!1239 = !DILocation(line: 390, column: 15, scope: !1224)
!1240 = !DILocation(line: 390, column: 26, scope: !1224)
!1241 = !DILocation(line: 392, column: 5, scope: !1210)
!1242 = !DILocation(line: 393, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 393, column: 9)
!1244 = !DILocation(line: 393, column: 17, scope: !1243)
!1245 = !DILocation(line: 393, column: 14, scope: !1243)
!1246 = !DILocation(line: 393, column: 9, scope: !1184)
!1247 = !DILocation(line: 394, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !82, line: 394, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !82, line: 393, column: 24)
!1250 = !DILocation(line: 394, column: 18, scope: !1248)
!1251 = !DILocation(line: 394, column: 11, scope: !1249)
!1252 = !DILocation(line: 395, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !82, line: 394, column: 24)
!1254 = !DILocalVariable(name: "tmp___2", scope: !1135, file: !82, line: 373, type: !13)
!1255 = !DILocation(line: 395, column: 16, scope: !1253)
!1256 = !DILocation(line: 395, column: 11, scope: !1253)
!1257 = !DILocation(line: 395, column: 15, scope: !1253)
!1258 = !DILocation(line: 395, column: 26, scope: !1253)
!1259 = !DILocation(line: 396, column: 7, scope: !1253)
!1260 = !DILocation(line: 398, column: 19, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1248, file: !82, line: 396, column: 14)
!1262 = !DILocalVariable(name: "tmp___3", scope: !1135, file: !82, line: 374, type: !13)
!1263 = !DILocation(line: 398, column: 16, scope: !1261)
!1264 = !DILocation(line: 398, column: 11, scope: !1261)
!1265 = !DILocation(line: 398, column: 15, scope: !1261)
!1266 = !DILocation(line: 398, column: 26, scope: !1261)
!1267 = !DILocation(line: 399, column: 19, scope: !1261)
!1268 = !DILocalVariable(name: "tmp___4", scope: !1135, file: !82, line: 375, type: !13)
!1269 = !DILocation(line: 399, column: 16, scope: !1261)
!1270 = !DILocation(line: 399, column: 11, scope: !1261)
!1271 = !DILocation(line: 399, column: 15, scope: !1261)
!1272 = !DILocation(line: 399, column: 26, scope: !1261)
!1273 = !DILocation(line: 401, column: 5, scope: !1249)
!1274 = !DILocation(line: 402, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 402, column: 9)
!1276 = !DILocation(line: 402, column: 9, scope: !1184)
!1277 = !DILocation(line: 403, column: 11, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !82, line: 403, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !82, line: 402, column: 16)
!1280 = !DILocation(line: 403, column: 18, scope: !1278)
!1281 = !DILocation(line: 403, column: 11, scope: !1279)
!1282 = !DILocation(line: 404, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !82, line: 403, column: 24)
!1284 = !DILocalVariable(name: "tmp___5", scope: !1135, file: !82, line: 376, type: !13)
!1285 = !DILocation(line: 404, column: 16, scope: !1283)
!1286 = !DILocation(line: 404, column: 56, scope: !1283)
!1287 = !DILocation(line: 404, column: 49, scope: !1283)
!1288 = !DILocation(line: 404, column: 28, scope: !1283)
!1289 = !DILocation(line: 404, column: 11, scope: !1283)
!1290 = !DILocation(line: 404, column: 15, scope: !1283)
!1291 = !DILocation(line: 404, column: 26, scope: !1283)
!1292 = !DILocation(line: 405, column: 7, scope: !1283)
!1293 = !DILocation(line: 407, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1278, file: !82, line: 405, column: 14)
!1295 = !DILocalVariable(name: "tmp___6", scope: !1135, file: !82, line: 377, type: !13)
!1296 = !DILocation(line: 407, column: 16, scope: !1294)
!1297 = !DILocation(line: 407, column: 49, scope: !1294)
!1298 = !DILocation(line: 407, column: 28, scope: !1294)
!1299 = !DILocation(line: 407, column: 11, scope: !1294)
!1300 = !DILocation(line: 407, column: 15, scope: !1294)
!1301 = !DILocation(line: 407, column: 26, scope: !1294)
!1302 = !DILocation(line: 408, column: 19, scope: !1294)
!1303 = !DILocalVariable(name: "tmp___7", scope: !1135, file: !82, line: 378, type: !13)
!1304 = !DILocation(line: 408, column: 16, scope: !1294)
!1305 = !DILocation(line: 408, column: 50, scope: !1294)
!1306 = !DILocation(line: 408, column: 56, scope: !1294)
!1307 = !DILocation(line: 408, column: 28, scope: !1294)
!1308 = !DILocation(line: 408, column: 11, scope: !1294)
!1309 = !DILocation(line: 408, column: 15, scope: !1294)
!1310 = !DILocation(line: 408, column: 26, scope: !1294)
!1311 = !DILocation(line: 410, column: 5, scope: !1279)
!1312 = !DILocation(line: 412, column: 8, scope: !1184)
!1313 = !DILocation(line: 413, column: 12, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 413, column: 9)
!1315 = !DILocation(line: 413, column: 9, scope: !1184)
!1316 = !DILocation(line: 414, column: 13, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !82, line: 413, column: 17)
!1318 = !DILocation(line: 414, column: 10, scope: !1317)
!1319 = !DILocation(line: 415, column: 10, scope: !1317)
!1320 = !DILocation(line: 416, column: 5, scope: !1317)
!1321 = !DILocation(line: 0, scope: !1184)
!1322 = !DILocation(line: 417, column: 15, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 417, column: 9)
!1324 = !DILocation(line: 417, column: 12, scope: !1323)
!1325 = !DILocation(line: 417, column: 9, scope: !1184)
!1326 = !DILocation(line: 418, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !82, line: 417, column: 24)
!1328 = !DILocation(line: 418, column: 10, scope: !1327)
!1329 = !DILocation(line: 419, column: 5, scope: !1327)
!1330 = !DILocation(line: 420, column: 8, scope: !1184)
!1331 = !DILocation(line: 421, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 421, column: 9)
!1333 = !DILocation(line: 421, column: 9, scope: !1184)
!1334 = !DILocation(line: 422, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !82, line: 421, column: 17)
!1336 = !DILocation(line: 422, column: 10, scope: !1335)
!1337 = !DILocation(line: 423, column: 10, scope: !1335)
!1338 = !DILocation(line: 424, column: 5, scope: !1335)
!1339 = !DILocation(line: 425, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 425, column: 9)
!1341 = !DILocation(line: 425, column: 12, scope: !1340)
!1342 = !DILocation(line: 425, column: 9, scope: !1184)
!1343 = !DILocation(line: 426, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !82, line: 425, column: 24)
!1345 = !DILocation(line: 426, column: 10, scope: !1344)
!1346 = !DILocation(line: 427, column: 5, scope: !1344)
!1347 = !DILocation(line: 428, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1184, file: !82, line: 428, column: 9)
!1349 = !DILocation(line: 428, column: 19, scope: !1348)
!1350 = !DILocation(line: 428, column: 16, scope: !1348)
!1351 = !DILocation(line: 428, column: 9, scope: !1184)
!1352 = !DILocation(line: 429, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !82, line: 430, column: 7)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !82, line: 429, column: 7)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !82, line: 428, column: 28)
!1356 = !DILocation(line: 429, column: 17, scope: !1353)
!1357 = !DILocation(line: 429, column: 22, scope: !1353)
!1358 = !DILocation(line: 429, column: 7, scope: !1353)
!1359 = !DILocation(line: 430, column: 14, scope: !1354)
!1360 = !DILocation(line: 432, column: 5, scope: !1355)
!1361 = !DILocation(line: 432, column: 8, scope: !1184)
!1362 = !DILocation(line: 433, column: 8, scope: !1184)
!1363 = distinct !{!1363, !1178, !1364}
!1364 = !DILocation(line: 434, column: 3, scope: !1179)
!1365 = !DILocation(line: 436, column: 3, scope: !1179)
!1366 = !DILocation(line: 435, column: 10, scope: !1144)
!1367 = !DILocation(line: 436, column: 3, scope: !1144)
!1368 = !DILocation(line: 438, column: 1, scope: !1135)
