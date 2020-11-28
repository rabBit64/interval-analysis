; ModuleID = '/tmp/tmp.ll'
source_filename = "c/rexima-1.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16 }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }

@dev_labels = global <{ <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 86, i8 111, i8 108, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 66, i8 97, i8 115, i8 115, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 84, i8 114, i8 101, i8 98, i8 108, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 83, i8 121, i8 110, i8 116, i8 104, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 80, i8 99, i8 109, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 83, i8 112, i8 107, i8 114, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 76, i8 105, i8 110, i8 101, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 77, i8 105, i8 99, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 67, i8 68, i8 32, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 77, i8 105, i8 120, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 80, i8 99, i8 109, i8 50, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 82, i8 101, i8 99, i8 32, i8 32, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 73, i8 71, i8 97, i8 105, i8 110, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 79, i8 71, i8 97, i8 105, i8 110, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 76, i8 105, i8 110, i8 101, i8 49, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 76, i8 105, i8 110, i8 101, i8 50, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 76, i8 105, i8 110, i8 101, i8 51, [75 x i8] zeroinitializer }>, <{ [8 x i8], [72 x i8] }> <{ [8 x i8] c"Digital1", [72 x i8] zeroinitializer }>, <{ [8 x i8], [72 x i8] }> <{ [8 x i8] c"Digital2", [72 x i8] zeroinitializer }>, <{ [8 x i8], [72 x i8] }> <{ [8 x i8] c"Digital3", [72 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> <{ i8 80, i8 104, i8 111, i8 110, i8 101, i8 73, i8 110, [73 x i8] zeroinitializer }>, <{ [8 x i8], [72 x i8] }> <{ [8 x i8] c"PhoneOut", [72 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 86, i8 105, i8 100, i8 101, i8 111, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 82, i8 97, i8 100, i8 105, i8 111, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> <{ i8 77, i8 111, i8 110, i8 105, i8 116, i8 111, i8 114, [73 x i8] zeroinitializer }> }>, align 16, !dbg !0
@dev_names = global <{ <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [74 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, [78 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }> <{ <{ i8, i8, i8, [77 x i8] }> <{ i8 118, i8 111, i8 108, [77 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 98, i8 97, i8 115, i8 115, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [74 x i8] }> <{ i8 116, i8 114, i8 101, i8 98, i8 108, i8 101, [74 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 115, i8 121, i8 110, i8 116, i8 104, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, [77 x i8] }> <{ i8 112, i8 99, i8 109, [77 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> <{ i8 115, i8 112, i8 101, i8 97, i8 107, i8 101, i8 114, [73 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 108, i8 105, i8 110, i8 101, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, [77 x i8] }> <{ i8 109, i8 105, i8 99, [77 x i8] zeroinitializer }>, <{ i8, i8, [78 x i8] }> <{ i8 99, i8 100, [78 x i8] zeroinitializer }>, <{ i8, i8, i8, [77 x i8] }> <{ i8 109, i8 105, i8 120, [77 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 112, i8 99, i8 109, i8 50, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, [77 x i8] }> <{ i8 114, i8 101, i8 99, [77 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 105, i8 103, i8 97, i8 105, i8 110, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 111, i8 103, i8 97, i8 105, i8 110, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 108, i8 105, i8 110, i8 101, i8 49, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 108, i8 105, i8 110, i8 101, i8 50, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 108, i8 105, i8 110, i8 101, i8 51, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 100, i8 105, i8 103, i8 49, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 100, i8 105, i8 103, i8 50, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 100, i8 105, i8 103, i8 51, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [76 x i8] }> <{ i8 112, i8 104, i8 105, i8 110, [76 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 112, i8 104, i8 111, i8 117, i8 116, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 118, i8 105, i8 100, i8 101, i8 111, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [75 x i8] }> <{ i8 114, i8 97, i8 100, i8 105, i8 111, [75 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> <{ i8 109, i8 111, i8 110, i8 105, i8 116, i8 111, i8 114, [73 x i8] zeroinitializer }> }>, align 16, !dbg !78
@.str = private unnamed_addr constant [11 x i8] c"/dev/mixer\00", align 1
@mixerdev = global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8, !dbg !85
@optnopt = global i32 0, align 4, !dbg !87
@optnerr = global i32 0, align 4, !dbg !89
@optnind = global i32 1, align 4, !dbg !91
@optnarg = global i8* null, align 8, !dbg !93
@optnpos = internal global i32 1, align 4, !dbg !99
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"rexima: couldn't %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"open mixer device\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@stdscr = external global %struct._win_st*, align 8
@dev_line = common global [25 x i32] zeroinitializer, align 16, !dbg !95
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%3d%%\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rexima\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"min  .    .    .    .    :    .    .    .    .  max\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"[ ]\00", align 1
@LINES = external global i32, align 4
@.str.11 = private unnamed_addr constant [75 x i8] c"< move/alter with hjkl/cursors; space to toggle rec src; Esc/q/x to quit >\00", align 1
@.str.12 = private unnamed_addr constant [300 x i8] c"rexima 1.4 - copyright (c) 1996-2003 Russell Marks.\0A\0Ausage: rexima [-hv] [-d mixer_device_file]\0A\09\09    [device <level | offset | left,right | <rec | norec>>\0A\09\09     [device ...]]\0A\0A\09-d\09specify mixer device file to use (ordinarily /dev/mixer).\0A\09-h\09give this usage help.\0A\09-v\09show current mixer settings.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\09device\09a device to set the level of. %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"\09\09will allow the levels of these devices to be set:\0A\0A\09\09\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.17 = private unnamed_addr constant [381 x i8] c"\0A\0A        level\09level to set specified device to.\0A       offset\09amount to change level by (e.g. `-3', `+12').\0A   left,right\09set (stereo) device's level with independent left/right values.\0A  rec | norec\09`rec' makes device a recording source, `norec' makes it, well,\0A\09\09not a recording source. :-)\0A\0AIf invoked without any args (with the exception of `-d'), rexima runs\0Ainteractively.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"d:hvV\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"allocate memory\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"rexima: the `-d' option needs a mixer device to be specified.\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"rexima: option `%c' not recognised.\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s\09%3d\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c",%3d\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\09[%c]\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"rexima: unavailable or unknown device `%s'.\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"rexima: no setting specified for device `%s'.\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"norec\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"rexima: can't set rec/norec on device `%s'.\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"0123456789, \09\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"rexima: invalid level for device `%s'.\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"rexima: level offset must be mono, not stereo.\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"rexima: mixer has no devices!\0A\00", align 1
@curscr = external global %struct._win_st*, align 8

; Function Attrs: noinline nounwind ssp uwtable
define i32 @getoptn(i32 %argc, i8** %argv, i8* %optstring) #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8** %argv, metadata !113, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %optstring, metadata !114, metadata !DIExpression()), !dbg !112
  %0 = load i32, i32* @optnind, align 4, !dbg !115
  %cmp = icmp eq i32 %0, %argc, !dbg !118
  br i1 %cmp, label %if.then, label %if.else, !dbg !119

if.then:                                          ; preds = %entry
  br label %return, !dbg !120

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @optnind, align 4, !dbg !122
  %idx.ext = sext i32 %1 to i64, !dbg !124
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !124
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !125
  %3 = load i8, i8* %2, align 1, !dbg !126
  %conv = sext i8 %3 to i32, !dbg !127
  %cmp1 = icmp ne i32 %conv, 45, !dbg !128
  br i1 %cmp1, label %if.then3, label %if.else4, !dbg !115

if.then3:                                         ; preds = %if.else
  br label %return, !dbg !129

if.else4:                                         ; preds = %if.else
  %4 = load i32, i32* @optnind, align 4, !dbg !131
  %idx.ext5 = sext i32 %4 to i64, !dbg !135
  %add.ptr6 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext5, !dbg !135
  %5 = load i8*, i8** %add.ptr6, align 8, !dbg !136
  %call = call i32 @strlen(i8* %5) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %call, metadata !138, metadata !DIExpression()), !dbg !112
  %cmp7 = icmp ule i32 %call, 1, !dbg !139
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !141

if.then9:                                         ; preds = %if.else4
  br label %return, !dbg !142

if.end:                                           ; preds = %if.else4
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %6 = load i32, i32* @optnind, align 4, !dbg !144
  %idx.ext12 = sext i32 %6 to i64, !dbg !147
  %add.ptr13 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext12, !dbg !147
  %7 = load i8*, i8** %add.ptr13, align 8, !dbg !148
  %8 = load i32, i32* @optnpos, align 4, !dbg !149
  %idx.ext14 = sext i32 %8 to i64, !dbg !150
  %add.ptr15 = getelementptr inbounds i8, i8* %7, i64 %idx.ext14, !dbg !150
  %9 = load i8, i8* %add.ptr15, align 1, !dbg !151
  %conv16 = sext i8 %9 to i32, !dbg !152
  %call17 = call i8* @strchr(i8* %optstring, i32 %conv16) #6, !dbg !153
  call void @llvm.dbg.value(metadata i8* %call17, metadata !154, metadata !DIExpression()), !dbg !112
  %10 = ptrtoint i8* %call17 to i64, !dbg !155
  %cmp18 = icmp eq i64 %10, 0, !dbg !157
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !158

if.then20:                                        ; preds = %if.end11
  br label %return, !dbg !159

if.else21:                                        ; preds = %if.end11
  %11 = load i8, i8* %call17, align 1, !dbg !161
  %conv22 = sext i8 %11 to i32, !dbg !163
  store i32 %conv22, i32* @optnopt, align 4, !dbg !164
  %add.ptr23 = getelementptr inbounds i8, i8* %call17, i64 1, !dbg !165
  %12 = load i8, i8* %add.ptr23, align 1, !dbg !167
  %conv24 = sext i8 %12 to i32, !dbg !168
  %cmp25 = icmp eq i32 %conv24, 58, !dbg !169
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !170

if.then27:                                        ; preds = %if.else21
  %13 = load i32, i32* @optnind, align 4, !dbg !171
  %sub = sub nsw i32 %argc, 1, !dbg !174
  %cmp28 = icmp eq i32 %13, %sub, !dbg !175
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !176

if.then30:                                        ; preds = %if.then27
  br label %return, !dbg !177

if.end31:                                         ; preds = %if.then27
  %14 = load i32, i32* @optnind, align 4, !dbg !179
  %add = add nsw i32 %14, 1, !dbg !180
  %idx.ext32 = sext i32 %add to i64, !dbg !181
  %add.ptr33 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext32, !dbg !181
  %15 = load i8*, i8** %add.ptr33, align 8, !dbg !182
  store i8* %15, i8** @optnarg, align 8, !dbg !183
  store i32 1, i32* @optnpos, align 4, !dbg !184
  %16 = load i32, i32* @optnind, align 4, !dbg !185
  %add34 = add nsw i32 %16, 2, !dbg !185
  store i32 %add34, i32* @optnind, align 4, !dbg !185
  %17 = load i32, i32* @optnopt, align 4, !dbg !186
  br label %return, !dbg !187

if.end35:                                         ; preds = %if.else21
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  %18 = load i32, i32* @optnpos, align 4, !dbg !188
  %inc = add nsw i32 %18, 1, !dbg !188
  store i32 %inc, i32* @optnpos, align 4, !dbg !188
  %19 = load i32, i32* @optnind, align 4, !dbg !190
  %idx.ext37 = sext i32 %19 to i64, !dbg !192
  %add.ptr38 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext37, !dbg !192
  %20 = load i8*, i8** %add.ptr38, align 8, !dbg !193
  %call39 = call i32 @strlen(i8* %20) #6, !dbg !194
  call void @llvm.dbg.value(metadata i32 %call39, metadata !195, metadata !DIExpression()), !dbg !112
  %21 = load i32, i32* @optnpos, align 4, !dbg !196
  %cmp40 = icmp ugt i32 %21, %call39, !dbg !198
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !199

if.then42:                                        ; preds = %if.end36
  store i32 1, i32* @optnpos, align 4, !dbg !200
  %22 = load i32, i32* @optnind, align 4, !dbg !202
  %inc43 = add nsw i32 %22, 1, !dbg !202
  store i32 %inc43, i32* @optnind, align 4, !dbg !202
  br label %if.end44, !dbg !203

if.end44:                                         ; preds = %if.then42, %if.end36
  %23 = load i32, i32* @optnopt, align 4, !dbg !204
  br label %return, !dbg !205

return:                                           ; preds = %if.end44, %if.end31, %if.then30, %if.then20, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ -1, %if.then9 ], [ 63, %if.then20 ], [ 58, %if.then30 ], [ %17, %if.end31 ], [ %23, %if.end44 ], !dbg !206
  ret i32 %retval.0, !dbg !207
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @die(i8* %str) #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata !4, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !215
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %str), !dbg !219
  call void @exit(i32 1) #7, !dbg !220
  unreachable, !dbg !220

return:                                           ; No predecessors!
  ret void, !dbg !222
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @init(i32* %mixfd, i32* %existmask, i32* %canrecmask, i32* %isrecmask, i32* %stereomask) #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i32* %mixfd, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32* %existmask, metadata !229, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32* %canrecmask, metadata !230, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32* %isrecmask, metadata !231, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32* %stereomask, metadata !232, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata !4, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata !4, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata !4, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata !4, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** @mixerdev, align 8, !dbg !241
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 2), !dbg !245
  call void @llvm.dbg.value(metadata i32 %call, metadata !246, metadata !DIExpression()), !dbg !228
  store i32 %call, i32* %mixfd, align 4, !dbg !247
  %cmp = icmp slt i32 %call, 0, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  call void @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)), !dbg !251
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %mixfd, align 4, !dbg !256
  %call1 = call i32 (i32, i64, ...) @ioctl(i32 %1, i64 2147765758, i32* %existmask) #8, !dbg !259
  call void @llvm.dbg.value(metadata i32 %call1, metadata !260, metadata !DIExpression()), !dbg !228
  %cmp2 = icmp eq i32 %call1, -1, !dbg !261
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !263

if.then3:                                         ; preds = %if.end
  call void @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !264
  br label %if.end4, !dbg !268

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i32, i32* %mixfd, align 4, !dbg !269
  %call5 = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 2147765757, i32* %canrecmask) #8, !dbg !272
  call void @llvm.dbg.value(metadata i32 %call5, metadata !273, metadata !DIExpression()), !dbg !228
  %cmp6 = icmp eq i32 %call5, -1, !dbg !274
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !276

if.then7:                                         ; preds = %if.end4
  call void @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !277
  br label %if.end8, !dbg !281

if.end8:                                          ; preds = %if.then7, %if.end4
  %3 = load i32, i32* %mixfd, align 4, !dbg !282
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 2147765759, i32* %isrecmask) #8, !dbg !285
  call void @llvm.dbg.value(metadata i32 %call9, metadata !286, metadata !DIExpression()), !dbg !228
  %cmp10 = icmp eq i32 %call9, -1, !dbg !287
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !289

if.then11:                                        ; preds = %if.end8
  call void @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !290
  br label %if.end12, !dbg !294

if.end12:                                         ; preds = %if.then11, %if.end8
  %4 = load i32, i32* %mixfd, align 4, !dbg !295
  %call13 = call i32 (i32, i64, ...) @ioctl(i32 %4, i64 2147765755, i32* %stereomask) #8, !dbg !298
  call void @llvm.dbg.value(metadata i32 %call13, metadata !299, metadata !DIExpression()), !dbg !228
  %cmp14 = icmp eq i32 %call13, -1, !dbg !300
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !302

if.then15:                                        ; preds = %if.end12
  store i32 0, i32* %stereomask, align 4, !dbg !303
  br label %if.end16, !dbg !305

if.end16:                                         ; preds = %if.then15, %if.end12
  ret void, !dbg !306
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @init_term() #0 !dbg !307 {
entry:
  %call = call %struct._win_st* @initscr(), !dbg !310
  %call1 = call i32 @cbreak(), !dbg !314
  %call2 = call i32 @noecho(), !dbg !316
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !318
  %call3 = call i32 @keypad(%struct._win_st* %0, i1 zeroext true), !dbg !320
  ret void, !dbg !321
}

declare %struct._win_st* @initscr() #3

declare i32 @cbreak() #3

declare i32 @noecho() #3

declare i32 @keypad(%struct._win_st*, i1 zeroext) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @uninit(i32 %mixfd) #0 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !327
  %call = call i32 @wclear(%struct._win_st* %0), !dbg !331
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !332
  %call1 = call i32 @wrefresh(%struct._win_st* %1), !dbg !334
  %call2 = call i32 @echo(), !dbg !335
  %call3 = call i32 @nocbreak(), !dbg !337
  %call4 = call i32 @endwin(), !dbg !339
  %call5 = call i32 @putchar(i32 10), !dbg !341
  %call6 = call i32 @close(i32 %mixfd), !dbg !343
  ret void, !dbg !345
}

declare i32 @wclear(%struct._win_st*) #3

declare i32 @wrefresh(%struct._win_st*) #3

declare i32 @echo() #3

declare i32 @nocbreak() #3

declare i32 @endwin() #3

declare i32 @putchar(i32) #3

declare i32 @close(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @drawsel(i32 %new, i32 %old) #0 !dbg !346 {
entry:
  call void @llvm.dbg.value(metadata i32 %new, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 %old, metadata !351, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata !4, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata !4, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata !4, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata !4, metadata !358, metadata !DIExpression()), !dbg !359
  %cmp = icmp ne i32 %new, %old, !dbg !360
  br i1 %cmp, label %if.then, label %if.end34, !dbg !363

if.then:                                          ; preds = %entry
  %cmp1 = icmp sge i32 %old, 0, !dbg !364
  br i1 %cmp1, label %if.then2, label %if.end14, !dbg !367

if.then2:                                         ; preds = %if.then
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !368
  %idxprom = sext i32 %old to i64, !dbg !372
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom, !dbg !372
  %1 = load i32, i32* %arrayidx, align 4, !dbg !372
  %add = add nsw i32 3, %1, !dbg !373
  %call = call i32 @wmove(%struct._win_st* %0, i32 %add, i32 1), !dbg !374
  call void @llvm.dbg.value(metadata i32 %call, metadata !375, metadata !DIExpression()), !dbg !350
  %cmp3 = icmp eq i32 %call, -1, !dbg !376
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !378

if.then4:                                         ; preds = %if.then2
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !379
  %call5 = call i32 @waddnstr(%struct._win_st* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 -1), !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %if.then4, %if.then2
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !385
  %idxprom6 = sext i32 %old to i64, !dbg !388
  %arrayidx7 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom6, !dbg !388
  %4 = load i32, i32* %arrayidx7, align 4, !dbg !388
  %add8 = add nsw i32 3, %4, !dbg !389
  %call9 = call i32 @wmove(%struct._win_st* %3, i32 %add8, i32 13), !dbg !390
  call void @llvm.dbg.value(metadata i32 %call9, metadata !391, metadata !DIExpression()), !dbg !350
  %cmp10 = icmp eq i32 %call9, -1, !dbg !392
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !394

if.then11:                                        ; preds = %if.end
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !395
  %call12 = call i32 @waddnstr(%struct._win_st* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 -1), !dbg !399
  br label %if.end13, !dbg !400

if.end13:                                         ; preds = %if.then11, %if.end
  br label %if.end14, !dbg !401

if.end14:                                         ; preds = %if.end13, %if.then
  %cmp15 = icmp sge i32 %new, 0, !dbg !402
  br i1 %cmp15, label %if.then16, label %if.end33, !dbg !404

if.then16:                                        ; preds = %if.end14
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !405
  %idxprom17 = sext i32 %new to i64, !dbg !409
  %arrayidx18 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom17, !dbg !409
  %7 = load i32, i32* %arrayidx18, align 4, !dbg !409
  %add19 = add nsw i32 3, %7, !dbg !410
  %call20 = call i32 @wmove(%struct._win_st* %6, i32 %add19, i32 1), !dbg !411
  call void @llvm.dbg.value(metadata i32 %call20, metadata !412, metadata !DIExpression()), !dbg !350
  %cmp21 = icmp eq i32 %call20, -1, !dbg !413
  br i1 %cmp21, label %if.end24, label %if.then22, !dbg !415

if.then22:                                        ; preds = %if.then16
  %8 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !416
  %call23 = call i32 @waddnstr(%struct._win_st* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 -1), !dbg !420
  br label %if.end24, !dbg !421

if.end24:                                         ; preds = %if.then22, %if.then16
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !422
  %idxprom25 = sext i32 %new to i64, !dbg !425
  %arrayidx26 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom25, !dbg !425
  %10 = load i32, i32* %arrayidx26, align 4, !dbg !425
  %add27 = add nsw i32 3, %10, !dbg !426
  %call28 = call i32 @wmove(%struct._win_st* %9, i32 %add27, i32 13), !dbg !427
  call void @llvm.dbg.value(metadata i32 %call28, metadata !428, metadata !DIExpression()), !dbg !350
  %cmp29 = icmp eq i32 %call28, -1, !dbg !429
  br i1 %cmp29, label %if.end32, label %if.then30, !dbg !431

if.then30:                                        ; preds = %if.end24
  %11 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !432
  %call31 = call i32 @waddnstr(%struct._win_st* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 -1), !dbg !436
  br label %if.end32, !dbg !437

if.end32:                                         ; preds = %if.then30, %if.end24
  br label %if.end33, !dbg !438

if.end33:                                         ; preds = %if.end32, %if.end14
  br label %if.end34, !dbg !439

if.end34:                                         ; preds = %if.end33, %entry
  %12 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !440
  %idxprom35 = sext i32 %new to i64, !dbg !443
  %arrayidx36 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom35, !dbg !443
  %13 = load i32, i32* %arrayidx36, align 4, !dbg !443
  %add37 = add nsw i32 3, %13, !dbg !444
  %call38 = call i32 @wmove(%struct._win_st* %12, i32 %add37, i32 0), !dbg !445
  ret void, !dbg !446
}

declare i32 @wmove(%struct._win_st*, i32, i32) #3

declare i32 @waddnstr(%struct._win_st*, i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mixer_getlevel_stereo(i32 %mixfd, i32 %dev) #0 !dbg !447 {
entry:
  %level = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i32 %dev, metadata !452, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %level, metadata !453, metadata !DIExpression()), !dbg !454
  store i32 0, i32* %level, align 4, !dbg !455
  %or = or i32 -2147463936, %dev, !dbg !458
  %conv = zext i32 %or to i64, !dbg !460
  %or1 = or i64 %conv, 262144, !dbg !461
  %call = call i32 (i32, i64, ...) @ioctl(i32 %mixfd, i64 %or1, i32* %level) #8, !dbg !462
  %0 = load i32, i32* %level, align 4, !dbg !463
  ret i32 %0, !dbg !464
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mixer_getlevel(i32 %mixfd, i32 %dev) #0 !dbg !465 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %dev, metadata !468, metadata !DIExpression()), !dbg !467
  %call = call i32 @mixer_getlevel_stereo(i32 %mixfd, i32 %dev), !dbg !469
  call void @llvm.dbg.value(metadata i32 %call, metadata !473, metadata !DIExpression()), !dbg !467
  %and = and i32 %call, 255, !dbg !474
  ret i32 %and, !dbg !475
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mixer_setlevel_stereo(i32 %mixfd, i32 %dev, i32 %left, i32 %right) #0 !dbg !476 {
entry:
  %left.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 %dev, metadata !481, metadata !DIExpression()), !dbg !480
  store i32 %left, i32* %left.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %left.addr, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32 %right, metadata !484, metadata !DIExpression()), !dbg !480
  %mul = mul nsw i32 256, %right, !dbg !485
  %0 = load i32, i32* %left.addr, align 4, !dbg !488
  %add = add nsw i32 %0, %mul, !dbg !488
  store i32 %add, i32* %left.addr, align 4, !dbg !488
  %or = or i32 -1073722112, %dev, !dbg !489
  %conv = zext i32 %or to i64, !dbg !491
  %or1 = or i64 %conv, 262144, !dbg !492
  %call = call i32 (i32, i64, ...) @ioctl(i32 %mixfd, i64 %or1, i32* %left.addr) #8, !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mixer_setlevel(i32 %mixfd, i32 %dev, i32 %level) #0 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %dev, metadata !500, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %level, metadata !501, metadata !DIExpression()), !dbg !499
  call void @mixer_setlevel_stereo(i32 %mixfd, i32 %dev, i32 %level, i32 %level), !dbg !502
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mixer_change(i32 %mixfd, i32 %dev, i32 %add) #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %dev, metadata !510, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %add, metadata !511, metadata !DIExpression()), !dbg !509
  %call = call i32 @mixer_getlevel(i32 %mixfd, i32 %dev), !dbg !512
  call void @llvm.dbg.value(metadata i32 %call, metadata !516, metadata !DIExpression()), !dbg !509
  %add1 = add nsw i32 %call, %add, !dbg !517
  call void @llvm.dbg.value(metadata i32 %add1, metadata !518, metadata !DIExpression()), !dbg !509
  %cmp = icmp slt i32 %add1, 0, !dbg !519
  br i1 %cmp, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !518, metadata !DIExpression()), !dbg !509
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then, %entry
  %level.0 = phi i32 [ 0, %if.then ], [ %add1, %entry ], !dbg !524
  call void @llvm.dbg.value(metadata i32 %level.0, metadata !518, metadata !DIExpression()), !dbg !509
  %cmp2 = icmp sgt i32 %level.0, 100, !dbg !525
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !527

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 100, metadata !518, metadata !DIExpression()), !dbg !509
  br label %if.end4, !dbg !528

if.end4:                                          ; preds = %if.then3, %if.end
  %level.1 = phi i32 [ 100, %if.then3 ], [ %level.0, %if.end ], !dbg !524
  call void @llvm.dbg.value(metadata i32 %level.1, metadata !518, metadata !DIExpression()), !dbg !509
  call void @mixer_setlevel(i32 %mixfd, i32 %dev, i32 %level.1), !dbg !530
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mixer_rectoggle(i32 %mixfd, i32 %dev, i32* %isrecmask) #0 !dbg !534 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32 %dev, metadata !539, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32* %isrecmask, metadata !540, metadata !DIExpression()), !dbg !538
  %shl = shl i32 1, %dev, !dbg !541
  %0 = load i32, i32* %isrecmask, align 4, !dbg !544
  %xor = xor i32 %0, %shl, !dbg !544
  store i32 %xor, i32* %isrecmask, align 4, !dbg !544
  %call = call i32 (i32, i64, ...) @ioctl(i32 %mixfd, i64 3221507583, i32* %isrecmask) #8, !dbg !545
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mixer_recset(i32 %mixfd, i32 %dev, i32* %isrecmask, i32 %on) #0 !dbg !548 {
entry:
  call void @llvm.dbg.value(metadata i32 %mixfd, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %dev, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32* %isrecmask, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %on, metadata !555, metadata !DIExpression()), !dbg !552
  %tobool = icmp ne i32 %on, 0, !dbg !556
  br i1 %tobool, label %if.then, label %if.else, !dbg !559

if.then:                                          ; preds = %entry
  %shl = shl i32 1, %dev, !dbg !560
  %0 = load i32, i32* %isrecmask, align 4, !dbg !562
  %or = or i32 %0, %shl, !dbg !562
  store i32 %or, i32* %isrecmask, align 4, !dbg !562
  br label %if.end, !dbg !563

if.else:                                          ; preds = %entry
  %shl1 = shl i32 1, %dev, !dbg !564
  %neg = xor i32 %shl1, -1, !dbg !566
  %1 = load i32, i32* %isrecmask, align 4, !dbg !567
  %and = and i32 %1, %neg, !dbg !567
  store i32 %and, i32* %isrecmask, align 4, !dbg !567
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call i32 (i32, i64, ...) @ioctl(i32 %mixfd, i64 3221507583, i32* %isrecmask) #8, !dbg !568
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind ssp uwtable
define void @drawlevel(i32 %dev, i32 %level) #0 !dbg !572 {
entry:
  %buf = alloca [60 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %dev, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 %level, metadata !575, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata [60 x i8]* %buf, metadata !576, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata !4, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata !4, metadata !583, metadata !DIExpression()), !dbg !584
  %cmp = icmp slt i32 %level, 0, !dbg !585
  br i1 %cmp, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !575, metadata !DIExpression()), !dbg !574
  br label %if.end, !dbg !589

if.end:                                           ; preds = %if.then, %entry
  %level.addr.0 = phi i32 [ 0, %if.then ], [ %level, %entry ]
  call void @llvm.dbg.value(metadata i32 %level.addr.0, metadata !575, metadata !DIExpression()), !dbg !574
  %cmp1 = icmp sgt i32 %level.addr.0, 100, !dbg !591
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !593

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 100, metadata !575, metadata !DIExpression()), !dbg !574
  br label %if.end3, !dbg !594

if.end3:                                          ; preds = %if.then2, %if.end
  %level.addr.1 = phi i32 [ 100, %if.then2 ], [ %level.addr.0, %if.end ], !dbg !596
  call void @llvm.dbg.value(metadata i32 %level.addr.1, metadata !575, metadata !DIExpression()), !dbg !574
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i32 0, i32 0, !dbg !597
  %call = call i8* @memset(i8* %arraydecay, i32 61, i32 51) #8, !dbg !600
  %arrayidx = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i64 0, i64 51, !dbg !601
  store i8 0, i8* %arrayidx, align 1, !dbg !602
  %div = sdiv i32 %level.addr.1, 2, !dbg !603
  %idxprom = sext i32 %div to i64, !dbg !604
  %arrayidx4 = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i64 0, i64 %idxprom, !dbg !604
  store i8 124, i8* %arrayidx4, align 1, !dbg !605
  %div5 = sdiv i32 %level.addr.1, 2, !dbg !606
  %add = add nsw i32 %div5, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32 %add, metadata !608, metadata !DIExpression()), !dbg !574
  br label %while.body, !dbg !609

while.body:                                       ; preds = %if.end8, %if.end3
  %f.0 = phi i32 [ %add, %if.end3 ], [ %inc, %if.end8 ], !dbg !596
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !608, metadata !DIExpression()), !dbg !574
  br label %while_continue___0, !dbg !612

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !612

while_continue:                                   ; preds = %while_continue___0
  %cmp6 = icmp slt i32 %f.0, 51, !dbg !613
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !616

if.then7:                                         ; preds = %while_continue
  br label %while_break, !dbg !617

if.end8:                                          ; preds = %while_continue
  %idxprom9 = sext i32 %f.0 to i64, !dbg !619
  %arrayidx10 = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i64 0, i64 %idxprom9, !dbg !619
  store i8 45, i8* %arrayidx10, align 1, !dbg !620
  %inc = add nsw i32 %f.0, 1, !dbg !621
  call void @llvm.dbg.value(metadata i32 %inc, metadata !608, metadata !DIExpression()), !dbg !574
  br label %while.body, !dbg !609, !llvm.loop !622

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !624

while_break:                                      ; preds = %while_break___0, %if.then7
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !625
  %idxprom11 = sext i32 %dev to i64, !dbg !628
  %arrayidx12 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom11, !dbg !628
  %1 = load i32, i32* %arrayidx12, align 4, !dbg !628
  %add13 = add nsw i32 3, %1, !dbg !629
  %call14 = call i32 @wmove(%struct._win_st* %0, i32 %add13, i32 17), !dbg !630
  call void @llvm.dbg.value(metadata i32 %call14, metadata !631, metadata !DIExpression()), !dbg !574
  %cmp15 = icmp eq i32 %call14, -1, !dbg !632
  br i1 %cmp15, label %if.end19, label %if.then16, !dbg !634

if.then16:                                        ; preds = %while_break
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !635
  %arraydecay17 = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i32 0, i32 0, !dbg !639
  %call18 = call i32 @waddnstr(%struct._win_st* %2, i8* %arraydecay17, i32 -1), !dbg !640
  br label %if.end19, !dbg !641

if.end19:                                         ; preds = %if.then16, %while_break
  %arraydecay20 = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i32 0, i32 0, !dbg !642
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %level.addr.1) #8, !dbg !645
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !646
  %idxprom22 = sext i32 %dev to i64, !dbg !648
  %arrayidx23 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom22, !dbg !648
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !648
  %add24 = add nsw i32 3, %4, !dbg !649
  %call25 = call i32 @wmove(%struct._win_st* %3, i32 %add24, i32 71), !dbg !650
  call void @llvm.dbg.value(metadata i32 %call25, metadata !651, metadata !DIExpression()), !dbg !574
  %cmp26 = icmp eq i32 %call25, -1, !dbg !652
  br i1 %cmp26, label %if.end30, label %if.then27, !dbg !654

if.then27:                                        ; preds = %if.end19
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !655
  %arraydecay28 = getelementptr inbounds [60 x i8], [60 x i8]* %buf, i32 0, i32 0, !dbg !659
  %call29 = call i32 @waddnstr(%struct._win_st* %5, i8* %arraydecay28, i32 -1), !dbg !660
  br label %if.end30, !dbg !661

if.end30:                                         ; preds = %if.then27, %if.end19
  ret void, !dbg !662
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @drawrec(i32 %dev, i32 %on) #0 !dbg !663 {
entry:
  call void @llvm.dbg.value(metadata i32 %dev, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 %on, metadata !666, metadata !DIExpression()), !dbg !665
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !667
  %idxprom = sext i32 %dev to i64, !dbg !671
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom, !dbg !671
  %1 = load i32, i32* %arrayidx, align 4, !dbg !671
  %add = add nsw i32 3, %1, !dbg !672
  %call = call i32 @wmove(%struct._win_st* %0, i32 %add, i32 77), !dbg !673
  call void @llvm.dbg.value(metadata i32 %call, metadata !674, metadata !DIExpression()), !dbg !665
  %cmp = icmp eq i32 %call, -1, !dbg !675
  br i1 %cmp, label %if.end3, label %if.then, !dbg !677

if.then:                                          ; preds = %entry
  %tobool = icmp ne i32 %on, 0, !dbg !678
  br i1 %tobool, label %if.then1, label %if.else, !dbg !681

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 82, metadata !682, metadata !DIExpression()), !dbg !665
  br label %if.end, !dbg !683

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 32, metadata !682, metadata !DIExpression()), !dbg !665
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %tmp.0 = phi i32 [ 82, %if.then1 ], [ 32, %if.else ], !dbg !685
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !682, metadata !DIExpression()), !dbg !665
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !686
  %conv = sext i32 %tmp.0 to i64, !dbg !689
  %call2 = call i32 @waddch(%struct._win_st* %2, i64 %conv), !dbg !690
  br label %if.end3, !dbg !691

if.end3:                                          ; preds = %if.end, %entry
  ret void, !dbg !692
}

declare i32 @waddch(%struct._win_st*, i64) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @setupframe(i32 %existmask, i32 %canrecmask, i32* %firstdevp, i32* %lastdevp) #0 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata i32 %existmask, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i32 %canrecmask, metadata !698, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i32* %firstdevp, metadata !699, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i32* %lastdevp, metadata !700, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata !4, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata !4, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata !4, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.declare(metadata !4, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !697
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !710
  %call = call i32 @wmove(%struct._win_st* %0, i32 0, i32 36), !dbg !714
  call void @llvm.dbg.value(metadata i32 %call, metadata !715, metadata !DIExpression()), !dbg !697
  %cmp = icmp eq i32 %call, -1, !dbg !716
  br i1 %cmp, label %if.end, label %if.then, !dbg !718

if.then:                                          ; preds = %entry
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !719
  %call1 = call i32 @waddnstr(%struct._win_st* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -1), !dbg !723
  br label %if.end, !dbg !724

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !725
  %call2 = call i32 @wmove(%struct._win_st* %2, i32 2, i32 17), !dbg !728
  call void @llvm.dbg.value(metadata i32 %call2, metadata !729, metadata !DIExpression()), !dbg !697
  %cmp3 = icmp eq i32 %call2, -1, !dbg !730
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !732

if.then4:                                         ; preds = %if.end
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !733
  %call5 = call i32 @waddnstr(%struct._win_st* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0), i32 -1), !dbg !737
  br label %if.end6, !dbg !738

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !697
  br label %while.body, !dbg !740

while.body:                                       ; preds = %if.end52, %if.end6
  %f.0 = phi i32 [ 0, %if.end6 ], [ %inc53, %if.end52 ], !dbg !743
  %offset.0 = phi i32 [ 0, %if.end6 ], [ %offset.1, %if.end52 ], !dbg !743
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !709, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !739, metadata !DIExpression()), !dbg !697
  br label %while_continue___0, !dbg !744

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !744

while_continue:                                   ; preds = %while_continue___0
  %cmp7 = icmp slt i32 %f.0, 25, !dbg !745
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !748

if.then8:                                         ; preds = %while_continue
  br label %while_break, !dbg !749

if.end9:                                          ; preds = %while_continue
  %shl = shl i32 1, %f.0, !dbg !751
  %and = and i32 %existmask, %shl, !dbg !753
  %tobool = icmp ne i32 %and, 0, !dbg !753
  br i1 %tobool, label %if.then10, label %if.end52, !dbg !754

if.then10:                                        ; preds = %if.end9
  %cmp11 = icmp eq i32 %offset.0, 0, !dbg !755
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !758

if.then12:                                        ; preds = %if.then10
  store i32 %f.0, i32* %firstdevp, align 4, !dbg !759
  br label %if.end13, !dbg !761

if.end13:                                         ; preds = %if.then12, %if.then10
  store i32 %f.0, i32* %lastdevp, align 4, !dbg !762
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !764, metadata !DIExpression()), !dbg !697
  %inc = add nsw i32 %offset.0, 1, !dbg !765
  call void @llvm.dbg.value(metadata i32 %inc, metadata !709, metadata !DIExpression()), !dbg !697
  %idxprom = sext i32 %f.0 to i64, !dbg !766
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom, !dbg !766
  store i32 %offset.0, i32* %arrayidx, align 4, !dbg !767
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !768
  %idxprom14 = sext i32 %f.0 to i64, !dbg !770
  %arrayidx15 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom14, !dbg !770
  %5 = load i32, i32* %arrayidx15, align 4, !dbg !770
  %add = add nsw i32 3, %5, !dbg !771
  %call16 = call i32 @wmove(%struct._win_st* %4, i32 %add, i32 4), !dbg !772
  call void @llvm.dbg.value(metadata i32 %call16, metadata !773, metadata !DIExpression()), !dbg !697
  %cmp17 = icmp eq i32 %call16, -1, !dbg !774
  br i1 %cmp17, label %if.end22, label %if.then18, !dbg !776

if.then18:                                        ; preds = %if.end13
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !777
  %idxprom19 = sext i32 %f.0 to i64, !dbg !781
  %arrayidx20 = getelementptr inbounds [25 x [80 x i8]], [25 x [80 x i8]]* bitcast (<{ <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ [8 x i8], [72 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }>* @dev_labels to [25 x [80 x i8]]*), i64 0, i64 %idxprom19, !dbg !781
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx20, i32 0, i32 0, !dbg !782
  %call21 = call i32 @waddnstr(%struct._win_st* %6, i8* %arraydecay, i32 -1), !dbg !783
  br label %if.end22, !dbg !784

if.end22:                                         ; preds = %if.then18, %if.end13
  %7 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !785
  %idxprom23 = sext i32 %f.0 to i64, !dbg !788
  %arrayidx24 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom23, !dbg !788
  %8 = load i32, i32* %arrayidx24, align 4, !dbg !788
  %add25 = add nsw i32 3, %8, !dbg !789
  %call26 = call i32 @wmove(%struct._win_st* %7, i32 %add25, i32 16), !dbg !790
  call void @llvm.dbg.value(metadata i32 %call26, metadata !791, metadata !DIExpression()), !dbg !697
  %cmp27 = icmp eq i32 %call26, -1, !dbg !792
  br i1 %cmp27, label %if.end30, label %if.then28, !dbg !794

if.then28:                                        ; preds = %if.end22
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !795
  %call29 = call i32 @waddch(%struct._win_st* %9, i64 91), !dbg !799
  br label %if.end30, !dbg !800

if.end30:                                         ; preds = %if.then28, %if.end22
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !801
  %idxprom31 = sext i32 %f.0 to i64, !dbg !804
  %arrayidx32 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom31, !dbg !804
  %11 = load i32, i32* %arrayidx32, align 4, !dbg !804
  %add33 = add nsw i32 3, %11, !dbg !805
  %call34 = call i32 @wmove(%struct._win_st* %10, i32 %add33, i32 68), !dbg !806
  call void @llvm.dbg.value(metadata i32 %call34, metadata !807, metadata !DIExpression()), !dbg !697
  %cmp35 = icmp eq i32 %call34, -1, !dbg !808
  br i1 %cmp35, label %if.end38, label %if.then36, !dbg !810

if.then36:                                        ; preds = %if.end30
  %12 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !811
  %call37 = call i32 @waddch(%struct._win_st* %12, i64 93), !dbg !815
  br label %if.end38, !dbg !816

if.end38:                                         ; preds = %if.then36, %if.end30
  %shl39 = shl i32 1, %f.0, !dbg !817
  %and40 = and i32 %canrecmask, %shl39, !dbg !819
  %tobool41 = icmp ne i32 %and40, 0, !dbg !819
  br i1 %tobool41, label %if.then42, label %if.end51, !dbg !820

if.then42:                                        ; preds = %if.end38
  %13 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !821
  %idxprom43 = sext i32 %f.0 to i64, !dbg !825
  %arrayidx44 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_line, i64 0, i64 %idxprom43, !dbg !825
  %14 = load i32, i32* %arrayidx44, align 4, !dbg !825
  %add45 = add nsw i32 3, %14, !dbg !826
  %call46 = call i32 @wmove(%struct._win_st* %13, i32 %add45, i32 76), !dbg !827
  call void @llvm.dbg.value(metadata i32 %call46, metadata !828, metadata !DIExpression()), !dbg !697
  %cmp47 = icmp eq i32 %call46, -1, !dbg !829
  br i1 %cmp47, label %if.end50, label %if.then48, !dbg !831

if.then48:                                        ; preds = %if.then42
  %15 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !832
  %call49 = call i32 @waddnstr(%struct._win_st* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 -1), !dbg !836
  br label %if.end50, !dbg !837

if.end50:                                         ; preds = %if.then48, %if.then42
  br label %if.end51, !dbg !838

if.end51:                                         ; preds = %if.end50, %if.end38
  br label %if.end52, !dbg !839

if.end52:                                         ; preds = %if.end51, %if.end9
  %offset.1 = phi i32 [ %inc, %if.end51 ], [ %offset.0, %if.end9 ], !dbg !743
  call void @llvm.dbg.value(metadata i32 %offset.1, metadata !709, metadata !DIExpression()), !dbg !697
  %inc53 = add nsw i32 %f.0, 1, !dbg !840
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !739, metadata !DIExpression()), !dbg !697
  br label %while.body, !dbg !740, !llvm.loop !841

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !843

while_break:                                      ; preds = %while_break___0, %if.then8
  %16 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !844
  %17 = load i32, i32* @LINES, align 4, !dbg !847
  %sub = sub nsw i32 %17, 1, !dbg !848
  %call54 = call i32 @wmove(%struct._win_st* %16, i32 %sub, i32 2), !dbg !849
  call void @llvm.dbg.value(metadata i32 %call54, metadata !850, metadata !DIExpression()), !dbg !697
  %cmp55 = icmp eq i32 %call54, -1, !dbg !851
  br i1 %cmp55, label %if.end58, label %if.then56, !dbg !853

if.then56:                                        ; preds = %while_break
  %18 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !854
  %call57 = call i32 @waddnstr(%struct._win_st* %18, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i32 0, i32 0), i32 -1), !dbg !858
  br label %if.end58, !dbg !859

if.end58:                                         ; preds = %if.then56, %while_break
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind ssp uwtable
define void @usage_help(i32 %existmask) #0 !dbg !861 {
entry:
  call void @llvm.dbg.value(metadata i32 %existmask, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata !4, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata !4, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata !4, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata !4, metadata !870, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata !4, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata !4, metadata !874, metadata !DIExpression()), !dbg !875
  %call = call i32 @puts(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.12, i32 0, i32 0)), !dbg !876
  %0 = load i8*, i8** @mixerdev, align 8, !dbg !880
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i8* %0), !dbg !882
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0)), !dbg !883
  call void @llvm.dbg.value(metadata i32 0, metadata !885, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !863
  br label %while.body, !dbg !887

while.body:                                       ; preds = %if.end9, %entry
  %f.0 = phi i32 [ 0, %entry ], [ %inc10, %if.end9 ], !dbg !890
  %count.0 = phi i32 [ 0, %entry ], [ %count.2, %if.end9 ], !dbg !890
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !885, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !886, metadata !DIExpression()), !dbg !863
  br label %while_continue___0, !dbg !891

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !891

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %f.0, 25, !dbg !892
  br i1 %cmp, label %if.end, label %if.then, !dbg !895

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !896

if.end:                                           ; preds = %while_continue
  %shl = shl i32 1, %f.0, !dbg !898
  %and = and i32 %existmask, %shl, !dbg !900
  %tobool = icmp ne i32 %and, 0, !dbg !900
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !901

if.then3:                                         ; preds = %if.end
  %idxprom = sext i32 %f.0 to i64, !dbg !902
  %arrayidx = getelementptr inbounds [25 x [80 x i8]], [25 x [80 x i8]]* bitcast (<{ <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [74 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, [78 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }>* @dev_names to [25 x [80 x i8]]*), i64 0, i64 %idxprom, !dbg !902
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx, i32 0, i32 0, !dbg !902
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay), !dbg !906
  %inc = add nsw i32 %count.0, 1, !dbg !907
  call void @llvm.dbg.value(metadata i32 %inc, metadata !885, metadata !DIExpression()), !dbg !863
  br label %if.end5, !dbg !908

if.end5:                                          ; preds = %if.then3, %if.end
  %count.1 = phi i32 [ %inc, %if.then3 ], [ %count.0, %if.end ], !dbg !890
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !885, metadata !DIExpression()), !dbg !863
  %cmp6 = icmp sge i32 %count.1, 7, !dbg !909
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !911

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !912
  call void @llvm.dbg.value(metadata i32 0, metadata !885, metadata !DIExpression()), !dbg !863
  br label %if.end9, !dbg !916

if.end9:                                          ; preds = %if.then7, %if.end5
  %count.2 = phi i32 [ 0, %if.then7 ], [ %count.1, %if.end5 ], !dbg !917
  call void @llvm.dbg.value(metadata i32 %count.2, metadata !885, metadata !DIExpression()), !dbg !863
  %inc10 = add nsw i32 %f.0, 1, !dbg !918
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !886, metadata !DIExpression()), !dbg !863
  br label %while.body, !dbg !887, !llvm.loop !919

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !921

while_break:                                      ; preds = %while_break___0, %if.then
  %call11 = call i32 @puts(i8* getelementptr inbounds ([381 x i8], [381 x i8]* @.str.17, i32 0, i32 0)), !dbg !922
  ret void, !dbg !925
}

declare i32 @puts(i8*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @cmdline_main(i32 %argc, i8** %argv) #0 !dbg !926 {
entry:
  %mixfd = alloca i32, align 4
  %existmask = alloca i32, align 4
  %canrecmask = alloca i32, align 4
  %isrecmask = alloca i32, align 4
  %stereomask = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i8** %argv, metadata !931, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %mixfd, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %existmask, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %canrecmask, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %isrecmask, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %stereomask, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata !4, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata !4, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata !4, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata !4, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata !4, metadata !950, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata !4, metadata !952, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.declare(metadata !4, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata !4, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata !4, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata !4, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata !4, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata !4, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.declare(metadata !4, metadata !966, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.declare(metadata !4, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata !4, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 0, metadata !973, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 0, metadata !974, metadata !DIExpression()), !dbg !930
  br label %while.body, !dbg !975

while.body:                                       ; preds = %if.end28, %entry
  %want_levels.0 = phi i32 [ 0, %entry ], [ %want_levels.1, %if.end28 ], !dbg !979
  %want_usage.0 = phi i32 [ 0, %entry ], [ %want_usage.1, %if.end28 ], !dbg !980
  %done.0 = phi i32 [ 0, %entry ], [ %done.1, %if.end28 ], !dbg !981
  call void @llvm.dbg.value(metadata i32 %done.0, metadata !972, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %want_usage.0, metadata !973, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %want_levels.0, metadata !974, metadata !DIExpression()), !dbg !930
  br label %while_continue___4, !dbg !982

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !982

while_continue:                                   ; preds = %while_continue___4
  %call = call i32 @getoptn(i32 %argc, i8** %argv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)), !dbg !983
  call void @llvm.dbg.value(metadata i32 %call, metadata !987, metadata !DIExpression()), !dbg !930
  %cmp = icmp eq i32 %call, 100, !dbg !988
  br i1 %cmp, label %if.then, label %if.end, !dbg !991

if.then:                                          ; preds = %while_continue
  br label %case_100, !dbg !992

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 104, !dbg !994
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !996

if.then2:                                         ; preds = %if.end
  br label %case_104, !dbg !997

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 86, !dbg !999
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1001

if.then5:                                         ; preds = %if.end3
  br label %case_86, !dbg !1002

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %call, 118, !dbg !1004
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1001

if.then8:                                         ; preds = %if.end6
  br label %case_86, !dbg !1006

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call, 63, !dbg !1008
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1010

if.then11:                                        ; preds = %if.end9
  br label %case_63, !dbg !1011

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call, -1, !dbg !1013
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1015

if.then14:                                        ; preds = %if.end12
  br label %case_neg_1, !dbg !1016

if.end15:                                         ; preds = %if.end12
  br label %switch_break, !dbg !1018

case_100:                                         ; preds = %if.then
  %0 = load i8*, i8** @optnarg, align 8, !dbg !1019
  %call16 = call i32 @strlen(i8* %0) #6, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %call16, metadata !1023, metadata !DIExpression()), !dbg !930
  %add = add i32 %call16, 1, !dbg !1024
  %call17 = call noalias i8* @malloc(i32 %add) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %call17, metadata !1027, metadata !DIExpression()), !dbg !930
  store i8* %call17, i8** @mixerdev, align 8, !dbg !1028
  %1 = load i8*, i8** @mixerdev, align 8, !dbg !1029
  %2 = ptrtoint i8* %1 to i64, !dbg !1031
  %cmp18 = icmp eq i64 %2, 0, !dbg !1032
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1033

if.then19:                                        ; preds = %case_100
  call void @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !1034
  br label %if.end20, !dbg !1038

if.end20:                                         ; preds = %if.then19, %case_100
  %3 = load i8*, i8** @mixerdev, align 8, !dbg !1039
  %4 = load i8*, i8** @optnarg, align 8, !dbg !1042
  %call21 = call i8* @strcpy(i8* %3, i8* %4) #8, !dbg !1043
  br label %switch_break, !dbg !1044

case_104:                                         ; preds = %if.then2
  call void @llvm.dbg.value(metadata i32 1, metadata !973, metadata !DIExpression()), !dbg !930
  br label %switch_break, !dbg !1045

case_86:                                          ; preds = %if.then8, %if.then5
  br label %case_118, !dbg !1045

case_118:                                         ; preds = %case_86
  call void @llvm.dbg.value(metadata i32 1, metadata !974, metadata !DIExpression()), !dbg !930
  br label %switch_break, !dbg !1046

case_63:                                          ; preds = %if.then11
  %5 = load i32, i32* @optnopt, align 4, !dbg !1047
  %cmp22 = icmp eq i32 %5, 100, !dbg !1050
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1051

if.then23:                                        ; preds = %case_63
  br label %case_100___0, !dbg !1052

if.end24:                                         ; preds = %case_63
  br label %switch_default, !dbg !1054

case_100___0:                                     ; preds = %if.then23
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1055
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i32 0, i32 0)), !dbg !1058
  br label %switch_break___0, !dbg !1059

switch_default:                                   ; preds = %if.end24
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1060
  %8 = load i32, i32* @optnopt, align 4, !dbg !1063
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i32 %8), !dbg !1064
  br label %switch_break___0, !dbg !1065

switch_break___0:                                 ; preds = %switch_default, %case_100___0
  call void @exit(i32 1) #7, !dbg !1066
  unreachable, !dbg !1066

case_neg_1:                                       ; preds = %if.then14
  call void @llvm.dbg.value(metadata i32 1, metadata !972, metadata !DIExpression()), !dbg !930
  br label %switch_break, !dbg !1069

switch_break:                                     ; preds = %case_neg_1, %case_118, %case_104, %if.end20, %if.end15
  %want_levels.1 = phi i32 [ %want_levels.0, %if.end20 ], [ %want_levels.0, %case_104 ], [ 1, %case_118 ], [ %want_levels.0, %case_neg_1 ], [ %want_levels.0, %if.end15 ], !dbg !1070
  %want_usage.1 = phi i32 [ %want_usage.0, %if.end20 ], [ 1, %case_104 ], [ %want_usage.0, %case_118 ], [ %want_usage.0, %case_neg_1 ], [ %want_usage.0, %if.end15 ], !dbg !1070
  %done.1 = phi i32 [ %done.0, %if.end20 ], [ %done.0, %case_104 ], [ %done.0, %case_118 ], [ 1, %case_neg_1 ], [ %done.0, %if.end15 ], !dbg !1070
  call void @llvm.dbg.value(metadata i32 %done.1, metadata !972, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %want_usage.1, metadata !973, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %want_levels.1, metadata !974, metadata !DIExpression()), !dbg !930
  %tobool = icmp ne i32 %done.1, 0, !dbg !1071
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !1073

if.then27:                                        ; preds = %switch_break
  br label %while_break, !dbg !1074

if.end28:                                         ; preds = %switch_break
  br label %while.body, !dbg !975, !llvm.loop !1076

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !1078

while_break:                                      ; preds = %while_break___4, %if.then27
  %tobool29 = icmp ne i32 %want_usage.1, 0, !dbg !1079
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1081

if.then30:                                        ; preds = %while_break
  call void @init(i32* %mixfd, i32* %existmask, i32* %canrecmask, i32* %isrecmask, i32* %stereomask), !dbg !1082
  %9 = load i32, i32* %existmask, align 4, !dbg !1086
  call void @usage_help(i32 %9), !dbg !1088
  call void @exit(i32 0) #7, !dbg !1089
  unreachable, !dbg !1089

if.end31:                                         ; preds = %while_break
  %tobool32 = icmp ne i32 %want_levels.1, 0, !dbg !1091
  br i1 %tobool32, label %if.then33, label %if.end63, !dbg !1093

if.then33:                                        ; preds = %if.end31
  call void @init(i32* %mixfd, i32* %existmask, i32* %canrecmask, i32* %isrecmask, i32* %stereomask), !dbg !1094
  call void @llvm.dbg.value(metadata i32 0, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body34, !dbg !1099

while.body34:                                     ; preds = %if.end62, %if.then33
  %f.0 = phi i32 [ 0, %if.then33 ], [ %inc, %if.end62 ], !dbg !1102
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while_continue___5, !dbg !1103

while_continue___5:                               ; preds = %while.body34
  br label %while_continue___0, !dbg !1103

while_continue___0:                               ; preds = %while_continue___5
  %cmp35 = icmp slt i32 %f.0, 25, !dbg !1104
  br i1 %cmp35, label %if.end37, label %if.then36, !dbg !1107

if.then36:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1108

if.end37:                                         ; preds = %while_continue___0
  %10 = load i32, i32* %existmask, align 4, !dbg !1110
  %shl = shl i32 1, %f.0, !dbg !1112
  %and = and i32 %10, %shl, !dbg !1113
  %tobool38 = icmp ne i32 %and, 0, !dbg !1113
  br i1 %tobool38, label %if.then39, label %if.end62, !dbg !1114

if.then39:                                        ; preds = %if.end37
  %11 = load i32, i32* %mixfd, align 4, !dbg !1115
  %call40 = call i32 @mixer_getlevel_stereo(i32 %11, i32 %f.0), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %call40, metadata !1120, metadata !DIExpression()), !dbg !930
  %and41 = and i32 %call40, 255, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %and41, metadata !1122, metadata !DIExpression()), !dbg !930
  %shr = ashr i32 %call40, 8, !dbg !1123
  %and42 = and i32 %shr, 255, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %and42, metadata !1125, metadata !DIExpression()), !dbg !930
  %idxprom = sext i32 %f.0 to i64, !dbg !1126
  %arrayidx = getelementptr inbounds [25 x [80 x i8]], [25 x [80 x i8]]* bitcast (<{ <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [74 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, [78 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }>* @dev_names to [25 x [80 x i8]]*), i64 0, i64 %idxprom, !dbg !1126
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx, i32 0, i32 0, !dbg !1126
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay, i32 %and41), !dbg !1128
  %12 = load i32, i32* %stereomask, align 4, !dbg !1129
  %shl44 = shl i32 1, %f.0, !dbg !1131
  %and45 = and i32 %12, %shl44, !dbg !1132
  %tobool46 = icmp ne i32 %and45, 0, !dbg !1132
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !1133

if.then47:                                        ; preds = %if.then39
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 %and42), !dbg !1134
  br label %if.end49, !dbg !1138

if.end49:                                         ; preds = %if.then47, %if.then39
  %13 = load i32, i32* %canrecmask, align 4, !dbg !1139
  %shl50 = shl i32 1, %f.0, !dbg !1141
  %and51 = and i32 %13, %shl50, !dbg !1142
  %tobool52 = icmp ne i32 %and51, 0, !dbg !1142
  br i1 %tobool52, label %if.then53, label %if.end60, !dbg !1143

if.then53:                                        ; preds = %if.end49
  %14 = load i32, i32* %isrecmask, align 4, !dbg !1144
  %shl54 = shl i32 1, %f.0, !dbg !1147
  %and55 = and i32 %14, %shl54, !dbg !1148
  %tobool56 = icmp ne i32 %and55, 0, !dbg !1148
  br i1 %tobool56, label %if.then57, label %if.else, !dbg !1149

if.then57:                                        ; preds = %if.then53
  call void @llvm.dbg.value(metadata i32 82, metadata !1150, metadata !DIExpression()), !dbg !930
  br label %if.end58, !dbg !1151

if.else:                                          ; preds = %if.then53
  call void @llvm.dbg.value(metadata i32 32, metadata !1150, metadata !DIExpression()), !dbg !930
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then57
  %tmp___3.0 = phi i32 [ 82, %if.then57 ], [ 32, %if.else ], !dbg !1153
  call void @llvm.dbg.value(metadata i32 %tmp___3.0, metadata !1150, metadata !DIExpression()), !dbg !930
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %tmp___3.0), !dbg !1154
  br label %if.end60, !dbg !1157

if.end60:                                         ; preds = %if.end58, %if.end49
  %call61 = call i32 @putchar(i32 10), !dbg !1158
  br label %if.end62, !dbg !1161

if.end62:                                         ; preds = %if.end60, %if.end37
  %inc = add nsw i32 %f.0, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body34, !dbg !1099, !llvm.loop !1163

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !1165

while_break___0:                                  ; preds = %while_break___5, %if.then36
  call void @exit(i32 0) #7, !dbg !1166
  unreachable, !dbg !1166

if.end63:                                         ; preds = %if.end31
  %15 = load i32, i32* @optnind, align 4, !dbg !1169
  %cmp64 = icmp sge i32 %15, %argc, !dbg !1171
  br i1 %cmp64, label %if.then65, label %if.end66, !dbg !1172

if.then65:                                        ; preds = %if.end63
  ret void, !dbg !1173

if.end66:                                         ; preds = %if.end63
  call void @init(i32* %mixfd, i32* %existmask, i32* %canrecmask, i32* %isrecmask, i32* %stereomask), !dbg !1175
  br label %while.body67, !dbg !1178

while.body67:                                     ; preds = %if.end208, %if.end66
  br label %while_continue___6, !dbg !1181

while_continue___6:                               ; preds = %while.body67
  br label %while_continue___1, !dbg !1181

while_continue___1:                               ; preds = %while_continue___6
  %16 = load i32, i32* @optnind, align 4, !dbg !1182
  %cmp68 = icmp slt i32 %16, %argc, !dbg !1185
  br i1 %cmp68, label %if.end70, label %if.then69, !dbg !1186

if.then69:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1187

if.end70:                                         ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i32 0, metadata !1189, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 0, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body72, !dbg !1190

while.body72:                                     ; preds = %if.end87, %if.end70
  %f.1 = phi i32 [ 0, %if.end70 ], [ %inc88, %if.end87 ], !dbg !1193
  call void @llvm.dbg.value(metadata i32 %f.1, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while_continue___7, !dbg !1194

while_continue___7:                               ; preds = %while.body72
  br label %while_continue___2, !dbg !1194

while_continue___2:                               ; preds = %while_continue___7
  %cmp73 = icmp slt i32 %f.1, 25, !dbg !1195
  br i1 %cmp73, label %if.end75, label %if.then74, !dbg !1198

if.then74:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1199

if.end75:                                         ; preds = %while_continue___2
  %17 = load i32, i32* %existmask, align 4, !dbg !1201
  %shl76 = shl i32 1, %f.1, !dbg !1203
  %and77 = and i32 %17, %shl76, !dbg !1204
  %tobool78 = icmp ne i32 %and77, 0, !dbg !1204
  br i1 %tobool78, label %if.then79, label %if.end87, !dbg !1205

if.then79:                                        ; preds = %if.end75
  %18 = load i32, i32* @optnind, align 4, !dbg !1206
  %idx.ext = sext i32 %18 to i64, !dbg !1210
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !1210
  %19 = load i8*, i8** %add.ptr, align 8, !dbg !1211
  %idxprom80 = sext i32 %f.1 to i64, !dbg !1212
  %arrayidx81 = getelementptr inbounds [25 x [80 x i8]], [25 x [80 x i8]]* bitcast (<{ <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [74 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, [78 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, [77 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, [76 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, [75 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [73 x i8] }> }>* @dev_names to [25 x [80 x i8]]*), i64 0, i64 %idxprom80, !dbg !1212
  %arraydecay82 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx81, i32 0, i32 0, !dbg !1213
  %call83 = call i32 @strcmp(i8* %19, i8* %arraydecay82) #6, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %call83, metadata !1215, metadata !DIExpression()), !dbg !930
  %cmp84 = icmp eq i32 %call83, 0, !dbg !1216
  br i1 %cmp84, label %if.then85, label %if.end86, !dbg !1218

if.then85:                                        ; preds = %if.then79
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()), !dbg !930
  br label %while_break___2, !dbg !1219

if.end86:                                         ; preds = %if.then79
  br label %if.end87, !dbg !1221

if.end87:                                         ; preds = %if.end86, %if.end75
  %inc88 = add nsw i32 %f.1, 1, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %inc88, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body72, !dbg !1190, !llvm.loop !1223

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !1225

while_break___2:                                  ; preds = %while_break___7, %if.then85, %if.then74
  %found.0 = phi i32 [ 1, %if.then85 ], [ 0, %if.then74 ], [ undef, %while_break___7 ], !dbg !1193
  call void @llvm.dbg.value(metadata i32 %found.0, metadata !1189, metadata !DIExpression()), !dbg !930
  %tobool89 = icmp ne i32 %found.0, 0, !dbg !1226
  br i1 %tobool89, label %if.end94, label %if.then90, !dbg !1228

if.then90:                                        ; preds = %while_break___2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1229
  %21 = load i32, i32* @optnind, align 4, !dbg !1233
  %idx.ext91 = sext i32 %21 to i64, !dbg !1234
  %add.ptr92 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext91, !dbg !1234
  %22 = load i8*, i8** %add.ptr92, align 8, !dbg !1235
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), i8* %22), !dbg !1236
  call void @exit(i32 1) #7, !dbg !1237
  unreachable, !dbg !1237

if.end94:                                         ; preds = %while_break___2
  %23 = load i32, i32* @optnind, align 4, !dbg !1239
  %sub = sub nsw i32 %argc, %23, !dbg !1241
  %cmp95 = icmp slt i32 %sub, 2, !dbg !1242
  br i1 %cmp95, label %if.then96, label %if.end100, !dbg !1243

if.then96:                                        ; preds = %if.end94
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1244
  %25 = load i32, i32* @optnind, align 4, !dbg !1248
  %idx.ext97 = sext i32 %25 to i64, !dbg !1249
  %add.ptr98 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext97, !dbg !1249
  %26 = load i8*, i8** %add.ptr98, align 8, !dbg !1250
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), i8* %26), !dbg !1251
  call void @exit(i32 1) #7, !dbg !1252
  unreachable, !dbg !1252

if.end100:                                        ; preds = %if.end94
  %27 = load i32, i32* @optnind, align 4, !dbg !1254
  %inc101 = add nsw i32 %27, 1, !dbg !1254
  store i32 %inc101, i32* @optnind, align 4, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %f.1, metadata !1120, metadata !DIExpression()), !dbg !930
  %28 = load i32, i32* @optnind, align 4, !dbg !1256
  %idx.ext102 = sext i32 %28 to i64, !dbg !1258
  %add.ptr103 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext102, !dbg !1258
  %29 = load i8*, i8** %add.ptr103, align 8, !dbg !1259
  %call104 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0)) #6, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %call104, metadata !1261, metadata !DIExpression()), !dbg !930
  %cmp105 = icmp eq i32 %call104, 0, !dbg !1262
  br i1 %cmp105, label %if.then106, label %if.else107, !dbg !1264

if.then106:                                       ; preds = %if.end100
  br label %_L, !dbg !1265

if.else107:                                       ; preds = %if.end100
  %30 = load i32, i32* @optnind, align 4, !dbg !1267
  %idx.ext108 = sext i32 %30 to i64, !dbg !1271
  %add.ptr109 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext108, !dbg !1271
  %31 = load i8*, i8** %add.ptr109, align 8, !dbg !1272
  %call110 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #6, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %call110, metadata !1274, metadata !DIExpression()), !dbg !930
  %cmp111 = icmp eq i32 %call110, 0, !dbg !1275
  br i1 %cmp111, label %if.then112, label %if.else127, !dbg !1277

if.then112:                                       ; preds = %if.else107
  br label %_L, !dbg !1278

_L:                                               ; preds = %if.then112, %if.then106
  %32 = load i32, i32* %canrecmask, align 4, !dbg !1279
  %shl113 = shl i32 1, %f.1, !dbg !1282
  %and114 = and i32 %32, %shl113, !dbg !1283
  %tobool115 = icmp ne i32 %and114, 0, !dbg !1283
  br i1 %tobool115, label %if.end121, label %if.then116, !dbg !1284

if.then116:                                       ; preds = %_L
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1285
  %34 = load i32, i32* @optnind, align 4, !dbg !1289
  %sub117 = sub nsw i32 %34, 1, !dbg !1290
  %idx.ext118 = sext i32 %sub117 to i64, !dbg !1291
  %add.ptr119 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext118, !dbg !1291
  %35 = load i8*, i8** %add.ptr119, align 8, !dbg !1292
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i8* %35), !dbg !1293
  call void @exit(i32 1) #7, !dbg !1294
  unreachable, !dbg !1294

if.end121:                                        ; preds = %_L
  %36 = load i32, i32* %mixfd, align 4, !dbg !1296
  %37 = load i32, i32* @optnind, align 4, !dbg !1299
  %idx.ext122 = sext i32 %37 to i64, !dbg !1300
  %add.ptr123 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext122, !dbg !1300
  %38 = load i8*, i8** %add.ptr123, align 8, !dbg !1301
  %add.ptr124 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !1302
  %39 = load i8, i8* %add.ptr124, align 1, !dbg !1303
  %conv = sext i8 %39 to i32, !dbg !1304
  %cmp125 = icmp eq i32 %conv, 114, !dbg !1305
  %conv126 = zext i1 %cmp125 to i32, !dbg !1305
  call void @mixer_recset(i32 %36, i32 %f.1, i32* %isrecmask, i32 %conv126), !dbg !1306
  br label %if.end207, !dbg !1307

if.else127:                                       ; preds = %if.else107
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()), !dbg !930
  %40 = load i32, i32* @optnind, align 4, !dbg !1309
  %idx.ext128 = sext i32 %40 to i64, !dbg !1312
  %add.ptr129 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext128, !dbg !1312
  %41 = load i8*, i8** %add.ptr129, align 8, !dbg !1313
  %add.ptr130 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !1314
  %42 = load i8, i8* %add.ptr130, align 1, !dbg !1315
  %conv131 = sext i8 %42 to i32, !dbg !1316
  %cmp132 = icmp eq i32 %conv131, 43, !dbg !1317
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !1318

if.then134:                                       ; preds = %if.else127
  call void @llvm.dbg.value(metadata i32 1, metadata !1308, metadata !DIExpression()), !dbg !930
  br label %if.end135, !dbg !1319

if.end135:                                        ; preds = %if.then134, %if.else127
  %offset_sign.0 = phi i32 [ 1, %if.then134 ], [ 0, %if.else127 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %offset_sign.0, metadata !1308, metadata !DIExpression()), !dbg !930
  %43 = load i32, i32* @optnind, align 4, !dbg !1322
  %idx.ext136 = sext i32 %43 to i64, !dbg !1324
  %add.ptr137 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext136, !dbg !1324
  %44 = load i8*, i8** %add.ptr137, align 8, !dbg !1325
  %add.ptr138 = getelementptr inbounds i8, i8* %44, i64 0, !dbg !1326
  %45 = load i8, i8* %add.ptr138, align 1, !dbg !1327
  %conv139 = sext i8 %45 to i32, !dbg !1328
  %cmp140 = icmp eq i32 %conv139, 45, !dbg !1329
  br i1 %cmp140, label %if.then142, label %if.end143, !dbg !1330

if.then142:                                       ; preds = %if.end135
  call void @llvm.dbg.value(metadata i32 -1, metadata !1308, metadata !DIExpression()), !dbg !930
  br label %if.end143, !dbg !1331

if.end143:                                        ; preds = %if.then142, %if.end135
  %offset_sign.1 = phi i32 [ -1, %if.then142 ], [ %offset_sign.0, %if.end135 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %offset_sign.1, metadata !1308, metadata !DIExpression()), !dbg !930
  %tobool144 = icmp ne i32 %offset_sign.1, 0, !dbg !1333
  br i1 %tobool144, label %if.then145, label %if.else146, !dbg !1335

if.then145:                                       ; preds = %if.end143
  call void @llvm.dbg.value(metadata i32 1, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %if.end147, !dbg !1336

if.else146:                                       ; preds = %if.end143
  call void @llvm.dbg.value(metadata i32 0, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %if.then145
  %f.2 = phi i32 [ 1, %if.then145 ], [ 0, %if.else146 ], !dbg !1338
  call void @llvm.dbg.value(metadata i32 %f.2, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body149, !dbg !1339

while.body149:                                    ; preds = %if.end170, %if.end147
  %f.3 = phi i32 [ %f.2, %if.end147 ], [ %inc171, %if.end170 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %f.3, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while_continue___8, !dbg !1342

while_continue___8:                               ; preds = %while.body149
  br label %while_continue___3, !dbg !1342

while_continue___3:                               ; preds = %while_continue___8
  %46 = load i32, i32* @optnind, align 4, !dbg !1343
  %idx.ext150 = sext i32 %46 to i64, !dbg !1347
  %add.ptr151 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext150, !dbg !1347
  %47 = load i8*, i8** %add.ptr151, align 8, !dbg !1348
  %call152 = call i32 @strlen(i8* %47) #6, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %call152, metadata !1350, metadata !DIExpression()), !dbg !930
  %cmp153 = icmp ult i32 %f.3, %call152, !dbg !1351
  br i1 %cmp153, label %if.end156, label %if.then155, !dbg !1353

if.then155:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !1354

if.end156:                                        ; preds = %while_continue___3
  %48 = load i32, i32* @optnind, align 4, !dbg !1356
  %idx.ext157 = sext i32 %48 to i64, !dbg !1359
  %add.ptr158 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext157, !dbg !1359
  %49 = load i8*, i8** %add.ptr158, align 8, !dbg !1360
  %idx.ext159 = sext i32 %f.3 to i64, !dbg !1361
  %add.ptr160 = getelementptr inbounds i8, i8* %49, i64 %idx.ext159, !dbg !1361
  %50 = load i8, i8* %add.ptr160, align 1, !dbg !1362
  %conv161 = sext i8 %50 to i32, !dbg !1363
  %call162 = call i8* @strchr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 %conv161) #6, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %call162, metadata !1365, metadata !DIExpression()), !dbg !930
  %51 = ptrtoint i8* %call162 to i64, !dbg !1366
  %cmp163 = icmp eq i64 %51, 0, !dbg !1368
  br i1 %cmp163, label %if.then165, label %if.end170, !dbg !1369

if.then165:                                       ; preds = %if.end156
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1370
  %53 = load i32, i32* @optnind, align 4, !dbg !1374
  %sub166 = sub nsw i32 %53, 1, !dbg !1375
  %idx.ext167 = sext i32 %sub166 to i64, !dbg !1376
  %add.ptr168 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext167, !dbg !1376
  %54 = load i8*, i8** %add.ptr168, align 8, !dbg !1377
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0), i8* %54), !dbg !1378
  call void @exit(i32 1) #7, !dbg !1379
  unreachable, !dbg !1379

if.end170:                                        ; preds = %if.end156
  %inc171 = add nsw i32 %f.3, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %inc171, metadata !1098, metadata !DIExpression()), !dbg !930
  br label %while.body149, !dbg !1339, !llvm.loop !1382

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !1384

while_break___3:                                  ; preds = %while_break___8, %if.then155
  %55 = load i32, i32* @optnind, align 4, !dbg !1385
  %idx.ext172 = sext i32 %55 to i64, !dbg !1388
  %add.ptr173 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext172, !dbg !1388
  %56 = load i8*, i8** %add.ptr173, align 8, !dbg !1389
  %call174 = call i8* @strchr(i8* %56, i32 44) #6, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %call174, metadata !1391, metadata !DIExpression()), !dbg !930
  %57 = ptrtoint i8* %call174 to i64, !dbg !1392
  %cmp175 = icmp ne i64 %57, 0, !dbg !1394
  br i1 %cmp175, label %if.then177, label %if.else187, !dbg !1395

if.then177:                                       ; preds = %while_break___3
  %tobool178 = icmp ne i32 %offset_sign.1, 0, !dbg !1396
  br i1 %tobool178, label %if.then179, label %if.end181, !dbg !1399

if.then179:                                       ; preds = %if.then177
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1400
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0)), !dbg !1404
  call void @exit(i32 1) #7, !dbg !1405
  unreachable, !dbg !1405

if.end181:                                        ; preds = %if.then177
  %59 = load i32, i32* @optnind, align 4, !dbg !1407
  %idx.ext182 = sext i32 %59 to i64, !dbg !1410
  %add.ptr183 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext182, !dbg !1410
  %60 = load i8*, i8** %add.ptr183, align 8, !dbg !1411
  %call184 = call i32 @atoi(i8* %60) #6, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %call184, metadata !1122, metadata !DIExpression()), !dbg !930
  %add.ptr185 = getelementptr inbounds i8, i8* %call174, i64 1, !dbg !1413
  %call186 = call i32 @atoi(i8* %add.ptr185) #6, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %call186, metadata !1125, metadata !DIExpression()), !dbg !930
  %61 = load i32, i32* %mixfd, align 4, !dbg !1416
  call void @mixer_setlevel_stereo(i32 %61, i32 %f.1, i32 %call184, i32 %call186), !dbg !1418
  br label %if.end206, !dbg !1419

if.else187:                                       ; preds = %while_break___3
  %tobool188 = icmp ne i32 %offset_sign.1, 0, !dbg !1420
  br i1 %tobool188, label %if.then189, label %if.else201, !dbg !1422

if.then189:                                       ; preds = %if.else187
  %62 = load i32, i32* @optnind, align 4, !dbg !1423
  %idx.ext190 = sext i32 %62 to i64, !dbg !1427
  %add.ptr191 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext190, !dbg !1427
  %63 = load i8*, i8** %add.ptr191, align 8, !dbg !1428
  %call192 = call i32 @strlen(i8* %63) #6, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %call192, metadata !1430, metadata !DIExpression()), !dbg !930
  %cmp193 = icmp ult i32 %call192, 2, !dbg !1431
  br i1 %cmp193, label %if.then195, label %if.else196, !dbg !1433

if.then195:                                       ; preds = %if.then189
  %mul = mul nsw i32 2, %offset_sign.1, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1436, metadata !DIExpression()), !dbg !930
  br label %if.end200, !dbg !1437

if.else196:                                       ; preds = %if.then189
  %64 = load i32, i32* @optnind, align 4, !dbg !1438
  %idx.ext197 = sext i32 %64 to i64, !dbg !1442
  %add.ptr198 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext197, !dbg !1442
  %65 = load i8*, i8** %add.ptr198, align 8, !dbg !1443
  %call199 = call i32 @atoi(i8* %65) #6, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %call199, metadata !1445, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %call199, metadata !1436, metadata !DIExpression()), !dbg !930
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then195
  %tmp___9.0 = phi i32 [ %mul, %if.then195 ], [ %call199, %if.else196 ], !dbg !1446
  call void @llvm.dbg.value(metadata i32 %tmp___9.0, metadata !1436, metadata !DIExpression()), !dbg !930
  %66 = load i32, i32* %mixfd, align 4, !dbg !1447
  call void @mixer_change(i32 %66, i32 %f.1, i32 %tmp___9.0), !dbg !1450
  br label %if.end205, !dbg !1451

if.else201:                                       ; preds = %if.else187
  %67 = load i32, i32* @optnind, align 4, !dbg !1452
  %idx.ext202 = sext i32 %67 to i64, !dbg !1456
  %add.ptr203 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext202, !dbg !1456
  %68 = load i8*, i8** %add.ptr203, align 8, !dbg !1457
  %call204 = call i32 @atoi(i8* %68) #6, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %call204, metadata !1459, metadata !DIExpression()), !dbg !930
  %69 = load i32, i32* %mixfd, align 4, !dbg !1460
  call void @mixer_setlevel(i32 %69, i32 %f.1, i32 %call204), !dbg !1462
  br label %if.end205

if.end205:                                        ; preds = %if.else201, %if.end200
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end181
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end121
  br label %if.end208

if.end208:                                        ; preds = %if.end207
  %70 = load i32, i32* @optnind, align 4, !dbg !1463
  %inc209 = add nsw i32 %70, 1, !dbg !1463
  store i32 %inc209, i32* @optnind, align 4, !dbg !1463
  br label %while.body67, !dbg !1178, !llvm.loop !1464

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !1466

while_break___1:                                  ; preds = %while_break___6, %if.then69
  call void @exit(i32 0) #7, !dbg !1467
  unreachable, !dbg !1467
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1470 {
entry:
  %mixfd = alloca i32, align 4
  %existmask = alloca i32, align 4
  %canrecmask = alloca i32, align 4
  %isrecmask = alloca i32, align 4
  %stereomask = alloca i32, align 4
  %firstdev = alloca i32, align 4
  %lastdev = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1475, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %mixfd, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.declare(metadata i32* %existmask, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata i32* %canrecmask, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %isrecmask, metadata !1482, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %stereomask, metadata !1484, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %firstdev, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %lastdev, metadata !1488, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata !4, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 0, metadata !1492, metadata !DIExpression()), !dbg !1474
  %cmp = icmp sgt i32 %argc, 1, !dbg !1493
  br i1 %cmp, label %if.then, label %if.end, !dbg !1496

if.then:                                          ; preds = %entry
  call void @cmdline_main(i32 %argc, i8** %argv), !dbg !1497
  br label %if.end, !dbg !1501

if.end:                                           ; preds = %if.then, %entry
  call void @init(i32* %mixfd, i32* %existmask, i32* %canrecmask, i32* %isrecmask, i32* %stereomask), !dbg !1502
  %0 = load i32, i32* %existmask, align 4, !dbg !1505
  %tobool = icmp ne i32 %0, 0, !dbg !1505
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !1507

if.then1:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1508
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0)), !dbg !1512
  call void @exit(i32 1) #7, !dbg !1513
  unreachable, !dbg !1513

if.end2:                                          ; preds = %if.end
  call void @init_term(), !dbg !1515
  %2 = load i32, i32* %existmask, align 4, !dbg !1518
  %3 = load i32, i32* %canrecmask, align 4, !dbg !1520
  call void @setupframe(i32 %2, i32 %3, i32* %firstdev, i32* %lastdev), !dbg !1521
  %4 = load i32, i32* %firstdev, align 4, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %4, metadata !1523, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 0, metadata !1524, metadata !DIExpression()), !dbg !1474
  br label %while.body, !dbg !1525

while.body:                                       ; preds = %if.end16, %if.end2
  %f.0 = phi i32 [ 0, %if.end2 ], [ %inc, %if.end16 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !1524, metadata !DIExpression()), !dbg !1474
  br label %while_continue___3, !dbg !1529

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !1529

while_continue:                                   ; preds = %while_continue___3
  %cmp3 = icmp slt i32 %f.0, 25, !dbg !1530
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1533

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !1534

if.end5:                                          ; preds = %while_continue
  %5 = load i32, i32* %existmask, align 4, !dbg !1536
  %shl = shl i32 1, %f.0, !dbg !1538
  %and = and i32 %5, %shl, !dbg !1539
  %tobool6 = icmp ne i32 %and, 0, !dbg !1539
  br i1 %tobool6, label %if.then7, label %if.end16, !dbg !1540

if.then7:                                         ; preds = %if.end5
  %6 = load i32, i32* %mixfd, align 4, !dbg !1541
  %call8 = call i32 @mixer_getlevel(i32 %6, i32 %f.0), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1546, metadata !DIExpression()), !dbg !1474
  call void @drawlevel(i32 %f.0, i32 %call8), !dbg !1547
  %7 = load i32, i32* %canrecmask, align 4, !dbg !1549
  %shl9 = shl i32 1, %f.0, !dbg !1551
  %and10 = and i32 %7, %shl9, !dbg !1552
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1552
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !1553

if.then12:                                        ; preds = %if.then7
  %8 = load i32, i32* %isrecmask, align 4, !dbg !1554
  %shl13 = shl i32 1, %f.0, !dbg !1558
  %and14 = and i32 %8, %shl13, !dbg !1559
  call void @drawrec(i32 %f.0, i32 %and14), !dbg !1560
  br label %if.end15, !dbg !1561

if.end15:                                         ; preds = %if.then12, %if.then7
  br label %if.end16, !dbg !1562

if.end16:                                         ; preds = %if.end15, %if.end5
  %inc = add nsw i32 %f.0, 1, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1524, metadata !DIExpression()), !dbg !1474
  br label %while.body, !dbg !1525, !llvm.loop !1564

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !1566

while_break:                                      ; preds = %while_break___3, %if.then4
  call void @drawsel(i32 %4, i32 -1), !dbg !1567
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1570
  %call17 = call i32 @wrefresh(%struct._win_st* %9), !dbg !1572
  br label %while.body18, !dbg !1573

while.body18:                                     ; preds = %switch_break, %while_break
  %cursel.0 = phi i32 [ %4, %while_break ], [ %cursel.5, %switch_break ], !dbg !1576
  %quit.0 = phi i32 [ 0, %while_break ], [ %quit.1, %switch_break ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %quit.0, metadata !1492, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %cursel.0, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %while_continue___4, !dbg !1577

while_continue___4:                               ; preds = %while.body18
  br label %while_continue___0, !dbg !1577

while_continue___0:                               ; preds = %while_continue___4
  %tobool19 = icmp ne i32 %quit.0, 0, !dbg !1578
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1581

if.then20:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1582

if.end21:                                         ; preds = %while_continue___0
  call void @llvm.dbg.value(metadata i32 %cursel.0, metadata !1584, metadata !DIExpression()), !dbg !1474
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1585
  %call22 = call i32 @wgetch(%struct._win_st* %10), !dbg !1588
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1589, metadata !DIExpression()), !dbg !1474
  %cmp23 = icmp eq i32 %call22, 27, !dbg !1590
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !1593

if.then24:                                        ; preds = %if.end21
  br label %case_27, !dbg !1594

if.end25:                                         ; preds = %if.end21
  %cmp26 = icmp eq i32 %call22, 120, !dbg !1596
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !1593

if.then27:                                        ; preds = %if.end25
  br label %case_27, !dbg !1598

if.end28:                                         ; preds = %if.end25
  %cmp29 = icmp eq i32 %call22, 113, !dbg !1600
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1593

if.then30:                                        ; preds = %if.end28
  br label %case_27, !dbg !1602

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq i32 %call22, 259, !dbg !1604
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !1606

if.then33:                                        ; preds = %if.end31
  br label %case_259, !dbg !1607

if.end34:                                         ; preds = %if.end31
  %cmp35 = icmp eq i32 %call22, 107, !dbg !1609
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !1606

if.then36:                                        ; preds = %if.end34
  br label %case_259, !dbg !1611

if.end37:                                         ; preds = %if.end34
  %cmp38 = icmp eq i32 %call22, 258, !dbg !1613
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !1615

if.then39:                                        ; preds = %if.end37
  br label %case_258, !dbg !1616

if.end40:                                         ; preds = %if.end37
  %cmp41 = icmp eq i32 %call22, 106, !dbg !1618
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !1615

if.then42:                                        ; preds = %if.end40
  br label %case_258, !dbg !1620

if.end43:                                         ; preds = %if.end40
  %cmp44 = icmp eq i32 %call22, 45, !dbg !1622
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !1624

if.then45:                                        ; preds = %if.end43
  br label %case_45, !dbg !1625

if.end46:                                         ; preds = %if.end43
  %cmp47 = icmp eq i32 %call22, 260, !dbg !1627
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !1624

if.then48:                                        ; preds = %if.end46
  br label %case_45, !dbg !1629

if.end49:                                         ; preds = %if.end46
  %cmp50 = icmp eq i32 %call22, 72, !dbg !1631
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !1624

if.then51:                                        ; preds = %if.end49
  br label %case_45, !dbg !1633

if.end52:                                         ; preds = %if.end49
  %cmp53 = icmp eq i32 %call22, 104, !dbg !1635
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !1624

if.then54:                                        ; preds = %if.end52
  br label %case_45, !dbg !1637

if.end55:                                         ; preds = %if.end52
  %cmp56 = icmp eq i32 %call22, 61, !dbg !1639
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !1641

if.then57:                                        ; preds = %if.end55
  br label %case_61, !dbg !1642

if.end58:                                         ; preds = %if.end55
  %cmp59 = icmp eq i32 %call22, 43, !dbg !1644
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !1641

if.then60:                                        ; preds = %if.end58
  br label %case_61, !dbg !1646

if.end61:                                         ; preds = %if.end58
  %cmp62 = icmp eq i32 %call22, 261, !dbg !1648
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !1641

if.then63:                                        ; preds = %if.end61
  br label %case_61, !dbg !1650

if.end64:                                         ; preds = %if.end61
  %cmp65 = icmp eq i32 %call22, 76, !dbg !1652
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !1641

if.then66:                                        ; preds = %if.end64
  br label %case_61, !dbg !1654

if.end67:                                         ; preds = %if.end64
  %cmp68 = icmp eq i32 %call22, 108, !dbg !1656
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !1641

if.then69:                                        ; preds = %if.end67
  br label %case_61, !dbg !1658

if.end70:                                         ; preds = %if.end67
  %cmp71 = icmp eq i32 %call22, 32, !dbg !1660
  br i1 %cmp71, label %if.then72, label %if.end73, !dbg !1662

if.then72:                                        ; preds = %if.end70
  br label %case_32, !dbg !1663

if.end73:                                         ; preds = %if.end70
  %cmp74 = icmp eq i32 %call22, 12, !dbg !1665
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !1667

if.then75:                                        ; preds = %if.end73
  br label %case_12, !dbg !1668

if.end76:                                         ; preds = %if.end73
  %cmp77 = icmp eq i32 %call22, 18, !dbg !1670
  br i1 %cmp77, label %if.then78, label %if.end79, !dbg !1667

if.then78:                                        ; preds = %if.end76
  br label %case_12, !dbg !1672

if.end79:                                         ; preds = %if.end76
  br label %switch_break, !dbg !1674

case_27:                                          ; preds = %if.then30, %if.then27, %if.then24
  br label %case_120, !dbg !1674

case_120:                                         ; preds = %case_27
  br label %case_113, !dbg !1674

case_113:                                         ; preds = %case_120
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !1474
  br label %switch_break, !dbg !1675

case_259:                                         ; preds = %if.then36, %if.then33
  br label %case_107, !dbg !1675

case_107:                                         ; preds = %case_259
  br label %while.body81, !dbg !1676

while.body81:                                     ; preds = %if.end89, %case_107
  %cursel.1 = phi i32 [ %cursel.0, %case_107 ], [ %dec, %if.end89 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %cursel.1, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %while_continue___5, !dbg !1679

while_continue___5:                               ; preds = %while.body81
  br label %while_continue___1, !dbg !1679

while_continue___1:                               ; preds = %while_continue___5
  %dec = add nsw i32 %cursel.1, -1, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1523, metadata !DIExpression()), !dbg !1474
  %11 = load i32, i32* %firstdev, align 4, !dbg !1682
  %cmp82 = icmp sge i32 %dec, %11, !dbg !1684
  br i1 %cmp82, label %if.then83, label %if.else, !dbg !1685

if.then83:                                        ; preds = %while_continue___1
  %12 = load i32, i32* %existmask, align 4, !dbg !1686
  %shl84 = shl i32 1, %dec, !dbg !1689
  %and85 = and i32 %12, %shl84, !dbg !1690
  %tobool86 = icmp ne i32 %and85, 0, !dbg !1690
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !1691

if.then87:                                        ; preds = %if.then83
  br label %while_break___1, !dbg !1692

if.end88:                                         ; preds = %if.then83
  br label %if.end89, !dbg !1694

if.else:                                          ; preds = %while_continue___1
  br label %while_break___1, !dbg !1695

if.end89:                                         ; preds = %if.end88
  br label %while.body81, !dbg !1676, !llvm.loop !1697

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !1699

while_break___1:                                  ; preds = %while_break___5, %if.else, %if.then87
  %13 = load i32, i32* %firstdev, align 4, !dbg !1700
  %cmp90 = icmp slt i32 %dec, %13, !dbg !1702
  br i1 %cmp90, label %if.then91, label %if.end92, !dbg !1703

if.then91:                                        ; preds = %while_break___1
  %14 = load i32, i32* %lastdev, align 4, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %14, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %if.end92, !dbg !1706

if.end92:                                         ; preds = %if.then91, %while_break___1
  %cursel.2 = phi i32 [ %14, %if.then91 ], [ %dec, %while_break___1 ], !dbg !1707
  call void @llvm.dbg.value(metadata i32 %cursel.2, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %switch_break, !dbg !1708

case_258:                                         ; preds = %if.then42, %if.then39
  br label %case_106, !dbg !1708

case_106:                                         ; preds = %case_258
  br label %while.body94, !dbg !1709

while.body94:                                     ; preds = %if.end104, %case_106
  %cursel.3 = phi i32 [ %cursel.0, %case_106 ], [ %inc95, %if.end104 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %cursel.3, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %while_continue___6, !dbg !1712

while_continue___6:                               ; preds = %while.body94
  br label %while_continue___2, !dbg !1712

while_continue___2:                               ; preds = %while_continue___6
  %inc95 = add nsw i32 %cursel.3, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %inc95, metadata !1523, metadata !DIExpression()), !dbg !1474
  %15 = load i32, i32* %lastdev, align 4, !dbg !1715
  %cmp96 = icmp sle i32 %inc95, %15, !dbg !1717
  br i1 %cmp96, label %if.then97, label %if.else103, !dbg !1718

if.then97:                                        ; preds = %while_continue___2
  %16 = load i32, i32* %existmask, align 4, !dbg !1719
  %shl98 = shl i32 1, %inc95, !dbg !1722
  %and99 = and i32 %16, %shl98, !dbg !1723
  %tobool100 = icmp ne i32 %and99, 0, !dbg !1723
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !1724

if.then101:                                       ; preds = %if.then97
  br label %while_break___2, !dbg !1725

if.end102:                                        ; preds = %if.then97
  br label %if.end104, !dbg !1727

if.else103:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !1728

if.end104:                                        ; preds = %if.end102
  br label %while.body94, !dbg !1709, !llvm.loop !1730

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !1732

while_break___2:                                  ; preds = %while_break___6, %if.else103, %if.then101
  %17 = load i32, i32* %lastdev, align 4, !dbg !1733
  %cmp105 = icmp sgt i32 %inc95, %17, !dbg !1735
  br i1 %cmp105, label %if.then106, label %if.end107, !dbg !1736

if.then106:                                       ; preds = %while_break___2
  %18 = load i32, i32* %firstdev, align 4, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %18, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %if.end107, !dbg !1739

if.end107:                                        ; preds = %if.then106, %while_break___2
  %cursel.4 = phi i32 [ %18, %if.then106 ], [ %inc95, %while_break___2 ], !dbg !1707
  call void @llvm.dbg.value(metadata i32 %cursel.4, metadata !1523, metadata !DIExpression()), !dbg !1474
  br label %switch_break, !dbg !1740

case_45:                                          ; preds = %if.then54, %if.then51, %if.then48, %if.then45
  br label %case_260, !dbg !1740

case_260:                                         ; preds = %case_45
  br label %case_72, !dbg !1740

case_72:                                          ; preds = %case_260
  br label %case_104, !dbg !1740

case_104:                                         ; preds = %case_72
  %19 = load i32, i32* %existmask, align 4, !dbg !1741
  %shl108 = shl i32 1, %cursel.0, !dbg !1743
  %and109 = and i32 %19, %shl108, !dbg !1744
  %tobool110 = icmp ne i32 %and109, 0, !dbg !1744
  br i1 %tobool110, label %if.then111, label %if.end117, !dbg !1745

if.then111:                                       ; preds = %case_104
  %cmp112 = icmp eq i32 %call22, 72, !dbg !1746
  br i1 %cmp112, label %if.then113, label %if.else114, !dbg !1749

if.then113:                                       ; preds = %if.then111
  call void @llvm.dbg.value(metadata i32 -1, metadata !1750, metadata !DIExpression()), !dbg !1474
  br label %if.end115, !dbg !1751

if.else114:                                       ; preds = %if.then111
  call void @llvm.dbg.value(metadata i32 -2, metadata !1750, metadata !DIExpression()), !dbg !1474
  br label %if.end115

if.end115:                                        ; preds = %if.else114, %if.then113
  %tmp___0.0 = phi i32 [ -1, %if.then113 ], [ -2, %if.else114 ], !dbg !1753
  call void @llvm.dbg.value(metadata i32 %tmp___0.0, metadata !1750, metadata !DIExpression()), !dbg !1474
  %20 = load i32, i32* %mixfd, align 4, !dbg !1754
  call void @mixer_change(i32 %20, i32 %cursel.0, i32 %tmp___0.0), !dbg !1757
  %21 = load i32, i32* %mixfd, align 4, !dbg !1758
  %call116 = call i32 @mixer_getlevel(i32 %21, i32 %cursel.0), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %call116, metadata !1761, metadata !DIExpression()), !dbg !1474
  call void @drawlevel(i32 %cursel.0, i32 %call116), !dbg !1762
  br label %if.end117, !dbg !1764

if.end117:                                        ; preds = %if.end115, %case_104
  br label %switch_break, !dbg !1765

case_61:                                          ; preds = %if.then69, %if.then66, %if.then63, %if.then60, %if.then57
  br label %case_43, !dbg !1765

case_43:                                          ; preds = %case_61
  br label %case_261, !dbg !1765

case_261:                                         ; preds = %case_43
  br label %case_76, !dbg !1765

case_76:                                          ; preds = %case_261
  br label %case_108, !dbg !1765

case_108:                                         ; preds = %case_76
  %22 = load i32, i32* %existmask, align 4, !dbg !1766
  %shl118 = shl i32 1, %cursel.0, !dbg !1768
  %and119 = and i32 %22, %shl118, !dbg !1769
  %tobool120 = icmp ne i32 %and119, 0, !dbg !1769
  br i1 %tobool120, label %if.then121, label %if.end127, !dbg !1770

if.then121:                                       ; preds = %case_108
  %cmp122 = icmp eq i32 %call22, 76, !dbg !1771
  br i1 %cmp122, label %if.then123, label %if.else124, !dbg !1774

if.then123:                                       ; preds = %if.then121
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()), !dbg !1474
  br label %if.end125, !dbg !1776

if.else124:                                       ; preds = %if.then121
  call void @llvm.dbg.value(metadata i32 2, metadata !1775, metadata !DIExpression()), !dbg !1474
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.then123
  %tmp___2.0 = phi i32 [ 1, %if.then123 ], [ 2, %if.else124 ], !dbg !1778
  call void @llvm.dbg.value(metadata i32 %tmp___2.0, metadata !1775, metadata !DIExpression()), !dbg !1474
  %23 = load i32, i32* %mixfd, align 4, !dbg !1779
  call void @mixer_change(i32 %23, i32 %cursel.0, i32 %tmp___2.0), !dbg !1782
  %24 = load i32, i32* %mixfd, align 4, !dbg !1783
  %call126 = call i32 @mixer_getlevel(i32 %24, i32 %cursel.0), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %call126, metadata !1786, metadata !DIExpression()), !dbg !1474
  call void @drawlevel(i32 %cursel.0, i32 %call126), !dbg !1787
  br label %if.end127, !dbg !1789

if.end127:                                        ; preds = %if.end125, %case_108
  br label %switch_break, !dbg !1790

case_32:                                          ; preds = %if.then72
  %25 = load i32, i32* %canrecmask, align 4, !dbg !1791
  %shl128 = shl i32 1, %cursel.0, !dbg !1793
  %and129 = and i32 %25, %shl128, !dbg !1794
  %tobool130 = icmp ne i32 %and129, 0, !dbg !1794
  br i1 %tobool130, label %if.then131, label %if.end134, !dbg !1795

if.then131:                                       ; preds = %case_32
  %26 = load i32, i32* %mixfd, align 4, !dbg !1796
  call void @mixer_rectoggle(i32 %26, i32 %cursel.0, i32* %isrecmask), !dbg !1800
  %27 = load i32, i32* %isrecmask, align 4, !dbg !1801
  %shl132 = shl i32 1, %cursel.0, !dbg !1803
  %and133 = and i32 %27, %shl132, !dbg !1804
  call void @drawrec(i32 %cursel.0, i32 %and133), !dbg !1805
  br label %if.end134, !dbg !1806

if.end134:                                        ; preds = %if.then131, %case_32
  br label %switch_break, !dbg !1807

case_12:                                          ; preds = %if.then78, %if.then75
  br label %case_18, !dbg !1807

case_18:                                          ; preds = %case_12
  %28 = load %struct._win_st*, %struct._win_st** @curscr, align 8, !dbg !1808
  %call135 = call i32 @clearok(%struct._win_st* %28, i1 zeroext true), !dbg !1811
  br label %switch_break, !dbg !1812

switch_break:                                     ; preds = %case_18, %if.end134, %if.end127, %if.end117, %if.end107, %if.end92, %case_113, %if.end79
  %cursel.5 = phi i32 [ %cursel.0, %case_113 ], [ %cursel.2, %if.end92 ], [ %cursel.4, %if.end107 ], [ %cursel.0, %if.end117 ], [ %cursel.0, %if.end127 ], [ %cursel.0, %if.end134 ], [ %cursel.0, %case_18 ], [ %cursel.0, %if.end79 ], !dbg !1528
  %quit.1 = phi i32 [ 1, %case_113 ], [ %quit.0, %if.end92 ], [ %quit.0, %if.end107 ], [ %quit.0, %if.end117 ], [ %quit.0, %if.end127 ], [ %quit.0, %if.end134 ], [ %quit.0, %case_18 ], [ %quit.0, %if.end79 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %quit.1, metadata !1492, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %cursel.5, metadata !1523, metadata !DIExpression()), !dbg !1474
  call void @drawsel(i32 %cursel.5, i32 %cursel.0), !dbg !1813
  %29 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1816
  %call136 = call i32 @wrefresh(%struct._win_st* %29), !dbg !1818
  br label %while.body18, !dbg !1573, !llvm.loop !1819

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !1821

while_break___0:                                  ; preds = %while_break___4, %if.then20
  %30 = load i32, i32* %mixfd, align 4, !dbg !1822
  call void @uninit(i32 %30), !dbg !1825
  call void @exit(i32 0) #7, !dbg !1826
  unreachable, !dbg !1826

return:                                           ; No predecessors!
  ret i32 0, !dbg !1828
}

declare i32 @wgetch(%struct._win_st*) #3

declare i32 @clearok(%struct._win_st*, i1 zeroext) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!101, !102, !103, !104, !105}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dev_labels", scope: !2, file: !80, line: 40, type: !81, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !77, nameTableKind: GNU)
!3 = !DIFile(filename: "c/rexima-1.4.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !10, !11, !12, !15, !23, !14, !74, !9, !75}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 211, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 271, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!20 = !{!21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !42, !43, !44, !45, !49, !51, !53, !57, !60, !64, !65, !66, !67, !68, !69, !70}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 272, baseType: !6, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 273, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 274, baseType: !23, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 275, baseType: !23, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 276, baseType: !23, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 277, baseType: !23, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 278, baseType: !23, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 279, baseType: !23, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 280, baseType: !23, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 281, baseType: !23, size: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 282, baseType: !23, size: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 283, baseType: !23, size: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 284, baseType: !35, size: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 186, size: 192, elements: !37)
!37 = !{!38, !39, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !36, file: !19, line: 187, baseType: !35, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !36, file: !19, line: 188, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !36, file: !19, line: 189, baseType: !6, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 285, baseType: !40, size: 64, offset: 832)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 286, baseType: !6, size: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 287, baseType: !6, size: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 288, baseType: !46, size: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 141, baseType: !48)
!47 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 289, baseType: !50, size: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 290, baseType: !52, size: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 291, baseType: !54, size: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 292, baseType: !58, size: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 180, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 293, baseType: !61, size: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 142, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !47, line: 56, baseType: !63)
!63 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !18, file: !19, line: 294, baseType: !11, size: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !18, file: !19, line: 295, baseType: !11, size: 64, offset: 1280)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !18, file: !19, line: 296, baseType: !11, size: 64, offset: 1344)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !18, file: !19, line: 297, baseType: !11, size: 64, offset: 1408)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 298, baseType: !12, size: 32, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 299, baseType: !6, size: 32, offset: 1504)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 300, baseType: !71, size: 192, offset: 1536)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !76, line: 137, baseType: !10)
!76 = !DIFile(filename: "/usr/include/curses.h", directory: "")
!77 = !{!0, !78, !85, !87, !89, !91, !93, !95, !99}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "dev_names", scope: !2, file: !80, line: 41, type: !81, isLocal: false, isDefinition: true)
!80 = !DIFile(filename: "/home/wslee/benchmarks/sound/rexima-1.4/rexima.c", directory: "")
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16000, elements: !82)
!82 = !{!83, !84}
!83 = !DISubrange(count: 25)
!84 = !DISubrange(count: 80)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "mixerdev", scope: !2, file: !80, line: 45, type: !23, isLocal: false, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "optnopt", scope: !2, file: !80, line: 49, type: !6, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "optnerr", scope: !2, file: !80, line: 49, type: !6, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "optnind", scope: !2, file: !80, line: 49, type: !6, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "optnarg", scope: !2, file: !80, line: 50, type: !23, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "dev_line", scope: !2, file: !80, line: 42, type: !97, isLocal: false, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 800, elements: !98)
!98 = !{!83}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "optnpos", scope: !2, file: !80, line: 53, type: !6, isLocal: true, isDefinition: true)
!101 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!102 = !{i32 2, !"Dwarf Version", i32 4}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 7, !"PIC Level", i32 2}
!106 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!107 = distinct !DISubprogram(name: "getoptn", scope: !80, file: !80, line: 59, type: !108, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!108 = !DISubroutineType(types: !109)
!109 = !{!6, !6, !110, !23}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!111 = !DILocalVariable(name: "argc", arg: 1, scope: !107, file: !80, line: 59, type: !6)
!112 = !DILocation(line: 0, scope: !107)
!113 = !DILocalVariable(name: "argv", arg: 2, scope: !107, file: !80, line: 59, type: !110)
!114 = !DILocalVariable(name: "optstring", arg: 3, scope: !107, file: !80, line: 59, type: !23)
!115 = !DILocation(line: 64, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !80, line: 64, column: 7)
!117 = distinct !DILexicalBlock(scope: !107, file: !80, line: 65, column: 3)
!118 = !DILocation(line: 64, column: 15, scope: !116)
!119 = !DILocation(line: 64, column: 7, scope: !117)
!120 = !DILocation(line: 65, column: 5, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !80, line: 64, column: 24)
!122 = !DILocation(line: 64, column: 24, scope: !123)
!123 = distinct !DILexicalBlock(scope: !116, file: !80, line: 64, column: 7)
!124 = !DILocation(line: 64, column: 22, scope: !123)
!125 = !DILocation(line: 64, column: 15, scope: !123)
!126 = !DILocation(line: 64, column: 13, scope: !123)
!127 = !DILocation(line: 64, column: 7, scope: !123)
!128 = !DILocation(line: 64, column: 34, scope: !123)
!129 = !DILocation(line: 65, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !80, line: 64, column: 41)
!131 = !DILocation(line: 64, column: 43, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !80, line: 68, column: 5)
!133 = distinct !DILexicalBlock(scope: !134, file: !80, line: 67, column: 5)
!134 = distinct !DILexicalBlock(scope: !123, file: !80, line: 66, column: 10)
!135 = !DILocation(line: 64, column: 41, scope: !132)
!136 = !DILocation(line: 64, column: 34, scope: !132)
!137 = !DILocation(line: 64, column: 11, scope: !132)
!138 = !DILocalVariable(name: "tmp", scope: !107, file: !80, line: 62, type: !12)
!139 = !DILocation(line: 64, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !80, line: 64, column: 9)
!141 = !DILocation(line: 64, column: 9, scope: !134)
!142 = !DILocation(line: 65, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !80, line: 64, column: 20)
!144 = !DILocation(line: 67, column: 60, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !80, line: 69, column: 3)
!146 = distinct !DILexicalBlock(scope: !117, file: !80, line: 68, column: 3)
!147 = !DILocation(line: 67, column: 58, scope: !145)
!148 = !DILocation(line: 67, column: 51, scope: !145)
!149 = !DILocation(line: 67, column: 71, scope: !145)
!150 = !DILocation(line: 67, column: 69, scope: !145)
!151 = !DILocation(line: 67, column: 49, scope: !145)
!152 = !DILocation(line: 67, column: 43, scope: !145)
!153 = !DILocation(line: 67, column: 9, scope: !145)
!154 = !DILocalVariable(name: "ptr", scope: !107, file: !80, line: 61, type: !23)
!155 = !DILocation(line: 67, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !117, file: !80, line: 67, column: 7)
!157 = !DILocation(line: 67, column: 27, scope: !156)
!158 = !DILocation(line: 67, column: 7, scope: !117)
!159 = !DILocation(line: 68, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !80, line: 67, column: 59)
!161 = !DILocation(line: 71, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !80, line: 69, column: 10)
!163 = !DILocation(line: 71, column: 15, scope: !162)
!164 = !DILocation(line: 71, column: 13, scope: !162)
!165 = !DILocation(line: 72, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !80, line: 72, column: 9)
!167 = !DILocation(line: 72, column: 15, scope: !166)
!168 = !DILocation(line: 72, column: 9, scope: !166)
!169 = !DILocation(line: 72, column: 26, scope: !166)
!170 = !DILocation(line: 72, column: 9, scope: !162)
!171 = !DILocation(line: 74, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !80, line: 74, column: 11)
!173 = distinct !DILexicalBlock(scope: !166, file: !80, line: 72, column: 33)
!174 = !DILocation(line: 74, column: 27, scope: !172)
!175 = !DILocation(line: 74, column: 19, scope: !172)
!176 = !DILocation(line: 74, column: 11, scope: !173)
!177 = !DILocation(line: 74, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !80, line: 74, column: 32)
!179 = !DILocation(line: 75, column: 27, scope: !173)
!180 = !DILocation(line: 75, column: 35, scope: !173)
!181 = !DILocation(line: 75, column: 24, scope: !173)
!182 = !DILocation(line: 75, column: 17, scope: !173)
!183 = !DILocation(line: 75, column: 15, scope: !173)
!184 = !DILocation(line: 76, column: 15, scope: !173)
!185 = !DILocation(line: 77, column: 15, scope: !173)
!186 = !DILocation(line: 78, column: 15, scope: !173)
!187 = !DILocation(line: 78, column: 7, scope: !173)
!188 = !DILocation(line: 86, column: 11, scope: !189)
!189 = distinct !DILexicalBlock(scope: !117, file: !80, line: 81, column: 3)
!190 = !DILocation(line: 87, column: 45, scope: !191)
!191 = distinct !DILexicalBlock(scope: !189, file: !80, line: 87, column: 3)
!192 = !DILocation(line: 87, column: 43, scope: !191)
!193 = !DILocation(line: 87, column: 36, scope: !191)
!194 = !DILocation(line: 87, column: 13, scope: !191)
!195 = !DILocalVariable(name: "tmp___0", scope: !107, file: !80, line: 63, type: !12)
!196 = !DILocation(line: 87, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !117, file: !80, line: 87, column: 7)
!198 = !DILocation(line: 87, column: 24, scope: !197)
!199 = !DILocation(line: 87, column: 7, scope: !117)
!200 = !DILocation(line: 89, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !80, line: 87, column: 35)
!202 = !DILocation(line: 90, column: 13, scope: !201)
!203 = !DILocation(line: 91, column: 3, scope: !201)
!204 = !DILocation(line: 93, column: 11, scope: !117)
!205 = !DILocation(line: 93, column: 3, scope: !117)
!206 = !DILocation(line: 0, scope: !117)
!207 = !DILocation(line: 95, column: 1, scope: !107)
!208 = distinct !DISubprogram(name: "die", scope: !80, file: !80, line: 98, type: !209, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !23}
!211 = !DILocalVariable(name: "str", arg: 1, scope: !208, file: !80, line: 98, type: !23)
!212 = !DILocation(line: 0, scope: !208)
!213 = !DILocalVariable(name: "__cil_tmp2", scope: !208, file: !80, line: 100, type: !23)
!214 = !DILocation(line: 100, column: 9, scope: !208)
!215 = !DILocation(line: 100, column: 36, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !80, line: 104, column: 3)
!217 = distinct !DILexicalBlock(scope: !218, file: !80, line: 103, column: 3)
!218 = distinct !DILexicalBlock(scope: !208, file: !80, line: 102, column: 3)
!219 = !DILocation(line: 100, column: 3, scope: !216)
!220 = !DILocation(line: 101, column: 3, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !80, line: 103, column: 3)
!222 = !DILocation(line: 105, column: 1, scope: !208)
!223 = distinct !DISubprogram(name: "init", scope: !80, file: !80, line: 105, type: !224, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226, !226, !226, !226, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!227 = !DILocalVariable(name: "mixfd", arg: 1, scope: !223, file: !80, line: 105, type: !226)
!228 = !DILocation(line: 0, scope: !223)
!229 = !DILocalVariable(name: "existmask", arg: 2, scope: !223, file: !80, line: 105, type: !226)
!230 = !DILocalVariable(name: "canrecmask", arg: 3, scope: !223, file: !80, line: 105, type: !226)
!231 = !DILocalVariable(name: "isrecmask", arg: 4, scope: !223, file: !80, line: 105, type: !226)
!232 = !DILocalVariable(name: "stereomask", arg: 5, scope: !223, file: !80, line: 105, type: !226)
!233 = !DILocalVariable(name: "__cil_tmp11", scope: !223, file: !80, line: 112, type: !23)
!234 = !DILocation(line: 112, column: 9, scope: !223)
!235 = !DILocalVariable(name: "__cil_tmp12", scope: !223, file: !80, line: 113, type: !23)
!236 = !DILocation(line: 113, column: 9, scope: !223)
!237 = !DILocalVariable(name: "__cil_tmp13", scope: !223, file: !80, line: 114, type: !23)
!238 = !DILocation(line: 114, column: 9, scope: !223)
!239 = !DILocalVariable(name: "__cil_tmp14", scope: !223, file: !80, line: 115, type: !23)
!240 = !DILocation(line: 115, column: 9, scope: !223)
!241 = !DILocation(line: 108, column: 30, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !80, line: 119, column: 3)
!243 = distinct !DILexicalBlock(scope: !244, file: !80, line: 118, column: 3)
!244 = distinct !DILexicalBlock(scope: !223, file: !80, line: 117, column: 3)
!245 = !DILocation(line: 108, column: 9, scope: !242)
!246 = !DILocalVariable(name: "tmp", scope: !223, file: !80, line: 107, type: !6)
!247 = !DILocation(line: 108, column: 10, scope: !243)
!248 = !DILocation(line: 108, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !80, line: 108, column: 7)
!250 = !DILocation(line: 108, column: 7, scope: !244)
!251 = !DILocation(line: 108, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !80, line: 110, column: 5)
!253 = distinct !DILexicalBlock(scope: !254, file: !80, line: 109, column: 5)
!254 = distinct !DILexicalBlock(scope: !249, file: !80, line: 108, column: 16)
!255 = !DILocation(line: 111, column: 3, scope: !254)
!256 = !DILocation(line: 109, column: 19, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !80, line: 113, column: 3)
!258 = distinct !DILexicalBlock(scope: !244, file: !80, line: 112, column: 3)
!259 = !DILocation(line: 109, column: 13, scope: !257)
!260 = !DILocalVariable(name: "tmp___0", scope: !223, file: !80, line: 108, type: !6)
!261 = !DILocation(line: 109, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !244, file: !80, line: 109, column: 7)
!263 = !DILocation(line: 109, column: 7, scope: !244)
!264 = !DILocation(line: 109, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !80, line: 111, column: 5)
!266 = distinct !DILexicalBlock(scope: !267, file: !80, line: 110, column: 5)
!267 = distinct !DILexicalBlock(scope: !262, file: !80, line: 109, column: 22)
!268 = !DILocation(line: 112, column: 3, scope: !267)
!269 = !DILocation(line: 110, column: 19, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !80, line: 114, column: 3)
!271 = distinct !DILexicalBlock(scope: !244, file: !80, line: 113, column: 3)
!272 = !DILocation(line: 110, column: 13, scope: !270)
!273 = !DILocalVariable(name: "tmp___1", scope: !223, file: !80, line: 109, type: !6)
!274 = !DILocation(line: 110, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !244, file: !80, line: 110, column: 7)
!276 = !DILocation(line: 110, column: 7, scope: !244)
!277 = !DILocation(line: 110, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !80, line: 112, column: 5)
!279 = distinct !DILexicalBlock(scope: !280, file: !80, line: 111, column: 5)
!280 = distinct !DILexicalBlock(scope: !275, file: !80, line: 110, column: 22)
!281 = !DILocation(line: 113, column: 3, scope: !280)
!282 = !DILocation(line: 111, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !80, line: 115, column: 3)
!284 = distinct !DILexicalBlock(scope: !244, file: !80, line: 114, column: 3)
!285 = !DILocation(line: 111, column: 13, scope: !283)
!286 = !DILocalVariable(name: "tmp___2", scope: !223, file: !80, line: 110, type: !6)
!287 = !DILocation(line: 111, column: 15, scope: !288)
!288 = distinct !DILexicalBlock(scope: !244, file: !80, line: 111, column: 7)
!289 = !DILocation(line: 111, column: 7, scope: !244)
!290 = !DILocation(line: 111, column: 5, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !80, line: 113, column: 5)
!292 = distinct !DILexicalBlock(scope: !293, file: !80, line: 112, column: 5)
!293 = distinct !DILexicalBlock(scope: !288, file: !80, line: 111, column: 22)
!294 = !DILocation(line: 114, column: 3, scope: !293)
!295 = !DILocation(line: 113, column: 19, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !80, line: 116, column: 3)
!297 = distinct !DILexicalBlock(scope: !244, file: !80, line: 115, column: 3)
!298 = !DILocation(line: 113, column: 13, scope: !296)
!299 = !DILocalVariable(name: "tmp___3", scope: !223, file: !80, line: 111, type: !6)
!300 = !DILocation(line: 113, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !244, file: !80, line: 113, column: 7)
!302 = !DILocation(line: 113, column: 7, scope: !244)
!303 = !DILocation(line: 113, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !80, line: 113, column: 22)
!305 = !DILocation(line: 114, column: 3, scope: !304)
!306 = !DILocation(line: 114, column: 3, scope: !244)
!307 = distinct !DISubprogram(name: "init_term", scope: !80, file: !80, line: 117, type: !308, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DISubroutineType(types: !309)
!309 = !{null}
!310 = !DILocation(line: 119, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !80, line: 123, column: 3)
!312 = distinct !DILexicalBlock(scope: !313, file: !80, line: 122, column: 3)
!313 = distinct !DILexicalBlock(scope: !307, file: !80, line: 121, column: 3)
!314 = !DILocation(line: 119, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !80, line: 121, column: 3)
!316 = !DILocation(line: 119, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !80, line: 121, column: 3)
!318 = !DILocation(line: 120, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !312, file: !80, line: 121, column: 3)
!320 = !DILocation(line: 120, column: 3, scope: !319)
!321 = !DILocation(line: 121, column: 3, scope: !313)
!322 = distinct !DISubprogram(name: "uninit", scope: !80, file: !80, line: 124, type: !323, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !6}
!325 = !DILocalVariable(name: "mixfd", arg: 1, scope: !322, file: !80, line: 124, type: !6)
!326 = !DILocation(line: 0, scope: !322)
!327 = !DILocation(line: 126, column: 10, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !80, line: 130, column: 3)
!329 = distinct !DILexicalBlock(scope: !330, file: !80, line: 129, column: 3)
!330 = distinct !DILexicalBlock(scope: !322, file: !80, line: 128, column: 3)
!331 = !DILocation(line: 126, column: 3, scope: !328)
!332 = !DILocation(line: 126, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !80, line: 128, column: 3)
!334 = !DILocation(line: 126, column: 3, scope: !333)
!335 = !DILocation(line: 127, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !80, line: 128, column: 3)
!337 = !DILocation(line: 127, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !80, line: 129, column: 3)
!339 = !DILocation(line: 127, column: 3, scope: !340)
!340 = distinct !DILexicalBlock(scope: !329, file: !80, line: 129, column: 3)
!341 = !DILocation(line: 128, column: 3, scope: !342)
!342 = distinct !DILexicalBlock(scope: !329, file: !80, line: 129, column: 3)
!343 = !DILocation(line: 129, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !329, file: !80, line: 130, column: 3)
!345 = !DILocation(line: 130, column: 3, scope: !330)
!346 = distinct !DISubprogram(name: "drawsel", scope: !80, file: !80, line: 133, type: !347, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !6, !6}
!349 = !DILocalVariable(name: "new", arg: 1, scope: !346, file: !80, line: 133, type: !6)
!350 = !DILocation(line: 0, scope: !346)
!351 = !DILocalVariable(name: "old", arg: 2, scope: !346, file: !80, line: 133, type: !6)
!352 = !DILocalVariable(name: "__cil_tmp7", scope: !346, file: !80, line: 139, type: !23)
!353 = !DILocation(line: 139, column: 9, scope: !346)
!354 = !DILocalVariable(name: "__cil_tmp8", scope: !346, file: !80, line: 140, type: !23)
!355 = !DILocation(line: 140, column: 9, scope: !346)
!356 = !DILocalVariable(name: "__cil_tmp9", scope: !346, file: !80, line: 141, type: !23)
!357 = !DILocation(line: 141, column: 9, scope: !346)
!358 = !DILocalVariable(name: "__cil_tmp10", scope: !346, file: !80, line: 142, type: !23)
!359 = !DILocation(line: 142, column: 9, scope: !346)
!360 = !DILocation(line: 135, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !80, line: 135, column: 7)
!362 = distinct !DILexicalBlock(scope: !346, file: !80, line: 144, column: 3)
!363 = !DILocation(line: 135, column: 7, scope: !362)
!364 = !DILocation(line: 137, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !80, line: 137, column: 9)
!366 = distinct !DILexicalBlock(scope: !361, file: !80, line: 135, column: 19)
!367 = !DILocation(line: 137, column: 9, scope: !366)
!368 = !DILocation(line: 139, column: 19, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !80, line: 139, column: 7)
!370 = distinct !DILexicalBlock(scope: !371, file: !80, line: 138, column: 7)
!371 = distinct !DILexicalBlock(scope: !365, file: !80, line: 137, column: 19)
!372 = !DILocation(line: 139, column: 31, scope: !369)
!373 = !DILocation(line: 139, column: 29, scope: !369)
!374 = !DILocation(line: 139, column: 13, scope: !369)
!375 = !DILocalVariable(name: "tmp", scope: !346, file: !80, line: 135, type: !6)
!376 = !DILocation(line: 139, column: 18, scope: !377)
!377 = distinct !DILexicalBlock(scope: !371, file: !80, line: 139, column: 11)
!378 = !DILocation(line: 139, column: 11, scope: !371)
!379 = !DILocation(line: 139, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !80, line: 141, column: 9)
!381 = distinct !DILexicalBlock(scope: !382, file: !80, line: 140, column: 9)
!382 = distinct !DILexicalBlock(scope: !377, file: !80, line: 139, column: 26)
!383 = !DILocation(line: 139, column: 9, scope: !380)
!384 = !DILocation(line: 142, column: 7, scope: !382)
!385 = !DILocation(line: 140, column: 23, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !80, line: 144, column: 7)
!387 = distinct !DILexicalBlock(scope: !371, file: !80, line: 143, column: 7)
!388 = !DILocation(line: 140, column: 35, scope: !386)
!389 = !DILocation(line: 140, column: 33, scope: !386)
!390 = !DILocation(line: 140, column: 17, scope: !386)
!391 = !DILocalVariable(name: "tmp___0", scope: !346, file: !80, line: 136, type: !6)
!392 = !DILocation(line: 140, column: 22, scope: !393)
!393 = distinct !DILexicalBlock(scope: !371, file: !80, line: 140, column: 11)
!394 = !DILocation(line: 140, column: 11, scope: !371)
!395 = !DILocation(line: 140, column: 18, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !80, line: 142, column: 9)
!397 = distinct !DILexicalBlock(scope: !398, file: !80, line: 141, column: 9)
!398 = distinct !DILexicalBlock(scope: !393, file: !80, line: 140, column: 30)
!399 = !DILocation(line: 140, column: 9, scope: !396)
!400 = !DILocation(line: 143, column: 7, scope: !398)
!401 = !DILocation(line: 144, column: 5, scope: !371)
!402 = !DILocation(line: 143, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !366, file: !80, line: 143, column: 9)
!404 = !DILocation(line: 143, column: 9, scope: !366)
!405 = !DILocation(line: 145, column: 23, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !80, line: 145, column: 7)
!407 = distinct !DILexicalBlock(scope: !408, file: !80, line: 144, column: 7)
!408 = distinct !DILexicalBlock(scope: !403, file: !80, line: 143, column: 19)
!409 = !DILocation(line: 145, column: 35, scope: !406)
!410 = !DILocation(line: 145, column: 33, scope: !406)
!411 = !DILocation(line: 145, column: 17, scope: !406)
!412 = !DILocalVariable(name: "tmp___1", scope: !346, file: !80, line: 137, type: !6)
!413 = !DILocation(line: 145, column: 22, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !80, line: 145, column: 11)
!415 = !DILocation(line: 145, column: 11, scope: !408)
!416 = !DILocation(line: 145, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !80, line: 147, column: 9)
!418 = distinct !DILexicalBlock(scope: !419, file: !80, line: 146, column: 9)
!419 = distinct !DILexicalBlock(scope: !414, file: !80, line: 145, column: 30)
!420 = !DILocation(line: 145, column: 9, scope: !417)
!421 = !DILocation(line: 148, column: 7, scope: !419)
!422 = !DILocation(line: 146, column: 23, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !80, line: 150, column: 7)
!424 = distinct !DILexicalBlock(scope: !408, file: !80, line: 149, column: 7)
!425 = !DILocation(line: 146, column: 35, scope: !423)
!426 = !DILocation(line: 146, column: 33, scope: !423)
!427 = !DILocation(line: 146, column: 17, scope: !423)
!428 = !DILocalVariable(name: "tmp___2", scope: !346, file: !80, line: 138, type: !6)
!429 = !DILocation(line: 146, column: 22, scope: !430)
!430 = distinct !DILexicalBlock(scope: !408, file: !80, line: 146, column: 11)
!431 = !DILocation(line: 146, column: 11, scope: !408)
!432 = !DILocation(line: 146, column: 18, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !80, line: 148, column: 9)
!434 = distinct !DILexicalBlock(scope: !435, file: !80, line: 147, column: 9)
!435 = distinct !DILexicalBlock(scope: !430, file: !80, line: 146, column: 30)
!436 = !DILocation(line: 146, column: 9, scope: !433)
!437 = !DILocation(line: 149, column: 7, scope: !435)
!438 = !DILocation(line: 150, column: 5, scope: !408)
!439 = !DILocation(line: 151, column: 3, scope: !366)
!440 = !DILocation(line: 151, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !80, line: 153, column: 3)
!442 = distinct !DILexicalBlock(scope: !362, file: !80, line: 152, column: 3)
!443 = !DILocation(line: 151, column: 21, scope: !441)
!444 = !DILocation(line: 151, column: 19, scope: !441)
!445 = !DILocation(line: 151, column: 3, scope: !441)
!446 = !DILocation(line: 152, column: 3, scope: !362)
!447 = distinct !DISubprogram(name: "mixer_getlevel_stereo", scope: !80, file: !80, line: 155, type: !448, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{!6, !6, !6}
!450 = !DILocalVariable(name: "mixfd", arg: 1, scope: !447, file: !80, line: 155, type: !6)
!451 = !DILocation(line: 0, scope: !447)
!452 = !DILocalVariable(name: "dev", arg: 2, scope: !447, file: !80, line: 155, type: !6)
!453 = !DILocalVariable(name: "level", scope: !447, file: !80, line: 157, type: !6)
!454 = !DILocation(line: 157, column: 7, scope: !447)
!455 = !DILocation(line: 157, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !80, line: 160, column: 3)
!457 = distinct !DILexicalBlock(scope: !447, file: !80, line: 159, column: 3)
!458 = !DILocation(line: 159, column: 73, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !80, line: 158, column: 3)
!460 = !DILocation(line: 159, column: 16, scope: !459)
!461 = !DILocation(line: 159, column: 95, scope: !459)
!462 = !DILocation(line: 159, column: 3, scope: !459)
!463 = !DILocation(line: 160, column: 11, scope: !457)
!464 = !DILocation(line: 160, column: 3, scope: !457)
!465 = distinct !DISubprogram(name: "mixer_getlevel", scope: !80, file: !80, line: 164, type: !448, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!466 = !DILocalVariable(name: "mixfd", arg: 1, scope: !465, file: !80, line: 164, type: !6)
!467 = !DILocation(line: 0, scope: !465)
!468 = !DILocalVariable(name: "dev", arg: 2, scope: !465, file: !80, line: 164, type: !6)
!469 = !DILocation(line: 166, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !80, line: 170, column: 3)
!471 = distinct !DILexicalBlock(scope: !472, file: !80, line: 169, column: 3)
!472 = distinct !DILexicalBlock(scope: !465, file: !80, line: 168, column: 3)
!473 = !DILocalVariable(name: "tmp", scope: !465, file: !80, line: 166, type: !6)
!474 = !DILocation(line: 166, column: 15, scope: !472)
!475 = !DILocation(line: 166, column: 3, scope: !472)
!476 = distinct !DISubprogram(name: "mixer_setlevel_stereo", scope: !80, file: !80, line: 170, type: !477, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !6, !6, !6, !6}
!479 = !DILocalVariable(name: "mixfd", arg: 1, scope: !476, file: !80, line: 170, type: !6)
!480 = !DILocation(line: 0, scope: !476)
!481 = !DILocalVariable(name: "dev", arg: 2, scope: !476, file: !80, line: 170, type: !6)
!482 = !DILocalVariable(name: "left", arg: 3, scope: !476, file: !80, line: 170, type: !6)
!483 = !DILocation(line: 170, column: 54, scope: !476)
!484 = !DILocalVariable(name: "right", arg: 4, scope: !476, file: !80, line: 170, type: !6)
!485 = !DILocation(line: 172, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !80, line: 175, column: 3)
!487 = distinct !DILexicalBlock(scope: !476, file: !80, line: 174, column: 3)
!488 = !DILocation(line: 172, column: 8, scope: !486)
!489 = !DILocation(line: 173, column: 73, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !80, line: 173, column: 3)
!491 = !DILocation(line: 173, column: 16, scope: !490)
!492 = !DILocation(line: 173, column: 95, scope: !490)
!493 = !DILocation(line: 173, column: 3, scope: !490)
!494 = !DILocation(line: 174, column: 3, scope: !487)
!495 = distinct !DISubprogram(name: "mixer_setlevel", scope: !80, file: !80, line: 177, type: !496, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !6, !6, !6}
!498 = !DILocalVariable(name: "mixfd", arg: 1, scope: !495, file: !80, line: 177, type: !6)
!499 = !DILocation(line: 0, scope: !495)
!500 = !DILocalVariable(name: "dev", arg: 2, scope: !495, file: !80, line: 177, type: !6)
!501 = !DILocalVariable(name: "level", arg: 3, scope: !495, file: !80, line: 177, type: !6)
!502 = !DILocation(line: 179, column: 3, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !80, line: 183, column: 3)
!504 = distinct !DILexicalBlock(scope: !505, file: !80, line: 182, column: 3)
!505 = distinct !DILexicalBlock(scope: !495, file: !80, line: 181, column: 3)
!506 = !DILocation(line: 180, column: 3, scope: !505)
!507 = distinct !DISubprogram(name: "mixer_change", scope: !80, file: !80, line: 183, type: !496, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!508 = !DILocalVariable(name: "mixfd", arg: 1, scope: !507, file: !80, line: 183, type: !6)
!509 = !DILocation(line: 0, scope: !507)
!510 = !DILocalVariable(name: "dev", arg: 2, scope: !507, file: !80, line: 183, type: !6)
!511 = !DILocalVariable(name: "add", arg: 3, scope: !507, file: !80, line: 183, type: !6)
!512 = !DILocation(line: 185, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !80, line: 190, column: 3)
!514 = distinct !DILexicalBlock(scope: !515, file: !80, line: 189, column: 3)
!515 = distinct !DILexicalBlock(scope: !507, file: !80, line: 188, column: 3)
!516 = !DILocalVariable(name: "tmp", scope: !507, file: !80, line: 186, type: !6)
!517 = !DILocation(line: 185, column: 15, scope: !514)
!518 = !DILocalVariable(name: "level", scope: !507, file: !80, line: 185, type: !6)
!519 = !DILocation(line: 187, column: 13, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !80, line: 187, column: 7)
!521 = !DILocation(line: 187, column: 7, scope: !515)
!522 = !DILocation(line: 188, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !80, line: 187, column: 18)
!524 = !DILocation(line: 0, scope: !515)
!525 = !DILocation(line: 188, column: 13, scope: !526)
!526 = distinct !DILexicalBlock(scope: !515, file: !80, line: 188, column: 7)
!527 = !DILocation(line: 188, column: 7, scope: !515)
!528 = !DILocation(line: 189, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !80, line: 188, column: 20)
!530 = !DILocation(line: 189, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !80, line: 191, column: 3)
!532 = distinct !DILexicalBlock(scope: !515, file: !80, line: 190, column: 3)
!533 = !DILocation(line: 190, column: 3, scope: !515)
!534 = distinct !DISubprogram(name: "mixer_rectoggle", scope: !80, file: !80, line: 193, type: !535, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !6, !6, !226}
!537 = !DILocalVariable(name: "mixfd", arg: 1, scope: !534, file: !80, line: 193, type: !6)
!538 = !DILocation(line: 0, scope: !534)
!539 = !DILocalVariable(name: "dev", arg: 2, scope: !534, file: !80, line: 193, type: !6)
!540 = !DILocalVariable(name: "isrecmask", arg: 3, scope: !534, file: !80, line: 193, type: !226)
!541 = !DILocation(line: 195, column: 19, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !80, line: 198, column: 3)
!543 = distinct !DILexicalBlock(scope: !534, file: !80, line: 197, column: 3)
!544 = !DILocation(line: 195, column: 14, scope: !542)
!545 = !DILocation(line: 196, column: 3, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !80, line: 196, column: 3)
!547 = !DILocation(line: 197, column: 3, scope: !543)
!548 = distinct !DISubprogram(name: "mixer_recset", scope: !80, file: !80, line: 200, type: !549, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !6, !6, !226, !6}
!551 = !DILocalVariable(name: "mixfd", arg: 1, scope: !548, file: !80, line: 200, type: !6)
!552 = !DILocation(line: 0, scope: !548)
!553 = !DILocalVariable(name: "dev", arg: 2, scope: !548, file: !80, line: 200, type: !6)
!554 = !DILocalVariable(name: "isrecmask", arg: 3, scope: !548, file: !80, line: 200, type: !226)
!555 = !DILocalVariable(name: "on", arg: 4, scope: !548, file: !80, line: 200, type: !6)
!556 = !DILocation(line: 202, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !80, line: 202, column: 7)
!558 = distinct !DILexicalBlock(scope: !548, file: !80, line: 204, column: 3)
!559 = !DILocation(line: 202, column: 7, scope: !558)
!560 = !DILocation(line: 203, column: 21, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !80, line: 202, column: 11)
!562 = !DILocation(line: 203, column: 16, scope: !561)
!563 = !DILocation(line: 204, column: 3, scope: !561)
!564 = !DILocation(line: 205, column: 24, scope: !565)
!565 = distinct !DILexicalBlock(scope: !557, file: !80, line: 204, column: 10)
!566 = !DILocation(line: 205, column: 19, scope: !565)
!567 = !DILocation(line: 205, column: 16, scope: !565)
!568 = !DILocation(line: 206, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !80, line: 208, column: 3)
!570 = distinct !DILexicalBlock(scope: !558, file: !80, line: 207, column: 3)
!571 = !DILocation(line: 207, column: 3, scope: !558)
!572 = distinct !DISubprogram(name: "drawlevel", scope: !80, file: !80, line: 210, type: !347, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!573 = !DILocalVariable(name: "dev", arg: 1, scope: !572, file: !80, line: 210, type: !6)
!574 = !DILocation(line: 0, scope: !572)
!575 = !DILocalVariable(name: "level", arg: 2, scope: !572, file: !80, line: 210, type: !6)
!576 = !DILocalVariable(name: "buf", scope: !572, file: !80, line: 212, type: !577)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 480, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 60)
!580 = !DILocation(line: 212, column: 8, scope: !572)
!581 = !DILocalVariable(name: "__cil_tmp7", scope: !572, file: !80, line: 216, type: !11)
!582 = !DILocation(line: 216, column: 9, scope: !572)
!583 = !DILocalVariable(name: "__cil_tmp8", scope: !572, file: !80, line: 217, type: !23)
!584 = !DILocation(line: 217, column: 9, scope: !572)
!585 = !DILocation(line: 216, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !80, line: 216, column: 7)
!587 = distinct !DILexicalBlock(scope: !572, file: !80, line: 219, column: 3)
!588 = !DILocation(line: 216, column: 7, scope: !587)
!589 = !DILocation(line: 217, column: 3, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !80, line: 216, column: 18)
!591 = !DILocation(line: 217, column: 13, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !80, line: 217, column: 7)
!593 = !DILocation(line: 217, column: 7, scope: !587)
!594 = !DILocation(line: 218, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !80, line: 217, column: 20)
!596 = !DILocation(line: 0, scope: !587)
!597 = !DILocation(line: 219, column: 18, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !80, line: 220, column: 3)
!599 = distinct !DILexicalBlock(scope: !587, file: !80, line: 219, column: 3)
!600 = !DILocation(line: 219, column: 3, scope: !598)
!601 = !DILocation(line: 220, column: 3, scope: !599)
!602 = !DILocation(line: 220, column: 11, scope: !599)
!603 = !DILocation(line: 221, column: 13, scope: !599)
!604 = !DILocation(line: 221, column: 3, scope: !599)
!605 = !DILocation(line: 221, column: 18, scope: !599)
!606 = !DILocation(line: 222, column: 13, scope: !599)
!607 = !DILocation(line: 222, column: 17, scope: !599)
!608 = !DILocalVariable(name: "f", scope: !572, file: !80, line: 213, type: !6)
!609 = !DILocation(line: 222, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !80, line: 225, column: 3)
!611 = distinct !DILexicalBlock(scope: !587, file: !80, line: 224, column: 3)
!612 = !DILocation(line: 222, column: 13, scope: !610)
!613 = !DILocation(line: 222, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !80, line: 222, column: 9)
!615 = distinct !DILexicalBlock(scope: !610, file: !80, line: 222, column: 13)
!616 = !DILocation(line: 222, column: 9, scope: !615)
!617 = !DILocation(line: 222, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !80, line: 222, column: 21)
!619 = !DILocation(line: 223, column: 5, scope: !615)
!620 = !DILocation(line: 223, column: 12, scope: !615)
!621 = !DILocation(line: 222, column: 7, scope: !615)
!622 = distinct !{!622, !609, !623}
!623 = !DILocation(line: 223, column: 3, scope: !610)
!624 = !DILocation(line: 225, column: 3, scope: !610)
!625 = !DILocation(line: 225, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !80, line: 229, column: 3)
!627 = distinct !DILexicalBlock(scope: !587, file: !80, line: 228, column: 3)
!628 = !DILocation(line: 225, column: 27, scope: !626)
!629 = !DILocation(line: 225, column: 25, scope: !626)
!630 = !DILocation(line: 225, column: 9, scope: !626)
!631 = !DILocalVariable(name: "tmp", scope: !572, file: !80, line: 214, type: !6)
!632 = !DILocation(line: 225, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !587, file: !80, line: 225, column: 7)
!634 = !DILocation(line: 225, column: 7, scope: !587)
!635 = !DILocation(line: 225, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !80, line: 227, column: 5)
!637 = distinct !DILexicalBlock(scope: !638, file: !80, line: 226, column: 5)
!638 = distinct !DILexicalBlock(scope: !633, file: !80, line: 225, column: 22)
!639 = !DILocation(line: 225, column: 38, scope: !636)
!640 = !DILocation(line: 225, column: 5, scope: !636)
!641 = !DILocation(line: 228, column: 3, scope: !638)
!642 = !DILocation(line: 227, column: 36, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !80, line: 230, column: 3)
!644 = distinct !DILexicalBlock(scope: !587, file: !80, line: 229, column: 3)
!645 = !DILocation(line: 227, column: 3, scope: !643)
!646 = !DILocation(line: 228, column: 19, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !80, line: 230, column: 3)
!648 = !DILocation(line: 228, column: 31, scope: !647)
!649 = !DILocation(line: 228, column: 29, scope: !647)
!650 = !DILocation(line: 228, column: 13, scope: !647)
!651 = !DILocalVariable(name: "tmp___0", scope: !572, file: !80, line: 215, type: !6)
!652 = !DILocation(line: 228, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !587, file: !80, line: 228, column: 7)
!654 = !DILocation(line: 228, column: 7, scope: !587)
!655 = !DILocation(line: 228, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !80, line: 230, column: 5)
!657 = distinct !DILexicalBlock(scope: !658, file: !80, line: 229, column: 5)
!658 = distinct !DILexicalBlock(scope: !653, file: !80, line: 228, column: 26)
!659 = !DILocation(line: 228, column: 38, scope: !656)
!660 = !DILocation(line: 228, column: 5, scope: !656)
!661 = !DILocation(line: 231, column: 3, scope: !658)
!662 = !DILocation(line: 229, column: 3, scope: !587)
!663 = distinct !DISubprogram(name: "drawrec", scope: !80, file: !80, line: 232, type: !347, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!664 = !DILocalVariable(name: "dev", arg: 1, scope: !663, file: !80, line: 232, type: !6)
!665 = !DILocation(line: 0, scope: !663)
!666 = !DILocalVariable(name: "on", arg: 2, scope: !663, file: !80, line: 232, type: !6)
!667 = !DILocation(line: 234, column: 19, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !80, line: 239, column: 3)
!669 = distinct !DILexicalBlock(scope: !670, file: !80, line: 238, column: 3)
!670 = distinct !DILexicalBlock(scope: !663, file: !80, line: 237, column: 3)
!671 = !DILocation(line: 234, column: 31, scope: !668)
!672 = !DILocation(line: 234, column: 29, scope: !668)
!673 = !DILocation(line: 234, column: 13, scope: !668)
!674 = !DILocalVariable(name: "tmp___0", scope: !663, file: !80, line: 235, type: !6)
!675 = !DILocation(line: 234, column: 18, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !80, line: 234, column: 7)
!677 = !DILocation(line: 234, column: 7, scope: !670)
!678 = !DILocation(line: 234, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !80, line: 234, column: 9)
!680 = distinct !DILexicalBlock(scope: !676, file: !80, line: 234, column: 26)
!681 = !DILocation(line: 234, column: 9, scope: !680)
!682 = !DILocalVariable(name: "tmp", scope: !663, file: !80, line: 234, type: !6)
!683 = !DILocation(line: 235, column: 5, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !80, line: 234, column: 13)
!685 = !DILocation(line: 0, scope: !679)
!686 = !DILocation(line: 234, column: 12, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !80, line: 237, column: 5)
!688 = distinct !DILexicalBlock(scope: !680, file: !80, line: 236, column: 5)
!689 = !DILocation(line: 234, column: 20, scope: !687)
!690 = !DILocation(line: 234, column: 5, scope: !687)
!691 = !DILocation(line: 237, column: 3, scope: !680)
!692 = !DILocation(line: 235, column: 3, scope: !670)
!693 = distinct !DISubprogram(name: "setupframe", scope: !80, file: !80, line: 238, type: !694, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !6, !6, !226, !226}
!696 = !DILocalVariable(name: "existmask", arg: 1, scope: !693, file: !80, line: 238, type: !6)
!697 = !DILocation(line: 0, scope: !693)
!698 = !DILocalVariable(name: "canrecmask", arg: 2, scope: !693, file: !80, line: 238, type: !6)
!699 = !DILocalVariable(name: "firstdevp", arg: 3, scope: !693, file: !80, line: 238, type: !226)
!700 = !DILocalVariable(name: "lastdevp", arg: 4, scope: !693, file: !80, line: 238, type: !226)
!701 = !DILocalVariable(name: "__cil_tmp15", scope: !693, file: !80, line: 250, type: !23)
!702 = !DILocation(line: 250, column: 9, scope: !693)
!703 = !DILocalVariable(name: "__cil_tmp16", scope: !693, file: !80, line: 251, type: !23)
!704 = !DILocation(line: 251, column: 9, scope: !693)
!705 = !DILocalVariable(name: "__cil_tmp17", scope: !693, file: !80, line: 252, type: !23)
!706 = !DILocation(line: 252, column: 9, scope: !693)
!707 = !DILocalVariable(name: "__cil_tmp18", scope: !693, file: !80, line: 253, type: !23)
!708 = !DILocation(line: 253, column: 9, scope: !693)
!709 = !DILocalVariable(name: "offset", scope: !693, file: !80, line: 241, type: !6)
!710 = !DILocation(line: 243, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !80, line: 242, column: 3)
!712 = distinct !DILexicalBlock(scope: !713, file: !80, line: 256, column: 3)
!713 = distinct !DILexicalBlock(scope: !693, file: !80, line: 255, column: 3)
!714 = !DILocation(line: 243, column: 9, scope: !711)
!715 = !DILocalVariable(name: "tmp", scope: !693, file: !80, line: 242, type: !6)
!716 = !DILocation(line: 243, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !80, line: 243, column: 7)
!718 = !DILocation(line: 243, column: 7, scope: !713)
!719 = !DILocation(line: 243, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !80, line: 245, column: 5)
!721 = distinct !DILexicalBlock(scope: !722, file: !80, line: 244, column: 5)
!722 = distinct !DILexicalBlock(scope: !717, file: !80, line: 243, column: 22)
!723 = !DILocation(line: 243, column: 5, scope: !720)
!724 = !DILocation(line: 246, column: 3, scope: !722)
!725 = !DILocation(line: 244, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !80, line: 248, column: 3)
!727 = distinct !DILexicalBlock(scope: !713, file: !80, line: 247, column: 3)
!728 = !DILocation(line: 244, column: 13, scope: !726)
!729 = !DILocalVariable(name: "tmp___0", scope: !693, file: !80, line: 243, type: !6)
!730 = !DILocation(line: 244, column: 18, scope: !731)
!731 = distinct !DILexicalBlock(scope: !713, file: !80, line: 244, column: 7)
!732 = !DILocation(line: 244, column: 7, scope: !713)
!733 = !DILocation(line: 244, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !80, line: 246, column: 5)
!735 = distinct !DILexicalBlock(scope: !736, file: !80, line: 245, column: 5)
!736 = distinct !DILexicalBlock(scope: !731, file: !80, line: 244, column: 26)
!737 = !DILocation(line: 244, column: 5, scope: !734)
!738 = !DILocation(line: 247, column: 3, scope: !736)
!739 = !DILocalVariable(name: "f", scope: !693, file: !80, line: 240, type: !6)
!740 = !DILocation(line: 248, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !80, line: 250, column: 3)
!742 = distinct !DILexicalBlock(scope: !713, file: !80, line: 249, column: 3)
!743 = !DILocation(line: 0, scope: !713)
!744 = !DILocation(line: 248, column: 13, scope: !741)
!745 = !DILocation(line: 248, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !80, line: 248, column: 9)
!747 = distinct !DILexicalBlock(scope: !741, file: !80, line: 248, column: 13)
!748 = !DILocation(line: 248, column: 9, scope: !747)
!749 = !DILocation(line: 248, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !80, line: 248, column: 21)
!751 = !DILocation(line: 250, column: 24, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !80, line: 250, column: 9)
!753 = !DILocation(line: 250, column: 19, scope: !752)
!754 = !DILocation(line: 250, column: 9, scope: !747)
!755 = !DILocation(line: 252, column: 18, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !80, line: 252, column: 11)
!757 = distinct !DILexicalBlock(scope: !752, file: !80, line: 250, column: 31)
!758 = !DILocation(line: 252, column: 11, scope: !757)
!759 = !DILocation(line: 252, column: 20, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !80, line: 252, column: 24)
!761 = !DILocation(line: 253, column: 7, scope: !760)
!762 = !DILocation(line: 253, column: 17, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !80, line: 254, column: 7)
!764 = !DILocalVariable(name: "tmp___1", scope: !693, file: !80, line: 244, type: !6)
!765 = !DILocation(line: 254, column: 14, scope: !763)
!766 = !DILocation(line: 254, column: 7, scope: !763)
!767 = !DILocation(line: 254, column: 19, scope: !763)
!768 = !DILocation(line: 255, column: 23, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !80, line: 255, column: 7)
!770 = !DILocation(line: 255, column: 35, scope: !769)
!771 = !DILocation(line: 255, column: 33, scope: !769)
!772 = !DILocation(line: 255, column: 17, scope: !769)
!773 = !DILocalVariable(name: "tmp___2", scope: !693, file: !80, line: 245, type: !6)
!774 = !DILocation(line: 255, column: 22, scope: !775)
!775 = distinct !DILexicalBlock(scope: !757, file: !80, line: 255, column: 11)
!776 = !DILocation(line: 255, column: 11, scope: !757)
!777 = !DILocation(line: 255, column: 18, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !80, line: 257, column: 9)
!779 = distinct !DILexicalBlock(scope: !780, file: !80, line: 256, column: 9)
!780 = distinct !DILexicalBlock(scope: !775, file: !80, line: 255, column: 30)
!781 = !DILocation(line: 255, column: 43, scope: !778)
!782 = !DILocation(line: 255, column: 42, scope: !778)
!783 = !DILocation(line: 255, column: 9, scope: !778)
!784 = !DILocation(line: 258, column: 7, scope: !780)
!785 = !DILocation(line: 256, column: 23, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !80, line: 260, column: 7)
!787 = distinct !DILexicalBlock(scope: !757, file: !80, line: 259, column: 7)
!788 = !DILocation(line: 256, column: 35, scope: !786)
!789 = !DILocation(line: 256, column: 33, scope: !786)
!790 = !DILocation(line: 256, column: 17, scope: !786)
!791 = !DILocalVariable(name: "tmp___3", scope: !693, file: !80, line: 246, type: !6)
!792 = !DILocation(line: 256, column: 22, scope: !793)
!793 = distinct !DILexicalBlock(scope: !757, file: !80, line: 256, column: 11)
!794 = !DILocation(line: 256, column: 11, scope: !757)
!795 = !DILocation(line: 256, column: 16, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !80, line: 258, column: 9)
!797 = distinct !DILexicalBlock(scope: !798, file: !80, line: 257, column: 9)
!798 = distinct !DILexicalBlock(scope: !793, file: !80, line: 256, column: 30)
!799 = !DILocation(line: 256, column: 9, scope: !796)
!800 = !DILocation(line: 259, column: 7, scope: !798)
!801 = !DILocation(line: 257, column: 23, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !80, line: 261, column: 7)
!803 = distinct !DILexicalBlock(scope: !757, file: !80, line: 260, column: 7)
!804 = !DILocation(line: 257, column: 35, scope: !802)
!805 = !DILocation(line: 257, column: 33, scope: !802)
!806 = !DILocation(line: 257, column: 17, scope: !802)
!807 = !DILocalVariable(name: "tmp___4", scope: !693, file: !80, line: 247, type: !6)
!808 = !DILocation(line: 257, column: 22, scope: !809)
!809 = distinct !DILexicalBlock(scope: !757, file: !80, line: 257, column: 11)
!810 = !DILocation(line: 257, column: 11, scope: !757)
!811 = !DILocation(line: 257, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !80, line: 259, column: 9)
!813 = distinct !DILexicalBlock(scope: !814, file: !80, line: 258, column: 9)
!814 = distinct !DILexicalBlock(scope: !809, file: !80, line: 257, column: 30)
!815 = !DILocation(line: 257, column: 9, scope: !812)
!816 = !DILocation(line: 260, column: 7, scope: !814)
!817 = !DILocation(line: 258, column: 27, scope: !818)
!818 = distinct !DILexicalBlock(scope: !757, file: !80, line: 258, column: 11)
!819 = !DILocation(line: 258, column: 22, scope: !818)
!820 = !DILocation(line: 258, column: 11, scope: !757)
!821 = !DILocation(line: 259, column: 25, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !80, line: 260, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !80, line: 259, column: 9)
!824 = distinct !DILexicalBlock(scope: !818, file: !80, line: 258, column: 34)
!825 = !DILocation(line: 259, column: 37, scope: !822)
!826 = !DILocation(line: 259, column: 35, scope: !822)
!827 = !DILocation(line: 259, column: 19, scope: !822)
!828 = !DILocalVariable(name: "tmp___5", scope: !693, file: !80, line: 248, type: !6)
!829 = !DILocation(line: 259, column: 24, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !80, line: 259, column: 13)
!831 = !DILocation(line: 259, column: 13, scope: !824)
!832 = !DILocation(line: 259, column: 20, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !80, line: 261, column: 11)
!834 = distinct !DILexicalBlock(scope: !835, file: !80, line: 260, column: 11)
!835 = distinct !DILexicalBlock(scope: !830, file: !80, line: 259, column: 32)
!836 = !DILocation(line: 259, column: 11, scope: !833)
!837 = !DILocation(line: 262, column: 9, scope: !835)
!838 = !DILocation(line: 263, column: 7, scope: !824)
!839 = !DILocation(line: 264, column: 5, scope: !757)
!840 = !DILocation(line: 248, column: 7, scope: !747)
!841 = distinct !{!841, !740, !842}
!842 = !DILocation(line: 249, column: 3, scope: !741)
!843 = !DILocation(line: 251, column: 3, scope: !741)
!844 = !DILocation(line: 263, column: 19, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !80, line: 255, column: 3)
!846 = distinct !DILexicalBlock(scope: !713, file: !80, line: 254, column: 3)
!847 = !DILocation(line: 263, column: 27, scope: !845)
!848 = !DILocation(line: 263, column: 33, scope: !845)
!849 = !DILocation(line: 263, column: 13, scope: !845)
!850 = !DILocalVariable(name: "tmp___6", scope: !693, file: !80, line: 249, type: !6)
!851 = !DILocation(line: 263, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !713, file: !80, line: 263, column: 7)
!853 = !DILocation(line: 263, column: 7, scope: !713)
!854 = !DILocation(line: 263, column: 14, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !80, line: 265, column: 5)
!856 = distinct !DILexicalBlock(scope: !857, file: !80, line: 264, column: 5)
!857 = distinct !DILexicalBlock(scope: !852, file: !80, line: 263, column: 26)
!858 = !DILocation(line: 263, column: 5, scope: !855)
!859 = !DILocation(line: 267, column: 3, scope: !857)
!860 = !DILocation(line: 266, column: 3, scope: !713)
!861 = distinct !DISubprogram(name: "usage_help", scope: !80, file: !80, line: 270, type: !323, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!862 = !DILocalVariable(name: "existmask", arg: 1, scope: !861, file: !80, line: 270, type: !6)
!863 = !DILocation(line: 0, scope: !861)
!864 = !DILocalVariable(name: "__cil_tmp4", scope: !861, file: !80, line: 274, type: !23)
!865 = !DILocation(line: 274, column: 9, scope: !861)
!866 = !DILocalVariable(name: "__cil_tmp5", scope: !861, file: !80, line: 275, type: !23)
!867 = !DILocation(line: 275, column: 9, scope: !861)
!868 = !DILocalVariable(name: "__cil_tmp6", scope: !861, file: !80, line: 276, type: !23)
!869 = !DILocation(line: 276, column: 9, scope: !861)
!870 = !DILocalVariable(name: "__cil_tmp7", scope: !861, file: !80, line: 277, type: !23)
!871 = !DILocation(line: 277, column: 9, scope: !861)
!872 = !DILocalVariable(name: "__cil_tmp8", scope: !861, file: !80, line: 278, type: !23)
!873 = !DILocation(line: 278, column: 9, scope: !861)
!874 = !DILocalVariable(name: "__cil_tmp9", scope: !861, file: !80, line: 279, type: !23)
!875 = !DILocation(line: 279, column: 9, scope: !861)
!876 = !DILocation(line: 274, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !80, line: 283, column: 3)
!878 = distinct !DILexicalBlock(scope: !879, file: !80, line: 282, column: 3)
!879 = distinct !DILexicalBlock(scope: !861, file: !80, line: 281, column: 3)
!880 = !DILocation(line: 285, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !80, line: 276, column: 3)
!882 = !DILocation(line: 284, column: 3, scope: !881)
!883 = !DILocation(line: 286, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !878, file: !80, line: 287, column: 3)
!885 = !DILocalVariable(name: "count", scope: !861, file: !80, line: 273, type: !6)
!886 = !DILocalVariable(name: "f", scope: !861, file: !80, line: 272, type: !6)
!887 = !DILocation(line: 289, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !80, line: 292, column: 3)
!889 = distinct !DILexicalBlock(scope: !879, file: !80, line: 291, column: 3)
!890 = !DILocation(line: 0, scope: !879)
!891 = !DILocation(line: 289, column: 13, scope: !888)
!892 = !DILocation(line: 289, column: 14, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !80, line: 289, column: 9)
!894 = distinct !DILexicalBlock(scope: !888, file: !80, line: 289, column: 13)
!895 = !DILocation(line: 289, column: 9, scope: !894)
!896 = !DILocation(line: 289, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !80, line: 289, column: 21)
!898 = !DILocation(line: 291, column: 24, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !80, line: 291, column: 9)
!900 = !DILocation(line: 291, column: 19, scope: !899)
!901 = !DILocation(line: 291, column: 9, scope: !894)
!902 = !DILocation(line: 292, column: 54, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !80, line: 293, column: 7)
!904 = distinct !DILexicalBlock(scope: !905, file: !80, line: 292, column: 7)
!905 = distinct !DILexicalBlock(scope: !899, file: !80, line: 291, column: 31)
!906 = !DILocation(line: 292, column: 7, scope: !903)
!907 = !DILocation(line: 292, column: 13, scope: !904)
!908 = !DILocation(line: 294, column: 5, scope: !905)
!909 = !DILocation(line: 293, column: 15, scope: !910)
!910 = distinct !DILexicalBlock(scope: !894, file: !80, line: 293, column: 9)
!911 = !DILocation(line: 293, column: 9, scope: !894)
!912 = !DILocation(line: 293, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !80, line: 295, column: 7)
!914 = distinct !DILexicalBlock(scope: !915, file: !80, line: 294, column: 7)
!915 = distinct !DILexicalBlock(scope: !910, file: !80, line: 293, column: 21)
!916 = !DILocation(line: 295, column: 5, scope: !915)
!917 = !DILocation(line: 0, scope: !894)
!918 = !DILocation(line: 289, column: 7, scope: !894)
!919 = distinct !{!919, !887, !920}
!920 = !DILocation(line: 290, column: 3, scope: !888)
!921 = !DILocation(line: 292, column: 3, scope: !888)
!922 = !DILocation(line: 296, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !80, line: 296, column: 3)
!924 = distinct !DILexicalBlock(scope: !879, file: !80, line: 295, column: 3)
!925 = !DILocation(line: 306, column: 3, scope: !879)
!926 = distinct !DISubprogram(name: "cmdline_main", scope: !80, file: !80, line: 310, type: !927, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !6, !110}
!929 = !DILocalVariable(name: "argc", arg: 1, scope: !926, file: !80, line: 310, type: !6)
!930 = !DILocation(line: 0, scope: !926)
!931 = !DILocalVariable(name: "argv", arg: 2, scope: !926, file: !80, line: 310, type: !110)
!932 = !DILocalVariable(name: "mixfd", scope: !926, file: !80, line: 312, type: !6)
!933 = !DILocation(line: 312, column: 7, scope: !926)
!934 = !DILocalVariable(name: "existmask", scope: !926, file: !80, line: 313, type: !6)
!935 = !DILocation(line: 313, column: 7, scope: !926)
!936 = !DILocalVariable(name: "canrecmask", scope: !926, file: !80, line: 314, type: !6)
!937 = !DILocation(line: 314, column: 7, scope: !926)
!938 = !DILocalVariable(name: "isrecmask", scope: !926, file: !80, line: 315, type: !6)
!939 = !DILocation(line: 315, column: 7, scope: !926)
!940 = !DILocalVariable(name: "stereomask", scope: !926, file: !80, line: 316, type: !6)
!941 = !DILocation(line: 316, column: 7, scope: !926)
!942 = !DILocalVariable(name: "__cil_tmp32", scope: !926, file: !80, line: 340, type: !23)
!943 = !DILocation(line: 340, column: 9, scope: !926)
!944 = !DILocalVariable(name: "__cil_tmp33", scope: !926, file: !80, line: 341, type: !23)
!945 = !DILocation(line: 341, column: 9, scope: !926)
!946 = !DILocalVariable(name: "__cil_tmp34", scope: !926, file: !80, line: 342, type: !23)
!947 = !DILocation(line: 342, column: 9, scope: !926)
!948 = !DILocalVariable(name: "__cil_tmp35", scope: !926, file: !80, line: 343, type: !23)
!949 = !DILocation(line: 343, column: 9, scope: !926)
!950 = !DILocalVariable(name: "__cil_tmp36", scope: !926, file: !80, line: 344, type: !23)
!951 = !DILocation(line: 344, column: 9, scope: !926)
!952 = !DILocalVariable(name: "__cil_tmp37", scope: !926, file: !80, line: 345, type: !23)
!953 = !DILocation(line: 345, column: 9, scope: !926)
!954 = !DILocalVariable(name: "__cil_tmp38", scope: !926, file: !80, line: 346, type: !23)
!955 = !DILocation(line: 346, column: 9, scope: !926)
!956 = !DILocalVariable(name: "__cil_tmp39", scope: !926, file: !80, line: 347, type: !23)
!957 = !DILocation(line: 347, column: 9, scope: !926)
!958 = !DILocalVariable(name: "__cil_tmp40", scope: !926, file: !80, line: 348, type: !23)
!959 = !DILocation(line: 348, column: 9, scope: !926)
!960 = !DILocalVariable(name: "__cil_tmp41", scope: !926, file: !80, line: 349, type: !23)
!961 = !DILocation(line: 349, column: 9, scope: !926)
!962 = !DILocalVariable(name: "__cil_tmp42", scope: !926, file: !80, line: 350, type: !23)
!963 = !DILocation(line: 350, column: 9, scope: !926)
!964 = !DILocalVariable(name: "__cil_tmp43", scope: !926, file: !80, line: 351, type: !23)
!965 = !DILocation(line: 351, column: 9, scope: !926)
!966 = !DILocalVariable(name: "__cil_tmp44", scope: !926, file: !80, line: 352, type: !23)
!967 = !DILocation(line: 352, column: 9, scope: !926)
!968 = !DILocalVariable(name: "__cil_tmp45", scope: !926, file: !80, line: 353, type: !23)
!969 = !DILocation(line: 353, column: 9, scope: !926)
!970 = !DILocalVariable(name: "__cil_tmp46", scope: !926, file: !80, line: 354, type: !23)
!971 = !DILocation(line: 354, column: 9, scope: !926)
!972 = !DILocalVariable(name: "done", scope: !926, file: !80, line: 323, type: !6)
!973 = !DILocalVariable(name: "want_usage", scope: !926, file: !80, line: 324, type: !6)
!974 = !DILocalVariable(name: "want_levels", scope: !926, file: !80, line: 325, type: !6)
!975 = !DILocation(line: 319, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !80, line: 319, column: 3)
!977 = distinct !DILexicalBlock(scope: !978, file: !80, line: 318, column: 3)
!978 = distinct !DILexicalBlock(scope: !926, file: !80, line: 356, column: 3)
!979 = !DILocation(line: 317, column: 15, scope: !978)
!980 = !DILocation(line: 317, column: 14, scope: !978)
!981 = !DILocation(line: 317, column: 8, scope: !978)
!982 = !DILocation(line: 319, column: 13, scope: !976)
!983 = !DILocation(line: 320, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !80, line: 323, column: 5)
!985 = distinct !DILexicalBlock(scope: !986, file: !80, line: 322, column: 5)
!986 = distinct !DILexicalBlock(scope: !976, file: !80, line: 319, column: 13)
!987 = !DILocalVariable(name: "tmp___0", scope: !926, file: !80, line: 326, type: !6)
!988 = !DILocation(line: 322, column: 17, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !80, line: 322, column: 9)
!990 = distinct !DILexicalBlock(scope: !986, file: !80, line: 323, column: 5)
!991 = !DILocation(line: 322, column: 9, scope: !990)
!992 = !DILocation(line: 322, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !80, line: 322, column: 25)
!994 = !DILocation(line: 327, column: 17, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !80, line: 327, column: 9)
!996 = !DILocation(line: 327, column: 9, scope: !990)
!997 = !DILocation(line: 327, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !80, line: 327, column: 25)
!999 = !DILocation(line: 330, column: 17, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !990, file: !80, line: 330, column: 9)
!1001 = !DILocation(line: 330, column: 9, scope: !990)
!1002 = !DILocation(line: 330, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !80, line: 330, column: 24)
!1004 = !DILocation(line: 330, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !990, file: !80, line: 330, column: 9)
!1006 = !DILocation(line: 330, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !80, line: 330, column: 25)
!1008 = !DILocation(line: 333, column: 17, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !990, file: !80, line: 333, column: 9)
!1010 = !DILocation(line: 333, column: 9, scope: !990)
!1011 = !DILocation(line: 333, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !80, line: 333, column: 24)
!1013 = !DILocation(line: 344, column: 17, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !990, file: !80, line: 344, column: 9)
!1015 = !DILocation(line: 344, column: 9, scope: !990)
!1016 = !DILocation(line: 344, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !80, line: 344, column: 24)
!1018 = !DILocation(line: 320, column: 5, scope: !990)
!1019 = !DILocation(line: 323, column: 38, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !80, line: 323, column: 5)
!1021 = distinct !DILexicalBlock(scope: !990, file: !80, line: 322, column: 5)
!1022 = !DILocation(line: 323, column: 15, scope: !1020)
!1023 = !DILocalVariable(name: "tmp___1", scope: !926, file: !80, line: 327, type: !12)
!1024 = !DILocation(line: 323, column: 30, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !80, line: 325, column: 5)
!1026 = !DILocation(line: 323, column: 15, scope: !1025)
!1027 = !DILocalVariable(name: "tmp___2", scope: !926, file: !80, line: 328, type: !11)
!1028 = !DILocation(line: 323, column: 14, scope: !1021)
!1029 = !DILocation(line: 323, column: 25, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !990, file: !80, line: 323, column: 9)
!1031 = !DILocation(line: 323, column: 9, scope: !1030)
!1032 = !DILocation(line: 323, column: 34, scope: !1030)
!1033 = !DILocation(line: 323, column: 9, scope: !990)
!1034 = !DILocation(line: 324, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !80, line: 325, column: 7)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !80, line: 324, column: 7)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !80, line: 323, column: 66)
!1038 = !DILocation(line: 327, column: 5, scope: !1037)
!1039 = !DILocation(line: 325, column: 37, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !80, line: 329, column: 5)
!1041 = distinct !DILexicalBlock(scope: !990, file: !80, line: 328, column: 5)
!1042 = !DILocation(line: 325, column: 80, scope: !1040)
!1043 = !DILocation(line: 325, column: 5, scope: !1040)
!1044 = !DILocation(line: 326, column: 5, scope: !990)
!1045 = !DILocation(line: 329, column: 5, scope: !990)
!1046 = !DILocation(line: 332, column: 5, scope: !990)
!1047 = !DILocation(line: 336, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !80, line: 336, column: 9)
!1049 = distinct !DILexicalBlock(scope: !990, file: !80, line: 334, column: 5)
!1050 = !DILocation(line: 336, column: 17, scope: !1048)
!1051 = !DILocation(line: 336, column: 9, scope: !1049)
!1052 = !DILocation(line: 336, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !80, line: 336, column: 25)
!1054 = !DILocation(line: 340, column: 5, scope: !1049)
!1055 = !DILocation(line: 337, column: 38, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !80, line: 343, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !80, line: 342, column: 5)
!1058 = !DILocation(line: 337, column: 5, scope: !1056)
!1059 = !DILocation(line: 339, column: 5, scope: !1049)
!1060 = !DILocation(line: 341, column: 38, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !80, line: 342, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1049, file: !80, line: 341, column: 5)
!1063 = !DILocation(line: 342, column: 13, scope: !1061)
!1064 = !DILocation(line: 341, column: 5, scope: !1061)
!1065 = !DILocation(line: 344, column: 5, scope: !1062)
!1066 = !DILocation(line: 343, column: 5, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !80, line: 348, column: 5)
!1068 = distinct !DILexicalBlock(scope: !990, file: !80, line: 347, column: 5)
!1069 = !DILocation(line: 345, column: 5, scope: !990)
!1070 = !DILocation(line: 0, scope: !978)
!1071 = !DILocation(line: 319, column: 14, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !986, file: !80, line: 319, column: 9)
!1073 = !DILocation(line: 319, column: 9, scope: !986)
!1074 = !DILocation(line: 319, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !80, line: 319, column: 21)
!1076 = distinct !{!1076, !975, !1077}
!1077 = !DILocation(line: 321, column: 3, scope: !976)
!1078 = !DILocation(line: 323, column: 3, scope: !976)
!1079 = !DILocation(line: 350, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !978, file: !80, line: 350, column: 7)
!1081 = !DILocation(line: 350, column: 7, scope: !978)
!1082 = !DILocation(line: 352, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !80, line: 352, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !80, line: 351, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !80, line: 350, column: 19)
!1086 = !DILocation(line: 354, column: 16, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !80, line: 354, column: 5)
!1088 = !DILocation(line: 354, column: 5, scope: !1087)
!1089 = !DILocation(line: 356, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !80, line: 356, column: 5)
!1091 = !DILocation(line: 359, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !978, file: !80, line: 359, column: 7)
!1093 = !DILocation(line: 359, column: 7, scope: !978)
!1094 = !DILocation(line: 361, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !80, line: 361, column: 5)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !80, line: 360, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !80, line: 359, column: 20)
!1098 = !DILocalVariable(name: "f", scope: !926, file: !80, line: 317, type: !6)
!1099 = !DILocation(line: 363, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !80, line: 366, column: 5)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !80, line: 365, column: 5)
!1102 = !DILocation(line: 0, scope: !1097)
!1103 = !DILocation(line: 363, column: 15, scope: !1100)
!1104 = !DILocation(line: 363, column: 16, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !80, line: 363, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !80, line: 363, column: 15)
!1107 = !DILocation(line: 363, column: 11, scope: !1106)
!1108 = !DILocation(line: 363, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !80, line: 363, column: 23)
!1110 = !DILocation(line: 364, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !80, line: 364, column: 11)
!1112 = !DILocation(line: 364, column: 26, scope: !1111)
!1113 = !DILocation(line: 364, column: 21, scope: !1111)
!1114 = !DILocation(line: 364, column: 11, scope: !1106)
!1115 = !DILocation(line: 366, column: 37, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !80, line: 366, column: 9)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !80, line: 365, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !80, line: 364, column: 33)
!1119 = !DILocation(line: 366, column: 15, scope: !1116)
!1120 = !DILocalVariable(name: "tmp", scope: !926, file: !80, line: 318, type: !6)
!1121 = !DILocation(line: 367, column: 17, scope: !1117)
!1122 = !DILocalVariable(name: "l", scope: !926, file: !80, line: 319, type: !6)
!1123 = !DILocation(line: 367, column: 18, scope: !1117)
!1124 = !DILocation(line: 367, column: 24, scope: !1117)
!1125 = !DILocalVariable(name: "r", scope: !926, file: !80, line: 320, type: !6)
!1126 = !DILocation(line: 368, column: 60, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1117, file: !80, line: 368, column: 9)
!1128 = !DILocation(line: 368, column: 9, scope: !1127)
!1129 = !DILocation(line: 369, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1118, file: !80, line: 369, column: 13)
!1131 = !DILocation(line: 369, column: 29, scope: !1130)
!1132 = !DILocation(line: 369, column: 24, scope: !1130)
!1133 = !DILocation(line: 369, column: 13, scope: !1118)
!1134 = !DILocation(line: 369, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !80, line: 371, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !80, line: 370, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !80, line: 369, column: 36)
!1138 = !DILocation(line: 372, column: 9, scope: !1137)
!1139 = !DILocation(line: 370, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !80, line: 370, column: 13)
!1141 = !DILocation(line: 370, column: 29, scope: !1140)
!1142 = !DILocation(line: 370, column: 24, scope: !1140)
!1143 = !DILocation(line: 370, column: 13, scope: !1118)
!1144 = !DILocation(line: 371, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !80, line: 371, column: 15)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !80, line: 370, column: 36)
!1147 = !DILocation(line: 371, column: 30, scope: !1145)
!1148 = !DILocation(line: 371, column: 25, scope: !1145)
!1149 = !DILocation(line: 371, column: 15, scope: !1146)
!1150 = !DILocalVariable(name: "tmp___3", scope: !926, file: !80, line: 329, type: !6)
!1151 = !DILocation(line: 372, column: 11, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !80, line: 371, column: 37)
!1153 = !DILocation(line: 0, scope: !1145)
!1154 = !DILocation(line: 371, column: 11, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !80, line: 374, column: 11)
!1156 = distinct !DILexicalBlock(scope: !1146, file: !80, line: 373, column: 11)
!1157 = !DILocation(line: 374, column: 9, scope: !1146)
!1158 = !DILocation(line: 372, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !80, line: 376, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1118, file: !80, line: 375, column: 9)
!1161 = !DILocation(line: 375, column: 7, scope: !1118)
!1162 = !DILocation(line: 363, column: 9, scope: !1106)
!1163 = distinct !{!1163, !1099, !1164}
!1164 = !DILocation(line: 364, column: 5, scope: !1100)
!1165 = !DILocation(line: 366, column: 5, scope: !1100)
!1166 = !DILocation(line: 375, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !80, line: 370, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1097, file: !80, line: 369, column: 5)
!1169 = !DILocation(line: 379, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !978, file: !80, line: 379, column: 7)
!1171 = !DILocation(line: 379, column: 15, scope: !1170)
!1172 = !DILocation(line: 379, column: 7, scope: !978)
!1173 = !DILocation(line: 380, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !80, line: 379, column: 24)
!1175 = !DILocation(line: 384, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !80, line: 383, column: 3)
!1177 = distinct !DILexicalBlock(scope: !978, file: !80, line: 382, column: 3)
!1178 = !DILocation(line: 386, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !80, line: 388, column: 3)
!1180 = distinct !DILexicalBlock(scope: !978, file: !80, line: 387, column: 3)
!1181 = !DILocation(line: 386, column: 13, scope: !1179)
!1182 = !DILocation(line: 386, column: 12, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 386, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !80, line: 386, column: 13)
!1185 = !DILocation(line: 386, column: 20, scope: !1183)
!1186 = !DILocation(line: 386, column: 9, scope: !1184)
!1187 = !DILocation(line: 386, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !80, line: 386, column: 29)
!1189 = !DILocalVariable(name: "found", scope: !926, file: !80, line: 321, type: !6)
!1190 = !DILocation(line: 390, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !80, line: 392, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 391, column: 5)
!1193 = !DILocation(line: 0, scope: !1184)
!1194 = !DILocation(line: 390, column: 15, scope: !1191)
!1195 = !DILocation(line: 390, column: 16, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !80, line: 390, column: 11)
!1197 = distinct !DILexicalBlock(scope: !1191, file: !80, line: 390, column: 15)
!1198 = !DILocation(line: 390, column: 11, scope: !1197)
!1199 = !DILocation(line: 390, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !80, line: 390, column: 23)
!1201 = !DILocation(line: 391, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !80, line: 391, column: 11)
!1203 = !DILocation(line: 391, column: 26, scope: !1202)
!1204 = !DILocation(line: 391, column: 21, scope: !1202)
!1205 = !DILocation(line: 391, column: 11, scope: !1197)
!1206 = !DILocation(line: 391, column: 51, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !80, line: 393, column: 9)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !80, line: 392, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !80, line: 391, column: 33)
!1210 = !DILocation(line: 391, column: 49, scope: !1207)
!1211 = !DILocation(line: 391, column: 42, scope: !1207)
!1212 = !DILocation(line: 391, column: 78, scope: !1207)
!1213 = !DILocation(line: 391, column: 77, scope: !1207)
!1214 = !DILocation(line: 391, column: 19, scope: !1207)
!1215 = !DILocalVariable(name: "tmp___4", scope: !926, file: !80, line: 330, type: !6)
!1216 = !DILocation(line: 391, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !80, line: 391, column: 13)
!1218 = !DILocation(line: 391, column: 13, scope: !1209)
!1219 = !DILocation(line: 394, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !80, line: 391, column: 27)
!1221 = !DILocation(line: 396, column: 7, scope: !1209)
!1222 = !DILocation(line: 390, column: 9, scope: !1197)
!1223 = distinct !{!1223, !1190, !1224}
!1224 = !DILocation(line: 391, column: 5, scope: !1191)
!1225 = !DILocation(line: 393, column: 5, scope: !1191)
!1226 = !DILocation(line: 397, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 397, column: 9)
!1228 = !DILocation(line: 397, column: 9, scope: !1184)
!1229 = !DILocation(line: 399, column: 40, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !80, line: 399, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !80, line: 398, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !80, line: 397, column: 18)
!1233 = !DILocation(line: 400, column: 24, scope: !1230)
!1234 = !DILocation(line: 400, column: 22, scope: !1230)
!1235 = !DILocation(line: 400, column: 15, scope: !1230)
!1236 = !DILocation(line: 399, column: 7, scope: !1230)
!1237 = !DILocation(line: 400, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1231, file: !80, line: 402, column: 7)
!1239 = !DILocation(line: 403, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 403, column: 9)
!1241 = !DILocation(line: 403, column: 14, scope: !1240)
!1242 = !DILocation(line: 403, column: 24, scope: !1240)
!1243 = !DILocation(line: 403, column: 9, scope: !1184)
!1244 = !DILocation(line: 405, column: 40, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !80, line: 405, column: 7)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !80, line: 404, column: 7)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !80, line: 403, column: 29)
!1248 = !DILocation(line: 406, column: 24, scope: !1245)
!1249 = !DILocation(line: 406, column: 22, scope: !1245)
!1250 = !DILocation(line: 406, column: 15, scope: !1245)
!1251 = !DILocation(line: 405, column: 7, scope: !1245)
!1252 = !DILocation(line: 406, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !80, line: 408, column: 7)
!1254 = !DILocation(line: 409, column: 13, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 410, column: 5)
!1256 = !DILocation(line: 416, column: 48, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1255, file: !80, line: 412, column: 5)
!1258 = !DILocation(line: 416, column: 46, scope: !1257)
!1259 = !DILocation(line: 416, column: 39, scope: !1257)
!1260 = !DILocation(line: 416, column: 16, scope: !1257)
!1261 = !DILocalVariable(name: "tmp___12", scope: !926, file: !80, line: 338, type: !6)
!1262 = !DILocation(line: 416, column: 18, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1184, file: !80, line: 416, column: 9)
!1264 = !DILocation(line: 416, column: 9, scope: !1184)
!1265 = !DILocation(line: 416, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !80, line: 416, column: 24)
!1267 = !DILocation(line: 416, column: 50, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !80, line: 419, column: 7)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !80, line: 418, column: 7)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !80, line: 417, column: 12)
!1271 = !DILocation(line: 416, column: 48, scope: !1268)
!1272 = !DILocation(line: 416, column: 41, scope: !1268)
!1273 = !DILocation(line: 416, column: 18, scope: !1268)
!1274 = !DILocalVariable(name: "tmp___13", scope: !926, file: !80, line: 339, type: !6)
!1275 = !DILocation(line: 416, column: 20, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !80, line: 416, column: 11)
!1277 = !DILocation(line: 416, column: 11, scope: !1270)
!1278 = !DILocation(line: 416, column: 26, scope: !1276)
!1279 = !DILocation(line: 418, column: 16, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !80, line: 418, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !80, line: 416, column: 26)
!1282 = !DILocation(line: 418, column: 32, scope: !1280)
!1283 = !DILocation(line: 418, column: 27, scope: !1280)
!1284 = !DILocation(line: 418, column: 13, scope: !1281)
!1285 = !DILocation(line: 420, column: 44, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !80, line: 420, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !80, line: 419, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !80, line: 418, column: 40)
!1289 = !DILocation(line: 421, column: 29, scope: !1286)
!1290 = !DILocation(line: 421, column: 37, scope: !1286)
!1291 = !DILocation(line: 421, column: 26, scope: !1286)
!1292 = !DILocation(line: 421, column: 19, scope: !1286)
!1293 = !DILocation(line: 420, column: 11, scope: !1286)
!1294 = !DILocation(line: 422, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1287, file: !80, line: 423, column: 11)
!1296 = !DILocation(line: 425, column: 22, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !80, line: 427, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1281, file: !80, line: 426, column: 9)
!1299 = !DILocation(line: 425, column: 64, scope: !1297)
!1300 = !DILocation(line: 425, column: 62, scope: !1297)
!1301 = !DILocation(line: 425, column: 55, scope: !1297)
!1302 = !DILocation(line: 425, column: 73, scope: !1297)
!1303 = !DILocation(line: 425, column: 53, scope: !1297)
!1304 = !DILocation(line: 425, column: 47, scope: !1297)
!1305 = !DILocation(line: 425, column: 78, scope: !1297)
!1306 = !DILocation(line: 425, column: 9, scope: !1297)
!1307 = !DILocation(line: 428, column: 7, scope: !1281)
!1308 = !DILocalVariable(name: "offset_sign", scope: !926, file: !80, line: 331, type: !6)
!1309 = !DILocation(line: 432, column: 30, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 432, column: 13)
!1311 = distinct !DILexicalBlock(scope: !1276, file: !80, line: 428, column: 14)
!1312 = !DILocation(line: 432, column: 28, scope: !1310)
!1313 = !DILocation(line: 432, column: 21, scope: !1310)
!1314 = !DILocation(line: 432, column: 39, scope: !1310)
!1315 = !DILocation(line: 432, column: 19, scope: !1310)
!1316 = !DILocation(line: 432, column: 13, scope: !1310)
!1317 = !DILocation(line: 432, column: 44, scope: !1310)
!1318 = !DILocation(line: 432, column: 13, scope: !1311)
!1319 = !DILocation(line: 434, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !80, line: 432, column: 51)
!1321 = !DILocation(line: 0, scope: !1311)
!1322 = !DILocation(line: 434, column: 30, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 434, column: 13)
!1324 = !DILocation(line: 434, column: 28, scope: !1323)
!1325 = !DILocation(line: 434, column: 21, scope: !1323)
!1326 = !DILocation(line: 434, column: 39, scope: !1323)
!1327 = !DILocation(line: 434, column: 19, scope: !1323)
!1328 = !DILocation(line: 434, column: 13, scope: !1323)
!1329 = !DILocation(line: 434, column: 44, scope: !1323)
!1330 = !DILocation(line: 434, column: 13, scope: !1311)
!1331 = !DILocation(line: 436, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !80, line: 434, column: 51)
!1333 = !DILocation(line: 438, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 438, column: 13)
!1335 = !DILocation(line: 438, column: 13, scope: !1311)
!1336 = !DILocation(line: 439, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !80, line: 438, column: 26)
!1338 = !DILocation(line: 0, scope: !1334)
!1339 = !DILocation(line: 438, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !80, line: 441, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 440, column: 9)
!1342 = !DILocation(line: 438, column: 19, scope: !1340)
!1343 = !DILocation(line: 438, column: 53, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !80, line: 442, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !80, line: 441, column: 11)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !80, line: 438, column: 19)
!1347 = !DILocation(line: 438, column: 51, scope: !1344)
!1348 = !DILocation(line: 438, column: 44, scope: !1344)
!1349 = !DILocation(line: 438, column: 21, scope: !1344)
!1350 = !DILocalVariable(name: "tmp___6", scope: !926, file: !80, line: 333, type: !12)
!1351 = !DILocation(line: 438, column: 29, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !80, line: 438, column: 15)
!1353 = !DILocation(line: 438, column: 15, scope: !1346)
!1354 = !DILocation(line: 438, column: 13, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !80, line: 438, column: 41)
!1356 = !DILocation(line: 439, column: 63, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !80, line: 441, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !80, line: 440, column: 11)
!1359 = !DILocation(line: 439, column: 61, scope: !1357)
!1360 = !DILocation(line: 439, column: 54, scope: !1357)
!1361 = !DILocation(line: 439, column: 72, scope: !1357)
!1362 = !DILocation(line: 439, column: 52, scope: !1357)
!1363 = !DILocation(line: 439, column: 46, scope: !1357)
!1364 = !DILocation(line: 439, column: 21, scope: !1357)
!1365 = !DILocalVariable(name: "tmp___5", scope: !926, file: !80, line: 332, type: !23)
!1366 = !DILocation(line: 439, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1346, file: !80, line: 439, column: 15)
!1368 = !DILocation(line: 439, column: 39, scope: !1367)
!1369 = !DILocation(line: 439, column: 15, scope: !1346)
!1370 = !DILocation(line: 441, column: 46, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !80, line: 441, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !80, line: 440, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !80, line: 439, column: 71)
!1374 = !DILocation(line: 442, column: 31, scope: !1371)
!1375 = !DILocation(line: 442, column: 39, scope: !1371)
!1376 = !DILocation(line: 442, column: 28, scope: !1371)
!1377 = !DILocation(line: 442, column: 21, scope: !1371)
!1378 = !DILocation(line: 441, column: 13, scope: !1371)
!1379 = !DILocation(line: 443, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !80, line: 444, column: 13)
!1381 = !DILocation(line: 438, column: 13, scope: !1346)
!1382 = distinct !{!1382, !1339, !1383}
!1383 = !DILocation(line: 439, column: 9, scope: !1340)
!1384 = !DILocation(line: 441, column: 9, scope: !1340)
!1385 = !DILocation(line: 447, column: 47, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !80, line: 445, column: 9)
!1387 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 444, column: 9)
!1388 = !DILocation(line: 447, column: 45, scope: !1386)
!1389 = !DILocation(line: 447, column: 38, scope: !1386)
!1390 = !DILocation(line: 447, column: 15, scope: !1386)
!1391 = !DILocalVariable(name: "ptr", scope: !926, file: !80, line: 322, type: !23)
!1392 = !DILocation(line: 447, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1311, file: !80, line: 447, column: 13)
!1394 = !DILocation(line: 447, column: 33, scope: !1393)
!1395 = !DILocation(line: 447, column: 13, scope: !1311)
!1396 = !DILocation(line: 449, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !80, line: 449, column: 15)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !80, line: 447, column: 65)
!1399 = !DILocation(line: 449, column: 15, scope: !1398)
!1400 = !DILocation(line: 451, column: 46, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !80, line: 451, column: 13)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !80, line: 450, column: 13)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !80, line: 449, column: 28)
!1404 = !DILocation(line: 451, column: 13, scope: !1401)
!1405 = !DILocation(line: 452, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !80, line: 453, column: 13)
!1407 = !DILocation(line: 455, column: 45, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !80, line: 457, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1398, file: !80, line: 456, column: 11)
!1410 = !DILocation(line: 455, column: 43, scope: !1408)
!1411 = !DILocation(line: 455, column: 36, scope: !1408)
!1412 = !DILocation(line: 455, column: 15, scope: !1408)
!1413 = !DILocation(line: 456, column: 41, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !80, line: 457, column: 11)
!1415 = !DILocation(line: 456, column: 15, scope: !1414)
!1416 = !DILocation(line: 457, column: 33, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !80, line: 458, column: 11)
!1418 = !DILocation(line: 457, column: 11, scope: !1417)
!1419 = !DILocation(line: 460, column: 9, scope: !1398)
!1420 = !DILocation(line: 462, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1393, file: !80, line: 462, column: 13)
!1422 = !DILocation(line: 462, column: 13, scope: !1393)
!1423 = !DILocation(line: 463, column: 54, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !80, line: 464, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !80, line: 463, column: 11)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !80, line: 462, column: 26)
!1427 = !DILocation(line: 463, column: 52, scope: !1424)
!1428 = !DILocation(line: 463, column: 45, scope: !1424)
!1429 = !DILocation(line: 463, column: 22, scope: !1424)
!1430 = !DILocalVariable(name: "tmp___10", scope: !926, file: !80, line: 336, type: !12)
!1431 = !DILocation(line: 463, column: 24, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !80, line: 463, column: 15)
!1433 = !DILocation(line: 463, column: 15, scope: !1426)
!1434 = !DILocation(line: 463, column: 25, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !80, line: 463, column: 30)
!1436 = !DILocalVariable(name: "tmp___9", scope: !926, file: !80, line: 335, type: !6)
!1437 = !DILocation(line: 464, column: 11, scope: !1435)
!1438 = !DILocation(line: 463, column: 53, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !80, line: 466, column: 13)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !80, line: 465, column: 13)
!1441 = distinct !DILexicalBlock(scope: !1432, file: !80, line: 464, column: 18)
!1442 = !DILocation(line: 463, column: 51, scope: !1439)
!1443 = !DILocation(line: 463, column: 44, scope: !1439)
!1444 = !DILocation(line: 463, column: 23, scope: !1439)
!1445 = !DILocalVariable(name: "tmp___8", scope: !926, file: !80, line: 334, type: !6)
!1446 = !DILocation(line: 0, scope: !1432)
!1447 = !DILocation(line: 463, column: 24, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !80, line: 467, column: 11)
!1449 = distinct !DILexicalBlock(scope: !1426, file: !80, line: 466, column: 11)
!1450 = !DILocation(line: 463, column: 11, scope: !1448)
!1451 = !DILocation(line: 466, column: 9, scope: !1426)
!1452 = !DILocation(line: 467, column: 52, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !80, line: 468, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !80, line: 467, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1421, file: !80, line: 466, column: 16)
!1456 = !DILocation(line: 467, column: 50, scope: !1453)
!1457 = !DILocation(line: 467, column: 43, scope: !1453)
!1458 = !DILocation(line: 467, column: 22, scope: !1453)
!1459 = !DILocalVariable(name: "tmp___11", scope: !926, file: !80, line: 337, type: !6)
!1460 = !DILocation(line: 467, column: 26, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !80, line: 469, column: 11)
!1462 = !DILocation(line: 467, column: 11, scope: !1461)
!1463 = !DILocation(line: 471, column: 13, scope: !1184)
!1464 = distinct !{!1464, !1178, !1465}
!1465 = !DILocation(line: 472, column: 3, scope: !1179)
!1466 = !DILocation(line: 474, column: 3, scope: !1179)
!1467 = !DILocation(line: 474, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !80, line: 478, column: 3)
!1469 = distinct !DILexicalBlock(scope: !978, file: !80, line: 477, column: 3)
!1470 = distinct !DISubprogram(name: "main", scope: !80, file: !80, line: 479, type: !1471, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!6, !6, !110}
!1473 = !DILocalVariable(name: "argc", arg: 1, scope: !1470, file: !80, line: 479, type: !6)
!1474 = !DILocation(line: 0, scope: !1470)
!1475 = !DILocalVariable(name: "argv", arg: 2, scope: !1470, file: !80, line: 479, type: !110)
!1476 = !DILocalVariable(name: "mixfd", scope: !1470, file: !80, line: 484, type: !6)
!1477 = !DILocation(line: 484, column: 7, scope: !1470)
!1478 = !DILocalVariable(name: "existmask", scope: !1470, file: !80, line: 486, type: !6)
!1479 = !DILocation(line: 486, column: 7, scope: !1470)
!1480 = !DILocalVariable(name: "canrecmask", scope: !1470, file: !80, line: 487, type: !6)
!1481 = !DILocation(line: 487, column: 7, scope: !1470)
!1482 = !DILocalVariable(name: "isrecmask", scope: !1470, file: !80, line: 488, type: !6)
!1483 = !DILocation(line: 488, column: 7, scope: !1470)
!1484 = !DILocalVariable(name: "stereomask", scope: !1470, file: !80, line: 489, type: !6)
!1485 = !DILocation(line: 489, column: 7, scope: !1470)
!1486 = !DILocalVariable(name: "firstdev", scope: !1470, file: !80, line: 490, type: !6)
!1487 = !DILocation(line: 490, column: 7, scope: !1470)
!1488 = !DILocalVariable(name: "lastdev", scope: !1470, file: !80, line: 491, type: !6)
!1489 = !DILocation(line: 491, column: 7, scope: !1470)
!1490 = !DILocalVariable(name: "__cil_tmp20", scope: !1470, file: !80, line: 498, type: !23)
!1491 = !DILocation(line: 498, column: 9, scope: !1470)
!1492 = !DILocalVariable(name: "quit", scope: !1470, file: !80, line: 481, type: !6)
!1493 = !DILocation(line: 490, column: 12, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 490, column: 7)
!1495 = distinct !DILexicalBlock(scope: !1470, file: !80, line: 500, column: 3)
!1496 = !DILocation(line: 490, column: 7, scope: !1495)
!1497 = !DILocation(line: 491, column: 5, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !80, line: 492, column: 5)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !80, line: 491, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !80, line: 490, column: 17)
!1501 = !DILocation(line: 494, column: 3, scope: !1500)
!1502 = !DILocation(line: 493, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !80, line: 496, column: 3)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 495, column: 3)
!1505 = !DILocation(line: 496, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 496, column: 7)
!1507 = !DILocation(line: 496, column: 7, scope: !1495)
!1508 = !DILocation(line: 497, column: 38, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !80, line: 498, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !80, line: 497, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !80, line: 496, column: 20)
!1512 = !DILocation(line: 497, column: 5, scope: !1509)
!1513 = !DILocation(line: 497, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !80, line: 499, column: 5)
!1515 = !DILocation(line: 499, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !80, line: 502, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 501, column: 3)
!1518 = !DILocation(line: 500, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1517, file: !80, line: 501, column: 3)
!1520 = !DILocation(line: 500, column: 25, scope: !1519)
!1521 = !DILocation(line: 500, column: 3, scope: !1519)
!1522 = !DILocation(line: 501, column: 12, scope: !1517)
!1523 = !DILocalVariable(name: "cursel", scope: !1470, file: !80, line: 482, type: !6)
!1524 = !DILocalVariable(name: "f", scope: !1470, file: !80, line: 492, type: !6)
!1525 = !DILocation(line: 503, column: 3, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !80, line: 506, column: 3)
!1527 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 505, column: 3)
!1528 = !DILocation(line: 0, scope: !1495)
!1529 = !DILocation(line: 503, column: 13, scope: !1526)
!1530 = !DILocation(line: 503, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !80, line: 503, column: 9)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !80, line: 503, column: 13)
!1533 = !DILocation(line: 503, column: 9, scope: !1532)
!1534 = !DILocation(line: 503, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !80, line: 503, column: 21)
!1536 = !DILocation(line: 504, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !80, line: 504, column: 9)
!1538 = !DILocation(line: 504, column: 24, scope: !1537)
!1539 = !DILocation(line: 504, column: 19, scope: !1537)
!1540 = !DILocation(line: 504, column: 9, scope: !1532)
!1541 = !DILocation(line: 506, column: 28, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !80, line: 506, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !80, line: 505, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !80, line: 504, column: 31)
!1545 = !DILocation(line: 506, column: 13, scope: !1542)
!1546 = !DILocalVariable(name: "tmp", scope: !1470, file: !80, line: 493, type: !6)
!1547 = !DILocation(line: 506, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !80, line: 508, column: 7)
!1549 = !DILocation(line: 507, column: 11, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !80, line: 507, column: 11)
!1551 = !DILocation(line: 507, column: 27, scope: !1550)
!1552 = !DILocation(line: 507, column: 22, scope: !1550)
!1553 = !DILocation(line: 507, column: 11, scope: !1544)
!1554 = !DILocation(line: 508, column: 20, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !80, line: 509, column: 9)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !80, line: 508, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !80, line: 507, column: 34)
!1558 = !DILocation(line: 508, column: 35, scope: !1555)
!1559 = !DILocation(line: 508, column: 30, scope: !1555)
!1560 = !DILocation(line: 508, column: 9, scope: !1555)
!1561 = !DILocation(line: 511, column: 7, scope: !1557)
!1562 = !DILocation(line: 512, column: 5, scope: !1544)
!1563 = !DILocation(line: 503, column: 7, scope: !1532)
!1564 = distinct !{!1564, !1525, !1565}
!1565 = !DILocation(line: 504, column: 3, scope: !1526)
!1566 = !DILocation(line: 506, column: 3, scope: !1526)
!1567 = !DILocation(line: 511, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !80, line: 510, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 509, column: 3)
!1570 = !DILocation(line: 512, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1569, file: !80, line: 513, column: 3)
!1572 = !DILocation(line: 512, column: 3, scope: !1571)
!1573 = !DILocation(line: 514, column: 3, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !80, line: 516, column: 3)
!1575 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 515, column: 3)
!1576 = !DILocation(line: 501, column: 10, scope: !1517)
!1577 = !DILocation(line: 514, column: 13, scope: !1574)
!1578 = !DILocation(line: 514, column: 14, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !80, line: 514, column: 9)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !80, line: 514, column: 13)
!1581 = !DILocation(line: 514, column: 9, scope: !1580)
!1582 = !DILocation(line: 514, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !80, line: 514, column: 21)
!1584 = !DILocalVariable(name: "oldsel", scope: !1470, file: !80, line: 483, type: !6)
!1585 = !DILocation(line: 518, column: 18, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !80, line: 517, column: 5)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !80, line: 516, column: 5)
!1588 = !DILocation(line: 518, column: 11, scope: !1586)
!1589 = !DILocalVariable(name: "key", scope: !1470, file: !80, line: 485, type: !6)
!1590 = !DILocation(line: 522, column: 13, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 522, column: 9)
!1592 = distinct !DILexicalBlock(scope: !1580, file: !80, line: 521, column: 5)
!1593 = !DILocation(line: 522, column: 9, scope: !1592)
!1594 = !DILocation(line: 522, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !80, line: 522, column: 20)
!1596 = !DILocation(line: 522, column: 13, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 522, column: 9)
!1598 = !DILocation(line: 522, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !80, line: 522, column: 21)
!1600 = !DILocation(line: 522, column: 13, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 522, column: 9)
!1602 = !DILocation(line: 522, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1601, file: !80, line: 522, column: 21)
!1604 = !DILocation(line: 524, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 524, column: 9)
!1606 = !DILocation(line: 524, column: 9, scope: !1592)
!1607 = !DILocation(line: 524, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !80, line: 524, column: 21)
!1609 = !DILocation(line: 524, column: 13, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 524, column: 9)
!1611 = !DILocation(line: 524, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !80, line: 524, column: 21)
!1613 = !DILocation(line: 530, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 530, column: 9)
!1615 = !DILocation(line: 530, column: 9, scope: !1592)
!1616 = !DILocation(line: 530, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !80, line: 530, column: 21)
!1618 = !DILocation(line: 530, column: 13, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 530, column: 9)
!1620 = !DILocation(line: 530, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1619, file: !80, line: 530, column: 21)
!1622 = !DILocation(line: 536, column: 13, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 536, column: 9)
!1624 = !DILocation(line: 536, column: 9, scope: !1592)
!1625 = !DILocation(line: 536, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !80, line: 536, column: 20)
!1627 = !DILocation(line: 536, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 536, column: 9)
!1629 = !DILocation(line: 536, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1628, file: !80, line: 536, column: 21)
!1631 = !DILocation(line: 536, column: 13, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 536, column: 9)
!1633 = !DILocation(line: 536, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1632, file: !80, line: 536, column: 20)
!1635 = !DILocation(line: 536, column: 13, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 536, column: 9)
!1637 = !DILocation(line: 536, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !80, line: 536, column: 21)
!1639 = !DILocation(line: 543, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 543, column: 9)
!1641 = !DILocation(line: 543, column: 9, scope: !1592)
!1642 = !DILocation(line: 543, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !80, line: 543, column: 20)
!1644 = !DILocation(line: 543, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 543, column: 9)
!1646 = !DILocation(line: 543, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1645, file: !80, line: 543, column: 20)
!1648 = !DILocation(line: 543, column: 13, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 543, column: 9)
!1650 = !DILocation(line: 543, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1649, file: !80, line: 543, column: 21)
!1652 = !DILocation(line: 543, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 543, column: 9)
!1654 = !DILocation(line: 543, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1653, file: !80, line: 543, column: 20)
!1656 = !DILocation(line: 543, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 543, column: 9)
!1658 = !DILocation(line: 543, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !80, line: 543, column: 21)
!1660 = !DILocation(line: 550, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 550, column: 9)
!1662 = !DILocation(line: 550, column: 9, scope: !1592)
!1663 = !DILocation(line: 550, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !80, line: 550, column: 20)
!1665 = !DILocation(line: 557, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 557, column: 9)
!1667 = !DILocation(line: 557, column: 9, scope: !1592)
!1668 = !DILocation(line: 557, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !80, line: 557, column: 20)
!1670 = !DILocation(line: 557, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 557, column: 9)
!1672 = !DILocation(line: 557, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1671, file: !80, line: 557, column: 20)
!1674 = !DILocation(line: 520, column: 5, scope: !1592)
!1675 = !DILocation(line: 523, column: 5, scope: !1592)
!1676 = !DILocation(line: 525, column: 5, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !80, line: 527, column: 5)
!1678 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 526, column: 5)
!1679 = !DILocation(line: 525, column: 15, scope: !1677)
!1680 = !DILocation(line: 526, column: 14, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !80, line: 525, column: 15)
!1682 = !DILocation(line: 525, column: 21, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !80, line: 525, column: 11)
!1684 = !DILocation(line: 525, column: 18, scope: !1683)
!1685 = !DILocation(line: 525, column: 11, scope: !1681)
!1686 = !DILocation(line: 525, column: 19, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !80, line: 525, column: 13)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !80, line: 525, column: 31)
!1689 = !DILocation(line: 525, column: 34, scope: !1687)
!1690 = !DILocation(line: 525, column: 29, scope: !1687)
!1691 = !DILocation(line: 525, column: 13, scope: !1688)
!1692 = !DILocation(line: 525, column: 11, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1687, file: !80, line: 525, column: 48)
!1694 = !DILocation(line: 527, column: 7, scope: !1688)
!1695 = !DILocation(line: 525, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1683, file: !80, line: 527, column: 14)
!1697 = distinct !{!1697, !1676, !1698}
!1698 = !DILocation(line: 527, column: 5, scope: !1677)
!1699 = !DILocation(line: 529, column: 5, scope: !1677)
!1700 = !DILocation(line: 528, column: 18, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 528, column: 9)
!1702 = !DILocation(line: 528, column: 16, scope: !1701)
!1703 = !DILocation(line: 528, column: 9, scope: !1592)
!1704 = !DILocation(line: 528, column: 16, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !80, line: 528, column: 28)
!1706 = !DILocation(line: 529, column: 5, scope: !1705)
!1707 = !DILocation(line: 0, scope: !1592)
!1708 = !DILocation(line: 529, column: 5, scope: !1592)
!1709 = !DILocation(line: 531, column: 5, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !80, line: 533, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 532, column: 5)
!1712 = !DILocation(line: 531, column: 15, scope: !1710)
!1713 = !DILocation(line: 532, column: 14, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !80, line: 531, column: 15)
!1715 = !DILocation(line: 531, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1714, file: !80, line: 531, column: 11)
!1717 = !DILocation(line: 531, column: 18, scope: !1716)
!1718 = !DILocation(line: 531, column: 11, scope: !1714)
!1719 = !DILocation(line: 531, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !80, line: 531, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !80, line: 531, column: 30)
!1722 = !DILocation(line: 531, column: 34, scope: !1720)
!1723 = !DILocation(line: 531, column: 29, scope: !1720)
!1724 = !DILocation(line: 531, column: 13, scope: !1721)
!1725 = !DILocation(line: 531, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !80, line: 531, column: 48)
!1727 = !DILocation(line: 533, column: 7, scope: !1721)
!1728 = !DILocation(line: 531, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !80, line: 533, column: 14)
!1730 = distinct !{!1730, !1709, !1731}
!1731 = !DILocation(line: 533, column: 5, scope: !1710)
!1732 = !DILocation(line: 535, column: 5, scope: !1710)
!1733 = !DILocation(line: 534, column: 18, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 534, column: 9)
!1735 = !DILocation(line: 534, column: 16, scope: !1734)
!1736 = !DILocation(line: 534, column: 9, scope: !1592)
!1737 = !DILocation(line: 534, column: 16, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !80, line: 534, column: 27)
!1739 = !DILocation(line: 535, column: 5, scope: !1738)
!1740 = !DILocation(line: 535, column: 5, scope: !1592)
!1741 = !DILocation(line: 537, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 537, column: 9)
!1743 = !DILocation(line: 537, column: 24, scope: !1742)
!1744 = !DILocation(line: 537, column: 19, scope: !1742)
!1745 = !DILocation(line: 537, column: 9, scope: !1592)
!1746 = !DILocation(line: 539, column: 15, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !80, line: 539, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !80, line: 537, column: 36)
!1749 = !DILocation(line: 539, column: 11, scope: !1748)
!1750 = !DILocalVariable(name: "tmp___0", scope: !1470, file: !80, line: 494, type: !6)
!1751 = !DILocation(line: 540, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !80, line: 539, column: 22)
!1753 = !DILocation(line: 0, scope: !1747)
!1754 = !DILocation(line: 539, column: 20, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !80, line: 542, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1748, file: !80, line: 541, column: 7)
!1757 = !DILocation(line: 539, column: 7, scope: !1755)
!1758 = !DILocation(line: 540, column: 32, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !80, line: 541, column: 7)
!1760 = !DILocation(line: 540, column: 17, scope: !1759)
!1761 = !DILocalVariable(name: "tmp___1", scope: !1470, file: !80, line: 495, type: !6)
!1762 = !DILocation(line: 540, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !80, line: 542, column: 7)
!1764 = !DILocation(line: 543, column: 5, scope: !1748)
!1765 = !DILocation(line: 542, column: 5, scope: !1592)
!1766 = !DILocation(line: 544, column: 9, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 544, column: 9)
!1768 = !DILocation(line: 544, column: 24, scope: !1767)
!1769 = !DILocation(line: 544, column: 19, scope: !1767)
!1770 = !DILocation(line: 544, column: 9, scope: !1592)
!1771 = !DILocation(line: 546, column: 15, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !80, line: 546, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1767, file: !80, line: 544, column: 36)
!1774 = !DILocation(line: 546, column: 11, scope: !1773)
!1775 = !DILocalVariable(name: "tmp___2", scope: !1470, file: !80, line: 496, type: !6)
!1776 = !DILocation(line: 547, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !80, line: 546, column: 22)
!1778 = !DILocation(line: 0, scope: !1772)
!1779 = !DILocation(line: 546, column: 20, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !80, line: 549, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !80, line: 548, column: 7)
!1782 = !DILocation(line: 546, column: 7, scope: !1780)
!1783 = !DILocation(line: 547, column: 32, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !80, line: 548, column: 7)
!1785 = !DILocation(line: 547, column: 17, scope: !1784)
!1786 = !DILocalVariable(name: "tmp___3", scope: !1470, file: !80, line: 497, type: !6)
!1787 = !DILocation(line: 547, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !80, line: 549, column: 7)
!1789 = !DILocation(line: 550, column: 5, scope: !1773)
!1790 = !DILocation(line: 549, column: 5, scope: !1592)
!1791 = !DILocation(line: 551, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 551, column: 9)
!1793 = !DILocation(line: 551, column: 25, scope: !1792)
!1794 = !DILocation(line: 551, column: 20, scope: !1792)
!1795 = !DILocation(line: 551, column: 9, scope: !1592)
!1796 = !DILocation(line: 553, column: 23, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !80, line: 553, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !80, line: 552, column: 7)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !80, line: 551, column: 37)
!1800 = !DILocation(line: 553, column: 7, scope: !1797)
!1801 = !DILocation(line: 554, column: 23, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !80, line: 555, column: 7)
!1803 = !DILocation(line: 554, column: 38, scope: !1802)
!1804 = !DILocation(line: 554, column: 33, scope: !1802)
!1805 = !DILocation(line: 554, column: 7, scope: !1802)
!1806 = !DILocation(line: 557, column: 5, scope: !1799)
!1807 = !DILocation(line: 556, column: 5, scope: !1592)
!1808 = !DILocation(line: 558, column: 13, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !80, line: 560, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1592, file: !80, line: 559, column: 5)
!1811 = !DILocation(line: 558, column: 5, scope: !1809)
!1812 = !DILocation(line: 559, column: 5, scope: !1592)
!1813 = !DILocation(line: 562, column: 5, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !80, line: 563, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1580, file: !80, line: 562, column: 5)
!1816 = !DILocation(line: 564, column: 14, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1815, file: !80, line: 564, column: 5)
!1818 = !DILocation(line: 564, column: 5, scope: !1817)
!1819 = distinct !{!1819, !1573, !1820}
!1820 = !DILocation(line: 567, column: 3, scope: !1574)
!1821 = !DILocation(line: 569, column: 3, scope: !1574)
!1822 = !DILocation(line: 567, column: 10, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !80, line: 573, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1495, file: !80, line: 572, column: 3)
!1825 = !DILocation(line: 567, column: 3, scope: !1823)
!1826 = !DILocation(line: 568, column: 3, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !80, line: 569, column: 3)
!1828 = !DILocation(line: 572, column: 1, scope: !1470)
