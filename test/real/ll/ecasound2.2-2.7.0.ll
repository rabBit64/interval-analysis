; ModuleID = '/tmp/tmp.ll'
source_filename = "c/ecasound2.2-2.7.0.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.__anonunion___sigaction_handler_40, %struct.__anonstruct___sigset_t_21, i32, void ()* }
%union.__anonunion___sigaction_handler_40 = type { void (i32)* }
%struct.__anonstruct___sigset_t_21 = type { [16 x i64] }
%struct.eci_internal = type { i32, i32, i32, i32, [64 x i8], i32, %struct.eci_parser*, [32 x i8], [65536 x i8] }
%struct.eci_parser = type { i32, i32, double, i64, i32, i32, [4 x i8], %struct.eci_los_list*, %struct.eci_string_s, %struct.eci_string_s, %struct.eci_string_s, i32, i32, i32, i32, i8 }
%struct.eci_los_list = type { %struct.eci_los_list*, %struct.eci_los_list*, %struct.eci_string_s }
%struct.eci_string_s = type { i8*, i32, i32 }
%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i16, i64, i32, i32, i32, i32, i64, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [276 x i8] c"\0A***********************************************************************\0A* Message from libecasoundc:\0A* \0A* 'ECASOUND' environment variable not set. Using the default value \0A* value 'ECASOUND=ecasound'.\0A***********************************************************************\0A\0A\00", align 1
@eci_str_no_ecasound_env = global i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@.str.1 = private unnamed_addr constant [326 x i8] c"\0A***********************************************************************\0A* Message from libecasoundc:\0A* \0A* A null client handle detected. This is usually caused by a bug \0A* in the ECI application. Please report this bug to the author of\0A* the program.\0A***********************************************************************\0A\0A\00", align 1
@eci_str_null_handle = global i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.1, i32 0, i32 0), align 8, !dbg !268
@.str.2 = private unnamed_addr constant [443 x i8] c"\0A***********************************************************************\0A* Message from libecasoundc:\0A* \0A* Connection to the processing engine was lost. Check that ecasound \0A* is correctly installed. Also make sure that ecasound is either \0A* in some directory listed in PATH, or the environment variable\0A* 'ECASOUND' contains the path to a working ecasound executable.\0A***********************************************************************\0A\0A\00", align 1
@eci_str_sync_lost = global i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str.2, i32 0, i32 0), align 8, !dbg !270
@static_eci_rep = internal global i8* null, align 8, !dbg !272
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Warning: DBC_CHECK failed - \22%s\22, %s, %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"static_eci_rep == NULL\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"/home/wslee/benchmarks/sound/ecasound2.2-2.7.0/libecasoundc/ecasoundc_sa.c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"(ecasoundc_sa) launching ecasound FAILED!\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"debug 256\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"int-set-float-to-string-precision 17\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"int-output-mode-wellformed\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"quit\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"sync error\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%s %.32f\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"ECAPLAY_OUTPUT_DEVICE\00", align 1
@ecaplay_output = internal global i8* null, align 8, !dbg !274
@ecaplay_mode = internal global i32 0, align 4, !dbg !277
@.str.21 = private unnamed_addr constant [50 x i8] c"(ecaplay) Errors encountered, return code is %d.\0A\00", align 1
@.str.22 = private unnamed_addr constant [1288 x i8] c"Usage: %s [-ahtsfmbcru] FILE1 [FILE2] [FILEn]\0A \09-h      Prints this usage message.  (help)\0A\09-a[:]bits,channels,rate     Changes the format assumed by default \0A\09                            for headerless data.  (adjust)\0A\09-t      Prints the summed length of all the files processed.  (total)\0A\09        (Ignored if with -s) \0A\09-s      Enables script mode: One info type per file per line.   (script)\0A\09        (Defaults to length in secs.) \0A\09-f      With -s will return the format string as info, alone it will \0A\09        add it to the main display.  (format)\0A\09    -b  If -s and -f are enabled with this the info printed will be \0A\09        the sample's bitwidth.  (bits)\0A\09    -c  If -s and -f are enabled with this the info printed will be \0A\09        the channel count.  (channel count)\0A\09    -r  If -s and -f are enabled with this the info printed will be \0A\09        the sampling rate.  (rate)\0A\09-m      Will print human computable time as in main display but in \0A\09        batch fashion.  (minutes)\0A\09        (Only with -s)\0A\09-u      This batchmode option returns the length of specified files \0A\09        in samples. (Smallest Unit)\0A\09        (This information is worthless if you don't know the sampling \0A\09        rate of the file.) (Only with -s)\0A(Note that out of context options will be ignored.)\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [99 x i8] c"Usage: %s [-ahtsfmbcru] FILE1 [FILE2] [FILEn]\0A\0A\09 Use the -h switch for help or see the man page.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"eci_rep != NULL\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"eci_rep\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"parser != 0\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"str->d[0] == 0\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"newsize <= 16777216\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"eci_string_add\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"newbuf\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"space_needed <= dst->size\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"\0A(ecasoundc_sa) Error='%s', cmd='%s' last_error='%s' cmd_cnt=%d last_cnt=%d.\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ECASOUND\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"ecasound\00", align 1
@.str.37 = private unnamed_addr constant [72 x i8] c"eci_rep->commands_counter_rep >= eci_rep->parser_repp->last_counter_rep\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"read() error\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"parser->state_rep == ECI_STATE_COMMON_LF_3\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"item != NULL\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"(ecaplay) Unable to flush playlist '%s'.\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"/.ecasound\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"(ecaplay) Creating directory %s.\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"/ecaplay_queue\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@ecaplay_skip = internal global i32 0, align 4, !dbg !279
@ecaplay_skip_flag = internal global i32 0, align 4, !dbg !294
@.str.48 = private unnamed_addr constant [36 x i8] c"\0A(ecaplay) Interrupted, exiting...\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"engine-status\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"(ecaplay) Skipping...\0A\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"exiting...\0A\00", align 1
@ecaplay_initialized = internal global i32 0, align 4, !dbg !286
@ecaplay_next = internal global [4096 x i8] zeroinitializer, align 16, !dbg !281
@ecaplay_debuglevel = internal global i32 256, align 4, !dbg !288
@.str.53 = private unnamed_addr constant [9 x i8] c"debug %d\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"cs-add ecaplay_chainsetup\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"cs-list\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"(ecaplay) Warning! Failed to add a new chainsetup.\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"c-add ecaplay_chain\00", align 1
@ecaplay_audio_format = internal global [64 x i8] zeroinitializer, align 16, !dbg !290
@.str.58 = private unnamed_addr constant [15 x i8] c"ao-add-default\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"ao-add \00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"ao-add %s\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"cs-connect\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"(ecaplay) Unable to play file '%s':\0A%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"cs-connected\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"ecaplay_chainsetup\00", align 1
@.str.65 = private unnamed_addr constant [55 x i8] c"(ecaplay) Error while playing file '%s' . Skipping...\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"(ecaplay) Playing %d: '%s' (%s).\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ai-add '\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"ai-add \22%s\22\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"ai-list\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"(ecaplay) Warning! Failed to add input '%s'.\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"ao-add null\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"ai-iselect 1\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"ai-get-format\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"cs-disconnect\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"ao-iselect 1\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"ao-remove\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"cs-set-audio-format -f:\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"cs-set-audio-format \00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"(ecaplay) Unknown audio format encountered.\0A\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"ao-list\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"(ecaplay) Warning! Failed to add output device.\0A\00", align 1
@once = internal global i32 1, align 4, !dbg !292
@.str.84 = private unnamed_addr constant [12 x i8] c"ao-describe\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"(ecaplay) Output device: '%s'\0A\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.87 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"(ecaplay) Setting log level to %d.\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"(ecaplay) Flushing playlist.\0A\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"(ecaplay) Skipping the first %d files..\0A\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"(ecaplay) Playlist mode selected (file: %s).\0A\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"~/.ecasound/ecaplay_queue\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"(ecaplay) Queuing tracks to playlist.\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"(ecaplay) Error! Unknown option '%s'.\0A\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"Ecaplay v%s (%s)\0A\0A\00", align 1
@ecaplay_version = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), align 8, !dbg !299
@.str.96 = private unnamed_addr constant [6 x i8] c"2.7.0\00", align 1
@.str.97 = private unnamed_addr constant [67 x i8] c"Copyright (C) 1997-2005 Kai Vehmanen, released under GPL licence \0A\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"Ecaplay comes with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.99 = private unnamed_addr constant [68 x i8] c"You may redistribute copies of ecasound under the terms of the GNU\0A\00", align 1
@.str.100 = private unnamed_addr constant [71 x i8] c"General Public License. For more information about these matters, see\0A\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"the file named COPYING.\0A\00", align 1
@.str.102 = private unnamed_addr constant [56 x i8] c"\0AUSAGE: ecaplay [-dfhklopq] [ file1 file2 ... fileN ]\0A\0A\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"See ecaplay(1) man page for more details.\0A\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"20061206-45\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"(ecaplay) Track '%s' added to playlist.\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_init() #0 !dbg !307 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata !4, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata !4, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !314
  %1 = ptrtoint i8* %0 to i64, !dbg !317
  %cmp = icmp eq i64 %1, 0, !dbg !318
  br i1 %cmp, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !320
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 264), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @eci_init_r(), !dbg !326
  store i8* %call1, i8** @static_eci_rep, align 8, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_init_r() #0 !dbg !331 {
entry:
  %cmd_send_pipe = alloca [2 x i32], align 4
  %cmd_receive_pipe = alloca [2 x i32], align 4
  %args = alloca [4 x i8*], align 16
  %sa = alloca %struct.sigaction, align 8
  %pid = alloca i32, align 4
  %buf = alloca [1 x i8], align 1
  %status = alloca i32, align 4
  %pid___0 = alloca i32, align 4
  %ign_handler = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata [2 x i32]* %cmd_send_pipe, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata [2 x i32]* %cmd_receive_pipe, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata [4 x i8*]* %args, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata %struct.sigaction* %sa, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %pid, metadata !346, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %status, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %pid___0, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata %struct.sigaction* %ign_handler, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata !4, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata !4, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata !4, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata !4, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata !4, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata !4, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata !4, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata !4, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata !4, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata !4, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata !4, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata !4, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata !4, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata !4, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata !4, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct.eci_internal* null, metadata !388, metadata !DIExpression()), !dbg !389
  %call = call i8* @eci_impl_get_ecasound_path(), !dbg !390
  call void @llvm.dbg.value(metadata i8* %call, metadata !394, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %call, metadata !395, metadata !DIExpression()), !dbg !389
  %0 = ptrtoint i8* %call to i64, !dbg !396
  %cmp = icmp ne i64 %0, 0, !dbg !398
  br i1 %cmp, label %if.then, label %if.end111, !dbg !399

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i32 0, i32 0, !dbg !400
  %call1 = call i32 @pipe(i32* %arraydecay) #7, !dbg !404
  call void @llvm.dbg.value(metadata i32 %call1, metadata !405, metadata !DIExpression()), !dbg !389
  %cmp2 = icmp eq i32 %call1, 0, !dbg !406
  br i1 %cmp2, label %if.then3, label %if.end110, !dbg !408

if.then3:                                         ; preds = %if.then
  %arraydecay4 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i32 0, i32 0, !dbg !409
  %call5 = call i32 @pipe(i32* %arraydecay4) #7, !dbg !413
  call void @llvm.dbg.value(metadata i32 %call5, metadata !414, metadata !DIExpression()), !dbg !389
  %cmp6 = icmp eq i32 %call5, 0, !dbg !415
  br i1 %cmp6, label %if.then7, label %if.end109, !dbg !417

if.then7:                                         ; preds = %if.then3
  %call8 = call i32 @fork() #7, !dbg !418
  call void @llvm.dbg.value(metadata i32 %call8, metadata !422, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 %call8, metadata !423, metadata !DIExpression()), !dbg !389
  %cmp9 = icmp eq i32 %call8, 0, !dbg !424
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !426

if.then10:                                        ; preds = %if.then7
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 0, !dbg !427
  store i8* null, i8** %arrayidx, align 16, !dbg !430
  %arrayidx11 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 1, !dbg !427
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %arrayidx11, align 8, !dbg !430
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 2, !dbg !427
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8** %arrayidx12, align 16, !dbg !430
  %arrayidx13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 3, !dbg !427
  store i8* null, i8** %arrayidx13, align 8, !dbg !430
  call void @llvm.dbg.value(metadata i32 0, metadata !431, metadata !DIExpression()), !dbg !389
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 0, !dbg !432
  %sa_handler = bitcast %union.__anonunion___sigaction_handler_40* %__sigaction_handler to void (i32)**, !dbg !433
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %sa_handler, align 8, !dbg !434
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 1, !dbg !435
  %call14 = call i32 @sigemptyset(%struct.__anonstruct___sigset_t_21* %sa_mask) #7, !dbg !437
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 2, !dbg !438
  store i32 0, i32* %sa_flags, align 8, !dbg !439
  %call15 = call i32 @sigaction(i32 1, %struct.sigaction* %sa, %struct.sigaction* null) #7, !dbg !440
  %call16 = call i32 @setsid() #7, !dbg !442
  %call17 = call i32 @fork() #7, !dbg !444
  call void @llvm.dbg.value(metadata i32 %call17, metadata !446, metadata !DIExpression()), !dbg !389
  %cmp18 = icmp ne i32 %call17, 0, !dbg !447
  br i1 %cmp18, label %if.then19, label %if.end, !dbg !449

if.then19:                                        ; preds = %if.then10
  call void @_exit(i32 0) #8, !dbg !450
  unreachable, !dbg !450

if.end:                                           ; preds = %if.then10
  %arrayidx20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 0, !dbg !454
  store i8* %call, i8** %arrayidx20, align 16, !dbg !456
  %call21 = call i32 @close(i32 0), !dbg !457
  %call22 = call i32 @close(i32 1), !dbg !459
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i64 0, i64 0, !dbg !461
  %1 = load i32, i32* %arrayidx23, align 4, !dbg !461
  %call24 = call i32 @dup2(i32 %1, i32 0) #7, !dbg !463
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 1, !dbg !464
  %2 = load i32, i32* %arrayidx25, align 4, !dbg !464
  %call26 = call i32 @dup2(i32 %2, i32 1) #7, !dbg !466
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 0, !dbg !467
  %3 = load i32, i32* %arrayidx27, align 4, !dbg !467
  %call28 = call i32 @close(i32 %3), !dbg !469
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 1, !dbg !470
  %4 = load i32, i32* %arrayidx29, align 4, !dbg !470
  %call30 = call i32 @close(i32 %4), !dbg !472
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i64 0, i64 0, !dbg !473
  %5 = load i32, i32* %arrayidx31, align 4, !dbg !473
  %call32 = call i32 @close(i32 %5), !dbg !475
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i64 0, i64 1, !dbg !476
  %6 = load i32, i32* %arrayidx33, align 4, !dbg !476
  %call34 = call i32 @close(i32 %6), !dbg !478
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !479
  %call35 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %7), !dbg !481
  %call36 = call i32 @getpid() #7, !dbg !482
  store i32 %call36, i32* %pid, align 4, !dbg !484
  %8 = bitcast i32* %pid to i8*, !dbg !485
  %call37 = call i32 @write(i32 1, i8* %8, i32 4), !dbg !487
  %arraydecay38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i32 0, i32 0, !dbg !488
  %9 = bitcast i8** %arraydecay38 to i8*, !dbg !490
  %call39 = call i32 @write(i32 1, i8* %9, i32 1), !dbg !491
  call void @llvm.dbg.value(metadata i32 %call39, metadata !431, metadata !DIExpression()), !dbg !389
  %arrayidx40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i64 0, i64 0, !dbg !492
  %10 = load i8*, i8** %arrayidx40, align 16, !dbg !492
  %arraydecay41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args, i32 0, i32 0, !dbg !494
  %call42 = call i32 @execvp(i8* %10, i8** %arraydecay41) #7, !dbg !495
  call void @llvm.dbg.value(metadata i32 %call42, metadata !431, metadata !DIExpression()), !dbg !389
  %cmp43 = icmp slt i32 %call42, 0, !dbg !496
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !498

if.then44:                                        ; preds = %if.end
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0)), !dbg !499
  br label %if.end46, !dbg !503

if.end46:                                         ; preds = %if.then44, %if.end
  %call47 = call i32 @close(i32 0), !dbg !504
  %call48 = call i32 @close(i32 1), !dbg !507
  call void @_exit(i32 %call42) #8, !dbg !509
  unreachable, !dbg !509

if.else:                                          ; preds = %if.then7
  %__sigaction_handler49 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 0, !dbg !511
  %sa_handler50 = bitcast %union.__anonunion___sigaction_handler_40* %__sigaction_handler49 to void (i32)**, !dbg !514
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %sa_handler50, align 8, !dbg !515
  %sa_mask51 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 1, !dbg !516
  %call52 = call i32 @sigemptyset(%struct.__anonstruct___sigset_t_21* %sa_mask51) #7, !dbg !518
  %sa_flags53 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 2, !dbg !519
  store i32 0, i32* %sa_flags53, align 8, !dbg !520
  %call54 = call i32 @sigaction(i32 13, %struct.sigaction* %ign_handler, %struct.sigaction* null) #7, !dbg !521
  %call55 = call i32 @sigaction(i32 8, %struct.sigaction* %ign_handler, %struct.sigaction* null) #7, !dbg !523
  %call56 = call noalias i8* @calloc(i32 1, i32 65664) #7, !dbg !525
  call void @llvm.dbg.value(metadata i8* %call56, metadata !527, metadata !DIExpression()), !dbg !389
  %11 = bitcast i8* %call56 to %struct.eci_internal*, !dbg !528
  call void @llvm.dbg.value(metadata %struct.eci_internal* %11, metadata !388, metadata !DIExpression()), !dbg !389
  %call57 = call noalias i8* @calloc(i32 1, i32 120) #7, !dbg !529
  call void @llvm.dbg.value(metadata i8* %call57, metadata !531, metadata !DIExpression()), !dbg !389
  %12 = bitcast i8* %call57 to %struct.eci_parser*, !dbg !532
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !533
  store %struct.eci_parser* %12, %struct.eci_parser** %parser_repp, align 8, !dbg !534
  %pid_of_child_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 0, !dbg !535
  store i32 %call8, i32* %pid_of_child_rep, align 8, !dbg !536
  %commands_counter_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 5, !dbg !537
  store i32 0, i32* %commands_counter_rep, align 8, !dbg !538
  %parser_repp58 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !539
  %13 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp58, align 8, !dbg !539
  %last_counter_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %13, i32 0, i32 5, !dbg !540
  store i32 0, i32* %last_counter_rep, align 4, !dbg !541
  %parser_repp59 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !542
  %14 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp59, align 8, !dbg !542
  %token_phase_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %14, i32 0, i32 13, !dbg !543
  store i32 0, i32* %token_phase_rep, align 8, !dbg !544
  %parser_repp60 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !545
  %15 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp60, align 8, !dbg !545
  %buffer_current_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %15, i32 0, i32 14, !dbg !546
  store i32 0, i32* %buffer_current_rep, align 4, !dbg !547
  %parser_repp61 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !548
  %16 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp61, align 8, !dbg !548
  %sync_lost_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %16, i32 0, i32 15, !dbg !549
  store i8 0, i8* %sync_lost_rep, align 8, !dbg !550
  %parser_repp62 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 6, !dbg !551
  %17 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp62, align 8, !dbg !551
  call void @eci_impl_clean_last_values(%struct.eci_parser* %17), !dbg !553
  %pid_of_child_rep63 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %11, i32 0, i32 0, !dbg !554
  %18 = load i32, i32* %pid_of_child_rep63, align 8, !dbg !554
  %call64 = call i32 @waitpid(i32 %18, i32* %status, i32 0), !dbg !556
  %arrayidx65 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 0, !dbg !557
  %19 = load i32, i32* %arrayidx65, align 4, !dbg !557
  %20 = bitcast i32* %pid___0 to i8*, !dbg !559
  %call66 = call i32 @read(i32 %19, i8* %20, i32 4), !dbg !560
  call void @llvm.dbg.value(metadata i32 %call66, metadata !561, metadata !DIExpression()), !dbg !389
  %conv = sext i32 %call66 to i64, !dbg !562
  %cmp67 = icmp ne i64 %conv, 4, !dbg !564
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !565

if.then69:                                        ; preds = %if.else
  call void @eci_impl_free_parser(%struct.eci_internal* %11), !dbg !566
  %21 = bitcast %struct.eci_internal* %11 to i8*, !dbg !570
  call void @free(i8* %21) #7, !dbg !572
  call void @llvm.dbg.value(metadata %struct.eci_internal* null, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end70, !dbg !573

if.end70:                                         ; preds = %if.then69, %if.else
  %eci_rep.0 = phi %struct.eci_internal* [ null, %if.then69 ], [ %11, %if.else ], !dbg !574
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.0, metadata !388, metadata !DIExpression()), !dbg !389
  %22 = load i32, i32* %pid___0, align 4, !dbg !575
  %pid_of_child_rep71 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 0, !dbg !577
  store i32 %22, i32* %pid_of_child_rep71, align 8, !dbg !578
  %call72 = call i32 @getpid() #7, !dbg !579
  %pid_of_parent_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 1, !dbg !581
  store i32 %call72, i32* %pid_of_parent_rep, align 4, !dbg !582
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 0, !dbg !583
  %23 = load i32, i32* %arrayidx73, align 4, !dbg !583
  %cmd_read_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 2, !dbg !584
  store i32 %23, i32* %cmd_read_fd_rep, align 8, !dbg !585
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_receive_pipe, i64 0, i64 1, !dbg !586
  %24 = load i32, i32* %arrayidx74, align 4, !dbg !586
  %call75 = call i32 @close(i32 %24), !dbg !588
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i64 0, i64 1, !dbg !589
  %25 = load i32, i32* %arrayidx76, align 4, !dbg !589
  %cmd_write_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 3, !dbg !590
  store i32 %25, i32* %cmd_write_fd_rep, align 4, !dbg !591
  %arrayidx77 = getelementptr inbounds [2 x i32], [2 x i32]* %cmd_send_pipe, i64 0, i64 0, !dbg !592
  %26 = load i32, i32* %arrayidx77, align 4, !dbg !592
  %call78 = call i32 @close(i32 %26), !dbg !594
  %cmd_read_fd_rep79 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 2, !dbg !595
  %27 = load i32, i32* %cmd_read_fd_rep79, align 8, !dbg !595
  %call80 = call i32 (i32, i32, ...) @fcntl(i32 %27, i32 4, i32 2048), !dbg !597
  %cmd_write_fd_rep81 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 3, !dbg !598
  %28 = load i32, i32* %cmd_write_fd_rep81, align 4, !dbg !598
  %call82 = call i32 (i32, i32, ...) @fcntl(i32 %28, i32 4, i32 2048), !dbg !600
  %cmd_read_fd_rep83 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 2, !dbg !601
  %29 = load i32, i32* %cmd_read_fd_rep83, align 8, !dbg !601
  %arraydecay84 = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i32 0, i32 0, !dbg !603
  %call85 = call i32 @eci_impl_fd_read(i32 %29, i8* %arraydecay84, i32 1, i32 5000), !dbg !604
  call void @llvm.dbg.value(metadata i32 %call85, metadata !561, metadata !DIExpression()), !dbg !389
  %cmp86 = icmp ne i32 %call85, 1, !dbg !605
  br i1 %cmp86, label %if.then88, label %if.else89, !dbg !607

if.then88:                                        ; preds = %if.end70
  call void @eci_impl_free_parser(%struct.eci_internal* %eci_rep.0), !dbg !608
  %30 = bitcast %struct.eci_internal* %eci_rep.0 to i8*, !dbg !612
  call void @free(i8* %30) #7, !dbg !614
  call void @llvm.dbg.value(metadata %struct.eci_internal* null, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end107, !dbg !615

if.else89:                                        ; preds = %if.end70
  %call90 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !616
  call void @llvm.dbg.value(metadata i32 %call90, metadata !620, metadata !DIExpression()), !dbg !389
  %cmd_write_fd_rep91 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 3, !dbg !621
  %31 = load i32, i32* %cmd_write_fd_rep91, align 4, !dbg !621
  %call92 = call i32 @write(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %call90), !dbg !623
  %call93 = call i32 @strlen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)) #9, !dbg !624
  call void @llvm.dbg.value(metadata i32 %call93, metadata !626, metadata !DIExpression()), !dbg !389
  %cmd_write_fd_rep94 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 3, !dbg !627
  %32 = load i32, i32* %cmd_write_fd_rep94, align 4, !dbg !627
  %call95 = call i32 @write(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 %call93), !dbg !629
  %call96 = call i32 @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !630
  call void @llvm.dbg.value(metadata i32 %call96, metadata !632, metadata !DIExpression()), !dbg !389
  %cmd_write_fd_rep97 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 3, !dbg !633
  %33 = load i32, i32* %cmd_write_fd_rep97, align 4, !dbg !633
  %call98 = call i32 @write(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 %call96), !dbg !635
  %commands_counter_rep99 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 5, !dbg !636
  %34 = load i32, i32* %commands_counter_rep99, align 8, !dbg !637
  %inc = add nsw i32 %34, 1, !dbg !637
  store i32 %inc, i32* %commands_counter_rep99, align 8, !dbg !637
  call void @eci_impl_read_return_value(%struct.eci_internal* %eci_rep.0, i32 5000), !dbg !638
  %commands_counter_rep100 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 5, !dbg !640
  %35 = load i32, i32* %commands_counter_rep100, align 8, !dbg !640
  %parser_repp101 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep.0, i32 0, i32 6, !dbg !642
  %36 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp101, align 8, !dbg !642
  %last_counter_rep102 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %36, i32 0, i32 5, !dbg !643
  %37 = load i32, i32* %last_counter_rep102, align 4, !dbg !643
  %cmp103 = icmp ne i32 %35, %37, !dbg !644
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !645

if.then105:                                       ; preds = %if.else89
  call void @eci_impl_free_parser(%struct.eci_internal* %eci_rep.0), !dbg !646
  %38 = bitcast %struct.eci_internal* %eci_rep.0 to i8*, !dbg !650
  call void @free(i8* %38) #7, !dbg !652
  call void @llvm.dbg.value(metadata %struct.eci_internal* null, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end106, !dbg !653

if.end106:                                        ; preds = %if.then105, %if.else89
  %eci_rep.1 = phi %struct.eci_internal* [ null, %if.then105 ], [ %eci_rep.0, %if.else89 ], !dbg !574
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.1, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then88
  %eci_rep.2 = phi %struct.eci_internal* [ null, %if.then88 ], [ %eci_rep.1, %if.end106 ], !dbg !654
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.2, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end108

if.end108:                                        ; preds = %if.end107
  br label %if.end109, !dbg !655

if.end109:                                        ; preds = %if.end108, %if.then3
  %eci_rep.3 = phi %struct.eci_internal* [ %eci_rep.2, %if.end108 ], [ null, %if.then3 ], !dbg !656
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.3, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end110, !dbg !657

if.end110:                                        ; preds = %if.end109, %if.then
  %eci_rep.4 = phi %struct.eci_internal* [ %eci_rep.3, %if.end109 ], [ null, %if.then ], !dbg !656
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.4, metadata !388, metadata !DIExpression()), !dbg !389
  br label %if.end111, !dbg !658

if.end111:                                        ; preds = %if.end110, %entry
  %eci_rep.5 = phi %struct.eci_internal* [ %eci_rep.4, %if.end110 ], [ null, %entry ], !dbg !656
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep.5, metadata !388, metadata !DIExpression()), !dbg !389
  %39 = bitcast %struct.eci_internal* %eci_rep.5 to i8*, !dbg !659
  ret i8* %39, !dbg !660
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @eci_impl_get_ecasound_path() #0 !dbg !661 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata !4, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata !4, metadata !668, metadata !DIExpression()), !dbg !669
  %call = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !670
  call void @llvm.dbg.value(metadata i8* %call, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8* %call, metadata !676, metadata !DIExpression()), !dbg !675
  %0 = ptrtoint i8* %call to i64, !dbg !677
  %cmp = icmp eq i64 %0, 0, !dbg !679
  br i1 %cmp, label %if.then, label %if.end, !dbg !680

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !681
  %2 = load i8*, i8** @eci_str_no_ecasound_env, align 8, !dbg !685
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %2), !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), metadata !676, metadata !DIExpression()), !dbg !675
  br label %if.end, !dbg !687

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %if.then ], [ %call, %entry ], !dbg !688
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !676, metadata !DIExpression()), !dbg !675
  ret i8* %result.0, !dbg !689
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__anonstruct___sigset_t_21*) #3

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: noreturn
declare void @_exit(i32) #4

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @write(i32, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i32, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_clean_last_values(%struct.eci_parser* %parser) #0 !dbg !690 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_parser* %parser, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata !4, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata !4, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata !4, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = ptrtoint %struct.eci_parser* %parser to i64, !dbg !701
  %cmp = icmp ne i64 %0, 0, !dbg !704
  br i1 %cmp, label %if.end, label %if.then, !dbg !705

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 891), !dbg !710
  br label %if.end, !dbg !711

if.end:                                           ; preds = %if.then, %entry
  %last_los_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 7, !dbg !712
  %2 = load %struct.eci_los_list*, %struct.eci_los_list** %last_los_repp, align 8, !dbg !712
  call void @eci_impl_los_list_clear(%struct.eci_los_list* %2), !dbg !715
  %last_los_repp1 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 7, !dbg !716
  store %struct.eci_los_list* null, %struct.eci_los_list** %last_los_repp1, align 8, !dbg !717
  %last_i_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 4, !dbg !718
  store i32 0, i32* %last_i_rep, align 8, !dbg !719
  %last_li_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 3, !dbg !720
  store i64 0, i64* %last_li_rep, align 8, !dbg !721
  %last_f_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 2, !dbg !722
  store double 0.000000e+00, double* %last_f_rep, align 8, !dbg !723
  %last_error_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 8, !dbg !724
  call void @eci_string_clear(%struct.eci_string_s* %last_error_repp), !dbg !726
  %last_s_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 9, !dbg !727
  call void @eci_string_clear(%struct.eci_string_s* %last_s_repp), !dbg !729
  ret void, !dbg !730
}

declare i32 @waitpid(i32, i32*, i32) #2

declare i32 @read(i32, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_free_parser(%struct.eci_internal* %eci_rep) #0 !dbg !731 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata !4, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata !4, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata !4, metadata !740, metadata !DIExpression()), !dbg !741
  %tobool = icmp ne %struct.eci_internal* %eci_rep, null, !dbg !742
  br i1 %tobool, label %if.end, label %if.then, !dbg !745

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !746
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 881), !dbg !750
  br label %if.end, !dbg !751

if.end:                                           ; preds = %if.then, %entry
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !752
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !752
  %last_error_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 8, !dbg !755
  call void @eci_string_free(%struct.eci_string_s* %last_error_repp), !dbg !756
  %parser_repp1 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !757
  %2 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp1, align 8, !dbg !757
  %last_s_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %2, i32 0, i32 9, !dbg !759
  call void @eci_string_free(%struct.eci_string_s* %last_s_repp), !dbg !760
  %parser_repp2 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !761
  %3 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp2, align 8, !dbg !761
  %buffer_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %3, i32 0, i32 10, !dbg !763
  call void @eci_string_free(%struct.eci_string_s* %buffer_rep), !dbg !764
  %parser_repp3 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !765
  %4 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp3, align 8, !dbg !765
  %5 = bitcast %struct.eci_parser* %4 to i8*, !dbg !767
  call void @free(i8* %5) #7, !dbg !768
  %parser_repp4 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !769
  store %struct.eci_parser* null, %struct.eci_parser** %parser_repp4, align 8, !dbg !770
  ret void, !dbg !771
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @eci_impl_fd_read(i32 %fd, i8* %buf, i32 %count, i32 %timeout) #0 !dbg !772 {
entry:
  %ufds = alloca %struct.pollfd, align 4
  call void @llvm.dbg.value(metadata i32 %fd, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %buf, metadata !779, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %count, metadata !780, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %timeout, metadata !781, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata %struct.pollfd* %ufds, metadata !782, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 1, metadata !789, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()), !dbg !778
  %fd1 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds, i32 0, i32 0, !dbg !791
  store i32 %fd, i32* %fd1, align 4, !dbg !794
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds, i32 0, i32 1, !dbg !795
  store i16 3, i16* %events, align 4, !dbg !796
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds, i32 0, i32 2, !dbg !797
  store i16 0, i16* %revents, align 2, !dbg !798
  %conv = sext i32 1 to i64, !dbg !799
  %call = call i32 @poll(%struct.pollfd* %ufds, i64 %conv, i32 %timeout), !dbg !801
  call void @llvm.dbg.value(metadata i32 %call, metadata !802, metadata !DIExpression()), !dbg !778
  %cmp = icmp sgt i32 %call, 0, !dbg !803
  br i1 %cmp, label %if.then, label %if.else14, !dbg !805

if.then:                                          ; preds = %entry
  %revents3 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds, i32 0, i32 2, !dbg !806
  %0 = load i16, i16* %revents3, align 2, !dbg !806
  %conv4 = sext i16 %0 to i32, !dbg !809
  %and = and i32 %conv4, 1, !dbg !810
  %tobool = icmp ne i32 %and, 0, !dbg !810
  br i1 %tobool, label %if.then5, label %if.else, !dbg !811

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @read(i32 %fd, i8* %buf, i32 %count), !dbg !812
  call void @llvm.dbg.value(metadata i32 %call6, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end13, !dbg !816

if.else:                                          ; preds = %if.then
  %revents7 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds, i32 0, i32 2, !dbg !817
  %1 = load i16, i16* %revents7, align 2, !dbg !817
  %conv8 = sext i16 %1 to i32, !dbg !819
  %and9 = and i32 %conv8, 2, !dbg !820
  %tobool10 = icmp ne i32 %and9, 0, !dbg !820
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !809

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @read(i32 %fd, i8* %buf, i32 %count), !dbg !821
  call void @llvm.dbg.value(metadata i32 %call12, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end, !dbg !825

if.end:                                           ; preds = %if.then11, %if.else
  %rescount.0 = phi i32 [ %call12, %if.then11 ], [ 0, %if.else ], !dbg !826
  call void @llvm.dbg.value(metadata i32 %rescount.0, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then5
  %rescount.1 = phi i32 [ %call6, %if.then5 ], [ %rescount.0, %if.end ], !dbg !827
  call void @llvm.dbg.value(metadata i32 %rescount.1, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end19, !dbg !828

if.else14:                                        ; preds = %entry
  %cmp15 = icmp eq i32 %call, 0, !dbg !829
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !831

if.then17:                                        ; preds = %if.else14
  call void @llvm.dbg.value(metadata i32 -1, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end18, !dbg !832

if.end18:                                         ; preds = %if.then17, %if.else14
  %rescount.2 = phi i32 [ -1, %if.then17 ], [ 0, %if.else14 ], !dbg !826
  call void @llvm.dbg.value(metadata i32 %rescount.2, metadata !790, metadata !DIExpression()), !dbg !778
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  %rescount.3 = phi i32 [ %rescount.1, %if.end13 ], [ %rescount.2, %if.end18 ], !dbg !834
  call void @llvm.dbg.value(metadata i32 %rescount.3, metadata !790, metadata !DIExpression()), !dbg !778
  ret i32 %rescount.3, !dbg !835
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_read_return_value(%struct.eci_internal* %eci_rep, i32 %timeout) #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep, metadata !839, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i32 %timeout, metadata !841, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata !4, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata !4, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata !4, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata !4, metadata !848, metadata !DIExpression()), !dbg !849
  %raw_buffer_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 8, !dbg !850
  %arraydecay = getelementptr inbounds [65536 x i8], [65536 x i8]* %raw_buffer_repp, i32 0, i32 0, !dbg !852
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !853, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i32 0, metadata !854, metadata !DIExpression()), !dbg !840
  %commands_counter_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 5, !dbg !855
  %0 = load i32, i32* %commands_counter_rep, align 8, !dbg !855
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !857
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !857
  %last_counter_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 5, !dbg !858
  %2 = load i32, i32* %last_counter_rep, align 4, !dbg !858
  %cmp = icmp sge i32 %0, %2, !dbg !859
  br i1 %cmp, label %if.end, label %if.then, !dbg !860

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !861
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 1018), !dbg !865
  br label %if.end, !dbg !866

if.end:                                           ; preds = %if.then, %entry
  br label %while.body, !dbg !867

while.body:                                       ; preds = %if.end25, %if.end
  %attempts.0 = phi i32 [ 0, %if.end ], [ %inc26, %if.end25 ], !dbg !870
  call void @llvm.dbg.value(metadata i32 %attempts.0, metadata !854, metadata !DIExpression()), !dbg !840
  br label %while_continue___1, !dbg !871

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !871

while_continue:                                   ; preds = %while_continue___1
  %cmp1 = icmp slt i32 %attempts.0, 9, !dbg !872
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !875

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !876

if.end3:                                          ; preds = %while_continue
  %cmd_read_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 2, !dbg !878
  %4 = load i32, i32* %cmd_read_fd_rep, align 8, !dbg !878
  %call4 = call i32 @eci_impl_fd_read(i32 %4, i8* %arraydecay, i32 65535, i32 %timeout), !dbg !881
  call void @llvm.dbg.value(metadata i32 %call4, metadata !882, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i32 %call4, metadata !883, metadata !DIExpression()), !dbg !840
  %cmp5 = icmp sgt i32 %call4, 0, !dbg !884
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !886

if.then6:                                         ; preds = %if.end3
  %idx.ext = sext i32 %call4 to i64, !dbg !887
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !887
  store i8 0, i8* %add.ptr, align 1, !dbg !889
  call void @llvm.dbg.value(metadata i32 0, metadata !890, metadata !DIExpression()), !dbg !840
  br label %while.body8, !dbg !891

while.body8:                                      ; preds = %if.end11, %if.then6
  %n.0 = phi i32 [ 0, %if.then6 ], [ %inc, %if.end11 ], !dbg !894
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !890, metadata !DIExpression()), !dbg !840
  br label %while_continue___2, !dbg !895

while_continue___2:                               ; preds = %while.body8
  br label %while_continue___0, !dbg !895

while_continue___0:                               ; preds = %while_continue___2
  %cmp9 = icmp slt i32 %n.0, %call4, !dbg !896
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !899

if.then10:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !900

if.end11:                                         ; preds = %while_continue___0
  %parser_repp12 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !902
  %5 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp12, align 8, !dbg !902
  %idx.ext13 = sext i32 %n.0 to i64, !dbg !905
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext13, !dbg !905
  %6 = load i8, i8* %add.ptr14, align 1, !dbg !906
  call void @eci_impl_update_state(%struct.eci_parser* %5, i8 signext %6), !dbg !907
  %inc = add nsw i32 %n.0, 1, !dbg !908
  call void @llvm.dbg.value(metadata i32 %inc, metadata !890, metadata !DIExpression()), !dbg !840
  br label %while.body8, !dbg !891, !llvm.loop !909

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !911

while_break___0:                                  ; preds = %while_break___2, %if.then10
  %commands_counter_rep15 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 5, !dbg !912
  %7 = load i32, i32* %commands_counter_rep15, align 8, !dbg !912
  %parser_repp16 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !914
  %8 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp16, align 8, !dbg !914
  %last_counter_rep17 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %8, i32 0, i32 5, !dbg !915
  %9 = load i32, i32* %last_counter_rep17, align 4, !dbg !915
  %cmp18 = icmp eq i32 %7, %9, !dbg !916
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !917

if.then19:                                        ; preds = %while_break___0
  br label %while_break, !dbg !918

if.end20:                                         ; preds = %while_break___0
  br label %if.end25, !dbg !920

if.else:                                          ; preds = %if.end3
  %cmp21 = icmp slt i32 %call4, 0, !dbg !921
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !923

if.then22:                                        ; preds = %if.else
  %parser_repp23 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !924
  %10 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp23, align 8, !dbg !924
  %sync_lost_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %10, i32 0, i32 15, !dbg !926
  store i8 1, i8* %sync_lost_rep, align 8, !dbg !927
  br label %while_break, !dbg !928

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  %inc26 = add nsw i32 %attempts.0, 1, !dbg !929
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !854, metadata !DIExpression()), !dbg !840
  br label %while.body, !dbg !867, !llvm.loop !930

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !932

while_break:                                      ; preds = %while_break___1, %if.then22, %if.then19, %if.then2
  %commands_counter_rep27 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 5, !dbg !933
  %11 = load i32, i32* %commands_counter_rep27, align 8, !dbg !933
  %parser_repp28 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !935
  %12 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp28, align 8, !dbg !935
  %last_counter_rep29 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %12, i32 0, i32 5, !dbg !936
  %13 = load i32, i32* %last_counter_rep29, align 4, !dbg !936
  %cmp30 = icmp ne i32 %11, %13, !dbg !937
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !938

if.then31:                                        ; preds = %while_break
  %14 = bitcast %struct.eci_internal* %eci_rep to i8*, !dbg !939
  call void @eci_impl_dump_parser_state(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)), !dbg !943
  %parser_repp32 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %eci_rep, i32 0, i32 6, !dbg !944
  %15 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp32, align 8, !dbg !944
  %sync_lost_rep33 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %15, i32 0, i32 15, !dbg !945
  store i8 1, i8* %sync_lost_rep33, align 8, !dbg !946
  br label %if.end34, !dbg !947

if.end34:                                         ; preds = %if.then31, %while_break
  ret void, !dbg !948
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_ready() #0 !dbg !949 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !952
  %call = call i32 @eci_ready_r(i8* %0), !dbg !956
  call void @llvm.dbg.value(metadata i32 %call, metadata !957, metadata !DIExpression()), !dbg !958
  ret i32 %call, !dbg !959
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_ready_r(i8* %ptr) #0 !dbg !960 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !963, metadata !DIExpression()), !dbg !964
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !965
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !967, metadata !DIExpression()), !dbg !964
  %tobool = icmp ne i8* %ptr, null, !dbg !968
  br i1 %tobool, label %if.end, label %if.then, !dbg !970

if.then:                                          ; preds = %entry
  br label %return, !dbg !971

if.end:                                           ; preds = %entry
  %pid_of_child_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 0, !dbg !973
  %1 = load i32, i32* %pid_of_child_rep, align 8, !dbg !973
  %cmp = icmp sle i32 %1, 0, !dbg !975
  br i1 %cmp, label %if.then1, label %if.else, !dbg !976

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !977

if.else:                                          ; preds = %if.end
  %cmd_read_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 2, !dbg !979
  %2 = load i32, i32* %cmd_read_fd_rep, align 8, !dbg !979
  %cmp2 = icmp slt i32 %2, 0, !dbg !981
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !982

if.then3:                                         ; preds = %if.else
  br label %return, !dbg !983

if.else4:                                         ; preds = %if.else
  %cmd_write_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 3, !dbg !985
  %3 = load i32, i32* %cmd_write_fd_rep, align 4, !dbg !985
  %cmp5 = icmp slt i32 %3, 0, !dbg !987
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !988

if.then6:                                         ; preds = %if.else4
  br label %return, !dbg !989

if.end7:                                          ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  br label %return, !dbg !991

return:                                           ; preds = %if.end9, %if.then6, %if.then3, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then3 ], [ 0, %if.then6 ], [ 1, %if.end9 ], [ 0, %if.then ], !dbg !992
  ret i32 %retval.0, !dbg !993
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_cleanup() #0 !dbg !994 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !995
  %1 = ptrtoint i8* %0 to i64, !dbg !998
  %cmp = icmp ne i64 %1, 0, !dbg !999
  br i1 %cmp, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @static_eci_rep, align 8, !dbg !1001
  call void @eci_cleanup_r(i8* %2), !dbg !1005
  store i8* null, i8** @static_eci_rep, align 8, !dbg !1006
  br label %if.end, !dbg !1007

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1008
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_cleanup_r(i8* %ptr) #0 !dbg !1009 {
entry:
  %buf = alloca [1 x i8], align 1
  %fds = alloca [1 x %struct.pollfd], align 4
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata [1 x %struct.pollfd]* %fds, metadata !1016, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.declare(metadata !4, metadata !1019, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.declare(metadata !4, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata !4, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata !4, metadata !1025, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata !4, metadata !1027, metadata !DIExpression()), !dbg !1028
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1029
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1032, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 1, metadata !1033, metadata !DIExpression()), !dbg !1013
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1034
  %call = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %call, metadata !1038, metadata !DIExpression()), !dbg !1013
  %cmd_write_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 3, !dbg !1039
  %1 = load i32, i32* %cmd_write_fd_rep, align 4, !dbg !1039
  %call1 = call i32 @write(i32 %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %call), !dbg !1041
  %commands_counter_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1042
  %2 = load i32, i32* %commands_counter_rep, align 8, !dbg !1043
  %inc = add nsw i32 %2, 1, !dbg !1043
  store i32 %inc, i32* %commands_counter_rep, align 8, !dbg !1043
  br label %while.body, !dbg !1044

while.body:                                       ; preds = %if.end18, %entry
  %resread.0 = phi i32 [ 1, %entry ], [ %resread.2, %if.end18 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %resread.0, metadata !1033, metadata !DIExpression()), !dbg !1013
  br label %while_continue___0, !dbg !1048

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1048

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp sgt i32 %resread.0, 0, !dbg !1049
  br i1 %cmp, label %if.end, label %if.then, !dbg !1052

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1053

if.end:                                           ; preds = %while_continue
  %cmd_read_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 2, !dbg !1055
  %3 = load i32, i32* %cmd_read_fd_rep, align 8, !dbg !1055
  %arrayidx = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i64 0, i64 0, !dbg !1057
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 0, !dbg !1058
  store i32 %3, i32* %fd, align 4, !dbg !1059
  %arrayidx2 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i64 0, i64 0, !dbg !1060
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx2, i32 0, i32 1, !dbg !1061
  store i16 1, i16* %events, align 4, !dbg !1062
  %arrayidx3 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i64 0, i64 0, !dbg !1063
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx3, i32 0, i32 2, !dbg !1064
  store i16 0, i16* %revents, align 2, !dbg !1065
  %arraydecay = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i32 0, i32 0, !dbg !1066
  %call4 = call i32 @poll(%struct.pollfd* %arraydecay, i64 1, i32 30000), !dbg !1068
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1069, metadata !DIExpression()), !dbg !1013
  %arrayidx5 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i64 0, i64 0, !dbg !1070
  %revents6 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx5, i32 0, i32 2, !dbg !1072
  %4 = load i16, i16* %revents6, align 2, !dbg !1072
  %conv = sext i16 %4 to i32, !dbg !1073
  %and = and i32 %conv, 17, !dbg !1074
  %tobool = icmp ne i32 %and, 0, !dbg !1074
  br i1 %tobool, label %if.then7, label %if.else, !dbg !1075

if.then7:                                         ; preds = %if.end
  %cmd_read_fd_rep8 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 2, !dbg !1076
  %5 = load i32, i32* %cmd_read_fd_rep8, align 8, !dbg !1076
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i32 0, i32 0, !dbg !1080
  %call10 = call i32 @read(i32 %5, i8* %arraydecay9, i32 1), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1033, metadata !DIExpression()), !dbg !1013
  br label %if.end18, !dbg !1082

if.else:                                          ; preds = %if.end
  %arrayidx11 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %fds, i64 0, i64 0, !dbg !1083
  %revents12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx11, i32 0, i32 2, !dbg !1085
  %6 = load i16, i16* %revents12, align 2, !dbg !1085
  %conv13 = sext i16 %6 to i32, !dbg !1086
  %and14 = and i32 %conv13, 8, !dbg !1087
  %tobool15 = icmp ne i32 %and14, 0, !dbg !1087
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1088

if.then16:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 -2, metadata !1033, metadata !DIExpression()), !dbg !1013
  br label %if.end17, !dbg !1089

if.end17:                                         ; preds = %if.then16, %if.else
  %resread.1 = phi i32 [ -2, %if.then16 ], [ %resread.0, %if.else ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %resread.1, metadata !1033, metadata !DIExpression()), !dbg !1013
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then7
  %resread.2 = phi i32 [ %call10, %if.then7 ], [ %resread.1, %if.end17 ], !dbg !1091
  call void @llvm.dbg.value(metadata i32 %resread.2, metadata !1033, metadata !DIExpression()), !dbg !1013
  br label %while.body, !dbg !1044, !llvm.loop !1092

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1094

while_break:                                      ; preds = %while_break___0, %if.then
  %7 = ptrtoint %struct.eci_internal* %0 to i64, !dbg !1095
  %cmp19 = icmp ne i64 %7, 0, !dbg !1097
  br i1 %cmp19, label %if.then21, label %if.end26, !dbg !1098

if.then21:                                        ; preds = %while_break
  %cmd_read_fd_rep22 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 2, !dbg !1099
  %8 = load i32, i32* %cmd_read_fd_rep22, align 8, !dbg !1099
  %call23 = call i32 @close(i32 %8), !dbg !1103
  %cmd_write_fd_rep24 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 3, !dbg !1104
  %9 = load i32, i32* %cmd_write_fd_rep24, align 4, !dbg !1104
  %call25 = call i32 @close(i32 %9), !dbg !1106
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1107
  %10 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1107
  call void @eci_impl_clean_last_values(%struct.eci_parser* %10), !dbg !1109
  call void @eci_impl_free_parser(%struct.eci_internal* %0), !dbg !1110
  %11 = bitcast %struct.eci_internal* %0 to i8*, !dbg !1112
  call void @free(i8* %11) #7, !dbg !1114
  br label %if.end26, !dbg !1115

if.end26:                                         ; preds = %if.then21, %while_break
  ret void, !dbg !1116
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_check_handle(%struct.eci_internal* %eci_rep) #0 !dbg !1117 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_internal* %eci_rep, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata !4, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata !4, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata !4, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata !4, metadata !1126, metadata !DIExpression()), !dbg !1127
  %0 = ptrtoint %struct.eci_internal* %eci_rep to i64, !dbg !1128
  %cmp = icmp eq i64 %0, 0, !dbg !1131
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1132

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1133
  %2 = load i8*, i8** @eci_str_null_handle, align 8, !dbg !1137
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %2), !dbg !1138
  %3 = ptrtoint %struct.eci_internal* %eci_rep to i64, !dbg !1139
  %cmp1 = icmp ne i64 %3, 0, !dbg !1141
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !1142

if.then2:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1143
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 874), !dbg !1147
  br label %if.end, !dbg !1148

if.end:                                           ; preds = %if.then2, %if.then
  call void @exit(i32 -1) #10, !dbg !1149
  unreachable, !dbg !1149

if.end4:                                          ; preds = %entry
  ret void, !dbg !1152
}

declare i32 @poll(%struct.pollfd*, i64, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_command(i8* %command) #0 !dbg !1153 {
entry:
  call void @llvm.dbg.value(metadata i8* %command, metadata !1156, metadata !DIExpression()), !dbg !1157
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1158
  call void @eci_command_r(i8* %0, i8* %command), !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_command_r(i8* %ptr, i8* %command) #0 !dbg !1164 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1167, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %command, metadata !1169, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.declare(metadata !4, metadata !1170, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.declare(metadata !4, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata !4, metadata !1174, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.declare(metadata !4, metadata !1176, metadata !DIExpression()), !dbg !1177
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1178
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1181, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 30000, metadata !1182, metadata !DIExpression()), !dbg !1168
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1183
  %call = call i32 @eci_ready_r(i8* %ptr), !dbg !1185
  call void @llvm.dbg.value(metadata i32 %call, metadata !1187, metadata !DIExpression()), !dbg !1168
  %cmp = icmp eq i32 %call, 0, !dbg !1188
  br i1 %cmp, label %if.then, label %if.end, !dbg !1190

if.then:                                          ; preds = %entry
  br label %return, !dbg !1191

if.end:                                           ; preds = %entry
  %last_command_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 4, !dbg !1193
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %last_command_repp, i32 0, i32 0, !dbg !1196
  %call1 = call i8* @memcpy(i8* %arraydecay, i8* %command, i32 64) #7, !dbg !1197
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1198
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1198
  call void @eci_impl_clean_last_values(%struct.eci_parser* %1), !dbg !1200
  %call2 = call i32 @strlen(i8* %command) #9, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1203, metadata !DIExpression()), !dbg !1168
  %cmd_write_fd_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 3, !dbg !1204
  %2 = load i32, i32* %cmd_write_fd_rep, align 4, !dbg !1204
  %call3 = call i32 @write(i32 %2, i8* %command, i32 %call2), !dbg !1206
  %cmd_write_fd_rep4 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 3, !dbg !1207
  %3 = load i32, i32* %cmd_write_fd_rep4, align 4, !dbg !1207
  %call5 = call i32 @write(i32 %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 1), !dbg !1209
  %call6 = call i32 @strncmp(i8* %command, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 3) #9, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1212, metadata !DIExpression()), !dbg !1168
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1213
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1215

if.then8:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 -1, metadata !1182, metadata !DIExpression()), !dbg !1168
  br label %if.end9, !dbg !1216

if.end9:                                          ; preds = %if.then8, %if.end
  %timeout.0 = phi i32 [ -1, %if.then8 ], [ 30000, %if.end ], !dbg !1218
  call void @llvm.dbg.value(metadata i32 %timeout.0, metadata !1182, metadata !DIExpression()), !dbg !1168
  %commands_counter_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1219
  %4 = load i32, i32* %commands_counter_rep, align 8, !dbg !1220
  %inc = add nsw i32 %4, 1, !dbg !1220
  store i32 %inc, i32* %commands_counter_rep, align 8, !dbg !1220
  %commands_counter_rep10 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1221
  %5 = load i32, i32* %commands_counter_rep10, align 8, !dbg !1221
  %sub = sub nsw i32 %5, 1, !dbg !1223
  %parser_repp11 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1224
  %6 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp11, align 8, !dbg !1224
  %last_counter_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %6, i32 0, i32 5, !dbg !1225
  %7 = load i32, i32* %last_counter_rep, align 4, !dbg !1225
  %cmp12 = icmp ne i32 %sub, %7, !dbg !1226
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1227

if.then13:                                        ; preds = %if.end9
  call void @eci_impl_dump_parser_state(i8* %ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0)), !dbg !1228
  %parser_repp14 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1232
  %8 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp14, align 8, !dbg !1232
  %sync_lost_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %8, i32 0, i32 15, !dbg !1233
  store i8 1, i8* %sync_lost_rep, align 8, !dbg !1234
  br label %if.end15, !dbg !1235

if.end15:                                         ; preds = %if.then13, %if.end9
  %commands_counter_rep16 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1236
  %9 = load i32, i32* %commands_counter_rep16, align 8, !dbg !1236
  %parser_repp17 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1238
  %10 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp17, align 8, !dbg !1238
  %last_counter_rep18 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %10, i32 0, i32 5, !dbg !1239
  %11 = load i32, i32* %last_counter_rep18, align 4, !dbg !1239
  %cmp19 = icmp sge i32 %9, %11, !dbg !1240
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1241

if.then20:                                        ; preds = %if.end15
  call void @eci_impl_read_return_value(%struct.eci_internal* %0, i32 %timeout.0), !dbg !1242
  br label %if.end21, !dbg !1246

if.end21:                                         ; preds = %if.then20, %if.end15
  %commands_counter_rep22 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1247
  %12 = load i32, i32* %commands_counter_rep22, align 8, !dbg !1247
  %parser_repp23 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1249
  %13 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp23, align 8, !dbg !1249
  %last_counter_rep24 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %13, i32 0, i32 5, !dbg !1250
  %14 = load i32, i32* %last_counter_rep24, align 4, !dbg !1250
  %cmp25 = icmp sgt i32 %12, %14, !dbg !1251
  br i1 %cmp25, label %if.then26, label %if.end30, !dbg !1252

if.then26:                                        ; preds = %if.end21
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1253
  %16 = load i8*, i8** @eci_str_sync_lost, align 8, !dbg !1257
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %16), !dbg !1258
  %parser_repp28 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1259
  %17 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp28, align 8, !dbg !1259
  %sync_lost_rep29 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %17, i32 0, i32 15, !dbg !1260
  store i8 1, i8* %sync_lost_rep29, align 8, !dbg !1261
  br label %if.end30, !dbg !1262

if.end30:                                         ; preds = %if.then26, %if.end21
  br label %return, !dbg !1263

return:                                           ; preds = %if.end30, %if.then
  ret void, !dbg !1264
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_dump_parser_state(i8* %ptr, i8* %message) #0 !dbg !1265 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %message, metadata !1268, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata !4, metadata !1269, metadata !DIExpression()), !dbg !1270
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1274, metadata !DIExpression()), !dbg !1267
  %call = call i8* @eci_last_error_r(i8* %ptr), !dbg !1275
  call void @llvm.dbg.value(metadata i8* %call, metadata !1277, metadata !DIExpression()), !dbg !1267
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1278
  %last_command_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 4, !dbg !1280
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %last_command_repp, i32 0, i32 0, !dbg !1281
  %commands_counter_rep = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 5, !dbg !1282
  %2 = load i32, i32* %commands_counter_rep, align 8, !dbg !1282
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1283
  %3 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1283
  %last_counter_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %3, i32 0, i32 5, !dbg !1284
  %4 = load i32, i32* %last_counter_rep, align 4, !dbg !1284
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i32 0, i32 0), i8* %message, i8* %arraydecay, i8* %call, i32 %2, i32 %4), !dbg !1285
  ret void, !dbg !1286
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_command_float_arg(i8* %command, double %arg) #0 !dbg !1287 {
entry:
  call void @llvm.dbg.value(metadata i8* %command, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata double %arg, metadata !1292, metadata !DIExpression()), !dbg !1291
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1293
  call void @eci_command_float_arg_r(i8* %0, i8* %command, double %arg), !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_command_float_arg_r(i8* %ptr, i8* %command, double %arg) #0 !dbg !1299 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %command, metadata !1304, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata double %arg, metadata !1305, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.declare(metadata !4, metadata !1306, metadata !DIExpression()), !dbg !1307
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1311, metadata !DIExpression()), !dbg !1303
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1312
  %farg_buf_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 7, !dbg !1314
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %farg_buf_repp, i32 0, i32 0, !dbg !1316
  %call = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay, i32 31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %command, double %arg) #7, !dbg !1317
  %farg_buf_repp1 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 7, !dbg !1318
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %farg_buf_repp1, i32 0, i32 0, !dbg !1320
  call void @eci_command_r(i8* %ptr, i8* %arraydecay2), !dbg !1321
  ret void, !dbg !1322
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_last_string_list_count() #0 !dbg !1323 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1324
  %call = call i32 @eci_last_string_list_count_r(i8* %0), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %call, metadata !1329, metadata !DIExpression()), !dbg !1330
  ret i32 %call, !dbg !1331
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_last_string_list_count_r(i8* %ptr) #0 !dbg !1332 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1333, metadata !DIExpression()), !dbg !1334
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1338, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 0, metadata !1339, metadata !DIExpression()), !dbg !1334
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1340
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1342
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1342
  %last_los_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 7, !dbg !1343
  %2 = load %struct.eci_los_list*, %struct.eci_los_list** %last_los_repp, align 8, !dbg !1343
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %2, metadata !1344, metadata !DIExpression()), !dbg !1334
  br label %while.body, !dbg !1345

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi %struct.eci_los_list* [ %2, %entry ], [ %4, %if.end ], !dbg !1348
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1348
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !1339, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !1344, metadata !DIExpression()), !dbg !1334
  br label %while_continue___0, !dbg !1349

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1349

while_continue:                                   ; preds = %while_continue___0
  %3 = ptrtoint %struct.eci_los_list* %i.0 to i64, !dbg !1350
  %cmp = icmp ne i64 %3, 0, !dbg !1353
  br i1 %cmp, label %if.end, label %if.then, !dbg !1354

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1355

if.end:                                           ; preds = %while_continue
  %inc = add nsw i32 %count.0, 1, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1339, metadata !DIExpression()), !dbg !1334
  %next_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 1, !dbg !1358
  %4 = load %struct.eci_los_list*, %struct.eci_los_list** %next_repp, align 8, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %4, metadata !1344, metadata !DIExpression()), !dbg !1334
  br label %while.body, !dbg !1345, !llvm.loop !1359

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1361

while_break:                                      ; preds = %while_break___0, %if.then
  ret i32 %count.0, !dbg !1362
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_string_list_item(i32 %n) #0 !dbg !1363 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !1366, metadata !DIExpression()), !dbg !1367
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1368
  %call = call i8* @eci_last_string_list_item_r(i8* %0, i32 %n), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %call, metadata !1373, metadata !DIExpression()), !dbg !1367
  ret i8* %call, !dbg !1374
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_string_list_item_r(i8* %ptr, i32 %n) #0 !dbg !1375 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1378, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i32 %n, metadata !1380, metadata !DIExpression()), !dbg !1379
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1384, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i32 0, metadata !1385, metadata !DIExpression()), !dbg !1379
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1386
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1388
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1388
  %last_los_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 7, !dbg !1389
  %2 = load %struct.eci_los_list*, %struct.eci_los_list** %last_los_repp, align 8, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %2, metadata !1390, metadata !DIExpression()), !dbg !1379
  br label %while.body, !dbg !1391

while.body:                                       ; preds = %if.end3, %entry
  %i.0 = phi %struct.eci_los_list* [ %2, %entry ], [ %5, %if.end3 ], !dbg !1394
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.end3 ], !dbg !1394
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !1385, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !1390, metadata !DIExpression()), !dbg !1379
  br label %while_continue___0, !dbg !1395

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1395

while_continue:                                   ; preds = %while_continue___0
  %3 = ptrtoint %struct.eci_los_list* %i.0 to i64, !dbg !1396
  %cmp = icmp ne i64 %3, 0, !dbg !1399
  br i1 %cmp, label %if.end, label %if.then, !dbg !1400

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1401

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !1403, metadata !DIExpression()), !dbg !1379
  %inc = add nsw i32 %count.0, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1385, metadata !DIExpression()), !dbg !1379
  %cmp1 = icmp eq i32 %count.0, %n, !dbg !1405
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1407

if.then2:                                         ; preds = %if.end
  %data_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 2, !dbg !1408
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %data_repp, i32 0, i32 0, !dbg !1410
  %4 = load i8*, i8** %d, align 8, !dbg !1410
  br label %return, !dbg !1411

if.end3:                                          ; preds = %if.end
  %next_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 1, !dbg !1412
  %5 = load %struct.eci_los_list*, %struct.eci_los_list** %next_repp, align 8, !dbg !1412
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %5, metadata !1390, metadata !DIExpression()), !dbg !1379
  br label %while.body, !dbg !1391, !llvm.loop !1413

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1415

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !1416

return:                                           ; preds = %while_break, %if.then2
  %retval.0 = phi i8* [ %4, %if.then2 ], [ null, %while_break ], !dbg !1394
  ret i8* %retval.0, !dbg !1417
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_string() #0 !dbg !1418 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1419
  %call = call i8* @eci_last_string_r(i8* %0), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %call, metadata !1424, metadata !DIExpression()), !dbg !1425
  ret i8* %call, !dbg !1426
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_string_r(i8* %ptr) #0 !dbg !1427 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1430, metadata !DIExpression()), !dbg !1431
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1432
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1435, metadata !DIExpression()), !dbg !1431
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1436
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1438
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1438
  %last_s_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 9, !dbg !1439
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %last_s_repp, i32 0, i32 0, !dbg !1440
  %2 = load i8*, i8** %d, align 8, !dbg !1440
  ret i8* %2, !dbg !1441
}

; Function Attrs: noinline nounwind ssp uwtable
define double @eci_last_float() #0 !dbg !1442 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1445
  %call = call double @eci_last_float_r(i8* %0), !dbg !1449
  call void @llvm.dbg.value(metadata double %call, metadata !1450, metadata !DIExpression()), !dbg !1451
  ret double %call, !dbg !1452
}

; Function Attrs: noinline nounwind ssp uwtable
define double @eci_last_float_r(i8* %ptr) #0 !dbg !1453 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1456, metadata !DIExpression()), !dbg !1457
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1458
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1461, metadata !DIExpression()), !dbg !1457
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1462
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1464
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1464
  %last_f_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 2, !dbg !1465
  %2 = load double, double* %last_f_rep, align 8, !dbg !1465
  ret double %2, !dbg !1466
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_last_integer() #0 !dbg !1467 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1468
  %call = call i32 @eci_last_integer_r(i8* %0), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %call, metadata !1473, metadata !DIExpression()), !dbg !1474
  ret i32 %call, !dbg !1475
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_last_integer_r(i8* %ptr) #0 !dbg !1476 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1477, metadata !DIExpression()), !dbg !1478
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1479
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1482, metadata !DIExpression()), !dbg !1478
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1483
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1485
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1485
  %last_i_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 4, !dbg !1486
  %2 = load i32, i32* %last_i_rep, align 8, !dbg !1486
  ret i32 %2, !dbg !1487
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @eci_last_long_integer() #0 !dbg !1488 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1491
  %call = call i64 @eci_last_long_integer_r(i8* %0), !dbg !1495
  call void @llvm.dbg.value(metadata i64 %call, metadata !1496, metadata !DIExpression()), !dbg !1497
  ret i64 %call, !dbg !1498
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @eci_last_long_integer_r(i8* %ptr) #0 !dbg !1499 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1502, metadata !DIExpression()), !dbg !1503
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1504
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1507, metadata !DIExpression()), !dbg !1503
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1508
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1510
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1510
  %last_li_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 3, !dbg !1511
  %2 = load i64, i64* %last_li_rep, align 8, !dbg !1511
  ret i64 %2, !dbg !1512
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_error() #0 !dbg !1513 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1514
  %call = call i8* @eci_last_error_r(i8* %0), !dbg !1518
  call void @llvm.dbg.value(metadata i8* %call, metadata !1519, metadata !DIExpression()), !dbg !1520
  ret i8* %call, !dbg !1521
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_error_r(i8* %ptr) #0 !dbg !1522 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1523, metadata !DIExpression()), !dbg !1524
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1528, metadata !DIExpression()), !dbg !1524
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1529
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1531
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1531
  %last_error_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 8, !dbg !1532
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %last_error_repp, i32 0, i32 0, !dbg !1533
  %2 = load i8*, i8** %d, align 8, !dbg !1533
  ret i8* %2, !dbg !1534
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_type() #0 !dbg !1535 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1536
  %call = call i8* @eci_last_type_r(i8* %0), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %call, metadata !1541, metadata !DIExpression()), !dbg !1542
  ret i8* %call, !dbg !1543
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_last_type_r(i8* %ptr) #0 !dbg !1544 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1545, metadata !DIExpression()), !dbg !1546
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1550, metadata !DIExpression()), !dbg !1546
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1551
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1553
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1553
  %last_type_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 6, !dbg !1554
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp, i32 0, i32 0, !dbg !1555
  ret i8* %arraydecay, !dbg !1556
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_error() #0 !dbg !1557 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1558
  %call = call i32 @eci_error_r(i8* %0), !dbg !1562
  call void @llvm.dbg.value(metadata i32 %call, metadata !1563, metadata !DIExpression()), !dbg !1564
  ret i32 %call, !dbg !1565
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_error_r(i8* %ptr) #0 !dbg !1566 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1567, metadata !DIExpression()), !dbg !1568
  %0 = bitcast i8* %ptr to %struct.eci_internal*, !dbg !1569
  call void @llvm.dbg.value(metadata %struct.eci_internal* %0, metadata !1572, metadata !DIExpression()), !dbg !1568
  call void @eci_impl_check_handle(%struct.eci_internal* %0), !dbg !1573
  %call = call i32 @eci_ready_r(i8* %ptr), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %call, metadata !1577, metadata !DIExpression()), !dbg !1568
  %cmp = icmp eq i32 %call, 0, !dbg !1578
  br i1 %cmp, label %if.then, label %if.end, !dbg !1580

if.then:                                          ; preds = %entry
  br label %return, !dbg !1581

if.end:                                           ; preds = %entry
  %parser_repp = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1583
  %1 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp, align 8, !dbg !1583
  %sync_lost_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %1, i32 0, i32 15, !dbg !1585
  %2 = load i8, i8* %sync_lost_rep, align 8, !dbg !1585
  %tobool = trunc i8 %2 to i1, !dbg !1585
  %conv = zext i1 %tobool to i32, !dbg !1586
  %cmp1 = icmp eq i32 %conv, 1, !dbg !1587
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1588

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !1589

if.end4:                                          ; preds = %if.end
  %parser_repp5 = getelementptr inbounds %struct.eci_internal, %struct.eci_internal* %0, i32 0, i32 6, !dbg !1591
  %3 = load %struct.eci_parser*, %struct.eci_parser** %parser_repp5, align 8, !dbg !1591
  %last_type_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %3, i32 0, i32 6, !dbg !1593
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp, i64 0, i64 0, !dbg !1594
  %4 = load i8, i8* %arrayidx, align 8, !dbg !1594
  %conv6 = sext i8 %4 to i32, !dbg !1595
  %cmp7 = icmp eq i32 %conv6, 101, !dbg !1596
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1597

if.then9:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !1568
  br label %if.end10, !dbg !1599

if.else:                                          ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1568
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %res.0 = phi i32 [ 1, %if.then9 ], [ 0, %if.else ], !dbg !1601
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !1598, metadata !DIExpression()), !dbg !1568
  br label %return, !dbg !1602

return:                                           ; preds = %if.end10, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then3 ], [ %res.0, %if.end10 ], !dbg !1603
  ret i32 %retval.0, !dbg !1604
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_events_available() #0 !dbg !1605 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1606
  %call = call i32 @eci_events_available_r(i8* %0), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %call, metadata !1611, metadata !DIExpression()), !dbg !1612
  ret i32 %call, !dbg !1613
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eci_events_available_r(i8* %ptr) #0 !dbg !1614 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1615, metadata !DIExpression()), !dbg !1616
  ret i32 0, !dbg !1617
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_next_event() #0 !dbg !1619 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1620
  call void @eci_next_event_r(i8* %0), !dbg !1624
  ret void, !dbg !1625
}

; Function Attrs: noinline nounwind ssp uwtable
define void @eci_next_event_r(i8* %ptr) #0 !dbg !1626 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1627, metadata !DIExpression()), !dbg !1628
  ret void, !dbg !1629
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_current_event() #0 !dbg !1631 {
entry:
  %0 = load i8*, i8** @static_eci_rep, align 8, !dbg !1632
  %call = call i8* @eci_current_event_r(i8* %0), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %call, metadata !1637, metadata !DIExpression()), !dbg !1638
  ret i8* %call, !dbg !1639
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @eci_current_event_r(i8* %ptr) #0 !dbg !1640 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1641, metadata !DIExpression()), !dbg !1642
  ret i8* null, !dbg !1643
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1645 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1648, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1650, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.declare(metadata !4, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.declare(metadata !4, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 0, metadata !1655, metadata !DIExpression()), !dbg !1649
  %call = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i8* %call, metadata !1660, metadata !DIExpression()), !dbg !1649
  store i8* %call, i8** @ecaplay_output, align 8, !dbg !1661
  call void @llvm.dbg.value(metadata i32 1, metadata !1662, metadata !DIExpression()), !dbg !1649
  br label %while.body, !dbg !1663

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %if.end ], !dbg !1666
  %res.0 = phi i32 [ 0, %entry ], [ %add, %if.end ], !dbg !1666
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !1655, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1662, metadata !DIExpression()), !dbg !1649
  br label %while_continue___0, !dbg !1667

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1667

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %argc, !dbg !1668
  br i1 %cmp, label %if.end, label %if.then, !dbg !1671

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1672

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !1674
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !1674
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !1677
  %call1 = call i32 @process_option(i8* %0), !dbg !1678
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1679, metadata !DIExpression()), !dbg !1649
  %add = add nsw i32 %res.0, %call1, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %add, metadata !1655, metadata !DIExpression()), !dbg !1649
  %inc = add nsw i32 %i.0, 1, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1662, metadata !DIExpression()), !dbg !1649
  br label %while.body, !dbg !1663, !llvm.loop !1682

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1684

while_break:                                      ; preds = %while_break___0, %if.then
  %cmp2 = icmp eq i32 %res.0, 0, !dbg !1685
  br i1 %cmp2, label %if.then3, label %if.end23, !dbg !1687

if.then3:                                         ; preds = %while_break
  %1 = load i32, i32* @ecaplay_mode, align 4, !dbg !1688
  %cmp4 = icmp eq i32 %1, 1, !dbg !1692
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1693

if.then5:                                         ; preds = %if.then3
  br label %case_1, !dbg !1694

if.end6:                                          ; preds = %if.then3
  %2 = load i32, i32* @ecaplay_mode, align 4, !dbg !1696
  %cmp7 = icmp eq i32 %2, 2, !dbg !1698
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1699

if.then8:                                         ; preds = %if.end6
  br label %case_2, !dbg !1700

if.end9:                                          ; preds = %if.end6
  %3 = load i32, i32* @ecaplay_mode, align 4, !dbg !1702
  %cmp10 = icmp eq i32 %3, 4, !dbg !1704
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1705

if.then11:                                        ; preds = %if.end9
  br label %case_4, !dbg !1706

if.end12:                                         ; preds = %if.end9
  %4 = load i32, i32* @ecaplay_mode, align 4, !dbg !1708
  %cmp13 = icmp eq i32 %4, 3, !dbg !1710
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1711

if.then14:                                        ; preds = %if.end12
  br label %case_3, !dbg !1712

if.end15:                                         ; preds = %if.end12
  %5 = load i32, i32* @ecaplay_mode, align 4, !dbg !1714
  %cmp16 = icmp eq i32 %5, 0, !dbg !1716
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1711

if.then17:                                        ; preds = %if.end15
  br label %case_3, !dbg !1717

if.end18:                                         ; preds = %if.end15
  br label %switch_default, !dbg !1719

case_1:                                           ; preds = %if.then5
  %call19 = call i32 @flush_tracks(), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %call19, metadata !1655, metadata !DIExpression()), !dbg !1649
  br label %switch_break, !dbg !1723

case_2:                                           ; preds = %if.then8
  %call20 = call i32 @list_tracks(), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1655, metadata !DIExpression()), !dbg !1649
  br label %switch_break, !dbg !1727

case_4:                                           ; preds = %if.then11
  %call21 = call i32 @queue_tracks(i32 %argc, i8** %argv), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %call21, metadata !1655, metadata !DIExpression()), !dbg !1649
  br label %switch_break, !dbg !1731

case_3:                                           ; preds = %if.then17, %if.then14
  br label %case_0, !dbg !1731

case_0:                                           ; preds = %case_3
  %call22 = call i32 @play_tracks(i32 %argc, i8** %argv), !dbg !1732
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1655, metadata !DIExpression()), !dbg !1649
  br label %switch_break, !dbg !1735

switch_default:                                   ; preds = %if.end18
  br label %switch_break, !dbg !1735

switch_break:                                     ; preds = %switch_default, %case_0, %case_4, %case_2, %case_1
  %res.1 = phi i32 [ %call19, %case_1 ], [ %call20, %case_2 ], [ %call21, %case_4 ], [ %call22, %case_0 ], [ %res.0, %switch_default ], !dbg !1666
  call void @llvm.dbg.value(metadata i32 %res.1, metadata !1655, metadata !DIExpression()), !dbg !1649
  br label %if.end23, !dbg !1736

if.end23:                                         ; preds = %switch_break, %while_break
  %res.2 = phi i32 [ %res.1, %switch_break ], [ %res.0, %while_break ], !dbg !1666
  call void @llvm.dbg.value(metadata i32 %res.2, metadata !1655, metadata !DIExpression()), !dbg !1649
  %cmp24 = icmp ne i32 %res.2, 0, !dbg !1737
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !1739

if.then25:                                        ; preds = %if.end23
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1740
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0), i32 %res.2), !dbg !1744
  br label %if.end27, !dbg !1745

if.end27:                                         ; preds = %if.then25, %if.end23
  ret i32 %res.2, !dbg !1746
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @process_option(i8* %option) #0 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata i8* %option, metadata !1750, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.declare(metadata !4, metadata !1752, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.declare(metadata !4, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.declare(metadata !4, metadata !1756, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.declare(metadata !4, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.declare(metadata !4, metadata !1760, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.declare(metadata !4, metadata !1762, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.declare(metadata !4, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.declare(metadata !4, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.declare(metadata !4, metadata !1768, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.declare(metadata !4, metadata !1770, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.declare(metadata !4, metadata !1772, metadata !DIExpression()), !dbg !1773
  %add.ptr = getelementptr inbounds i8, i8* %option, i64 0, !dbg !1774
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1777
  %conv = sext i8 %0 to i32, !dbg !1778
  %cmp = icmp eq i32 %conv, 45, !dbg !1779
  br i1 %cmp, label %if.then, label %if.end105, !dbg !1780

if.then:                                          ; preds = %entry
  %call = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* %option, i32 7) #9, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %call, metadata !1785, metadata !DIExpression()), !dbg !1751
  %cmp2 = icmp eq i32 %call, 0, !dbg !1786
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !1788

if.then4:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1789
  call void @print_usage___0(%struct._IO_FILE* %1), !dbg !1793
  br label %return, !dbg !1794

if.else:                                          ; preds = %if.then
  %call5 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* %option, i32 10) #9, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1799, metadata !DIExpression()), !dbg !1751
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1800
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !1802

if.then8:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1803
  call void @print_usage___0(%struct._IO_FILE* %2), !dbg !1807
  br label %return, !dbg !1808

if.end:                                           ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end
  %add.ptr10 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1809
  %3 = load i8, i8* %add.ptr10, align 1, !dbg !1812
  %conv11 = sext i8 %3 to i32, !dbg !1813
  %cmp12 = icmp eq i32 %conv11, 100, !dbg !1814
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1815

if.then14:                                        ; preds = %if.end9
  br label %case_100, !dbg !1816

if.end15:                                         ; preds = %if.end9
  %add.ptr16 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1818
  %4 = load i8, i8* %add.ptr16, align 1, !dbg !1820
  %conv17 = sext i8 %4 to i32, !dbg !1821
  %cmp18 = icmp eq i32 %conv17, 102, !dbg !1822
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1823

if.then20:                                        ; preds = %if.end15
  br label %case_102, !dbg !1824

if.end21:                                         ; preds = %if.end15
  %add.ptr22 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1826
  %5 = load i8, i8* %add.ptr22, align 1, !dbg !1828
  %conv23 = sext i8 %5 to i32, !dbg !1829
  %cmp24 = icmp eq i32 %conv23, 104, !dbg !1830
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1831

if.then26:                                        ; preds = %if.end21
  br label %case_104, !dbg !1832

if.end27:                                         ; preds = %if.end21
  %add.ptr28 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1834
  %6 = load i8, i8* %add.ptr28, align 1, !dbg !1836
  %conv29 = sext i8 %6 to i32, !dbg !1837
  %cmp30 = icmp eq i32 %conv29, 107, !dbg !1838
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1839

if.then32:                                        ; preds = %if.end27
  br label %case_107, !dbg !1840

if.end33:                                         ; preds = %if.end27
  %add.ptr34 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1842
  %7 = load i8, i8* %add.ptr34, align 1, !dbg !1844
  %conv35 = sext i8 %7 to i32, !dbg !1845
  %cmp36 = icmp eq i32 %conv35, 108, !dbg !1846
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1847

if.then38:                                        ; preds = %if.end33
  br label %case_108, !dbg !1848

if.end39:                                         ; preds = %if.end33
  %add.ptr40 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1850
  %8 = load i8, i8* %add.ptr40, align 1, !dbg !1852
  %conv41 = sext i8 %8 to i32, !dbg !1853
  %cmp42 = icmp eq i32 %conv41, 111, !dbg !1854
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1855

if.then44:                                        ; preds = %if.end39
  br label %case_111, !dbg !1856

if.end45:                                         ; preds = %if.end39
  %add.ptr46 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1858
  %9 = load i8, i8* %add.ptr46, align 1, !dbg !1860
  %conv47 = sext i8 %9 to i32, !dbg !1861
  %cmp48 = icmp eq i32 %conv47, 112, !dbg !1862
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1863

if.then50:                                        ; preds = %if.end45
  br label %case_112, !dbg !1864

if.end51:                                         ; preds = %if.end45
  %add.ptr52 = getelementptr inbounds i8, i8* %option, i64 1, !dbg !1866
  %10 = load i8, i8* %add.ptr52, align 1, !dbg !1868
  %conv53 = sext i8 %10 to i32, !dbg !1869
  %cmp54 = icmp eq i32 %conv53, 113, !dbg !1870
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !1871

if.then56:                                        ; preds = %if.end51
  br label %case_113, !dbg !1872

if.end57:                                         ; preds = %if.end51
  br label %switch_default, !dbg !1874

case_100:                                         ; preds = %if.then14
  %add.ptr58 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %add.ptr58, metadata !1876, metadata !DIExpression()), !dbg !1751
  %add.ptr59 = getelementptr inbounds i8, i8* %option, i64 2, !dbg !1877
  %11 = load i8, i8* %add.ptr59, align 1, !dbg !1879
  %conv60 = sext i8 %11 to i32, !dbg !1880
  %cmp61 = icmp ne i32 %conv60, 0, !dbg !1881
  br i1 %cmp61, label %if.then63, label %if.end72, !dbg !1882

if.then63:                                        ; preds = %case_100
  %add.ptr64 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1883
  %12 = load i8, i8* %add.ptr64, align 1, !dbg !1886
  %conv65 = sext i8 %12 to i32, !dbg !1887
  %cmp66 = icmp ne i32 %conv65, 0, !dbg !1888
  br i1 %cmp66, label %if.then68, label %if.end71, !dbg !1889

if.then68:                                        ; preds = %if.then63
  %call69 = call i32 @atoi(i8* %add.ptr58) #9, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %call69, metadata !1894, metadata !DIExpression()), !dbg !1751
  %13 = load i32, i32* @ecaplay_debuglevel, align 4, !dbg !1895
  %or = or i32 %13, %call69, !dbg !1895
  store i32 %or, i32* @ecaplay_debuglevel, align 4, !dbg !1895
  %14 = load i32, i32* @ecaplay_debuglevel, align 4, !dbg !1896
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i32 %14), !dbg !1898
  br label %if.end71, !dbg !1899

if.end71:                                         ; preds = %if.then68, %if.then63
  br label %if.end72, !dbg !1900

if.end72:                                         ; preds = %if.end71, %case_100
  br label %switch_break, !dbg !1901

case_102:                                         ; preds = %if.then20
  store i32 1, i32* @ecaplay_mode, align 4, !dbg !1902
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.89, i32 0, i32 0)), !dbg !1904
  br label %switch_break, !dbg !1906

case_104:                                         ; preds = %if.then26
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1907
  call void @print_usage___0(%struct._IO_FILE* %15), !dbg !1910
  br label %return, !dbg !1911

case_107:                                         ; preds = %if.then32
  %add.ptr74 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1912
  call void @llvm.dbg.value(metadata i8* %add.ptr74, metadata !1913, metadata !DIExpression()), !dbg !1751
  %add.ptr75 = getelementptr inbounds i8, i8* %option, i64 2, !dbg !1914
  %16 = load i8, i8* %add.ptr75, align 1, !dbg !1916
  %conv76 = sext i8 %16 to i32, !dbg !1917
  %cmp77 = icmp ne i32 %conv76, 0, !dbg !1918
  br i1 %cmp77, label %if.then79, label %if.end88, !dbg !1919

if.then79:                                        ; preds = %case_107
  %add.ptr80 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1920
  %17 = load i8, i8* %add.ptr80, align 1, !dbg !1923
  %conv81 = sext i8 %17 to i32, !dbg !1924
  %cmp82 = icmp ne i32 %conv81, 0, !dbg !1925
  br i1 %cmp82, label %if.then84, label %if.end87, !dbg !1926

if.then84:                                        ; preds = %if.then79
  %call85 = call i32 @atoi(i8* %add.ptr74) #9, !dbg !1927
  store i32 %call85, i32* @ecaplay_skip, align 4, !dbg !1931
  %18 = load i32, i32* @ecaplay_skip, align 4, !dbg !1932
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.90, i32 0, i32 0), i32 %18), !dbg !1934
  br label %if.end87, !dbg !1935

if.end87:                                         ; preds = %if.then84, %if.then79
  br label %if.end88, !dbg !1936

if.end88:                                         ; preds = %if.end87, %case_107
  br label %switch_break, !dbg !1937

case_108:                                         ; preds = %if.then38
  store i32 2, i32* @ecaplay_mode, align 4, !dbg !1938
  br label %switch_break, !dbg !1939

case_111:                                         ; preds = %if.then44
  %add.ptr89 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1940
  call void @llvm.dbg.value(metadata i8* %add.ptr89, metadata !1941, metadata !DIExpression()), !dbg !1751
  %add.ptr90 = getelementptr inbounds i8, i8* %option, i64 2, !dbg !1942
  %19 = load i8, i8* %add.ptr90, align 1, !dbg !1944
  %conv91 = sext i8 %19 to i32, !dbg !1945
  %cmp92 = icmp ne i32 %conv91, 0, !dbg !1946
  br i1 %cmp92, label %if.then94, label %if.end101, !dbg !1947

if.then94:                                        ; preds = %case_111
  %add.ptr95 = getelementptr inbounds i8, i8* %option, i64 3, !dbg !1948
  %20 = load i8, i8* %add.ptr95, align 1, !dbg !1951
  %conv96 = sext i8 %20 to i32, !dbg !1952
  %cmp97 = icmp ne i32 %conv96, 0, !dbg !1953
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !1954

if.then99:                                        ; preds = %if.then94
  store i8* %add.ptr89, i8** @ecaplay_output, align 8, !dbg !1955
  br label %if.end100, !dbg !1957

if.end100:                                        ; preds = %if.then99, %if.then94
  br label %if.end101, !dbg !1958

if.end101:                                        ; preds = %if.end100, %case_111
  br label %switch_break, !dbg !1959

case_112:                                         ; preds = %if.then50
  store i32 3, i32* @ecaplay_mode, align 4, !dbg !1960
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i32 0, i32 0)), !dbg !1962
  br label %switch_break, !dbg !1964

case_113:                                         ; preds = %if.then56
  store i32 4, i32* @ecaplay_mode, align 4, !dbg !1965
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i32 0, i32 0)), !dbg !1967
  br label %switch_break, !dbg !1969

switch_default:                                   ; preds = %if.end57
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1970
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* %option), !dbg !1973
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1974
  call void @print_usage___0(%struct._IO_FILE* %22), !dbg !1976
  br label %return, !dbg !1977

switch_break:                                     ; preds = %case_113, %case_112, %if.end101, %case_108, %if.end88, %case_102, %if.end72
  br label %if.end105, !dbg !1978

if.end105:                                        ; preds = %switch_break, %entry
  br label %return, !dbg !1979

return:                                           ; preds = %if.end105, %switch_default, %case_104, %if.then8, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.end105 ], [ 0, %case_104 ], [ 1, %switch_default ], !dbg !1980
  ret i32 %retval.0, !dbg !1981
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @flush_tracks() #0 !dbg !1982 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1983, metadata !DIExpression()), !dbg !1984
  %call = call i8* @get_playlist_path(), !dbg !1985
  call void @llvm.dbg.value(metadata i8* %call, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8* %call, metadata !1991, metadata !DIExpression()), !dbg !1990
  %call1 = call i32 @"\01truncate64"(i8* %call, i64 0) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1994, metadata !DIExpression()), !dbg !1990
  %cmp = icmp ne i32 %call1, 0, !dbg !1995
  br i1 %cmp, label %if.then, label %if.end, !dbg !1997

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i32 0, i32 0), i8* %call), !dbg !1998
  br label %return, !dbg !2002

if.end:                                           ; preds = %entry
  br label %return, !dbg !2003

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !2004
  ret i32 %retval.0, !dbg !2005
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @list_tracks() #0 !dbg !2006 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !2007, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata !4, metadata !2009, metadata !DIExpression()), !dbg !2010
  %call = call i8* @get_playlist_path(), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %call, metadata !2015, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %call, metadata !2017, metadata !DIExpression()), !dbg !2016
  %call1 = call %struct._IO_FILE* @"\01fopen64"(i8* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)), !dbg !2018
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, metadata !2020, metadata !DIExpression()), !dbg !2016
  %0 = ptrtoint %struct._IO_FILE* %call1 to i64, !dbg !2021
  %cmp = icmp ne i64 %0, 0, !dbg !2023
  br i1 %cmp, label %if.then, label %if.end7, !dbg !2024

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !2025

while.body:                                       ; preds = %if.end, %if.then
  br label %while_continue___0, !dbg !2029

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2029

while_continue:                                   ; preds = %while_continue___0
  %call2 = call i32 @fgetc(%struct._IO_FILE* %call1), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2034, metadata !DIExpression()), !dbg !2016
  %cmp3 = icmp ne i32 %call2, -1, !dbg !2035
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !2037

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !2038

if.end:                                           ; preds = %while_continue
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %call2), !dbg !2040
  br label %while.body, !dbg !2025, !llvm.loop !2043

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2045

while_break:                                      ; preds = %while_break___0, %if.then4
  %call6 = call i32 @fclose(%struct._IO_FILE* %call1), !dbg !2046
  br label %return, !dbg !2049

if.end7:                                          ; preds = %entry
  br label %return, !dbg !2050

return:                                           ; preds = %if.end7, %while_break
  %retval.0 = phi i32 [ 0, %while_break ], [ -1, %if.end7 ], !dbg !2051
  ret i32 %retval.0, !dbg !2052
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @queue_tracks(i32 %argc, i8** %argv) #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8** %argv, metadata !2056, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.declare(metadata !4, metadata !2057, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.declare(metadata !4, metadata !2059, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata !4, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.declare(metadata !4, metadata !2063, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.declare(metadata !4, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 0, metadata !2067, metadata !DIExpression()), !dbg !2055
  %call = call i8* @get_playlist_path(), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %call, metadata !2072, metadata !DIExpression()), !dbg !2055
  %call1 = call %struct._IO_FILE* @"\01fopen64"(i8* %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)), !dbg !2073
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, metadata !2075, metadata !DIExpression()), !dbg !2055
  %0 = ptrtoint %struct._IO_FILE* %call1 to i64, !dbg !2076
  %cmp = icmp ne i64 %0, 0, !dbg !2078
  br i1 %cmp, label %if.then, label %if.else44, !dbg !2079

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !2080, metadata !DIExpression()), !dbg !2055
  br label %while.body, !dbg !2081

while.body:                                       ; preds = %if.end42, %if.then
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %if.end42 ], !dbg !2085
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2080, metadata !DIExpression()), !dbg !2055
  br label %while_continue___0, !dbg !2086

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2086

while_continue:                                   ; preds = %while_continue___0
  %cmp2 = icmp slt i32 %i.0, %argc, !dbg !2087
  br i1 %cmp2, label %if.end, label %if.then3, !dbg !2090

if.then3:                                         ; preds = %while_continue
  br label %while_break, !dbg !2091

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !2093
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !2093
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !2094
  %add.ptr4 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2095
  %2 = load i8, i8* %add.ptr4, align 1, !dbg !2096
  call void @llvm.dbg.value(metadata i8 %2, metadata !2097, metadata !DIExpression()), !dbg !2055
  %conv = sext i8 %2 to i32, !dbg !2098
  %cmp5 = icmp ne i32 %conv, 45, !dbg !2100
  br i1 %cmp5, label %if.then7, label %if.end42, !dbg !2101

if.then7:                                         ; preds = %if.end
  %conv8 = sext i8 %2 to i32, !dbg !2102
  %cmp9 = icmp ne i32 %conv8, 47, !dbg !2105
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !2106

if.then11:                                        ; preds = %if.then7
  %idx.ext12 = sext i32 %i.0 to i64, !dbg !2107
  %add.ptr13 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext12, !dbg !2107
  %3 = load i8*, i8** %add.ptr13, align 8, !dbg !2111
  %call14 = call i32 @strlen(i8* %3) #9, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %call14, metadata !2113, metadata !DIExpression()), !dbg !2055
  %add = add i32 4096, %call14, !dbg !2114
  %add15 = add i32 %add, 1, !dbg !2116
  %call16 = call noalias i8* @malloc(i32 %add15) #7, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %call16, metadata !2118, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %call16, metadata !2119, metadata !DIExpression()), !dbg !2055
  %call17 = call i8* @getcwd(i8* %call16, i32 4096) #7, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %call17, metadata !2122, metadata !DIExpression()), !dbg !2055
  %4 = ptrtoint i8* %call17 to i64, !dbg !2123
  %cmp18 = icmp ne i64 %4, 0, !dbg !2125
  br i1 %cmp18, label %if.then20, label %if.end30, !dbg !2126

if.then20:                                        ; preds = %if.then11
  %call21 = call i8* @strcat(i8* %call16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0)) #7, !dbg !2127
  %idx.ext22 = sext i32 %i.0 to i64, !dbg !2131
  %add.ptr23 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext22, !dbg !2131
  %5 = load i8*, i8** %add.ptr23, align 8, !dbg !2133
  %call24 = call i8* @strcat(i8* %call16, i8* %5) #7, !dbg !2134
  %idx.ext25 = sext i32 %i.0 to i64, !dbg !2135
  %add.ptr26 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext25, !dbg !2135
  %6 = load i8*, i8** %add.ptr26, align 8, !dbg !2137
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.107, i32 0, i32 0), i8* %6), !dbg !2138
  %call28 = call i32 @strlen(i8* %call16) #9, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %call28, metadata !2141, metadata !DIExpression()), !dbg !2055
  %call29 = call i32 @fwrite(i8* %call16, i32 1, i32 %call28, %struct._IO_FILE* %call1), !dbg !2142
  br label %if.end30, !dbg !2144

if.end30:                                         ; preds = %if.then20, %if.then11
  call void @free(i8* %call16) #7, !dbg !2145
  br label %if.end40, !dbg !2148

if.else:                                          ; preds = %if.then7
  %idx.ext31 = sext i32 %i.0 to i64, !dbg !2149
  %add.ptr32 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext31, !dbg !2149
  %7 = load i8*, i8** %add.ptr32, align 8, !dbg !2153
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.107, i32 0, i32 0), i8* %7), !dbg !2154
  %idx.ext34 = sext i32 %i.0 to i64, !dbg !2155
  %add.ptr35 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext34, !dbg !2155
  %8 = load i8*, i8** %add.ptr35, align 8, !dbg !2157
  %call36 = call i32 @strlen(i8* %8) #9, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %call36, metadata !2159, metadata !DIExpression()), !dbg !2055
  %idx.ext37 = sext i32 %i.0 to i64, !dbg !2160
  %add.ptr38 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext37, !dbg !2160
  %9 = load i8*, i8** %add.ptr38, align 8, !dbg !2162
  %call39 = call i32 @fwrite(i8* %9, i32 1, i32 %call36, %struct._IO_FILE* %call1), !dbg !2163
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end30
  %call41 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 1, %struct._IO_FILE* %call1), !dbg !2164
  br label %if.end42, !dbg !2167

if.end42:                                         ; preds = %if.end40, %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2080, metadata !DIExpression()), !dbg !2055
  br label %while.body, !dbg !2081, !llvm.loop !2169

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2171

while_break:                                      ; preds = %while_break___0, %if.then3
  %call43 = call i32 @fclose(%struct._IO_FILE* %call1), !dbg !2172
  br label %if.end45, !dbg !2175

if.else44:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 -1, metadata !2067, metadata !DIExpression()), !dbg !2055
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %while_break
  %res.0 = phi i32 [ 0, %while_break ], [ -1, %if.else44 ], !dbg !2176
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !2067, metadata !DIExpression()), !dbg !2055
  call void @free(i8* %call) #7, !dbg !2177
  ret i32 %res.0, !dbg !2180
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @play_tracks(i32 %argc, i8** %argv) #0 !dbg !2181 {
entry:
  %eci = alloca i8*, align 8
  %tracknum = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8** %argv, metadata !2184, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata i8** %eci, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %tracknum, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.declare(metadata !4, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.declare(metadata !4, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.declare(metadata !4, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.declare(metadata !4, metadata !2195, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.declare(metadata !4, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i8* null, i8** %eci, align 8, !dbg !2199
  store i32 1, i32* %tracknum, align 4, !dbg !2202
  call void @llvm.dbg.value(metadata i32 0, metadata !2203, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* null, metadata !2204, metadata !DIExpression()), !dbg !2183
  %0 = load i32, i32* @ecaplay_skip, align 4, !dbg !2205
  %1 = load i32, i32* %tracknum, align 4, !dbg !2206
  %add = add nsw i32 %1, %0, !dbg !2206
  store i32 %add, i32* %tracknum, align 4, !dbg !2206
  %call = call i8* @get_next_track(i32* %tracknum, i32 %argc, i8** %argv, i8** %eci), !dbg !2207
  call void @llvm.dbg.value(metadata i8* %call, metadata !2204, metadata !DIExpression()), !dbg !2183
  %2 = ptrtoint i8* %call to i64, !dbg !2209
  %cmp = icmp ne i64 %2, 0, !dbg !2211
  br i1 %cmp, label %if.then, label %if.end38, !dbg !2212

if.then:                                          ; preds = %entry
  call void @setup_signal_handling(), !dbg !2213
  br label %while.body, !dbg !2217

while.body:                                       ; preds = %if.end33, %if.then
  %stop.0 = phi i32 [ 0, %if.then ], [ %stop.1, %if.end33 ], !dbg !2220
  %nexttrack.0 = phi i8* [ %call, %if.then ], [ %nexttrack.2, %if.end33 ], !dbg !2220
  call void @llvm.dbg.value(metadata i8* %nexttrack.0, metadata !2204, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 %stop.0, metadata !2203, metadata !DIExpression()), !dbg !2183
  br label %while_continue___1, !dbg !2221

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !2221

while_continue:                                   ; preds = %while_continue___1
  %3 = ptrtoint i8* %nexttrack.0 to i64, !dbg !2222
  %cmp1 = icmp ne i64 %3, 0, !dbg !2225
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !2226

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !2227

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 3, metadata !2229, metadata !DIExpression()), !dbg !2183
  br label %while.body4, !dbg !2230

while.body4:                                      ; preds = %if.end15, %if.end
  %timeleft.0 = phi i32 [ 3, %if.end ], [ %call8, %if.end15 ], !dbg !2233
  call void @llvm.dbg.value(metadata i32 %timeleft.0, metadata !2229, metadata !DIExpression()), !dbg !2183
  br label %while_continue___2, !dbg !2234

while_continue___2:                               ; preds = %while.body4
  br label %while_continue___0, !dbg !2234

while_continue___0:                               ; preds = %while_continue___2
  %cmp5 = icmp ugt i32 %timeleft.0, 0, !dbg !2235
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !2238

if.then6:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !2239

if.end7:                                          ; preds = %while_continue___0
  %call8 = call i32 @sleep(i32 %timeleft.0), !dbg !2241
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2229, metadata !DIExpression()), !dbg !2183
  %cmp9 = icmp ugt i32 %call8, 0, !dbg !2244
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !2246

if.then10:                                        ; preds = %if.end7
  %4 = load i32, i32* @ecaplay_skip_flag, align 4, !dbg !2247
  %cmp11 = icmp sgt i32 %4, 1, !dbg !2250
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2251

if.then12:                                        ; preds = %if.then10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2252
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0)), !dbg !2256
  %6 = load i8*, i8** %eci, align 8, !dbg !2257
  call void @eci_cleanup_r(i8* %6), !dbg !2259
  call void @llvm.dbg.value(metadata i32 1, metadata !2203, metadata !DIExpression()), !dbg !2183
  br label %while_break___0, !dbg !2260

if.end14:                                         ; preds = %if.then10
  br label %if.end15, !dbg !2261

if.end15:                                         ; preds = %if.end14, %if.end7
  br label %while.body4, !dbg !2230, !llvm.loop !2262

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !2264

while_break___0:                                  ; preds = %while_break___2, %if.then12, %if.then6
  %stop.1 = phi i32 [ 1, %if.then12 ], [ %stop.0, %if.then6 ], [ undef, %while_break___2 ], !dbg !2220
  call void @llvm.dbg.value(metadata i32 %stop.1, metadata !2203, metadata !DIExpression()), !dbg !2183
  %tobool = icmp ne i32 %stop.1, 0, !dbg !2265
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !2267

if.then16:                                        ; preds = %while_break___0
  br label %while_break, !dbg !2268

if.end17:                                         ; preds = %while_break___0
  %7 = load i32, i32* @ecaplay_skip_flag, align 4, !dbg !2270
  %cmp18 = icmp eq i32 %7, 0, !dbg !2272
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2273

if.then19:                                        ; preds = %if.end17
  %8 = load i8*, i8** %eci, align 8, !dbg !2274
  call void @eci_command_r(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0)), !dbg !2278
  br label %if.end21, !dbg !2279

if.else:                                          ; preds = %if.end17
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0)), !dbg !2280
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %9 = load i32, i32* @ecaplay_skip_flag, align 4, !dbg !2284
  %cmp22 = icmp ne i32 %9, 0, !dbg !2286
  br i1 %cmp22, label %if.then23, label %if.else25, !dbg !2287

if.then23:                                        ; preds = %if.end21
  store i32 0, i32* @ecaplay_skip_flag, align 4, !dbg !2288
  %10 = load i32, i32* %tracknum, align 4, !dbg !2291
  %inc = add nsw i32 %10, 1, !dbg !2291
  store i32 %inc, i32* %tracknum, align 4, !dbg !2291
  %call24 = call i8* @get_next_track(i32* %tracknum, i32 %argc, i8** %argv, i8** %eci), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %call24, metadata !2204, metadata !DIExpression()), !dbg !2183
  br label %if.end33, !dbg !2294

if.else25:                                        ; preds = %if.end21
  %11 = load i8*, i8** %eci, align 8, !dbg !2295
  %call26 = call i8* @eci_last_string_r(i8* %11), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %call26, metadata !2300, metadata !DIExpression()), !dbg !2183
  %call27 = call i32 @strcmp(i8* %call26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %call27, metadata !2303, metadata !DIExpression()), !dbg !2183
  %cmp28 = icmp ne i32 %call27, 0, !dbg !2304
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !2306

if.then29:                                        ; preds = %if.else25
  store i32 0, i32* @ecaplay_skip_flag, align 4, !dbg !2307
  %12 = load i32, i32* %tracknum, align 4, !dbg !2310
  %inc30 = add nsw i32 %12, 1, !dbg !2310
  store i32 %inc30, i32* %tracknum, align 4, !dbg !2310
  %call31 = call i8* @get_next_track(i32* %tracknum, i32 %argc, i8** %argv, i8** %eci), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %call31, metadata !2204, metadata !DIExpression()), !dbg !2183
  br label %if.end32, !dbg !2313

if.end32:                                         ; preds = %if.then29, %if.else25
  %nexttrack.1 = phi i8* [ %call31, %if.then29 ], [ %nexttrack.0, %if.else25 ], !dbg !2220
  call void @llvm.dbg.value(metadata i8* %nexttrack.1, metadata !2204, metadata !DIExpression()), !dbg !2183
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then23
  %nexttrack.2 = phi i8* [ %call24, %if.then23 ], [ %nexttrack.1, %if.end32 ], !dbg !2314
  call void @llvm.dbg.value(metadata i8* %nexttrack.2, metadata !2204, metadata !DIExpression()), !dbg !2183
  br label %while.body, !dbg !2217, !llvm.loop !2315

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !2317

while_break:                                      ; preds = %while_break___1, %if.then16, %if.then2
  %stop.2 = phi i32 [ %stop.1, %if.then16 ], [ %stop.0, %if.then2 ], [ undef, %while_break___1 ], !dbg !2220
  call void @llvm.dbg.value(metadata i32 %stop.2, metadata !2203, metadata !DIExpression()), !dbg !2183
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2318
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)), !dbg !2321
  %cmp35 = icmp eq i32 %stop.2, 0, !dbg !2322
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !2324

if.then36:                                        ; preds = %while_break
  %14 = load i8*, i8** %eci, align 8, !dbg !2325
  call void @eci_cleanup_r(i8* %14), !dbg !2329
  br label %if.end37, !dbg !2330

if.end37:                                         ; preds = %if.then36, %while_break
  br label %if.end38, !dbg !2331

if.end38:                                         ; preds = %if.end37, %entry
  ret i32 0, !dbg !2332
}

; Function Attrs: noinline nounwind ssp uwtable
define void @make_human(i32 %length, i32* %min, i8* %sec) #0 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata i32 %length, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32* %min, metadata !2341, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %sec, metadata !2342, metadata !DIExpression()), !dbg !2340
  %div = sdiv i32 %length, 60, !dbg !2343
  store i32 %div, i32* %min, align 4, !dbg !2345
  %rem = srem i32 %length, 60, !dbg !2346
  %conv = trunc i32 %rem to i8, !dbg !2347
  store i8 %conv, i8* %sec, align 1, !dbg !2348
  ret void, !dbg !2349
}

; Function Attrs: noinline nounwind ssp uwtable
define void @print_help(i8* %name) #0 !dbg !2350 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2353, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata !4, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1288 x i8], [1288 x i8]* @.str.22, i32 0, i32 0), i8* %name), !dbg !2357
  ret void, !dbg !2361
}

; Function Attrs: noinline nounwind ssp uwtable
define void @print_usage(i8* %name) #0 !dbg !2362 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata !4, metadata !2365, metadata !DIExpression()), !dbg !2366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.23, i32 0, i32 0), i8* %name), !dbg !2367
  ret void, !dbg !2371
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_string_free(%struct.eci_string_s* %str) #0 !dbg !2372 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_string_s* %str, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.declare(metadata !4, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata !4, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata !4, metadata !2382, metadata !DIExpression()), !dbg !2383
  %tobool = icmp ne %struct.eci_string_s* %str, null, !dbg !2384
  br i1 %tobool, label %if.end, label %if.then, !dbg !2387

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2388
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 825), !dbg !2392
  br label %if.end, !dbg !2393

if.end:                                           ; preds = %if.then, %entry
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 0, !dbg !2394
  %1 = load i8*, i8** %d, align 8, !dbg !2394
  call void @free(i8* %1) #7, !dbg !2397
  %size = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 2, !dbg !2398
  store i32 0, i32* %size, align 4, !dbg !2399
  %slen = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 1, !dbg !2400
  store i32 0, i32* %slen, align 8, !dbg !2401
  ret void, !dbg !2402
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_los_list_clear(%struct.eci_los_list* %ptr) #0 !dbg !2403 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %ptr, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %ptr, metadata !2408, metadata !DIExpression()), !dbg !2407
  br label %while.body, !dbg !2409

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi %struct.eci_los_list* [ %ptr, %entry ], [ %1, %if.end ], !dbg !2413
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !2408, metadata !DIExpression()), !dbg !2407
  br label %while_continue___0, !dbg !2414

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2414

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.eci_los_list* %i.0 to i64, !dbg !2415
  %cmp = icmp ne i64 %0, 0, !dbg !2418
  br i1 %cmp, label %if.end, label %if.then, !dbg !2419

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2420

if.end:                                           ; preds = %while_continue
  %next_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 1, !dbg !2422
  %1 = load %struct.eci_los_list*, %struct.eci_los_list** %next_repp, align 8, !dbg !2422
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %1, metadata !2424, metadata !DIExpression()), !dbg !2407
  %data_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 2, !dbg !2425
  call void @eci_string_free(%struct.eci_string_s* %data_repp), !dbg !2427
  %2 = bitcast %struct.eci_los_list* %i.0 to i8*, !dbg !2428
  call void @free(i8* %2) #7, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %1, metadata !2408, metadata !DIExpression()), !dbg !2407
  br label %while.body, !dbg !2409, !llvm.loop !2431

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2433

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !2434
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_string_clear(%struct.eci_string_s* %str) #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_string_s* %str, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata !4, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.declare(metadata !4, metadata !2440, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.declare(metadata !4, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata !4, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.declare(metadata !4, metadata !2446, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.declare(metadata !4, metadata !2448, metadata !DIExpression()), !dbg !2449
  %tobool = icmp ne %struct.eci_string_s* %str, null, !dbg !2450
  br i1 %tobool, label %if.end, label %if.then, !dbg !2453

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2454
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 801), !dbg !2458
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  %slen = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 1, !dbg !2460
  store i32 0, i32* %slen, align 8, !dbg !2461
  %size = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 2, !dbg !2462
  %1 = load i32, i32* %size, align 4, !dbg !2462
  %cmp = icmp eq i32 %1, 0, !dbg !2464
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2465

if.then1:                                         ; preds = %if.end
  call void @eci_string_add(%struct.eci_string_s* %str, i32 0, i8* null, i32 0), !dbg !2466
  br label %if.end2, !dbg !2470

if.else:                                          ; preds = %if.end
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 0, !dbg !2471
  %2 = load i8*, i8** %d, align 8, !dbg !2471
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 0, !dbg !2473
  store i8 0, i8* %add.ptr, align 1, !dbg !2474
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %d3 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 0, !dbg !2475
  %3 = load i8*, i8** %d3, align 8, !dbg !2475
  %add.ptr4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !2477
  %4 = load i8, i8* %add.ptr4, align 1, !dbg !2478
  %conv = sext i8 %4 to i32, !dbg !2479
  %cmp5 = icmp eq i32 %conv, 0, !dbg !2480
  br i1 %cmp5, label %if.end9, label %if.then7, !dbg !2481

if.then7:                                         ; preds = %if.end2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2482
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 807), !dbg !2486
  br label %if.end9, !dbg !2487

if.end9:                                          ; preds = %if.then7, %if.end2
  ret void, !dbg !2488
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_string_add(%struct.eci_string_s* %dst, i32 %at, i8* %src, i32 %len) #0 !dbg !2489 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_string_s* %dst, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %at, metadata !2494, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %src, metadata !2495, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %len, metadata !2496, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata !4, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.declare(metadata !4, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.declare(metadata !4, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.declare(metadata !4, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata !4, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata !4, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.declare(metadata !4, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata !4, metadata !2511, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.declare(metadata !4, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.declare(metadata !4, metadata !2515, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.declare(metadata !4, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.declare(metadata !4, metadata !2519, metadata !DIExpression()), !dbg !2520
  %add = add nsw i32 %at, %len, !dbg !2521
  %add1 = add nsw i32 %add, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %add1, metadata !2524, metadata !DIExpression()), !dbg !2493
  %tobool = icmp ne %struct.eci_string_s* %dst, null, !dbg !2525
  br i1 %tobool, label %if.end, label %if.then, !dbg !2527

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2528
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 848), !dbg !2532
  br label %if.end, !dbg !2533

if.end:                                           ; preds = %if.then, %entry
  %size = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 2, !dbg !2534
  %1 = load i32, i32* %size, align 4, !dbg !2534
  %cmp = icmp sgt i32 %add1, %1, !dbg !2536
  br i1 %cmp, label %if.then2, label %if.end21, !dbg !2537

if.then2:                                         ; preds = %if.end
  %size3 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 2, !dbg !2538
  %2 = load i32, i32* %size3, align 4, !dbg !2538
  %tobool4 = icmp ne i32 %2, 0, !dbg !2541
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2542

if.then5:                                         ; preds = %if.then2
  %size6 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 2, !dbg !2543
  %3 = load i32, i32* %size6, align 4, !dbg !2543
  %mul = mul nsw i32 %3, 2, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2546, metadata !DIExpression()), !dbg !2493
  br label %if.end7, !dbg !2547

if.else:                                          ; preds = %if.then2
  call void @llvm.dbg.value(metadata i32 64, metadata !2546, metadata !DIExpression()), !dbg !2493
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %tmp.0 = phi i32 [ %mul, %if.then5 ], [ 64, %if.else ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2546, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2549, metadata !DIExpression()), !dbg !2493
  br label %while.body, !dbg !2550

while.body:                                       ; preds = %if.end10, %if.end7
  %newsize.0 = phi i32 [ %tmp.0, %if.end7 ], [ %mul11, %if.end10 ], !dbg !2553
  call void @llvm.dbg.value(metadata i32 %newsize.0, metadata !2549, metadata !DIExpression()), !dbg !2493
  br label %while_continue___0, !dbg !2554

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2554

while_continue:                                   ; preds = %while_continue___0
  %cmp8 = icmp sgt i32 %add1, %newsize.0, !dbg !2555
  br i1 %cmp8, label %if.end10, label %if.then9, !dbg !2558

if.then9:                                         ; preds = %while_continue
  br label %while_break, !dbg !2559

if.end10:                                         ; preds = %while_continue
  %mul11 = mul nsw i32 %newsize.0, 2, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %mul11, metadata !2549, metadata !DIExpression()), !dbg !2493
  br label %while.body, !dbg !2550, !llvm.loop !2562

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2564

while_break:                                      ; preds = %while_break___0, %if.then9
  %cmp12 = icmp sle i32 %newsize.0, 16777216, !dbg !2565
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !2567

if.then13:                                        ; preds = %while_break
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 857, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #10, !dbg !2568
  unreachable, !dbg !2568

if.end14:                                         ; preds = %while_break
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 0, !dbg !2572
  %4 = load i8*, i8** %d, align 8, !dbg !2572
  %call15 = call i8* @realloc(i8* %4, i32 %newsize.0) #7, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %call15, metadata !2576, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %call15, metadata !2577, metadata !DIExpression()), !dbg !2493
  %tobool16 = icmp ne i8* %call15, null, !dbg !2578
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2580

if.then17:                                        ; preds = %if.end14
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 859, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #10, !dbg !2581
  unreachable, !dbg !2581

if.end18:                                         ; preds = %if.end14
  %size19 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 2, !dbg !2585
  store i32 %newsize.0, i32* %size19, align 4, !dbg !2586
  %d20 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 0, !dbg !2587
  store i8* %call15, i8** %d20, align 8, !dbg !2588
  br label %if.end21, !dbg !2589

if.end21:                                         ; preds = %if.end18, %if.end
  %size22 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 2, !dbg !2590
  %5 = load i32, i32* %size22, align 4, !dbg !2590
  %cmp23 = icmp sle i32 %add1, %5, !dbg !2592
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !2593

if.then24:                                        ; preds = %if.end21
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2594
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 864), !dbg !2598
  br label %if.end26, !dbg !2599

if.end26:                                         ; preds = %if.then24, %if.end21
  %d27 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 0, !dbg !2600
  %7 = load i8*, i8** %d27, align 8, !dbg !2600
  %idx.ext = sext i32 %at to i64, !dbg !2603
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext, !dbg !2603
  %call28 = call i8* @memcpy(i8* %add.ptr, i8* %src, i32 %len) #7, !dbg !2604
  %d29 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %dst, i32 0, i32 0, !dbg !2605
  %8 = load i8*, i8** %d29, align 8, !dbg !2605
  %add30 = add nsw i32 %at, %len, !dbg !2606
  %idx.ext31 = sext i32 %add30 to i64, !dbg !2607
  %add.ptr32 = getelementptr inbounds i8, i8* %8, i64 %idx.ext31, !dbg !2607
  store i8 0, i8* %add.ptr32, align 1, !dbg !2608
  ret void, !dbg !2609
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_update_state(%struct.eci_parser* %parser, i8 signext %c) #0 !dbg !2610 {
entry:
  %c.addr = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.eci_parser* %parser, metadata !2613, metadata !DIExpression()), !dbg !2614
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  %state_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2617
  %0 = load i32, i32* %state_rep, align 8, !dbg !2617
  %cmp = icmp eq i32 %0, 0, !dbg !2621
  br i1 %cmp, label %if.then, label %if.end, !dbg !2622

if.then:                                          ; preds = %entry
  br label %case_0, !dbg !2623

if.end:                                           ; preds = %entry
  %state_rep1 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2625
  %1 = load i32, i32* %state_rep1, align 8, !dbg !2625
  %cmp2 = icmp eq i32 %1, 1, !dbg !2627
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2628

if.then3:                                         ; preds = %if.end
  br label %case_1, !dbg !2629

if.end4:                                          ; preds = %if.end
  %state_rep5 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2631
  %2 = load i32, i32* %state_rep5, align 8, !dbg !2631
  %cmp6 = icmp eq i32 %2, 2, !dbg !2633
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2634

if.then7:                                         ; preds = %if.end4
  br label %case_2, !dbg !2635

if.end8:                                          ; preds = %if.end4
  %state_rep9 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2637
  %3 = load i32, i32* %state_rep9, align 8, !dbg !2637
  %cmp10 = icmp eq i32 %3, 3, !dbg !2639
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2640

if.then11:                                        ; preds = %if.end8
  br label %case_3, !dbg !2641

if.end12:                                         ; preds = %if.end8
  %state_rep13 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2643
  %4 = load i32, i32* %state_rep13, align 8, !dbg !2643
  %cmp14 = icmp eq i32 %4, 4, !dbg !2645
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2646

if.then15:                                        ; preds = %if.end12
  br label %case_4, !dbg !2647

if.end16:                                         ; preds = %if.end12
  %state_rep17 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2649
  %5 = load i32, i32* %state_rep17, align 8, !dbg !2649
  %cmp18 = icmp eq i32 %5, 5, !dbg !2651
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2652

if.then19:                                        ; preds = %if.end16
  br label %case_5, !dbg !2653

if.end20:                                         ; preds = %if.end16
  %state_rep21 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2655
  %6 = load i32, i32* %state_rep21, align 8, !dbg !2655
  %cmp22 = icmp eq i32 %6, 6, !dbg !2657
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2658

if.then23:                                        ; preds = %if.end20
  br label %case_6, !dbg !2659

if.end24:                                         ; preds = %if.end20
  %state_rep25 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2661
  %7 = load i32, i32* %state_rep25, align 8, !dbg !2661
  %cmp26 = icmp eq i32 %7, 7, !dbg !2663
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !2664

if.then27:                                        ; preds = %if.end24
  br label %case_7, !dbg !2665

if.end28:                                         ; preds = %if.end24
  %state_rep29 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2667
  %8 = load i32, i32* %state_rep29, align 8, !dbg !2667
  %cmp30 = icmp eq i32 %8, 8, !dbg !2669
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2670

if.then31:                                        ; preds = %if.end28
  br label %case_8, !dbg !2671

if.end32:                                         ; preds = %if.end28
  %state_rep33 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2673
  %9 = load i32, i32* %state_rep33, align 8, !dbg !2673
  %cmp34 = icmp eq i32 %9, 9, !dbg !2675
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !2676

if.then35:                                        ; preds = %if.end32
  br label %case_9, !dbg !2677

if.end36:                                         ; preds = %if.end32
  %state_rep37 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2679
  %10 = load i32, i32* %state_rep37, align 8, !dbg !2679
  %cmp38 = icmp eq i32 %10, 10, !dbg !2681
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !2682

if.then39:                                        ; preds = %if.end36
  br label %case_10, !dbg !2683

if.end40:                                         ; preds = %if.end36
  %state_rep41 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2685
  %11 = load i32, i32* %state_rep41, align 8, !dbg !2685
  %cmp42 = icmp eq i32 %11, 11, !dbg !2687
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2688

if.then43:                                        ; preds = %if.end40
  br label %case_11, !dbg !2689

if.end44:                                         ; preds = %if.end40
  br label %switch_default, !dbg !2691

case_0:                                           ; preds = %if.then
  %12 = load i8, i8* %c.addr, align 1, !dbg !2692
  %conv = sext i8 %12 to i32, !dbg !2694
  %cmp45 = icmp sge i32 %conv, 48, !dbg !2695
  br i1 %cmp45, label %if.then47, label %if.else55, !dbg !2696

if.then47:                                        ; preds = %case_0
  %13 = load i8, i8* %c.addr, align 1, !dbg !2697
  %conv48 = sext i8 %13 to i32, !dbg !2700
  %cmp49 = icmp sle i32 %conv48, 57, !dbg !2701
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !2702

if.then51:                                        ; preds = %if.then47
  %token_phase_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2703
  store i32 1, i32* %token_phase_rep, align 8, !dbg !2706
  %buffer_current_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2707
  store i32 0, i32* %buffer_current_rep, align 4, !dbg !2708
  %buffer_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2709
  call void @eci_string_clear(%struct.eci_string_s* %buffer_rep), !dbg !2711
  %state_rep52 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2712
  store i32 1, i32* %state_rep52, align 8, !dbg !2713
  br label %if.end54, !dbg !2714

if.else:                                          ; preds = %if.then47
  %token_phase_rep53 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2715
  store i32 0, i32* %token_phase_rep53, align 8, !dbg !2717
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then51
  br label %if.end57, !dbg !2718

if.else55:                                        ; preds = %case_0
  %token_phase_rep56 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2719
  store i32 0, i32* %token_phase_rep56, align 8, !dbg !2721
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.end54
  br label %switch_break, !dbg !2722

case_1:                                           ; preds = %if.then3
  %14 = load i8, i8* %c.addr, align 1, !dbg !2723
  %conv58 = sext i8 %14 to i32, !dbg !2725
  %cmp59 = icmp eq i32 %conv58, 32, !dbg !2726
  br i1 %cmp59, label %if.then61, label %if.else72, !dbg !2727

if.then61:                                        ; preds = %case_1
  %buffer_rep62 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2728
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep62, i32 0, i32 0, !dbg !2732
  %15 = load i8*, i8** %d, align 8, !dbg !2732
  %call = call i32 @atoi(i8* %15) #9, !dbg !2733
  %loglevel_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 12, !dbg !2734
  store i32 %call, i32* %loglevel_rep, align 4, !dbg !2735
  %loglevel_rep63 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 12, !dbg !2736
  %16 = load i32, i32* %loglevel_rep63, align 4, !dbg !2736
  %cmp64 = icmp eq i32 %16, 256, !dbg !2738
  br i1 %cmp64, label %if.then66, label %if.else67, !dbg !2739

if.then66:                                        ; preds = %if.then61
  %state_msg_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !2740
  store i32 1, i32* %state_msg_rep, align 4, !dbg !2742
  br label %if.end69, !dbg !2743

if.else67:                                        ; preds = %if.then61
  %state_msg_rep68 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !2744
  store i32 0, i32* %state_msg_rep68, align 4, !dbg !2746
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then66
  %state_rep70 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2747
  store i32 2, i32* %state_rep70, align 8, !dbg !2748
  %token_phase_rep71 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2749
  store i32 0, i32* %token_phase_rep71, align 8, !dbg !2750
  br label %if.end84, !dbg !2751

if.else72:                                        ; preds = %case_1
  %17 = load i8, i8* %c.addr, align 1, !dbg !2752
  %conv73 = sext i8 %17 to i32, !dbg !2754
  %cmp74 = icmp slt i32 %conv73, 48, !dbg !2755
  br i1 %cmp74, label %if.then76, label %if.end83, !dbg !2756

if.then76:                                        ; preds = %if.else72
  %18 = load i8, i8* %c.addr, align 1, !dbg !2757
  %conv77 = sext i8 %18 to i32, !dbg !2760
  %cmp78 = icmp sgt i32 %conv77, 57, !dbg !2761
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !2762

if.then80:                                        ; preds = %if.then76
  %state_rep81 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2763
  store i32 11, i32* %state_rep81, align 8, !dbg !2765
  br label %if.end82, !dbg !2766

if.end82:                                         ; preds = %if.then80, %if.then76
  br label %if.end83, !dbg !2767

if.end83:                                         ; preds = %if.end82, %if.else72
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end69
  br label %switch_break, !dbg !2768

case_2:                                           ; preds = %if.then7
  %19 = load i8, i8* %c.addr, align 1, !dbg !2769
  %conv85 = sext i8 %19 to i32, !dbg !2771
  %cmp86 = icmp eq i32 %conv85, 32, !dbg !2772
  br i1 %cmp86, label %if.then88, label %if.else94, !dbg !2773

if.then88:                                        ; preds = %case_2
  %state_msg_rep89 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !2774
  %20 = load i32, i32* %state_msg_rep89, align 4, !dbg !2774
  %cmp90 = icmp eq i32 %20, 1, !dbg !2777
  br i1 %cmp90, label %if.then92, label %if.else93, !dbg !2778

if.then92:                                        ; preds = %if.then88
  br label %_L___0, !dbg !2779

if.else93:                                        ; preds = %if.then88
  br label %_L___2, !dbg !2781

if.else94:                                        ; preds = %case_2
  br label %_L___2, !dbg !2783

_L___2:                                           ; preds = %if.else94, %if.else93
  %21 = load i8, i8* %c.addr, align 1, !dbg !2784
  %conv95 = sext i8 %21 to i32, !dbg !2786
  %cmp96 = icmp eq i32 %conv95, 13, !dbg !2787
  br i1 %cmp96, label %if.then98, label %if.else117, !dbg !2771

if.then98:                                        ; preds = %_L___2
  %state_msg_rep99 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !2788
  %22 = load i32, i32* %state_msg_rep99, align 4, !dbg !2788
  %cmp100 = icmp eq i32 %22, 0, !dbg !2791
  br i1 %cmp100, label %if.then102, label %if.else115, !dbg !2792

if.then102:                                       ; preds = %if.then98
  br label %_L___0, !dbg !2793

_L___0:                                           ; preds = %if.then102, %if.then92
  %buffer_rep103 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2794
  %d104 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep103, i32 0, i32 0, !dbg !2798
  %23 = load i8*, i8** %d104, align 8, !dbg !2798
  %call105 = call i32 @atoi(i8* %23) #9, !dbg !2799
  %msgsize_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 11, !dbg !2800
  store i32 %call105, i32* %msgsize_rep, align 8, !dbg !2801
  %state_msg_rep106 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !2802
  %24 = load i32, i32* %state_msg_rep106, align 4, !dbg !2802
  %cmp107 = icmp eq i32 %24, 0, !dbg !2804
  br i1 %cmp107, label %if.then109, label %if.else111, !dbg !2805

if.then109:                                       ; preds = %_L___0
  %state_rep110 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2806
  store i32 4, i32* %state_rep110, align 8, !dbg !2808
  br label %if.end113, !dbg !2809

if.else111:                                       ; preds = %_L___0
  %state_rep112 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2810
  store i32 5, i32* %state_rep112, align 8, !dbg !2812
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then109
  %token_phase_rep114 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2813
  store i32 0, i32* %token_phase_rep114, align 8, !dbg !2814
  br label %if.end116, !dbg !2815

if.else115:                                       ; preds = %if.then98
  br label %_L___1, !dbg !2816

if.end116:                                        ; preds = %if.end113
  br label %if.end139, !dbg !2818

if.else117:                                       ; preds = %_L___2
  br label %_L___1, !dbg !2818

_L___1:                                           ; preds = %if.else117, %if.else115
  %25 = load i8, i8* %c.addr, align 1, !dbg !2819
  %conv118 = sext i8 %25 to i32, !dbg !2821
  %cmp119 = icmp slt i32 %conv118, 48, !dbg !2822
  br i1 %cmp119, label %if.then121, label %if.else129, !dbg !2823

if.then121:                                       ; preds = %_L___1
  %26 = load i8, i8* %c.addr, align 1, !dbg !2824
  %conv122 = sext i8 %26 to i32, !dbg !2827
  %cmp123 = icmp sgt i32 %conv122, 57, !dbg !2828
  br i1 %cmp123, label %if.then125, label %if.else127, !dbg !2829

if.then125:                                       ; preds = %if.then121
  %state_rep126 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2830
  store i32 11, i32* %state_rep126, align 8, !dbg !2832
  br label %if.end128, !dbg !2833

if.else127:                                       ; preds = %if.then121
  br label %_L, !dbg !2834

if.end128:                                        ; preds = %if.then125
  br label %if.end138, !dbg !2836

if.else129:                                       ; preds = %_L___1
  br label %_L, !dbg !2836

_L:                                               ; preds = %if.else129, %if.else127
  %token_phase_rep130 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2837
  %27 = load i32, i32* %token_phase_rep130, align 8, !dbg !2837
  %cmp131 = icmp eq i32 %27, 0, !dbg !2839
  br i1 %cmp131, label %if.then133, label %if.end137, !dbg !2840

if.then133:                                       ; preds = %_L
  %token_phase_rep134 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2841
  store i32 1, i32* %token_phase_rep134, align 8, !dbg !2844
  %buffer_current_rep135 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2845
  store i32 0, i32* %buffer_current_rep135, align 4, !dbg !2846
  %buffer_rep136 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2847
  call void @eci_string_clear(%struct.eci_string_s* %buffer_rep136), !dbg !2849
  br label %if.end137, !dbg !2850

if.end137:                                        ; preds = %if.then133, %_L
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end128
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end116
  br label %if.end140

if.end140:                                        ; preds = %if.end139
  br label %switch_break, !dbg !2851

case_3:                                           ; preds = %if.then11
  %28 = load i8, i8* %c.addr, align 1, !dbg !2852
  %conv141 = sext i8 %28 to i32, !dbg !2854
  %cmp142 = icmp eq i32 %conv141, 13, !dbg !2855
  br i1 %cmp142, label %if.then144, label %if.else146, !dbg !2856

if.then144:                                       ; preds = %case_3
  %state_rep145 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2857
  store i32 4, i32* %state_rep145, align 8, !dbg !2859
  br label %if.end148, !dbg !2860

if.else146:                                       ; preds = %case_3
  %state_rep147 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2861
  store i32 0, i32* %state_rep147, align 8, !dbg !2863
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.then144
  br label %switch_break, !dbg !2864

case_4:                                           ; preds = %if.then15
  %29 = load i8, i8* %c.addr, align 1, !dbg !2865
  %conv149 = sext i8 %29 to i32, !dbg !2867
  %cmp150 = icmp eq i32 %conv149, 10, !dbg !2868
  br i1 %cmp150, label %if.then152, label %if.else154, !dbg !2869

if.then152:                                       ; preds = %case_4
  %state_rep153 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2870
  store i32 6, i32* %state_rep153, align 8, !dbg !2872
  br label %if.end156, !dbg !2873

if.else154:                                       ; preds = %case_4
  %state_rep155 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2874
  store i32 0, i32* %state_rep155, align 8, !dbg !2876
  br label %if.end156

if.end156:                                        ; preds = %if.else154, %if.then152
  br label %switch_break, !dbg !2877

case_5:                                           ; preds = %if.then19
  %30 = load i8, i8* %c.addr, align 1, !dbg !2878
  %conv157 = sext i8 %30 to i32, !dbg !2880
  %cmp158 = icmp eq i32 %conv157, 13, !dbg !2881
  br i1 %cmp158, label %if.then160, label %if.else174, !dbg !2882

if.then160:                                       ; preds = %case_5
  %buffer_current_rep161 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2883
  %31 = load i32, i32* %buffer_current_rep161, align 4, !dbg !2883
  %cmp162 = icmp slt i32 %31, 4, !dbg !2886
  br i1 %cmp162, label %if.then164, label %if.else166, !dbg !2887

if.then164:                                       ; preds = %if.then160
  %buffer_current_rep165 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2888
  %32 = load i32, i32* %buffer_current_rep165, align 4, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %32, metadata !2890, metadata !DIExpression()), !dbg !2614
  br label %if.end167, !dbg !2891

if.else166:                                       ; preds = %if.then160
  call void @llvm.dbg.value(metadata i32 3, metadata !2890, metadata !DIExpression()), !dbg !2614
  br label %if.end167

if.end167:                                        ; preds = %if.else166, %if.then164
  %tmp.0 = phi i32 [ %32, %if.then164 ], [ 3, %if.else166 ], !dbg !2892
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2890, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2893, metadata !DIExpression()), !dbg !2614
  %last_type_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !2894
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp, i32 0, i32 0, !dbg !2897
  %buffer_rep168 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2898
  %d169 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep168, i32 0, i32 0, !dbg !2899
  %33 = load i8*, i8** %d169, align 8, !dbg !2899
  %call170 = call i8* @memcpy(i8* %arraydecay, i8* %33, i32 %tmp.0) #7, !dbg !2900
  %last_type_repp171 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !2901
  %idxprom = sext i32 %tmp.0 to i64, !dbg !2902
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp171, i64 0, i64 %idxprom, !dbg !2902
  store i8 0, i8* %arrayidx, align 1, !dbg !2903
  %state_rep172 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2904
  store i32 4, i32* %state_rep172, align 8, !dbg !2905
  %token_phase_rep173 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2906
  store i32 0, i32* %token_phase_rep173, align 8, !dbg !2907
  br label %if.end183, !dbg !2908

if.else174:                                       ; preds = %case_5
  %token_phase_rep175 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2909
  %34 = load i32, i32* %token_phase_rep175, align 8, !dbg !2909
  %cmp176 = icmp eq i32 %34, 0, !dbg !2911
  br i1 %cmp176, label %if.then178, label %if.end182, !dbg !2912

if.then178:                                       ; preds = %if.else174
  %token_phase_rep179 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2913
  store i32 1, i32* %token_phase_rep179, align 8, !dbg !2916
  %buffer_current_rep180 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2917
  store i32 0, i32* %buffer_current_rep180, align 4, !dbg !2918
  %buffer_rep181 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2919
  call void @eci_string_clear(%struct.eci_string_s* %buffer_rep181), !dbg !2921
  br label %if.end182, !dbg !2922

if.end182:                                        ; preds = %if.then178, %if.else174
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end167
  br label %switch_break, !dbg !2923

case_6:                                           ; preds = %if.then23
  %35 = load i8, i8* %c.addr, align 1, !dbg !2924
  %conv184 = sext i8 %35 to i32, !dbg !2926
  %cmp185 = icmp eq i32 %conv184, 13, !dbg !2927
  br i1 %cmp185, label %if.then187, label %if.else196, !dbg !2928

if.then187:                                       ; preds = %case_6
  %msgsize_rep188 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 11, !dbg !2929
  %36 = load i32, i32* %msgsize_rep188, align 8, !dbg !2929
  %cmp189 = icmp eq i32 %36, 0, !dbg !2932
  br i1 %cmp189, label %if.then191, label %if.end193, !dbg !2933

if.then191:                                       ; preds = %if.then187
  %buffer_rep192 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2934
  call void @eci_string_clear(%struct.eci_string_s* %buffer_rep192), !dbg !2938
  br label %if.end193, !dbg !2939

if.end193:                                        ; preds = %if.then191, %if.then187
  %state_rep194 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2940
  store i32 8, i32* %state_rep194, align 8, !dbg !2941
  %token_phase_rep195 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2942
  store i32 2, i32* %token_phase_rep195, align 8, !dbg !2943
  br label %if.end205, !dbg !2944

if.else196:                                       ; preds = %case_6
  %token_phase_rep197 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2945
  %37 = load i32, i32* %token_phase_rep197, align 8, !dbg !2945
  %cmp198 = icmp eq i32 %37, 0, !dbg !2947
  br i1 %cmp198, label %if.then200, label %if.end204, !dbg !2948

if.then200:                                       ; preds = %if.else196
  %token_phase_rep201 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !2949
  store i32 1, i32* %token_phase_rep201, align 8, !dbg !2952
  %buffer_current_rep202 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !2953
  store i32 0, i32* %buffer_current_rep202, align 4, !dbg !2954
  %buffer_rep203 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !2955
  call void @eci_string_clear(%struct.eci_string_s* %buffer_rep203), !dbg !2957
  br label %if.end204, !dbg !2958

if.end204:                                        ; preds = %if.then200, %if.else196
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end193
  br label %switch_break, !dbg !2959

case_7:                                           ; preds = %if.then27
  %38 = load i8, i8* %c.addr, align 1, !dbg !2960
  %conv206 = sext i8 %38 to i32, !dbg !2962
  %cmp207 = icmp eq i32 %conv206, 13, !dbg !2963
  br i1 %cmp207, label %if.then209, label %if.else211, !dbg !2964

if.then209:                                       ; preds = %case_7
  %state_rep210 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2965
  store i32 8, i32* %state_rep210, align 8, !dbg !2967
  br label %if.end213, !dbg !2968

if.else211:                                       ; preds = %case_7
  %state_rep212 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2969
  store i32 6, i32* %state_rep212, align 8, !dbg !2971
  br label %if.end213

if.end213:                                        ; preds = %if.else211, %if.then209
  br label %switch_break, !dbg !2972

case_8:                                           ; preds = %if.then31
  %39 = load i8, i8* %c.addr, align 1, !dbg !2973
  %conv214 = sext i8 %39 to i32, !dbg !2975
  %cmp215 = icmp eq i32 %conv214, 10, !dbg !2976
  br i1 %cmp215, label %if.then217, label %if.else219, !dbg !2977

if.then217:                                       ; preds = %case_8
  %state_rep218 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2978
  store i32 9, i32* %state_rep218, align 8, !dbg !2980
  br label %if.end221, !dbg !2981

if.else219:                                       ; preds = %case_8
  %state_rep220 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2982
  store i32 6, i32* %state_rep220, align 8, !dbg !2984
  br label %if.end221

if.end221:                                        ; preds = %if.else219, %if.then217
  br label %switch_break, !dbg !2985

case_9:                                           ; preds = %if.then35
  %40 = load i8, i8* %c.addr, align 1, !dbg !2986
  %conv222 = sext i8 %40 to i32, !dbg !2988
  %cmp223 = icmp eq i32 %conv222, 13, !dbg !2989
  br i1 %cmp223, label %if.then225, label %if.else227, !dbg !2990

if.then225:                                       ; preds = %case_9
  %state_rep226 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2991
  store i32 10, i32* %state_rep226, align 8, !dbg !2993
  br label %if.end229, !dbg !2994

if.else227:                                       ; preds = %case_9
  %state_rep228 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !2995
  store i32 6, i32* %state_rep228, align 8, !dbg !2997
  br label %if.end229

if.end229:                                        ; preds = %if.else227, %if.then225
  br label %switch_break, !dbg !2998

case_10:                                          ; preds = %if.then39
  %41 = load i8, i8* %c.addr, align 1, !dbg !2999
  %conv230 = sext i8 %41 to i32, !dbg !3001
  %cmp231 = icmp eq i32 %conv230, 10, !dbg !3002
  br i1 %cmp231, label %if.then233, label %if.else240, !dbg !3003

if.then233:                                       ; preds = %case_10
  %state_msg_rep234 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 1, !dbg !3004
  %42 = load i32, i32* %state_msg_rep234, align 4, !dbg !3004
  %cmp235 = icmp eq i32 %42, 1, !dbg !3007
  br i1 %cmp235, label %if.then237, label %if.end238, !dbg !3008

if.then237:                                       ; preds = %if.then233
  call void @eci_impl_set_last_values(%struct.eci_parser* %parser), !dbg !3009
  %last_counter_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 5, !dbg !3013
  %43 = load i32, i32* %last_counter_rep, align 4, !dbg !3014
  %inc = add nsw i32 %43, 1, !dbg !3014
  store i32 %inc, i32* %last_counter_rep, align 4, !dbg !3014
  br label %if.end238, !dbg !3015

if.end238:                                        ; preds = %if.then237, %if.then233
  %state_rep239 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !3016
  store i32 0, i32* %state_rep239, align 8, !dbg !3017
  br label %if.end242, !dbg !3018

if.else240:                                       ; preds = %case_10
  %state_rep241 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !3019
  store i32 6, i32* %state_rep241, align 8, !dbg !3021
  br label %if.end242

if.end242:                                        ; preds = %if.else240, %if.end238
  br label %switch_break, !dbg !3022

case_11:                                          ; preds = %if.then43
  %44 = load i8, i8* %c.addr, align 1, !dbg !3023
  %conv243 = sext i8 %44 to i32, !dbg !3025
  %cmp244 = icmp eq i32 %conv243, 10, !dbg !3026
  br i1 %cmp244, label %if.then246, label %if.end249, !dbg !3027

if.then246:                                       ; preds = %case_11
  %token_phase_rep247 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !3028
  store i32 0, i32* %token_phase_rep247, align 8, !dbg !3030
  %state_rep248 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !3031
  store i32 0, i32* %state_rep248, align 8, !dbg !3032
  br label %if.end249, !dbg !3033

if.end249:                                        ; preds = %if.then246, %case_11
  br label %switch_break, !dbg !3034

switch_default:                                   ; preds = %if.end44
  br label %switch_break, !dbg !3034

switch_break:                                     ; preds = %switch_default, %if.end249, %if.end242, %if.end229, %if.end221, %if.end213, %if.end205, %if.end183, %if.end156, %if.end148, %if.end140, %if.end84, %if.end57
  %token_phase_rep250 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 13, !dbg !3035
  %45 = load i32, i32* %token_phase_rep250, align 8, !dbg !3035
  %cmp251 = icmp eq i32 %45, 1, !dbg !3037
  br i1 %cmp251, label %if.then253, label %if.end258, !dbg !3038

if.then253:                                       ; preds = %switch_break
  %buffer_rep254 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3039
  %buffer_current_rep255 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !3043
  %46 = load i32, i32* %buffer_current_rep255, align 4, !dbg !3043
  call void @eci_string_add(%struct.eci_string_s* %buffer_rep254, i32 %46, i8* %c.addr, i32 1), !dbg !3044
  %buffer_current_rep256 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !3045
  %47 = load i32, i32* %buffer_current_rep256, align 4, !dbg !3046
  %inc257 = add nsw i32 %47, 1, !dbg !3046
  store i32 %inc257, i32* %buffer_current_rep256, align 4, !dbg !3046
  br label %if.end258, !dbg !3047

if.end258:                                        ; preds = %if.then253, %switch_break
  ret void, !dbg !3048
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_set_last_values(%struct.eci_parser* %parser) #0 !dbg !3049 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_parser* %parser, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata !4, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata !4, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata !4, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata !4, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.declare(metadata !4, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.declare(metadata !4, metadata !3062, metadata !DIExpression()), !dbg !3063
  %0 = ptrtoint %struct.eci_parser* %parser to i64, !dbg !3064
  %cmp = icmp ne i64 %0, 0, !dbg !3067
  br i1 %cmp, label %if.end, label %if.then, !dbg !3068

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3069
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 1114), !dbg !3073
  br label %if.end, !dbg !3074

if.end:                                           ; preds = %if.then, %entry
  %state_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !3075
  %2 = load i32, i32* %state_rep, align 8, !dbg !3075
  %cmp1 = icmp eq i32 %2, 10, !dbg !3077
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !3078

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3079
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 1115), !dbg !3083
  br label %if.end4, !dbg !3084

if.end4:                                          ; preds = %if.then2, %if.end
  %last_type_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3085
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp, i64 0, i64 0, !dbg !3088
  %4 = load i8, i8* %arrayidx, align 8, !dbg !3088
  %conv = sext i8 %4 to i32, !dbg !3089
  %cmp5 = icmp eq i32 %conv, 115, !dbg !3090
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !3091

if.then7:                                         ; preds = %if.end4
  br label %case_115, !dbg !3092

if.end8:                                          ; preds = %if.end4
  %last_type_repp9 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3094
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp9, i64 0, i64 0, !dbg !3096
  %5 = load i8, i8* %arrayidx10, align 8, !dbg !3096
  %conv11 = sext i8 %5 to i32, !dbg !3097
  %cmp12 = icmp eq i32 %conv11, 83, !dbg !3098
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !3099

if.then14:                                        ; preds = %if.end8
  br label %case_83, !dbg !3100

if.end15:                                         ; preds = %if.end8
  %last_type_repp16 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3102
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp16, i64 0, i64 0, !dbg !3104
  %6 = load i8, i8* %arrayidx17, align 8, !dbg !3104
  %conv18 = sext i8 %6 to i32, !dbg !3105
  %cmp19 = icmp eq i32 %conv18, 105, !dbg !3106
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3107

if.then21:                                        ; preds = %if.end15
  br label %case_105, !dbg !3108

if.end22:                                         ; preds = %if.end15
  %last_type_repp23 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3110
  %arrayidx24 = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp23, i64 0, i64 0, !dbg !3112
  %7 = load i8, i8* %arrayidx24, align 8, !dbg !3112
  %conv25 = sext i8 %7 to i32, !dbg !3113
  %cmp26 = icmp eq i32 %conv25, 108, !dbg !3114
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !3115

if.then28:                                        ; preds = %if.end22
  br label %case_108, !dbg !3116

if.end29:                                         ; preds = %if.end22
  %last_type_repp30 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3118
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp30, i64 0, i64 0, !dbg !3120
  %8 = load i8, i8* %arrayidx31, align 8, !dbg !3120
  %conv32 = sext i8 %8 to i32, !dbg !3121
  %cmp33 = icmp eq i32 %conv32, 102, !dbg !3122
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !3123

if.then35:                                        ; preds = %if.end29
  br label %case_102, !dbg !3124

if.end36:                                         ; preds = %if.end29
  %last_type_repp37 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 6, !dbg !3126
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %last_type_repp37, i64 0, i64 0, !dbg !3128
  %9 = load i8, i8* %arrayidx38, align 8, !dbg !3128
  %conv39 = sext i8 %9 to i32, !dbg !3129
  %cmp40 = icmp eq i32 %conv39, 101, !dbg !3130
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !3131

if.then42:                                        ; preds = %if.end36
  br label %case_101, !dbg !3132

if.end43:                                         ; preds = %if.end36
  br label %switch_default, !dbg !3134

case_115:                                         ; preds = %if.then7
  %last_s_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 9, !dbg !3135
  %buffer_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3138
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep, i32 0, i32 0, !dbg !3139
  %10 = load i8*, i8** %d, align 8, !dbg !3139
  %buffer_current_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !3140
  %11 = load i32, i32* %buffer_current_rep, align 4, !dbg !3140
  call void @eci_string_add(%struct.eci_string_s* %last_s_repp, i32 0, i8* %10, i32 %11), !dbg !3141
  br label %switch_break, !dbg !3142

case_83:                                          ; preds = %if.then14
  call void @eci_impl_set_last_los_value(%struct.eci_parser* %parser), !dbg !3143
  br label %switch_break, !dbg !3146

case_105:                                         ; preds = %if.then21
  %buffer_rep44 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3147
  %d45 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep44, i32 0, i32 0, !dbg !3150
  %12 = load i8*, i8** %d45, align 8, !dbg !3150
  %call46 = call i32 @atoi(i8* %12) #9, !dbg !3151
  %last_i_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 4, !dbg !3152
  store i32 %call46, i32* %last_i_rep, align 8, !dbg !3153
  br label %switch_break, !dbg !3154

case_108:                                         ; preds = %if.then28
  %buffer_rep47 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3155
  %d48 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep47, i32 0, i32 0, !dbg !3158
  %13 = load i8*, i8** %d48, align 8, !dbg !3158
  %call49 = call i64 @atol(i8* %13) #9, !dbg !3159
  %last_li_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 3, !dbg !3160
  store i64 %call49, i64* %last_li_rep, align 8, !dbg !3161
  br label %switch_break, !dbg !3162

case_102:                                         ; preds = %if.then35
  %buffer_rep50 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3163
  %d51 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep50, i32 0, i32 0, !dbg !3166
  %14 = load i8*, i8** %d51, align 8, !dbg !3166
  %call52 = call double @atof(i8* %14) #9, !dbg !3167
  %last_f_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 2, !dbg !3168
  store double %call52, double* %last_f_rep, align 8, !dbg !3169
  br label %switch_break, !dbg !3170

case_101:                                         ; preds = %if.then42
  %last_error_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 8, !dbg !3171
  %buffer_rep53 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3174
  %d54 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep53, i32 0, i32 0, !dbg !3175
  %15 = load i8*, i8** %d54, align 8, !dbg !3175
  %buffer_current_rep55 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !3176
  %16 = load i32, i32* %buffer_current_rep55, align 4, !dbg !3176
  call void @eci_string_add(%struct.eci_string_s* %last_error_repp, i32 0, i8* %15, i32 %16), !dbg !3177
  br label %switch_break, !dbg !3178

switch_default:                                   ; preds = %if.end43
  br label %switch_break, !dbg !3178

switch_break:                                     ; preds = %switch_default, %case_101, %case_102, %case_108, %case_105, %case_83, %case_115
  ret void, !dbg !3179
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_impl_set_last_los_value(%struct.eci_parser* %parser) #0 !dbg !3180 {
entry:
  %stmp = alloca %struct.eci_string_s, align 8
  call void @llvm.dbg.value(metadata %struct.eci_parser* %parser, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.eci_string_s* %stmp, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.declare(metadata !4, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.declare(metadata !4, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata !4, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.declare(metadata !4, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.declare(metadata !4, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.declare(metadata !4, metadata !3195, metadata !DIExpression()), !dbg !3196
  %last_los_repp = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 7, !dbg !3197
  %0 = load %struct.eci_los_list*, %struct.eci_los_list** %last_los_repp, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %0, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3201, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3202, metadata !DIExpression()), !dbg !3182
  call void @eci_string_init(%struct.eci_string_s* %stmp), !dbg !3203
  %1 = ptrtoint %struct.eci_parser* %parser to i64, !dbg !3205
  %cmp = icmp ne i64 %1, 0, !dbg !3207
  br i1 %cmp, label %if.end, label %if.then, !dbg !3208

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3209
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 1069), !dbg !3213
  br label %if.end, !dbg !3214

if.end:                                           ; preds = %if.then, %entry
  %state_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 0, !dbg !3215
  %3 = load i32, i32* %state_rep, align 8, !dbg !3215
  %cmp1 = icmp eq i32 %3, 10, !dbg !3217
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !3218

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3219
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 1070), !dbg !3223
  br label %if.end4, !dbg !3224

if.end4:                                          ; preds = %if.then2, %if.end
  call void @eci_impl_los_list_clear(%struct.eci_los_list* %0), !dbg !3225
  %last_los_repp5 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 7, !dbg !3228
  store %struct.eci_los_list* null, %struct.eci_los_list** %last_los_repp5, align 8, !dbg !3229
  call void @llvm.dbg.value(metadata i32 0, metadata !3230, metadata !DIExpression()), !dbg !3182
  br label %while.body, !dbg !3231

while.body:                                       ; preds = %__Cont, %if.end4
  %n.0 = phi i32 [ 0, %if.end4 ], [ %inc55, %__Cont ], !dbg !3234
  %m.0 = phi i32 [ 0, %if.end4 ], [ %m.5, %__Cont ], !dbg !3235
  %quoteflag.0 = phi i32 [ 0, %if.end4 ], [ %quoteflag.2, %__Cont ], !dbg !3234
  %i.0 = phi %struct.eci_los_list* [ %0, %if.end4 ], [ %i.5, %__Cont ], !dbg !3236
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %quoteflag.0, metadata !3201, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !3202, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3230, metadata !DIExpression()), !dbg !3182
  br label %while_continue___0, !dbg !3237

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3237

while_continue:                                   ; preds = %while_continue___0
  %buffer_current_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 14, !dbg !3238
  %5 = load i32, i32* %buffer_current_rep, align 4, !dbg !3238
  %cmp6 = icmp slt i32 %n.0, %5, !dbg !3241
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !3242

if.then7:                                         ; preds = %while_continue
  %msgsize_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 11, !dbg !3243
  %6 = load i32, i32* %msgsize_rep, align 8, !dbg !3243
  %cmp8 = icmp slt i32 %n.0, %6, !dbg !3246
  br i1 %cmp8, label %if.end10, label %if.then9, !dbg !3247

if.then9:                                         ; preds = %if.then7
  br label %while_break, !dbg !3248

if.end10:                                         ; preds = %if.then7
  br label %if.end11, !dbg !3250

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !3251

if.end11:                                         ; preds = %if.end10
  %buffer_rep = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3253
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep, i32 0, i32 0, !dbg !3254
  %7 = load i8*, i8** %d, align 8, !dbg !3254
  %idx.ext = sext i32 %n.0 to i64, !dbg !3255
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext, !dbg !3255
  %8 = load i8, i8* %add.ptr, align 1, !dbg !3256
  call void @llvm.dbg.value(metadata i8 %8, metadata !3257, metadata !DIExpression()), !dbg !3182
  %conv = sext i8 %8 to i32, !dbg !3258
  %cmp12 = icmp eq i32 %conv, 34, !dbg !3260
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !3261

if.then14:                                        ; preds = %if.end11
  %tobool = icmp ne i32 %quoteflag.0, 0, !dbg !3262
  %lnot = xor i1 %tobool, true, !dbg !3262
  %lnot.ext = zext i1 %lnot to i32, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3201, metadata !DIExpression()), !dbg !3182
  br label %if.end54, !dbg !3264

if.else15:                                        ; preds = %if.end11
  %conv16 = sext i8 %8 to i32, !dbg !3265
  %cmp17 = icmp eq i32 %conv16, 92, !dbg !3267
  br i1 %cmp17, label %if.then19, label %if.else25, !dbg !3268

if.then19:                                        ; preds = %if.else15
  %inc = add nsw i32 %n.0, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3230, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !3272, metadata !DIExpression()), !dbg !3182
  %inc20 = add nsw i32 %m.0, 1, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %inc20, metadata !3202, metadata !DIExpression()), !dbg !3182
  %buffer_rep21 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3274
  %d22 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep21, i32 0, i32 0, !dbg !3276
  %9 = load i8*, i8** %d22, align 8, !dbg !3276
  %idx.ext23 = sext i32 %inc to i64, !dbg !3277
  %add.ptr24 = getelementptr inbounds i8, i8* %9, i64 %idx.ext23, !dbg !3277
  call void @eci_string_add(%struct.eci_string_s* %stmp, i32 %m.0, i8* %add.ptr24, i32 1), !dbg !3278
  br label %if.end53, !dbg !3279

if.else25:                                        ; preds = %if.else15
  %conv26 = sext i8 %8 to i32, !dbg !3280
  %cmp27 = icmp ne i32 %conv26, 44, !dbg !3282
  br i1 %cmp27, label %if.then29, label %if.else35, !dbg !3283

if.then29:                                        ; preds = %if.else25
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !3284, metadata !DIExpression()), !dbg !3182
  %inc30 = add nsw i32 %m.0, 1, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %inc30, metadata !3202, metadata !DIExpression()), !dbg !3182
  %buffer_rep31 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3288
  %d32 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep31, i32 0, i32 0, !dbg !3290
  %10 = load i8*, i8** %d32, align 8, !dbg !3290
  %idx.ext33 = sext i32 %n.0 to i64, !dbg !3291
  %add.ptr34 = getelementptr inbounds i8, i8* %10, i64 %idx.ext33, !dbg !3291
  call void @eci_string_add(%struct.eci_string_s* %stmp, i32 %m.0, i8* %add.ptr34, i32 1), !dbg !3292
  br label %if.end52, !dbg !3293

if.else35:                                        ; preds = %if.else25
  %cmp36 = icmp eq i32 %quoteflag.0, 1, !dbg !3294
  br i1 %cmp36, label %if.then38, label %if.else44, !dbg !3280

if.then38:                                        ; preds = %if.else35
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !3284, metadata !DIExpression()), !dbg !3182
  %inc39 = add nsw i32 %m.0, 1, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !3202, metadata !DIExpression()), !dbg !3182
  %buffer_rep40 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 10, !dbg !3299
  %d41 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %buffer_rep40, i32 0, i32 0, !dbg !3301
  %11 = load i8*, i8** %d41, align 8, !dbg !3301
  %idx.ext42 = sext i32 %n.0 to i64, !dbg !3302
  %add.ptr43 = getelementptr inbounds i8, i8* %11, i64 %idx.ext42, !dbg !3302
  call void @eci_string_add(%struct.eci_string_s* %stmp, i32 %m.0, i8* %add.ptr43, i32 1), !dbg !3303
  br label %if.end51, !dbg !3304

if.else44:                                        ; preds = %if.else35
  %cmp45 = icmp eq i32 %m.0, 0, !dbg !3305
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !3308

if.then47:                                        ; preds = %if.else44
  br label %__Cont, !dbg !3309

if.end48:                                         ; preds = %if.else44
  %d49 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %stmp, i32 0, i32 0, !dbg !3311
  %12 = load i8*, i8** %d49, align 8, !dbg !3311
  %call50 = call %struct.eci_los_list* @eci_impl_los_list_add_item(%struct.eci_los_list* %i.0, i8* %12, i32 %m.0), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %call50, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3202, metadata !DIExpression()), !dbg !3182
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then38
  %m.1 = phi i32 [ %inc39, %if.then38 ], [ 0, %if.end48 ], !dbg !3315
  %i.1 = phi %struct.eci_los_list* [ %i.0, %if.then38 ], [ %call50, %if.end48 ], !dbg !3234
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.1, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.1, metadata !3202, metadata !DIExpression()), !dbg !3182
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then29
  %m.2 = phi i32 [ %inc30, %if.then29 ], [ %m.1, %if.end51 ], !dbg !3316
  %i.2 = phi %struct.eci_los_list* [ %i.0, %if.then29 ], [ %i.1, %if.end51 ], !dbg !3236
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.2, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.2, metadata !3202, metadata !DIExpression()), !dbg !3182
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then19
  %n.1 = phi i32 [ %inc, %if.then19 ], [ %n.0, %if.end52 ], !dbg !3234
  %m.3 = phi i32 [ %inc20, %if.then19 ], [ %m.2, %if.end52 ], !dbg !3317
  %i.3 = phi %struct.eci_los_list* [ %i.0, %if.then19 ], [ %i.2, %if.end52 ], !dbg !3236
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.3, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.3, metadata !3202, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !3230, metadata !DIExpression()), !dbg !3182
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then14
  %n.2 = phi i32 [ %n.0, %if.then14 ], [ %n.1, %if.end53 ], !dbg !3234
  %m.4 = phi i32 [ %m.0, %if.then14 ], [ %m.3, %if.end53 ], !dbg !3234
  %quoteflag.1 = phi i32 [ %lnot.ext, %if.then14 ], [ %quoteflag.0, %if.end53 ], !dbg !3234
  %i.4 = phi %struct.eci_los_list* [ %i.0, %if.then14 ], [ %i.3, %if.end53 ], !dbg !3236
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.4, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %quoteflag.1, metadata !3201, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.4, metadata !3202, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %n.2, metadata !3230, metadata !DIExpression()), !dbg !3182
  br label %__Cont, !dbg !3318

__Cont:                                           ; preds = %if.end54, %if.then47
  %n.3 = phi i32 [ %n.2, %if.end54 ], [ %n.0, %if.then47 ], !dbg !3319
  %m.5 = phi i32 [ %m.4, %if.end54 ], [ %m.0, %if.then47 ], !dbg !3235
  %quoteflag.2 = phi i32 [ %quoteflag.1, %if.end54 ], [ %quoteflag.0, %if.then47 ], !dbg !3234
  %i.5 = phi %struct.eci_los_list* [ %i.4, %if.end54 ], [ %i.0, %if.then47 ], !dbg !3236
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.5, metadata !3200, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %quoteflag.2, metadata !3201, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %m.5, metadata !3202, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %n.3, metadata !3230, metadata !DIExpression()), !dbg !3182
  %inc55 = add nsw i32 %n.3, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %inc55, metadata !3230, metadata !DIExpression()), !dbg !3182
  br label %while.body, !dbg !3231, !llvm.loop !3321

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3323

while_break:                                      ; preds = %while_break___0, %if.else, %if.then9
  %cmp56 = icmp sgt i32 %m.0, 0, !dbg !3324
  br i1 %cmp56, label %if.then58, label %if.end61, !dbg !3326

if.then58:                                        ; preds = %while_break
  %d59 = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %stmp, i32 0, i32 0, !dbg !3327
  %13 = load i8*, i8** %d59, align 8, !dbg !3327
  %call60 = call %struct.eci_los_list* @eci_impl_los_list_add_item(%struct.eci_los_list* %i.0, i8* %13, i32 %m.0), !dbg !3331
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %call60, metadata !3200, metadata !DIExpression()), !dbg !3182
  br label %if.end61, !dbg !3332

if.end61:                                         ; preds = %if.then58, %while_break
  %i.6 = phi %struct.eci_los_list* [ %call60, %if.then58 ], [ %i.0, %while_break ], !dbg !3234
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.6, metadata !3200, metadata !DIExpression()), !dbg !3182
  %last_los_repp62 = getelementptr inbounds %struct.eci_parser, %struct.eci_parser* %parser, i32 0, i32 7, !dbg !3333
  store %struct.eci_los_list* %i.6, %struct.eci_los_list** %last_los_repp62, align 8, !dbg !3335
  call void @eci_string_free(%struct.eci_string_s* %stmp), !dbg !3336
  ret void, !dbg !3338
}

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @eci_string_init(%struct.eci_string_s* %str) #0 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_string_s* %str, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.declare(metadata !4, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata !4, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata !4, metadata !3346, metadata !DIExpression()), !dbg !3347
  %tobool = icmp ne %struct.eci_string_s* %str, null, !dbg !3348
  br i1 %tobool, label %if.end, label %if.then, !dbg !3351

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3352
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 817), !dbg !3356
  br label %if.end, !dbg !3357

if.end:                                           ; preds = %if.then, %entry
  %slen = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 1, !dbg !3358
  store i32 0, i32* %slen, align 8, !dbg !3359
  %size = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 2, !dbg !3360
  store i32 0, i32* %size, align 4, !dbg !3361
  %d = getelementptr inbounds %struct.eci_string_s, %struct.eci_string_s* %str, i32 0, i32 0, !dbg !3362
  store i8* null, i8** %d, align 8, !dbg !3363
  ret void, !dbg !3364
}

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.eci_los_list* @eci_impl_los_list_add_item(%struct.eci_los_list* %head, i8* %stmp, i32 %len) #0 !dbg !3365 {
entry:
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %head, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* %stmp, metadata !3370, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %len, metadata !3371, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %head, metadata !3372, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.eci_los_list* null, metadata !3373, metadata !DIExpression()), !dbg !3369
  br label %while.body, !dbg !3374

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi %struct.eci_los_list* [ %head, %entry ], [ %1, %if.end ], !dbg !3378
  %last.0 = phi %struct.eci_los_list* [ null, %entry ], [ %i.0, %if.end ], !dbg !3378
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %last.0, metadata !3373, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !3372, metadata !DIExpression()), !dbg !3369
  br label %while_continue___0, !dbg !3379

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3379

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.eci_los_list* %i.0 to i64, !dbg !3380
  %cmp = icmp ne i64 %0, 0, !dbg !3383
  br i1 %cmp, label %if.end, label %if.then, !dbg !3384

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3385

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %i.0, metadata !3373, metadata !DIExpression()), !dbg !3369
  %next_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %i.0, i32 0, i32 1, !dbg !3387
  %1 = load %struct.eci_los_list*, %struct.eci_los_list** %next_repp, align 8, !dbg !3387
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %1, metadata !3372, metadata !DIExpression()), !dbg !3369
  br label %while.body, !dbg !3374, !llvm.loop !3388

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3390

while_break:                                      ; preds = %while_break___0, %if.then
  %call = call %struct.eci_los_list* @eci_impl_los_list_alloc_item(), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %call, metadata !3372, metadata !DIExpression()), !dbg !3369
  %data_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %call, i32 0, i32 2, !dbg !3394
  call void @eci_string_add(%struct.eci_string_s* %data_repp, i32 0, i8* %stmp, i32 %len), !dbg !3396
  %2 = ptrtoint %struct.eci_los_list* %last.0 to i64, !dbg !3397
  %cmp1 = icmp ne i64 %2, 0, !dbg !3399
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !3400

if.then2:                                         ; preds = %while_break
  %next_repp3 = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %last.0, i32 0, i32 1, !dbg !3401
  store %struct.eci_los_list* %call, %struct.eci_los_list** %next_repp3, align 8, !dbg !3403
  br label %if.end4, !dbg !3404

if.end4:                                          ; preds = %if.then2, %while_break
  %3 = ptrtoint %struct.eci_los_list* %head to i64, !dbg !3405
  %cmp5 = icmp eq i64 %3, 0, !dbg !3407
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3408

if.then6:                                         ; preds = %if.end4
  br label %return, !dbg !3409

if.end7:                                          ; preds = %if.end4
  br label %return, !dbg !3411

return:                                           ; preds = %if.end7, %if.then6
  %retval.0 = phi %struct.eci_los_list* [ %call, %if.then6 ], [ %head, %if.end7 ], !dbg !3378
  ret %struct.eci_los_list* %retval.0, !dbg !3412
}

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.eci_los_list* @eci_impl_los_list_alloc_item() #0 !dbg !3413 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata !4, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata !4, metadata !3420, metadata !DIExpression()), !dbg !3421
  %call = call noalias i8* @calloc(i32 1, i32 32) #7, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %call, metadata !3426, metadata !DIExpression()), !dbg !3427
  %0 = bitcast i8* %call to %struct.eci_los_list*, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.eci_los_list* %0, metadata !3429, metadata !DIExpression()), !dbg !3427
  %1 = ptrtoint %struct.eci_los_list* %0 to i64, !dbg !3430
  %cmp = icmp ne i64 %1, 0, !dbg !3432
  br i1 %cmp, label %if.end, label %if.then, !dbg !3433

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3434
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0), i32 990), !dbg !3438
  br label %if.end, !dbg !3439

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata %struct.eci_los_list* null, metadata !3440, metadata !DIExpression()), !dbg !3427
  %prev_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %0, i32 0, i32 0, !dbg !3441
  store %struct.eci_los_list* null, %struct.eci_los_list** %prev_repp, align 8, !dbg !3443
  %next_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %0, i32 0, i32 1, !dbg !3441
  store %struct.eci_los_list* null, %struct.eci_los_list** %next_repp, align 8, !dbg !3443
  %data_repp = getelementptr inbounds %struct.eci_los_list, %struct.eci_los_list* %0, i32 0, i32 2, !dbg !3444
  call void @eci_string_clear(%struct.eci_string_s* %data_repp), !dbg !3446
  ret %struct.eci_los_list* %0, !dbg !3447
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @get_playlist_path() #0 !dbg !3448 {
entry:
  %statbuf = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %statbuf, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata !4, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.declare(metadata !4, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.declare(metadata !4, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata !4, metadata !3459, metadata !DIExpression()), !dbg !3460
  %call = call noalias i8* @malloc(i32 4096) #7, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %call, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %call, metadata !3467, metadata !DIExpression()), !dbg !3466
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %call1, metadata !3470, metadata !DIExpression()), !dbg !3466
  %call2 = call i8* @strncpy(i8* %call, i8* %call1, i32 4096) #7, !dbg !3471
  %call3 = call i32 @strlen(i8* %call) #9, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3475, metadata !DIExpression()), !dbg !3466
  %sub = sub i32 4096, %call3, !dbg !3476
  %sub4 = sub i32 %sub, 1, !dbg !3478
  %call5 = call i8* @strncat(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 %sub4) #7, !dbg !3479
  %call6 = call i32 @"\01stat64"(i8* %call, %struct.stat* %statbuf) #7, !dbg !3480
  call void @llvm.dbg.value(metadata i32 %call6, metadata !3482, metadata !DIExpression()), !dbg !3466
  %cmp = icmp ne i32 %call6, 0, !dbg !3483
  br i1 %cmp, label %if.then, label %if.else, !dbg !3485

if.then:                                          ; preds = %entry
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i8* %call), !dbg !3486
  %call8 = call i32 @mkdir(i8* %call, i32 448) #7, !dbg !3490
  br label %if.end11, !dbg !3492

if.else:                                          ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3, !dbg !3493
  %0 = load i32, i32* %st_mode, align 8, !dbg !3493
  %and = and i32 %0, 61440, !dbg !3495
  %cmp9 = icmp eq i32 %and, 16384, !dbg !3496
  br i1 %cmp9, label %if.end, label %if.then10, !dbg !3497

if.then10:                                        ; preds = %if.else
  call void @free(i8* %call) #7, !dbg !3498
  call void @llvm.dbg.value(metadata i8* null, metadata !3467, metadata !DIExpression()), !dbg !3466
  br label %if.end, !dbg !3502

if.end:                                           ; preds = %if.then10, %if.else
  %path.0 = phi i8* [ %call, %if.else ], [ null, %if.then10 ], !dbg !3503
  call void @llvm.dbg.value(metadata i8* %path.0, metadata !3467, metadata !DIExpression()), !dbg !3466
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %path.1 = phi i8* [ %call, %if.then ], [ %path.0, %if.end ], !dbg !3504
  call void @llvm.dbg.value(metadata i8* %path.1, metadata !3467, metadata !DIExpression()), !dbg !3466
  %1 = ptrtoint i8* %path.1 to i64, !dbg !3505
  %cmp12 = icmp ne i64 %1, 0, !dbg !3507
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !3508

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 @strlen(i8* %path.1) #9, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %call14, metadata !3513, metadata !DIExpression()), !dbg !3466
  %sub15 = sub i32 4096, %call14, !dbg !3514
  %sub16 = sub i32 %sub15, 1, !dbg !3516
  %call17 = call i8* @strncat(i8* %path.1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i32 %sub16) #7, !dbg !3517
  br label %if.end18, !dbg !3518

if.end18:                                         ; preds = %if.then13, %if.end11
  ret i8* %path.1, !dbg !3519
}

; Function Attrs: nounwind
declare i32 @"\01truncate64"(i8*, i64) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i32 @"\01stat64"(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

declare %struct._IO_FILE* @"\01fopen64"(i8*, i8*) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @get_next_track(i32* %tracknum, i32 %argc, i8** %argv, i8** %eci) #0 !dbg !3520 {
entry:
  call void @llvm.dbg.value(metadata i32* %tracknum, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 %argc, metadata !3525, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8** %argv, metadata !3526, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8** %eci, metadata !3527, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* null, metadata !3528, metadata !DIExpression()), !dbg !3524
  %0 = load i32, i32* @ecaplay_mode, align 4, !dbg !3529
  %cmp = icmp eq i32 %0, 3, !dbg !3532
  br i1 %cmp, label %if.then, label %if.else, !dbg !3533

if.then:                                          ; preds = %entry
  %call = call i8* @get_track_playlist(i32* %tracknum), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %call, metadata !3528, metadata !DIExpression()), !dbg !3524
  br label %if.end, !dbg !3538

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %tracknum, align 4, !dbg !3539
  %call1 = call i8* @get_track_cmdline(i32 %1, i32 %argc, i8** %argv), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %call1, metadata !3528, metadata !DIExpression()), !dbg !3524
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nexttrack.0 = phi i8* [ %call, %if.then ], [ %call1, %if.else ], !dbg !3544
  call void @llvm.dbg.value(metadata i8* %nexttrack.0, metadata !3528, metadata !DIExpression()), !dbg !3524
  %2 = ptrtoint i8* %nexttrack.0 to i64, !dbg !3545
  %cmp2 = icmp ne i64 %2, 0, !dbg !3547
  br i1 %cmp2, label %if.then3, label %if.else6, !dbg !3548

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* @ecaplay_initialized, align 4, !dbg !3549
  %tobool = icmp ne i32 %3, 0, !dbg !3549
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !3552

if.then4:                                         ; preds = %if.then3
  %4 = load i8*, i8** %eci, align 8, !dbg !3553
  call void @eci_cleanup_r(i8* %4), !dbg !3557
  br label %if.end5, !dbg !3558

if.end5:                                          ; preds = %if.then4, %if.then3
  %5 = load i32, i32* %tracknum, align 4, !dbg !3559
  call void @initialize_chainsetup_for_playback(i8** %eci, i8* %nexttrack.0, i32 %5), !dbg !3562
  br label %if.end22, !dbg !3563

if.else6:                                         ; preds = %if.end
  %6 = load i32, i32* @ecaplay_mode, align 4, !dbg !3564
  %cmp7 = icmp ne i32 %6, 3, !dbg !3566
  br i1 %cmp7, label %if.end21, label %if.then8, !dbg !3567

if.then8:                                         ; preds = %if.else6
  store i32 1, i32* %tracknum, align 4, !dbg !3568
  %7 = load i32, i32* @ecaplay_mode, align 4, !dbg !3570
  %cmp9 = icmp eq i32 %7, 3, !dbg !3572
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !3573

if.then10:                                        ; preds = %if.then8
  %call11 = call i8* @get_track_playlist(i32* %tracknum), !dbg !3574
  call void @llvm.dbg.value(metadata i8* %call11, metadata !3528, metadata !DIExpression()), !dbg !3524
  br label %if.end14, !dbg !3578

if.else12:                                        ; preds = %if.then8
  %8 = load i32, i32* %tracknum, align 4, !dbg !3579
  %call13 = call i8* @get_track_cmdline(i32 %8, i32 %argc, i8** %argv), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %call13, metadata !3528, metadata !DIExpression()), !dbg !3524
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  %nexttrack.1 = phi i8* [ %call11, %if.then10 ], [ %call13, %if.else12 ], !dbg !3584
  call void @llvm.dbg.value(metadata i8* %nexttrack.1, metadata !3528, metadata !DIExpression()), !dbg !3524
  %9 = ptrtoint i8* %nexttrack.1 to i64, !dbg !3585
  %cmp15 = icmp ne i64 %9, 0, !dbg !3587
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !3588

if.then16:                                        ; preds = %if.end14
  %10 = load i32, i32* @ecaplay_initialized, align 4, !dbg !3589
  %tobool17 = icmp ne i32 %10, 0, !dbg !3589
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3592

if.then18:                                        ; preds = %if.then16
  %11 = load i8*, i8** %eci, align 8, !dbg !3593
  call void @eci_cleanup_r(i8* %11), !dbg !3597
  br label %if.end19, !dbg !3598

if.end19:                                         ; preds = %if.then18, %if.then16
  %12 = load i32, i32* %tracknum, align 4, !dbg !3599
  call void @initialize_chainsetup_for_playback(i8** %eci, i8* %nexttrack.1, i32 %12), !dbg !3602
  br label %if.end20, !dbg !3603

if.end20:                                         ; preds = %if.end19, %if.end14
  br label %if.end21, !dbg !3604

if.end21:                                         ; preds = %if.end20, %if.else6
  %nexttrack.2 = phi i8* [ %nexttrack.0, %if.else6 ], [ %nexttrack.1, %if.end20 ], !dbg !3605
  call void @llvm.dbg.value(metadata i8* %nexttrack.2, metadata !3528, metadata !DIExpression()), !dbg !3524
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end5
  %nexttrack.3 = phi i8* [ %nexttrack.0, %if.end5 ], [ %nexttrack.2, %if.end21 ], !dbg !3606
  call void @llvm.dbg.value(metadata i8* %nexttrack.3, metadata !3528, metadata !DIExpression()), !dbg !3524
  ret i8* %nexttrack.3, !dbg !3607
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @setup_signal_handling() #0 !dbg !3608 {
entry:
  %es_handler_int = alloca %struct.sigaction, align 8
  %ign_handler = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %es_handler_int, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.declare(metadata %struct.sigaction* %ign_handler, metadata !3611, metadata !DIExpression()), !dbg !3612
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %es_handler_int, i32 0, i32 0, !dbg !3613
  %sa_handler = bitcast %union.__anonunion___sigaction_handler_40* %__sigaction_handler to void (i32)**, !dbg !3616
  store void (i32)* @signal_handler, void (i32)** %sa_handler, align 8, !dbg !3617
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %es_handler_int, i32 0, i32 1, !dbg !3618
  %call = call i32 @sigemptyset(%struct.__anonstruct___sigset_t_21* %sa_mask) #7, !dbg !3620
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %es_handler_int, i32 0, i32 2, !dbg !3621
  store i32 0, i32* %sa_flags, align 8, !dbg !3622
  %__sigaction_handler1 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 0, !dbg !3623
  %sa_handler2 = bitcast %union.__anonunion___sigaction_handler_40* %__sigaction_handler1 to void (i32)**, !dbg !3624
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %sa_handler2, align 8, !dbg !3625
  %sa_mask3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 1, !dbg !3626
  %call4 = call i32 @sigemptyset(%struct.__anonstruct___sigset_t_21* %sa_mask3) #7, !dbg !3628
  %sa_flags5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ign_handler, i32 0, i32 2, !dbg !3629
  store i32 0, i32* %sa_flags5, align 8, !dbg !3630
  %call6 = call i32 @sigaction(i32 2, %struct.sigaction* %es_handler_int, %struct.sigaction* null) #7, !dbg !3631
  %call7 = call i32 @sigaction(i32 13, %struct.sigaction* %ign_handler, %struct.sigaction* null) #7, !dbg !3633
  %call8 = call i32 @sigaction(i32 8, %struct.sigaction* %ign_handler, %struct.sigaction* null) #7, !dbg !3635
  ret void, !dbg !3637
}

declare i32 @sleep(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @get_track_playlist(i32* %next_track) #0 !dbg !3638 {
entry:
  call void @llvm.dbg.value(metadata i32* %next_track, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.declare(metadata !4, metadata !3643, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* null, metadata !3645, metadata !DIExpression()), !dbg !3642
  %0 = load i32, i32* %next_track, align 4, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %0, metadata !3649, metadata !DIExpression()), !dbg !3642
  %call = call i8* @get_playlist_path(), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %call, metadata !3652, metadata !DIExpression()), !dbg !3642
  %1 = ptrtoint i8* %call to i64, !dbg !3653
  %cmp = icmp eq i64 %1, 0, !dbg !3655
  br i1 %cmp, label %if.then, label %if.end, !dbg !3656

if.then:                                          ; preds = %entry
  br label %return, !dbg !3657

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @"\01fopen64"(i8* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)), !dbg !3659
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, metadata !3662, metadata !DIExpression()), !dbg !3642
  %2 = ptrtoint %struct._IO_FILE* %call1 to i64, !dbg !3663
  %cmp2 = icmp ne i64 %2, 0, !dbg !3665
  br i1 %cmp2, label %if.then3, label %if.end26, !dbg !3666

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !3667, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3642
  br label %while.body, !dbg !3669

while.body:                                       ; preds = %__Cont, %if.then3
  %next.0 = phi i32 [ %0, %if.then3 ], [ %next.1, %__Cont ], !dbg !3673
  %w.0 = phi i32 [ 0, %if.then3 ], [ %w.2, %__Cont ], !dbg !3674
  %cur_item.0 = phi i32 [ 1, %if.then3 ], [ %cur_item.2, %__Cont ], !dbg !3674
  call void @llvm.dbg.value(metadata i32 %cur_item.0, metadata !3667, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %w.0, metadata !3668, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %next.0, metadata !3649, metadata !DIExpression()), !dbg !3642
  br label %while_continue___0, !dbg !3675

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3675

while_continue:                                   ; preds = %while_continue___0
  %call4 = call i32 @fgetc(%struct._IO_FILE* %call1), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3680, metadata !DIExpression()), !dbg !3642
  %cmp5 = icmp eq i32 %call4, -1, !dbg !3681
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !3683

if.then6:                                         ; preds = %while_continue
  %cmp7 = icmp sgt i32 %next.0, %cur_item.0, !dbg !3684
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !3687

if.then8:                                         ; preds = %if.then6
  %rem = srem i32 %next.0, %cur_item.0, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %rem, metadata !3649, metadata !DIExpression()), !dbg !3642
  store i32 %rem, i32* %next_track, align 4, !dbg !3691
  %call9 = call i32 @fseek(%struct._IO_FILE* %call1, i64 0, i32 0), !dbg !3692
  call void @llvm.dbg.value(metadata i32 1, metadata !3667, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3642
  br label %__Cont, !dbg !3694

if.end10:                                         ; preds = %if.then6
  br label %while_break, !dbg !3695

if.end11:                                         ; preds = %while_continue
  %cmp12 = icmp eq i32 %cur_item.0, %next.0, !dbg !3696
  br i1 %cmp12, label %if.then13, label %if.end19, !dbg !3698

if.then13:                                        ; preds = %if.end11
  %cmp14 = icmp eq i32 %call4, 10, !dbg !3699
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !3702

if.then15:                                        ; preds = %if.then13
  %idxprom = sext i32 %w.0 to i64, !dbg !3703
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* @ecaplay_next, i64 0, i64 %idxprom, !dbg !3703
  store i8 0, i8* %arrayidx, align 1, !dbg !3705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ecaplay_next, i32 0, i32 0), metadata !3645, metadata !DIExpression()), !dbg !3642
  br label %while_break, !dbg !3706

if.else:                                          ; preds = %if.then13
  %conv = trunc i32 %call4 to i8, !dbg !3707
  %idxprom16 = sext i32 %w.0 to i64, !dbg !3709
  %arrayidx17 = getelementptr inbounds [4096 x i8], [4096 x i8]* @ecaplay_next, i64 0, i64 %idxprom16, !dbg !3709
  store i8 %conv, i8* %arrayidx17, align 1, !dbg !3710
  br label %if.end18

if.end18:                                         ; preds = %if.else
  %inc = add nsw i32 %w.0, 1, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3668, metadata !DIExpression()), !dbg !3642
  br label %if.end19, !dbg !3712

if.end19:                                         ; preds = %if.end18, %if.end11
  %w.1 = phi i32 [ %inc, %if.end18 ], [ %w.0, %if.end11 ], !dbg !3674
  call void @llvm.dbg.value(metadata i32 %w.1, metadata !3668, metadata !DIExpression()), !dbg !3642
  %cmp20 = icmp eq i32 %call4, 10, !dbg !3713
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !3715

if.then22:                                        ; preds = %if.end19
  %inc23 = add nsw i32 %cur_item.0, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %inc23, metadata !3667, metadata !DIExpression()), !dbg !3642
  br label %if.end24, !dbg !3718

if.end24:                                         ; preds = %if.then22, %if.end19
  %cur_item.1 = phi i32 [ %inc23, %if.then22 ], [ %cur_item.0, %if.end19 ], !dbg !3674
  call void @llvm.dbg.value(metadata i32 %cur_item.1, metadata !3667, metadata !DIExpression()), !dbg !3642
  br label %__Cont, !dbg !3719

__Cont:                                           ; preds = %if.end24, %if.then8
  %next.1 = phi i32 [ %rem, %if.then8 ], [ %next.0, %if.end24 ], !dbg !3673
  %w.2 = phi i32 [ 0, %if.then8 ], [ %w.1, %if.end24 ], !dbg !3720
  %cur_item.2 = phi i32 [ 1, %if.then8 ], [ %cur_item.1, %if.end24 ], !dbg !3720
  call void @llvm.dbg.value(metadata i32 %cur_item.2, metadata !3667, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %w.2, metadata !3668, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %next.1, metadata !3649, metadata !DIExpression()), !dbg !3642
  br label %while.body, !dbg !3669, !llvm.loop !3721

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3723

while_break:                                      ; preds = %while_break___0, %if.then15, %if.end10
  %res.0 = phi i8* [ null, %if.end10 ], [ getelementptr inbounds ([4096 x i8], [4096 x i8]* @ecaplay_next, i32 0, i32 0), %if.then15 ], [ undef, %while_break___0 ], !dbg !3673
  call void @llvm.dbg.value(metadata i8* %res.0, metadata !3645, metadata !DIExpression()), !dbg !3642
  %call25 = call i32 @fclose(%struct._IO_FILE* %call1), !dbg !3724
  br label %if.end26, !dbg !3727

if.end26:                                         ; preds = %while_break, %if.end
  %res.1 = phi i8* [ %res.0, %while_break ], [ null, %if.end ], !dbg !3728
  call void @llvm.dbg.value(metadata i8* %res.1, metadata !3645, metadata !DIExpression()), !dbg !3642
  call void @free(i8* %call) #7, !dbg !3729
  br label %return, !dbg !3732

return:                                           ; preds = %if.end26, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %res.1, %if.end26 ], !dbg !3673
  ret i8* %retval.0, !dbg !3733
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @get_track_cmdline(i32 %n, i32 %argc, i8** %argv) #0 !dbg !3734 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 %argc, metadata !3739, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8** %argv, metadata !3740, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 1, metadata !3742, metadata !DIExpression()), !dbg !3738
  br label %while.body, !dbg !3743

while.body:                                       ; preds = %if.end11, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc12, %if.end11 ], !dbg !3747
  %c.0 = phi i32 [ 0, %entry ], [ %c.1, %if.end11 ], !dbg !3747
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !3741, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3742, metadata !DIExpression()), !dbg !3738
  br label %while_continue___0, !dbg !3748

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3748

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %argc, !dbg !3749
  br i1 %cmp, label %if.end, label %if.then, !dbg !3752

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3753

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !3755
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !3755
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !3757
  %add.ptr1 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !3758
  %1 = load i8, i8* %add.ptr1, align 1, !dbg !3759
  %conv = sext i8 %1 to i32, !dbg !3760
  %cmp2 = icmp ne i32 %conv, 45, !dbg !3761
  br i1 %cmp2, label %if.then4, label %if.end11, !dbg !3762

if.then4:                                         ; preds = %if.end
  %inc = add nsw i32 %c.0, 1, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3741, metadata !DIExpression()), !dbg !3738
  %cmp5 = icmp eq i32 %inc, %n, !dbg !3765
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !3767

if.then7:                                         ; preds = %if.then4
  %idx.ext8 = sext i32 %i.0 to i64, !dbg !3768
  %add.ptr9 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext8, !dbg !3768
  %2 = load i8*, i8** %add.ptr9, align 8, !dbg !3770
  br label %return, !dbg !3771

if.end10:                                         ; preds = %if.then4
  br label %if.end11, !dbg !3772

if.end11:                                         ; preds = %if.end10, %if.end
  %c.1 = phi i32 [ %inc, %if.end10 ], [ %c.0, %if.end ], !dbg !3747
  call void @llvm.dbg.value(metadata i32 %c.1, metadata !3741, metadata !DIExpression()), !dbg !3738
  %inc12 = add nsw i32 %i.0, 1, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3742, metadata !DIExpression()), !dbg !3738
  br label %while.body, !dbg !3743, !llvm.loop !3774

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3776

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !3777

return:                                           ; preds = %while_break, %if.then7
  %retval.0 = phi i8* [ %2, %if.then7 ], [ null, %while_break ], !dbg !3747
  ret i8* %retval.0, !dbg !3778
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @initialize_chainsetup_for_playback(i8** %eci, i8* %nexttrack, i32 %tracknum) #0 !dbg !3779 {
entry:
  %tmpbuf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8** %eci, metadata !3782, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* %nexttrack, metadata !3784, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %tracknum, metadata !3785, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.declare(metadata [32 x i8]* %tmpbuf, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.declare(metadata !4, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.declare(metadata !4, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.declare(metadata !4, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.declare(metadata !4, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.declare(metadata !4, metadata !3796, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.declare(metadata !4, metadata !3798, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.declare(metadata !4, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.declare(metadata !4, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.declare(metadata !4, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.declare(metadata !4, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.declare(metadata !4, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.declare(metadata !4, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.declare(metadata !4, metadata !3812, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.declare(metadata !4, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata !4, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.declare(metadata !4, metadata !3818, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.declare(metadata !4, metadata !3820, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8* null, metadata !3822, metadata !DIExpression()), !dbg !3783
  %call = call i8* @eci_init_r(), !dbg !3823
  store i8* %call, i8** %eci, align 8, !dbg !3827
  store i32 1, i32* @ecaplay_initialized, align 4, !dbg !3828
  %0 = load i32, i32* @ecaplay_debuglevel, align 4, !dbg !3829
  %cmp = icmp ne i32 %0, -1, !dbg !3831
  br i1 %cmp, label %if.then, label %if.end, !dbg !3832

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %tmpbuf, i32 0, i32 0, !dbg !3833
  %1 = load i32, i32* @ecaplay_debuglevel, align 4, !dbg !3837
  %call1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %1) #7, !dbg !3838
  %2 = load i8*, i8** %eci, align 8, !dbg !3839
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %tmpbuf, i32 0, i32 0, !dbg !3841
  call void @eci_command_r(i8* %2, i8* %arraydecay2), !dbg !3842
  br label %if.end, !dbg !3843

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %eci, align 8, !dbg !3844
  call void @eci_command_r(i8* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0)), !dbg !3847
  %4 = load i8*, i8** %eci, align 8, !dbg !3848
  call void @eci_command_r(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0)), !dbg !3850
  %5 = load i8*, i8** %eci, align 8, !dbg !3851
  %call3 = call i32 @eci_last_string_list_count_r(i8* %5), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3854, metadata !DIExpression()), !dbg !3783
  %cmp4 = icmp ne i32 %call3, 2, !dbg !3855
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !3857

if.then5:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3858
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0)), !dbg !3862
  br label %if.end7, !dbg !3863

if.end7:                                          ; preds = %if.then5, %if.end
  %7 = load i8*, i8** %eci, align 8, !dbg !3864
  call void @eci_command_r(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0)), !dbg !3867
  %8 = load i8*, i8** %eci, align 8, !dbg !3868
  call void @add_input_to_chainsetup(i8* %8, i8* %nexttrack), !dbg !3870
  %9 = load i8*, i8** %eci, align 8, !dbg !3871
  %10 = bitcast i8* %9 to i8**, !dbg !3873
  %call8 = call i32 @set_audio_format(i8** %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ecaplay_audio_format, i32 0, i32 0)), !dbg !3874
  %11 = load i8*, i8** @ecaplay_output, align 8, !dbg !3875
  %12 = ptrtoint i8* %11 to i64, !dbg !3877
  %cmp9 = icmp eq i64 %12, 0, !dbg !3878
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !3879

if.then10:                                        ; preds = %if.end7
  %13 = load i8*, i8** %eci, align 8, !dbg !3880
  call void @eci_command_r(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0)), !dbg !3884
  %14 = load i8*, i8** %eci, align 8, !dbg !3885
  %15 = bitcast i8* %14 to i8**, !dbg !3887
  call void @initialize_check_output(i8** %15), !dbg !3888
  br label %if.end16, !dbg !3889

if.else:                                          ; preds = %if.end7
  %call11 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !3890
  call void @llvm.dbg.value(metadata i32 %call11, metadata !3894, metadata !DIExpression()), !dbg !3783
  %16 = load i8*, i8** @ecaplay_output, align 8, !dbg !3895
  %call12 = call i32 @strlen(i8* %16) #9, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %call12, metadata !3898, metadata !DIExpression()), !dbg !3783
  %add = add i32 %call11, %call12, !dbg !3899
  %add13 = add i32 %add, 1, !dbg !3900
  call void @llvm.dbg.value(metadata i32 %add13, metadata !3901, metadata !DIExpression()), !dbg !3783
  %call14 = call noalias i8* @malloc(i32 %add13) #7, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %call14, metadata !3904, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* %call14, metadata !3905, metadata !DIExpression()), !dbg !3783
  %17 = load i8*, i8** @ecaplay_output, align 8, !dbg !3906
  %call15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %call14, i32 %add13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* %17) #7, !dbg !3908
  %18 = load i8*, i8** %eci, align 8, !dbg !3909
  call void @eci_command_r(i8* %18, i8* %call14), !dbg !3911
  %19 = load i8*, i8** %eci, align 8, !dbg !3912
  %20 = bitcast i8* %19 to i8**, !dbg !3914
  call void @initialize_check_output(i8** %20), !dbg !3915
  call void @free(i8* %call14) #7, !dbg !3916
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  %21 = load i8*, i8** %eci, align 8, !dbg !3918
  call void @eci_command_r(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0)), !dbg !3921
  %22 = load i8*, i8** %eci, align 8, !dbg !3922
  %call17 = call i32 @eci_error_r(i8* %22), !dbg !3924
  call void @llvm.dbg.value(metadata i32 %call17, metadata !3925, metadata !DIExpression()), !dbg !3783
  %tobool = icmp ne i32 %call17, 0, !dbg !3926
  br i1 %tobool, label %if.then18, label %if.else21, !dbg !3928

if.then18:                                        ; preds = %if.end16
  %23 = load i8*, i8** %eci, align 8, !dbg !3929
  %call19 = call i8* @eci_last_error_r(i8* %23), !dbg !3933
  call void @llvm.dbg.value(metadata i8* %call19, metadata !3934, metadata !DIExpression()), !dbg !3783
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3935
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i32 0, i32 0), i8* %nexttrack, i8* %call19), !dbg !3937
  br label %if.end31, !dbg !3938

if.else21:                                        ; preds = %if.end16
  %25 = load i8*, i8** %eci, align 8, !dbg !3939
  call void @eci_command_r(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)), !dbg !3943
  %26 = load i8*, i8** %eci, align 8, !dbg !3944
  %call22 = call i8* @eci_last_string_r(i8* %26), !dbg !3946
  call void @llvm.dbg.value(metadata i8* %call22, metadata !3822, metadata !DIExpression()), !dbg !3783
  %call23 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0)) #9, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %call23, metadata !3949, metadata !DIExpression()), !dbg !3783
  %call24 = call i32 @strncmp(i8* %call22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i32 %call23) #9, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3952, metadata !DIExpression()), !dbg !3783
  %cmp25 = icmp ne i32 %call24, 0, !dbg !3953
  br i1 %cmp25, label %if.then26, label %if.else28, !dbg !3955

if.then26:                                        ; preds = %if.else21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3956
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.65, i32 0, i32 0), i8* %nexttrack), !dbg !3960
  br label %if.end30, !dbg !3961

if.else28:                                        ; preds = %if.else21
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i32 0, i32 0), i32 %tracknum, i8* %nexttrack, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ecaplay_audio_format, i32 0, i32 0)), !dbg !3962
  %28 = load i8*, i8** %eci, align 8, !dbg !3966
  call void @eci_command_r(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)), !dbg !3968
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then18
  ret void, !dbg !3969
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @add_input_to_chainsetup(i8* %eci, i8* %nexttrack) #0 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata i8* %eci, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %nexttrack, metadata !3973, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.declare(metadata !4, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.declare(metadata !4, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.declare(metadata !4, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata !4, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata !4, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.declare(metadata !4, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.declare(metadata !4, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata !4, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata !4, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.declare(metadata !4, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.declare(metadata !4, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata !4, metadata !3996, metadata !DIExpression()), !dbg !3997
  %call = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0)) #9, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %call, metadata !4002, metadata !DIExpression()), !dbg !3972
  %call1 = call i32 @strlen(i8* %nexttrack) #9, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4005, metadata !DIExpression()), !dbg !3972
  %call2 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !4006
  call void @llvm.dbg.value(metadata i32 %call2, metadata !4008, metadata !DIExpression()), !dbg !3972
  %add = add i32 %call, %call1, !dbg !4009
  %add3 = add i32 %add, %call2, !dbg !4010
  %add4 = add i32 %add3, 1, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %add4, metadata !4012, metadata !DIExpression()), !dbg !3972
  %call5 = call noalias i8* @malloc(i32 %add4) #7, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %call5, metadata !4015, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %call5, metadata !4016, metadata !DIExpression()), !dbg !3972
  %call6 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %call5, i32 %add4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* %nexttrack) #7, !dbg !4017
  call void @eci_command_r(i8* %eci, i8* %call5), !dbg !4019
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !4021
  %call7 = call i32 @eci_last_string_list_count_r(i8* %eci), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4025, metadata !DIExpression()), !dbg !3972
  %cmp = icmp ne i32 %call7, 1, !dbg !4026
  br i1 %cmp, label %if.then, label %if.end, !dbg !4028

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4029
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.72, i32 0, i32 0), i8* %nexttrack), !dbg !4033
  br label %if.end, !dbg !4034

if.end:                                           ; preds = %if.then, %entry
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0)), !dbg !4035
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0)), !dbg !4038
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0)), !dbg !4040
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0)), !dbg !4042
  %call9 = call i8* @eci_last_string_r(i8* %eci), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %call9, metadata !4046, metadata !DIExpression()), !dbg !3972
  %call10 = call i8* @strncpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ecaplay_audio_format, i32 0, i32 0), i8* %call9, i32 64) #7, !dbg !4047
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ecaplay_audio_format, i64 0, i64 63), align 1, !dbg !4049
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0)), !dbg !4050
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0)), !dbg !4052
  call void @eci_command_r(i8* %eci, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0)), !dbg !4054
  call void @free(i8* %call5) #7, !dbg !4056
  ret void, !dbg !4058
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @set_audio_format(i8** %eci, i8* %fmt) #0 !dbg !4059 {
entry:
  call void @llvm.dbg.value(metadata i8** %eci, metadata !4062, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !4064, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.declare(metadata !4, metadata !4065, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.declare(metadata !4, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.declare(metadata !4, metadata !4069, metadata !DIExpression()), !dbg !4070
  %call = call i32 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0)) #9, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %call, metadata !4075, metadata !DIExpression()), !dbg !4063
  %call1 = call i32 @strlen(i8* %fmt) #9, !dbg !4076
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4078, metadata !DIExpression()), !dbg !4063
  %add = add i32 %call, %call1, !dbg !4079
  %add2 = add i32 %add, 1, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %add2, metadata !4081, metadata !DIExpression()), !dbg !4063
  %call3 = call noalias i8* @malloc(i32 %add2) #7, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %call3, metadata !4084, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i8* %call3, metadata !4085, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i32 0, metadata !4086, metadata !DIExpression()), !dbg !4063
  %call4 = call i8* @strcpy(i8* %call3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0)) #7, !dbg !4087
  %call5 = call i8* @strcat(i8* %call3, i8* %fmt) #7, !dbg !4089
  %sub = sub i32 %add2, 1, !dbg !4091
  %idx.ext = zext i32 %sub to i64, !dbg !4092
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 %idx.ext, !dbg !4092
  store i8 0, i8* %add.ptr, align 1, !dbg !4093
  %0 = bitcast i8** %eci to i8*, !dbg !4094
  call void @eci_command_r(i8* %0, i8* %call3), !dbg !4096
  %1 = bitcast i8** %eci to i8*, !dbg !4097
  %call6 = call i32 @eci_error_r(i8* %1), !dbg !4099
  call void @llvm.dbg.value(metadata i32 %call6, metadata !4100, metadata !DIExpression()), !dbg !4063
  %tobool = icmp ne i32 %call6, 0, !dbg !4101
  br i1 %tobool, label %if.then, label %if.end, !dbg !4103

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4104
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.81, i32 0, i32 0)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 -1, metadata !4086, metadata !DIExpression()), !dbg !4063
  br label %if.end, !dbg !4109

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !4110
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !4086, metadata !DIExpression()), !dbg !4063
  call void @free(i8* %call3) #7, !dbg !4111
  ret i32 %res.0, !dbg !4114
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @initialize_check_output(i8** %eci) #0 !dbg !4115 {
entry:
  call void @llvm.dbg.value(metadata i8** %eci, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata !4, metadata !4120, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.declare(metadata !4, metadata !4122, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.declare(metadata !4, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.declare(metadata !4, metadata !4126, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.declare(metadata !4, metadata !4128, metadata !DIExpression()), !dbg !4129
  %0 = bitcast i8** %eci to i8*, !dbg !4130
  call void @eci_command_r(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0)), !dbg !4134
  %1 = bitcast i8** %eci to i8*, !dbg !4135
  %call = call i32 @eci_last_string_list_count_r(i8* %1), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %call, metadata !4138, metadata !DIExpression()), !dbg !4119
  %cmp = icmp ne i32 %call, 1, !dbg !4139
  br i1 %cmp, label %if.then, label %if.else, !dbg !4141

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4142
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i32 0, i32 0)), !dbg !4146
  br label %if.end13, !dbg !4147

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @once, align 4, !dbg !4148
  %tobool = icmp ne i32 %3, 0, !dbg !4148
  br i1 %tobool, label %if.then2, label %if.end12, !dbg !4150

if.then2:                                         ; preds = %if.else
  %4 = bitcast i8** %eci to i8*, !dbg !4151
  call void @eci_command_r(i8* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0)), !dbg !4155
  %5 = bitcast i8** %eci to i8*, !dbg !4156
  call void @eci_command_r(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0)), !dbg !4158
  %6 = bitcast i8** %eci to i8*, !dbg !4159
  %call3 = call i8* @eci_last_string_r(i8* %6), !dbg !4161
  call void @llvm.dbg.value(metadata i8* %call3, metadata !4162, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i8* %call3, metadata !4163, metadata !DIExpression()), !dbg !4119
  br label %while.body, !dbg !4164

while.body:                                       ; preds = %if.end10, %if.then2
  %tmpstr.0 = phi i8* [ %call3, %if.then2 ], [ %incdec.ptr, %if.end10 ], !dbg !4167
  call void @llvm.dbg.value(metadata i8* %tmpstr.0, metadata !4163, metadata !DIExpression()), !dbg !4119
  br label %while_continue___0, !dbg !4168

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4168

while_continue:                                   ; preds = %while_continue___0
  %7 = load i8, i8* %tmpstr.0, align 1, !dbg !4169
  %tobool4 = icmp ne i8 %7, 0, !dbg !4169
  br i1 %tobool4, label %if.then5, label %if.else9, !dbg !4172

if.then5:                                         ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %tmpstr.0, metadata !4173, metadata !DIExpression()), !dbg !4119
  %incdec.ptr = getelementptr inbounds i8, i8* %tmpstr.0, i32 1, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4163, metadata !DIExpression()), !dbg !4119
  %8 = load i8, i8* %tmpstr.0, align 1, !dbg !4176
  %conv = sext i8 %8 to i32, !dbg !4178
  %cmp6 = icmp ne i32 %conv, 58, !dbg !4179
  br i1 %cmp6, label %if.end, label %if.then8, !dbg !4180

if.then8:                                         ; preds = %if.then5
  br label %while_break, !dbg !4181

if.end:                                           ; preds = %if.then5
  br label %if.end10, !dbg !4183

if.else9:                                         ; preds = %while_continue
  br label %while_break, !dbg !4184

if.end10:                                         ; preds = %if.end
  br label %while.body, !dbg !4164, !llvm.loop !4186

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4188

while_break:                                      ; preds = %while_break___0, %if.else9, %if.then8
  %tmpstr.1 = phi i8* [ %incdec.ptr, %if.then8 ], [ %tmpstr.0, %if.else9 ], [ undef, %while_break___0 ], !dbg !4167
  call void @llvm.dbg.value(metadata i8* %tmpstr.1, metadata !4163, metadata !DIExpression()), !dbg !4119
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i8* %tmpstr.1), !dbg !4189
  store i32 0, i32* @once, align 4, !dbg !4192
  br label %if.end12, !dbg !4193

if.end12:                                         ; preds = %while_break, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  ret void, !dbg !4194
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @signal_handler(i32 %signum) #0 !dbg !4195 {
entry:
  call void @llvm.dbg.value(metadata i32 %signum, metadata !4196, metadata !DIExpression()), !dbg !4197
  %0 = load i32, i32* @ecaplay_skip_flag, align 4, !dbg !4198
  %inc = add nsw i32 %0, 1, !dbg !4198
  store i32 %inc, i32* @ecaplay_skip_flag, align 4, !dbg !4198
  ret void, !dbg !4200
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @print_usage___0(%struct._IO_FILE* %stream) #0 !dbg !4201 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !4204, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.declare(metadata !4, metadata !4206, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.declare(metadata !4, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata !4, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.declare(metadata !4, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata !4, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.declare(metadata !4, metadata !4216, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.declare(metadata !4, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.declare(metadata !4, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.declare(metadata !4, metadata !4222, metadata !DIExpression()), !dbg !4223
  %0 = load i8*, i8** @ecaplay_version, align 8, !dbg !4224
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0)), !dbg !4228
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.97, i32 0, i32 0)), !dbg !4229
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i32 0, i32 0)), !dbg !4231
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.99, i32 0, i32 0)), !dbg !4233
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.100, i32 0, i32 0)), !dbg !4235
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0)), !dbg !4237
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.102, i32 0, i32 0)), !dbg !4239
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.103, i32 0, i32 0)), !dbg !4241
  ret void, !dbg !4243
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i32) #3

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!301, !302, !303, !304, !305}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!306}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "eci_str_no_ecasound_env", scope: !2, file: !76, line: 202, type: !72, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !267, nameTableKind: GNU)
!3 = !DIFile(filename: "c/ecasound2.2-2.7.0.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !8, !72, !74, !132, !133, !136, !220, !221, !64, !223, !225, !88, !123, !226, !228, !229, !15, !17, !66, !231, !103, !94, !18, !56, !232, !244, !266}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 49, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 271, size: 1728, elements: !13)
!12 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!13 = !{!14, !16, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !37, !38, !39, !40, !44, !46, !48, !52, !55, !59, !60, !61, !62, !63, !67, !68}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 272, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 273, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 274, baseType: !17, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 275, baseType: !17, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 276, baseType: !17, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 277, baseType: !17, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 278, baseType: !17, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 279, baseType: !17, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 280, baseType: !17, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 281, baseType: !17, size: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 282, baseType: !17, size: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 283, baseType: !17, size: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 284, baseType: !30, size: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 186, size: 192, elements: !32)
!32 = !{!33, !34, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !31, file: !12, line: 187, baseType: !30, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !31, file: !12, line: 188, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !31, file: !12, line: 189, baseType: !15, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 285, baseType: !35, size: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 286, baseType: !15, size: 32, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 287, baseType: !15, size: 32, offset: 928)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 288, baseType: !41, size: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 141, baseType: !43)
!42 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 289, baseType: !45, size: 16, offset: 1024)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 290, baseType: !47, size: 8, offset: 1040)
!47 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 291, baseType: !49, size: 8, offset: 1048)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 292, baseType: !53, size: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 180, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 293, baseType: !56, size: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 142, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !42, line: 56, baseType: !58)
!58 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !11, file: !12, line: 294, baseType: !7, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !11, file: !12, line: 295, baseType: !7, size: 64, offset: 1280)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !11, file: !12, line: 296, baseType: !7, size: 64, offset: 1344)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !11, file: !12, line: 297, baseType: !7, size: 64, offset: 1408)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 298, baseType: !64, size: 32, offset: 1472)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 211, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 299, baseType: !15, size: 32, offset: 1504)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 300, baseType: !69, size: 192, offset: 1536)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 24)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eci_internal", file: !76, line: 178, size: 525312, elements: !77)
!76 = !DIFile(filename: "/home/wslee/benchmarks/sound/ecasound2.2-2.7.0/libecasoundc/ecasoundc_sa.c", directory: "")
!77 = !{!78, !79, !80, !81, !82, !86, !87, !124, !128}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pid_of_child_rep", scope: !75, file: !76, line: 179, baseType: !15, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pid_of_parent_rep", scope: !75, file: !76, line: 180, baseType: !15, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_read_fd_rep", scope: !75, file: !76, line: 181, baseType: !15, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_write_fd_rep", scope: !75, file: !76, line: 182, baseType: !15, size: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "last_command_repp", scope: !75, file: !76, line: 183, baseType: !83, size: 512, offset: 128)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "commands_counter_rep", scope: !75, file: !76, line: 184, baseType: !15, size: 32, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parser_repp", scope: !75, file: !76, line: 185, baseType: !88, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eci_parser", file: !76, line: 153, size: 960, elements: !90)
!90 = !{!91, !92, !93, !95, !96, !97, !98, !102, !115, !116, !117, !118, !119, !120, !121, !122}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "state_rep", scope: !89, file: !76, line: 154, baseType: !15, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "state_msg_rep", scope: !89, file: !76, line: 155, baseType: !15, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last_f_rep", scope: !89, file: !76, line: 156, baseType: !94, size: 64, offset: 64)
!94 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "last_li_rep", scope: !89, file: !76, line: 157, baseType: !43, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "last_i_rep", scope: !89, file: !76, line: 158, baseType: !15, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "last_counter_rep", scope: !89, file: !76, line: 159, baseType: !15, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "last_type_repp", scope: !89, file: !76, line: 160, baseType: !99, size: 32, offset: 256)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last_los_repp", scope: !89, file: !76, line: 161, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eci_los_list", file: !76, line: 147, size: 256, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev_repp", scope: !104, file: !76, line: 148, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_repp", scope: !104, file: !76, line: 149, baseType: !103, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "data_repp", scope: !104, file: !76, line: 150, baseType: !109, size: 128, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "eci_string", file: !76, line: 145, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eci_string_s", file: !76, line: 140, size: 128, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !110, file: !76, line: 141, baseType: !17, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !110, file: !76, line: 142, baseType: !15, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !76, line: 143, baseType: !15, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "last_error_repp", scope: !89, file: !76, line: 162, baseType: !109, size: 128, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "last_s_repp", scope: !89, file: !76, line: 163, baseType: !109, size: 128, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_rep", scope: !89, file: !76, line: 164, baseType: !109, size: 128, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "msgsize_rep", scope: !89, file: !76, line: 165, baseType: !15, size: 32, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "loglevel_rep", scope: !89, file: !76, line: 166, baseType: !15, size: 32, offset: 800)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "token_phase_rep", scope: !89, file: !76, line: 167, baseType: !15, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_current_rep", scope: !89, file: !76, line: 168, baseType: !15, size: 32, offset: 864)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sync_lost_rep", scope: !89, file: !76, line: 169, baseType: !123, size: 8, offset: 896)
!123 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "farg_buf_repp", scope: !75, file: !76, line: 186, baseType: !125, size: 256, offset: 768)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "raw_buffer_repp", scope: !75, file: !76, line: 187, baseType: !129, size: 524288, offset: 1024)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 524288, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 65536)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !15}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !139, line: 25, size: 1216, elements: !140)
!139 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!140 = !{!141, !206, !215, !216}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !138, file: !139, line: 26, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___sigaction_handler_40", file: !139, line: 25, size: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !142, file: !139, line: 26, baseType: !133, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !142, file: !139, line: 27, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !15, !149, !7}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !151, line: 51, baseType: !152)
!151 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "siginfo", file: !151, line: 51, size: 1088, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !152, file: !151, line: 52, baseType: !15, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !152, file: !151, line: 53, baseType: !15, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !152, file: !151, line: 54, baseType: !15, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !152, file: !151, line: 55, baseType: !158, size: 960, offset: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion__sifields_22", file: !151, line: 51, size: 960, elements: !159)
!159 = !{!160, !164, !171, !182, !188, !197, !201}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !158, file: !151, line: 52, baseType: !161, size: 928)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 928, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 29)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !158, file: !151, line: 53, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__kill_23", file: !151, line: 51, size: 64, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !165, file: !151, line: 52, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !42, line: 143, baseType: !15)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !165, file: !151, line: 53, baseType: !170, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !42, line: 135, baseType: !66)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !158, file: !151, line: 54, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__timer_24", file: !151, line: 51, size: 128, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !172, file: !151, line: 52, baseType: !15, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !172, file: !151, line: 53, baseType: !15, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !172, file: !151, line: 54, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !151, line: 33, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !151, line: 33, size: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !178, file: !151, line: 34, baseType: !15, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !178, file: !151, line: 35, baseType: !7, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !158, file: !151, line: 55, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__rt_25", file: !151, line: 51, size: 128, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !183, file: !151, line: 52, baseType: !168, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !183, file: !151, line: 53, baseType: !170, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !183, file: !151, line: 54, baseType: !177, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !158, file: !151, line: 56, baseType: !189, size: 256)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigchld_26", file: !151, line: 51, size: 256, elements: !190)
!190 = !{!191, !192, !193, !194, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !189, file: !151, line: 52, baseType: !168, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !189, file: !151, line: 53, baseType: !170, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !189, file: !151, line: 54, baseType: !15, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !189, file: !151, line: 55, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !42, line: 145, baseType: !43)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !189, file: !151, line: 56, baseType: !195, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !158, file: !151, line: 57, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigfault_27", file: !151, line: 51, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !198, file: !151, line: 52, baseType: !7, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !158, file: !151, line: 58, baseType: !202, size: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct__sigpoll_28", file: !151, line: 51, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !202, file: !151, line: 52, baseType: !43, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !202, file: !151, line: 53, baseType: !15, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !138, file: !139, line: 27, baseType: !207, size: 1024, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !208, line: 29, baseType: !209)
!208 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct___sigset_t_21", file: !208, line: 29, size: 1024, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !209, file: !208, line: 30, baseType: !212, size: 1024)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 16)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !138, file: !139, line: 28, baseType: !15, size: 32, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !138, file: !139, line: 29, baseType: !217, size: 64, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "eci_handle_t", file: !227, line: 33, baseType: !7)
!227 = !DIFile(filename: "/home/wslee/benchmarks/sound/ecasound2.2-2.7.0/libecasoundc/ecasoundc.h", directory: "")
!228 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "nfds_t", file: !230, line: 37, baseType: !6)
!230 = !DIFile(filename: "/usr/include/sys/poll.h", directory: "")
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !234, line: 43, size: 1088, elements: !235)
!234 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!235 = !{!236, !240, !241, !243, !245, !247, !248, !250, !251, !252, !253, !255, !257, !259, !260, !261, !262, !263, !264}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !233, file: !234, line: 44, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !42, line: 134, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_quad_t", file: !42, line: 57, baseType: !239)
!239 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !233, file: !234, line: 45, baseType: !45, size: 16, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__st_ino", scope: !233, file: !234, line: 46, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !42, line: 137, baseType: !6)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !233, file: !234, line: 47, baseType: !244, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !42, line: 139, baseType: !66)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !233, file: !234, line: 48, baseType: !246, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !42, line: 140, baseType: !66)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !233, file: !234, line: 49, baseType: !170, size: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !233, file: !234, line: 50, baseType: !249, size: 32, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !42, line: 136, baseType: !66)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !233, file: !234, line: 51, baseType: !237, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !233, file: !234, line: 52, baseType: !45, size: 16, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !233, file: !234, line: 53, baseType: !56, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !233, file: !234, line: 54, baseType: !254, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !42, line: 164, baseType: !43)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !233, file: !234, line: 55, baseType: !256, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !42, line: 170, baseType: !57)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !233, file: !234, line: 56, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 149, baseType: !43)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimensec", scope: !233, file: !234, line: 57, baseType: !6, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !233, file: !234, line: 58, baseType: !258, size: 64, offset: 768)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimensec", scope: !233, file: !234, line: 59, baseType: !6, size: 64, offset: 832)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !233, file: !234, line: 60, baseType: !258, size: 64, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimensec", scope: !233, file: !234, line: 61, baseType: !6, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !233, file: !234, line: 62, baseType: !265, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !42, line: 138, baseType: !238)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!267 = !{!0, !268, !270, !272, !274, !277, !279, !281, !286, !288, !290, !292, !294, !299}
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "eci_str_null_handle", scope: !2, file: !76, line: 212, type: !72, isLocal: false, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "eci_str_sync_lost", scope: !2, file: !76, line: 223, type: !72, isLocal: false, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "static_eci_rep", scope: !2, file: !76, line: 197, type: !226, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "ecaplay_output", scope: !2, file: !276, line: 92, type: !72, isLocal: true, isDefinition: true)
!276 = !DIFile(filename: "/home/wslee/benchmarks/sound/ecasound2.2-2.7.0/ecatools/ecaplay.c", directory: "")
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "ecaplay_mode", scope: !2, file: !276, line: 95, type: !15, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "ecaplay_skip", scope: !2, file: !276, line: 94, type: !15, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "ecaplay_next", scope: !2, file: !276, line: 90, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 4096)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "ecaplay_initialized", scope: !2, file: !276, line: 97, type: !15, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "ecaplay_debuglevel", scope: !2, file: !276, line: 93, type: !15, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "ecaplay_audio_format", scope: !2, file: !276, line: 91, type: !83, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "once", scope: !2, file: !276, line: 209, type: !15, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "ecaplay_skip_flag", scope: !2, file: !276, line: 98, type: !296, isLocal: true, isDefinition: true)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !297, line: 41, baseType: !298)
!297 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !208, line: 24, baseType: !15)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "ecaplay_version", scope: !2, file: !276, line: 89, type: !72, isLocal: true, isDefinition: true)
!301 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!302 = !{i32 2, !"Dwarf Version", i32 4}
!303 = !{i32 2, !"Debug Info Version", i32 3}
!304 = !{i32 1, !"wchar_size", i32 4}
!305 = !{i32 7, !"PIC Level", i32 2}
!306 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!307 = distinct !DISubprogram(name: "eci_init", scope: !76, file: !76, line: 262, type: !218, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DILocalVariable(name: "__cil_tmp1", scope: !307, file: !76, line: 264, type: !17)
!309 = !DILocation(line: 264, column: 9, scope: !307)
!310 = !DILocalVariable(name: "__cil_tmp2", scope: !307, file: !76, line: 265, type: !17)
!311 = !DILocation(line: 265, column: 9, scope: !307)
!312 = !DILocalVariable(name: "__cil_tmp3", scope: !307, file: !76, line: 266, type: !17)
!313 = !DILocation(line: 266, column: 9, scope: !307)
!314 = !DILocation(line: 264, column: 26, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !76, line: 264, column: 7)
!316 = distinct !DILexicalBlock(scope: !307, file: !76, line: 268, column: 3)
!317 = !DILocation(line: 264, column: 10, scope: !315)
!318 = !DILocation(line: 264, column: 41, scope: !315)
!319 = !DILocation(line: 264, column: 7, scope: !316)
!320 = !DILocation(line: 264, column: 38, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !76, line: 266, column: 5)
!322 = distinct !DILexicalBlock(scope: !323, file: !76, line: 265, column: 5)
!323 = distinct !DILexicalBlock(scope: !315, file: !76, line: 264, column: 74)
!324 = !DILocation(line: 264, column: 5, scope: !321)
!325 = !DILocation(line: 269, column: 3, scope: !323)
!326 = !DILocation(line: 265, column: 20, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !76, line: 271, column: 3)
!328 = distinct !DILexicalBlock(scope: !316, file: !76, line: 270, column: 3)
!329 = !DILocation(line: 265, column: 18, scope: !327)
!330 = !DILocation(line: 266, column: 3, scope: !316)
!331 = distinct !DISubprogram(name: "eci_init_r", scope: !76, file: !76, line: 274, type: !332, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!332 = !DISubroutineType(types: !333)
!333 = !{!226}
!334 = !DILocalVariable(name: "cmd_send_pipe", scope: !331, file: !76, line: 277, type: !335)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 2)
!338 = !DILocation(line: 277, column: 7, scope: !331)
!339 = !DILocalVariable(name: "cmd_receive_pipe", scope: !331, file: !76, line: 278, type: !335)
!340 = !DILocation(line: 278, column: 7, scope: !331)
!341 = !DILocalVariable(name: "args", scope: !331, file: !76, line: 283, type: !342)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !100)
!343 = !DILocation(line: 283, column: 17, scope: !331)
!344 = !DILocalVariable(name: "sa", scope: !331, file: !76, line: 285, type: !138)
!345 = !DILocation(line: 285, column: 20, scope: !331)
!346 = !DILocalVariable(name: "pid", scope: !331, file: !76, line: 286, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !348, line: 100, baseType: !168)
!348 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!349 = !DILocation(line: 286, column: 9, scope: !331)
!350 = !DILocalVariable(name: "buf", scope: !331, file: !76, line: 289, type: !49)
!351 = !DILocation(line: 289, column: 8, scope: !331)
!352 = !DILocalVariable(name: "status", scope: !331, file: !76, line: 290, type: !15)
!353 = !DILocation(line: 290, column: 7, scope: !331)
!354 = !DILocalVariable(name: "pid___0", scope: !331, file: !76, line: 291, type: !15)
!355 = !DILocation(line: 291, column: 7, scope: !331)
!356 = !DILocalVariable(name: "ign_handler", scope: !331, file: !76, line: 292, type: !138)
!357 = !DILocation(line: 292, column: 20, scope: !331)
!358 = !DILocalVariable(name: "__cil_tmp25", scope: !331, file: !76, line: 300, type: !7)
!359 = !DILocation(line: 300, column: 9, scope: !331)
!360 = !DILocalVariable(name: "__cil_tmp26", scope: !331, file: !76, line: 301, type: !7)
!361 = !DILocation(line: 301, column: 9, scope: !331)
!362 = !DILocalVariable(name: "__cil_tmp27", scope: !331, file: !76, line: 302, type: !7)
!363 = !DILocation(line: 302, column: 9, scope: !331)
!364 = !DILocalVariable(name: "__cil_tmp28", scope: !331, file: !76, line: 303, type: !7)
!365 = !DILocation(line: 303, column: 9, scope: !331)
!366 = !DILocalVariable(name: "__cil_tmp29", scope: !331, file: !76, line: 304, type: !17)
!367 = !DILocation(line: 304, column: 9, scope: !331)
!368 = !DILocalVariable(name: "__cil_tmp30", scope: !331, file: !76, line: 305, type: !17)
!369 = !DILocation(line: 305, column: 9, scope: !331)
!370 = !DILocalVariable(name: "__cil_tmp31", scope: !331, file: !76, line: 306, type: !17)
!371 = !DILocation(line: 306, column: 9, scope: !331)
!372 = !DILocalVariable(name: "__cil_tmp32", scope: !331, file: !76, line: 307, type: !17)
!373 = !DILocation(line: 307, column: 9, scope: !331)
!374 = !DILocalVariable(name: "__cil_tmp33", scope: !331, file: !76, line: 308, type: !17)
!375 = !DILocation(line: 308, column: 9, scope: !331)
!376 = !DILocalVariable(name: "__cil_tmp34", scope: !331, file: !76, line: 309, type: !17)
!377 = !DILocation(line: 309, column: 9, scope: !331)
!378 = !DILocalVariable(name: "__cil_tmp35", scope: !331, file: !76, line: 310, type: !17)
!379 = !DILocation(line: 310, column: 9, scope: !331)
!380 = !DILocalVariable(name: "__cil_tmp36", scope: !331, file: !76, line: 311, type: !17)
!381 = !DILocation(line: 311, column: 9, scope: !331)
!382 = !DILocalVariable(name: "__cil_tmp37", scope: !331, file: !76, line: 312, type: !17)
!383 = !DILocation(line: 312, column: 9, scope: !331)
!384 = !DILocalVariable(name: "__cil_tmp38", scope: !331, file: !76, line: 313, type: !17)
!385 = !DILocation(line: 313, column: 9, scope: !331)
!386 = !DILocalVariable(name: "__cil_tmp39", scope: !331, file: !76, line: 314, type: !17)
!387 = !DILocation(line: 314, column: 9, scope: !331)
!388 = !DILocalVariable(name: "eci_rep", scope: !331, file: !76, line: 276, type: !74)
!389 = !DILocation(line: 0, scope: !331)
!390 = !DILocation(line: 278, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !76, line: 277, column: 3)
!392 = distinct !DILexicalBlock(scope: !393, file: !76, line: 317, column: 3)
!393 = distinct !DILexicalBlock(scope: !331, file: !76, line: 316, column: 3)
!394 = !DILocalVariable(name: "tmp", scope: !331, file: !76, line: 280, type: !72)
!395 = !DILocalVariable(name: "ecasound_exec", scope: !331, file: !76, line: 279, type: !72)
!396 = !DILocation(line: 281, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !76, line: 281, column: 7)
!398 = !DILocation(line: 281, column: 37, scope: !397)
!399 = !DILocation(line: 281, column: 7, scope: !393)
!400 = !DILocation(line: 281, column: 27, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !76, line: 283, column: 5)
!402 = distinct !DILexicalBlock(scope: !403, file: !76, line: 282, column: 5)
!403 = distinct !DILexicalBlock(scope: !397, file: !76, line: 281, column: 69)
!404 = !DILocation(line: 281, column: 15, scope: !401)
!405 = !DILocalVariable(name: "tmp___7", scope: !331, file: !76, line: 298, type: !15)
!406 = !DILocation(line: 281, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !76, line: 281, column: 9)
!408 = !DILocation(line: 281, column: 9, scope: !403)
!409 = !DILocation(line: 281, column: 29, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !76, line: 283, column: 7)
!411 = distinct !DILexicalBlock(scope: !412, file: !76, line: 282, column: 7)
!412 = distinct !DILexicalBlock(scope: !407, file: !76, line: 281, column: 23)
!413 = !DILocation(line: 281, column: 17, scope: !410)
!414 = !DILocalVariable(name: "tmp___8", scope: !331, file: !76, line: 299, type: !15)
!415 = !DILocation(line: 281, column: 19, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !76, line: 281, column: 11)
!417 = !DILocation(line: 281, column: 11, scope: !412)
!418 = !DILocation(line: 283, column: 19, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !76, line: 283, column: 9)
!420 = distinct !DILexicalBlock(scope: !421, file: !76, line: 282, column: 9)
!421 = distinct !DILexicalBlock(scope: !416, file: !76, line: 281, column: 25)
!422 = !DILocalVariable(name: "tmp___0", scope: !331, file: !76, line: 282, type: !168)
!423 = !DILocalVariable(name: "fork_pid", scope: !331, file: !76, line: 281, type: !15)
!424 = !DILocation(line: 285, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !76, line: 285, column: 13)
!426 = !DILocation(line: 285, column: 13, scope: !421)
!427 = !DILocation(line: 289, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !76, line: 286, column: 11)
!429 = distinct !DILexicalBlock(scope: !425, file: !76, line: 285, column: 28)
!430 = !DILocation(line: 289, column: 19, scope: !428)
!431 = !DILocalVariable(name: "res", scope: !331, file: !76, line: 284, type: !15)
!432 = !DILocation(line: 294, column: 14, scope: !428)
!433 = !DILocation(line: 294, column: 34, scope: !428)
!434 = !DILocation(line: 294, column: 45, scope: !428)
!435 = !DILocation(line: 295, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !76, line: 295, column: 11)
!437 = !DILocation(line: 295, column: 11, scope: !436)
!438 = !DILocation(line: 296, column: 14, scope: !428)
!439 = !DILocation(line: 296, column: 23, scope: !428)
!440 = !DILocation(line: 297, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !428, file: !76, line: 297, column: 11)
!442 = !DILocation(line: 298, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !428, file: !76, line: 299, column: 11)
!444 = !DILocation(line: 301, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !428, file: !76, line: 300, column: 11)
!446 = !DILocalVariable(name: "tmp___1", scope: !331, file: !76, line: 287, type: !168)
!447 = !DILocation(line: 301, column: 23, scope: !448)
!448 = distinct !DILexicalBlock(scope: !429, file: !76, line: 301, column: 15)
!449 = !DILocation(line: 301, column: 15, scope: !429)
!450 = !DILocation(line: 302, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !76, line: 303, column: 13)
!452 = distinct !DILexicalBlock(scope: !453, file: !76, line: 302, column: 13)
!453 = distinct !DILexicalBlock(scope: !448, file: !76, line: 301, column: 29)
!454 = !DILocation(line: 306, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !429, file: !76, line: 306, column: 11)
!456 = !DILocation(line: 306, column: 19, scope: !455)
!457 = !DILocation(line: 310, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !76, line: 307, column: 11)
!459 = !DILocation(line: 311, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !76, line: 312, column: 11)
!461 = !DILocation(line: 313, column: 16, scope: !462)
!462 = distinct !DILexicalBlock(scope: !455, file: !76, line: 313, column: 11)
!463 = !DILocation(line: 313, column: 11, scope: !462)
!464 = !DILocation(line: 314, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !455, file: !76, line: 315, column: 11)
!466 = !DILocation(line: 314, column: 11, scope: !465)
!467 = !DILocation(line: 316, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !455, file: !76, line: 316, column: 11)
!469 = !DILocation(line: 316, column: 11, scope: !468)
!470 = !DILocation(line: 317, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !455, file: !76, line: 318, column: 11)
!472 = !DILocation(line: 317, column: 11, scope: !471)
!473 = !DILocation(line: 318, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !455, file: !76, line: 319, column: 11)
!475 = !DILocation(line: 318, column: 11, scope: !474)
!476 = !DILocation(line: 319, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !455, file: !76, line: 320, column: 11)
!478 = !DILocation(line: 319, column: 11, scope: !477)
!479 = !DILocation(line: 322, column: 44, scope: !480)
!480 = distinct !DILexicalBlock(scope: !455, file: !76, line: 321, column: 11)
!481 = !DILocation(line: 321, column: 11, scope: !480)
!482 = !DILocation(line: 324, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !455, file: !76, line: 324, column: 11)
!484 = !DILocation(line: 324, column: 15, scope: !483)
!485 = !DILocation(line: 325, column: 20, scope: !486)
!486 = distinct !DILexicalBlock(scope: !455, file: !76, line: 326, column: 11)
!487 = !DILocation(line: 325, column: 11, scope: !486)
!488 = !DILocation(line: 328, column: 42, scope: !489)
!489 = distinct !DILexicalBlock(scope: !455, file: !76, line: 327, column: 11)
!490 = !DILocation(line: 328, column: 26, scope: !489)
!491 = !DILocation(line: 328, column: 17, scope: !489)
!492 = !DILocation(line: 330, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !455, file: !76, line: 330, column: 11)
!494 = !DILocation(line: 330, column: 60, scope: !493)
!495 = !DILocation(line: 330, column: 17, scope: !493)
!496 = !DILocation(line: 331, column: 19, scope: !497)
!497 = distinct !DILexicalBlock(scope: !429, file: !76, line: 331, column: 15)
!498 = !DILocation(line: 331, column: 15, scope: !429)
!499 = !DILocation(line: 331, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !76, line: 333, column: 13)
!501 = distinct !DILexicalBlock(scope: !502, file: !76, line: 332, column: 13)
!502 = distinct !DILexicalBlock(scope: !497, file: !76, line: 331, column: 24)
!503 = !DILocation(line: 334, column: 11, scope: !502)
!504 = !DILocation(line: 333, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !76, line: 336, column: 11)
!506 = distinct !DILexicalBlock(scope: !429, file: !76, line: 335, column: 11)
!507 = !DILocation(line: 334, column: 11, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !76, line: 335, column: 11)
!509 = !DILocation(line: 336, column: 11, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !76, line: 336, column: 11)
!511 = !DILocation(line: 348, column: 23, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !76, line: 340, column: 11)
!513 = distinct !DILexicalBlock(scope: !425, file: !76, line: 339, column: 16)
!514 = !DILocation(line: 348, column: 43, scope: !512)
!515 = !DILocation(line: 348, column: 54, scope: !512)
!516 = !DILocation(line: 349, column: 37, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !76, line: 349, column: 11)
!518 = !DILocation(line: 349, column: 11, scope: !517)
!519 = !DILocation(line: 350, column: 23, scope: !512)
!520 = !DILocation(line: 350, column: 32, scope: !512)
!521 = !DILocation(line: 352, column: 11, scope: !522)
!522 = distinct !DILexicalBlock(scope: !512, file: !76, line: 351, column: 11)
!523 = !DILocation(line: 353, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !512, file: !76, line: 355, column: 11)
!525 = !DILocation(line: 355, column: 21, scope: !526)
!526 = distinct !DILexicalBlock(scope: !512, file: !76, line: 356, column: 11)
!527 = !DILocalVariable(name: "tmp___2", scope: !331, file: !76, line: 293, type: !7)
!528 = !DILocation(line: 355, column: 21, scope: !512)
!529 = !DILocation(line: 356, column: 21, scope: !530)
!530 = distinct !DILexicalBlock(scope: !512, file: !76, line: 356, column: 11)
!531 = !DILocalVariable(name: "tmp___3", scope: !331, file: !76, line: 294, type: !7)
!532 = !DILocation(line: 356, column: 34, scope: !512)
!533 = !DILocation(line: 356, column: 20, scope: !512)
!534 = !DILocation(line: 356, column: 32, scope: !512)
!535 = !DILocation(line: 359, column: 20, scope: !512)
!536 = !DILocation(line: 359, column: 37, scope: !512)
!537 = !DILocation(line: 360, column: 20, scope: !512)
!538 = !DILocation(line: 360, column: 41, scope: !512)
!539 = !DILocation(line: 361, column: 21, scope: !512)
!540 = !DILocation(line: 361, column: 35, scope: !512)
!541 = !DILocation(line: 361, column: 52, scope: !512)
!542 = !DILocation(line: 362, column: 21, scope: !512)
!543 = !DILocation(line: 362, column: 35, scope: !512)
!544 = !DILocation(line: 362, column: 51, scope: !512)
!545 = !DILocation(line: 363, column: 21, scope: !512)
!546 = !DILocation(line: 363, column: 35, scope: !512)
!547 = !DILocation(line: 363, column: 54, scope: !512)
!548 = !DILocation(line: 364, column: 21, scope: !512)
!549 = !DILocation(line: 364, column: 35, scope: !512)
!550 = !DILocation(line: 364, column: 49, scope: !512)
!551 = !DILocation(line: 365, column: 47, scope: !552)
!552 = distinct !DILexicalBlock(scope: !512, file: !76, line: 365, column: 11)
!553 = !DILocation(line: 365, column: 11, scope: !552)
!554 = !DILocation(line: 371, column: 28, scope: !555)
!555 = distinct !DILexicalBlock(scope: !512, file: !76, line: 367, column: 11)
!556 = !DILocation(line: 371, column: 11, scope: !555)
!557 = !DILocation(line: 372, column: 26, scope: !558)
!558 = distinct !DILexicalBlock(scope: !512, file: !76, line: 373, column: 11)
!559 = !DILocation(line: 372, column: 47, scope: !558)
!560 = !DILocation(line: 372, column: 21, scope: !558)
!561 = !DILocalVariable(name: "res___0", scope: !331, file: !76, line: 288, type: !15)
!562 = !DILocation(line: 373, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !513, file: !76, line: 373, column: 15)
!564 = !DILocation(line: 373, column: 39, scope: !563)
!565 = !DILocation(line: 373, column: 15, scope: !513)
!566 = !DILocation(line: 375, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !76, line: 375, column: 13)
!568 = distinct !DILexicalBlock(scope: !569, file: !76, line: 374, column: 13)
!569 = distinct !DILexicalBlock(scope: !563, file: !76, line: 373, column: 59)
!570 = !DILocation(line: 376, column: 18, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !76, line: 377, column: 13)
!572 = !DILocation(line: 376, column: 13, scope: !571)
!573 = !DILocation(line: 379, column: 11, scope: !569)
!574 = !DILocation(line: 0, scope: !513)
!575 = !DILocation(line: 379, column: 39, scope: !576)
!576 = distinct !DILexicalBlock(scope: !513, file: !76, line: 380, column: 11)
!577 = !DILocation(line: 379, column: 20, scope: !576)
!578 = !DILocation(line: 379, column: 37, scope: !576)
!579 = !DILocation(line: 380, column: 40, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !76, line: 380, column: 11)
!581 = !DILocation(line: 380, column: 20, scope: !580)
!582 = !DILocation(line: 380, column: 38, scope: !580)
!583 = !DILocation(line: 382, column: 38, scope: !576)
!584 = !DILocation(line: 382, column: 20, scope: !576)
!585 = !DILocation(line: 382, column: 36, scope: !576)
!586 = !DILocation(line: 383, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !576, file: !76, line: 383, column: 11)
!588 = !DILocation(line: 383, column: 11, scope: !587)
!589 = !DILocation(line: 384, column: 39, scope: !576)
!590 = !DILocation(line: 384, column: 20, scope: !576)
!591 = !DILocation(line: 384, column: 37, scope: !576)
!592 = !DILocation(line: 385, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !576, file: !76, line: 385, column: 11)
!594 = !DILocation(line: 385, column: 11, scope: !593)
!595 = !DILocation(line: 388, column: 26, scope: !596)
!596 = distinct !DILexicalBlock(scope: !576, file: !76, line: 387, column: 11)
!597 = !DILocation(line: 388, column: 11, scope: !596)
!598 = !DILocation(line: 389, column: 26, scope: !599)
!599 = distinct !DILexicalBlock(scope: !576, file: !76, line: 390, column: 11)
!600 = !DILocation(line: 389, column: 11, scope: !599)
!601 = !DILocation(line: 392, column: 47, scope: !602)
!602 = distinct !DILexicalBlock(scope: !576, file: !76, line: 391, column: 11)
!603 = !DILocation(line: 392, column: 72, scope: !602)
!604 = !DILocation(line: 392, column: 21, scope: !602)
!605 = !DILocation(line: 393, column: 23, scope: !606)
!606 = distinct !DILexicalBlock(scope: !513, file: !76, line: 393, column: 15)
!607 = !DILocation(line: 393, column: 15, scope: !513)
!608 = !DILocation(line: 395, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !76, line: 395, column: 13)
!610 = distinct !DILexicalBlock(scope: !611, file: !76, line: 394, column: 13)
!611 = distinct !DILexicalBlock(scope: !606, file: !76, line: 393, column: 29)
!612 = !DILocation(line: 396, column: 18, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !76, line: 397, column: 13)
!614 = !DILocation(line: 396, column: 13, scope: !613)
!615 = !DILocation(line: 399, column: 11, scope: !611)
!616 = !DILocation(line: 400, column: 23, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !76, line: 401, column: 13)
!618 = distinct !DILexicalBlock(scope: !619, file: !76, line: 400, column: 13)
!619 = distinct !DILexicalBlock(scope: !606, file: !76, line: 399, column: 18)
!620 = !DILocalVariable(name: "tmp___4", scope: !331, file: !76, line: 295, type: !64)
!621 = !DILocation(line: 400, column: 28, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !76, line: 402, column: 13)
!623 = !DILocation(line: 400, column: 13, scope: !622)
!624 = !DILocation(line: 401, column: 23, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !76, line: 402, column: 13)
!626 = !DILocalVariable(name: "tmp___5", scope: !331, file: !76, line: 296, type: !64)
!627 = !DILocation(line: 401, column: 28, scope: !628)
!628 = distinct !DILexicalBlock(scope: !618, file: !76, line: 403, column: 13)
!629 = !DILocation(line: 401, column: 13, scope: !628)
!630 = !DILocation(line: 402, column: 23, scope: !631)
!631 = distinct !DILexicalBlock(scope: !618, file: !76, line: 404, column: 13)
!632 = !DILocalVariable(name: "tmp___6", scope: !331, file: !76, line: 297, type: !64)
!633 = !DILocation(line: 402, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !618, file: !76, line: 404, column: 13)
!635 = !DILocation(line: 402, column: 13, scope: !634)
!636 = !DILocation(line: 403, column: 23, scope: !618)
!637 = !DILocation(line: 403, column: 45, scope: !618)
!638 = !DILocation(line: 406, column: 13, scope: !639)
!639 = distinct !DILexicalBlock(scope: !618, file: !76, line: 404, column: 13)
!640 = !DILocation(line: 407, column: 26, scope: !641)
!641 = distinct !DILexicalBlock(scope: !619, file: !76, line: 407, column: 17)
!642 = !DILocation(line: 407, column: 60, scope: !641)
!643 = !DILocation(line: 407, column: 74, scope: !641)
!644 = !DILocation(line: 407, column: 47, scope: !641)
!645 = !DILocation(line: 407, column: 17, scope: !619)
!646 = !DILocation(line: 409, column: 15, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !76, line: 409, column: 15)
!648 = distinct !DILexicalBlock(scope: !649, file: !76, line: 408, column: 15)
!649 = distinct !DILexicalBlock(scope: !641, file: !76, line: 407, column: 92)
!650 = !DILocation(line: 410, column: 20, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !76, line: 411, column: 15)
!652 = !DILocation(line: 410, column: 15, scope: !651)
!653 = !DILocation(line: 413, column: 13, scope: !649)
!654 = !DILocation(line: 0, scope: !606)
!655 = !DILocation(line: 416, column: 7, scope: !421)
!656 = !DILocation(line: 0, scope: !393)
!657 = !DILocation(line: 417, column: 5, scope: !412)
!658 = !DILocation(line: 418, column: 3, scope: !403)
!659 = !DILocation(line: 417, column: 11, scope: !393)
!660 = !DILocation(line: 417, column: 3, scope: !393)
!661 = distinct !DISubprogram(name: "eci_impl_get_ecasound_path", scope: !76, file: !76, line: 946, type: !662, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{!72}
!664 = !DILocalVariable(name: "__cil_tmp3", scope: !661, file: !76, line: 950, type: !17)
!665 = !DILocation(line: 950, column: 9, scope: !661)
!666 = !DILocalVariable(name: "__cil_tmp4", scope: !661, file: !76, line: 951, type: !17)
!667 = !DILocation(line: 951, column: 9, scope: !661)
!668 = !DILocalVariable(name: "__cil_tmp5", scope: !661, file: !76, line: 952, type: !17)
!669 = !DILocation(line: 952, column: 9, scope: !661)
!670 = !DILocation(line: 948, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !76, line: 956, column: 3)
!672 = distinct !DILexicalBlock(scope: !673, file: !76, line: 955, column: 3)
!673 = distinct !DILexicalBlock(scope: !661, file: !76, line: 954, column: 3)
!674 = !DILocalVariable(name: "tmp", scope: !661, file: !76, line: 949, type: !17)
!675 = !DILocation(line: 0, scope: !661)
!676 = !DILocalVariable(name: "result", scope: !661, file: !76, line: 948, type: !72)
!677 = !DILocation(line: 950, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !76, line: 950, column: 7)
!679 = !DILocation(line: 950, column: 30, scope: !678)
!680 = !DILocation(line: 950, column: 7, scope: !673)
!681 = !DILocation(line: 951, column: 38, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !76, line: 952, column: 5)
!683 = distinct !DILexicalBlock(scope: !684, file: !76, line: 951, column: 5)
!684 = distinct !DILexicalBlock(scope: !678, file: !76, line: 950, column: 62)
!685 = !DILocation(line: 952, column: 13, scope: !682)
!686 = !DILocation(line: 951, column: 5, scope: !682)
!687 = !DILocation(line: 954, column: 3, scope: !684)
!688 = !DILocation(line: 0, scope: !673)
!689 = !DILocation(line: 955, column: 3, scope: !673)
!690 = distinct !DISubprogram(name: "eci_impl_clean_last_values", scope: !76, file: !76, line: 889, type: !691, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !88}
!693 = !DILocalVariable(name: "parser", arg: 1, scope: !690, file: !76, line: 889, type: !88)
!694 = !DILocation(line: 0, scope: !690)
!695 = !DILocalVariable(name: "__cil_tmp2", scope: !690, file: !76, line: 891, type: !17)
!696 = !DILocation(line: 891, column: 9, scope: !690)
!697 = !DILocalVariable(name: "__cil_tmp3", scope: !690, file: !76, line: 892, type: !17)
!698 = !DILocation(line: 892, column: 9, scope: !690)
!699 = !DILocalVariable(name: "__cil_tmp4", scope: !690, file: !76, line: 893, type: !17)
!700 = !DILocation(line: 893, column: 9, scope: !690)
!701 = !DILocation(line: 891, column: 10, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !76, line: 891, column: 7)
!703 = distinct !DILexicalBlock(scope: !690, file: !76, line: 895, column: 3)
!704 = !DILocation(line: 891, column: 33, scope: !702)
!705 = !DILocation(line: 891, column: 7, scope: !703)
!706 = !DILocation(line: 891, column: 38, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !76, line: 893, column: 5)
!708 = distinct !DILexicalBlock(scope: !709, file: !76, line: 892, column: 5)
!709 = distinct !DILexicalBlock(scope: !702, file: !76, line: 891, column: 79)
!710 = !DILocation(line: 891, column: 5, scope: !707)
!711 = !DILocation(line: 896, column: 3, scope: !709)
!712 = !DILocation(line: 893, column: 35, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !76, line: 898, column: 3)
!714 = distinct !DILexicalBlock(scope: !703, file: !76, line: 897, column: 3)
!715 = !DILocation(line: 893, column: 3, scope: !713)
!716 = !DILocation(line: 894, column: 11, scope: !714)
!717 = !DILocation(line: 894, column: 25, scope: !714)
!718 = !DILocation(line: 895, column: 11, scope: !714)
!719 = !DILocation(line: 895, column: 22, scope: !714)
!720 = !DILocation(line: 896, column: 11, scope: !714)
!721 = !DILocation(line: 896, column: 23, scope: !714)
!722 = !DILocation(line: 897, column: 11, scope: !714)
!723 = !DILocation(line: 897, column: 22, scope: !714)
!724 = !DILocation(line: 898, column: 30, scope: !725)
!725 = distinct !DILexicalBlock(scope: !714, file: !76, line: 898, column: 3)
!726 = !DILocation(line: 898, column: 3, scope: !725)
!727 = !DILocation(line: 899, column: 30, scope: !728)
!728 = distinct !DILexicalBlock(scope: !714, file: !76, line: 900, column: 3)
!729 = !DILocation(line: 899, column: 3, scope: !728)
!730 = !DILocation(line: 900, column: 3, scope: !703)
!731 = distinct !DISubprogram(name: "eci_impl_free_parser", scope: !76, file: !76, line: 879, type: !732, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !74}
!734 = !DILocalVariable(name: "eci_rep", arg: 1, scope: !731, file: !76, line: 879, type: !74)
!735 = !DILocation(line: 0, scope: !731)
!736 = !DILocalVariable(name: "__cil_tmp2", scope: !731, file: !76, line: 881, type: !17)
!737 = !DILocation(line: 881, column: 9, scope: !731)
!738 = !DILocalVariable(name: "__cil_tmp3", scope: !731, file: !76, line: 882, type: !17)
!739 = !DILocation(line: 882, column: 9, scope: !731)
!740 = !DILocalVariable(name: "__cil_tmp4", scope: !731, file: !76, line: 883, type: !17)
!741 = !DILocation(line: 883, column: 9, scope: !731)
!742 = !DILocation(line: 881, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !76, line: 881, column: 7)
!744 = distinct !DILexicalBlock(scope: !731, file: !76, line: 885, column: 3)
!745 = !DILocation(line: 881, column: 7, scope: !744)
!746 = !DILocation(line: 881, column: 38, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !76, line: 883, column: 5)
!748 = distinct !DILexicalBlock(scope: !749, file: !76, line: 882, column: 5)
!749 = distinct !DILexicalBlock(scope: !743, file: !76, line: 881, column: 18)
!750 = !DILocation(line: 881, column: 5, scope: !747)
!751 = !DILocation(line: 886, column: 3, scope: !749)
!752 = !DILocation(line: 882, column: 31, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !76, line: 888, column: 3)
!754 = distinct !DILexicalBlock(scope: !744, file: !76, line: 887, column: 3)
!755 = !DILocation(line: 882, column: 45, scope: !753)
!756 = !DILocation(line: 882, column: 3, scope: !753)
!757 = !DILocation(line: 883, column: 31, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !76, line: 884, column: 3)
!759 = !DILocation(line: 883, column: 45, scope: !758)
!760 = !DILocation(line: 883, column: 3, scope: !758)
!761 = !DILocation(line: 884, column: 31, scope: !762)
!762 = distinct !DILexicalBlock(scope: !754, file: !76, line: 885, column: 3)
!763 = !DILocation(line: 884, column: 45, scope: !762)
!764 = !DILocation(line: 884, column: 3, scope: !762)
!765 = !DILocation(line: 885, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !754, file: !76, line: 886, column: 3)
!767 = !DILocation(line: 885, column: 8, scope: !766)
!768 = !DILocation(line: 885, column: 3, scope: !766)
!769 = !DILocation(line: 886, column: 12, scope: !754)
!770 = !DILocation(line: 886, column: 24, scope: !754)
!771 = !DILocation(line: 887, column: 3, scope: !744)
!772 = distinct !DISubprogram(name: "eci_impl_fd_read", scope: !76, file: !76, line: 921, type: !773, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!773 = !DISubroutineType(types: !774)
!774 = !{!775, !15, !7, !64, !15}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !348, line: 110, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !42, line: 180, baseType: !15)
!777 = !DILocalVariable(name: "fd", arg: 1, scope: !772, file: !76, line: 921, type: !15)
!778 = !DILocation(line: 0, scope: !772)
!779 = !DILocalVariable(name: "buf", arg: 2, scope: !772, file: !76, line: 921, type: !7)
!780 = !DILocalVariable(name: "count", arg: 3, scope: !772, file: !76, line: 921, type: !64)
!781 = !DILocalVariable(name: "timeout", arg: 4, scope: !772, file: !76, line: 921, type: !15)
!782 = !DILocalVariable(name: "ufds", scope: !772, file: !76, line: 924, type: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !230, line: 40, size: 64, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !783, file: !230, line: 41, baseType: !15, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !783, file: !230, line: 42, baseType: !228, size: 16, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !783, file: !230, line: 43, baseType: !228, size: 16, offset: 48)
!788 = !DILocation(line: 924, column: 17, scope: !772)
!789 = !DILocalVariable(name: "nfds", scope: !772, file: !76, line: 923, type: !15)
!790 = !DILocalVariable(name: "rescount", scope: !772, file: !76, line: 925, type: !775)
!791 = !DILocation(line: 928, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !76, line: 929, column: 3)
!793 = distinct !DILexicalBlock(scope: !772, file: !76, line: 928, column: 3)
!794 = !DILocation(line: 928, column: 11, scope: !792)
!795 = !DILocation(line: 929, column: 8, scope: !792)
!796 = !DILocation(line: 929, column: 15, scope: !792)
!797 = !DILocation(line: 930, column: 8, scope: !792)
!798 = !DILocation(line: 930, column: 16, scope: !792)
!799 = !DILocation(line: 932, column: 22, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !76, line: 931, column: 3)
!801 = !DILocation(line: 932, column: 9, scope: !800)
!802 = !DILocalVariable(name: "ret", scope: !772, file: !76, line: 926, type: !15)
!803 = !DILocation(line: 933, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !793, file: !76, line: 933, column: 7)
!805 = !DILocation(line: 933, column: 7, scope: !793)
!806 = !DILocation(line: 934, column: 20, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !76, line: 934, column: 9)
!808 = distinct !DILexicalBlock(scope: !804, file: !76, line: 933, column: 16)
!809 = !DILocation(line: 934, column: 9, scope: !807)
!810 = !DILocation(line: 934, column: 28, scope: !807)
!811 = !DILocation(line: 934, column: 9, scope: !808)
!812 = !DILocation(line: 936, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !76, line: 936, column: 7)
!814 = distinct !DILexicalBlock(scope: !815, file: !76, line: 935, column: 7)
!815 = distinct !DILexicalBlock(scope: !807, file: !76, line: 934, column: 33)
!816 = !DILocation(line: 939, column: 5, scope: !815)
!817 = !DILocation(line: 934, column: 20, scope: !818)
!818 = distinct !DILexicalBlock(scope: !807, file: !76, line: 934, column: 9)
!819 = !DILocation(line: 934, column: 9, scope: !818)
!820 = !DILocation(line: 934, column: 28, scope: !818)
!821 = !DILocation(line: 936, column: 18, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !76, line: 936, column: 7)
!823 = distinct !DILexicalBlock(scope: !824, file: !76, line: 935, column: 7)
!824 = distinct !DILexicalBlock(scope: !818, file: !76, line: 934, column: 33)
!825 = !DILocation(line: 939, column: 5, scope: !824)
!826 = !DILocation(line: 0, scope: !793)
!827 = !DILocation(line: 0, scope: !807)
!828 = !DILocation(line: 940, column: 3, scope: !808)
!829 = !DILocation(line: 939, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !804, file: !76, line: 939, column: 7)
!831 = !DILocation(line: 939, column: 7, scope: !804)
!832 = !DILocation(line: 942, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !76, line: 939, column: 17)
!834 = !DILocation(line: 0, scope: !804)
!835 = !DILocation(line: 943, column: 3, scope: !793)
!836 = distinct !DISubprogram(name: "eci_impl_read_return_value", scope: !76, file: !76, line: 1012, type: !837, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !74, !15}
!839 = !DILocalVariable(name: "eci_rep", arg: 1, scope: !836, file: !76, line: 1012, type: !74)
!840 = !DILocation(line: 0, scope: !836)
!841 = !DILocalVariable(name: "timeout", arg: 2, scope: !836, file: !76, line: 1012, type: !15)
!842 = !DILocalVariable(name: "__cil_tmp8", scope: !836, file: !76, line: 1019, type: !17)
!843 = !DILocation(line: 1019, column: 9, scope: !836)
!844 = !DILocalVariable(name: "__cil_tmp9", scope: !836, file: !76, line: 1020, type: !17)
!845 = !DILocation(line: 1020, column: 9, scope: !836)
!846 = !DILocalVariable(name: "__cil_tmp10", scope: !836, file: !76, line: 1021, type: !17)
!847 = !DILocation(line: 1021, column: 9, scope: !836)
!848 = !DILocalVariable(name: "__cil_tmp11", scope: !836, file: !76, line: 1022, type: !17)
!849 = !DILocation(line: 1022, column: 9, scope: !836)
!850 = !DILocation(line: 1014, column: 25, scope: !851)
!851 = distinct !DILexicalBlock(scope: !836, file: !76, line: 1024, column: 3)
!852 = !DILocation(line: 1014, column: 16, scope: !851)
!853 = !DILocalVariable(name: "raw_buffer", scope: !836, file: !76, line: 1014, type: !17)
!854 = !DILocalVariable(name: "attempts", scope: !836, file: !76, line: 1015, type: !15)
!855 = !DILocation(line: 1017, column: 19, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !76, line: 1017, column: 7)
!857 = !DILocation(line: 1017, column: 53, scope: !856)
!858 = !DILocation(line: 1017, column: 67, scope: !856)
!859 = !DILocation(line: 1017, column: 40, scope: !856)
!860 = !DILocation(line: 1017, column: 7, scope: !851)
!861 = !DILocation(line: 1017, column: 38, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !76, line: 1019, column: 5)
!863 = distinct !DILexicalBlock(scope: !864, file: !76, line: 1018, column: 5)
!864 = distinct !DILexicalBlock(scope: !856, file: !76, line: 1017, column: 86)
!865 = !DILocation(line: 1017, column: 5, scope: !862)
!866 = !DILocation(line: 1023, column: 3, scope: !864)
!867 = !DILocation(line: 1020, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !76, line: 1025, column: 3)
!869 = distinct !DILexicalBlock(scope: !851, file: !76, line: 1024, column: 3)
!870 = !DILocation(line: 0, scope: !851)
!871 = !DILocation(line: 1020, column: 13, scope: !868)
!872 = !DILocation(line: 1020, column: 21, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !76, line: 1020, column: 9)
!874 = distinct !DILexicalBlock(scope: !868, file: !76, line: 1020, column: 13)
!875 = !DILocation(line: 1020, column: 9, scope: !874)
!876 = !DILocation(line: 1020, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !76, line: 1020, column: 27)
!878 = !DILocation(line: 1021, column: 37, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !76, line: 1023, column: 5)
!880 = distinct !DILexicalBlock(scope: !874, file: !76, line: 1022, column: 5)
!881 = !DILocation(line: 1021, column: 11, scope: !879)
!882 = !DILocalVariable(name: "tmp", scope: !836, file: !76, line: 1017, type: !775)
!883 = !DILocalVariable(name: "res", scope: !836, file: !76, line: 1016, type: !15)
!884 = !DILocation(line: 1022, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !874, file: !76, line: 1022, column: 9)
!886 = !DILocation(line: 1022, column: 9, scope: !874)
!887 = !DILocation(line: 1025, column: 20, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !76, line: 1022, column: 18)
!889 = !DILocation(line: 1025, column: 27, scope: !888)
!890 = !DILocalVariable(name: "n", scope: !836, file: !76, line: 1018, type: !15)
!891 = !DILocation(line: 1028, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !76, line: 1030, column: 7)
!893 = distinct !DILexicalBlock(scope: !888, file: !76, line: 1029, column: 7)
!894 = !DILocation(line: 0, scope: !888)
!895 = !DILocation(line: 1028, column: 17, scope: !892)
!896 = !DILocation(line: 1028, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !76, line: 1028, column: 13)
!898 = distinct !DILexicalBlock(scope: !892, file: !76, line: 1028, column: 17)
!899 = !DILocation(line: 1028, column: 13, scope: !898)
!900 = !DILocation(line: 1028, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !76, line: 1028, column: 26)
!902 = !DILocation(line: 1030, column: 40, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !76, line: 1031, column: 9)
!904 = distinct !DILexicalBlock(scope: !898, file: !76, line: 1030, column: 9)
!905 = !DILocation(line: 1030, column: 66, scope: !903)
!906 = !DILocation(line: 1030, column: 53, scope: !903)
!907 = !DILocation(line: 1030, column: 9, scope: !903)
!908 = !DILocation(line: 1028, column: 11, scope: !904)
!909 = distinct !{!909, !891, !910}
!910 = !DILocation(line: 1030, column: 7, scope: !892)
!911 = !DILocation(line: 1032, column: 7, scope: !892)
!912 = !DILocation(line: 1034, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !888, file: !76, line: 1034, column: 11)
!914 = !DILocation(line: 1034, column: 54, scope: !913)
!915 = !DILocation(line: 1034, column: 68, scope: !913)
!916 = !DILocation(line: 1034, column: 41, scope: !913)
!917 = !DILocation(line: 1034, column: 11, scope: !888)
!918 = !DILocation(line: 1035, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !76, line: 1034, column: 86)
!920 = !DILocation(line: 1037, column: 5, scope: !888)
!921 = !DILocation(line: 1040, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !885, file: !76, line: 1040, column: 9)
!923 = !DILocation(line: 1040, column: 9, scope: !885)
!924 = !DILocation(line: 1042, column: 17, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !76, line: 1040, column: 18)
!926 = !DILocation(line: 1042, column: 31, scope: !925)
!927 = !DILocation(line: 1042, column: 45, scope: !925)
!928 = !DILocation(line: 1043, column: 7, scope: !925)
!929 = !DILocation(line: 1046, column: 14, scope: !874)
!930 = distinct !{!930, !867, !931}
!931 = !DILocation(line: 1047, column: 3, scope: !868)
!932 = !DILocation(line: 1049, column: 3, scope: !868)
!933 = !DILocation(line: 1049, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !851, file: !76, line: 1049, column: 7)
!935 = !DILocation(line: 1049, column: 50, scope: !934)
!936 = !DILocation(line: 1049, column: 64, scope: !934)
!937 = !DILocation(line: 1049, column: 37, scope: !934)
!938 = !DILocation(line: 1049, column: 7, scope: !851)
!939 = !DILocation(line: 1051, column: 32, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !76, line: 1051, column: 5)
!941 = distinct !DILexicalBlock(scope: !942, file: !76, line: 1050, column: 5)
!942 = distinct !DILexicalBlock(scope: !934, file: !76, line: 1049, column: 82)
!943 = !DILocation(line: 1051, column: 5, scope: !940)
!944 = !DILocation(line: 1052, column: 15, scope: !941)
!945 = !DILocation(line: 1052, column: 29, scope: !941)
!946 = !DILocation(line: 1052, column: 43, scope: !941)
!947 = !DILocation(line: 1054, column: 3, scope: !942)
!948 = !DILocation(line: 1054, column: 3, scope: !851)
!949 = distinct !DISubprogram(name: "eci_ready", scope: !76, file: !76, line: 425, type: !950, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!950 = !DISubroutineType(types: !951)
!951 = !{!15}
!952 = !DILocation(line: 427, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !76, line: 431, column: 3)
!954 = distinct !DILexicalBlock(scope: !955, file: !76, line: 430, column: 3)
!955 = distinct !DILexicalBlock(scope: !949, file: !76, line: 429, column: 3)
!956 = !DILocation(line: 427, column: 9, scope: !953)
!957 = !DILocalVariable(name: "tmp", scope: !949, file: !76, line: 427, type: !15)
!958 = !DILocation(line: 0, scope: !949)
!959 = !DILocation(line: 427, column: 3, scope: !955)
!960 = distinct !DISubprogram(name: "eci_ready_r", scope: !76, file: !76, line: 435, type: !961, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!961 = !DISubroutineType(types: !962)
!962 = !{!15, !226}
!963 = !DILocalVariable(name: "ptr", arg: 1, scope: !960, file: !76, line: 435, type: !226)
!964 = !DILocation(line: 0, scope: !960)
!965 = !DILocation(line: 437, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !76, line: 439, column: 3)
!967 = !DILocalVariable(name: "eci_rep", scope: !960, file: !76, line: 437, type: !74)
!968 = !DILocation(line: 439, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !76, line: 439, column: 7)
!970 = !DILocation(line: 439, column: 7, scope: !966)
!971 = !DILocation(line: 440, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !76, line: 439, column: 14)
!973 = !DILocation(line: 442, column: 16, scope: !974)
!974 = distinct !DILexicalBlock(scope: !966, file: !76, line: 442, column: 7)
!975 = !DILocation(line: 442, column: 33, scope: !974)
!976 = !DILocation(line: 442, column: 7, scope: !966)
!977 = !DILocation(line: 445, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !76, line: 442, column: 39)
!979 = !DILocation(line: 442, column: 16, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !76, line: 442, column: 7)
!981 = !DILocation(line: 442, column: 32, scope: !980)
!982 = !DILocation(line: 442, column: 7, scope: !974)
!983 = !DILocation(line: 445, column: 5, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !76, line: 442, column: 37)
!985 = !DILocation(line: 442, column: 16, scope: !986)
!986 = distinct !DILexicalBlock(scope: !980, file: !76, line: 442, column: 7)
!987 = !DILocation(line: 442, column: 33, scope: !986)
!988 = !DILocation(line: 442, column: 7, scope: !980)
!989 = !DILocation(line: 445, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !76, line: 442, column: 38)
!991 = !DILocation(line: 447, column: 3, scope: !966)
!992 = !DILocation(line: 0, scope: !966)
!993 = !DILocation(line: 449, column: 1, scope: !960)
!994 = distinct !DISubprogram(name: "eci_cleanup", scope: !76, file: !76, line: 453, type: !218, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!995 = !DILocation(line: 455, column: 23, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !76, line: 455, column: 7)
!997 = distinct !DILexicalBlock(scope: !994, file: !76, line: 457, column: 3)
!998 = !DILocation(line: 455, column: 7, scope: !996)
!999 = !DILocation(line: 455, column: 38, scope: !996)
!1000 = !DILocation(line: 455, column: 7, scope: !997)
!1001 = !DILocation(line: 456, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !76, line: 457, column: 5)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !76, line: 456, column: 5)
!1004 = distinct !DILexicalBlock(scope: !996, file: !76, line: 455, column: 70)
!1005 = !DILocation(line: 456, column: 5, scope: !1002)
!1006 = !DILocation(line: 457, column: 20, scope: !1003)
!1007 = !DILocation(line: 459, column: 3, scope: !1004)
!1008 = !DILocation(line: 459, column: 3, scope: !997)
!1009 = distinct !DISubprogram(name: "eci_cleanup_r", scope: !76, file: !76, line: 464, type: !1010, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !226}
!1012 = !DILocalVariable(name: "ptr", arg: 1, scope: !1009, file: !76, line: 464, type: !226)
!1013 = !DILocation(line: 0, scope: !1009)
!1014 = !DILocalVariable(name: "buf", scope: !1009, file: !76, line: 469, type: !49)
!1015 = !DILocation(line: 469, column: 8, scope: !1009)
!1016 = !DILocalVariable(name: "fds", scope: !1009, file: !76, line: 470, type: !1017)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 64, elements: !50)
!1018 = !DILocation(line: 470, column: 17, scope: !1009)
!1019 = !DILocalVariable(name: "__cil_tmp8", scope: !1009, file: !76, line: 472, type: !7)
!1020 = !DILocation(line: 472, column: 9, scope: !1009)
!1021 = !DILocalVariable(name: "__cil_tmp9", scope: !1009, file: !76, line: 473, type: !7)
!1022 = !DILocation(line: 473, column: 9, scope: !1009)
!1023 = !DILocalVariable(name: "__cil_tmp10", scope: !1009, file: !76, line: 474, type: !15)
!1024 = !DILocation(line: 474, column: 7, scope: !1009)
!1025 = !DILocalVariable(name: "__cil_tmp11", scope: !1009, file: !76, line: 475, type: !17)
!1026 = !DILocation(line: 475, column: 9, scope: !1009)
!1027 = !DILocalVariable(name: "__cil_tmp12", scope: !1009, file: !76, line: 476, type: !17)
!1028 = !DILocation(line: 476, column: 9, scope: !1009)
!1029 = !DILocation(line: 466, column: 13, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !76, line: 479, column: 3)
!1031 = distinct !DILexicalBlock(scope: !1009, file: !76, line: 478, column: 3)
!1032 = !DILocalVariable(name: "eci_rep", scope: !1009, file: !76, line: 466, type: !74)
!1033 = !DILocalVariable(name: "resread", scope: !1009, file: !76, line: 467, type: !775)
!1034 = !DILocation(line: 471, column: 3, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !76, line: 468, column: 3)
!1036 = !DILocation(line: 475, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !76, line: 473, column: 3)
!1038 = !DILocalVariable(name: "tmp", scope: !1009, file: !76, line: 471, type: !64)
!1039 = !DILocation(line: 475, column: 18, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1030, file: !76, line: 477, column: 3)
!1041 = !DILocation(line: 475, column: 3, scope: !1040)
!1042 = !DILocation(line: 476, column: 13, scope: !1030)
!1043 = !DILocation(line: 476, column: 35, scope: !1030)
!1044 = !DILocation(line: 486, column: 3, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !76, line: 479, column: 3)
!1046 = distinct !DILexicalBlock(scope: !1031, file: !76, line: 478, column: 3)
!1047 = !DILocation(line: 0, scope: !1031)
!1048 = !DILocation(line: 486, column: 13, scope: !1045)
!1049 = !DILocation(line: 486, column: 20, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !76, line: 486, column: 9)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !76, line: 486, column: 13)
!1052 = !DILocation(line: 486, column: 9, scope: !1051)
!1053 = !DILocation(line: 486, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !76, line: 486, column: 26)
!1055 = !DILocation(line: 487, column: 26, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !76, line: 488, column: 5)
!1057 = !DILocation(line: 487, column: 5, scope: !1056)
!1058 = !DILocation(line: 487, column: 12, scope: !1056)
!1059 = !DILocation(line: 487, column: 15, scope: !1056)
!1060 = !DILocation(line: 488, column: 5, scope: !1056)
!1061 = !DILocation(line: 488, column: 12, scope: !1056)
!1062 = !DILocation(line: 488, column: 19, scope: !1056)
!1063 = !DILocation(line: 489, column: 5, scope: !1056)
!1064 = !DILocation(line: 489, column: 12, scope: !1056)
!1065 = !DILocation(line: 489, column: 20, scope: !1056)
!1066 = !DILocation(line: 490, column: 20, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !76, line: 490, column: 5)
!1068 = !DILocation(line: 490, column: 15, scope: !1067)
!1069 = !DILocalVariable(name: "respoll", scope: !1009, file: !76, line: 468, type: !775)
!1070 = !DILocation(line: 491, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1051, file: !76, line: 491, column: 9)
!1072 = !DILocation(line: 491, column: 22, scope: !1071)
!1073 = !DILocation(line: 491, column: 9, scope: !1071)
!1074 = !DILocation(line: 491, column: 30, scope: !1071)
!1075 = !DILocation(line: 491, column: 9, scope: !1051)
!1076 = !DILocation(line: 492, column: 31, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !76, line: 493, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !76, line: 492, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !76, line: 491, column: 36)
!1080 = !DILocation(line: 492, column: 56, scope: !1077)
!1081 = !DILocation(line: 492, column: 17, scope: !1077)
!1082 = !DILocation(line: 495, column: 5, scope: !1079)
!1083 = !DILocation(line: 493, column: 15, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1071, file: !76, line: 493, column: 9)
!1085 = !DILocation(line: 493, column: 22, scope: !1084)
!1086 = !DILocation(line: 493, column: 9, scope: !1084)
!1087 = !DILocation(line: 493, column: 30, scope: !1084)
!1088 = !DILocation(line: 493, column: 9, scope: !1071)
!1089 = !DILocation(line: 495, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !76, line: 493, column: 35)
!1091 = !DILocation(line: 0, scope: !1071)
!1092 = distinct !{!1092, !1044, !1093}
!1093 = !DILocation(line: 496, column: 3, scope: !1045)
!1094 = !DILocation(line: 498, column: 3, scope: !1045)
!1095 = !DILocation(line: 501, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1031, file: !76, line: 501, column: 7)
!1097 = !DILocation(line: 501, column: 31, scope: !1096)
!1098 = !DILocation(line: 501, column: 7, scope: !1031)
!1099 = !DILocation(line: 503, column: 20, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !76, line: 503, column: 5)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !76, line: 502, column: 5)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !76, line: 501, column: 78)
!1103 = !DILocation(line: 503, column: 5, scope: !1100)
!1104 = !DILocation(line: 504, column: 20, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !76, line: 505, column: 5)
!1106 = !DILocation(line: 504, column: 5, scope: !1105)
!1107 = !DILocation(line: 507, column: 41, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !76, line: 506, column: 5)
!1109 = !DILocation(line: 507, column: 5, scope: !1108)
!1110 = !DILocation(line: 509, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1101, file: !76, line: 509, column: 5)
!1112 = !DILocation(line: 510, column: 10, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1101, file: !76, line: 511, column: 5)
!1114 = !DILocation(line: 510, column: 5, scope: !1113)
!1115 = !DILocation(line: 513, column: 3, scope: !1102)
!1116 = !DILocation(line: 512, column: 3, scope: !1031)
!1117 = distinct !DISubprogram(name: "eci_impl_check_handle", scope: !76, file: !76, line: 870, type: !732, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1118 = !DILocalVariable(name: "eci_rep", arg: 1, scope: !1117, file: !76, line: 870, type: !74)
!1119 = !DILocation(line: 0, scope: !1117)
!1120 = !DILocalVariable(name: "__cil_tmp2", scope: !1117, file: !76, line: 872, type: !17)
!1121 = !DILocation(line: 872, column: 9, scope: !1117)
!1122 = !DILocalVariable(name: "__cil_tmp3", scope: !1117, file: !76, line: 873, type: !17)
!1123 = !DILocation(line: 873, column: 9, scope: !1117)
!1124 = !DILocalVariable(name: "__cil_tmp4", scope: !1117, file: !76, line: 874, type: !17)
!1125 = !DILocation(line: 874, column: 9, scope: !1117)
!1126 = !DILocalVariable(name: "__cil_tmp5", scope: !1117, file: !76, line: 875, type: !17)
!1127 = !DILocation(line: 875, column: 9, scope: !1117)
!1128 = !DILocation(line: 872, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !76, line: 872, column: 7)
!1130 = distinct !DILexicalBlock(scope: !1117, file: !76, line: 877, column: 3)
!1131 = !DILocation(line: 872, column: 31, scope: !1129)
!1132 = !DILocation(line: 872, column: 7, scope: !1130)
!1133 = !DILocation(line: 873, column: 38, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !76, line: 874, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !76, line: 873, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !76, line: 872, column: 63)
!1137 = !DILocation(line: 874, column: 13, scope: !1134)
!1138 = !DILocation(line: 873, column: 5, scope: !1134)
!1139 = !DILocation(line: 874, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !76, line: 874, column: 9)
!1141 = !DILocation(line: 874, column: 36, scope: !1140)
!1142 = !DILocation(line: 874, column: 9, scope: !1136)
!1143 = !DILocation(line: 874, column: 40, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !76, line: 876, column: 7)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !76, line: 875, column: 7)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !76, line: 874, column: 69)
!1147 = !DILocation(line: 874, column: 7, scope: !1144)
!1148 = !DILocation(line: 879, column: 5, scope: !1146)
!1149 = !DILocation(line: 875, column: 5, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !76, line: 881, column: 5)
!1151 = distinct !DILexicalBlock(scope: !1136, file: !76, line: 880, column: 5)
!1152 = !DILocation(line: 877, column: 3, scope: !1130)
!1153 = distinct !DISubprogram(name: "eci_command", scope: !76, file: !76, line: 522, type: !1154, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !72}
!1156 = !DILocalVariable(name: "command", arg: 1, scope: !1153, file: !76, line: 522, type: !72)
!1157 = !DILocation(line: 0, scope: !1153)
!1158 = !DILocation(line: 522, column: 17, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !76, line: 528, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !76, line: 527, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !76, line: 526, column: 3)
!1162 = !DILocation(line: 522, column: 3, scope: !1159)
!1163 = !DILocation(line: 522, column: 3, scope: !1161)
!1164 = distinct !DISubprogram(name: "eci_command_r", scope: !76, file: !76, line: 528, type: !1165, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !226, !72}
!1167 = !DILocalVariable(name: "ptr", arg: 1, scope: !1164, file: !76, line: 528, type: !226)
!1168 = !DILocation(line: 0, scope: !1164)
!1169 = !DILocalVariable(name: "command", arg: 2, scope: !1164, file: !76, line: 528, type: !72)
!1170 = !DILocalVariable(name: "__cil_tmp8", scope: !1164, file: !76, line: 535, type: !17)
!1171 = !DILocation(line: 535, column: 9, scope: !1164)
!1172 = !DILocalVariable(name: "__cil_tmp9", scope: !1164, file: !76, line: 536, type: !17)
!1173 = !DILocation(line: 536, column: 9, scope: !1164)
!1174 = !DILocalVariable(name: "__cil_tmp10", scope: !1164, file: !76, line: 537, type: !17)
!1175 = !DILocation(line: 537, column: 9, scope: !1164)
!1176 = !DILocalVariable(name: "__cil_tmp11", scope: !1164, file: !76, line: 538, type: !17)
!1177 = !DILocation(line: 538, column: 9, scope: !1164)
!1178 = !DILocation(line: 530, column: 13, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 541, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1164, file: !76, line: 540, column: 3)
!1181 = !DILocalVariable(name: "eci_rep", scope: !1164, file: !76, line: 530, type: !74)
!1182 = !DILocalVariable(name: "timeout", scope: !1164, file: !76, line: 531, type: !15)
!1183 = !DILocation(line: 533, column: 3, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !76, line: 532, column: 3)
!1185 = !DILocation(line: 535, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !76, line: 535, column: 3)
!1187 = !DILocalVariable(name: "tmp", scope: !1164, file: !76, line: 532, type: !15)
!1188 = !DILocation(line: 535, column: 11, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 535, column: 7)
!1190 = !DILocation(line: 535, column: 7, scope: !1180)
!1191 = !DILocation(line: 537, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !76, line: 535, column: 17)
!1193 = !DILocation(line: 543, column: 45, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 540, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 539, column: 3)
!1196 = !DILocation(line: 543, column: 35, scope: !1194)
!1197 = !DILocation(line: 543, column: 3, scope: !1194)
!1198 = !DILocation(line: 545, column: 39, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 546, column: 3)
!1200 = !DILocation(line: 545, column: 3, scope: !1199)
!1201 = !DILocation(line: 547, column: 13, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 547, column: 3)
!1203 = !DILocalVariable(name: "tmp___0", scope: !1164, file: !76, line: 533, type: !64)
!1204 = !DILocation(line: 547, column: 18, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 549, column: 3)
!1206 = !DILocation(line: 547, column: 3, scope: !1205)
!1207 = !DILocation(line: 548, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 549, column: 3)
!1209 = !DILocation(line: 548, column: 3, scope: !1208)
!1210 = !DILocation(line: 551, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 550, column: 3)
!1212 = !DILocalVariable(name: "tmp___1", scope: !1164, file: !76, line: 534, type: !15)
!1213 = !DILocation(line: 551, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 551, column: 7)
!1215 = !DILocation(line: 551, column: 7, scope: !1180)
!1216 = !DILocation(line: 554, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !76, line: 551, column: 21)
!1218 = !DILocation(line: 0, scope: !1180)
!1219 = !DILocation(line: 556, column: 13, scope: !1180)
!1220 = !DILocation(line: 556, column: 35, scope: !1180)
!1221 = !DILocation(line: 558, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 558, column: 7)
!1223 = !DILocation(line: 558, column: 37, scope: !1222)
!1224 = !DILocation(line: 558, column: 54, scope: !1222)
!1225 = !DILocation(line: 558, column: 68, scope: !1222)
!1226 = !DILocation(line: 558, column: 41, scope: !1222)
!1227 = !DILocation(line: 558, column: 7, scope: !1180)
!1228 = !DILocation(line: 560, column: 5, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !76, line: 560, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !76, line: 559, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !76, line: 558, column: 86)
!1232 = !DILocation(line: 561, column: 15, scope: !1230)
!1233 = !DILocation(line: 561, column: 29, scope: !1230)
!1234 = !DILocation(line: 561, column: 43, scope: !1230)
!1235 = !DILocation(line: 563, column: 3, scope: !1231)
!1236 = !DILocation(line: 564, column: 16, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 564, column: 7)
!1238 = !DILocation(line: 564, column: 50, scope: !1237)
!1239 = !DILocation(line: 564, column: 64, scope: !1237)
!1240 = !DILocation(line: 564, column: 37, scope: !1237)
!1241 = !DILocation(line: 564, column: 7, scope: !1180)
!1242 = !DILocation(line: 566, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !76, line: 566, column: 5)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !76, line: 565, column: 5)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !76, line: 564, column: 82)
!1246 = !DILocation(line: 569, column: 3, scope: !1245)
!1247 = !DILocation(line: 572, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1180, file: !76, line: 572, column: 7)
!1249 = !DILocation(line: 572, column: 49, scope: !1248)
!1250 = !DILocation(line: 572, column: 63, scope: !1248)
!1251 = !DILocation(line: 572, column: 37, scope: !1248)
!1252 = !DILocation(line: 572, column: 7, scope: !1180)
!1253 = !DILocation(line: 574, column: 38, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !76, line: 574, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !76, line: 573, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !76, line: 572, column: 81)
!1257 = !DILocation(line: 575, column: 13, scope: !1254)
!1258 = !DILocation(line: 574, column: 5, scope: !1254)
!1259 = !DILocation(line: 575, column: 15, scope: !1255)
!1260 = !DILocation(line: 575, column: 29, scope: !1255)
!1261 = !DILocation(line: 575, column: 43, scope: !1255)
!1262 = !DILocation(line: 577, column: 3, scope: !1256)
!1263 = !DILocation(line: 577, column: 3, scope: !1180)
!1264 = !DILocation(line: 579, column: 1, scope: !1164)
!1265 = distinct !DISubprogram(name: "eci_impl_dump_parser_state", scope: !76, file: !76, line: 902, type: !1165, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1266 = !DILocalVariable(name: "ptr", arg: 1, scope: !1265, file: !76, line: 902, type: !226)
!1267 = !DILocation(line: 0, scope: !1265)
!1268 = !DILocalVariable(name: "message", arg: 2, scope: !1265, file: !76, line: 902, type: !72)
!1269 = !DILocalVariable(name: "__cil_tmp5", scope: !1265, file: !76, line: 906, type: !17)
!1270 = !DILocation(line: 906, column: 9, scope: !1265)
!1271 = !DILocation(line: 904, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !76, line: 909, column: 3)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !76, line: 908, column: 3)
!1274 = !DILocalVariable(name: "eci_rep", scope: !1265, file: !76, line: 904, type: !74)
!1275 = !DILocation(line: 906, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !76, line: 905, column: 3)
!1277 = !DILocalVariable(name: "tmp", scope: !1265, file: !76, line: 905, type: !72)
!1278 = !DILocation(line: 906, column: 36, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !76, line: 908, column: 3)
!1280 = !DILocation(line: 907, column: 29, scope: !1279)
!1281 = !DILocation(line: 907, column: 20, scope: !1279)
!1282 = !DILocation(line: 907, column: 62, scope: !1279)
!1283 = !DILocation(line: 908, column: 21, scope: !1279)
!1284 = !DILocation(line: 908, column: 35, scope: !1279)
!1285 = !DILocation(line: 906, column: 3, scope: !1279)
!1286 = !DILocation(line: 912, column: 3, scope: !1273)
!1287 = distinct !DISubprogram(name: "eci_command_float_arg", scope: !76, file: !76, line: 583, type: !1288, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !72, !94}
!1290 = !DILocalVariable(name: "command", arg: 1, scope: !1287, file: !76, line: 583, type: !72)
!1291 = !DILocation(line: 0, scope: !1287)
!1292 = !DILocalVariable(name: "arg", arg: 2, scope: !1287, file: !76, line: 583, type: !94)
!1293 = !DILocation(line: 583, column: 27, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !76, line: 589, column: 3)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !76, line: 588, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !76, line: 587, column: 3)
!1297 = !DILocation(line: 583, column: 3, scope: !1294)
!1298 = !DILocation(line: 583, column: 3, scope: !1296)
!1299 = distinct !DISubprogram(name: "eci_command_float_arg_r", scope: !76, file: !76, line: 589, type: !1300, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !226, !72, !94}
!1302 = !DILocalVariable(name: "ptr", arg: 1, scope: !1299, file: !76, line: 589, type: !226)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocalVariable(name: "command", arg: 2, scope: !1299, file: !76, line: 589, type: !72)
!1305 = !DILocalVariable(name: "arg", arg: 3, scope: !1299, file: !76, line: 589, type: !94)
!1306 = !DILocalVariable(name: "__cil_tmp5", scope: !1299, file: !76, line: 592, type: !17)
!1307 = !DILocation(line: 592, column: 9, scope: !1299)
!1308 = !DILocation(line: 591, column: 13, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !76, line: 595, column: 3)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !76, line: 594, column: 3)
!1311 = !DILocalVariable(name: "eci_rep", scope: !1299, file: !76, line: 591, type: !74)
!1312 = !DILocation(line: 593, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !76, line: 592, column: 3)
!1314 = !DILocation(line: 595, column: 47, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !76, line: 595, column: 3)
!1316 = !DILocation(line: 595, column: 37, scope: !1315)
!1317 = !DILocation(line: 595, column: 3, scope: !1315)
!1318 = !DILocation(line: 596, column: 48, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1309, file: !76, line: 598, column: 3)
!1320 = !DILocation(line: 596, column: 38, scope: !1319)
!1321 = !DILocation(line: 596, column: 3, scope: !1319)
!1322 = !DILocation(line: 597, column: 3, scope: !1310)
!1323 = distinct !DISubprogram(name: "eci_last_string_list_count", scope: !76, file: !76, line: 607, type: !950, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1324 = !DILocation(line: 607, column: 38, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !76, line: 613, column: 3)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !76, line: 612, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !76, line: 611, column: 3)
!1328 = !DILocation(line: 607, column: 9, scope: !1325)
!1329 = !DILocalVariable(name: "tmp", scope: !1323, file: !76, line: 609, type: !15)
!1330 = !DILocation(line: 0, scope: !1323)
!1331 = !DILocation(line: 607, column: 3, scope: !1327)
!1332 = distinct !DISubprogram(name: "eci_last_string_list_count_r", scope: !76, file: !76, line: 613, type: !961, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1333 = !DILocalVariable(name: "ptr", arg: 1, scope: !1332, file: !76, line: 613, type: !226)
!1334 = !DILocation(line: 0, scope: !1332)
!1335 = !DILocation(line: 615, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !76, line: 620, column: 3)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !76, line: 619, column: 3)
!1338 = !DILocalVariable(name: "eci_rep", scope: !1332, file: !76, line: 615, type: !74)
!1339 = !DILocalVariable(name: "count", scope: !1332, file: !76, line: 617, type: !15)
!1340 = !DILocation(line: 619, column: 3, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !76, line: 618, column: 3)
!1342 = !DILocation(line: 621, column: 17, scope: !1336)
!1343 = !DILocation(line: 621, column: 31, scope: !1336)
!1344 = !DILocalVariable(name: "i", scope: !1332, file: !76, line: 616, type: !103)
!1345 = !DILocation(line: 621, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !76, line: 624, column: 3)
!1347 = distinct !DILexicalBlock(scope: !1337, file: !76, line: 623, column: 3)
!1348 = !DILocation(line: 0, scope: !1337)
!1349 = !DILocation(line: 621, column: 13, scope: !1346)
!1350 = !DILocation(line: 621, column: 12, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !76, line: 621, column: 9)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !76, line: 621, column: 13)
!1353 = !DILocation(line: 621, column: 30, scope: !1351)
!1354 = !DILocation(line: 621, column: 9, scope: !1352)
!1355 = !DILocation(line: 621, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !76, line: 621, column: 63)
!1357 = !DILocation(line: 624, column: 11, scope: !1352)
!1358 = !DILocation(line: 621, column: 12, scope: !1352)
!1359 = distinct !{!1359, !1345, !1360}
!1360 = !DILocation(line: 622, column: 3, scope: !1346)
!1361 = !DILocation(line: 624, column: 3, scope: !1346)
!1362 = !DILocation(line: 627, column: 3, scope: !1337)
!1363 = distinct !DISubprogram(name: "eci_last_string_list_item", scope: !76, file: !76, line: 637, type: !1364, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!72, !15}
!1366 = !DILocalVariable(name: "n", arg: 1, scope: !1363, file: !76, line: 637, type: !15)
!1367 = !DILocation(line: 0, scope: !1363)
!1368 = !DILocation(line: 637, column: 37, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 643, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !76, line: 642, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !76, line: 641, column: 3)
!1372 = !DILocation(line: 637, column: 9, scope: !1369)
!1373 = !DILocalVariable(name: "tmp", scope: !1363, file: !76, line: 639, type: !72)
!1374 = !DILocation(line: 637, column: 3, scope: !1371)
!1375 = distinct !DISubprogram(name: "eci_last_string_list_item_r", scope: !76, file: !76, line: 646, type: !1376, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!72, !226, !15}
!1378 = !DILocalVariable(name: "ptr", arg: 1, scope: !1375, file: !76, line: 646, type: !226)
!1379 = !DILocation(line: 0, scope: !1375)
!1380 = !DILocalVariable(name: "n", arg: 2, scope: !1375, file: !76, line: 646, type: !15)
!1381 = !DILocation(line: 648, column: 13, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !76, line: 654, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !76, line: 653, column: 3)
!1384 = !DILocalVariable(name: "eci_rep", scope: !1375, file: !76, line: 648, type: !74)
!1385 = !DILocalVariable(name: "count", scope: !1375, file: !76, line: 650, type: !15)
!1386 = !DILocation(line: 652, column: 3, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !76, line: 651, column: 3)
!1388 = !DILocation(line: 654, column: 17, scope: !1382)
!1389 = !DILocation(line: 654, column: 31, scope: !1382)
!1390 = !DILocalVariable(name: "i", scope: !1375, file: !76, line: 649, type: !103)
!1391 = !DILocation(line: 654, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !76, line: 657, column: 3)
!1393 = distinct !DILexicalBlock(scope: !1383, file: !76, line: 656, column: 3)
!1394 = !DILocation(line: 0, scope: !1383)
!1395 = !DILocation(line: 654, column: 13, scope: !1392)
!1396 = !DILocation(line: 654, column: 12, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !76, line: 654, column: 9)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !76, line: 654, column: 13)
!1399 = !DILocation(line: 654, column: 30, scope: !1397)
!1400 = !DILocation(line: 654, column: 9, scope: !1398)
!1401 = !DILocation(line: 654, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 654, column: 63)
!1403 = !DILocalVariable(name: "tmp", scope: !1375, file: !76, line: 651, type: !15)
!1404 = !DILocation(line: 657, column: 11, scope: !1398)
!1405 = !DILocation(line: 657, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !76, line: 657, column: 9)
!1407 = !DILocation(line: 657, column: 9, scope: !1398)
!1408 = !DILocation(line: 658, column: 34, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 657, column: 19)
!1410 = !DILocation(line: 658, column: 44, scope: !1409)
!1411 = !DILocation(line: 658, column: 7, scope: !1409)
!1412 = !DILocation(line: 654, column: 12, scope: !1398)
!1413 = distinct !{!1413, !1391, !1414}
!1414 = !DILocation(line: 655, column: 3, scope: !1392)
!1415 = !DILocation(line: 657, column: 3, scope: !1392)
!1416 = !DILocation(line: 662, column: 3, scope: !1383)
!1417 = !DILocation(line: 664, column: 1, scope: !1375)
!1418 = distinct !DISubprogram(name: "eci_last_string", scope: !76, file: !76, line: 665, type: !662, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1419 = !DILocation(line: 665, column: 27, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !76, line: 671, column: 3)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !76, line: 670, column: 3)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !76, line: 669, column: 3)
!1423 = !DILocation(line: 665, column: 9, scope: !1420)
!1424 = !DILocalVariable(name: "tmp", scope: !1418, file: !76, line: 667, type: !72)
!1425 = !DILocation(line: 0, scope: !1418)
!1426 = !DILocation(line: 665, column: 3, scope: !1422)
!1427 = distinct !DISubprogram(name: "eci_last_string_r", scope: !76, file: !76, line: 667, type: !1428, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!72, !226}
!1430 = !DILocalVariable(name: "ptr", arg: 1, scope: !1427, file: !76, line: 667, type: !226)
!1431 = !DILocation(line: 0, scope: !1427)
!1432 = !DILocation(line: 669, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !76, line: 672, column: 3)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !76, line: 671, column: 3)
!1435 = !DILocalVariable(name: "eci_rep", scope: !1427, file: !76, line: 669, type: !74)
!1436 = !DILocation(line: 671, column: 3, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !76, line: 670, column: 3)
!1438 = !DILocation(line: 673, column: 37, scope: !1434)
!1439 = !DILocation(line: 673, column: 51, scope: !1434)
!1440 = !DILocation(line: 673, column: 63, scope: !1434)
!1441 = !DILocation(line: 673, column: 3, scope: !1434)
!1442 = distinct !DISubprogram(name: "eci_last_float", scope: !76, file: !76, line: 676, type: !1443, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!94}
!1445 = !DILocation(line: 676, column: 26, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !76, line: 682, column: 3)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !76, line: 681, column: 3)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !76, line: 680, column: 3)
!1449 = !DILocation(line: 676, column: 9, scope: !1446)
!1450 = !DILocalVariable(name: "tmp", scope: !1442, file: !76, line: 678, type: !94)
!1451 = !DILocation(line: 0, scope: !1442)
!1452 = !DILocation(line: 676, column: 3, scope: !1448)
!1453 = distinct !DISubprogram(name: "eci_last_float_r", scope: !76, file: !76, line: 678, type: !1454, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!94, !226}
!1456 = !DILocalVariable(name: "ptr", arg: 1, scope: !1453, file: !76, line: 678, type: !226)
!1457 = !DILocation(line: 0, scope: !1453)
!1458 = !DILocation(line: 680, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !76, line: 683, column: 3)
!1460 = distinct !DILexicalBlock(scope: !1453, file: !76, line: 682, column: 3)
!1461 = !DILocalVariable(name: "eci_rep", scope: !1453, file: !76, line: 680, type: !74)
!1462 = !DILocation(line: 682, column: 3, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !76, line: 681, column: 3)
!1464 = !DILocation(line: 684, column: 21, scope: !1460)
!1465 = !DILocation(line: 684, column: 35, scope: !1460)
!1466 = !DILocation(line: 684, column: 3, scope: !1460)
!1467 = distinct !DISubprogram(name: "eci_last_integer", scope: !76, file: !76, line: 687, type: !950, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1468 = !DILocation(line: 687, column: 28, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !76, line: 693, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !76, line: 692, column: 3)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !76, line: 691, column: 3)
!1472 = !DILocation(line: 687, column: 9, scope: !1469)
!1473 = !DILocalVariable(name: "tmp", scope: !1467, file: !76, line: 689, type: !15)
!1474 = !DILocation(line: 0, scope: !1467)
!1475 = !DILocation(line: 687, column: 3, scope: !1471)
!1476 = distinct !DISubprogram(name: "eci_last_integer_r", scope: !76, file: !76, line: 689, type: !961, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1477 = !DILocalVariable(name: "ptr", arg: 1, scope: !1476, file: !76, line: 689, type: !226)
!1478 = !DILocation(line: 0, scope: !1476)
!1479 = !DILocation(line: 691, column: 13, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !76, line: 694, column: 3)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !76, line: 693, column: 3)
!1482 = !DILocalVariable(name: "eci_rep", scope: !1476, file: !76, line: 691, type: !74)
!1483 = !DILocation(line: 693, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !76, line: 692, column: 3)
!1485 = !DILocation(line: 695, column: 21, scope: !1481)
!1486 = !DILocation(line: 695, column: 35, scope: !1481)
!1487 = !DILocation(line: 695, column: 3, scope: !1481)
!1488 = distinct !DISubprogram(name: "eci_last_long_integer", scope: !76, file: !76, line: 698, type: !1489, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!43}
!1491 = !DILocation(line: 698, column: 33, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !76, line: 704, column: 3)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !76, line: 703, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !76, line: 702, column: 3)
!1495 = !DILocation(line: 698, column: 9, scope: !1492)
!1496 = !DILocalVariable(name: "tmp", scope: !1488, file: !76, line: 700, type: !43)
!1497 = !DILocation(line: 0, scope: !1488)
!1498 = !DILocation(line: 698, column: 3, scope: !1494)
!1499 = distinct !DISubprogram(name: "eci_last_long_integer_r", scope: !76, file: !76, line: 700, type: !1500, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!43, !226}
!1502 = !DILocalVariable(name: "ptr", arg: 1, scope: !1499, file: !76, line: 700, type: !226)
!1503 = !DILocation(line: 0, scope: !1499)
!1504 = !DILocation(line: 702, column: 13, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !76, line: 705, column: 3)
!1506 = distinct !DILexicalBlock(scope: !1499, file: !76, line: 704, column: 3)
!1507 = !DILocalVariable(name: "eci_rep", scope: !1499, file: !76, line: 702, type: !74)
!1508 = !DILocation(line: 704, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 703, column: 3)
!1510 = !DILocation(line: 706, column: 21, scope: !1506)
!1511 = !DILocation(line: 706, column: 35, scope: !1506)
!1512 = !DILocation(line: 706, column: 3, scope: !1506)
!1513 = distinct !DISubprogram(name: "eci_last_error", scope: !76, file: !76, line: 713, type: !662, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1514 = !DILocation(line: 713, column: 26, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !76, line: 719, column: 3)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !76, line: 718, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !76, line: 717, column: 3)
!1518 = !DILocation(line: 713, column: 9, scope: !1515)
!1519 = !DILocalVariable(name: "tmp", scope: !1513, file: !76, line: 715, type: !72)
!1520 = !DILocation(line: 0, scope: !1513)
!1521 = !DILocation(line: 713, column: 3, scope: !1517)
!1522 = distinct !DISubprogram(name: "eci_last_error_r", scope: !76, file: !76, line: 719, type: !1428, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1523 = !DILocalVariable(name: "ptr", arg: 1, scope: !1522, file: !76, line: 719, type: !226)
!1524 = !DILocation(line: 0, scope: !1522)
!1525 = !DILocation(line: 721, column: 13, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !76, line: 724, column: 3)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !76, line: 723, column: 3)
!1528 = !DILocalVariable(name: "eci_rep", scope: !1522, file: !76, line: 721, type: !74)
!1529 = !DILocation(line: 723, column: 3, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !76, line: 722, column: 3)
!1531 = !DILocation(line: 725, column: 37, scope: !1527)
!1532 = !DILocation(line: 725, column: 51, scope: !1527)
!1533 = !DILocation(line: 725, column: 67, scope: !1527)
!1534 = !DILocation(line: 725, column: 3, scope: !1527)
!1535 = distinct !DISubprogram(name: "eci_last_type", scope: !76, file: !76, line: 729, type: !662, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1536 = !DILocation(line: 729, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !76, line: 735, column: 3)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !76, line: 734, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !76, line: 733, column: 3)
!1540 = !DILocation(line: 729, column: 9, scope: !1537)
!1541 = !DILocalVariable(name: "tmp", scope: !1535, file: !76, line: 731, type: !72)
!1542 = !DILocation(line: 0, scope: !1535)
!1543 = !DILocation(line: 729, column: 3, scope: !1539)
!1544 = distinct !DISubprogram(name: "eci_last_type_r", scope: !76, file: !76, line: 731, type: !1428, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1545 = !DILocalVariable(name: "ptr", arg: 1, scope: !1544, file: !76, line: 731, type: !226)
!1546 = !DILocation(line: 0, scope: !1544)
!1547 = !DILocation(line: 733, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !76, line: 736, column: 3)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !76, line: 735, column: 3)
!1550 = !DILocalVariable(name: "eci_rep", scope: !1544, file: !76, line: 733, type: !74)
!1551 = !DILocation(line: 735, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !76, line: 734, column: 3)
!1553 = !DILocation(line: 737, column: 38, scope: !1549)
!1554 = !DILocation(line: 737, column: 52, scope: !1549)
!1555 = !DILocation(line: 737, column: 27, scope: !1549)
!1556 = !DILocation(line: 737, column: 3, scope: !1549)
!1557 = distinct !DISubprogram(name: "eci_error", scope: !76, file: !76, line: 745, type: !950, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1558 = !DILocation(line: 745, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !76, line: 751, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !76, line: 750, column: 3)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !76, line: 749, column: 3)
!1562 = !DILocation(line: 745, column: 9, scope: !1559)
!1563 = !DILocalVariable(name: "tmp", scope: !1557, file: !76, line: 747, type: !15)
!1564 = !DILocation(line: 0, scope: !1557)
!1565 = !DILocation(line: 745, column: 3, scope: !1561)
!1566 = distinct !DISubprogram(name: "eci_error_r", scope: !76, file: !76, line: 752, type: !961, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1567 = !DILocalVariable(name: "ptr", arg: 1, scope: !1566, file: !76, line: 752, type: !226)
!1568 = !DILocation(line: 0, scope: !1566)
!1569 = !DILocation(line: 754, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !76, line: 759, column: 3)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !76, line: 758, column: 3)
!1572 = !DILocalVariable(name: "eci_rep", scope: !1566, file: !76, line: 754, type: !74)
!1573 = !DILocation(line: 757, column: 3, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !76, line: 755, column: 3)
!1575 = !DILocation(line: 759, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !76, line: 759, column: 3)
!1577 = !DILocalVariable(name: "tmp", scope: !1566, file: !76, line: 756, type: !15)
!1578 = !DILocation(line: 759, column: 11, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !76, line: 759, column: 7)
!1580 = !DILocation(line: 759, column: 7, scope: !1571)
!1581 = !DILocation(line: 761, column: 5, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !76, line: 759, column: 17)
!1583 = !DILocation(line: 764, column: 23, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1571, file: !76, line: 764, column: 7)
!1585 = !DILocation(line: 764, column: 37, scope: !1584)
!1586 = !DILocation(line: 764, column: 7, scope: !1584)
!1587 = !DILocation(line: 764, column: 51, scope: !1584)
!1588 = !DILocation(line: 764, column: 7, scope: !1571)
!1589 = !DILocation(line: 766, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1584, file: !76, line: 764, column: 57)
!1591 = !DILocation(line: 769, column: 23, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1571, file: !76, line: 769, column: 7)
!1593 = !DILocation(line: 769, column: 37, scope: !1592)
!1594 = !DILocation(line: 769, column: 13, scope: !1592)
!1595 = !DILocation(line: 769, column: 7, scope: !1592)
!1596 = !DILocation(line: 769, column: 55, scope: !1592)
!1597 = !DILocation(line: 769, column: 7, scope: !1571)
!1598 = !DILocalVariable(name: "res", scope: !1566, file: !76, line: 755, type: !15)
!1599 = !DILocation(line: 770, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !76, line: 769, column: 63)
!1601 = !DILocation(line: 0, scope: !1592)
!1602 = !DILocation(line: 773, column: 3, scope: !1571)
!1603 = !DILocation(line: 0, scope: !1571)
!1604 = !DILocation(line: 775, column: 1, scope: !1566)
!1605 = distinct !DISubprogram(name: "eci_events_available", scope: !76, file: !76, line: 780, type: !950, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1606 = !DILocation(line: 780, column: 32, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !76, line: 786, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !76, line: 785, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !76, line: 784, column: 3)
!1610 = !DILocation(line: 780, column: 9, scope: !1607)
!1611 = !DILocalVariable(name: "tmp", scope: !1605, file: !76, line: 782, type: !15)
!1612 = !DILocation(line: 0, scope: !1605)
!1613 = !DILocation(line: 780, column: 3, scope: !1609)
!1614 = distinct !DISubprogram(name: "eci_events_available_r", scope: !76, file: !76, line: 781, type: !961, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1615 = !DILocalVariable(name: "ptr", arg: 1, scope: !1614, file: !76, line: 781, type: !226)
!1616 = !DILocation(line: 0, scope: !1614)
!1617 = !DILocation(line: 781, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !76, line: 785, column: 3)
!1619 = distinct !DISubprogram(name: "eci_next_event", scope: !76, file: !76, line: 782, type: !218, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1620 = !DILocation(line: 782, column: 20, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !76, line: 788, column: 3)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !76, line: 787, column: 3)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !76, line: 786, column: 3)
!1624 = !DILocation(line: 782, column: 3, scope: !1621)
!1625 = !DILocation(line: 782, column: 3, scope: !1623)
!1626 = distinct !DISubprogram(name: "eci_next_event_r", scope: !76, file: !76, line: 783, type: !1010, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1627 = !DILocalVariable(name: "ptr", arg: 1, scope: !1626, file: !76, line: 783, type: !226)
!1628 = !DILocation(line: 0, scope: !1626)
!1629 = !DILocation(line: 783, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !76, line: 787, column: 3)
!1631 = distinct !DISubprogram(name: "eci_current_event", scope: !76, file: !76, line: 784, type: !662, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1632 = !DILocation(line: 784, column: 29, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !76, line: 790, column: 3)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !76, line: 789, column: 3)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !76, line: 788, column: 3)
!1636 = !DILocation(line: 784, column: 9, scope: !1633)
!1637 = !DILocalVariable(name: "tmp", scope: !1631, file: !76, line: 786, type: !72)
!1638 = !DILocation(line: 0, scope: !1631)
!1639 = !DILocation(line: 784, column: 3, scope: !1635)
!1640 = distinct !DISubprogram(name: "eci_current_event_r", scope: !76, file: !76, line: 785, type: !1428, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1641 = !DILocalVariable(name: "ptr", arg: 1, scope: !1640, file: !76, line: 785, type: !226)
!1642 = !DILocation(line: 0, scope: !1640)
!1643 = !DILocation(line: 785, column: 3, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !76, line: 789, column: 3)
!1645 = distinct !DISubprogram(name: "main", scope: !276, file: !276, line: 104, type: !1646, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!15, !15, !225}
!1648 = !DILocalVariable(name: "argc", arg: 1, scope: !1645, file: !276, line: 104, type: !15)
!1649 = !DILocation(line: 0, scope: !1645)
!1650 = !DILocalVariable(name: "argv", arg: 2, scope: !1645, file: !276, line: 104, type: !225)
!1651 = !DILocalVariable(name: "__cil_tmp7", scope: !1645, file: !276, line: 110, type: !17)
!1652 = !DILocation(line: 110, column: 9, scope: !1645)
!1653 = !DILocalVariable(name: "__cil_tmp8", scope: !1645, file: !276, line: 111, type: !17)
!1654 = !DILocation(line: 111, column: 9, scope: !1645)
!1655 = !DILocalVariable(name: "res", scope: !1645, file: !276, line: 107, type: !15)
!1656 = !DILocation(line: 109, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !276, line: 107, column: 3)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !276, line: 114, column: 3)
!1659 = distinct !DILexicalBlock(scope: !1645, file: !276, line: 113, column: 3)
!1660 = !DILocalVariable(name: "tmp", scope: !1645, file: !276, line: 108, type: !17)
!1661 = !DILocation(line: 109, column: 18, scope: !1658)
!1662 = !DILocalVariable(name: "i", scope: !1645, file: !276, line: 106, type: !15)
!1663 = !DILocation(line: 112, column: 3, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !276, line: 115, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1659, file: !276, line: 114, column: 3)
!1666 = !DILocation(line: 0, scope: !1659)
!1667 = !DILocation(line: 112, column: 13, scope: !1664)
!1668 = !DILocation(line: 112, column: 14, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !276, line: 112, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !276, line: 112, column: 13)
!1671 = !DILocation(line: 112, column: 9, scope: !1670)
!1672 = !DILocation(line: 112, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !276, line: 112, column: 23)
!1674 = !DILocation(line: 112, column: 53, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !276, line: 115, column: 5)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !276, line: 114, column: 5)
!1677 = !DILocation(line: 112, column: 46, scope: !1675)
!1678 = !DILocation(line: 112, column: 15, scope: !1675)
!1679 = !DILocalVariable(name: "tmp___0", scope: !1645, file: !276, line: 109, type: !15)
!1680 = !DILocation(line: 112, column: 9, scope: !1676)
!1681 = !DILocation(line: 112, column: 7, scope: !1676)
!1682 = distinct !{!1682, !1663, !1683}
!1683 = !DILocation(line: 114, column: 3, scope: !1664)
!1684 = !DILocation(line: 116, column: 3, scope: !1664)
!1685 = !DILocation(line: 114, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1659, file: !276, line: 114, column: 7)
!1687 = !DILocation(line: 114, column: 7, scope: !1659)
!1688 = !DILocation(line: 116, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 116, column: 9)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !276, line: 115, column: 5)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !276, line: 114, column: 17)
!1692 = !DILocation(line: 116, column: 22, scope: !1689)
!1693 = !DILocation(line: 116, column: 9, scope: !1690)
!1694 = !DILocation(line: 116, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1689, file: !276, line: 116, column: 28)
!1696 = !DILocation(line: 120, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 120, column: 9)
!1698 = !DILocation(line: 120, column: 22, scope: !1697)
!1699 = !DILocation(line: 120, column: 9, scope: !1690)
!1700 = !DILocation(line: 120, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !276, line: 120, column: 28)
!1702 = !DILocation(line: 124, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 124, column: 9)
!1704 = !DILocation(line: 124, column: 22, scope: !1703)
!1705 = !DILocation(line: 124, column: 9, scope: !1690)
!1706 = !DILocation(line: 124, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !276, line: 124, column: 28)
!1708 = !DILocation(line: 129, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 129, column: 9)
!1710 = !DILocation(line: 129, column: 22, scope: !1709)
!1711 = !DILocation(line: 129, column: 9, scope: !1690)
!1712 = !DILocation(line: 129, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !276, line: 129, column: 28)
!1714 = !DILocation(line: 129, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 129, column: 9)
!1716 = !DILocation(line: 129, column: 22, scope: !1715)
!1717 = !DILocation(line: 129, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !276, line: 129, column: 28)
!1719 = !DILocation(line: 133, column: 5, scope: !1690)
!1720 = !DILocation(line: 117, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !276, line: 136, column: 5)
!1722 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 135, column: 5)
!1723 = !DILocation(line: 118, column: 5, scope: !1690)
!1724 = !DILocation(line: 121, column: 11, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !276, line: 121, column: 5)
!1726 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 120, column: 5)
!1727 = !DILocation(line: 122, column: 5, scope: !1690)
!1728 = !DILocation(line: 125, column: 11, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !276, line: 125, column: 5)
!1730 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 124, column: 5)
!1731 = !DILocation(line: 126, column: 5, scope: !1690)
!1732 = !DILocation(line: 130, column: 11, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !276, line: 130, column: 5)
!1734 = distinct !DILexicalBlock(scope: !1690, file: !276, line: 129, column: 5)
!1735 = !DILocation(line: 131, column: 5, scope: !1690)
!1736 = !DILocation(line: 135, column: 3, scope: !1691)
!1737 = !DILocation(line: 138, column: 11, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1659, file: !276, line: 138, column: 7)
!1739 = !DILocation(line: 138, column: 7, scope: !1659)
!1740 = !DILocation(line: 139, column: 38, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !276, line: 140, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !276, line: 139, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !276, line: 138, column: 17)
!1744 = !DILocation(line: 139, column: 5, scope: !1741)
!1745 = !DILocation(line: 143, column: 3, scope: !1743)
!1746 = !DILocation(line: 142, column: 3, scope: !1659)
!1747 = distinct !DISubprogram(name: "process_option", scope: !276, file: !276, line: 575, type: !1748, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!15, !72}
!1750 = !DILocalVariable(name: "option", arg: 1, scope: !1747, file: !276, line: 575, type: !72)
!1751 = !DILocation(line: 0, scope: !1747)
!1752 = !DILocalVariable(name: "__cil_tmp8", scope: !1747, file: !276, line: 583, type: !17)
!1753 = !DILocation(line: 583, column: 9, scope: !1747)
!1754 = !DILocalVariable(name: "__cil_tmp9", scope: !1747, file: !276, line: 584, type: !17)
!1755 = !DILocation(line: 584, column: 9, scope: !1747)
!1756 = !DILocalVariable(name: "__cil_tmp10", scope: !1747, file: !276, line: 585, type: !17)
!1757 = !DILocation(line: 585, column: 9, scope: !1747)
!1758 = !DILocalVariable(name: "__cil_tmp11", scope: !1747, file: !276, line: 586, type: !17)
!1759 = !DILocation(line: 586, column: 9, scope: !1747)
!1760 = !DILocalVariable(name: "__cil_tmp12", scope: !1747, file: !276, line: 587, type: !17)
!1761 = !DILocation(line: 587, column: 9, scope: !1747)
!1762 = !DILocalVariable(name: "__cil_tmp13", scope: !1747, file: !276, line: 588, type: !17)
!1763 = !DILocation(line: 588, column: 9, scope: !1747)
!1764 = !DILocalVariable(name: "__cil_tmp14", scope: !1747, file: !276, line: 589, type: !17)
!1765 = !DILocation(line: 589, column: 9, scope: !1747)
!1766 = !DILocalVariable(name: "__cil_tmp15", scope: !1747, file: !276, line: 590, type: !17)
!1767 = !DILocation(line: 590, column: 9, scope: !1747)
!1768 = !DILocalVariable(name: "__cil_tmp16", scope: !1747, file: !276, line: 591, type: !17)
!1769 = !DILocation(line: 591, column: 9, scope: !1747)
!1770 = !DILocalVariable(name: "__cil_tmp17", scope: !1747, file: !276, line: 592, type: !17)
!1771 = !DILocation(line: 592, column: 9, scope: !1747)
!1772 = !DILocalVariable(name: "__cil_tmp18", scope: !1747, file: !276, line: 593, type: !17)
!1773 = !DILocation(line: 593, column: 9, scope: !1747)
!1774 = !DILocation(line: 577, column: 30, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !276, line: 577, column: 7)
!1776 = distinct !DILexicalBlock(scope: !1747, file: !276, line: 595, column: 3)
!1777 = !DILocation(line: 577, column: 21, scope: !1775)
!1778 = !DILocation(line: 577, column: 7, scope: !1775)
!1779 = !DILocation(line: 577, column: 35, scope: !1775)
!1780 = !DILocation(line: 577, column: 7, scope: !1776)
!1781 = !DILocation(line: 578, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !276, line: 579, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !276, line: 578, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1775, file: !276, line: 577, column: 42)
!1785 = !DILocalVariable(name: "tmp", scope: !1747, file: !276, line: 577, type: !15)
!1786 = !DILocation(line: 578, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !276, line: 578, column: 9)
!1788 = !DILocation(line: 578, column: 9, scope: !1784)
!1789 = !DILocation(line: 580, column: 23, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !276, line: 580, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !276, line: 579, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !276, line: 578, column: 19)
!1793 = !DILocation(line: 580, column: 7, scope: !1790)
!1794 = !DILocation(line: 581, column: 7, scope: !1792)
!1795 = !DILocation(line: 578, column: 17, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !276, line: 584, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !276, line: 583, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1787, file: !276, line: 582, column: 12)
!1799 = !DILocalVariable(name: "tmp___0", scope: !1747, file: !276, line: 578, type: !15)
!1800 = !DILocation(line: 578, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !276, line: 578, column: 11)
!1802 = !DILocation(line: 578, column: 11, scope: !1798)
!1803 = !DILocation(line: 580, column: 25, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !276, line: 580, column: 9)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !276, line: 579, column: 9)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !276, line: 578, column: 25)
!1807 = !DILocation(line: 580, column: 9, scope: !1804)
!1808 = !DILocation(line: 581, column: 9, scope: !1806)
!1809 = !DILocation(line: 586, column: 32, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 586, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1784, file: !276, line: 584, column: 5)
!1812 = !DILocation(line: 586, column: 23, scope: !1810)
!1813 = !DILocation(line: 586, column: 9, scope: !1810)
!1814 = !DILocation(line: 586, column: 37, scope: !1810)
!1815 = !DILocation(line: 586, column: 9, scope: !1811)
!1816 = !DILocation(line: 586, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1810, file: !276, line: 586, column: 45)
!1818 = !DILocation(line: 596, column: 32, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 596, column: 9)
!1820 = !DILocation(line: 596, column: 23, scope: !1819)
!1821 = !DILocation(line: 596, column: 9, scope: !1819)
!1822 = !DILocation(line: 596, column: 37, scope: !1819)
!1823 = !DILocation(line: 596, column: 9, scope: !1811)
!1824 = !DILocation(line: 596, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !276, line: 596, column: 45)
!1826 = !DILocation(line: 603, column: 32, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 603, column: 9)
!1828 = !DILocation(line: 603, column: 23, scope: !1827)
!1829 = !DILocation(line: 603, column: 9, scope: !1827)
!1830 = !DILocation(line: 603, column: 37, scope: !1827)
!1831 = !DILocation(line: 603, column: 9, scope: !1811)
!1832 = !DILocation(line: 603, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1827, file: !276, line: 603, column: 45)
!1834 = !DILocation(line: 609, column: 32, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 609, column: 9)
!1836 = !DILocation(line: 609, column: 23, scope: !1835)
!1837 = !DILocation(line: 609, column: 9, scope: !1835)
!1838 = !DILocation(line: 609, column: 37, scope: !1835)
!1839 = !DILocation(line: 609, column: 9, scope: !1811)
!1840 = !DILocation(line: 609, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !276, line: 609, column: 45)
!1842 = !DILocation(line: 619, column: 32, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 619, column: 9)
!1844 = !DILocation(line: 619, column: 23, scope: !1843)
!1845 = !DILocation(line: 619, column: 9, scope: !1843)
!1846 = !DILocation(line: 619, column: 37, scope: !1843)
!1847 = !DILocation(line: 619, column: 9, scope: !1811)
!1848 = !DILocation(line: 619, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !276, line: 619, column: 45)
!1850 = !DILocation(line: 626, column: 32, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 626, column: 9)
!1852 = !DILocation(line: 626, column: 23, scope: !1851)
!1853 = !DILocation(line: 626, column: 9, scope: !1851)
!1854 = !DILocation(line: 626, column: 37, scope: !1851)
!1855 = !DILocation(line: 626, column: 9, scope: !1811)
!1856 = !DILocation(line: 626, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !276, line: 626, column: 45)
!1858 = !DILocation(line: 636, column: 32, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 636, column: 9)
!1860 = !DILocation(line: 636, column: 23, scope: !1859)
!1861 = !DILocation(line: 636, column: 9, scope: !1859)
!1862 = !DILocation(line: 636, column: 37, scope: !1859)
!1863 = !DILocation(line: 636, column: 9, scope: !1811)
!1864 = !DILocation(line: 636, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !276, line: 636, column: 45)
!1866 = !DILocation(line: 644, column: 32, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 644, column: 9)
!1868 = !DILocation(line: 644, column: 23, scope: !1867)
!1869 = !DILocation(line: 644, column: 9, scope: !1867)
!1870 = !DILocation(line: 644, column: 37, scope: !1867)
!1871 = !DILocation(line: 644, column: 9, scope: !1811)
!1872 = !DILocation(line: 644, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !276, line: 644, column: 45)
!1874 = !DILocation(line: 651, column: 5, scope: !1811)
!1875 = !DILocation(line: 588, column: 20, scope: !1811)
!1876 = !DILocalVariable(name: "level", scope: !1747, file: !276, line: 579, type: !72)
!1877 = !DILocation(line: 589, column: 32, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 589, column: 9)
!1879 = !DILocation(line: 589, column: 23, scope: !1878)
!1880 = !DILocation(line: 589, column: 9, scope: !1878)
!1881 = !DILocation(line: 589, column: 37, scope: !1878)
!1882 = !DILocation(line: 589, column: 9, scope: !1811)
!1883 = !DILocation(line: 589, column: 34, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !276, line: 589, column: 11)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !276, line: 589, column: 43)
!1886 = !DILocation(line: 589, column: 25, scope: !1884)
!1887 = !DILocation(line: 589, column: 11, scope: !1884)
!1888 = !DILocation(line: 589, column: 39, scope: !1884)
!1889 = !DILocation(line: 589, column: 11, scope: !1885)
!1890 = !DILocation(line: 590, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !276, line: 591, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !276, line: 590, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1884, file: !276, line: 589, column: 45)
!1894 = !DILocalVariable(name: "tmp___1", scope: !1747, file: !276, line: 580, type: !15)
!1895 = !DILocation(line: 590, column: 28, scope: !1892)
!1896 = !DILocation(line: 592, column: 16, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !276, line: 591, column: 9)
!1898 = !DILocation(line: 591, column: 9, scope: !1897)
!1899 = !DILocation(line: 595, column: 7, scope: !1893)
!1900 = !DILocation(line: 596, column: 5, scope: !1885)
!1901 = !DILocation(line: 593, column: 5, scope: !1811)
!1902 = !DILocation(line: 598, column: 18, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 595, column: 5)
!1904 = !DILocation(line: 599, column: 5, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1903, file: !276, line: 599, column: 5)
!1906 = !DILocation(line: 600, column: 5, scope: !1811)
!1907 = !DILocation(line: 605, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !276, line: 603, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 602, column: 5)
!1910 = !DILocation(line: 605, column: 5, scope: !1908)
!1911 = !DILocation(line: 606, column: 5, scope: !1811)
!1912 = !DILocation(line: 611, column: 19, scope: !1811)
!1913 = !DILocalVariable(name: "skip", scope: !1747, file: !276, line: 581, type: !72)
!1914 = !DILocation(line: 612, column: 32, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 612, column: 9)
!1916 = !DILocation(line: 612, column: 23, scope: !1915)
!1917 = !DILocation(line: 612, column: 9, scope: !1915)
!1918 = !DILocation(line: 612, column: 37, scope: !1915)
!1919 = !DILocation(line: 612, column: 9, scope: !1811)
!1920 = !DILocation(line: 612, column: 34, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !276, line: 612, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1915, file: !276, line: 612, column: 43)
!1923 = !DILocation(line: 612, column: 25, scope: !1921)
!1924 = !DILocation(line: 612, column: 11, scope: !1921)
!1925 = !DILocation(line: 612, column: 39, scope: !1921)
!1926 = !DILocation(line: 612, column: 11, scope: !1922)
!1927 = !DILocation(line: 613, column: 24, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !276, line: 614, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !276, line: 613, column: 9)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !276, line: 612, column: 45)
!1931 = !DILocation(line: 613, column: 22, scope: !1928)
!1932 = !DILocation(line: 615, column: 16, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !276, line: 615, column: 9)
!1934 = !DILocation(line: 614, column: 9, scope: !1933)
!1935 = !DILocation(line: 618, column: 7, scope: !1930)
!1936 = !DILocation(line: 619, column: 5, scope: !1922)
!1937 = !DILocation(line: 616, column: 5, scope: !1811)
!1938 = !DILocation(line: 621, column: 18, scope: !1811)
!1939 = !DILocation(line: 623, column: 5, scope: !1811)
!1940 = !DILocation(line: 628, column: 21, scope: !1811)
!1941 = !DILocalVariable(name: "output", scope: !1747, file: !276, line: 582, type: !72)
!1942 = !DILocation(line: 629, column: 32, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 629, column: 9)
!1944 = !DILocation(line: 629, column: 23, scope: !1943)
!1945 = !DILocation(line: 629, column: 9, scope: !1943)
!1946 = !DILocation(line: 629, column: 37, scope: !1943)
!1947 = !DILocation(line: 629, column: 9, scope: !1811)
!1948 = !DILocation(line: 629, column: 34, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !276, line: 629, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !276, line: 629, column: 43)
!1951 = !DILocation(line: 629, column: 25, scope: !1949)
!1952 = !DILocation(line: 629, column: 11, scope: !1949)
!1953 = !DILocation(line: 629, column: 39, scope: !1949)
!1954 = !DILocation(line: 629, column: 11, scope: !1950)
!1955 = !DILocation(line: 630, column: 24, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1949, file: !276, line: 629, column: 45)
!1957 = !DILocation(line: 631, column: 7, scope: !1956)
!1958 = !DILocation(line: 632, column: 5, scope: !1950)
!1959 = !DILocation(line: 633, column: 5, scope: !1811)
!1960 = !DILocation(line: 638, column: 18, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 635, column: 5)
!1962 = !DILocation(line: 639, column: 5, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !276, line: 639, column: 5)
!1964 = !DILocation(line: 641, column: 5, scope: !1811)
!1965 = !DILocation(line: 646, column: 18, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 643, column: 5)
!1967 = !DILocation(line: 647, column: 5, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !276, line: 647, column: 5)
!1969 = !DILocation(line: 648, column: 5, scope: !1811)
!1970 = !DILocation(line: 653, column: 38, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !276, line: 651, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1811, file: !276, line: 650, column: 5)
!1973 = !DILocation(line: 653, column: 5, scope: !1971)
!1974 = !DILocation(line: 654, column: 21, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !276, line: 656, column: 5)
!1976 = !DILocation(line: 654, column: 5, scope: !1975)
!1977 = !DILocation(line: 655, column: 5, scope: !1811)
!1978 = !DILocation(line: 658, column: 3, scope: !1784)
!1979 = !DILocation(line: 660, column: 3, scope: !1776)
!1980 = !DILocation(line: 0, scope: !1776)
!1981 = !DILocation(line: 662, column: 1, scope: !1747)
!1982 = distinct !DISubprogram(name: "flush_tracks", scope: !276, file: !276, line: 188, type: !950, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1983 = !DILocalVariable(name: "__cil_tmp4", scope: !1982, file: !276, line: 193, type: !17)
!1984 = !DILocation(line: 193, column: 9, scope: !1982)
!1985 = !DILocation(line: 190, column: 9, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !276, line: 197, column: 3)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !276, line: 196, column: 3)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !276, line: 195, column: 3)
!1989 = !DILocalVariable(name: "tmp", scope: !1982, file: !276, line: 191, type: !17)
!1990 = !DILocation(line: 0, scope: !1982)
!1991 = !DILocalVariable(name: "path", scope: !1982, file: !276, line: 190, type: !17)
!1992 = !DILocation(line: 191, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1987, file: !276, line: 191, column: 3)
!1994 = !DILocalVariable(name: "tmp___0", scope: !1982, file: !276, line: 192, type: !15)
!1995 = !DILocation(line: 191, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1988, file: !276, line: 191, column: 7)
!1997 = !DILocation(line: 191, column: 7, scope: !1988)
!1998 = !DILocation(line: 192, column: 5, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !276, line: 193, column: 5)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !276, line: 192, column: 5)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !276, line: 191, column: 21)
!2002 = !DILocation(line: 193, column: 5, scope: !2001)
!2003 = !DILocation(line: 195, column: 3, scope: !1988)
!2004 = !DILocation(line: 0, scope: !1988)
!2005 = !DILocation(line: 197, column: 1, scope: !1982)
!2006 = distinct !DISubprogram(name: "list_tracks", scope: !276, file: !276, line: 477, type: !950, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2007 = !DILocalVariable(name: "__cil_tmp5", scope: !2006, file: !276, line: 483, type: !17)
!2008 = !DILocation(line: 483, column: 9, scope: !2006)
!2009 = !DILocalVariable(name: "__cil_tmp6", scope: !2006, file: !276, line: 484, type: !17)
!2010 = !DILocation(line: 484, column: 9, scope: !2006)
!2011 = !DILocation(line: 480, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !276, line: 488, column: 3)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !276, line: 487, column: 3)
!2014 = distinct !DILexicalBlock(scope: !2006, file: !276, line: 486, column: 3)
!2015 = !DILocalVariable(name: "tmp", scope: !2006, file: !276, line: 481, type: !17)
!2016 = !DILocation(line: 0, scope: !2006)
!2017 = !DILocalVariable(name: "path", scope: !2006, file: !276, line: 480, type: !17)
!2018 = !DILocation(line: 482, column: 8, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !276, line: 481, column: 3)
!2020 = !DILocalVariable(name: "f1", scope: !2006, file: !276, line: 479, type: !8)
!2021 = !DILocation(line: 483, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2014, file: !276, line: 483, column: 7)
!2023 = !DILocation(line: 483, column: 26, scope: !2022)
!2024 = !DILocation(line: 483, column: 7, scope: !2014)
!2025 = !DILocation(line: 485, column: 5, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !276, line: 485, column: 5)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !276, line: 484, column: 5)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !276, line: 483, column: 58)
!2029 = !DILocation(line: 485, column: 15, scope: !2026)
!2030 = !DILocation(line: 485, column: 11, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !276, line: 489, column: 7)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !276, line: 488, column: 7)
!2033 = distinct !DILexicalBlock(scope: !2026, file: !276, line: 485, column: 15)
!2034 = !DILocalVariable(name: "c", scope: !2006, file: !276, line: 482, type: !15)
!2035 = !DILocation(line: 485, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !276, line: 485, column: 11)
!2037 = !DILocation(line: 485, column: 11, scope: !2033)
!2038 = !DILocation(line: 485, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !276, line: 485, column: 24)
!2040 = !DILocation(line: 486, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !276, line: 488, column: 7)
!2042 = distinct !DILexicalBlock(scope: !2033, file: !276, line: 487, column: 7)
!2043 = distinct !{!2043, !2025, !2044}
!2044 = !DILocation(line: 489, column: 5, scope: !2026)
!2045 = !DILocation(line: 491, column: 5, scope: !2026)
!2046 = !DILocation(line: 488, column: 5, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !276, line: 495, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2028, file: !276, line: 494, column: 5)
!2049 = !DILocation(line: 489, column: 5, scope: !2028)
!2050 = !DILocation(line: 491, column: 3, scope: !2014)
!2051 = !DILocation(line: 0, scope: !2014)
!2052 = !DILocation(line: 493, column: 1, scope: !2006)
!2053 = distinct !DISubprogram(name: "queue_tracks", scope: !276, file: !276, line: 663, type: !1646, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2054 = !DILocalVariable(name: "argc", arg: 1, scope: !2053, file: !276, line: 663, type: !15)
!2055 = !DILocation(line: 0, scope: !2053)
!2056 = !DILocalVariable(name: "argv", arg: 2, scope: !2053, file: !276, line: 663, type: !225)
!2057 = !DILocalVariable(name: "__cil_tmp14", scope: !2053, file: !276, line: 676, type: !17)
!2058 = !DILocation(line: 676, column: 9, scope: !2053)
!2059 = !DILocalVariable(name: "__cil_tmp15", scope: !2053, file: !276, line: 677, type: !17)
!2060 = !DILocation(line: 677, column: 9, scope: !2053)
!2061 = !DILocalVariable(name: "__cil_tmp16", scope: !2053, file: !276, line: 678, type: !17)
!2062 = !DILocation(line: 678, column: 9, scope: !2053)
!2063 = !DILocalVariable(name: "__cil_tmp17", scope: !2053, file: !276, line: 679, type: !17)
!2064 = !DILocation(line: 679, column: 9, scope: !2053)
!2065 = !DILocalVariable(name: "__cil_tmp18", scope: !2053, file: !276, line: 680, type: !17)
!2066 = !DILocation(line: 680, column: 9, scope: !2053)
!2067 = !DILocalVariable(name: "res", scope: !2053, file: !276, line: 666, type: !15)
!2068 = !DILocation(line: 669, column: 10, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !276, line: 666, column: 3)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !276, line: 683, column: 3)
!2071 = distinct !DILexicalBlock(scope: !2053, file: !276, line: 682, column: 3)
!2072 = !DILocalVariable(name: "path", scope: !2053, file: !276, line: 667, type: !17)
!2073 = !DILocation(line: 672, column: 8, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !276, line: 671, column: 3)
!2075 = !DILocalVariable(name: "f1", scope: !2053, file: !276, line: 668, type: !8)
!2076 = !DILocation(line: 673, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !276, line: 673, column: 7)
!2078 = !DILocation(line: 673, column: 26, scope: !2077)
!2079 = !DILocation(line: 673, column: 7, scope: !2071)
!2080 = !DILocalVariable(name: "i", scope: !2053, file: !276, line: 665, type: !15)
!2081 = !DILocation(line: 674, column: 5, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !276, line: 676, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !276, line: 675, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2077, file: !276, line: 673, column: 58)
!2085 = !DILocation(line: 0, scope: !2084)
!2086 = !DILocation(line: 674, column: 15, scope: !2082)
!2087 = !DILocation(line: 674, column: 16, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !276, line: 674, column: 11)
!2089 = distinct !DILexicalBlock(scope: !2082, file: !276, line: 674, column: 15)
!2090 = !DILocation(line: 674, column: 11, scope: !2089)
!2091 = !DILocation(line: 674, column: 9, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !276, line: 674, column: 25)
!2093 = !DILocation(line: 675, column: 20, scope: !2089)
!2094 = !DILocation(line: 675, column: 13, scope: !2089)
!2095 = !DILocation(line: 675, column: 25, scope: !2089)
!2096 = !DILocation(line: 675, column: 11, scope: !2089)
!2097 = !DILocalVariable(name: "c", scope: !2053, file: !276, line: 669, type: !18)
!2098 = !DILocation(line: 678, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2089, file: !276, line: 678, column: 11)
!2100 = !DILocation(line: 678, column: 19, scope: !2099)
!2101 = !DILocation(line: 678, column: 11, scope: !2089)
!2102 = !DILocation(line: 680, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !276, line: 680, column: 13)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !276, line: 678, column: 26)
!2105 = !DILocation(line: 680, column: 21, scope: !2103)
!2106 = !DILocation(line: 680, column: 13, scope: !2104)
!2107 = !DILocation(line: 682, column: 51, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !276, line: 682, column: 11)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !276, line: 681, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2103, file: !276, line: 680, column: 28)
!2111 = !DILocation(line: 682, column: 44, scope: !2108)
!2112 = !DILocation(line: 682, column: 21, scope: !2108)
!2113 = !DILocalVariable(name: "tmp___0", scope: !2053, file: !276, line: 671, type: !64)
!2114 = !DILocation(line: 682, column: 35, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !276, line: 684, column: 11)
!2116 = !DILocation(line: 682, column: 46, scope: !2115)
!2117 = !DILocation(line: 682, column: 21, scope: !2115)
!2118 = !DILocalVariable(name: "tmp___1", scope: !2053, file: !276, line: 672, type: !7)
!2119 = !DILocalVariable(name: "tmp", scope: !2053, file: !276, line: 670, type: !17)
!2120 = !DILocation(line: 683, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2109, file: !276, line: 683, column: 11)
!2122 = !DILocalVariable(name: "tmp___3", scope: !2053, file: !276, line: 674, type: !17)
!2123 = !DILocation(line: 683, column: 15, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2110, file: !276, line: 683, column: 15)
!2125 = !DILocation(line: 683, column: 39, scope: !2124)
!2126 = !DILocation(line: 683, column: 15, scope: !2110)
!2127 = !DILocation(line: 684, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !276, line: 685, column: 13)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !276, line: 684, column: 13)
!2130 = distinct !DILexicalBlock(scope: !2124, file: !276, line: 683, column: 71)
!2131 = !DILocation(line: 685, column: 90, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !276, line: 686, column: 13)
!2133 = !DILocation(line: 685, column: 83, scope: !2132)
!2134 = !DILocation(line: 685, column: 13, scope: !2132)
!2135 = !DILocation(line: 687, column: 27, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !276, line: 687, column: 13)
!2137 = !DILocation(line: 687, column: 20, scope: !2136)
!2138 = !DILocation(line: 686, column: 13, scope: !2136)
!2139 = !DILocation(line: 687, column: 23, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2129, file: !276, line: 689, column: 13)
!2141 = !DILocalVariable(name: "tmp___2", scope: !2053, file: !276, line: 673, type: !64)
!2142 = !DILocation(line: 687, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2129, file: !276, line: 689, column: 13)
!2144 = !DILocation(line: 690, column: 11, scope: !2130)
!2145 = !DILocation(line: 689, column: 11, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !276, line: 692, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2110, file: !276, line: 691, column: 11)
!2148 = !DILocation(line: 692, column: 9, scope: !2110)
!2149 = !DILocation(line: 693, column: 25, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !276, line: 694, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !276, line: 693, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2103, file: !276, line: 692, column: 16)
!2153 = !DILocation(line: 693, column: 18, scope: !2150)
!2154 = !DILocation(line: 692, column: 11, scope: !2150)
!2155 = !DILocation(line: 693, column: 51, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !276, line: 695, column: 11)
!2157 = !DILocation(line: 693, column: 44, scope: !2156)
!2158 = !DILocation(line: 693, column: 21, scope: !2156)
!2159 = !DILocalVariable(name: "tmp___4", scope: !2053, file: !276, line: 675, type: !64)
!2160 = !DILocation(line: 693, column: 58, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2151, file: !276, line: 695, column: 11)
!2162 = !DILocation(line: 693, column: 51, scope: !2161)
!2163 = !DILocation(line: 693, column: 11, scope: !2161)
!2164 = !DILocation(line: 695, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !276, line: 699, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2104, file: !276, line: 698, column: 9)
!2167 = !DILocation(line: 698, column: 7, scope: !2104)
!2168 = !DILocation(line: 674, column: 9, scope: !2089)
!2169 = distinct !{!2169, !2081, !2170}
!2170 = !DILocation(line: 675, column: 5, scope: !2082)
!2171 = !DILocation(line: 677, column: 5, scope: !2082)
!2172 = !DILocation(line: 698, column: 5, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !276, line: 681, column: 5)
!2174 = distinct !DILexicalBlock(scope: !2084, file: !276, line: 680, column: 5)
!2175 = !DILocation(line: 701, column: 3, scope: !2084)
!2176 = !DILocation(line: 0, scope: !2071)
!2177 = !DILocation(line: 704, column: 3, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !276, line: 704, column: 3)
!2179 = distinct !DILexicalBlock(scope: !2071, file: !276, line: 703, column: 3)
!2180 = !DILocation(line: 706, column: 3, scope: !2071)
!2181 = distinct !DISubprogram(name: "play_tracks", scope: !276, file: !276, line: 501, type: !1646, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2182 = !DILocalVariable(name: "argc", arg: 1, scope: !2181, file: !276, line: 501, type: !15)
!2183 = !DILocation(line: 0, scope: !2181)
!2184 = !DILocalVariable(name: "argv", arg: 2, scope: !2181, file: !276, line: 501, type: !225)
!2185 = !DILocalVariable(name: "eci", scope: !2181, file: !276, line: 503, type: !226)
!2186 = !DILocation(line: 503, column: 16, scope: !2181)
!2187 = !DILocalVariable(name: "tracknum", scope: !2181, file: !276, line: 504, type: !15)
!2188 = !DILocation(line: 504, column: 7, scope: !2181)
!2189 = !DILocalVariable(name: "__cil_tmp10", scope: !2181, file: !276, line: 510, type: !17)
!2190 = !DILocation(line: 510, column: 9, scope: !2181)
!2191 = !DILocalVariable(name: "__cil_tmp11", scope: !2181, file: !276, line: 511, type: !17)
!2192 = !DILocation(line: 511, column: 9, scope: !2181)
!2193 = !DILocalVariable(name: "__cil_tmp12", scope: !2181, file: !276, line: 512, type: !17)
!2194 = !DILocation(line: 512, column: 9, scope: !2181)
!2195 = !DILocalVariable(name: "__cil_tmp13", scope: !2181, file: !276, line: 513, type: !17)
!2196 = !DILocation(line: 513, column: 9, scope: !2181)
!2197 = !DILocalVariable(name: "__cil_tmp14", scope: !2181, file: !276, line: 514, type: !17)
!2198 = !DILocation(line: 514, column: 9, scope: !2181)
!2199 = !DILocation(line: 503, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !276, line: 517, column: 3)
!2201 = distinct !DILexicalBlock(scope: !2181, file: !276, line: 516, column: 3)
!2202 = !DILocation(line: 504, column: 12, scope: !2200)
!2203 = !DILocalVariable(name: "stop", scope: !2181, file: !276, line: 505, type: !15)
!2204 = !DILocalVariable(name: "nexttrack", scope: !2181, file: !276, line: 506, type: !72)
!2205 = !DILocation(line: 510, column: 15, scope: !2200)
!2206 = !DILocation(line: 510, column: 12, scope: !2200)
!2207 = !DILocation(line: 512, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !276, line: 511, column: 3)
!2209 = !DILocation(line: 514, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2201, file: !276, line: 514, column: 7)
!2211 = !DILocation(line: 514, column: 33, scope: !2210)
!2212 = !DILocation(line: 514, column: 7, scope: !2201)
!2213 = !DILocation(line: 515, column: 5, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !276, line: 516, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !276, line: 515, column: 5)
!2216 = distinct !DILexicalBlock(scope: !2210, file: !276, line: 514, column: 65)
!2217 = !DILocation(line: 517, column: 5, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !276, line: 519, column: 5)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !276, line: 518, column: 5)
!2220 = !DILocation(line: 0, scope: !2201)
!2221 = !DILocation(line: 517, column: 15, scope: !2218)
!2222 = !DILocation(line: 517, column: 14, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !276, line: 517, column: 11)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !276, line: 517, column: 15)
!2225 = !DILocation(line: 517, column: 40, scope: !2223)
!2226 = !DILocation(line: 517, column: 11, scope: !2224)
!2227 = !DILocation(line: 517, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !276, line: 517, column: 73)
!2229 = !DILocalVariable(name: "timeleft", scope: !2181, file: !276, line: 507, type: !66)
!2230 = !DILocation(line: 520, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !276, line: 520, column: 7)
!2232 = distinct !DILexicalBlock(scope: !2224, file: !276, line: 519, column: 7)
!2233 = !DILocation(line: 0, scope: !2224)
!2234 = !DILocation(line: 520, column: 17, scope: !2231)
!2235 = !DILocation(line: 520, column: 25, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !276, line: 520, column: 13)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !276, line: 520, column: 17)
!2238 = !DILocation(line: 520, column: 13, scope: !2237)
!2239 = !DILocation(line: 520, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !276, line: 520, column: 32)
!2241 = !DILocation(line: 521, column: 20, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !276, line: 523, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !276, line: 522, column: 9)
!2244 = !DILocation(line: 523, column: 22, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2237, file: !276, line: 523, column: 13)
!2246 = !DILocation(line: 523, column: 13, scope: !2237)
!2247 = !DILocation(line: 523, column: 15, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !276, line: 523, column: 15)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !276, line: 523, column: 28)
!2250 = !DILocation(line: 523, column: 33, scope: !2248)
!2251 = !DILocation(line: 523, column: 15, scope: !2249)
!2252 = !DILocation(line: 524, column: 46, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !276, line: 525, column: 13)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !276, line: 524, column: 13)
!2255 = distinct !DILexicalBlock(scope: !2248, file: !276, line: 523, column: 38)
!2256 = !DILocation(line: 524, column: 13, scope: !2253)
!2257 = !DILocation(line: 525, column: 27, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !276, line: 526, column: 13)
!2259 = !DILocation(line: 525, column: 13, scope: !2258)
!2260 = !DILocation(line: 527, column: 13, scope: !2255)
!2261 = !DILocation(line: 529, column: 9, scope: !2249)
!2262 = distinct !{!2262, !2230, !2263}
!2263 = !DILocation(line: 530, column: 7, scope: !2231)
!2264 = !DILocation(line: 532, column: 7, scope: !2231)
!2265 = !DILocation(line: 532, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2224, file: !276, line: 532, column: 11)
!2267 = !DILocation(line: 532, column: 11, scope: !2224)
!2268 = !DILocation(line: 532, column: 9, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !276, line: 532, column: 17)
!2270 = !DILocation(line: 534, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2224, file: !276, line: 534, column: 11)
!2272 = !DILocation(line: 534, column: 29, scope: !2271)
!2273 = !DILocation(line: 534, column: 11, scope: !2224)
!2274 = !DILocation(line: 535, column: 23, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !276, line: 536, column: 9)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !276, line: 535, column: 9)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !276, line: 534, column: 35)
!2278 = !DILocation(line: 535, column: 9, scope: !2275)
!2279 = !DILocation(line: 538, column: 7, scope: !2277)
!2280 = !DILocation(line: 538, column: 9, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !276, line: 540, column: 9)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !276, line: 539, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2271, file: !276, line: 538, column: 14)
!2284 = !DILocation(line: 541, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2224, file: !276, line: 541, column: 11)
!2286 = !DILocation(line: 541, column: 29, scope: !2285)
!2287 = !DILocation(line: 541, column: 11, scope: !2224)
!2288 = !DILocation(line: 542, column: 27, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !276, line: 542, column: 9)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !276, line: 541, column: 35)
!2291 = !DILocation(line: 543, column: 18, scope: !2289)
!2292 = !DILocation(line: 544, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !276, line: 544, column: 9)
!2294 = !DILocation(line: 547, column: 7, scope: !2290)
!2295 = !DILocation(line: 541, column: 33, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !276, line: 549, column: 9)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !276, line: 548, column: 9)
!2298 = distinct !DILexicalBlock(scope: !2285, file: !276, line: 547, column: 14)
!2299 = !DILocation(line: 541, column: 15, scope: !2296)
!2300 = !DILocalVariable(name: "tmp", scope: !2181, file: !276, line: 508, type: !72)
!2301 = !DILocation(line: 541, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !276, line: 543, column: 9)
!2303 = !DILocalVariable(name: "tmp___0", scope: !2181, file: !276, line: 509, type: !15)
!2304 = !DILocation(line: 541, column: 21, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2298, file: !276, line: 541, column: 13)
!2306 = !DILocation(line: 541, column: 13, scope: !2298)
!2307 = !DILocation(line: 542, column: 29, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !276, line: 542, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !276, line: 541, column: 27)
!2310 = !DILocation(line: 543, column: 20, scope: !2308)
!2311 = !DILocation(line: 544, column: 23, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !276, line: 544, column: 11)
!2313 = !DILocation(line: 547, column: 9, scope: !2309)
!2314 = !DILocation(line: 0, scope: !2285)
!2315 = distinct !{!2315, !2217, !2316}
!2316 = !DILocation(line: 549, column: 5, scope: !2218)
!2317 = !DILocation(line: 551, column: 5, scope: !2218)
!2318 = !DILocation(line: 549, column: 38, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !276, line: 555, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2216, file: !276, line: 554, column: 5)
!2321 = !DILocation(line: 549, column: 5, scope: !2319)
!2322 = !DILocation(line: 552, column: 14, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2216, file: !276, line: 552, column: 9)
!2324 = !DILocation(line: 552, column: 9, scope: !2216)
!2325 = !DILocation(line: 553, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !276, line: 554, column: 7)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !276, line: 553, column: 7)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !276, line: 552, column: 20)
!2329 = !DILocation(line: 553, column: 7, scope: !2326)
!2330 = !DILocation(line: 556, column: 5, scope: !2328)
!2331 = !DILocation(line: 557, column: 3, scope: !2216)
!2332 = !DILocation(line: 557, column: 3, scope: !2201)
!2333 = distinct !DISubprogram(name: "make_human", scope: !2334, file: !2334, line: 306, type: !2335, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2334 = !DIFile(filename: "/home/wslee/benchmarks/sound/ecasound2.2-2.7.0/ecatools/ecalength.c", directory: "")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !15, !2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!2339 = !DILocalVariable(name: "length", arg: 1, scope: !2333, file: !2334, line: 306, type: !15)
!2340 = !DILocation(line: 0, scope: !2333)
!2341 = !DILocalVariable(name: "min", arg: 2, scope: !2333, file: !2334, line: 306, type: !2337)
!2342 = !DILocalVariable(name: "sec", arg: 3, scope: !2333, file: !2334, line: 306, type: !2338)
!2343 = !DILocation(line: 307, column: 33, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2333, file: !2334, line: 310, column: 3)
!2345 = !DILocation(line: 307, column: 8, scope: !2344)
!2346 = !DILocation(line: 308, column: 34, scope: !2344)
!2347 = !DILocation(line: 308, column: 10, scope: !2344)
!2348 = !DILocation(line: 308, column: 8, scope: !2344)
!2349 = !DILocation(line: 309, column: 3, scope: !2344)
!2350 = distinct !DISubprogram(name: "print_help", scope: !2334, file: !2334, line: 311, type: !2351, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !17}
!2353 = !DILocalVariable(name: "name", arg: 1, scope: !2350, file: !2334, line: 311, type: !17)
!2354 = !DILocation(line: 0, scope: !2350)
!2355 = !DILocalVariable(name: "__cil_tmp2", scope: !2350, file: !2334, line: 313, type: !17)
!2356 = !DILocation(line: 313, column: 9, scope: !2350)
!2357 = !DILocation(line: 312, column: 3, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2334, line: 317, column: 3)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2334, line: 316, column: 3)
!2360 = distinct !DILexicalBlock(scope: !2350, file: !2334, line: 315, column: 3)
!2361 = !DILocation(line: 336, column: 3, scope: !2360)
!2362 = distinct !DISubprogram(name: "print_usage", scope: !2334, file: !2334, line: 338, type: !2351, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2363 = !DILocalVariable(name: "name", arg: 1, scope: !2362, file: !2334, line: 338, type: !17)
!2364 = !DILocation(line: 0, scope: !2362)
!2365 = !DILocalVariable(name: "__cil_tmp2", scope: !2362, file: !2334, line: 340, type: !17)
!2366 = !DILocation(line: 340, column: 9, scope: !2362)
!2367 = !DILocation(line: 339, column: 3, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !2334, line: 344, column: 3)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !2334, line: 343, column: 3)
!2370 = distinct !DILexicalBlock(scope: !2362, file: !2334, line: 342, column: 3)
!2371 = !DILocation(line: 340, column: 3, scope: !2370)
!2372 = distinct !DISubprogram(name: "eci_string_free", scope: !76, file: !76, line: 823, type: !2373, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2376 = !DILocalVariable(name: "str", arg: 1, scope: !2372, file: !76, line: 823, type: !2375)
!2377 = !DILocation(line: 0, scope: !2372)
!2378 = !DILocalVariable(name: "__cil_tmp2", scope: !2372, file: !76, line: 825, type: !17)
!2379 = !DILocation(line: 825, column: 9, scope: !2372)
!2380 = !DILocalVariable(name: "__cil_tmp3", scope: !2372, file: !76, line: 826, type: !17)
!2381 = !DILocation(line: 826, column: 9, scope: !2372)
!2382 = !DILocalVariable(name: "__cil_tmp4", scope: !2372, file: !76, line: 827, type: !17)
!2383 = !DILocation(line: 827, column: 9, scope: !2372)
!2384 = !DILocation(line: 825, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !76, line: 825, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2372, file: !76, line: 829, column: 3)
!2387 = !DILocation(line: 825, column: 7, scope: !2386)
!2388 = !DILocation(line: 825, column: 38, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !76, line: 827, column: 5)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !76, line: 826, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2385, file: !76, line: 825, column: 14)
!2392 = !DILocation(line: 825, column: 5, scope: !2389)
!2393 = !DILocation(line: 830, column: 3, scope: !2391)
!2394 = !DILocation(line: 826, column: 21, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !76, line: 832, column: 3)
!2396 = distinct !DILexicalBlock(scope: !2386, file: !76, line: 831, column: 3)
!2397 = !DILocation(line: 826, column: 3, scope: !2395)
!2398 = !DILocation(line: 827, column: 8, scope: !2396)
!2399 = !DILocation(line: 827, column: 13, scope: !2396)
!2400 = !DILocation(line: 828, column: 8, scope: !2396)
!2401 = !DILocation(line: 828, column: 13, scope: !2396)
!2402 = !DILocation(line: 829, column: 3, scope: !2386)
!2403 = distinct !DISubprogram(name: "eci_impl_los_list_clear", scope: !76, file: !76, line: 997, type: !2404, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !103}
!2406 = !DILocalVariable(name: "ptr", arg: 1, scope: !2403, file: !76, line: 997, type: !103)
!2407 = !DILocation(line: 0, scope: !2403)
!2408 = !DILocalVariable(name: "i", scope: !2403, file: !76, line: 999, type: !103)
!2409 = !DILocation(line: 1003, column: 3, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !76, line: 1001, column: 3)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !76, line: 1000, column: 3)
!2412 = distinct !DILexicalBlock(scope: !2403, file: !76, line: 1002, column: 3)
!2413 = !DILocation(line: 0, scope: !2412)
!2414 = !DILocation(line: 1003, column: 13, scope: !2410)
!2415 = !DILocation(line: 1003, column: 12, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !76, line: 1003, column: 9)
!2417 = distinct !DILexicalBlock(scope: !2410, file: !76, line: 1003, column: 13)
!2418 = !DILocation(line: 1003, column: 30, scope: !2416)
!2419 = !DILocation(line: 1003, column: 9, scope: !2417)
!2420 = !DILocation(line: 1003, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !76, line: 1003, column: 63)
!2422 = !DILocation(line: 1005, column: 15, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2417, file: !76, line: 1005, column: 5)
!2424 = !DILocalVariable(name: "next", scope: !2403, file: !76, line: 1000, type: !103)
!2425 = !DILocation(line: 1006, column: 26, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !76, line: 1006, column: 5)
!2427 = !DILocation(line: 1006, column: 5, scope: !2426)
!2428 = !DILocation(line: 1007, column: 10, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !76, line: 1008, column: 5)
!2430 = !DILocation(line: 1007, column: 5, scope: !2429)
!2431 = distinct !{!2431, !2409, !2432}
!2432 = !DILocation(line: 1010, column: 3, scope: !2410)
!2433 = !DILocation(line: 1012, column: 3, scope: !2410)
!2434 = !DILocation(line: 1010, column: 3, scope: !2412)
!2435 = distinct !DISubprogram(name: "eci_string_clear", scope: !76, file: !76, line: 799, type: !2373, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2436 = !DILocalVariable(name: "str", arg: 1, scope: !2435, file: !76, line: 799, type: !2375)
!2437 = !DILocation(line: 0, scope: !2435)
!2438 = !DILocalVariable(name: "__cil_tmp2", scope: !2435, file: !76, line: 801, type: !17)
!2439 = !DILocation(line: 801, column: 9, scope: !2435)
!2440 = !DILocalVariable(name: "__cil_tmp3", scope: !2435, file: !76, line: 802, type: !17)
!2441 = !DILocation(line: 802, column: 9, scope: !2435)
!2442 = !DILocalVariable(name: "__cil_tmp4", scope: !2435, file: !76, line: 803, type: !17)
!2443 = !DILocation(line: 803, column: 9, scope: !2435)
!2444 = !DILocalVariable(name: "__cil_tmp5", scope: !2435, file: !76, line: 804, type: !17)
!2445 = !DILocation(line: 804, column: 9, scope: !2435)
!2446 = !DILocalVariable(name: "__cil_tmp6", scope: !2435, file: !76, line: 805, type: !17)
!2447 = !DILocation(line: 805, column: 9, scope: !2435)
!2448 = !DILocalVariable(name: "__cil_tmp7", scope: !2435, file: !76, line: 806, type: !17)
!2449 = !DILocation(line: 806, column: 9, scope: !2435)
!2450 = !DILocation(line: 801, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !76, line: 801, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2435, file: !76, line: 808, column: 3)
!2453 = !DILocation(line: 801, column: 7, scope: !2452)
!2454 = !DILocation(line: 801, column: 38, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !76, line: 803, column: 5)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !76, line: 802, column: 5)
!2457 = distinct !DILexicalBlock(scope: !2451, file: !76, line: 801, column: 14)
!2458 = !DILocation(line: 801, column: 5, scope: !2455)
!2459 = !DILocation(line: 806, column: 3, scope: !2457)
!2460 = !DILocation(line: 802, column: 8, scope: !2452)
!2461 = !DILocation(line: 802, column: 13, scope: !2452)
!2462 = !DILocation(line: 803, column: 12, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2452, file: !76, line: 803, column: 7)
!2464 = !DILocation(line: 803, column: 17, scope: !2463)
!2465 = !DILocation(line: 803, column: 7, scope: !2452)
!2466 = !DILocation(line: 804, column: 5, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !76, line: 805, column: 5)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !76, line: 804, column: 5)
!2469 = distinct !DILexicalBlock(scope: !2463, file: !76, line: 803, column: 23)
!2470 = !DILocation(line: 807, column: 3, scope: !2469)
!2471 = !DILocation(line: 806, column: 12, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2463, file: !76, line: 807, column: 10)
!2473 = !DILocation(line: 806, column: 14, scope: !2472)
!2474 = !DILocation(line: 806, column: 19, scope: !2472)
!2475 = !DILocation(line: 807, column: 23, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2452, file: !76, line: 807, column: 7)
!2477 = !DILocation(line: 807, column: 25, scope: !2476)
!2478 = !DILocation(line: 807, column: 16, scope: !2476)
!2479 = !DILocation(line: 807, column: 10, scope: !2476)
!2480 = !DILocation(line: 807, column: 30, scope: !2476)
!2481 = !DILocation(line: 807, column: 7, scope: !2452)
!2482 = !DILocation(line: 807, column: 38, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !76, line: 809, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !76, line: 808, column: 5)
!2485 = distinct !DILexicalBlock(scope: !2476, file: !76, line: 807, column: 37)
!2486 = !DILocation(line: 807, column: 5, scope: !2483)
!2487 = !DILocation(line: 812, column: 3, scope: !2485)
!2488 = !DILocation(line: 808, column: 3, scope: !2452)
!2489 = distinct !DISubprogram(name: "eci_string_add", scope: !76, file: !76, line: 844, type: !2490, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !2375, !15, !72, !15}
!2492 = !DILocalVariable(name: "dst", arg: 1, scope: !2489, file: !76, line: 844, type: !2375)
!2493 = !DILocation(line: 0, scope: !2489)
!2494 = !DILocalVariable(name: "at", arg: 2, scope: !2489, file: !76, line: 844, type: !15)
!2495 = !DILocalVariable(name: "src", arg: 3, scope: !2489, file: !76, line: 844, type: !72)
!2496 = !DILocalVariable(name: "len", arg: 4, scope: !2489, file: !76, line: 844, type: !15)
!2497 = !DILocalVariable(name: "__cil_tmp10", scope: !2489, file: !76, line: 851, type: !17)
!2498 = !DILocation(line: 851, column: 9, scope: !2489)
!2499 = !DILocalVariable(name: "__cil_tmp11", scope: !2489, file: !76, line: 852, type: !17)
!2500 = !DILocation(line: 852, column: 9, scope: !2489)
!2501 = !DILocalVariable(name: "__cil_tmp12", scope: !2489, file: !76, line: 853, type: !17)
!2502 = !DILocation(line: 853, column: 9, scope: !2489)
!2503 = !DILocalVariable(name: "__cil_tmp13", scope: !2489, file: !76, line: 854, type: !17)
!2504 = !DILocation(line: 854, column: 9, scope: !2489)
!2505 = !DILocalVariable(name: "__cil_tmp14", scope: !2489, file: !76, line: 855, type: !17)
!2506 = !DILocation(line: 855, column: 9, scope: !2489)
!2507 = !DILocalVariable(name: "__cil_tmp15", scope: !2489, file: !76, line: 856, type: !17)
!2508 = !DILocation(line: 856, column: 9, scope: !2489)
!2509 = !DILocalVariable(name: "__cil_tmp16", scope: !2489, file: !76, line: 857, type: !17)
!2510 = !DILocation(line: 857, column: 9, scope: !2489)
!2511 = !DILocalVariable(name: "__cil_tmp17", scope: !2489, file: !76, line: 858, type: !17)
!2512 = !DILocation(line: 858, column: 9, scope: !2489)
!2513 = !DILocalVariable(name: "__cil_tmp18", scope: !2489, file: !76, line: 859, type: !17)
!2514 = !DILocation(line: 859, column: 9, scope: !2489)
!2515 = !DILocalVariable(name: "__cil_tmp19", scope: !2489, file: !76, line: 860, type: !17)
!2516 = !DILocation(line: 860, column: 9, scope: !2489)
!2517 = !DILocalVariable(name: "__cil_tmp20", scope: !2489, file: !76, line: 861, type: !17)
!2518 = !DILocation(line: 861, column: 9, scope: !2489)
!2519 = !DILocalVariable(name: "__cil_tmp21", scope: !2489, file: !76, line: 862, type: !17)
!2520 = !DILocation(line: 862, column: 9, scope: !2489)
!2521 = !DILocation(line: 846, column: 22, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2489, file: !76, line: 864, column: 3)
!2523 = !DILocation(line: 846, column: 29, scope: !2522)
!2524 = !DILocalVariable(name: "space_needed", scope: !2489, file: !76, line: 846, type: !15)
!2525 = !DILocation(line: 848, column: 9, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !76, line: 848, column: 7)
!2527 = !DILocation(line: 848, column: 7, scope: !2522)
!2528 = !DILocation(line: 848, column: 38, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !76, line: 850, column: 5)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !76, line: 849, column: 5)
!2531 = distinct !DILexicalBlock(scope: !2526, file: !76, line: 848, column: 14)
!2532 = !DILocation(line: 848, column: 5, scope: !2529)
!2533 = !DILocation(line: 853, column: 3, scope: !2531)
!2534 = !DILocation(line: 850, column: 27, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2522, file: !76, line: 850, column: 7)
!2536 = !DILocation(line: 850, column: 20, scope: !2535)
!2537 = !DILocation(line: 850, column: 7, scope: !2522)
!2538 = !DILocation(line: 851, column: 14, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !76, line: 851, column: 9)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !76, line: 850, column: 33)
!2541 = !DILocation(line: 851, column: 9, scope: !2539)
!2542 = !DILocation(line: 851, column: 9, scope: !2540)
!2543 = !DILocation(line: 851, column: 18, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !76, line: 851, column: 20)
!2545 = !DILocation(line: 851, column: 23, scope: !2544)
!2546 = !DILocalVariable(name: "tmp", scope: !2489, file: !76, line: 848, type: !15)
!2547 = !DILocation(line: 852, column: 5, scope: !2544)
!2548 = !DILocation(line: 0, scope: !2539)
!2549 = !DILocalVariable(name: "newsize", scope: !2489, file: !76, line: 847, type: !15)
!2550 = !DILocation(line: 854, column: 5, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !76, line: 853, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2540, file: !76, line: 852, column: 5)
!2553 = !DILocation(line: 0, scope: !2540)
!2554 = !DILocation(line: 854, column: 15, scope: !2551)
!2555 = !DILocation(line: 854, column: 27, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !76, line: 854, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !76, line: 854, column: 15)
!2558 = !DILocation(line: 854, column: 11, scope: !2557)
!2559 = !DILocation(line: 854, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !76, line: 854, column: 39)
!2561 = !DILocation(line: 855, column: 15, scope: !2557)
!2562 = distinct !{!2562, !2550, !2563}
!2563 = !DILocation(line: 856, column: 5, scope: !2551)
!2564 = !DILocation(line: 858, column: 5, scope: !2551)
!2565 = !DILocation(line: 857, column: 20, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2540, file: !76, line: 857, column: 9)
!2567 = !DILocation(line: 857, column: 9, scope: !2540)
!2568 = !DILocation(line: 857, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !76, line: 859, column: 7)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !76, line: 858, column: 7)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !76, line: 857, column: 34)
!2572 = !DILocation(line: 858, column: 36, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !76, line: 863, column: 5)
!2574 = distinct !DILexicalBlock(scope: !2540, file: !76, line: 862, column: 5)
!2575 = !DILocation(line: 858, column: 15, scope: !2573)
!2576 = !DILocalVariable(name: "tmp___0", scope: !2489, file: !76, line: 850, type: !7)
!2577 = !DILocalVariable(name: "newbuf", scope: !2489, file: !76, line: 849, type: !17)
!2578 = !DILocation(line: 859, column: 11, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2540, file: !76, line: 859, column: 9)
!2580 = !DILocation(line: 859, column: 9, scope: !2540)
!2581 = !DILocation(line: 859, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !76, line: 861, column: 7)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !76, line: 860, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !76, line: 859, column: 19)
!2585 = !DILocation(line: 860, column: 10, scope: !2540)
!2586 = !DILocation(line: 860, column: 15, scope: !2540)
!2587 = !DILocation(line: 861, column: 10, scope: !2540)
!2588 = !DILocation(line: 861, column: 12, scope: !2540)
!2589 = !DILocation(line: 862, column: 3, scope: !2540)
!2590 = !DILocation(line: 864, column: 31, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2522, file: !76, line: 864, column: 7)
!2592 = !DILocation(line: 864, column: 23, scope: !2591)
!2593 = !DILocation(line: 864, column: 7, scope: !2522)
!2594 = !DILocation(line: 864, column: 38, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !76, line: 866, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !76, line: 865, column: 5)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !76, line: 864, column: 38)
!2598 = !DILocation(line: 864, column: 5, scope: !2595)
!2599 = !DILocation(line: 869, column: 3, scope: !2597)
!2600 = !DILocation(line: 866, column: 41, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !76, line: 871, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2522, file: !76, line: 870, column: 3)
!2603 = !DILocation(line: 866, column: 43, scope: !2601)
!2604 = !DILocation(line: 866, column: 3, scope: !2601)
!2605 = !DILocation(line: 867, column: 10, scope: !2602)
!2606 = !DILocation(line: 867, column: 18, scope: !2602)
!2607 = !DILocation(line: 867, column: 12, scope: !2602)
!2608 = !DILocation(line: 867, column: 26, scope: !2602)
!2609 = !DILocation(line: 868, column: 3, scope: !2522)
!2610 = distinct !DISubprogram(name: "eci_impl_update_state", scope: !76, file: !76, line: 1148, type: !2611, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !88, !18}
!2613 = !DILocalVariable(name: "parser", arg: 1, scope: !2610, file: !76, line: 1148, type: !88)
!2614 = !DILocation(line: 0, scope: !2610)
!2615 = !DILocalVariable(name: "c", arg: 2, scope: !2610, file: !76, line: 1148, type: !18)
!2616 = !DILocation(line: 1148, column: 68, scope: !2610)
!2617 = !DILocation(line: 1152, column: 15, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1152, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !76, line: 1154, column: 3)
!2620 = distinct !DILexicalBlock(scope: !2610, file: !76, line: 1153, column: 3)
!2621 = !DILocation(line: 1152, column: 25, scope: !2618)
!2622 = !DILocation(line: 1152, column: 7, scope: !2619)
!2623 = !DILocation(line: 1152, column: 5, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2618, file: !76, line: 1152, column: 31)
!2625 = !DILocation(line: 1164, column: 15, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1164, column: 7)
!2627 = !DILocation(line: 1164, column: 25, scope: !2626)
!2628 = !DILocation(line: 1164, column: 7, scope: !2619)
!2629 = !DILocation(line: 1164, column: 5, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !76, line: 1164, column: 31)
!2631 = !DILocation(line: 1186, column: 15, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1186, column: 7)
!2633 = !DILocation(line: 1186, column: 25, scope: !2632)
!2634 = !DILocation(line: 1186, column: 7, scope: !2619)
!2635 = !DILocation(line: 1186, column: 5, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !76, line: 1186, column: 31)
!2637 = !DILocation(line: 1214, column: 15, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1214, column: 7)
!2639 = !DILocation(line: 1214, column: 25, scope: !2638)
!2640 = !DILocation(line: 1214, column: 7, scope: !2619)
!2641 = !DILocation(line: 1214, column: 5, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !76, line: 1214, column: 31)
!2643 = !DILocation(line: 1221, column: 15, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1221, column: 7)
!2645 = !DILocation(line: 1221, column: 25, scope: !2644)
!2646 = !DILocation(line: 1221, column: 7, scope: !2619)
!2647 = !DILocation(line: 1221, column: 5, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !76, line: 1221, column: 31)
!2649 = !DILocation(line: 1229, column: 15, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1229, column: 7)
!2651 = !DILocation(line: 1229, column: 25, scope: !2650)
!2652 = !DILocation(line: 1229, column: 7, scope: !2619)
!2653 = !DILocation(line: 1229, column: 5, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !76, line: 1229, column: 31)
!2655 = !DILocation(line: 1252, column: 15, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1252, column: 7)
!2657 = !DILocation(line: 1252, column: 25, scope: !2656)
!2658 = !DILocation(line: 1252, column: 7, scope: !2619)
!2659 = !DILocation(line: 1252, column: 5, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !76, line: 1252, column: 31)
!2661 = !DILocation(line: 1278, column: 15, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1278, column: 7)
!2663 = !DILocation(line: 1278, column: 25, scope: !2662)
!2664 = !DILocation(line: 1278, column: 7, scope: !2619)
!2665 = !DILocation(line: 1278, column: 5, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !76, line: 1278, column: 31)
!2667 = !DILocation(line: 1285, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1285, column: 7)
!2669 = !DILocation(line: 1285, column: 25, scope: !2668)
!2670 = !DILocation(line: 1285, column: 7, scope: !2619)
!2671 = !DILocation(line: 1285, column: 5, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !76, line: 1285, column: 31)
!2673 = !DILocation(line: 1292, column: 15, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1292, column: 7)
!2675 = !DILocation(line: 1292, column: 25, scope: !2674)
!2676 = !DILocation(line: 1292, column: 7, scope: !2619)
!2677 = !DILocation(line: 1292, column: 5, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !76, line: 1292, column: 31)
!2679 = !DILocation(line: 1299, column: 15, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1299, column: 7)
!2681 = !DILocation(line: 1299, column: 25, scope: !2680)
!2682 = !DILocation(line: 1299, column: 7, scope: !2619)
!2683 = !DILocation(line: 1299, column: 5, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !76, line: 1299, column: 32)
!2685 = !DILocation(line: 1315, column: 15, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1315, column: 7)
!2687 = !DILocation(line: 1315, column: 25, scope: !2686)
!2688 = !DILocation(line: 1315, column: 7, scope: !2619)
!2689 = !DILocation(line: 1315, column: 5, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !76, line: 1315, column: 32)
!2691 = !DILocation(line: 1322, column: 3, scope: !2619)
!2692 = !DILocation(line: 1153, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1153, column: 7)
!2694 = !DILocation(line: 1153, column: 7, scope: !2693)
!2695 = !DILocation(line: 1153, column: 15, scope: !2693)
!2696 = !DILocation(line: 1153, column: 7, scope: !2619)
!2697 = !DILocation(line: 1153, column: 15, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !76, line: 1153, column: 9)
!2699 = distinct !DILexicalBlock(scope: !2693, file: !76, line: 1153, column: 22)
!2700 = !DILocation(line: 1153, column: 9, scope: !2698)
!2701 = !DILocation(line: 1153, column: 17, scope: !2698)
!2702 = !DILocation(line: 1153, column: 9, scope: !2699)
!2703 = !DILocation(line: 1154, column: 15, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !76, line: 1154, column: 7)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !76, line: 1153, column: 24)
!2706 = !DILocation(line: 1154, column: 31, scope: !2704)
!2707 = !DILocation(line: 1155, column: 15, scope: !2704)
!2708 = !DILocation(line: 1155, column: 34, scope: !2704)
!2709 = !DILocation(line: 1156, column: 34, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2704, file: !76, line: 1156, column: 7)
!2711 = !DILocation(line: 1156, column: 7, scope: !2710)
!2712 = !DILocation(line: 1157, column: 15, scope: !2704)
!2713 = !DILocation(line: 1157, column: 25, scope: !2704)
!2714 = !DILocation(line: 1159, column: 5, scope: !2705)
!2715 = !DILocation(line: 1160, column: 15, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2698, file: !76, line: 1159, column: 12)
!2717 = !DILocation(line: 1160, column: 31, scope: !2716)
!2718 = !DILocation(line: 1162, column: 3, scope: !2699)
!2719 = !DILocation(line: 1160, column: 13, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2693, file: !76, line: 1162, column: 10)
!2721 = !DILocation(line: 1160, column: 29, scope: !2720)
!2722 = !DILocation(line: 1162, column: 3, scope: !2619)
!2723 = !DILocation(line: 1165, column: 13, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1165, column: 7)
!2725 = !DILocation(line: 1165, column: 7, scope: !2724)
!2726 = !DILocation(line: 1165, column: 15, scope: !2724)
!2727 = !DILocation(line: 1165, column: 7, scope: !2619)
!2728 = !DILocation(line: 1166, column: 57, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !76, line: 1167, column: 5)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !76, line: 1166, column: 5)
!2731 = distinct !DILexicalBlock(scope: !2724, file: !76, line: 1165, column: 22)
!2732 = !DILocation(line: 1166, column: 68, scope: !2729)
!2733 = !DILocation(line: 1166, column: 28, scope: !2729)
!2734 = !DILocation(line: 1166, column: 13, scope: !2729)
!2735 = !DILocation(line: 1166, column: 26, scope: !2729)
!2736 = !DILocation(line: 1168, column: 17, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2731, file: !76, line: 1168, column: 9)
!2738 = !DILocation(line: 1168, column: 30, scope: !2737)
!2739 = !DILocation(line: 1168, column: 9, scope: !2731)
!2740 = !DILocation(line: 1170, column: 15, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !76, line: 1168, column: 38)
!2742 = !DILocation(line: 1170, column: 29, scope: !2741)
!2743 = !DILocation(line: 1171, column: 5, scope: !2741)
!2744 = !DILocation(line: 1174, column: 15, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2737, file: !76, line: 1171, column: 12)
!2746 = !DILocation(line: 1174, column: 29, scope: !2745)
!2747 = !DILocation(line: 1177, column: 13, scope: !2731)
!2748 = !DILocation(line: 1177, column: 23, scope: !2731)
!2749 = !DILocation(line: 1178, column: 13, scope: !2731)
!2750 = !DILocation(line: 1178, column: 29, scope: !2731)
!2751 = !DILocation(line: 1179, column: 3, scope: !2731)
!2752 = !DILocation(line: 1180, column: 13, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2724, file: !76, line: 1180, column: 7)
!2754 = !DILocation(line: 1180, column: 7, scope: !2753)
!2755 = !DILocation(line: 1180, column: 15, scope: !2753)
!2756 = !DILocation(line: 1180, column: 7, scope: !2724)
!2757 = !DILocation(line: 1180, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !76, line: 1180, column: 9)
!2759 = distinct !DILexicalBlock(scope: !2753, file: !76, line: 1180, column: 21)
!2760 = !DILocation(line: 1180, column: 9, scope: !2758)
!2761 = !DILocation(line: 1180, column: 17, scope: !2758)
!2762 = !DILocation(line: 1180, column: 9, scope: !2759)
!2763 = !DILocation(line: 1181, column: 15, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2758, file: !76, line: 1180, column: 23)
!2765 = !DILocation(line: 1181, column: 25, scope: !2764)
!2766 = !DILocation(line: 1182, column: 5, scope: !2764)
!2767 = !DILocation(line: 1183, column: 3, scope: !2759)
!2768 = !DILocation(line: 1184, column: 3, scope: !2619)
!2769 = !DILocation(line: 1187, column: 13, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1187, column: 7)
!2771 = !DILocation(line: 1187, column: 7, scope: !2770)
!2772 = !DILocation(line: 1187, column: 15, scope: !2770)
!2773 = !DILocation(line: 1187, column: 7, scope: !2619)
!2774 = !DILocation(line: 1187, column: 17, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !76, line: 1187, column: 9)
!2776 = distinct !DILexicalBlock(scope: !2770, file: !76, line: 1187, column: 22)
!2777 = !DILocation(line: 1187, column: 31, scope: !2775)
!2778 = !DILocation(line: 1187, column: 9, scope: !2776)
!2779 = !DILocation(line: 1187, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !76, line: 1187, column: 37)
!2781 = !DILocation(line: 1187, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2775, file: !76, line: 1188, column: 12)
!2783 = !DILocation(line: 1189, column: 3, scope: !2776)
!2784 = !DILocation(line: 1187, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2770, file: !76, line: 1187, column: 7)
!2786 = !DILocation(line: 1187, column: 7, scope: !2785)
!2787 = !DILocation(line: 1187, column: 15, scope: !2785)
!2788 = !DILocation(line: 1187, column: 17, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !76, line: 1187, column: 9)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !76, line: 1187, column: 22)
!2791 = !DILocation(line: 1187, column: 31, scope: !2789)
!2792 = !DILocation(line: 1187, column: 9, scope: !2790)
!2793 = !DILocation(line: 1187, column: 37, scope: !2789)
!2794 = !DILocation(line: 1190, column: 58, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !76, line: 1190, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !76, line: 1189, column: 7)
!2797 = distinct !DILexicalBlock(scope: !2789, file: !76, line: 1187, column: 37)
!2798 = !DILocation(line: 1190, column: 69, scope: !2795)
!2799 = !DILocation(line: 1190, column: 29, scope: !2795)
!2800 = !DILocation(line: 1190, column: 15, scope: !2795)
!2801 = !DILocation(line: 1190, column: 27, scope: !2795)
!2802 = !DILocation(line: 1194, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2797, file: !76, line: 1194, column: 11)
!2804 = !DILocation(line: 1194, column: 33, scope: !2803)
!2805 = !DILocation(line: 1194, column: 11, scope: !2797)
!2806 = !DILocation(line: 1195, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !76, line: 1194, column: 39)
!2808 = !DILocation(line: 1195, column: 27, scope: !2807)
!2809 = !DILocation(line: 1196, column: 7, scope: !2807)
!2810 = !DILocation(line: 1198, column: 17, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !76, line: 1196, column: 14)
!2812 = !DILocation(line: 1198, column: 27, scope: !2811)
!2813 = !DILocation(line: 1201, column: 15, scope: !2797)
!2814 = !DILocation(line: 1201, column: 31, scope: !2797)
!2815 = !DILocation(line: 1202, column: 5, scope: !2797)
!2816 = !DILocation(line: 1187, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2789, file: !76, line: 1202, column: 12)
!2818 = !DILocation(line: 1189, column: 3, scope: !2790)
!2819 = !DILocation(line: 1204, column: 13, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2785, file: !76, line: 1204, column: 7)
!2821 = !DILocation(line: 1204, column: 7, scope: !2820)
!2822 = !DILocation(line: 1204, column: 15, scope: !2820)
!2823 = !DILocation(line: 1204, column: 7, scope: !2785)
!2824 = !DILocation(line: 1204, column: 15, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !76, line: 1204, column: 9)
!2826 = distinct !DILexicalBlock(scope: !2820, file: !76, line: 1204, column: 21)
!2827 = !DILocation(line: 1204, column: 9, scope: !2825)
!2828 = !DILocation(line: 1204, column: 17, scope: !2825)
!2829 = !DILocation(line: 1204, column: 9, scope: !2826)
!2830 = !DILocation(line: 1205, column: 15, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2825, file: !76, line: 1204, column: 23)
!2832 = !DILocation(line: 1205, column: 25, scope: !2831)
!2833 = !DILocation(line: 1206, column: 5, scope: !2831)
!2834 = !DILocation(line: 1204, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2825, file: !76, line: 1206, column: 12)
!2836 = !DILocation(line: 1206, column: 3, scope: !2826)
!2837 = !DILocation(line: 1207, column: 15, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2820, file: !76, line: 1207, column: 7)
!2839 = !DILocation(line: 1207, column: 31, scope: !2838)
!2840 = !DILocation(line: 1207, column: 7, scope: !2820)
!2841 = !DILocation(line: 1208, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !76, line: 1208, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !76, line: 1207, column: 37)
!2844 = !DILocation(line: 1208, column: 29, scope: !2842)
!2845 = !DILocation(line: 1209, column: 13, scope: !2842)
!2846 = !DILocation(line: 1209, column: 32, scope: !2842)
!2847 = !DILocation(line: 1210, column: 32, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !76, line: 1210, column: 5)
!2849 = !DILocation(line: 1210, column: 5, scope: !2848)
!2850 = !DILocation(line: 1213, column: 3, scope: !2843)
!2851 = !DILocation(line: 1212, column: 3, scope: !2619)
!2852 = !DILocation(line: 1215, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1215, column: 7)
!2854 = !DILocation(line: 1215, column: 7, scope: !2853)
!2855 = !DILocation(line: 1215, column: 15, scope: !2853)
!2856 = !DILocation(line: 1215, column: 7, scope: !2619)
!2857 = !DILocation(line: 1216, column: 13, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !76, line: 1215, column: 22)
!2859 = !DILocation(line: 1216, column: 23, scope: !2858)
!2860 = !DILocation(line: 1217, column: 3, scope: !2858)
!2861 = !DILocation(line: 1218, column: 13, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !76, line: 1217, column: 10)
!2863 = !DILocation(line: 1218, column: 23, scope: !2862)
!2864 = !DILocation(line: 1219, column: 3, scope: !2619)
!2865 = !DILocation(line: 1222, column: 13, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1222, column: 7)
!2867 = !DILocation(line: 1222, column: 7, scope: !2866)
!2868 = !DILocation(line: 1222, column: 15, scope: !2866)
!2869 = !DILocation(line: 1222, column: 7, scope: !2619)
!2870 = !DILocation(line: 1223, column: 13, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !76, line: 1222, column: 22)
!2872 = !DILocation(line: 1223, column: 23, scope: !2871)
!2873 = !DILocation(line: 1224, column: 3, scope: !2871)
!2874 = !DILocation(line: 1226, column: 13, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !76, line: 1224, column: 10)
!2876 = !DILocation(line: 1226, column: 23, scope: !2875)
!2877 = !DILocation(line: 1227, column: 3, scope: !2619)
!2878 = !DILocation(line: 1230, column: 13, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1230, column: 7)
!2880 = !DILocation(line: 1230, column: 7, scope: !2879)
!2881 = !DILocation(line: 1230, column: 15, scope: !2879)
!2882 = !DILocation(line: 1230, column: 7, scope: !2619)
!2883 = !DILocation(line: 1233, column: 17, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !76, line: 1233, column: 9)
!2885 = distinct !DILexicalBlock(scope: !2879, file: !76, line: 1230, column: 22)
!2886 = !DILocation(line: 1233, column: 36, scope: !2884)
!2887 = !DILocation(line: 1233, column: 9, scope: !2885)
!2888 = !DILocation(line: 1233, column: 21, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2884, file: !76, line: 1233, column: 41)
!2890 = !DILocalVariable(name: "tmp", scope: !2610, file: !76, line: 1151, type: !15)
!2891 = !DILocation(line: 1234, column: 5, scope: !2889)
!2892 = !DILocation(line: 0, scope: !2884)
!2893 = !DILocalVariable(name: "len", scope: !2610, file: !76, line: 1150, type: !15)
!2894 = !DILocation(line: 1235, column: 46, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !76, line: 1234, column: 5)
!2896 = distinct !DILexicalBlock(scope: !2885, file: !76, line: 1235, column: 5)
!2897 = !DILocation(line: 1235, column: 37, scope: !2895)
!2898 = !DILocation(line: 1235, column: 104, scope: !2895)
!2899 = !DILocation(line: 1235, column: 115, scope: !2895)
!2900 = !DILocation(line: 1235, column: 5, scope: !2895)
!2901 = !DILocation(line: 1236, column: 13, scope: !2896)
!2902 = !DILocation(line: 1236, column: 5, scope: !2896)
!2903 = !DILocation(line: 1236, column: 33, scope: !2896)
!2904 = !DILocation(line: 1240, column: 13, scope: !2896)
!2905 = !DILocation(line: 1240, column: 23, scope: !2896)
!2906 = !DILocation(line: 1241, column: 13, scope: !2896)
!2907 = !DILocation(line: 1241, column: 29, scope: !2896)
!2908 = !DILocation(line: 1243, column: 3, scope: !2885)
!2909 = !DILocation(line: 1244, column: 15, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2879, file: !76, line: 1244, column: 7)
!2911 = !DILocation(line: 1244, column: 31, scope: !2910)
!2912 = !DILocation(line: 1244, column: 7, scope: !2879)
!2913 = !DILocation(line: 1245, column: 13, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !76, line: 1245, column: 5)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !76, line: 1244, column: 37)
!2916 = !DILocation(line: 1245, column: 29, scope: !2914)
!2917 = !DILocation(line: 1246, column: 13, scope: !2914)
!2918 = !DILocation(line: 1246, column: 32, scope: !2914)
!2919 = !DILocation(line: 1247, column: 32, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2914, file: !76, line: 1247, column: 5)
!2921 = !DILocation(line: 1247, column: 5, scope: !2920)
!2922 = !DILocation(line: 1250, column: 3, scope: !2915)
!2923 = !DILocation(line: 1250, column: 3, scope: !2619)
!2924 = !DILocation(line: 1253, column: 13, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1253, column: 7)
!2926 = !DILocation(line: 1253, column: 7, scope: !2925)
!2927 = !DILocation(line: 1253, column: 15, scope: !2925)
!2928 = !DILocation(line: 1253, column: 7, scope: !2619)
!2929 = !DILocation(line: 1258, column: 17, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !76, line: 1258, column: 9)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !76, line: 1253, column: 22)
!2932 = !DILocation(line: 1258, column: 29, scope: !2930)
!2933 = !DILocation(line: 1258, column: 9, scope: !2931)
!2934 = !DILocation(line: 1259, column: 34, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !76, line: 1260, column: 7)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !76, line: 1259, column: 7)
!2937 = distinct !DILexicalBlock(scope: !2930, file: !76, line: 1258, column: 35)
!2938 = !DILocation(line: 1259, column: 7, scope: !2935)
!2939 = !DILocation(line: 1262, column: 5, scope: !2937)
!2940 = !DILocation(line: 1267, column: 13, scope: !2931)
!2941 = !DILocation(line: 1267, column: 23, scope: !2931)
!2942 = !DILocation(line: 1268, column: 13, scope: !2931)
!2943 = !DILocation(line: 1268, column: 29, scope: !2931)
!2944 = !DILocation(line: 1269, column: 3, scope: !2931)
!2945 = !DILocation(line: 1271, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2925, file: !76, line: 1271, column: 7)
!2947 = !DILocation(line: 1271, column: 31, scope: !2946)
!2948 = !DILocation(line: 1271, column: 7, scope: !2925)
!2949 = !DILocation(line: 1272, column: 13, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !76, line: 1272, column: 5)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !76, line: 1271, column: 37)
!2952 = !DILocation(line: 1272, column: 29, scope: !2950)
!2953 = !DILocation(line: 1273, column: 13, scope: !2950)
!2954 = !DILocation(line: 1273, column: 32, scope: !2950)
!2955 = !DILocation(line: 1274, column: 32, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2950, file: !76, line: 1274, column: 5)
!2957 = !DILocation(line: 1274, column: 5, scope: !2956)
!2958 = !DILocation(line: 1277, column: 3, scope: !2951)
!2959 = !DILocation(line: 1276, column: 3, scope: !2619)
!2960 = !DILocation(line: 1279, column: 13, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1279, column: 7)
!2962 = !DILocation(line: 1279, column: 7, scope: !2961)
!2963 = !DILocation(line: 1279, column: 15, scope: !2961)
!2964 = !DILocation(line: 1279, column: 7, scope: !2619)
!2965 = !DILocation(line: 1280, column: 13, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2961, file: !76, line: 1279, column: 22)
!2967 = !DILocation(line: 1280, column: 23, scope: !2966)
!2968 = !DILocation(line: 1281, column: 3, scope: !2966)
!2969 = !DILocation(line: 1282, column: 13, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2961, file: !76, line: 1281, column: 10)
!2971 = !DILocation(line: 1282, column: 23, scope: !2970)
!2972 = !DILocation(line: 1283, column: 3, scope: !2619)
!2973 = !DILocation(line: 1286, column: 13, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1286, column: 7)
!2975 = !DILocation(line: 1286, column: 7, scope: !2974)
!2976 = !DILocation(line: 1286, column: 15, scope: !2974)
!2977 = !DILocation(line: 1286, column: 7, scope: !2619)
!2978 = !DILocation(line: 1287, column: 13, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2974, file: !76, line: 1286, column: 22)
!2980 = !DILocation(line: 1287, column: 23, scope: !2979)
!2981 = !DILocation(line: 1288, column: 3, scope: !2979)
!2982 = !DILocation(line: 1289, column: 13, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !76, line: 1288, column: 10)
!2984 = !DILocation(line: 1289, column: 23, scope: !2983)
!2985 = !DILocation(line: 1290, column: 3, scope: !2619)
!2986 = !DILocation(line: 1293, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1293, column: 7)
!2988 = !DILocation(line: 1293, column: 7, scope: !2987)
!2989 = !DILocation(line: 1293, column: 15, scope: !2987)
!2990 = !DILocation(line: 1293, column: 7, scope: !2619)
!2991 = !DILocation(line: 1294, column: 13, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !76, line: 1293, column: 22)
!2993 = !DILocation(line: 1294, column: 23, scope: !2992)
!2994 = !DILocation(line: 1295, column: 3, scope: !2992)
!2995 = !DILocation(line: 1296, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2987, file: !76, line: 1295, column: 10)
!2997 = !DILocation(line: 1296, column: 23, scope: !2996)
!2998 = !DILocation(line: 1297, column: 3, scope: !2619)
!2999 = !DILocation(line: 1300, column: 13, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1300, column: 7)
!3001 = !DILocation(line: 1300, column: 7, scope: !3000)
!3002 = !DILocation(line: 1300, column: 15, scope: !3000)
!3003 = !DILocation(line: 1300, column: 7, scope: !2619)
!3004 = !DILocation(line: 1301, column: 17, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !76, line: 1301, column: 9)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !76, line: 1300, column: 22)
!3007 = !DILocation(line: 1301, column: 31, scope: !3005)
!3008 = !DILocation(line: 1301, column: 9, scope: !3006)
!3009 = !DILocation(line: 1303, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !76, line: 1303, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !76, line: 1302, column: 7)
!3012 = distinct !DILexicalBlock(scope: !3005, file: !76, line: 1301, column: 37)
!3013 = !DILocation(line: 1304, column: 16, scope: !3011)
!3014 = !DILocation(line: 1304, column: 34, scope: !3011)
!3015 = !DILocation(line: 1306, column: 5, scope: !3012)
!3016 = !DILocation(line: 1309, column: 13, scope: !3006)
!3017 = !DILocation(line: 1309, column: 23, scope: !3006)
!3018 = !DILocation(line: 1310, column: 3, scope: !3006)
!3019 = !DILocation(line: 1312, column: 13, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3000, file: !76, line: 1310, column: 10)
!3021 = !DILocation(line: 1312, column: 23, scope: !3020)
!3022 = !DILocation(line: 1313, column: 3, scope: !2619)
!3023 = !DILocation(line: 1316, column: 13, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2619, file: !76, line: 1316, column: 7)
!3025 = !DILocation(line: 1316, column: 7, scope: !3024)
!3026 = !DILocation(line: 1316, column: 15, scope: !3024)
!3027 = !DILocation(line: 1316, column: 7, scope: !2619)
!3028 = !DILocation(line: 1317, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !76, line: 1316, column: 22)
!3030 = !DILocation(line: 1317, column: 29, scope: !3029)
!3031 = !DILocation(line: 1318, column: 13, scope: !3029)
!3032 = !DILocation(line: 1318, column: 23, scope: !3029)
!3033 = !DILocation(line: 1319, column: 3, scope: !3029)
!3034 = !DILocation(line: 1320, column: 3, scope: !2619)
!3035 = !DILocation(line: 1326, column: 15, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2620, file: !76, line: 1326, column: 7)
!3037 = !DILocation(line: 1326, column: 31, scope: !3036)
!3038 = !DILocation(line: 1326, column: 7, scope: !2620)
!3039 = !DILocation(line: 1327, column: 30, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !76, line: 1328, column: 5)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !76, line: 1327, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !76, line: 1326, column: 37)
!3043 = !DILocation(line: 1327, column: 50, scope: !3040)
!3044 = !DILocation(line: 1327, column: 5, scope: !3040)
!3045 = !DILocation(line: 1328, column: 14, scope: !3041)
!3046 = !DILocation(line: 1328, column: 34, scope: !3041)
!3047 = !DILocation(line: 1330, column: 3, scope: !3042)
!3048 = !DILocation(line: 1332, column: 3, scope: !2620)
!3049 = distinct !DISubprogram(name: "eci_impl_set_last_values", scope: !76, file: !76, line: 1112, type: !691, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3050 = !DILocalVariable(name: "parser", arg: 1, scope: !3049, file: !76, line: 1112, type: !88)
!3051 = !DILocation(line: 0, scope: !3049)
!3052 = !DILocalVariable(name: "__cil_tmp2", scope: !3049, file: !76, line: 1114, type: !17)
!3053 = !DILocation(line: 1114, column: 9, scope: !3049)
!3054 = !DILocalVariable(name: "__cil_tmp3", scope: !3049, file: !76, line: 1115, type: !17)
!3055 = !DILocation(line: 1115, column: 9, scope: !3049)
!3056 = !DILocalVariable(name: "__cil_tmp4", scope: !3049, file: !76, line: 1116, type: !17)
!3057 = !DILocation(line: 1116, column: 9, scope: !3049)
!3058 = !DILocalVariable(name: "__cil_tmp5", scope: !3049, file: !76, line: 1117, type: !17)
!3059 = !DILocation(line: 1117, column: 9, scope: !3049)
!3060 = !DILocalVariable(name: "__cil_tmp6", scope: !3049, file: !76, line: 1118, type: !17)
!3061 = !DILocation(line: 1118, column: 9, scope: !3049)
!3062 = !DILocalVariable(name: "__cil_tmp7", scope: !3049, file: !76, line: 1119, type: !17)
!3063 = !DILocation(line: 1119, column: 9, scope: !3049)
!3064 = !DILocation(line: 1114, column: 10, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !76, line: 1114, column: 7)
!3066 = distinct !DILexicalBlock(scope: !3049, file: !76, line: 1121, column: 3)
!3067 = !DILocation(line: 1114, column: 33, scope: !3065)
!3068 = !DILocation(line: 1114, column: 7, scope: !3066)
!3069 = !DILocation(line: 1114, column: 38, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !76, line: 1116, column: 5)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !76, line: 1115, column: 5)
!3072 = distinct !DILexicalBlock(scope: !3065, file: !76, line: 1114, column: 79)
!3073 = !DILocation(line: 1114, column: 5, scope: !3070)
!3074 = !DILocation(line: 1119, column: 3, scope: !3072)
!3075 = !DILocation(line: 1115, column: 18, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !76, line: 1115, column: 7)
!3077 = !DILocation(line: 1115, column: 28, scope: !3076)
!3078 = !DILocation(line: 1115, column: 7, scope: !3066)
!3079 = !DILocation(line: 1115, column: 38, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !76, line: 1117, column: 5)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !76, line: 1116, column: 5)
!3082 = distinct !DILexicalBlock(scope: !3076, file: !76, line: 1115, column: 36)
!3083 = !DILocation(line: 1115, column: 5, scope: !3080)
!3084 = !DILocation(line: 1120, column: 3, scope: !3082)
!3085 = !DILocation(line: 1119, column: 21, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1119, column: 7)
!3087 = distinct !DILexicalBlock(scope: !3066, file: !76, line: 1121, column: 3)
!3088 = !DILocation(line: 1119, column: 13, scope: !3086)
!3089 = !DILocation(line: 1119, column: 7, scope: !3086)
!3090 = !DILocation(line: 1119, column: 39, scope: !3086)
!3091 = !DILocation(line: 1119, column: 7, scope: !3087)
!3092 = !DILocation(line: 1119, column: 5, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3086, file: !76, line: 1119, column: 47)
!3094 = !DILocation(line: 1123, column: 21, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1123, column: 7)
!3096 = !DILocation(line: 1123, column: 13, scope: !3095)
!3097 = !DILocation(line: 1123, column: 7, scope: !3095)
!3098 = !DILocation(line: 1123, column: 39, scope: !3095)
!3099 = !DILocation(line: 1123, column: 7, scope: !3087)
!3100 = !DILocation(line: 1123, column: 5, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3095, file: !76, line: 1123, column: 46)
!3102 = !DILocation(line: 1127, column: 21, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1127, column: 7)
!3104 = !DILocation(line: 1127, column: 13, scope: !3103)
!3105 = !DILocation(line: 1127, column: 7, scope: !3103)
!3106 = !DILocation(line: 1127, column: 39, scope: !3103)
!3107 = !DILocation(line: 1127, column: 7, scope: !3087)
!3108 = !DILocation(line: 1127, column: 5, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !76, line: 1127, column: 47)
!3110 = !DILocation(line: 1131, column: 21, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1131, column: 7)
!3112 = !DILocation(line: 1131, column: 13, scope: !3111)
!3113 = !DILocation(line: 1131, column: 7, scope: !3111)
!3114 = !DILocation(line: 1131, column: 39, scope: !3111)
!3115 = !DILocation(line: 1131, column: 7, scope: !3087)
!3116 = !DILocation(line: 1131, column: 5, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3111, file: !76, line: 1131, column: 47)
!3118 = !DILocation(line: 1135, column: 21, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1135, column: 7)
!3120 = !DILocation(line: 1135, column: 13, scope: !3119)
!3121 = !DILocation(line: 1135, column: 7, scope: !3119)
!3122 = !DILocation(line: 1135, column: 39, scope: !3119)
!3123 = !DILocation(line: 1135, column: 7, scope: !3087)
!3124 = !DILocation(line: 1135, column: 5, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3119, file: !76, line: 1135, column: 47)
!3126 = !DILocation(line: 1139, column: 21, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1139, column: 7)
!3128 = !DILocation(line: 1139, column: 13, scope: !3127)
!3129 = !DILocation(line: 1139, column: 7, scope: !3127)
!3130 = !DILocation(line: 1139, column: 39, scope: !3127)
!3131 = !DILocation(line: 1139, column: 7, scope: !3087)
!3132 = !DILocation(line: 1139, column: 5, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3127, file: !76, line: 1139, column: 47)
!3134 = !DILocation(line: 1143, column: 3, scope: !3087)
!3135 = !DILocation(line: 1120, column: 28, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !76, line: 1146, column: 3)
!3137 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1145, column: 3)
!3138 = !DILocation(line: 1120, column: 68, scope: !3136)
!3139 = !DILocation(line: 1120, column: 79, scope: !3136)
!3140 = !DILocation(line: 1120, column: 90, scope: !3136)
!3141 = !DILocation(line: 1120, column: 3, scope: !3136)
!3142 = !DILocation(line: 1121, column: 3, scope: !3087)
!3143 = !DILocation(line: 1124, column: 3, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !76, line: 1124, column: 3)
!3145 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1123, column: 3)
!3146 = !DILocation(line: 1125, column: 3, scope: !3087)
!3147 = !DILocation(line: 1128, column: 53, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !76, line: 1128, column: 3)
!3149 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1127, column: 3)
!3150 = !DILocation(line: 1128, column: 64, scope: !3148)
!3151 = !DILocation(line: 1128, column: 24, scope: !3148)
!3152 = !DILocation(line: 1128, column: 11, scope: !3148)
!3153 = !DILocation(line: 1128, column: 22, scope: !3148)
!3154 = !DILocation(line: 1129, column: 3, scope: !3087)
!3155 = !DILocation(line: 1132, column: 54, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !76, line: 1132, column: 3)
!3157 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1131, column: 3)
!3158 = !DILocation(line: 1132, column: 65, scope: !3156)
!3159 = !DILocation(line: 1132, column: 25, scope: !3156)
!3160 = !DILocation(line: 1132, column: 11, scope: !3156)
!3161 = !DILocation(line: 1132, column: 23, scope: !3156)
!3162 = !DILocation(line: 1133, column: 3, scope: !3087)
!3163 = !DILocation(line: 1136, column: 53, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !76, line: 1136, column: 3)
!3165 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1135, column: 3)
!3166 = !DILocation(line: 1136, column: 64, scope: !3164)
!3167 = !DILocation(line: 1136, column: 24, scope: !3164)
!3168 = !DILocation(line: 1136, column: 11, scope: !3164)
!3169 = !DILocation(line: 1136, column: 22, scope: !3164)
!3170 = !DILocation(line: 1137, column: 3, scope: !3087)
!3171 = !DILocation(line: 1140, column: 28, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !76, line: 1140, column: 3)
!3173 = distinct !DILexicalBlock(scope: !3087, file: !76, line: 1139, column: 3)
!3174 = !DILocation(line: 1140, column: 72, scope: !3172)
!3175 = !DILocation(line: 1140, column: 83, scope: !3172)
!3176 = !DILocation(line: 1141, column: 26, scope: !3172)
!3177 = !DILocation(line: 1140, column: 3, scope: !3172)
!3178 = !DILocation(line: 1141, column: 3, scope: !3087)
!3179 = !DILocation(line: 1146, column: 3, scope: !3066)
!3180 = distinct !DISubprogram(name: "eci_impl_set_last_los_value", scope: !76, file: !76, line: 1062, type: !691, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3181 = !DILocalVariable(name: "parser", arg: 1, scope: !3180, file: !76, line: 1062, type: !88)
!3182 = !DILocation(line: 0, scope: !3180)
!3183 = !DILocalVariable(name: "stmp", scope: !3180, file: !76, line: 1068, type: !109)
!3184 = !DILocation(line: 1068, column: 14, scope: !3180)
!3185 = !DILocalVariable(name: "__cil_tmp10", scope: !3180, file: !76, line: 1072, type: !17)
!3186 = !DILocation(line: 1072, column: 9, scope: !3180)
!3187 = !DILocalVariable(name: "__cil_tmp11", scope: !3180, file: !76, line: 1073, type: !17)
!3188 = !DILocation(line: 1073, column: 9, scope: !3180)
!3189 = !DILocalVariable(name: "__cil_tmp12", scope: !3180, file: !76, line: 1074, type: !17)
!3190 = !DILocation(line: 1074, column: 9, scope: !3180)
!3191 = !DILocalVariable(name: "__cil_tmp13", scope: !3180, file: !76, line: 1075, type: !17)
!3192 = !DILocation(line: 1075, column: 9, scope: !3180)
!3193 = !DILocalVariable(name: "__cil_tmp14", scope: !3180, file: !76, line: 1076, type: !17)
!3194 = !DILocation(line: 1076, column: 9, scope: !3180)
!3195 = !DILocalVariable(name: "__cil_tmp15", scope: !3180, file: !76, line: 1077, type: !17)
!3196 = !DILocation(line: 1077, column: 9, scope: !3180)
!3197 = !DILocation(line: 1064, column: 15, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1080, column: 3)
!3199 = distinct !DILexicalBlock(scope: !3180, file: !76, line: 1079, column: 3)
!3200 = !DILocalVariable(name: "i", scope: !3180, file: !76, line: 1064, type: !103)
!3201 = !DILocalVariable(name: "quoteflag", scope: !3180, file: !76, line: 1065, type: !15)
!3202 = !DILocalVariable(name: "m", scope: !3180, file: !76, line: 1066, type: !15)
!3203 = !DILocation(line: 1067, column: 3, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3198, file: !76, line: 1066, column: 3)
!3205 = !DILocation(line: 1069, column: 10, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1069, column: 7)
!3207 = !DILocation(line: 1069, column: 33, scope: !3206)
!3208 = !DILocation(line: 1069, column: 7, scope: !3199)
!3209 = !DILocation(line: 1069, column: 38, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !76, line: 1071, column: 5)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !76, line: 1070, column: 5)
!3212 = distinct !DILexicalBlock(scope: !3206, file: !76, line: 1069, column: 79)
!3213 = !DILocation(line: 1069, column: 5, scope: !3210)
!3214 = !DILocation(line: 1074, column: 3, scope: !3212)
!3215 = !DILocation(line: 1070, column: 18, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1070, column: 7)
!3217 = !DILocation(line: 1070, column: 28, scope: !3216)
!3218 = !DILocation(line: 1070, column: 7, scope: !3199)
!3219 = !DILocation(line: 1070, column: 38, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !76, line: 1072, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !76, line: 1071, column: 5)
!3222 = distinct !DILexicalBlock(scope: !3216, file: !76, line: 1070, column: 36)
!3223 = !DILocation(line: 1070, column: 5, scope: !3220)
!3224 = !DILocation(line: 1075, column: 3, scope: !3222)
!3225 = !DILocation(line: 1074, column: 3, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !76, line: 1077, column: 3)
!3227 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1076, column: 3)
!3228 = !DILocation(line: 1075, column: 11, scope: !3227)
!3229 = !DILocation(line: 1075, column: 25, scope: !3227)
!3230 = !DILocalVariable(name: "n", scope: !3180, file: !76, line: 1067, type: !15)
!3231 = !DILocation(line: 1077, column: 3, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !76, line: 1080, column: 3)
!3233 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1079, column: 3)
!3234 = !DILocation(line: 0, scope: !3199)
!3235 = !DILocation(line: 1065, column: 5, scope: !3198)
!3236 = !DILocation(line: 1064, column: 5, scope: !3198)
!3237 = !DILocation(line: 1077, column: 13, scope: !3232)
!3238 = !DILocation(line: 1077, column: 21, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !76, line: 1077, column: 9)
!3240 = distinct !DILexicalBlock(scope: !3232, file: !76, line: 1077, column: 13)
!3241 = !DILocation(line: 1077, column: 11, scope: !3239)
!3242 = !DILocation(line: 1077, column: 9, scope: !3240)
!3243 = !DILocation(line: 1077, column: 26, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !76, line: 1077, column: 11)
!3245 = distinct !DILexicalBlock(scope: !3239, file: !76, line: 1077, column: 41)
!3246 = !DILocation(line: 1077, column: 16, scope: !3244)
!3247 = !DILocation(line: 1077, column: 11, scope: !3245)
!3248 = !DILocation(line: 1077, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3244, file: !76, line: 1077, column: 40)
!3250 = !DILocation(line: 1079, column: 5, scope: !3245)
!3251 = !DILocation(line: 1077, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3239, file: !76, line: 1079, column: 12)
!3253 = !DILocation(line: 1078, column: 19, scope: !3240)
!3254 = !DILocation(line: 1078, column: 30, scope: !3240)
!3255 = !DILocation(line: 1078, column: 32, scope: !3240)
!3256 = !DILocation(line: 1078, column: 9, scope: !3240)
!3257 = !DILocalVariable(name: "c", scope: !3180, file: !76, line: 1069, type: !18)
!3258 = !DILocation(line: 1080, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3240, file: !76, line: 1080, column: 9)
!3260 = !DILocation(line: 1080, column: 17, scope: !3259)
!3261 = !DILocation(line: 1080, column: 9, scope: !3240)
!3262 = !DILocation(line: 1081, column: 19, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !76, line: 1080, column: 24)
!3264 = !DILocation(line: 1082, column: 5, scope: !3263)
!3265 = !DILocation(line: 1083, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !76, line: 1083, column: 9)
!3267 = !DILocation(line: 1083, column: 17, scope: !3266)
!3268 = !DILocation(line: 1083, column: 9, scope: !3259)
!3269 = !DILocation(line: 1084, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !76, line: 1084, column: 7)
!3271 = distinct !DILexicalBlock(scope: !3266, file: !76, line: 1083, column: 24)
!3272 = !DILocalVariable(name: "tmp", scope: !3180, file: !76, line: 1070, type: !15)
!3273 = !DILocation(line: 1085, column: 9, scope: !3270)
!3274 = !DILocation(line: 1085, column: 60, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !76, line: 1086, column: 7)
!3276 = !DILocation(line: 1085, column: 71, scope: !3275)
!3277 = !DILocation(line: 1085, column: 73, scope: !3275)
!3278 = !DILocation(line: 1085, column: 7, scope: !3275)
!3279 = !DILocation(line: 1088, column: 5, scope: !3271)
!3280 = !DILocation(line: 1087, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3266, file: !76, line: 1087, column: 9)
!3282 = !DILocation(line: 1087, column: 17, scope: !3281)
!3283 = !DILocation(line: 1087, column: 9, scope: !3266)
!3284 = !DILocalVariable(name: "tmp___0", scope: !3180, file: !76, line: 1071, type: !15)
!3285 = !DILocation(line: 1088, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !76, line: 1088, column: 7)
!3287 = distinct !DILexicalBlock(scope: !3281, file: !76, line: 1087, column: 24)
!3288 = !DILocation(line: 1088, column: 64, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3286, file: !76, line: 1089, column: 7)
!3290 = !DILocation(line: 1088, column: 75, scope: !3289)
!3291 = !DILocation(line: 1088, column: 77, scope: !3289)
!3292 = !DILocation(line: 1088, column: 7, scope: !3289)
!3293 = !DILocation(line: 1092, column: 5, scope: !3287)
!3294 = !DILocation(line: 1087, column: 19, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3281, file: !76, line: 1087, column: 9)
!3296 = !DILocation(line: 1088, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !76, line: 1088, column: 7)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !76, line: 1087, column: 25)
!3299 = !DILocation(line: 1088, column: 64, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3297, file: !76, line: 1089, column: 7)
!3301 = !DILocation(line: 1088, column: 75, scope: !3300)
!3302 = !DILocation(line: 1088, column: 77, scope: !3300)
!3303 = !DILocation(line: 1088, column: 7, scope: !3300)
!3304 = !DILocation(line: 1092, column: 5, scope: !3298)
!3305 = !DILocation(line: 1091, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !76, line: 1091, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3295, file: !76, line: 1092, column: 12)
!3308 = !DILocation(line: 1091, column: 11, scope: !3307)
!3309 = !DILocation(line: 1091, column: 9, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !76, line: 1091, column: 19)
!3311 = !DILocation(line: 1092, column: 46, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !76, line: 1094, column: 7)
!3313 = distinct !DILexicalBlock(scope: !3307, file: !76, line: 1093, column: 7)
!3314 = !DILocation(line: 1092, column: 11, scope: !3312)
!3315 = !DILocation(line: 0, scope: !3295)
!3316 = !DILocation(line: 0, scope: !3281)
!3317 = !DILocation(line: 0, scope: !3266)
!3318 = !DILocation(line: 1080, column: 20, scope: !3259)
!3319 = !DILocation(line: 1077, column: 5, scope: !3227)
!3320 = !DILocation(line: 1077, column: 7, scope: !3240)
!3321 = distinct !{!3321, !3231, !3322}
!3322 = !DILocation(line: 1078, column: 3, scope: !3232)
!3323 = !DILocation(line: 1080, column: 3, scope: !3232)
!3324 = !DILocation(line: 1096, column: 9, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1096, column: 7)
!3326 = !DILocation(line: 1096, column: 7, scope: !3199)
!3327 = !DILocation(line: 1097, column: 44, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !76, line: 1098, column: 5)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !76, line: 1097, column: 5)
!3330 = distinct !DILexicalBlock(scope: !3325, file: !76, line: 1096, column: 14)
!3331 = !DILocation(line: 1097, column: 9, scope: !3328)
!3332 = !DILocation(line: 1100, column: 3, scope: !3330)
!3333 = !DILocation(line: 1100, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3199, file: !76, line: 1101, column: 3)
!3335 = !DILocation(line: 1100, column: 25, scope: !3334)
!3336 = !DILocation(line: 1102, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !76, line: 1101, column: 3)
!3338 = !DILocation(line: 1103, column: 3, scope: !3199)
!3339 = distinct !DISubprogram(name: "eci_string_init", scope: !76, file: !76, line: 815, type: !2373, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3340 = !DILocalVariable(name: "str", arg: 1, scope: !3339, file: !76, line: 815, type: !2375)
!3341 = !DILocation(line: 0, scope: !3339)
!3342 = !DILocalVariable(name: "__cil_tmp2", scope: !3339, file: !76, line: 817, type: !17)
!3343 = !DILocation(line: 817, column: 9, scope: !3339)
!3344 = !DILocalVariable(name: "__cil_tmp3", scope: !3339, file: !76, line: 818, type: !17)
!3345 = !DILocation(line: 818, column: 9, scope: !3339)
!3346 = !DILocalVariable(name: "__cil_tmp4", scope: !3339, file: !76, line: 819, type: !17)
!3347 = !DILocation(line: 819, column: 9, scope: !3339)
!3348 = !DILocation(line: 817, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !76, line: 817, column: 7)
!3350 = distinct !DILexicalBlock(scope: !3339, file: !76, line: 821, column: 3)
!3351 = !DILocation(line: 817, column: 7, scope: !3350)
!3352 = !DILocation(line: 817, column: 38, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !76, line: 819, column: 5)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !76, line: 818, column: 5)
!3355 = distinct !DILexicalBlock(scope: !3349, file: !76, line: 817, column: 14)
!3356 = !DILocation(line: 817, column: 5, scope: !3353)
!3357 = !DILocation(line: 822, column: 3, scope: !3355)
!3358 = !DILocation(line: 818, column: 8, scope: !3350)
!3359 = !DILocation(line: 818, column: 13, scope: !3350)
!3360 = !DILocation(line: 819, column: 8, scope: !3350)
!3361 = !DILocation(line: 819, column: 13, scope: !3350)
!3362 = !DILocation(line: 820, column: 8, scope: !3350)
!3363 = !DILocation(line: 820, column: 10, scope: !3350)
!3364 = !DILocation(line: 821, column: 3, scope: !3350)
!3365 = distinct !DISubprogram(name: "eci_impl_los_list_add_item", scope: !76, file: !76, line: 959, type: !3366, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!103, !103, !17, !15}
!3368 = !DILocalVariable(name: "head", arg: 1, scope: !3365, file: !76, line: 959, type: !103)
!3369 = !DILocation(line: 0, scope: !3365)
!3370 = !DILocalVariable(name: "stmp", arg: 2, scope: !3365, file: !76, line: 960, type: !17)
!3371 = !DILocalVariable(name: "len", arg: 3, scope: !3365, file: !76, line: 960, type: !15)
!3372 = !DILocalVariable(name: "i", scope: !3365, file: !76, line: 962, type: !103)
!3373 = !DILocalVariable(name: "last", scope: !3365, file: !76, line: 963, type: !103)
!3374 = !DILocation(line: 965, column: 3, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !76, line: 964, column: 3)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !76, line: 963, column: 3)
!3377 = distinct !DILexicalBlock(scope: !3365, file: !76, line: 965, column: 3)
!3378 = !DILocation(line: 0, scope: !3377)
!3379 = !DILocation(line: 965, column: 13, scope: !3375)
!3380 = !DILocation(line: 965, column: 12, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !76, line: 965, column: 9)
!3382 = distinct !DILexicalBlock(scope: !3375, file: !76, line: 965, column: 13)
!3383 = !DILocation(line: 965, column: 30, scope: !3381)
!3384 = !DILocation(line: 965, column: 9, scope: !3382)
!3385 = !DILocation(line: 965, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !76, line: 965, column: 63)
!3387 = !DILocation(line: 967, column: 12, scope: !3382)
!3388 = distinct !{!3388, !3374, !3389}
!3389 = !DILocation(line: 968, column: 3, scope: !3375)
!3390 = !DILocation(line: 970, column: 3, scope: !3375)
!3391 = !DILocation(line: 971, column: 7, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !76, line: 974, column: 3)
!3393 = distinct !DILexicalBlock(scope: !3377, file: !76, line: 973, column: 3)
!3394 = !DILocation(line: 972, column: 23, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3393, file: !76, line: 973, column: 3)
!3396 = !DILocation(line: 972, column: 3, scope: !3395)
!3397 = !DILocation(line: 973, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3377, file: !76, line: 973, column: 7)
!3399 = !DILocation(line: 973, column: 28, scope: !3398)
!3400 = !DILocation(line: 973, column: 7, scope: !3377)
!3401 = !DILocation(line: 973, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !76, line: 973, column: 60)
!3403 = !DILocation(line: 973, column: 21, scope: !3402)
!3404 = !DILocation(line: 974, column: 3, scope: !3402)
!3405 = !DILocation(line: 978, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3377, file: !76, line: 978, column: 7)
!3407 = !DILocation(line: 978, column: 28, scope: !3406)
!3408 = !DILocation(line: 978, column: 7, scope: !3377)
!3409 = !DILocation(line: 979, column: 5, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !76, line: 978, column: 60)
!3411 = !DILocation(line: 982, column: 3, scope: !3377)
!3412 = !DILocation(line: 984, column: 1, scope: !3365)
!3413 = distinct !DISubprogram(name: "eci_impl_los_list_alloc_item", scope: !76, file: !76, line: 985, type: !3414, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!103}
!3416 = !DILocalVariable(name: "__cil_tmp4", scope: !3413, file: !76, line: 990, type: !17)
!3417 = !DILocation(line: 990, column: 9, scope: !3413)
!3418 = !DILocalVariable(name: "__cil_tmp5", scope: !3413, file: !76, line: 991, type: !17)
!3419 = !DILocation(line: 991, column: 9, scope: !3413)
!3420 = !DILocalVariable(name: "__cil_tmp6", scope: !3413, file: !76, line: 992, type: !17)
!3421 = !DILocation(line: 992, column: 9, scope: !3413)
!3422 = !DILocation(line: 989, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !76, line: 996, column: 3)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !76, line: 995, column: 3)
!3425 = distinct !DILexicalBlock(scope: !3413, file: !76, line: 994, column: 3)
!3426 = !DILocalVariable(name: "tmp", scope: !3413, file: !76, line: 988, type: !7)
!3427 = !DILocation(line: 0, scope: !3413)
!3428 = !DILocation(line: 989, column: 10, scope: !3424)
!3429 = !DILocalVariable(name: "item", scope: !3413, file: !76, line: 987, type: !103)
!3430 = !DILocation(line: 990, column: 10, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3425, file: !76, line: 990, column: 7)
!3432 = !DILocation(line: 990, column: 31, scope: !3431)
!3433 = !DILocation(line: 990, column: 7, scope: !3425)
!3434 = !DILocation(line: 990, column: 38, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !76, line: 992, column: 5)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !76, line: 991, column: 5)
!3437 = distinct !DILexicalBlock(scope: !3431, file: !76, line: 990, column: 64)
!3438 = !DILocation(line: 990, column: 5, scope: !3435)
!3439 = !DILocation(line: 995, column: 3, scope: !3437)
!3440 = !DILocalVariable(name: "tmp___0", scope: !3413, file: !76, line: 989, type: !103)
!3441 = !DILocation(line: 991, column: 9, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3425, file: !76, line: 996, column: 3)
!3443 = !DILocation(line: 991, column: 19, scope: !3442)
!3444 = !DILocation(line: 992, column: 28, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !76, line: 992, column: 3)
!3446 = !DILocation(line: 992, column: 3, scope: !3445)
!3447 = !DILocation(line: 994, column: 3, scope: !3425)
!3448 = distinct !DISubprogram(name: "get_playlist_path", scope: !276, file: !276, line: 370, type: !3449, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!17}
!3451 = !DILocalVariable(name: "statbuf", scope: !3448, file: !276, line: 374, type: !233)
!3452 = !DILocation(line: 374, column: 15, scope: !3448)
!3453 = !DILocalVariable(name: "__cil_tmp8", scope: !3448, file: !276, line: 379, type: !17)
!3454 = !DILocation(line: 379, column: 9, scope: !3448)
!3455 = !DILocalVariable(name: "__cil_tmp9", scope: !3448, file: !276, line: 380, type: !17)
!3456 = !DILocation(line: 380, column: 9, scope: !3448)
!3457 = !DILocalVariable(name: "__cil_tmp10", scope: !3448, file: !276, line: 381, type: !17)
!3458 = !DILocation(line: 381, column: 9, scope: !3448)
!3459 = !DILocalVariable(name: "__cil_tmp11", scope: !3448, file: !276, line: 382, type: !17)
!3460 = !DILocation(line: 382, column: 9, scope: !3448)
!3461 = !DILocation(line: 372, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 386, column: 3)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !276, line: 385, column: 3)
!3464 = distinct !DILexicalBlock(scope: !3448, file: !276, line: 384, column: 3)
!3465 = !DILocalVariable(name: "tmp", scope: !3448, file: !276, line: 373, type: !7)
!3466 = !DILocation(line: 0, scope: !3448)
!3467 = !DILocalVariable(name: "path", scope: !3448, file: !276, line: 372, type: !17)
!3468 = !DILocation(line: 376, column: 13, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 373, column: 3)
!3470 = !DILocalVariable(name: "tmp___0", scope: !3448, file: !276, line: 375, type: !17)
!3471 = !DILocation(line: 376, column: 3, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 378, column: 3)
!3473 = !DILocation(line: 377, column: 13, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 379, column: 3)
!3475 = !DILocalVariable(name: "tmp___1", scope: !3448, file: !276, line: 376, type: !64)
!3476 = !DILocation(line: 378, column: 18, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 379, column: 3)
!3478 = !DILocation(line: 378, column: 29, scope: !3477)
!3479 = !DILocation(line: 377, column: 3, scope: !3477)
!3480 = !DILocation(line: 380, column: 13, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3463, file: !276, line: 380, column: 3)
!3482 = !DILocalVariable(name: "tmp___2", scope: !3448, file: !276, line: 377, type: !15)
!3483 = !DILocation(line: 380, column: 15, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3464, file: !276, line: 380, column: 7)
!3485 = !DILocation(line: 380, column: 7, scope: !3464)
!3486 = !DILocation(line: 381, column: 5, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !276, line: 382, column: 5)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !276, line: 381, column: 5)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !276, line: 380, column: 21)
!3490 = !DILocation(line: 382, column: 5, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3488, file: !276, line: 384, column: 5)
!3492 = !DILocation(line: 385, column: 3, scope: !3489)
!3493 = !DILocation(line: 385, column: 19, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3484, file: !276, line: 385, column: 7)
!3495 = !DILocation(line: 385, column: 27, scope: !3494)
!3496 = !DILocation(line: 385, column: 37, scope: !3494)
!3497 = !DILocation(line: 385, column: 7, scope: !3484)
!3498 = !DILocation(line: 387, column: 5, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !276, line: 387, column: 5)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !276, line: 386, column: 5)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !276, line: 385, column: 49)
!3502 = !DILocation(line: 390, column: 3, scope: !3501)
!3503 = !DILocation(line: 0, scope: !3464)
!3504 = !DILocation(line: 372, column: 8, scope: !3463)
!3505 = !DILocation(line: 392, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3464, file: !276, line: 392, column: 7)
!3507 = !DILocation(line: 392, column: 28, scope: !3506)
!3508 = !DILocation(line: 392, column: 7, scope: !3464)
!3509 = !DILocation(line: 394, column: 15, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !276, line: 394, column: 5)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !276, line: 393, column: 5)
!3512 = distinct !DILexicalBlock(scope: !3506, file: !276, line: 392, column: 60)
!3513 = !DILocalVariable(name: "tmp___3", scope: !3448, file: !276, line: 378, type: !64)
!3514 = !DILocation(line: 395, column: 20, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !276, line: 396, column: 5)
!3516 = !DILocation(line: 395, column: 31, scope: !3515)
!3517 = !DILocation(line: 394, column: 5, scope: !3515)
!3518 = !DILocation(line: 398, column: 3, scope: !3512)
!3519 = !DILocation(line: 397, column: 3, scope: !3464)
!3520 = distinct !DISubprogram(name: "get_next_track", scope: !276, file: !276, line: 285, type: !3521, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!72, !132, !15, !225, !266}
!3523 = !DILocalVariable(name: "tracknum", arg: 1, scope: !3520, file: !276, line: 285, type: !132)
!3524 = !DILocation(line: 0, scope: !3520)
!3525 = !DILocalVariable(name: "argc", arg: 2, scope: !3520, file: !276, line: 285, type: !15)
!3526 = !DILocalVariable(name: "argv", arg: 3, scope: !3520, file: !276, line: 285, type: !225)
!3527 = !DILocalVariable(name: "eci", arg: 4, scope: !3520, file: !276, line: 285, type: !266)
!3528 = !DILocalVariable(name: "nexttrack", scope: !3520, file: !276, line: 287, type: !72)
!3529 = !DILocation(line: 289, column: 7, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !276, line: 289, column: 7)
!3531 = distinct !DILexicalBlock(scope: !3520, file: !276, line: 289, column: 3)
!3532 = !DILocation(line: 289, column: 20, scope: !3530)
!3533 = !DILocation(line: 289, column: 7, scope: !3531)
!3534 = !DILocation(line: 290, column: 17, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !276, line: 291, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !276, line: 290, column: 5)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !276, line: 289, column: 26)
!3538 = !DILocation(line: 293, column: 3, scope: !3537)
!3539 = !DILocation(line: 292, column: 35, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !276, line: 295, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !276, line: 294, column: 5)
!3542 = distinct !DILexicalBlock(scope: !3530, file: !276, line: 293, column: 10)
!3543 = !DILocation(line: 292, column: 17, scope: !3540)
!3544 = !DILocation(line: 0, scope: !3530)
!3545 = !DILocation(line: 294, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3531, file: !276, line: 294, column: 7)
!3547 = !DILocation(line: 294, column: 33, scope: !3546)
!3548 = !DILocation(line: 294, column: 7, scope: !3531)
!3549 = !DILocation(line: 296, column: 9, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !276, line: 296, column: 9)
!3551 = distinct !DILexicalBlock(scope: !3546, file: !276, line: 294, column: 65)
!3552 = !DILocation(line: 296, column: 9, scope: !3551)
!3553 = !DILocation(line: 297, column: 21, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !276, line: 298, column: 7)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !276, line: 297, column: 7)
!3556 = distinct !DILexicalBlock(scope: !3550, file: !276, line: 296, column: 30)
!3557 = !DILocation(line: 297, column: 7, scope: !3554)
!3558 = !DILocation(line: 300, column: 5, scope: !3556)
!3559 = !DILocation(line: 299, column: 56, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !276, line: 302, column: 5)
!3561 = distinct !DILexicalBlock(scope: !3551, file: !276, line: 301, column: 5)
!3562 = !DILocation(line: 299, column: 5, scope: !3560)
!3563 = !DILocation(line: 302, column: 3, scope: !3551)
!3564 = !DILocation(line: 303, column: 10, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3546, file: !276, line: 303, column: 7)
!3566 = !DILocation(line: 303, column: 23, scope: !3565)
!3567 = !DILocation(line: 303, column: 7, scope: !3546)
!3568 = !DILocation(line: 310, column: 15, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !276, line: 303, column: 30)
!3570 = !DILocation(line: 315, column: 9, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3569, file: !276, line: 315, column: 9)
!3572 = !DILocation(line: 315, column: 22, scope: !3571)
!3573 = !DILocation(line: 315, column: 9, scope: !3569)
!3574 = !DILocation(line: 316, column: 19, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !276, line: 317, column: 7)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !276, line: 316, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3571, file: !276, line: 315, column: 28)
!3578 = !DILocation(line: 319, column: 5, scope: !3577)
!3579 = !DILocation(line: 318, column: 37, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !276, line: 321, column: 7)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !276, line: 320, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3571, file: !276, line: 319, column: 12)
!3583 = !DILocation(line: 318, column: 19, scope: !3580)
!3584 = !DILocation(line: 0, scope: !3571)
!3585 = !DILocation(line: 322, column: 9, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3569, file: !276, line: 322, column: 9)
!3587 = !DILocation(line: 322, column: 35, scope: !3586)
!3588 = !DILocation(line: 322, column: 9, scope: !3569)
!3589 = !DILocation(line: 324, column: 11, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !276, line: 324, column: 11)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !276, line: 322, column: 67)
!3592 = !DILocation(line: 324, column: 11, scope: !3591)
!3593 = !DILocation(line: 325, column: 23, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !276, line: 326, column: 9)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !276, line: 325, column: 9)
!3596 = distinct !DILexicalBlock(scope: !3590, file: !276, line: 324, column: 32)
!3597 = !DILocation(line: 325, column: 9, scope: !3594)
!3598 = !DILocation(line: 328, column: 7, scope: !3596)
!3599 = !DILocation(line: 327, column: 58, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !276, line: 330, column: 7)
!3601 = distinct !DILexicalBlock(scope: !3591, file: !276, line: 329, column: 7)
!3602 = !DILocation(line: 327, column: 7, scope: !3600)
!3603 = !DILocation(line: 330, column: 5, scope: !3591)
!3604 = !DILocation(line: 331, column: 3, scope: !3569)
!3605 = !DILocation(line: 0, scope: !3531)
!3606 = !DILocation(line: 290, column: 15, scope: !3535)
!3607 = !DILocation(line: 336, column: 3, scope: !3531)
!3608 = distinct !DISubprogram(name: "setup_signal_handling", scope: !276, file: !276, line: 733, type: !218, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3609 = !DILocalVariable(name: "es_handler_int", scope: !3608, file: !276, line: 735, type: !138)
!3610 = !DILocation(line: 735, column: 20, scope: !3608)
!3611 = !DILocalVariable(name: "ign_handler", scope: !3608, file: !276, line: 736, type: !138)
!3612 = !DILocation(line: 736, column: 20, scope: !3608)
!3613 = !DILocation(line: 738, column: 18, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !276, line: 739, column: 3)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !276, line: 738, column: 3)
!3616 = !DILocation(line: 738, column: 38, scope: !3614)
!3617 = !DILocation(line: 738, column: 49, scope: !3614)
!3618 = !DILocation(line: 739, column: 32, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3614, file: !276, line: 739, column: 3)
!3620 = !DILocation(line: 739, column: 3, scope: !3619)
!3621 = !DILocation(line: 740, column: 18, scope: !3614)
!3622 = !DILocation(line: 740, column: 27, scope: !3614)
!3623 = !DILocation(line: 742, column: 15, scope: !3614)
!3624 = !DILocation(line: 742, column: 35, scope: !3614)
!3625 = !DILocation(line: 742, column: 46, scope: !3614)
!3626 = !DILocation(line: 743, column: 29, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3614, file: !276, line: 743, column: 3)
!3628 = !DILocation(line: 743, column: 3, scope: !3627)
!3629 = !DILocation(line: 744, column: 15, scope: !3614)
!3630 = !DILocation(line: 744, column: 24, scope: !3614)
!3631 = !DILocation(line: 747, column: 3, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3614, file: !276, line: 745, column: 3)
!3633 = !DILocation(line: 750, column: 3, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3614, file: !276, line: 749, column: 3)
!3635 = !DILocation(line: 751, column: 3, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3614, file: !276, line: 752, column: 3)
!3637 = !DILocation(line: 752, column: 3, scope: !3615)
!3638 = distinct !DISubprogram(name: "get_track_playlist", scope: !276, file: !276, line: 411, type: !3639, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!72, !132}
!3641 = !DILocalVariable(name: "next_track", arg: 1, scope: !3638, file: !276, line: 411, type: !132)
!3642 = !DILocation(line: 0, scope: !3638)
!3643 = !DILocalVariable(name: "__cil_tmp9", scope: !3638, file: !276, line: 420, type: !17)
!3644 = !DILocation(line: 420, column: 9, scope: !3638)
!3645 = !DILocalVariable(name: "res", scope: !3638, file: !276, line: 413, type: !72)
!3646 = !DILocation(line: 417, column: 10, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !276, line: 423, column: 3)
!3648 = distinct !DILexicalBlock(scope: !3638, file: !276, line: 422, column: 3)
!3649 = !DILocalVariable(name: "next", scope: !3638, file: !276, line: 416, type: !15)
!3650 = !DILocation(line: 421, column: 10, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !276, line: 418, column: 3)
!3652 = !DILocalVariable(name: "path", scope: !3638, file: !276, line: 414, type: !17)
!3653 = !DILocation(line: 422, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3648, file: !276, line: 422, column: 7)
!3655 = !DILocation(line: 422, column: 28, scope: !3654)
!3656 = !DILocation(line: 422, column: 7, scope: !3648)
!3657 = !DILocation(line: 423, column: 5, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !276, line: 422, column: 60)
!3659 = !DILocation(line: 426, column: 8, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !276, line: 426, column: 3)
!3661 = distinct !DILexicalBlock(scope: !3648, file: !276, line: 425, column: 3)
!3662 = !DILocalVariable(name: "f1", scope: !3638, file: !276, line: 415, type: !8)
!3663 = !DILocation(line: 427, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3648, file: !276, line: 427, column: 7)
!3665 = !DILocation(line: 427, column: 26, scope: !3664)
!3666 = !DILocation(line: 427, column: 7, scope: !3648)
!3667 = !DILocalVariable(name: "cur_item", scope: !3638, file: !276, line: 419, type: !15)
!3668 = !DILocalVariable(name: "w", scope: !3638, file: !276, line: 418, type: !15)
!3669 = !DILocation(line: 431, column: 5, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !276, line: 433, column: 5)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !276, line: 432, column: 5)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !276, line: 427, column: 58)
!3673 = !DILocation(line: 0, scope: !3648)
!3674 = !DILocation(line: 0, scope: !3672)
!3675 = !DILocation(line: 431, column: 15, scope: !3670)
!3676 = !DILocation(line: 432, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !276, line: 435, column: 7)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !276, line: 434, column: 7)
!3679 = distinct !DILexicalBlock(scope: !3670, file: !276, line: 431, column: 15)
!3680 = !DILocalVariable(name: "c", scope: !3638, file: !276, line: 417, type: !15)
!3681 = !DILocation(line: 433, column: 13, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !276, line: 433, column: 11)
!3683 = !DILocation(line: 433, column: 11, scope: !3679)
!3684 = !DILocation(line: 434, column: 18, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !276, line: 434, column: 13)
!3686 = distinct !DILexicalBlock(scope: !3682, file: !276, line: 433, column: 20)
!3687 = !DILocation(line: 434, column: 13, scope: !3686)
!3688 = !DILocation(line: 436, column: 16, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !276, line: 435, column: 11)
!3690 = distinct !DILexicalBlock(scope: !3685, file: !276, line: 434, column: 30)
!3691 = !DILocation(line: 437, column: 23, scope: !3689)
!3692 = !DILocation(line: 439, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !276, line: 438, column: 11)
!3694 = !DILocation(line: 442, column: 11, scope: !3690)
!3695 = !DILocation(line: 444, column: 9, scope: !3686)
!3696 = !DILocation(line: 447, column: 20, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3679, file: !276, line: 447, column: 11)
!3698 = !DILocation(line: 447, column: 11, scope: !3679)
!3699 = !DILocation(line: 448, column: 15, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !276, line: 448, column: 13)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !276, line: 447, column: 29)
!3702 = !DILocation(line: 448, column: 13, scope: !3701)
!3703 = !DILocation(line: 449, column: 11, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !276, line: 448, column: 22)
!3705 = !DILocation(line: 449, column: 27, scope: !3704)
!3706 = !DILocation(line: 451, column: 11, scope: !3704)
!3707 = !DILocation(line: 454, column: 29, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3700, file: !276, line: 452, column: 16)
!3709 = !DILocation(line: 454, column: 11, scope: !3708)
!3710 = !DILocation(line: 454, column: 27, scope: !3708)
!3711 = !DILocation(line: 456, column: 11, scope: !3701)
!3712 = !DILocation(line: 457, column: 7, scope: !3701)
!3713 = !DILocation(line: 458, column: 13, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3679, file: !276, line: 458, column: 11)
!3715 = !DILocation(line: 458, column: 11, scope: !3679)
!3716 = !DILocation(line: 459, column: 18, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !276, line: 458, column: 20)
!3718 = !DILocation(line: 460, column: 7, scope: !3717)
!3719 = !DILocation(line: 458, column: 16, scope: !3714)
!3720 = !DILocation(line: 0, scope: !3679)
!3721 = distinct !{!3721, !3669, !3722}
!3722 = !DILocation(line: 462, column: 5, scope: !3670)
!3723 = !DILocation(line: 464, column: 5, scope: !3670)
!3724 = !DILocation(line: 464, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !276, line: 468, column: 5)
!3726 = distinct !DILexicalBlock(scope: !3672, file: !276, line: 467, column: 5)
!3727 = !DILocation(line: 467, column: 3, scope: !3672)
!3728 = !DILocation(line: 414, column: 7, scope: !3647)
!3729 = !DILocation(line: 467, column: 3, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !276, line: 469, column: 3)
!3731 = distinct !DILexicalBlock(scope: !3648, file: !276, line: 468, column: 3)
!3732 = !DILocation(line: 469, column: 3, scope: !3648)
!3733 = !DILocation(line: 471, column: 1, scope: !3638)
!3734 = distinct !DISubprogram(name: "get_track_cmdline", scope: !276, file: !276, line: 345, type: !3735, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!72, !15, !15, !225}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3734, file: !276, line: 345, type: !15)
!3738 = !DILocation(line: 0, scope: !3734)
!3739 = !DILocalVariable(name: "argc", arg: 2, scope: !3734, file: !276, line: 345, type: !15)
!3740 = !DILocalVariable(name: "argv", arg: 3, scope: !3734, file: !276, line: 345, type: !225)
!3741 = !DILocalVariable(name: "c", scope: !3734, file: !276, line: 348, type: !15)
!3742 = !DILocalVariable(name: "i", scope: !3734, file: !276, line: 347, type: !15)
!3743 = !DILocation(line: 351, column: 3, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !276, line: 353, column: 3)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !276, line: 352, column: 3)
!3746 = distinct !DILexicalBlock(scope: !3734, file: !276, line: 350, column: 3)
!3747 = !DILocation(line: 0, scope: !3746)
!3748 = !DILocation(line: 351, column: 13, scope: !3744)
!3749 = !DILocation(line: 351, column: 14, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !276, line: 351, column: 9)
!3751 = distinct !DILexicalBlock(scope: !3744, file: !276, line: 351, column: 13)
!3752 = !DILocation(line: 351, column: 9, scope: !3751)
!3753 = !DILocation(line: 351, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !276, line: 351, column: 23)
!3755 = !DILocation(line: 353, column: 24, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3751, file: !276, line: 353, column: 9)
!3757 = !DILocation(line: 353, column: 17, scope: !3756)
!3758 = !DILocation(line: 353, column: 29, scope: !3756)
!3759 = !DILocation(line: 353, column: 15, scope: !3756)
!3760 = !DILocation(line: 353, column: 9, scope: !3756)
!3761 = !DILocation(line: 353, column: 34, scope: !3756)
!3762 = !DILocation(line: 353, column: 9, scope: !3751)
!3763 = !DILocation(line: 354, column: 9, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3756, file: !276, line: 353, column: 41)
!3765 = !DILocation(line: 354, column: 13, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !276, line: 354, column: 11)
!3767 = !DILocation(line: 354, column: 11, scope: !3764)
!3768 = !DILocation(line: 355, column: 40, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !276, line: 354, column: 19)
!3770 = !DILocation(line: 355, column: 33, scope: !3769)
!3771 = !DILocation(line: 355, column: 9, scope: !3769)
!3772 = !DILocation(line: 357, column: 5, scope: !3764)
!3773 = !DILocation(line: 351, column: 7, scope: !3751)
!3774 = distinct !{!3774, !3743, !3775}
!3775 = !DILocation(line: 352, column: 3, scope: !3744)
!3776 = !DILocation(line: 354, column: 3, scope: !3744)
!3777 = !DILocation(line: 360, column: 3, scope: !3746)
!3778 = !DILocation(line: 362, column: 1, scope: !3734)
!3779 = distinct !DISubprogram(name: "initialize_chainsetup_for_playback", scope: !276, file: !276, line: 223, type: !3780, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{null, !266, !72, !15}
!3782 = !DILocalVariable(name: "eci", arg: 1, scope: !3779, file: !276, line: 223, type: !266)
!3783 = !DILocation(line: 0, scope: !3779)
!3784 = !DILocalVariable(name: "nexttrack", arg: 2, scope: !3779, file: !276, line: 223, type: !72)
!3785 = !DILocalVariable(name: "tracknum", arg: 3, scope: !3779, file: !276, line: 224, type: !15)
!3786 = !DILocalVariable(name: "tmpbuf", scope: !3779, file: !276, line: 227, type: !125)
!3787 = !DILocation(line: 227, column: 8, scope: !3779)
!3788 = !DILocalVariable(name: "__cil_tmp16", scope: !3779, file: !276, line: 238, type: !7)
!3789 = !DILocation(line: 238, column: 9, scope: !3779)
!3790 = !DILocalVariable(name: "__cil_tmp17", scope: !3779, file: !276, line: 239, type: !17)
!3791 = !DILocation(line: 239, column: 9, scope: !3779)
!3792 = !DILocalVariable(name: "__cil_tmp18", scope: !3779, file: !276, line: 240, type: !17)
!3793 = !DILocation(line: 240, column: 9, scope: !3779)
!3794 = !DILocalVariable(name: "__cil_tmp19", scope: !3779, file: !276, line: 241, type: !17)
!3795 = !DILocation(line: 241, column: 9, scope: !3779)
!3796 = !DILocalVariable(name: "__cil_tmp20", scope: !3779, file: !276, line: 242, type: !17)
!3797 = !DILocation(line: 242, column: 9, scope: !3779)
!3798 = !DILocalVariable(name: "__cil_tmp21", scope: !3779, file: !276, line: 243, type: !17)
!3799 = !DILocation(line: 243, column: 9, scope: !3779)
!3800 = !DILocalVariable(name: "__cil_tmp22", scope: !3779, file: !276, line: 244, type: !17)
!3801 = !DILocation(line: 244, column: 9, scope: !3779)
!3802 = !DILocalVariable(name: "__cil_tmp23", scope: !3779, file: !276, line: 245, type: !17)
!3803 = !DILocation(line: 245, column: 9, scope: !3779)
!3804 = !DILocalVariable(name: "__cil_tmp24", scope: !3779, file: !276, line: 246, type: !17)
!3805 = !DILocation(line: 246, column: 9, scope: !3779)
!3806 = !DILocalVariable(name: "__cil_tmp25", scope: !3779, file: !276, line: 247, type: !17)
!3807 = !DILocation(line: 247, column: 9, scope: !3779)
!3808 = !DILocalVariable(name: "__cil_tmp26", scope: !3779, file: !276, line: 248, type: !17)
!3809 = !DILocation(line: 248, column: 9, scope: !3779)
!3810 = !DILocalVariable(name: "__cil_tmp27", scope: !3779, file: !276, line: 249, type: !17)
!3811 = !DILocation(line: 249, column: 9, scope: !3779)
!3812 = !DILocalVariable(name: "__cil_tmp28", scope: !3779, file: !276, line: 250, type: !17)
!3813 = !DILocation(line: 250, column: 9, scope: !3779)
!3814 = !DILocalVariable(name: "__cil_tmp29", scope: !3779, file: !276, line: 251, type: !17)
!3815 = !DILocation(line: 251, column: 9, scope: !3779)
!3816 = !DILocalVariable(name: "__cil_tmp30", scope: !3779, file: !276, line: 252, type: !17)
!3817 = !DILocation(line: 252, column: 9, scope: !3779)
!3818 = !DILocalVariable(name: "__cil_tmp31", scope: !3779, file: !276, line: 253, type: !17)
!3819 = !DILocation(line: 253, column: 9, scope: !3779)
!3820 = !DILocalVariable(name: "__cil_tmp32", scope: !3779, file: !276, line: 254, type: !17)
!3821 = !DILocation(line: 254, column: 9, scope: !3779)
!3822 = !DILocalVariable(name: "ret", scope: !3779, file: !276, line: 226, type: !72)
!3823 = !DILocation(line: 227, column: 10, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !276, line: 226, column: 3)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 257, column: 3)
!3826 = distinct !DILexicalBlock(scope: !3779, file: !276, line: 256, column: 3)
!3827 = !DILocation(line: 227, column: 8, scope: !3824)
!3828 = !DILocation(line: 228, column: 23, scope: !3825)
!3829 = !DILocation(line: 230, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 230, column: 7)
!3831 = !DILocation(line: 230, column: 26, scope: !3830)
!3832 = !DILocation(line: 230, column: 7, scope: !3826)
!3833 = !DILocation(line: 232, column: 39, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !276, line: 232, column: 5)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !276, line: 231, column: 5)
!3836 = distinct !DILexicalBlock(scope: !3830, file: !276, line: 230, column: 33)
!3837 = !DILocation(line: 233, column: 14, scope: !3834)
!3838 = !DILocation(line: 232, column: 5, scope: !3834)
!3839 = !DILocation(line: 233, column: 19, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3835, file: !276, line: 235, column: 5)
!3841 = !DILocation(line: 233, column: 41, scope: !3840)
!3842 = !DILocation(line: 233, column: 5, scope: !3840)
!3843 = !DILocation(line: 236, column: 3, scope: !3836)
!3844 = !DILocation(line: 236, column: 17, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !276, line: 238, column: 3)
!3846 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 237, column: 3)
!3847 = !DILocation(line: 236, column: 3, scope: !3845)
!3848 = !DILocation(line: 238, column: 17, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !276, line: 238, column: 3)
!3850 = !DILocation(line: 238, column: 3, scope: !3849)
!3851 = !DILocation(line: 239, column: 38, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3846, file: !276, line: 240, column: 3)
!3853 = !DILocation(line: 239, column: 9, scope: !3852)
!3854 = !DILocalVariable(name: "tmp", scope: !3779, file: !276, line: 228, type: !15)
!3855 = !DILocation(line: 239, column: 11, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 239, column: 7)
!3857 = !DILocation(line: 239, column: 7, scope: !3826)
!3858 = !DILocation(line: 240, column: 38, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !276, line: 241, column: 5)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !276, line: 240, column: 5)
!3861 = distinct !DILexicalBlock(scope: !3856, file: !276, line: 239, column: 17)
!3862 = !DILocation(line: 240, column: 5, scope: !3859)
!3863 = !DILocation(line: 243, column: 3, scope: !3861)
!3864 = !DILocation(line: 245, column: 17, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !276, line: 245, column: 3)
!3866 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 244, column: 3)
!3867 = !DILocation(line: 245, column: 3, scope: !3865)
!3868 = !DILocation(line: 247, column: 27, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !276, line: 247, column: 3)
!3870 = !DILocation(line: 247, column: 3, scope: !3869)
!3871 = !DILocation(line: 248, column: 36, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !276, line: 249, column: 3)
!3873 = !DILocation(line: 248, column: 20, scope: !3872)
!3874 = !DILocation(line: 248, column: 3, scope: !3872)
!3875 = !DILocation(line: 250, column: 23, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 250, column: 7)
!3877 = !DILocation(line: 250, column: 7, scope: !3876)
!3878 = !DILocation(line: 250, column: 38, scope: !3876)
!3879 = !DILocation(line: 250, column: 7, scope: !3826)
!3880 = !DILocation(line: 251, column: 19, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !276, line: 252, column: 5)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !276, line: 251, column: 5)
!3883 = distinct !DILexicalBlock(scope: !3876, file: !276, line: 250, column: 70)
!3884 = !DILocation(line: 251, column: 5, scope: !3881)
!3885 = !DILocation(line: 254, column: 45, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !276, line: 253, column: 5)
!3887 = !DILocation(line: 254, column: 29, scope: !3886)
!3888 = !DILocation(line: 254, column: 5, scope: !3886)
!3889 = !DILocation(line: 257, column: 3, scope: !3883)
!3890 = !DILocation(line: 257, column: 15, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 259, column: 5)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !276, line: 258, column: 5)
!3893 = distinct !DILexicalBlock(scope: !3876, file: !276, line: 257, column: 10)
!3894 = !DILocalVariable(name: "tmp___0", scope: !3779, file: !276, line: 230, type: !64)
!3895 = !DILocation(line: 257, column: 22, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 259, column: 5)
!3897 = !DILocation(line: 257, column: 15, scope: !3896)
!3898 = !DILocalVariable(name: "tmp___1", scope: !3779, file: !276, line: 231, type: !64)
!3899 = !DILocation(line: 257, column: 27, scope: !3892)
!3900 = !DILocation(line: 257, column: 38, scope: !3892)
!3901 = !DILocalVariable(name: "len", scope: !3779, file: !276, line: 229, type: !15)
!3902 = !DILocation(line: 258, column: 15, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 258, column: 5)
!3904 = !DILocalVariable(name: "tmp___2", scope: !3779, file: !276, line: 233, type: !7)
!3905 = !DILocalVariable(name: "tmpbuf___0", scope: !3779, file: !276, line: 232, type: !17)
!3906 = !DILocation(line: 260, column: 14, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 259, column: 5)
!3908 = !DILocation(line: 259, column: 5, scope: !3907)
!3909 = !DILocation(line: 260, column: 19, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 262, column: 5)
!3911 = !DILocation(line: 260, column: 5, scope: !3910)
!3912 = !DILocation(line: 261, column: 45, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 262, column: 5)
!3914 = !DILocation(line: 261, column: 29, scope: !3913)
!3915 = !DILocation(line: 261, column: 5, scope: !3913)
!3916 = !DILocation(line: 262, column: 5, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3892, file: !276, line: 263, column: 5)
!3918 = !DILocation(line: 267, column: 17, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !276, line: 267, column: 3)
!3920 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 266, column: 3)
!3921 = !DILocation(line: 267, column: 3, scope: !3919)
!3922 = !DILocation(line: 268, column: 25, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !276, line: 269, column: 3)
!3924 = !DILocation(line: 268, column: 13, scope: !3923)
!3925 = !DILocalVariable(name: "tmp___6", scope: !3779, file: !276, line: 237, type: !15)
!3926 = !DILocation(line: 268, column: 7, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3826, file: !276, line: 268, column: 7)
!3928 = !DILocation(line: 268, column: 7, scope: !3826)
!3929 = !DILocation(line: 269, column: 32, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !276, line: 270, column: 5)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !276, line: 269, column: 5)
!3932 = distinct !DILexicalBlock(scope: !3927, file: !276, line: 268, column: 16)
!3933 = !DILocation(line: 269, column: 15, scope: !3930)
!3934 = !DILocalVariable(name: "tmp___3", scope: !3779, file: !276, line: 234, type: !72)
!3935 = !DILocation(line: 269, column: 38, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !276, line: 271, column: 5)
!3937 = !DILocation(line: 269, column: 5, scope: !3936)
!3938 = !DILocation(line: 273, column: 3, scope: !3932)
!3939 = !DILocation(line: 272, column: 19, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !276, line: 275, column: 5)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !276, line: 274, column: 5)
!3942 = distinct !DILexicalBlock(scope: !3927, file: !276, line: 273, column: 10)
!3943 = !DILocation(line: 272, column: 5, scope: !3940)
!3944 = !DILocation(line: 273, column: 29, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3941, file: !276, line: 274, column: 5)
!3946 = !DILocation(line: 273, column: 11, scope: !3945)
!3947 = !DILocation(line: 274, column: 15, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3941, file: !276, line: 275, column: 5)
!3949 = !DILocalVariable(name: "tmp___4", scope: !3779, file: !276, line: 235, type: !64)
!3950 = !DILocation(line: 274, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3941, file: !276, line: 276, column: 5)
!3952 = !DILocalVariable(name: "tmp___5", scope: !3779, file: !276, line: 236, type: !15)
!3953 = !DILocation(line: 274, column: 17, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3942, file: !276, line: 274, column: 9)
!3955 = !DILocation(line: 274, column: 9, scope: !3942)
!3956 = !DILocation(line: 275, column: 40, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !276, line: 276, column: 7)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !276, line: 275, column: 7)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !276, line: 274, column: 23)
!3960 = !DILocation(line: 275, column: 7, scope: !3957)
!3961 = !DILocation(line: 279, column: 5, scope: !3959)
!3962 = !DILocation(line: 279, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !276, line: 281, column: 7)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !276, line: 280, column: 7)
!3965 = distinct !DILexicalBlock(scope: !3954, file: !276, line: 279, column: 12)
!3966 = !DILocation(line: 280, column: 21, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !276, line: 282, column: 7)
!3968 = !DILocation(line: 280, column: 7, scope: !3967)
!3969 = !DILocation(line: 283, column: 3, scope: !3826)
!3970 = distinct !DISubprogram(name: "add_input_to_chainsetup", scope: !276, file: !276, line: 149, type: !1165, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3971 = !DILocalVariable(name: "eci", arg: 1, scope: !3970, file: !276, line: 149, type: !226)
!3972 = !DILocation(line: 0, scope: !3970)
!3973 = !DILocalVariable(name: "nexttrack", arg: 2, scope: !3970, file: !276, line: 149, type: !72)
!3974 = !DILocalVariable(name: "__cil_tmp11", scope: !3970, file: !276, line: 159, type: !17)
!3975 = !DILocation(line: 159, column: 9, scope: !3970)
!3976 = !DILocalVariable(name: "__cil_tmp12", scope: !3970, file: !276, line: 160, type: !17)
!3977 = !DILocation(line: 160, column: 9, scope: !3970)
!3978 = !DILocalVariable(name: "__cil_tmp13", scope: !3970, file: !276, line: 161, type: !17)
!3979 = !DILocation(line: 161, column: 9, scope: !3970)
!3980 = !DILocalVariable(name: "__cil_tmp14", scope: !3970, file: !276, line: 162, type: !17)
!3981 = !DILocation(line: 162, column: 9, scope: !3970)
!3982 = !DILocalVariable(name: "__cil_tmp15", scope: !3970, file: !276, line: 163, type: !17)
!3983 = !DILocation(line: 163, column: 9, scope: !3970)
!3984 = !DILocalVariable(name: "__cil_tmp16", scope: !3970, file: !276, line: 164, type: !17)
!3985 = !DILocation(line: 164, column: 9, scope: !3970)
!3986 = !DILocalVariable(name: "__cil_tmp17", scope: !3970, file: !276, line: 165, type: !17)
!3987 = !DILocation(line: 165, column: 9, scope: !3970)
!3988 = !DILocalVariable(name: "__cil_tmp18", scope: !3970, file: !276, line: 166, type: !17)
!3989 = !DILocation(line: 166, column: 9, scope: !3970)
!3990 = !DILocalVariable(name: "__cil_tmp19", scope: !3970, file: !276, line: 167, type: !17)
!3991 = !DILocation(line: 167, column: 9, scope: !3970)
!3992 = !DILocalVariable(name: "__cil_tmp20", scope: !3970, file: !276, line: 168, type: !17)
!3993 = !DILocation(line: 168, column: 9, scope: !3970)
!3994 = !DILocalVariable(name: "__cil_tmp21", scope: !3970, file: !276, line: 169, type: !17)
!3995 = !DILocation(line: 169, column: 9, scope: !3970)
!3996 = !DILocalVariable(name: "__cil_tmp22", scope: !3970, file: !276, line: 170, type: !17)
!3997 = !DILocation(line: 170, column: 9, scope: !3970)
!3998 = !DILocation(line: 151, column: 9, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 174, column: 3)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !276, line: 173, column: 3)
!4001 = distinct !DILexicalBlock(scope: !3970, file: !276, line: 172, column: 3)
!4002 = !DILocalVariable(name: "tmp", scope: !3970, file: !276, line: 152, type: !64)
!4003 = !DILocation(line: 151, column: 13, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 153, column: 3)
!4005 = !DILocalVariable(name: "tmp___0", scope: !3970, file: !276, line: 153, type: !64)
!4006 = !DILocation(line: 151, column: 13, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 153, column: 3)
!4008 = !DILocalVariable(name: "tmp___1", scope: !3970, file: !276, line: 154, type: !64)
!4009 = !DILocation(line: 151, column: 15, scope: !4000)
!4010 = !DILocation(line: 151, column: 26, scope: !4000)
!4011 = !DILocation(line: 151, column: 37, scope: !4000)
!4012 = !DILocalVariable(name: "len", scope: !3970, file: !276, line: 151, type: !64)
!4013 = !DILocation(line: 152, column: 13, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 152, column: 3)
!4015 = !DILocalVariable(name: "tmp___2", scope: !3970, file: !276, line: 156, type: !7)
!4016 = !DILocalVariable(name: "tmpbuf", scope: !3970, file: !276, line: 155, type: !17)
!4017 = !DILocation(line: 155, column: 3, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 153, column: 3)
!4019 = !DILocation(line: 156, column: 3, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 158, column: 3)
!4021 = !DILocation(line: 159, column: 3, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 158, column: 3)
!4023 = !DILocation(line: 160, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4000, file: !276, line: 161, column: 3)
!4025 = !DILocalVariable(name: "tmp___3", scope: !3970, file: !276, line: 157, type: !15)
!4026 = !DILocation(line: 160, column: 15, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4001, file: !276, line: 160, column: 7)
!4028 = !DILocation(line: 160, column: 7, scope: !4001)
!4029 = !DILocation(line: 161, column: 38, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !276, line: 162, column: 5)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !276, line: 161, column: 5)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !276, line: 160, column: 21)
!4033 = !DILocation(line: 161, column: 5, scope: !4030)
!4034 = !DILocation(line: 165, column: 3, scope: !4032)
!4035 = !DILocation(line: 165, column: 3, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 167, column: 3)
!4037 = distinct !DILexicalBlock(scope: !4001, file: !276, line: 166, column: 3)
!4038 = !DILocation(line: 166, column: 3, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 167, column: 3)
!4040 = !DILocation(line: 167, column: 3, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 168, column: 3)
!4042 = !DILocation(line: 168, column: 3, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 169, column: 3)
!4044 = !DILocation(line: 170, column: 13, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 170, column: 3)
!4046 = !DILocalVariable(name: "tmp___4", scope: !3970, file: !276, line: 158, type: !72)
!4047 = !DILocation(line: 170, column: 3, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 172, column: 3)
!4049 = !DILocation(line: 173, column: 28, scope: !4037)
!4050 = !DILocation(line: 176, column: 3, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 174, column: 3)
!4052 = !DILocation(line: 177, column: 3, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 178, column: 3)
!4054 = !DILocation(line: 178, column: 3, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 179, column: 3)
!4056 = !DILocation(line: 180, column: 3, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4037, file: !276, line: 180, column: 3)
!4058 = !DILocation(line: 181, column: 3, scope: !4001)
!4059 = distinct !DISubprogram(name: "set_audio_format", scope: !276, file: !276, line: 714, type: !4060, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!15, !266, !72}
!4062 = !DILocalVariable(name: "eci", arg: 1, scope: !4059, file: !276, line: 714, type: !266)
!4063 = !DILocation(line: 0, scope: !4059)
!4064 = !DILocalVariable(name: "fmt", arg: 2, scope: !4059, file: !276, line: 714, type: !72)
!4065 = !DILocalVariable(name: "__cil_tmp10", scope: !4059, file: !276, line: 723, type: !17)
!4066 = !DILocation(line: 723, column: 9, scope: !4059)
!4067 = !DILocalVariable(name: "__cil_tmp11", scope: !4059, file: !276, line: 724, type: !17)
!4068 = !DILocation(line: 724, column: 9, scope: !4059)
!4069 = !DILocalVariable(name: "__cil_tmp12", scope: !4059, file: !276, line: 725, type: !17)
!4070 = !DILocation(line: 725, column: 9, scope: !4059)
!4071 = !DILocation(line: 716, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 729, column: 3)
!4073 = distinct !DILexicalBlock(scope: !4074, file: !276, line: 728, column: 3)
!4074 = distinct !DILexicalBlock(scope: !4059, file: !276, line: 727, column: 3)
!4075 = !DILocalVariable(name: "tmp", scope: !4059, file: !276, line: 717, type: !64)
!4076 = !DILocation(line: 716, column: 13, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 718, column: 3)
!4078 = !DILocalVariable(name: "tmp___0", scope: !4059, file: !276, line: 718, type: !64)
!4079 = !DILocation(line: 716, column: 14, scope: !4073)
!4080 = !DILocation(line: 716, column: 25, scope: !4073)
!4081 = !DILocalVariable(name: "len", scope: !4059, file: !276, line: 716, type: !64)
!4082 = !DILocation(line: 717, column: 13, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 717, column: 3)
!4084 = !DILocalVariable(name: "tmp___1", scope: !4059, file: !276, line: 720, type: !7)
!4085 = !DILocalVariable(name: "tmpbuf", scope: !4059, file: !276, line: 719, type: !17)
!4086 = !DILocalVariable(name: "res", scope: !4059, file: !276, line: 721, type: !15)
!4087 = !DILocation(line: 720, column: 3, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 719, column: 3)
!4089 = !DILocation(line: 721, column: 3, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 722, column: 3)
!4091 = !DILocation(line: 722, column: 19, scope: !4073)
!4092 = !DILocation(line: 722, column: 12, scope: !4073)
!4093 = !DILocation(line: 722, column: 26, scope: !4073)
!4094 = !DILocation(line: 723, column: 17, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 723, column: 3)
!4096 = !DILocation(line: 723, column: 3, scope: !4095)
!4097 = !DILocation(line: 724, column: 25, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4073, file: !276, line: 725, column: 3)
!4099 = !DILocation(line: 724, column: 13, scope: !4098)
!4100 = !DILocalVariable(name: "tmp___2", scope: !4059, file: !276, line: 722, type: !15)
!4101 = !DILocation(line: 724, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4074, file: !276, line: 724, column: 7)
!4103 = !DILocation(line: 724, column: 7, scope: !4074)
!4104 = !DILocation(line: 725, column: 38, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !276, line: 726, column: 5)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !276, line: 725, column: 5)
!4107 = distinct !DILexicalBlock(scope: !4102, file: !276, line: 724, column: 16)
!4108 = !DILocation(line: 725, column: 5, scope: !4105)
!4109 = !DILocation(line: 728, column: 3, scope: !4107)
!4110 = !DILocation(line: 0, scope: !4074)
!4111 = !DILocation(line: 728, column: 3, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !276, line: 730, column: 3)
!4113 = distinct !DILexicalBlock(scope: !4074, file: !276, line: 729, column: 3)
!4114 = !DILocation(line: 730, column: 3, scope: !4074)
!4115 = distinct !DISubprogram(name: "initialize_check_output", scope: !276, file: !276, line: 202, type: !4116, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !266}
!4118 = !DILocalVariable(name: "eci", arg: 1, scope: !4115, file: !276, line: 202, type: !266)
!4119 = !DILocation(line: 0, scope: !4115)
!4120 = !DILocalVariable(name: "__cil_tmp6", scope: !4115, file: !276, line: 208, type: !17)
!4121 = !DILocation(line: 208, column: 9, scope: !4115)
!4122 = !DILocalVariable(name: "__cil_tmp7", scope: !4115, file: !276, line: 209, type: !17)
!4123 = !DILocation(line: 209, column: 9, scope: !4115)
!4124 = !DILocalVariable(name: "__cil_tmp8", scope: !4115, file: !276, line: 210, type: !17)
!4125 = !DILocation(line: 210, column: 9, scope: !4115)
!4126 = !DILocalVariable(name: "__cil_tmp9", scope: !4115, file: !276, line: 211, type: !17)
!4127 = !DILocation(line: 211, column: 9, scope: !4115)
!4128 = !DILocalVariable(name: "__cil_tmp10", scope: !4115, file: !276, line: 212, type: !17)
!4129 = !DILocation(line: 212, column: 9, scope: !4115)
!4130 = !DILocation(line: 204, column: 17, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !276, line: 216, column: 3)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !276, line: 215, column: 3)
!4133 = distinct !DILexicalBlock(scope: !4115, file: !276, line: 214, column: 3)
!4134 = !DILocation(line: 204, column: 3, scope: !4131)
!4135 = !DILocation(line: 205, column: 42, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !276, line: 206, column: 3)
!4137 = !DILocation(line: 205, column: 13, scope: !4136)
!4138 = !DILocalVariable(name: "tmp___1", scope: !4115, file: !276, line: 207, type: !15)
!4139 = !DILocation(line: 205, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !276, line: 205, column: 7)
!4141 = !DILocation(line: 205, column: 7, scope: !4133)
!4142 = !DILocation(line: 206, column: 38, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !276, line: 207, column: 5)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !276, line: 206, column: 5)
!4145 = distinct !DILexicalBlock(scope: !4140, file: !276, line: 205, column: 21)
!4146 = !DILocation(line: 206, column: 5, scope: !4143)
!4147 = !DILocation(line: 209, column: 3, scope: !4145)
!4148 = !DILocation(line: 210, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4140, file: !276, line: 210, column: 7)
!4150 = !DILocation(line: 210, column: 7, scope: !4140)
!4151 = !DILocation(line: 211, column: 19, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !276, line: 212, column: 5)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !276, line: 211, column: 5)
!4154 = distinct !DILexicalBlock(scope: !4149, file: !276, line: 210, column: 13)
!4155 = !DILocation(line: 211, column: 5, scope: !4152)
!4156 = !DILocation(line: 212, column: 19, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !276, line: 213, column: 5)
!4158 = !DILocation(line: 212, column: 5, scope: !4157)
!4159 = !DILocation(line: 213, column: 29, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4153, file: !276, line: 214, column: 5)
!4161 = !DILocation(line: 213, column: 11, scope: !4160)
!4162 = !DILocalVariable(name: "tmp", scope: !4115, file: !276, line: 205, type: !72)
!4163 = !DILocalVariable(name: "tmpstr", scope: !4115, file: !276, line: 204, type: !17)
!4164 = !DILocation(line: 215, column: 5, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !276, line: 216, column: 5)
!4166 = distinct !DILexicalBlock(scope: !4154, file: !276, line: 215, column: 5)
!4167 = !DILocation(line: 0, scope: !4154)
!4168 = !DILocation(line: 215, column: 15, scope: !4165)
!4169 = !DILocation(line: 215, column: 11, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !276, line: 215, column: 11)
!4171 = distinct !DILexicalBlock(scope: !4165, file: !276, line: 215, column: 15)
!4172 = !DILocation(line: 215, column: 11, scope: !4171)
!4173 = !DILocalVariable(name: "tmp___0", scope: !4115, file: !276, line: 206, type: !17)
!4174 = !DILocation(line: 215, column: 16, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4170, file: !276, line: 215, column: 20)
!4176 = !DILocation(line: 215, column: 22, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !276, line: 215, column: 13)
!4178 = !DILocation(line: 215, column: 16, scope: !4177)
!4179 = !DILocation(line: 215, column: 31, scope: !4177)
!4180 = !DILocation(line: 215, column: 13, scope: !4175)
!4181 = !DILocation(line: 215, column: 11, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4177, file: !276, line: 215, column: 39)
!4183 = !DILocation(line: 217, column: 7, scope: !4175)
!4184 = !DILocation(line: 215, column: 9, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4170, file: !276, line: 217, column: 14)
!4186 = distinct !{!4186, !4164, !4187}
!4187 = !DILocation(line: 217, column: 5, scope: !4165)
!4188 = !DILocation(line: 219, column: 5, scope: !4165)
!4189 = !DILocation(line: 217, column: 5, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !276, line: 223, column: 5)
!4191 = distinct !DILexicalBlock(scope: !4154, file: !276, line: 222, column: 5)
!4192 = !DILocation(line: 218, column: 10, scope: !4191)
!4193 = !DILocation(line: 220, column: 3, scope: !4154)
!4194 = !DILocation(line: 221, column: 3, scope: !4133)
!4195 = distinct !DISubprogram(name: "signal_handler", scope: !276, file: !276, line: 754, type: !134, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4196 = !DILocalVariable(name: "signum", arg: 1, scope: !4195, file: !276, line: 754, type: !15)
!4197 = !DILocation(line: 0, scope: !4195)
!4198 = !DILocation(line: 756, column: 21, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !276, line: 758, column: 3)
!4200 = !DILocation(line: 757, column: 3, scope: !4199)
!4201 = distinct !DISubprogram(name: "print_usage___0", scope: !276, file: !276, line: 560, type: !4202, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !8}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4201, file: !276, line: 560, type: !8)
!4205 = !DILocation(line: 0, scope: !4201)
!4206 = !DILocalVariable(name: "__cil_tmp2", scope: !4201, file: !276, line: 562, type: !17)
!4207 = !DILocation(line: 562, column: 9, scope: !4201)
!4208 = !DILocalVariable(name: "__cil_tmp3", scope: !4201, file: !276, line: 563, type: !17)
!4209 = !DILocation(line: 563, column: 9, scope: !4201)
!4210 = !DILocalVariable(name: "__cil_tmp4", scope: !4201, file: !276, line: 564, type: !17)
!4211 = !DILocation(line: 564, column: 9, scope: !4201)
!4212 = !DILocalVariable(name: "__cil_tmp5", scope: !4201, file: !276, line: 565, type: !17)
!4213 = !DILocation(line: 565, column: 9, scope: !4201)
!4214 = !DILocalVariable(name: "__cil_tmp6", scope: !4201, file: !276, line: 566, type: !17)
!4215 = !DILocation(line: 566, column: 9, scope: !4201)
!4216 = !DILocalVariable(name: "__cil_tmp7", scope: !4201, file: !276, line: 567, type: !17)
!4217 = !DILocation(line: 567, column: 9, scope: !4201)
!4218 = !DILocalVariable(name: "__cil_tmp8", scope: !4201, file: !276, line: 568, type: !17)
!4219 = !DILocation(line: 568, column: 9, scope: !4201)
!4220 = !DILocalVariable(name: "__cil_tmp9", scope: !4201, file: !276, line: 569, type: !17)
!4221 = !DILocation(line: 569, column: 9, scope: !4201)
!4222 = !DILocalVariable(name: "__cil_tmp10", scope: !4201, file: !276, line: 570, type: !17)
!4223 = !DILocation(line: 570, column: 9, scope: !4201)
!4224 = !DILocation(line: 563, column: 11, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 574, column: 3)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !276, line: 573, column: 3)
!4227 = distinct !DILexicalBlock(scope: !4201, file: !276, line: 572, column: 3)
!4228 = !DILocation(line: 562, column: 3, scope: !4225)
!4229 = !DILocation(line: 564, column: 3, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 565, column: 3)
!4231 = !DILocation(line: 565, column: 3, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 566, column: 3)
!4233 = !DILocation(line: 566, column: 3, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 567, column: 3)
!4235 = !DILocation(line: 567, column: 3, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 568, column: 3)
!4237 = !DILocation(line: 568, column: 3, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 569, column: 3)
!4239 = !DILocation(line: 570, column: 3, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 570, column: 3)
!4241 = !DILocation(line: 572, column: 3, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4226, file: !276, line: 572, column: 3)
!4243 = !DILocation(line: 573, column: 3, scope: !4227)
