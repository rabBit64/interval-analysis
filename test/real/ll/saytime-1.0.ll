; ModuleID = '/tmp/tmp.ll'
source_filename = "c/saytime-1.0.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.__anonunion___sigaction_handler_44, %struct.__anonstruct___sigset_t_6, i32, void ()* }
%union.__anonunion___sigaction_handler_44 = type { void (i32)* }
%struct.__anonstruct___sigset_t_6 = type { [16 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%union.__anonunion_50 = type { i32 }

@opt_to_stdout = global i32 0, align 4, !dbg !0
@opt_sound_device = global i8* null, align 8, !dbg !172
@.str = private unnamed_addr constant [19 x i8] c"/usr/share/saytime\00", align 1
@opt_sound_dir = global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), align 8, !dbg !175
@opt_time_format = global i8* null, align 8, !dbg !177
@opt_interval = global i8* null, align 8, !dbg !179
@opt_volume = global i8* null, align 8, !dbg !181
@die = global i32 0, align 4, !dbg !183
@.str.1 = private unnamed_addr constant [13 x i8] c"v:r:co:d:f:h\00", align 1
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Specifying alternate device and stdout makes no sense.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/dev/audio\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%P%l%M%S\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Starting background process\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Usage: saytime [-ch] [-v lvl] [-r sec] [-d dir] [-f fmt] [-o dev]\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"Speak the current time through the computer's sound device.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c" -v lvl\09set volume level\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c" -r sec\09repeat interval in background mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c" -c\09output to stdout\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c" -d dir\09specify sound directory [%s]\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c" -f fmt\09specify alternate time format [%s]\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c" -h\09brief help message\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c" -o dev\09specify audio device [%s]\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Invalid format char '%c'\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Shouldn't happen.\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"0.au\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"1.au\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"2.au\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"3.au\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"4.au\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"5.au\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"6.au\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"7.au\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"8.au\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"9.au\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"10.au\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"11.au\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"12.au\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"13.au\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"14.au\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"15.au\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"16.au\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"17.au\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"18.au\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"19.au\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"20.au\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"30.au\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"40.au\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"50.au\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"the_time_is.au\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"oclock.au\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"oh.au\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"exactly.au\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"and.au\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"second.au\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"seconds.au\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"minute.au\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"minutes.au\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"hour.au\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"hours.au\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"am.au\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"pm.au\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"too long sound file name\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"/usr/bin/sox\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"sox\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"8000\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"-t.ul\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ossdsp\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"execl failed\0A\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"waitpid failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"child process returned a non-zero status %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !191 {
entry:
  %clock___0 = alloca i64, align 8
  %new_action = alloca %struct.sigaction, align 8
  %old_action = alloca %struct.sigaction, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8** %argv, metadata !197, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i64* %clock___0, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata %struct.sigaction* %new_action, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata %struct.sigaction* %old_action, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata !4, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata !4, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata !4, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata !4, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata !4, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata !4, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata !4, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), metadata !218, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 10, metadata !219, metadata !DIExpression()), !dbg !196
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %new_action, i32 0, i32 0, !dbg !220
  %sa_handler = bitcast %union.__anonunion___sigaction_handler_44* %__sigaction_handler to void (i32)**, !dbg !223
  store void (i32)* @kill_daemon, void (i32)** %sa_handler, align 8, !dbg !224
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %new_action, i32 0, i32 1, !dbg !225
  %call = call i32 @sigemptyset(%struct.__anonstruct___sigset_t_6* %sa_mask) #6, !dbg !227
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %new_action, i32 0, i32 2, !dbg !228
  store i32 0, i32* %sa_flags, align 8, !dbg !229
  %call1 = call i32 @sigaction(i32 15, %struct.sigaction* null, %struct.sigaction* %old_action) #6, !dbg !230
  %__sigaction_handler2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %old_action, i32 0, i32 0, !dbg !232
  %sa_handler3 = bitcast %union.__anonunion___sigaction_handler_44* %__sigaction_handler2 to void (i32)**, !dbg !234
  %0 = load void (i32)*, void (i32)** %sa_handler3, align 8, !dbg !234
  %1 = ptrtoint void (i32)* %0 to i64, !dbg !235
  %cmp = icmp ne i64 %1, 1, !dbg !236
  br i1 %cmp, label %if.then, label %if.end, !dbg !237

if.then:                                          ; preds = %entry
  %call4 = call i32 @sigaction(i32 15, %struct.sigaction* %new_action, %struct.sigaction* null) #6, !dbg !238
  br label %if.end, !dbg !242

if.end:                                           ; preds = %if.then, %entry
  br label %while.body, !dbg !243

while.body:                                       ; preds = %switch_break, %if.end
  br label %while_continue___3, !dbg !246

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !246

while_continue:                                   ; preds = %while_continue___3
  %call5 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !247
  call void @llvm.dbg.value(metadata i32 %call5, metadata !251, metadata !DIExpression()), !dbg !196
  %cmp6 = icmp ne i32 %call5, -1, !dbg !252
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !254

if.then7:                                         ; preds = %while_continue
  br label %while_break, !dbg !255

if.end8:                                          ; preds = %while_continue
  %cmp9 = icmp eq i32 %call5, 118, !dbg !257
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !260

if.then10:                                        ; preds = %if.end8
  br label %case_118, !dbg !261

if.end11:                                         ; preds = %if.end8
  %cmp12 = icmp eq i32 %call5, 114, !dbg !263
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !265

if.then13:                                        ; preds = %if.end11
  br label %case_114, !dbg !266

if.end14:                                         ; preds = %if.end11
  %cmp15 = icmp eq i32 %call5, 99, !dbg !268
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !270

if.then16:                                        ; preds = %if.end14
  br label %case_99, !dbg !271

if.end17:                                         ; preds = %if.end14
  %cmp18 = icmp eq i32 %call5, 111, !dbg !273
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !275

if.then19:                                        ; preds = %if.end17
  br label %case_111, !dbg !276

if.end20:                                         ; preds = %if.end17
  %cmp21 = icmp eq i32 %call5, 100, !dbg !278
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !280

if.then22:                                        ; preds = %if.end20
  br label %case_100, !dbg !281

if.end23:                                         ; preds = %if.end20
  %cmp24 = icmp eq i32 %call5, 102, !dbg !283
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !285

if.then25:                                        ; preds = %if.end23
  br label %case_102, !dbg !286

if.end26:                                         ; preds = %if.end23
  br label %switch_default, !dbg !288

case_118:                                         ; preds = %if.then10
  %2 = load i8*, i8** @optarg, align 8, !dbg !289
  store i8* %2, i8** @opt_volume, align 8, !dbg !290
  br label %switch_break, !dbg !291

case_114:                                         ; preds = %if.then13
  %3 = load i8*, i8** @optarg, align 8, !dbg !292
  store i8* %3, i8** @opt_interval, align 8, !dbg !293
  br label %switch_break, !dbg !294

case_99:                                          ; preds = %if.then16
  store i32 1, i32* @opt_to_stdout, align 4, !dbg !295
  br label %switch_break, !dbg !296

case_111:                                         ; preds = %if.then19
  %4 = load i8*, i8** @optarg, align 8, !dbg !297
  store i8* %4, i8** @opt_sound_device, align 8, !dbg !298
  br label %switch_break, !dbg !299

case_100:                                         ; preds = %if.then22
  %5 = load i8*, i8** @optarg, align 8, !dbg !300
  store i8* %5, i8** @opt_sound_dir, align 8, !dbg !301
  br label %switch_break, !dbg !302

case_102:                                         ; preds = %if.then25
  %6 = load i8*, i8** @optarg, align 8, !dbg !303
  store i8* %6, i8** @opt_time_format, align 8, !dbg !304
  br label %switch_break, !dbg !305

switch_default:                                   ; preds = %if.end26
  call void @usage(), !dbg !306
  br label %switch_break, !dbg !309

switch_break:                                     ; preds = %switch_default, %case_102, %case_100, %case_111, %case_99, %case_114, %case_118
  br label %while.body, !dbg !243, !llvm.loop !310

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !312

while_break:                                      ; preds = %while_break___3, %if.then7
  %7 = load i32, i32* @opt_to_stdout, align 4, !dbg !313
  %tobool = icmp ne i32 %7, 0, !dbg !313
  br i1 %tobool, label %if.then27, label %if.else32, !dbg !315

if.then27:                                        ; preds = %while_break
  %8 = load i8*, i8** @opt_sound_device, align 8, !dbg !316
  %9 = ptrtoint i8* %8 to i64, !dbg !319
  %cmp28 = icmp ne i64 %9, 0, !dbg !320
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !321

if.then29:                                        ; preds = %if.then27
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0)), !dbg !322
  call void @usage(), !dbg !326
  br label %if.end31, !dbg !328

if.else:                                          ; preds = %if.then27
  br label %_L, !dbg !329

if.end31:                                         ; preds = %if.then29
  br label %if.end36, !dbg !331

if.else32:                                        ; preds = %while_break
  br label %_L, !dbg !331

_L:                                               ; preds = %if.else32, %if.else
  %10 = load i8*, i8** @opt_sound_device, align 8, !dbg !332
  %11 = ptrtoint i8* %10 to i64, !dbg !334
  %cmp33 = icmp eq i64 %11, 0, !dbg !335
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !336

if.then34:                                        ; preds = %_L
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** @opt_sound_device, align 8, !dbg !337
  br label %if.end35, !dbg !339

if.end35:                                         ; preds = %if.then34, %_L
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end31
  %12 = load i8*, i8** @opt_time_format, align 8, !dbg !340
  %13 = ptrtoint i8* %12 to i64, !dbg !342
  %cmp37 = icmp eq i64 %13, 0, !dbg !343
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !344

if.then38:                                        ; preds = %if.end36
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** @opt_time_format, align 8, !dbg !345
  br label %if.end39, !dbg !347

if.end39:                                         ; preds = %if.then38, %if.end36
  %14 = load i8*, i8** @opt_interval, align 8, !dbg !348
  %15 = ptrtoint i8* %14 to i64, !dbg !350
  %cmp40 = icmp ne i64 %15, 0, !dbg !351
  br i1 %cmp40, label %if.then41, label %if.end47, !dbg !352

if.then41:                                        ; preds = %if.end39
  %16 = load i8*, i8** @opt_interval, align 8, !dbg !353
  %call42 = call i64 @atol(i8* %16) #7, !dbg !357
  call void @llvm.dbg.value(metadata i64 %call42, metadata !358, metadata !DIExpression()), !dbg !196
  %conv = trunc i64 %call42 to i32, !dbg !359
  call void @llvm.dbg.value(metadata i32 %conv, metadata !219, metadata !DIExpression()), !dbg !196
  %cmp43 = icmp eq i32 %conv, 0, !dbg !360
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !362

if.then45:                                        ; preds = %if.then41
  call void @llvm.dbg.value(metadata i32 10, metadata !219, metadata !DIExpression()), !dbg !196
  br label %if.end46, !dbg !363

if.end46:                                         ; preds = %if.then45, %if.then41
  %interval.0 = phi i32 [ 10, %if.then45 ], [ %conv, %if.then41 ], !dbg !365
  call void @llvm.dbg.value(metadata i32 %interval.0, metadata !219, metadata !DIExpression()), !dbg !196
  br label %if.end47, !dbg !366

if.end47:                                         ; preds = %if.end46, %if.end39
  %interval.1 = phi i32 [ %interval.0, %if.end46 ], [ 10, %if.end39 ], !dbg !367
  call void @llvm.dbg.value(metadata i32 %interval.1, metadata !219, metadata !DIExpression()), !dbg !196
  %17 = load i8*, i8** @opt_volume, align 8, !dbg !368
  %18 = ptrtoint i8* %17 to i64, !dbg !370
  %cmp48 = icmp eq i64 %18, 0, !dbg !371
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !372

if.then50:                                        ; preds = %if.end47
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** @opt_volume, align 8, !dbg !373
  br label %if.end51, !dbg !375

if.end51:                                         ; preds = %if.then50, %if.end47
  %19 = load i8*, i8** @opt_interval, align 8, !dbg !376
  %tobool52 = icmp ne i8* %19, null, !dbg !376
  br i1 %tobool52, label %if.then53, label %if.else96, !dbg !378

if.then53:                                        ; preds = %if.end51
  %call54 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)), !dbg !379
  %call55 = call i32 @fork() #6, !dbg !383
  call void @llvm.dbg.value(metadata i32 %call55, metadata !385, metadata !DIExpression()), !dbg !196
  %cmp56 = icmp slt i32 %call55, 0, !dbg !387
  br i1 %cmp56, label %if.then58, label %if.else60, !dbg !389

if.then58:                                        ; preds = %if.then53
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !390
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !394
  call void @exit(i32 1) #8, !dbg !395
  unreachable, !dbg !395

if.else60:                                        ; preds = %if.then53
  %cmp61 = icmp eq i32 %call55, 0, !dbg !397
  br i1 %cmp61, label %if.then63, label %if.end94, !dbg !399

if.then63:                                        ; preds = %if.else60
  br label %while.body64, !dbg !400

while.body64:                                     ; preds = %if.end73, %if.then63
  br label %while_continue___4, !dbg !404

while_continue___4:                               ; preds = %while.body64
  br label %while_continue___0, !dbg !404

while_continue___0:                               ; preds = %while_continue___4
  %21 = load i32, i32* @die, align 4, !dbg !405
  %tobool65 = icmp ne i32 %21, 0, !dbg !405
  br i1 %tobool65, label %if.else72, label %if.then66, !dbg !408

if.then66:                                        ; preds = %while_continue___0
  %call67 = call i64 @time(i64* null) #6, !dbg !409
  call void @llvm.dbg.value(metadata i64 %call67, metadata !413, metadata !DIExpression()), !dbg !196
  %conv68 = zext i32 %interval.1 to i64, !dbg !414
  %rem = srem i64 %call67, %conv68, !dbg !415
  store i64 %rem, i64* %clock___0, align 8, !dbg !416
  %22 = load i64, i64* %clock___0, align 8, !dbg !417
  %tobool69 = icmp ne i64 %22, 0, !dbg !417
  br i1 %tobool69, label %if.end71, label %if.then70, !dbg !419

if.then70:                                        ; preds = %if.then66
  br label %while_break___0, !dbg !420

if.end71:                                         ; preds = %if.then66
  br label %if.end73, !dbg !422

if.else72:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !423

if.end73:                                         ; preds = %if.end71
  %call74 = call i32 @usleep(i32 10000), !dbg !425
  br label %while.body64, !dbg !400, !llvm.loop !428

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !430

while_break___0:                                  ; preds = %while_break___4, %if.else72, %if.then70
  br label %while.body75, !dbg !431

while.body75:                                     ; preds = %while_break___2, %while_break___0
  br label %while_continue___5, !dbg !434

while_continue___5:                               ; preds = %while.body75
  br label %while_continue___1, !dbg !434

while_continue___1:                               ; preds = %while_continue___5
  %23 = load i32, i32* @die, align 4, !dbg !435
  %tobool76 = icmp ne i32 %23, 0, !dbg !435
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !438

if.then77:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !439

if.end78:                                         ; preds = %while_continue___1
  %call79 = call i64 @time(i64* null) #6, !dbg !441
  store i64 %call79, i64* %clock___0, align 8, !dbg !444
  %call80 = call %struct.tm* @localtime(i64* %clock___0) #6, !dbg !445
  call void @llvm.dbg.value(metadata %struct.tm* %call80, metadata !447, metadata !DIExpression()), !dbg !196
  %24 = load i8*, i8** @opt_time_format, align 8, !dbg !462
  call void @sayformat(%struct.tm* %call80, i8* %24), !dbg !464
  br label %while.body82, !dbg !465

while.body82:                                     ; preds = %if.end92, %if.end78
  br label %while_continue___6, !dbg !468

while_continue___6:                               ; preds = %while.body82
  br label %while_continue___2, !dbg !468

while_continue___2:                               ; preds = %while_continue___6
  %25 = load i32, i32* @die, align 4, !dbg !469
  %tobool83 = icmp ne i32 %25, 0, !dbg !469
  br i1 %tobool83, label %if.else91, label %if.then84, !dbg !472

if.then84:                                        ; preds = %while_continue___2
  %call85 = call i64 @time(i64* null) #6, !dbg !473
  call void @llvm.dbg.value(metadata i64 %call85, metadata !477, metadata !DIExpression()), !dbg !196
  %conv86 = zext i32 %interval.1 to i64, !dbg !478
  %rem87 = srem i64 %call85, %conv86, !dbg !479
  store i64 %rem87, i64* %clock___0, align 8, !dbg !480
  %26 = load i64, i64* %clock___0, align 8, !dbg !481
  %tobool88 = icmp ne i64 %26, 0, !dbg !481
  br i1 %tobool88, label %if.end90, label %if.then89, !dbg !483

if.then89:                                        ; preds = %if.then84
  br label %while_break___2, !dbg !484

if.end90:                                         ; preds = %if.then84
  br label %if.end92, !dbg !486

if.else91:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !487

if.end92:                                         ; preds = %if.end90
  %call93 = call i32 @usleep(i32 100000), !dbg !489
  br label %while.body82, !dbg !465, !llvm.loop !492

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !494

while_break___2:                                  ; preds = %while_break___6, %if.else91, %if.then89
  br label %while.body75, !dbg !431, !llvm.loop !495

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !497

while_break___1:                                  ; preds = %while_break___5, %if.then77
  br label %if.end94, !dbg !498

if.end94:                                         ; preds = %while_break___1, %if.else60
  br label %if.end95

if.end95:                                         ; preds = %if.end94
  br label %if.end98, !dbg !499

if.else96:                                        ; preds = %if.end51
  %call97 = call i64 @time(i64* null) #6, !dbg !500
  store i64 %call97, i64* %clock___0, align 8, !dbg !504
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.end95
  %call99 = call %struct.tm* @localtime(i64* %clock___0) #6, !dbg !505
  call void @llvm.dbg.value(metadata %struct.tm* %call99, metadata !447, metadata !DIExpression()), !dbg !196
  %27 = load i8*, i8** @opt_interval, align 8, !dbg !508
  %28 = ptrtoint i8* %27 to i64, !dbg !510
  %cmp100 = icmp eq i64 %28, 0, !dbg !511
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !512

if.then102:                                       ; preds = %if.end98
  %29 = load i8*, i8** @opt_time_format, align 8, !dbg !513
  call void @sayformat(%struct.tm* %call99, i8* %29), !dbg !517
  br label %if.end103, !dbg !518

if.end103:                                        ; preds = %if.then102, %if.end98
  ret i32 0, !dbg !519
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define void @kill_daemon(i32 %signal___0) #0 !dbg !520 {
entry:
  call void @llvm.dbg.value(metadata i32 %signal___0, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 1, i32* @die, align 4, !dbg !523
  ret void, !dbg !525
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__anonstruct___sigset_t_6*) #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @usage() #0 !dbg !526 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata !4, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata !4, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata !4, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata !4, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata !4, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata !4, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata !4, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata !4, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata !4, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata !4, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata !4, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata !4, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !553
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i32 0, i32 0)), !dbg !557
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !558
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0)), !dbg !560
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !561
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)), !dbg !563
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !564
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)), !dbg !566
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !567
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)), !dbg !569
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !570
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)), !dbg !572
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !573
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)), !dbg !575
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !576
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)), !dbg !578
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !579
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !581
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !582
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !584
  call void @exit(i32 1) #8, !dbg !585
  unreachable, !dbg !585

return:                                           ; No predecessors!
  ret void, !dbg !587
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

declare i32 @puts(i8*) #3

; Function Attrs: nounwind
declare i32 @fork() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i32 @usleep(i32) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @sayformat(%struct.tm* %t, i8* %fmt) #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata %struct.tm* %t, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !593, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata !4, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 0, metadata !597, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 0, metadata !598, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !599, metadata !DIExpression()), !dbg !592
  br label %while.body, !dbg !600

while.body:                                       ; preds = %if.end13, %entry
  %hflag.0 = phi i32 [ 0, %entry ], [ %hflag.2, %if.end13 ], !dbg !604
  %mflag.0 = phi i32 [ 0, %entry ], [ %mflag.1, %if.end13 ], !dbg !604
  %pfmt.0 = phi i8* [ %fmt, %entry ], [ %incdec.ptr, %if.end13 ], !dbg !604
  call void @llvm.dbg.value(metadata i8* %pfmt.0, metadata !599, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %mflag.0, metadata !596, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %hflag.0, metadata !597, metadata !DIExpression()), !dbg !592
  br label %while_continue___1, !dbg !605

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !605

while_continue:                                   ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i8* %pfmt.0, metadata !606, metadata !DIExpression()), !dbg !592
  %incdec.ptr = getelementptr inbounds i8, i8* %pfmt.0, i32 1, !dbg !607
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !599, metadata !DIExpression()), !dbg !592
  %0 = load i8, i8* %pfmt.0, align 1, !dbg !609
  %tobool = icmp ne i8 %0, 0, !dbg !609
  br i1 %tobool, label %if.end, label %if.then, !dbg !611

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !612

if.end:                                           ; preds = %while_continue
  %1 = load i8, i8* %incdec.ptr, align 1, !dbg !614
  %conv = sext i8 %1 to i32, !dbg !616
  %cmp = icmp eq i32 %conv, 77, !dbg !617
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !618

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !596, metadata !DIExpression()), !dbg !592
  br label %if.end3, !dbg !619

if.end3:                                          ; preds = %if.then2, %if.end
  %mflag.1 = phi i32 [ 1, %if.then2 ], [ %mflag.0, %if.end ], !dbg !604
  call void @llvm.dbg.value(metadata i32 %mflag.1, metadata !596, metadata !DIExpression()), !dbg !592
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !621
  %conv4 = sext i8 %2 to i32, !dbg !623
  %cmp5 = icmp eq i32 %conv4, 107, !dbg !624
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !625

if.then7:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 1, metadata !597, metadata !DIExpression()), !dbg !592
  br label %if.end13, !dbg !626

if.else:                                          ; preds = %if.end3
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !628
  %conv8 = sext i8 %3 to i32, !dbg !630
  %cmp9 = icmp eq i32 %conv8, 108, !dbg !631
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !623

if.then11:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !597, metadata !DIExpression()), !dbg !592
  br label %if.end12, !dbg !632

if.end12:                                         ; preds = %if.then11, %if.else
  %hflag.1 = phi i32 [ 1, %if.then11 ], [ %hflag.0, %if.else ], !dbg !604
  call void @llvm.dbg.value(metadata i32 %hflag.1, metadata !597, metadata !DIExpression()), !dbg !592
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  %hflag.2 = phi i32 [ 1, %if.then7 ], [ %hflag.1, %if.end12 ], !dbg !634
  call void @llvm.dbg.value(metadata i32 %hflag.2, metadata !597, metadata !DIExpression()), !dbg !592
  br label %while.body, !dbg !600, !llvm.loop !635

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !637

while_break:                                      ; preds = %while_break___1, %if.then
  br label %while.body14, !dbg !638

while.body14:                                     ; preds = %switch_break, %while_break
  %flag.0 = phi i32 [ 0, %while_break ], [ %flag.1, %switch_break ], !dbg !641
  %fmt.addr.0 = phi i8* [ %fmt, %while_break ], [ %incdec.ptr128, %switch_break ]
  call void @llvm.dbg.value(metadata i8* %fmt.addr.0, metadata !593, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 %flag.0, metadata !598, metadata !DIExpression()), !dbg !592
  br label %while_continue___2, !dbg !642

while_continue___2:                               ; preds = %while.body14
  br label %while_continue___0, !dbg !642

while_continue___0:                               ; preds = %while_continue___2
  %4 = load i8, i8* %fmt.addr.0, align 1, !dbg !643
  %tobool15 = icmp ne i8 %4, 0, !dbg !643
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !646

if.then16:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !647

if.end17:                                         ; preds = %while_continue___0
  %incdec.ptr18 = getelementptr inbounds i8, i8* %fmt.addr.0, i32 1, !dbg !649
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !593, metadata !DIExpression()), !dbg !592
  %5 = load i8, i8* %incdec.ptr18, align 1, !dbg !650
  %conv19 = sext i8 %5 to i32, !dbg !653
  %cmp20 = icmp eq i32 %conv19, 80, !dbg !654
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !655

if.then22:                                        ; preds = %if.end17
  br label %case_80, !dbg !656

if.end23:                                         ; preds = %if.end17
  %6 = load i8, i8* %incdec.ptr18, align 1, !dbg !658
  %conv24 = sext i8 %6 to i32, !dbg !660
  %cmp25 = icmp eq i32 %conv24, 108, !dbg !661
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !662

if.then27:                                        ; preds = %if.end23
  br label %case_108, !dbg !663

if.end28:                                         ; preds = %if.end23
  %7 = load i8, i8* %incdec.ptr18, align 1, !dbg !665
  %conv29 = sext i8 %7 to i32, !dbg !667
  %cmp30 = icmp eq i32 %conv29, 107, !dbg !668
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !669

if.then32:                                        ; preds = %if.end28
  br label %case_107, !dbg !670

if.end33:                                         ; preds = %if.end28
  %8 = load i8, i8* %incdec.ptr18, align 1, !dbg !672
  %conv34 = sext i8 %8 to i32, !dbg !674
  %cmp35 = icmp eq i32 %conv34, 77, !dbg !675
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !676

if.then37:                                        ; preds = %if.end33
  br label %case_77, !dbg !677

if.end38:                                         ; preds = %if.end33
  %9 = load i8, i8* %incdec.ptr18, align 1, !dbg !679
  %conv39 = sext i8 %9 to i32, !dbg !681
  %cmp40 = icmp eq i32 %conv39, 83, !dbg !682
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !683

if.then42:                                        ; preds = %if.end38
  br label %case_83, !dbg !684

if.end43:                                         ; preds = %if.end38
  br label %switch_default, !dbg !686

case_80:                                          ; preds = %if.then22
  call void @sayphrase(i32 24), !dbg !687
  br label %switch_break, !dbg !690

case_108:                                         ; preds = %if.then27
  call void @llvm.dbg.value(metadata i32 0, metadata !598, metadata !DIExpression()), !dbg !592
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !691
  %10 = load i32, i32* %tm_hour, align 8, !dbg !691
  %cmp44 = icmp eq i32 %10, 0, !dbg !693
  br i1 %cmp44, label %if.then46, label %if.else47, !dbg !694

if.then46:                                        ; preds = %case_108
  call void @saynumber(i32 12, i32 0), !dbg !695
  br label %if.end56, !dbg !699

if.else47:                                        ; preds = %case_108
  %tm_hour48 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !700
  %11 = load i32, i32* %tm_hour48, align 8, !dbg !700
  %cmp49 = icmp sgt i32 %11, 12, !dbg !702
  br i1 %cmp49, label %if.then51, label %if.else53, !dbg !703

if.then51:                                        ; preds = %if.else47
  %tm_hour52 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !704
  %12 = load i32, i32* %tm_hour52, align 8, !dbg !704
  %sub = sub nsw i32 %12, 12, !dbg !708
  call void @saynumber(i32 %sub, i32 0), !dbg !709
  br label %if.end55, !dbg !710

if.else53:                                        ; preds = %if.else47
  %tm_hour54 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !711
  %13 = load i32, i32* %tm_hour54, align 8, !dbg !711
  call void @saynumber(i32 %13, i32 0), !dbg !715
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then46
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !716
  %14 = load i32, i32* %tm_min, align 4, !dbg !716
  %cmp57 = icmp eq i32 %14, 0, !dbg !718
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !719

if.then59:                                        ; preds = %if.end56
  call void @sayphrase(i32 25), !dbg !720
  br label %if.end60, !dbg !724

if.end60:                                         ; preds = %if.then59, %if.end56
  %tobool61 = icmp ne i32 %mflag.0, 0, !dbg !725
  br i1 %tobool61, label %if.end69, label %if.then62, !dbg !727

if.then62:                                        ; preds = %if.end60
  %tm_hour63 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !728
  %15 = load i32, i32* %tm_hour63, align 8, !dbg !728
  %cmp64 = icmp slt i32 %15, 12, !dbg !731
  br i1 %cmp64, label %if.then66, label %if.else67, !dbg !732

if.then66:                                        ; preds = %if.then62
  call void @sayphrase(i32 35), !dbg !733
  br label %if.end68, !dbg !737

if.else67:                                        ; preds = %if.then62
  call void @sayphrase(i32 36), !dbg !738
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  br label %if.end69, !dbg !742

if.end69:                                         ; preds = %if.end68, %if.end60
  br label %switch_break, !dbg !743

case_107:                                         ; preds = %if.then32
  call void @llvm.dbg.value(metadata i32 1, metadata !598, metadata !DIExpression()), !dbg !592
  %tm_hour70 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !744
  %16 = load i32, i32* %tm_hour70, align 8, !dbg !744
  call void @saynumber(i32 %16, i32 0), !dbg !747
  %tm_hour71 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !748
  %17 = load i32, i32* %tm_hour71, align 8, !dbg !748
  %cmp72 = icmp eq i32 %17, 1, !dbg !750
  br i1 %cmp72, label %if.then74, label %if.else75, !dbg !751

if.then74:                                        ; preds = %case_107
  call void @sayphrase(i32 31), !dbg !752
  br label %if.end76, !dbg !756

if.else75:                                        ; preds = %case_107
  call void @sayphrase(i32 32), !dbg !757
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then74
  br label %switch_break, !dbg !761

case_77:                                          ; preds = %if.then37
  %tobool77 = icmp ne i32 %flag.0, 0, !dbg !762
  br i1 %tobool77, label %if.then78, label %if.else91, !dbg !764

if.then78:                                        ; preds = %case_77
  %tm_min79 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !765
  %18 = load i32, i32* %tm_min79, align 4, !dbg !765
  %cmp80 = icmp ne i32 %18, 0, !dbg !768
  br i1 %cmp80, label %if.then82, label %if.end90, !dbg !769

if.then82:                                        ; preds = %if.then78
  %tm_min83 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !770
  %19 = load i32, i32* %tm_min83, align 4, !dbg !770
  call void @saynumber(i32 %19, i32 0), !dbg !774
  %tm_min84 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !775
  %20 = load i32, i32* %tm_min84, align 4, !dbg !775
  %cmp85 = icmp eq i32 %20, 1, !dbg !777
  br i1 %cmp85, label %if.then87, label %if.else88, !dbg !778

if.then87:                                        ; preds = %if.then82
  call void @sayphrase(i32 33), !dbg !779
  br label %if.end89, !dbg !783

if.else88:                                        ; preds = %if.then82
  call void @sayphrase(i32 34), !dbg !784
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.then87
  br label %if.end90, !dbg !788

if.end90:                                         ; preds = %if.end89, %if.then78
  br label %if.end107, !dbg !789

if.else91:                                        ; preds = %case_77
  %tm_min92 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !790
  %21 = load i32, i32* %tm_min92, align 4, !dbg !790
  %cmp93 = icmp ne i32 %21, 0, !dbg !793
  br i1 %cmp93, label %if.then95, label %if.end97, !dbg !794

if.then95:                                        ; preds = %if.else91
  %tm_min96 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 1, !dbg !795
  %22 = load i32, i32* %tm_min96, align 4, !dbg !795
  call void @saynumber(i32 %22, i32 1), !dbg !799
  br label %if.end97, !dbg !800

if.end97:                                         ; preds = %if.then95, %if.else91
  %tobool98 = icmp ne i32 %hflag.0, 0, !dbg !801
  br i1 %tobool98, label %if.then99, label %if.end106, !dbg !803

if.then99:                                        ; preds = %if.end97
  %tm_hour100 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 2, !dbg !804
  %23 = load i32, i32* %tm_hour100, align 8, !dbg !804
  %cmp101 = icmp slt i32 %23, 12, !dbg !807
  br i1 %cmp101, label %if.then103, label %if.else104, !dbg !808

if.then103:                                       ; preds = %if.then99
  call void @sayphrase(i32 35), !dbg !809
  br label %if.end105, !dbg !813

if.else104:                                       ; preds = %if.then99
  call void @sayphrase(i32 36), !dbg !814
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then103
  br label %if.end106, !dbg !818

if.end106:                                        ; preds = %if.end105, %if.end97
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end90
  br label %switch_break, !dbg !819

case_83:                                          ; preds = %if.then42
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 0, !dbg !820
  %24 = load i32, i32* %tm_sec, align 8, !dbg !820
  %cmp108 = icmp eq i32 %24, 0, !dbg !822
  br i1 %cmp108, label %if.then110, label %if.else115, !dbg !823

if.then110:                                       ; preds = %case_83
  %tobool111 = icmp ne i32 %mflag.0, 0, !dbg !824
  br i1 %tobool111, label %if.then112, label %if.else113, !dbg !827

if.then112:                                       ; preds = %if.then110
  call void @sayphrase(i32 27), !dbg !828
  br label %if.end114, !dbg !832

if.else113:                                       ; preds = %if.then110
  br label %_L, !dbg !833

if.end114:                                        ; preds = %if.then112
  br label %if.end126, !dbg !835

if.else115:                                       ; preds = %case_83
  br label %_L, !dbg !836

_L:                                               ; preds = %if.else115, %if.else113
  %tobool116 = icmp ne i32 %mflag.0, 0, !dbg !837
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !840

if.then117:                                       ; preds = %_L
  call void @sayphrase(i32 28), !dbg !841
  br label %if.end118, !dbg !845

if.end118:                                        ; preds = %if.then117, %_L
  %tm_sec119 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 0, !dbg !846
  %25 = load i32, i32* %tm_sec119, align 8, !dbg !846
  call void @saynumber(i32 %25, i32 0), !dbg !849
  %tm_sec120 = getelementptr inbounds %struct.tm, %struct.tm* %t, i32 0, i32 0, !dbg !850
  %26 = load i32, i32* %tm_sec120, align 8, !dbg !850
  %cmp121 = icmp eq i32 %26, 1, !dbg !852
  br i1 %cmp121, label %if.then123, label %if.else124, !dbg !853

if.then123:                                       ; preds = %if.end118
  call void @sayphrase(i32 29), !dbg !854
  br label %if.end125, !dbg !858

if.else124:                                       ; preds = %if.end118
  call void @sayphrase(i32 30), !dbg !859
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.then123
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end114
  br label %switch_break, !dbg !863

switch_default:                                   ; preds = %if.end43
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !864
  %28 = load i8, i8* %incdec.ptr18, align 1, !dbg !867
  %conv127 = sext i8 %28 to i32, !dbg !868
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i32 %conv127), !dbg !869
  call void @exit(i32 1) #8, !dbg !870
  unreachable, !dbg !870

switch_break:                                     ; preds = %if.end126, %if.end107, %if.end76, %if.end69, %case_80
  %flag.1 = phi i32 [ %flag.0, %case_80 ], [ 0, %if.end69 ], [ 1, %if.end76 ], [ %flag.0, %if.end107 ], [ %flag.0, %if.end126 ], !dbg !604
  call void @llvm.dbg.value(metadata i32 %flag.1, metadata !598, metadata !DIExpression()), !dbg !592
  %incdec.ptr128 = getelementptr inbounds i8, i8* %incdec.ptr18, i32 1, !dbg !872
  call void @llvm.dbg.value(metadata i8* %incdec.ptr128, metadata !593, metadata !DIExpression()), !dbg !592
  br label %while.body14, !dbg !638, !llvm.loop !873

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !875

while_break___0:                                  ; preds = %while_break___2, %if.then16
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind ssp uwtable
define void @sayphrase(i32 %phrase) #0 !dbg !877 {
entry:
  call void @llvm.dbg.value(metadata i32 %phrase, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata !4, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata !4, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata !4, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata !4, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata !4, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata !4, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata !4, metadata !892, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.declare(metadata !4, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata !4, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata !4, metadata !898, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata !4, metadata !900, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.declare(metadata !4, metadata !902, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.declare(metadata !4, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata !4, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata !4, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata !4, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata !4, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata !4, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata !4, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata !4, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata !4, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata !4, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata !4, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata !4, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata !4, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.declare(metadata !4, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata !4, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata !4, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata !4, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata !4, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata !4, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata !4, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata !4, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata !4, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata !4, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata !4, metadata !950, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata !4, metadata !952, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.declare(metadata !4, metadata !954, metadata !DIExpression()), !dbg !955
  %cmp = icmp eq i32 %phrase, 0, !dbg !956
  br i1 %cmp, label %if.then, label %if.end, !dbg !960

if.then:                                          ; preds = %entry
  br label %case_0, !dbg !961

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %phrase, 1, !dbg !963
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !965

if.then2:                                         ; preds = %if.end
  br label %case_1, !dbg !966

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %phrase, 2, !dbg !968
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !970

if.then5:                                         ; preds = %if.end3
  br label %case_2, !dbg !971

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %phrase, 3, !dbg !973
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !975

if.then8:                                         ; preds = %if.end6
  br label %case_3, !dbg !976

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %phrase, 4, !dbg !978
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !980

if.then11:                                        ; preds = %if.end9
  br label %case_4, !dbg !981

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %phrase, 5, !dbg !983
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !985

if.then14:                                        ; preds = %if.end12
  br label %case_5, !dbg !986

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %phrase, 6, !dbg !988
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !990

if.then17:                                        ; preds = %if.end15
  br label %case_6, !dbg !991

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %phrase, 7, !dbg !993
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !995

if.then20:                                        ; preds = %if.end18
  br label %case_7, !dbg !996

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %phrase, 8, !dbg !998
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1000

if.then23:                                        ; preds = %if.end21
  br label %case_8, !dbg !1001

if.end24:                                         ; preds = %if.end21
  %cmp25 = icmp eq i32 %phrase, 9, !dbg !1003
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1005

if.then26:                                        ; preds = %if.end24
  br label %case_9, !dbg !1006

if.end27:                                         ; preds = %if.end24
  %cmp28 = icmp eq i32 %phrase, 10, !dbg !1008
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1010

if.then29:                                        ; preds = %if.end27
  br label %case_10, !dbg !1011

if.end30:                                         ; preds = %if.end27
  %cmp31 = icmp eq i32 %phrase, 11, !dbg !1013
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !1015

if.then32:                                        ; preds = %if.end30
  br label %case_11, !dbg !1016

if.end33:                                         ; preds = %if.end30
  %cmp34 = icmp eq i32 %phrase, 12, !dbg !1018
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !1020

if.then35:                                        ; preds = %if.end33
  br label %case_12, !dbg !1021

if.end36:                                         ; preds = %if.end33
  %cmp37 = icmp eq i32 %phrase, 13, !dbg !1023
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1025

if.then38:                                        ; preds = %if.end36
  br label %case_13, !dbg !1026

if.end39:                                         ; preds = %if.end36
  %cmp40 = icmp eq i32 %phrase, 14, !dbg !1028
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1030

if.then41:                                        ; preds = %if.end39
  br label %case_14, !dbg !1031

if.end42:                                         ; preds = %if.end39
  %cmp43 = icmp eq i32 %phrase, 15, !dbg !1033
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !1035

if.then44:                                        ; preds = %if.end42
  br label %case_15, !dbg !1036

if.end45:                                         ; preds = %if.end42
  %cmp46 = icmp eq i32 %phrase, 16, !dbg !1038
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !1040

if.then47:                                        ; preds = %if.end45
  br label %case_16, !dbg !1041

if.end48:                                         ; preds = %if.end45
  %cmp49 = icmp eq i32 %phrase, 17, !dbg !1043
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !1045

if.then50:                                        ; preds = %if.end48
  br label %case_17, !dbg !1046

if.end51:                                         ; preds = %if.end48
  %cmp52 = icmp eq i32 %phrase, 18, !dbg !1048
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !1050

if.then53:                                        ; preds = %if.end51
  br label %case_18, !dbg !1051

if.end54:                                         ; preds = %if.end51
  %cmp55 = icmp eq i32 %phrase, 19, !dbg !1053
  br i1 %cmp55, label %if.then56, label %if.end57, !dbg !1055

if.then56:                                        ; preds = %if.end54
  br label %case_19, !dbg !1056

if.end57:                                         ; preds = %if.end54
  %cmp58 = icmp eq i32 %phrase, 20, !dbg !1058
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !1060

if.then59:                                        ; preds = %if.end57
  br label %case_20, !dbg !1061

if.end60:                                         ; preds = %if.end57
  %cmp61 = icmp eq i32 %phrase, 21, !dbg !1063
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !1065

if.then62:                                        ; preds = %if.end60
  br label %case_21, !dbg !1066

if.end63:                                         ; preds = %if.end60
  %cmp64 = icmp eq i32 %phrase, 22, !dbg !1068
  br i1 %cmp64, label %if.then65, label %if.end66, !dbg !1070

if.then65:                                        ; preds = %if.end63
  br label %case_22, !dbg !1071

if.end66:                                         ; preds = %if.end63
  %cmp67 = icmp eq i32 %phrase, 23, !dbg !1073
  br i1 %cmp67, label %if.then68, label %if.end69, !dbg !1075

if.then68:                                        ; preds = %if.end66
  br label %case_23, !dbg !1076

if.end69:                                         ; preds = %if.end66
  %cmp70 = icmp eq i32 %phrase, 24, !dbg !1078
  br i1 %cmp70, label %if.then71, label %if.end72, !dbg !1080

if.then71:                                        ; preds = %if.end69
  br label %case_24, !dbg !1081

if.end72:                                         ; preds = %if.end69
  %cmp73 = icmp eq i32 %phrase, 25, !dbg !1083
  br i1 %cmp73, label %if.then74, label %if.end75, !dbg !1085

if.then74:                                        ; preds = %if.end72
  br label %case_25, !dbg !1086

if.end75:                                         ; preds = %if.end72
  %cmp76 = icmp eq i32 %phrase, 26, !dbg !1088
  br i1 %cmp76, label %if.then77, label %if.end78, !dbg !1090

if.then77:                                        ; preds = %if.end75
  br label %case_26, !dbg !1091

if.end78:                                         ; preds = %if.end75
  %cmp79 = icmp eq i32 %phrase, 27, !dbg !1093
  br i1 %cmp79, label %if.then80, label %if.end81, !dbg !1095

if.then80:                                        ; preds = %if.end78
  br label %case_27, !dbg !1096

if.end81:                                         ; preds = %if.end78
  %cmp82 = icmp eq i32 %phrase, 28, !dbg !1098
  br i1 %cmp82, label %if.then83, label %if.end84, !dbg !1100

if.then83:                                        ; preds = %if.end81
  br label %case_28, !dbg !1101

if.end84:                                         ; preds = %if.end81
  %cmp85 = icmp eq i32 %phrase, 29, !dbg !1103
  br i1 %cmp85, label %if.then86, label %if.end87, !dbg !1105

if.then86:                                        ; preds = %if.end84
  br label %case_29, !dbg !1106

if.end87:                                         ; preds = %if.end84
  %cmp88 = icmp eq i32 %phrase, 30, !dbg !1108
  br i1 %cmp88, label %if.then89, label %if.end90, !dbg !1110

if.then89:                                        ; preds = %if.end87
  br label %case_30, !dbg !1111

if.end90:                                         ; preds = %if.end87
  %cmp91 = icmp eq i32 %phrase, 33, !dbg !1113
  br i1 %cmp91, label %if.then92, label %if.end93, !dbg !1115

if.then92:                                        ; preds = %if.end90
  br label %case_33, !dbg !1116

if.end93:                                         ; preds = %if.end90
  %cmp94 = icmp eq i32 %phrase, 34, !dbg !1118
  br i1 %cmp94, label %if.then95, label %if.end96, !dbg !1120

if.then95:                                        ; preds = %if.end93
  br label %case_34, !dbg !1121

if.end96:                                         ; preds = %if.end93
  %cmp97 = icmp eq i32 %phrase, 31, !dbg !1123
  br i1 %cmp97, label %if.then98, label %if.end99, !dbg !1125

if.then98:                                        ; preds = %if.end96
  br label %case_31, !dbg !1126

if.end99:                                         ; preds = %if.end96
  %cmp100 = icmp eq i32 %phrase, 32, !dbg !1128
  br i1 %cmp100, label %if.then101, label %if.end102, !dbg !1130

if.then101:                                       ; preds = %if.end99
  br label %case_32, !dbg !1131

if.end102:                                        ; preds = %if.end99
  %cmp103 = icmp eq i32 %phrase, 35, !dbg !1133
  br i1 %cmp103, label %if.then104, label %if.end105, !dbg !1135

if.then104:                                       ; preds = %if.end102
  br label %case_35, !dbg !1136

if.end105:                                        ; preds = %if.end102
  %cmp106 = icmp eq i32 %phrase, 36, !dbg !1138
  br i1 %cmp106, label %if.then107, label %if.end108, !dbg !1140

if.then107:                                       ; preds = %if.end105
  br label %case_36, !dbg !1141

if.end108:                                        ; preds = %if.end105
  br label %switch_default, !dbg !1143

case_0:                                           ; preds = %if.then
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)), !dbg !1144
  br label %switch_break, !dbg !1147

case_1:                                           ; preds = %if.then2
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)), !dbg !1148
  br label %switch_break, !dbg !1151

case_2:                                           ; preds = %if.then5
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !1152
  br label %switch_break, !dbg !1155

case_3:                                           ; preds = %if.then8
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !1156
  br label %switch_break, !dbg !1159

case_4:                                           ; preds = %if.then11
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)), !dbg !1160
  br label %switch_break, !dbg !1163

case_5:                                           ; preds = %if.then14
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1164
  br label %switch_break, !dbg !1167

case_6:                                           ; preds = %if.then17
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)), !dbg !1168
  br label %switch_break, !dbg !1171

case_7:                                           ; preds = %if.then20
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !1172
  br label %switch_break, !dbg !1175

case_8:                                           ; preds = %if.then23
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !1176
  br label %switch_break, !dbg !1179

case_9:                                           ; preds = %if.then26
  call void @sayfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)), !dbg !1180
  br label %switch_break, !dbg !1183

case_10:                                          ; preds = %if.then29
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)), !dbg !1184
  br label %switch_break, !dbg !1187

case_11:                                          ; preds = %if.then32
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !1188
  br label %switch_break, !dbg !1191

case_12:                                          ; preds = %if.then35
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)), !dbg !1192
  br label %switch_break, !dbg !1195

case_13:                                          ; preds = %if.then38
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)), !dbg !1196
  br label %switch_break, !dbg !1199

case_14:                                          ; preds = %if.then41
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)), !dbg !1200
  br label %switch_break, !dbg !1203

case_15:                                          ; preds = %if.then44
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)), !dbg !1204
  br label %switch_break, !dbg !1207

case_16:                                          ; preds = %if.then47
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)), !dbg !1208
  br label %switch_break, !dbg !1211

case_17:                                          ; preds = %if.then50
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)), !dbg !1212
  br label %switch_break, !dbg !1215

case_18:                                          ; preds = %if.then53
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)), !dbg !1216
  br label %switch_break, !dbg !1219

case_19:                                          ; preds = %if.then56
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)), !dbg !1220
  br label %switch_break, !dbg !1223

case_20:                                          ; preds = %if.then59
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)), !dbg !1224
  br label %switch_break, !dbg !1227

case_21:                                          ; preds = %if.then62
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)), !dbg !1228
  br label %switch_break, !dbg !1231

case_22:                                          ; preds = %if.then65
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)), !dbg !1232
  br label %switch_break, !dbg !1235

case_23:                                          ; preds = %if.then68
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)), !dbg !1236
  br label %switch_break, !dbg !1239

case_24:                                          ; preds = %if.then71
  call void @sayfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)), !dbg !1240
  br label %switch_break, !dbg !1243

case_25:                                          ; preds = %if.then74
  call void @sayfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)), !dbg !1244
  br label %switch_break, !dbg !1247

case_26:                                          ; preds = %if.then77
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)), !dbg !1248
  br label %switch_break, !dbg !1251

case_27:                                          ; preds = %if.then80
  call void @sayfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)), !dbg !1252
  br label %switch_break, !dbg !1255

case_28:                                          ; preds = %if.then83
  call void @sayfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !1256
  br label %switch_break, !dbg !1259

case_29:                                          ; preds = %if.then86
  call void @sayfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0)), !dbg !1260
  br label %switch_break, !dbg !1263

case_30:                                          ; preds = %if.then89
  call void @sayfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)), !dbg !1264
  br label %switch_break, !dbg !1267

case_33:                                          ; preds = %if.then92
  call void @sayfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0)), !dbg !1268
  br label %switch_break, !dbg !1271

case_34:                                          ; preds = %if.then95
  call void @sayfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0)), !dbg !1272
  br label %switch_break, !dbg !1275

case_31:                                          ; preds = %if.then98
  call void @sayfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)), !dbg !1276
  br label %switch_break, !dbg !1279

case_32:                                          ; preds = %if.then101
  call void @sayfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0)), !dbg !1280
  br label %switch_break, !dbg !1283

case_35:                                          ; preds = %if.then104
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)), !dbg !1284
  br label %switch_break, !dbg !1287

case_36:                                          ; preds = %if.then107
  call void @sayfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)), !dbg !1288
  br label %switch_break, !dbg !1291

switch_default:                                   ; preds = %if.end108
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1292
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !1295
  call void @exit(i32 1) #8, !dbg !1296
  unreachable, !dbg !1296

switch_break:                                     ; preds = %case_36, %case_35, %case_32, %case_31, %case_34, %case_33, %case_30, %case_29, %case_28, %case_27, %case_26, %case_25, %case_24, %case_23, %case_22, %case_21, %case_20, %case_19, %case_18, %case_17, %case_16, %case_15, %case_14, %case_13, %case_12, %case_11, %case_10, %case_9, %case_8, %case_7, %case_6, %case_5, %case_4, %case_3, %case_2, %case_1, %case_0
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind ssp uwtable
define void @saynumber(i32 %n, i32 %leadingzero) #0 !dbg !1299 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %leadingzero, metadata !1304, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.declare(metadata !4, metadata !1305, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata !4, metadata !1307, metadata !DIExpression()), !dbg !1308
  %rem = srem i32 %n, 10, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1311, metadata !DIExpression()), !dbg !1303
  %div = sdiv i32 %n, 10, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %div, metadata !1313, metadata !DIExpression()), !dbg !1303
  %cmp = icmp eq i32 %div, 0, !dbg !1314
  br i1 %cmp, label %if.then, label %if.end, !dbg !1317

if.then:                                          ; preds = %entry
  br label %case_0, !dbg !1318

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %div, 1, !dbg !1320
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1322

if.then2:                                         ; preds = %if.end
  br label %case_1, !dbg !1323

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %div, 2, !dbg !1325
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1327

if.then5:                                         ; preds = %if.end3
  br label %case_2___0, !dbg !1328

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %div, 3, !dbg !1330
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1332

if.then8:                                         ; preds = %if.end6
  br label %case_3___0, !dbg !1333

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %div, 4, !dbg !1335
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1337

if.then11:                                        ; preds = %if.end9
  br label %case_4___0, !dbg !1338

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %div, 5, !dbg !1340
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1342

if.then14:                                        ; preds = %if.end12
  br label %case_5___0, !dbg !1343

if.end15:                                         ; preds = %if.end12
  br label %switch_default___0, !dbg !1345

case_0:                                           ; preds = %if.then
  %tobool = icmp ne i32 %leadingzero, 0, !dbg !1346
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !1348

if.then16:                                        ; preds = %case_0
  call void @sayphrase(i32 26), !dbg !1349
  br label %if.end17, !dbg !1353

if.end17:                                         ; preds = %if.then16, %case_0
  call void @saydigit(i32 %rem), !dbg !1354
  br label %switch_break, !dbg !1357

case_1:                                           ; preds = %if.then2
  %cmp18 = icmp eq i32 %rem, 0, !dbg !1358
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1361

if.then19:                                        ; preds = %case_1
  br label %case_0___0, !dbg !1362

if.end20:                                         ; preds = %case_1
  %cmp21 = icmp eq i32 %rem, 1, !dbg !1364
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1366

if.then22:                                        ; preds = %if.end20
  br label %case_1___0, !dbg !1367

if.end23:                                         ; preds = %if.end20
  %cmp24 = icmp eq i32 %rem, 2, !dbg !1369
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1371

if.then25:                                        ; preds = %if.end23
  br label %case_2, !dbg !1372

if.end26:                                         ; preds = %if.end23
  %cmp27 = icmp eq i32 %rem, 3, !dbg !1374
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1376

if.then28:                                        ; preds = %if.end26
  br label %case_3, !dbg !1377

if.end29:                                         ; preds = %if.end26
  %cmp30 = icmp eq i32 %rem, 4, !dbg !1379
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1381

if.then31:                                        ; preds = %if.end29
  br label %case_4, !dbg !1382

if.end32:                                         ; preds = %if.end29
  %cmp33 = icmp eq i32 %rem, 5, !dbg !1384
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1386

if.then34:                                        ; preds = %if.end32
  br label %case_5, !dbg !1387

if.end35:                                         ; preds = %if.end32
  %cmp36 = icmp eq i32 %rem, 6, !dbg !1389
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1391

if.then37:                                        ; preds = %if.end35
  br label %case_6, !dbg !1392

if.end38:                                         ; preds = %if.end35
  %cmp39 = icmp eq i32 %rem, 7, !dbg !1394
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1396

if.then40:                                        ; preds = %if.end38
  br label %case_7, !dbg !1397

if.end41:                                         ; preds = %if.end38
  %cmp42 = icmp eq i32 %rem, 8, !dbg !1399
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1401

if.then43:                                        ; preds = %if.end41
  br label %case_8, !dbg !1402

if.end44:                                         ; preds = %if.end41
  %cmp45 = icmp eq i32 %rem, 9, !dbg !1404
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1406

if.then46:                                        ; preds = %if.end44
  br label %case_9, !dbg !1407

if.end47:                                         ; preds = %if.end44
  br label %switch_default, !dbg !1409

case_0___0:                                       ; preds = %if.then19
  call void @sayphrase(i32 10), !dbg !1410
  br label %switch_break___0, !dbg !1413

case_1___0:                                       ; preds = %if.then22
  call void @sayphrase(i32 11), !dbg !1414
  br label %switch_break___0, !dbg !1417

case_2:                                           ; preds = %if.then25
  call void @sayphrase(i32 12), !dbg !1418
  br label %switch_break___0, !dbg !1421

case_3:                                           ; preds = %if.then28
  call void @sayphrase(i32 13), !dbg !1422
  br label %switch_break___0, !dbg !1425

case_4:                                           ; preds = %if.then31
  call void @sayphrase(i32 14), !dbg !1426
  br label %switch_break___0, !dbg !1429

case_5:                                           ; preds = %if.then34
  call void @sayphrase(i32 15), !dbg !1430
  br label %switch_break___0, !dbg !1433

case_6:                                           ; preds = %if.then37
  call void @sayphrase(i32 16), !dbg !1434
  br label %switch_break___0, !dbg !1437

case_7:                                           ; preds = %if.then40
  call void @sayphrase(i32 17), !dbg !1438
  br label %switch_break___0, !dbg !1441

case_8:                                           ; preds = %if.then43
  call void @sayphrase(i32 18), !dbg !1442
  br label %switch_break___0, !dbg !1445

case_9:                                           ; preds = %if.then46
  call void @sayphrase(i32 19), !dbg !1446
  br label %switch_break___0, !dbg !1449

switch_default:                                   ; preds = %if.end47
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1450
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !1453
  call void @exit(i32 1) #8, !dbg !1454
  unreachable, !dbg !1454

switch_break___0:                                 ; preds = %case_9, %case_8, %case_7, %case_6, %case_5, %case_4, %case_3, %case_2, %case_1___0, %case_0___0
  br label %switch_break, !dbg !1456

case_2___0:                                       ; preds = %if.then5
  call void @sayphrase(i32 20), !dbg !1457
  %cmp48 = icmp ne i32 %rem, 0, !dbg !1460
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1462

if.then49:                                        ; preds = %case_2___0
  call void @saydigit(i32 %rem), !dbg !1463
  br label %if.end50, !dbg !1467

if.end50:                                         ; preds = %if.then49, %case_2___0
  br label %switch_break, !dbg !1468

case_3___0:                                       ; preds = %if.then8
  call void @sayphrase(i32 21), !dbg !1469
  %cmp51 = icmp ne i32 %rem, 0, !dbg !1472
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1474

if.then52:                                        ; preds = %case_3___0
  call void @saydigit(i32 %rem), !dbg !1475
  br label %if.end53, !dbg !1479

if.end53:                                         ; preds = %if.then52, %case_3___0
  br label %switch_break, !dbg !1480

case_4___0:                                       ; preds = %if.then11
  call void @sayphrase(i32 22), !dbg !1481
  %cmp54 = icmp ne i32 %rem, 0, !dbg !1484
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1486

if.then55:                                        ; preds = %case_4___0
  call void @saydigit(i32 %rem), !dbg !1487
  br label %if.end56, !dbg !1491

if.end56:                                         ; preds = %if.then55, %case_4___0
  br label %switch_break, !dbg !1492

case_5___0:                                       ; preds = %if.then14
  call void @sayphrase(i32 23), !dbg !1493
  %cmp57 = icmp ne i32 %rem, 0, !dbg !1496
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1498

if.then58:                                        ; preds = %case_5___0
  call void @saydigit(i32 %rem), !dbg !1499
  br label %if.end59, !dbg !1503

if.end59:                                         ; preds = %if.then58, %case_5___0
  br label %switch_break, !dbg !1504

switch_default___0:                               ; preds = %if.end15
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1505
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !1508
  call void @exit(i32 1) #8, !dbg !1509
  unreachable, !dbg !1509

switch_break:                                     ; preds = %if.end59, %if.end56, %if.end53, %if.end50, %switch_break___0, %if.end17
  ret void, !dbg !1511
}

; Function Attrs: noinline nounwind ssp uwtable
define void @saydigit(i32 %n) #0 !dbg !1512 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !1513, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.declare(metadata !4, metadata !1515, metadata !DIExpression()), !dbg !1516
  %cmp = icmp eq i32 %n, 0, !dbg !1517
  br i1 %cmp, label %if.then, label %if.end, !dbg !1521

if.then:                                          ; preds = %entry
  br label %case_0, !dbg !1522

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1, !dbg !1524
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1526

if.then2:                                         ; preds = %if.end
  br label %case_1, !dbg !1527

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %n, 2, !dbg !1529
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1531

if.then5:                                         ; preds = %if.end3
  br label %case_2, !dbg !1532

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %n, 3, !dbg !1534
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1536

if.then8:                                         ; preds = %if.end6
  br label %case_3, !dbg !1537

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %n, 4, !dbg !1539
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1541

if.then11:                                        ; preds = %if.end9
  br label %case_4, !dbg !1542

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %n, 5, !dbg !1544
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1546

if.then14:                                        ; preds = %if.end12
  br label %case_5, !dbg !1547

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %n, 6, !dbg !1549
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1551

if.then17:                                        ; preds = %if.end15
  br label %case_6, !dbg !1552

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %n, 7, !dbg !1554
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1556

if.then20:                                        ; preds = %if.end18
  br label %case_7, !dbg !1557

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %n, 8, !dbg !1559
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1561

if.then23:                                        ; preds = %if.end21
  br label %case_8, !dbg !1562

if.end24:                                         ; preds = %if.end21
  %cmp25 = icmp eq i32 %n, 9, !dbg !1564
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1566

if.then26:                                        ; preds = %if.end24
  br label %case_9, !dbg !1567

if.end27:                                         ; preds = %if.end24
  br label %switch_default, !dbg !1569

case_0:                                           ; preds = %if.then
  call void @sayphrase(i32 0), !dbg !1570
  br label %switch_break, !dbg !1573

case_1:                                           ; preds = %if.then2
  call void @sayphrase(i32 1), !dbg !1574
  br label %switch_break, !dbg !1577

case_2:                                           ; preds = %if.then5
  call void @sayphrase(i32 2), !dbg !1578
  br label %switch_break, !dbg !1581

case_3:                                           ; preds = %if.then8
  call void @sayphrase(i32 3), !dbg !1582
  br label %switch_break, !dbg !1585

case_4:                                           ; preds = %if.then11
  call void @sayphrase(i32 4), !dbg !1586
  br label %switch_break, !dbg !1589

case_5:                                           ; preds = %if.then14
  call void @sayphrase(i32 5), !dbg !1590
  br label %switch_break, !dbg !1593

case_6:                                           ; preds = %if.then17
  call void @sayphrase(i32 6), !dbg !1594
  br label %switch_break, !dbg !1597

case_7:                                           ; preds = %if.then20
  call void @sayphrase(i32 7), !dbg !1598
  br label %switch_break, !dbg !1601

case_8:                                           ; preds = %if.then23
  call void @sayphrase(i32 8), !dbg !1602
  br label %switch_break, !dbg !1605

case_9:                                           ; preds = %if.then26
  call void @sayphrase(i32 9), !dbg !1606
  br label %switch_break, !dbg !1609

switch_default:                                   ; preds = %if.end27
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1610
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !1613
  call void @exit(i32 1) #8, !dbg !1614
  unreachable, !dbg !1614

switch_break:                                     ; preds = %case_9, %case_8, %case_7, %case_6, %case_5, %case_4, %case_3, %case_2, %case_1, %case_0
  ret void, !dbg !1616
}

; Function Attrs: noinline nounwind ssp uwtable
define void @sayfile(i8* %filename) #0 !dbg !1617 {
entry:
  %status = alloca i32, align 4
  %pathname = alloca [200 x i8], align 16
  %__constr_expr_0 = alloca %union.__anonunion_50, align 4
  call void @llvm.dbg.value(metadata i8* %filename, metadata !1620, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1622, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.declare(metadata [200 x i8]* %pathname, metadata !1624, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.declare(metadata %union.__anonunion_50* %__constr_expr_0, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata !4, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.declare(metadata !4, metadata !1637, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.declare(metadata !4, metadata !1639, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.declare(metadata !4, metadata !1641, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.declare(metadata !4, metadata !1643, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.declare(metadata !4, metadata !1645, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.declare(metadata !4, metadata !1647, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.declare(metadata !4, metadata !1649, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.declare(metadata !4, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.declare(metadata !4, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.declare(metadata !4, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata !4, metadata !1657, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.declare(metadata !4, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata !4, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.declare(metadata !4, metadata !1663, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.declare(metadata !4, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata !4, metadata !1667, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.declare(metadata !4, metadata !1669, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.declare(metadata !4, metadata !1671, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.declare(metadata !4, metadata !1673, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.declare(metadata !4, metadata !1675, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.declare(metadata !4, metadata !1677, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.declare(metadata !4, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.declare(metadata !4, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.declare(metadata !4, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.declare(metadata !4, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.declare(metadata !4, metadata !1687, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.declare(metadata !4, metadata !1689, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.declare(metadata !4, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.declare(metadata !4, metadata !1693, metadata !DIExpression()), !dbg !1694
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %pathname, i32 0, i32 0, !dbg !1695
  %0 = load i8*, i8** @opt_sound_dir, align 8, !dbg !1699
  %call = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay, i32 200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* %0, i8* %filename) #6, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %call, metadata !1701, metadata !DIExpression()), !dbg !1621
  %cmp = icmp sge i32 %call, 200, !dbg !1702
  br i1 %cmp, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1705
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0)), !dbg !1709
  call void @exit(i32 1) #8, !dbg !1710
  unreachable, !dbg !1710

if.end:                                           ; preds = %entry
  %call2 = call i32 @fork() #6, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1715, metadata !DIExpression()), !dbg !1621
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1716
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1718

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1719
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1723
  call void @exit(i32 1) #8, !dbg !1724
  unreachable, !dbg !1724

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %call2, 0, !dbg !1726
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !1728

if.then7:                                         ; preds = %if.else
  %3 = load i32, i32* @opt_to_stdout, align 4, !dbg !1729
  %tobool = icmp ne i32 %3, 0, !dbg !1729
  br i1 %tobool, label %if.then8, label %if.else11, !dbg !1732

if.then8:                                         ; preds = %if.then7
  %4 = load i8*, i8** @opt_volume, align 8, !dbg !1733
  %arraydecay9 = getelementptr inbounds [200 x i8], [200 x i8]* %pathname, i32 0, i32 0, !dbg !1737
  %call10 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i8* null) #6, !dbg !1738
  br label %if.end14, !dbg !1739

if.else11:                                        ; preds = %if.then7
  %5 = load i8*, i8** @opt_volume, align 8, !dbg !1740
  %arraydecay12 = getelementptr inbounds [200 x i8], [200 x i8]* %pathname, i32 0, i32 0, !dbg !1744
  %6 = load i8*, i8** @opt_sound_device, align 8, !dbg !1745
  %call13 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* %6, i8* null) #6, !dbg !1746
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1747
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0)), !dbg !1750
  call void @exit(i32 1) #8, !dbg !1751
  unreachable, !dbg !1751

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %call18 = call i32 @waitpid(i32 %call2, i32* %status, i32 0), !dbg !1753
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1756, metadata !DIExpression()), !dbg !1621
  %cmp19 = icmp ne i32 %call18, %call2, !dbg !1757
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1759

if.then20:                                        ; preds = %if.end17
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1760
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0)), !dbg !1764
  call void @exit(i32 1) #8, !dbg !1765
  unreachable, !dbg !1765

if.end22:                                         ; preds = %if.end17
  %9 = load i32, i32* %status, align 4, !dbg !1767
  %cmp23 = icmp ne i32 %9, 0, !dbg !1769
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1770

if.then24:                                        ; preds = %if.end22
  %10 = load i32, i32* %status, align 4, !dbg !1771
  %__in = bitcast %union.__anonunion_50* %__constr_expr_0 to i32*, !dbg !1774
  store i32 %10, i32* %__in, align 4, !dbg !1775
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1776
  %__i = bitcast %union.__anonunion_50* %__constr_expr_0 to i32*, !dbg !1778
  %12 = load i32, i32* %__i, align 4, !dbg !1778
  %and = and i32 %12, 65280, !dbg !1779
  %shr = ashr i32 %and, 8, !dbg !1780
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i32 0, i32 0), i32 %shr), !dbg !1781
  call void @exit(i32 1) #8, !dbg !1782
  unreachable, !dbg !1782

if.end26:                                         ; preds = %if.end22
  ret void, !dbg !1784
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #2

declare i32 @waitpid(i32, i32*, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!185, !186, !187, !188, !189}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opt_to_stdout", scope: !2, file: !174, line: 96, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !171, nameTableKind: GNU)
!3 = !DIFile(filename: "c/saytime-1.0.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !8, !60, !101, !93, !17, !102, !104, !48, !106, !164, !75, !165, !166, !20, !157}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !11, line: 25, size: 1216, elements: !12)
!11 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!12 = !{!13, !86, !96, !97}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !10, file: !11, line: 26, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___sigaction_handler_44", file: !11, line: 25, size: 64, elements: !15)
!15 = !{!16, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !14, file: !11, line: 26, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !14, file: !11, line: 27, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !20, !25, !60}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !27, line: 51, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "siginfo", file: !27, line: 51, size: 1088, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !28, file: !27, line: 52, baseType: !20, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !28, file: !27, line: 53, baseType: !20, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !28, file: !27, line: 54, baseType: !20, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !28, file: !27, line: 55, baseType: !34, size: 960, offset: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion__sifields_26", file: !27, line: 51, size: 960, elements: !35)
!35 = !{!36, !40, !49, !61, !67, !77, !81}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !34, file: !27, line: 52, baseType: !37, size: 928)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 928, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 29)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !34, file: !27, line: 53, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__kill_27", file: !27, line: 51, size: 64, elements: !42)
!42 = !{!43, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !41, file: !27, line: 52, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !45, line: 143, baseType: !20)
!45 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !41, file: !27, line: 53, baseType: !47, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !45, line: 135, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !34, file: !27, line: 54, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__timer_28", file: !27, line: 51, size: 128, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !50, file: !27, line: 52, baseType: !20, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !50, file: !27, line: 53, baseType: !20, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !50, file: !27, line: 54, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !27, line: 33, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !27, line: 33, size: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !56, file: !27, line: 34, baseType: !20, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !56, file: !27, line: 35, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !34, file: !27, line: 55, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__rt_29", file: !27, line: 51, size: 128, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !62, file: !27, line: 52, baseType: !44, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !62, file: !27, line: 53, baseType: !47, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !62, file: !27, line: 54, baseType: !55, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !34, file: !27, line: 56, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigchld_30", file: !27, line: 51, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !68, file: !27, line: 52, baseType: !44, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !68, file: !27, line: 53, baseType: !47, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !68, file: !27, line: 54, baseType: !20, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !68, file: !27, line: 55, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !45, line: 145, baseType: !75)
!75 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !68, file: !27, line: 56, baseType: !74, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !34, file: !27, line: 57, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigfault_31", file: !27, line: 51, size: 64, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !78, file: !27, line: 52, baseType: !60, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !34, file: !27, line: 58, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigpoll_32", file: !27, line: 51, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !82, file: !27, line: 52, baseType: !75, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !82, file: !27, line: 53, baseType: !20, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !10, file: !11, line: 27, baseType: !87, size: 1024, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !88, line: 29, baseType: !89)
!88 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct___sigset_t_6", file: !88, line: 29, size: 1024, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !89, file: !88, line: 30, baseType: !92, size: 1024)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !94)
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !{!95}
!95 = !DISubrange(count: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !10, file: !11, line: 28, baseType: !20, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !10, file: !11, line: 29, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !108, line: 49, baseType: !109)
!108 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !110, line: 271, size: 1728, elements: !111)
!110 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !132, !133, !134, !135, !137, !139, !141, !145, !148, !152, !153, !154, !155, !156, !159, !160}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !109, file: !110, line: 272, baseType: !20, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !109, file: !110, line: 273, baseType: !6, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !109, file: !110, line: 274, baseType: !6, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !109, file: !110, line: 275, baseType: !6, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !109, file: !110, line: 276, baseType: !6, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !109, file: !110, line: 277, baseType: !6, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !109, file: !110, line: 278, baseType: !6, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !109, file: !110, line: 279, baseType: !6, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !109, file: !110, line: 280, baseType: !6, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !109, file: !110, line: 281, baseType: !6, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !109, file: !110, line: 282, baseType: !6, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !109, file: !110, line: 283, baseType: !6, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !109, file: !110, line: 284, baseType: !125, size: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !110, line: 186, size: 192, elements: !127)
!127 = !{!128, !129, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !126, file: !110, line: 187, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !126, file: !110, line: 188, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !126, file: !110, line: 189, baseType: !20, size: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !109, file: !110, line: 285, baseType: !130, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !109, file: !110, line: 286, baseType: !20, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !109, file: !110, line: 287, baseType: !20, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !109, file: !110, line: 288, baseType: !136, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 141, baseType: !75)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !109, file: !110, line: 289, baseType: !138, size: 16, offset: 1024)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !109, file: !110, line: 290, baseType: !140, size: 8, offset: 1040)
!140 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !109, file: !110, line: 291, baseType: !142, size: 8, offset: 1048)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !109, file: !110, line: 292, baseType: !146, size: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !110, line: 180, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !109, file: !110, line: 293, baseType: !149, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 142, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !45, line: 56, baseType: !151)
!151 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !109, file: !110, line: 294, baseType: !60, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !109, file: !110, line: 295, baseType: !60, size: 64, offset: 1280)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !109, file: !110, line: 296, baseType: !60, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !109, file: !110, line: 297, baseType: !60, size: 64, offset: 1408)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !109, file: !110, line: 298, baseType: !157, size: 32, offset: 1472)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 211, baseType: !48)
!158 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !109, file: !110, line: 299, baseType: !20, size: 32, offset: 1504)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !109, file: !110, line: 300, baseType: !161, size: 192, offset: 1536)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 24)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !45, line: 150, baseType: !48)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !169, line: 76, baseType: !170)
!169 = !DIFile(filename: "/usr/include/time.h", directory: "")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !45, line: 149, baseType: !75)
!171 = !{!0, !172, !175, !177, !179, !181, !183}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "opt_sound_device", scope: !2, file: !174, line: 97, type: !6, isLocal: false, isDefinition: true)
!174 = !DIFile(filename: "/home/wslee/benchmarks/sound/saytime-1.0/saytime.c", directory: "")
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "opt_sound_dir", scope: !2, file: !174, line: 98, type: !6, isLocal: false, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "opt_time_format", scope: !2, file: !174, line: 99, type: !6, isLocal: false, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "opt_interval", scope: !2, file: !174, line: 100, type: !6, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "opt_volume", scope: !2, file: !174, line: 101, type: !6, isLocal: false, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "die", scope: !2, file: !174, line: 110, type: !20, isLocal: false, isDefinition: true)
!185 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!186 = !{i32 2, !"Dwarf Version", i32 4}
!187 = !{i32 2, !"Debug Info Version", i32 3}
!188 = !{i32 1, !"wchar_size", i32 4}
!189 = !{i32 7, !"PIC Level", i32 2}
!190 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!191 = distinct !DISubprogram(name: "main", scope: !174, file: !174, line: 111, type: !192, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!192 = !DISubroutineType(types: !193)
!193 = !{!20, !20, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!195 = !DILocalVariable(name: "argc", arg: 1, scope: !191, file: !174, line: 111, type: !20)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocalVariable(name: "argv", arg: 2, scope: !191, file: !174, line: 111, type: !194)
!198 = !DILocalVariable(name: "clock___0", scope: !191, file: !174, line: 113, type: !75)
!199 = !DILocation(line: 113, column: 8, scope: !191)
!200 = !DILocalVariable(name: "new_action", scope: !191, file: !174, line: 119, type: !10)
!201 = !DILocation(line: 119, column: 20, scope: !191)
!202 = !DILocalVariable(name: "old_action", scope: !191, file: !174, line: 120, type: !10)
!203 = !DILocation(line: 120, column: 20, scope: !191)
!204 = !DILocalVariable(name: "__cil_tmp14", scope: !191, file: !174, line: 124, type: !6)
!205 = !DILocation(line: 124, column: 9, scope: !191)
!206 = !DILocalVariable(name: "__cil_tmp15", scope: !191, file: !174, line: 125, type: !6)
!207 = !DILocation(line: 125, column: 9, scope: !191)
!208 = !DILocalVariable(name: "__cil_tmp16", scope: !191, file: !174, line: 126, type: !6)
!209 = !DILocation(line: 126, column: 9, scope: !191)
!210 = !DILocalVariable(name: "__cil_tmp17", scope: !191, file: !174, line: 127, type: !6)
!211 = !DILocation(line: 127, column: 9, scope: !191)
!212 = !DILocalVariable(name: "__cil_tmp18", scope: !191, file: !174, line: 128, type: !6)
!213 = !DILocation(line: 128, column: 9, scope: !191)
!214 = !DILocalVariable(name: "__cil_tmp19", scope: !191, file: !174, line: 129, type: !6)
!215 = !DILocation(line: 129, column: 9, scope: !191)
!216 = !DILocalVariable(name: "__cil_tmp20", scope: !191, file: !174, line: 130, type: !6)
!217 = !DILocation(line: 130, column: 9, scope: !191)
!218 = !DILocalVariable(name: "opt_string", scope: !191, file: !174, line: 115, type: !6)
!219 = !DILocalVariable(name: "interval", scope: !191, file: !174, line: 118, type: !48)
!220 = !DILocation(line: 126, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !174, line: 133, column: 3)
!222 = distinct !DILexicalBlock(scope: !191, file: !174, line: 132, column: 3)
!223 = !DILocation(line: 126, column: 34, scope: !221)
!224 = !DILocation(line: 126, column: 45, scope: !221)
!225 = !DILocation(line: 127, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !174, line: 127, column: 3)
!227 = !DILocation(line: 127, column: 3, scope: !226)
!228 = !DILocation(line: 128, column: 14, scope: !221)
!229 = !DILocation(line: 128, column: 23, scope: !221)
!230 = !DILocation(line: 131, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !221, file: !174, line: 129, column: 3)
!232 = !DILocation(line: 132, column: 34, scope: !233)
!233 = distinct !DILexicalBlock(scope: !222, file: !174, line: 132, column: 7)
!234 = !DILocation(line: 132, column: 54, scope: !233)
!235 = !DILocation(line: 132, column: 7, scope: !233)
!236 = !DILocation(line: 132, column: 65, scope: !233)
!237 = !DILocation(line: 132, column: 7, scope: !222)
!238 = !DILocation(line: 133, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !174, line: 134, column: 5)
!240 = distinct !DILexicalBlock(scope: !241, file: !174, line: 133, column: 5)
!241 = distinct !DILexicalBlock(scope: !233, file: !174, line: 132, column: 106)
!242 = !DILocation(line: 136, column: 3, scope: !241)
!243 = !DILocation(line: 135, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !174, line: 138, column: 3)
!245 = distinct !DILexicalBlock(scope: !222, file: !174, line: 137, column: 3)
!246 = !DILocation(line: 135, column: 13, scope: !244)
!247 = !DILocation(line: 135, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !174, line: 139, column: 5)
!249 = distinct !DILexicalBlock(scope: !250, file: !174, line: 138, column: 5)
!250 = distinct !DILexicalBlock(scope: !244, file: !174, line: 135, column: 13)
!251 = !DILocalVariable(name: "op", scope: !191, file: !174, line: 116, type: !20)
!252 = !DILocation(line: 135, column: 15, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !174, line: 135, column: 9)
!254 = !DILocation(line: 135, column: 9, scope: !250)
!255 = !DILocation(line: 135, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !174, line: 135, column: 23)
!257 = !DILocation(line: 146, column: 12, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !174, line: 146, column: 9)
!259 = distinct !DILexicalBlock(scope: !250, file: !174, line: 137, column: 5)
!260 = !DILocation(line: 146, column: 9, scope: !259)
!261 = !DILocation(line: 146, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !174, line: 146, column: 20)
!263 = !DILocation(line: 148, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !174, line: 148, column: 9)
!265 = !DILocation(line: 148, column: 9, scope: !259)
!266 = !DILocation(line: 148, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !174, line: 148, column: 20)
!268 = !DILocation(line: 150, column: 12, scope: !269)
!269 = distinct !DILexicalBlock(scope: !259, file: !174, line: 150, column: 9)
!270 = !DILocation(line: 150, column: 9, scope: !259)
!271 = !DILocation(line: 150, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !174, line: 150, column: 19)
!273 = !DILocation(line: 152, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !259, file: !174, line: 152, column: 9)
!275 = !DILocation(line: 152, column: 9, scope: !259)
!276 = !DILocation(line: 152, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !174, line: 152, column: 20)
!278 = !DILocation(line: 154, column: 12, scope: !279)
!279 = distinct !DILexicalBlock(scope: !259, file: !174, line: 154, column: 9)
!280 = !DILocation(line: 154, column: 9, scope: !259)
!281 = !DILocation(line: 154, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !174, line: 154, column: 20)
!283 = !DILocation(line: 156, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !259, file: !174, line: 156, column: 9)
!285 = !DILocation(line: 156, column: 9, scope: !259)
!286 = !DILocation(line: 156, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !174, line: 156, column: 20)
!288 = !DILocation(line: 159, column: 5, scope: !259)
!289 = !DILocation(line: 146, column: 18, scope: !259)
!290 = !DILocation(line: 146, column: 16, scope: !259)
!291 = !DILocation(line: 147, column: 5, scope: !259)
!292 = !DILocation(line: 148, column: 20, scope: !259)
!293 = !DILocation(line: 148, column: 18, scope: !259)
!294 = !DILocation(line: 149, column: 5, scope: !259)
!295 = !DILocation(line: 150, column: 19, scope: !259)
!296 = !DILocation(line: 151, column: 5, scope: !259)
!297 = !DILocation(line: 152, column: 24, scope: !259)
!298 = !DILocation(line: 152, column: 22, scope: !259)
!299 = !DILocation(line: 153, column: 5, scope: !259)
!300 = !DILocation(line: 154, column: 21, scope: !259)
!301 = !DILocation(line: 154, column: 19, scope: !259)
!302 = !DILocation(line: 155, column: 5, scope: !259)
!303 = !DILocation(line: 156, column: 23, scope: !259)
!304 = !DILocation(line: 156, column: 21, scope: !259)
!305 = !DILocation(line: 157, column: 5, scope: !259)
!306 = !DILocation(line: 159, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !174, line: 160, column: 5)
!308 = distinct !DILexicalBlock(scope: !259, file: !174, line: 159, column: 5)
!309 = !DILocation(line: 161, column: 5, scope: !308)
!310 = distinct !{!310, !243, !311}
!311 = !DILocation(line: 164, column: 3, scope: !244)
!312 = !DILocation(line: 166, column: 3, scope: !244)
!313 = !DILocation(line: 163, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !222, file: !174, line: 163, column: 7)
!315 = !DILocation(line: 163, column: 7, scope: !222)
!316 = !DILocation(line: 163, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !174, line: 163, column: 9)
!318 = distinct !DILexicalBlock(scope: !314, file: !174, line: 163, column: 22)
!319 = !DILocation(line: 163, column: 9, scope: !317)
!320 = !DILocation(line: 163, column: 42, scope: !317)
!321 = !DILocation(line: 163, column: 9, scope: !318)
!322 = !DILocation(line: 164, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !174, line: 165, column: 7)
!324 = distinct !DILexicalBlock(scope: !325, file: !174, line: 164, column: 7)
!325 = distinct !DILexicalBlock(scope: !317, file: !174, line: 163, column: 74)
!326 = !DILocation(line: 165, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !174, line: 166, column: 7)
!328 = !DILocation(line: 168, column: 5, scope: !325)
!329 = !DILocation(line: 163, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !317, file: !174, line: 168, column: 12)
!331 = !DILocation(line: 165, column: 3, scope: !318)
!332 = !DILocation(line: 167, column: 23, scope: !333)
!333 = distinct !DILexicalBlock(scope: !314, file: !174, line: 167, column: 7)
!334 = !DILocation(line: 167, column: 7, scope: !333)
!335 = !DILocation(line: 167, column: 40, scope: !333)
!336 = !DILocation(line: 167, column: 7, scope: !314)
!337 = !DILocation(line: 168, column: 22, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !174, line: 167, column: 72)
!339 = !DILocation(line: 169, column: 3, scope: !338)
!340 = !DILocation(line: 170, column: 23, scope: !341)
!341 = distinct !DILexicalBlock(scope: !222, file: !174, line: 170, column: 7)
!342 = !DILocation(line: 170, column: 7, scope: !341)
!343 = !DILocation(line: 170, column: 39, scope: !341)
!344 = !DILocation(line: 170, column: 7, scope: !222)
!345 = !DILocation(line: 171, column: 21, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !174, line: 170, column: 71)
!347 = !DILocation(line: 172, column: 3, scope: !346)
!348 = !DILocation(line: 172, column: 23, scope: !349)
!349 = distinct !DILexicalBlock(scope: !222, file: !174, line: 172, column: 7)
!350 = !DILocation(line: 172, column: 7, scope: !349)
!351 = !DILocation(line: 172, column: 36, scope: !349)
!352 = !DILocation(line: 172, column: 7, scope: !222)
!353 = !DILocation(line: 173, column: 32, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !174, line: 174, column: 5)
!355 = distinct !DILexicalBlock(scope: !356, file: !174, line: 173, column: 5)
!356 = distinct !DILexicalBlock(scope: !349, file: !174, line: 172, column: 68)
!357 = !DILocation(line: 173, column: 11, scope: !354)
!358 = !DILocalVariable(name: "tmp", scope: !191, file: !174, line: 121, type: !75)
!359 = !DILocation(line: 173, column: 16, scope: !355)
!360 = !DILocation(line: 174, column: 18, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !174, line: 174, column: 9)
!362 = !DILocation(line: 174, column: 9, scope: !356)
!363 = !DILocation(line: 176, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !174, line: 174, column: 25)
!365 = !DILocation(line: 0, scope: !356)
!366 = !DILocation(line: 177, column: 3, scope: !356)
!367 = !DILocation(line: 0, scope: !222)
!368 = !DILocation(line: 177, column: 23, scope: !369)
!369 = distinct !DILexicalBlock(scope: !222, file: !174, line: 177, column: 7)
!370 = !DILocation(line: 177, column: 7, scope: !369)
!371 = !DILocation(line: 177, column: 34, scope: !369)
!372 = !DILocation(line: 177, column: 7, scope: !222)
!373 = !DILocation(line: 178, column: 16, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !174, line: 177, column: 66)
!375 = !DILocation(line: 179, column: 3, scope: !374)
!376 = !DILocation(line: 179, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !222, file: !174, line: 179, column: 7)
!378 = !DILocation(line: 179, column: 7, scope: !222)
!379 = !DILocation(line: 180, column: 5, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !174, line: 181, column: 5)
!381 = distinct !DILexicalBlock(scope: !382, file: !174, line: 180, column: 5)
!382 = distinct !DILexicalBlock(scope: !377, file: !174, line: 179, column: 21)
!383 = !DILocation(line: 181, column: 12, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !174, line: 182, column: 5)
!385 = !DILocalVariable(name: "fpid", scope: !191, file: !174, line: 117, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !169, line: 174, baseType: !44)
!387 = !DILocation(line: 182, column: 14, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !174, line: 182, column: 9)
!389 = !DILocation(line: 182, column: 9, scope: !382)
!390 = !DILocation(line: 183, column: 40, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !174, line: 184, column: 7)
!392 = distinct !DILexicalBlock(scope: !393, file: !174, line: 183, column: 7)
!393 = distinct !DILexicalBlock(scope: !388, file: !174, line: 182, column: 19)
!394 = !DILocation(line: 183, column: 7, scope: !391)
!395 = !DILocation(line: 184, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !174, line: 185, column: 7)
!397 = !DILocation(line: 186, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !388, file: !174, line: 186, column: 9)
!399 = !DILocation(line: 186, column: 9, scope: !388)
!400 = !DILocation(line: 187, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !174, line: 188, column: 7)
!402 = distinct !DILexicalBlock(scope: !403, file: !174, line: 187, column: 7)
!403 = distinct !DILexicalBlock(scope: !398, file: !174, line: 186, column: 20)
!404 = !DILocation(line: 187, column: 17, scope: !401)
!405 = !DILocation(line: 187, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !174, line: 187, column: 13)
!407 = distinct !DILexicalBlock(scope: !401, file: !174, line: 187, column: 17)
!408 = !DILocation(line: 187, column: 13, scope: !407)
!409 = !DILocation(line: 187, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !174, line: 189, column: 11)
!411 = distinct !DILexicalBlock(scope: !412, file: !174, line: 188, column: 11)
!412 = distinct !DILexicalBlock(scope: !406, file: !174, line: 187, column: 20)
!413 = !DILocalVariable(name: "tmp___0", scope: !191, file: !174, line: 122, type: !168)
!414 = !DILocation(line: 187, column: 33, scope: !411)
!415 = !DILocation(line: 187, column: 31, scope: !411)
!416 = !DILocation(line: 187, column: 21, scope: !411)
!417 = !DILocation(line: 187, column: 17, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !174, line: 187, column: 15)
!419 = !DILocation(line: 187, column: 15, scope: !412)
!420 = !DILocation(line: 187, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !174, line: 187, column: 28)
!422 = !DILocation(line: 189, column: 9, scope: !412)
!423 = !DILocation(line: 187, column: 11, scope: !424)
!424 = distinct !DILexicalBlock(scope: !406, file: !174, line: 189, column: 16)
!425 = !DILocation(line: 189, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !174, line: 190, column: 9)
!427 = distinct !DILexicalBlock(scope: !407, file: !174, line: 189, column: 9)
!428 = distinct !{!428, !400, !429}
!429 = !DILocation(line: 192, column: 7, scope: !401)
!430 = !DILocation(line: 194, column: 7, scope: !401)
!431 = !DILocation(line: 190, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !174, line: 198, column: 7)
!433 = distinct !DILexicalBlock(scope: !403, file: !174, line: 197, column: 7)
!434 = !DILocation(line: 190, column: 17, scope: !432)
!435 = !DILocation(line: 190, column: 18, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !174, line: 190, column: 13)
!437 = distinct !DILexicalBlock(scope: !432, file: !174, line: 190, column: 17)
!438 = !DILocation(line: 190, column: 13, scope: !437)
!439 = !DILocation(line: 190, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !174, line: 190, column: 24)
!441 = !DILocation(line: 191, column: 21, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !174, line: 193, column: 9)
!443 = distinct !DILexicalBlock(scope: !437, file: !174, line: 192, column: 9)
!444 = !DILocation(line: 191, column: 19, scope: !442)
!445 = !DILocation(line: 192, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !174, line: 193, column: 9)
!447 = !DILocalVariable(name: "t", scope: !191, file: !174, line: 114, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !169, line: 133, size: 448, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !449, file: !169, line: 134, baseType: !20, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !449, file: !169, line: 135, baseType: !20, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !449, file: !169, line: 136, baseType: !20, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !449, file: !169, line: 137, baseType: !20, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !449, file: !169, line: 138, baseType: !20, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !449, file: !169, line: 139, baseType: !20, size: 32, offset: 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !449, file: !169, line: 140, baseType: !20, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !449, file: !169, line: 141, baseType: !20, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !449, file: !169, line: 142, baseType: !20, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !449, file: !169, line: 143, baseType: !75, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !449, file: !169, line: 144, baseType: !104, size: 64, offset: 384)
!462 = !DILocation(line: 199, column: 22, scope: !463)
!463 = distinct !DILexicalBlock(scope: !443, file: !174, line: 194, column: 9)
!464 = !DILocation(line: 199, column: 9, scope: !463)
!465 = !DILocation(line: 200, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !174, line: 203, column: 9)
!467 = distinct !DILexicalBlock(scope: !437, file: !174, line: 202, column: 9)
!468 = !DILocation(line: 200, column: 19, scope: !466)
!469 = !DILocation(line: 200, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !174, line: 200, column: 15)
!471 = distinct !DILexicalBlock(scope: !466, file: !174, line: 200, column: 19)
!472 = !DILocation(line: 200, column: 15, scope: !471)
!473 = !DILocation(line: 200, column: 23, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !174, line: 202, column: 13)
!475 = distinct !DILexicalBlock(scope: !476, file: !174, line: 201, column: 13)
!476 = distinct !DILexicalBlock(scope: !470, file: !174, line: 200, column: 22)
!477 = !DILocalVariable(name: "tmp___1", scope: !191, file: !174, line: 123, type: !168)
!478 = !DILocation(line: 200, column: 35, scope: !475)
!479 = !DILocation(line: 200, column: 33, scope: !475)
!480 = !DILocation(line: 200, column: 23, scope: !475)
!481 = !DILocation(line: 200, column: 19, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !174, line: 200, column: 17)
!483 = !DILocation(line: 200, column: 17, scope: !476)
!484 = !DILocation(line: 200, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !174, line: 200, column: 30)
!486 = !DILocation(line: 202, column: 11, scope: !476)
!487 = !DILocation(line: 200, column: 13, scope: !488)
!488 = distinct !DILexicalBlock(scope: !470, file: !174, line: 202, column: 18)
!489 = !DILocation(line: 202, column: 11, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !174, line: 203, column: 11)
!491 = distinct !DILexicalBlock(scope: !471, file: !174, line: 202, column: 11)
!492 = distinct !{!492, !465, !493}
!493 = !DILocation(line: 205, column: 9, scope: !466)
!494 = !DILocation(line: 207, column: 9, scope: !466)
!495 = distinct !{!495, !431, !496}
!496 = !DILocation(line: 210, column: 7, scope: !432)
!497 = !DILocation(line: 212, column: 7, scope: !432)
!498 = !DILocation(line: 215, column: 5, scope: !403)
!499 = !DILocation(line: 216, column: 3, scope: !382)
!500 = !DILocation(line: 207, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !174, line: 218, column: 5)
!502 = distinct !DILexicalBlock(scope: !503, file: !174, line: 217, column: 5)
!503 = distinct !DILexicalBlock(scope: !377, file: !174, line: 216, column: 10)
!504 = !DILocation(line: 207, column: 15, scope: !501)
!505 = !DILocation(line: 208, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !174, line: 212, column: 3)
!507 = distinct !DILexicalBlock(scope: !222, file: !174, line: 211, column: 3)
!508 = !DILocation(line: 215, column: 23, scope: !509)
!509 = distinct !DILexicalBlock(scope: !222, file: !174, line: 215, column: 7)
!510 = !DILocation(line: 215, column: 7, scope: !509)
!511 = !DILocation(line: 215, column: 36, scope: !509)
!512 = !DILocation(line: 215, column: 7, scope: !222)
!513 = !DILocation(line: 216, column: 18, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !174, line: 217, column: 5)
!515 = distinct !DILexicalBlock(scope: !516, file: !174, line: 216, column: 5)
!516 = distinct !DILexicalBlock(scope: !509, file: !174, line: 215, column: 68)
!517 = !DILocation(line: 216, column: 5, scope: !514)
!518 = !DILocation(line: 219, column: 3, scope: !516)
!519 = !DILocation(line: 219, column: 3, scope: !222)
!520 = distinct !DISubprogram(name: "kill_daemon", scope: !174, file: !174, line: 708, type: !18, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!521 = !DILocalVariable(name: "signal___0", arg: 1, scope: !520, file: !174, line: 708, type: !20)
!522 = !DILocation(line: 0, scope: !520)
!523 = !DILocation(line: 709, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !174, line: 712, column: 3)
!525 = !DILocation(line: 710, column: 3, scope: !524)
!526 = distinct !DISubprogram(name: "usage", scope: !174, file: !174, line: 222, type: !99, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!527 = !DILocalVariable(name: "__cil_tmp1", scope: !526, file: !174, line: 224, type: !6)
!528 = !DILocation(line: 224, column: 9, scope: !526)
!529 = !DILocalVariable(name: "__cil_tmp2", scope: !526, file: !174, line: 225, type: !6)
!530 = !DILocation(line: 225, column: 9, scope: !526)
!531 = !DILocalVariable(name: "__cil_tmp3", scope: !526, file: !174, line: 226, type: !6)
!532 = !DILocation(line: 226, column: 9, scope: !526)
!533 = !DILocalVariable(name: "__cil_tmp4", scope: !526, file: !174, line: 227, type: !6)
!534 = !DILocation(line: 227, column: 9, scope: !526)
!535 = !DILocalVariable(name: "__cil_tmp5", scope: !526, file: !174, line: 228, type: !6)
!536 = !DILocation(line: 228, column: 9, scope: !526)
!537 = !DILocalVariable(name: "__cil_tmp6", scope: !526, file: !174, line: 229, type: !6)
!538 = !DILocation(line: 229, column: 9, scope: !526)
!539 = !DILocalVariable(name: "__cil_tmp7", scope: !526, file: !174, line: 230, type: !6)
!540 = !DILocation(line: 230, column: 9, scope: !526)
!541 = !DILocalVariable(name: "__cil_tmp8", scope: !526, file: !174, line: 231, type: !6)
!542 = !DILocation(line: 231, column: 9, scope: !526)
!543 = !DILocalVariable(name: "__cil_tmp9", scope: !526, file: !174, line: 232, type: !6)
!544 = !DILocation(line: 232, column: 9, scope: !526)
!545 = !DILocalVariable(name: "__cil_tmp10", scope: !526, file: !174, line: 233, type: !6)
!546 = !DILocation(line: 233, column: 9, scope: !526)
!547 = !DILocalVariable(name: "__cil_tmp11", scope: !526, file: !174, line: 234, type: !6)
!548 = !DILocation(line: 234, column: 9, scope: !526)
!549 = !DILocalVariable(name: "__cil_tmp12", scope: !526, file: !174, line: 235, type: !6)
!550 = !DILocation(line: 235, column: 9, scope: !526)
!551 = !DILocalVariable(name: "__cil_tmp13", scope: !526, file: !174, line: 236, type: !6)
!552 = !DILocation(line: 236, column: 9, scope: !526)
!553 = !DILocation(line: 225, column: 36, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !174, line: 240, column: 3)
!555 = distinct !DILexicalBlock(scope: !556, file: !174, line: 239, column: 3)
!556 = distinct !DILexicalBlock(scope: !526, file: !174, line: 238, column: 3)
!557 = !DILocation(line: 225, column: 3, scope: !554)
!558 = !DILocation(line: 226, column: 36, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !174, line: 227, column: 3)
!560 = !DILocation(line: 226, column: 3, scope: !559)
!561 = !DILocation(line: 227, column: 36, scope: !562)
!562 = distinct !DILexicalBlock(scope: !555, file: !174, line: 228, column: 3)
!563 = !DILocation(line: 227, column: 3, scope: !562)
!564 = !DILocation(line: 228, column: 36, scope: !565)
!565 = distinct !DILexicalBlock(scope: !555, file: !174, line: 229, column: 3)
!566 = !DILocation(line: 228, column: 3, scope: !565)
!567 = !DILocation(line: 229, column: 36, scope: !568)
!568 = distinct !DILexicalBlock(scope: !555, file: !174, line: 230, column: 3)
!569 = !DILocation(line: 229, column: 3, scope: !568)
!570 = !DILocation(line: 230, column: 36, scope: !571)
!571 = distinct !DILexicalBlock(scope: !555, file: !174, line: 231, column: 3)
!572 = !DILocation(line: 230, column: 3, scope: !571)
!573 = !DILocation(line: 231, column: 36, scope: !574)
!574 = distinct !DILexicalBlock(scope: !555, file: !174, line: 232, column: 3)
!575 = !DILocation(line: 231, column: 3, scope: !574)
!576 = !DILocation(line: 233, column: 36, scope: !577)
!577 = distinct !DILexicalBlock(scope: !555, file: !174, line: 234, column: 3)
!578 = !DILocation(line: 233, column: 3, scope: !577)
!579 = !DILocation(line: 235, column: 36, scope: !580)
!580 = distinct !DILexicalBlock(scope: !555, file: !174, line: 236, column: 3)
!581 = !DILocation(line: 235, column: 3, scope: !580)
!582 = !DILocation(line: 236, column: 36, scope: !583)
!583 = distinct !DILexicalBlock(scope: !555, file: !174, line: 237, column: 3)
!584 = !DILocation(line: 236, column: 3, scope: !583)
!585 = !DILocation(line: 238, column: 3, scope: !586)
!586 = distinct !DILexicalBlock(scope: !555, file: !174, line: 239, column: 3)
!587 = !DILocation(line: 242, column: 1, scope: !526)
!588 = distinct !DISubprogram(name: "sayformat", scope: !174, file: !174, line: 252, type: !589, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !448, !6}
!591 = !DILocalVariable(name: "t", arg: 1, scope: !588, file: !174, line: 252, type: !448)
!592 = !DILocation(line: 0, scope: !588)
!593 = !DILocalVariable(name: "fmt", arg: 2, scope: !588, file: !174, line: 252, type: !6)
!594 = !DILocalVariable(name: "__cil_tmp8", scope: !588, file: !174, line: 259, type: !6)
!595 = !DILocation(line: 259, column: 9, scope: !588)
!596 = !DILocalVariable(name: "mflag", scope: !588, file: !174, line: 254, type: !20)
!597 = !DILocalVariable(name: "hflag", scope: !588, file: !174, line: 255, type: !20)
!598 = !DILocalVariable(name: "flag", scope: !588, file: !174, line: 256, type: !20)
!599 = !DILocalVariable(name: "pfmt", scope: !588, file: !174, line: 257, type: !6)
!600 = !DILocation(line: 262, column: 3, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !174, line: 262, column: 3)
!602 = distinct !DILexicalBlock(scope: !603, file: !174, line: 261, column: 3)
!603 = distinct !DILexicalBlock(scope: !588, file: !174, line: 261, column: 3)
!604 = !DILocation(line: 0, scope: !603)
!605 = !DILocation(line: 262, column: 13, scope: !601)
!606 = !DILocalVariable(name: "tmp", scope: !588, file: !174, line: 258, type: !6)
!607 = !DILocation(line: 262, column: 10, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !174, line: 262, column: 13)
!609 = !DILocation(line: 262, column: 11, scope: !610)
!610 = distinct !DILexicalBlock(scope: !608, file: !174, line: 262, column: 9)
!611 = !DILocation(line: 262, column: 9, scope: !608)
!612 = !DILocation(line: 262, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !174, line: 262, column: 17)
!614 = !DILocation(line: 263, column: 15, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !174, line: 263, column: 9)
!616 = !DILocation(line: 263, column: 9, scope: !615)
!617 = !DILocation(line: 263, column: 21, scope: !615)
!618 = !DILocation(line: 263, column: 9, scope: !608)
!619 = !DILocation(line: 265, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !174, line: 263, column: 28)
!621 = !DILocation(line: 265, column: 15, scope: !622)
!622 = distinct !DILexicalBlock(scope: !608, file: !174, line: 265, column: 9)
!623 = !DILocation(line: 265, column: 9, scope: !622)
!624 = !DILocation(line: 265, column: 21, scope: !622)
!625 = !DILocation(line: 265, column: 9, scope: !608)
!626 = !DILocation(line: 267, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !174, line: 265, column: 29)
!628 = !DILocation(line: 265, column: 15, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !174, line: 265, column: 9)
!630 = !DILocation(line: 265, column: 9, scope: !629)
!631 = !DILocation(line: 265, column: 21, scope: !629)
!632 = !DILocation(line: 267, column: 5, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !174, line: 265, column: 29)
!634 = !DILocation(line: 0, scope: !622)
!635 = distinct !{!635, !600, !636}
!636 = !DILocation(line: 268, column: 3, scope: !601)
!637 = !DILocation(line: 270, column: 3, scope: !601)
!638 = !DILocation(line: 270, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !174, line: 274, column: 3)
!640 = distinct !DILexicalBlock(scope: !603, file: !174, line: 273, column: 3)
!641 = !DILocation(line: 259, column: 8, scope: !603)
!642 = !DILocation(line: 270, column: 13, scope: !639)
!643 = !DILocation(line: 270, column: 11, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !174, line: 270, column: 9)
!645 = distinct !DILexicalBlock(scope: !639, file: !174, line: 270, column: 13)
!646 = !DILocation(line: 270, column: 9, scope: !645)
!647 = !DILocation(line: 270, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !174, line: 270, column: 17)
!649 = !DILocation(line: 272, column: 9, scope: !645)
!650 = !DILocation(line: 274, column: 15, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !174, line: 274, column: 9)
!652 = distinct !DILexicalBlock(scope: !645, file: !174, line: 273, column: 5)
!653 = !DILocation(line: 274, column: 9, scope: !651)
!654 = !DILocation(line: 274, column: 20, scope: !651)
!655 = !DILocation(line: 274, column: 9, scope: !652)
!656 = !DILocation(line: 274, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !174, line: 274, column: 27)
!658 = !DILocation(line: 278, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !174, line: 278, column: 9)
!660 = !DILocation(line: 278, column: 9, scope: !659)
!661 = !DILocation(line: 278, column: 20, scope: !659)
!662 = !DILocation(line: 278, column: 9, scope: !652)
!663 = !DILocation(line: 278, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !174, line: 278, column: 28)
!665 = !DILocation(line: 296, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !652, file: !174, line: 296, column: 9)
!667 = !DILocation(line: 296, column: 9, scope: !666)
!668 = !DILocation(line: 296, column: 20, scope: !666)
!669 = !DILocation(line: 296, column: 9, scope: !652)
!670 = !DILocation(line: 296, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !174, line: 296, column: 28)
!672 = !DILocation(line: 305, column: 15, scope: !673)
!673 = distinct !DILexicalBlock(scope: !652, file: !174, line: 305, column: 9)
!674 = !DILocation(line: 305, column: 9, scope: !673)
!675 = !DILocation(line: 305, column: 20, scope: !673)
!676 = !DILocation(line: 305, column: 9, scope: !652)
!677 = !DILocation(line: 305, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !174, line: 305, column: 27)
!679 = !DILocation(line: 327, column: 15, scope: !680)
!680 = distinct !DILexicalBlock(scope: !652, file: !174, line: 327, column: 9)
!681 = !DILocation(line: 327, column: 9, scope: !680)
!682 = !DILocation(line: 327, column: 20, scope: !680)
!683 = !DILocation(line: 327, column: 9, scope: !652)
!684 = !DILocation(line: 327, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !174, line: 327, column: 27)
!686 = !DILocation(line: 342, column: 5, scope: !652)
!687 = !DILocation(line: 275, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !174, line: 345, column: 5)
!689 = distinct !DILexicalBlock(scope: !652, file: !174, line: 344, column: 5)
!690 = !DILocation(line: 276, column: 5, scope: !652)
!691 = !DILocation(line: 280, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !652, file: !174, line: 280, column: 9)
!693 = !DILocation(line: 280, column: 20, scope: !692)
!694 = !DILocation(line: 280, column: 9, scope: !652)
!695 = !DILocation(line: 281, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !174, line: 282, column: 7)
!697 = distinct !DILexicalBlock(scope: !698, file: !174, line: 281, column: 7)
!698 = distinct !DILexicalBlock(scope: !692, file: !174, line: 280, column: 26)
!699 = !DILocation(line: 284, column: 5, scope: !698)
!700 = !DILocation(line: 282, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !692, file: !174, line: 282, column: 9)
!702 = !DILocation(line: 282, column: 20, scope: !701)
!703 = !DILocation(line: 282, column: 9, scope: !692)
!704 = !DILocation(line: 283, column: 20, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !174, line: 284, column: 7)
!706 = distinct !DILexicalBlock(scope: !707, file: !174, line: 283, column: 7)
!707 = distinct !DILexicalBlock(scope: !701, file: !174, line: 282, column: 26)
!708 = !DILocation(line: 283, column: 28, scope: !705)
!709 = !DILocation(line: 283, column: 7, scope: !705)
!710 = !DILocation(line: 286, column: 5, scope: !707)
!711 = !DILocation(line: 285, column: 20, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !174, line: 288, column: 7)
!713 = distinct !DILexicalBlock(scope: !714, file: !174, line: 287, column: 7)
!714 = distinct !DILexicalBlock(scope: !701, file: !174, line: 286, column: 12)
!715 = !DILocation(line: 285, column: 7, scope: !712)
!716 = !DILocation(line: 286, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !652, file: !174, line: 286, column: 9)
!718 = !DILocation(line: 286, column: 19, scope: !717)
!719 = !DILocation(line: 286, column: 9, scope: !652)
!720 = !DILocation(line: 287, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !174, line: 288, column: 7)
!722 = distinct !DILexicalBlock(scope: !723, file: !174, line: 287, column: 7)
!723 = distinct !DILexicalBlock(scope: !717, file: !174, line: 286, column: 25)
!724 = !DILocation(line: 290, column: 5, scope: !723)
!725 = !DILocation(line: 288, column: 11, scope: !726)
!726 = distinct !DILexicalBlock(scope: !652, file: !174, line: 288, column: 9)
!727 = !DILocation(line: 288, column: 9, scope: !652)
!728 = !DILocation(line: 289, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !174, line: 289, column: 11)
!730 = distinct !DILexicalBlock(scope: !726, file: !174, line: 288, column: 18)
!731 = !DILocation(line: 289, column: 22, scope: !729)
!732 = !DILocation(line: 289, column: 11, scope: !730)
!733 = !DILocation(line: 290, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !174, line: 291, column: 9)
!735 = distinct !DILexicalBlock(scope: !736, file: !174, line: 290, column: 9)
!736 = distinct !DILexicalBlock(scope: !729, file: !174, line: 289, column: 28)
!737 = !DILocation(line: 293, column: 7, scope: !736)
!738 = !DILocation(line: 292, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !174, line: 295, column: 9)
!740 = distinct !DILexicalBlock(scope: !741, file: !174, line: 294, column: 9)
!741 = distinct !DILexicalBlock(scope: !729, file: !174, line: 293, column: 14)
!742 = !DILocation(line: 296, column: 5, scope: !730)
!743 = !DILocation(line: 294, column: 5, scope: !652)
!744 = !DILocation(line: 298, column: 18, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !174, line: 298, column: 5)
!746 = distinct !DILexicalBlock(scope: !652, file: !174, line: 296, column: 5)
!747 = !DILocation(line: 298, column: 5, scope: !745)
!748 = !DILocation(line: 299, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !652, file: !174, line: 299, column: 9)
!750 = !DILocation(line: 299, column: 20, scope: !749)
!751 = !DILocation(line: 299, column: 9, scope: !652)
!752 = !DILocation(line: 300, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !174, line: 301, column: 7)
!754 = distinct !DILexicalBlock(scope: !755, file: !174, line: 300, column: 7)
!755 = distinct !DILexicalBlock(scope: !749, file: !174, line: 299, column: 26)
!756 = !DILocation(line: 303, column: 5, scope: !755)
!757 = !DILocation(line: 302, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !174, line: 305, column: 7)
!759 = distinct !DILexicalBlock(scope: !760, file: !174, line: 304, column: 7)
!760 = distinct !DILexicalBlock(scope: !749, file: !174, line: 303, column: 12)
!761 = !DILocation(line: 303, column: 5, scope: !652)
!762 = !DILocation(line: 306, column: 9, scope: !763)
!763 = distinct !DILexicalBlock(scope: !652, file: !174, line: 306, column: 9)
!764 = !DILocation(line: 306, column: 9, scope: !652)
!765 = !DILocation(line: 307, column: 14, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !174, line: 307, column: 11)
!767 = distinct !DILexicalBlock(scope: !763, file: !174, line: 306, column: 15)
!768 = !DILocation(line: 307, column: 21, scope: !766)
!769 = !DILocation(line: 307, column: 11, scope: !767)
!770 = !DILocation(line: 308, column: 22, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !174, line: 309, column: 9)
!772 = distinct !DILexicalBlock(scope: !773, file: !174, line: 308, column: 9)
!773 = distinct !DILexicalBlock(scope: !766, file: !174, line: 307, column: 27)
!774 = !DILocation(line: 308, column: 9, scope: !771)
!775 = !DILocation(line: 309, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !174, line: 309, column: 13)
!777 = !DILocation(line: 309, column: 23, scope: !776)
!778 = !DILocation(line: 309, column: 13, scope: !773)
!779 = !DILocation(line: 310, column: 11, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !174, line: 311, column: 11)
!781 = distinct !DILexicalBlock(scope: !782, file: !174, line: 310, column: 11)
!782 = distinct !DILexicalBlock(scope: !776, file: !174, line: 309, column: 29)
!783 = !DILocation(line: 313, column: 9, scope: !782)
!784 = !DILocation(line: 312, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !174, line: 315, column: 11)
!786 = distinct !DILexicalBlock(scope: !787, file: !174, line: 314, column: 11)
!787 = distinct !DILexicalBlock(scope: !776, file: !174, line: 313, column: 16)
!788 = !DILocation(line: 316, column: 7, scope: !773)
!789 = !DILocation(line: 317, column: 5, scope: !767)
!790 = !DILocation(line: 316, column: 14, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !174, line: 316, column: 11)
!792 = distinct !DILexicalBlock(scope: !763, file: !174, line: 317, column: 12)
!793 = !DILocation(line: 316, column: 21, scope: !791)
!794 = !DILocation(line: 316, column: 11, scope: !792)
!795 = !DILocation(line: 317, column: 22, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !174, line: 318, column: 9)
!797 = distinct !DILexicalBlock(scope: !798, file: !174, line: 317, column: 9)
!798 = distinct !DILexicalBlock(scope: !791, file: !174, line: 316, column: 27)
!799 = !DILocation(line: 317, column: 9, scope: !796)
!800 = !DILocation(line: 320, column: 7, scope: !798)
!801 = !DILocation(line: 318, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !792, file: !174, line: 318, column: 11)
!803 = !DILocation(line: 318, column: 11, scope: !792)
!804 = !DILocation(line: 319, column: 16, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !174, line: 319, column: 13)
!806 = distinct !DILexicalBlock(scope: !802, file: !174, line: 318, column: 18)
!807 = !DILocation(line: 319, column: 24, scope: !805)
!808 = !DILocation(line: 319, column: 13, scope: !806)
!809 = !DILocation(line: 320, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !174, line: 321, column: 11)
!811 = distinct !DILexicalBlock(scope: !812, file: !174, line: 320, column: 11)
!812 = distinct !DILexicalBlock(scope: !805, file: !174, line: 319, column: 30)
!813 = !DILocation(line: 323, column: 9, scope: !812)
!814 = !DILocation(line: 322, column: 11, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !174, line: 325, column: 11)
!816 = distinct !DILexicalBlock(scope: !817, file: !174, line: 324, column: 11)
!817 = distinct !DILexicalBlock(scope: !805, file: !174, line: 323, column: 16)
!818 = !DILocation(line: 326, column: 7, scope: !806)
!819 = !DILocation(line: 325, column: 5, scope: !652)
!820 = !DILocation(line: 328, column: 12, scope: !821)
!821 = distinct !DILexicalBlock(scope: !652, file: !174, line: 328, column: 9)
!822 = !DILocation(line: 328, column: 19, scope: !821)
!823 = !DILocation(line: 328, column: 9, scope: !652)
!824 = !DILocation(line: 328, column: 11, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !174, line: 328, column: 11)
!826 = distinct !DILexicalBlock(scope: !821, file: !174, line: 328, column: 25)
!827 = !DILocation(line: 328, column: 11, scope: !826)
!828 = !DILocation(line: 329, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !174, line: 330, column: 9)
!830 = distinct !DILexicalBlock(scope: !831, file: !174, line: 329, column: 9)
!831 = distinct !DILexicalBlock(scope: !825, file: !174, line: 328, column: 18)
!832 = !DILocation(line: 332, column: 7, scope: !831)
!833 = !DILocation(line: 328, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !174, line: 332, column: 14)
!835 = !DILocation(line: 330, column: 5, scope: !826)
!836 = !DILocation(line: 330, column: 12, scope: !821)
!837 = !DILocation(line: 332, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !174, line: 332, column: 11)
!839 = distinct !DILexicalBlock(scope: !821, file: !174, line: 330, column: 12)
!840 = !DILocation(line: 332, column: 11, scope: !839)
!841 = !DILocation(line: 333, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !174, line: 334, column: 9)
!843 = distinct !DILexicalBlock(scope: !844, file: !174, line: 333, column: 9)
!844 = distinct !DILexicalBlock(scope: !838, file: !174, line: 332, column: 18)
!845 = !DILocation(line: 336, column: 7, scope: !844)
!846 = !DILocation(line: 334, column: 20, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !174, line: 338, column: 7)
!848 = distinct !DILexicalBlock(scope: !839, file: !174, line: 337, column: 7)
!849 = !DILocation(line: 334, column: 7, scope: !847)
!850 = !DILocation(line: 335, column: 14, scope: !851)
!851 = distinct !DILexicalBlock(scope: !839, file: !174, line: 335, column: 11)
!852 = !DILocation(line: 335, column: 21, scope: !851)
!853 = !DILocation(line: 335, column: 11, scope: !839)
!854 = !DILocation(line: 336, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !174, line: 337, column: 9)
!856 = distinct !DILexicalBlock(scope: !857, file: !174, line: 336, column: 9)
!857 = distinct !DILexicalBlock(scope: !851, file: !174, line: 335, column: 27)
!858 = !DILocation(line: 339, column: 7, scope: !857)
!859 = !DILocation(line: 338, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !174, line: 341, column: 9)
!861 = distinct !DILexicalBlock(scope: !862, file: !174, line: 340, column: 9)
!862 = distinct !DILexicalBlock(scope: !851, file: !174, line: 339, column: 14)
!863 = !DILocation(line: 340, column: 5, scope: !652)
!864 = !DILocation(line: 343, column: 38, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !174, line: 343, column: 5)
!866 = distinct !DILexicalBlock(scope: !652, file: !174, line: 342, column: 5)
!867 = !DILocation(line: 344, column: 19, scope: !865)
!868 = !DILocation(line: 344, column: 13, scope: !865)
!869 = !DILocation(line: 343, column: 5, scope: !865)
!870 = !DILocation(line: 344, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !174, line: 346, column: 5)
!872 = !DILocation(line: 346, column: 9, scope: !645)
!873 = distinct !{!873, !638, !874}
!874 = !DILocation(line: 347, column: 3, scope: !639)
!875 = !DILocation(line: 349, column: 3, scope: !639)
!876 = !DILocation(line: 348, column: 3, scope: !603)
!877 = distinct !DISubprogram(name: "sayphrase", scope: !174, file: !174, line: 498, type: !18, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!878 = !DILocalVariable(name: "phrase", arg: 1, scope: !877, file: !174, line: 498, type: !20)
!879 = !DILocation(line: 0, scope: !877)
!880 = !DILocalVariable(name: "__cil_tmp2", scope: !877, file: !174, line: 500, type: !6)
!881 = !DILocation(line: 500, column: 9, scope: !877)
!882 = !DILocalVariable(name: "__cil_tmp3", scope: !877, file: !174, line: 501, type: !6)
!883 = !DILocation(line: 501, column: 9, scope: !877)
!884 = !DILocalVariable(name: "__cil_tmp4", scope: !877, file: !174, line: 502, type: !6)
!885 = !DILocation(line: 502, column: 9, scope: !877)
!886 = !DILocalVariable(name: "__cil_tmp5", scope: !877, file: !174, line: 503, type: !6)
!887 = !DILocation(line: 503, column: 9, scope: !877)
!888 = !DILocalVariable(name: "__cil_tmp6", scope: !877, file: !174, line: 504, type: !6)
!889 = !DILocation(line: 504, column: 9, scope: !877)
!890 = !DILocalVariable(name: "__cil_tmp7", scope: !877, file: !174, line: 505, type: !6)
!891 = !DILocation(line: 505, column: 9, scope: !877)
!892 = !DILocalVariable(name: "__cil_tmp8", scope: !877, file: !174, line: 506, type: !6)
!893 = !DILocation(line: 506, column: 9, scope: !877)
!894 = !DILocalVariable(name: "__cil_tmp9", scope: !877, file: !174, line: 507, type: !6)
!895 = !DILocation(line: 507, column: 9, scope: !877)
!896 = !DILocalVariable(name: "__cil_tmp10", scope: !877, file: !174, line: 508, type: !6)
!897 = !DILocation(line: 508, column: 9, scope: !877)
!898 = !DILocalVariable(name: "__cil_tmp11", scope: !877, file: !174, line: 509, type: !6)
!899 = !DILocation(line: 509, column: 9, scope: !877)
!900 = !DILocalVariable(name: "__cil_tmp12", scope: !877, file: !174, line: 510, type: !6)
!901 = !DILocation(line: 510, column: 9, scope: !877)
!902 = !DILocalVariable(name: "__cil_tmp13", scope: !877, file: !174, line: 511, type: !6)
!903 = !DILocation(line: 511, column: 9, scope: !877)
!904 = !DILocalVariable(name: "__cil_tmp14", scope: !877, file: !174, line: 512, type: !6)
!905 = !DILocation(line: 512, column: 9, scope: !877)
!906 = !DILocalVariable(name: "__cil_tmp15", scope: !877, file: !174, line: 513, type: !6)
!907 = !DILocation(line: 513, column: 9, scope: !877)
!908 = !DILocalVariable(name: "__cil_tmp16", scope: !877, file: !174, line: 514, type: !6)
!909 = !DILocation(line: 514, column: 9, scope: !877)
!910 = !DILocalVariable(name: "__cil_tmp17", scope: !877, file: !174, line: 515, type: !6)
!911 = !DILocation(line: 515, column: 9, scope: !877)
!912 = !DILocalVariable(name: "__cil_tmp18", scope: !877, file: !174, line: 516, type: !6)
!913 = !DILocation(line: 516, column: 9, scope: !877)
!914 = !DILocalVariable(name: "__cil_tmp19", scope: !877, file: !174, line: 517, type: !6)
!915 = !DILocation(line: 517, column: 9, scope: !877)
!916 = !DILocalVariable(name: "__cil_tmp20", scope: !877, file: !174, line: 518, type: !6)
!917 = !DILocation(line: 518, column: 9, scope: !877)
!918 = !DILocalVariable(name: "__cil_tmp21", scope: !877, file: !174, line: 519, type: !6)
!919 = !DILocation(line: 519, column: 9, scope: !877)
!920 = !DILocalVariable(name: "__cil_tmp22", scope: !877, file: !174, line: 520, type: !6)
!921 = !DILocation(line: 520, column: 9, scope: !877)
!922 = !DILocalVariable(name: "__cil_tmp23", scope: !877, file: !174, line: 521, type: !6)
!923 = !DILocation(line: 521, column: 9, scope: !877)
!924 = !DILocalVariable(name: "__cil_tmp24", scope: !877, file: !174, line: 522, type: !6)
!925 = !DILocation(line: 522, column: 9, scope: !877)
!926 = !DILocalVariable(name: "__cil_tmp25", scope: !877, file: !174, line: 523, type: !6)
!927 = !DILocation(line: 523, column: 9, scope: !877)
!928 = !DILocalVariable(name: "__cil_tmp26", scope: !877, file: !174, line: 524, type: !6)
!929 = !DILocation(line: 524, column: 9, scope: !877)
!930 = !DILocalVariable(name: "__cil_tmp27", scope: !877, file: !174, line: 525, type: !6)
!931 = !DILocation(line: 525, column: 9, scope: !877)
!932 = !DILocalVariable(name: "__cil_tmp28", scope: !877, file: !174, line: 526, type: !6)
!933 = !DILocation(line: 526, column: 9, scope: !877)
!934 = !DILocalVariable(name: "__cil_tmp29", scope: !877, file: !174, line: 527, type: !6)
!935 = !DILocation(line: 527, column: 9, scope: !877)
!936 = !DILocalVariable(name: "__cil_tmp30", scope: !877, file: !174, line: 528, type: !6)
!937 = !DILocation(line: 528, column: 9, scope: !877)
!938 = !DILocalVariable(name: "__cil_tmp31", scope: !877, file: !174, line: 529, type: !6)
!939 = !DILocation(line: 529, column: 9, scope: !877)
!940 = !DILocalVariable(name: "__cil_tmp32", scope: !877, file: !174, line: 530, type: !6)
!941 = !DILocation(line: 530, column: 9, scope: !877)
!942 = !DILocalVariable(name: "__cil_tmp33", scope: !877, file: !174, line: 531, type: !6)
!943 = !DILocation(line: 531, column: 9, scope: !877)
!944 = !DILocalVariable(name: "__cil_tmp34", scope: !877, file: !174, line: 532, type: !6)
!945 = !DILocation(line: 532, column: 9, scope: !877)
!946 = !DILocalVariable(name: "__cil_tmp35", scope: !877, file: !174, line: 533, type: !6)
!947 = !DILocation(line: 533, column: 9, scope: !877)
!948 = !DILocalVariable(name: "__cil_tmp36", scope: !877, file: !174, line: 534, type: !6)
!949 = !DILocation(line: 534, column: 9, scope: !877)
!950 = !DILocalVariable(name: "__cil_tmp37", scope: !877, file: !174, line: 535, type: !6)
!951 = !DILocation(line: 535, column: 9, scope: !877)
!952 = !DILocalVariable(name: "__cil_tmp38", scope: !877, file: !174, line: 536, type: !6)
!953 = !DILocation(line: 536, column: 9, scope: !877)
!954 = !DILocalVariable(name: "__cil_tmp39", scope: !877, file: !174, line: 537, type: !6)
!955 = !DILocation(line: 537, column: 9, scope: !877)
!956 = !DILocation(line: 504, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !174, line: 504, column: 7)
!958 = distinct !DILexicalBlock(scope: !959, file: !174, line: 540, column: 3)
!959 = distinct !DILexicalBlock(scope: !877, file: !174, line: 539, column: 3)
!960 = !DILocation(line: 504, column: 7, scope: !958)
!961 = !DILocation(line: 504, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !174, line: 504, column: 20)
!963 = !DILocation(line: 508, column: 14, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !174, line: 508, column: 7)
!965 = !DILocation(line: 508, column: 7, scope: !958)
!966 = !DILocation(line: 508, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !174, line: 508, column: 20)
!968 = !DILocation(line: 512, column: 14, scope: !969)
!969 = distinct !DILexicalBlock(scope: !958, file: !174, line: 512, column: 7)
!970 = !DILocation(line: 512, column: 7, scope: !958)
!971 = !DILocation(line: 512, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !174, line: 512, column: 20)
!973 = !DILocation(line: 516, column: 14, scope: !974)
!974 = distinct !DILexicalBlock(scope: !958, file: !174, line: 516, column: 7)
!975 = !DILocation(line: 516, column: 7, scope: !958)
!976 = !DILocation(line: 516, column: 5, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !174, line: 516, column: 20)
!978 = !DILocation(line: 520, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !958, file: !174, line: 520, column: 7)
!980 = !DILocation(line: 520, column: 7, scope: !958)
!981 = !DILocation(line: 520, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !174, line: 520, column: 20)
!983 = !DILocation(line: 524, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !958, file: !174, line: 524, column: 7)
!985 = !DILocation(line: 524, column: 7, scope: !958)
!986 = !DILocation(line: 524, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !174, line: 524, column: 20)
!988 = !DILocation(line: 528, column: 14, scope: !989)
!989 = distinct !DILexicalBlock(scope: !958, file: !174, line: 528, column: 7)
!990 = !DILocation(line: 528, column: 7, scope: !958)
!991 = !DILocation(line: 528, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !174, line: 528, column: 20)
!993 = !DILocation(line: 532, column: 14, scope: !994)
!994 = distinct !DILexicalBlock(scope: !958, file: !174, line: 532, column: 7)
!995 = !DILocation(line: 532, column: 7, scope: !958)
!996 = !DILocation(line: 532, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !174, line: 532, column: 20)
!998 = !DILocation(line: 536, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !958, file: !174, line: 536, column: 7)
!1000 = !DILocation(line: 536, column: 7, scope: !958)
!1001 = !DILocation(line: 536, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !174, line: 536, column: 20)
!1003 = !DILocation(line: 540, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !958, file: !174, line: 540, column: 7)
!1005 = !DILocation(line: 540, column: 7, scope: !958)
!1006 = !DILocation(line: 540, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !174, line: 540, column: 20)
!1008 = !DILocation(line: 544, column: 14, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !958, file: !174, line: 544, column: 7)
!1010 = !DILocation(line: 544, column: 7, scope: !958)
!1011 = !DILocation(line: 544, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !174, line: 544, column: 21)
!1013 = !DILocation(line: 548, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !958, file: !174, line: 548, column: 7)
!1015 = !DILocation(line: 548, column: 7, scope: !958)
!1016 = !DILocation(line: 548, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !174, line: 548, column: 21)
!1018 = !DILocation(line: 552, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !958, file: !174, line: 552, column: 7)
!1020 = !DILocation(line: 552, column: 7, scope: !958)
!1021 = !DILocation(line: 552, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !174, line: 552, column: 21)
!1023 = !DILocation(line: 556, column: 14, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !958, file: !174, line: 556, column: 7)
!1025 = !DILocation(line: 556, column: 7, scope: !958)
!1026 = !DILocation(line: 556, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !174, line: 556, column: 21)
!1028 = !DILocation(line: 560, column: 14, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !958, file: !174, line: 560, column: 7)
!1030 = !DILocation(line: 560, column: 7, scope: !958)
!1031 = !DILocation(line: 560, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !174, line: 560, column: 21)
!1033 = !DILocation(line: 564, column: 14, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !958, file: !174, line: 564, column: 7)
!1035 = !DILocation(line: 564, column: 7, scope: !958)
!1036 = !DILocation(line: 564, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !174, line: 564, column: 21)
!1038 = !DILocation(line: 568, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !958, file: !174, line: 568, column: 7)
!1040 = !DILocation(line: 568, column: 7, scope: !958)
!1041 = !DILocation(line: 568, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !174, line: 568, column: 21)
!1043 = !DILocation(line: 572, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !958, file: !174, line: 572, column: 7)
!1045 = !DILocation(line: 572, column: 7, scope: !958)
!1046 = !DILocation(line: 572, column: 5, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !174, line: 572, column: 21)
!1048 = !DILocation(line: 576, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !958, file: !174, line: 576, column: 7)
!1050 = !DILocation(line: 576, column: 7, scope: !958)
!1051 = !DILocation(line: 576, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !174, line: 576, column: 21)
!1053 = !DILocation(line: 580, column: 14, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !958, file: !174, line: 580, column: 7)
!1055 = !DILocation(line: 580, column: 7, scope: !958)
!1056 = !DILocation(line: 580, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !174, line: 580, column: 21)
!1058 = !DILocation(line: 584, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !958, file: !174, line: 584, column: 7)
!1060 = !DILocation(line: 584, column: 7, scope: !958)
!1061 = !DILocation(line: 584, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !174, line: 584, column: 21)
!1063 = !DILocation(line: 588, column: 14, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !958, file: !174, line: 588, column: 7)
!1065 = !DILocation(line: 588, column: 7, scope: !958)
!1066 = !DILocation(line: 588, column: 5, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !174, line: 588, column: 21)
!1068 = !DILocation(line: 592, column: 14, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !958, file: !174, line: 592, column: 7)
!1070 = !DILocation(line: 592, column: 7, scope: !958)
!1071 = !DILocation(line: 592, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !174, line: 592, column: 21)
!1073 = !DILocation(line: 596, column: 14, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !958, file: !174, line: 596, column: 7)
!1075 = !DILocation(line: 596, column: 7, scope: !958)
!1076 = !DILocation(line: 596, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !174, line: 596, column: 21)
!1078 = !DILocation(line: 600, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !958, file: !174, line: 600, column: 7)
!1080 = !DILocation(line: 600, column: 7, scope: !958)
!1081 = !DILocation(line: 600, column: 5, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !174, line: 600, column: 21)
!1083 = !DILocation(line: 604, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !958, file: !174, line: 604, column: 7)
!1085 = !DILocation(line: 604, column: 7, scope: !958)
!1086 = !DILocation(line: 604, column: 5, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !174, line: 604, column: 21)
!1088 = !DILocation(line: 608, column: 14, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !958, file: !174, line: 608, column: 7)
!1090 = !DILocation(line: 608, column: 7, scope: !958)
!1091 = !DILocation(line: 608, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !174, line: 608, column: 21)
!1093 = !DILocation(line: 612, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !958, file: !174, line: 612, column: 7)
!1095 = !DILocation(line: 612, column: 7, scope: !958)
!1096 = !DILocation(line: 612, column: 5, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !174, line: 612, column: 21)
!1098 = !DILocation(line: 616, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !958, file: !174, line: 616, column: 7)
!1100 = !DILocation(line: 616, column: 7, scope: !958)
!1101 = !DILocation(line: 616, column: 5, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !174, line: 616, column: 21)
!1103 = !DILocation(line: 620, column: 14, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !958, file: !174, line: 620, column: 7)
!1105 = !DILocation(line: 620, column: 7, scope: !958)
!1106 = !DILocation(line: 620, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !174, line: 620, column: 21)
!1108 = !DILocation(line: 624, column: 14, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !958, file: !174, line: 624, column: 7)
!1110 = !DILocation(line: 624, column: 7, scope: !958)
!1111 = !DILocation(line: 624, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !174, line: 624, column: 21)
!1113 = !DILocation(line: 628, column: 14, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !958, file: !174, line: 628, column: 7)
!1115 = !DILocation(line: 628, column: 7, scope: !958)
!1116 = !DILocation(line: 628, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !174, line: 628, column: 21)
!1118 = !DILocation(line: 632, column: 14, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !958, file: !174, line: 632, column: 7)
!1120 = !DILocation(line: 632, column: 7, scope: !958)
!1121 = !DILocation(line: 632, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !174, line: 632, column: 21)
!1123 = !DILocation(line: 636, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !958, file: !174, line: 636, column: 7)
!1125 = !DILocation(line: 636, column: 7, scope: !958)
!1126 = !DILocation(line: 636, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !174, line: 636, column: 21)
!1128 = !DILocation(line: 640, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !958, file: !174, line: 640, column: 7)
!1130 = !DILocation(line: 640, column: 7, scope: !958)
!1131 = !DILocation(line: 640, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !174, line: 640, column: 21)
!1133 = !DILocation(line: 644, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !958, file: !174, line: 644, column: 7)
!1135 = !DILocation(line: 644, column: 7, scope: !958)
!1136 = !DILocation(line: 644, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !174, line: 644, column: 21)
!1138 = !DILocation(line: 648, column: 14, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !958, file: !174, line: 648, column: 7)
!1140 = !DILocation(line: 648, column: 7, scope: !958)
!1141 = !DILocation(line: 648, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !174, line: 648, column: 21)
!1143 = !DILocation(line: 654, column: 3, scope: !958)
!1144 = !DILocation(line: 505, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !174, line: 657, column: 3)
!1146 = distinct !DILexicalBlock(scope: !958, file: !174, line: 656, column: 3)
!1147 = !DILocation(line: 506, column: 3, scope: !958)
!1148 = !DILocation(line: 509, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !174, line: 509, column: 3)
!1150 = distinct !DILexicalBlock(scope: !958, file: !174, line: 508, column: 3)
!1151 = !DILocation(line: 510, column: 3, scope: !958)
!1152 = !DILocation(line: 513, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !174, line: 513, column: 3)
!1154 = distinct !DILexicalBlock(scope: !958, file: !174, line: 512, column: 3)
!1155 = !DILocation(line: 514, column: 3, scope: !958)
!1156 = !DILocation(line: 517, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !174, line: 517, column: 3)
!1158 = distinct !DILexicalBlock(scope: !958, file: !174, line: 516, column: 3)
!1159 = !DILocation(line: 518, column: 3, scope: !958)
!1160 = !DILocation(line: 521, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !174, line: 521, column: 3)
!1162 = distinct !DILexicalBlock(scope: !958, file: !174, line: 520, column: 3)
!1163 = !DILocation(line: 522, column: 3, scope: !958)
!1164 = !DILocation(line: 525, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !174, line: 525, column: 3)
!1166 = distinct !DILexicalBlock(scope: !958, file: !174, line: 524, column: 3)
!1167 = !DILocation(line: 526, column: 3, scope: !958)
!1168 = !DILocation(line: 529, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !174, line: 529, column: 3)
!1170 = distinct !DILexicalBlock(scope: !958, file: !174, line: 528, column: 3)
!1171 = !DILocation(line: 530, column: 3, scope: !958)
!1172 = !DILocation(line: 533, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !174, line: 533, column: 3)
!1174 = distinct !DILexicalBlock(scope: !958, file: !174, line: 532, column: 3)
!1175 = !DILocation(line: 534, column: 3, scope: !958)
!1176 = !DILocation(line: 537, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !174, line: 537, column: 3)
!1178 = distinct !DILexicalBlock(scope: !958, file: !174, line: 536, column: 3)
!1179 = !DILocation(line: 538, column: 3, scope: !958)
!1180 = !DILocation(line: 541, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !174, line: 541, column: 3)
!1182 = distinct !DILexicalBlock(scope: !958, file: !174, line: 540, column: 3)
!1183 = !DILocation(line: 542, column: 3, scope: !958)
!1184 = !DILocation(line: 545, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !174, line: 545, column: 3)
!1186 = distinct !DILexicalBlock(scope: !958, file: !174, line: 544, column: 3)
!1187 = !DILocation(line: 546, column: 3, scope: !958)
!1188 = !DILocation(line: 549, column: 3, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !174, line: 549, column: 3)
!1190 = distinct !DILexicalBlock(scope: !958, file: !174, line: 548, column: 3)
!1191 = !DILocation(line: 550, column: 3, scope: !958)
!1192 = !DILocation(line: 553, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !174, line: 553, column: 3)
!1194 = distinct !DILexicalBlock(scope: !958, file: !174, line: 552, column: 3)
!1195 = !DILocation(line: 554, column: 3, scope: !958)
!1196 = !DILocation(line: 557, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !174, line: 557, column: 3)
!1198 = distinct !DILexicalBlock(scope: !958, file: !174, line: 556, column: 3)
!1199 = !DILocation(line: 558, column: 3, scope: !958)
!1200 = !DILocation(line: 561, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !174, line: 561, column: 3)
!1202 = distinct !DILexicalBlock(scope: !958, file: !174, line: 560, column: 3)
!1203 = !DILocation(line: 562, column: 3, scope: !958)
!1204 = !DILocation(line: 565, column: 3, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !174, line: 565, column: 3)
!1206 = distinct !DILexicalBlock(scope: !958, file: !174, line: 564, column: 3)
!1207 = !DILocation(line: 566, column: 3, scope: !958)
!1208 = !DILocation(line: 569, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !174, line: 569, column: 3)
!1210 = distinct !DILexicalBlock(scope: !958, file: !174, line: 568, column: 3)
!1211 = !DILocation(line: 570, column: 3, scope: !958)
!1212 = !DILocation(line: 573, column: 3, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !174, line: 573, column: 3)
!1214 = distinct !DILexicalBlock(scope: !958, file: !174, line: 572, column: 3)
!1215 = !DILocation(line: 574, column: 3, scope: !958)
!1216 = !DILocation(line: 577, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !174, line: 577, column: 3)
!1218 = distinct !DILexicalBlock(scope: !958, file: !174, line: 576, column: 3)
!1219 = !DILocation(line: 578, column: 3, scope: !958)
!1220 = !DILocation(line: 581, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !174, line: 581, column: 3)
!1222 = distinct !DILexicalBlock(scope: !958, file: !174, line: 580, column: 3)
!1223 = !DILocation(line: 582, column: 3, scope: !958)
!1224 = !DILocation(line: 585, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !174, line: 585, column: 3)
!1226 = distinct !DILexicalBlock(scope: !958, file: !174, line: 584, column: 3)
!1227 = !DILocation(line: 586, column: 3, scope: !958)
!1228 = !DILocation(line: 589, column: 3, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !174, line: 589, column: 3)
!1230 = distinct !DILexicalBlock(scope: !958, file: !174, line: 588, column: 3)
!1231 = !DILocation(line: 590, column: 3, scope: !958)
!1232 = !DILocation(line: 593, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !174, line: 593, column: 3)
!1234 = distinct !DILexicalBlock(scope: !958, file: !174, line: 592, column: 3)
!1235 = !DILocation(line: 594, column: 3, scope: !958)
!1236 = !DILocation(line: 597, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !174, line: 597, column: 3)
!1238 = distinct !DILexicalBlock(scope: !958, file: !174, line: 596, column: 3)
!1239 = !DILocation(line: 598, column: 3, scope: !958)
!1240 = !DILocation(line: 601, column: 3, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !174, line: 601, column: 3)
!1242 = distinct !DILexicalBlock(scope: !958, file: !174, line: 600, column: 3)
!1243 = !DILocation(line: 602, column: 3, scope: !958)
!1244 = !DILocation(line: 605, column: 3, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !174, line: 605, column: 3)
!1246 = distinct !DILexicalBlock(scope: !958, file: !174, line: 604, column: 3)
!1247 = !DILocation(line: 606, column: 3, scope: !958)
!1248 = !DILocation(line: 609, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !174, line: 609, column: 3)
!1250 = distinct !DILexicalBlock(scope: !958, file: !174, line: 608, column: 3)
!1251 = !DILocation(line: 610, column: 3, scope: !958)
!1252 = !DILocation(line: 613, column: 3, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !174, line: 613, column: 3)
!1254 = distinct !DILexicalBlock(scope: !958, file: !174, line: 612, column: 3)
!1255 = !DILocation(line: 614, column: 3, scope: !958)
!1256 = !DILocation(line: 617, column: 3, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !174, line: 617, column: 3)
!1258 = distinct !DILexicalBlock(scope: !958, file: !174, line: 616, column: 3)
!1259 = !DILocation(line: 618, column: 3, scope: !958)
!1260 = !DILocation(line: 621, column: 3, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !174, line: 621, column: 3)
!1262 = distinct !DILexicalBlock(scope: !958, file: !174, line: 620, column: 3)
!1263 = !DILocation(line: 622, column: 3, scope: !958)
!1264 = !DILocation(line: 625, column: 3, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !174, line: 625, column: 3)
!1266 = distinct !DILexicalBlock(scope: !958, file: !174, line: 624, column: 3)
!1267 = !DILocation(line: 626, column: 3, scope: !958)
!1268 = !DILocation(line: 629, column: 3, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !174, line: 629, column: 3)
!1270 = distinct !DILexicalBlock(scope: !958, file: !174, line: 628, column: 3)
!1271 = !DILocation(line: 630, column: 3, scope: !958)
!1272 = !DILocation(line: 633, column: 3, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !174, line: 633, column: 3)
!1274 = distinct !DILexicalBlock(scope: !958, file: !174, line: 632, column: 3)
!1275 = !DILocation(line: 634, column: 3, scope: !958)
!1276 = !DILocation(line: 637, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !174, line: 637, column: 3)
!1278 = distinct !DILexicalBlock(scope: !958, file: !174, line: 636, column: 3)
!1279 = !DILocation(line: 638, column: 3, scope: !958)
!1280 = !DILocation(line: 641, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !174, line: 641, column: 3)
!1282 = distinct !DILexicalBlock(scope: !958, file: !174, line: 640, column: 3)
!1283 = !DILocation(line: 642, column: 3, scope: !958)
!1284 = !DILocation(line: 645, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !174, line: 645, column: 3)
!1286 = distinct !DILexicalBlock(scope: !958, file: !174, line: 644, column: 3)
!1287 = !DILocation(line: 646, column: 3, scope: !958)
!1288 = !DILocation(line: 649, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !174, line: 649, column: 3)
!1290 = distinct !DILexicalBlock(scope: !958, file: !174, line: 648, column: 3)
!1291 = !DILocation(line: 650, column: 3, scope: !958)
!1292 = !DILocation(line: 655, column: 36, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !174, line: 653, column: 3)
!1294 = distinct !DILexicalBlock(scope: !958, file: !174, line: 652, column: 3)
!1295 = !DILocation(line: 655, column: 3, scope: !1293)
!1296 = !DILocation(line: 656, column: 3, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !174, line: 657, column: 3)
!1298 = !DILocation(line: 658, column: 3, scope: !959)
!1299 = distinct !DISubprogram(name: "saynumber", scope: !174, file: !174, line: 350, type: !1300, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !20, !20}
!1302 = !DILocalVariable(name: "n", arg: 1, scope: !1299, file: !174, line: 350, type: !20)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocalVariable(name: "leadingzero", arg: 2, scope: !1299, file: !174, line: 350, type: !20)
!1305 = !DILocalVariable(name: "__cil_tmp5", scope: !1299, file: !174, line: 354, type: !6)
!1306 = !DILocation(line: 354, column: 9, scope: !1299)
!1307 = !DILocalVariable(name: "__cil_tmp6", scope: !1299, file: !174, line: 355, type: !6)
!1308 = !DILocation(line: 355, column: 9, scope: !1299)
!1309 = !DILocation(line: 356, column: 12, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !174, line: 357, column: 3)
!1311 = !DILocalVariable(name: "ones", scope: !1299, file: !174, line: 352, type: !20)
!1312 = !DILocation(line: 357, column: 12, scope: !1310)
!1313 = !DILocalVariable(name: "tens", scope: !1299, file: !174, line: 353, type: !20)
!1314 = !DILocation(line: 361, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 361, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !174, line: 358, column: 3)
!1317 = !DILocation(line: 361, column: 7, scope: !1316)
!1318 = !DILocation(line: 361, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !174, line: 361, column: 18)
!1320 = !DILocation(line: 367, column: 12, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 367, column: 7)
!1322 = !DILocation(line: 367, column: 7, scope: !1316)
!1323 = !DILocation(line: 367, column: 5, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !174, line: 367, column: 18)
!1325 = !DILocation(line: 416, column: 12, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 416, column: 7)
!1327 = !DILocation(line: 416, column: 7, scope: !1316)
!1328 = !DILocation(line: 416, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !174, line: 416, column: 18)
!1330 = !DILocation(line: 422, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 422, column: 7)
!1332 = !DILocation(line: 422, column: 7, scope: !1316)
!1333 = !DILocation(line: 422, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !174, line: 422, column: 18)
!1335 = !DILocation(line: 428, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 428, column: 7)
!1337 = !DILocation(line: 428, column: 7, scope: !1316)
!1338 = !DILocation(line: 428, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !174, line: 428, column: 18)
!1340 = !DILocation(line: 434, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 434, column: 7)
!1342 = !DILocation(line: 434, column: 7, scope: !1316)
!1343 = !DILocation(line: 434, column: 5, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !174, line: 434, column: 18)
!1345 = !DILocation(line: 440, column: 3, scope: !1316)
!1346 = !DILocation(line: 362, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 362, column: 7)
!1348 = !DILocation(line: 362, column: 7, scope: !1316)
!1349 = !DILocation(line: 363, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !174, line: 364, column: 5)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !174, line: 363, column: 5)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !174, line: 362, column: 20)
!1353 = !DILocation(line: 366, column: 3, scope: !1352)
!1354 = !DILocation(line: 364, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !174, line: 368, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 367, column: 3)
!1357 = !DILocation(line: 365, column: 3, scope: !1316)
!1358 = !DILocation(line: 370, column: 12, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 370, column: 7)
!1360 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 367, column: 3)
!1361 = !DILocation(line: 370, column: 7, scope: !1360)
!1362 = !DILocation(line: 370, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !174, line: 370, column: 18)
!1364 = !DILocation(line: 374, column: 12, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 374, column: 7)
!1366 = !DILocation(line: 374, column: 7, scope: !1360)
!1367 = !DILocation(line: 374, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !174, line: 374, column: 18)
!1369 = !DILocation(line: 378, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 378, column: 7)
!1371 = !DILocation(line: 378, column: 7, scope: !1360)
!1372 = !DILocation(line: 378, column: 5, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !174, line: 378, column: 18)
!1374 = !DILocation(line: 382, column: 12, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 382, column: 7)
!1376 = !DILocation(line: 382, column: 7, scope: !1360)
!1377 = !DILocation(line: 382, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !174, line: 382, column: 18)
!1379 = !DILocation(line: 386, column: 12, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 386, column: 7)
!1381 = !DILocation(line: 386, column: 7, scope: !1360)
!1382 = !DILocation(line: 386, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !174, line: 386, column: 18)
!1384 = !DILocation(line: 390, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 390, column: 7)
!1386 = !DILocation(line: 390, column: 7, scope: !1360)
!1387 = !DILocation(line: 390, column: 5, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !174, line: 390, column: 18)
!1389 = !DILocation(line: 394, column: 12, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 394, column: 7)
!1391 = !DILocation(line: 394, column: 7, scope: !1360)
!1392 = !DILocation(line: 394, column: 5, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !174, line: 394, column: 18)
!1394 = !DILocation(line: 398, column: 12, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 398, column: 7)
!1396 = !DILocation(line: 398, column: 7, scope: !1360)
!1397 = !DILocation(line: 398, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !174, line: 398, column: 18)
!1399 = !DILocation(line: 402, column: 12, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 402, column: 7)
!1401 = !DILocation(line: 402, column: 7, scope: !1360)
!1402 = !DILocation(line: 402, column: 5, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !174, line: 402, column: 18)
!1404 = !DILocation(line: 406, column: 12, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 406, column: 7)
!1406 = !DILocation(line: 406, column: 7, scope: !1360)
!1407 = !DILocation(line: 406, column: 5, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !174, line: 406, column: 18)
!1409 = !DILocation(line: 410, column: 3, scope: !1360)
!1410 = !DILocation(line: 371, column: 3, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !174, line: 413, column: 3)
!1412 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 412, column: 3)
!1413 = !DILocation(line: 372, column: 3, scope: !1360)
!1414 = !DILocation(line: 375, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !174, line: 375, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 374, column: 3)
!1417 = !DILocation(line: 376, column: 3, scope: !1360)
!1418 = !DILocation(line: 379, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !174, line: 379, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 378, column: 3)
!1421 = !DILocation(line: 380, column: 3, scope: !1360)
!1422 = !DILocation(line: 383, column: 3, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !174, line: 383, column: 3)
!1424 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 382, column: 3)
!1425 = !DILocation(line: 384, column: 3, scope: !1360)
!1426 = !DILocation(line: 387, column: 3, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !174, line: 387, column: 3)
!1428 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 386, column: 3)
!1429 = !DILocation(line: 388, column: 3, scope: !1360)
!1430 = !DILocation(line: 391, column: 3, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !174, line: 391, column: 3)
!1432 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 390, column: 3)
!1433 = !DILocation(line: 392, column: 3, scope: !1360)
!1434 = !DILocation(line: 395, column: 3, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !174, line: 395, column: 3)
!1436 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 394, column: 3)
!1437 = !DILocation(line: 396, column: 3, scope: !1360)
!1438 = !DILocation(line: 399, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !174, line: 399, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 398, column: 3)
!1441 = !DILocation(line: 400, column: 3, scope: !1360)
!1442 = !DILocation(line: 403, column: 3, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !174, line: 403, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 402, column: 3)
!1445 = !DILocation(line: 404, column: 3, scope: !1360)
!1446 = !DILocation(line: 407, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !174, line: 407, column: 3)
!1448 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 406, column: 3)
!1449 = !DILocation(line: 408, column: 3, scope: !1360)
!1450 = !DILocation(line: 411, column: 36, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !174, line: 411, column: 3)
!1452 = distinct !DILexicalBlock(scope: !1360, file: !174, line: 410, column: 3)
!1453 = !DILocation(line: 411, column: 3, scope: !1451)
!1454 = !DILocation(line: 412, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !174, line: 413, column: 3)
!1456 = !DILocation(line: 414, column: 3, scope: !1316)
!1457 = !DILocation(line: 417, column: 3, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !174, line: 417, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 416, column: 3)
!1460 = !DILocation(line: 418, column: 12, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 418, column: 7)
!1462 = !DILocation(line: 418, column: 7, scope: !1316)
!1463 = !DILocation(line: 419, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !174, line: 420, column: 5)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !174, line: 419, column: 5)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !174, line: 418, column: 18)
!1467 = !DILocation(line: 422, column: 3, scope: !1466)
!1468 = !DILocation(line: 420, column: 3, scope: !1316)
!1469 = !DILocation(line: 423, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !174, line: 423, column: 3)
!1471 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 422, column: 3)
!1472 = !DILocation(line: 424, column: 12, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 424, column: 7)
!1474 = !DILocation(line: 424, column: 7, scope: !1316)
!1475 = !DILocation(line: 425, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !174, line: 426, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !174, line: 425, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !174, line: 424, column: 18)
!1479 = !DILocation(line: 428, column: 3, scope: !1478)
!1480 = !DILocation(line: 426, column: 3, scope: !1316)
!1481 = !DILocation(line: 429, column: 3, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !174, line: 429, column: 3)
!1483 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 428, column: 3)
!1484 = !DILocation(line: 430, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 430, column: 7)
!1486 = !DILocation(line: 430, column: 7, scope: !1316)
!1487 = !DILocation(line: 431, column: 5, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !174, line: 432, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !174, line: 431, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !174, line: 430, column: 18)
!1491 = !DILocation(line: 434, column: 3, scope: !1490)
!1492 = !DILocation(line: 432, column: 3, scope: !1316)
!1493 = !DILocation(line: 435, column: 3, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !174, line: 435, column: 3)
!1495 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 434, column: 3)
!1496 = !DILocation(line: 436, column: 12, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 436, column: 7)
!1498 = !DILocation(line: 436, column: 7, scope: !1316)
!1499 = !DILocation(line: 437, column: 5, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !174, line: 438, column: 5)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !174, line: 437, column: 5)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !174, line: 436, column: 18)
!1503 = !DILocation(line: 440, column: 3, scope: !1502)
!1504 = !DILocation(line: 438, column: 3, scope: !1316)
!1505 = !DILocation(line: 441, column: 36, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !174, line: 441, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1316, file: !174, line: 440, column: 3)
!1508 = !DILocation(line: 441, column: 3, scope: !1506)
!1509 = !DILocation(line: 442, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !174, line: 443, column: 3)
!1511 = !DILocation(line: 444, column: 3, scope: !1310)
!1512 = distinct !DISubprogram(name: "saydigit", scope: !174, file: !174, line: 446, type: !18, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1513 = !DILocalVariable(name: "n", arg: 1, scope: !1512, file: !174, line: 446, type: !20)
!1514 = !DILocation(line: 0, scope: !1512)
!1515 = !DILocalVariable(name: "__cil_tmp2", scope: !1512, file: !174, line: 448, type: !6)
!1516 = !DILocation(line: 448, column: 9, scope: !1512)
!1517 = !DILocation(line: 452, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 452, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !174, line: 451, column: 3)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !174, line: 450, column: 3)
!1521 = !DILocation(line: 452, column: 7, scope: !1519)
!1522 = !DILocation(line: 452, column: 5, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !174, line: 452, column: 15)
!1524 = !DILocation(line: 456, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 456, column: 7)
!1526 = !DILocation(line: 456, column: 7, scope: !1519)
!1527 = !DILocation(line: 456, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !174, line: 456, column: 15)
!1529 = !DILocation(line: 460, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 460, column: 7)
!1531 = !DILocation(line: 460, column: 7, scope: !1519)
!1532 = !DILocation(line: 460, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !174, line: 460, column: 15)
!1534 = !DILocation(line: 464, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 464, column: 7)
!1536 = !DILocation(line: 464, column: 7, scope: !1519)
!1537 = !DILocation(line: 464, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !174, line: 464, column: 15)
!1539 = !DILocation(line: 468, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 468, column: 7)
!1541 = !DILocation(line: 468, column: 7, scope: !1519)
!1542 = !DILocation(line: 468, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !174, line: 468, column: 15)
!1544 = !DILocation(line: 472, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 472, column: 7)
!1546 = !DILocation(line: 472, column: 7, scope: !1519)
!1547 = !DILocation(line: 472, column: 5, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !174, line: 472, column: 15)
!1549 = !DILocation(line: 476, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 476, column: 7)
!1551 = !DILocation(line: 476, column: 7, scope: !1519)
!1552 = !DILocation(line: 476, column: 5, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !174, line: 476, column: 15)
!1554 = !DILocation(line: 480, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 480, column: 7)
!1556 = !DILocation(line: 480, column: 7, scope: !1519)
!1557 = !DILocation(line: 480, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !174, line: 480, column: 15)
!1559 = !DILocation(line: 484, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 484, column: 7)
!1561 = !DILocation(line: 484, column: 7, scope: !1519)
!1562 = !DILocation(line: 484, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !174, line: 484, column: 15)
!1564 = !DILocation(line: 488, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 488, column: 7)
!1566 = !DILocation(line: 488, column: 7, scope: !1519)
!1567 = !DILocation(line: 488, column: 5, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !174, line: 488, column: 15)
!1569 = !DILocation(line: 492, column: 3, scope: !1519)
!1570 = !DILocation(line: 453, column: 3, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !174, line: 495, column: 3)
!1572 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 494, column: 3)
!1573 = !DILocation(line: 454, column: 3, scope: !1519)
!1574 = !DILocation(line: 457, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !174, line: 457, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 456, column: 3)
!1577 = !DILocation(line: 458, column: 3, scope: !1519)
!1578 = !DILocation(line: 461, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !174, line: 461, column: 3)
!1580 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 460, column: 3)
!1581 = !DILocation(line: 462, column: 3, scope: !1519)
!1582 = !DILocation(line: 465, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !174, line: 465, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 464, column: 3)
!1585 = !DILocation(line: 466, column: 3, scope: !1519)
!1586 = !DILocation(line: 469, column: 3, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !174, line: 469, column: 3)
!1588 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 468, column: 3)
!1589 = !DILocation(line: 470, column: 3, scope: !1519)
!1590 = !DILocation(line: 473, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !174, line: 473, column: 3)
!1592 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 472, column: 3)
!1593 = !DILocation(line: 474, column: 3, scope: !1519)
!1594 = !DILocation(line: 477, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !174, line: 477, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 476, column: 3)
!1597 = !DILocation(line: 478, column: 3, scope: !1519)
!1598 = !DILocation(line: 481, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !174, line: 481, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 480, column: 3)
!1601 = !DILocation(line: 482, column: 3, scope: !1519)
!1602 = !DILocation(line: 485, column: 3, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !174, line: 485, column: 3)
!1604 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 484, column: 3)
!1605 = !DILocation(line: 486, column: 3, scope: !1519)
!1606 = !DILocation(line: 489, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !174, line: 489, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 488, column: 3)
!1609 = !DILocation(line: 490, column: 3, scope: !1519)
!1610 = !DILocation(line: 493, column: 36, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !174, line: 493, column: 3)
!1612 = distinct !DILexicalBlock(scope: !1519, file: !174, line: 492, column: 3)
!1613 = !DILocation(line: 493, column: 3, scope: !1611)
!1614 = !DILocation(line: 494, column: 3, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !174, line: 495, column: 3)
!1616 = !DILocation(line: 496, column: 3, scope: !1520)
!1617 = distinct !DISubprogram(name: "sayfile", scope: !174, file: !174, line: 660, type: !1618, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !6}
!1620 = !DILocalVariable(name: "filename", arg: 1, scope: !1617, file: !174, line: 660, type: !6)
!1621 = !DILocation(line: 0, scope: !1617)
!1622 = !DILocalVariable(name: "status", scope: !1617, file: !174, line: 663, type: !20)
!1623 = !DILocation(line: 663, column: 7, scope: !1617)
!1624 = !DILocalVariable(name: "pathname", scope: !1617, file: !174, line: 664, type: !1625)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1600, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 200)
!1628 = !DILocation(line: 664, column: 8, scope: !1617)
!1629 = !DILocalVariable(name: "__constr_expr_0", scope: !1617, file: !174, line: 667, type: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_50", file: !174, line: 703, size: 32, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !1630, file: !174, line: 704, baseType: !20, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !1630, file: !174, line: 705, baseType: !20, size: 32)
!1634 = !DILocation(line: 667, column: 24, scope: !1617)
!1635 = !DILocalVariable(name: "__cil_tmp8", scope: !1617, file: !174, line: 668, type: !60)
!1636 = !DILocation(line: 668, column: 9, scope: !1617)
!1637 = !DILocalVariable(name: "__cil_tmp9", scope: !1617, file: !174, line: 669, type: !6)
!1638 = !DILocation(line: 669, column: 9, scope: !1617)
!1639 = !DILocalVariable(name: "__cil_tmp10", scope: !1617, file: !174, line: 670, type: !6)
!1640 = !DILocation(line: 670, column: 9, scope: !1617)
!1641 = !DILocalVariable(name: "__cil_tmp11", scope: !1617, file: !174, line: 671, type: !6)
!1642 = !DILocation(line: 671, column: 9, scope: !1617)
!1643 = !DILocalVariable(name: "__cil_tmp12", scope: !1617, file: !174, line: 672, type: !6)
!1644 = !DILocation(line: 672, column: 9, scope: !1617)
!1645 = !DILocalVariable(name: "__cil_tmp13", scope: !1617, file: !174, line: 673, type: !6)
!1646 = !DILocation(line: 673, column: 9, scope: !1617)
!1647 = !DILocalVariable(name: "__cil_tmp14", scope: !1617, file: !174, line: 674, type: !6)
!1648 = !DILocation(line: 674, column: 9, scope: !1617)
!1649 = !DILocalVariable(name: "__cil_tmp15", scope: !1617, file: !174, line: 675, type: !6)
!1650 = !DILocation(line: 675, column: 9, scope: !1617)
!1651 = !DILocalVariable(name: "__cil_tmp16", scope: !1617, file: !174, line: 676, type: !6)
!1652 = !DILocation(line: 676, column: 9, scope: !1617)
!1653 = !DILocalVariable(name: "__cil_tmp17", scope: !1617, file: !174, line: 677, type: !6)
!1654 = !DILocation(line: 677, column: 9, scope: !1617)
!1655 = !DILocalVariable(name: "__cil_tmp18", scope: !1617, file: !174, line: 678, type: !6)
!1656 = !DILocation(line: 678, column: 9, scope: !1617)
!1657 = !DILocalVariable(name: "__cil_tmp19", scope: !1617, file: !174, line: 679, type: !6)
!1658 = !DILocation(line: 679, column: 9, scope: !1617)
!1659 = !DILocalVariable(name: "__cil_tmp20", scope: !1617, file: !174, line: 680, type: !6)
!1660 = !DILocation(line: 680, column: 9, scope: !1617)
!1661 = !DILocalVariable(name: "__cil_tmp21", scope: !1617, file: !174, line: 681, type: !6)
!1662 = !DILocation(line: 681, column: 9, scope: !1617)
!1663 = !DILocalVariable(name: "__cil_tmp22", scope: !1617, file: !174, line: 682, type: !6)
!1664 = !DILocation(line: 682, column: 9, scope: !1617)
!1665 = !DILocalVariable(name: "__cil_tmp23", scope: !1617, file: !174, line: 683, type: !6)
!1666 = !DILocation(line: 683, column: 9, scope: !1617)
!1667 = !DILocalVariable(name: "__cil_tmp24", scope: !1617, file: !174, line: 684, type: !6)
!1668 = !DILocation(line: 684, column: 9, scope: !1617)
!1669 = !DILocalVariable(name: "__cil_tmp25", scope: !1617, file: !174, line: 685, type: !6)
!1670 = !DILocation(line: 685, column: 9, scope: !1617)
!1671 = !DILocalVariable(name: "__cil_tmp26", scope: !1617, file: !174, line: 686, type: !6)
!1672 = !DILocation(line: 686, column: 9, scope: !1617)
!1673 = !DILocalVariable(name: "__cil_tmp27", scope: !1617, file: !174, line: 687, type: !6)
!1674 = !DILocation(line: 687, column: 9, scope: !1617)
!1675 = !DILocalVariable(name: "__cil_tmp28", scope: !1617, file: !174, line: 688, type: !6)
!1676 = !DILocation(line: 688, column: 9, scope: !1617)
!1677 = !DILocalVariable(name: "__cil_tmp29", scope: !1617, file: !174, line: 689, type: !6)
!1678 = !DILocation(line: 689, column: 9, scope: !1617)
!1679 = !DILocalVariable(name: "__cil_tmp30", scope: !1617, file: !174, line: 690, type: !6)
!1680 = !DILocation(line: 690, column: 9, scope: !1617)
!1681 = !DILocalVariable(name: "__cil_tmp31", scope: !1617, file: !174, line: 691, type: !6)
!1682 = !DILocation(line: 691, column: 9, scope: !1617)
!1683 = !DILocalVariable(name: "__cil_tmp32", scope: !1617, file: !174, line: 692, type: !6)
!1684 = !DILocation(line: 692, column: 9, scope: !1617)
!1685 = !DILocalVariable(name: "__cil_tmp33", scope: !1617, file: !174, line: 693, type: !6)
!1686 = !DILocation(line: 693, column: 9, scope: !1617)
!1687 = !DILocalVariable(name: "__cil_tmp34", scope: !1617, file: !174, line: 694, type: !6)
!1688 = !DILocation(line: 694, column: 9, scope: !1617)
!1689 = !DILocalVariable(name: "__cil_tmp35", scope: !1617, file: !174, line: 695, type: !6)
!1690 = !DILocation(line: 695, column: 9, scope: !1617)
!1691 = !DILocalVariable(name: "__cil_tmp36", scope: !1617, file: !174, line: 696, type: !6)
!1692 = !DILocation(line: 696, column: 9, scope: !1617)
!1693 = !DILocalVariable(name: "__cil_tmp37", scope: !1617, file: !174, line: 697, type: !6)
!1694 = !DILocation(line: 697, column: 9, scope: !1617)
!1695 = !DILocation(line: 668, column: 43, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !174, line: 701, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 700, column: 3)
!1698 = distinct !DILexicalBlock(scope: !1617, file: !174, line: 699, column: 3)
!1699 = !DILocation(line: 669, column: 18, scope: !1696)
!1700 = !DILocation(line: 668, column: 9, scope: !1696)
!1701 = !DILocalVariable(name: "tmp", scope: !1617, file: !174, line: 665, type: !20)
!1702 = !DILocation(line: 668, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 668, column: 7)
!1704 = !DILocation(line: 668, column: 7, scope: !1698)
!1705 = !DILocation(line: 670, column: 38, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !174, line: 670, column: 5)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !174, line: 669, column: 5)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !174, line: 668, column: 19)
!1709 = !DILocation(line: 670, column: 5, scope: !1706)
!1710 = !DILocation(line: 671, column: 5, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !174, line: 672, column: 5)
!1712 = !DILocation(line: 673, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !174, line: 676, column: 3)
!1714 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 675, column: 3)
!1715 = !DILocalVariable(name: "pid", scope: !1617, file: !174, line: 662, type: !386)
!1716 = !DILocation(line: 674, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 674, column: 7)
!1718 = !DILocation(line: 674, column: 7, scope: !1698)
!1719 = !DILocation(line: 676, column: 38, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !174, line: 676, column: 5)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !174, line: 675, column: 5)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !174, line: 674, column: 16)
!1723 = !DILocation(line: 676, column: 5, scope: !1720)
!1724 = !DILocation(line: 677, column: 5, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !174, line: 678, column: 5)
!1726 = !DILocation(line: 679, column: 11, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1717, file: !174, line: 679, column: 7)
!1728 = !DILocation(line: 679, column: 7, scope: !1717)
!1729 = !DILocation(line: 682, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !174, line: 682, column: 9)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !174, line: 679, column: 17)
!1732 = !DILocation(line: 682, column: 9, scope: !1731)
!1733 = !DILocation(line: 684, column: 62, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !174, line: 684, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !174, line: 683, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !174, line: 682, column: 24)
!1737 = !DILocation(line: 685, column: 24, scope: !1734)
!1738 = !DILocation(line: 684, column: 7, scope: !1734)
!1739 = !DILocation(line: 688, column: 5, scope: !1736)
!1740 = !DILocation(line: 689, column: 62, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !174, line: 690, column: 7)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !174, line: 689, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1730, file: !174, line: 688, column: 12)
!1744 = !DILocation(line: 690, column: 24, scope: !1741)
!1745 = !DILocation(line: 690, column: 50, scope: !1741)
!1746 = !DILocation(line: 689, column: 7, scope: !1741)
!1747 = !DILocation(line: 692, column: 38, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !174, line: 695, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1731, file: !174, line: 694, column: 5)
!1750 = !DILocation(line: 692, column: 5, scope: !1748)
!1751 = !DILocation(line: 693, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !174, line: 694, column: 5)
!1753 = !DILocation(line: 696, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !174, line: 698, column: 3)
!1755 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 697, column: 3)
!1756 = !DILocalVariable(name: "tmp___0", scope: !1617, file: !174, line: 666, type: !44)
!1757 = !DILocation(line: 696, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 696, column: 7)
!1759 = !DILocation(line: 696, column: 7, scope: !1698)
!1760 = !DILocation(line: 698, column: 38, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !174, line: 698, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !174, line: 697, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !174, line: 696, column: 23)
!1764 = !DILocation(line: 698, column: 5, scope: !1761)
!1765 = !DILocation(line: 699, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !174, line: 700, column: 5)
!1767 = !DILocation(line: 701, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 701, column: 7)
!1769 = !DILocation(line: 701, column: 14, scope: !1768)
!1770 = !DILocation(line: 701, column: 7, scope: !1698)
!1771 = !DILocation(line: 703, column: 28, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !174, line: 702, column: 5)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !174, line: 701, column: 20)
!1774 = !DILocation(line: 703, column: 21, scope: !1772)
!1775 = !DILocation(line: 703, column: 26, scope: !1772)
!1776 = !DILocation(line: 703, column: 38, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !174, line: 704, column: 5)
!1778 = !DILocation(line: 704, column: 30, scope: !1777)
!1779 = !DILocation(line: 704, column: 34, scope: !1777)
!1780 = !DILocation(line: 704, column: 43, scope: !1777)
!1781 = !DILocation(line: 703, column: 5, scope: !1777)
!1782 = !DILocation(line: 705, column: 5, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1772, file: !174, line: 706, column: 5)
!1784 = !DILocation(line: 707, column: 3, scope: !1698)
