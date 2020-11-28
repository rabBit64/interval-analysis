; ModuleID = '/tmp/tmp.ll'
source_filename = "c/fmtools-1.0.4.1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.video_tuner = type { i32, [32 x i8], i64, i64, i32, i16, i16 }

@.str = private unnamed_addr constant [28 x i8] c"fmtools fmscan version %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1.0.2\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"usage: %s [-h] [-d <dev>] [-s <freq>] [-e <freq>] [-i <freq>] [-t <%%>]\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Auxiliary program to scan a frequency band for radio stations.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"  -h        - display this help\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"  -d <dev>  - select device (default: /dev/radio0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"  -s <freq> - set start of scanning range to <freq>\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"  -e <freq> - set end of scanning range to <freq>\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"  -i <freq> - set increment value between channels to <freq>\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"  -t <%%>    - set signal strength percentage to lock onto <%%>\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"  <freq>    - a value in the format nnn.nn (MHz)\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"+e:hi:s:d:t:\00", align 1
@optarg = external global i8*, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"/dev/radio0\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"Unable to open %s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ioctl VIDIOCGTUNER\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"Scanning range: %2.1f - %2.1f MHz (%2.1f MHz increments)...\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"ioctl VIDIOCSFREQ\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%2.1f:\0D\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"%2.1f: checking: %3.1f%% (%d/%d)    \0D\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"                                              \0D\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"%2.1f: %3.1f%%          \0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%s/.fmrc\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"VOL\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%*s %i\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"INCR\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%*s %s\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @help(i8* %prog) #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata i8* %prog, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata !7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata !7, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata !7, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata !7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata !7, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata !7, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata !7, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata !7, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata !7, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata !7, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata !7, metadata !109, metadata !DIExpression()), !dbg !110
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !111
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0), i8* %prog), !dbg !115
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0)), !dbg !117
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)), !dbg !119
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0)), !dbg !121
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0)), !dbg !123
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0)), !dbg !125
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)), !dbg !127
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0)), !dbg !129
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0)), !dbg !131
  call void @exit(i32 0) #7, !dbg !133
  unreachable, !dbg !133

return:                                           ; No predecessors!
  ret void, !dbg !135
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !136 {
entry:
  %vt = alloca %struct.video_tuner, align 8
  %freq = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8** %argv, metadata !142, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata %struct.video_tuner* %vt, metadata !143, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i64* %freq, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata !7, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata !7, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata !7, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata !7, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata !7, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata !7, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata !7, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata !7, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata !7, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata !7, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata !7, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 25, metadata !185, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8* null, metadata !186, metadata !DIExpression()), !dbg !141
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !187
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !189
  call void @llvm.dbg.value(metadata i8* %0, metadata !190, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float 0x4055F999A0000000, metadata !191, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float 0x3FC99999A0000000, metadata !192, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float 0x405AF999A0000000, metadata !193, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float 5.000000e-01, metadata !194, metadata !DIExpression()), !dbg !141
  br label %while.body, !dbg !195

while.body:                                       ; preds = %switch_break, %entry
  %incval.0 = phi float [ 0x3FC99999A0000000, %entry ], [ %incval.1, %switch_break ], !dbg !198
  %begval.0 = phi float [ 0x4055F999A0000000, %entry ], [ %begval.1, %switch_break ], !dbg !199
  %endval.0 = phi float [ 0x405AF999A0000000, %entry ], [ %endval.1, %switch_break ], !dbg !200
  %threshold.0 = phi float [ 5.000000e-01, %entry ], [ %threshold.1, %switch_break ], !dbg !201
  %dev.0 = phi i8* [ null, %entry ], [ %dev.1, %switch_break ], !dbg !202
  call void @llvm.dbg.value(metadata i8* %dev.0, metadata !186, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %threshold.0, metadata !194, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %endval.0, metadata !193, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %begval.0, metadata !191, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %incval.0, metadata !192, metadata !DIExpression()), !dbg !141
  br label %while_continue___2, !dbg !203

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !203

while_continue:                                   ; preds = %while_continue___2
  %call = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !204
  call void @llvm.dbg.value(metadata i32 %call, metadata !208, metadata !DIExpression()), !dbg !141
  %cmp = icmp ne i32 %call, -1, !dbg !209
  br i1 %cmp, label %if.end, label %if.then, !dbg !211

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !212

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 100, !dbg !214
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !217

if.then2:                                         ; preds = %if.end
  br label %case_100, !dbg !218

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 101, !dbg !220
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !222

if.then5:                                         ; preds = %if.end3
  br label %case_101, !dbg !223

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %call, 105, !dbg !225
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !227

if.then8:                                         ; preds = %if.end6
  br label %case_105, !dbg !228

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call, 115, !dbg !230
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !232

if.then11:                                        ; preds = %if.end9
  br label %case_115, !dbg !233

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call, 116, !dbg !235
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !237

if.then14:                                        ; preds = %if.end12
  br label %case_116, !dbg !238

if.end15:                                         ; preds = %if.end12
  br label %switch_default, !dbg !240

case_100:                                         ; preds = %if.then2
  %1 = load i8*, i8** @optarg, align 8, !dbg !241
  %call16 = call noalias i8* @strdup(i8* %1) #8, !dbg !244
  call void @llvm.dbg.value(metadata i8* %call16, metadata !186, metadata !DIExpression()), !dbg !141
  br label %switch_break, !dbg !245

case_101:                                         ; preds = %if.then5
  %2 = load i8*, i8** @optarg, align 8, !dbg !246
  %call17 = call double @atof(i8* %2) #9, !dbg !249
  call void @llvm.dbg.value(metadata double %call17, metadata !250, metadata !DIExpression()), !dbg !141
  %conv = fptrunc double %call17 to float, !dbg !251
  call void @llvm.dbg.value(metadata float %conv, metadata !193, metadata !DIExpression()), !dbg !141
  br label %switch_break, !dbg !252

case_105:                                         ; preds = %if.then8
  %3 = load i8*, i8** @optarg, align 8, !dbg !253
  %call18 = call double @atof(i8* %3) #9, !dbg !256
  call void @llvm.dbg.value(metadata double %call18, metadata !257, metadata !DIExpression()), !dbg !141
  %conv19 = fptrunc double %call18 to float, !dbg !258
  call void @llvm.dbg.value(metadata float %conv19, metadata !192, metadata !DIExpression()), !dbg !141
  br label %switch_break, !dbg !259

case_115:                                         ; preds = %if.then11
  %4 = load i8*, i8** @optarg, align 8, !dbg !260
  %call20 = call double @atof(i8* %4) #9, !dbg !263
  call void @llvm.dbg.value(metadata double %call20, metadata !264, metadata !DIExpression()), !dbg !141
  %conv21 = fptrunc double %call20 to float, !dbg !265
  call void @llvm.dbg.value(metadata float %conv21, metadata !191, metadata !DIExpression()), !dbg !141
  br label %switch_break, !dbg !266

case_116:                                         ; preds = %if.then14
  %5 = load i8*, i8** @optarg, align 8, !dbg !267
  %call22 = call double @atof(i8* %5) #9, !dbg !270
  call void @llvm.dbg.value(metadata double %call22, metadata !271, metadata !DIExpression()), !dbg !141
  %div = fdiv double %call22, 1.000000e+02, !dbg !272
  %conv23 = fptrunc double %div to float, !dbg !273
  call void @llvm.dbg.value(metadata float %conv23, metadata !194, metadata !DIExpression()), !dbg !141
  br label %switch_break, !dbg !274

switch_default:                                   ; preds = %if.end15
  call void @help(i8* %0), !dbg !275
  br label %switch_break, !dbg !278

switch_break:                                     ; preds = %switch_default, %case_116, %case_115, %case_105, %case_101, %case_100
  %incval.1 = phi float [ %incval.0, %case_100 ], [ %incval.0, %case_101 ], [ %conv19, %case_105 ], [ %incval.0, %case_115 ], [ %incval.0, %case_116 ], [ %incval.0, %switch_default ], !dbg !202
  %begval.1 = phi float [ %begval.0, %case_100 ], [ %begval.0, %case_101 ], [ %begval.0, %case_105 ], [ %conv21, %case_115 ], [ %begval.0, %case_116 ], [ %begval.0, %switch_default ], !dbg !202
  %endval.1 = phi float [ %endval.0, %case_100 ], [ %conv, %case_101 ], [ %endval.0, %case_105 ], [ %endval.0, %case_115 ], [ %endval.0, %case_116 ], [ %endval.0, %switch_default ], !dbg !202
  %threshold.1 = phi float [ %threshold.0, %case_100 ], [ %threshold.0, %case_101 ], [ %threshold.0, %case_105 ], [ %threshold.0, %case_115 ], [ %conv23, %case_116 ], [ %threshold.0, %switch_default ], !dbg !202
  %dev.1 = phi i8* [ %call16, %case_100 ], [ %dev.0, %case_101 ], [ %dev.0, %case_105 ], [ %dev.0, %case_115 ], [ %dev.0, %case_116 ], [ %dev.0, %switch_default ], !dbg !202
  call void @llvm.dbg.value(metadata i8* %dev.1, metadata !186, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %threshold.1, metadata !194, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %endval.1, metadata !193, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %begval.1, metadata !191, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata float %incval.1, metadata !192, metadata !DIExpression()), !dbg !141
  br label %while.body, !dbg !195, !llvm.loop !279

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !281

while_break:                                      ; preds = %while_break___2, %if.then
  %tobool = icmp ne i8* %dev.0, null, !dbg !282
  br i1 %tobool, label %if.end26, label %if.then24, !dbg !284

if.then24:                                        ; preds = %while_break
  %call25 = call noalias i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !285
  call void @llvm.dbg.value(metadata i8* %call25, metadata !186, metadata !DIExpression()), !dbg !141
  br label %if.end26, !dbg !289

if.end26:                                         ; preds = %if.then24, %while_break
  %dev.2 = phi i8* [ %dev.0, %while_break ], [ %call25, %if.then24 ], !dbg !202
  call void @llvm.dbg.value(metadata i8* %dev.2, metadata !186, metadata !DIExpression()), !dbg !141
  %call27 = call i32 (i8*, i32, ...) @open(i8* %dev.2, i32 0), !dbg !290
  call void @llvm.dbg.value(metadata i32 %call27, metadata !293, metadata !DIExpression()), !dbg !141
  %cmp28 = icmp slt i32 %call27, 0, !dbg !294
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !296

if.then30:                                        ; preds = %if.end26
  %call31 = call i32* @__errno_location() #10, !dbg !297
  call void @llvm.dbg.value(metadata i32* %call31, metadata !301, metadata !DIExpression()), !dbg !141
  %6 = load i32, i32* %call31, align 4, !dbg !303
  %call32 = call i8* @strerror(i32 %6) #8, !dbg !305
  call void @llvm.dbg.value(metadata i8* %call32, metadata !306, metadata !DIExpression()), !dbg !141
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !307
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* %dev.2, i8* %call32), !dbg !309
  call void @exit(i32 1) #7, !dbg !310
  unreachable, !dbg !310

if.end34:                                         ; preds = %if.end26
  %tuner = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %vt, i32 0, i32 0, !dbg !312
  store i32 0, i32* %tuner, align 8, !dbg !314
  %call35 = call i32 (i32, i64, ...) @ioctl(i32 %call27, i64 3225449988, %struct.video_tuner* %vt) #8, !dbg !315
  call void @llvm.dbg.value(metadata i32 %call35, metadata !317, metadata !DIExpression()), !dbg !141
  %cmp36 = icmp slt i32 %call35, 0, !dbg !318
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !320

if.then38:                                        ; preds = %if.end34
  call void @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)), !dbg !321
  call void @exit(i32 1) #7, !dbg !325
  unreachable, !dbg !325

if.end39:                                         ; preds = %if.end34
  %flags = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %vt, i32 0, i32 4, !dbg !327
  %8 = load i32, i32* %flags, align 8, !dbg !327
  %and = and i32 %8, 8, !dbg !329
  %cmp40 = icmp eq i32 %and, 0, !dbg !330
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !331

if.then42:                                        ; preds = %if.end39
  call void @llvm.dbg.value(metadata i64 16, metadata !332, metadata !DIExpression()), !dbg !141
  br label %if.end43, !dbg !333

if.else:                                          ; preds = %if.end39
  call void @llvm.dbg.value(metadata i64 16000, metadata !332, metadata !DIExpression()), !dbg !141
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then42
  %fact.0 = phi i64 [ 16, %if.then42 ], [ 16000, %if.else ], !dbg !335
  call void @llvm.dbg.value(metadata i64 %fact.0, metadata !332, metadata !DIExpression()), !dbg !141
  %mul = fmul float %begval.0, 1.000000e+01, !dbg !336
  %conv44 = fpext float %mul to double, !dbg !339
  %9 = call double @llvm.rint.f64(double %conv44), !dbg !340
  call void @llvm.dbg.value(metadata double %9, metadata !341, metadata !DIExpression()), !dbg !141
  %10 = call double @llvm.ceil.f64(double %9), !dbg !342
  call void @llvm.dbg.value(metadata double %10, metadata !344, metadata !DIExpression()), !dbg !141
  %conv45 = sitofp i64 %fact.0 to double, !dbg !345
  %div46 = fdiv double %10, 1.000000e+01, !dbg !346
  %mul47 = fmul double %conv45, %div46, !dbg !347
  %conv48 = fptosi double %mul47 to i64, !dbg !348
  call void @llvm.dbg.value(metadata i64 %conv48, metadata !349, metadata !DIExpression()), !dbg !141
  %mul49 = fmul float %endval.0, 1.000000e+01, !dbg !350
  %conv50 = fpext float %mul49 to double, !dbg !352
  %11 = call double @llvm.rint.f64(double %conv50), !dbg !353
  call void @llvm.dbg.value(metadata double %11, metadata !354, metadata !DIExpression()), !dbg !141
  %12 = call double @llvm.ceil.f64(double %11), !dbg !355
  call void @llvm.dbg.value(metadata double %12, metadata !357, metadata !DIExpression()), !dbg !141
  %conv51 = sitofp i64 %fact.0 to double, !dbg !358
  %div52 = fdiv double %12, 1.000000e+01, !dbg !359
  %mul53 = fmul double %conv51, %div52, !dbg !360
  %conv54 = fptosi double %mul53 to i64, !dbg !361
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !362, metadata !DIExpression()), !dbg !141
  %conv55 = sitofp i64 %fact.0 to float, !dbg !363
  %mul56 = fmul float %conv55, %incval.0, !dbg !364
  %conv57 = fptosi float %mul56 to i64, !dbg !365
  call void @llvm.dbg.value(metadata i64 %conv57, metadata !366, metadata !DIExpression()), !dbg !141
  %conv58 = fpext float %begval.0 to double, !dbg !367
  %conv59 = fpext float %endval.0 to double, !dbg !369
  %conv60 = fpext float %incval.0 to double, !dbg !370
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0), double %conv58, double %conv59, double %conv60), !dbg !371
  store i64 %conv48, i64* %freq, align 8, !dbg !372
  br label %while.body62, !dbg !373

while.body62:                                     ; preds = %if.end120, %if.end43
  br label %while_continue___3, !dbg !376

while_continue___3:                               ; preds = %while.body62
  br label %while_continue___0, !dbg !376

while_continue___0:                               ; preds = %while_continue___3
  %13 = load i64, i64* %freq, align 8, !dbg !377
  %cmp63 = icmp sle i64 %13, %conv54, !dbg !380
  br i1 %cmp63, label %if.end66, label %if.then65, !dbg !381

if.then65:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !382

if.end66:                                         ; preds = %while_continue___0
  %call67 = call i32 (i32, i64, ...) @ioctl(i32 %call27, i64 1074296335, i64* %freq) #8, !dbg !384
  call void @llvm.dbg.value(metadata i32 %call67, metadata !317, metadata !DIExpression()), !dbg !141
  %cmp68 = icmp slt i32 %call67, 0, !dbg !387
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !389

if.then70:                                        ; preds = %if.end66
  call void @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)), !dbg !390
  call void @exit(i32 1) #7, !dbg !394
  unreachable, !dbg !394

if.end71:                                         ; preds = %if.end66
  %14 = load i64, i64* %freq, align 8, !dbg !396
  %conv72 = sitofp i64 %14 to double, !dbg !399
  %conv73 = sitofp i64 %fact.0 to double, !dbg !400
  %div74 = fdiv double %conv72, %conv73, !dbg !401
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double %div74), !dbg !402
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !403
  %call76 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !405
  %call77 = call i32 @usleep(i32 400000), !dbg !406
  call void @llvm.dbg.value(metadata i64 0, metadata !408, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 1, metadata !208, metadata !DIExpression()), !dbg !141
  br label %while.body79, !dbg !409

while.body79:                                     ; preds = %if.end89, %if.end71
  %i.0 = phi i32 [ 1, %if.end71 ], [ %inc, %if.end89 ], !dbg !412
  %totsig.0 = phi i64 [ 0, %if.end71 ], [ %add91, %if.end89 ], !dbg !412
  call void @llvm.dbg.value(metadata i64 %totsig.0, metadata !408, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !208, metadata !DIExpression()), !dbg !141
  br label %while_continue___4, !dbg !413

while_continue___4:                               ; preds = %while.body79
  br label %while_continue___1, !dbg !413

while_continue___1:                               ; preds = %while_continue___4
  %add = add nsw i32 25, 1, !dbg !414
  %cmp80 = icmp slt i32 %i.0, %add, !dbg !417
  br i1 %cmp80, label %if.end83, label %if.then82, !dbg !418

if.then82:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !419

if.end83:                                         ; preds = %while_continue___1
  %tuner84 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %vt, i32 0, i32 0, !dbg !421
  store i32 0, i32* %tuner84, align 8, !dbg !423
  %call85 = call i32 (i32, i64, ...) @ioctl(i32 %call27, i64 3225449988, %struct.video_tuner* %vt) #8, !dbg !424
  call void @llvm.dbg.value(metadata i32 %call85, metadata !317, metadata !DIExpression()), !dbg !141
  %cmp86 = icmp slt i32 %call85, 0, !dbg !426
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !428

if.then88:                                        ; preds = %if.end83
  call void @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)), !dbg !429
  call void @exit(i32 1) #7, !dbg !433
  unreachable, !dbg !433

if.end89:                                         ; preds = %if.end83
  %signal = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %vt, i32 0, i32 6, !dbg !435
  %16 = load i16, i16* %signal, align 2, !dbg !435
  %conv90 = zext i16 %16 to i64, !dbg !437
  %add91 = add nsw i64 %totsig.0, %conv90, !dbg !438
  call void @llvm.dbg.value(metadata i64 %add91, metadata !408, metadata !DIExpression()), !dbg !141
  %conv92 = sitofp i64 %add91 to double, !dbg !439
  %conv93 = sitofp i32 %i.0 to double, !dbg !440
  %mul94 = fmul double 6.553500e+04, %conv93, !dbg !441
  %div95 = fdiv double %conv92, %mul94, !dbg !442
  %conv96 = fptrunc double %div95 to float, !dbg !443
  call void @llvm.dbg.value(metadata float %conv96, metadata !444, metadata !DIExpression()), !dbg !141
  %17 = load i64, i64* %freq, align 8, !dbg !445
  %conv97 = sitofp i64 %17 to double, !dbg !447
  %conv98 = sitofp i64 %fact.0 to double, !dbg !448
  %div99 = fdiv double %conv97, %conv98, !dbg !449
  %conv100 = fpext float %conv96 to double, !dbg !450
  %mul101 = fmul double %conv100, 1.000000e+02, !dbg !451
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), double %div99, double %mul101, i32 %i.0, i32 25), !dbg !452
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !453
  %call103 = call i32 @fflush(%struct._IO_FILE* %18), !dbg !455
  %call104 = call i32 @usleep(i32 15000), !dbg !456
  %inc = add nsw i32 %i.0, 1, !dbg !458
  call void @llvm.dbg.value(metadata i32 %inc, metadata !208, metadata !DIExpression()), !dbg !141
  br label %while.body79, !dbg !409, !llvm.loop !459

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !461

while_break___1:                                  ; preds = %while_break___4, %if.then82
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0)), !dbg !462
  %conv106 = sitofp i64 %totsig.0 to double, !dbg !465
  %conv107 = sitofp i32 25 to double, !dbg !466
  %mul108 = fmul double 6.553500e+04, %conv107, !dbg !467
  %div109 = fdiv double %conv106, %mul108, !dbg !468
  %conv110 = fptrunc double %div109 to float, !dbg !469
  call void @llvm.dbg.value(metadata float %conv110, metadata !444, metadata !DIExpression()), !dbg !141
  %cmp111 = fcmp ogt float %conv110, %threshold.0, !dbg !470
  br i1 %cmp111, label %if.then113, label %if.end120, !dbg !472

if.then113:                                       ; preds = %while_break___1
  %19 = load i64, i64* %freq, align 8, !dbg !473
  %conv114 = sitofp i64 %19 to double, !dbg !477
  %conv115 = sitofp i64 %fact.0 to double, !dbg !478
  %div116 = fdiv double %conv114, %conv115, !dbg !479
  %conv117 = fpext float %conv110 to double, !dbg !480
  %mul118 = fmul double %conv117, 1.000000e+02, !dbg !481
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), double %div116, double %mul118), !dbg !482
  br label %if.end120, !dbg !483

if.end120:                                        ; preds = %if.then113, %while_break___1
  %20 = load i64, i64* %freq, align 8, !dbg !484
  %add121 = add nsw i64 %20, %conv57, !dbg !484
  store i64 %add121, i64* %freq, align 8, !dbg !484
  br label %while.body62, !dbg !373, !llvm.loop !485

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !487

while_break___0:                                  ; preds = %while_break___3, %if.then65
  %call122 = call i32 @close(i32 %call27), !dbg !488
  ret i32 0, !dbg !491
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare void @perror(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @usleep(i32) #2

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @getconfig(i32* %defaultvol, i32* %increment, i8* %wait_time) #0 !dbg !492 {
entry:
  %buf = alloca [256 x i8], align 16
  %fn = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32* %defaultvol, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32* %increment, metadata !498, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %wait_time, metadata !499, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata [256 x i8]* %fn, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata !7, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata !7, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata !7, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata !7, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata !7, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata !7, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata !7, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata !7, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata !7, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata !7, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata !7, metadata !527, metadata !DIExpression()), !dbg !528
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !529
  call void @llvm.dbg.value(metadata i8* %call, metadata !533, metadata !DIExpression()), !dbg !497
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %fn, i32 0, i32 0, !dbg !534
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %call) #8, !dbg !536
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %fn, i32 0, i32 0, !dbg !537
  %call3 = call %struct._IO_FILE* @fopen(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !539
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call3, metadata !540, metadata !DIExpression()), !dbg !497
  %tobool = icmp ne %struct._IO_FILE* %call3, null, !dbg !541
  br i1 %tobool, label %if.end, label %if.then, !dbg !543

if.then:                                          ; preds = %entry
  br label %return, !dbg !544

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !546

while.body:                                       ; preds = %if.end31, %if.end
  br label %while_continue___0, !dbg !549

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !549

while_continue:                                   ; preds = %while_continue___0
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !550
  %call5 = call i8* @fgets(i8* %arraydecay4, i32 256, %struct._IO_FILE* %call3), !dbg !554
  call void @llvm.dbg.value(metadata i8* %call5, metadata !555, metadata !DIExpression()), !dbg !497
  %tobool6 = icmp ne i8* %call5, null, !dbg !556
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !558

if.then7:                                         ; preds = %while_continue
  br label %while_break, !dbg !559

if.end8:                                          ; preds = %while_continue
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !561
  %call10 = call i32 @strlen(i8* %arraydecay9) #9, !dbg !564
  call void @llvm.dbg.value(metadata i32 %call10, metadata !565, metadata !DIExpression()), !dbg !497
  %sub = sub i32 %call10, 1, !dbg !566
  %idxprom = zext i32 %sub to i64, !dbg !567
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 %idxprom, !dbg !567
  store i8 0, i8* %arrayidx, align 1, !dbg !568
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !569
  %call12 = call i32 @strncmp(i8* %arraydecay11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 3) #9, !dbg !571
  call void @llvm.dbg.value(metadata i32 %call12, metadata !572, metadata !DIExpression()), !dbg !497
  %tobool13 = icmp ne i32 %call12, 0, !dbg !573
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !575

if.then14:                                        ; preds = %if.end8
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !576
  %call16 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %arraydecay15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32* %defaultvol) #8, !dbg !580
  br label %if.end17, !dbg !581

if.end17:                                         ; preds = %if.then14, %if.end8
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !582
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 3) #9, !dbg !585
  call void @llvm.dbg.value(metadata i32 %call19, metadata !586, metadata !DIExpression()), !dbg !497
  %tobool20 = icmp ne i32 %call19, 0, !dbg !587
  br i1 %tobool20, label %if.end24, label %if.then21, !dbg !589

if.then21:                                        ; preds = %if.end17
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !590
  %call23 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %arraydecay22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32* %increment) #8, !dbg !594
  br label %if.end24, !dbg !595

if.end24:                                         ; preds = %if.then21, %if.end17
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !596
  %call26 = call i32 @strncmp(i8* %arraydecay25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 4) #9, !dbg !599
  call void @llvm.dbg.value(metadata i32 %call26, metadata !600, metadata !DIExpression()), !dbg !497
  %tobool27 = icmp ne i32 %call26, 0, !dbg !601
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !603

if.then28:                                        ; preds = %if.end24
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0, !dbg !604
  %call30 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %arraydecay29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %wait_time) #8, !dbg !608
  br label %if.end31, !dbg !609

if.end31:                                         ; preds = %if.then28, %if.end24
  br label %while.body, !dbg !546, !llvm.loop !610

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !612

while_break:                                      ; preds = %while_break___0, %if.then7
  %call32 = call i32 @fclose(%struct._IO_FILE* %call3), !dbg !613
  br label %return, !dbg !616

return:                                           ; preds = %while_break, %if.then
  ret void, !dbg !617
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #5

; Function Attrs: nounwind
declare i32 @"\01__isoc99_sscanf"(i8*, i8*, ...) #4

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!82}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, nameTableKind: GNU)
!6 = !DIFile(filename: "c/fmtools-1.0.4.1.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{}
!8 = !{!9, !12, !13, !14, !15, !17, !79, !73, !80, !50, !81, !24, !11, !71}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 271, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!22 = !{!23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !44, !45, !46, !47, !51, !53, !55, !59, !62, !66, !67, !68, !69, !70, !74, !75}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 272, baseType: !24, size: 32)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 273, baseType: !12, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 274, baseType: !12, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 275, baseType: !12, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 276, baseType: !12, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 277, baseType: !12, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 278, baseType: !12, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 279, baseType: !12, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 280, baseType: !12, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 281, baseType: !12, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 282, baseType: !12, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 283, baseType: !12, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 284, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 186, size: 192, elements: !39)
!39 = !{!40, !41, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !38, file: !21, line: 187, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !38, file: !21, line: 188, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !38, file: !21, line: 189, baseType: !24, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 285, baseType: !42, size: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 286, baseType: !24, size: 32, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 287, baseType: !24, size: 32, offset: 928)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 288, baseType: !48, size: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 141, baseType: !50)
!49 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 289, baseType: !52, size: 16, offset: 1024)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 290, baseType: !54, size: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 291, baseType: !56, size: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 292, baseType: !60, size: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 180, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 293, baseType: !63, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 142, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !49, line: 56, baseType: !65)
!65 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !20, file: !21, line: 294, baseType: !13, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !20, file: !21, line: 295, baseType: !13, size: 64, offset: 1280)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !20, file: !21, line: 296, baseType: !13, size: 64, offset: 1344)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !20, file: !21, line: 297, baseType: !13, size: 64, offset: 1408)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 298, baseType: !71, size: 32, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 211, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 299, baseType: !24, size: 32, offset: 1504)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 300, baseType: !76, size: 192, offset: 1536)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 24)
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !49, line: 150, baseType: !73)
!82 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!83 = distinct !DISubprogram(name: "help", scope: !84, file: !84, line: 37, type: !85, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!84 = !DIFile(filename: "/home/wslee/benchmarks/sound/fmtools-1.0.4.1/fmscan.c", directory: "")
!85 = !DISubroutineType(types: !86)
!86 = !{null, !12}
!87 = !DILocalVariable(name: "prog", arg: 1, scope: !83, file: !84, line: 37, type: !12)
!88 = !DILocation(line: 0, scope: !83)
!89 = !DILocalVariable(name: "__cil_tmp2", scope: !83, file: !84, line: 39, type: !12)
!90 = !DILocation(line: 39, column: 9, scope: !83)
!91 = !DILocalVariable(name: "__cil_tmp3", scope: !83, file: !84, line: 40, type: !12)
!92 = !DILocation(line: 40, column: 9, scope: !83)
!93 = !DILocalVariable(name: "__cil_tmp4", scope: !83, file: !84, line: 41, type: !12)
!94 = !DILocation(line: 41, column: 9, scope: !83)
!95 = !DILocalVariable(name: "__cil_tmp5", scope: !83, file: !84, line: 42, type: !12)
!96 = !DILocation(line: 42, column: 9, scope: !83)
!97 = !DILocalVariable(name: "__cil_tmp6", scope: !83, file: !84, line: 43, type: !12)
!98 = !DILocation(line: 43, column: 9, scope: !83)
!99 = !DILocalVariable(name: "__cil_tmp7", scope: !83, file: !84, line: 44, type: !12)
!100 = !DILocation(line: 44, column: 9, scope: !83)
!101 = !DILocalVariable(name: "__cil_tmp8", scope: !83, file: !84, line: 45, type: !12)
!102 = !DILocation(line: 45, column: 9, scope: !83)
!103 = !DILocalVariable(name: "__cil_tmp9", scope: !83, file: !84, line: 46, type: !12)
!104 = !DILocation(line: 46, column: 9, scope: !83)
!105 = !DILocalVariable(name: "__cil_tmp10", scope: !83, file: !84, line: 47, type: !12)
!106 = !DILocation(line: 47, column: 9, scope: !83)
!107 = !DILocalVariable(name: "__cil_tmp11", scope: !83, file: !84, line: 48, type: !12)
!108 = !DILocation(line: 48, column: 9, scope: !83)
!109 = !DILocalVariable(name: "__cil_tmp12", scope: !83, file: !84, line: 49, type: !12)
!110 = !DILocation(line: 49, column: 9, scope: !83)
!111 = !DILocation(line: 39, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !84, line: 53, column: 3)
!113 = distinct !DILexicalBlock(scope: !114, file: !84, line: 52, column: 3)
!114 = distinct !DILexicalBlock(scope: !83, file: !84, line: 51, column: 3)
!115 = !DILocation(line: 40, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !84, line: 41, column: 3)
!117 = !DILocation(line: 42, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !84, line: 43, column: 3)
!119 = !DILocation(line: 44, column: 3, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !84, line: 44, column: 3)
!121 = !DILocation(line: 45, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !84, line: 46, column: 3)
!123 = !DILocation(line: 46, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !113, file: !84, line: 47, column: 3)
!125 = !DILocation(line: 47, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !84, line: 48, column: 3)
!127 = !DILocation(line: 48, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !113, file: !84, line: 49, column: 3)
!129 = !DILocation(line: 49, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !113, file: !84, line: 50, column: 3)
!131 = !DILocation(line: 50, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !84, line: 51, column: 3)
!133 = !DILocation(line: 52, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !113, file: !84, line: 52, column: 3)
!135 = !DILocation(line: 56, column: 1, scope: !83)
!136 = distinct !DISubprogram(name: "main", scope: !84, file: !84, line: 55, type: !137, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!137 = !DISubroutineType(types: !138)
!138 = !{!24, !24, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!140 = !DILocalVariable(name: "argc", arg: 1, scope: !136, file: !84, line: 55, type: !24)
!141 = !DILocation(line: 0, scope: !136)
!142 = !DILocalVariable(name: "argv", arg: 2, scope: !136, file: !84, line: 55, type: !139)
!143 = !DILocalVariable(name: "vt", scope: !136, file: !84, line: 61, type: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_tuner", file: !145, line: 53, size: 512, elements: !146)
!145 = !DIFile(filename: "/home/wslee/benchmarks/sound/fmtools-1.0.4.1/videodev.h", directory: "")
!146 = !{!147, !148, !152, !153, !154, !157, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !144, file: !145, line: 54, baseType: !24, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !145, line: 55, baseType: !149, size: 256, offset: 32)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !144, file: !145, line: 56, baseType: !79, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !144, file: !145, line: 57, baseType: !79, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !145, line: 58, baseType: !155, size: 32, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 52, baseType: !73)
!156 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !144, file: !145, line: 59, baseType: !158, size: 16, offset: 480)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 50, baseType: !52)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !144, file: !145, line: 60, baseType: !158, size: 16, offset: 496)
!160 = !DILocation(line: 61, column: 22, scope: !136)
!161 = !DILocalVariable(name: "freq", scope: !136, file: !84, line: 69, type: !50)
!162 = !DILocation(line: 69, column: 8, scope: !136)
!163 = !DILocalVariable(name: "__cil_tmp31", scope: !136, file: !84, line: 85, type: !12)
!164 = !DILocation(line: 85, column: 9, scope: !136)
!165 = !DILocalVariable(name: "__cil_tmp32", scope: !136, file: !84, line: 86, type: !12)
!166 = !DILocation(line: 86, column: 9, scope: !136)
!167 = !DILocalVariable(name: "__cil_tmp33", scope: !136, file: !84, line: 87, type: !12)
!168 = !DILocation(line: 87, column: 9, scope: !136)
!169 = !DILocalVariable(name: "__cil_tmp34", scope: !136, file: !84, line: 88, type: !12)
!170 = !DILocation(line: 88, column: 9, scope: !136)
!171 = !DILocalVariable(name: "__cil_tmp35", scope: !136, file: !84, line: 89, type: !12)
!172 = !DILocation(line: 89, column: 9, scope: !136)
!173 = !DILocalVariable(name: "__cil_tmp36", scope: !136, file: !84, line: 90, type: !12)
!174 = !DILocation(line: 90, column: 9, scope: !136)
!175 = !DILocalVariable(name: "__cil_tmp37", scope: !136, file: !84, line: 91, type: !12)
!176 = !DILocation(line: 91, column: 9, scope: !136)
!177 = !DILocalVariable(name: "__cil_tmp38", scope: !136, file: !84, line: 92, type: !12)
!178 = !DILocation(line: 92, column: 9, scope: !136)
!179 = !DILocalVariable(name: "__cil_tmp39", scope: !136, file: !84, line: 93, type: !12)
!180 = !DILocation(line: 93, column: 9, scope: !136)
!181 = !DILocalVariable(name: "__cil_tmp40", scope: !136, file: !84, line: 94, type: !12)
!182 = !DILocation(line: 94, column: 9, scope: !136)
!183 = !DILocalVariable(name: "__cil_tmp41", scope: !136, file: !84, line: 95, type: !12)
!184 = !DILocation(line: 95, column: 9, scope: !136)
!185 = !DILocalVariable(name: "tries", scope: !136, file: !84, line: 60, type: !24)
!186 = !DILocalVariable(name: "dev", scope: !136, file: !84, line: 74, type: !12)
!187 = !DILocation(line: 63, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !136, file: !84, line: 97, column: 3)
!189 = !DILocation(line: 63, column: 14, scope: !188)
!190 = !DILocalVariable(name: "progname", scope: !136, file: !84, line: 73, type: !12)
!191 = !DILocalVariable(name: "begval", scope: !136, file: !84, line: 63, type: !14)
!192 = !DILocalVariable(name: "incval", scope: !136, file: !84, line: 64, type: !14)
!193 = !DILocalVariable(name: "endval", scope: !136, file: !84, line: 65, type: !14)
!194 = !DILocalVariable(name: "threshold", scope: !136, file: !84, line: 66, type: !14)
!195 = !DILocation(line: 72, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !84, line: 72, column: 3)
!197 = distinct !DILexicalBlock(scope: !188, file: !84, line: 71, column: 3)
!198 = !DILocation(line: 67, column: 10, scope: !188)
!199 = !DILocation(line: 66, column: 10, scope: !188)
!200 = !DILocation(line: 68, column: 10, scope: !188)
!201 = !DILocation(line: 70, column: 13, scope: !188)
!202 = !DILocation(line: 0, scope: !188)
!203 = !DILocation(line: 72, column: 13, scope: !196)
!204 = !DILocation(line: 72, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !84, line: 76, column: 5)
!206 = distinct !DILexicalBlock(scope: !207, file: !84, line: 75, column: 5)
!207 = distinct !DILexicalBlock(scope: !196, file: !84, line: 72, column: 13)
!208 = !DILocalVariable(name: "i", scope: !136, file: !84, line: 59, type: !24)
!209 = !DILocation(line: 72, column: 14, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !84, line: 72, column: 9)
!211 = !DILocation(line: 72, column: 9, scope: !207)
!212 = !DILocation(line: 72, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !84, line: 72, column: 22)
!214 = !DILocation(line: 74, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !84, line: 74, column: 9)
!216 = distinct !DILexicalBlock(scope: !207, file: !84, line: 74, column: 5)
!217 = !DILocation(line: 74, column: 9, scope: !216)
!218 = !DILocation(line: 74, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !84, line: 74, column: 19)
!220 = !DILocation(line: 77, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !84, line: 77, column: 9)
!222 = !DILocation(line: 77, column: 9, scope: !216)
!223 = !DILocation(line: 77, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !84, line: 77, column: 19)
!225 = !DILocation(line: 80, column: 11, scope: !226)
!226 = distinct !DILexicalBlock(scope: !216, file: !84, line: 80, column: 9)
!227 = !DILocation(line: 80, column: 9, scope: !216)
!228 = !DILocation(line: 80, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !84, line: 80, column: 19)
!230 = !DILocation(line: 83, column: 11, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !84, line: 83, column: 9)
!232 = !DILocation(line: 83, column: 9, scope: !216)
!233 = !DILocation(line: 83, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !84, line: 83, column: 19)
!235 = !DILocation(line: 86, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !216, file: !84, line: 86, column: 9)
!237 = !DILocation(line: 86, column: 9, scope: !216)
!238 = !DILocation(line: 86, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !84, line: 86, column: 19)
!240 = !DILocation(line: 90, column: 5, scope: !216)
!241 = !DILocation(line: 75, column: 34, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !84, line: 93, column: 5)
!243 = distinct !DILexicalBlock(scope: !216, file: !84, line: 92, column: 5)
!244 = !DILocation(line: 75, column: 11, scope: !242)
!245 = !DILocation(line: 76, column: 5, scope: !216)
!246 = !DILocation(line: 78, column: 32, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !84, line: 79, column: 5)
!248 = distinct !DILexicalBlock(scope: !216, file: !84, line: 78, column: 5)
!249 = !DILocation(line: 78, column: 11, scope: !247)
!250 = !DILocalVariable(name: "tmp", scope: !136, file: !84, line: 75, type: !80)
!251 = !DILocation(line: 78, column: 14, scope: !248)
!252 = !DILocation(line: 79, column: 5, scope: !216)
!253 = !DILocation(line: 81, column: 36, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !84, line: 82, column: 5)
!255 = distinct !DILexicalBlock(scope: !216, file: !84, line: 81, column: 5)
!256 = !DILocation(line: 81, column: 15, scope: !254)
!257 = !DILocalVariable(name: "tmp___0", scope: !136, file: !84, line: 76, type: !80)
!258 = !DILocation(line: 81, column: 14, scope: !255)
!259 = !DILocation(line: 82, column: 5, scope: !216)
!260 = !DILocation(line: 84, column: 36, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !84, line: 85, column: 5)
!262 = distinct !DILexicalBlock(scope: !216, file: !84, line: 84, column: 5)
!263 = !DILocation(line: 84, column: 15, scope: !261)
!264 = !DILocalVariable(name: "tmp___1", scope: !136, file: !84, line: 77, type: !80)
!265 = !DILocation(line: 84, column: 14, scope: !262)
!266 = !DILocation(line: 85, column: 5, scope: !216)
!267 = !DILocation(line: 87, column: 36, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !84, line: 88, column: 5)
!269 = distinct !DILexicalBlock(scope: !216, file: !84, line: 87, column: 5)
!270 = !DILocation(line: 87, column: 15, scope: !268)
!271 = !DILocalVariable(name: "tmp___2", scope: !136, file: !84, line: 78, type: !80)
!272 = !DILocation(line: 87, column: 34, scope: !269)
!273 = !DILocation(line: 87, column: 17, scope: !269)
!274 = !DILocation(line: 88, column: 5, scope: !216)
!275 = !DILocation(line: 91, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !84, line: 91, column: 5)
!277 = distinct !DILexicalBlock(scope: !216, file: !84, line: 90, column: 5)
!278 = !DILocation(line: 92, column: 5, scope: !216)
!279 = distinct !{!279, !195, !280}
!280 = !DILocation(line: 95, column: 3, scope: !196)
!281 = !DILocation(line: 97, column: 3, scope: !196)
!282 = !DILocation(line: 96, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !188, file: !84, line: 96, column: 7)
!284 = !DILocation(line: 96, column: 7, scope: !188)
!285 = !DILocation(line: 97, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !84, line: 98, column: 5)
!287 = distinct !DILexicalBlock(scope: !288, file: !84, line: 97, column: 5)
!288 = distinct !DILexicalBlock(scope: !283, file: !84, line: 96, column: 14)
!289 = !DILocation(line: 100, column: 3, scope: !288)
!290 = !DILocation(line: 99, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !84, line: 102, column: 3)
!292 = distinct !DILexicalBlock(scope: !188, file: !84, line: 101, column: 3)
!293 = !DILocalVariable(name: "fd", scope: !136, file: !84, line: 57, type: !24)
!294 = !DILocation(line: 100, column: 10, scope: !295)
!295 = distinct !DILexicalBlock(scope: !188, file: !84, line: 100, column: 7)
!296 = !DILocation(line: 100, column: 7, scope: !188)
!297 = !DILocation(line: 101, column: 15, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !84, line: 102, column: 5)
!299 = distinct !DILexicalBlock(scope: !300, file: !84, line: 101, column: 5)
!300 = distinct !DILexicalBlock(scope: !295, file: !84, line: 100, column: 15)
!301 = !DILocalVariable(name: "tmp___3", scope: !136, file: !84, line: 79, type: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!303 = !DILocation(line: 101, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !84, line: 103, column: 5)
!305 = !DILocation(line: 101, column: 15, scope: !304)
!306 = !DILocalVariable(name: "tmp___4", scope: !136, file: !84, line: 80, type: !12)
!307 = !DILocation(line: 101, column: 38, scope: !308)
!308 = distinct !DILexicalBlock(scope: !299, file: !84, line: 103, column: 5)
!309 = !DILocation(line: 101, column: 5, scope: !308)
!310 = !DILocation(line: 102, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !299, file: !84, line: 104, column: 5)
!312 = !DILocation(line: 105, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !188, file: !84, line: 106, column: 3)
!314 = !DILocation(line: 105, column: 12, scope: !313)
!315 = !DILocation(line: 106, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !84, line: 106, column: 3)
!317 = !DILocalVariable(name: "ret", scope: !136, file: !84, line: 58, type: !24)
!318 = !DILocation(line: 107, column: 11, scope: !319)
!319 = distinct !DILexicalBlock(scope: !188, file: !84, line: 107, column: 7)
!320 = !DILocation(line: 107, column: 7, scope: !188)
!321 = !DILocation(line: 108, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !84, line: 109, column: 5)
!323 = distinct !DILexicalBlock(scope: !324, file: !84, line: 108, column: 5)
!324 = distinct !DILexicalBlock(scope: !319, file: !84, line: 107, column: 16)
!325 = !DILocation(line: 109, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !84, line: 110, column: 5)
!327 = !DILocation(line: 112, column: 11, scope: !328)
!328 = distinct !DILexicalBlock(scope: !188, file: !84, line: 112, column: 7)
!329 = !DILocation(line: 112, column: 17, scope: !328)
!330 = !DILocation(line: 112, column: 23, scope: !328)
!331 = !DILocation(line: 112, column: 7, scope: !188)
!332 = !DILocalVariable(name: "fact", scope: !136, file: !84, line: 72, type: !50)
!333 = !DILocation(line: 114, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !84, line: 112, column: 30)
!335 = !DILocation(line: 0, scope: !328)
!336 = !DILocation(line: 118, column: 35, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !84, line: 118, column: 3)
!338 = distinct !DILexicalBlock(scope: !188, file: !84, line: 117, column: 3)
!339 = !DILocation(line: 118, column: 18, scope: !337)
!340 = !DILocation(line: 118, column: 13, scope: !337)
!341 = !DILocalVariable(name: "tmp___5", scope: !136, file: !84, line: 81, type: !80)
!342 = !DILocation(line: 118, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !84, line: 120, column: 3)
!344 = !DILocalVariable(name: "tmp___6", scope: !136, file: !84, line: 82, type: !80)
!345 = !DILocation(line: 118, column: 18, scope: !338)
!346 = !DILocation(line: 118, column: 43, scope: !338)
!347 = !DILocation(line: 118, column: 32, scope: !338)
!348 = !DILocation(line: 118, column: 10, scope: !338)
!349 = !DILocalVariable(name: "lowf", scope: !136, file: !84, line: 67, type: !50)
!350 = !DILocation(line: 119, column: 35, scope: !351)
!351 = distinct !DILexicalBlock(scope: !338, file: !84, line: 119, column: 3)
!352 = !DILocation(line: 119, column: 18, scope: !351)
!353 = !DILocation(line: 119, column: 13, scope: !351)
!354 = !DILocalVariable(name: "tmp___7", scope: !136, file: !84, line: 83, type: !80)
!355 = !DILocation(line: 119, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !338, file: !84, line: 121, column: 3)
!357 = !DILocalVariable(name: "tmp___8", scope: !136, file: !84, line: 84, type: !80)
!358 = !DILocation(line: 119, column: 19, scope: !338)
!359 = !DILocation(line: 119, column: 44, scope: !338)
!360 = !DILocation(line: 119, column: 33, scope: !338)
!361 = !DILocation(line: 119, column: 11, scope: !338)
!362 = !DILocalVariable(name: "highf", scope: !136, file: !84, line: 68, type: !50)
!363 = !DILocation(line: 121, column: 18, scope: !338)
!364 = !DILocation(line: 121, column: 31, scope: !338)
!365 = !DILocation(line: 121, column: 10, scope: !338)
!366 = !DILocalVariable(name: "incr", scope: !136, file: !84, line: 71, type: !50)
!367 = !DILocation(line: 124, column: 10, scope: !368)
!368 = distinct !DILexicalBlock(scope: !338, file: !84, line: 122, column: 3)
!369 = !DILocation(line: 124, column: 27, scope: !368)
!370 = !DILocation(line: 124, column: 44, scope: !368)
!371 = !DILocation(line: 123, column: 3, scope: !368)
!372 = !DILocation(line: 126, column: 8, scope: !338)
!373 = !DILocation(line: 126, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !84, line: 129, column: 3)
!375 = distinct !DILexicalBlock(scope: !188, file: !84, line: 128, column: 3)
!376 = !DILocation(line: 126, column: 13, scope: !374)
!377 = !DILocation(line: 126, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !84, line: 126, column: 9)
!379 = distinct !DILexicalBlock(scope: !374, file: !84, line: 126, column: 13)
!380 = !DILocation(line: 126, column: 17, scope: !378)
!381 = !DILocation(line: 126, column: 9, scope: !379)
!382 = !DILocation(line: 126, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !84, line: 126, column: 28)
!384 = !DILocation(line: 127, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !84, line: 129, column: 5)
!386 = distinct !DILexicalBlock(scope: !379, file: !84, line: 128, column: 5)
!387 = !DILocation(line: 129, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !379, file: !84, line: 129, column: 9)
!389 = !DILocation(line: 129, column: 9, scope: !379)
!390 = !DILocation(line: 130, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !84, line: 131, column: 7)
!392 = distinct !DILexicalBlock(scope: !393, file: !84, line: 130, column: 7)
!393 = distinct !DILexicalBlock(scope: !388, file: !84, line: 129, column: 18)
!394 = !DILocation(line: 131, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !84, line: 132, column: 7)
!396 = !DILocation(line: 134, column: 66, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !84, line: 136, column: 5)
!398 = distinct !DILexicalBlock(scope: !379, file: !84, line: 135, column: 5)
!399 = !DILocation(line: 134, column: 57, scope: !397)
!400 = !DILocation(line: 134, column: 73, scope: !397)
!401 = !DILocation(line: 134, column: 71, scope: !397)
!402 = !DILocation(line: 134, column: 5, scope: !397)
!403 = !DILocation(line: 135, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !84, line: 136, column: 5)
!405 = !DILocation(line: 135, column: 5, scope: !404)
!406 = !DILocation(line: 136, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !398, file: !84, line: 137, column: 5)
!408 = !DILocalVariable(name: "totsig", scope: !136, file: !84, line: 70, type: !50)
!409 = !DILocation(line: 139, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !84, line: 142, column: 5)
!411 = distinct !DILexicalBlock(scope: !379, file: !84, line: 141, column: 5)
!412 = !DILocation(line: 0, scope: !379)
!413 = !DILocation(line: 139, column: 15, scope: !410)
!414 = !DILocation(line: 139, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !84, line: 139, column: 11)
!416 = distinct !DILexicalBlock(scope: !410, file: !84, line: 139, column: 15)
!417 = !DILocation(line: 139, column: 16, scope: !415)
!418 = !DILocation(line: 139, column: 11, scope: !416)
!419 = !DILocation(line: 139, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !84, line: 139, column: 30)
!421 = !DILocation(line: 140, column: 10, scope: !422)
!422 = distinct !DILexicalBlock(scope: !416, file: !84, line: 141, column: 7)
!423 = !DILocation(line: 140, column: 16, scope: !422)
!424 = !DILocation(line: 141, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !84, line: 141, column: 7)
!426 = !DILocation(line: 142, column: 15, scope: !427)
!427 = distinct !DILexicalBlock(scope: !416, file: !84, line: 142, column: 11)
!428 = !DILocation(line: 142, column: 11, scope: !416)
!429 = !DILocation(line: 143, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !84, line: 144, column: 9)
!431 = distinct !DILexicalBlock(scope: !432, file: !84, line: 143, column: 9)
!432 = distinct !DILexicalBlock(scope: !427, file: !84, line: 142, column: 20)
!433 = !DILocation(line: 144, column: 9, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !84, line: 145, column: 9)
!435 = !DILocation(line: 147, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !416, file: !84, line: 148, column: 7)
!437 = !DILocation(line: 147, column: 17, scope: !436)
!438 = !DILocation(line: 147, column: 14, scope: !436)
!439 = !DILocation(line: 148, column: 23, scope: !436)
!440 = !DILocation(line: 148, column: 52, scope: !436)
!441 = !DILocation(line: 148, column: 50, scope: !436)
!442 = !DILocation(line: 148, column: 39, scope: !436)
!443 = !DILocation(line: 148, column: 14, scope: !436)
!444 = !DILocalVariable(name: "perc", scope: !136, file: !84, line: 62, type: !14)
!445 = !DILocation(line: 151, column: 23, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !84, line: 149, column: 7)
!447 = !DILocation(line: 151, column: 14, scope: !446)
!448 = !DILocation(line: 151, column: 30, scope: !446)
!449 = !DILocation(line: 151, column: 28, scope: !446)
!450 = !DILocation(line: 151, column: 45, scope: !446)
!451 = !DILocation(line: 151, column: 59, scope: !446)
!452 = !DILocation(line: 150, column: 7, scope: !446)
!453 = !DILocation(line: 152, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !436, file: !84, line: 153, column: 7)
!455 = !DILocation(line: 152, column: 7, scope: !454)
!456 = !DILocation(line: 153, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !436, file: !84, line: 154, column: 7)
!458 = !DILocation(line: 139, column: 9, scope: !436)
!459 = distinct !{!459, !409, !460}
!460 = !DILocation(line: 141, column: 5, scope: !410)
!461 = !DILocation(line: 143, column: 5, scope: !410)
!462 = !DILocation(line: 157, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !84, line: 147, column: 5)
!464 = distinct !DILexicalBlock(scope: !379, file: !84, line: 146, column: 5)
!465 = !DILocation(line: 159, column: 21, scope: !464)
!466 = !DILocation(line: 159, column: 50, scope: !464)
!467 = !DILocation(line: 159, column: 48, scope: !464)
!468 = !DILocation(line: 159, column: 37, scope: !464)
!469 = !DILocation(line: 159, column: 12, scope: !464)
!470 = !DILocation(line: 161, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !379, file: !84, line: 161, column: 9)
!472 = !DILocation(line: 161, column: 9, scope: !379)
!473 = !DILocation(line: 162, column: 86, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !84, line: 163, column: 7)
!475 = distinct !DILexicalBlock(scope: !476, file: !84, line: 162, column: 7)
!476 = distinct !DILexicalBlock(scope: !471, file: !84, line: 161, column: 27)
!477 = !DILocation(line: 162, column: 77, scope: !474)
!478 = !DILocation(line: 162, column: 93, scope: !474)
!479 = !DILocation(line: 162, column: 91, scope: !474)
!480 = !DILocation(line: 163, column: 14, scope: !474)
!481 = !DILocation(line: 163, column: 28, scope: !474)
!482 = !DILocation(line: 162, column: 7, scope: !474)
!483 = !DILocation(line: 166, column: 5, scope: !476)
!484 = !DILocation(line: 126, column: 10, scope: !379)
!485 = distinct !{!485, !373, !486}
!486 = !DILocation(line: 127, column: 3, scope: !374)
!487 = !DILocation(line: 129, column: 3, scope: !374)
!488 = !DILocation(line: 166, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !84, line: 133, column: 3)
!490 = distinct !DILexicalBlock(scope: !188, file: !84, line: 132, column: 3)
!491 = !DILocation(line: 167, column: 3, scope: !188)
!492 = distinct !DISubprogram(name: "getconfig", scope: !493, file: !493, line: 177, type: !494, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!493 = !DIFile(filename: "/home/wslee/benchmarks/sound/fmtools-1.0.4.1/fm.c", directory: "")
!494 = !DISubroutineType(types: !495)
!495 = !{null, !302, !302, !12}
!496 = !DILocalVariable(name: "defaultvol", arg: 1, scope: !492, file: !493, line: 177, type: !302)
!497 = !DILocation(line: 0, scope: !492)
!498 = !DILocalVariable(name: "increment", arg: 2, scope: !492, file: !493, line: 177, type: !302)
!499 = !DILocalVariable(name: "wait_time", arg: 3, scope: !492, file: !493, line: 177, type: !12)
!500 = !DILocalVariable(name: "buf", scope: !492, file: !493, line: 180, type: !501)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 256)
!504 = !DILocation(line: 180, column: 8, scope: !492)
!505 = !DILocalVariable(name: "fn", scope: !492, file: !493, line: 181, type: !501)
!506 = !DILocation(line: 181, column: 8, scope: !492)
!507 = !DILocalVariable(name: "__cil_tmp13", scope: !492, file: !493, line: 188, type: !13)
!508 = !DILocation(line: 188, column: 9, scope: !492)
!509 = !DILocalVariable(name: "__cil_tmp14", scope: !492, file: !493, line: 189, type: !13)
!510 = !DILocation(line: 189, column: 9, scope: !492)
!511 = !DILocalVariable(name: "__cil_tmp15", scope: !492, file: !493, line: 190, type: !12)
!512 = !DILocation(line: 190, column: 9, scope: !492)
!513 = !DILocalVariable(name: "__cil_tmp16", scope: !492, file: !493, line: 191, type: !12)
!514 = !DILocation(line: 191, column: 9, scope: !492)
!515 = !DILocalVariable(name: "__cil_tmp17", scope: !492, file: !493, line: 192, type: !12)
!516 = !DILocation(line: 192, column: 9, scope: !492)
!517 = !DILocalVariable(name: "__cil_tmp18", scope: !492, file: !493, line: 193, type: !12)
!518 = !DILocation(line: 193, column: 9, scope: !492)
!519 = !DILocalVariable(name: "__cil_tmp19", scope: !492, file: !493, line: 194, type: !12)
!520 = !DILocation(line: 194, column: 9, scope: !492)
!521 = !DILocalVariable(name: "__cil_tmp20", scope: !492, file: !493, line: 195, type: !12)
!522 = !DILocation(line: 195, column: 9, scope: !492)
!523 = !DILocalVariable(name: "__cil_tmp21", scope: !492, file: !493, line: 196, type: !12)
!524 = !DILocation(line: 196, column: 9, scope: !492)
!525 = !DILocalVariable(name: "__cil_tmp22", scope: !492, file: !493, line: 197, type: !12)
!526 = !DILocation(line: 197, column: 9, scope: !492)
!527 = !DILocalVariable(name: "__cil_tmp23", scope: !492, file: !493, line: 198, type: !12)
!528 = !DILocation(line: 198, column: 9, scope: !492)
!529 = !DILocation(line: 182, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !493, line: 202, column: 3)
!531 = distinct !DILexicalBlock(scope: !532, file: !493, line: 201, column: 3)
!532 = distinct !DILexicalBlock(scope: !492, file: !493, line: 200, column: 3)
!533 = !DILocalVariable(name: "tmp", scope: !492, file: !493, line: 182, type: !12)
!534 = !DILocation(line: 182, column: 36, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !493, line: 184, column: 3)
!536 = !DILocation(line: 182, column: 3, scope: !535)
!537 = !DILocation(line: 183, column: 49, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !493, line: 185, column: 3)
!539 = !DILocation(line: 183, column: 10, scope: !538)
!540 = !DILocalVariable(name: "conf", scope: !492, file: !493, line: 179, type: !17)
!541 = !DILocation(line: 185, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !532, file: !493, line: 185, column: 7)
!543 = !DILocation(line: 185, column: 7, scope: !532)
!544 = !DILocation(line: 186, column: 5, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !493, line: 185, column: 15)
!546 = !DILocation(line: 188, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !493, line: 189, column: 3)
!548 = distinct !DILexicalBlock(scope: !532, file: !493, line: 188, column: 3)
!549 = !DILocation(line: 188, column: 13, scope: !547)
!550 = !DILocation(line: 188, column: 46, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !493, line: 192, column: 5)
!552 = distinct !DILexicalBlock(scope: !553, file: !493, line: 191, column: 5)
!553 = distinct !DILexicalBlock(scope: !547, file: !493, line: 188, column: 13)
!554 = !DILocation(line: 188, column: 15, scope: !551)
!555 = !DILocalVariable(name: "tmp___4", scope: !492, file: !493, line: 187, type: !12)
!556 = !DILocation(line: 188, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !493, line: 188, column: 9)
!558 = !DILocation(line: 188, column: 9, scope: !553)
!559 = !DILocation(line: 188, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !493, line: 188, column: 20)
!561 = !DILocation(line: 189, column: 38, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !493, line: 191, column: 5)
!563 = distinct !DILexicalBlock(scope: !553, file: !493, line: 190, column: 5)
!564 = !DILocation(line: 189, column: 15, scope: !562)
!565 = !DILocalVariable(name: "tmp___0", scope: !492, file: !493, line: 183, type: !71)
!566 = !DILocation(line: 189, column: 17, scope: !563)
!567 = !DILocation(line: 189, column: 5, scope: !563)
!568 = !DILocation(line: 189, column: 23, scope: !563)
!569 = !DILocation(line: 190, column: 39, scope: !570)
!570 = distinct !DILexicalBlock(scope: !563, file: !493, line: 190, column: 5)
!571 = !DILocation(line: 190, column: 15, scope: !570)
!572 = !DILocalVariable(name: "tmp___1", scope: !492, file: !493, line: 184, type: !24)
!573 = !DILocation(line: 190, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !553, file: !493, line: 190, column: 9)
!575 = !DILocation(line: 190, column: 9, scope: !553)
!576 = !DILocation(line: 191, column: 47, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !493, line: 192, column: 7)
!578 = distinct !DILexicalBlock(scope: !579, file: !493, line: 191, column: 7)
!579 = distinct !DILexicalBlock(scope: !574, file: !493, line: 190, column: 20)
!580 = !DILocation(line: 191, column: 7, scope: !577)
!581 = !DILocation(line: 195, column: 5, scope: !579)
!582 = !DILocation(line: 192, column: 39, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !493, line: 197, column: 5)
!584 = distinct !DILexicalBlock(scope: !553, file: !493, line: 196, column: 5)
!585 = !DILocation(line: 192, column: 15, scope: !583)
!586 = !DILocalVariable(name: "tmp___2", scope: !492, file: !493, line: 185, type: !24)
!587 = !DILocation(line: 192, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !553, file: !493, line: 192, column: 9)
!589 = !DILocation(line: 192, column: 9, scope: !553)
!590 = !DILocation(line: 193, column: 47, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !493, line: 194, column: 7)
!592 = distinct !DILexicalBlock(scope: !593, file: !493, line: 193, column: 7)
!593 = distinct !DILexicalBlock(scope: !588, file: !493, line: 192, column: 20)
!594 = !DILocation(line: 193, column: 7, scope: !591)
!595 = !DILocation(line: 197, column: 5, scope: !593)
!596 = !DILocation(line: 194, column: 39, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !493, line: 199, column: 5)
!598 = distinct !DILexicalBlock(scope: !553, file: !493, line: 198, column: 5)
!599 = !DILocation(line: 194, column: 15, scope: !597)
!600 = !DILocalVariable(name: "tmp___3", scope: !492, file: !493, line: 186, type: !24)
!601 = !DILocation(line: 194, column: 11, scope: !602)
!602 = distinct !DILexicalBlock(scope: !553, file: !493, line: 194, column: 9)
!603 = !DILocation(line: 194, column: 9, scope: !553)
!604 = !DILocation(line: 195, column: 47, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !493, line: 196, column: 7)
!606 = distinct !DILexicalBlock(scope: !607, file: !493, line: 195, column: 7)
!607 = distinct !DILexicalBlock(scope: !602, file: !493, line: 194, column: 20)
!608 = !DILocation(line: 195, column: 7, scope: !605)
!609 = !DILocation(line: 199, column: 5, scope: !607)
!610 = distinct !{!610, !546, !611}
!611 = !DILocation(line: 200, column: 3, scope: !547)
!612 = !DILocation(line: 202, column: 3, scope: !547)
!613 = !DILocation(line: 198, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !493, line: 206, column: 3)
!615 = distinct !DILexicalBlock(scope: !532, file: !493, line: 205, column: 3)
!616 = !DILocation(line: 199, column: 3, scope: !532)
!617 = !DILocation(line: 201, column: 1, scope: !492)
