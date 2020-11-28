; ModuleID = '/tmp/tmp.ll'
source_filename = "c/time-1.7.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i32, [44 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__anonstruct_RESUSE_37 = type { i32, %struct.rusage, %struct.timeval, %struct.timeval }
%struct.rusage = type { %struct.timeval, %struct.timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%union.wait = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.__anonunion___u_55 = type { i32 }
%union.__anonunion___u_56 = type { i32 }
%union.__anonunion___u_57 = type { i32 }
%union.__anonunion___u_58 = type { i32 }
%union.__anonunion___u_59 = type { i32 }
%union.__anonunion___u_60 = type { i32 }
%union.__anonunion___u_47 = type { i32 }
%union.__anonunion___u_48 = type { i32 }
%union.__anonunion___u_49 = type { i32 }
%union.__anonunion___u_50 = type { i32 }
%union.__anonunion___u_51 = type { i32 }
%union.__anonunion___u_52 = type { i32 }
%union.__anonunion___u_53 = type { i32 }
%union.__anonunion___u_54 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"GNU time 1.7\00", align 1
@version_string = global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@error_print_progname = common global void ()* null, align 8, !dbg !128
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = common global i8* null, align 8, !dbg !136
@error_message_count = common global i32 0, align 4, !dbg !134
@.str.2 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@error_one_per_line = common global i32 0, align 4, !dbg !138
@old_line_number = internal global i32 0, align 4, !dbg !142
@old_file_name = internal global i8* null, align 8, !dbg !140
@.str.3 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@outfp = internal global %struct._IO_FILE* null, align 8, !dbg !144
@output_format = internal global i8* null, align 8, !dbg !146
@verbose = internal global i32 0, align 4, !dbg !152
@outfile = internal global i8* null, align 8, !dbg !154
@append = internal global i32 0, align 4, !dbg !156
@.str.5 = private unnamed_addr constant [124 x i8] c"%Uuser %Ssystem %Eelapsed %PCPU (%Xavgtext+%Davgdata %Mmaxresident)k\0A%Iinputs+%Ooutputs (%Fmajor+%Rminor)pagefaults %Wswaps\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"+af:o:pvV\00", align 1
@longopts = internal global [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option zeroinitializer], align 16, !dbg !158
@optarg = external global i8*, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"real %e\0Auser %U\0Asys %S\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@optind = external global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@longstats = internal constant [24 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16, !dbg !163
@.str.13 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"output-file\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [166 x i8] c"Usage: %s [-apvV] [-f format] [-o file] [--append] [--verbose]\0A       [--portability] [--format=format] [--output=file] [--version]\0A       [--help] command [arg...]\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"%s: virtual memory exhausted\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"\09Command being timed: \22%C\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"\09User time (seconds): %U\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\09System time (seconds): %S\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"\09Percent of CPU this job got: %P\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"\09Elapsed (wall clock) time (h:mm:ss or m:ss): %E\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"\09Average shared text size (kbytes): %X\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\09Average unshared data size (kbytes): %D\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"\09Average stack size (kbytes): %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"\09Average total size (kbytes): %K\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\09Maximum resident set size (kbytes): %M\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"\09Average resident set size (kbytes): %t\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"\09Major (requiring I/O) page faults: %F\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"\09Minor (reclaiming a frame) page faults: %R\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"\09Voluntary context switches: %w\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"\09Involuntary context switches: %c\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"\09Swaps: %W\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"\09File system inputs: %I\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"\09File system outputs: %O\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"\09Socket messages sent: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"\09Socket messages received: %r\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"\09Signals delivered: %k\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"\09Page size (bytes): %Z\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"\09Exit status: %x\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"cannot run %s\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"error waiting for child process\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Command stopped by signal %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Command terminated by signal %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Command exited with non-zero status %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"%ld:%02ld:%02ld\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"%ld:%02ld.%02ld\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%lu%%\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"?%%\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"%ld.%02ld\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@ps = internal global i64 0, align 8, !dbg !168
@size = internal global i64 2147483647, align 8, !dbg !170

; Function Attrs: noinline nounwind ssp uwtable
define void @resuse_start(%struct.__anonstruct_RESUSE_37* %resp) #0 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_RESUSE_37* %resp, metadata !212, metadata !DIExpression()), !dbg !213
  %start = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 2, !dbg !214
  %call = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @resuse_end(i32 %pid, %struct.__anonstruct_RESUSE_37* %resp) #0 !dbg !219 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %pid, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata %struct.__anonstruct_RESUSE_37* %resp, metadata !227, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %status, metadata !228, metadata !DIExpression()), !dbg !229
  br label %while.body, !dbg !230

while.body:                                       ; preds = %if.end3, %entry
  br label %while_continue, !dbg !233

while_continue:                                   ; preds = %while.body
  %0 = bitcast i32* %status to %union.wait*, !dbg !234
  %ru = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !237
  %call = call i32 @wait3(%union.wait* %0, i32 0, %struct.rusage* %ru), !dbg !238
  call void @llvm.dbg.value(metadata i32 %call, metadata !239, metadata !DIExpression()), !dbg !226
  %cmp = icmp ne i32 %call, %pid, !dbg !240
  br i1 %cmp, label %if.end, label %if.then, !dbg !242

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !243

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, -1, !dbg !245
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !247

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !248

if.end3:                                          ; preds = %if.end
  br label %while.body, !dbg !230, !llvm.loop !250

while_break:                                      ; preds = %if.then
  %elapsed = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !252
  %call4 = call i32 @gettimeofday(%struct.timeval* %elapsed, %struct.timezone* null), !dbg !254
  %start = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 2, !dbg !255
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0, !dbg !256
  %1 = load i64, i64* %tv_sec, align 8, !dbg !256
  %elapsed5 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !257
  %tv_sec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed5, i32 0, i32 0, !dbg !258
  %2 = load i64, i64* %tv_sec6, align 8, !dbg !259
  %sub = sub nsw i64 %2, %1, !dbg !259
  store i64 %sub, i64* %tv_sec6, align 8, !dbg !259
  %elapsed7 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !260
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed7, i32 0, i32 1, !dbg !262
  %3 = load i64, i64* %tv_usec, align 8, !dbg !262
  %start8 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 2, !dbg !263
  %tv_usec9 = getelementptr inbounds %struct.timeval, %struct.timeval* %start8, i32 0, i32 1, !dbg !264
  %4 = load i64, i64* %tv_usec9, align 8, !dbg !264
  %cmp10 = icmp slt i64 %3, %4, !dbg !265
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !266

if.then11:                                        ; preds = %while_break
  %elapsed12 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !267
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed12, i32 0, i32 1, !dbg !269
  %5 = load i64, i64* %tv_usec13, align 8, !dbg !270
  %add = add nsw i64 %5, 1000000, !dbg !270
  store i64 %add, i64* %tv_usec13, align 8, !dbg !270
  %elapsed14 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !271
  %tv_sec15 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed14, i32 0, i32 0, !dbg !272
  %6 = load i64, i64* %tv_sec15, align 8, !dbg !273
  %dec = add nsw i64 %6, -1, !dbg !273
  store i64 %dec, i64* %tv_sec15, align 8, !dbg !273
  br label %if.end16, !dbg !274

if.end16:                                         ; preds = %if.then11, %while_break
  %start17 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 2, !dbg !275
  %tv_usec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %start17, i32 0, i32 1, !dbg !276
  %7 = load i64, i64* %tv_usec18, align 8, !dbg !276
  %elapsed19 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !277
  %tv_usec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed19, i32 0, i32 1, !dbg !278
  %8 = load i64, i64* %tv_usec20, align 8, !dbg !279
  %sub21 = sub nsw i64 %8, %7, !dbg !279
  store i64 %sub21, i64* %tv_usec20, align 8, !dbg !279
  %9 = load i32, i32* %status, align 4, !dbg !280
  %waitstatus = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !281
  store i32 %9, i32* %waitstatus, align 8, !dbg !282
  br label %return, !dbg !283

return:                                           ; preds = %if.end16, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end16 ], !dbg !284
  ret i32 %retval.0, !dbg !285
}

declare i32 @wait3(%union.wait*, i32, %struct.rusage*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @error(i32 %status, i32 %errnum, i8* %message, ...) #0 !dbg !286 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %status, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !291, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8* %message, metadata !292, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !293, metadata !DIExpression()), !dbg !305
  %0 = load void ()*, void ()** @error_print_progname, align 8, !dbg !306
  %tobool = icmp ne void ()* %0, null, !dbg !306
  br i1 %tobool, label %if.then, label %if.else, !dbg !309

if.then:                                          ; preds = %entry
  %1 = load void ()*, void ()** @error_print_progname, align 8, !dbg !310
  call void %1(), !dbg !313
  br label %if.end, !dbg !314

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !315
  %call = call i32 @fflush(%struct._IO_FILE* %2), !dbg !318
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !319
  %4 = load i8*, i8** @program_name, align 8, !dbg !320
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %4), !dbg !321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !322
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !322
  call void @llvm.va_start(i8* %arraydecay2), !dbg !322
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !324
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !325
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %5, i8* %message, %struct.__va_list_tag* %arraydecay3), !dbg !326
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !327
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*, !dbg !327
  call void @llvm.va_end(i8* %arraydecay56), !dbg !327
  %6 = load i32, i32* @error_message_count, align 4, !dbg !328
  %inc = add i32 %6, 1, !dbg !328
  store i32 %inc, i32* @error_message_count, align 4, !dbg !328
  %tobool7 = icmp ne i32 %errnum, 0, !dbg !329
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !331

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @strerror(i32 %errnum), !dbg !332
  call void @llvm.dbg.value(metadata i8* %call9, metadata !335, metadata !DIExpression()), !dbg !290
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !336
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %call9), !dbg !337
  br label %if.end11, !dbg !338

if.end11:                                         ; preds = %if.then8, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !339
  %call12 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8), !dbg !341
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !342
  %call13 = call i32 @fflush(%struct._IO_FILE* %9), !dbg !343
  %tobool14 = icmp ne i32 %status, 0, !dbg !344
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !346

if.then15:                                        ; preds = %if.end11
  call void @exit(i32 %status) #7, !dbg !347
  unreachable, !dbg !347

if.end16:                                         ; preds = %if.end11
  ret void, !dbg !350
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i8* @strerror(i32) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @error_at_line(i32 %status, i32 %errnum, i8* %file_name, i32 %line_number, i8* %message, ...) #0 !dbg !351 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %status, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !356, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8* %file_name, metadata !357, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 %line_number, metadata !358, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8* %message, metadata !359, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i32, i32* @error_one_per_line, align 4, !dbg !362
  %tobool = icmp ne i32 %0, 0, !dbg !362
  br i1 %tobool, label %if.then, label %if.end8, !dbg !365

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @old_line_number, align 4, !dbg !366
  %cmp = icmp eq i32 %1, %line_number, !dbg !369
  br i1 %cmp, label %if.then1, label %if.end7, !dbg !370

if.then1:                                         ; preds = %if.then
  %2 = ptrtoint i8* %file_name to i64, !dbg !371
  %3 = load i8*, i8** @old_file_name, align 8, !dbg !374
  %4 = ptrtoint i8* %3 to i64, !dbg !375
  %cmp2 = icmp eq i64 %2, %4, !dbg !376
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !377

if.then3:                                         ; preds = %if.then1
  br label %return, !dbg !378

if.else:                                          ; preds = %if.then1
  %5 = load i8*, i8** @old_file_name, align 8, !dbg !380
  %call = call i32 @strcmp(i8* %5, i8* %file_name) #8, !dbg !383
  call void @llvm.dbg.value(metadata i32 %call, metadata !384, metadata !DIExpression()), !dbg !355
  %tobool4 = icmp ne i32 %call, 0, !dbg !385
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !387

if.then5:                                         ; preds = %if.else
  br label %return, !dbg !388

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7, !dbg !390

if.end7:                                          ; preds = %if.end6, %if.then
  store i8* %file_name, i8** @old_file_name, align 8, !dbg !391
  store i32 %line_number, i32* @old_line_number, align 4, !dbg !392
  br label %if.end8, !dbg !393

if.end8:                                          ; preds = %if.end7, %entry
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !394
  %tobool9 = icmp ne void ()* %6, null, !dbg !394
  br i1 %tobool9, label %if.then10, label %if.else11, !dbg !396

if.then10:                                        ; preds = %if.end8
  %7 = load void ()*, void ()** @error_print_progname, align 8, !dbg !397
  call void %7(), !dbg !400
  br label %if.end14, !dbg !401

if.else11:                                        ; preds = %if.end8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !402
  %call12 = call i32 @fflush(%struct._IO_FILE* %8), !dbg !405
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !406
  %10 = load i8*, i8** @program_name, align 8, !dbg !407
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %10), !dbg !408
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then10
  %11 = ptrtoint i8* %file_name to i64, !dbg !409
  %cmp15 = icmp ne i64 %11, 0, !dbg !411
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !412

if.then16:                                        ; preds = %if.end14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !413
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %file_name, i32 %line_number), !dbg !416
  br label %if.end18, !dbg !417

if.end18:                                         ; preds = %if.then16, %if.end14
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !418
  %arraydecay19 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !418
  call void @llvm.va_start(i8* %arraydecay19), !dbg !418
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !420
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !421
  %call21 = call i32 @vfprintf(%struct._IO_FILE* %13, i8* %message, %struct.__va_list_tag* %arraydecay20), !dbg !422
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !423
  %arraydecay2223 = bitcast %struct.__va_list_tag* %arraydecay22 to i8*, !dbg !423
  call void @llvm.va_end(i8* %arraydecay2223), !dbg !423
  %14 = load i32, i32* @error_message_count, align 4, !dbg !424
  %inc = add i32 %14, 1, !dbg !424
  store i32 %inc, i32* @error_message_count, align 4, !dbg !424
  %tobool24 = icmp ne i32 %errnum, 0, !dbg !425
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !427

if.then25:                                        ; preds = %if.end18
  %call26 = call i8* @strerror(i32 %errnum), !dbg !428
  call void @llvm.dbg.value(metadata i8* %call26, metadata !431, metadata !DIExpression()), !dbg !355
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !432
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %call26), !dbg !433
  br label %if.end28, !dbg !434

if.end28:                                         ; preds = %if.then25, %if.end18
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !435
  %call29 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %16), !dbg !437
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !438
  %call30 = call i32 @fflush(%struct._IO_FILE* %17), !dbg !439
  %tobool31 = icmp ne i32 %status, 0, !dbg !440
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !442

if.then32:                                        ; preds = %if.end28
  call void @exit(i32 %status) #7, !dbg !443
  unreachable, !dbg !443

if.end33:                                         ; preds = %if.end28
  br label %return, !dbg !446

return:                                           ; preds = %if.end33, %if.then5, %if.then3
  ret void, !dbg !447
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @main(i32 %argc, i8** %argv) #0 !dbg !448 {
entry:
  %res = alloca %struct.__anonstruct_RESUSE_37, align 8
  %__u = alloca %union.__anonunion___u_55, align 4
  %__u___0 = alloca %union.__anonunion___u_56, align 4
  %__u___1 = alloca %union.__anonunion___u_57, align 4
  %__u___2 = alloca %union.__anonunion___u_58, align 4
  %__u___3 = alloca %union.__anonunion___u_59, align 4
  %__u___4 = alloca %union.__anonunion___u_60, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i8** %argv, metadata !454, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_RESUSE_37* %res, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_55* %__u, metadata !457, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_56* %__u___0, metadata !463, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_57* %__u___1, metadata !469, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_58* %__u___2, metadata !475, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_59* %__u___3, metadata !481, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_60* %__u___4, metadata !487, metadata !DIExpression()), !dbg !492
  %call = call i8** @getargs(i32 %argc, i8** %argv), !dbg !493
  call void @llvm.dbg.value(metadata i8** %call, metadata !496, metadata !DIExpression()), !dbg !453
  call void @run_command(i8** %call, %struct.__anonstruct_RESUSE_37* %res), !dbg !497
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfp, align 8, !dbg !498
  %1 = load i8*, i8** @output_format, align 8, !dbg !499
  call void @summarize(%struct._IO_FILE* %0, i8* %1, i8** %call, %struct.__anonstruct_RESUSE_37* %res), !dbg !500
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfp, align 8, !dbg !501
  %call1 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !502
  %waitstatus = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !503
  %3 = load i32, i32* %waitstatus, align 8, !dbg !503
  %__in = bitcast %union.__anonunion___u_60* %__u___4 to i32*, !dbg !504
  store i32 %3, i32* %__in, align 4, !dbg !505
  %__i = bitcast %union.__anonunion___u_60* %__u___4 to i32*, !dbg !506
  %4 = load i32, i32* %__i, align 4, !dbg !506
  %and = and i32 %4, 255, !dbg !508
  %cmp = icmp eq i32 %and, 127, !dbg !509
  br i1 %cmp, label %if.then, label %if.else, !dbg !510

if.then:                                          ; preds = %entry
  %waitstatus2 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !511
  %5 = load i32, i32* %waitstatus2, align 8, !dbg !511
  %__in3 = bitcast %union.__anonunion___u_55* %__u to i32*, !dbg !514
  store i32 %5, i32* %__in3, align 4, !dbg !515
  %__i4 = bitcast %union.__anonunion___u_55* %__u to i32*, !dbg !516
  %6 = load i32, i32* %__i4, align 4, !dbg !516
  %and5 = and i32 %6, 65280, !dbg !517
  %shr = ashr i32 %and5, 8, !dbg !518
  call void @exit(i32 %shr) #7, !dbg !519
  unreachable, !dbg !519

if.else:                                          ; preds = %entry
  %waitstatus6 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !520
  %7 = load i32, i32* %waitstatus6, align 8, !dbg !520
  %__in7 = bitcast %union.__anonunion___u_59* %__u___3 to i32*, !dbg !522
  store i32 %7, i32* %__in7, align 4, !dbg !523
  %__i8 = bitcast %union.__anonunion___u_59* %__u___3 to i32*, !dbg !520
  %8 = load i32, i32* %__i8, align 4, !dbg !520
  call void @llvm.dbg.value(metadata i32 %8, metadata !524, metadata !DIExpression()), !dbg !453
  %and9 = and i32 %8, 255, !dbg !525
  %cmp10 = icmp eq i32 %and9, 127, !dbg !527
  br i1 %cmp10, label %if.else16, label %if.then11, !dbg !528

if.then11:                                        ; preds = %if.else
  %and12 = and i32 %8, 127, !dbg !529
  %cmp13 = icmp eq i32 %and12, 0, !dbg !532
  br i1 %cmp13, label %if.else15, label %if.then14, !dbg !533

if.then14:                                        ; preds = %if.then11
  call void @llvm.dbg.value(metadata i32 1, metadata !534, metadata !DIExpression()), !dbg !453
  br label %if.end, !dbg !535

if.else15:                                        ; preds = %if.then11
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !453
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then14
  %tmp.0 = phi i32 [ 0, %if.else15 ], [ 1, %if.then14 ], !dbg !537
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !534, metadata !DIExpression()), !dbg !453
  br label %if.end17, !dbg !538

if.else16:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !453
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.end
  %tmp.1 = phi i32 [ 0, %if.else16 ], [ %tmp.0, %if.end ], !dbg !539
  call void @llvm.dbg.value(metadata i32 %tmp.1, metadata !534, metadata !DIExpression()), !dbg !453
  %tobool = icmp ne i32 %tmp.1, 0, !dbg !540
  br i1 %tobool, label %if.then18, label %if.else23, !dbg !528

if.then18:                                        ; preds = %if.end17
  %waitstatus19 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !542
  %9 = load i32, i32* %waitstatus19, align 8, !dbg !542
  %__in20 = bitcast %union.__anonunion___u_56* %__u___0 to i32*, !dbg !545
  store i32 %9, i32* %__in20, align 4, !dbg !546
  %__i21 = bitcast %union.__anonunion___u_56* %__u___0 to i32*, !dbg !546
  %10 = load i32, i32* %__i21, align 4, !dbg !546
  %and22 = and i32 %10, 127, !dbg !547
  call void @exit(i32 %and22) #7, !dbg !548
  unreachable, !dbg !548

if.else23:                                        ; preds = %if.end17
  %waitstatus24 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !549
  %11 = load i32, i32* %waitstatus24, align 8, !dbg !549
  %__in25 = bitcast %union.__anonunion___u_58* %__u___2 to i32*, !dbg !551
  store i32 %11, i32* %__in25, align 4, !dbg !552
  %__i26 = bitcast %union.__anonunion___u_58* %__u___2 to i32*, !dbg !553
  %12 = load i32, i32* %__i26, align 4, !dbg !553
  %and27 = and i32 %12, 127, !dbg !555
  %cmp28 = icmp eq i32 %and27, 0, !dbg !556
  br i1 %cmp28, label %if.then29, label %if.end35, !dbg !557

if.then29:                                        ; preds = %if.else23
  %waitstatus30 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %res, i32 0, i32 0, !dbg !558
  %13 = load i32, i32* %waitstatus30, align 8, !dbg !558
  %__in31 = bitcast %union.__anonunion___u_57* %__u___1 to i32*, !dbg !561
  store i32 %13, i32* %__in31, align 4, !dbg !562
  %__i32 = bitcast %union.__anonunion___u_57* %__u___1 to i32*, !dbg !563
  %14 = load i32, i32* %__i32, align 4, !dbg !563
  %and33 = and i32 %14, 65280, !dbg !564
  %shr34 = ashr i32 %and33, 8, !dbg !565
  call void @exit(i32 %shr34) #7, !dbg !566
  unreachable, !dbg !566

if.end35:                                         ; preds = %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8** @getargs(i32 %argc, i8** %argv) #0 !dbg !568 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8** %argv, metadata !573, metadata !DIExpression()), !dbg !572
  store i32 0, i32* @verbose, align 4, !dbg !574
  store i8* null, i8** @outfile, align 8, !dbg !577
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !578
  store %struct._IO_FILE* %0, %struct._IO_FILE** @outfp, align 8, !dbg !579
  store i32 0, i32* @append, align 4, !dbg !580
  store i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i32 0, i32 0), i8** @output_format, align 8, !dbg !581
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !582
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !583
  store i8* %1, i8** @program_name, align 8, !dbg !584
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !585
  call void @llvm.dbg.value(metadata i8* %call, metadata !586, metadata !DIExpression()), !dbg !572
  %tobool = icmp ne i8* %call, null, !dbg !587
  br i1 %tobool, label %if.then, label %if.end, !dbg !589

if.then:                                          ; preds = %entry
  store i8* %call, i8** @output_format, align 8, !dbg !590
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then, %entry
  br label %while.body, !dbg !593

while.body:                                       ; preds = %switch_break, %if.end
  br label %while_continue, !dbg !595

while_continue:                                   ; preds = %while.body
  %call1 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i32 0, i32 0), i32* null), !dbg !596
  call void @llvm.dbg.value(metadata i32 %call1, metadata !599, metadata !DIExpression()), !dbg !572
  %cmp = icmp ne i32 %call1, -1, !dbg !600
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !602

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !603

if.end3:                                          ; preds = %while_continue
  %cmp4 = icmp eq i32 %call1, 97, !dbg !605
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !608

if.then5:                                         ; preds = %if.end3
  br label %case_97, !dbg !609

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %call1, 102, !dbg !611
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !613

if.then8:                                         ; preds = %if.end6
  br label %case_102, !dbg !614

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call1, 104, !dbg !616
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !618

if.then11:                                        ; preds = %if.end9
  br label %case_104, !dbg !619

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call1, 111, !dbg !621
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !623

if.then14:                                        ; preds = %if.end12
  br label %case_111, !dbg !624

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call1, 112, !dbg !626
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !628

if.then17:                                        ; preds = %if.end15
  br label %case_112, !dbg !629

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %call1, 118, !dbg !631
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !633

if.then20:                                        ; preds = %if.end18
  br label %case_118, !dbg !634

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %call1, 86, !dbg !636
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !638

if.then23:                                        ; preds = %if.end21
  br label %case_86, !dbg !639

if.end24:                                         ; preds = %if.end21
  br label %switch_default, !dbg !641

case_97:                                          ; preds = %if.then5
  store i32 1, i32* @append, align 4, !dbg !642
  br label %switch_break, !dbg !643

case_102:                                         ; preds = %if.then8
  %2 = load i8*, i8** @optarg, align 8, !dbg !644
  store i8* %2, i8** @output_format, align 8, !dbg !645
  br label %switch_break, !dbg !646

case_104:                                         ; preds = %if.then11
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647
  call void @usage(%struct._IO_FILE* %3, i32 0), !dbg !649
  br label %case_111, !dbg !650

case_111:                                         ; preds = %case_104, %if.then14
  %4 = load i8*, i8** @optarg, align 8, !dbg !651
  store i8* %4, i8** @outfile, align 8, !dbg !652
  br label %switch_break, !dbg !653

case_112:                                         ; preds = %if.then17
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8** @output_format, align 8, !dbg !654
  br label %switch_break, !dbg !655

case_118:                                         ; preds = %if.then20
  store i32 1, i32* @verbose, align 4, !dbg !656
  br label %switch_break, !dbg !657

case_86:                                          ; preds = %if.then23
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !658
  %6 = load i8*, i8** @version_string, align 8, !dbg !660
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %6), !dbg !661
  call void @exit(i32 0) #7, !dbg !662
  unreachable, !dbg !662

switch_default:                                   ; preds = %if.end24
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !663
  call void @usage(%struct._IO_FILE* %7, i32 1), !dbg !665
  br label %switch_break, !dbg !666

switch_break:                                     ; preds = %switch_default, %case_118, %case_112, %case_111, %case_102, %case_97
  br label %while.body, !dbg !593, !llvm.loop !667

while_break:                                      ; preds = %if.then2
  %8 = load i32, i32* @optind, align 4, !dbg !669
  %cmp26 = icmp eq i32 %8, %argc, !dbg !671
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !672

if.then27:                                        ; preds = %while_break
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !673
  call void @usage(%struct._IO_FILE* %9, i32 1), !dbg !676
  br label %if.end28, !dbg !677

if.end28:                                         ; preds = %if.then27, %while_break
  %10 = load i8*, i8** @outfile, align 8, !dbg !678
  %tobool29 = icmp ne i8* %10, null, !dbg !678
  br i1 %tobool29, label %if.then30, label %if.end40, !dbg !680

if.then30:                                        ; preds = %if.end28
  %11 = load i32, i32* @append, align 4, !dbg !681
  %tobool31 = icmp ne i32 %11, 0, !dbg !681
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !684

if.then32:                                        ; preds = %if.then30
  %12 = load i8*, i8** @outfile, align 8, !dbg !685
  %call33 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !688
  store %struct._IO_FILE* %call33, %struct._IO_FILE** @outfp, align 8, !dbg !689
  br label %if.end35, !dbg !690

if.else:                                          ; preds = %if.then30
  %13 = load i8*, i8** @outfile, align 8, !dbg !691
  %call34 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !694
  store %struct._IO_FILE* %call34, %struct._IO_FILE** @outfp, align 8, !dbg !695
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfp, align 8, !dbg !696
  %15 = ptrtoint %struct._IO_FILE* %14 to i64, !dbg !698
  %cmp36 = icmp eq i64 %15, 0, !dbg !699
  br i1 %cmp36, label %if.then37, label %if.end39, !dbg !700

if.then37:                                        ; preds = %if.end35
  %call38 = call i32* @__errno_location() #9, !dbg !701
  call void @llvm.dbg.value(metadata i32* %call38, metadata !704, metadata !DIExpression()), !dbg !572
  %16 = load i32, i32* %call38, align 4, !dbg !705
  %17 = load i8*, i8** @outfile, align 8, !dbg !706
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %17), !dbg !707
  br label %if.end39, !dbg !708

if.end39:                                         ; preds = %if.then37, %if.end35
  br label %if.end40, !dbg !709

if.end40:                                         ; preds = %if.end39, %if.end28
  %18 = load i32, i32* @verbose, align 4, !dbg !710
  %tobool41 = icmp ne i32 %18, 0, !dbg !710
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !712

if.then42:                                        ; preds = %if.end40
  %call43 = call i8* @linear_argv(i8** getelementptr inbounds ([24 x i8*], [24 x i8*]* @longstats, i32 0, i32 0)), !dbg !713
  call void @llvm.dbg.value(metadata i8* %call43, metadata !716, metadata !DIExpression()), !dbg !572
  store i8* %call43, i8** @output_format, align 8, !dbg !717
  %19 = load i8*, i8** @output_format, align 8, !dbg !718
  %20 = ptrtoint i8* %19 to i64, !dbg !720
  %cmp44 = icmp eq i64 %20, 0, !dbg !721
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !722

if.then45:                                        ; preds = %if.then42
  call void @exit(i32 1) #7, !dbg !723
  unreachable, !dbg !723

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !726

if.end47:                                         ; preds = %if.end46, %if.end40
  %21 = load i32, i32* @optind, align 4, !dbg !727
  %idx.ext = sext i32 %21 to i64, !dbg !728
  %add.ptr48 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !728
  ret i8** %add.ptr48, !dbg !729
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @run_command(i8** %cmd, %struct.__anonstruct_RESUSE_37* %resp) #0 !dbg !730 {
entry:
  call void @llvm.dbg.value(metadata i8** %cmd, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata %struct.__anonstruct_RESUSE_37* %resp, metadata !735, metadata !DIExpression()), !dbg !734
  call void @resuse_start(%struct.__anonstruct_RESUSE_37* %resp), !dbg !736
  %call = call i32 @fork(), !dbg !739
  call void @llvm.dbg.value(metadata i32 %call, metadata !740, metadata !DIExpression()), !dbg !734
  %cmp = icmp slt i32 %call, 0, !dbg !741
  br i1 %cmp, label %if.then, label %if.else, !dbg !743

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9, !dbg !744
  call void @llvm.dbg.value(metadata i32* %call1, metadata !747, metadata !DIExpression()), !dbg !734
  %0 = load i32, i32* %call1, align 4, !dbg !748
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)), !dbg !749
  br label %if.end12, !dbg !750

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %call, 0, !dbg !751
  br i1 %cmp2, label %if.then3, label %if.end11, !dbg !753

if.then3:                                         ; preds = %if.else
  %add.ptr = getelementptr inbounds i8*, i8** %cmd, i64 0, !dbg !754
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !757
  %call4 = call i32 @execvp(i8* %1, i8** %cmd), !dbg !758
  %call5 = call i32* @__errno_location() #9, !dbg !759
  call void @llvm.dbg.value(metadata i32* %call5, metadata !760, metadata !DIExpression()), !dbg !734
  %2 = load i32, i32* %call5, align 4, !dbg !761
  %add.ptr6 = getelementptr inbounds i8*, i8** %cmd, i64 0, !dbg !762
  %3 = load i8*, i8** %add.ptr6, align 8, !dbg !763
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8* %3), !dbg !764
  %call7 = call i32* @__errno_location() #9, !dbg !765
  call void @llvm.dbg.value(metadata i32* %call7, metadata !766, metadata !DIExpression()), !dbg !734
  %4 = load i32, i32* %call7, align 4, !dbg !767
  %cmp8 = icmp eq i32 %4, 2, !dbg !769
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !770

if.then9:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata i32 127, metadata !771, metadata !DIExpression()), !dbg !734
  br label %if.end, !dbg !772

if.else10:                                        ; preds = %if.then3
  call void @llvm.dbg.value(metadata i32 126, metadata !771, metadata !DIExpression()), !dbg !734
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  %tmp___2.0 = phi i32 [ 127, %if.then9 ], [ 126, %if.else10 ], !dbg !774
  call void @llvm.dbg.value(metadata i32 %tmp___2.0, metadata !771, metadata !DIExpression()), !dbg !734
  call void @_exit(i32 %tmp___2.0) #7, !dbg !775
  unreachable, !dbg !775

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %call13 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)), !dbg !777
  call void @llvm.dbg.value(metadata void (i32)* %call13, metadata !779, metadata !DIExpression()), !dbg !734
  %5 = bitcast void (i32)* %call13 to void (...)*, !dbg !782
  call void @llvm.dbg.value(metadata void (...)* %5, metadata !783, metadata !DIExpression()), !dbg !734
  %call14 = call void (i32)* @signal(i32 3, void (i32)* inttoptr (i64 1 to void (i32)*)), !dbg !784
  call void @llvm.dbg.value(metadata void (i32)* %call14, metadata !785, metadata !DIExpression()), !dbg !734
  %6 = bitcast void (i32)* %call14 to void (...)*, !dbg !786
  call void @llvm.dbg.value(metadata void (...)* %6, metadata !787, metadata !DIExpression()), !dbg !734
  %call15 = call i32 @resuse_end(i32 %call, %struct.__anonstruct_RESUSE_37* %resp), !dbg !788
  call void @llvm.dbg.value(metadata i32 %call15, metadata !789, metadata !DIExpression()), !dbg !734
  %cmp16 = icmp eq i32 %call15, 0, !dbg !790
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !792

if.then17:                                        ; preds = %if.end12
  %call18 = call i32* @__errno_location() #9, !dbg !793
  call void @llvm.dbg.value(metadata i32* %call18, metadata !796, metadata !DIExpression()), !dbg !734
  %7 = load i32, i32* %call18, align 4, !dbg !797
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i32 0, i32 0)), !dbg !798
  br label %if.end19, !dbg !799

if.end19:                                         ; preds = %if.then17, %if.end12
  %8 = bitcast void (...)* %5 to void (i32)*, !dbg !800
  %call20 = call void (i32)* @signal(i32 2, void (i32)* %8), !dbg !802
  %9 = bitcast void (...)* %6 to void (i32)*, !dbg !803
  %call21 = call void (i32)* @signal(i32 3, void (i32)* %9), !dbg !804
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @summarize(%struct._IO_FILE* %fp, i8* %fmt, i8** %command, %struct.__anonstruct_RESUSE_37* %resp) #0 !dbg !806 {
entry:
  %__u = alloca %union.__anonunion___u_47, align 4
  %__u___0 = alloca %union.__anonunion___u_48, align 4
  %__u___1 = alloca %union.__anonunion___u_49, align 4
  %__u___2 = alloca %union.__anonunion___u_50, align 4
  %__u___3 = alloca %union.__anonunion___u_51, align 4
  %__u___4 = alloca %union.__anonunion___u_52, align 4
  %__u___5 = alloca %union.__anonunion___u_53, align 4
  %__u___6 = alloca %union.__anonunion___u_54, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !809, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !811, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8** %command, metadata !812, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata %struct.__anonstruct_RESUSE_37* %resp, metadata !813, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_47* %__u, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_48* %__u___0, metadata !820, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_49* %__u___1, metadata !826, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_50* %__u___2, metadata !832, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_51* %__u___3, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_52* %__u___4, metadata !844, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_53* %__u___5, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata %union.__anonunion___u_54* %__u___6, metadata !856, metadata !DIExpression()), !dbg !861
  %waitstatus = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !862
  %0 = load i32, i32* %waitstatus, align 8, !dbg !862
  %__in = bitcast %union.__anonunion___u_53* %__u___5 to i32*, !dbg !865
  store i32 %0, i32* %__in, align 4, !dbg !866
  %__i = bitcast %union.__anonunion___u_53* %__u___5 to i32*, !dbg !867
  %1 = load i32, i32* %__i, align 4, !dbg !867
  %and = and i32 %1, 255, !dbg !869
  %cmp = icmp eq i32 %and, 127, !dbg !870
  br i1 %cmp, label %if.then, label %if.else, !dbg !871

if.then:                                          ; preds = %entry
  %waitstatus1 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !872
  %2 = load i32, i32* %waitstatus1, align 8, !dbg !872
  %__in2 = bitcast %union.__anonunion___u_47* %__u to i32*, !dbg !875
  store i32 %2, i32* %__in2, align 4, !dbg !876
  %__i3 = bitcast %union.__anonunion___u_47* %__u to i32*, !dbg !877
  %3 = load i32, i32* %__i3, align 4, !dbg !877
  %and4 = and i32 %3, 65280, !dbg !878
  %shr = ashr i32 %and4, 8, !dbg !879
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i32 %shr), !dbg !880
  br label %if.end46, !dbg !881

if.else:                                          ; preds = %entry
  %waitstatus5 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !882
  %4 = load i32, i32* %waitstatus5, align 8, !dbg !882
  %__in6 = bitcast %union.__anonunion___u_52* %__u___4 to i32*, !dbg !884
  store i32 %4, i32* %__in6, align 4, !dbg !885
  %__i7 = bitcast %union.__anonunion___u_52* %__u___4 to i32*, !dbg !886
  %5 = load i32, i32* %__i7, align 4, !dbg !886
  call void @llvm.dbg.value(metadata i32 %5, metadata !887, metadata !DIExpression()), !dbg !810
  %and8 = and i32 %5, 255, !dbg !888
  %cmp9 = icmp eq i32 %and8, 127, !dbg !890
  br i1 %cmp9, label %if.else15, label %if.then10, !dbg !891

if.then10:                                        ; preds = %if.else
  %and11 = and i32 %5, 127, !dbg !892
  %cmp12 = icmp eq i32 %and11, 0, !dbg !895
  br i1 %cmp12, label %if.else14, label %if.then13, !dbg !896

if.then13:                                        ; preds = %if.then10
  call void @llvm.dbg.value(metadata i32 1, metadata !897, metadata !DIExpression()), !dbg !810
  br label %if.end, !dbg !898

if.else14:                                        ; preds = %if.then10
  call void @llvm.dbg.value(metadata i32 0, metadata !897, metadata !DIExpression()), !dbg !810
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then13
  %tmp.0 = phi i32 [ 0, %if.else14 ], [ 1, %if.then13 ], !dbg !900
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !897, metadata !DIExpression()), !dbg !810
  br label %if.end16, !dbg !901

if.else15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !897, metadata !DIExpression()), !dbg !810
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end
  %tmp.1 = phi i32 [ 0, %if.else15 ], [ %tmp.0, %if.end ], !dbg !902
  call void @llvm.dbg.value(metadata i32 %tmp.1, metadata !897, metadata !DIExpression()), !dbg !810
  %tobool = icmp ne i32 %tmp.1, 0, !dbg !903
  br i1 %tobool, label %if.then17, label %if.else23, !dbg !891

if.then17:                                        ; preds = %if.end16
  %waitstatus18 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !905
  %6 = load i32, i32* %waitstatus18, align 8, !dbg !905
  %__in19 = bitcast %union.__anonunion___u_48* %__u___0 to i32*, !dbg !908
  store i32 %6, i32* %__in19, align 4, !dbg !909
  %__i20 = bitcast %union.__anonunion___u_48* %__u___0 to i32*, !dbg !910
  %7 = load i32, i32* %__i20, align 4, !dbg !910
  %and21 = and i32 %7, 127, !dbg !911
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i32 %and21), !dbg !912
  br label %if.end45, !dbg !913

if.else23:                                        ; preds = %if.end16
  %waitstatus24 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !914
  %8 = load i32, i32* %waitstatus24, align 8, !dbg !914
  %__in25 = bitcast %union.__anonunion___u_50* %__u___2 to i32*, !dbg !916
  store i32 %8, i32* %__in25, align 4, !dbg !917
  %__i26 = bitcast %union.__anonunion___u_50* %__u___2 to i32*, !dbg !918
  %9 = load i32, i32* %__i26, align 4, !dbg !918
  %and27 = and i32 %9, 127, !dbg !920
  %cmp28 = icmp eq i32 %and27, 0, !dbg !921
  br i1 %cmp28, label %if.then29, label %if.end44, !dbg !922

if.then29:                                        ; preds = %if.else23
  %waitstatus30 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !923
  %10 = load i32, i32* %waitstatus30, align 8, !dbg !923
  %__in31 = bitcast %union.__anonunion___u_51* %__u___3 to i32*, !dbg !925
  store i32 %10, i32* %__in31, align 4, !dbg !926
  %__i32 = bitcast %union.__anonunion___u_51* %__u___3 to i32*, !dbg !927
  %11 = load i32, i32* %__i32, align 4, !dbg !927
  %and33 = and i32 %11, 65280, !dbg !929
  %shr34 = ashr i32 %and33, 8, !dbg !930
  %tobool35 = icmp ne i32 %shr34, 0, !dbg !930
  br i1 %tobool35, label %if.then36, label %if.end43, !dbg !931

if.then36:                                        ; preds = %if.then29
  %waitstatus37 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !932
  %12 = load i32, i32* %waitstatus37, align 8, !dbg !932
  %__in38 = bitcast %union.__anonunion___u_49* %__u___1 to i32*, !dbg !935
  store i32 %12, i32* %__in38, align 4, !dbg !936
  %__i39 = bitcast %union.__anonunion___u_49* %__u___1 to i32*, !dbg !937
  %13 = load i32, i32* %__i39, align 4, !dbg !937
  %and40 = and i32 %13, 65280, !dbg !938
  %shr41 = ashr i32 %and40, 8, !dbg !939
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i32 0, i32 0), i32 %shr41), !dbg !940
  br label %if.end43, !dbg !941

if.end43:                                         ; preds = %if.then36, %if.then29
  br label %if.end44, !dbg !942

if.end44:                                         ; preds = %if.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then17
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then
  %elapsed = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !943
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed, i32 0, i32 0, !dbg !944
  %14 = load i64, i64* %tv_sec, align 8, !dbg !944
  %mul = mul nsw i64 %14, 1000, !dbg !945
  %elapsed47 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !946
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed47, i32 0, i32 1, !dbg !947
  %15 = load i64, i64* %tv_usec, align 8, !dbg !947
  %div = sdiv i64 %15, 1000, !dbg !948
  %add = add nsw i64 %mul, %div, !dbg !949
  call void @llvm.dbg.value(metadata i64 %add, metadata !950, metadata !DIExpression()), !dbg !810
  %ru = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !951
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0, !dbg !952
  %tv_sec48 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0, !dbg !953
  %16 = load i64, i64* %tv_sec48, align 8, !dbg !953
  %mul49 = mul nsw i64 %16, 1000, !dbg !954
  %ru50 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !955
  %ru_utime51 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru50, i32 0, i32 0, !dbg !956
  %tv_usec52 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime51, i32 0, i32 1, !dbg !957
  %17 = load i64, i64* %tv_usec52, align 8, !dbg !957
  %div53 = sdiv i64 %17, 1000, !dbg !958
  %add54 = add nsw i64 %mul49, %div53, !dbg !959
  %ru55 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !960
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ru55, i32 0, i32 1, !dbg !961
  %tv_sec56 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0, !dbg !962
  %18 = load i64, i64* %tv_sec56, align 8, !dbg !962
  %mul57 = mul nsw i64 %18, 1000, !dbg !963
  %add58 = add nsw i64 %add54, %mul57, !dbg !964
  %ru59 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !965
  %ru_stime60 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru59, i32 0, i32 1, !dbg !966
  %tv_usec61 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime60, i32 0, i32 1, !dbg !967
  %19 = load i64, i64* %tv_usec61, align 8, !dbg !967
  %div62 = sdiv i64 %19, 1000, !dbg !968
  %add63 = add nsw i64 %add58, %div62, !dbg !969
  call void @llvm.dbg.value(metadata i64 %add63, metadata !970, metadata !DIExpression()), !dbg !810
  br label %while.body, !dbg !971

while.body:                                       ; preds = %if.end409, %if.end46
  %fmt.addr.0 = phi i8* [ %fmt, %if.end46 ], [ %fmt.addr.1, %if.end409 ]
  call void @llvm.dbg.value(metadata i8* %fmt.addr.0, metadata !811, metadata !DIExpression()), !dbg !810
  br label %while_continue, !dbg !973

while_continue:                                   ; preds = %while.body
  %20 = load i8, i8* %fmt.addr.0, align 1, !dbg !974
  %tobool64 = icmp ne i8 %20, 0, !dbg !974
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !977

if.then65:                                        ; preds = %while_continue
  br label %while_break, !dbg !978

if.end66:                                         ; preds = %while_continue
  %21 = load i8, i8* %fmt.addr.0, align 1, !dbg !980
  %conv = sext i8 %21 to i32, !dbg !983
  %cmp67 = icmp eq i32 %conv, 37, !dbg !984
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !985

if.then69:                                        ; preds = %if.end66
  br label %case_37, !dbg !986

if.end70:                                         ; preds = %if.end66
  %22 = load i8, i8* %fmt.addr.0, align 1, !dbg !988
  %conv71 = sext i8 %22 to i32, !dbg !990
  %cmp72 = icmp eq i32 %conv71, 92, !dbg !991
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !992

if.then74:                                        ; preds = %if.end70
  br label %case_92, !dbg !993

if.end75:                                         ; preds = %if.end70
  br label %switch_default___1, !dbg !995

case_37:                                          ; preds = %if.then69
  %incdec.ptr = getelementptr inbounds i8, i8* %fmt.addr.0, i32 1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !811, metadata !DIExpression()), !dbg !810
  %23 = load i8, i8* %incdec.ptr, align 1, !dbg !997
  %conv76 = sext i8 %23 to i32, !dbg !1000
  %cmp77 = icmp eq i32 %conv76, 37, !dbg !1001
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1002

if.then79:                                        ; preds = %case_37
  br label %case_37___0, !dbg !1003

if.end80:                                         ; preds = %case_37
  %24 = load i8, i8* %incdec.ptr, align 1, !dbg !1005
  %conv81 = sext i8 %24 to i32, !dbg !1007
  %cmp82 = icmp eq i32 %conv81, 67, !dbg !1008
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !1009

if.then84:                                        ; preds = %if.end80
  br label %case_67, !dbg !1010

if.end85:                                         ; preds = %if.end80
  %25 = load i8, i8* %incdec.ptr, align 1, !dbg !1012
  %conv86 = sext i8 %25 to i32, !dbg !1014
  %cmp87 = icmp eq i32 %conv86, 68, !dbg !1015
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1016

if.then89:                                        ; preds = %if.end85
  br label %case_68, !dbg !1017

if.end90:                                         ; preds = %if.end85
  %26 = load i8, i8* %incdec.ptr, align 1, !dbg !1019
  %conv91 = sext i8 %26 to i32, !dbg !1021
  %cmp92 = icmp eq i32 %conv91, 69, !dbg !1022
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !1023

if.then94:                                        ; preds = %if.end90
  br label %case_69, !dbg !1024

if.end95:                                         ; preds = %if.end90
  %27 = load i8, i8* %incdec.ptr, align 1, !dbg !1026
  %conv96 = sext i8 %27 to i32, !dbg !1028
  %cmp97 = icmp eq i32 %conv96, 70, !dbg !1029
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !1030

if.then99:                                        ; preds = %if.end95
  br label %case_70, !dbg !1031

if.end100:                                        ; preds = %if.end95
  %28 = load i8, i8* %incdec.ptr, align 1, !dbg !1033
  %conv101 = sext i8 %28 to i32, !dbg !1035
  %cmp102 = icmp eq i32 %conv101, 73, !dbg !1036
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !1037

if.then104:                                       ; preds = %if.end100
  br label %case_73, !dbg !1038

if.end105:                                        ; preds = %if.end100
  %29 = load i8, i8* %incdec.ptr, align 1, !dbg !1040
  %conv106 = sext i8 %29 to i32, !dbg !1042
  %cmp107 = icmp eq i32 %conv106, 75, !dbg !1043
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !1044

if.then109:                                       ; preds = %if.end105
  br label %case_75, !dbg !1045

if.end110:                                        ; preds = %if.end105
  %30 = load i8, i8* %incdec.ptr, align 1, !dbg !1047
  %conv111 = sext i8 %30 to i32, !dbg !1049
  %cmp112 = icmp eq i32 %conv111, 77, !dbg !1050
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !1051

if.then114:                                       ; preds = %if.end110
  br label %case_77, !dbg !1052

if.end115:                                        ; preds = %if.end110
  %31 = load i8, i8* %incdec.ptr, align 1, !dbg !1054
  %conv116 = sext i8 %31 to i32, !dbg !1056
  %cmp117 = icmp eq i32 %conv116, 79, !dbg !1057
  br i1 %cmp117, label %if.then119, label %if.end120, !dbg !1058

if.then119:                                       ; preds = %if.end115
  br label %case_79, !dbg !1059

if.end120:                                        ; preds = %if.end115
  %32 = load i8, i8* %incdec.ptr, align 1, !dbg !1061
  %conv121 = sext i8 %32 to i32, !dbg !1063
  %cmp122 = icmp eq i32 %conv121, 80, !dbg !1064
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !1065

if.then124:                                       ; preds = %if.end120
  br label %case_80, !dbg !1066

if.end125:                                        ; preds = %if.end120
  %33 = load i8, i8* %incdec.ptr, align 1, !dbg !1068
  %conv126 = sext i8 %33 to i32, !dbg !1070
  %cmp127 = icmp eq i32 %conv126, 82, !dbg !1071
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !1072

if.then129:                                       ; preds = %if.end125
  br label %case_82, !dbg !1073

if.end130:                                        ; preds = %if.end125
  %34 = load i8, i8* %incdec.ptr, align 1, !dbg !1075
  %conv131 = sext i8 %34 to i32, !dbg !1077
  %cmp132 = icmp eq i32 %conv131, 83, !dbg !1078
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !1079

if.then134:                                       ; preds = %if.end130
  br label %case_83, !dbg !1080

if.end135:                                        ; preds = %if.end130
  %35 = load i8, i8* %incdec.ptr, align 1, !dbg !1082
  %conv136 = sext i8 %35 to i32, !dbg !1084
  %cmp137 = icmp eq i32 %conv136, 85, !dbg !1085
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !1086

if.then139:                                       ; preds = %if.end135
  br label %case_85, !dbg !1087

if.end140:                                        ; preds = %if.end135
  %36 = load i8, i8* %incdec.ptr, align 1, !dbg !1089
  %conv141 = sext i8 %36 to i32, !dbg !1091
  %cmp142 = icmp eq i32 %conv141, 87, !dbg !1092
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !1093

if.then144:                                       ; preds = %if.end140
  br label %case_87, !dbg !1094

if.end145:                                        ; preds = %if.end140
  %37 = load i8, i8* %incdec.ptr, align 1, !dbg !1096
  %conv146 = sext i8 %37 to i32, !dbg !1098
  %cmp147 = icmp eq i32 %conv146, 88, !dbg !1099
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !1100

if.then149:                                       ; preds = %if.end145
  br label %case_88, !dbg !1101

if.end150:                                        ; preds = %if.end145
  %38 = load i8, i8* %incdec.ptr, align 1, !dbg !1103
  %conv151 = sext i8 %38 to i32, !dbg !1105
  %cmp152 = icmp eq i32 %conv151, 90, !dbg !1106
  br i1 %cmp152, label %if.then154, label %if.end155, !dbg !1107

if.then154:                                       ; preds = %if.end150
  br label %case_90, !dbg !1108

if.end155:                                        ; preds = %if.end150
  %39 = load i8, i8* %incdec.ptr, align 1, !dbg !1110
  %conv156 = sext i8 %39 to i32, !dbg !1112
  %cmp157 = icmp eq i32 %conv156, 99, !dbg !1113
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !1114

if.then159:                                       ; preds = %if.end155
  br label %case_99, !dbg !1115

if.end160:                                        ; preds = %if.end155
  %40 = load i8, i8* %incdec.ptr, align 1, !dbg !1117
  %conv161 = sext i8 %40 to i32, !dbg !1119
  %cmp162 = icmp eq i32 %conv161, 101, !dbg !1120
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !1121

if.then164:                                       ; preds = %if.end160
  br label %case_101, !dbg !1122

if.end165:                                        ; preds = %if.end160
  %41 = load i8, i8* %incdec.ptr, align 1, !dbg !1124
  %conv166 = sext i8 %41 to i32, !dbg !1126
  %cmp167 = icmp eq i32 %conv166, 107, !dbg !1127
  br i1 %cmp167, label %if.then169, label %if.end170, !dbg !1128

if.then169:                                       ; preds = %if.end165
  br label %case_107, !dbg !1129

if.end170:                                        ; preds = %if.end165
  %42 = load i8, i8* %incdec.ptr, align 1, !dbg !1131
  %conv171 = sext i8 %42 to i32, !dbg !1133
  %cmp172 = icmp eq i32 %conv171, 112, !dbg !1134
  br i1 %cmp172, label %if.then174, label %if.end175, !dbg !1135

if.then174:                                       ; preds = %if.end170
  br label %case_112, !dbg !1136

if.end175:                                        ; preds = %if.end170
  %43 = load i8, i8* %incdec.ptr, align 1, !dbg !1138
  %conv176 = sext i8 %43 to i32, !dbg !1140
  %cmp177 = icmp eq i32 %conv176, 114, !dbg !1141
  br i1 %cmp177, label %if.then179, label %if.end180, !dbg !1142

if.then179:                                       ; preds = %if.end175
  br label %case_114, !dbg !1143

if.end180:                                        ; preds = %if.end175
  %44 = load i8, i8* %incdec.ptr, align 1, !dbg !1145
  %conv181 = sext i8 %44 to i32, !dbg !1147
  %cmp182 = icmp eq i32 %conv181, 115, !dbg !1148
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !1149

if.then184:                                       ; preds = %if.end180
  br label %case_115, !dbg !1150

if.end185:                                        ; preds = %if.end180
  %45 = load i8, i8* %incdec.ptr, align 1, !dbg !1152
  %conv186 = sext i8 %45 to i32, !dbg !1154
  %cmp187 = icmp eq i32 %conv186, 116, !dbg !1155
  br i1 %cmp187, label %if.then189, label %if.end190, !dbg !1156

if.then189:                                       ; preds = %if.end185
  br label %case_116, !dbg !1157

if.end190:                                        ; preds = %if.end185
  %46 = load i8, i8* %incdec.ptr, align 1, !dbg !1159
  %conv191 = sext i8 %46 to i32, !dbg !1161
  %cmp192 = icmp eq i32 %conv191, 119, !dbg !1162
  br i1 %cmp192, label %if.then194, label %if.end195, !dbg !1163

if.then194:                                       ; preds = %if.end190
  br label %case_119, !dbg !1164

if.end195:                                        ; preds = %if.end190
  %47 = load i8, i8* %incdec.ptr, align 1, !dbg !1166
  %conv196 = sext i8 %47 to i32, !dbg !1168
  %cmp197 = icmp eq i32 %conv196, 120, !dbg !1169
  br i1 %cmp197, label %if.then199, label %if.end200, !dbg !1170

if.then199:                                       ; preds = %if.end195
  br label %case_120, !dbg !1171

if.end200:                                        ; preds = %if.end195
  %48 = load i8, i8* %incdec.ptr, align 1, !dbg !1173
  %conv201 = sext i8 %48 to i32, !dbg !1175
  %cmp202 = icmp eq i32 %conv201, 0, !dbg !1176
  br i1 %cmp202, label %if.then204, label %if.end205, !dbg !1177

if.then204:                                       ; preds = %if.end200
  br label %case_0, !dbg !1178

if.end205:                                        ; preds = %if.end200
  br label %switch_default, !dbg !1180

case_37___0:                                      ; preds = %if.then79
  %call206 = call i32 @_IO_putc(i32 37, %struct._IO_FILE* %fp), !dbg !1181
  br label %switch_break___0, !dbg !1183

case_67:                                          ; preds = %if.then84
  call void @fprintargv(%struct._IO_FILE* %fp, i8** %command, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)), !dbg !1184
  br label %switch_break___0, !dbg !1186

case_68:                                          ; preds = %if.then89
  %div207 = udiv i64 %add63, 10, !dbg !1187
  %cmp208 = icmp eq i64 %div207, 0, !dbg !1189
  br i1 %cmp208, label %if.then210, label %if.else211, !dbg !1190

if.then210:                                       ; preds = %case_68
  call void @llvm.dbg.value(metadata i64 0, metadata !1191, metadata !DIExpression()), !dbg !810
  br label %if.end221, !dbg !1192

if.else211:                                       ; preds = %case_68
  %ru212 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1194
  %ru_idrss = getelementptr inbounds %struct.rusage, %struct.rusage* %ru212, i32 0, i32 4, !dbg !1197
  %49 = load i64, i64* %ru_idrss, align 8, !dbg !1197
  %call213 = call i64 @ptok(i64 %49), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %call213, metadata !1199, metadata !DIExpression()), !dbg !810
  %ru214 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1194
  %ru_isrss = getelementptr inbounds %struct.rusage, %struct.rusage* %ru214, i32 0, i32 5, !dbg !1197
  %50 = load i64, i64* %ru_isrss, align 8, !dbg !1197
  %call215 = call i64 @ptok(i64 %50), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %call215, metadata !1200, metadata !DIExpression()), !dbg !810
  %div216 = udiv i64 %add63, 10, !dbg !1201
  %div217 = udiv i64 %call213, %div216, !dbg !1202
  %div218 = udiv i64 %add63, 10, !dbg !1203
  %div219 = udiv i64 %call215, %div218, !dbg !1204
  %add220 = add i64 %div217, %div219, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %add220, metadata !1191, metadata !DIExpression()), !dbg !810
  br label %if.end221

if.end221:                                        ; preds = %if.else211, %if.then210
  %tmp___2.0 = phi i64 [ 0, %if.then210 ], [ %add220, %if.else211 ], !dbg !1206
  call void @llvm.dbg.value(metadata i64 %tmp___2.0, metadata !1191, metadata !DIExpression()), !dbg !810
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %tmp___2.0), !dbg !1207
  br label %switch_break___0, !dbg !1209

case_69:                                          ; preds = %if.then94
  %elapsed223 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1210
  %tv_sec224 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed223, i32 0, i32 0, !dbg !1212
  %51 = load i64, i64* %tv_sec224, align 8, !dbg !1212
  %cmp225 = icmp sge i64 %51, 3600, !dbg !1213
  br i1 %cmp225, label %if.then227, label %if.else238, !dbg !1214

if.then227:                                       ; preds = %case_69
  %elapsed228 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1215
  %tv_sec229 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed228, i32 0, i32 0, !dbg !1218
  %52 = load i64, i64* %tv_sec229, align 8, !dbg !1218
  %div230 = sdiv i64 %52, 3600, !dbg !1219
  %elapsed231 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1220
  %tv_sec232 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed231, i32 0, i32 0, !dbg !1221
  %53 = load i64, i64* %tv_sec232, align 8, !dbg !1221
  %rem = srem i64 %53, 3600, !dbg !1222
  %div233 = sdiv i64 %rem, 60, !dbg !1223
  %elapsed234 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1224
  %tv_sec235 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed234, i32 0, i32 0, !dbg !1225
  %54 = load i64, i64* %tv_sec235, align 8, !dbg !1225
  %rem236 = srem i64 %54, 60, !dbg !1226
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i64 %div230, i64 %div233, i64 %rem236), !dbg !1227
  br label %if.end249, !dbg !1228

if.else238:                                       ; preds = %case_69
  %elapsed239 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1229
  %tv_sec240 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed239, i32 0, i32 0, !dbg !1232
  %55 = load i64, i64* %tv_sec240, align 8, !dbg !1232
  %div241 = sdiv i64 %55, 60, !dbg !1233
  %elapsed242 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1234
  %tv_sec243 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed242, i32 0, i32 0, !dbg !1235
  %56 = load i64, i64* %tv_sec243, align 8, !dbg !1235
  %rem244 = srem i64 %56, 60, !dbg !1236
  %elapsed245 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1237
  %tv_usec246 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed245, i32 0, i32 1, !dbg !1238
  %57 = load i64, i64* %tv_usec246, align 8, !dbg !1238
  %div247 = sdiv i64 %57, 10000, !dbg !1239
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i64 %div241, i64 %rem244, i64 %div247), !dbg !1240
  br label %if.end249

if.end249:                                        ; preds = %if.else238, %if.then227
  br label %switch_break___0, !dbg !1241

case_70:                                          ; preds = %if.then99
  %ru250 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1242
  %ru_majflt = getelementptr inbounds %struct.rusage, %struct.rusage* %ru250, i32 0, i32 7, !dbg !1244
  %58 = load i64, i64* %ru_majflt, align 8, !dbg !1244
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %58), !dbg !1245
  br label %switch_break___0, !dbg !1246

case_73:                                          ; preds = %if.then104
  %ru252 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1247
  %ru_inblock = getelementptr inbounds %struct.rusage, %struct.rusage* %ru252, i32 0, i32 9, !dbg !1249
  %59 = load i64, i64* %ru_inblock, align 8, !dbg !1249
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %59), !dbg !1250
  br label %switch_break___0, !dbg !1251

case_75:                                          ; preds = %if.then109
  %div254 = udiv i64 %add63, 10, !dbg !1252
  %cmp255 = icmp eq i64 %div254, 0, !dbg !1254
  br i1 %cmp255, label %if.then257, label %if.else258, !dbg !1255

if.then257:                                       ; preds = %case_75
  call void @llvm.dbg.value(metadata i64 0, metadata !1256, metadata !DIExpression()), !dbg !810
  br label %if.end275, !dbg !1257

if.else258:                                       ; preds = %case_75
  %ru259 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1259
  %ru_idrss260 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru259, i32 0, i32 4, !dbg !1262
  %60 = load i64, i64* %ru_idrss260, align 8, !dbg !1262
  %call261 = call i64 @ptok(i64 %60), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %call261, metadata !1264, metadata !DIExpression()), !dbg !810
  %ru262 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1259
  %ru_isrss263 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru262, i32 0, i32 5, !dbg !1262
  %61 = load i64, i64* %ru_isrss263, align 8, !dbg !1262
  %call264 = call i64 @ptok(i64 %61), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %call264, metadata !1265, metadata !DIExpression()), !dbg !810
  %ru265 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1259
  %ru_ixrss = getelementptr inbounds %struct.rusage, %struct.rusage* %ru265, i32 0, i32 3, !dbg !1262
  %62 = load i64, i64* %ru_ixrss, align 8, !dbg !1262
  %call266 = call i64 @ptok(i64 %62), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %call266, metadata !1266, metadata !DIExpression()), !dbg !810
  %div267 = udiv i64 %add63, 10, !dbg !1267
  %div268 = udiv i64 %call261, %div267, !dbg !1268
  %div269 = udiv i64 %add63, 10, !dbg !1269
  %div270 = udiv i64 %call264, %div269, !dbg !1270
  %add271 = add i64 %div268, %div270, !dbg !1271
  %div272 = udiv i64 %add63, 10, !dbg !1272
  %div273 = udiv i64 %call266, %div272, !dbg !1273
  %add274 = add i64 %add271, %div273, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %add274, metadata !1256, metadata !DIExpression()), !dbg !810
  br label %if.end275

if.end275:                                        ; preds = %if.else258, %if.then257
  %tmp___6.0 = phi i64 [ 0, %if.then257 ], [ %add274, %if.else258 ], !dbg !1275
  call void @llvm.dbg.value(metadata i64 %tmp___6.0, metadata !1256, metadata !DIExpression()), !dbg !810
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %tmp___6.0), !dbg !1276
  br label %switch_break___0, !dbg !1278

case_77:                                          ; preds = %if.then114
  %ru277 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1279
  %ru_maxrss = getelementptr inbounds %struct.rusage, %struct.rusage* %ru277, i32 0, i32 2, !dbg !1281
  %63 = load i64, i64* %ru_maxrss, align 8, !dbg !1281
  %call278 = call i64 @ptok(i64 %63), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %call278, metadata !1283, metadata !DIExpression()), !dbg !810
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %call278), !dbg !1284
  br label %switch_break___0, !dbg !1285

case_79:                                          ; preds = %if.then119
  %ru280 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1286
  %ru_oublock = getelementptr inbounds %struct.rusage, %struct.rusage* %ru280, i32 0, i32 10, !dbg !1288
  %64 = load i64, i64* %ru_oublock, align 8, !dbg !1288
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %64), !dbg !1289
  br label %switch_break___0, !dbg !1290

case_80:                                          ; preds = %if.then124
  %cmp282 = icmp ugt i64 %add, 0, !dbg !1291
  br i1 %cmp282, label %if.then284, label %if.else288, !dbg !1293

if.then284:                                       ; preds = %case_80
  %mul285 = mul i64 %add63, 100, !dbg !1294
  %div286 = udiv i64 %mul285, %add, !dbg !1297
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i64 %div286), !dbg !1298
  br label %if.end290, !dbg !1299

if.else288:                                       ; preds = %case_80
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)), !dbg !1300
  br label %if.end290

if.end290:                                        ; preds = %if.else288, %if.then284
  br label %switch_break___0, !dbg !1303

case_82:                                          ; preds = %if.then129
  %ru291 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1304
  %ru_minflt = getelementptr inbounds %struct.rusage, %struct.rusage* %ru291, i32 0, i32 6, !dbg !1306
  %65 = load i64, i64* %ru_minflt, align 8, !dbg !1306
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %65), !dbg !1307
  br label %switch_break___0, !dbg !1308

case_83:                                          ; preds = %if.then134
  %ru293 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1309
  %ru_stime294 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru293, i32 0, i32 1, !dbg !1311
  %tv_sec295 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime294, i32 0, i32 0, !dbg !1312
  %66 = load i64, i64* %tv_sec295, align 8, !dbg !1312
  %ru296 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1313
  %ru_stime297 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru296, i32 0, i32 1, !dbg !1314
  %tv_usec298 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime297, i32 0, i32 1, !dbg !1315
  %67 = load i64, i64* %tv_usec298, align 8, !dbg !1315
  %div299 = sdiv i64 %67, 1000, !dbg !1316
  %div300 = sdiv i64 %div299, 10, !dbg !1317
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i64 %66, i64 %div300), !dbg !1318
  br label %switch_break___0, !dbg !1319

case_85:                                          ; preds = %if.then139
  %ru302 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1320
  %ru_utime303 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru302, i32 0, i32 0, !dbg !1322
  %tv_sec304 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime303, i32 0, i32 0, !dbg !1323
  %68 = load i64, i64* %tv_sec304, align 8, !dbg !1323
  %ru305 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1324
  %ru_utime306 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru305, i32 0, i32 0, !dbg !1325
  %tv_usec307 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime306, i32 0, i32 1, !dbg !1326
  %69 = load i64, i64* %tv_usec307, align 8, !dbg !1326
  %div308 = sdiv i64 %69, 1000, !dbg !1327
  %div309 = sdiv i64 %div308, 10, !dbg !1328
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i64 %68, i64 %div309), !dbg !1329
  br label %switch_break___0, !dbg !1330

case_87:                                          ; preds = %if.then144
  %ru311 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1331
  %ru_nswap = getelementptr inbounds %struct.rusage, %struct.rusage* %ru311, i32 0, i32 8, !dbg !1333
  %70 = load i64, i64* %ru_nswap, align 8, !dbg !1333
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %70), !dbg !1334
  br label %switch_break___0, !dbg !1335

case_88:                                          ; preds = %if.then149
  %div313 = udiv i64 %add63, 10, !dbg !1336
  %cmp314 = icmp eq i64 %div313, 0, !dbg !1338
  br i1 %cmp314, label %if.then316, label %if.else317, !dbg !1339

if.then316:                                       ; preds = %case_88
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !810
  br label %if.end323, !dbg !1341

if.else317:                                       ; preds = %case_88
  %ru318 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1343
  %ru_ixrss319 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru318, i32 0, i32 3, !dbg !1346
  %71 = load i64, i64* %ru_ixrss319, align 8, !dbg !1346
  %call320 = call i64 @ptok(i64 %71), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %call320, metadata !1348, metadata !DIExpression()), !dbg !810
  %div321 = udiv i64 %add63, 10, !dbg !1349
  %div322 = udiv i64 %call320, %div321, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %div322, metadata !1340, metadata !DIExpression()), !dbg !810
  br label %if.end323

if.end323:                                        ; preds = %if.else317, %if.then316
  %tmp___9.0 = phi i64 [ 0, %if.then316 ], [ %div322, %if.else317 ], !dbg !1351
  call void @llvm.dbg.value(metadata i64 %tmp___9.0, metadata !1340, metadata !DIExpression()), !dbg !810
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %tmp___9.0), !dbg !1352
  br label %switch_break___0, !dbg !1354

case_90:                                          ; preds = %if.then154
  %call325 = call i32 @getpagesize() #9, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %call325, metadata !1357, metadata !DIExpression()), !dbg !810
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 %call325), !dbg !1358
  br label %switch_break___0, !dbg !1359

case_99:                                          ; preds = %if.then159
  %ru327 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1360
  %ru_nivcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %ru327, i32 0, i32 15, !dbg !1362
  %72 = load i64, i64* %ru_nivcsw, align 8, !dbg !1362
  %call328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %72), !dbg !1363
  br label %switch_break___0, !dbg !1364

case_101:                                         ; preds = %if.then164
  %elapsed329 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1365
  %tv_sec330 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed329, i32 0, i32 0, !dbg !1367
  %73 = load i64, i64* %tv_sec330, align 8, !dbg !1367
  %elapsed331 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 3, !dbg !1368
  %tv_usec332 = getelementptr inbounds %struct.timeval, %struct.timeval* %elapsed331, i32 0, i32 1, !dbg !1369
  %74 = load i64, i64* %tv_usec332, align 8, !dbg !1369
  %div333 = sdiv i64 %74, 10000, !dbg !1370
  %call334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i64 %73, i64 %div333), !dbg !1371
  br label %switch_break___0, !dbg !1372

case_107:                                         ; preds = %if.then169
  %ru335 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1373
  %ru_nsignals = getelementptr inbounds %struct.rusage, %struct.rusage* %ru335, i32 0, i32 13, !dbg !1375
  %75 = load i64, i64* %ru_nsignals, align 8, !dbg !1375
  %call336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %75), !dbg !1376
  br label %switch_break___0, !dbg !1377

case_112:                                         ; preds = %if.then174
  %div337 = udiv i64 %add63, 10, !dbg !1378
  %cmp338 = icmp eq i64 %div337, 0, !dbg !1380
  br i1 %cmp338, label %if.then340, label %if.else341, !dbg !1381

if.then340:                                       ; preds = %case_112
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()), !dbg !810
  br label %if.end347, !dbg !1383

if.else341:                                       ; preds = %case_112
  %ru342 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1385
  %ru_isrss343 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru342, i32 0, i32 5, !dbg !1388
  %76 = load i64, i64* %ru_isrss343, align 8, !dbg !1388
  %call344 = call i64 @ptok(i64 %76), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %call344, metadata !1390, metadata !DIExpression()), !dbg !810
  %div345 = udiv i64 %add63, 10, !dbg !1391
  %div346 = udiv i64 %call344, %div345, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %div346, metadata !1382, metadata !DIExpression()), !dbg !810
  br label %if.end347

if.end347:                                        ; preds = %if.else341, %if.then340
  %tmp___12.0 = phi i64 [ 0, %if.then340 ], [ %div346, %if.else341 ], !dbg !1393
  call void @llvm.dbg.value(metadata i64 %tmp___12.0, metadata !1382, metadata !DIExpression()), !dbg !810
  %call348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %tmp___12.0), !dbg !1394
  br label %switch_break___0, !dbg !1396

case_114:                                         ; preds = %if.then179
  %ru349 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1397
  %ru_msgrcv = getelementptr inbounds %struct.rusage, %struct.rusage* %ru349, i32 0, i32 12, !dbg !1399
  %77 = load i64, i64* %ru_msgrcv, align 8, !dbg !1399
  %call350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %77), !dbg !1400
  br label %switch_break___0, !dbg !1401

case_115:                                         ; preds = %if.then184
  %ru351 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1402
  %ru_msgsnd = getelementptr inbounds %struct.rusage, %struct.rusage* %ru351, i32 0, i32 11, !dbg !1404
  %78 = load i64, i64* %ru_msgsnd, align 8, !dbg !1404
  %call352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %78), !dbg !1405
  br label %switch_break___0, !dbg !1406

case_116:                                         ; preds = %if.then189
  %div353 = udiv i64 %add63, 10, !dbg !1407
  %cmp354 = icmp eq i64 %div353, 0, !dbg !1409
  br i1 %cmp354, label %if.then356, label %if.else357, !dbg !1410

if.then356:                                       ; preds = %case_116
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !810
  br label %if.end363, !dbg !1412

if.else357:                                       ; preds = %case_116
  %ru358 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1414
  %ru_idrss359 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru358, i32 0, i32 4, !dbg !1417
  %79 = load i64, i64* %ru_idrss359, align 8, !dbg !1417
  %call360 = call i64 @ptok(i64 %79), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %call360, metadata !1419, metadata !DIExpression()), !dbg !810
  %div361 = udiv i64 %add63, 10, !dbg !1420
  %div362 = udiv i64 %call360, %div361, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %div362, metadata !1411, metadata !DIExpression()), !dbg !810
  br label %if.end363

if.end363:                                        ; preds = %if.else357, %if.then356
  %tmp___14.0 = phi i64 [ 0, %if.then356 ], [ %div362, %if.else357 ], !dbg !1422
  call void @llvm.dbg.value(metadata i64 %tmp___14.0, metadata !1411, metadata !DIExpression()), !dbg !810
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 %tmp___14.0), !dbg !1423
  br label %switch_break___0, !dbg !1425

case_119:                                         ; preds = %if.then194
  %ru365 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 1, !dbg !1426
  %ru_nvcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %ru365, i32 0, i32 14, !dbg !1428
  %80 = load i64, i64* %ru_nvcsw, align 8, !dbg !1428
  %call366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 %80), !dbg !1429
  br label %switch_break___0, !dbg !1430

case_120:                                         ; preds = %if.then199
  %waitstatus367 = getelementptr inbounds %struct.__anonstruct_RESUSE_37, %struct.__anonstruct_RESUSE_37* %resp, i32 0, i32 0, !dbg !1431
  %81 = load i32, i32* %waitstatus367, align 8, !dbg !1431
  %__in368 = bitcast %union.__anonunion___u_54* %__u___6 to i32*, !dbg !1433
  store i32 %81, i32* %__in368, align 4, !dbg !1434
  %__i369 = bitcast %union.__anonunion___u_54* %__u___6 to i32*, !dbg !1435
  %82 = load i32, i32* %__i369, align 4, !dbg !1435
  %and370 = and i32 %82, 65280, !dbg !1436
  %shr371 = ashr i32 %and370, 8, !dbg !1437
  %call372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 %shr371), !dbg !1438
  br label %switch_break___0, !dbg !1439

case_0:                                           ; preds = %if.then204
  %call373 = call i32 @_IO_putc(i32 63, %struct._IO_FILE* %fp), !dbg !1440
  br label %return, !dbg !1442

switch_default:                                   ; preds = %if.end205
  %call374 = call i32 @_IO_putc(i32 63, %struct._IO_FILE* %fp), !dbg !1443
  %83 = load i8, i8* %incdec.ptr, align 1, !dbg !1445
  %conv375 = sext i8 %83 to i32, !dbg !1446
  %call376 = call i32 @_IO_putc(i32 %conv375, %struct._IO_FILE* %fp), !dbg !1447
  br label %switch_break___0, !dbg !1448

switch_break___0:                                 ; preds = %switch_default, %case_120, %case_119, %if.end363, %case_115, %case_114, %if.end347, %case_107, %case_101, %case_99, %case_90, %if.end323, %case_87, %case_85, %case_83, %case_82, %if.end290, %case_79, %case_77, %if.end275, %case_73, %case_70, %if.end249, %if.end221, %case_67, %case_37___0
  %incdec.ptr377 = getelementptr inbounds i8, i8* %incdec.ptr, i32 1, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %incdec.ptr377, metadata !811, metadata !DIExpression()), !dbg !810
  br label %switch_break, !dbg !1450

case_92:                                          ; preds = %if.then74
  %incdec.ptr378 = getelementptr inbounds i8, i8* %fmt.addr.0, i32 1, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %incdec.ptr378, metadata !811, metadata !DIExpression()), !dbg !810
  %84 = load i8, i8* %incdec.ptr378, align 1, !dbg !1452
  %conv379 = sext i8 %84 to i32, !dbg !1455
  %cmp380 = icmp eq i32 %conv379, 116, !dbg !1456
  br i1 %cmp380, label %if.then382, label %if.end383, !dbg !1457

if.then382:                                       ; preds = %case_92
  br label %case_116___0, !dbg !1458

if.end383:                                        ; preds = %case_92
  %85 = load i8, i8* %incdec.ptr378, align 1, !dbg !1460
  %conv384 = sext i8 %85 to i32, !dbg !1462
  %cmp385 = icmp eq i32 %conv384, 110, !dbg !1463
  br i1 %cmp385, label %if.then387, label %if.end388, !dbg !1464

if.then387:                                       ; preds = %if.end383
  br label %case_110, !dbg !1465

if.end388:                                        ; preds = %if.end383
  %86 = load i8, i8* %incdec.ptr378, align 1, !dbg !1467
  %conv389 = sext i8 %86 to i32, !dbg !1469
  %cmp390 = icmp eq i32 %conv389, 92, !dbg !1470
  br i1 %cmp390, label %if.then392, label %if.end393, !dbg !1471

if.then392:                                       ; preds = %if.end388
  br label %case_92___0, !dbg !1472

if.end393:                                        ; preds = %if.end388
  br label %switch_default___0, !dbg !1474

case_116___0:                                     ; preds = %if.then382
  %call394 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %fp), !dbg !1475
  br label %switch_break___1, !dbg !1477

case_110:                                         ; preds = %if.then387
  %call395 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %fp), !dbg !1478
  br label %switch_break___1, !dbg !1480

case_92___0:                                      ; preds = %if.then392
  %call396 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %fp), !dbg !1481
  br label %switch_break___1, !dbg !1483

switch_default___0:                               ; preds = %if.end393
  %call397 = call i32 @_IO_putc(i32 63, %struct._IO_FILE* %fp), !dbg !1484
  %call398 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %fp), !dbg !1486
  %87 = load i8, i8* %incdec.ptr378, align 1, !dbg !1487
  %conv399 = sext i8 %87 to i32, !dbg !1488
  %call400 = call i32 @_IO_putc(i32 %conv399, %struct._IO_FILE* %fp), !dbg !1489
  br label %switch_break___1, !dbg !1490

switch_break___1:                                 ; preds = %switch_default___0, %case_92___0, %case_110, %case_116___0
  %incdec.ptr401 = getelementptr inbounds i8, i8* %incdec.ptr378, i32 1, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %incdec.ptr401, metadata !811, metadata !DIExpression()), !dbg !810
  br label %switch_break, !dbg !1492

switch_default___1:                               ; preds = %if.end75
  call void @llvm.dbg.value(metadata i8* %fmt.addr.0, metadata !1493, metadata !DIExpression()), !dbg !810
  %incdec.ptr402 = getelementptr inbounds i8, i8* %fmt.addr.0, i32 1, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %incdec.ptr402, metadata !811, metadata !DIExpression()), !dbg !810
  %88 = load i8, i8* %fmt.addr.0, align 1, !dbg !1496
  %conv403 = sext i8 %88 to i32, !dbg !1497
  %call404 = call i32 @_IO_putc(i32 %conv403, %struct._IO_FILE* %fp), !dbg !1498
  br label %switch_break, !dbg !1499

switch_break:                                     ; preds = %switch_default___1, %switch_break___1, %switch_break___0
  %fmt.addr.1 = phi i8* [ %incdec.ptr377, %switch_break___0 ], [ %incdec.ptr401, %switch_break___1 ], [ %incdec.ptr402, %switch_default___1 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8* %fmt.addr.1, metadata !811, metadata !DIExpression()), !dbg !810
  %call405 = call i32 @ferror(%struct._IO_FILE* %fp), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %call405, metadata !1503, metadata !DIExpression()), !dbg !810
  %tobool406 = icmp ne i32 %call405, 0, !dbg !1504
  br i1 %tobool406, label %if.then407, label %if.end409, !dbg !1506

if.then407:                                       ; preds = %switch_break
  %call408 = call i32* @__errno_location() #9, !dbg !1507
  call void @llvm.dbg.value(metadata i32* %call408, metadata !1510, metadata !DIExpression()), !dbg !810
  %89 = load i32, i32* %call408, align 4, !dbg !1511
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0)), !dbg !1512
  br label %if.end409, !dbg !1513

if.end409:                                        ; preds = %if.then407, %switch_break
  br label %while.body, !dbg !971, !llvm.loop !1514

while_break:                                      ; preds = %if.then65
  %call410 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %fp), !dbg !1516
  %call411 = call i32 @ferror(%struct._IO_FILE* %fp), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %call411, metadata !1519, metadata !DIExpression()), !dbg !810
  %tobool412 = icmp ne i32 %call411, 0, !dbg !1520
  br i1 %tobool412, label %if.then413, label %if.end415, !dbg !1522

if.then413:                                       ; preds = %while_break
  %call414 = call i32* @__errno_location() #9, !dbg !1523
  call void @llvm.dbg.value(metadata i32* %call414, metadata !1526, metadata !DIExpression()), !dbg !810
  %90 = load i32, i32* %call414, align 4, !dbg !1527
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0)), !dbg !1528
  br label %if.end415, !dbg !1529

if.end415:                                        ; preds = %if.then413, %while_break
  br label %return, !dbg !1530

return:                                           ; preds = %if.end415, %case_0
  ret void, !dbg !1531
}

declare i8* @getenv(i8*) #2

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @usage(%struct._IO_FILE* %stream, i32 %status) #0 !dbg !1532 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !1535, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status, metadata !1537, metadata !DIExpression()), !dbg !1536
  %0 = load i8*, i8** @program_name, align 8, !dbg !1538
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.20, i32 0, i32 0), i8* %0), !dbg !1541
  call void @exit(i32 %status) #7, !dbg !1542
  unreachable, !dbg !1542

return:                                           ; No predecessors!
  ret void, !dbg !1543
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @linear_argv(i8** %argv) #0 !dbg !1544 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1547, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1550, metadata !DIExpression()), !dbg !1548
  br label %while.body, !dbg !1551

while.body:                                       ; preds = %if.end, %entry
  %s.0 = phi i8** [ %argv, %entry ], [ %incdec.ptr, %if.end ], !dbg !1554
  %size___0.0 = phi i32 [ 1, %entry ], [ %add, %if.end ], !dbg !1554
  call void @llvm.dbg.value(metadata i32 %size___0.0, metadata !1549, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8** %s.0, metadata !1550, metadata !DIExpression()), !dbg !1548
  br label %while_continue, !dbg !1555

while_continue:                                   ; preds = %while.body
  %0 = load i8*, i8** %s.0, align 8, !dbg !1556
  %tobool = icmp ne i8* %0, null, !dbg !1556
  br i1 %tobool, label %if.end, label %if.then, !dbg !1559

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1560

if.end:                                           ; preds = %while_continue
  %1 = load i8*, i8** %s.0, align 8, !dbg !1562
  %call = call i32 @strlen(i8* %1) #8, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %call, metadata !1565, metadata !DIExpression()), !dbg !1548
  %add = add i32 %size___0.0, %call, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %add, metadata !1549, metadata !DIExpression()), !dbg !1548
  %incdec.ptr = getelementptr inbounds i8*, i8** %s.0, i32 1, !dbg !1567
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1550, metadata !DIExpression()), !dbg !1548
  br label %while.body, !dbg !1551, !llvm.loop !1568

while_break:                                      ; preds = %if.then
  %call1 = call noalias i8* @malloc(i32 %size___0.0), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1572, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1573, metadata !DIExpression()), !dbg !1548
  %2 = ptrtoint i8* %call1 to i64, !dbg !1574
  %cmp = icmp eq i64 %2, 0, !dbg !1576
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !1577

if.then2:                                         ; preds = %while_break
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1578
  %4 = load i8*, i8** @program_name, align 8, !dbg !1581
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i8* %4), !dbg !1582
  br label %return, !dbg !1583

if.end4:                                          ; preds = %while_break
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1550, metadata !DIExpression()), !dbg !1548
  %5 = load i8*, i8** %argv, align 8, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %5, metadata !1585, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1586, metadata !DIExpression()), !dbg !1548
  br label %while.body5, !dbg !1587

while.body5:                                      ; preds = %while_break___1, %if.end4
  %dp.0 = phi i8* [ %call1, %if.end4 ], [ %incdec.ptr17, %while_break___1 ], !dbg !1554
  %s.1 = phi i8** [ %argv, %if.end4 ], [ %incdec.ptr18, %while_break___1 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8** %s.1, metadata !1550, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %dp.0, metadata !1586, metadata !DIExpression()), !dbg !1548
  br label %while_continue___0, !dbg !1589

while_continue___0:                               ; preds = %while.body5
  %6 = load i8*, i8** %s.1, align 8, !dbg !1590
  %tobool6 = icmp ne i8* %6, null, !dbg !1590
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1593

if.then7:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1594

if.end8:                                          ; preds = %while_continue___0
  %7 = load i8*, i8** %s.1, align 8, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %7, metadata !1585, metadata !DIExpression()), !dbg !1548
  br label %while.body10, !dbg !1597

while.body10:                                     ; preds = %if.end16, %if.end8
  %dp.1 = phi i8* [ %dp.0, %if.end8 ], [ %incdec.ptr11, %if.end16 ], !dbg !1554
  %sp.0 = phi i8* [ %7, %if.end8 ], [ %incdec.ptr12, %if.end16 ], !dbg !1599
  call void @llvm.dbg.value(metadata i8* %sp.0, metadata !1585, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %dp.1, metadata !1586, metadata !DIExpression()), !dbg !1548
  br label %while_continue___1, !dbg !1600

while_continue___1:                               ; preds = %while.body10
  call void @llvm.dbg.value(metadata i8* %dp.1, metadata !1601, metadata !DIExpression()), !dbg !1548
  %incdec.ptr11 = getelementptr inbounds i8, i8* %dp.1, i32 1, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %incdec.ptr11, metadata !1586, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %sp.0, metadata !1604, metadata !DIExpression()), !dbg !1548
  %incdec.ptr12 = getelementptr inbounds i8, i8* %sp.0, i32 1, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !1585, metadata !DIExpression()), !dbg !1548
  %8 = load i8, i8* %sp.0, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i8 %8, metadata !1606, metadata !DIExpression()), !dbg !1548
  store i8 %8, i8* %dp.1, align 1, !dbg !1607
  %conv = sext i8 %8 to i32, !dbg !1608
  %cmp13 = icmp ne i32 %conv, 0, !dbg !1610
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !1611

if.then15:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1612

if.end16:                                         ; preds = %while_continue___1
  br label %while.body10, !dbg !1597, !llvm.loop !1614

while_break___1:                                  ; preds = %if.then15
  %incdec.ptr17 = getelementptr inbounds i8, i8* %incdec.ptr11, i32 -1, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !1586, metadata !DIExpression()), !dbg !1548
  %incdec.ptr18 = getelementptr inbounds i8*, i8** %s.1, i32 1, !dbg !1617
  call void @llvm.dbg.value(metadata i8** %incdec.ptr18, metadata !1550, metadata !DIExpression()), !dbg !1548
  br label %while.body5, !dbg !1587, !llvm.loop !1618

while_break___0:                                  ; preds = %if.then7
  br label %return, !dbg !1620

return:                                           ; preds = %while_break___0, %if.then2
  %retval.0 = phi i8* [ null, %if.then2 ], [ %call1, %while_break___0 ], !dbg !1554
  ret i8* %retval.0, !dbg !1621
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

declare noalias i8* @malloc(i32) #2

declare i32 @fork() #2

declare i32 @execvp(i8*, i8**) #2

; Function Attrs: noreturn
declare void @_exit(i32) #4

declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @fprintargv(%struct._IO_FILE* %fp, i8** %argv, i8* %filler) #0 !dbg !1622 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !1625, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1627, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %filler, metadata !1628, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1629, metadata !DIExpression()), !dbg !1626
  %0 = load i8*, i8** %argv, align 8, !dbg !1630
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp), !dbg !1633
  br label %while.body, !dbg !1634

while.body:                                       ; preds = %if.end, %entry
  %av.0 = phi i8** [ %argv, %entry ], [ %incdec.ptr, %if.end ], !dbg !1636
  call void @llvm.dbg.value(metadata i8** %av.0, metadata !1629, metadata !DIExpression()), !dbg !1626
  br label %while_continue, !dbg !1637

while_continue:                                   ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %av.0, i32 1, !dbg !1638
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1629, metadata !DIExpression()), !dbg !1626
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !1640
  %tobool = icmp ne i8* %1, null, !dbg !1640
  br i1 %tobool, label %if.end, label %if.then, !dbg !1642

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1643

if.end:                                           ; preds = %while_continue
  %call1 = call i32 @fputs(i8* %filler, %struct._IO_FILE* %fp), !dbg !1645
  %2 = load i8*, i8** %incdec.ptr, align 8, !dbg !1647
  %call2 = call i32 @fputs(i8* %2, %struct._IO_FILE* %fp), !dbg !1648
  br label %while.body, !dbg !1634, !llvm.loop !1649

while_break:                                      ; preds = %if.then
  %call3 = call i32 @ferror(%struct._IO_FILE* %fp), !dbg !1651
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1653, metadata !DIExpression()), !dbg !1626
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1654
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1656

if.then5:                                         ; preds = %while_break
  %call6 = call i32* @__errno_location() #9, !dbg !1657
  call void @llvm.dbg.value(metadata i32* %call6, metadata !1660, metadata !DIExpression()), !dbg !1626
  %3 = load i32, i32* %call6, align 4, !dbg !1661
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0)), !dbg !1662
  br label %if.end7, !dbg !1663

if.end7:                                          ; preds = %if.then5, %while_break
  ret void, !dbg !1664
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @ptok(i64 %pages) #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata i64 %pages, metadata !1668, metadata !DIExpression()), !dbg !1669
  %0 = load i64, i64* @ps, align 8, !dbg !1670
  %cmp = icmp eq i64 %0, 0, !dbg !1673
  br i1 %cmp, label %if.then, label %if.end, !dbg !1674

if.then:                                          ; preds = %entry
  %call = call i32 @getpagesize() #9, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %call, metadata !1678, metadata !DIExpression()), !dbg !1669
  %conv = sext i32 %call to i64, !dbg !1679
  store i64 %conv, i64* @ps, align 8, !dbg !1680
  br label %if.end, !dbg !1681

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @ps, align 8, !dbg !1682
  %div = udiv i64 2147483647, %1, !dbg !1684
  %cmp1 = icmp ugt i64 %pages, %div, !dbg !1685
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !1686

if.then3:                                         ; preds = %if.end
  %div4 = udiv i64 %pages, 1024, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %div4, metadata !1689, metadata !DIExpression()), !dbg !1669
  %2 = load i64, i64* @ps, align 8, !dbg !1690
  %mul = mul i64 %div4, %2, !dbg !1691
  store i64 %mul, i64* @size, align 8, !dbg !1692
  br label %if.end7, !dbg !1693

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* @ps, align 8, !dbg !1694
  %mul5 = mul i64 %pages, %3, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %mul5, metadata !1689, metadata !DIExpression()), !dbg !1669
  %div6 = udiv i64 %mul5, 1024, !dbg !1697
  store i64 %div6, i64* @size, align 8, !dbg !1698
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %4 = load i64, i64* @size, align 8, !dbg !1699
  ret i64 %4, !dbg !1700
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #6

declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!173, !174, !175, !176, !177}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!178}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "version_string", scope: !2, file: !172, line: 1, type: !100, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !127, nameTableKind: GNU)
!3 = !DIFile(filename: "c/time-1.7.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_boolean_46", file: !6, line: 100, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/abs/pronto/test-suite/time-1.7/time.c", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!12, !22, !29, !45, !100, !102, !93, !103, !105, !106, !114, !53, !116, !27, !117, !54, !119, !122, !125, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !14, line: 69, size: 128, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/time.h", directory: "")
!15 = !{!16, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !13, file: !14, line: 70, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 151, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !13, file: !14, line: 71, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !18, line: 153, baseType: !19)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !24, line: 56, size: 64, elements: !25)
!24 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !23, file: !24, line: 57, baseType: !27, size: 32)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !23, file: !24, line: 58, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "wait", file: !31, line: 65, size: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/bits/waitstatus.h", directory: "")
!32 = !{!33, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "w_status", scope: !30, file: !31, line: 66, baseType: !27, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__wait_terminated", scope: !30, file: !31, line: 67, baseType: !35, size: 32)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct___wait_terminated_29", file: !31, line: 65, size: 32, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__w_termsig", scope: !35, file: !31, line: 66, baseType: !7, size: 7, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__w_coredump", scope: !35, file: !31, line: 67, baseType: !7, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__w_retcode", scope: !35, file: !31, line: 68, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__wait_stopped", scope: !30, file: !31, line: 68, baseType: !41, size: 32)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct___wait_stopped_30", file: !31, line: 65, size: 32, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__w_stopval", scope: !41, file: !31, line: 66, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__w_stopsig", scope: !41, file: !31, line: 67, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 264, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!50 = !{!51, !52, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !73, !74, !75, !76, !78, !80, !82, !86, !89, !92, !94, !95, !96}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 265, baseType: !27, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 266, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 267, baseType: !53, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 268, baseType: !53, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 269, baseType: !53, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 270, baseType: !53, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 271, baseType: !53, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 272, baseType: !53, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 273, baseType: !53, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 274, baseType: !53, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 275, baseType: !53, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 276, baseType: !53, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 277, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 179, size: 192, elements: !68)
!68 = !{!69, !70, !72}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !67, file: !49, line: 180, baseType: !66, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !67, file: !49, line: 181, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !67, file: !49, line: 182, baseType: !27, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 278, baseType: !71, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 279, baseType: !27, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 280, baseType: !27, size: 32, offset: 928)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 281, baseType: !77, size: 64, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !18, line: 143, baseType: !19)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 282, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 283, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 284, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 285, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 173, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 286, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !18, line: 144, baseType: !91)
!91 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !48, file: !49, line: 287, baseType: !93, size: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !48, file: !49, line: 288, baseType: !93, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 289, baseType: !27, size: 32, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 290, baseType: !97, size: 352, offset: 1376)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 352, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 44)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !6, line: 100, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !109, line: 78, size: 256, elements: !110)
!109 = !DIFile(filename: "getopt.h", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!110 = !{!111, !112, !113, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !109, line: 79, baseType: !100, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !108, file: !109, line: 80, baseType: !27, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !108, file: !109, line: 81, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !108, file: !109, line: 82, baseType: !27, size: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 213, baseType: !7)
!118 = !DIFile(filename: "/usr/lib/gcc-lib/i486-linux/3.3.5/include/stddef.h", directory: "")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !27}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, null}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!127 = !{!0, !128, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !163, !168, !170}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !2, file: !130, line: 54, type: !131, isLocal: false, isDefinition: true)
!130 = !DIFile(filename: "/abs/pronto/test-suite/time-1.7/error.c", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "error_message_count", scope: !2, file: !130, line: 61, type: !7, isLocal: false, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "program_name", scope: !2, file: !6, line: 166, type: !53, isLocal: false, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !2, file: !130, line: 147, type: !27, isLocal: false, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "old_file_name", scope: !2, file: !130, line: 169, type: !100, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "old_line_number", scope: !2, file: !130, line: 170, type: !7, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "outfp", scope: !2, file: !6, line: 157, type: !45, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "output_format", scope: !2, file: !6, line: 163, type: !100, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "default_format", scope: !2, file: !6, line: 105, type: !126, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "posix_format", scope: !2, file: !6, line: 110, type: !126, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !6, line: 151, type: !105, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "outfile", scope: !2, file: !6, line: 154, type: !100, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !6, line: 160, type: !105, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !6, line: 168, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 2048, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "longstats", scope: !2, file: !6, line: 122, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1536, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 24)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "ps", scope: !2, file: !6, line: 255, type: !102, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "size", scope: !2, file: !6, line: 257, type: !19, isLocal: true, isDefinition: true)
!172 = !DIFile(filename: "/abs/pronto/test-suite/time-1.7/version.c", directory: "")
!173 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!174 = !{i32 2, !"Dwarf Version", i32 4}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{i32 7, !"PIC Level", i32 2}
!178 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!179 = distinct !DISubprogram(name: "resuse_start", scope: !180, file: !180, line: 46, type: !181, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!180 = !DIFile(filename: "/abs/pronto/test-suite/time-1.7/resuse.c", directory: "")
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESUSE", file: !185, line: 56, baseType: !186)
!185 = !DIFile(filename: "/abs/pronto/test-suite/time-1.7/resuse.h", directory: "")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_RESUSE_37", file: !185, line: 56, size: 1472, elements: !187)
!187 = !{!188, !189, !209, !210}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "waitstatus", scope: !186, file: !185, line: 57, baseType: !27, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ru", scope: !186, file: !185, line: 58, baseType: !190, size: 1152, offset: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !191, line: 153, size: 1152, elements: !192)
!191 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !190, file: !191, line: 154, baseType: !13, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !190, file: !191, line: 155, baseType: !13, size: 128, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !190, file: !191, line: 156, baseType: !19, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !190, file: !191, line: 157, baseType: !19, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !190, file: !191, line: 158, baseType: !19, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !190, file: !191, line: 159, baseType: !19, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !190, file: !191, line: 160, baseType: !19, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !190, file: !191, line: 161, baseType: !19, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !190, file: !191, line: 162, baseType: !19, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !190, file: !191, line: 163, baseType: !19, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !190, file: !191, line: 164, baseType: !19, size: 64, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !190, file: !191, line: 165, baseType: !19, size: 64, offset: 832)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !190, file: !191, line: 166, baseType: !19, size: 64, offset: 896)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !190, file: !191, line: 167, baseType: !19, size: 64, offset: 960)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !190, file: !191, line: 168, baseType: !19, size: 64, offset: 1024)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !190, file: !191, line: 169, baseType: !19, size: 64, offset: 1088)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !186, file: !185, line: 59, baseType: !13, size: 128, offset: 1216)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !186, file: !185, line: 60, baseType: !13, size: 128, offset: 1344)
!211 = !{}
!212 = !DILocalVariable(name: "resp", arg: 1, scope: !179, file: !180, line: 46, type: !183)
!213 = !DILocation(line: 0, scope: !179)
!214 = !DILocation(line: 51, column: 60, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !180, line: 51, column: 3)
!216 = distinct !DILexicalBlock(scope: !179, file: !180, line: 50, column: 3)
!217 = !DILocation(line: 51, column: 3, scope: !215)
!218 = !DILocation(line: 60, column: 3, scope: !216)
!219 = distinct !DISubprogram(name: "resuse_end", scope: !180, file: !180, line: 67, type: !220, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!220 = !DISubroutineType(types: !221)
!221 = !{!27, !222, !183}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !223, line: 100, baseType: !224)
!223 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !18, line: 145, baseType: !27)
!225 = !DILocalVariable(name: "pid", arg: 1, scope: !219, file: !180, line: 67, type: !222)
!226 = !DILocation(line: 0, scope: !219)
!227 = !DILocalVariable(name: "resp", arg: 2, scope: !219, file: !180, line: 67, type: !183)
!228 = !DILocalVariable(name: "status", scope: !219, file: !180, line: 69, type: !27)
!229 = !DILocation(line: 69, column: 7, scope: !219)
!230 = !DILocation(line: 83, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !180, line: 73, column: 3)
!232 = distinct !DILexicalBlock(scope: !219, file: !180, line: 72, column: 3)
!233 = !DILocation(line: 83, column: 13, scope: !231)
!234 = !DILocation(line: 83, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !180, line: 85, column: 5)
!236 = distinct !DILexicalBlock(scope: !231, file: !180, line: 83, column: 13)
!237 = !DILocation(line: 83, column: 57, scope: !235)
!238 = !DILocation(line: 83, column: 14, scope: !235)
!239 = !DILocalVariable(name: "caught", scope: !219, file: !180, line: 70, type: !222)
!240 = !DILocation(line: 83, column: 19, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !180, line: 83, column: 9)
!242 = !DILocation(line: 83, column: 9, scope: !236)
!243 = !DILocation(line: 83, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !180, line: 83, column: 28)
!245 = !DILocation(line: 85, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !236, file: !180, line: 85, column: 9)
!247 = !DILocation(line: 85, column: 9, scope: !236)
!248 = !DILocation(line: 86, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !180, line: 85, column: 23)
!250 = distinct !{!250, !230, !251}
!251 = !DILocation(line: 88, column: 3, scope: !231)
!252 = !DILocation(line: 89, column: 60, scope: !253)
!253 = distinct !DILexicalBlock(scope: !232, file: !180, line: 91, column: 3)
!254 = !DILocation(line: 89, column: 3, scope: !253)
!255 = !DILocation(line: 117, column: 33, scope: !253)
!256 = !DILocation(line: 117, column: 39, scope: !253)
!257 = !DILocation(line: 117, column: 9, scope: !253)
!258 = !DILocation(line: 117, column: 17, scope: !253)
!259 = !DILocation(line: 117, column: 24, scope: !253)
!260 = !DILocation(line: 118, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !232, file: !180, line: 118, column: 7)
!262 = !DILocation(line: 118, column: 21, scope: !261)
!263 = !DILocation(line: 118, column: 37, scope: !261)
!264 = !DILocation(line: 118, column: 43, scope: !261)
!265 = !DILocation(line: 118, column: 29, scope: !261)
!266 = !DILocation(line: 118, column: 7, scope: !232)
!267 = !DILocation(line: 121, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !180, line: 118, column: 52)
!269 = !DILocation(line: 121, column: 19, scope: !268)
!270 = !DILocation(line: 121, column: 27, scope: !268)
!271 = !DILocation(line: 122, column: 12, scope: !268)
!272 = !DILocation(line: 122, column: 20, scope: !268)
!273 = !DILocation(line: 122, column: 28, scope: !268)
!274 = !DILocation(line: 123, column: 3, scope: !268)
!275 = !DILocation(line: 124, column: 34, scope: !232)
!276 = !DILocation(line: 124, column: 40, scope: !232)
!277 = !DILocation(line: 124, column: 9, scope: !232)
!278 = !DILocation(line: 124, column: 17, scope: !232)
!279 = !DILocation(line: 124, column: 25, scope: !232)
!280 = !DILocation(line: 126, column: 22, scope: !232)
!281 = !DILocation(line: 126, column: 9, scope: !232)
!282 = !DILocation(line: 126, column: 20, scope: !232)
!283 = !DILocation(line: 128, column: 3, scope: !232)
!284 = !DILocation(line: 0, scope: !232)
!285 = !DILocation(line: 130, column: 1, scope: !219)
!286 = distinct !DISubprogram(name: "error", scope: !130, file: !130, line: 101, type: !287, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !27, !27, !100, null}
!289 = !DILocalVariable(name: "status", arg: 1, scope: !286, file: !130, line: 101, type: !27)
!290 = !DILocation(line: 0, scope: !286)
!291 = !DILocalVariable(name: "errnum", arg: 2, scope: !286, file: !130, line: 101, type: !27)
!292 = !DILocalVariable(name: "message", arg: 3, scope: !286, file: !130, line: 101, type: !100)
!293 = !DILocalVariable(name: "args", scope: !286, file: !130, line: 103, type: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !295, line: 105, baseType: !296)
!295 = !DIFile(filename: "/usr/lib/gcc-lib/i486-linux/3.3.5/include/stdarg.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !295, line: 43, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 103, baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !84)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 103, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !299, file: !3, line: 103, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !299, file: !3, line: 103, baseType: !7, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !299, file: !3, line: 103, baseType: !93, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !299, file: !3, line: 103, baseType: !93, size: 64, offset: 128)
!305 = !DILocation(line: 103, column: 11, scope: !286)
!306 = !DILocation(line: 116, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !130, line: 116, column: 7)
!308 = distinct !DILexicalBlock(scope: !286, file: !130, line: 106, column: 3)
!309 = !DILocation(line: 116, column: 7, scope: !308)
!310 = !DILocation(line: 117, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !130, line: 117, column: 5)
!312 = distinct !DILexicalBlock(scope: !307, file: !130, line: 116, column: 29)
!313 = !DILocation(line: 117, column: 5, scope: !311)
!314 = !DILocation(line: 119, column: 3, scope: !312)
!315 = !DILocation(line: 120, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !130, line: 120, column: 5)
!317 = distinct !DILexicalBlock(scope: !307, file: !130, line: 119, column: 10)
!318 = !DILocation(line: 120, column: 5, scope: !316)
!319 = !DILocation(line: 121, column: 38, scope: !316)
!320 = !DILocation(line: 122, column: 13, scope: !316)
!321 = !DILocation(line: 121, column: 5, scope: !316)
!322 = !DILocation(line: 125, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !308, file: !130, line: 125, column: 3)
!324 = !DILocation(line: 127, column: 37, scope: !323)
!325 = !DILocation(line: 128, column: 12, scope: !323)
!326 = !DILocation(line: 127, column: 3, scope: !323)
!327 = !DILocation(line: 131, column: 3, scope: !323)
!328 = !DILocation(line: 136, column: 23, scope: !323)
!329 = !DILocation(line: 137, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !308, file: !130, line: 137, column: 7)
!331 = !DILocation(line: 137, column: 7, scope: !308)
!332 = !DILocation(line: 138, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !130, line: 138, column: 5)
!334 = distinct !DILexicalBlock(scope: !330, file: !130, line: 137, column: 15)
!335 = !DILocalVariable(name: "tmp", scope: !286, file: !130, line: 104, type: !53)
!336 = !DILocation(line: 138, column: 38, scope: !333)
!337 = !DILocation(line: 138, column: 5, scope: !333)
!338 = !DILocation(line: 141, column: 3, scope: !334)
!339 = !DILocation(line: 139, column: 18, scope: !340)
!340 = distinct !DILexicalBlock(scope: !308, file: !130, line: 142, column: 3)
!341 = !DILocation(line: 139, column: 3, scope: !340)
!342 = !DILocation(line: 140, column: 10, scope: !340)
!343 = !DILocation(line: 140, column: 3, scope: !340)
!344 = !DILocation(line: 141, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !308, file: !130, line: 141, column: 7)
!346 = !DILocation(line: 141, column: 7, scope: !308)
!347 = !DILocation(line: 142, column: 5, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !130, line: 142, column: 5)
!349 = distinct !DILexicalBlock(scope: !345, file: !130, line: 141, column: 15)
!350 = !DILocation(line: 143, column: 3, scope: !308)
!351 = distinct !DISubprogram(name: "error_at_line", scope: !130, file: !130, line: 149, type: !352, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !27, !27, !100, !7, !100, null}
!354 = !DILocalVariable(name: "status", arg: 1, scope: !351, file: !130, line: 149, type: !27)
!355 = !DILocation(line: 0, scope: !351)
!356 = !DILocalVariable(name: "errnum", arg: 2, scope: !351, file: !130, line: 149, type: !27)
!357 = !DILocalVariable(name: "file_name", arg: 3, scope: !351, file: !130, line: 149, type: !100)
!358 = !DILocalVariable(name: "line_number", arg: 4, scope: !351, file: !130, line: 149, type: !7)
!359 = !DILocalVariable(name: "message", arg: 5, scope: !351, file: !130, line: 150, type: !100)
!360 = !DILocalVariable(name: "args", scope: !351, file: !130, line: 152, type: !294)
!361 = !DILocation(line: 152, column: 11, scope: !351)
!362 = !DILocation(line: 167, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !130, line: 167, column: 7)
!364 = distinct !DILexicalBlock(scope: !351, file: !130, line: 156, column: 3)
!365 = !DILocation(line: 167, column: 7, scope: !364)
!366 = !DILocation(line: 172, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !130, line: 172, column: 9)
!368 = distinct !DILexicalBlock(scope: !363, file: !130, line: 167, column: 27)
!369 = !DILocation(line: 172, column: 25, scope: !367)
!370 = !DILocation(line: 172, column: 9, scope: !368)
!371 = !DILocation(line: 172, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !130, line: 172, column: 11)
!373 = distinct !DILexicalBlock(scope: !367, file: !130, line: 172, column: 41)
!374 = !DILocation(line: 172, column: 56, scope: !372)
!375 = !DILocation(line: 172, column: 40, scope: !372)
!376 = !DILocation(line: 172, column: 37, scope: !372)
!377 = !DILocation(line: 172, column: 11, scope: !373)
!378 = !DILocation(line: 175, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !130, line: 172, column: 71)
!380 = !DILocation(line: 172, column: 22, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !130, line: 177, column: 9)
!382 = distinct !DILexicalBlock(scope: !372, file: !130, line: 176, column: 14)
!383 = !DILocation(line: 172, column: 15, scope: !381)
!384 = !DILocalVariable(name: "tmp", scope: !351, file: !130, line: 153, type: !27)
!385 = !DILocation(line: 172, column: 15, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !130, line: 172, column: 13)
!387 = !DILocation(line: 172, column: 13, scope: !382)
!388 = !DILocation(line: 175, column: 11, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !130, line: 172, column: 20)
!390 = !DILocation(line: 178, column: 5, scope: !373)
!391 = !DILocation(line: 177, column: 19, scope: !368)
!392 = !DILocation(line: 178, column: 21, scope: !368)
!393 = !DILocation(line: 179, column: 3, scope: !368)
!394 = !DILocation(line: 181, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !364, file: !130, line: 181, column: 7)
!396 = !DILocation(line: 181, column: 7, scope: !364)
!397 = !DILocation(line: 182, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !130, line: 182, column: 5)
!399 = distinct !DILexicalBlock(scope: !395, file: !130, line: 181, column: 29)
!400 = !DILocation(line: 182, column: 5, scope: !398)
!401 = !DILocation(line: 184, column: 3, scope: !399)
!402 = !DILocation(line: 185, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !130, line: 185, column: 5)
!404 = distinct !DILexicalBlock(scope: !395, file: !130, line: 184, column: 10)
!405 = !DILocation(line: 185, column: 5, scope: !403)
!406 = !DILocation(line: 186, column: 38, scope: !403)
!407 = !DILocation(line: 187, column: 13, scope: !403)
!408 = !DILocation(line: 186, column: 5, scope: !403)
!409 = !DILocation(line: 189, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !364, file: !130, line: 189, column: 7)
!411 = !DILocation(line: 189, column: 33, scope: !410)
!412 = !DILocation(line: 189, column: 7, scope: !364)
!413 = !DILocation(line: 190, column: 38, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !130, line: 190, column: 5)
!415 = distinct !DILexicalBlock(scope: !410, file: !130, line: 189, column: 65)
!416 = !DILocation(line: 190, column: 5, scope: !414)
!417 = !DILocation(line: 193, column: 3, scope: !415)
!418 = !DILocation(line: 193, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !364, file: !130, line: 194, column: 3)
!420 = !DILocation(line: 195, column: 37, scope: !419)
!421 = !DILocation(line: 196, column: 12, scope: !419)
!422 = !DILocation(line: 195, column: 3, scope: !419)
!423 = !DILocation(line: 199, column: 3, scope: !419)
!424 = !DILocation(line: 204, column: 23, scope: !419)
!425 = !DILocation(line: 205, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !364, file: !130, line: 205, column: 7)
!427 = !DILocation(line: 205, column: 7, scope: !364)
!428 = !DILocation(line: 206, column: 15, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !130, line: 206, column: 5)
!430 = distinct !DILexicalBlock(scope: !426, file: !130, line: 205, column: 15)
!431 = !DILocalVariable(name: "tmp___0", scope: !351, file: !130, line: 154, type: !53)
!432 = !DILocation(line: 206, column: 38, scope: !429)
!433 = !DILocation(line: 206, column: 5, scope: !429)
!434 = !DILocation(line: 209, column: 3, scope: !430)
!435 = !DILocation(line: 207, column: 18, scope: !436)
!436 = distinct !DILexicalBlock(scope: !364, file: !130, line: 210, column: 3)
!437 = !DILocation(line: 207, column: 3, scope: !436)
!438 = !DILocation(line: 208, column: 10, scope: !436)
!439 = !DILocation(line: 208, column: 3, scope: !436)
!440 = !DILocation(line: 209, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !364, file: !130, line: 209, column: 7)
!442 = !DILocation(line: 209, column: 7, scope: !364)
!443 = !DILocation(line: 210, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !130, line: 210, column: 5)
!445 = distinct !DILexicalBlock(scope: !441, file: !130, line: 209, column: 15)
!446 = !DILocation(line: 211, column: 3, scope: !364)
!447 = !DILocation(line: 213, column: 1, scope: !351)
!448 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 631, type: !449, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !27, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!452 = !DILocalVariable(name: "argc", arg: 1, scope: !448, file: !6, line: 631, type: !27)
!453 = !DILocation(line: 0, scope: !448)
!454 = !DILocalVariable(name: "argv", arg: 2, scope: !448, file: !6, line: 631, type: !451)
!455 = !DILocalVariable(name: "res", scope: !448, file: !6, line: 634, type: !184)
!456 = !DILocation(line: 634, column: 10, scope: !448)
!457 = !DILocalVariable(name: "__u", scope: !448, file: !6, line: 635, type: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_55", file: !6, line: 645, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !458, file: !6, line: 646, baseType: !27, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !458, file: !6, line: 647, baseType: !27, size: 32)
!462 = !DILocation(line: 635, column: 28, scope: !448)
!463 = !DILocalVariable(name: "__u___0", scope: !448, file: !6, line: 636, type: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_56", file: !6, line: 647, size: 32, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !464, file: !6, line: 648, baseType: !27, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !464, file: !6, line: 649, baseType: !27, size: 32)
!468 = !DILocation(line: 636, column: 28, scope: !448)
!469 = !DILocalVariable(name: "__u___1", scope: !448, file: !6, line: 637, type: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_57", file: !6, line: 649, size: 32, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !470, file: !6, line: 650, baseType: !27, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !470, file: !6, line: 651, baseType: !27, size: 32)
!474 = !DILocation(line: 637, column: 28, scope: !448)
!475 = !DILocalVariable(name: "__u___2", scope: !448, file: !6, line: 638, type: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_58", file: !6, line: 648, size: 32, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !476, file: !6, line: 649, baseType: !27, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !476, file: !6, line: 650, baseType: !27, size: 32)
!480 = !DILocation(line: 638, column: 28, scope: !448)
!481 = !DILocalVariable(name: "__u___3", scope: !448, file: !6, line: 640, type: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_59", file: !6, line: 646, size: 32, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !482, file: !6, line: 647, baseType: !27, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !482, file: !6, line: 648, baseType: !27, size: 32)
!486 = !DILocation(line: 640, column: 28, scope: !448)
!487 = !DILocalVariable(name: "__u___4", scope: !448, file: !6, line: 642, type: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_60", file: !6, line: 644, size: 32, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !488, file: !6, line: 645, baseType: !27, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !488, file: !6, line: 646, baseType: !27, size: 32)
!492 = !DILocation(line: 642, column: 28, scope: !448)
!493 = !DILocation(line: 639, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !6, line: 645, column: 3)
!495 = distinct !DILexicalBlock(scope: !448, file: !6, line: 644, column: 3)
!496 = !DILocalVariable(name: "command_line", scope: !448, file: !6, line: 633, type: !116)
!497 = !DILocation(line: 640, column: 3, scope: !494)
!498 = !DILocation(line: 641, column: 13, scope: !494)
!499 = !DILocation(line: 641, column: 20, scope: !494)
!500 = !DILocation(line: 641, column: 3, scope: !494)
!501 = !DILocation(line: 642, column: 10, scope: !494)
!502 = !DILocation(line: 642, column: 3, scope: !494)
!503 = !DILocation(line: 644, column: 22, scope: !494)
!504 = !DILocation(line: 644, column: 11, scope: !494)
!505 = !DILocation(line: 644, column: 16, scope: !494)
!506 = !DILocation(line: 644, column: 16, scope: !507)
!507 = distinct !DILexicalBlock(scope: !495, file: !6, line: 644, column: 7)
!508 = !DILocation(line: 644, column: 20, scope: !507)
!509 = !DILocation(line: 644, column: 27, scope: !507)
!510 = !DILocation(line: 644, column: 7, scope: !495)
!511 = !DILocation(line: 645, column: 20, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !6, line: 645, column: 5)
!513 = distinct !DILexicalBlock(scope: !507, file: !6, line: 644, column: 35)
!514 = !DILocation(line: 645, column: 9, scope: !512)
!515 = !DILocation(line: 645, column: 14, scope: !512)
!516 = !DILocation(line: 645, column: 15, scope: !512)
!517 = !DILocation(line: 645, column: 19, scope: !512)
!518 = !DILocation(line: 645, column: 28, scope: !512)
!519 = !DILocation(line: 645, column: 5, scope: !512)
!520 = !DILocation(line: 646, column: 24, scope: !521)
!521 = distinct !DILexicalBlock(scope: !507, file: !6, line: 647, column: 10)
!522 = !DILocation(line: 646, column: 13, scope: !521)
!523 = !DILocation(line: 646, column: 18, scope: !521)
!524 = !DILocalVariable(name: "__status", scope: !448, file: !6, line: 639, type: !27)
!525 = !DILocation(line: 646, column: 22, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !6, line: 646, column: 9)
!527 = !DILocation(line: 646, column: 29, scope: !526)
!528 = !DILocation(line: 646, column: 9, scope: !521)
!529 = !DILocation(line: 646, column: 24, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !6, line: 646, column: 11)
!531 = distinct !DILexicalBlock(scope: !526, file: !6, line: 646, column: 38)
!532 = !DILocation(line: 646, column: 31, scope: !530)
!533 = !DILocation(line: 646, column: 11, scope: !531)
!534 = !DILocalVariable(name: "tmp", scope: !448, file: !6, line: 641, type: !27)
!535 = !DILocation(line: 647, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !530, file: !6, line: 646, column: 38)
!537 = !DILocation(line: 0, scope: !530)
!538 = !DILocation(line: 648, column: 5, scope: !531)
!539 = !DILocation(line: 0, scope: !526)
!540 = !DILocation(line: 646, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !521, file: !6, line: 646, column: 9)
!542 = !DILocation(line: 647, column: 26, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !6, line: 647, column: 7)
!544 = distinct !DILexicalBlock(scope: !541, file: !6, line: 646, column: 14)
!545 = !DILocation(line: 647, column: 15, scope: !543)
!546 = !DILocation(line: 647, column: 20, scope: !543)
!547 = !DILocation(line: 647, column: 24, scope: !543)
!548 = !DILocation(line: 647, column: 7, scope: !543)
!549 = !DILocation(line: 648, column: 26, scope: !550)
!550 = distinct !DILexicalBlock(scope: !541, file: !6, line: 649, column: 12)
!551 = !DILocation(line: 648, column: 15, scope: !550)
!552 = !DILocation(line: 648, column: 20, scope: !550)
!553 = !DILocation(line: 648, column: 20, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !6, line: 648, column: 11)
!555 = !DILocation(line: 648, column: 24, scope: !554)
!556 = !DILocation(line: 648, column: 31, scope: !554)
!557 = !DILocation(line: 648, column: 11, scope: !550)
!558 = !DILocation(line: 649, column: 28, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !6, line: 649, column: 9)
!560 = distinct !DILexicalBlock(scope: !554, file: !6, line: 648, column: 37)
!561 = !DILocation(line: 649, column: 17, scope: !559)
!562 = !DILocation(line: 649, column: 22, scope: !559)
!563 = !DILocation(line: 649, column: 23, scope: !559)
!564 = !DILocation(line: 649, column: 27, scope: !559)
!565 = !DILocation(line: 649, column: 36, scope: !559)
!566 = !DILocation(line: 649, column: 9, scope: !559)
!567 = !DILocation(line: 650, column: 3, scope: !495)
!568 = distinct !DISubprogram(name: "getargs", scope: !6, file: !6, line: 517, type: !569, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!569 = !DISubroutineType(types: !570)
!570 = !{!116, !27, !451}
!571 = !DILocalVariable(name: "argc", arg: 1, scope: !568, file: !6, line: 517, type: !27)
!572 = !DILocation(line: 0, scope: !568)
!573 = !DILocalVariable(name: "argv", arg: 2, scope: !568, file: !6, line: 517, type: !451)
!574 = !DILocation(line: 526, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !6, line: 525, column: 3)
!576 = distinct !DILexicalBlock(scope: !568, file: !6, line: 524, column: 3)
!577 = !DILocation(line: 527, column: 11, scope: !575)
!578 = !DILocation(line: 528, column: 11, scope: !575)
!579 = !DILocation(line: 528, column: 9, scope: !575)
!580 = !DILocation(line: 529, column: 10, scope: !575)
!581 = !DILocation(line: 530, column: 17, scope: !575)
!582 = !DILocation(line: 531, column: 25, scope: !575)
!583 = !DILocation(line: 531, column: 18, scope: !575)
!584 = !DILocation(line: 531, column: 16, scope: !575)
!585 = !DILocation(line: 535, column: 12, scope: !575)
!586 = !DILocalVariable(name: "format", scope: !568, file: !6, line: 520, type: !53)
!587 = !DILocation(line: 536, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !576, file: !6, line: 536, column: 7)
!589 = !DILocation(line: 536, column: 7, scope: !576)
!590 = !DILocation(line: 537, column: 19, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !6, line: 536, column: 15)
!592 = !DILocation(line: 538, column: 3, scope: !591)
!593 = !DILocation(line: 539, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !576, file: !6, line: 539, column: 3)
!595 = !DILocation(line: 539, column: 13, scope: !594)
!596 = !DILocation(line: 539, column: 12, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !6, line: 541, column: 5)
!598 = distinct !DILexicalBlock(scope: !594, file: !6, line: 539, column: 13)
!599 = !DILocalVariable(name: "optc", scope: !568, file: !6, line: 519, type: !27)
!600 = !DILocation(line: 539, column: 17, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !6, line: 539, column: 9)
!602 = !DILocation(line: 539, column: 9, scope: !598)
!603 = !DILocation(line: 539, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !6, line: 539, column: 25)
!605 = !DILocation(line: 544, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !6, line: 544, column: 9)
!607 = distinct !DILexicalBlock(scope: !598, file: !6, line: 541, column: 5)
!608 = !DILocation(line: 544, column: 9, scope: !607)
!609 = !DILocation(line: 544, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !6, line: 544, column: 21)
!611 = !DILocation(line: 547, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !6, line: 547, column: 9)
!613 = !DILocation(line: 547, column: 9, scope: !607)
!614 = !DILocation(line: 547, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !6, line: 547, column: 22)
!616 = !DILocation(line: 550, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !607, file: !6, line: 550, column: 9)
!618 = !DILocation(line: 550, column: 9, scope: !607)
!619 = !DILocation(line: 550, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !6, line: 550, column: 22)
!621 = !DILocation(line: 552, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !607, file: !6, line: 552, column: 9)
!623 = !DILocation(line: 552, column: 9, scope: !607)
!624 = !DILocation(line: 552, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !6, line: 552, column: 22)
!626 = !DILocation(line: 555, column: 14, scope: !627)
!627 = distinct !DILexicalBlock(scope: !607, file: !6, line: 555, column: 9)
!628 = !DILocation(line: 555, column: 9, scope: !607)
!629 = !DILocation(line: 555, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !6, line: 555, column: 22)
!631 = !DILocation(line: 558, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !607, file: !6, line: 558, column: 9)
!633 = !DILocation(line: 558, column: 9, scope: !607)
!634 = !DILocation(line: 558, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !6, line: 558, column: 22)
!636 = !DILocation(line: 561, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !607, file: !6, line: 561, column: 9)
!638 = !DILocation(line: 561, column: 9, scope: !607)
!639 = !DILocation(line: 561, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !6, line: 561, column: 21)
!641 = !DILocation(line: 564, column: 5, scope: !607)
!642 = !DILocation(line: 545, column: 12, scope: !607)
!643 = !DILocation(line: 546, column: 5, scope: !607)
!644 = !DILocation(line: 548, column: 37, scope: !607)
!645 = !DILocation(line: 548, column: 19, scope: !607)
!646 = !DILocation(line: 549, column: 5, scope: !607)
!647 = !DILocation(line: 551, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !607, file: !6, line: 551, column: 5)
!649 = !DILocation(line: 551, column: 5, scope: !648)
!650 = !DILocation(line: 552, column: 5, scope: !648)
!651 = !DILocation(line: 553, column: 31, scope: !607)
!652 = !DILocation(line: 553, column: 13, scope: !607)
!653 = !DILocation(line: 554, column: 5, scope: !607)
!654 = !DILocation(line: 556, column: 19, scope: !607)
!655 = !DILocation(line: 557, column: 5, scope: !607)
!656 = !DILocation(line: 559, column: 13, scope: !607)
!657 = !DILocation(line: 560, column: 5, scope: !607)
!658 = !DILocation(line: 562, column: 38, scope: !659)
!659 = distinct !DILexicalBlock(scope: !607, file: !6, line: 562, column: 5)
!660 = !DILocation(line: 563, column: 13, scope: !659)
!661 = !DILocation(line: 562, column: 5, scope: !659)
!662 = !DILocation(line: 563, column: 5, scope: !659)
!663 = !DILocation(line: 565, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !607, file: !6, line: 566, column: 5)
!665 = !DILocation(line: 565, column: 5, scope: !664)
!666 = !DILocation(line: 566, column: 5, scope: !664)
!667 = distinct !{!667, !593, !668}
!668 = !DILocation(line: 569, column: 3, scope: !594)
!669 = !DILocation(line: 569, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !576, file: !6, line: 569, column: 7)
!671 = !DILocation(line: 569, column: 14, scope: !670)
!672 = !DILocation(line: 569, column: 7, scope: !576)
!673 = !DILocation(line: 570, column: 11, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !6, line: 570, column: 5)
!675 = distinct !DILexicalBlock(scope: !670, file: !6, line: 569, column: 23)
!676 = !DILocation(line: 570, column: 5, scope: !674)
!677 = !DILocation(line: 572, column: 3, scope: !675)
!678 = !DILocation(line: 572, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !576, file: !6, line: 572, column: 7)
!680 = !DILocation(line: 572, column: 7, scope: !576)
!681 = !DILocation(line: 574, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !6, line: 574, column: 9)
!683 = distinct !DILexicalBlock(scope: !679, file: !6, line: 572, column: 16)
!684 = !DILocation(line: 574, column: 9, scope: !683)
!685 = !DILocation(line: 575, column: 54, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !6, line: 575, column: 7)
!687 = distinct !DILexicalBlock(scope: !682, file: !6, line: 574, column: 17)
!688 = !DILocation(line: 575, column: 15, scope: !686)
!689 = !DILocation(line: 575, column: 13, scope: !686)
!690 = !DILocation(line: 577, column: 5, scope: !687)
!691 = !DILocation(line: 577, column: 54, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !6, line: 578, column: 7)
!693 = distinct !DILexicalBlock(scope: !682, file: !6, line: 577, column: 12)
!694 = !DILocation(line: 577, column: 15, scope: !692)
!695 = !DILocation(line: 577, column: 13, scope: !692)
!696 = !DILocation(line: 578, column: 25, scope: !697)
!697 = distinct !DILexicalBlock(scope: !683, file: !6, line: 578, column: 9)
!698 = !DILocation(line: 578, column: 9, scope: !697)
!699 = !DILocation(line: 578, column: 31, scope: !697)
!700 = !DILocation(line: 578, column: 9, scope: !683)
!701 = !DILocation(line: 579, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !6, line: 579, column: 7)
!703 = distinct !DILexicalBlock(scope: !697, file: !6, line: 578, column: 63)
!704 = !DILocalVariable(name: "tmp", scope: !568, file: !6, line: 521, type: !114)
!705 = !DILocation(line: 579, column: 16, scope: !702)
!706 = !DILocation(line: 579, column: 36, scope: !702)
!707 = !DILocation(line: 579, column: 7, scope: !702)
!708 = !DILocation(line: 581, column: 5, scope: !703)
!709 = !DILocation(line: 582, column: 3, scope: !683)
!710 = !DILocation(line: 584, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !576, file: !6, line: 584, column: 7)
!712 = !DILocation(line: 584, column: 7, scope: !576)
!713 = !DILocation(line: 586, column: 15, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !6, line: 585, column: 5)
!715 = distinct !DILexicalBlock(scope: !711, file: !6, line: 584, column: 16)
!716 = !DILocalVariable(name: "tmp___0", scope: !568, file: !6, line: 522, type: !53)
!717 = !DILocation(line: 586, column: 19, scope: !714)
!718 = !DILocation(line: 587, column: 25, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !6, line: 587, column: 9)
!720 = !DILocation(line: 587, column: 9, scope: !719)
!721 = !DILocation(line: 587, column: 39, scope: !719)
!722 = !DILocation(line: 587, column: 9, scope: !715)
!723 = !DILocation(line: 588, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !6, line: 588, column: 7)
!725 = distinct !DILexicalBlock(scope: !719, file: !6, line: 587, column: 71)
!726 = !DILocation(line: 591, column: 3, scope: !715)
!727 = !DILocation(line: 591, column: 36, scope: !576)
!728 = !DILocation(line: 591, column: 34, scope: !576)
!729 = !DILocation(line: 591, column: 3, scope: !576)
!730 = distinct !DISubprogram(name: "run_command", scope: !6, file: !6, line: 597, type: !731, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !103, !183}
!733 = !DILocalVariable(name: "cmd", arg: 1, scope: !730, file: !6, line: 597, type: !103)
!734 = !DILocation(line: 0, scope: !730)
!735 = !DILocalVariable(name: "resp", arg: 2, scope: !730, file: !6, line: 597, type: !183)
!736 = !DILocation(line: 605, column: 3, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !6, line: 612, column: 3)
!738 = distinct !DILexicalBlock(scope: !730, file: !6, line: 611, column: 3)
!739 = !DILocation(line: 607, column: 9, scope: !737)
!740 = !DILocalVariable(name: "pid", scope: !730, file: !6, line: 599, type: !222)
!741 = !DILocation(line: 608, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !6, line: 608, column: 7)
!743 = !DILocation(line: 608, column: 7, scope: !738)
!744 = !DILocation(line: 609, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !6, line: 609, column: 5)
!746 = distinct !DILexicalBlock(scope: !742, file: !6, line: 608, column: 16)
!747 = !DILocalVariable(name: "tmp", scope: !730, file: !6, line: 602, type: !114)
!748 = !DILocation(line: 609, column: 14, scope: !745)
!749 = !DILocation(line: 609, column: 5, scope: !745)
!750 = !DILocation(line: 611, column: 3, scope: !746)
!751 = !DILocation(line: 610, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !742, file: !6, line: 610, column: 7)
!753 = !DILocation(line: 610, column: 7, scope: !742)
!754 = !DILocation(line: 614, column: 34, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !6, line: 611, column: 5)
!756 = distinct !DILexicalBlock(scope: !752, file: !6, line: 610, column: 17)
!757 = !DILocation(line: 614, column: 28, scope: !755)
!758 = !DILocation(line: 614, column: 5, scope: !755)
!759 = !DILocation(line: 615, column: 15, scope: !755)
!760 = !DILocalVariable(name: "tmp___0", scope: !730, file: !6, line: 603, type: !114)
!761 = !DILocation(line: 615, column: 14, scope: !755)
!762 = !DILocation(line: 615, column: 55, scope: !755)
!763 = !DILocation(line: 615, column: 49, scope: !755)
!764 = !DILocation(line: 615, column: 5, scope: !755)
!765 = !DILocation(line: 616, column: 15, scope: !755)
!766 = !DILocalVariable(name: "tmp___3", scope: !730, file: !6, line: 605, type: !114)
!767 = !DILocation(line: 616, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !756, file: !6, line: 616, column: 9)
!769 = !DILocation(line: 616, column: 18, scope: !768)
!770 = !DILocation(line: 616, column: 9, scope: !756)
!771 = !DILocalVariable(name: "tmp___2", scope: !730, file: !6, line: 604, type: !27)
!772 = !DILocation(line: 617, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !6, line: 616, column: 24)
!774 = !DILocation(line: 0, scope: !768)
!775 = !DILocation(line: 616, column: 5, scope: !776)
!776 = distinct !DILexicalBlock(scope: !756, file: !6, line: 618, column: 5)
!777 = !DILocation(line: 620, column: 13, scope: !778)
!778 = distinct !DILexicalBlock(scope: !738, file: !6, line: 619, column: 3)
!779 = !DILocalVariable(name: "tmp___4", scope: !730, file: !6, line: 606, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !781, line: 73, baseType: !119)
!781 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!782 = !DILocation(line: 620, column: 22, scope: !778)
!783 = !DILocalVariable(name: "interrupt_signal", scope: !730, file: !6, line: 600, type: !122)
!784 = !DILocation(line: 621, column: 13, scope: !778)
!785 = !DILocalVariable(name: "tmp___5", scope: !730, file: !6, line: 607, type: !780)
!786 = !DILocation(line: 621, column: 17, scope: !778)
!787 = !DILocalVariable(name: "quit_signal", scope: !730, file: !6, line: 601, type: !122)
!788 = !DILocation(line: 623, column: 13, scope: !778)
!789 = !DILocalVariable(name: "tmp___7", scope: !730, file: !6, line: 609, type: !27)
!790 = !DILocation(line: 623, column: 15, scope: !791)
!791 = distinct !DILexicalBlock(scope: !738, file: !6, line: 623, column: 7)
!792 = !DILocation(line: 623, column: 7, scope: !738)
!793 = !DILocation(line: 624, column: 15, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !6, line: 624, column: 5)
!795 = distinct !DILexicalBlock(scope: !791, file: !6, line: 623, column: 21)
!796 = !DILocalVariable(name: "tmp___6", scope: !730, file: !6, line: 608, type: !114)
!797 = !DILocation(line: 624, column: 14, scope: !794)
!798 = !DILocation(line: 624, column: 5, scope: !794)
!799 = !DILocation(line: 626, column: 3, scope: !795)
!800 = !DILocation(line: 627, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !738, file: !6, line: 627, column: 3)
!802 = !DILocation(line: 627, column: 3, scope: !801)
!803 = !DILocation(line: 628, column: 13, scope: !801)
!804 = !DILocation(line: 628, column: 3, scope: !801)
!805 = !DILocation(line: 629, column: 3, scope: !738)
!806 = distinct !DISubprogram(name: "summarize", scope: !6, file: !6, line: 320, type: !807, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !45, !100, !116, !183}
!809 = !DILocalVariable(name: "fp", arg: 1, scope: !806, file: !6, line: 320, type: !45)
!810 = !DILocation(line: 0, scope: !806)
!811 = !DILocalVariable(name: "fmt", arg: 2, scope: !806, file: !6, line: 320, type: !100)
!812 = !DILocalVariable(name: "command", arg: 3, scope: !806, file: !6, line: 320, type: !116)
!813 = !DILocalVariable(name: "resp", arg: 4, scope: !806, file: !6, line: 320, type: !183)
!814 = !DILocalVariable(name: "__u", scope: !806, file: !6, line: 324, type: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_47", file: !6, line: 332, size: 32, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !815, file: !6, line: 333, baseType: !27, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !815, file: !6, line: 334, baseType: !27, size: 32)
!819 = !DILocation(line: 324, column: 28, scope: !806)
!820 = !DILocalVariable(name: "__u___0", scope: !806, file: !6, line: 325, type: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_48", file: !6, line: 335, size: 32, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !821, file: !6, line: 336, baseType: !27, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !821, file: !6, line: 337, baseType: !27, size: 32)
!825 = !DILocation(line: 325, column: 28, scope: !806)
!826 = !DILocalVariable(name: "__u___1", scope: !806, file: !6, line: 326, type: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_49", file: !6, line: 338, size: 32, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !827, file: !6, line: 339, baseType: !27, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !827, file: !6, line: 340, baseType: !27, size: 32)
!831 = !DILocation(line: 326, column: 28, scope: !806)
!832 = !DILocalVariable(name: "__u___2", scope: !806, file: !6, line: 327, type: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_50", file: !6, line: 336, size: 32, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !833, file: !6, line: 337, baseType: !27, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !833, file: !6, line: 338, baseType: !27, size: 32)
!837 = !DILocation(line: 327, column: 28, scope: !806)
!838 = !DILocalVariable(name: "__u___3", scope: !806, file: !6, line: 328, type: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_51", file: !6, line: 336, size: 32, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !839, file: !6, line: 337, baseType: !27, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !839, file: !6, line: 338, baseType: !27, size: 32)
!843 = !DILocation(line: 328, column: 28, scope: !806)
!844 = !DILocalVariable(name: "__u___4", scope: !806, file: !6, line: 330, type: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_52", file: !6, line: 333, size: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !845, file: !6, line: 334, baseType: !27, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !845, file: !6, line: 335, baseType: !27, size: 32)
!849 = !DILocation(line: 330, column: 28, scope: !806)
!850 = !DILocalVariable(name: "__u___5", scope: !806, file: !6, line: 332, type: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_53", file: !6, line: 330, size: 32, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !851, file: !6, line: 331, baseType: !27, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !851, file: !6, line: 332, baseType: !27, size: 32)
!855 = !DILocation(line: 332, column: 28, scope: !806)
!856 = !DILocalVariable(name: "__u___6", scope: !806, file: !6, line: 348, type: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion___u_54", file: !6, line: 462, size: 32, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "__in", scope: !857, file: !6, line: 463, baseType: !27, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !857, file: !6, line: 464, baseType: !27, size: 32)
!861 = !DILocation(line: 348, column: 28, scope: !806)
!862 = !DILocation(line: 330, column: 24, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !6, line: 356, column: 3)
!864 = distinct !DILexicalBlock(scope: !806, file: !6, line: 355, column: 3)
!865 = !DILocation(line: 330, column: 11, scope: !863)
!866 = !DILocation(line: 330, column: 16, scope: !863)
!867 = !DILocation(line: 330, column: 16, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !6, line: 330, column: 7)
!869 = !DILocation(line: 330, column: 20, scope: !868)
!870 = !DILocation(line: 330, column: 27, scope: !868)
!871 = !DILocation(line: 330, column: 7, scope: !864)
!872 = !DILocation(line: 332, column: 22, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !6, line: 331, column: 5)
!874 = distinct !DILexicalBlock(scope: !868, file: !6, line: 330, column: 35)
!875 = !DILocation(line: 332, column: 9, scope: !873)
!876 = !DILocation(line: 332, column: 14, scope: !873)
!877 = !DILocation(line: 333, column: 18, scope: !873)
!878 = !DILocation(line: 333, column: 22, scope: !873)
!879 = !DILocation(line: 333, column: 31, scope: !873)
!880 = !DILocation(line: 332, column: 5, scope: !873)
!881 = !DILocation(line: 335, column: 3, scope: !874)
!882 = !DILocation(line: 333, column: 26, scope: !883)
!883 = distinct !DILexicalBlock(scope: !868, file: !6, line: 335, column: 10)
!884 = !DILocation(line: 333, column: 13, scope: !883)
!885 = !DILocation(line: 333, column: 18, scope: !883)
!886 = !DILocation(line: 333, column: 24, scope: !883)
!887 = !DILocalVariable(name: "__status", scope: !806, file: !6, line: 329, type: !27)
!888 = !DILocation(line: 333, column: 22, scope: !889)
!889 = distinct !DILexicalBlock(scope: !883, file: !6, line: 333, column: 9)
!890 = !DILocation(line: 333, column: 29, scope: !889)
!891 = !DILocation(line: 333, column: 9, scope: !883)
!892 = !DILocation(line: 333, column: 24, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !6, line: 333, column: 11)
!894 = distinct !DILexicalBlock(scope: !889, file: !6, line: 333, column: 38)
!895 = !DILocation(line: 333, column: 31, scope: !893)
!896 = !DILocation(line: 333, column: 11, scope: !894)
!897 = !DILocalVariable(name: "tmp", scope: !806, file: !6, line: 331, type: !27)
!898 = !DILocation(line: 334, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !6, line: 333, column: 38)
!900 = !DILocation(line: 0, scope: !893)
!901 = !DILocation(line: 335, column: 5, scope: !894)
!902 = !DILocation(line: 0, scope: !889)
!903 = !DILocation(line: 333, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !883, file: !6, line: 333, column: 9)
!905 = !DILocation(line: 335, column: 28, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !6, line: 334, column: 7)
!907 = distinct !DILexicalBlock(scope: !904, file: !6, line: 333, column: 14)
!908 = !DILocation(line: 335, column: 15, scope: !906)
!909 = !DILocation(line: 335, column: 20, scope: !906)
!910 = !DILocation(line: 336, column: 23, scope: !906)
!911 = !DILocation(line: 336, column: 27, scope: !906)
!912 = !DILocation(line: 335, column: 7, scope: !906)
!913 = !DILocation(line: 338, column: 5, scope: !907)
!914 = !DILocation(line: 336, column: 28, scope: !915)
!915 = distinct !DILexicalBlock(scope: !904, file: !6, line: 338, column: 12)
!916 = !DILocation(line: 336, column: 15, scope: !915)
!917 = !DILocation(line: 336, column: 20, scope: !915)
!918 = !DILocation(line: 336, column: 20, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !6, line: 336, column: 11)
!920 = !DILocation(line: 336, column: 24, scope: !919)
!921 = !DILocation(line: 336, column: 31, scope: !919)
!922 = !DILocation(line: 336, column: 11, scope: !915)
!923 = !DILocation(line: 336, column: 30, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !6, line: 336, column: 37)
!925 = !DILocation(line: 336, column: 17, scope: !924)
!926 = !DILocation(line: 336, column: 22, scope: !924)
!927 = !DILocation(line: 336, column: 22, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !6, line: 336, column: 13)
!929 = !DILocation(line: 336, column: 26, scope: !928)
!930 = !DILocation(line: 336, column: 35, scope: !928)
!931 = !DILocation(line: 336, column: 13, scope: !924)
!932 = !DILocation(line: 338, column: 32, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !6, line: 337, column: 11)
!934 = distinct !DILexicalBlock(scope: !928, file: !6, line: 336, column: 41)
!935 = !DILocation(line: 338, column: 19, scope: !933)
!936 = !DILocation(line: 338, column: 24, scope: !933)
!937 = !DILocation(line: 339, column: 28, scope: !933)
!938 = !DILocation(line: 339, column: 32, scope: !933)
!939 = !DILocation(line: 339, column: 41, scope: !933)
!940 = !DILocation(line: 338, column: 11, scope: !933)
!941 = !DILocation(line: 341, column: 9, scope: !934)
!942 = !DILocation(line: 342, column: 7, scope: !924)
!943 = !DILocation(line: 345, column: 30, scope: !864)
!944 = !DILocation(line: 345, column: 38, scope: !864)
!945 = !DILocation(line: 345, column: 45, scope: !864)
!946 = !DILocation(line: 345, column: 61, scope: !864)
!947 = !DILocation(line: 345, column: 69, scope: !864)
!948 = !DILocation(line: 345, column: 77, scope: !864)
!949 = !DILocation(line: 345, column: 53, scope: !864)
!950 = !DILocalVariable(name: "r", scope: !806, file: !6, line: 322, type: !102)
!951 = !DILocation(line: 347, column: 32, scope: !864)
!952 = !DILocation(line: 347, column: 35, scope: !864)
!953 = !DILocation(line: 347, column: 44, scope: !864)
!954 = !DILocation(line: 347, column: 51, scope: !864)
!955 = !DILocation(line: 347, column: 67, scope: !864)
!956 = !DILocation(line: 347, column: 70, scope: !864)
!957 = !DILocation(line: 347, column: 79, scope: !864)
!958 = !DILocation(line: 347, column: 87, scope: !864)
!959 = !DILocation(line: 347, column: 59, scope: !864)
!960 = !DILocation(line: 347, column: 104, scope: !864)
!961 = !DILocation(line: 347, column: 107, scope: !864)
!962 = !DILocation(line: 347, column: 116, scope: !864)
!963 = !DILocation(line: 347, column: 123, scope: !864)
!964 = !DILocation(line: 347, column: 96, scope: !864)
!965 = !DILocation(line: 347, column: 140, scope: !864)
!966 = !DILocation(line: 347, column: 143, scope: !864)
!967 = !DILocation(line: 347, column: 152, scope: !864)
!968 = !DILocation(line: 347, column: 160, scope: !864)
!969 = !DILocation(line: 347, column: 132, scope: !864)
!970 = !DILocalVariable(name: "v", scope: !806, file: !6, line: 323, type: !102)
!971 = !DILocation(line: 350, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !864, file: !6, line: 348, column: 3)
!973 = !DILocation(line: 350, column: 13, scope: !972)
!974 = !DILocation(line: 350, column: 11, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !6, line: 350, column: 9)
!976 = distinct !DILexicalBlock(scope: !972, file: !6, line: 350, column: 13)
!977 = !DILocation(line: 350, column: 9, scope: !976)
!978 = !DILocation(line: 350, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !6, line: 350, column: 17)
!980 = !DILocation(line: 354, column: 23, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !6, line: 354, column: 9)
!982 = distinct !DILexicalBlock(scope: !976, file: !6, line: 352, column: 5)
!983 = !DILocation(line: 354, column: 9, scope: !981)
!984 = !DILocation(line: 354, column: 28, scope: !981)
!985 = !DILocation(line: 354, column: 9, scope: !982)
!986 = !DILocation(line: 354, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !981, file: !6, line: 354, column: 35)
!988 = !DILocation(line: 474, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !6, line: 474, column: 9)
!990 = !DILocation(line: 474, column: 9, scope: !989)
!991 = !DILocation(line: 474, column: 28, scope: !989)
!992 = !DILocation(line: 474, column: 9, scope: !982)
!993 = !DILocation(line: 474, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !6, line: 474, column: 35)
!995 = !DILocation(line: 494, column: 5, scope: !982)
!996 = !DILocation(line: 355, column: 9, scope: !982)
!997 = !DILocation(line: 357, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !6, line: 357, column: 9)
!999 = distinct !DILexicalBlock(scope: !982, file: !6, line: 356, column: 5)
!1000 = !DILocation(line: 357, column: 9, scope: !998)
!1001 = !DILocation(line: 357, column: 28, scope: !998)
!1002 = !DILocation(line: 357, column: 9, scope: !999)
!1003 = !DILocation(line: 357, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !998, file: !6, line: 357, column: 35)
!1005 = !DILocation(line: 360, column: 23, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !999, file: !6, line: 360, column: 9)
!1007 = !DILocation(line: 360, column: 9, scope: !1006)
!1008 = !DILocation(line: 360, column: 28, scope: !1006)
!1009 = !DILocation(line: 360, column: 9, scope: !999)
!1010 = !DILocation(line: 360, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !6, line: 360, column: 35)
!1012 = !DILocation(line: 363, column: 23, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !999, file: !6, line: 363, column: 9)
!1014 = !DILocation(line: 363, column: 9, scope: !1013)
!1015 = !DILocation(line: 363, column: 28, scope: !1013)
!1016 = !DILocation(line: 363, column: 9, scope: !999)
!1017 = !DILocation(line: 363, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !6, line: 363, column: 35)
!1019 = !DILocation(line: 369, column: 23, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !999, file: !6, line: 369, column: 9)
!1021 = !DILocation(line: 369, column: 9, scope: !1020)
!1022 = !DILocation(line: 369, column: 28, scope: !1020)
!1023 = !DILocation(line: 369, column: 9, scope: !999)
!1024 = !DILocation(line: 369, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !6, line: 369, column: 35)
!1026 = !DILocation(line: 381, column: 23, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !999, file: !6, line: 381, column: 9)
!1028 = !DILocation(line: 381, column: 9, scope: !1027)
!1029 = !DILocation(line: 381, column: 28, scope: !1027)
!1030 = !DILocation(line: 381, column: 9, scope: !999)
!1031 = !DILocation(line: 381, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !6, line: 381, column: 35)
!1033 = !DILocation(line: 384, column: 23, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !999, file: !6, line: 384, column: 9)
!1035 = !DILocation(line: 384, column: 9, scope: !1034)
!1036 = !DILocation(line: 384, column: 28, scope: !1034)
!1037 = !DILocation(line: 384, column: 9, scope: !999)
!1038 = !DILocation(line: 384, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !6, line: 384, column: 35)
!1040 = !DILocation(line: 387, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !999, file: !6, line: 387, column: 9)
!1042 = !DILocation(line: 387, column: 9, scope: !1041)
!1043 = !DILocation(line: 387, column: 28, scope: !1041)
!1044 = !DILocation(line: 387, column: 9, scope: !999)
!1045 = !DILocation(line: 387, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !6, line: 387, column: 35)
!1047 = !DILocation(line: 394, column: 23, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !999, file: !6, line: 394, column: 9)
!1049 = !DILocation(line: 394, column: 9, scope: !1048)
!1050 = !DILocation(line: 394, column: 28, scope: !1048)
!1051 = !DILocation(line: 394, column: 9, scope: !999)
!1052 = !DILocation(line: 394, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !6, line: 394, column: 35)
!1054 = !DILocation(line: 397, column: 23, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !999, file: !6, line: 397, column: 9)
!1056 = !DILocation(line: 397, column: 9, scope: !1055)
!1057 = !DILocation(line: 397, column: 28, scope: !1055)
!1058 = !DILocation(line: 397, column: 9, scope: !999)
!1059 = !DILocation(line: 397, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !6, line: 397, column: 35)
!1061 = !DILocation(line: 400, column: 23, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !999, file: !6, line: 400, column: 9)
!1063 = !DILocation(line: 400, column: 9, scope: !1062)
!1064 = !DILocation(line: 400, column: 28, scope: !1062)
!1065 = !DILocation(line: 400, column: 9, scope: !999)
!1066 = !DILocation(line: 400, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !6, line: 400, column: 35)
!1068 = !DILocation(line: 407, column: 23, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !999, file: !6, line: 407, column: 9)
!1070 = !DILocation(line: 407, column: 9, scope: !1069)
!1071 = !DILocation(line: 407, column: 28, scope: !1069)
!1072 = !DILocation(line: 407, column: 9, scope: !999)
!1073 = !DILocation(line: 407, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !6, line: 407, column: 35)
!1075 = !DILocation(line: 410, column: 23, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !999, file: !6, line: 410, column: 9)
!1077 = !DILocation(line: 410, column: 9, scope: !1076)
!1078 = !DILocation(line: 410, column: 28, scope: !1076)
!1079 = !DILocation(line: 410, column: 9, scope: !999)
!1080 = !DILocation(line: 410, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !6, line: 410, column: 35)
!1082 = !DILocation(line: 415, column: 23, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !999, file: !6, line: 415, column: 9)
!1084 = !DILocation(line: 415, column: 9, scope: !1083)
!1085 = !DILocation(line: 415, column: 28, scope: !1083)
!1086 = !DILocation(line: 415, column: 9, scope: !999)
!1087 = !DILocation(line: 415, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !6, line: 415, column: 35)
!1089 = !DILocation(line: 420, column: 23, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !999, file: !6, line: 420, column: 9)
!1091 = !DILocation(line: 420, column: 9, scope: !1090)
!1092 = !DILocation(line: 420, column: 28, scope: !1090)
!1093 = !DILocation(line: 420, column: 9, scope: !999)
!1094 = !DILocation(line: 420, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !6, line: 420, column: 35)
!1096 = !DILocation(line: 423, column: 23, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !999, file: !6, line: 423, column: 9)
!1098 = !DILocation(line: 423, column: 9, scope: !1097)
!1099 = !DILocation(line: 423, column: 28, scope: !1097)
!1100 = !DILocation(line: 423, column: 9, scope: !999)
!1101 = !DILocation(line: 423, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !6, line: 423, column: 35)
!1103 = !DILocation(line: 428, column: 23, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !999, file: !6, line: 428, column: 9)
!1105 = !DILocation(line: 428, column: 9, scope: !1104)
!1106 = !DILocation(line: 428, column: 28, scope: !1104)
!1107 = !DILocation(line: 428, column: 9, scope: !999)
!1108 = !DILocation(line: 428, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !6, line: 428, column: 35)
!1110 = !DILocation(line: 431, column: 23, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !999, file: !6, line: 431, column: 9)
!1112 = !DILocation(line: 431, column: 9, scope: !1111)
!1113 = !DILocation(line: 431, column: 28, scope: !1111)
!1114 = !DILocation(line: 431, column: 9, scope: !999)
!1115 = !DILocation(line: 431, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !6, line: 431, column: 35)
!1117 = !DILocation(line: 434, column: 23, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !999, file: !6, line: 434, column: 9)
!1119 = !DILocation(line: 434, column: 9, scope: !1118)
!1120 = !DILocation(line: 434, column: 28, scope: !1118)
!1121 = !DILocation(line: 434, column: 9, scope: !999)
!1122 = !DILocation(line: 434, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !6, line: 434, column: 36)
!1124 = !DILocation(line: 439, column: 23, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !999, file: !6, line: 439, column: 9)
!1126 = !DILocation(line: 439, column: 9, scope: !1125)
!1127 = !DILocation(line: 439, column: 28, scope: !1125)
!1128 = !DILocation(line: 439, column: 9, scope: !999)
!1129 = !DILocation(line: 439, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !6, line: 439, column: 36)
!1131 = !DILocation(line: 442, column: 23, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !999, file: !6, line: 442, column: 9)
!1133 = !DILocation(line: 442, column: 9, scope: !1132)
!1134 = !DILocation(line: 442, column: 28, scope: !1132)
!1135 = !DILocation(line: 442, column: 9, scope: !999)
!1136 = !DILocation(line: 442, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !6, line: 442, column: 36)
!1138 = !DILocation(line: 447, column: 23, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !999, file: !6, line: 447, column: 9)
!1140 = !DILocation(line: 447, column: 9, scope: !1139)
!1141 = !DILocation(line: 447, column: 28, scope: !1139)
!1142 = !DILocation(line: 447, column: 9, scope: !999)
!1143 = !DILocation(line: 447, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !6, line: 447, column: 36)
!1145 = !DILocation(line: 450, column: 23, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !999, file: !6, line: 450, column: 9)
!1147 = !DILocation(line: 450, column: 9, scope: !1146)
!1148 = !DILocation(line: 450, column: 28, scope: !1146)
!1149 = !DILocation(line: 450, column: 9, scope: !999)
!1150 = !DILocation(line: 450, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !6, line: 450, column: 36)
!1152 = !DILocation(line: 453, column: 23, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !999, file: !6, line: 453, column: 9)
!1154 = !DILocation(line: 453, column: 9, scope: !1153)
!1155 = !DILocation(line: 453, column: 28, scope: !1153)
!1156 = !DILocation(line: 453, column: 9, scope: !999)
!1157 = !DILocation(line: 453, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !6, line: 453, column: 36)
!1159 = !DILocation(line: 458, column: 23, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !999, file: !6, line: 458, column: 9)
!1161 = !DILocation(line: 458, column: 9, scope: !1160)
!1162 = !DILocation(line: 458, column: 28, scope: !1160)
!1163 = !DILocation(line: 458, column: 9, scope: !999)
!1164 = !DILocation(line: 458, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !6, line: 458, column: 36)
!1166 = !DILocation(line: 461, column: 23, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !999, file: !6, line: 461, column: 9)
!1168 = !DILocation(line: 461, column: 9, scope: !1167)
!1169 = !DILocation(line: 461, column: 28, scope: !1167)
!1170 = !DILocation(line: 461, column: 9, scope: !999)
!1171 = !DILocation(line: 461, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !6, line: 461, column: 36)
!1173 = !DILocation(line: 464, column: 23, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !999, file: !6, line: 464, column: 9)
!1175 = !DILocation(line: 464, column: 9, scope: !1174)
!1176 = !DILocation(line: 464, column: 28, scope: !1174)
!1177 = !DILocation(line: 464, column: 9, scope: !999)
!1178 = !DILocation(line: 464, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !6, line: 464, column: 34)
!1180 = !DILocation(line: 467, column: 5, scope: !999)
!1181 = !DILocation(line: 358, column: 5, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !999, file: !6, line: 469, column: 5)
!1183 = !DILocation(line: 359, column: 5, scope: !999)
!1184 = !DILocation(line: 361, column: 5, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !999, file: !6, line: 361, column: 5)
!1186 = !DILocation(line: 362, column: 5, scope: !999)
!1187 = !DILocation(line: 364, column: 11, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !999, file: !6, line: 364, column: 9)
!1189 = !DILocation(line: 364, column: 18, scope: !1188)
!1190 = !DILocation(line: 364, column: 9, scope: !999)
!1191 = !DILocalVariable(name: "tmp___2", scope: !806, file: !6, line: 335, type: !102)
!1192 = !DILocation(line: 365, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 364, column: 26)
!1194 = !DILocation(line: 364, column: 44, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !6, line: 366, column: 7)
!1196 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 365, column: 12)
!1197 = !DILocation(line: 364, column: 47, scope: !1195)
!1198 = !DILocation(line: 364, column: 17, scope: !1195)
!1199 = !DILocalVariable(name: "tmp___0", scope: !806, file: !6, line: 333, type: !102)
!1200 = !DILocalVariable(name: "tmp___1", scope: !806, file: !6, line: 334, type: !102)
!1201 = !DILocation(line: 364, column: 30, scope: !1195)
!1202 = !DILocation(line: 364, column: 25, scope: !1195)
!1203 = !DILocation(line: 364, column: 53, scope: !1195)
!1204 = !DILocation(line: 364, column: 48, scope: !1195)
!1205 = !DILocation(line: 364, column: 38, scope: !1195)
!1206 = !DILocation(line: 0, scope: !1188)
!1207 = !DILocation(line: 364, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !999, file: !6, line: 367, column: 5)
!1209 = !DILocation(line: 368, column: 5, scope: !999)
!1210 = !DILocation(line: 370, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !999, file: !6, line: 370, column: 9)
!1212 = !DILocation(line: 370, column: 23, scope: !1211)
!1213 = !DILocation(line: 370, column: 30, scope: !1211)
!1214 = !DILocation(line: 370, column: 9, scope: !999)
!1215 = !DILocation(line: 372, column: 21, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !6, line: 371, column: 7)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !6, line: 370, column: 40)
!1218 = !DILocation(line: 372, column: 29, scope: !1216)
!1219 = !DILocation(line: 372, column: 36, scope: !1216)
!1220 = !DILocation(line: 372, column: 52, scope: !1216)
!1221 = !DILocation(line: 372, column: 60, scope: !1216)
!1222 = !DILocation(line: 372, column: 67, scope: !1216)
!1223 = !DILocation(line: 372, column: 76, scope: !1216)
!1224 = !DILocation(line: 373, column: 21, scope: !1216)
!1225 = !DILocation(line: 373, column: 29, scope: !1216)
!1226 = !DILocation(line: 373, column: 36, scope: !1216)
!1227 = !DILocation(line: 371, column: 7, scope: !1216)
!1228 = !DILocation(line: 375, column: 5, scope: !1217)
!1229 = !DILocation(line: 377, column: 21, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !6, line: 376, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1211, file: !6, line: 375, column: 12)
!1232 = !DILocation(line: 377, column: 29, scope: !1230)
!1233 = !DILocation(line: 377, column: 36, scope: !1230)
!1234 = !DILocation(line: 377, column: 49, scope: !1230)
!1235 = !DILocation(line: 377, column: 57, scope: !1230)
!1236 = !DILocation(line: 377, column: 64, scope: !1230)
!1237 = !DILocation(line: 377, column: 77, scope: !1230)
!1238 = !DILocation(line: 377, column: 85, scope: !1230)
!1239 = !DILocation(line: 377, column: 93, scope: !1230)
!1240 = !DILocation(line: 376, column: 7, scope: !1230)
!1241 = !DILocation(line: 380, column: 5, scope: !999)
!1242 = !DILocation(line: 382, column: 88, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !999, file: !6, line: 382, column: 5)
!1244 = !DILocation(line: 382, column: 91, scope: !1243)
!1245 = !DILocation(line: 382, column: 5, scope: !1243)
!1246 = !DILocation(line: 383, column: 5, scope: !999)
!1247 = !DILocation(line: 385, column: 88, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !999, file: !6, line: 385, column: 5)
!1249 = !DILocation(line: 385, column: 91, scope: !1248)
!1250 = !DILocation(line: 385, column: 5, scope: !1248)
!1251 = !DILocation(line: 386, column: 5, scope: !999)
!1252 = !DILocation(line: 388, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !999, file: !6, line: 388, column: 9)
!1254 = !DILocation(line: 388, column: 18, scope: !1253)
!1255 = !DILocation(line: 388, column: 9, scope: !999)
!1256 = !DILocalVariable(name: "tmp___6", scope: !806, file: !6, line: 339, type: !102)
!1257 = !DILocation(line: 389, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !6, line: 388, column: 26)
!1259 = !DILocation(line: 388, column: 44, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !6, line: 390, column: 7)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !6, line: 389, column: 12)
!1262 = !DILocation(line: 388, column: 47, scope: !1260)
!1263 = !DILocation(line: 388, column: 17, scope: !1260)
!1264 = !DILocalVariable(name: "tmp___3", scope: !806, file: !6, line: 336, type: !102)
!1265 = !DILocalVariable(name: "tmp___4", scope: !806, file: !6, line: 337, type: !102)
!1266 = !DILocalVariable(name: "tmp___5", scope: !806, file: !6, line: 338, type: !102)
!1267 = !DILocation(line: 388, column: 31, scope: !1260)
!1268 = !DILocation(line: 388, column: 26, scope: !1260)
!1269 = !DILocation(line: 388, column: 54, scope: !1260)
!1270 = !DILocation(line: 388, column: 49, scope: !1260)
!1271 = !DILocation(line: 388, column: 39, scope: !1260)
!1272 = !DILocation(line: 388, column: 78, scope: !1260)
!1273 = !DILocation(line: 388, column: 73, scope: !1260)
!1274 = !DILocation(line: 388, column: 63, scope: !1260)
!1275 = !DILocation(line: 0, scope: !1253)
!1276 = !DILocation(line: 388, column: 5, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !999, file: !6, line: 391, column: 5)
!1278 = !DILocation(line: 393, column: 5, scope: !999)
!1279 = !DILocation(line: 395, column: 42, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !999, file: !6, line: 395, column: 5)
!1281 = !DILocation(line: 395, column: 45, scope: !1280)
!1282 = !DILocation(line: 395, column: 15, scope: !1280)
!1283 = !DILocalVariable(name: "tmp___7", scope: !806, file: !6, line: 340, type: !102)
!1284 = !DILocation(line: 395, column: 5, scope: !1280)
!1285 = !DILocation(line: 396, column: 5, scope: !999)
!1286 = !DILocation(line: 398, column: 88, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !999, file: !6, line: 398, column: 5)
!1288 = !DILocation(line: 398, column: 91, scope: !1287)
!1289 = !DILocation(line: 398, column: 5, scope: !1287)
!1290 = !DILocation(line: 399, column: 5, scope: !999)
!1291 = !DILocation(line: 402, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !999, file: !6, line: 402, column: 9)
!1293 = !DILocation(line: 402, column: 9, scope: !999)
!1294 = !DILocation(line: 404, column: 18, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !6, line: 403, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 402, column: 18)
!1297 = !DILocation(line: 404, column: 27, scope: !1295)
!1298 = !DILocation(line: 403, column: 7, scope: !1295)
!1299 = !DILocation(line: 406, column: 5, scope: !1296)
!1300 = !DILocation(line: 405, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !6, line: 407, column: 7)
!1302 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 406, column: 12)
!1303 = !DILocation(line: 406, column: 5, scope: !999)
!1304 = !DILocation(line: 408, column: 88, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !999, file: !6, line: 408, column: 5)
!1306 = !DILocation(line: 408, column: 91, scope: !1305)
!1307 = !DILocation(line: 408, column: 5, scope: !1305)
!1308 = !DILocation(line: 409, column: 5, scope: !999)
!1309 = !DILocation(line: 412, column: 19, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !999, file: !6, line: 411, column: 5)
!1311 = !DILocation(line: 412, column: 22, scope: !1310)
!1312 = !DILocation(line: 412, column: 31, scope: !1310)
!1313 = !DILocation(line: 412, column: 46, scope: !1310)
!1314 = !DILocation(line: 412, column: 49, scope: !1310)
!1315 = !DILocation(line: 412, column: 58, scope: !1310)
!1316 = !DILocation(line: 412, column: 66, scope: !1310)
!1317 = !DILocation(line: 412, column: 75, scope: !1310)
!1318 = !DILocation(line: 411, column: 5, scope: !1310)
!1319 = !DILocation(line: 414, column: 5, scope: !999)
!1320 = !DILocation(line: 417, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !999, file: !6, line: 416, column: 5)
!1322 = !DILocation(line: 417, column: 22, scope: !1321)
!1323 = !DILocation(line: 417, column: 31, scope: !1321)
!1324 = !DILocation(line: 417, column: 46, scope: !1321)
!1325 = !DILocation(line: 417, column: 49, scope: !1321)
!1326 = !DILocation(line: 417, column: 58, scope: !1321)
!1327 = !DILocation(line: 417, column: 66, scope: !1321)
!1328 = !DILocation(line: 417, column: 75, scope: !1321)
!1329 = !DILocation(line: 416, column: 5, scope: !1321)
!1330 = !DILocation(line: 419, column: 5, scope: !999)
!1331 = !DILocation(line: 421, column: 88, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !999, file: !6, line: 421, column: 5)
!1333 = !DILocation(line: 421, column: 91, scope: !1332)
!1334 = !DILocation(line: 421, column: 5, scope: !1332)
!1335 = !DILocation(line: 422, column: 5, scope: !999)
!1336 = !DILocation(line: 424, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !999, file: !6, line: 424, column: 9)
!1338 = !DILocation(line: 424, column: 18, scope: !1337)
!1339 = !DILocation(line: 424, column: 9, scope: !999)
!1340 = !DILocalVariable(name: "tmp___9", scope: !806, file: !6, line: 342, type: !102)
!1341 = !DILocation(line: 425, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !6, line: 424, column: 26)
!1343 = !DILocation(line: 424, column: 44, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 426, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1337, file: !6, line: 425, column: 12)
!1346 = !DILocation(line: 424, column: 47, scope: !1344)
!1347 = !DILocation(line: 424, column: 17, scope: !1344)
!1348 = !DILocalVariable(name: "tmp___8", scope: !806, file: !6, line: 341, type: !102)
!1349 = !DILocation(line: 424, column: 30, scope: !1344)
!1350 = !DILocation(line: 424, column: 25, scope: !1344)
!1351 = !DILocation(line: 0, scope: !1337)
!1352 = !DILocation(line: 424, column: 5, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !999, file: !6, line: 427, column: 5)
!1354 = !DILocation(line: 427, column: 5, scope: !999)
!1355 = !DILocation(line: 429, column: 16, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !999, file: !6, line: 429, column: 5)
!1357 = !DILocalVariable(name: "tmp___10", scope: !806, file: !6, line: 343, type: !27)
!1358 = !DILocation(line: 429, column: 5, scope: !1356)
!1359 = !DILocation(line: 430, column: 5, scope: !999)
!1360 = !DILocation(line: 432, column: 88, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !999, file: !6, line: 432, column: 5)
!1362 = !DILocation(line: 432, column: 91, scope: !1361)
!1363 = !DILocation(line: 432, column: 5, scope: !1361)
!1364 = !DILocation(line: 433, column: 5, scope: !999)
!1365 = !DILocation(line: 436, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !999, file: !6, line: 435, column: 5)
!1367 = !DILocation(line: 436, column: 27, scope: !1366)
!1368 = !DILocation(line: 436, column: 41, scope: !1366)
!1369 = !DILocation(line: 436, column: 49, scope: !1366)
!1370 = !DILocation(line: 436, column: 57, scope: !1366)
!1371 = !DILocation(line: 435, column: 5, scope: !1366)
!1372 = !DILocation(line: 438, column: 5, scope: !999)
!1373 = !DILocation(line: 440, column: 88, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !999, file: !6, line: 440, column: 5)
!1375 = !DILocation(line: 440, column: 91, scope: !1374)
!1376 = !DILocation(line: 440, column: 5, scope: !1374)
!1377 = !DILocation(line: 441, column: 5, scope: !999)
!1378 = !DILocation(line: 443, column: 11, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !999, file: !6, line: 443, column: 9)
!1380 = !DILocation(line: 443, column: 18, scope: !1379)
!1381 = !DILocation(line: 443, column: 9, scope: !999)
!1382 = !DILocalVariable(name: "tmp___12", scope: !806, file: !6, line: 345, type: !102)
!1383 = !DILocation(line: 444, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 443, column: 26)
!1385 = !DILocation(line: 443, column: 45, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !6, line: 445, column: 7)
!1387 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 444, column: 12)
!1388 = !DILocation(line: 443, column: 48, scope: !1386)
!1389 = !DILocation(line: 443, column: 18, scope: !1386)
!1390 = !DILocalVariable(name: "tmp___11", scope: !806, file: !6, line: 344, type: !102)
!1391 = !DILocation(line: 443, column: 32, scope: !1386)
!1392 = !DILocation(line: 443, column: 27, scope: !1386)
!1393 = !DILocation(line: 0, scope: !1379)
!1394 = !DILocation(line: 443, column: 5, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !999, file: !6, line: 446, column: 5)
!1396 = !DILocation(line: 446, column: 5, scope: !999)
!1397 = !DILocation(line: 448, column: 88, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !999, file: !6, line: 448, column: 5)
!1399 = !DILocation(line: 448, column: 91, scope: !1398)
!1400 = !DILocation(line: 448, column: 5, scope: !1398)
!1401 = !DILocation(line: 449, column: 5, scope: !999)
!1402 = !DILocation(line: 451, column: 88, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !999, file: !6, line: 451, column: 5)
!1404 = !DILocation(line: 451, column: 91, scope: !1403)
!1405 = !DILocation(line: 451, column: 5, scope: !1403)
!1406 = !DILocation(line: 452, column: 5, scope: !999)
!1407 = !DILocation(line: 454, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !999, file: !6, line: 454, column: 9)
!1409 = !DILocation(line: 454, column: 18, scope: !1408)
!1410 = !DILocation(line: 454, column: 9, scope: !999)
!1411 = !DILocalVariable(name: "tmp___14", scope: !806, file: !6, line: 347, type: !102)
!1412 = !DILocation(line: 455, column: 5, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !6, line: 454, column: 26)
!1414 = !DILocation(line: 454, column: 45, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 456, column: 7)
!1416 = distinct !DILexicalBlock(scope: !1408, file: !6, line: 455, column: 12)
!1417 = !DILocation(line: 454, column: 48, scope: !1415)
!1418 = !DILocation(line: 454, column: 18, scope: !1415)
!1419 = !DILocalVariable(name: "tmp___13", scope: !806, file: !6, line: 346, type: !102)
!1420 = !DILocation(line: 454, column: 32, scope: !1415)
!1421 = !DILocation(line: 454, column: 27, scope: !1415)
!1422 = !DILocation(line: 0, scope: !1408)
!1423 = !DILocation(line: 454, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !999, file: !6, line: 457, column: 5)
!1425 = !DILocation(line: 457, column: 5, scope: !999)
!1426 = !DILocation(line: 459, column: 88, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !999, file: !6, line: 459, column: 5)
!1428 = !DILocation(line: 459, column: 91, scope: !1427)
!1429 = !DILocation(line: 459, column: 5, scope: !1427)
!1430 = !DILocation(line: 460, column: 5, scope: !999)
!1431 = !DILocation(line: 462, column: 26, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !999, file: !6, line: 462, column: 5)
!1433 = !DILocation(line: 462, column: 13, scope: !1432)
!1434 = !DILocation(line: 462, column: 18, scope: !1432)
!1435 = !DILocation(line: 462, column: 90, scope: !1432)
!1436 = !DILocation(line: 462, column: 94, scope: !1432)
!1437 = !DILocation(line: 462, column: 103, scope: !1432)
!1438 = !DILocation(line: 462, column: 5, scope: !1432)
!1439 = !DILocation(line: 463, column: 5, scope: !999)
!1440 = !DILocation(line: 465, column: 5, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !999, file: !6, line: 465, column: 5)
!1442 = !DILocation(line: 466, column: 5, scope: !999)
!1443 = !DILocation(line: 468, column: 5, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !999, file: !6, line: 468, column: 5)
!1445 = !DILocation(line: 469, column: 20, scope: !1444)
!1446 = !DILocation(line: 469, column: 14, scope: !1444)
!1447 = !DILocation(line: 469, column: 5, scope: !1444)
!1448 = !DILocation(line: 470, column: 5, scope: !1444)
!1449 = !DILocation(line: 471, column: 9, scope: !982)
!1450 = !DILocation(line: 472, column: 5, scope: !982)
!1451 = !DILocation(line: 475, column: 9, scope: !982)
!1452 = !DILocation(line: 477, column: 23, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 477, column: 9)
!1454 = distinct !DILexicalBlock(scope: !982, file: !6, line: 476, column: 5)
!1455 = !DILocation(line: 477, column: 9, scope: !1453)
!1456 = !DILocation(line: 477, column: 28, scope: !1453)
!1457 = !DILocation(line: 477, column: 9, scope: !1454)
!1458 = !DILocation(line: 477, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !6, line: 477, column: 36)
!1460 = !DILocation(line: 480, column: 23, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 480, column: 9)
!1462 = !DILocation(line: 480, column: 9, scope: !1461)
!1463 = !DILocation(line: 480, column: 28, scope: !1461)
!1464 = !DILocation(line: 480, column: 9, scope: !1454)
!1465 = !DILocation(line: 480, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !6, line: 480, column: 36)
!1467 = !DILocation(line: 483, column: 23, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 483, column: 9)
!1469 = !DILocation(line: 483, column: 9, scope: !1468)
!1470 = !DILocation(line: 483, column: 28, scope: !1468)
!1471 = !DILocation(line: 483, column: 9, scope: !1454)
!1472 = !DILocation(line: 483, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !6, line: 483, column: 35)
!1474 = !DILocation(line: 486, column: 5, scope: !1454)
!1475 = !DILocation(line: 478, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 488, column: 5)
!1477 = !DILocation(line: 479, column: 5, scope: !1454)
!1478 = !DILocation(line: 481, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 481, column: 5)
!1480 = !DILocation(line: 482, column: 5, scope: !1454)
!1481 = !DILocation(line: 484, column: 5, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 484, column: 5)
!1483 = !DILocation(line: 485, column: 5, scope: !1454)
!1484 = !DILocation(line: 487, column: 5, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 487, column: 5)
!1486 = !DILocation(line: 488, column: 5, scope: !1485)
!1487 = !DILocation(line: 489, column: 20, scope: !1485)
!1488 = !DILocation(line: 489, column: 14, scope: !1485)
!1489 = !DILocation(line: 489, column: 5, scope: !1485)
!1490 = !DILocation(line: 490, column: 5, scope: !1485)
!1491 = !DILocation(line: 491, column: 9, scope: !982)
!1492 = !DILocation(line: 492, column: 5, scope: !982)
!1493 = !DILocalVariable(name: "tmp___15", scope: !806, file: !6, line: 349, type: !100)
!1494 = !DILocation(line: 495, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !982, file: !6, line: 494, column: 5)
!1496 = !DILocation(line: 495, column: 20, scope: !1495)
!1497 = !DILocation(line: 495, column: 14, scope: !1495)
!1498 = !DILocation(line: 495, column: 5, scope: !1495)
!1499 = !DILocation(line: 496, column: 5, scope: !1495)
!1500 = !DILocation(line: 0, scope: !982)
!1501 = !DILocation(line: 498, column: 16, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !976, file: !6, line: 499, column: 5)
!1503 = !DILocalVariable(name: "tmp___17", scope: !806, file: !6, line: 351, type: !27)
!1504 = !DILocation(line: 498, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !976, file: !6, line: 498, column: 9)
!1506 = !DILocation(line: 498, column: 9, scope: !976)
!1507 = !DILocation(line: 499, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !6, line: 499, column: 7)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 498, column: 19)
!1510 = !DILocalVariable(name: "tmp___16", scope: !806, file: !6, line: 350, type: !114)
!1511 = !DILocation(line: 499, column: 16, scope: !1508)
!1512 = !DILocation(line: 499, column: 7, scope: !1508)
!1513 = !DILocation(line: 501, column: 5, scope: !1509)
!1514 = distinct !{!1514, !971, !1515}
!1515 = !DILocation(line: 502, column: 3, scope: !972)
!1516 = !DILocation(line: 501, column: 3, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !864, file: !6, line: 505, column: 3)
!1518 = !DILocation(line: 503, column: 14, scope: !1517)
!1519 = !DILocalVariable(name: "tmp___19", scope: !806, file: !6, line: 353, type: !27)
!1520 = !DILocation(line: 503, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !864, file: !6, line: 503, column: 7)
!1522 = !DILocation(line: 503, column: 7, scope: !864)
!1523 = !DILocation(line: 504, column: 16, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !6, line: 504, column: 5)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !6, line: 503, column: 17)
!1526 = !DILocalVariable(name: "tmp___18", scope: !806, file: !6, line: 352, type: !114)
!1527 = !DILocation(line: 504, column: 14, scope: !1524)
!1528 = !DILocation(line: 504, column: 5, scope: !1524)
!1529 = !DILocation(line: 506, column: 3, scope: !1525)
!1530 = !DILocation(line: 505, column: 3, scope: !864)
!1531 = !DILocation(line: 507, column: 1, scope: !806)
!1532 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 652, type: !1533, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !45, !27}
!1535 = !DILocalVariable(name: "stream", arg: 1, scope: !1532, file: !6, line: 652, type: !45)
!1536 = !DILocation(line: 0, scope: !1532)
!1537 = !DILocalVariable(name: "status", arg: 2, scope: !1532, file: !6, line: 652, type: !27)
!1538 = !DILocation(line: 658, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !6, line: 657, column: 3)
!1540 = distinct !DILexicalBlock(scope: !1532, file: !6, line: 656, column: 3)
!1541 = !DILocation(line: 657, column: 3, scope: !1539)
!1542 = !DILocation(line: 662, column: 3, scope: !1539)
!1543 = !DILocation(line: 665, column: 1, scope: !1532)
!1544 = distinct !DISubprogram(name: "linear_argv", scope: !6, file: !6, line: 208, type: !1545, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!53, !125}
!1547 = !DILocalVariable(name: "argv", arg: 1, scope: !1544, file: !6, line: 208, type: !125)
!1548 = !DILocation(line: 0, scope: !1544)
!1549 = !DILocalVariable(name: "size___0", scope: !1544, file: !6, line: 214, type: !27)
!1550 = !DILocalVariable(name: "s", scope: !1544, file: !6, line: 210, type: !125)
!1551 = !DILocation(line: 220, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !6, line: 221, column: 3)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !6, line: 221, column: 3)
!1554 = !DILocation(line: 0, scope: !1553)
!1555 = !DILocation(line: 220, column: 13, scope: !1552)
!1556 = !DILocation(line: 220, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !6, line: 220, column: 9)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 220, column: 13)
!1559 = !DILocation(line: 220, column: 9, scope: !1558)
!1560 = !DILocation(line: 220, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !6, line: 220, column: 15)
!1562 = !DILocation(line: 221, column: 34, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !6, line: 222, column: 5)
!1564 = !DILocation(line: 221, column: 11, scope: !1563)
!1565 = !DILocalVariable(name: "tmp", scope: !1544, file: !6, line: 215, type: !117)
!1566 = !DILocation(line: 221, column: 41, scope: !1563)
!1567 = !DILocation(line: 220, column: 7, scope: !1563)
!1568 = distinct !{!1568, !1551, !1569}
!1569 = !DILocation(line: 222, column: 3, scope: !1552)
!1570 = !DILocation(line: 222, column: 13, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1553, file: !6, line: 225, column: 3)
!1572 = !DILocalVariable(name: "tmp___0", scope: !1544, file: !6, line: 216, type: !93)
!1573 = !DILocalVariable(name: "new", scope: !1544, file: !6, line: 211, type: !53)
!1574 = !DILocation(line: 223, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1553, file: !6, line: 223, column: 7)
!1576 = !DILocation(line: 223, column: 27, scope: !1575)
!1577 = !DILocation(line: 223, column: 7, scope: !1553)
!1578 = !DILocation(line: 225, column: 38, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !6, line: 224, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !6, line: 223, column: 59)
!1581 = !DILocation(line: 226, column: 13, scope: !1579)
!1582 = !DILocation(line: 225, column: 5, scope: !1579)
!1583 = !DILocation(line: 226, column: 5, scope: !1580)
!1584 = !DILocation(line: 232, column: 24, scope: !1553)
!1585 = !DILocalVariable(name: "sp", scope: !1544, file: !6, line: 213, type: !100)
!1586 = !DILocalVariable(name: "dp", scope: !1544, file: !6, line: 212, type: !53)
!1587 = !DILocation(line: 232, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1553, file: !6, line: 233, column: 3)
!1589 = !DILocation(line: 232, column: 13, scope: !1588)
!1590 = !DILocation(line: 232, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !6, line: 232, column: 9)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !6, line: 232, column: 13)
!1593 = !DILocation(line: 232, column: 9, scope: !1592)
!1594 = !DILocation(line: 232, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !6, line: 232, column: 15)
!1596 = !DILocation(line: 234, column: 26, scope: !1592)
!1597 = !DILocation(line: 235, column: 5, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !6, line: 235, column: 5)
!1599 = !DILocation(line: 0, scope: !1592)
!1600 = !DILocation(line: 235, column: 15, scope: !1598)
!1601 = !DILocalVariable(name: "tmp___1", scope: !1544, file: !6, line: 217, type: !53)
!1602 = !DILocation(line: 235, column: 10, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !6, line: 235, column: 15)
!1604 = !DILocalVariable(name: "tmp___3", scope: !1544, file: !6, line: 219, type: !100)
!1605 = !DILocation(line: 235, column: 24, scope: !1603)
!1606 = !DILocalVariable(name: "tmp___2", scope: !1544, file: !6, line: 218, type: !54)
!1607 = !DILocation(line: 235, column: 16, scope: !1603)
!1608 = !DILocation(line: 235, column: 14, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !6, line: 235, column: 11)
!1610 = !DILocation(line: 235, column: 28, scope: !1609)
!1611 = !DILocation(line: 235, column: 11, scope: !1603)
!1612 = !DILocation(line: 235, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !6, line: 235, column: 35)
!1614 = distinct !{!1614, !1597, !1615}
!1615 = !DILocation(line: 237, column: 5, scope: !1598)
!1616 = !DILocation(line: 237, column: 8, scope: !1592)
!1617 = !DILocation(line: 232, column: 7, scope: !1592)
!1618 = distinct !{!1618, !1587, !1619}
!1619 = !DILocation(line: 233, column: 3, scope: !1588)
!1620 = !DILocation(line: 240, column: 3, scope: !1553)
!1621 = !DILocation(line: 242, column: 1, scope: !1544)
!1622 = distinct !DISubprogram(name: "fprintargv", scope: !6, file: !6, line: 182, type: !1623, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !45, !125, !100}
!1625 = !DILocalVariable(name: "fp", arg: 1, scope: !1622, file: !6, line: 182, type: !45)
!1626 = !DILocation(line: 0, scope: !1622)
!1627 = !DILocalVariable(name: "argv", arg: 2, scope: !1622, file: !6, line: 182, type: !125)
!1628 = !DILocalVariable(name: "filler", arg: 3, scope: !1622, file: !6, line: 182, type: !100)
!1629 = !DILocalVariable(name: "av", scope: !1622, file: !6, line: 184, type: !125)
!1630 = !DILocation(line: 191, column: 42, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 189, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1622, file: !6, line: 188, column: 3)
!1633 = !DILocation(line: 191, column: 3, scope: !1631)
!1634 = !DILocation(line: 192, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 193, column: 3)
!1636 = !DILocation(line: 0, scope: !1632)
!1637 = !DILocation(line: 192, column: 13, scope: !1635)
!1638 = !DILocation(line: 192, column: 8, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !6, line: 192, column: 13)
!1640 = !DILocation(line: 192, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1639, file: !6, line: 192, column: 9)
!1642 = !DILocation(line: 192, column: 9, scope: !1639)
!1643 = !DILocation(line: 192, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !6, line: 192, column: 16)
!1645 = !DILocation(line: 194, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !6, line: 194, column: 5)
!1647 = !DILocation(line: 195, column: 44, scope: !1646)
!1648 = !DILocation(line: 195, column: 5, scope: !1646)
!1649 = distinct !{!1649, !1634, !1650}
!1650 = !DILocation(line: 197, column: 3, scope: !1635)
!1651 = !DILocation(line: 197, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 200, column: 3)
!1653 = !DILocalVariable(name: "tmp___0", scope: !1622, file: !6, line: 186, type: !27)
!1654 = !DILocation(line: 197, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 197, column: 7)
!1656 = !DILocation(line: 197, column: 7, scope: !1632)
!1657 = !DILocation(line: 198, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !6, line: 198, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !6, line: 197, column: 16)
!1660 = !DILocalVariable(name: "tmp", scope: !1622, file: !6, line: 185, type: !114)
!1661 = !DILocation(line: 198, column: 14, scope: !1658)
!1662 = !DILocation(line: 198, column: 5, scope: !1658)
!1663 = !DILocation(line: 200, column: 3, scope: !1659)
!1664 = !DILocation(line: 199, column: 3, scope: !1632)
!1665 = distinct !DISubprogram(name: "ptok", scope: !6, file: !6, line: 251, type: !1666, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!102, !102}
!1668 = !DILocalVariable(name: "pages", arg: 1, scope: !1665, file: !6, line: 251, type: !102)
!1669 = !DILocation(line: 0, scope: !1665)
!1670 = !DILocation(line: 260, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !6, line: 260, column: 7)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !6, line: 256, column: 3)
!1673 = !DILocation(line: 260, column: 10, scope: !1671)
!1674 = !DILocation(line: 260, column: 7, scope: !1672)
!1675 = !DILocation(line: 261, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 261, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1671, file: !6, line: 260, column: 18)
!1678 = !DILocalVariable(name: "tmp___0", scope: !1665, file: !6, line: 254, type: !27)
!1679 = !DILocation(line: 261, column: 27, scope: !1676)
!1680 = !DILocation(line: 261, column: 8, scope: !1676)
!1681 = !DILocation(line: 263, column: 3, scope: !1677)
!1682 = !DILocation(line: 264, column: 30, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1672, file: !6, line: 264, column: 7)
!1684 = !DILocation(line: 264, column: 28, scope: !1683)
!1685 = !DILocation(line: 264, column: 13, scope: !1683)
!1686 = !DILocation(line: 264, column: 7, scope: !1672)
!1687 = !DILocation(line: 266, column: 17, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !6, line: 264, column: 34)
!1689 = !DILocalVariable(name: "tmp", scope: !1665, file: !6, line: 253, type: !102)
!1690 = !DILocation(line: 267, column: 26, scope: !1688)
!1691 = !DILocation(line: 267, column: 24, scope: !1688)
!1692 = !DILocation(line: 267, column: 10, scope: !1688)
!1693 = !DILocation(line: 268, column: 3, scope: !1688)
!1694 = !DILocation(line: 271, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1683, file: !6, line: 268, column: 10)
!1696 = !DILocation(line: 271, column: 17, scope: !1695)
!1697 = !DILocation(line: 272, column: 24, scope: !1695)
!1698 = !DILocation(line: 272, column: 10, scope: !1695)
!1699 = !DILocation(line: 274, column: 27, scope: !1672)
!1700 = !DILocation(line: 274, column: 3, scope: !1672)
