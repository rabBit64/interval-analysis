; ModuleID = '/tmp/tmp.ll'
source_filename = "c/lakai-0.1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__anonstruct_LakaiProgramList_24 = type { i32, i8** }
%struct.__anonstruct_LakaiSampleList_25 = type { i32, i8** }
%struct.sg_scsi_id = type { i32, i32, i32, i32, i32, i16, i16, [2 x i32] }
%struct.sg_io_hdr = type { i32, i32, i8, i8, i16, i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8, i8, i8, i8, i16, i16, i32, i32, i32 }
%struct.__anonstruct_LakaiStatus_26 = type { i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s <devname>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Open failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Deleting all samples...\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Delete sample #%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"-- No resident sample names found. --\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Deleting all programs...\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Delete program #%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"-- No resident program names found. --\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"All done.\0A\00", align 1
@open_cnt = internal global i32 -1, align 4, !dbg !0
@fhandles = internal global [16 x i32] zeroinitializer, align 16, !dbg !81
@.str.10 = private unnamed_addr constant [53 x i8] c"lakai_open: Maximum open count of liblakai reached.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"lakai_open: no free slot found\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"lakai_open: error opening file: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Unable to do ioctl() SG_GET_VERSION_NUM on sg device\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"sg device's version is too old (below version 3)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Please get a more recent kernel\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Unable to do ioctl() SG_GET_SCSI_ID on sg device\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"Incorrect device type - should be a PROCESSOR device\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"lakai_close: Bad file handle\0A\00", align 1
@cmdblk = internal global [6 x i8] c"\09\00\01\00\00\00", align 1, !dbg !87
@.str.19 = private unnamed_addr constant [33 x i8] c"Illegal mode in lakai_setmode()\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"lakai_setmode: Bad file handle\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"lakai_setmode() FAILED\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"lakai_get_status_report(): Bad file handle\0A\00", align 1
@cmdblk1 = internal global [6 x i8] c"\F0G\00\00H\F7", align 1, !dbg !92
@.str.23 = private unnamed_addr constant [42 x i8] c"Seems there were problems in receiving..\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"lakai_get_program_list(): Bad file handle\0A\00", align 1
@cmdblk1___0 = internal global [6 x i8] c"\F0G\00\02H\F7", align 1, !dbg !94
@.str.25 = private unnamed_addr constant [54 x i8] c"lakai_get_program_list(): Unable to malloc prognames\0A\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"lakai_get_program_list(): Unable to malloc progname slot\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"lakai_get_program_list(): bad answer from sampler\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"lakai_get_sample_list(): Bad file handle\0A\00", align 1
@cmdblk1___1 = internal global [6 x i8] c"\F0G\00\04H\F7", align 1, !dbg !96
@.str.29 = private unnamed_addr constant [55 x i8] c"lakai_get_sample_list(): Unable to malloc samplenames\0A\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"lakai_get_sample_list(): Unable to malloc samplename slot\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"lakai_get_sample_list(): bad answer from sampler\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"lakai_get_program(): Bad file handle\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"lakai_get_program(): Illegal program number\0A\00", align 1
@cmdblk1___2 = internal global [8 x i8] c"\F0G\00\06H\00\00\F7", align 1, !dbg !98
@.str.34 = private unnamed_addr constant [39 x i8] c"lakai_get_keygroup(): Bad file handle\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"lakai_get_keygroup(): Illegal program number\0A\00", align 1
@cmdblk1___3 = internal global [9 x i8] c"\F0G\00\08H\00\00\00\F7", align 1, !dbg !103
@.str.36 = private unnamed_addr constant [47 x i8] c"lakai_get_keygroup(): Illegal keygroup number\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"lakai_get_sample_header(): Bad file handle\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"lakai_get_sample_header(): Illegal sample number\0A\00", align 1
@cmdblk1___4 = internal global [8 x i8] c"\F0G\00\0AH\00\00\F7", align 1, !dbg !108
@.str.39 = private unnamed_addr constant [44 x i8] c"lakai_put_sample_header(): Bad file handle\0A\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"lakai_put_sample_header(): Illegal sample number\0A\00", align 1
@cmdblk1___5 = internal global [7 x i8] c"\F0G\00\0BH\00\00", align 1, !dbg !110
@.str.41 = private unnamed_addr constant [41 x i8] c"lakai_delete_program(): Bad file handle\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"lakai_delete_program(): Illegal program number\0A\00", align 1
@cmdblk1___6 = internal global [8 x i8] c"\F0G\00\12H\00\00\F7", align 1, !dbg !115
@.str.43 = private unnamed_addr constant [42 x i8] c"lakai_delete_keygroup(): Bad file handle\0A\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"lakai_delete_keygroup(): Illegal program number\0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"lakai_delete_keygroup(): Illegal keygroup number\0A\00", align 1
@cmdblk1___7 = internal global [9 x i8] c"\F0G\00\13H\00\00\00\F7", align 1, !dbg !117
@.str.46 = private unnamed_addr constant [40 x i8] c"lakai_delete_sample(): Bad file handle\0A\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"lakai_delete_sample(): Illegal sample number\0A\00", align 1
@cmdblk1___8 = internal global [8 x i8] c"\F0G\00\14H\00\00\F7", align 1, !dbg !119
@.str.48 = private unnamed_addr constant [35 x i8] c"lakai_get_sample: Bad file handle\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"lakai_get_get_miscata(): Bad file handle\0A\00", align 1
@cmdblk1___9 = internal global [6 x i8] c"\F0G\00\10H\F7", align 1, !dbg !121
@.str.50 = private unnamed_addr constant [38 x i8] c"lakai_put_program(): Bad file handle\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"lakai_put_program(): Illegal program number\0A\00", align 1
@cmdblk1___10 = internal global [7 x i8] c"\F0G\00\07H\00\00", align 1, !dbg !123
@.str.52 = private unnamed_addr constant [63 x i8] c"lakai_put_program(): Seems there were problems in receiving..\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"lakai_put_keygroup(): Bad file handle\0A\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"lakai_put_keygroup(): Illegal program number\0A\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"lakai_put_keygroup(): Illegal keygroup number\0A\00", align 1
@cmdblk1___11 = internal global [8 x i8] c"\F0G\00\09H\00\00\00", align 1, !dbg !125
@.str.56 = private unnamed_addr constant [64 x i8] c"lakai_put_keygroup(): Seems there were problems in receiving..\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"lakai_put_sample: Bad file handle\0A\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59 = private unnamed_addr constant [52 x i8] c"do_send_sample(): Could not open program file '%s'\0A\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"do_send_sample(): Unable to malloc sample buf\0A\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"Uploading sample #%d from file '%s', %d bytes...\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.63 = private unnamed_addr constant [53 x i8] c"do_send_program(): Could not open program file '%s'\0A\00", align 1
@.str.64 = private unnamed_addr constant [49 x i8] c"do_send_program(): Unable to malloc program buf\0A\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"Uploading program #%d from file '%s', %d keygroup(s)...\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"\09Uploading keygroup %d..\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"send_command(): ioctl(SG_IO, ..) failed\0A\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"### return code: NOT OK\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Something (%d bytes) is in the sense buffer.\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Dump of sense buffer follows:\0A\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"sendrecv_scsimidi: Bad file handle\0A\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"sendrecv_scsimidi: Error: SysEx msg too long\0A!\00", align 1
@cmdblk1___12 = internal global [6 x i8] c"\0C\00\00\00\FF\00", align 1, !dbg !127
@.str.73 = private unnamed_addr constant [39 x i8] c"sendrecv_scsimidi: Problems in part 1\0A\00", align 1
@cmdblk2 = internal global [6 x i8] c"\0D\00\00\00\00\00", align 1, !dbg !129
@.str.74 = private unnamed_addr constant [39 x i8] c"sendrecv_scsimidi: Problems in part 2\0A\00", align 1
@cmdblk3 = internal global [6 x i8] c"\0E\00\00\00\00\00", align 1, !dbg !131
@.str.75 = private unnamed_addr constant [39 x i8] c"sendrecv_scsimidi: Problems in part 3\0A\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"sendrecv_scsimidi2: Bad file handle\0A\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"sendrecv_scsimidi2: Error: SysEx msg too long\0A!\00", align 1
@cmdblk1___13 = internal global [6 x i8] c"\0C\00\00\00\FF\00", align 1, !dbg !133
@.str.78 = private unnamed_addr constant [40 x i8] c"sendrecv_scsimidi2: Problems in part 1\0A\00", align 1
@cmdblk2___0 = internal global [6 x i8] c"\0D\00\00\00\00\80", align 1, !dbg !135
@.str.79 = private unnamed_addr constant [40 x i8] c"sendrecv_scsimidi2: Problems in part 2\0A\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"getbulkdata: Bad file handle\0A\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"getbulkdata: Error: numbytes too large\0A!\00", align 1
@cmdblk___0 = internal global [6 x i8] c"\0E\00\00\00\00\00", align 1, !dbg !137
@.str.82 = private unnamed_addr constant [33 x i8] c"getbulkdata: Problems in part 1\0A\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"putbulkdata: Bad file handle\0A\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"putbulkdata: Error: numbytes too large\0A!\00", align 1
@cmdblk___1 = internal global [6 x i8] c"\0C\00\00\00\00\00", align 1, !dbg !139
@.str.85 = private unnamed_addr constant [33 x i8] c"putbulkdata: Problems in part 1\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !147 {
entry:
  %lp = alloca %struct.__anonstruct_LakaiProgramList_24, align 8
  %ls = alloca %struct.__anonstruct_LakaiSampleList_25, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8** %argv, metadata !153, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_LakaiProgramList_24* %lp, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_LakaiSampleList_25* %ls, metadata !162, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata !4, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata !4, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata !4, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata !4, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata !4, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata !4, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata !4, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata !4, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata !4, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata !4, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata !4, metadata !189, metadata !DIExpression()), !dbg !190
  %cmp = icmp ne i32 %argc, 2, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !194

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !199
  %1 = load i8*, i8** %add.ptr, align 8, !dbg !200
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %1), !dbg !201
  call void @exit(i32 1) #5, !dbg !202
  unreachable, !dbg !202

if.end:                                           ; preds = %entry
  call void @lakai_init(), !dbg !204
  %add.ptr1 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !207
  %2 = load i8*, i8** %add.ptr1, align 8, !dbg !209
  %call2 = call i32 @lakai_open(i8* %2), !dbg !210
  call void @llvm.dbg.value(metadata i32 %call2, metadata !211, metadata !DIExpression()), !dbg !152
  %cmp3 = icmp sge i32 %call2, 0, !dbg !213
  br i1 %cmp3, label %if.end7, label %if.then4, !dbg !215

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !216
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !220
  %call6 = call i32 @lakai_close(i32 %call2), !dbg !221
  call void @exit(i32 5) #5, !dbg !223
  unreachable, !dbg !223

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @lakai_get_sample_list(i32 %call2, %struct.__anonstruct_LakaiSampleList_25* %ls), !dbg !225
  call void @llvm.dbg.value(metadata i32 %call8, metadata !228, metadata !DIExpression()), !dbg !152
  %cmp9 = icmp sgt i32 %call8, 0, !dbg !229
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !231

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !232
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)), !dbg !236
  %sub = sub nsw i32 %call8, 1, !dbg !237
  call void @llvm.dbg.value(metadata i32 %sub, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while.body, !dbg !239

while.body:                                       ; preds = %if.end14, %if.then10
  %i.0 = phi i32 [ %sub, %if.then10 ], [ %dec, %if.end14 ], !dbg !242
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while_continue___1, !dbg !243

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !243

while_continue:                                   ; preds = %while_continue___1
  %cmp12 = icmp sge i32 %i.0, 0, !dbg !244
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !247

if.then13:                                        ; preds = %while_continue
  br label %while_break, !dbg !248

if.end14:                                         ; preds = %while_continue
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !250
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %i.0), !dbg !253
  %call16 = call i32 @lakai_delete_sample(i32 %call2, i32 %i.0), !dbg !254
  call void @llvm.dbg.value(metadata i32 %call16, metadata !256, metadata !DIExpression()), !dbg !152
  %dec = add nsw i32 %i.0, -1, !dbg !257
  call void @llvm.dbg.value(metadata i32 %dec, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while.body, !dbg !239, !llvm.loop !258

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !260

while_break:                                      ; preds = %while_break___1, %if.then13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !261
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)), !dbg !264
  br label %if.end19, !dbg !265

if.else:                                          ; preds = %if.end7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !266
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0)), !dbg !270
  br label %if.end19

if.end19:                                         ; preds = %if.else, %while_break
  call void @lakai_free_sample_list(%struct.__anonstruct_LakaiSampleList_25* %ls), !dbg !271
  %call20 = call i32 @lakai_get_program_list(i32 %call2, %struct.__anonstruct_LakaiProgramList_24* %lp), !dbg !274
  call void @llvm.dbg.value(metadata i32 %call20, metadata !276, metadata !DIExpression()), !dbg !152
  %cmp21 = icmp sgt i32 %call20, 0, !dbg !277
  br i1 %cmp21, label %if.then22, label %if.else33, !dbg !279

if.then22:                                        ; preds = %if.end19
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !280
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !284
  %sub24 = sub nsw i32 %call20, 1, !dbg !285
  call void @llvm.dbg.value(metadata i32 %sub24, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while.body25, !dbg !286

while.body25:                                     ; preds = %if.end28, %if.then22
  %i.1 = phi i32 [ %sub24, %if.then22 ], [ %dec31, %if.end28 ], !dbg !289
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while_continue___2, !dbg !290

while_continue___2:                               ; preds = %while.body25
  br label %while_continue___0, !dbg !290

while_continue___0:                               ; preds = %while_continue___2
  %cmp26 = icmp sge i32 %i.1, 0, !dbg !291
  br i1 %cmp26, label %if.end28, label %if.then27, !dbg !294

if.then27:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !295

if.end28:                                         ; preds = %while_continue___0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !297
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 %i.1), !dbg !300
  %call30 = call i32 @lakai_delete_program(i32 %call2, i32 %i.1), !dbg !301
  call void @llvm.dbg.value(metadata i32 %call30, metadata !256, metadata !DIExpression()), !dbg !152
  %dec31 = add nsw i32 %i.1, -1, !dbg !303
  call void @llvm.dbg.value(metadata i32 %dec31, metadata !238, metadata !DIExpression()), !dbg !152
  br label %while.body25, !dbg !286, !llvm.loop !304

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !306

while_break___0:                                  ; preds = %while_break___2, %if.then27
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !307
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)), !dbg !310
  br label %if.end35, !dbg !311

if.else33:                                        ; preds = %if.end19
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !312
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0)), !dbg !316
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %while_break___0
  call void @lakai_free_program_list(%struct.__anonstruct_LakaiProgramList_24* %lp), !dbg !317
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !320
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)), !dbg !322
  %call37 = call i32 @lakai_setmode(i32 %call2, i32 0), !dbg !323
  %call38 = call i32 @lakai_close(i32 %call2), !dbg !325
  call void @exit(i32 0) #5, !dbg !327
  unreachable, !dbg !327

return:                                           ; No predecessors!
  ret i32 0, !dbg !329
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @lakai_init() #0 !dbg !330 {
entry:
  %0 = load i32, i32* @open_cnt, align 4, !dbg !333
  %cmp = icmp eq i32 %0, -1, !dbg !336
  br i1 %cmp, label %if.then, label %if.end3, !dbg !337

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !339
  br label %while.body, !dbg !340

while.body:                                       ; preds = %if.end, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %if.end ], !dbg !344
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !338, metadata !DIExpression()), !dbg !339
  br label %while_continue___0, !dbg !345

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !345

while_continue:                                   ; preds = %while_continue___0
  %cmp1 = icmp slt i32 %i.0, 16, !dbg !346
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !349

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !350

if.end:                                           ; preds = %while_continue
  %idxprom = sext i32 %i.0 to i64, !dbg !352
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !352
  store i32 -1, i32* %arrayidx, align 4, !dbg !353
  %inc = add nsw i32 %i.0, 1, !dbg !354
  call void @llvm.dbg.value(metadata i32 %inc, metadata !338, metadata !DIExpression()), !dbg !339
  br label %while.body, !dbg !340, !llvm.loop !355

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !357

while_break:                                      ; preds = %while_break___0, %if.then2
  br label %if.end3, !dbg !358

if.end3:                                          ; preds = %while_break, %entry
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_open(i8* %devname) #0 !dbg !360 {
entry:
  %k = alloca i32, align 4
  %sg_scsiid = alloca %struct.sg_scsi_id, align 4
  call void @llvm.dbg.value(metadata i8* %devname, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %k, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata %struct.sg_scsi_id* %sg_scsiid, metadata !367, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata !4, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata !4, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata !4, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata !4, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata !4, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata !4, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata !4, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata !4, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* @open_cnt, align 4, !dbg !400
  %cmp = icmp eq i32 %0, 15, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !405
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0)), !dbg !409
  br label %return, !dbg !410

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !364
  br label %while.body, !dbg !412

while.body:                                       ; preds = %if.end6, %if.end
  %slotpos.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end6 ], !dbg !415
  call void @llvm.dbg.value(metadata i32 %slotpos.0, metadata !411, metadata !DIExpression()), !dbg !364
  br label %while_continue___0, !dbg !416

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !416

while_continue:                                   ; preds = %while_continue___0
  %cmp1 = icmp slt i32 %slotpos.0, 16, !dbg !417
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !420

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !421

if.end3:                                          ; preds = %while_continue
  %idxprom = sext i32 %slotpos.0 to i64, !dbg !423
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !423
  %2 = load i32, i32* %arrayidx, align 4, !dbg !423
  %cmp4 = icmp eq i32 %2, -1, !dbg !425
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !426

if.then5:                                         ; preds = %if.end3
  br label %while_break, !dbg !427

if.end6:                                          ; preds = %if.end3
  %inc = add nsw i32 %slotpos.0, 1, !dbg !429
  call void @llvm.dbg.value(metadata i32 %inc, metadata !411, metadata !DIExpression()), !dbg !364
  br label %while.body, !dbg !412, !llvm.loop !430

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !432

while_break:                                      ; preds = %while_break___0, %if.then5, %if.then2
  %cmp7 = icmp eq i32 %slotpos.0, 16, !dbg !433
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !435

if.then8:                                         ; preds = %while_break
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !436
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)), !dbg !440
  br label %return, !dbg !441

if.end10:                                         ; preds = %while_break
  %call11 = call i32 (i8*, i32, ...) @open(i8* %devname, i32 2), !dbg !442
  call void @llvm.dbg.value(metadata i32 %call11, metadata !445, metadata !DIExpression()), !dbg !364
  %cmp12 = icmp slt i32 %call11, 0, !dbg !446
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !448

if.then13:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !449
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0), i8* %devname), !dbg !453
  br label %return, !dbg !454

if.end15:                                         ; preds = %if.end10
  %call16 = call i32 (i32, i64, ...) @ioctl(i32 %call11, i64 8834, i32* %k) #6, !dbg !455
  call void @llvm.dbg.value(metadata i32 %call16, metadata !458, metadata !DIExpression()), !dbg !364
  %cmp17 = icmp slt i32 %call16, 0, !dbg !459
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !461

if.then18:                                        ; preds = %if.end15
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !462
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0)), !dbg !466
  br label %return, !dbg !467

if.end20:                                         ; preds = %if.end15
  %6 = load i32, i32* %k, align 4, !dbg !468
  %cmp21 = icmp slt i32 %6, 30000, !dbg !470
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !471

if.then22:                                        ; preds = %if.end20
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !472
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0)), !dbg !476
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !477
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0)), !dbg !479
  %call25 = call i32 @close(i32 %call11), !dbg !480
  br label %return, !dbg !482

if.end26:                                         ; preds = %if.end20
  %call27 = call i32 (i32, i64, ...) @ioctl(i32 %call11, i64 8822, %struct.sg_scsi_id* %sg_scsiid) #6, !dbg !483
  call void @llvm.dbg.value(metadata i32 %call27, metadata !486, metadata !DIExpression()), !dbg !364
  %cmp28 = icmp slt i32 %call27, 0, !dbg !487
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !489

if.then29:                                        ; preds = %if.end26
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !490
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0)), !dbg !494
  %call31 = call i32 @close(i32 %call11), !dbg !495
  br label %return, !dbg !497

if.end32:                                         ; preds = %if.end26
  %scsi_type = getelementptr inbounds %struct.sg_scsi_id, %struct.sg_scsi_id* %sg_scsiid, i32 0, i32 4, !dbg !498
  %10 = load i32, i32* %scsi_type, align 4, !dbg !498
  %cmp33 = icmp ne i32 %10, 3, !dbg !500
  br i1 %cmp33, label %if.then34, label %if.end37, !dbg !501

if.then34:                                        ; preds = %if.end32
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !502
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0)), !dbg !506
  %call36 = call i32 @close(i32 %call11), !dbg !507
  br label %return, !dbg !509

if.end37:                                         ; preds = %if.end32
  %12 = load i32, i32* @open_cnt, align 4, !dbg !510
  %inc38 = add nsw i32 %12, 1, !dbg !510
  store i32 %inc38, i32* @open_cnt, align 4, !dbg !510
  %idxprom39 = sext i32 %slotpos.0 to i64, !dbg !511
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom39, !dbg !511
  store i32 %call11, i32* %arrayidx40, align 4, !dbg !512
  br label %return, !dbg !513

return:                                           ; preds = %if.end37, %if.then34, %if.then29, %if.then22, %if.then18, %if.then13, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then8 ], [ -1, %if.then13 ], [ -1, %if.then18 ], [ -1, %if.then22 ], [ -1, %if.then29 ], [ -1, %if.then34 ], [ %slotpos.0, %if.end37 ], !dbg !415
  ret i32 %retval.0, !dbg !514
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_close(i32 %handle) #0 !dbg !515 {
entry:
  call void @llvm.dbg.value(metadata i32 %handle, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata !4, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata !4, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata !4, metadata !524, metadata !DIExpression()), !dbg !525
  %idxprom = sext i32 %handle to i64, !dbg !526
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !526
  %0 = load i32, i32* %arrayidx, align 4, !dbg !526
  %cmp = icmp eq i32 %0, -1, !dbg !529
  br i1 %cmp, label %if.then, label %if.else, !dbg !530

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !531
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)), !dbg !535
  br label %return, !dbg !536

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !537
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !526

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !539
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)), !dbg !543
  br label %return, !dbg !544

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !545
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !547

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !548
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)), !dbg !552
  br label %return, !dbg !553

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %idxprom10 = sext i32 %handle to i64, !dbg !554
  %arrayidx11 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom10, !dbg !554
  %4 = load i32, i32* %arrayidx11, align 4, !dbg !554
  %call12 = call i32 @close(i32 %4), !dbg !557
  %idxprom13 = sext i32 %handle to i64, !dbg !558
  %arrayidx14 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom13, !dbg !558
  store i32 -1, i32* %arrayidx14, align 4, !dbg !559
  %5 = load i32, i32* @open_cnt, align 4, !dbg !560
  %dec = add nsw i32 %5, -1, !dbg !560
  store i32 %dec, i32* @open_cnt, align 4, !dbg !560
  br label %return, !dbg !561

return:                                           ; preds = %if.end9, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ 0, %if.end9 ], !dbg !562
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_sample_list(i32 %handle, %struct.__anonstruct_LakaiSampleList_25* %ls) #0 !dbg !564 {
entry:
  %finalbuf = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata %struct.__anonstruct_LakaiSampleList_25* %ls, metadata !570, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata [2048 x i8]* %finalbuf, metadata !571, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata !4, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata !4, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata !4, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata !4, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata !4, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata !4, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata !4, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata !4, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata !4, metadata !592, metadata !DIExpression()), !dbg !593
  %idxprom = sext i32 %handle to i64, !dbg !594
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !594
  %0 = load i32, i32* %arrayidx, align 4, !dbg !594
  %cmp = icmp eq i32 %0, -1, !dbg !597
  br i1 %cmp, label %if.then, label %if.else, !dbg !598

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !599
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0)), !dbg !603
  br label %return, !dbg !604

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !605
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !594

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0)), !dbg !611
  br label %return, !dbg !612

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !613
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !615

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !616
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0)), !dbg !620
  br label %return, !dbg !621

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !622
  %call10 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___1, i32 0, i32 0), i32 6, i8* %arraydecay), !dbg !625
  call void @llvm.dbg.value(metadata i32 %call10, metadata !626, metadata !DIExpression()), !dbg !569
  %cmp11 = icmp sgt i32 %call10, 0, !dbg !627
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !629

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !630
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !634
  br label %if.end14, !dbg !635

if.end14:                                         ; preds = %if.then12, %if.end9
  %arrayidx15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 5, !dbg !636
  %5 = load i8, i8* %arrayidx15, align 1, !dbg !636
  %conv = zext i8 %5 to i32, !dbg !637
  %arrayidx16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 6, !dbg !638
  %6 = load i8, i8* %arrayidx16, align 2, !dbg !638
  %conv17 = zext i8 %6 to i32, !dbg !639
  %mul = mul nsw i32 128, %conv17, !dbg !640
  %add = add nsw i32 %conv, %mul, !dbg !641
  call void @llvm.dbg.value(metadata i32 %add, metadata !642, metadata !DIExpression()), !dbg !569
  %arrayidx18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 0, !dbg !643
  %7 = load i8, i8* %arrayidx18, align 16, !dbg !643
  %conv19 = zext i8 %7 to i32, !dbg !645
  %cmp20 = icmp eq i32 %conv19, 240, !dbg !646
  br i1 %cmp20, label %if.then22, label %if.else66, !dbg !647

if.then22:                                        ; preds = %if.end14
  %arraydecay23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !648
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay23, i64 3, !dbg !651
  %8 = load i8, i8* %add.ptr, align 1, !dbg !652
  %conv24 = zext i8 %8 to i32, !dbg !653
  %cmp25 = icmp eq i32 %conv24, 5, !dbg !654
  br i1 %cmp25, label %if.then27, label %if.else63, !dbg !655

if.then27:                                        ; preds = %if.then22
  %conv28 = sext i32 %add to i64, !dbg !656
  %mul29 = mul i64 %conv28, 8, !dbg !660
  %conv30 = trunc i64 %mul29 to i32, !dbg !661
  %call31 = call noalias i8* @malloc(i32 %conv30) #6, !dbg !662
  call void @llvm.dbg.value(metadata i8* %call31, metadata !663, metadata !DIExpression()), !dbg !569
  %9 = bitcast i8* %call31 to i8**, !dbg !664
  %samplenames = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !665
  store i8** %9, i8*** %samplenames, align 8, !dbg !666
  %samplenames32 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !667
  %10 = load i8**, i8*** %samplenames32, align 8, !dbg !667
  %tobool = icmp ne i8** %10, null, !dbg !669
  br i1 %tobool, label %if.end35, label %if.then33, !dbg !670

if.then33:                                        ; preds = %if.then27
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !671
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0)), !dbg !675
  br label %return, !dbg !676

if.end35:                                         ; preds = %if.then27
  call void @llvm.dbg.value(metadata i32 0, metadata !677, metadata !DIExpression()), !dbg !569
  br label %while.body, !dbg !678

while.body:                                       ; preds = %if.end49, %if.end35
  %i.0 = phi i32 [ 0, %if.end35 ], [ %inc, %if.end49 ], !dbg !681
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !677, metadata !DIExpression()), !dbg !569
  br label %while_continue___0, !dbg !682

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !682

while_continue:                                   ; preds = %while_continue___0
  %cmp36 = icmp slt i32 %i.0, %add, !dbg !683
  br i1 %cmp36, label %if.end39, label %if.then38, !dbg !686

if.then38:                                        ; preds = %while_continue
  br label %while_break, !dbg !687

if.end39:                                         ; preds = %while_continue
  %call40 = call noalias i8* @malloc(i32 13) #6, !dbg !689
  call void @llvm.dbg.value(metadata i8* %call40, metadata !692, metadata !DIExpression()), !dbg !569
  %samplenames41 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !693
  %12 = load i8**, i8*** %samplenames41, align 8, !dbg !693
  %idx.ext = sext i32 %i.0 to i64, !dbg !694
  %add.ptr42 = getelementptr inbounds i8*, i8** %12, i64 %idx.ext, !dbg !694
  store i8* %call40, i8** %add.ptr42, align 8, !dbg !695
  %samplenames43 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !696
  %13 = load i8**, i8*** %samplenames43, align 8, !dbg !696
  %idx.ext44 = sext i32 %i.0 to i64, !dbg !698
  %add.ptr45 = getelementptr inbounds i8*, i8** %13, i64 %idx.ext44, !dbg !698
  %14 = load i8*, i8** %add.ptr45, align 8, !dbg !699
  %tobool46 = icmp ne i8* %14, null, !dbg !699
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !700

if.then47:                                        ; preds = %if.end39
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !701
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i32 0, i32 0)), !dbg !705
  br label %return, !dbg !706

if.end49:                                         ; preds = %if.end39
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !707
  %add.ptr51 = getelementptr inbounds i8, i8* %arraydecay50, i64 7, !dbg !710
  %mul52 = mul nsw i32 %i.0, 12, !dbg !711
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !712
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr51, i64 %idx.ext53, !dbg !712
  %samplenames55 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !713
  %16 = load i8**, i8*** %samplenames55, align 8, !dbg !713
  %idx.ext56 = sext i32 %i.0 to i64, !dbg !714
  %add.ptr57 = getelementptr inbounds i8*, i8** %16, i64 %idx.ext56, !dbg !714
  %17 = load i8*, i8** %add.ptr57, align 8, !dbg !715
  call void @lakai_akaitoascii(i8* %add.ptr54, i8* %17, i32 12), !dbg !716
  %samplenames58 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !717
  %18 = load i8**, i8*** %samplenames58, align 8, !dbg !717
  %idx.ext59 = sext i32 %i.0 to i64, !dbg !718
  %add.ptr60 = getelementptr inbounds i8*, i8** %18, i64 %idx.ext59, !dbg !718
  %19 = load i8*, i8** %add.ptr60, align 8, !dbg !719
  %add.ptr61 = getelementptr inbounds i8, i8* %19, i64 12, !dbg !720
  store i8 0, i8* %add.ptr61, align 1, !dbg !721
  %inc = add nsw i32 %i.0, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %inc, metadata !677, metadata !DIExpression()), !dbg !569
  br label %while.body, !dbg !678, !llvm.loop !723

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !725

while_break:                                      ; preds = %while_break___0, %if.then38
  %numsamples62 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 0, !dbg !726
  store i32 %add, i32* %numsamples62, align 8, !dbg !727
  br label %if.end65, !dbg !728

if.else63:                                        ; preds = %if.then22
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !729
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0)), !dbg !733
  br label %return, !dbg !734

if.end65:                                         ; preds = %while_break
  br label %if.end68, !dbg !735

if.else66:                                        ; preds = %if.end14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !736
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0)), !dbg !740
  br label %return, !dbg !741

if.end68:                                         ; preds = %if.end65
  br label %return, !dbg !742

return:                                           ; preds = %if.end68, %if.else66, %if.else63, %if.then47, %if.then33, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then47 ], [ %add, %if.end68 ], [ -1, %if.then33 ], [ -1, %if.else63 ], [ -1, %if.else66 ], !dbg !743
  ret i32 %retval.0, !dbg !744
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_delete_sample(i32 %handle, i32 %samplenum) #0 !dbg !745 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !750, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !751, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata !4, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.declare(metadata !4, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata !4, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.declare(metadata !4, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata !4, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata !4, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata !4, metadata !768, metadata !DIExpression()), !dbg !769
  %idxprom = sext i32 %handle to i64, !dbg !770
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !770
  %0 = load i32, i32* %arrayidx, align 4, !dbg !770
  %cmp = icmp eq i32 %0, -1, !dbg !773
  br i1 %cmp, label %if.then, label %if.else, !dbg !774

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !775
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)), !dbg !779
  br label %return, !dbg !780

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !781
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !770

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !783
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)), !dbg !787
  br label %return, !dbg !788

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !789
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !791

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !792
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)), !dbg !796
  br label %return, !dbg !797

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %samplenum, 0, !dbg !798
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !800

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !801
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i32 0, i32 0)), !dbg !805
  br label %return, !dbg !806

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %samplenum, 16383, !dbg !807
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !809

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !810
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i32 0, i32 0)), !dbg !814
  br label %return, !dbg !815

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %samplenum, 128, !dbg !816
  %conv = trunc i32 %div to i8, !dbg !818
  store i8 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___8, i64 0, i64 6), align 1, !dbg !819
  %6 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___8, i64 0, i64 6), align 1, !dbg !820
  %conv19 = zext i8 %6 to i32, !dbg !821
  %mul = mul nsw i32 %conv19, 128, !dbg !822
  %sub = sub nsw i32 %samplenum, %mul, !dbg !823
  %conv20 = trunc i32 %sub to i8, !dbg !824
  store i8 %conv20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___8, i64 0, i64 5), align 1, !dbg !825
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !826
  %call21 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___8, i32 0, i32 0), i32 8, i8* %arraydecay), !dbg !828
  call void @llvm.dbg.value(metadata i32 %call21, metadata !829, metadata !DIExpression()), !dbg !749
  %cmp22 = icmp sgt i32 %call21, 0, !dbg !830
  br i1 %cmp22, label %if.end26, label %if.then24, !dbg !832

if.then24:                                        ; preds = %if.end18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !837
  br label %if.end26, !dbg !838

if.end26:                                         ; preds = %if.then24, %if.end18
  br label %return, !dbg !839

return:                                           ; preds = %if.end26, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ 0, %if.end26 ], !dbg !840
  ret i32 %retval.0, !dbg !841
}

; Function Attrs: noinline nounwind ssp uwtable
define void @lakai_free_sample_list(%struct.__anonstruct_LakaiSampleList_25* %ls) #0 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_LakaiSampleList_25* %ls, metadata !845, metadata !DIExpression()), !dbg !846
  %tobool = icmp ne %struct.__anonstruct_LakaiSampleList_25* %ls, null, !dbg !847
  br i1 %tobool, label %if.then, label %if.end13, !dbg !850

if.then:                                          ; preds = %entry
  %numsamples = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 0, !dbg !851
  %0 = load i32, i32* %numsamples, align 8, !dbg !851
  %cmp = icmp sgt i32 %0, 0, !dbg !854
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !855

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()), !dbg !846
  br label %while.body, !dbg !857

while.body:                                       ; preds = %if.end10, %if.then1
  %i.0 = phi i32 [ 0, %if.then1 ], [ %inc, %if.end10 ], !dbg !861
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !856, metadata !DIExpression()), !dbg !846
  br label %while_continue___0, !dbg !862

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !862

while_continue:                                   ; preds = %while_continue___0
  %numsamples2 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 0, !dbg !863
  %1 = load i32, i32* %numsamples2, align 8, !dbg !863
  %cmp3 = icmp slt i32 %i.0, %1, !dbg !866
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !867

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !868

if.end:                                           ; preds = %while_continue
  %samplenames = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !870
  %2 = load i8**, i8*** %samplenames, align 8, !dbg !870
  %idx.ext = sext i32 %i.0 to i64, !dbg !872
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext, !dbg !872
  %3 = load i8*, i8** %add.ptr, align 8, !dbg !873
  %tobool5 = icmp ne i8* %3, null, !dbg !873
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !874

if.then6:                                         ; preds = %if.end
  %samplenames7 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !875
  %4 = load i8**, i8*** %samplenames7, align 8, !dbg !875
  %idx.ext8 = sext i32 %i.0 to i64, !dbg !879
  %add.ptr9 = getelementptr inbounds i8*, i8** %4, i64 %idx.ext8, !dbg !879
  %5 = load i8*, i8** %add.ptr9, align 8, !dbg !880
  call void @free(i8* %5) #6, !dbg !881
  br label %if.end10, !dbg !882

if.end10:                                         ; preds = %if.then6, %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !883
  call void @llvm.dbg.value(metadata i32 %inc, metadata !856, metadata !DIExpression()), !dbg !846
  br label %while.body, !dbg !857, !llvm.loop !884

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !886

while_break:                                      ; preds = %while_break___0, %if.then4
  %samplenames11 = getelementptr inbounds %struct.__anonstruct_LakaiSampleList_25, %struct.__anonstruct_LakaiSampleList_25* %ls, i32 0, i32 1, !dbg !887
  %6 = load i8**, i8*** %samplenames11, align 8, !dbg !887
  %7 = bitcast i8** %6 to i8*, !dbg !890
  call void @free(i8* %7) #6, !dbg !891
  br label %if.end12, !dbg !892

if.end12:                                         ; preds = %while_break, %if.then
  br label %if.end13, !dbg !893

if.end13:                                         ; preds = %if.end12, %entry
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_program_list(i32 %handle, %struct.__anonstruct_LakaiProgramList_24* %lp) #0 !dbg !895 {
entry:
  %finalbuf = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata %struct.__anonstruct_LakaiProgramList_24* %lp, metadata !901, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata [2048 x i8]* %finalbuf, metadata !902, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.declare(metadata !4, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata !4, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata !4, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata !4, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata !4, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata !4, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata !4, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata !4, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata !4, metadata !920, metadata !DIExpression()), !dbg !921
  %idxprom = sext i32 %handle to i64, !dbg !922
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !922
  %0 = load i32, i32* %arrayidx, align 4, !dbg !922
  %cmp = icmp eq i32 %0, -1, !dbg !925
  br i1 %cmp, label %if.then, label %if.else, !dbg !926

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !927
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0)), !dbg !931
  br label %return, !dbg !932

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !933
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !922

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !935
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0)), !dbg !939
  br label %return, !dbg !940

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !941
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !943

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !944
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0)), !dbg !948
  br label %return, !dbg !949

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !950
  %call10 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___0, i32 0, i32 0), i32 6, i8* %arraydecay), !dbg !953
  call void @llvm.dbg.value(metadata i32 %call10, metadata !954, metadata !DIExpression()), !dbg !900
  %cmp11 = icmp sgt i32 %call10, 0, !dbg !955
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !957

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !958
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !962
  br label %if.end14, !dbg !963

if.end14:                                         ; preds = %if.then12, %if.end9
  %arrayidx15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 5, !dbg !964
  %5 = load i8, i8* %arrayidx15, align 1, !dbg !964
  %conv = zext i8 %5 to i32, !dbg !965
  %arrayidx16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 6, !dbg !966
  %6 = load i8, i8* %arrayidx16, align 2, !dbg !966
  %conv17 = zext i8 %6 to i32, !dbg !967
  %mul = mul nsw i32 128, %conv17, !dbg !968
  %add = add nsw i32 %conv, %mul, !dbg !969
  call void @llvm.dbg.value(metadata i32 %add, metadata !970, metadata !DIExpression()), !dbg !900
  %arrayidx18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i64 0, i64 0, !dbg !971
  %7 = load i8, i8* %arrayidx18, align 16, !dbg !971
  %conv19 = zext i8 %7 to i32, !dbg !973
  %cmp20 = icmp eq i32 %conv19, 240, !dbg !974
  br i1 %cmp20, label %if.then22, label %if.else66, !dbg !975

if.then22:                                        ; preds = %if.end14
  %arraydecay23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !976
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay23, i64 3, !dbg !979
  %8 = load i8, i8* %add.ptr, align 1, !dbg !980
  %conv24 = zext i8 %8 to i32, !dbg !981
  %cmp25 = icmp eq i32 %conv24, 3, !dbg !982
  br i1 %cmp25, label %if.then27, label %if.else63, !dbg !983

if.then27:                                        ; preds = %if.then22
  %conv28 = sext i32 %add to i64, !dbg !984
  %mul29 = mul i64 %conv28, 8, !dbg !988
  %conv30 = trunc i64 %mul29 to i32, !dbg !989
  %call31 = call noalias i8* @malloc(i32 %conv30) #6, !dbg !990
  call void @llvm.dbg.value(metadata i8* %call31, metadata !991, metadata !DIExpression()), !dbg !900
  %9 = bitcast i8* %call31 to i8**, !dbg !992
  %prognames = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !993
  store i8** %9, i8*** %prognames, align 8, !dbg !994
  %prognames32 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !995
  %10 = load i8**, i8*** %prognames32, align 8, !dbg !995
  %tobool = icmp ne i8** %10, null, !dbg !997
  br i1 %tobool, label %if.end35, label %if.then33, !dbg !998

if.then33:                                        ; preds = %if.then27
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !999
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0)), !dbg !1003
  br label %return, !dbg !1004

if.end35:                                         ; preds = %if.then27
  call void @llvm.dbg.value(metadata i32 0, metadata !1005, metadata !DIExpression()), !dbg !900
  br label %while.body, !dbg !1006

while.body:                                       ; preds = %if.end49, %if.end35
  %i.0 = phi i32 [ 0, %if.end35 ], [ %inc, %if.end49 ], !dbg !1009
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1005, metadata !DIExpression()), !dbg !900
  br label %while_continue___0, !dbg !1010

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1010

while_continue:                                   ; preds = %while_continue___0
  %cmp36 = icmp slt i32 %i.0, %add, !dbg !1011
  br i1 %cmp36, label %if.end39, label %if.then38, !dbg !1014

if.then38:                                        ; preds = %while_continue
  br label %while_break, !dbg !1015

if.end39:                                         ; preds = %while_continue
  %call40 = call noalias i8* @malloc(i32 13) #6, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %call40, metadata !1020, metadata !DIExpression()), !dbg !900
  %prognames41 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1021
  %12 = load i8**, i8*** %prognames41, align 8, !dbg !1021
  %idx.ext = sext i32 %i.0 to i64, !dbg !1022
  %add.ptr42 = getelementptr inbounds i8*, i8** %12, i64 %idx.ext, !dbg !1022
  store i8* %call40, i8** %add.ptr42, align 8, !dbg !1023
  %prognames43 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1024
  %13 = load i8**, i8*** %prognames43, align 8, !dbg !1024
  %idx.ext44 = sext i32 %i.0 to i64, !dbg !1026
  %add.ptr45 = getelementptr inbounds i8*, i8** %13, i64 %idx.ext44, !dbg !1026
  %14 = load i8*, i8** %add.ptr45, align 8, !dbg !1027
  %tobool46 = icmp ne i8* %14, null, !dbg !1027
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !1028

if.then47:                                        ; preds = %if.end39
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1029
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i32 0, i32 0)), !dbg !1033
  br label %return, !dbg !1034

if.end49:                                         ; preds = %if.end39
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %finalbuf, i32 0, i32 0, !dbg !1035
  %add.ptr51 = getelementptr inbounds i8, i8* %arraydecay50, i64 7, !dbg !1038
  %mul52 = mul nsw i32 %i.0, 12, !dbg !1039
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !1040
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr51, i64 %idx.ext53, !dbg !1040
  %prognames55 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1041
  %16 = load i8**, i8*** %prognames55, align 8, !dbg !1041
  %idx.ext56 = sext i32 %i.0 to i64, !dbg !1042
  %add.ptr57 = getelementptr inbounds i8*, i8** %16, i64 %idx.ext56, !dbg !1042
  %17 = load i8*, i8** %add.ptr57, align 8, !dbg !1043
  call void @lakai_akaitoascii(i8* %add.ptr54, i8* %17, i32 12), !dbg !1044
  %prognames58 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1045
  %18 = load i8**, i8*** %prognames58, align 8, !dbg !1045
  %idx.ext59 = sext i32 %i.0 to i64, !dbg !1046
  %add.ptr60 = getelementptr inbounds i8*, i8** %18, i64 %idx.ext59, !dbg !1046
  %19 = load i8*, i8** %add.ptr60, align 8, !dbg !1047
  %add.ptr61 = getelementptr inbounds i8, i8* %19, i64 12, !dbg !1048
  store i8 0, i8* %add.ptr61, align 1, !dbg !1049
  %inc = add nsw i32 %i.0, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1005, metadata !DIExpression()), !dbg !900
  br label %while.body, !dbg !1006, !llvm.loop !1051

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1053

while_break:                                      ; preds = %while_break___0, %if.then38
  %numprogs62 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 0, !dbg !1054
  store i32 %add, i32* %numprogs62, align 8, !dbg !1055
  br label %if.end65, !dbg !1056

if.else63:                                        ; preds = %if.then22
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1057
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0)), !dbg !1061
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %while_break
  br label %if.end68, !dbg !1062

if.else66:                                        ; preds = %if.end14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1063
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0)), !dbg !1067
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.end65
  br label %return, !dbg !1068

return:                                           ; preds = %if.end68, %if.then47, %if.then33, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then47 ], [ %add, %if.end68 ], [ -1, %if.then33 ], !dbg !1069
  ret i32 %retval.0, !dbg !1070
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_delete_program(i32 %handle, i32 %prognum) #0 !dbg !1071 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !1074, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata !4, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata !4, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata !4, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata !4, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata !4, metadata !1085, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata !4, metadata !1087, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata !4, metadata !1089, metadata !DIExpression()), !dbg !1090
  %idxprom = sext i32 %handle to i64, !dbg !1091
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1091
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1091
  %cmp = icmp eq i32 %0, -1, !dbg !1094
  br i1 %cmp, label %if.then, label %if.else, !dbg !1095

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1096
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)), !dbg !1100
  br label %return, !dbg !1101

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !1102
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1091

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1104
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)), !dbg !1108
  br label %return, !dbg !1109

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !1110
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1112

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1113
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)), !dbg !1117
  br label %return, !dbg !1118

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !1119
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !1121

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1122
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i32 0, i32 0)), !dbg !1126
  br label %return, !dbg !1127

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !1128
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1130

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1131
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i32 0, i32 0)), !dbg !1135
  br label %return, !dbg !1136

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %prognum, 128, !dbg !1137
  %conv = trunc i32 %div to i8, !dbg !1139
  store i8 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___6, i64 0, i64 6), align 1, !dbg !1140
  %6 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___6, i64 0, i64 6), align 1, !dbg !1141
  %conv19 = zext i8 %6 to i32, !dbg !1142
  %mul = mul nsw i32 %conv19, 128, !dbg !1143
  %sub = sub nsw i32 %prognum, %mul, !dbg !1144
  %conv20 = trunc i32 %sub to i8, !dbg !1145
  store i8 %conv20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___6, i64 0, i64 5), align 1, !dbg !1146
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !1147
  %call21 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___6, i32 0, i32 0), i32 8, i8* %arraydecay), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %call21, metadata !1150, metadata !DIExpression()), !dbg !1073
  %cmp22 = icmp sgt i32 %call21, 0, !dbg !1151
  br i1 %cmp22, label %if.end26, label %if.then24, !dbg !1153

if.then24:                                        ; preds = %if.end18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !1158
  br label %if.end26, !dbg !1159

if.end26:                                         ; preds = %if.then24, %if.end18
  br label %return, !dbg !1160

return:                                           ; preds = %if.end26, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ 0, %if.end26 ], !dbg !1161
  ret i32 %retval.0, !dbg !1162
}

; Function Attrs: noinline nounwind ssp uwtable
define void @lakai_free_program_list(%struct.__anonstruct_LakaiProgramList_24* %lp) #0 !dbg !1163 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_LakaiProgramList_24* %lp, metadata !1166, metadata !DIExpression()), !dbg !1167
  %tobool = icmp ne %struct.__anonstruct_LakaiProgramList_24* %lp, null, !dbg !1168
  br i1 %tobool, label %if.then, label %if.end13, !dbg !1171

if.then:                                          ; preds = %entry
  %numprogs = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 0, !dbg !1172
  %0 = load i32, i32* %numprogs, align 8, !dbg !1172
  %cmp = icmp sgt i32 %0, 0, !dbg !1175
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !1176

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1177, metadata !DIExpression()), !dbg !1167
  br label %while.body, !dbg !1178

while.body:                                       ; preds = %if.end10, %if.then1
  %i.0 = phi i32 [ 0, %if.then1 ], [ %inc, %if.end10 ], !dbg !1182
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1177, metadata !DIExpression()), !dbg !1167
  br label %while_continue___0, !dbg !1183

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1183

while_continue:                                   ; preds = %while_continue___0
  %numprogs2 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 0, !dbg !1184
  %1 = load i32, i32* %numprogs2, align 8, !dbg !1184
  %cmp3 = icmp slt i32 %i.0, %1, !dbg !1187
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !1188

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !1189

if.end:                                           ; preds = %while_continue
  %prognames = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1191
  %2 = load i8**, i8*** %prognames, align 8, !dbg !1191
  %idx.ext = sext i32 %i.0 to i64, !dbg !1193
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext, !dbg !1193
  %3 = load i8*, i8** %add.ptr, align 8, !dbg !1194
  %tobool5 = icmp ne i8* %3, null, !dbg !1194
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !1195

if.then6:                                         ; preds = %if.end
  %prognames7 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1196
  %4 = load i8**, i8*** %prognames7, align 8, !dbg !1196
  %idx.ext8 = sext i32 %i.0 to i64, !dbg !1200
  %add.ptr9 = getelementptr inbounds i8*, i8** %4, i64 %idx.ext8, !dbg !1200
  %5 = load i8*, i8** %add.ptr9, align 8, !dbg !1201
  call void @free(i8* %5) #6, !dbg !1202
  br label %if.end10, !dbg !1203

if.end10:                                         ; preds = %if.then6, %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1177, metadata !DIExpression()), !dbg !1167
  br label %while.body, !dbg !1178, !llvm.loop !1205

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1207

while_break:                                      ; preds = %while_break___0, %if.then4
  %prognames11 = getelementptr inbounds %struct.__anonstruct_LakaiProgramList_24, %struct.__anonstruct_LakaiProgramList_24* %lp, i32 0, i32 1, !dbg !1208
  %6 = load i8**, i8*** %prognames11, align 8, !dbg !1208
  %7 = bitcast i8** %6 to i8*, !dbg !1211
  call void @free(i8* %7) #6, !dbg !1212
  br label %if.end12, !dbg !1213

if.end12:                                         ; preds = %while_break, %if.then
  br label %if.end13, !dbg !1214

if.end13:                                         ; preds = %if.end12, %entry
  ret void, !dbg !1215
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_setmode(i32 %handle, i32 %mode) #0 !dbg !1216 {
entry:
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1217, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1219, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.declare(metadata !4, metadata !1220, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.declare(metadata !4, metadata !1222, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata !4, metadata !1224, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.declare(metadata !4, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata !4, metadata !1228, metadata !DIExpression()), !dbg !1229
  %cmp = icmp eq i32 %mode, 0, !dbg !1230
  br i1 %cmp, label %if.then, label %if.else, !dbg !1233

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 2), align 1, !dbg !1234
  store i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 3), align 1, !dbg !1236
  br label %if.end8, !dbg !1237

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 1, !dbg !1238
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !1240

if.then2:                                         ; preds = %if.else
  store i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 2), align 1, !dbg !1241
  store i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 3), align 1, !dbg !1243
  br label %if.end7, !dbg !1244

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %mode, 2, !dbg !1245
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !1247

if.then5:                                         ; preds = %if.else3
  store i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 2), align 1, !dbg !1248
  store i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i64 0, i64 3), align 1, !dbg !1250
  br label %if.end, !dbg !1251

if.else6:                                         ; preds = %if.else3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0)), !dbg !1256
  br label %return, !dbg !1257

if.end:                                           ; preds = %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %idxprom = sext i32 %handle to i64, !dbg !1258
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1258
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1258
  %cmp9 = icmp eq i32 %1, -1, !dbg !1260
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !1261

if.then10:                                        ; preds = %if.end8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1262
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)), !dbg !1266
  br label %return, !dbg !1267

if.else12:                                        ; preds = %if.end8
  %cmp13 = icmp slt i32 %handle, 0, !dbg !1268
  br i1 %cmp13, label %if.then14, label %if.else16, !dbg !1258

if.then14:                                        ; preds = %if.else12
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1270
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)), !dbg !1274
  br label %return, !dbg !1275

if.else16:                                        ; preds = %if.else12
  %cmp17 = icmp sgt i32 %handle, 16, !dbg !1276
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1278

if.then18:                                        ; preds = %if.else16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1279
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)), !dbg !1283
  br label %return, !dbg !1284

if.end20:                                         ; preds = %if.else16
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  %idxprom23 = sext i32 %handle to i64, !dbg !1285
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom23, !dbg !1285
  %5 = load i32, i32* %arrayidx24, align 4, !dbg !1285
  %call25 = call i32 @send_command(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk, i32 0, i32 0), i32 1, i8* null, i32 0, i8* null, i32 0), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1289, metadata !DIExpression()), !dbg !1218
  %cmp26 = icmp ne i32 %call25, 0, !dbg !1290
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !1292

if.then27:                                        ; preds = %if.end22
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1293
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)), !dbg !1297
  br label %return, !dbg !1298

if.end29:                                         ; preds = %if.end22
  br label %return, !dbg !1299

return:                                           ; preds = %if.end29, %if.then27, %if.then18, %if.then14, %if.then10, %if.else6
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then14 ], [ -1, %if.then18 ], [ -1, %if.then27 ], [ 0, %if.end29 ], [ -1, %if.else6 ], !dbg !1300
  ret i32 %retval.0, !dbg !1301
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @send_command(i32 %sg_fd, i8* %cmdblk___14, i32 %dirflag, i8* %tosamp_ptr, i32 %tosamp_len, i8* %fromsamp_ptr, i32 %fromsamp_len) #0 !dbg !1302 {
entry:
  %io_hdr = alloca %struct.sg_io_hdr, align 8
  %sense_buffer = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %sg_fd, metadata !1305, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %cmdblk___14, metadata !1307, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %dirflag, metadata !1308, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %tosamp_ptr, metadata !1309, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %tosamp_len, metadata !1310, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %fromsamp_ptr, metadata !1311, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %fromsamp_len, metadata !1312, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata %struct.sg_io_hdr* %io_hdr, metadata !1313, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata [32 x i8]* %sense_buffer, metadata !1340, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata !4, metadata !1345, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata !4, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata !4, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.declare(metadata !4, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.declare(metadata !4, metadata !1353, metadata !DIExpression()), !dbg !1354
  %0 = bitcast %struct.sg_io_hdr* %io_hdr to i8*, !dbg !1355
  %call = call i8* @memset(i8* %0, i32 0, i32 88) #6, !dbg !1359
  %interface_id = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 0, !dbg !1360
  store i32 83, i32* %interface_id, align 8, !dbg !1361
  %cmd_len = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 2, !dbg !1362
  store i8 6, i8* %cmd_len, align 8, !dbg !1363
  %mx_sb_len = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 3, !dbg !1364
  store i8 32, i8* %mx_sb_len, align 1, !dbg !1365
  %cmp = icmp eq i32 %dirflag, 0, !dbg !1366
  br i1 %cmp, label %if.then, label %if.else, !dbg !1368

if.then:                                          ; preds = %entry
  %dxfer_direction = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 1, !dbg !1369
  store i32 -3, i32* %dxfer_direction, align 4, !dbg !1371
  %dxfer_len = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 5, !dbg !1372
  store i32 %fromsamp_len, i32* %dxfer_len, align 4, !dbg !1373
  %dxferp = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 6, !dbg !1374
  store i8* %fromsamp_ptr, i8** %dxferp, align 8, !dbg !1375
  br label %if.end, !dbg !1376

if.else:                                          ; preds = %entry
  %dxfer_direction1 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 1, !dbg !1377
  store i32 -2, i32* %dxfer_direction1, align 4, !dbg !1379
  %dxfer_len2 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 5, !dbg !1380
  store i32 %tosamp_len, i32* %dxfer_len2, align 4, !dbg !1381
  %dxferp3 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 6, !dbg !1382
  store i8* %tosamp_ptr, i8** %dxferp3, align 8, !dbg !1383
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmdp = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 7, !dbg !1384
  store i8* %cmdblk___14, i8** %cmdp, align 8, !dbg !1386
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %sense_buffer, i32 0, i32 0, !dbg !1387
  %sbp = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 8, !dbg !1388
  store i8* %arraydecay, i8** %sbp, align 8, !dbg !1389
  %timeout = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 9, !dbg !1390
  store i32 20000, i32* %timeout, align 8, !dbg !1391
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %sg_fd, i64 8837, %struct.sg_io_hdr* %io_hdr) #6, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1394, metadata !DIExpression()), !dbg !1306
  %cmp5 = icmp slt i32 %call4, 0, !dbg !1395
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1397

if.then6:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1398
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.67, i32 0, i32 0)), !dbg !1402
  br label %return, !dbg !1403

if.end8:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 21, !dbg !1404
  %2 = load i32, i32* %info, align 8, !dbg !1404
  %and = and i32 %2, 1, !dbg !1406
  %cmp9 = icmp eq i32 %and, 0, !dbg !1407
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !1408

if.then10:                                        ; preds = %if.end8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1409
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0)), !dbg !1413
  br label %return, !dbg !1414

if.end12:                                         ; preds = %if.end8
  %sb_len_wr = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 16, !dbg !1415
  %4 = load i8, i8* %sb_len_wr, align 1, !dbg !1415
  %conv = zext i8 %4 to i32, !dbg !1417
  %cmp13 = icmp sgt i32 %conv, 0, !dbg !1418
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !1419

if.then15:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1420
  %sb_len_wr16 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 16, !dbg !1424
  %6 = load i8, i8* %sb_len_wr16, align 1, !dbg !1424
  %conv17 = zext i8 %6 to i32, !dbg !1425
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i32 0, i32 0), i32 %conv17), !dbg !1426
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1427
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i32 0, i32 0)), !dbg !1429
  %sbp20 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 8, !dbg !1430
  %8 = load i8*, i8** %sbp20, align 8, !dbg !1430
  %sb_len_wr21 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %io_hdr, i32 0, i32 16, !dbg !1432
  %9 = load i8, i8* %sb_len_wr21, align 1, !dbg !1432
  %conv22 = zext i8 %9 to i32, !dbg !1433
  call void @hexprint(i8* %8, i32 %conv22), !dbg !1434
  br label %return, !dbg !1435

if.end23:                                         ; preds = %if.end12
  br label %return, !dbg !1436

return:                                           ; preds = %if.end23, %if.then15, %if.then10, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ -1, %if.then15 ], [ 0, %if.end23 ], [ -1, %if.then10 ], !dbg !1437
  ret i32 %retval.0, !dbg !1438
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_status_report(i32 %handle, %struct.__anonstruct_LakaiStatus_26* %ls) #0 !dbg !1439 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata %struct.__anonstruct_LakaiStatus_26* %ls, metadata !1454, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !1455, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.declare(metadata !4, metadata !1457, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata !4, metadata !1459, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.declare(metadata !4, metadata !1461, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata !4, metadata !1463, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.declare(metadata !4, metadata !1465, metadata !DIExpression()), !dbg !1466
  %idxprom = sext i32 %handle to i64, !dbg !1467
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1467
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1467
  %cmp = icmp eq i32 %0, -1, !dbg !1470
  br i1 %cmp, label %if.then, label %if.else, !dbg !1471

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1472
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0)), !dbg !1476
  br label %return, !dbg !1477

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !1478
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1467

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1480
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0)), !dbg !1484
  br label %return, !dbg !1485

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !1486
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1488

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1489
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0)), !dbg !1493
  br label %return, !dbg !1494

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !1495
  %call10 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1, i32 0, i32 0), i32 6, i8* %arraydecay), !dbg !1498
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1499, metadata !DIExpression()), !dbg !1453
  %cmp11 = icmp sgt i32 %call10, 0, !dbg !1500
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !1502

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1503
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !1507
  br label %if.end14, !dbg !1508

if.end14:                                         ; preds = %if.then12, %if.end9
  br label %return, !dbg !1509

return:                                           ; preds = %if.end14, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ 0, %if.end14 ], !dbg !1510
  ret i32 %retval.0, !dbg !1511
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @sendrecv_scsimidi(i32 %handle, i8* %sysexblk, i32 %sysexblksize, i8* %destbuf) #0 !dbg !1512 {
entry:
  %outbuf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8* %sysexblk, metadata !1517, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i32 %sysexblksize, metadata !1518, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i8* %destbuf, metadata !1519, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata [32 x i8]* %outbuf, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.declare(metadata !4, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata !4, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata !4, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata !4, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.declare(metadata !4, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata !4, metadata !1532, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.declare(metadata !4, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata !4, metadata !1536, metadata !DIExpression()), !dbg !1537
  %idxprom = sext i32 %handle to i64, !dbg !1538
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1538
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1538
  %cmp = icmp eq i32 %0, -1, !dbg !1541
  br i1 %cmp, label %if.then, label %if.else, !dbg !1542

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1543
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0)), !dbg !1547
  br label %return, !dbg !1548

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !1549
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1538

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1551
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0)), !dbg !1555
  br label %return, !dbg !1556

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !1557
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1559

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1560
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0)), !dbg !1564
  br label %return, !dbg !1565

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp ugt i32 %sysexblksize, 65534, !dbg !1566
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1568

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1569
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.72, i32 0, i32 0)), !dbg !1573
  br label %return, !dbg !1574

if.end13:                                         ; preds = %if.end9
  %conv = trunc i32 %sysexblksize to i8, !dbg !1575
  %conv14 = zext i8 %conv to i32, !dbg !1577
  %and = and i32 %conv14, 255, !dbg !1578
  %conv15 = trunc i32 %and to i8, !dbg !1579
  store i8 %conv15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___12, i64 0, i64 4), align 1, !dbg !1580
  %and16 = and i32 %sysexblksize, 65280, !dbg !1581
  %shr = lshr i32 %and16, 8, !dbg !1582
  %conv17 = trunc i32 %shr to i8, !dbg !1583
  store i8 %conv17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___12, i64 0, i64 3), align 1, !dbg !1584
  %and18 = and i32 %sysexblksize, 16711680, !dbg !1585
  %shr19 = lshr i32 %and18, 16, !dbg !1586
  %conv20 = trunc i32 %shr19 to i8, !dbg !1587
  store i8 %conv20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___12, i64 0, i64 2), align 1, !dbg !1588
  %call21 = call i32 @lakai_setmode(i32 %handle, i32 1), !dbg !1589
  %idxprom22 = sext i32 %handle to i64, !dbg !1591
  %arrayidx23 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom22, !dbg !1591
  %5 = load i32, i32* %arrayidx23, align 4, !dbg !1591
  %call24 = call i32 @send_command(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___12, i32 0, i32 0), i32 1, i8* %sysexblk, i32 %sysexblksize, i8* null, i32 0), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %call24, metadata !1594, metadata !DIExpression()), !dbg !1516
  %cmp25 = icmp slt i32 %call24, 0, !dbg !1595
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !1597

if.then27:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1598
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.73, i32 0, i32 0)), !dbg !1602
  %call29 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !1603
  br label %return, !dbg !1605

if.end30:                                         ; preds = %if.end13
  call void @llvm.dbg.value(metadata i32 0, metadata !1606, metadata !DIExpression()), !dbg !1516
  br label %while.body, !dbg !1607

while.body:                                       ; preds = %if.end68, %if.end30
  %currentlen.0 = phi i32 [ 0, %if.end30 ], [ %currentlen.1, %if.end68 ], !dbg !1610
  call void @llvm.dbg.value(metadata i32 %currentlen.0, metadata !1606, metadata !DIExpression()), !dbg !1516
  br label %while_continue___0, !dbg !1611

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1611

while_continue:                                   ; preds = %while_continue___0
  %idxprom31 = sext i32 %handle to i64, !dbg !1612
  %arrayidx32 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom31, !dbg !1612
  %7 = load i32, i32* %arrayidx32, align 4, !dbg !1612
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i32 0, i32 0, !dbg !1616
  %call33 = call i32 @send_command(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk2, i32 0, i32 0), i32 0, i8* null, i32 0, i8* %arraydecay, i32 3), !dbg !1617
  call void @llvm.dbg.value(metadata i32 %call33, metadata !1618, metadata !DIExpression()), !dbg !1516
  %cmp34 = icmp slt i32 %call33, 0, !dbg !1619
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !1621

if.then36:                                        ; preds = %while_continue
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1622
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0)), !dbg !1626
  %call38 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !1627
  br label %return, !dbg !1629

if.end39:                                         ; preds = %while_continue
  %arrayidx40 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 0, !dbg !1630
  %9 = load i8, i8* %arrayidx40, align 16, !dbg !1630
  %conv41 = zext i8 %9 to i32, !dbg !1631
  %shl = shl i32 %conv41, 16, !dbg !1632
  %arrayidx42 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 1, !dbg !1633
  %10 = load i8, i8* %arrayidx42, align 1, !dbg !1633
  %conv43 = zext i8 %10 to i32, !dbg !1634
  %shl44 = shl i32 %conv43, 8, !dbg !1635
  %add = add nsw i32 %shl, %shl44, !dbg !1636
  %arrayidx45 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 2, !dbg !1637
  %11 = load i8, i8* %arrayidx45, align 2, !dbg !1637
  %conv46 = zext i8 %11 to i32, !dbg !1638
  %add47 = add nsw i32 %add, %conv46, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %add47, metadata !1640, metadata !DIExpression()), !dbg !1516
  %cmp48 = icmp sgt i32 %add47, 0, !dbg !1641
  br i1 %cmp48, label %if.then50, label %if.end64, !dbg !1643

if.then50:                                        ; preds = %if.end39
  %arrayidx51 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 0, !dbg !1644
  %12 = load i8, i8* %arrayidx51, align 16, !dbg !1644
  store i8 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk3, i64 0, i64 2), align 1, !dbg !1647
  %arrayidx52 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 1, !dbg !1648
  %13 = load i8, i8* %arrayidx52, align 1, !dbg !1648
  store i8 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk3, i64 0, i64 3), align 1, !dbg !1649
  %arrayidx53 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 2, !dbg !1650
  %14 = load i8, i8* %arrayidx53, align 2, !dbg !1650
  store i8 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk3, i64 0, i64 4), align 1, !dbg !1651
  %idxprom54 = sext i32 %handle to i64, !dbg !1652
  %arrayidx55 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom54, !dbg !1652
  %15 = load i32, i32* %arrayidx55, align 4, !dbg !1652
  %idx.ext = sext i32 %currentlen.0 to i64, !dbg !1654
  %add.ptr = getelementptr inbounds i8, i8* %destbuf, i64 %idx.ext, !dbg !1654
  %call56 = call i32 @send_command(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk3, i32 0, i32 0), i32 0, i8* null, i32 0, i8* %add.ptr, i32 %add47), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %call56, metadata !1656, metadata !DIExpression()), !dbg !1516
  %cmp57 = icmp slt i32 %call56, 0, !dbg !1657
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !1659

if.then59:                                        ; preds = %if.then50
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1660
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i32 0, i32 0)), !dbg !1664
  %call61 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !1665
  br label %return, !dbg !1667

if.end62:                                         ; preds = %if.then50
  %add63 = add nsw i32 %currentlen.0, %add47, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %add63, metadata !1606, metadata !DIExpression()), !dbg !1516
  br label %if.end64, !dbg !1669

if.end64:                                         ; preds = %if.end62, %if.end39
  %currentlen.1 = phi i32 [ %add63, %if.end62 ], [ %currentlen.0, %if.end39 ], !dbg !1610
  call void @llvm.dbg.value(metadata i32 %currentlen.1, metadata !1606, metadata !DIExpression()), !dbg !1516
  %cmp65 = icmp sgt i32 %add47, 0, !dbg !1670
  br i1 %cmp65, label %if.end68, label %if.then67, !dbg !1672

if.then67:                                        ; preds = %if.end64
  br label %while_break, !dbg !1673

if.end68:                                         ; preds = %if.end64
  br label %while.body, !dbg !1607, !llvm.loop !1675

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1677

while_break:                                      ; preds = %while_break___0, %if.then67
  %call69 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !1678
  br label %return, !dbg !1681

return:                                           ; preds = %while_break, %if.then59, %if.then36, %if.then27, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then27 ], [ -1, %if.then36 ], [ -1, %if.then59 ], [ %currentlen.1, %while_break ], !dbg !1610
  ret i32 %retval.0, !dbg !1682
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @lakai_akaitoascii(i8* %src, i8* %dst, i32 %len) #0 !dbg !1683 {
entry:
  call void @llvm.dbg.value(metadata i8* %src, metadata !1686, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8* %dst, metadata !1688, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %len, metadata !1689, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1687
  br label %while.body, !dbg !1691

while.body:                                       ; preds = %if.end45, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end45 ], !dbg !1695
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1690, metadata !DIExpression()), !dbg !1687
  br label %while_continue___0, !dbg !1696

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1696

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %len, !dbg !1697
  br i1 %cmp, label %if.end, label %if.then, !dbg !1700

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1701

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !1703
  %add.ptr = getelementptr inbounds i8, i8* %src, i64 %idx.ext, !dbg !1703
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1704
  call void @llvm.dbg.value(metadata i8 %0, metadata !1705, metadata !DIExpression()), !dbg !1687
  %conv = zext i8 %0 to i32, !dbg !1706
  %cmp1 = icmp sle i32 %conv, 9, !dbg !1708
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !1709

if.then3:                                         ; preds = %if.end
  %conv4 = zext i8 %0 to i32, !dbg !1710
  %add = add nsw i32 %conv4, 48, !dbg !1712
  %conv5 = trunc i32 %add to i8, !dbg !1713
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end45, !dbg !1715

if.else:                                          ; preds = %if.end
  %conv6 = zext i8 %0 to i32, !dbg !1716
  %cmp7 = icmp sge i32 %conv6, 11, !dbg !1718
  br i1 %cmp7, label %if.then9, label %if.else19, !dbg !1719

if.then9:                                         ; preds = %if.else
  %conv10 = zext i8 %0 to i32, !dbg !1720
  %cmp11 = icmp sle i32 %conv10, 36, !dbg !1723
  br i1 %cmp11, label %if.then13, label %if.else17, !dbg !1724

if.then13:                                        ; preds = %if.then9
  %conv14 = zext i8 %0 to i32, !dbg !1725
  %add15 = add nsw i32 %conv14, 54, !dbg !1727
  %conv16 = trunc i32 %add15 to i8, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %conv16, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end18, !dbg !1729

if.else17:                                        ; preds = %if.then9
  br label %_L, !dbg !1730

if.end18:                                         ; preds = %if.then13
  br label %if.end44, !dbg !1732

if.else19:                                        ; preds = %if.else
  br label %_L, !dbg !1732

_L:                                               ; preds = %if.else19, %if.else17
  %conv20 = zext i8 %0 to i32, !dbg !1733
  %cmp21 = icmp eq i32 %conv20, 37, !dbg !1735
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !1736

if.then23:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i8 35, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end43, !dbg !1737

if.else24:                                        ; preds = %_L
  %conv25 = zext i8 %0 to i32, !dbg !1739
  %cmp26 = icmp eq i32 %conv25, 38, !dbg !1741
  br i1 %cmp26, label %if.then28, label %if.else29, !dbg !1742

if.then28:                                        ; preds = %if.else24
  call void @llvm.dbg.value(metadata i8 43, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end42, !dbg !1743

if.else29:                                        ; preds = %if.else24
  %conv30 = zext i8 %0 to i32, !dbg !1745
  %cmp31 = icmp eq i32 %conv30, 39, !dbg !1747
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !1748

if.then33:                                        ; preds = %if.else29
  call void @llvm.dbg.value(metadata i8 45, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end41, !dbg !1749

if.else34:                                        ; preds = %if.else29
  %conv35 = zext i8 %0 to i32, !dbg !1751
  %cmp36 = icmp eq i32 %conv35, 40, !dbg !1753
  br i1 %cmp36, label %if.then38, label %if.else39, !dbg !1754

if.then38:                                        ; preds = %if.else34
  call void @llvm.dbg.value(metadata i8 46, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end40, !dbg !1755

if.else39:                                        ; preds = %if.else34
  call void @llvm.dbg.value(metadata i8 32, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  %val_out.0 = phi i8 [ 46, %if.then38 ], [ 32, %if.else39 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %val_out.0, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then33
  %val_out.1 = phi i8 [ 45, %if.then33 ], [ %val_out.0, %if.end40 ], !dbg !1758
  call void @llvm.dbg.value(metadata i8 %val_out.1, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then28
  %val_out.2 = phi i8 [ 43, %if.then28 ], [ %val_out.1, %if.end41 ], !dbg !1759
  call void @llvm.dbg.value(metadata i8 %val_out.2, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then23
  %val_out.3 = phi i8 [ 35, %if.then23 ], [ %val_out.2, %if.end42 ], !dbg !1760
  call void @llvm.dbg.value(metadata i8 %val_out.3, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end18
  %val_out.4 = phi i8 [ %conv16, %if.end18 ], [ %val_out.3, %if.end43 ], !dbg !1761
  call void @llvm.dbg.value(metadata i8 %val_out.4, metadata !1714, metadata !DIExpression()), !dbg !1687
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then3
  %val_out.5 = phi i8 [ %conv5, %if.then3 ], [ %val_out.4, %if.end44 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %val_out.5, metadata !1714, metadata !DIExpression()), !dbg !1687
  %idx.ext46 = sext i32 %i.0 to i64, !dbg !1763
  %add.ptr47 = getelementptr inbounds i8, i8* %dst, i64 %idx.ext46, !dbg !1763
  store i8 %val_out.5, i8* %add.ptr47, align 1, !dbg !1764
  %inc = add nsw i32 %i.0, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1690, metadata !DIExpression()), !dbg !1687
  br label %while.body, !dbg !1691, !llvm.loop !1766

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1768

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !1769
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_program(i32 %handle, i32 %prognum, i8* %data) #0 !dbg !1770 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !1775, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %data, metadata !1776, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !1777, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.declare(metadata !4, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata !4, metadata !1784, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.declare(metadata !4, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.declare(metadata !4, metadata !1788, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.declare(metadata !4, metadata !1790, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.declare(metadata !4, metadata !1792, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata !4, metadata !1794, metadata !DIExpression()), !dbg !1795
  %idxprom = sext i32 %handle to i64, !dbg !1796
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1796
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1796
  %cmp = icmp eq i32 %0, -1, !dbg !1799
  br i1 %cmp, label %if.then, label %if.else, !dbg !1800

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1801
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0)), !dbg !1805
  br label %return, !dbg !1806

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !1807
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1796

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1809
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0)), !dbg !1813
  br label %return, !dbg !1814

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !1815
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1817

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1818
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0)), !dbg !1822
  br label %return, !dbg !1823

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !1824
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !1826

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1827
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0)), !dbg !1831
  br label %return, !dbg !1832

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !1833
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1835

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1836
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0)), !dbg !1840
  br label %return, !dbg !1841

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %prognum, 128, !dbg !1842
  %conv = trunc i32 %div to i8, !dbg !1844
  store i8 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___2, i64 0, i64 6), align 1, !dbg !1845
  %6 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___2, i64 0, i64 6), align 1, !dbg !1846
  %conv19 = zext i8 %6 to i32, !dbg !1847
  %mul = mul nsw i32 %conv19, 128, !dbg !1848
  %sub = sub nsw i32 %prognum, %mul, !dbg !1849
  %conv20 = trunc i32 %sub to i8, !dbg !1850
  store i8 %conv20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___2, i64 0, i64 5), align 1, !dbg !1851
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !1852
  %call21 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___2, i32 0, i32 0), i32 8, i8* %arraydecay), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %call21, metadata !1855, metadata !DIExpression()), !dbg !1774
  %cmp22 = icmp sle i32 %call21, 0, !dbg !1856
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !1858

if.then24:                                        ; preds = %if.end18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1859
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !1863
  br label %return, !dbg !1864

if.end26:                                         ; preds = %if.end18
  %sub27 = sub nsw i32 %call21, 8, !dbg !1865
  %div28 = sdiv i32 %sub27, 2, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %div28, metadata !1867, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 0, metadata !1868, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1869

while.body:                                       ; preds = %if.end32, %if.end26
  %i.0 = phi i32 [ 0, %if.end26 ], [ %inc, %if.end32 ], !dbg !1872
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1868, metadata !DIExpression()), !dbg !1774
  br label %while_continue___0, !dbg !1873

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1873

while_continue:                                   ; preds = %while_continue___0
  %cmp29 = icmp slt i32 %i.0, %div28, !dbg !1874
  br i1 %cmp29, label %if.end32, label %if.then31, !dbg !1877

if.then31:                                        ; preds = %while_continue
  br label %while_break, !dbg !1878

if.end32:                                         ; preds = %while_continue
  %mul33 = mul nsw i32 %i.0, 2, !dbg !1880
  %add = add nsw i32 7, %mul33, !dbg !1881
  %idxprom34 = sext i32 %add to i64, !dbg !1882
  %arrayidx35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom34, !dbg !1882
  %8 = load i8, i8* %arrayidx35, align 1, !dbg !1882
  %conv36 = zext i8 %8 to i32, !dbg !1883
  %mul37 = mul nsw i32 %i.0, 2, !dbg !1884
  %add38 = add nsw i32 7, %mul37, !dbg !1885
  %add39 = add nsw i32 %add38, 1, !dbg !1886
  %idxprom40 = sext i32 %add39 to i64, !dbg !1887
  %arrayidx41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom40, !dbg !1887
  %9 = load i8, i8* %arrayidx41, align 1, !dbg !1887
  %conv42 = zext i8 %9 to i32, !dbg !1888
  %shl = shl i32 %conv42, 4, !dbg !1889
  %or = or i32 %conv36, %shl, !dbg !1890
  %conv43 = trunc i32 %or to i8, !dbg !1891
  %idx.ext = sext i32 %i.0 to i64, !dbg !1892
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !1892
  store i8 %conv43, i8* %add.ptr, align 1, !dbg !1893
  %inc = add nsw i32 %i.0, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1868, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1869, !llvm.loop !1895

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1897

while_break:                                      ; preds = %while_break___0, %if.then31
  br label %return, !dbg !1898

return:                                           ; preds = %while_break, %if.then24, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then24 ], [ %div28, %while_break ], !dbg !1872
  ret i32 %retval.0, !dbg !1899
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_keygroup(i32 %handle, i32 %prognum, i32 %keygroupnum, i8* %data) #0 !dbg !1900 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !1903, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !1905, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %keygroupnum, metadata !1906, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %data, metadata !1907, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !1908, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.declare(metadata !4, metadata !1910, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.declare(metadata !4, metadata !1912, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.declare(metadata !4, metadata !1914, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.declare(metadata !4, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.declare(metadata !4, metadata !1918, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.declare(metadata !4, metadata !1920, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.declare(metadata !4, metadata !1922, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.declare(metadata !4, metadata !1924, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.declare(metadata !4, metadata !1926, metadata !DIExpression()), !dbg !1927
  %idxprom = sext i32 %handle to i64, !dbg !1928
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !1928
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1928
  %cmp = icmp eq i32 %0, -1, !dbg !1931
  br i1 %cmp, label %if.then, label %if.else, !dbg !1932

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1933
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0)), !dbg !1937
  br label %return, !dbg !1938

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !1939
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1928

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1941
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0)), !dbg !1945
  br label %return, !dbg !1946

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !1947
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1949

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1950
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0)), !dbg !1954
  br label %return, !dbg !1955

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !1956
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !1958

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1959
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0)), !dbg !1963
  br label %return, !dbg !1964

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !1965
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1967

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1968
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0)), !dbg !1972
  br label %return, !dbg !1973

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %prognum, 128, !dbg !1974
  %conv = trunc i32 %div to i8, !dbg !1975
  store i8 %conv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___3, i64 0, i64 6), align 1, !dbg !1976
  %6 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___3, i64 0, i64 6), align 1, !dbg !1977
  %conv19 = zext i8 %6 to i32, !dbg !1978
  %mul = mul nsw i32 %conv19, 128, !dbg !1979
  %sub = sub nsw i32 %prognum, %mul, !dbg !1980
  %conv20 = trunc i32 %sub to i8, !dbg !1981
  store i8 %conv20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___3, i64 0, i64 5), align 1, !dbg !1982
  %cmp21 = icmp slt i32 %keygroupnum, 0, !dbg !1983
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !1985

if.then23:                                        ; preds = %if.end18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1986
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0)), !dbg !1990
  br label %return, !dbg !1991

if.else25:                                        ; preds = %if.end18
  %cmp26 = icmp sgt i32 %keygroupnum, 99, !dbg !1992
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !1994

if.then28:                                        ; preds = %if.else25
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1995
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0)), !dbg !1999
  br label %return, !dbg !2000

if.end30:                                         ; preds = %if.else25
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  %conv32 = trunc i32 %keygroupnum to i8, !dbg !2001
  store i8 %conv32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___3, i64 0, i64 7), align 1, !dbg !2003
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2004
  %call33 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___3, i32 0, i32 0), i32 9, i8* %arraydecay), !dbg !2006
  call void @llvm.dbg.value(metadata i32 %call33, metadata !2007, metadata !DIExpression()), !dbg !1904
  %cmp34 = icmp sle i32 %call33, 0, !dbg !2008
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !2010

if.then36:                                        ; preds = %if.end31
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2011
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2015
  br label %return, !dbg !2016

if.end38:                                         ; preds = %if.end31
  %sub39 = sub nsw i32 %call33, 9, !dbg !2017
  %div40 = sdiv i32 %sub39, 2, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %div40, metadata !2019, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !1904
  br label %while.body, !dbg !2021

while.body:                                       ; preds = %if.end44, %if.end38
  %i.0 = phi i32 [ 0, %if.end38 ], [ %inc, %if.end44 ], !dbg !2024
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2020, metadata !DIExpression()), !dbg !1904
  br label %while_continue___0, !dbg !2025

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2025

while_continue:                                   ; preds = %while_continue___0
  %cmp41 = icmp slt i32 %i.0, %div40, !dbg !2026
  br i1 %cmp41, label %if.end44, label %if.then43, !dbg !2029

if.then43:                                        ; preds = %while_continue
  br label %while_break, !dbg !2030

if.end44:                                         ; preds = %while_continue
  %mul45 = mul nsw i32 %i.0, 2, !dbg !2032
  %add = add nsw i32 8, %mul45, !dbg !2033
  %idxprom46 = sext i32 %add to i64, !dbg !2034
  %arrayidx47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom46, !dbg !2034
  %10 = load i8, i8* %arrayidx47, align 1, !dbg !2034
  %conv48 = zext i8 %10 to i32, !dbg !2035
  %mul49 = mul nsw i32 %i.0, 2, !dbg !2036
  %add50 = add nsw i32 8, %mul49, !dbg !2037
  %add51 = add nsw i32 %add50, 1, !dbg !2038
  %idxprom52 = sext i32 %add51 to i64, !dbg !2039
  %arrayidx53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom52, !dbg !2039
  %11 = load i8, i8* %arrayidx53, align 1, !dbg !2039
  %conv54 = zext i8 %11 to i32, !dbg !2040
  %shl = shl i32 %conv54, 4, !dbg !2041
  %or = or i32 %conv48, %shl, !dbg !2042
  %conv55 = trunc i32 %or to i8, !dbg !2043
  %idx.ext = sext i32 %i.0 to i64, !dbg !2044
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !2044
  store i8 %conv55, i8* %add.ptr, align 1, !dbg !2045
  %inc = add nsw i32 %i.0, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2020, metadata !DIExpression()), !dbg !1904
  br label %while.body, !dbg !2021, !llvm.loop !2047

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2049

while_break:                                      ; preds = %while_break___0, %if.then43
  br label %return, !dbg !2050

return:                                           ; preds = %while_break, %if.then36, %if.then28, %if.then23, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then23 ], [ -1, %if.then28 ], [ -1, %if.then36 ], [ %div40, %while_break ], !dbg !2024
  ret i32 %retval.0, !dbg !2051
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_sample_header(i32 %handle, i32 %samplenum, i8* %data) #0 !dbg !2052 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2053, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !2055, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %data, metadata !2056, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !2057, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.declare(metadata !4, metadata !2059, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata !4, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.declare(metadata !4, metadata !2063, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.declare(metadata !4, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.declare(metadata !4, metadata !2067, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.declare(metadata !4, metadata !2069, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.declare(metadata !4, metadata !2071, metadata !DIExpression()), !dbg !2072
  %idxprom = sext i32 %handle to i64, !dbg !2073
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2073
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2073
  %cmp = icmp eq i32 %0, -1, !dbg !2076
  br i1 %cmp, label %if.then, label %if.else, !dbg !2077

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2078
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)), !dbg !2082
  br label %return, !dbg !2083

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2084
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2073

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2086
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)), !dbg !2090
  br label %return, !dbg !2091

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2092
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2094

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2095
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)), !dbg !2099
  br label %return, !dbg !2100

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %samplenum, 0, !dbg !2101
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !2103

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2104
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0)), !dbg !2108
  br label %return, !dbg !2109

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %samplenum, 16383, !dbg !2110
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2112

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2113
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0)), !dbg !2117
  br label %return, !dbg !2118

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %samplenum, 128, !dbg !2119
  %conv = trunc i32 %div to i8, !dbg !2121
  store i8 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___4, i64 0, i64 6), align 1, !dbg !2122
  %6 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___4, i64 0, i64 6), align 1, !dbg !2123
  %conv19 = zext i8 %6 to i32, !dbg !2124
  %mul = mul nsw i32 %conv19, 128, !dbg !2125
  %sub = sub nsw i32 %samplenum, %mul, !dbg !2126
  %conv20 = trunc i32 %sub to i8, !dbg !2127
  store i8 %conv20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___4, i64 0, i64 5), align 1, !dbg !2128
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2129
  %call21 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___4, i32 0, i32 0), i32 8, i8* %arraydecay), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2132, metadata !DIExpression()), !dbg !2054
  %cmp22 = icmp sle i32 %call21, 0, !dbg !2133
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !2135

if.then24:                                        ; preds = %if.end18
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2136
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2140
  br label %return, !dbg !2141

if.end26:                                         ; preds = %if.end18
  %sub27 = sub nsw i32 %call21, 8, !dbg !2142
  %div28 = sdiv i32 %sub27, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %div28, metadata !2144, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2054
  br label %while.body, !dbg !2146

while.body:                                       ; preds = %if.end32, %if.end26
  %i.0 = phi i32 [ 0, %if.end26 ], [ %inc, %if.end32 ], !dbg !2149
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2145, metadata !DIExpression()), !dbg !2054
  br label %while_continue___0, !dbg !2150

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2150

while_continue:                                   ; preds = %while_continue___0
  %cmp29 = icmp slt i32 %i.0, %div28, !dbg !2151
  br i1 %cmp29, label %if.end32, label %if.then31, !dbg !2154

if.then31:                                        ; preds = %while_continue
  br label %while_break, !dbg !2155

if.end32:                                         ; preds = %while_continue
  %mul33 = mul nsw i32 %i.0, 2, !dbg !2157
  %add = add nsw i32 7, %mul33, !dbg !2158
  %idxprom34 = sext i32 %add to i64, !dbg !2159
  %arrayidx35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom34, !dbg !2159
  %8 = load i8, i8* %arrayidx35, align 1, !dbg !2159
  %conv36 = zext i8 %8 to i32, !dbg !2160
  %mul37 = mul nsw i32 %i.0, 2, !dbg !2161
  %add38 = add nsw i32 7, %mul37, !dbg !2162
  %add39 = add nsw i32 %add38, 1, !dbg !2163
  %idxprom40 = sext i32 %add39 to i64, !dbg !2164
  %arrayidx41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom40, !dbg !2164
  %9 = load i8, i8* %arrayidx41, align 1, !dbg !2164
  %conv42 = zext i8 %9 to i32, !dbg !2165
  %shl = shl i32 %conv42, 4, !dbg !2166
  %or = or i32 %conv36, %shl, !dbg !2167
  %conv43 = trunc i32 %or to i8, !dbg !2168
  %idx.ext = sext i32 %i.0 to i64, !dbg !2169
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !2169
  store i8 %conv43, i8* %add.ptr, align 1, !dbg !2170
  %inc = add nsw i32 %i.0, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2145, metadata !DIExpression()), !dbg !2054
  br label %while.body, !dbg !2146, !llvm.loop !2172

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2174

while_break:                                      ; preds = %while_break___0, %if.then31
  br label %return, !dbg !2175

return:                                           ; preds = %while_break, %if.then24, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then24 ], [ %div28, %while_break ], !dbg !2149
  ret i32 %retval.0, !dbg !2176
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_put_sample_header(i32 %handle, i32 %samplenum, i8* %data, i32 %len) #0 !dbg !2177 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  %resbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2180, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !2182, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* %data, metadata !2183, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %len, metadata !2184, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.declare(metadata [1024 x i8]* %resbuf, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.declare(metadata !4, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.declare(metadata !4, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.declare(metadata !4, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.declare(metadata !4, metadata !2195, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.declare(metadata !4, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.declare(metadata !4, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.declare(metadata !4, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata !4, metadata !2203, metadata !DIExpression()), !dbg !2204
  %idxprom = sext i32 %handle to i64, !dbg !2205
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2205
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2205
  %cmp = icmp eq i32 %0, -1, !dbg !2208
  br i1 %cmp, label %if.then, label %if.else, !dbg !2209

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2210
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0)), !dbg !2214
  br label %return, !dbg !2215

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2216
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2205

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2218
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0)), !dbg !2222
  br label %return, !dbg !2223

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2224
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2226

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2227
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0)), !dbg !2231
  br label %return, !dbg !2232

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %samplenum, 0, !dbg !2233
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !2235

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2236
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0)), !dbg !2240
  br label %return, !dbg !2241

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %samplenum, 16383, !dbg !2242
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2244

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2245
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0)), !dbg !2249
  br label %return, !dbg !2250

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %samplenum, 128, !dbg !2251
  %conv = trunc i32 %div to i8, !dbg !2253
  store i8 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___5, i64 0, i64 6), align 1, !dbg !2254
  %6 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___5, i64 0, i64 6), align 1, !dbg !2255
  %conv19 = zext i8 %6 to i32, !dbg !2256
  %mul = mul nsw i32 %conv19, 128, !dbg !2257
  %sub = sub nsw i32 %samplenum, %mul, !dbg !2258
  %conv20 = trunc i32 %sub to i8, !dbg !2259
  store i8 %conv20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___5, i64 0, i64 5), align 1, !dbg !2260
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2261
  %call21 = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___5, i32 0, i32 0), i32 7) #6, !dbg !2263
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2181
  br label %while.body, !dbg !2265

while.body:                                       ; preds = %if.end25, %if.end18
  %i.0 = phi i32 [ 0, %if.end18 ], [ %inc, %if.end25 ], !dbg !2268
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2264, metadata !DIExpression()), !dbg !2181
  br label %while_continue___0, !dbg !2269

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2269

while_continue:                                   ; preds = %while_continue___0
  %cmp22 = icmp slt i32 %i.0, %len, !dbg !2270
  br i1 %cmp22, label %if.end25, label %if.then24, !dbg !2273

if.then24:                                        ; preds = %while_continue
  br label %while_break, !dbg !2274

if.end25:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !2276
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !2276
  %7 = load i8, i8* %add.ptr, align 1, !dbg !2277
  %conv26 = zext i8 %7 to i32, !dbg !2278
  %and = and i32 %conv26, 15, !dbg !2279
  %conv27 = trunc i32 %and to i8, !dbg !2280
  %mul28 = mul nsw i32 %i.0, 2, !dbg !2281
  %conv29 = sext i32 %mul28 to i64, !dbg !2282
  %add = add i64 7, %conv29, !dbg !2283
  %arrayidx30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add, !dbg !2284
  store i8 %conv27, i8* %arrayidx30, align 1, !dbg !2285
  %idx.ext31 = sext i32 %i.0 to i64, !dbg !2286
  %add.ptr32 = getelementptr inbounds i8, i8* %data, i64 %idx.ext31, !dbg !2286
  %8 = load i8, i8* %add.ptr32, align 1, !dbg !2287
  %conv33 = zext i8 %8 to i32, !dbg !2288
  %and34 = and i32 %conv33, 240, !dbg !2289
  %shr = ashr i32 %and34, 4, !dbg !2290
  %conv35 = trunc i32 %shr to i8, !dbg !2291
  %mul36 = mul nsw i32 %i.0, 2, !dbg !2292
  %conv37 = sext i32 %mul36 to i64, !dbg !2293
  %add38 = add i64 7, %conv37, !dbg !2294
  %add39 = add i64 %add38, 1, !dbg !2295
  %arrayidx40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add39, !dbg !2296
  store i8 %conv35, i8* %arrayidx40, align 1, !dbg !2297
  %inc = add nsw i32 %i.0, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2264, metadata !DIExpression()), !dbg !2181
  br label %while.body, !dbg !2265, !llvm.loop !2299

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2301

while_break:                                      ; preds = %while_break___0, %if.then24
  %mul41 = mul nsw i32 2, %len, !dbg !2302
  %conv42 = sext i32 %mul41 to i64, !dbg !2304
  %add43 = add i64 7, %conv42, !dbg !2305
  %arrayidx44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add43, !dbg !2306
  store i8 -9, i8* %arrayidx44, align 1, !dbg !2307
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2308
  %mul46 = mul nsw i32 %len, 2, !dbg !2310
  %conv47 = sext i32 %mul46 to i64, !dbg !2311
  %add48 = add i64 7, %conv47, !dbg !2312
  %add49 = add i64 %add48, 1, !dbg !2313
  %conv50 = trunc i64 %add49 to i32, !dbg !2314
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %resbuf, i32 0, i32 0, !dbg !2315
  %call52 = call i32 @sendrecv_scsimidi(i32 %handle, i8* %arraydecay45, i32 %conv50, i8* %arraydecay51), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %call52, metadata !2317, metadata !DIExpression()), !dbg !2181
  %cmp53 = icmp sle i32 %call52, 0, !dbg !2318
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !2320

if.then55:                                        ; preds = %while_break
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2321
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2325
  br label %return, !dbg !2326

if.end57:                                         ; preds = %while_break
  br label %return, !dbg !2327

return:                                           ; preds = %if.end57, %if.then55, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  ret i32 -1, !dbg !2328
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_delete_keygroup(i32 %handle, i32 %prognum, i32 %kgrpnum) #0 !dbg !2329 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !2334, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %kgrpnum, metadata !2335, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !2336, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.declare(metadata !4, metadata !2338, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.declare(metadata !4, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.declare(metadata !4, metadata !2342, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.declare(metadata !4, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.declare(metadata !4, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata !4, metadata !2348, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.declare(metadata !4, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.declare(metadata !4, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.declare(metadata !4, metadata !2354, metadata !DIExpression()), !dbg !2355
  %idxprom = sext i32 %handle to i64, !dbg !2356
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2356
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2356
  %cmp = icmp eq i32 %0, -1, !dbg !2359
  br i1 %cmp, label %if.then, label %if.else, !dbg !2360

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2361
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0)), !dbg !2365
  br label %return, !dbg !2366

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2367
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2356

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2369
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0)), !dbg !2373
  br label %return, !dbg !2374

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2375
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2377

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2378
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0)), !dbg !2382
  br label %return, !dbg !2383

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !2384
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !2386

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2387
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i32 0, i32 0)), !dbg !2391
  br label %return, !dbg !2392

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !2393
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2395

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2396
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i32 0, i32 0)), !dbg !2400
  br label %return, !dbg !2401

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %cmp19 = icmp slt i32 %kgrpnum, 0, !dbg !2402
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !2404

if.then20:                                        ; preds = %if.end18
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2405
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i32 0, i32 0)), !dbg !2409
  br label %return, !dbg !2410

if.else22:                                        ; preds = %if.end18
  %cmp23 = icmp sgt i32 %kgrpnum, 99, !dbg !2411
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !2413

if.then24:                                        ; preds = %if.else22
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2414
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i32 0, i32 0)), !dbg !2418
  br label %return, !dbg !2419

if.end26:                                         ; preds = %if.else22
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  %div = sdiv i32 %prognum, 128, !dbg !2420
  %conv = trunc i32 %div to i8, !dbg !2422
  store i8 %conv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___7, i64 0, i64 6), align 1, !dbg !2423
  %8 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___7, i64 0, i64 6), align 1, !dbg !2424
  %conv28 = zext i8 %8 to i32, !dbg !2425
  %mul = mul nsw i32 %conv28, 128, !dbg !2426
  %sub = sub nsw i32 %prognum, %mul, !dbg !2427
  %conv29 = trunc i32 %sub to i8, !dbg !2428
  store i8 %conv29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___7, i64 0, i64 5), align 1, !dbg !2429
  %conv30 = trunc i32 %kgrpnum to i8, !dbg !2430
  store i8 %conv30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___7, i64 0, i64 7), align 1, !dbg !2431
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !2432
  %call31 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdblk1___7, i32 0, i32 0), i32 9, i8* %arraydecay), !dbg !2434
  call void @llvm.dbg.value(metadata i32 %call31, metadata !2435, metadata !DIExpression()), !dbg !2333
  %cmp32 = icmp sgt i32 %call31, 0, !dbg !2436
  br i1 %cmp32, label %if.end36, label %if.then34, !dbg !2438

if.then34:                                        ; preds = %if.end27
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2439
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2443
  br label %if.end36, !dbg !2444

if.end36:                                         ; preds = %if.then34, %if.end27
  br label %return, !dbg !2445

return:                                           ; preds = %if.end36, %if.then24, %if.then20, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then20 ], [ -1, %if.then24 ], [ 0, %if.end36 ], !dbg !2446
  ret i32 %retval.0, !dbg !2447
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @lakai_get_sample(i32 %handle, i32 %samplenum, i8* %buffer, i64 %locat, i64 %len) #0 !dbg !2448 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  %cmdblk1___74 = alloca [18 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !2453, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2454, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %locat, metadata !2455, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %len, metadata !2456, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.declare(metadata [18 x i8]* %cmdblk1___74, metadata !2459, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.declare(metadata !4, metadata !2464, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.declare(metadata !4, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.declare(metadata !4, metadata !2468, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.declare(metadata !4, metadata !2470, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.declare(metadata !4, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata !4, metadata !2474, metadata !DIExpression()), !dbg !2475
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 0, !dbg !2476
  store i8 -16, i8* %arrayidx, align 16, !dbg !2478
  %arrayidx1 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 1, !dbg !2476
  store i8 71, i8* %arrayidx1, align 1, !dbg !2478
  %arrayidx2 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 2, !dbg !2476
  store i8 0, i8* %arrayidx2, align 2, !dbg !2478
  %arrayidx3 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 3, !dbg !2476
  store i8 12, i8* %arrayidx3, align 1, !dbg !2478
  %arrayidx4 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 4, !dbg !2476
  store i8 72, i8* %arrayidx4, align 4, !dbg !2478
  %arrayidx5 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 5, !dbg !2476
  store i8 0, i8* %arrayidx5, align 1, !dbg !2478
  %arrayidx6 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 6, !dbg !2476
  store i8 0, i8* %arrayidx6, align 2, !dbg !2478
  %arrayidx7 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 7, !dbg !2476
  store i8 0, i8* %arrayidx7, align 1, !dbg !2478
  %arrayidx8 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 8, !dbg !2476
  store i8 0, i8* %arrayidx8, align 8, !dbg !2478
  %arrayidx9 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 9, !dbg !2476
  store i8 0, i8* %arrayidx9, align 1, !dbg !2478
  %arrayidx10 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 10, !dbg !2476
  store i8 0, i8* %arrayidx10, align 2, !dbg !2479
  %arrayidx11 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 11, !dbg !2476
  store i8 0, i8* %arrayidx11, align 1, !dbg !2479
  %arrayidx12 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 12, !dbg !2476
  store i8 0, i8* %arrayidx12, align 4, !dbg !2479
  %arrayidx13 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 13, !dbg !2476
  store i8 0, i8* %arrayidx13, align 1, !dbg !2479
  %arrayidx14 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 14, !dbg !2476
  store i8 0, i8* %arrayidx14, align 2, !dbg !2479
  %arrayidx15 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 15, !dbg !2476
  store i8 1, i8* %arrayidx15, align 1, !dbg !2479
  %arrayidx16 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 16, !dbg !2476
  store i8 0, i8* %arrayidx16, align 16, !dbg !2479
  %arrayidx17 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 17, !dbg !2476
  store i8 -9, i8* %arrayidx17, align 1, !dbg !2479
  %idxprom = sext i32 %handle to i64, !dbg !2480
  %arrayidx18 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2480
  %0 = load i32, i32* %arrayidx18, align 4, !dbg !2480
  %cmp = icmp eq i32 %0, -1, !dbg !2482
  br i1 %cmp, label %if.then, label %if.else, !dbg !2483

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2484
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0)), !dbg !2488
  br label %return, !dbg !2489

if.else:                                          ; preds = %entry
  %cmp19 = icmp slt i32 %handle, 0, !dbg !2490
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !2480

if.then20:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2492
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0)), !dbg !2496
  br label %return, !dbg !2497

if.else22:                                        ; preds = %if.else
  %cmp23 = icmp sgt i32 %handle, 16, !dbg !2498
  br i1 %cmp23, label %if.then24, label %if.end, !dbg !2500

if.then24:                                        ; preds = %if.else22
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2501
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0)), !dbg !2505
  br label %return, !dbg !2506

if.end:                                           ; preds = %if.else22
  br label %if.end26

if.end26:                                         ; preds = %if.end
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  %and = and i32 %samplenum, 127, !dbg !2507
  %conv = trunc i32 %and to i8, !dbg !2509
  %arrayidx28 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 5, !dbg !2510
  store i8 %conv, i8* %arrayidx28, align 1, !dbg !2511
  %shr = ashr i32 %samplenum, 7, !dbg !2512
  %and29 = and i32 %shr, 127, !dbg !2513
  %conv30 = trunc i32 %and29 to i8, !dbg !2514
  %arrayidx31 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 6, !dbg !2515
  store i8 %conv30, i8* %arrayidx31, align 2, !dbg !2516
  %and32 = and i64 %locat, 127, !dbg !2517
  %conv33 = trunc i64 %and32 to i8, !dbg !2518
  %arrayidx34 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 7, !dbg !2519
  store i8 %conv33, i8* %arrayidx34, align 1, !dbg !2520
  %shr35 = ashr i64 %locat, 7, !dbg !2521
  %and36 = and i64 %shr35, 127, !dbg !2522
  %conv37 = trunc i64 %and36 to i8, !dbg !2523
  %arrayidx38 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 8, !dbg !2524
  store i8 %conv37, i8* %arrayidx38, align 8, !dbg !2525
  %shr39 = ashr i64 %locat, 14, !dbg !2526
  %and40 = and i64 %shr39, 127, !dbg !2527
  %conv41 = trunc i64 %and40 to i8, !dbg !2528
  %arrayidx42 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 9, !dbg !2529
  store i8 %conv41, i8* %arrayidx42, align 1, !dbg !2530
  %shr43 = ashr i64 %locat, 21, !dbg !2531
  %and44 = and i64 %shr43, 127, !dbg !2532
  %conv45 = trunc i64 %and44 to i8, !dbg !2533
  %arrayidx46 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 10, !dbg !2534
  store i8 %conv45, i8* %arrayidx46, align 2, !dbg !2535
  %and47 = and i64 %len, 127, !dbg !2536
  %conv48 = trunc i64 %and47 to i8, !dbg !2537
  %arrayidx49 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 11, !dbg !2538
  store i8 %conv48, i8* %arrayidx49, align 1, !dbg !2539
  %shr50 = ashr i64 %len, 7, !dbg !2540
  %and51 = and i64 %shr50, 127, !dbg !2541
  %conv52 = trunc i64 %and51 to i8, !dbg !2542
  %arrayidx53 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 12, !dbg !2543
  store i8 %conv52, i8* %arrayidx53, align 4, !dbg !2544
  %shr54 = ashr i64 %len, 14, !dbg !2545
  %and55 = and i64 %shr54, 127, !dbg !2546
  %conv56 = trunc i64 %and55 to i8, !dbg !2547
  %arrayidx57 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 13, !dbg !2548
  store i8 %conv56, i8* %arrayidx57, align 1, !dbg !2549
  %shr58 = ashr i64 %len, 21, !dbg !2550
  %and59 = and i64 %shr58, 127, !dbg !2551
  %conv60 = trunc i64 %and59 to i8, !dbg !2552
  %arrayidx61 = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i64 0, i64 14, !dbg !2553
  store i8 %conv60, i8* %arrayidx61, align 2, !dbg !2554
  %call62 = call i32 @lakai_setmode(i32 %handle, i32 2), !dbg !2555
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %cmdblk1___74, i32 0, i32 0, !dbg !2557
  %arraydecay63 = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !2559
  %call64 = call i32 @sendrecv_scsimidi2(i32 %handle, i8* %arraydecay, i32 18, i8* %arraydecay63), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2561, metadata !DIExpression()), !dbg !2452
  %cmp65 = icmp sgt i32 %call64, 0, !dbg !2562
  br i1 %cmp65, label %if.end69, label %if.then67, !dbg !2564

if.then67:                                        ; preds = %if.end27
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2565
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2569
  br label %if.end69, !dbg !2570

if.end69:                                         ; preds = %if.then67, %if.end27
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2571, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2572, metadata !DIExpression()), !dbg !2452
  br label %while.body, !dbg !2573

while.body:                                       ; preds = %if.end78, %if.end69
  %stilltoget.0 = phi i32 [ %call64, %if.end69 ], [ %sub, %if.end78 ], !dbg !2576
  %ptr.0 = phi i8* [ %buffer, %if.end69 ], [ %add.ptr, %if.end78 ], !dbg !2576
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !2572, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %stilltoget.0, metadata !2571, metadata !DIExpression()), !dbg !2452
  br label %while_continue___0, !dbg !2577

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2577

while_continue:                                   ; preds = %while_continue___0
  %cmp70 = icmp sgt i32 %stilltoget.0, 0, !dbg !2578
  br i1 %cmp70, label %if.end73, label %if.then72, !dbg !2581

if.then72:                                        ; preds = %while_continue
  br label %while_break, !dbg !2582

if.end73:                                         ; preds = %while_continue
  %cmp74 = icmp slt i32 %stilltoget.0, 65534, !dbg !2584
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !2586

if.then76:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata i32 %stilltoget.0, metadata !2587, metadata !DIExpression()), !dbg !2452
  br label %if.end78, !dbg !2588

if.else77:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata i32 65534, metadata !2587, metadata !DIExpression()), !dbg !2452
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then76
  %getnow.0 = phi i32 [ %stilltoget.0, %if.then76 ], [ 65534, %if.else77 ], !dbg !2590
  call void @llvm.dbg.value(metadata i32 %getnow.0, metadata !2587, metadata !DIExpression()), !dbg !2452
  %call79 = call i64 @getbulkdata(i32 %handle, i32 %getnow.0, i8* %ptr.0), !dbg !2591
  call void @llvm.dbg.value(metadata i64 %call79, metadata !2594, metadata !DIExpression()), !dbg !2452
  %conv80 = trunc i64 %call79 to i32, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %conv80, metadata !2596, metadata !DIExpression()), !dbg !2452
  %sub = sub nsw i32 %stilltoget.0, %getnow.0, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2571, metadata !DIExpression()), !dbg !2452
  %idx.ext = sext i32 %getnow.0 to i64, !dbg !2598
  %add.ptr = getelementptr inbounds i8, i8* %ptr.0, i64 %idx.ext, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2572, metadata !DIExpression()), !dbg !2452
  br label %while.body, !dbg !2573, !llvm.loop !2599

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2601

while_break:                                      ; preds = %while_break___0, %if.then72
  %call81 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !2602
  br label %return, !dbg !2605

return:                                           ; preds = %while_break, %if.then24, %if.then20, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then20 ], [ -1, %if.then24 ], [ 0, %while_break ], !dbg !2576
  ret i64 %retval.0, !dbg !2606
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @sendrecv_scsimidi2(i32 %handle, i8* %sysexblk, i32 %sysexblksize, i8* %buf) #0 !dbg !2607 {
entry:
  %outbuf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %sysexblk, metadata !2610, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %sysexblksize, metadata !2611, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2612, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.declare(metadata [32 x i8]* %outbuf, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata !4, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata !4, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.declare(metadata !4, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata !4, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.declare(metadata !4, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.declare(metadata !4, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.declare(metadata !4, metadata !2627, metadata !DIExpression()), !dbg !2628
  %idxprom = sext i32 %handle to i64, !dbg !2629
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2629
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2629
  %cmp = icmp eq i32 %0, -1, !dbg !2632
  br i1 %cmp, label %if.then, label %if.else, !dbg !2633

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2634
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0)), !dbg !2638
  br label %return, !dbg !2639

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2640
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2629

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2642
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0)), !dbg !2646
  br label %return, !dbg !2647

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2648
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2650

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2651
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0)), !dbg !2655
  br label %return, !dbg !2656

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp ugt i32 %sysexblksize, 65534, !dbg !2657
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2659

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2660
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.77, i32 0, i32 0)), !dbg !2664
  br label %return, !dbg !2665

if.end13:                                         ; preds = %if.end9
  %conv = trunc i32 %sysexblksize to i8, !dbg !2666
  %conv14 = zext i8 %conv to i32, !dbg !2668
  %and = and i32 %conv14, 255, !dbg !2669
  %conv15 = trunc i32 %and to i8, !dbg !2670
  store i8 %conv15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___13, i64 0, i64 4), align 1, !dbg !2671
  %and16 = and i32 %sysexblksize, 65280, !dbg !2672
  %shr = lshr i32 %and16, 8, !dbg !2673
  %conv17 = trunc i32 %shr to i8, !dbg !2674
  store i8 %conv17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___13, i64 0, i64 3), align 1, !dbg !2675
  %and18 = and i32 %sysexblksize, 16711680, !dbg !2676
  %shr19 = lshr i32 %and18, 16, !dbg !2677
  %conv20 = trunc i32 %shr19 to i8, !dbg !2678
  store i8 %conv20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___13, i64 0, i64 2), align 1, !dbg !2679
  %idxprom21 = sext i32 %handle to i64, !dbg !2680
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom21, !dbg !2680
  %5 = load i32, i32* %arrayidx22, align 4, !dbg !2680
  %call23 = call i32 @send_command(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___13, i32 0, i32 0), i32 1, i8* %sysexblk, i32 %sysexblksize, i8* null, i32 0), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %call23, metadata !2683, metadata !DIExpression()), !dbg !2609
  %cmp24 = icmp slt i32 %call23, 0, !dbg !2684
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !2686

if.then26:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2687
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i32 0, i32 0)), !dbg !2691
  %call28 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !2692
  br label %return, !dbg !2694

if.end29:                                         ; preds = %if.end13
  %idxprom30 = sext i32 %handle to i64, !dbg !2695
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom30, !dbg !2695
  %7 = load i32, i32* %arrayidx31, align 4, !dbg !2695
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i32 0, i32 0, !dbg !2698
  %call32 = call i32 @send_command(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk2___0, i32 0, i32 0), i32 0, i8* null, i32 0, i8* %arraydecay, i32 3), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %call32, metadata !2700, metadata !DIExpression()), !dbg !2609
  %cmp33 = icmp slt i32 %call32, 0, !dbg !2701
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !2703

if.then35:                                        ; preds = %if.end29
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2704
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i32 0, i32 0)), !dbg !2708
  %call37 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !2709
  br label %return, !dbg !2711

if.end38:                                         ; preds = %if.end29
  %arrayidx39 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 0, !dbg !2712
  %9 = load i8, i8* %arrayidx39, align 16, !dbg !2712
  %conv40 = zext i8 %9 to i32, !dbg !2713
  %shl = shl i32 %conv40, 16, !dbg !2714
  %arrayidx41 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 1, !dbg !2715
  %10 = load i8, i8* %arrayidx41, align 1, !dbg !2715
  %conv42 = zext i8 %10 to i32, !dbg !2716
  %shl43 = shl i32 %conv42, 8, !dbg !2717
  %add = add nsw i32 %shl, %shl43, !dbg !2718
  %arrayidx44 = getelementptr inbounds [32 x i8], [32 x i8]* %outbuf, i64 0, i64 2, !dbg !2719
  %11 = load i8, i8* %arrayidx44, align 2, !dbg !2719
  %conv45 = zext i8 %11 to i32, !dbg !2720
  %add46 = add nsw i32 %add, %conv45, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %add46, metadata !2722, metadata !DIExpression()), !dbg !2609
  br label %return, !dbg !2723

return:                                           ; preds = %if.end38, %if.then35, %if.then26, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then26 ], [ -1, %if.then35 ], [ %add46, %if.end38 ], !dbg !2724
  ret i32 %retval.0, !dbg !2725
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @getbulkdata(i32 %handle, i32 %numbytes, i8* %buf) #0 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %numbytes, metadata !2731, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2732, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.declare(metadata !4, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.declare(metadata !4, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata !4, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata !4, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.declare(metadata !4, metadata !2741, metadata !DIExpression()), !dbg !2742
  %idxprom = sext i32 %handle to i64, !dbg !2743
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2743
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2743
  %cmp = icmp eq i32 %0, -1, !dbg !2746
  br i1 %cmp, label %if.then, label %if.else, !dbg !2747

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2748
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0)), !dbg !2752
  br label %return, !dbg !2753

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2754
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2743

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2756
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0)), !dbg !2760
  br label %return, !dbg !2761

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2762
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2764

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2765
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0)), !dbg !2769
  br label %return, !dbg !2770

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp sgt i32 %numbytes, 65536, !dbg !2771
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2773

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2774
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i32 0, i32 0)), !dbg !2778
  br label %return, !dbg !2779

if.end13:                                         ; preds = %if.end9
  %shr = ashr i32 %numbytes, 8, !dbg !2780
  %conv = trunc i32 %shr to i8, !dbg !2782
  store i8 %conv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___0, i64 0, i64 3), align 1, !dbg !2783
  %and = and i32 %numbytes, 255, !dbg !2784
  %conv14 = trunc i32 %and to i8, !dbg !2785
  store i8 %conv14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___0, i64 0, i64 4), align 1, !dbg !2786
  store i8 -128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___0, i64 0, i64 5), align 1, !dbg !2787
  %idxprom15 = sext i32 %handle to i64, !dbg !2788
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom15, !dbg !2788
  %5 = load i32, i32* %arrayidx16, align 4, !dbg !2788
  %call17 = call i32 @send_command(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___0, i32 0, i32 0), i32 0, i8* null, i32 0, i8* %buf, i32 %numbytes), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2791, metadata !DIExpression()), !dbg !2730
  %cmp18 = icmp slt i32 %call17, 0, !dbg !2792
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !2794

if.then20:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2795
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.82, i32 0, i32 0)), !dbg !2799
  %call22 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !2800
  br label %return, !dbg !2802

if.end23:                                         ; preds = %if.end13
  %conv24 = sext i32 %numbytes to i64, !dbg !2803
  br label %return, !dbg !2804

return:                                           ; preds = %if.end23, %if.then20, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then20 ], [ %conv24, %if.end23 ], !dbg !2805
  ret i64 %retval.0, !dbg !2806
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_get_miscdata(i32 %handle, i8* %data) #0 !dbg !2807 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %data, metadata !2812, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.declare(metadata !4, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata !4, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata !4, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata !4, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata !4, metadata !2823, metadata !DIExpression()), !dbg !2824
  %idxprom = sext i32 %handle to i64, !dbg !2825
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2825
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2825
  %cmp = icmp eq i32 %0, -1, !dbg !2828
  br i1 %cmp, label %if.then, label %if.else, !dbg !2829

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2830
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)), !dbg !2834
  br label %return, !dbg !2835

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2836
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2825

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2838
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)), !dbg !2842
  br label %return, !dbg !2843

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2844
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2846

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2847
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)), !dbg !2851
  br label %return, !dbg !2852

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2853
  %call10 = call i32 @sendrecv_scsimidi(i32 %handle, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk1___9, i32 0, i32 0), i32 6, i8* %arraydecay), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2857, metadata !DIExpression()), !dbg !2811
  %cmp11 = icmp sle i32 %call10, 0, !dbg !2858
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2860

if.then12:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2861
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0)), !dbg !2865
  br label %return, !dbg !2866

if.end14:                                         ; preds = %if.end9
  %sub = sub nsw i32 %call10, 6, !dbg !2867
  %div = sdiv i32 %sub, 2, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %div, metadata !2869, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2811
  br label %while.body, !dbg !2871

while.body:                                       ; preds = %if.end17, %if.end14
  %i.0 = phi i32 [ 0, %if.end14 ], [ %inc, %if.end17 ], !dbg !2874
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2870, metadata !DIExpression()), !dbg !2811
  br label %while_continue___0, !dbg !2875

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2875

while_continue:                                   ; preds = %while_continue___0
  %cmp15 = icmp slt i32 %i.0, %div, !dbg !2876
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !2879

if.then16:                                        ; preds = %while_continue
  br label %while_break, !dbg !2880

if.end17:                                         ; preds = %while_continue
  %mul = mul nsw i32 %i.0, 2, !dbg !2882
  %add = add nsw i32 5, %mul, !dbg !2883
  %idxprom18 = sext i32 %add to i64, !dbg !2884
  %arrayidx19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom18, !dbg !2884
  %5 = load i8, i8* %arrayidx19, align 1, !dbg !2884
  %conv = zext i8 %5 to i32, !dbg !2885
  %mul20 = mul nsw i32 %i.0, 2, !dbg !2886
  %add21 = add nsw i32 5, %mul20, !dbg !2887
  %add22 = add nsw i32 %add21, 1, !dbg !2888
  %idxprom23 = sext i32 %add22 to i64, !dbg !2889
  %arrayidx24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %idxprom23, !dbg !2889
  %6 = load i8, i8* %arrayidx24, align 1, !dbg !2889
  %conv25 = zext i8 %6 to i32, !dbg !2890
  %shl = shl i32 %conv25, 4, !dbg !2891
  %or = or i32 %conv, %shl, !dbg !2892
  %conv26 = trunc i32 %or to i8, !dbg !2893
  %idx.ext = sext i32 %i.0 to i64, !dbg !2894
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !2894
  store i8 %conv26, i8* %add.ptr, align 1, !dbg !2895
  %inc = add nsw i32 %i.0, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2870, metadata !DIExpression()), !dbg !2811
  br label %while.body, !dbg !2871, !llvm.loop !2897

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2899

while_break:                                      ; preds = %while_break___0, %if.then16
  br label %return, !dbg !2900

return:                                           ; preds = %while_break, %if.then12, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then12 ], [ %div, %while_break ], !dbg !2874
  ret i32 %retval.0, !dbg !2901
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_put_program(i32 %handle, i32 %prognum, i8* %data, i32 %len) #0 !dbg !2902 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  %resbuf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !2905, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %data, metadata !2906, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %len, metadata !2907, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.declare(metadata [128 x i8]* %resbuf, metadata !2910, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.declare(metadata !4, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata !4, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata !4, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata !4, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata !4, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.declare(metadata !4, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.declare(metadata !4, metadata !2927, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.declare(metadata !4, metadata !2929, metadata !DIExpression()), !dbg !2930
  %idxprom = sext i32 %handle to i64, !dbg !2931
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !2931
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2931
  %cmp = icmp eq i32 %0, -1, !dbg !2934
  br i1 %cmp, label %if.then, label %if.else, !dbg !2935

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2936
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i32 0, i32 0)), !dbg !2940
  br label %return, !dbg !2941

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !2942
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2931

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2944
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i32 0, i32 0)), !dbg !2948
  br label %return, !dbg !2949

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !2950
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2952

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2953
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i32 0, i32 0)), !dbg !2957
  br label %return, !dbg !2958

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !2959
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !2961

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2962
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0)), !dbg !2966
  br label %return, !dbg !2967

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !2968
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2970

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2971
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0)), !dbg !2975
  br label %return, !dbg !2976

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %div = sdiv i32 %prognum, 128, !dbg !2977
  %conv = trunc i32 %div to i8, !dbg !2979
  store i8 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___10, i64 0, i64 6), align 1, !dbg !2980
  %6 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___10, i64 0, i64 6), align 1, !dbg !2981
  %conv19 = zext i8 %6 to i32, !dbg !2982
  %mul = mul nsw i32 %conv19, 128, !dbg !2983
  %sub = sub nsw i32 %prognum, %mul, !dbg !2984
  %conv20 = trunc i32 %sub to i8, !dbg !2985
  store i8 %conv20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___10, i64 0, i64 5), align 1, !dbg !2986
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !2987
  %call21 = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cmdblk1___10, i32 0, i32 0), i32 7) #6, !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()), !dbg !2904
  br label %while.body, !dbg !2991

while.body:                                       ; preds = %if.end25, %if.end18
  %i.0 = phi i32 [ 0, %if.end18 ], [ %inc, %if.end25 ], !dbg !2994
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2990, metadata !DIExpression()), !dbg !2904
  br label %while_continue___0, !dbg !2995

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2995

while_continue:                                   ; preds = %while_continue___0
  %cmp22 = icmp slt i32 %i.0, %len, !dbg !2996
  br i1 %cmp22, label %if.end25, label %if.then24, !dbg !2999

if.then24:                                        ; preds = %while_continue
  br label %while_break, !dbg !3000

if.end25:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !3002
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !3002
  %7 = load i8, i8* %add.ptr, align 1, !dbg !3003
  %conv26 = zext i8 %7 to i32, !dbg !3004
  %and = and i32 %conv26, 15, !dbg !3005
  %conv27 = trunc i32 %and to i8, !dbg !3006
  %mul28 = mul nsw i32 %i.0, 2, !dbg !3007
  %conv29 = sext i32 %mul28 to i64, !dbg !3008
  %add = add i64 7, %conv29, !dbg !3009
  %arrayidx30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add, !dbg !3010
  store i8 %conv27, i8* %arrayidx30, align 1, !dbg !3011
  %idx.ext31 = sext i32 %i.0 to i64, !dbg !3012
  %add.ptr32 = getelementptr inbounds i8, i8* %data, i64 %idx.ext31, !dbg !3012
  %8 = load i8, i8* %add.ptr32, align 1, !dbg !3013
  %conv33 = zext i8 %8 to i32, !dbg !3014
  %and34 = and i32 %conv33, 240, !dbg !3015
  %shr = ashr i32 %and34, 4, !dbg !3016
  %conv35 = trunc i32 %shr to i8, !dbg !3017
  %mul36 = mul nsw i32 %i.0, 2, !dbg !3018
  %conv37 = sext i32 %mul36 to i64, !dbg !3019
  %add38 = add i64 7, %conv37, !dbg !3020
  %add39 = add i64 %add38, 1, !dbg !3021
  %arrayidx40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add39, !dbg !3022
  store i8 %conv35, i8* %arrayidx40, align 1, !dbg !3023
  %inc = add nsw i32 %i.0, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2990, metadata !DIExpression()), !dbg !2904
  br label %while.body, !dbg !2991, !llvm.loop !3025

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3027

while_break:                                      ; preds = %while_break___0, %if.then24
  %mul41 = mul nsw i32 2, %len, !dbg !3028
  %conv42 = sext i32 %mul41 to i64, !dbg !3030
  %add43 = add i64 7, %conv42, !dbg !3031
  %arrayidx44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add43, !dbg !3032
  store i8 -9, i8* %arrayidx44, align 1, !dbg !3033
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !3034
  %mul46 = mul nsw i32 %len, 2, !dbg !3036
  %conv47 = sext i32 %mul46 to i64, !dbg !3037
  %add48 = add i64 7, %conv47, !dbg !3038
  %add49 = add i64 %add48, 1, !dbg !3039
  %conv50 = trunc i64 %add49 to i32, !dbg !3040
  %arraydecay51 = getelementptr inbounds [128 x i8], [128 x i8]* %resbuf, i32 0, i32 0, !dbg !3041
  %call52 = call i32 @sendrecv_scsimidi(i32 %handle, i8* %arraydecay45, i32 %conv50, i8* %arraydecay51), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %call52, metadata !3043, metadata !DIExpression()), !dbg !2904
  %cmp53 = icmp sle i32 %call52, 0, !dbg !3044
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !3046

if.then55:                                        ; preds = %while_break
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3047
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.52, i32 0, i32 0)), !dbg !3051
  br label %return, !dbg !3052

if.end57:                                         ; preds = %while_break
  br label %return, !dbg !3053

return:                                           ; preds = %if.end57, %if.then55, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then55 ], [ 0, %if.end57 ], !dbg !2994
  ret i32 %retval.0, !dbg !3054
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lakai_put_keygroup(i32 %handle, i32 %prognum, i32 %kgrpnum, i8* %data, i32 %len) #0 !dbg !3055 {
entry:
  %finalbuf = alloca [1024 x i8], align 16
  %resbuf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 %prognum, metadata !3060, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 %kgrpnum, metadata !3061, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %data, metadata !3062, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 %len, metadata !3063, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.declare(metadata [1024 x i8]* %finalbuf, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.declare(metadata [128 x i8]* %resbuf, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.declare(metadata !4, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata !4, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.declare(metadata !4, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.declare(metadata !4, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.declare(metadata !4, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.declare(metadata !4, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.declare(metadata !4, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.declare(metadata !4, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.declare(metadata !4, metadata !3084, metadata !DIExpression()), !dbg !3085
  %idxprom = sext i32 %handle to i64, !dbg !3086
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !3086
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3086
  %cmp = icmp eq i32 %0, -1, !dbg !3089
  br i1 %cmp, label %if.then, label %if.else, !dbg !3090

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3091
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0)), !dbg !3095
  br label %return, !dbg !3096

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !3097
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !3086

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3099
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0)), !dbg !3103
  br label %return, !dbg !3104

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !3105
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !3107

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3108
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0)), !dbg !3112
  br label %return, !dbg !3113

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp slt i32 %prognum, 0, !dbg !3114
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !3116

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3117
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0)), !dbg !3121
  br label %return, !dbg !3122

if.else13:                                        ; preds = %if.end9
  %cmp14 = icmp sgt i32 %prognum, 16383, !dbg !3123
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !3125

if.then15:                                        ; preds = %if.else13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3126
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0)), !dbg !3130
  br label %return, !dbg !3131

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %cmp19 = icmp sgt i32 %kgrpnum, 255, !dbg !3132
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !3134

if.then20:                                        ; preds = %if.end18
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3135
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i32 0, i32 0)), !dbg !3139
  br label %return, !dbg !3140

if.end22:                                         ; preds = %if.end18
  %div = sdiv i32 %prognum, 128, !dbg !3141
  %conv = trunc i32 %div to i8, !dbg !3143
  store i8 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___11, i64 0, i64 6), align 1, !dbg !3144
  %7 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___11, i64 0, i64 6), align 1, !dbg !3145
  %conv23 = zext i8 %7 to i32, !dbg !3146
  %mul = mul nsw i32 %conv23, 128, !dbg !3147
  %sub = sub nsw i32 %prognum, %mul, !dbg !3148
  %conv24 = trunc i32 %sub to i8, !dbg !3149
  store i8 %conv24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___11, i64 0, i64 5), align 1, !dbg !3150
  %conv25 = trunc i32 %kgrpnum to i8, !dbg !3151
  store i8 %conv25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___11, i64 0, i64 7), align 1, !dbg !3152
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !3153
  %call26 = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdblk1___11, i32 0, i32 0), i32 8) #6, !dbg !3155
  call void @llvm.dbg.value(metadata i32 0, metadata !3156, metadata !DIExpression()), !dbg !3059
  br label %while.body, !dbg !3157

while.body:                                       ; preds = %if.end30, %if.end22
  %i.0 = phi i32 [ 0, %if.end22 ], [ %inc, %if.end30 ], !dbg !3160
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3156, metadata !DIExpression()), !dbg !3059
  br label %while_continue___0, !dbg !3161

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3161

while_continue:                                   ; preds = %while_continue___0
  %cmp27 = icmp slt i32 %i.0, %len, !dbg !3162
  br i1 %cmp27, label %if.end30, label %if.then29, !dbg !3165

if.then29:                                        ; preds = %while_continue
  br label %while_break, !dbg !3166

if.end30:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !3168
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 %idx.ext, !dbg !3168
  %8 = load i8, i8* %add.ptr, align 1, !dbg !3169
  %conv31 = zext i8 %8 to i32, !dbg !3170
  %and = and i32 %conv31, 15, !dbg !3171
  %conv32 = trunc i32 %and to i8, !dbg !3172
  %mul33 = mul nsw i32 %i.0, 2, !dbg !3173
  %conv34 = sext i32 %mul33 to i64, !dbg !3174
  %add = add i64 8, %conv34, !dbg !3175
  %arrayidx35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add, !dbg !3176
  store i8 %conv32, i8* %arrayidx35, align 1, !dbg !3177
  %idx.ext36 = sext i32 %i.0 to i64, !dbg !3178
  %add.ptr37 = getelementptr inbounds i8, i8* %data, i64 %idx.ext36, !dbg !3178
  %9 = load i8, i8* %add.ptr37, align 1, !dbg !3179
  %conv38 = zext i8 %9 to i32, !dbg !3180
  %and39 = and i32 %conv38, 240, !dbg !3181
  %shr = ashr i32 %and39, 4, !dbg !3182
  %conv40 = trunc i32 %shr to i8, !dbg !3183
  %mul41 = mul nsw i32 %i.0, 2, !dbg !3184
  %conv42 = sext i32 %mul41 to i64, !dbg !3185
  %add43 = add i64 8, %conv42, !dbg !3186
  %add44 = add i64 %add43, 1, !dbg !3187
  %arrayidx45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add44, !dbg !3188
  store i8 %conv40, i8* %arrayidx45, align 1, !dbg !3189
  %inc = add nsw i32 %i.0, 1, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3156, metadata !DIExpression()), !dbg !3059
  br label %while.body, !dbg !3157, !llvm.loop !3191

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3193

while_break:                                      ; preds = %while_break___0, %if.then29
  %mul46 = mul nsw i32 2, %len, !dbg !3194
  %conv47 = sext i32 %mul46 to i64, !dbg !3196
  %add48 = add i64 8, %conv47, !dbg !3197
  %arrayidx49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i64 0, i64 %add48, !dbg !3198
  store i8 -9, i8* %arrayidx49, align 1, !dbg !3199
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %finalbuf, i32 0, i32 0, !dbg !3200
  %mul51 = mul nsw i32 %len, 2, !dbg !3202
  %conv52 = sext i32 %mul51 to i64, !dbg !3203
  %add53 = add i64 8, %conv52, !dbg !3204
  %add54 = add i64 %add53, 1, !dbg !3205
  %conv55 = trunc i64 %add54 to i32, !dbg !3206
  %arraydecay56 = getelementptr inbounds [128 x i8], [128 x i8]* %resbuf, i32 0, i32 0, !dbg !3207
  %call57 = call i32 @sendrecv_scsimidi(i32 %handle, i8* %arraydecay50, i32 %conv55, i8* %arraydecay56), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %call57, metadata !3209, metadata !DIExpression()), !dbg !3059
  %cmp58 = icmp sle i32 %call57, 0, !dbg !3210
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !3212

if.then60:                                        ; preds = %while_break
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3213
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.56, i32 0, i32 0)), !dbg !3217
  br label %return, !dbg !3218

if.end62:                                         ; preds = %while_break
  br label %return, !dbg !3219

return:                                           ; preds = %if.end62, %if.then60, %if.then20, %if.then15, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then15 ], [ -1, %if.then20 ], [ -1, %if.then60 ], [ 0, %if.end62 ], !dbg !3160
  ret i32 %retval.0, !dbg !3220
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @lakai_put_sample(i32 %handle, i32 %samplenum, i8* %buffer, i64 %locat, i64 %len) #0 !dbg !3221 {
entry:
  %statusbuf = alloca [100 x i8], align 16
  %cmdblk1___74 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %handle, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !3224, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !3225, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %locat, metadata !3226, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %len, metadata !3227, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.declare(metadata [100 x i8]* %statusbuf, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata [16 x i8]* %cmdblk1___74, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.declare(metadata !4, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.declare(metadata !4, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.declare(metadata !4, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.declare(metadata !4, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.declare(metadata !4, metadata !3241, metadata !DIExpression()), !dbg !3242
  %div = sdiv i64 %len, 2, !dbg !3243
  %conv = trunc i64 %div to i32, !dbg !3245
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3246, metadata !DIExpression()), !dbg !3223
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 0, !dbg !3247
  store i8 -16, i8* %arrayidx, align 16, !dbg !3248
  %arrayidx1 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 1, !dbg !3247
  store i8 71, i8* %arrayidx1, align 1, !dbg !3248
  %arrayidx2 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 2, !dbg !3247
  store i8 0, i8* %arrayidx2, align 2, !dbg !3248
  %arrayidx3 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 3, !dbg !3247
  store i8 13, i8* %arrayidx3, align 1, !dbg !3248
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 4, !dbg !3247
  store i8 72, i8* %arrayidx4, align 4, !dbg !3248
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 5, !dbg !3247
  store i8 0, i8* %arrayidx5, align 1, !dbg !3248
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 6, !dbg !3247
  store i8 0, i8* %arrayidx6, align 2, !dbg !3248
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 7, !dbg !3247
  store i8 0, i8* %arrayidx7, align 1, !dbg !3248
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 8, !dbg !3247
  store i8 0, i8* %arrayidx8, align 8, !dbg !3248
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 9, !dbg !3247
  store i8 0, i8* %arrayidx9, align 1, !dbg !3248
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 10, !dbg !3247
  store i8 0, i8* %arrayidx10, align 2, !dbg !3249
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 11, !dbg !3247
  store i8 0, i8* %arrayidx11, align 1, !dbg !3249
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 12, !dbg !3247
  store i8 0, i8* %arrayidx12, align 4, !dbg !3249
  %arrayidx13 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 13, !dbg !3247
  store i8 0, i8* %arrayidx13, align 1, !dbg !3249
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 14, !dbg !3247
  store i8 0, i8* %arrayidx14, align 2, !dbg !3249
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 15, !dbg !3247
  store i8 -9, i8* %arrayidx15, align 1, !dbg !3249
  %idxprom = sext i32 %handle to i64, !dbg !3250
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !3250
  %0 = load i32, i32* %arrayidx16, align 4, !dbg !3250
  %cmp = icmp eq i32 %0, -1, !dbg !3252
  br i1 %cmp, label %if.then, label %if.else, !dbg !3253

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3254
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0)), !dbg !3258
  br label %return, !dbg !3259

if.else:                                          ; preds = %entry
  %cmp18 = icmp slt i32 %handle, 0, !dbg !3260
  br i1 %cmp18, label %if.then20, label %if.else22, !dbg !3250

if.then20:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3262
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0)), !dbg !3266
  br label %return, !dbg !3267

if.else22:                                        ; preds = %if.else
  %cmp23 = icmp sgt i32 %handle, 16, !dbg !3268
  br i1 %cmp23, label %if.then25, label %if.end, !dbg !3270

if.then25:                                        ; preds = %if.else22
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3271
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0)), !dbg !3275
  br label %return, !dbg !3276

if.end:                                           ; preds = %if.else22
  br label %if.end27

if.end27:                                         ; preds = %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  %and = and i32 %samplenum, 127, !dbg !3277
  %conv29 = trunc i32 %and to i8, !dbg !3279
  %arrayidx30 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 5, !dbg !3280
  store i8 %conv29, i8* %arrayidx30, align 1, !dbg !3281
  %shr = ashr i32 %samplenum, 7, !dbg !3282
  %and31 = and i32 %shr, 127, !dbg !3283
  %conv32 = trunc i32 %and31 to i8, !dbg !3284
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 6, !dbg !3285
  store i8 %conv32, i8* %arrayidx33, align 2, !dbg !3286
  %and34 = and i64 %locat, 127, !dbg !3287
  %conv35 = trunc i64 %and34 to i8, !dbg !3288
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 7, !dbg !3289
  store i8 %conv35, i8* %arrayidx36, align 1, !dbg !3290
  %shr37 = ashr i64 %locat, 7, !dbg !3291
  %and38 = and i64 %shr37, 127, !dbg !3292
  %conv39 = trunc i64 %and38 to i8, !dbg !3293
  %arrayidx40 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 8, !dbg !3294
  store i8 %conv39, i8* %arrayidx40, align 8, !dbg !3295
  %shr41 = ashr i64 %locat, 14, !dbg !3296
  %and42 = and i64 %shr41, 127, !dbg !3297
  %conv43 = trunc i64 %and42 to i8, !dbg !3298
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 9, !dbg !3299
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !3300
  %shr45 = ashr i64 %locat, 21, !dbg !3301
  %and46 = and i64 %shr45, 127, !dbg !3302
  %conv47 = trunc i64 %and46 to i8, !dbg !3303
  %arrayidx48 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 10, !dbg !3304
  store i8 %conv47, i8* %arrayidx48, align 2, !dbg !3305
  %and49 = and i32 %conv, 127, !dbg !3306
  %conv50 = trunc i32 %and49 to i8, !dbg !3307
  %arrayidx51 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 11, !dbg !3308
  store i8 %conv50, i8* %arrayidx51, align 1, !dbg !3309
  %shr52 = ashr i32 %conv, 7, !dbg !3310
  %and53 = and i32 %shr52, 127, !dbg !3311
  %conv54 = trunc i32 %and53 to i8, !dbg !3312
  %arrayidx55 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 12, !dbg !3313
  store i8 %conv54, i8* %arrayidx55, align 4, !dbg !3314
  %shr56 = ashr i32 %conv, 14, !dbg !3315
  %and57 = and i32 %shr56, 127, !dbg !3316
  %conv58 = trunc i32 %and57 to i8, !dbg !3317
  %arrayidx59 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 13, !dbg !3318
  store i8 %conv58, i8* %arrayidx59, align 1, !dbg !3319
  %shr60 = ashr i32 %conv, 21, !dbg !3320
  %and61 = and i32 %shr60, 127, !dbg !3321
  %conv62 = trunc i32 %and61 to i8, !dbg !3322
  %arrayidx63 = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i64 0, i64 14, !dbg !3323
  store i8 %conv62, i8* %arrayidx63, align 2, !dbg !3324
  %call64 = call i32 @lakai_setmode(i32 %handle, i32 2), !dbg !3325
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %cmdblk1___74, i32 0, i32 0, !dbg !3327
  %arraydecay65 = getelementptr inbounds [100 x i8], [100 x i8]* %statusbuf, i32 0, i32 0, !dbg !3329
  %call66 = call i32 @sendrecv_scsimidi2(i32 %handle, i8* %arraydecay, i32 16, i8* %arraydecay65), !dbg !3330
  call void @llvm.dbg.value(metadata i32 %call66, metadata !3331, metadata !DIExpression()), !dbg !3223
  %call67 = call i32 @usleep(i32 100000), !dbg !3332
  %conv68 = trunc i64 %len to i32, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %conv68, metadata !3335, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !3336, metadata !DIExpression()), !dbg !3223
  br label %while.body, !dbg !3337

while.body:                                       ; preds = %if.end77, %if.end28
  %stilltoput.0 = phi i32 [ %conv68, %if.end28 ], [ %sub, %if.end77 ], !dbg !3340
  %ptr.0 = phi i8* [ %buffer, %if.end28 ], [ %add.ptr, %if.end77 ], !dbg !3340
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !3336, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %stilltoput.0, metadata !3335, metadata !DIExpression()), !dbg !3223
  br label %while_continue___0, !dbg !3341

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3341

while_continue:                                   ; preds = %while_continue___0
  %cmp69 = icmp sgt i32 %stilltoput.0, 0, !dbg !3342
  br i1 %cmp69, label %if.end72, label %if.then71, !dbg !3345

if.then71:                                        ; preds = %while_continue
  br label %while_break, !dbg !3346

if.end72:                                         ; preds = %while_continue
  %cmp73 = icmp slt i32 %stilltoput.0, 65534, !dbg !3348
  br i1 %cmp73, label %if.then75, label %if.else76, !dbg !3350

if.then75:                                        ; preds = %if.end72
  call void @llvm.dbg.value(metadata i32 %stilltoput.0, metadata !3351, metadata !DIExpression()), !dbg !3223
  br label %if.end77, !dbg !3352

if.else76:                                        ; preds = %if.end72
  call void @llvm.dbg.value(metadata i32 65534, metadata !3351, metadata !DIExpression()), !dbg !3223
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.then75
  %putnow.0 = phi i32 [ %stilltoput.0, %if.then75 ], [ 65534, %if.else76 ], !dbg !3354
  call void @llvm.dbg.value(metadata i32 %putnow.0, metadata !3351, metadata !DIExpression()), !dbg !3223
  %call78 = call i64 @putbulkdata(i32 %handle, i32 %putnow.0, i8* %ptr.0), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %call78, metadata !3358, metadata !DIExpression()), !dbg !3223
  %conv79 = trunc i64 %call78 to i32, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %conv79, metadata !3360, metadata !DIExpression()), !dbg !3223
  %sub = sub nsw i32 %stilltoput.0, %putnow.0, !dbg !3361
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3335, metadata !DIExpression()), !dbg !3223
  %idx.ext = sext i32 %putnow.0 to i64, !dbg !3362
  %add.ptr = getelementptr inbounds i8, i8* %ptr.0, i64 %idx.ext, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3336, metadata !DIExpression()), !dbg !3223
  br label %while.body, !dbg !3337, !llvm.loop !3363

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3365

while_break:                                      ; preds = %while_break___0, %if.then71
  %call80 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !3366
  br label %return, !dbg !3369

return:                                           ; preds = %while_break, %if.then25, %if.then20, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then20 ], [ -1, %if.then25 ], [ 0, %while_break ], !dbg !3340
  ret i64 %retval.0, !dbg !3370
}

declare i32 @usleep(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @putbulkdata(i32 %handle, i32 %numbytes, i8* %buf) #0 !dbg !3371 {
entry:
  call void @llvm.dbg.value(metadata i32 %handle, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %numbytes, metadata !3374, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3375, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata !4, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata !4, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata !4, metadata !3380, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.declare(metadata !4, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.declare(metadata !4, metadata !3384, metadata !DIExpression()), !dbg !3385
  %idxprom = sext i32 %handle to i64, !dbg !3386
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom, !dbg !3386
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3386
  %cmp = icmp eq i32 %0, -1, !dbg !3389
  br i1 %cmp, label %if.then, label %if.else, !dbg !3390

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3391
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0)), !dbg !3395
  br label %return, !dbg !3396

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %handle, 0, !dbg !3397
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !3386

if.then2:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3399
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0)), !dbg !3403
  br label %return, !dbg !3404

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %handle, 16, !dbg !3405
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !3407

if.then6:                                         ; preds = %if.else4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3408
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0)), !dbg !3412
  br label %return, !dbg !3413

if.end:                                           ; preds = %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  %cmp10 = icmp sgt i32 %numbytes, 65536, !dbg !3414
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !3416

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3417
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.84, i32 0, i32 0)), !dbg !3421
  br label %return, !dbg !3422

if.end13:                                         ; preds = %if.end9
  %shr = ashr i32 %numbytes, 8, !dbg !3423
  %conv = trunc i32 %shr to i8, !dbg !3425
  store i8 %conv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___1, i64 0, i64 3), align 1, !dbg !3426
  %and = and i32 %numbytes, 255, !dbg !3427
  %conv14 = trunc i32 %and to i8, !dbg !3428
  store i8 %conv14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___1, i64 0, i64 4), align 1, !dbg !3429
  store i8 -128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___1, i64 0, i64 5), align 1, !dbg !3430
  %idxprom15 = sext i32 %handle to i64, !dbg !3431
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @fhandles, i64 0, i64 %idxprom15, !dbg !3431
  %5 = load i32, i32* %arrayidx16, align 4, !dbg !3431
  %call17 = call i32 @send_command(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @cmdblk___1, i32 0, i32 0), i32 1, i8* %buf, i32 %numbytes, i8* null, i32 0), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %call17, metadata !3434, metadata !DIExpression()), !dbg !3373
  %cmp18 = icmp slt i32 %call17, 0, !dbg !3435
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !3437

if.then20:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3438
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0)), !dbg !3442
  %call22 = call i32 @lakai_setmode(i32 %handle, i32 0), !dbg !3443
  br label %return, !dbg !3445

if.end23:                                         ; preds = %if.end13
  %conv24 = sext i32 %numbytes to i64, !dbg !3446
  br label %return, !dbg !3447

return:                                           ; preds = %if.end23, %if.then20, %if.then11, %if.then6, %if.then2, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then11 ], [ -1, %if.then20 ], [ %conv24, %if.end23 ], !dbg !3448
  ret i64 %retval.0, !dbg !3449
}

; Function Attrs: noinline nounwind ssp uwtable
define void @lakai_asciitoakai(i8* %src, i8* %dst, i32 %len) #0 !dbg !3450 {
entry:
  call void @llvm.dbg.value(metadata i8* %src, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8* %dst, metadata !3453, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %len, metadata !3454, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 0, metadata !3455, metadata !DIExpression()), !dbg !3452
  br label %while.body, !dbg !3456

while.body:                                       ; preds = %if.end66, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end66 ], !dbg !3460
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3455, metadata !DIExpression()), !dbg !3452
  br label %while_continue___0, !dbg !3461

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3461

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %len, !dbg !3462
  br i1 %cmp, label %if.end, label %if.then, !dbg !3465

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3466

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !3468
  %add.ptr = getelementptr inbounds i8, i8* %src, i64 %idx.ext, !dbg !3468
  %0 = load i8, i8* %add.ptr, align 1, !dbg !3469
  call void @llvm.dbg.value(metadata i8 %0, metadata !3470, metadata !DIExpression()), !dbg !3452
  %conv = zext i8 %0 to i32, !dbg !3471
  %cmp1 = icmp sge i32 %conv, 48, !dbg !3473
  br i1 %cmp1, label %if.then3, label %if.else11, !dbg !3474

if.then3:                                         ; preds = %if.end
  %conv4 = zext i8 %0 to i32, !dbg !3475
  %cmp5 = icmp sle i32 %conv4, 57, !dbg !3478
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3479

if.then7:                                         ; preds = %if.then3
  %conv8 = zext i8 %0 to i32, !dbg !3480
  %sub = sub nsw i32 %conv8, 48, !dbg !3482
  %conv9 = trunc i32 %sub to i8, !dbg !3483
  call void @llvm.dbg.value(metadata i8 %conv9, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end10, !dbg !3485

if.else:                                          ; preds = %if.then3
  br label %_L___1, !dbg !3486

if.end10:                                         ; preds = %if.then7
  br label %if.end66, !dbg !3488

if.else11:                                        ; preds = %if.end
  br label %_L___1, !dbg !3488

_L___1:                                           ; preds = %if.else11, %if.else
  %conv12 = zext i8 %0 to i32, !dbg !3489
  %cmp13 = icmp sge i32 %conv12, 65, !dbg !3491
  br i1 %cmp13, label %if.then15, label %if.else25, !dbg !3492

if.then15:                                        ; preds = %_L___1
  %conv16 = zext i8 %0 to i32, !dbg !3493
  %cmp17 = icmp sle i32 %conv16, 90, !dbg !3496
  br i1 %cmp17, label %if.then19, label %if.else23, !dbg !3497

if.then19:                                        ; preds = %if.then15
  %conv20 = zext i8 %0 to i32, !dbg !3498
  %sub21 = sub nsw i32 %conv20, 54, !dbg !3500
  %conv22 = trunc i32 %sub21 to i8, !dbg !3501
  call void @llvm.dbg.value(metadata i8 %conv22, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end24, !dbg !3502

if.else23:                                        ; preds = %if.then15
  br label %_L___0, !dbg !3503

if.end24:                                         ; preds = %if.then19
  br label %if.end65, !dbg !3505

if.else25:                                        ; preds = %_L___1
  br label %_L___0, !dbg !3505

_L___0:                                           ; preds = %if.else25, %if.else23
  %conv26 = zext i8 %0 to i32, !dbg !3506
  %cmp27 = icmp sge i32 %conv26, 97, !dbg !3508
  br i1 %cmp27, label %if.then29, label %if.else39, !dbg !3509

if.then29:                                        ; preds = %_L___0
  %conv30 = zext i8 %0 to i32, !dbg !3510
  %cmp31 = icmp sle i32 %conv30, 122, !dbg !3513
  br i1 %cmp31, label %if.then33, label %if.else37, !dbg !3514

if.then33:                                        ; preds = %if.then29
  %conv34 = zext i8 %0 to i32, !dbg !3515
  %sub35 = sub nsw i32 %conv34, 86, !dbg !3517
  %conv36 = trunc i32 %sub35 to i8, !dbg !3518
  call void @llvm.dbg.value(metadata i8 %conv36, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end38, !dbg !3519

if.else37:                                        ; preds = %if.then29
  br label %_L, !dbg !3520

if.end38:                                         ; preds = %if.then33
  br label %if.end64, !dbg !3522

if.else39:                                        ; preds = %_L___0
  br label %_L, !dbg !3522

_L:                                               ; preds = %if.else39, %if.else37
  %conv40 = zext i8 %0 to i32, !dbg !3523
  %cmp41 = icmp eq i32 %conv40, 35, !dbg !3525
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !3526

if.then43:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i8 37, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end63, !dbg !3527

if.else44:                                        ; preds = %_L
  %conv45 = zext i8 %0 to i32, !dbg !3529
  %cmp46 = icmp eq i32 %conv45, 43, !dbg !3531
  br i1 %cmp46, label %if.then48, label %if.else49, !dbg !3532

if.then48:                                        ; preds = %if.else44
  call void @llvm.dbg.value(metadata i8 38, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end62, !dbg !3533

if.else49:                                        ; preds = %if.else44
  %conv50 = zext i8 %0 to i32, !dbg !3535
  %cmp51 = icmp eq i32 %conv50, 45, !dbg !3537
  br i1 %cmp51, label %if.then53, label %if.else54, !dbg !3538

if.then53:                                        ; preds = %if.else49
  call void @llvm.dbg.value(metadata i8 39, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end61, !dbg !3539

if.else54:                                        ; preds = %if.else49
  %conv55 = zext i8 %0 to i32, !dbg !3541
  %cmp56 = icmp eq i32 %conv55, 46, !dbg !3543
  br i1 %cmp56, label %if.then58, label %if.else59, !dbg !3544

if.then58:                                        ; preds = %if.else54
  call void @llvm.dbg.value(metadata i8 40, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end60, !dbg !3545

if.else59:                                        ; preds = %if.else54
  call void @llvm.dbg.value(metadata i8 38, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  %val_out.0 = phi i8 [ 40, %if.then58 ], [ 38, %if.else59 ], !dbg !3547
  call void @llvm.dbg.value(metadata i8 %val_out.0, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then53
  %val_out.1 = phi i8 [ 39, %if.then53 ], [ %val_out.0, %if.end60 ], !dbg !3548
  call void @llvm.dbg.value(metadata i8 %val_out.1, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then48
  %val_out.2 = phi i8 [ 38, %if.then48 ], [ %val_out.1, %if.end61 ], !dbg !3549
  call void @llvm.dbg.value(metadata i8 %val_out.2, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then43
  %val_out.3 = phi i8 [ 37, %if.then43 ], [ %val_out.2, %if.end62 ], !dbg !3550
  call void @llvm.dbg.value(metadata i8 %val_out.3, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end38
  %val_out.4 = phi i8 [ %conv36, %if.end38 ], [ %val_out.3, %if.end63 ], !dbg !3551
  call void @llvm.dbg.value(metadata i8 %val_out.4, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end24
  %val_out.5 = phi i8 [ %conv22, %if.end24 ], [ %val_out.4, %if.end64 ], !dbg !3552
  call void @llvm.dbg.value(metadata i8 %val_out.5, metadata !3484, metadata !DIExpression()), !dbg !3452
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end10
  %val_out.6 = phi i8 [ %conv9, %if.end10 ], [ %val_out.5, %if.end65 ], !dbg !3553
  call void @llvm.dbg.value(metadata i8 %val_out.6, metadata !3484, metadata !DIExpression()), !dbg !3452
  %idx.ext67 = sext i32 %i.0 to i64, !dbg !3554
  %add.ptr68 = getelementptr inbounds i8, i8* %dst, i64 %idx.ext67, !dbg !3554
  store i8 %val_out.6, i8* %add.ptr68, align 1, !dbg !3555
  %inc = add nsw i32 %i.0, 1, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3455, metadata !DIExpression()), !dbg !3452
  br label %while.body, !dbg !3456, !llvm.loop !3557

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3559

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !3560
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @do_send_sample(i32 %hd1, i8* %fname, i32 %sample_idx) #0 !dbg !3561 {
entry:
  %hdrbuf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %hd1, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %fname, metadata !3567, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %sample_idx, metadata !3568, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.declare(metadata [1024 x i8]* %hdrbuf, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.declare(metadata !4, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.declare(metadata !4, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.declare(metadata !4, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.declare(metadata !4, metadata !3577, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.declare(metadata !4, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.declare(metadata !4, metadata !3581, metadata !DIExpression()), !dbg !3582
  %call = call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)), !dbg !3583
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !3587, metadata !DIExpression()), !dbg !3566
  %tobool = icmp ne %struct._IO_FILE* %call, null, !dbg !3588
  br i1 %tobool, label %if.end, label %if.then, !dbg !3590

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3591
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.59, i32 0, i32 0), i8* %fname), !dbg !3595
  br label %return, !dbg !3596

if.end:                                           ; preds = %entry
  %call2 = call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 2), !dbg !3597
  %call3 = call i64 @ftell(%struct._IO_FILE* %call), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %call3, metadata !3602, metadata !DIExpression()), !dbg !3566
  %conv = trunc i64 %call3 to i32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3604, metadata !DIExpression()), !dbg !3566
  %call4 = call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 0), !dbg !3605
  %call5 = call noalias i8* @malloc(i32 %conv) #6, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %call5, metadata !3609, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %call5, metadata !3610, metadata !DIExpression()), !dbg !3566
  %tobool6 = icmp ne i8* %call5, null, !dbg !3611
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !3613

if.then7:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3614
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0)), !dbg !3618
  %call9 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !3619
  br label %return, !dbg !3621

if.end10:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3622
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i32 0, i32 0), i32 %sample_idx, i8* %fname, i32 %conv), !dbg !3625
  %call12 = call i32 @fread(i8* %call5, i32 %conv, i32 1, %struct._IO_FILE* %call), !dbg !3626
  %call13 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !3628
  %call14 = call i32 @lakai_put_sample_header(i32 %hd1, i32 255, i8* %call5, i32 192), !dbg !3630
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %hdrbuf, i32 0, i32 0, !dbg !3632
  %call15 = call i32 @lakai_get_sample_header(i32 %hd1, i32 %sample_idx, i8* %arraydecay), !dbg !3634
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3635, metadata !DIExpression()), !dbg !3566
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %hdrbuf, i64 0, i64 25, !dbg !3636
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3636
  %conv16 = zext i8 %3 to i32, !dbg !3637
  %mul = mul nsw i32 %conv16, 16777216, !dbg !3638
  %arrayidx17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %hdrbuf, i64 0, i64 24, !dbg !3639
  %4 = load i8, i8* %arrayidx17, align 8, !dbg !3639
  %conv18 = zext i8 %4 to i32, !dbg !3640
  %mul19 = mul nsw i32 %conv18, 65536, !dbg !3641
  %add = add nsw i32 %mul, %mul19, !dbg !3642
  %arrayidx20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %hdrbuf, i64 0, i64 23, !dbg !3643
  %5 = load i8, i8* %arrayidx20, align 1, !dbg !3643
  %conv21 = zext i8 %5 to i32, !dbg !3644
  %mul22 = mul nsw i32 %conv21, 256, !dbg !3645
  %add23 = add nsw i32 %add, %mul22, !dbg !3646
  %arrayidx24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %hdrbuf, i64 0, i64 22, !dbg !3647
  %6 = load i8, i8* %arrayidx24, align 2, !dbg !3647
  %conv25 = zext i8 %6 to i32, !dbg !3648
  %add26 = add nsw i32 %add23, %conv25, !dbg !3649
  %conv27 = sext i32 %add26 to i64, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %conv27, metadata !3651, metadata !DIExpression()), !dbg !3566
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 192, !dbg !3652
  %sub = sub nsw i32 %conv, 192, !dbg !3654
  %conv28 = sext i32 %sub to i64, !dbg !3655
  %call29 = call i64 @lakai_put_sample(i32 %hd1, i32 %sample_idx, i8* %add.ptr, i64 0, i64 %conv28), !dbg !3656
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3657
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)), !dbg !3659
  call void @free(i8* %call5) #6, !dbg !3660
  br label %return, !dbg !3662

return:                                           ; preds = %if.end10, %if.then7, %if.then
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.then7 ], [ 0, %if.then ], !dbg !3663
  ret i32 %retval.0, !dbg !3664
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @do_send_program(i32 %hd1, i8* %fname, i32 %prog_idx) #0 !dbg !3665 {
entry:
  call void @llvm.dbg.value(metadata i32 %hd1, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %fname, metadata !3668, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %prog_idx, metadata !3669, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.declare(metadata !4, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.declare(metadata !4, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.declare(metadata !4, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.declare(metadata !4, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.declare(metadata !4, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.declare(metadata !4, metadata !3680, metadata !DIExpression()), !dbg !3681
  %call = call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)), !dbg !3682
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !3686, metadata !DIExpression()), !dbg !3667
  %tobool = icmp ne %struct._IO_FILE* %call, null, !dbg !3687
  br i1 %tobool, label %if.end, label %if.then, !dbg !3689

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3690
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.63, i32 0, i32 0), i8* %fname), !dbg !3694
  br label %return, !dbg !3695

if.end:                                           ; preds = %entry
  %call2 = call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 2), !dbg !3696
  %call3 = call i64 @ftell(%struct._IO_FILE* %call), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %call3, metadata !3701, metadata !DIExpression()), !dbg !3667
  %conv = trunc i64 %call3 to i32, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3703, metadata !DIExpression()), !dbg !3667
  %call4 = call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 0), !dbg !3704
  %call5 = call noalias i8* @malloc(i32 %conv) #6, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %call5, metadata !3708, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %call5, metadata !3709, metadata !DIExpression()), !dbg !3667
  %tobool6 = icmp ne i8* %call5, null, !dbg !3710
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !3712

if.then7:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3713
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.64, i32 0, i32 0)), !dbg !3717
  %call9 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !3718
  br label %return, !dbg !3720

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @fread(i8* %call5, i32 %conv, i32 1, %struct._IO_FILE* %call), !dbg !3721
  %call12 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !3724
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 42, !dbg !3726
  %2 = load i8, i8* %add.ptr, align 1, !dbg !3727
  %conv13 = zext i8 %2 to i32, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %conv13, metadata !3729, metadata !DIExpression()), !dbg !3667
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3730
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.65, i32 0, i32 0), i32 %prog_idx, i8* %fname, i32 %conv13), !dbg !3732
  %add.ptr15 = getelementptr inbounds i8, i8* %call5, i64 42, !dbg !3733
  store i8 1, i8* %add.ptr15, align 1, !dbg !3734
  %call16 = call i32 @lakai_put_program(i32 %hd1, i32 254, i8* %call5, i32 192), !dbg !3735
  call void @llvm.dbg.value(metadata i32 0, metadata !3737, metadata !DIExpression()), !dbg !3667
  br label %while.body, !dbg !3738

while.body:                                       ; preds = %if.end19, %if.end10
  %i.0 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end19 ], !dbg !3741
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3737, metadata !DIExpression()), !dbg !3667
  br label %while_continue___0, !dbg !3742

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3742

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %conv13, !dbg !3743
  br i1 %cmp, label %if.end19, label %if.then18, !dbg !3746

if.then18:                                        ; preds = %while_continue
  br label %while_break, !dbg !3747

if.end19:                                         ; preds = %while_continue
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3749
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i32 %i.0), !dbg !3752
  %add = add nsw i32 %prog_idx, 1, !dbg !3753
  %add21 = add nsw i32 %i.0, 1, !dbg !3755
  %mul = mul nsw i32 %add21, 192, !dbg !3756
  %idx.ext = sext i32 %mul to i64, !dbg !3757
  %add.ptr22 = getelementptr inbounds i8, i8* %call5, i64 %idx.ext, !dbg !3757
  %call23 = call i32 @lakai_put_keygroup(i32 %hd1, i32 %add, i32 %i.0, i8* %add.ptr22, i32 192), !dbg !3758
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3759
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)), !dbg !3761
  %inc = add nsw i32 %i.0, 1, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3737, metadata !DIExpression()), !dbg !3667
  br label %while.body, !dbg !3738, !llvm.loop !3763

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3765

while_break:                                      ; preds = %while_break___0, %if.then18
  call void @free(i8* %call5) #6, !dbg !3766
  br label %return, !dbg !3769

return:                                           ; preds = %while_break, %if.then7, %if.then
  %retval.0 = phi i32 [ 1, %while_break ], [ 0, %if.then7 ], [ 0, %if.then ], !dbg !3741
  ret i32 %retval.0, !dbg !3770
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal void @hexprint(i8* %buf, i32 %len) #0 !dbg !3771 {
entry:
  %hexlist = alloca [17 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %len, metadata !3776, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata [17 x i8]* %hexlist, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.declare(metadata !4, metadata !3782, metadata !DIExpression()), !dbg !3783
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 0, !dbg !3784
  store i8 48, i8* %arrayidx, align 16, !dbg !3786
  %arrayidx1 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 1, !dbg !3784
  store i8 49, i8* %arrayidx1, align 1, !dbg !3786
  %arrayidx2 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 2, !dbg !3784
  store i8 50, i8* %arrayidx2, align 2, !dbg !3786
  %arrayidx3 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 3, !dbg !3784
  store i8 51, i8* %arrayidx3, align 1, !dbg !3786
  %arrayidx4 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 4, !dbg !3784
  store i8 52, i8* %arrayidx4, align 4, !dbg !3786
  %arrayidx5 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 5, !dbg !3784
  store i8 53, i8* %arrayidx5, align 1, !dbg !3786
  %arrayidx6 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 6, !dbg !3784
  store i8 54, i8* %arrayidx6, align 2, !dbg !3786
  %arrayidx7 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 7, !dbg !3784
  store i8 55, i8* %arrayidx7, align 1, !dbg !3786
  %arrayidx8 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 8, !dbg !3784
  store i8 56, i8* %arrayidx8, align 8, !dbg !3786
  %arrayidx9 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 9, !dbg !3784
  store i8 57, i8* %arrayidx9, align 1, !dbg !3786
  %arrayidx10 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 10, !dbg !3784
  store i8 65, i8* %arrayidx10, align 2, !dbg !3787
  %arrayidx11 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 11, !dbg !3784
  store i8 66, i8* %arrayidx11, align 1, !dbg !3787
  %arrayidx12 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 12, !dbg !3784
  store i8 67, i8* %arrayidx12, align 4, !dbg !3787
  %arrayidx13 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 13, !dbg !3784
  store i8 68, i8* %arrayidx13, align 1, !dbg !3787
  %arrayidx14 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 14, !dbg !3784
  store i8 69, i8* %arrayidx14, align 2, !dbg !3787
  %arrayidx15 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 15, !dbg !3784
  store i8 70, i8* %arrayidx15, align 1, !dbg !3787
  %arrayidx16 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 16, !dbg !3784
  store i8 0, i8* %arrayidx16, align 16, !dbg !3787
  call void @llvm.dbg.value(metadata i16 0, metadata !3788, metadata !DIExpression()), !dbg !3775
  br label %while.body, !dbg !3789

while.body:                                       ; preds = %if.end77, %entry
  %i.0 = phi i16 [ 0, %entry ], [ %conv80, %if.end77 ], !dbg !3792
  call void @llvm.dbg.value(metadata i16 %i.0, metadata !3788, metadata !DIExpression()), !dbg !3775
  br label %while_continue___0, !dbg !3793

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3793

while_continue:                                   ; preds = %while_continue___0
  %conv = zext i16 %i.0 to i32, !dbg !3794
  %cmp = icmp slt i32 %conv, %len, !dbg !3797
  br i1 %cmp, label %if.end, label %if.then, !dbg !3798

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3799

if.end:                                           ; preds = %while_continue
  %conv18 = zext i16 %i.0 to i32, !dbg !3801
  %rem = srem i32 %conv18, 16, !dbg !3803
  %cmp19 = icmp eq i32 %rem, 0, !dbg !3804
  br i1 %cmp19, label %if.then21, label %if.end46, !dbg !3805

if.then21:                                        ; preds = %if.end
  %conv22 = zext i16 %i.0 to i32, !dbg !3806
  %shr = ashr i32 %conv22, 12, !dbg !3810
  %and = and i32 %shr, 15, !dbg !3811
  %idxprom = sext i32 %and to i64, !dbg !3812
  %arrayidx23 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom, !dbg !3812
  %0 = load i8, i8* %arrayidx23, align 1, !dbg !3812
  %conv24 = zext i8 %0 to i32, !dbg !3813
  %call = call i32 @putchar(i32 %conv24), !dbg !3814
  %conv25 = zext i16 %i.0 to i32, !dbg !3815
  %shr26 = ashr i32 %conv25, 8, !dbg !3817
  %and27 = and i32 %shr26, 15, !dbg !3818
  %idxprom28 = sext i32 %and27 to i64, !dbg !3819
  %arrayidx29 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom28, !dbg !3819
  %1 = load i8, i8* %arrayidx29, align 1, !dbg !3819
  %conv30 = zext i8 %1 to i32, !dbg !3820
  %call31 = call i32 @putchar(i32 %conv30), !dbg !3821
  %conv32 = zext i16 %i.0 to i32, !dbg !3822
  %shr33 = ashr i32 %conv32, 4, !dbg !3824
  %and34 = and i32 %shr33, 15, !dbg !3825
  %idxprom35 = sext i32 %and34 to i64, !dbg !3826
  %arrayidx36 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom35, !dbg !3826
  %2 = load i8, i8* %arrayidx36, align 1, !dbg !3826
  %conv37 = zext i8 %2 to i32, !dbg !3827
  %call38 = call i32 @putchar(i32 %conv37), !dbg !3828
  %conv39 = zext i16 %i.0 to i32, !dbg !3829
  %and40 = and i32 %conv39, 15, !dbg !3831
  %idxprom41 = sext i32 %and40 to i64, !dbg !3832
  %arrayidx42 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom41, !dbg !3832
  %3 = load i8, i8* %arrayidx42, align 1, !dbg !3832
  %conv43 = zext i8 %3 to i32, !dbg !3833
  %call44 = call i32 @putchar(i32 %conv43), !dbg !3834
  %call45 = call i32 @putchar(i32 58), !dbg !3835
  br label %if.end46, !dbg !3837

if.end46:                                         ; preds = %if.then21, %if.end
  %conv47 = zext i16 %i.0 to i32, !dbg !3838
  %rem48 = srem i32 %conv47, 8, !dbg !3840
  %cmp49 = icmp eq i32 %rem48, 0, !dbg !3841
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !3842

if.then51:                                        ; preds = %if.end46
  %call52 = call i32 @putchar(i32 32), !dbg !3843
  br label %if.end53, !dbg !3847

if.end53:                                         ; preds = %if.then51, %if.end46
  %conv54 = zext i16 %i.0 to i32, !dbg !3848
  %idx.ext = sext i32 %conv54 to i64, !dbg !3851
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext, !dbg !3851
  %4 = load i8, i8* %add.ptr, align 1, !dbg !3852
  %conv55 = zext i8 %4 to i32, !dbg !3853
  %shr56 = ashr i32 %conv55, 4, !dbg !3854
  %idxprom57 = sext i32 %shr56 to i64, !dbg !3855
  %arrayidx58 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom57, !dbg !3855
  %5 = load i8, i8* %arrayidx58, align 1, !dbg !3855
  %conv59 = zext i8 %5 to i32, !dbg !3856
  %call60 = call i32 @putchar(i32 %conv59), !dbg !3857
  %conv61 = zext i16 %i.0 to i32, !dbg !3858
  %idx.ext62 = sext i32 %conv61 to i64, !dbg !3860
  %add.ptr63 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext62, !dbg !3860
  %6 = load i8, i8* %add.ptr63, align 1, !dbg !3861
  %conv64 = zext i8 %6 to i32, !dbg !3862
  %and65 = and i32 %conv64, 15, !dbg !3863
  %idxprom66 = sext i32 %and65 to i64, !dbg !3864
  %arrayidx67 = getelementptr inbounds [17 x i8], [17 x i8]* %hexlist, i64 0, i64 %idxprom66, !dbg !3864
  %7 = load i8, i8* %arrayidx67, align 1, !dbg !3864
  %conv68 = zext i8 %7 to i32, !dbg !3865
  %call69 = call i32 @putchar(i32 %conv68), !dbg !3866
  %call70 = call i32 @putchar(i32 32), !dbg !3867
  %conv71 = zext i16 %i.0 to i32, !dbg !3869
  %add = add nsw i32 %conv71, 1, !dbg !3871
  %rem72 = srem i32 %add, 16, !dbg !3872
  %cmp73 = icmp eq i32 %rem72, 0, !dbg !3873
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !3874

if.then75:                                        ; preds = %if.end53
  %call76 = call i32 @putchar(i32 10), !dbg !3875
  br label %if.end77, !dbg !3879

if.end77:                                         ; preds = %if.then75, %if.end53
  %conv78 = zext i16 %i.0 to i32, !dbg !3880
  %add79 = add nsw i32 %conv78, 1, !dbg !3881
  %conv80 = trunc i32 %add79 to i16, !dbg !3798
  call void @llvm.dbg.value(metadata i16 %conv80, metadata !3788, metadata !DIExpression()), !dbg !3775
  br label %while.body, !dbg !3789, !llvm.loop !3882

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3884

while_break:                                      ; preds = %while_break___0, %if.then
  %call81 = call i32 @putchar(i32 10), !dbg !3885
  ret void, !dbg !3888
}

declare i32 @putchar(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!141, !142, !143, !144, !145}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "open_cnt", scope: !2, file: !83, line: 34, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !80, nameTableKind: GNU)
!3 = !DIFile(filename: "c/lakai-0.1.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !71, !73, !15, !58, !65, !13, !63, !74, !75, !16, !76, !78, !79, !41, !43}
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
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !40, line: 150, baseType: !65)
!80 = !{!81, !0, !87, !92, !94, !96, !98, !103, !108, !110, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "fhandles", scope: !2, file: !83, line: 35, type: !84, isLocal: true, isDefinition: true)
!83 = !DIFile(filename: "/home/wslee/benchmarks/sound/lakai-0.1/lakai.c", directory: "")
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 16)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "cmdblk", scope: !2, file: !83, line: 175, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 48, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 6)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "cmdblk1", scope: !2, file: !83, line: 234, type: !89, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "cmdblk1___0", scope: !2, file: !83, line: 274, type: !89, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "cmdblk1___1", scope: !2, file: !83, line: 360, type: !89, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "cmdblk1___2", scope: !2, file: !83, line: 452, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "cmdblk1___3", scope: !2, file: !83, line: 550, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 72, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 9)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "cmdblk1___4", scope: !2, file: !83, line: 621, type: !100, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "cmdblk1___5", scope: !2, file: !83, line: 693, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 56, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 7)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "cmdblk1___6", scope: !2, file: !83, line: 747, type: !100, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "cmdblk1___7", scope: !2, file: !83, line: 792, type: !105, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "cmdblk1___8", scope: !2, file: !83, line: 846, type: !100, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "cmdblk1___9", scope: !2, file: !83, line: 965, type: !89, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "cmdblk1___10", scope: !2, file: !83, line: 1011, type: !112, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "cmdblk1___11", scope: !2, file: !83, line: 1082, type: !100, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "cmdblk1___12", scope: !2, file: !83, line: 1485, type: !89, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "cmdblk2", scope: !2, file: !83, line: 1493, type: !89, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "cmdblk3", scope: !2, file: !83, line: 1501, type: !89, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "cmdblk1___13", scope: !2, file: !83, line: 1594, type: !89, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "cmdblk2___0", scope: !2, file: !83, line: 1602, type: !89, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "cmdblk___0", scope: !2, file: !83, line: 1716, type: !89, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "cmdblk___1", scope: !2, file: !83, line: 1770, type: !89, isLocal: true, isDefinition: true)
!141 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!142 = !{i32 2, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 7, !"PIC Level", i32 2}
!146 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!147 = distinct !DISubprogram(name: "main", scope: !148, file: !148, line: 14, type: !149, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!148 = !DIFile(filename: "/home/wslee/benchmarks/sound/lakai-0.1/lakclear.c", directory: "")
!149 = !DISubroutineType(types: !150)
!150 = !{!13, !13, !75}
!151 = !DILocalVariable(name: "argc", arg: 1, scope: !147, file: !148, line: 14, type: !13)
!152 = !DILocation(line: 0, scope: !147)
!153 = !DILocalVariable(name: "argv", arg: 2, scope: !147, file: !148, line: 14, type: !75)
!154 = !DILocalVariable(name: "lp", scope: !147, file: !148, line: 21, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "LakaiProgramList", file: !156, line: 118, baseType: !157)
!156 = !DIFile(filename: "/home/wslee/benchmarks/sound/lakai-0.1/lakai.h", directory: "")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_LakaiProgramList_24", file: !156, line: 118, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "numprogs", scope: !157, file: !156, line: 119, baseType: !13, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prognames", scope: !157, file: !156, line: 120, baseType: !75, size: 64, offset: 64)
!161 = !DILocation(line: 21, column: 20, scope: !147)
!162 = !DILocalVariable(name: "ls", scope: !147, file: !148, line: 22, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "LakaiSampleList", file: !156, line: 127, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_LakaiSampleList_25", file: !156, line: 127, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "numsamples", scope: !164, file: !156, line: 128, baseType: !13, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "samplenames", scope: !164, file: !156, line: 129, baseType: !75, size: 64, offset: 64)
!168 = !DILocation(line: 22, column: 19, scope: !147)
!169 = !DILocalVariable(name: "__cil_tmp10", scope: !147, file: !148, line: 23, type: !15)
!170 = !DILocation(line: 23, column: 9, scope: !147)
!171 = !DILocalVariable(name: "__cil_tmp11", scope: !147, file: !148, line: 24, type: !15)
!172 = !DILocation(line: 24, column: 9, scope: !147)
!173 = !DILocalVariable(name: "__cil_tmp12", scope: !147, file: !148, line: 25, type: !15)
!174 = !DILocation(line: 25, column: 9, scope: !147)
!175 = !DILocalVariable(name: "__cil_tmp13", scope: !147, file: !148, line: 26, type: !15)
!176 = !DILocation(line: 26, column: 9, scope: !147)
!177 = !DILocalVariable(name: "__cil_tmp14", scope: !147, file: !148, line: 27, type: !15)
!178 = !DILocation(line: 27, column: 9, scope: !147)
!179 = !DILocalVariable(name: "__cil_tmp15", scope: !147, file: !148, line: 28, type: !15)
!180 = !DILocation(line: 28, column: 9, scope: !147)
!181 = !DILocalVariable(name: "__cil_tmp16", scope: !147, file: !148, line: 29, type: !15)
!182 = !DILocation(line: 29, column: 9, scope: !147)
!183 = !DILocalVariable(name: "__cil_tmp17", scope: !147, file: !148, line: 30, type: !15)
!184 = !DILocation(line: 30, column: 9, scope: !147)
!185 = !DILocalVariable(name: "__cil_tmp18", scope: !147, file: !148, line: 31, type: !15)
!186 = !DILocation(line: 31, column: 9, scope: !147)
!187 = !DILocalVariable(name: "__cil_tmp19", scope: !147, file: !148, line: 32, type: !15)
!188 = !DILocation(line: 32, column: 9, scope: !147)
!189 = !DILocalVariable(name: "__cil_tmp20", scope: !147, file: !148, line: 33, type: !15)
!190 = !DILocation(line: 33, column: 9, scope: !147)
!191 = !DILocation(line: 21, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !148, line: 21, column: 7)
!193 = distinct !DILexicalBlock(scope: !147, file: !148, line: 35, column: 3)
!194 = !DILocation(line: 21, column: 7, scope: !193)
!195 = !DILocation(line: 23, column: 38, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !148, line: 23, column: 5)
!197 = distinct !DILexicalBlock(scope: !198, file: !148, line: 22, column: 5)
!198 = distinct !DILexicalBlock(scope: !192, file: !148, line: 21, column: 18)
!199 = !DILocation(line: 24, column: 20, scope: !196)
!200 = !DILocation(line: 24, column: 13, scope: !196)
!201 = !DILocation(line: 23, column: 5, scope: !196)
!202 = !DILocation(line: 24, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !148, line: 26, column: 5)
!204 = !DILocation(line: 27, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !148, line: 29, column: 3)
!206 = distinct !DILexicalBlock(scope: !193, file: !148, line: 28, column: 3)
!207 = !DILocation(line: 29, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !206, file: !148, line: 29, column: 3)
!209 = !DILocation(line: 29, column: 20, scope: !208)
!210 = !DILocation(line: 29, column: 9, scope: !208)
!211 = !DILocalVariable(name: "hd1", scope: !147, file: !148, line: 20, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "LHANDLE", file: !156, line: 93, baseType: !13)
!213 = !DILocation(line: 30, column: 14, scope: !214)
!214 = distinct !DILexicalBlock(scope: !193, file: !148, line: 30, column: 7)
!215 = !DILocation(line: 30, column: 7, scope: !193)
!216 = !DILocation(line: 36, column: 38, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !148, line: 32, column: 5)
!218 = distinct !DILexicalBlock(scope: !219, file: !148, line: 31, column: 5)
!219 = distinct !DILexicalBlock(scope: !214, file: !148, line: 30, column: 21)
!220 = !DILocation(line: 36, column: 5, scope: !217)
!221 = !DILocation(line: 37, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !148, line: 38, column: 5)
!223 = !DILocation(line: 38, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !148, line: 39, column: 5)
!225 = !DILocation(line: 42, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !148, line: 43, column: 3)
!227 = distinct !DILexicalBlock(scope: !193, file: !148, line: 42, column: 3)
!228 = !DILocalVariable(name: "numsamps", scope: !147, file: !148, line: 18, type: !13)
!229 = !DILocation(line: 43, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !193, file: !148, line: 43, column: 7)
!231 = !DILocation(line: 43, column: 7, scope: !193)
!232 = !DILocation(line: 45, column: 38, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !148, line: 45, column: 5)
!234 = distinct !DILexicalBlock(scope: !235, file: !148, line: 44, column: 5)
!235 = distinct !DILexicalBlock(scope: !230, file: !148, line: 43, column: 21)
!236 = !DILocation(line: 45, column: 5, scope: !233)
!237 = !DILocation(line: 46, column: 18, scope: !234)
!238 = !DILocalVariable(name: "i", scope: !147, file: !148, line: 16, type: !13)
!239 = !DILocation(line: 46, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !148, line: 49, column: 5)
!241 = distinct !DILexicalBlock(scope: !235, file: !148, line: 48, column: 5)
!242 = !DILocation(line: 0, scope: !235)
!243 = !DILocation(line: 46, column: 15, scope: !240)
!244 = !DILocation(line: 46, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !148, line: 46, column: 11)
!246 = distinct !DILexicalBlock(scope: !240, file: !148, line: 46, column: 15)
!247 = !DILocation(line: 46, column: 11, scope: !246)
!248 = !DILocation(line: 46, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !148, line: 46, column: 23)
!250 = !DILocation(line: 48, column: 40, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !148, line: 49, column: 7)
!252 = distinct !DILexicalBlock(scope: !246, file: !148, line: 48, column: 7)
!253 = !DILocation(line: 48, column: 7, scope: !251)
!254 = !DILocation(line: 49, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !148, line: 51, column: 7)
!256 = !DILocalVariable(name: "res", scope: !147, file: !148, line: 19, type: !13)
!257 = !DILocation(line: 46, column: 9, scope: !252)
!258 = distinct !{!258, !239, !259}
!259 = !DILocation(line: 48, column: 5, scope: !240)
!260 = !DILocation(line: 50, column: 5, scope: !240)
!261 = !DILocation(line: 51, column: 38, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !148, line: 54, column: 5)
!263 = distinct !DILexicalBlock(scope: !235, file: !148, line: 53, column: 5)
!264 = !DILocation(line: 51, column: 5, scope: !262)
!265 = !DILocation(line: 54, column: 3, scope: !235)
!266 = !DILocation(line: 54, column: 38, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !148, line: 56, column: 5)
!268 = distinct !DILexicalBlock(scope: !269, file: !148, line: 55, column: 5)
!269 = distinct !DILexicalBlock(scope: !230, file: !148, line: 54, column: 10)
!270 = !DILocation(line: 54, column: 5, scope: !267)
!271 = !DILocation(line: 56, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !148, line: 59, column: 3)
!273 = distinct !DILexicalBlock(scope: !193, file: !148, line: 58, column: 3)
!274 = !DILocation(line: 59, column: 14, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !148, line: 58, column: 3)
!276 = !DILocalVariable(name: "numprogs", scope: !147, file: !148, line: 17, type: !13)
!277 = !DILocation(line: 60, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !193, file: !148, line: 60, column: 7)
!279 = !DILocation(line: 60, column: 7, scope: !193)
!280 = !DILocation(line: 62, column: 38, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !148, line: 62, column: 5)
!282 = distinct !DILexicalBlock(scope: !283, file: !148, line: 61, column: 5)
!283 = distinct !DILexicalBlock(scope: !278, file: !148, line: 60, column: 21)
!284 = !DILocation(line: 62, column: 5, scope: !281)
!285 = !DILocation(line: 63, column: 18, scope: !282)
!286 = !DILocation(line: 63, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !148, line: 66, column: 5)
!288 = distinct !DILexicalBlock(scope: !283, file: !148, line: 65, column: 5)
!289 = !DILocation(line: 0, scope: !283)
!290 = !DILocation(line: 63, column: 15, scope: !287)
!291 = !DILocation(line: 63, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !148, line: 63, column: 11)
!293 = distinct !DILexicalBlock(scope: !287, file: !148, line: 63, column: 15)
!294 = !DILocation(line: 63, column: 11, scope: !293)
!295 = !DILocation(line: 63, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !148, line: 63, column: 23)
!297 = !DILocation(line: 65, column: 40, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !148, line: 66, column: 7)
!299 = distinct !DILexicalBlock(scope: !293, file: !148, line: 65, column: 7)
!300 = !DILocation(line: 65, column: 7, scope: !298)
!301 = !DILocation(line: 66, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !148, line: 68, column: 7)
!303 = !DILocation(line: 63, column: 9, scope: !299)
!304 = distinct !{!304, !286, !305}
!305 = !DILocation(line: 65, column: 5, scope: !287)
!306 = !DILocation(line: 67, column: 5, scope: !287)
!307 = !DILocation(line: 68, column: 38, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !148, line: 71, column: 5)
!309 = distinct !DILexicalBlock(scope: !283, file: !148, line: 70, column: 5)
!310 = !DILocation(line: 68, column: 5, scope: !308)
!311 = !DILocation(line: 71, column: 3, scope: !283)
!312 = !DILocation(line: 71, column: 38, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !148, line: 73, column: 5)
!314 = distinct !DILexicalBlock(scope: !315, file: !148, line: 72, column: 5)
!315 = distinct !DILexicalBlock(scope: !278, file: !148, line: 71, column: 10)
!316 = !DILocation(line: 71, column: 5, scope: !313)
!317 = !DILocation(line: 73, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !148, line: 76, column: 3)
!319 = distinct !DILexicalBlock(scope: !193, file: !148, line: 75, column: 3)
!320 = !DILocation(line: 75, column: 36, scope: !321)
!321 = distinct !DILexicalBlock(scope: !319, file: !148, line: 75, column: 3)
!322 = !DILocation(line: 75, column: 3, scope: !321)
!323 = !DILocation(line: 77, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !148, line: 77, column: 3)
!325 = !DILocation(line: 78, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !148, line: 79, column: 3)
!327 = !DILocation(line: 80, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !319, file: !148, line: 80, column: 3)
!329 = !DILocation(line: 84, column: 1, scope: !147)
!330 = distinct !DISubprogram(name: "lakai_init", scope: !83, file: !83, line: 55, type: !331, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!331 = !DISubroutineType(types: !332)
!332 = !{null}
!333 = !DILocation(line: 59, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !83, line: 59, column: 7)
!335 = distinct !DILexicalBlock(scope: !330, file: !83, line: 59, column: 3)
!336 = !DILocation(line: 59, column: 16, scope: !334)
!337 = !DILocation(line: 59, column: 7, scope: !335)
!338 = !DILocalVariable(name: "i", scope: !330, file: !83, line: 57, type: !13)
!339 = !DILocation(line: 0, scope: !330)
!340 = !DILocation(line: 61, column: 5, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !83, line: 63, column: 5)
!342 = distinct !DILexicalBlock(scope: !343, file: !83, line: 62, column: 5)
!343 = distinct !DILexicalBlock(scope: !334, file: !83, line: 59, column: 23)
!344 = !DILocation(line: 0, scope: !343)
!345 = !DILocation(line: 61, column: 15, scope: !341)
!346 = !DILocation(line: 61, column: 16, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !83, line: 61, column: 11)
!348 = distinct !DILexicalBlock(scope: !341, file: !83, line: 61, column: 15)
!349 = !DILocation(line: 61, column: 11, scope: !348)
!350 = !DILocation(line: 61, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !83, line: 61, column: 23)
!352 = !DILocation(line: 62, column: 7, scope: !348)
!353 = !DILocation(line: 62, column: 19, scope: !348)
!354 = !DILocation(line: 61, column: 9, scope: !348)
!355 = distinct !{!355, !340, !356}
!356 = !DILocation(line: 62, column: 5, scope: !341)
!357 = !DILocation(line: 64, column: 5, scope: !341)
!358 = !DILocation(line: 67, column: 3, scope: !343)
!359 = !DILocation(line: 64, column: 3, scope: !335)
!360 = distinct !DISubprogram(name: "lakai_open", scope: !83, file: !83, line: 71, type: !361, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{!212, !15}
!363 = !DILocalVariable(name: "devname", arg: 1, scope: !360, file: !83, line: 71, type: !15)
!364 = !DILocation(line: 0, scope: !360)
!365 = !DILocalVariable(name: "k", scope: !360, file: !83, line: 74, type: !13)
!366 = !DILocation(line: 74, column: 7, scope: !360)
!367 = !DILocalVariable(name: "sg_scsiid", scope: !360, file: !83, line: 76, type: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_scsi_id", file: !369, line: 101, size: 256, elements: !370)
!369 = !DIFile(filename: "/usr/include/scsi/sg.h", directory: "")
!370 = !{!371, !372, !373, !374, !375, !376, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "host_no", scope: !368, file: !369, line: 102, baseType: !13, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !368, file: !369, line: 103, baseType: !13, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_id", scope: !368, file: !369, line: 104, baseType: !13, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !368, file: !369, line: 105, baseType: !13, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_type", scope: !368, file: !369, line: 106, baseType: !13, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "h_cmd_per_lun", scope: !368, file: !369, line: 107, baseType: !377, size: 16, offset: 160)
!377 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_queue_depth", scope: !368, file: !369, line: 108, baseType: !377, size: 16, offset: 176)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !368, file: !369, line: 109, baseType: !380, size: 64, offset: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DILocation(line: 76, column: 21, scope: !360)
!384 = !DILocalVariable(name: "__cil_tmp8", scope: !360, file: !83, line: 79, type: !15)
!385 = !DILocation(line: 79, column: 9, scope: !360)
!386 = !DILocalVariable(name: "__cil_tmp9", scope: !360, file: !83, line: 80, type: !15)
!387 = !DILocation(line: 80, column: 9, scope: !360)
!388 = !DILocalVariable(name: "__cil_tmp10", scope: !360, file: !83, line: 81, type: !15)
!389 = !DILocation(line: 81, column: 9, scope: !360)
!390 = !DILocalVariable(name: "__cil_tmp11", scope: !360, file: !83, line: 82, type: !15)
!391 = !DILocation(line: 82, column: 9, scope: !360)
!392 = !DILocalVariable(name: "__cil_tmp12", scope: !360, file: !83, line: 83, type: !15)
!393 = !DILocation(line: 83, column: 9, scope: !360)
!394 = !DILocalVariable(name: "__cil_tmp13", scope: !360, file: !83, line: 84, type: !15)
!395 = !DILocation(line: 84, column: 9, scope: !360)
!396 = !DILocalVariable(name: "__cil_tmp14", scope: !360, file: !83, line: 85, type: !15)
!397 = !DILocation(line: 85, column: 9, scope: !360)
!398 = !DILocalVariable(name: "__cil_tmp15", scope: !360, file: !83, line: 86, type: !15)
!399 = !DILocation(line: 86, column: 9, scope: !360)
!400 = !DILocation(line: 77, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !83, line: 77, column: 7)
!402 = distinct !DILexicalBlock(scope: !360, file: !83, line: 88, column: 3)
!403 = !DILocation(line: 77, column: 16, scope: !401)
!404 = !DILocation(line: 77, column: 7, scope: !402)
!405 = !DILocation(line: 79, column: 38, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !83, line: 79, column: 5)
!407 = distinct !DILexicalBlock(scope: !408, file: !83, line: 78, column: 5)
!408 = distinct !DILexicalBlock(scope: !401, file: !83, line: 77, column: 23)
!409 = !DILocation(line: 79, column: 5, scope: !406)
!410 = !DILocation(line: 80, column: 5, scope: !408)
!411 = !DILocalVariable(name: "slotpos", scope: !360, file: !83, line: 75, type: !13)
!412 = !DILocation(line: 83, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !83, line: 85, column: 3)
!414 = distinct !DILexicalBlock(scope: !402, file: !83, line: 84, column: 3)
!415 = !DILocation(line: 0, scope: !402)
!416 = !DILocation(line: 83, column: 13, scope: !413)
!417 = !DILocation(line: 83, column: 20, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !83, line: 83, column: 9)
!419 = distinct !DILexicalBlock(scope: !413, file: !83, line: 83, column: 13)
!420 = !DILocation(line: 83, column: 9, scope: !419)
!421 = !DILocation(line: 83, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !83, line: 83, column: 27)
!423 = !DILocation(line: 85, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !83, line: 85, column: 9)
!425 = !DILocation(line: 85, column: 27, scope: !424)
!426 = !DILocation(line: 85, column: 9, scope: !419)
!427 = !DILocation(line: 86, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !83, line: 85, column: 34)
!429 = !DILocation(line: 83, column: 13, scope: !419)
!430 = distinct !{!430, !412, !431}
!431 = !DILocation(line: 84, column: 3, scope: !413)
!432 = !DILocation(line: 86, column: 3, scope: !413)
!433 = !DILocation(line: 88, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !402, file: !83, line: 88, column: 7)
!435 = !DILocation(line: 88, column: 7, scope: !402)
!436 = !DILocation(line: 90, column: 38, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !83, line: 90, column: 5)
!438 = distinct !DILexicalBlock(scope: !439, file: !83, line: 89, column: 5)
!439 = distinct !DILexicalBlock(scope: !434, file: !83, line: 88, column: 22)
!440 = !DILocation(line: 90, column: 5, scope: !437)
!441 = !DILocation(line: 91, column: 5, scope: !439)
!442 = !DILocation(line: 95, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !83, line: 94, column: 3)
!444 = distinct !DILexicalBlock(scope: !402, file: !83, line: 93, column: 3)
!445 = !DILocalVariable(name: "sg_fd", scope: !360, file: !83, line: 73, type: !13)
!446 = !DILocation(line: 96, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !402, file: !83, line: 96, column: 7)
!448 = !DILocation(line: 96, column: 7, scope: !402)
!449 = !DILocation(line: 98, column: 38, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !83, line: 98, column: 5)
!451 = distinct !DILexicalBlock(scope: !452, file: !83, line: 97, column: 5)
!452 = distinct !DILexicalBlock(scope: !447, file: !83, line: 96, column: 18)
!453 = !DILocation(line: 98, column: 5, scope: !450)
!454 = !DILocation(line: 99, column: 5, scope: !452)
!455 = !DILocation(line: 102, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !83, line: 102, column: 3)
!457 = distinct !DILexicalBlock(scope: !402, file: !83, line: 101, column: 3)
!458 = !DILocalVariable(name: "tmp", scope: !360, file: !83, line: 77, type: !13)
!459 = !DILocation(line: 102, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !402, file: !83, line: 102, column: 7)
!461 = !DILocation(line: 102, column: 7, scope: !402)
!462 = !DILocation(line: 104, column: 38, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !83, line: 104, column: 5)
!464 = distinct !DILexicalBlock(scope: !465, file: !83, line: 103, column: 5)
!465 = distinct !DILexicalBlock(scope: !460, file: !83, line: 102, column: 16)
!466 = !DILocation(line: 104, column: 5, scope: !463)
!467 = !DILocation(line: 105, column: 5, scope: !465)
!468 = !DILocation(line: 108, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !402, file: !83, line: 108, column: 7)
!470 = !DILocation(line: 108, column: 9, scope: !469)
!471 = !DILocation(line: 108, column: 7, scope: !402)
!472 = !DILocation(line: 110, column: 38, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !83, line: 110, column: 5)
!474 = distinct !DILexicalBlock(scope: !475, file: !83, line: 109, column: 5)
!475 = distinct !DILexicalBlock(scope: !469, file: !83, line: 108, column: 18)
!476 = !DILocation(line: 110, column: 5, scope: !473)
!477 = !DILocation(line: 111, column: 38, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !83, line: 112, column: 5)
!479 = !DILocation(line: 111, column: 5, scope: !478)
!480 = !DILocation(line: 112, column: 5, scope: !481)
!481 = distinct !DILexicalBlock(scope: !474, file: !83, line: 113, column: 5)
!482 = !DILocation(line: 113, column: 5, scope: !475)
!483 = !DILocation(line: 117, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !83, line: 116, column: 3)
!485 = distinct !DILexicalBlock(scope: !402, file: !83, line: 115, column: 3)
!486 = !DILocalVariable(name: "tmp___0", scope: !360, file: !83, line: 78, type: !13)
!487 = !DILocation(line: 117, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !402, file: !83, line: 117, column: 7)
!489 = !DILocation(line: 117, column: 7, scope: !402)
!490 = !DILocation(line: 119, column: 38, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !83, line: 119, column: 5)
!492 = distinct !DILexicalBlock(scope: !493, file: !83, line: 118, column: 5)
!493 = distinct !DILexicalBlock(scope: !488, file: !83, line: 117, column: 20)
!494 = !DILocation(line: 119, column: 5, scope: !491)
!495 = !DILocation(line: 120, column: 5, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !83, line: 121, column: 5)
!497 = !DILocation(line: 121, column: 5, scope: !493)
!498 = !DILocation(line: 134, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !402, file: !83, line: 134, column: 7)
!500 = !DILocation(line: 134, column: 27, scope: !499)
!501 = !DILocation(line: 134, column: 7, scope: !402)
!502 = !DILocation(line: 136, column: 38, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !83, line: 136, column: 5)
!504 = distinct !DILexicalBlock(scope: !505, file: !83, line: 135, column: 5)
!505 = distinct !DILexicalBlock(scope: !499, file: !83, line: 134, column: 33)
!506 = !DILocation(line: 136, column: 5, scope: !503)
!507 = !DILocation(line: 137, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !83, line: 138, column: 5)
!509 = !DILocation(line: 138, column: 5, scope: !505)
!510 = !DILocation(line: 142, column: 12, scope: !402)
!511 = !DILocation(line: 143, column: 3, scope: !402)
!512 = !DILocation(line: 143, column: 21, scope: !402)
!513 = !DILocation(line: 145, column: 3, scope: !402)
!514 = !DILocation(line: 147, column: 1, scope: !360)
!515 = distinct !DISubprogram(name: "lakai_close", scope: !83, file: !83, line: 154, type: !516, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{!13, !212}
!518 = !DILocalVariable(name: "handle", arg: 1, scope: !515, file: !83, line: 154, type: !212)
!519 = !DILocation(line: 0, scope: !515)
!520 = !DILocalVariable(name: "__cil_tmp2", scope: !515, file: !83, line: 156, type: !15)
!521 = !DILocation(line: 156, column: 9, scope: !515)
!522 = !DILocalVariable(name: "__cil_tmp3", scope: !515, file: !83, line: 157, type: !15)
!523 = !DILocation(line: 157, column: 9, scope: !515)
!524 = !DILocalVariable(name: "__cil_tmp4", scope: !515, file: !83, line: 158, type: !15)
!525 = !DILocation(line: 158, column: 9, scope: !515)
!526 = !DILocation(line: 156, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !83, line: 156, column: 7)
!528 = distinct !DILexicalBlock(scope: !515, file: !83, line: 160, column: 3)
!529 = !DILocation(line: 156, column: 24, scope: !527)
!530 = !DILocation(line: 156, column: 7, scope: !528)
!531 = !DILocation(line: 158, column: 38, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !83, line: 158, column: 5)
!533 = distinct !DILexicalBlock(scope: !534, file: !83, line: 157, column: 5)
!534 = distinct !DILexicalBlock(scope: !527, file: !83, line: 156, column: 31)
!535 = !DILocation(line: 158, column: 5, scope: !532)
!536 = !DILocation(line: 159, column: 5, scope: !534)
!537 = !DILocation(line: 156, column: 14, scope: !538)
!538 = distinct !DILexicalBlock(scope: !527, file: !83, line: 156, column: 7)
!539 = !DILocation(line: 158, column: 38, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !83, line: 158, column: 5)
!541 = distinct !DILexicalBlock(scope: !542, file: !83, line: 157, column: 5)
!542 = distinct !DILexicalBlock(scope: !538, file: !83, line: 156, column: 19)
!543 = !DILocation(line: 158, column: 5, scope: !540)
!544 = !DILocation(line: 159, column: 5, scope: !542)
!545 = !DILocation(line: 156, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !538, file: !83, line: 156, column: 7)
!547 = !DILocation(line: 156, column: 7, scope: !538)
!548 = !DILocation(line: 158, column: 38, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !83, line: 158, column: 5)
!550 = distinct !DILexicalBlock(scope: !551, file: !83, line: 157, column: 5)
!551 = distinct !DILexicalBlock(scope: !546, file: !83, line: 156, column: 20)
!552 = !DILocation(line: 158, column: 5, scope: !549)
!553 = !DILocation(line: 159, column: 5, scope: !551)
!554 = !DILocation(line: 161, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !83, line: 162, column: 3)
!556 = distinct !DILexicalBlock(scope: !528, file: !83, line: 161, column: 3)
!557 = !DILocation(line: 161, column: 3, scope: !555)
!558 = !DILocation(line: 162, column: 3, scope: !556)
!559 = !DILocation(line: 162, column: 20, scope: !556)
!560 = !DILocation(line: 163, column: 12, scope: !556)
!561 = !DILocation(line: 164, column: 3, scope: !528)
!562 = !DILocation(line: 0, scope: !528)
!563 = !DILocation(line: 166, column: 1, scope: !515)
!564 = distinct !DISubprogram(name: "lakai_get_sample_list", scope: !83, file: !83, line: 355, type: !565, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{!13, !212, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!568 = !DILocalVariable(name: "handle", arg: 1, scope: !564, file: !83, line: 355, type: !212)
!569 = !DILocation(line: 0, scope: !564)
!570 = !DILocalVariable(name: "ls", arg: 2, scope: !564, file: !83, line: 355, type: !567)
!571 = !DILocalVariable(name: "finalbuf", scope: !564, file: !83, line: 357, type: !572)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16384, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 2048)
!575 = !DILocation(line: 357, column: 17, scope: !564)
!576 = !DILocalVariable(name: "__cil_tmp9", scope: !564, file: !83, line: 363, type: !58)
!577 = !DILocation(line: 363, column: 9, scope: !564)
!578 = !DILocalVariable(name: "__cil_tmp10", scope: !564, file: !83, line: 364, type: !15)
!579 = !DILocation(line: 364, column: 9, scope: !564)
!580 = !DILocalVariable(name: "__cil_tmp11", scope: !564, file: !83, line: 365, type: !15)
!581 = !DILocation(line: 365, column: 9, scope: !564)
!582 = !DILocalVariable(name: "__cil_tmp12", scope: !564, file: !83, line: 366, type: !15)
!583 = !DILocation(line: 366, column: 9, scope: !564)
!584 = !DILocalVariable(name: "__cil_tmp13", scope: !564, file: !83, line: 367, type: !15)
!585 = !DILocation(line: 367, column: 9, scope: !564)
!586 = !DILocalVariable(name: "__cil_tmp14", scope: !564, file: !83, line: 368, type: !15)
!587 = !DILocation(line: 368, column: 9, scope: !564)
!588 = !DILocalVariable(name: "__cil_tmp15", scope: !564, file: !83, line: 369, type: !15)
!589 = !DILocation(line: 369, column: 9, scope: !564)
!590 = !DILocalVariable(name: "__cil_tmp16", scope: !564, file: !83, line: 370, type: !15)
!591 = !DILocation(line: 370, column: 9, scope: !564)
!592 = !DILocalVariable(name: "__cil_tmp17", scope: !564, file: !83, line: 371, type: !15)
!593 = !DILocation(line: 371, column: 9, scope: !564)
!594 = !DILocation(line: 363, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !83, line: 363, column: 7)
!596 = distinct !DILexicalBlock(scope: !564, file: !83, line: 373, column: 3)
!597 = !DILocation(line: 363, column: 24, scope: !595)
!598 = !DILocation(line: 363, column: 7, scope: !596)
!599 = !DILocation(line: 365, column: 38, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !83, line: 365, column: 5)
!601 = distinct !DILexicalBlock(scope: !602, file: !83, line: 364, column: 5)
!602 = distinct !DILexicalBlock(scope: !595, file: !83, line: 363, column: 31)
!603 = !DILocation(line: 365, column: 5, scope: !600)
!604 = !DILocation(line: 366, column: 5, scope: !602)
!605 = !DILocation(line: 363, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !595, file: !83, line: 363, column: 7)
!607 = !DILocation(line: 365, column: 38, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !83, line: 365, column: 5)
!609 = distinct !DILexicalBlock(scope: !610, file: !83, line: 364, column: 5)
!610 = distinct !DILexicalBlock(scope: !606, file: !83, line: 363, column: 19)
!611 = !DILocation(line: 365, column: 5, scope: !608)
!612 = !DILocation(line: 366, column: 5, scope: !610)
!613 = !DILocation(line: 363, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !606, file: !83, line: 363, column: 7)
!615 = !DILocation(line: 363, column: 7, scope: !606)
!616 = !DILocation(line: 365, column: 38, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !83, line: 365, column: 5)
!618 = distinct !DILexicalBlock(scope: !619, file: !83, line: 364, column: 5)
!619 = distinct !DILexicalBlock(scope: !614, file: !83, line: 363, column: 20)
!620 = !DILocation(line: 365, column: 5, scope: !617)
!621 = !DILocation(line: 366, column: 5, scope: !619)
!622 = !DILocation(line: 370, column: 40, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !83, line: 369, column: 3)
!624 = distinct !DILexicalBlock(scope: !596, file: !83, line: 368, column: 3)
!625 = !DILocation(line: 369, column: 14, scope: !623)
!626 = !DILocalVariable(name: "finallen", scope: !564, file: !83, line: 359, type: !13)
!627 = !DILocation(line: 370, column: 19, scope: !628)
!628 = distinct !DILexicalBlock(scope: !596, file: !83, line: 370, column: 7)
!629 = !DILocation(line: 370, column: 7, scope: !596)
!630 = !DILocation(line: 379, column: 38, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !83, line: 372, column: 5)
!632 = distinct !DILexicalBlock(scope: !633, file: !83, line: 371, column: 5)
!633 = distinct !DILexicalBlock(scope: !628, file: !83, line: 370, column: 25)
!634 = !DILocation(line: 379, column: 5, scope: !631)
!635 = !DILocation(line: 382, column: 3, scope: !633)
!636 = !DILocation(line: 382, column: 22, scope: !596)
!637 = !DILocation(line: 382, column: 16, scope: !596)
!638 = !DILocation(line: 382, column: 48, scope: !596)
!639 = !DILocation(line: 382, column: 42, scope: !596)
!640 = !DILocation(line: 382, column: 40, scope: !596)
!641 = !DILocation(line: 382, column: 34, scope: !596)
!642 = !DILocalVariable(name: "numsamples", scope: !564, file: !83, line: 360, type: !13)
!643 = !DILocation(line: 384, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !596, file: !83, line: 384, column: 7)
!645 = !DILocation(line: 384, column: 7, scope: !644)
!646 = !DILocation(line: 384, column: 25, scope: !644)
!647 = !DILocation(line: 384, column: 7, scope: !596)
!648 = !DILocation(line: 384, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !83, line: 384, column: 9)
!650 = distinct !DILexicalBlock(scope: !644, file: !83, line: 384, column: 33)
!651 = !DILocation(line: 384, column: 26, scope: !649)
!652 = !DILocation(line: 384, column: 15, scope: !649)
!653 = !DILocation(line: 384, column: 9, scope: !649)
!654 = !DILocation(line: 384, column: 31, scope: !649)
!655 = !DILocation(line: 384, column: 9, scope: !650)
!656 = !DILocation(line: 386, column: 30, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !83, line: 386, column: 7)
!658 = distinct !DILexicalBlock(scope: !659, file: !83, line: 385, column: 7)
!659 = distinct !DILexicalBlock(scope: !649, file: !83, line: 384, column: 37)
!660 = !DILocation(line: 386, column: 57, scope: !657)
!661 = !DILocation(line: 386, column: 20, scope: !657)
!662 = !DILocation(line: 386, column: 13, scope: !657)
!663 = !DILocalVariable(name: "tmp", scope: !564, file: !83, line: 361, type: !58)
!664 = !DILocation(line: 386, column: 25, scope: !658)
!665 = !DILocation(line: 386, column: 11, scope: !658)
!666 = !DILocation(line: 386, column: 23, scope: !658)
!667 = !DILocation(line: 387, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !659, file: !83, line: 387, column: 11)
!669 = !DILocation(line: 387, column: 13, scope: !668)
!670 = !DILocation(line: 387, column: 11, scope: !659)
!671 = !DILocation(line: 389, column: 42, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !83, line: 389, column: 9)
!673 = distinct !DILexicalBlock(scope: !674, file: !83, line: 388, column: 9)
!674 = distinct !DILexicalBlock(scope: !668, file: !83, line: 387, column: 30)
!675 = !DILocation(line: 389, column: 9, scope: !672)
!676 = !DILocation(line: 390, column: 9, scope: !674)
!677 = !DILocalVariable(name: "i", scope: !564, file: !83, line: 358, type: !13)
!678 = !DILocation(line: 392, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !83, line: 394, column: 7)
!680 = distinct !DILexicalBlock(scope: !659, file: !83, line: 393, column: 7)
!681 = !DILocation(line: 0, scope: !659)
!682 = !DILocation(line: 392, column: 17, scope: !679)
!683 = !DILocation(line: 392, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !83, line: 392, column: 13)
!685 = distinct !DILexicalBlock(scope: !679, file: !83, line: 392, column: 17)
!686 = !DILocation(line: 392, column: 13, scope: !685)
!687 = !DILocation(line: 392, column: 11, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !83, line: 392, column: 33)
!689 = !DILocation(line: 394, column: 19, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !83, line: 395, column: 9)
!691 = distinct !DILexicalBlock(scope: !685, file: !83, line: 394, column: 9)
!692 = !DILocalVariable(name: "tmp___0", scope: !564, file: !83, line: 362, type: !58)
!693 = !DILocation(line: 394, column: 15, scope: !691)
!694 = !DILocation(line: 394, column: 27, scope: !691)
!695 = !DILocation(line: 394, column: 32, scope: !691)
!696 = !DILocation(line: 395, column: 21, scope: !697)
!697 = distinct !DILexicalBlock(scope: !685, file: !83, line: 395, column: 13)
!698 = !DILocation(line: 395, column: 33, scope: !697)
!699 = !DILocation(line: 395, column: 15, scope: !697)
!700 = !DILocation(line: 395, column: 13, scope: !685)
!701 = !DILocation(line: 397, column: 44, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !83, line: 397, column: 11)
!703 = distinct !DILexicalBlock(scope: !704, file: !83, line: 396, column: 11)
!704 = distinct !DILexicalBlock(scope: !697, file: !83, line: 395, column: 39)
!705 = !DILocation(line: 397, column: 11, scope: !702)
!706 = !DILocation(line: 398, column: 11, scope: !704)
!707 = !DILocation(line: 400, column: 37, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !83, line: 401, column: 9)
!709 = distinct !DILexicalBlock(scope: !685, file: !83, line: 400, column: 9)
!710 = !DILocation(line: 400, column: 46, scope: !708)
!711 = !DILocation(line: 400, column: 55, scope: !708)
!712 = !DILocation(line: 400, column: 51, scope: !708)
!713 = !DILocation(line: 400, column: 68, scope: !708)
!714 = !DILocation(line: 400, column: 80, scope: !708)
!715 = !DILocation(line: 400, column: 62, scope: !708)
!716 = !DILocation(line: 400, column: 9, scope: !708)
!717 = !DILocation(line: 401, column: 17, scope: !709)
!718 = !DILocation(line: 401, column: 29, scope: !709)
!719 = !DILocation(line: 401, column: 11, scope: !709)
!720 = !DILocation(line: 401, column: 34, scope: !709)
!721 = !DILocation(line: 401, column: 40, scope: !709)
!722 = !DILocation(line: 392, column: 11, scope: !709)
!723 = distinct !{!723, !678, !724}
!724 = !DILocation(line: 394, column: 7, scope: !679)
!725 = !DILocation(line: 396, column: 7, scope: !679)
!726 = !DILocation(line: 403, column: 11, scope: !659)
!727 = !DILocation(line: 403, column: 22, scope: !659)
!728 = !DILocation(line: 404, column: 5, scope: !659)
!729 = !DILocation(line: 407, column: 40, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !83, line: 406, column: 7)
!731 = distinct !DILexicalBlock(scope: !732, file: !83, line: 405, column: 7)
!732 = distinct !DILexicalBlock(scope: !649, file: !83, line: 404, column: 12)
!733 = !DILocation(line: 407, column: 7, scope: !730)
!734 = !DILocation(line: 408, column: 7, scope: !732)
!735 = !DILocation(line: 410, column: 3, scope: !650)
!736 = !DILocation(line: 407, column: 38, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !83, line: 412, column: 5)
!738 = distinct !DILexicalBlock(scope: !739, file: !83, line: 411, column: 5)
!739 = distinct !DILexicalBlock(scope: !644, file: !83, line: 410, column: 10)
!740 = !DILocation(line: 407, column: 5, scope: !737)
!741 = !DILocation(line: 408, column: 5, scope: !739)
!742 = !DILocation(line: 411, column: 3, scope: !596)
!743 = !DILocation(line: 0, scope: !596)
!744 = !DILocation(line: 413, column: 1, scope: !564)
!745 = distinct !DISubprogram(name: "lakai_delete_sample", scope: !83, file: !83, line: 841, type: !746, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!746 = !DISubroutineType(types: !747)
!747 = !{!13, !212, !13}
!748 = !DILocalVariable(name: "handle", arg: 1, scope: !745, file: !83, line: 841, type: !212)
!749 = !DILocation(line: 0, scope: !745)
!750 = !DILocalVariable(name: "samplenum", arg: 2, scope: !745, file: !83, line: 841, type: !13)
!751 = !DILocalVariable(name: "statusbuf", scope: !745, file: !83, line: 843, type: !752)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 800, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 100)
!755 = !DILocation(line: 843, column: 17, scope: !745)
!756 = !DILocalVariable(name: "__cil_tmp5", scope: !745, file: !83, line: 845, type: !58)
!757 = !DILocation(line: 845, column: 9, scope: !745)
!758 = !DILocalVariable(name: "__cil_tmp6", scope: !745, file: !83, line: 846, type: !15)
!759 = !DILocation(line: 846, column: 9, scope: !745)
!760 = !DILocalVariable(name: "__cil_tmp7", scope: !745, file: !83, line: 847, type: !15)
!761 = !DILocation(line: 847, column: 9, scope: !745)
!762 = !DILocalVariable(name: "__cil_tmp8", scope: !745, file: !83, line: 848, type: !15)
!763 = !DILocation(line: 848, column: 9, scope: !745)
!764 = !DILocalVariable(name: "__cil_tmp9", scope: !745, file: !83, line: 849, type: !15)
!765 = !DILocation(line: 849, column: 9, scope: !745)
!766 = !DILocalVariable(name: "__cil_tmp10", scope: !745, file: !83, line: 850, type: !15)
!767 = !DILocation(line: 850, column: 9, scope: !745)
!768 = !DILocalVariable(name: "__cil_tmp11", scope: !745, file: !83, line: 851, type: !15)
!769 = !DILocation(line: 851, column: 9, scope: !745)
!770 = !DILocation(line: 849, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !83, line: 849, column: 7)
!772 = distinct !DILexicalBlock(scope: !745, file: !83, line: 853, column: 3)
!773 = !DILocation(line: 849, column: 24, scope: !771)
!774 = !DILocation(line: 849, column: 7, scope: !772)
!775 = !DILocation(line: 851, column: 38, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !83, line: 851, column: 5)
!777 = distinct !DILexicalBlock(scope: !778, file: !83, line: 850, column: 5)
!778 = distinct !DILexicalBlock(scope: !771, file: !83, line: 849, column: 31)
!779 = !DILocation(line: 851, column: 5, scope: !776)
!780 = !DILocation(line: 852, column: 5, scope: !778)
!781 = !DILocation(line: 849, column: 14, scope: !782)
!782 = distinct !DILexicalBlock(scope: !771, file: !83, line: 849, column: 7)
!783 = !DILocation(line: 851, column: 38, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !83, line: 851, column: 5)
!785 = distinct !DILexicalBlock(scope: !786, file: !83, line: 850, column: 5)
!786 = distinct !DILexicalBlock(scope: !782, file: !83, line: 849, column: 19)
!787 = !DILocation(line: 851, column: 5, scope: !784)
!788 = !DILocation(line: 852, column: 5, scope: !786)
!789 = !DILocation(line: 849, column: 14, scope: !790)
!790 = distinct !DILexicalBlock(scope: !782, file: !83, line: 849, column: 7)
!791 = !DILocation(line: 849, column: 7, scope: !782)
!792 = !DILocation(line: 851, column: 38, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !83, line: 851, column: 5)
!794 = distinct !DILexicalBlock(scope: !795, file: !83, line: 850, column: 5)
!795 = distinct !DILexicalBlock(scope: !790, file: !83, line: 849, column: 20)
!796 = !DILocation(line: 851, column: 5, scope: !793)
!797 = !DILocation(line: 852, column: 5, scope: !795)
!798 = !DILocation(line: 855, column: 17, scope: !799)
!799 = distinct !DILexicalBlock(scope: !772, file: !83, line: 855, column: 7)
!800 = !DILocation(line: 855, column: 7, scope: !772)
!801 = !DILocation(line: 857, column: 38, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !83, line: 857, column: 5)
!803 = distinct !DILexicalBlock(scope: !804, file: !83, line: 856, column: 5)
!804 = distinct !DILexicalBlock(scope: !799, file: !83, line: 855, column: 22)
!805 = !DILocation(line: 857, column: 5, scope: !802)
!806 = !DILocation(line: 858, column: 5, scope: !804)
!807 = !DILocation(line: 855, column: 17, scope: !808)
!808 = distinct !DILexicalBlock(scope: !799, file: !83, line: 855, column: 7)
!809 = !DILocation(line: 855, column: 7, scope: !799)
!810 = !DILocation(line: 857, column: 38, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !83, line: 857, column: 5)
!812 = distinct !DILexicalBlock(scope: !813, file: !83, line: 856, column: 5)
!813 = distinct !DILexicalBlock(scope: !808, file: !83, line: 855, column: 26)
!814 = !DILocation(line: 857, column: 5, scope: !811)
!815 = !DILocation(line: 858, column: 5, scope: !813)
!816 = !DILocation(line: 861, column: 47, scope: !817)
!817 = distinct !DILexicalBlock(scope: !772, file: !83, line: 860, column: 3)
!818 = !DILocation(line: 861, column: 20, scope: !817)
!819 = !DILocation(line: 861, column: 18, scope: !817)
!820 = !DILocation(line: 862, column: 55, scope: !817)
!821 = !DILocation(line: 862, column: 49, scope: !817)
!822 = !DILocation(line: 862, column: 70, scope: !817)
!823 = !DILocation(line: 862, column: 47, scope: !817)
!824 = !DILocation(line: 862, column: 20, scope: !817)
!825 = !DILocation(line: 862, column: 18, scope: !817)
!826 = !DILocation(line: 865, column: 41, scope: !827)
!827 = distinct !DILexicalBlock(scope: !817, file: !83, line: 863, column: 3)
!828 = !DILocation(line: 864, column: 15, scope: !827)
!829 = !DILocalVariable(name: "statuslen", scope: !745, file: !83, line: 844, type: !13)
!830 = !DILocation(line: 866, column: 20, scope: !831)
!831 = distinct !DILexicalBlock(scope: !772, file: !83, line: 866, column: 7)
!832 = !DILocation(line: 866, column: 7, scope: !772)
!833 = !DILocation(line: 875, column: 38, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !83, line: 868, column: 5)
!835 = distinct !DILexicalBlock(scope: !836, file: !83, line: 867, column: 5)
!836 = distinct !DILexicalBlock(scope: !831, file: !83, line: 866, column: 26)
!837 = !DILocation(line: 875, column: 5, scope: !834)
!838 = !DILocation(line: 878, column: 3, scope: !836)
!839 = !DILocation(line: 878, column: 3, scope: !772)
!840 = !DILocation(line: 0, scope: !772)
!841 = !DILocation(line: 880, column: 1, scope: !745)
!842 = distinct !DISubprogram(name: "lakai_free_sample_list", scope: !83, file: !83, line: 418, type: !843, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !567}
!845 = !DILocalVariable(name: "ls", arg: 1, scope: !842, file: !83, line: 418, type: !567)
!846 = !DILocation(line: 0, scope: !842)
!847 = !DILocation(line: 422, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !83, line: 422, column: 7)
!849 = distinct !DILexicalBlock(scope: !842, file: !83, line: 422, column: 3)
!850 = !DILocation(line: 422, column: 7, scope: !849)
!851 = !DILocation(line: 424, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !83, line: 424, column: 9)
!853 = distinct !DILexicalBlock(scope: !848, file: !83, line: 422, column: 11)
!854 = !DILocation(line: 424, column: 24, scope: !852)
!855 = !DILocation(line: 424, column: 9, scope: !853)
!856 = !DILocalVariable(name: "i", scope: !842, file: !83, line: 420, type: !13)
!857 = !DILocation(line: 426, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !83, line: 428, column: 7)
!859 = distinct !DILexicalBlock(scope: !860, file: !83, line: 427, column: 7)
!860 = distinct !DILexicalBlock(scope: !852, file: !83, line: 424, column: 29)
!861 = !DILocation(line: 0, scope: !860)
!862 = !DILocation(line: 426, column: 17, scope: !858)
!863 = !DILocation(line: 426, column: 24, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !83, line: 426, column: 13)
!865 = distinct !DILexicalBlock(scope: !858, file: !83, line: 426, column: 17)
!866 = !DILocation(line: 426, column: 18, scope: !864)
!867 = !DILocation(line: 426, column: 13, scope: !865)
!868 = !DILocation(line: 426, column: 11, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !83, line: 426, column: 37)
!870 = !DILocation(line: 428, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !83, line: 428, column: 13)
!872 = !DILocation(line: 428, column: 31, scope: !871)
!873 = !DILocation(line: 428, column: 13, scope: !871)
!874 = !DILocation(line: 428, column: 13, scope: !865)
!875 = !DILocation(line: 431, column: 30, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !83, line: 430, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !83, line: 429, column: 11)
!878 = distinct !DILexicalBlock(scope: !871, file: !83, line: 428, column: 37)
!879 = !DILocation(line: 431, column: 42, scope: !876)
!880 = !DILocation(line: 431, column: 24, scope: !876)
!881 = !DILocation(line: 431, column: 11, scope: !876)
!882 = !DILocation(line: 434, column: 9, scope: !878)
!883 = !DILocation(line: 426, column: 11, scope: !865)
!884 = distinct !{!884, !857, !885}
!885 = !DILocation(line: 427, column: 7, scope: !858)
!886 = !DILocation(line: 429, column: 7, scope: !858)
!887 = !DILocation(line: 435, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !83, line: 433, column: 7)
!889 = distinct !DILexicalBlock(scope: !860, file: !83, line: 432, column: 7)
!890 = !DILocation(line: 435, column: 12, scope: !888)
!891 = !DILocation(line: 435, column: 7, scope: !888)
!892 = !DILocation(line: 438, column: 5, scope: !860)
!893 = !DILocation(line: 439, column: 3, scope: !853)
!894 = !DILocation(line: 438, column: 3, scope: !849)
!895 = distinct !DISubprogram(name: "lakai_get_program_list", scope: !83, file: !83, line: 269, type: !896, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!896 = !DISubroutineType(types: !897)
!897 = !{!13, !212, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!899 = !DILocalVariable(name: "handle", arg: 1, scope: !895, file: !83, line: 269, type: !212)
!900 = !DILocation(line: 0, scope: !895)
!901 = !DILocalVariable(name: "lp", arg: 2, scope: !895, file: !83, line: 269, type: !898)
!902 = !DILocalVariable(name: "finalbuf", scope: !895, file: !83, line: 271, type: !572)
!903 = !DILocation(line: 271, column: 17, scope: !895)
!904 = !DILocalVariable(name: "__cil_tmp9", scope: !895, file: !83, line: 277, type: !58)
!905 = !DILocation(line: 277, column: 9, scope: !895)
!906 = !DILocalVariable(name: "__cil_tmp10", scope: !895, file: !83, line: 278, type: !15)
!907 = !DILocation(line: 278, column: 9, scope: !895)
!908 = !DILocalVariable(name: "__cil_tmp11", scope: !895, file: !83, line: 279, type: !15)
!909 = !DILocation(line: 279, column: 9, scope: !895)
!910 = !DILocalVariable(name: "__cil_tmp12", scope: !895, file: !83, line: 280, type: !15)
!911 = !DILocation(line: 280, column: 9, scope: !895)
!912 = !DILocalVariable(name: "__cil_tmp13", scope: !895, file: !83, line: 281, type: !15)
!913 = !DILocation(line: 281, column: 9, scope: !895)
!914 = !DILocalVariable(name: "__cil_tmp14", scope: !895, file: !83, line: 282, type: !15)
!915 = !DILocation(line: 282, column: 9, scope: !895)
!916 = !DILocalVariable(name: "__cil_tmp15", scope: !895, file: !83, line: 283, type: !15)
!917 = !DILocation(line: 283, column: 9, scope: !895)
!918 = !DILocalVariable(name: "__cil_tmp16", scope: !895, file: !83, line: 284, type: !15)
!919 = !DILocation(line: 284, column: 9, scope: !895)
!920 = !DILocalVariable(name: "__cil_tmp17", scope: !895, file: !83, line: 285, type: !15)
!921 = !DILocation(line: 285, column: 9, scope: !895)
!922 = !DILocation(line: 277, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !83, line: 277, column: 7)
!924 = distinct !DILexicalBlock(scope: !895, file: !83, line: 287, column: 3)
!925 = !DILocation(line: 277, column: 24, scope: !923)
!926 = !DILocation(line: 277, column: 7, scope: !924)
!927 = !DILocation(line: 279, column: 38, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !83, line: 279, column: 5)
!929 = distinct !DILexicalBlock(scope: !930, file: !83, line: 278, column: 5)
!930 = distinct !DILexicalBlock(scope: !923, file: !83, line: 277, column: 31)
!931 = !DILocation(line: 279, column: 5, scope: !928)
!932 = !DILocation(line: 280, column: 5, scope: !930)
!933 = !DILocation(line: 277, column: 14, scope: !934)
!934 = distinct !DILexicalBlock(scope: !923, file: !83, line: 277, column: 7)
!935 = !DILocation(line: 279, column: 38, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !83, line: 279, column: 5)
!937 = distinct !DILexicalBlock(scope: !938, file: !83, line: 278, column: 5)
!938 = distinct !DILexicalBlock(scope: !934, file: !83, line: 277, column: 19)
!939 = !DILocation(line: 279, column: 5, scope: !936)
!940 = !DILocation(line: 280, column: 5, scope: !938)
!941 = !DILocation(line: 277, column: 14, scope: !942)
!942 = distinct !DILexicalBlock(scope: !934, file: !83, line: 277, column: 7)
!943 = !DILocation(line: 277, column: 7, scope: !934)
!944 = !DILocation(line: 279, column: 38, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !83, line: 279, column: 5)
!946 = distinct !DILexicalBlock(scope: !947, file: !83, line: 278, column: 5)
!947 = distinct !DILexicalBlock(scope: !942, file: !83, line: 277, column: 20)
!948 = !DILocation(line: 279, column: 5, scope: !945)
!949 = !DILocation(line: 280, column: 5, scope: !947)
!950 = !DILocation(line: 284, column: 40, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !83, line: 283, column: 3)
!952 = distinct !DILexicalBlock(scope: !924, file: !83, line: 282, column: 3)
!953 = !DILocation(line: 283, column: 14, scope: !951)
!954 = !DILocalVariable(name: "finallen", scope: !895, file: !83, line: 273, type: !13)
!955 = !DILocation(line: 284, column: 19, scope: !956)
!956 = distinct !DILexicalBlock(scope: !924, file: !83, line: 284, column: 7)
!957 = !DILocation(line: 284, column: 7, scope: !924)
!958 = !DILocation(line: 293, column: 38, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !83, line: 286, column: 5)
!960 = distinct !DILexicalBlock(scope: !961, file: !83, line: 285, column: 5)
!961 = distinct !DILexicalBlock(scope: !956, file: !83, line: 284, column: 25)
!962 = !DILocation(line: 293, column: 5, scope: !959)
!963 = !DILocation(line: 296, column: 3, scope: !961)
!964 = !DILocation(line: 296, column: 20, scope: !924)
!965 = !DILocation(line: 296, column: 14, scope: !924)
!966 = !DILocation(line: 296, column: 46, scope: !924)
!967 = !DILocation(line: 296, column: 40, scope: !924)
!968 = !DILocation(line: 296, column: 38, scope: !924)
!969 = !DILocation(line: 296, column: 32, scope: !924)
!970 = !DILocalVariable(name: "numprogs", scope: !895, file: !83, line: 274, type: !13)
!971 = !DILocation(line: 298, column: 13, scope: !972)
!972 = distinct !DILexicalBlock(scope: !924, file: !83, line: 298, column: 7)
!973 = !DILocation(line: 298, column: 7, scope: !972)
!974 = !DILocation(line: 298, column: 25, scope: !972)
!975 = !DILocation(line: 298, column: 7, scope: !924)
!976 = !DILocation(line: 298, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !83, line: 298, column: 9)
!978 = distinct !DILexicalBlock(scope: !972, file: !83, line: 298, column: 33)
!979 = !DILocation(line: 298, column: 26, scope: !977)
!980 = !DILocation(line: 298, column: 15, scope: !977)
!981 = !DILocation(line: 298, column: 9, scope: !977)
!982 = !DILocation(line: 298, column: 31, scope: !977)
!983 = !DILocation(line: 298, column: 9, scope: !978)
!984 = !DILocation(line: 300, column: 30, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !83, line: 300, column: 7)
!986 = distinct !DILexicalBlock(scope: !987, file: !83, line: 299, column: 7)
!987 = distinct !DILexicalBlock(scope: !977, file: !83, line: 298, column: 37)
!988 = !DILocation(line: 300, column: 55, scope: !985)
!989 = !DILocation(line: 300, column: 20, scope: !985)
!990 = !DILocation(line: 300, column: 13, scope: !985)
!991 = !DILocalVariable(name: "tmp", scope: !895, file: !83, line: 275, type: !58)
!992 = !DILocation(line: 300, column: 23, scope: !986)
!993 = !DILocation(line: 300, column: 11, scope: !986)
!994 = !DILocation(line: 300, column: 21, scope: !986)
!995 = !DILocation(line: 301, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !987, file: !83, line: 301, column: 11)
!997 = !DILocation(line: 301, column: 13, scope: !996)
!998 = !DILocation(line: 301, column: 11, scope: !987)
!999 = !DILocation(line: 303, column: 42, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !83, line: 303, column: 9)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 302, column: 9)
!1002 = distinct !DILexicalBlock(scope: !996, file: !83, line: 301, column: 28)
!1003 = !DILocation(line: 303, column: 9, scope: !1000)
!1004 = !DILocation(line: 304, column: 9, scope: !1002)
!1005 = !DILocalVariable(name: "i", scope: !895, file: !83, line: 272, type: !13)
!1006 = !DILocation(line: 306, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !83, line: 308, column: 7)
!1008 = distinct !DILexicalBlock(scope: !987, file: !83, line: 307, column: 7)
!1009 = !DILocation(line: 0, scope: !987)
!1010 = !DILocation(line: 306, column: 17, scope: !1007)
!1011 = !DILocation(line: 306, column: 18, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !83, line: 306, column: 13)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !83, line: 306, column: 17)
!1014 = !DILocation(line: 306, column: 13, scope: !1013)
!1015 = !DILocation(line: 306, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !83, line: 306, column: 31)
!1017 = !DILocation(line: 308, column: 19, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !83, line: 309, column: 9)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !83, line: 308, column: 9)
!1020 = !DILocalVariable(name: "tmp___0", scope: !895, file: !83, line: 276, type: !58)
!1021 = !DILocation(line: 308, column: 15, scope: !1019)
!1022 = !DILocation(line: 308, column: 25, scope: !1019)
!1023 = !DILocation(line: 308, column: 30, scope: !1019)
!1024 = !DILocation(line: 309, column: 21, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1013, file: !83, line: 309, column: 13)
!1026 = !DILocation(line: 309, column: 31, scope: !1025)
!1027 = !DILocation(line: 309, column: 15, scope: !1025)
!1028 = !DILocation(line: 309, column: 13, scope: !1013)
!1029 = !DILocation(line: 311, column: 44, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !83, line: 311, column: 11)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !83, line: 310, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !83, line: 309, column: 37)
!1033 = !DILocation(line: 311, column: 11, scope: !1030)
!1034 = !DILocation(line: 312, column: 11, scope: !1032)
!1035 = !DILocation(line: 314, column: 37, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !83, line: 315, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1013, file: !83, line: 314, column: 9)
!1038 = !DILocation(line: 314, column: 46, scope: !1036)
!1039 = !DILocation(line: 314, column: 55, scope: !1036)
!1040 = !DILocation(line: 314, column: 51, scope: !1036)
!1041 = !DILocation(line: 314, column: 68, scope: !1036)
!1042 = !DILocation(line: 314, column: 78, scope: !1036)
!1043 = !DILocation(line: 314, column: 62, scope: !1036)
!1044 = !DILocation(line: 314, column: 9, scope: !1036)
!1045 = !DILocation(line: 315, column: 17, scope: !1037)
!1046 = !DILocation(line: 315, column: 27, scope: !1037)
!1047 = !DILocation(line: 315, column: 11, scope: !1037)
!1048 = !DILocation(line: 315, column: 32, scope: !1037)
!1049 = !DILocation(line: 315, column: 38, scope: !1037)
!1050 = !DILocation(line: 306, column: 11, scope: !1037)
!1051 = distinct !{!1051, !1006, !1052}
!1052 = !DILocation(line: 308, column: 7, scope: !1007)
!1053 = !DILocation(line: 310, column: 7, scope: !1007)
!1054 = !DILocation(line: 317, column: 11, scope: !987)
!1055 = !DILocation(line: 317, column: 20, scope: !987)
!1056 = !DILocation(line: 318, column: 5, scope: !987)
!1057 = !DILocation(line: 320, column: 40, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !83, line: 320, column: 7)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !83, line: 319, column: 7)
!1060 = distinct !DILexicalBlock(scope: !977, file: !83, line: 318, column: 12)
!1061 = !DILocation(line: 320, column: 7, scope: !1058)
!1062 = !DILocation(line: 324, column: 3, scope: !978)
!1063 = !DILocation(line: 320, column: 38, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !83, line: 326, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !83, line: 325, column: 5)
!1066 = distinct !DILexicalBlock(scope: !972, file: !83, line: 324, column: 10)
!1067 = !DILocation(line: 320, column: 5, scope: !1064)
!1068 = !DILocation(line: 322, column: 3, scope: !924)
!1069 = !DILocation(line: 0, scope: !924)
!1070 = !DILocation(line: 324, column: 1, scope: !895)
!1071 = distinct !DISubprogram(name: "lakai_delete_program", scope: !83, file: !83, line: 742, type: !746, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1072 = !DILocalVariable(name: "handle", arg: 1, scope: !1071, file: !83, line: 742, type: !212)
!1073 = !DILocation(line: 0, scope: !1071)
!1074 = !DILocalVariable(name: "prognum", arg: 2, scope: !1071, file: !83, line: 742, type: !13)
!1075 = !DILocalVariable(name: "statusbuf", scope: !1071, file: !83, line: 744, type: !752)
!1076 = !DILocation(line: 744, column: 17, scope: !1071)
!1077 = !DILocalVariable(name: "__cil_tmp5", scope: !1071, file: !83, line: 746, type: !58)
!1078 = !DILocation(line: 746, column: 9, scope: !1071)
!1079 = !DILocalVariable(name: "__cil_tmp6", scope: !1071, file: !83, line: 747, type: !15)
!1080 = !DILocation(line: 747, column: 9, scope: !1071)
!1081 = !DILocalVariable(name: "__cil_tmp7", scope: !1071, file: !83, line: 748, type: !15)
!1082 = !DILocation(line: 748, column: 9, scope: !1071)
!1083 = !DILocalVariable(name: "__cil_tmp8", scope: !1071, file: !83, line: 749, type: !15)
!1084 = !DILocation(line: 749, column: 9, scope: !1071)
!1085 = !DILocalVariable(name: "__cil_tmp9", scope: !1071, file: !83, line: 750, type: !15)
!1086 = !DILocation(line: 750, column: 9, scope: !1071)
!1087 = !DILocalVariable(name: "__cil_tmp10", scope: !1071, file: !83, line: 751, type: !15)
!1088 = !DILocation(line: 751, column: 9, scope: !1071)
!1089 = !DILocalVariable(name: "__cil_tmp11", scope: !1071, file: !83, line: 752, type: !15)
!1090 = !DILocation(line: 752, column: 9, scope: !1071)
!1091 = !DILocation(line: 750, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !83, line: 750, column: 7)
!1093 = distinct !DILexicalBlock(scope: !1071, file: !83, line: 754, column: 3)
!1094 = !DILocation(line: 750, column: 24, scope: !1092)
!1095 = !DILocation(line: 750, column: 7, scope: !1093)
!1096 = !DILocation(line: 752, column: 38, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !83, line: 752, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !83, line: 751, column: 5)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !83, line: 750, column: 31)
!1100 = !DILocation(line: 752, column: 5, scope: !1097)
!1101 = !DILocation(line: 753, column: 5, scope: !1099)
!1102 = !DILocation(line: 750, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !83, line: 750, column: 7)
!1104 = !DILocation(line: 752, column: 38, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !83, line: 752, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !83, line: 751, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !83, line: 750, column: 19)
!1108 = !DILocation(line: 752, column: 5, scope: !1105)
!1109 = !DILocation(line: 753, column: 5, scope: !1107)
!1110 = !DILocation(line: 750, column: 14, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1103, file: !83, line: 750, column: 7)
!1112 = !DILocation(line: 750, column: 7, scope: !1103)
!1113 = !DILocation(line: 752, column: 38, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !83, line: 752, column: 5)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !83, line: 751, column: 5)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !83, line: 750, column: 20)
!1117 = !DILocation(line: 752, column: 5, scope: !1114)
!1118 = !DILocation(line: 753, column: 5, scope: !1116)
!1119 = !DILocation(line: 756, column: 15, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1093, file: !83, line: 756, column: 7)
!1121 = !DILocation(line: 756, column: 7, scope: !1093)
!1122 = !DILocation(line: 758, column: 38, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !83, line: 758, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !83, line: 757, column: 5)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !83, line: 756, column: 20)
!1126 = !DILocation(line: 758, column: 5, scope: !1123)
!1127 = !DILocation(line: 759, column: 5, scope: !1125)
!1128 = !DILocation(line: 756, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1120, file: !83, line: 756, column: 7)
!1130 = !DILocation(line: 756, column: 7, scope: !1120)
!1131 = !DILocation(line: 758, column: 38, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !83, line: 758, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !83, line: 757, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !83, line: 756, column: 24)
!1135 = !DILocation(line: 758, column: 5, scope: !1132)
!1136 = !DILocation(line: 759, column: 5, scope: !1134)
!1137 = !DILocation(line: 762, column: 45, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1093, file: !83, line: 761, column: 3)
!1139 = !DILocation(line: 762, column: 20, scope: !1138)
!1140 = !DILocation(line: 762, column: 18, scope: !1138)
!1141 = !DILocation(line: 763, column: 53, scope: !1138)
!1142 = !DILocation(line: 763, column: 47, scope: !1138)
!1143 = !DILocation(line: 763, column: 68, scope: !1138)
!1144 = !DILocation(line: 763, column: 45, scope: !1138)
!1145 = !DILocation(line: 763, column: 20, scope: !1138)
!1146 = !DILocation(line: 763, column: 18, scope: !1138)
!1147 = !DILocation(line: 766, column: 41, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1138, file: !83, line: 764, column: 3)
!1149 = !DILocation(line: 765, column: 15, scope: !1148)
!1150 = !DILocalVariable(name: "statuslen", scope: !1071, file: !83, line: 745, type: !13)
!1151 = !DILocation(line: 767, column: 20, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1093, file: !83, line: 767, column: 7)
!1153 = !DILocation(line: 767, column: 7, scope: !1093)
!1154 = !DILocation(line: 776, column: 38, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !83, line: 769, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !83, line: 768, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !83, line: 767, column: 26)
!1158 = !DILocation(line: 776, column: 5, scope: !1155)
!1159 = !DILocation(line: 779, column: 3, scope: !1157)
!1160 = !DILocation(line: 779, column: 3, scope: !1093)
!1161 = !DILocation(line: 0, scope: !1093)
!1162 = !DILocation(line: 781, column: 1, scope: !1071)
!1163 = distinct !DISubprogram(name: "lakai_free_program_list", scope: !83, file: !83, line: 329, type: !1164, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !898}
!1166 = !DILocalVariable(name: "lp", arg: 1, scope: !1163, file: !83, line: 329, type: !898)
!1167 = !DILocation(line: 0, scope: !1163)
!1168 = !DILocation(line: 333, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !83, line: 333, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 333, column: 3)
!1171 = !DILocation(line: 333, column: 7, scope: !1170)
!1172 = !DILocation(line: 335, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !83, line: 335, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !83, line: 333, column: 11)
!1175 = !DILocation(line: 335, column: 22, scope: !1173)
!1176 = !DILocation(line: 335, column: 9, scope: !1174)
!1177 = !DILocalVariable(name: "i", scope: !1163, file: !83, line: 331, type: !13)
!1178 = !DILocation(line: 337, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 339, column: 7)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !83, line: 338, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !83, line: 335, column: 27)
!1182 = !DILocation(line: 0, scope: !1181)
!1183 = !DILocation(line: 337, column: 17, scope: !1179)
!1184 = !DILocation(line: 337, column: 24, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 337, column: 13)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !83, line: 337, column: 17)
!1187 = !DILocation(line: 337, column: 18, scope: !1185)
!1188 = !DILocation(line: 337, column: 13, scope: !1186)
!1189 = !DILocation(line: 337, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !83, line: 337, column: 35)
!1191 = !DILocation(line: 339, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !83, line: 339, column: 13)
!1193 = !DILocation(line: 339, column: 29, scope: !1192)
!1194 = !DILocation(line: 339, column: 13, scope: !1192)
!1195 = !DILocation(line: 339, column: 13, scope: !1186)
!1196 = !DILocation(line: 342, column: 30, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !83, line: 341, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !83, line: 340, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1192, file: !83, line: 339, column: 35)
!1200 = !DILocation(line: 342, column: 40, scope: !1197)
!1201 = !DILocation(line: 342, column: 24, scope: !1197)
!1202 = !DILocation(line: 342, column: 11, scope: !1197)
!1203 = !DILocation(line: 345, column: 9, scope: !1199)
!1204 = !DILocation(line: 337, column: 11, scope: !1186)
!1205 = distinct !{!1205, !1178, !1206}
!1206 = !DILocation(line: 338, column: 7, scope: !1179)
!1207 = !DILocation(line: 340, column: 7, scope: !1179)
!1208 = !DILocation(line: 346, column: 24, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !83, line: 344, column: 7)
!1210 = distinct !DILexicalBlock(scope: !1181, file: !83, line: 343, column: 7)
!1211 = !DILocation(line: 346, column: 12, scope: !1209)
!1212 = !DILocation(line: 346, column: 7, scope: !1209)
!1213 = !DILocation(line: 349, column: 5, scope: !1181)
!1214 = !DILocation(line: 350, column: 3, scope: !1174)
!1215 = !DILocation(line: 349, column: 3, scope: !1170)
!1216 = distinct !DISubprogram(name: "lakai_setmode", scope: !83, file: !83, line: 173, type: !746, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1217 = !DILocalVariable(name: "handle", arg: 1, scope: !1216, file: !83, line: 173, type: !212)
!1218 = !DILocation(line: 0, scope: !1216)
!1219 = !DILocalVariable(name: "mode", arg: 2, scope: !1216, file: !83, line: 173, type: !13)
!1220 = !DILocalVariable(name: "__cil_tmp4", scope: !1216, file: !83, line: 176, type: !15)
!1221 = !DILocation(line: 176, column: 9, scope: !1216)
!1222 = !DILocalVariable(name: "__cil_tmp5", scope: !1216, file: !83, line: 177, type: !15)
!1223 = !DILocation(line: 177, column: 9, scope: !1216)
!1224 = !DILocalVariable(name: "__cil_tmp6", scope: !1216, file: !83, line: 178, type: !15)
!1225 = !DILocation(line: 178, column: 9, scope: !1216)
!1226 = !DILocalVariable(name: "__cil_tmp7", scope: !1216, file: !83, line: 179, type: !15)
!1227 = !DILocation(line: 179, column: 9, scope: !1216)
!1228 = !DILocalVariable(name: "__cil_tmp8", scope: !1216, file: !83, line: 180, type: !15)
!1229 = !DILocation(line: 180, column: 9, scope: !1216)
!1230 = !DILocation(line: 189, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !83, line: 189, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1216, file: !83, line: 182, column: 3)
!1233 = !DILocation(line: 189, column: 7, scope: !1232)
!1234 = !DILocation(line: 191, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !83, line: 189, column: 18)
!1236 = !DILocation(line: 192, column: 15, scope: !1235)
!1237 = !DILocation(line: 193, column: 3, scope: !1235)
!1238 = !DILocation(line: 194, column: 12, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !83, line: 194, column: 7)
!1240 = !DILocation(line: 194, column: 7, scope: !1231)
!1241 = !DILocation(line: 196, column: 15, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !83, line: 194, column: 18)
!1243 = !DILocation(line: 197, column: 15, scope: !1242)
!1244 = !DILocation(line: 198, column: 3, scope: !1242)
!1245 = !DILocation(line: 199, column: 12, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !83, line: 199, column: 7)
!1247 = !DILocation(line: 199, column: 7, scope: !1239)
!1248 = !DILocation(line: 201, column: 15, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !83, line: 199, column: 18)
!1250 = !DILocation(line: 202, column: 15, scope: !1249)
!1251 = !DILocation(line: 203, column: 3, scope: !1249)
!1252 = !DILocation(line: 206, column: 38, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !83, line: 205, column: 5)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !83, line: 204, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !83, line: 203, column: 10)
!1256 = !DILocation(line: 206, column: 5, scope: !1253)
!1257 = !DILocation(line: 207, column: 5, scope: !1255)
!1258 = !DILocation(line: 210, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1232, file: !83, line: 210, column: 7)
!1260 = !DILocation(line: 210, column: 24, scope: !1259)
!1261 = !DILocation(line: 210, column: 7, scope: !1232)
!1262 = !DILocation(line: 212, column: 38, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !83, line: 212, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !83, line: 211, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !83, line: 210, column: 31)
!1266 = !DILocation(line: 212, column: 5, scope: !1263)
!1267 = !DILocation(line: 213, column: 5, scope: !1265)
!1268 = !DILocation(line: 210, column: 14, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !83, line: 210, column: 7)
!1270 = !DILocation(line: 212, column: 38, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !83, line: 212, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !83, line: 211, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !83, line: 210, column: 19)
!1274 = !DILocation(line: 212, column: 5, scope: !1271)
!1275 = !DILocation(line: 213, column: 5, scope: !1273)
!1276 = !DILocation(line: 210, column: 14, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !83, line: 210, column: 7)
!1278 = !DILocation(line: 210, column: 7, scope: !1269)
!1279 = !DILocation(line: 212, column: 38, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !83, line: 212, column: 5)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !83, line: 211, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !83, line: 210, column: 20)
!1283 = !DILocation(line: 212, column: 5, scope: !1280)
!1284 = !DILocation(line: 213, column: 5, scope: !1282)
!1285 = !DILocation(line: 216, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !83, line: 216, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1232, file: !83, line: 215, column: 3)
!1288 = !DILocation(line: 216, column: 9, scope: !1286)
!1289 = !DILocalVariable(name: "tmp", scope: !1216, file: !83, line: 175, type: !13)
!1290 = !DILocation(line: 216, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1232, file: !83, line: 216, column: 7)
!1292 = !DILocation(line: 216, column: 7, scope: !1232)
!1293 = !DILocation(line: 218, column: 38, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !83, line: 218, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !83, line: 217, column: 5)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !83, line: 216, column: 17)
!1297 = !DILocation(line: 218, column: 5, scope: !1294)
!1298 = !DILocation(line: 219, column: 5, scope: !1296)
!1299 = !DILocation(line: 221, column: 3, scope: !1232)
!1300 = !DILocation(line: 0, scope: !1232)
!1301 = !DILocation(line: 223, column: 1, scope: !1216)
!1302 = distinct !DISubprogram(name: "send_command", scope: !83, file: !83, line: 1324, type: !1303, scopeLine: 1326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!13, !13, !15, !13, !58, !13, !58, !13}
!1305 = !DILocalVariable(name: "sg_fd", arg: 1, scope: !1302, file: !83, line: 1324, type: !13)
!1306 = !DILocation(line: 0, scope: !1302)
!1307 = !DILocalVariable(name: "cmdblk___14", arg: 2, scope: !1302, file: !83, line: 1324, type: !15)
!1308 = !DILocalVariable(name: "dirflag", arg: 3, scope: !1302, file: !83, line: 1324, type: !13)
!1309 = !DILocalVariable(name: "tosamp_ptr", arg: 4, scope: !1302, file: !83, line: 1324, type: !58)
!1310 = !DILocalVariable(name: "tosamp_len", arg: 5, scope: !1302, file: !83, line: 1325, type: !13)
!1311 = !DILocalVariable(name: "fromsamp_ptr", arg: 6, scope: !1302, file: !83, line: 1325, type: !58)
!1312 = !DILocalVariable(name: "fromsamp_len", arg: 7, scope: !1302, file: !83, line: 1325, type: !13)
!1313 = !DILocalVariable(name: "io_hdr", scope: !1302, file: !83, line: 1327, type: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "sg_io_hdr_t", file: !369, line: 43, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_hdr", file: !369, line: 43, size: 704, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !1315, file: !369, line: 44, baseType: !13, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dxfer_direction", scope: !1315, file: !369, line: 45, baseType: !13, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !1315, file: !369, line: 46, baseType: !73, size: 8, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mx_sb_len", scope: !1315, file: !369, line: 47, baseType: !73, size: 8, offset: 72)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "iovec_count", scope: !1315, file: !369, line: 48, baseType: !43, size: 16, offset: 80)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dxfer_len", scope: !1315, file: !369, line: 49, baseType: !65, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dxferp", scope: !1315, file: !369, line: 50, baseType: !58, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cmdp", scope: !1315, file: !369, line: 51, baseType: !78, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sbp", scope: !1315, file: !369, line: 52, baseType: !78, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1315, file: !369, line: 53, baseType: !65, size: 32, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !369, line: 54, baseType: !65, size: 32, offset: 352)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pack_id", scope: !1315, file: !369, line: 55, baseType: !13, size: 32, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1315, file: !369, line: 56, baseType: !58, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1315, file: !369, line: 57, baseType: !73, size: 8, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "masked_status", scope: !1315, file: !369, line: 58, baseType: !73, size: 8, offset: 520)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "msg_status", scope: !1315, file: !369, line: 59, baseType: !73, size: 8, offset: 528)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sb_len_wr", scope: !1315, file: !369, line: 60, baseType: !73, size: 8, offset: 536)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "host_status", scope: !1315, file: !369, line: 61, baseType: !43, size: 16, offset: 544)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1315, file: !369, line: 62, baseType: !43, size: 16, offset: 560)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "resid", scope: !1315, file: !369, line: 63, baseType: !13, size: 32, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1315, file: !369, line: 64, baseType: !65, size: 32, offset: 608)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1315, file: !369, line: 65, baseType: !65, size: 32, offset: 640)
!1339 = !DILocation(line: 1327, column: 15, scope: !1302)
!1340 = !DILocalVariable(name: "sense_buffer", scope: !1302, file: !83, line: 1328, type: !1341)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 32)
!1344 = !DILocation(line: 1328, column: 17, scope: !1302)
!1345 = !DILocalVariable(name: "__cil_tmp11", scope: !1302, file: !83, line: 1330, type: !58)
!1346 = !DILocation(line: 1330, column: 9, scope: !1302)
!1347 = !DILocalVariable(name: "__cil_tmp12", scope: !1302, file: !83, line: 1331, type: !15)
!1348 = !DILocation(line: 1331, column: 9, scope: !1302)
!1349 = !DILocalVariable(name: "__cil_tmp13", scope: !1302, file: !83, line: 1332, type: !15)
!1350 = !DILocation(line: 1332, column: 9, scope: !1302)
!1351 = !DILocalVariable(name: "__cil_tmp14", scope: !1302, file: !83, line: 1333, type: !15)
!1352 = !DILocation(line: 1333, column: 9, scope: !1302)
!1353 = !DILocalVariable(name: "__cil_tmp15", scope: !1302, file: !83, line: 1334, type: !15)
!1354 = !DILocation(line: 1334, column: 9, scope: !1302)
!1355 = !DILocation(line: 1332, column: 10, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !83, line: 1338, column: 3)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1337, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1302, file: !83, line: 1336, column: 3)
!1359 = !DILocation(line: 1332, column: 3, scope: !1356)
!1360 = !DILocation(line: 1333, column: 10, scope: !1357)
!1361 = !DILocation(line: 1333, column: 23, scope: !1357)
!1362 = !DILocation(line: 1334, column: 10, scope: !1357)
!1363 = !DILocation(line: 1334, column: 18, scope: !1357)
!1364 = !DILocation(line: 1336, column: 10, scope: !1357)
!1365 = !DILocation(line: 1336, column: 20, scope: !1357)
!1366 = !DILocation(line: 1338, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1338, column: 7)
!1368 = !DILocation(line: 1338, column: 7, scope: !1358)
!1369 = !DILocation(line: 1341, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !83, line: 1338, column: 21)
!1371 = !DILocation(line: 1341, column: 28, scope: !1370)
!1372 = !DILocation(line: 1342, column: 12, scope: !1370)
!1373 = !DILocation(line: 1342, column: 22, scope: !1370)
!1374 = !DILocation(line: 1343, column: 12, scope: !1370)
!1375 = !DILocation(line: 1343, column: 19, scope: !1370)
!1376 = !DILocation(line: 1344, column: 3, scope: !1370)
!1377 = !DILocation(line: 1348, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !83, line: 1344, column: 10)
!1379 = !DILocation(line: 1348, column: 28, scope: !1378)
!1380 = !DILocation(line: 1349, column: 12, scope: !1378)
!1381 = !DILocation(line: 1349, column: 22, scope: !1378)
!1382 = !DILocation(line: 1350, column: 12, scope: !1378)
!1383 = !DILocation(line: 1350, column: 19, scope: !1378)
!1384 = !DILocation(line: 1360, column: 10, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1352, column: 3)
!1386 = !DILocation(line: 1360, column: 15, scope: !1385)
!1387 = !DILocation(line: 1361, column: 16, scope: !1385)
!1388 = !DILocation(line: 1361, column: 10, scope: !1385)
!1389 = !DILocation(line: 1361, column: 14, scope: !1385)
!1390 = !DILocation(line: 1362, column: 10, scope: !1385)
!1391 = !DILocation(line: 1362, column: 18, scope: !1385)
!1392 = !DILocation(line: 1367, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1385, file: !83, line: 1363, column: 3)
!1394 = !DILocalVariable(name: "tmp", scope: !1302, file: !83, line: 1329, type: !13)
!1395 = !DILocation(line: 1367, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1367, column: 7)
!1397 = !DILocation(line: 1367, column: 7, scope: !1358)
!1398 = !DILocation(line: 1369, column: 38, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !83, line: 1369, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !83, line: 1368, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !83, line: 1367, column: 16)
!1402 = !DILocation(line: 1369, column: 5, scope: !1399)
!1403 = !DILocation(line: 1370, column: 5, scope: !1401)
!1404 = !DILocation(line: 1381, column: 18, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1381, column: 7)
!1406 = !DILocation(line: 1381, column: 23, scope: !1405)
!1407 = !DILocation(line: 1381, column: 29, scope: !1405)
!1408 = !DILocation(line: 1381, column: 7, scope: !1358)
!1409 = !DILocation(line: 1387, column: 38, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !83, line: 1383, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !83, line: 1382, column: 5)
!1412 = distinct !DILexicalBlock(scope: !1405, file: !83, line: 1381, column: 37)
!1413 = !DILocation(line: 1387, column: 5, scope: !1410)
!1414 = !DILocation(line: 1388, column: 5, scope: !1412)
!1415 = !DILocation(line: 1391, column: 20, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1358, file: !83, line: 1391, column: 7)
!1417 = !DILocation(line: 1391, column: 7, scope: !1416)
!1418 = !DILocation(line: 1391, column: 30, scope: !1416)
!1419 = !DILocation(line: 1391, column: 7, scope: !1358)
!1420 = !DILocation(line: 1393, column: 38, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 1393, column: 5)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !83, line: 1392, column: 5)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !83, line: 1391, column: 35)
!1424 = !DILocation(line: 1394, column: 26, scope: !1421)
!1425 = !DILocation(line: 1394, column: 13, scope: !1421)
!1426 = !DILocation(line: 1393, column: 5, scope: !1421)
!1427 = !DILocation(line: 1394, column: 38, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 1396, column: 5)
!1429 = !DILocation(line: 1394, column: 5, scope: !1428)
!1430 = !DILocation(line: 1395, column: 21, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 1396, column: 5)
!1432 = !DILocation(line: 1395, column: 39, scope: !1431)
!1433 = !DILocation(line: 1395, column: 26, scope: !1431)
!1434 = !DILocation(line: 1395, column: 5, scope: !1431)
!1435 = !DILocation(line: 1396, column: 5, scope: !1423)
!1436 = !DILocation(line: 1399, column: 3, scope: !1358)
!1437 = !DILocation(line: 0, scope: !1358)
!1438 = !DILocation(line: 1401, column: 1, scope: !1302)
!1439 = distinct !DISubprogram(name: "lakai_get_status_report", scope: !83, file: !83, line: 229, type: !1440, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!13, !212, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "LakaiStatus", file: !156, line: 105, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_LakaiStatus_26", file: !156, line: 105, size: 192, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "osversion", scope: !1444, file: !156, line: 106, baseType: !13, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nummaxblocks", scope: !1444, file: !156, line: 107, baseType: !13, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "numfreeblocks", scope: !1444, file: !156, line: 108, baseType: !13, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nummaxsamples", scope: !1444, file: !156, line: 109, baseType: !13, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "numfreesamples", scope: !1444, file: !156, line: 110, baseType: !13, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "eoxchannel", scope: !1444, file: !156, line: 111, baseType: !13, size: 32, offset: 160)
!1452 = !DILocalVariable(name: "handle", arg: 1, scope: !1439, file: !83, line: 229, type: !212)
!1453 = !DILocation(line: 0, scope: !1439)
!1454 = !DILocalVariable(name: "ls", arg: 2, scope: !1439, file: !83, line: 229, type: !1442)
!1455 = !DILocalVariable(name: "statusbuf", scope: !1439, file: !83, line: 231, type: !752)
!1456 = !DILocation(line: 231, column: 17, scope: !1439)
!1457 = !DILocalVariable(name: "__cil_tmp5", scope: !1439, file: !83, line: 233, type: !58)
!1458 = !DILocation(line: 233, column: 9, scope: !1439)
!1459 = !DILocalVariable(name: "__cil_tmp6", scope: !1439, file: !83, line: 234, type: !15)
!1460 = !DILocation(line: 234, column: 9, scope: !1439)
!1461 = !DILocalVariable(name: "__cil_tmp7", scope: !1439, file: !83, line: 235, type: !15)
!1462 = !DILocation(line: 235, column: 9, scope: !1439)
!1463 = !DILocalVariable(name: "__cil_tmp8", scope: !1439, file: !83, line: 236, type: !15)
!1464 = !DILocation(line: 236, column: 9, scope: !1439)
!1465 = !DILocalVariable(name: "__cil_tmp9", scope: !1439, file: !83, line: 237, type: !15)
!1466 = !DILocation(line: 237, column: 9, scope: !1439)
!1467 = !DILocation(line: 237, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !83, line: 237, column: 7)
!1469 = distinct !DILexicalBlock(scope: !1439, file: !83, line: 239, column: 3)
!1470 = !DILocation(line: 237, column: 24, scope: !1468)
!1471 = !DILocation(line: 237, column: 7, scope: !1469)
!1472 = !DILocation(line: 239, column: 38, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !83, line: 239, column: 5)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !83, line: 238, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !83, line: 237, column: 31)
!1476 = !DILocation(line: 239, column: 5, scope: !1473)
!1477 = !DILocation(line: 240, column: 5, scope: !1475)
!1478 = !DILocation(line: 237, column: 14, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1468, file: !83, line: 237, column: 7)
!1480 = !DILocation(line: 239, column: 38, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !83, line: 239, column: 5)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !83, line: 238, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !83, line: 237, column: 19)
!1484 = !DILocation(line: 239, column: 5, scope: !1481)
!1485 = !DILocation(line: 240, column: 5, scope: !1483)
!1486 = !DILocation(line: 237, column: 14, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1479, file: !83, line: 237, column: 7)
!1488 = !DILocation(line: 237, column: 7, scope: !1479)
!1489 = !DILocation(line: 239, column: 38, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !83, line: 239, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !83, line: 238, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !83, line: 237, column: 20)
!1493 = !DILocation(line: 239, column: 5, scope: !1490)
!1494 = !DILocation(line: 240, column: 5, scope: !1492)
!1495 = !DILocation(line: 247, column: 41, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !83, line: 243, column: 3)
!1497 = distinct !DILexicalBlock(scope: !1469, file: !83, line: 242, column: 3)
!1498 = !DILocation(line: 246, column: 15, scope: !1496)
!1499 = !DILocalVariable(name: "statuslen", scope: !1439, file: !83, line: 232, type: !13)
!1500 = !DILocation(line: 247, column: 20, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1469, file: !83, line: 247, column: 7)
!1502 = !DILocation(line: 247, column: 7, scope: !1469)
!1503 = !DILocation(line: 256, column: 38, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !83, line: 249, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !83, line: 248, column: 5)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !83, line: 247, column: 26)
!1507 = !DILocation(line: 256, column: 5, scope: !1504)
!1508 = !DILocation(line: 259, column: 3, scope: !1506)
!1509 = !DILocation(line: 262, column: 3, scope: !1469)
!1510 = !DILocation(line: 0, scope: !1469)
!1511 = !DILocation(line: 264, column: 1, scope: !1439)
!1512 = distinct !DISubprogram(name: "sendrecv_scsimidi", scope: !83, file: !83, line: 1480, type: !1513, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!13, !212, !15, !65, !15}
!1515 = !DILocalVariable(name: "handle", arg: 1, scope: !1512, file: !83, line: 1480, type: !212)
!1516 = !DILocation(line: 0, scope: !1512)
!1517 = !DILocalVariable(name: "sysexblk", arg: 2, scope: !1512, file: !83, line: 1480, type: !15)
!1518 = !DILocalVariable(name: "sysexblksize", arg: 3, scope: !1512, file: !83, line: 1480, type: !65)
!1519 = !DILocalVariable(name: "destbuf", arg: 4, scope: !1512, file: !83, line: 1481, type: !15)
!1520 = !DILocalVariable(name: "outbuf", scope: !1512, file: !83, line: 1483, type: !1341)
!1521 = !DILocation(line: 1483, column: 17, scope: !1512)
!1522 = !DILocalVariable(name: "__cil_tmp11", scope: !1512, file: !83, line: 1489, type: !58)
!1523 = !DILocation(line: 1489, column: 9, scope: !1512)
!1524 = !DILocalVariable(name: "__cil_tmp12", scope: !1512, file: !83, line: 1490, type: !15)
!1525 = !DILocation(line: 1490, column: 9, scope: !1512)
!1526 = !DILocalVariable(name: "__cil_tmp13", scope: !1512, file: !83, line: 1491, type: !15)
!1527 = !DILocation(line: 1491, column: 9, scope: !1512)
!1528 = !DILocalVariable(name: "__cil_tmp14", scope: !1512, file: !83, line: 1492, type: !15)
!1529 = !DILocation(line: 1492, column: 9, scope: !1512)
!1530 = !DILocalVariable(name: "__cil_tmp15", scope: !1512, file: !83, line: 1493, type: !15)
!1531 = !DILocation(line: 1493, column: 9, scope: !1512)
!1532 = !DILocalVariable(name: "__cil_tmp16", scope: !1512, file: !83, line: 1494, type: !15)
!1533 = !DILocation(line: 1494, column: 9, scope: !1512)
!1534 = !DILocalVariable(name: "__cil_tmp17", scope: !1512, file: !83, line: 1495, type: !15)
!1535 = !DILocation(line: 1495, column: 9, scope: !1512)
!1536 = !DILocalVariable(name: "__cil_tmp18", scope: !1512, file: !83, line: 1496, type: !15)
!1537 = !DILocation(line: 1496, column: 9, scope: !1512)
!1538 = !DILocation(line: 1509, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1509, column: 7)
!1540 = distinct !DILexicalBlock(scope: !1512, file: !83, line: 1498, column: 3)
!1541 = !DILocation(line: 1509, column: 24, scope: !1539)
!1542 = !DILocation(line: 1509, column: 7, scope: !1540)
!1543 = !DILocation(line: 1511, column: 38, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !83, line: 1511, column: 5)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !83, line: 1510, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !83, line: 1509, column: 31)
!1547 = !DILocation(line: 1511, column: 5, scope: !1544)
!1548 = !DILocation(line: 1512, column: 5, scope: !1546)
!1549 = !DILocation(line: 1509, column: 14, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !83, line: 1509, column: 7)
!1551 = !DILocation(line: 1511, column: 38, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !83, line: 1511, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !83, line: 1510, column: 5)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !83, line: 1509, column: 19)
!1555 = !DILocation(line: 1511, column: 5, scope: !1552)
!1556 = !DILocation(line: 1512, column: 5, scope: !1554)
!1557 = !DILocation(line: 1509, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1550, file: !83, line: 1509, column: 7)
!1559 = !DILocation(line: 1509, column: 7, scope: !1550)
!1560 = !DILocation(line: 1511, column: 38, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !83, line: 1511, column: 5)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !83, line: 1510, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !83, line: 1509, column: 20)
!1564 = !DILocation(line: 1511, column: 5, scope: !1561)
!1565 = !DILocation(line: 1512, column: 5, scope: !1563)
!1566 = !DILocation(line: 1516, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1516, column: 7)
!1568 = !DILocation(line: 1516, column: 7, scope: !1540)
!1569 = !DILocation(line: 1518, column: 38, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !83, line: 1518, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !83, line: 1517, column: 5)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !83, line: 1516, column: 30)
!1573 = !DILocation(line: 1518, column: 5, scope: !1570)
!1574 = !DILocation(line: 1519, column: 5, scope: !1572)
!1575 = !DILocation(line: 1522, column: 45, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1521, column: 3)
!1577 = !DILocation(line: 1522, column: 38, scope: !1576)
!1578 = !DILocation(line: 1522, column: 75, scope: !1576)
!1579 = !DILocation(line: 1522, column: 21, scope: !1576)
!1580 = !DILocation(line: 1522, column: 19, scope: !1576)
!1581 = !DILocation(line: 1523, column: 52, scope: !1576)
!1582 = !DILocation(line: 1523, column: 62, scope: !1576)
!1583 = !DILocation(line: 1523, column: 21, scope: !1576)
!1584 = !DILocation(line: 1523, column: 19, scope: !1576)
!1585 = !DILocation(line: 1524, column: 52, scope: !1576)
!1586 = !DILocation(line: 1524, column: 65, scope: !1576)
!1587 = !DILocation(line: 1524, column: 21, scope: !1576)
!1588 = !DILocation(line: 1524, column: 19, scope: !1576)
!1589 = !DILocation(line: 1526, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1576, file: !83, line: 1525, column: 3)
!1591 = !DILocation(line: 1533, column: 22, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1576, file: !83, line: 1528, column: 3)
!1593 = !DILocation(line: 1533, column: 9, scope: !1592)
!1594 = !DILocalVariable(name: "tmp", scope: !1512, file: !83, line: 1486, type: !13)
!1595 = !DILocation(line: 1533, column: 11, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1533, column: 7)
!1597 = !DILocation(line: 1533, column: 7, scope: !1540)
!1598 = !DILocation(line: 1535, column: 38, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !83, line: 1535, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !83, line: 1534, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !83, line: 1533, column: 16)
!1602 = !DILocation(line: 1535, column: 5, scope: !1599)
!1603 = !DILocation(line: 1536, column: 5, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !83, line: 1537, column: 5)
!1605 = !DILocation(line: 1537, column: 5, scope: !1601)
!1606 = !DILocalVariable(name: "currentlen", scope: !1512, file: !83, line: 1485, type: !13)
!1607 = !DILocation(line: 1543, column: 3, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !83, line: 1543, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1542, column: 3)
!1610 = !DILocation(line: 0, scope: !1540)
!1611 = !DILocation(line: 1543, column: 13, scope: !1608)
!1612 = !DILocation(line: 1546, column: 28, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !83, line: 1547, column: 5)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !83, line: 1546, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !83, line: 1543, column: 13)
!1616 = !DILocation(line: 1546, column: 90, scope: !1613)
!1617 = !DILocation(line: 1546, column: 15, scope: !1613)
!1618 = !DILocalVariable(name: "tmp___0", scope: !1512, file: !83, line: 1487, type: !13)
!1619 = !DILocation(line: 1546, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !83, line: 1546, column: 9)
!1621 = !DILocation(line: 1546, column: 9, scope: !1615)
!1622 = !DILocation(line: 1548, column: 40, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !83, line: 1548, column: 7)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !83, line: 1547, column: 7)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !83, line: 1546, column: 22)
!1626 = !DILocation(line: 1548, column: 7, scope: !1623)
!1627 = !DILocation(line: 1549, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !83, line: 1550, column: 7)
!1629 = !DILocation(line: 1550, column: 7, scope: !1625)
!1630 = !DILocation(line: 1556, column: 23, scope: !1615)
!1631 = !DILocation(line: 1556, column: 17, scope: !1615)
!1632 = !DILocation(line: 1556, column: 33, scope: !1615)
!1633 = !DILocation(line: 1556, column: 49, scope: !1615)
!1634 = !DILocation(line: 1556, column: 43, scope: !1615)
!1635 = !DILocation(line: 1556, column: 59, scope: !1615)
!1636 = !DILocation(line: 1556, column: 40, scope: !1615)
!1637 = !DILocation(line: 1556, column: 74, scope: !1615)
!1638 = !DILocation(line: 1556, column: 68, scope: !1615)
!1639 = !DILocation(line: 1556, column: 66, scope: !1615)
!1640 = !DILocalVariable(name: "templen", scope: !1512, file: !83, line: 1484, type: !13)
!1641 = !DILocation(line: 1559, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1615, file: !83, line: 1559, column: 9)
!1643 = !DILocation(line: 1559, column: 9, scope: !1615)
!1644 = !DILocation(line: 1561, column: 20, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !83, line: 1560, column: 7)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !83, line: 1559, column: 22)
!1647 = !DILocation(line: 1561, column: 18, scope: !1645)
!1648 = !DILocation(line: 1562, column: 20, scope: !1645)
!1649 = !DILocation(line: 1562, column: 18, scope: !1645)
!1650 = !DILocation(line: 1563, column: 20, scope: !1645)
!1651 = !DILocation(line: 1563, column: 18, scope: !1645)
!1652 = !DILocation(line: 1566, column: 30, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1645, file: !83, line: 1564, column: 7)
!1654 = !DILocation(line: 1567, column: 47, scope: !1653)
!1655 = !DILocation(line: 1566, column: 17, scope: !1653)
!1656 = !DILocalVariable(name: "tmp___1", scope: !1512, file: !83, line: 1488, type: !13)
!1657 = !DILocation(line: 1566, column: 19, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !83, line: 1566, column: 11)
!1659 = !DILocation(line: 1566, column: 11, scope: !1646)
!1660 = !DILocation(line: 1569, column: 42, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !83, line: 1568, column: 9)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !83, line: 1567, column: 9)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !83, line: 1566, column: 24)
!1664 = !DILocation(line: 1569, column: 9, scope: !1661)
!1665 = !DILocation(line: 1570, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !83, line: 1571, column: 9)
!1667 = !DILocation(line: 1571, column: 9, scope: !1663)
!1668 = !DILocation(line: 1574, column: 18, scope: !1646)
!1669 = !DILocation(line: 1575, column: 5, scope: !1646)
!1670 = !DILocation(line: 1543, column: 20, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1615, file: !83, line: 1543, column: 9)
!1672 = !DILocation(line: 1543, column: 9, scope: !1615)
!1673 = !DILocation(line: 1543, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !83, line: 1543, column: 26)
!1675 = distinct !{!1675, !1607, !1676}
!1676 = !DILocation(line: 1545, column: 3, scope: !1608)
!1677 = !DILocation(line: 1547, column: 3, scope: !1608)
!1678 = !DILocation(line: 1580, column: 3, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !83, line: 1551, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1540, file: !83, line: 1550, column: 3)
!1681 = !DILocation(line: 1581, column: 3, scope: !1540)
!1682 = !DILocation(line: 1583, column: 1, scope: !1512)
!1683 = distinct !DISubprogram(name: "lakai_akaitoascii", scope: !83, file: !83, line: 1270, type: !1684, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !15, !15, !13}
!1686 = !DILocalVariable(name: "src", arg: 1, scope: !1683, file: !83, line: 1270, type: !15)
!1687 = !DILocation(line: 0, scope: !1683)
!1688 = !DILocalVariable(name: "dst", arg: 2, scope: !1683, file: !83, line: 1270, type: !15)
!1689 = !DILocalVariable(name: "len", arg: 3, scope: !1683, file: !83, line: 1270, type: !13)
!1690 = !DILocalVariable(name: "i", scope: !1683, file: !83, line: 1272, type: !13)
!1691 = !DILocation(line: 1274, column: 3, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !83, line: 1276, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !83, line: 1275, column: 3)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !83, line: 1276, column: 3)
!1695 = !DILocation(line: 0, scope: !1694)
!1696 = !DILocation(line: 1274, column: 13, scope: !1692)
!1697 = !DILocation(line: 1274, column: 14, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !83, line: 1274, column: 9)
!1699 = distinct !DILexicalBlock(scope: !1692, file: !83, line: 1274, column: 13)
!1700 = !DILocation(line: 1274, column: 9, scope: !1699)
!1701 = !DILocation(line: 1274, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !83, line: 1274, column: 22)
!1703 = !DILocation(line: 1276, column: 36, scope: !1699)
!1704 = !DILocation(line: 1276, column: 30, scope: !1699)
!1705 = !DILocalVariable(name: "val_in", scope: !1683, file: !83, line: 1273, type: !73)
!1706 = !DILocation(line: 1277, column: 9, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1699, file: !83, line: 1277, column: 9)
!1708 = !DILocation(line: 1277, column: 22, scope: !1707)
!1709 = !DILocation(line: 1277, column: 9, scope: !1699)
!1710 = !DILocation(line: 1278, column: 34, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !83, line: 1277, column: 28)
!1712 = !DILocation(line: 1278, column: 47, scope: !1711)
!1713 = !DILocation(line: 1278, column: 17, scope: !1711)
!1714 = !DILocalVariable(name: "val_out", scope: !1683, file: !83, line: 1274, type: !73)
!1715 = !DILocation(line: 1279, column: 5, scope: !1711)
!1716 = !DILocation(line: 1279, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1707, file: !83, line: 1279, column: 9)
!1718 = !DILocation(line: 1279, column: 22, scope: !1717)
!1719 = !DILocation(line: 1279, column: 9, scope: !1707)
!1720 = !DILocation(line: 1279, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !83, line: 1279, column: 11)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !83, line: 1279, column: 29)
!1723 = !DILocation(line: 1279, column: 24, scope: !1721)
!1724 = !DILocation(line: 1279, column: 11, scope: !1722)
!1725 = !DILocation(line: 1280, column: 36, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !83, line: 1279, column: 31)
!1727 = !DILocation(line: 1280, column: 49, scope: !1726)
!1728 = !DILocation(line: 1280, column: 19, scope: !1726)
!1729 = !DILocation(line: 1281, column: 7, scope: !1726)
!1730 = !DILocation(line: 1279, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1721, file: !83, line: 1281, column: 14)
!1732 = !DILocation(line: 1281, column: 5, scope: !1722)
!1733 = !DILocation(line: 1281, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1717, file: !83, line: 1281, column: 9)
!1735 = !DILocation(line: 1281, column: 22, scope: !1734)
!1736 = !DILocation(line: 1281, column: 9, scope: !1717)
!1737 = !DILocation(line: 1283, column: 5, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !83, line: 1281, column: 29)
!1739 = !DILocation(line: 1283, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !83, line: 1283, column: 9)
!1741 = !DILocation(line: 1283, column: 22, scope: !1740)
!1742 = !DILocation(line: 1283, column: 9, scope: !1734)
!1743 = !DILocation(line: 1285, column: 5, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !83, line: 1283, column: 29)
!1745 = !DILocation(line: 1285, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !83, line: 1285, column: 9)
!1747 = !DILocation(line: 1285, column: 22, scope: !1746)
!1748 = !DILocation(line: 1285, column: 9, scope: !1740)
!1749 = !DILocation(line: 1287, column: 5, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !83, line: 1285, column: 29)
!1751 = !DILocation(line: 1287, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !83, line: 1287, column: 9)
!1753 = !DILocation(line: 1287, column: 22, scope: !1752)
!1754 = !DILocation(line: 1287, column: 9, scope: !1746)
!1755 = !DILocation(line: 1289, column: 5, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !83, line: 1287, column: 29)
!1757 = !DILocation(line: 0, scope: !1752)
!1758 = !DILocation(line: 0, scope: !1746)
!1759 = !DILocation(line: 0, scope: !1740)
!1760 = !DILocation(line: 0, scope: !1734)
!1761 = !DILocation(line: 0, scope: !1717)
!1762 = !DILocation(line: 0, scope: !1707)
!1763 = !DILocation(line: 1292, column: 11, scope: !1699)
!1764 = !DILocation(line: 1292, column: 16, scope: !1699)
!1765 = !DILocation(line: 1274, column: 7, scope: !1699)
!1766 = distinct !{!1766, !1691, !1767}
!1767 = !DILocation(line: 1275, column: 3, scope: !1692)
!1768 = !DILocation(line: 1277, column: 3, scope: !1692)
!1769 = !DILocation(line: 1294, column: 3, scope: !1694)
!1770 = distinct !DISubprogram(name: "lakai_get_program", scope: !83, file: !83, line: 447, type: !1771, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!13, !212, !13, !78}
!1773 = !DILocalVariable(name: "handle", arg: 1, scope: !1770, file: !83, line: 447, type: !212)
!1774 = !DILocation(line: 0, scope: !1770)
!1775 = !DILocalVariable(name: "prognum", arg: 2, scope: !1770, file: !83, line: 447, type: !13)
!1776 = !DILocalVariable(name: "data", arg: 3, scope: !1770, file: !83, line: 447, type: !78)
!1777 = !DILocalVariable(name: "finalbuf", scope: !1770, file: !83, line: 449, type: !1778)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8192, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 1024)
!1781 = !DILocation(line: 449, column: 17, scope: !1770)
!1782 = !DILocalVariable(name: "__cil_tmp8", scope: !1770, file: !83, line: 453, type: !58)
!1783 = !DILocation(line: 453, column: 9, scope: !1770)
!1784 = !DILocalVariable(name: "__cil_tmp9", scope: !1770, file: !83, line: 454, type: !15)
!1785 = !DILocation(line: 454, column: 9, scope: !1770)
!1786 = !DILocalVariable(name: "__cil_tmp10", scope: !1770, file: !83, line: 455, type: !15)
!1787 = !DILocation(line: 455, column: 9, scope: !1770)
!1788 = !DILocalVariable(name: "__cil_tmp11", scope: !1770, file: !83, line: 456, type: !15)
!1789 = !DILocation(line: 456, column: 9, scope: !1770)
!1790 = !DILocalVariable(name: "__cil_tmp12", scope: !1770, file: !83, line: 457, type: !15)
!1791 = !DILocation(line: 457, column: 9, scope: !1770)
!1792 = !DILocalVariable(name: "__cil_tmp13", scope: !1770, file: !83, line: 458, type: !15)
!1793 = !DILocation(line: 458, column: 9, scope: !1770)
!1794 = !DILocalVariable(name: "__cil_tmp14", scope: !1770, file: !83, line: 459, type: !15)
!1795 = !DILocation(line: 459, column: 9, scope: !1770)
!1796 = !DILocation(line: 457, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !83, line: 457, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1770, file: !83, line: 461, column: 3)
!1799 = !DILocation(line: 457, column: 24, scope: !1797)
!1800 = !DILocation(line: 457, column: 7, scope: !1798)
!1801 = !DILocation(line: 459, column: 38, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !83, line: 459, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !83, line: 458, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1797, file: !83, line: 457, column: 31)
!1805 = !DILocation(line: 459, column: 5, scope: !1802)
!1806 = !DILocation(line: 460, column: 5, scope: !1804)
!1807 = !DILocation(line: 457, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1797, file: !83, line: 457, column: 7)
!1809 = !DILocation(line: 459, column: 38, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !83, line: 459, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !83, line: 458, column: 5)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !83, line: 457, column: 19)
!1813 = !DILocation(line: 459, column: 5, scope: !1810)
!1814 = !DILocation(line: 460, column: 5, scope: !1812)
!1815 = !DILocation(line: 457, column: 14, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1808, file: !83, line: 457, column: 7)
!1817 = !DILocation(line: 457, column: 7, scope: !1808)
!1818 = !DILocation(line: 459, column: 38, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !83, line: 459, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !83, line: 458, column: 5)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !83, line: 457, column: 20)
!1822 = !DILocation(line: 459, column: 5, scope: !1819)
!1823 = !DILocation(line: 460, column: 5, scope: !1821)
!1824 = !DILocation(line: 463, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1798, file: !83, line: 463, column: 7)
!1826 = !DILocation(line: 463, column: 7, scope: !1798)
!1827 = !DILocation(line: 465, column: 38, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !83, line: 465, column: 5)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !83, line: 464, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !83, line: 463, column: 20)
!1831 = !DILocation(line: 465, column: 5, scope: !1828)
!1832 = !DILocation(line: 466, column: 5, scope: !1830)
!1833 = !DILocation(line: 463, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1825, file: !83, line: 463, column: 7)
!1835 = !DILocation(line: 463, column: 7, scope: !1825)
!1836 = !DILocation(line: 465, column: 38, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !83, line: 465, column: 5)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !83, line: 464, column: 5)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !83, line: 463, column: 24)
!1840 = !DILocation(line: 465, column: 5, scope: !1837)
!1841 = !DILocation(line: 466, column: 5, scope: !1839)
!1842 = !DILocation(line: 469, column: 45, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1798, file: !83, line: 468, column: 3)
!1844 = !DILocation(line: 469, column: 20, scope: !1843)
!1845 = !DILocation(line: 469, column: 18, scope: !1843)
!1846 = !DILocation(line: 470, column: 53, scope: !1843)
!1847 = !DILocation(line: 470, column: 47, scope: !1843)
!1848 = !DILocation(line: 470, column: 68, scope: !1843)
!1849 = !DILocation(line: 470, column: 45, scope: !1843)
!1850 = !DILocation(line: 470, column: 20, scope: !1843)
!1851 = !DILocation(line: 470, column: 18, scope: !1843)
!1852 = !DILocation(line: 473, column: 40, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1843, file: !83, line: 471, column: 3)
!1854 = !DILocation(line: 472, column: 14, scope: !1853)
!1855 = !DILocalVariable(name: "finallen", scope: !1770, file: !83, line: 451, type: !13)
!1856 = !DILocation(line: 473, column: 16, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1798, file: !83, line: 473, column: 7)
!1858 = !DILocation(line: 473, column: 7, scope: !1798)
!1859 = !DILocation(line: 475, column: 38, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !83, line: 475, column: 5)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !83, line: 474, column: 5)
!1862 = distinct !DILexicalBlock(scope: !1857, file: !83, line: 473, column: 22)
!1863 = !DILocation(line: 475, column: 5, scope: !1860)
!1864 = !DILocation(line: 476, column: 5, scope: !1862)
!1865 = !DILocation(line: 484, column: 23, scope: !1798)
!1866 = !DILocation(line: 484, column: 28, scope: !1798)
!1867 = !DILocalVariable(name: "numvals", scope: !1770, file: !83, line: 452, type: !13)
!1868 = !DILocalVariable(name: "i", scope: !1770, file: !83, line: 450, type: !13)
!1869 = !DILocation(line: 485, column: 3, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !83, line: 487, column: 3)
!1871 = distinct !DILexicalBlock(scope: !1798, file: !83, line: 486, column: 3)
!1872 = !DILocation(line: 0, scope: !1798)
!1873 = !DILocation(line: 485, column: 13, scope: !1870)
!1874 = !DILocation(line: 485, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !83, line: 485, column: 9)
!1876 = distinct !DILexicalBlock(scope: !1870, file: !83, line: 485, column: 13)
!1877 = !DILocation(line: 485, column: 9, scope: !1876)
!1878 = !DILocation(line: 485, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !83, line: 485, column: 26)
!1880 = !DILocation(line: 487, column: 57, scope: !1876)
!1881 = !DILocation(line: 487, column: 53, scope: !1876)
!1882 = !DILocation(line: 487, column: 42, scope: !1876)
!1883 = !DILocation(line: 487, column: 36, scope: !1876)
!1884 = !DILocation(line: 487, column: 87, scope: !1876)
!1885 = !DILocation(line: 487, column: 83, scope: !1876)
!1886 = !DILocation(line: 487, column: 92, scope: !1876)
!1887 = !DILocation(line: 487, column: 71, scope: !1876)
!1888 = !DILocation(line: 487, column: 65, scope: !1876)
!1889 = !DILocation(line: 487, column: 97, scope: !1876)
!1890 = !DILocation(line: 487, column: 62, scope: !1876)
!1891 = !DILocation(line: 487, column: 19, scope: !1876)
!1892 = !DILocation(line: 487, column: 12, scope: !1876)
!1893 = !DILocation(line: 487, column: 17, scope: !1876)
!1894 = !DILocation(line: 485, column: 7, scope: !1876)
!1895 = distinct !{!1895, !1869, !1896}
!1896 = !DILocation(line: 486, column: 3, scope: !1870)
!1897 = !DILocation(line: 488, column: 3, scope: !1870)
!1898 = !DILocation(line: 535, column: 3, scope: !1798)
!1899 = !DILocation(line: 537, column: 1, scope: !1770)
!1900 = distinct !DISubprogram(name: "lakai_get_keygroup", scope: !83, file: !83, line: 545, type: !1901, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!13, !212, !13, !13, !78}
!1903 = !DILocalVariable(name: "handle", arg: 1, scope: !1900, file: !83, line: 545, type: !212)
!1904 = !DILocation(line: 0, scope: !1900)
!1905 = !DILocalVariable(name: "prognum", arg: 2, scope: !1900, file: !83, line: 545, type: !13)
!1906 = !DILocalVariable(name: "keygroupnum", arg: 3, scope: !1900, file: !83, line: 545, type: !13)
!1907 = !DILocalVariable(name: "data", arg: 4, scope: !1900, file: !83, line: 545, type: !78)
!1908 = !DILocalVariable(name: "finalbuf", scope: !1900, file: !83, line: 547, type: !1778)
!1909 = !DILocation(line: 547, column: 17, scope: !1900)
!1910 = !DILocalVariable(name: "__cil_tmp9", scope: !1900, file: !83, line: 551, type: !58)
!1911 = !DILocation(line: 551, column: 9, scope: !1900)
!1912 = !DILocalVariable(name: "__cil_tmp10", scope: !1900, file: !83, line: 552, type: !15)
!1913 = !DILocation(line: 552, column: 9, scope: !1900)
!1914 = !DILocalVariable(name: "__cil_tmp11", scope: !1900, file: !83, line: 553, type: !15)
!1915 = !DILocation(line: 553, column: 9, scope: !1900)
!1916 = !DILocalVariable(name: "__cil_tmp12", scope: !1900, file: !83, line: 554, type: !15)
!1917 = !DILocation(line: 554, column: 9, scope: !1900)
!1918 = !DILocalVariable(name: "__cil_tmp13", scope: !1900, file: !83, line: 555, type: !15)
!1919 = !DILocation(line: 555, column: 9, scope: !1900)
!1920 = !DILocalVariable(name: "__cil_tmp14", scope: !1900, file: !83, line: 556, type: !15)
!1921 = !DILocation(line: 556, column: 9, scope: !1900)
!1922 = !DILocalVariable(name: "__cil_tmp15", scope: !1900, file: !83, line: 557, type: !15)
!1923 = !DILocation(line: 557, column: 9, scope: !1900)
!1924 = !DILocalVariable(name: "__cil_tmp16", scope: !1900, file: !83, line: 558, type: !15)
!1925 = !DILocation(line: 558, column: 9, scope: !1900)
!1926 = !DILocalVariable(name: "__cil_tmp17", scope: !1900, file: !83, line: 559, type: !15)
!1927 = !DILocation(line: 559, column: 9, scope: !1900)
!1928 = !DILocation(line: 557, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 557, column: 7)
!1930 = distinct !DILexicalBlock(scope: !1900, file: !83, line: 561, column: 3)
!1931 = !DILocation(line: 557, column: 24, scope: !1929)
!1932 = !DILocation(line: 557, column: 7, scope: !1930)
!1933 = !DILocation(line: 559, column: 38, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !83, line: 559, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !83, line: 558, column: 5)
!1936 = distinct !DILexicalBlock(scope: !1929, file: !83, line: 557, column: 31)
!1937 = !DILocation(line: 559, column: 5, scope: !1934)
!1938 = !DILocation(line: 560, column: 5, scope: !1936)
!1939 = !DILocation(line: 557, column: 14, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1929, file: !83, line: 557, column: 7)
!1941 = !DILocation(line: 559, column: 38, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !83, line: 559, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !83, line: 558, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !83, line: 557, column: 19)
!1945 = !DILocation(line: 559, column: 5, scope: !1942)
!1946 = !DILocation(line: 560, column: 5, scope: !1944)
!1947 = !DILocation(line: 557, column: 14, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !83, line: 557, column: 7)
!1949 = !DILocation(line: 557, column: 7, scope: !1940)
!1950 = !DILocation(line: 559, column: 38, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !83, line: 559, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !83, line: 558, column: 5)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !83, line: 557, column: 20)
!1954 = !DILocation(line: 559, column: 5, scope: !1951)
!1955 = !DILocation(line: 560, column: 5, scope: !1953)
!1956 = !DILocation(line: 563, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 563, column: 7)
!1958 = !DILocation(line: 563, column: 7, scope: !1930)
!1959 = !DILocation(line: 565, column: 38, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !83, line: 565, column: 5)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !83, line: 564, column: 5)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !83, line: 563, column: 20)
!1963 = !DILocation(line: 565, column: 5, scope: !1960)
!1964 = !DILocation(line: 566, column: 5, scope: !1962)
!1965 = !DILocation(line: 563, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1957, file: !83, line: 563, column: 7)
!1967 = !DILocation(line: 563, column: 7, scope: !1957)
!1968 = !DILocation(line: 565, column: 38, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !83, line: 565, column: 5)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !83, line: 564, column: 5)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !83, line: 563, column: 24)
!1972 = !DILocation(line: 565, column: 5, scope: !1969)
!1973 = !DILocation(line: 566, column: 5, scope: !1971)
!1974 = !DILocation(line: 569, column: 45, scope: !1930)
!1975 = !DILocation(line: 569, column: 20, scope: !1930)
!1976 = !DILocation(line: 569, column: 18, scope: !1930)
!1977 = !DILocation(line: 570, column: 53, scope: !1930)
!1978 = !DILocation(line: 570, column: 47, scope: !1930)
!1979 = !DILocation(line: 570, column: 68, scope: !1930)
!1980 = !DILocation(line: 570, column: 45, scope: !1930)
!1981 = !DILocation(line: 570, column: 20, scope: !1930)
!1982 = !DILocation(line: 570, column: 18, scope: !1930)
!1983 = !DILocation(line: 572, column: 19, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 572, column: 7)
!1985 = !DILocation(line: 572, column: 7, scope: !1930)
!1986 = !DILocation(line: 574, column: 38, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !83, line: 574, column: 5)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !83, line: 573, column: 5)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !83, line: 572, column: 24)
!1990 = !DILocation(line: 574, column: 5, scope: !1987)
!1991 = !DILocation(line: 575, column: 5, scope: !1989)
!1992 = !DILocation(line: 572, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1984, file: !83, line: 572, column: 7)
!1994 = !DILocation(line: 572, column: 7, scope: !1984)
!1995 = !DILocation(line: 574, column: 38, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !83, line: 574, column: 5)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !83, line: 573, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !83, line: 572, column: 25)
!1999 = !DILocation(line: 574, column: 5, scope: !1996)
!2000 = !DILocation(line: 575, column: 5, scope: !1998)
!2001 = !DILocation(line: 578, column: 20, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 577, column: 3)
!2003 = !DILocation(line: 578, column: 18, scope: !2002)
!2004 = !DILocation(line: 581, column: 40, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !83, line: 579, column: 3)
!2006 = !DILocation(line: 580, column: 14, scope: !2005)
!2007 = !DILocalVariable(name: "finallen", scope: !1900, file: !83, line: 549, type: !13)
!2008 = !DILocation(line: 581, column: 16, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 581, column: 7)
!2010 = !DILocation(line: 581, column: 7, scope: !1930)
!2011 = !DILocation(line: 583, column: 38, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !83, line: 583, column: 5)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !83, line: 582, column: 5)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !83, line: 581, column: 22)
!2015 = !DILocation(line: 583, column: 5, scope: !2012)
!2016 = !DILocation(line: 584, column: 5, scope: !2014)
!2017 = !DILocation(line: 592, column: 23, scope: !1930)
!2018 = !DILocation(line: 592, column: 28, scope: !1930)
!2019 = !DILocalVariable(name: "numvals", scope: !1900, file: !83, line: 550, type: !13)
!2020 = !DILocalVariable(name: "i", scope: !1900, file: !83, line: 548, type: !13)
!2021 = !DILocation(line: 593, column: 3, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !83, line: 595, column: 3)
!2023 = distinct !DILexicalBlock(scope: !1930, file: !83, line: 594, column: 3)
!2024 = !DILocation(line: 0, scope: !1930)
!2025 = !DILocation(line: 593, column: 13, scope: !2022)
!2026 = !DILocation(line: 593, column: 14, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !83, line: 593, column: 9)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !83, line: 593, column: 13)
!2029 = !DILocation(line: 593, column: 9, scope: !2028)
!2030 = !DILocation(line: 593, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !83, line: 593, column: 26)
!2032 = !DILocation(line: 595, column: 57, scope: !2028)
!2033 = !DILocation(line: 595, column: 53, scope: !2028)
!2034 = !DILocation(line: 595, column: 42, scope: !2028)
!2035 = !DILocation(line: 595, column: 36, scope: !2028)
!2036 = !DILocation(line: 595, column: 87, scope: !2028)
!2037 = !DILocation(line: 595, column: 83, scope: !2028)
!2038 = !DILocation(line: 595, column: 92, scope: !2028)
!2039 = !DILocation(line: 595, column: 71, scope: !2028)
!2040 = !DILocation(line: 595, column: 65, scope: !2028)
!2041 = !DILocation(line: 595, column: 97, scope: !2028)
!2042 = !DILocation(line: 595, column: 62, scope: !2028)
!2043 = !DILocation(line: 595, column: 19, scope: !2028)
!2044 = !DILocation(line: 595, column: 12, scope: !2028)
!2045 = !DILocation(line: 595, column: 17, scope: !2028)
!2046 = !DILocation(line: 593, column: 7, scope: !2028)
!2047 = distinct !{!2047, !2021, !2048}
!2048 = !DILocation(line: 594, column: 3, scope: !2022)
!2049 = !DILocation(line: 596, column: 3, scope: !2022)
!2050 = !DILocation(line: 603, column: 3, scope: !1930)
!2051 = !DILocation(line: 605, column: 1, scope: !1900)
!2052 = distinct !DISubprogram(name: "lakai_get_sample_header", scope: !83, file: !83, line: 616, type: !1771, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2053 = !DILocalVariable(name: "handle", arg: 1, scope: !2052, file: !83, line: 616, type: !212)
!2054 = !DILocation(line: 0, scope: !2052)
!2055 = !DILocalVariable(name: "samplenum", arg: 2, scope: !2052, file: !83, line: 616, type: !13)
!2056 = !DILocalVariable(name: "data", arg: 3, scope: !2052, file: !83, line: 616, type: !78)
!2057 = !DILocalVariable(name: "finalbuf", scope: !2052, file: !83, line: 618, type: !1778)
!2058 = !DILocation(line: 618, column: 17, scope: !2052)
!2059 = !DILocalVariable(name: "__cil_tmp8", scope: !2052, file: !83, line: 622, type: !58)
!2060 = !DILocation(line: 622, column: 9, scope: !2052)
!2061 = !DILocalVariable(name: "__cil_tmp9", scope: !2052, file: !83, line: 623, type: !15)
!2062 = !DILocation(line: 623, column: 9, scope: !2052)
!2063 = !DILocalVariable(name: "__cil_tmp10", scope: !2052, file: !83, line: 624, type: !15)
!2064 = !DILocation(line: 624, column: 9, scope: !2052)
!2065 = !DILocalVariable(name: "__cil_tmp11", scope: !2052, file: !83, line: 625, type: !15)
!2066 = !DILocation(line: 625, column: 9, scope: !2052)
!2067 = !DILocalVariable(name: "__cil_tmp12", scope: !2052, file: !83, line: 626, type: !15)
!2068 = !DILocation(line: 626, column: 9, scope: !2052)
!2069 = !DILocalVariable(name: "__cil_tmp13", scope: !2052, file: !83, line: 627, type: !15)
!2070 = !DILocation(line: 627, column: 9, scope: !2052)
!2071 = !DILocalVariable(name: "__cil_tmp14", scope: !2052, file: !83, line: 628, type: !15)
!2072 = !DILocation(line: 628, column: 9, scope: !2052)
!2073 = !DILocation(line: 628, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !83, line: 628, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2052, file: !83, line: 630, column: 3)
!2076 = !DILocation(line: 628, column: 24, scope: !2074)
!2077 = !DILocation(line: 628, column: 7, scope: !2075)
!2078 = !DILocation(line: 630, column: 38, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !83, line: 630, column: 5)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !83, line: 629, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2074, file: !83, line: 628, column: 31)
!2082 = !DILocation(line: 630, column: 5, scope: !2079)
!2083 = !DILocation(line: 631, column: 5, scope: !2081)
!2084 = !DILocation(line: 628, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2074, file: !83, line: 628, column: 7)
!2086 = !DILocation(line: 630, column: 38, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !83, line: 630, column: 5)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !83, line: 629, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !83, line: 628, column: 19)
!2090 = !DILocation(line: 630, column: 5, scope: !2087)
!2091 = !DILocation(line: 631, column: 5, scope: !2089)
!2092 = !DILocation(line: 628, column: 14, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !83, line: 628, column: 7)
!2094 = !DILocation(line: 628, column: 7, scope: !2085)
!2095 = !DILocation(line: 630, column: 38, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !83, line: 630, column: 5)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !83, line: 629, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2093, file: !83, line: 628, column: 20)
!2099 = !DILocation(line: 630, column: 5, scope: !2096)
!2100 = !DILocation(line: 631, column: 5, scope: !2098)
!2101 = !DILocation(line: 634, column: 17, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2075, file: !83, line: 634, column: 7)
!2103 = !DILocation(line: 634, column: 7, scope: !2075)
!2104 = !DILocation(line: 636, column: 38, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !83, line: 636, column: 5)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !83, line: 635, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !83, line: 634, column: 22)
!2108 = !DILocation(line: 636, column: 5, scope: !2105)
!2109 = !DILocation(line: 637, column: 5, scope: !2107)
!2110 = !DILocation(line: 634, column: 17, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !83, line: 634, column: 7)
!2112 = !DILocation(line: 634, column: 7, scope: !2102)
!2113 = !DILocation(line: 636, column: 38, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !83, line: 636, column: 5)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !83, line: 635, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !83, line: 634, column: 26)
!2117 = !DILocation(line: 636, column: 5, scope: !2114)
!2118 = !DILocation(line: 637, column: 5, scope: !2116)
!2119 = !DILocation(line: 640, column: 47, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2075, file: !83, line: 639, column: 3)
!2121 = !DILocation(line: 640, column: 20, scope: !2120)
!2122 = !DILocation(line: 640, column: 18, scope: !2120)
!2123 = !DILocation(line: 641, column: 55, scope: !2120)
!2124 = !DILocation(line: 641, column: 49, scope: !2120)
!2125 = !DILocation(line: 641, column: 70, scope: !2120)
!2126 = !DILocation(line: 641, column: 47, scope: !2120)
!2127 = !DILocation(line: 641, column: 20, scope: !2120)
!2128 = !DILocation(line: 641, column: 18, scope: !2120)
!2129 = !DILocation(line: 644, column: 40, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2120, file: !83, line: 642, column: 3)
!2131 = !DILocation(line: 643, column: 14, scope: !2130)
!2132 = !DILocalVariable(name: "finallen", scope: !2052, file: !83, line: 620, type: !13)
!2133 = !DILocation(line: 644, column: 16, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2075, file: !83, line: 644, column: 7)
!2135 = !DILocation(line: 644, column: 7, scope: !2075)
!2136 = !DILocation(line: 646, column: 38, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !83, line: 646, column: 5)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !83, line: 645, column: 5)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !83, line: 644, column: 22)
!2140 = !DILocation(line: 646, column: 5, scope: !2137)
!2141 = !DILocation(line: 647, column: 5, scope: !2139)
!2142 = !DILocation(line: 655, column: 23, scope: !2075)
!2143 = !DILocation(line: 655, column: 28, scope: !2075)
!2144 = !DILocalVariable(name: "numvals", scope: !2052, file: !83, line: 621, type: !13)
!2145 = !DILocalVariable(name: "i", scope: !2052, file: !83, line: 619, type: !13)
!2146 = !DILocation(line: 656, column: 3, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !83, line: 658, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2075, file: !83, line: 657, column: 3)
!2149 = !DILocation(line: 0, scope: !2075)
!2150 = !DILocation(line: 656, column: 13, scope: !2147)
!2151 = !DILocation(line: 656, column: 14, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !83, line: 656, column: 9)
!2153 = distinct !DILexicalBlock(scope: !2147, file: !83, line: 656, column: 13)
!2154 = !DILocation(line: 656, column: 9, scope: !2153)
!2155 = !DILocation(line: 656, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !83, line: 656, column: 26)
!2157 = !DILocation(line: 658, column: 57, scope: !2153)
!2158 = !DILocation(line: 658, column: 53, scope: !2153)
!2159 = !DILocation(line: 658, column: 42, scope: !2153)
!2160 = !DILocation(line: 658, column: 36, scope: !2153)
!2161 = !DILocation(line: 658, column: 87, scope: !2153)
!2162 = !DILocation(line: 658, column: 83, scope: !2153)
!2163 = !DILocation(line: 658, column: 92, scope: !2153)
!2164 = !DILocation(line: 658, column: 71, scope: !2153)
!2165 = !DILocation(line: 658, column: 65, scope: !2153)
!2166 = !DILocation(line: 658, column: 97, scope: !2153)
!2167 = !DILocation(line: 658, column: 62, scope: !2153)
!2168 = !DILocation(line: 658, column: 19, scope: !2153)
!2169 = !DILocation(line: 658, column: 12, scope: !2153)
!2170 = !DILocation(line: 658, column: 17, scope: !2153)
!2171 = !DILocation(line: 656, column: 7, scope: !2153)
!2172 = distinct !{!2172, !2146, !2173}
!2173 = !DILocation(line: 657, column: 3, scope: !2147)
!2174 = !DILocation(line: 659, column: 3, scope: !2147)
!2175 = !DILocation(line: 673, column: 3, scope: !2075)
!2176 = !DILocation(line: 675, column: 1, scope: !2052)
!2177 = distinct !DISubprogram(name: "lakai_put_sample_header", scope: !83, file: !83, line: 687, type: !2178, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!13, !212, !13, !78, !13}
!2180 = !DILocalVariable(name: "handle", arg: 1, scope: !2177, file: !83, line: 687, type: !212)
!2181 = !DILocation(line: 0, scope: !2177)
!2182 = !DILocalVariable(name: "samplenum", arg: 2, scope: !2177, file: !83, line: 687, type: !13)
!2183 = !DILocalVariable(name: "data", arg: 3, scope: !2177, file: !83, line: 687, type: !78)
!2184 = !DILocalVariable(name: "len", arg: 4, scope: !2177, file: !83, line: 688, type: !13)
!2185 = !DILocalVariable(name: "finalbuf", scope: !2177, file: !83, line: 690, type: !1778)
!2186 = !DILocation(line: 690, column: 17, scope: !2177)
!2187 = !DILocalVariable(name: "resbuf", scope: !2177, file: !83, line: 691, type: !1778)
!2188 = !DILocation(line: 691, column: 17, scope: !2177)
!2189 = !DILocalVariable(name: "__cil_tmp10", scope: !2177, file: !83, line: 695, type: !58)
!2190 = !DILocation(line: 695, column: 9, scope: !2177)
!2191 = !DILocalVariable(name: "__cil_tmp11", scope: !2177, file: !83, line: 696, type: !58)
!2192 = !DILocation(line: 696, column: 9, scope: !2177)
!2193 = !DILocalVariable(name: "__cil_tmp12", scope: !2177, file: !83, line: 697, type: !15)
!2194 = !DILocation(line: 697, column: 9, scope: !2177)
!2195 = !DILocalVariable(name: "__cil_tmp13", scope: !2177, file: !83, line: 698, type: !15)
!2196 = !DILocation(line: 698, column: 9, scope: !2177)
!2197 = !DILocalVariable(name: "__cil_tmp14", scope: !2177, file: !83, line: 699, type: !15)
!2198 = !DILocation(line: 699, column: 9, scope: !2177)
!2199 = !DILocalVariable(name: "__cil_tmp15", scope: !2177, file: !83, line: 700, type: !15)
!2200 = !DILocation(line: 700, column: 9, scope: !2177)
!2201 = !DILocalVariable(name: "__cil_tmp16", scope: !2177, file: !83, line: 701, type: !15)
!2202 = !DILocation(line: 701, column: 9, scope: !2177)
!2203 = !DILocalVariable(name: "__cil_tmp17", scope: !2177, file: !83, line: 702, type: !15)
!2204 = !DILocation(line: 702, column: 9, scope: !2177)
!2205 = !DILocation(line: 700, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 700, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2177, file: !83, line: 704, column: 3)
!2208 = !DILocation(line: 700, column: 24, scope: !2206)
!2209 = !DILocation(line: 700, column: 7, scope: !2207)
!2210 = !DILocation(line: 702, column: 38, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !83, line: 702, column: 5)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !83, line: 701, column: 5)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !83, line: 700, column: 31)
!2214 = !DILocation(line: 702, column: 5, scope: !2211)
!2215 = !DILocation(line: 703, column: 5, scope: !2213)
!2216 = !DILocation(line: 700, column: 14, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2206, file: !83, line: 700, column: 7)
!2218 = !DILocation(line: 702, column: 38, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !83, line: 702, column: 5)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !83, line: 701, column: 5)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !83, line: 700, column: 19)
!2222 = !DILocation(line: 702, column: 5, scope: !2219)
!2223 = !DILocation(line: 703, column: 5, scope: !2221)
!2224 = !DILocation(line: 700, column: 14, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2217, file: !83, line: 700, column: 7)
!2226 = !DILocation(line: 700, column: 7, scope: !2217)
!2227 = !DILocation(line: 702, column: 38, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !83, line: 702, column: 5)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !83, line: 701, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !83, line: 700, column: 20)
!2231 = !DILocation(line: 702, column: 5, scope: !2228)
!2232 = !DILocation(line: 703, column: 5, scope: !2230)
!2233 = !DILocation(line: 706, column: 17, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 706, column: 7)
!2235 = !DILocation(line: 706, column: 7, scope: !2207)
!2236 = !DILocation(line: 708, column: 38, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !83, line: 708, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !83, line: 707, column: 5)
!2239 = distinct !DILexicalBlock(scope: !2234, file: !83, line: 706, column: 22)
!2240 = !DILocation(line: 708, column: 5, scope: !2237)
!2241 = !DILocation(line: 709, column: 5, scope: !2239)
!2242 = !DILocation(line: 706, column: 17, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !83, line: 706, column: 7)
!2244 = !DILocation(line: 706, column: 7, scope: !2234)
!2245 = !DILocation(line: 708, column: 38, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !83, line: 708, column: 5)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !83, line: 707, column: 5)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !83, line: 706, column: 26)
!2249 = !DILocation(line: 708, column: 5, scope: !2246)
!2250 = !DILocation(line: 709, column: 5, scope: !2248)
!2251 = !DILocation(line: 712, column: 47, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 711, column: 3)
!2253 = !DILocation(line: 712, column: 20, scope: !2252)
!2254 = !DILocation(line: 712, column: 18, scope: !2252)
!2255 = !DILocation(line: 713, column: 55, scope: !2252)
!2256 = !DILocation(line: 713, column: 49, scope: !2252)
!2257 = !DILocation(line: 713, column: 70, scope: !2252)
!2258 = !DILocation(line: 713, column: 47, scope: !2252)
!2259 = !DILocation(line: 713, column: 20, scope: !2252)
!2260 = !DILocation(line: 713, column: 18, scope: !2252)
!2261 = !DILocation(line: 716, column: 35, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2252, file: !83, line: 714, column: 3)
!2263 = !DILocation(line: 716, column: 3, scope: !2262)
!2264 = !DILocalVariable(name: "i", scope: !2177, file: !83, line: 692, type: !13)
!2265 = !DILocation(line: 718, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !83, line: 721, column: 3)
!2267 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 720, column: 3)
!2268 = !DILocation(line: 0, scope: !2207)
!2269 = !DILocation(line: 718, column: 13, scope: !2266)
!2270 = !DILocation(line: 718, column: 14, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !83, line: 718, column: 9)
!2272 = distinct !DILexicalBlock(scope: !2266, file: !83, line: 718, column: 13)
!2273 = !DILocation(line: 718, column: 9, scope: !2272)
!2274 = !DILocation(line: 718, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !83, line: 718, column: 22)
!2276 = !DILocation(line: 720, column: 93, scope: !2272)
!2277 = !DILocation(line: 720, column: 86, scope: !2272)
!2278 = !DILocation(line: 720, column: 80, scope: !2272)
!2279 = !DILocation(line: 720, column: 98, scope: !2272)
!2280 = !DILocation(line: 720, column: 63, scope: !2272)
!2281 = !DILocation(line: 720, column: 55, scope: !2272)
!2282 = !DILocation(line: 720, column: 36, scope: !2272)
!2283 = !DILocation(line: 720, column: 34, scope: !2272)
!2284 = !DILocation(line: 720, column: 5, scope: !2272)
!2285 = !DILocation(line: 720, column: 61, scope: !2272)
!2286 = !DILocation(line: 721, column: 102, scope: !2272)
!2287 = !DILocation(line: 721, column: 95, scope: !2272)
!2288 = !DILocation(line: 721, column: 89, scope: !2272)
!2289 = !DILocation(line: 721, column: 107, scope: !2272)
!2290 = !DILocation(line: 721, column: 114, scope: !2272)
!2291 = !DILocation(line: 721, column: 71, scope: !2272)
!2292 = !DILocation(line: 721, column: 56, scope: !2272)
!2293 = !DILocation(line: 721, column: 37, scope: !2272)
!2294 = !DILocation(line: 721, column: 35, scope: !2272)
!2295 = !DILocation(line: 721, column: 62, scope: !2272)
!2296 = !DILocation(line: 721, column: 5, scope: !2272)
!2297 = !DILocation(line: 721, column: 69, scope: !2272)
!2298 = !DILocation(line: 718, column: 7, scope: !2272)
!2299 = distinct !{!2299, !2265, !2300}
!2300 = !DILocation(line: 719, column: 3, scope: !2266)
!2301 = !DILocation(line: 721, column: 3, scope: !2266)
!2302 = !DILocation(line: 723, column: 53, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 724, column: 3)
!2304 = !DILocation(line: 723, column: 34, scope: !2303)
!2305 = !DILocation(line: 723, column: 32, scope: !2303)
!2306 = !DILocation(line: 723, column: 3, scope: !2303)
!2307 = !DILocation(line: 723, column: 61, scope: !2303)
!2308 = !DILocation(line: 726, column: 48, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !83, line: 724, column: 3)
!2310 = !DILocation(line: 726, column: 120, scope: !2309)
!2311 = !DILocation(line: 726, column: 99, scope: !2309)
!2312 = !DILocation(line: 726, column: 97, scope: !2309)
!2313 = !DILocation(line: 726, column: 126, scope: !2309)
!2314 = !DILocation(line: 726, column: 60, scope: !2309)
!2315 = !DILocation(line: 727, column: 40, scope: !2309)
!2316 = !DILocation(line: 726, column: 14, scope: !2309)
!2317 = !DILocalVariable(name: "finallen", scope: !2177, file: !83, line: 693, type: !13)
!2318 = !DILocation(line: 728, column: 16, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2207, file: !83, line: 728, column: 7)
!2320 = !DILocation(line: 728, column: 7, scope: !2207)
!2321 = !DILocation(line: 730, column: 38, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !83, line: 730, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !83, line: 729, column: 5)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !83, line: 728, column: 22)
!2325 = !DILocation(line: 730, column: 5, scope: !2322)
!2326 = !DILocation(line: 731, column: 5, scope: !2324)
!2327 = !DILocation(line: 735, column: 3, scope: !2207)
!2328 = !DILocation(line: 737, column: 1, scope: !2177)
!2329 = distinct !DISubprogram(name: "lakai_delete_keygroup", scope: !83, file: !83, line: 787, type: !2330, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!13, !212, !13, !13}
!2332 = !DILocalVariable(name: "handle", arg: 1, scope: !2329, file: !83, line: 787, type: !212)
!2333 = !DILocation(line: 0, scope: !2329)
!2334 = !DILocalVariable(name: "prognum", arg: 2, scope: !2329, file: !83, line: 787, type: !13)
!2335 = !DILocalVariable(name: "kgrpnum", arg: 3, scope: !2329, file: !83, line: 787, type: !13)
!2336 = !DILocalVariable(name: "statusbuf", scope: !2329, file: !83, line: 789, type: !752)
!2337 = !DILocation(line: 789, column: 17, scope: !2329)
!2338 = !DILocalVariable(name: "__cil_tmp6", scope: !2329, file: !83, line: 791, type: !58)
!2339 = !DILocation(line: 791, column: 9, scope: !2329)
!2340 = !DILocalVariable(name: "__cil_tmp7", scope: !2329, file: !83, line: 792, type: !15)
!2341 = !DILocation(line: 792, column: 9, scope: !2329)
!2342 = !DILocalVariable(name: "__cil_tmp8", scope: !2329, file: !83, line: 793, type: !15)
!2343 = !DILocation(line: 793, column: 9, scope: !2329)
!2344 = !DILocalVariable(name: "__cil_tmp9", scope: !2329, file: !83, line: 794, type: !15)
!2345 = !DILocation(line: 794, column: 9, scope: !2329)
!2346 = !DILocalVariable(name: "__cil_tmp10", scope: !2329, file: !83, line: 795, type: !15)
!2347 = !DILocation(line: 795, column: 9, scope: !2329)
!2348 = !DILocalVariable(name: "__cil_tmp11", scope: !2329, file: !83, line: 796, type: !15)
!2349 = !DILocation(line: 796, column: 9, scope: !2329)
!2350 = !DILocalVariable(name: "__cil_tmp12", scope: !2329, file: !83, line: 797, type: !15)
!2351 = !DILocation(line: 797, column: 9, scope: !2329)
!2352 = !DILocalVariable(name: "__cil_tmp13", scope: !2329, file: !83, line: 798, type: !15)
!2353 = !DILocation(line: 798, column: 9, scope: !2329)
!2354 = !DILocalVariable(name: "__cil_tmp14", scope: !2329, file: !83, line: 799, type: !15)
!2355 = !DILocation(line: 799, column: 9, scope: !2329)
!2356 = !DILocation(line: 795, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !83, line: 795, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2329, file: !83, line: 801, column: 3)
!2359 = !DILocation(line: 795, column: 24, scope: !2357)
!2360 = !DILocation(line: 795, column: 7, scope: !2358)
!2361 = !DILocation(line: 797, column: 38, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !83, line: 797, column: 5)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !83, line: 796, column: 5)
!2364 = distinct !DILexicalBlock(scope: !2357, file: !83, line: 795, column: 31)
!2365 = !DILocation(line: 797, column: 5, scope: !2362)
!2366 = !DILocation(line: 798, column: 5, scope: !2364)
!2367 = !DILocation(line: 795, column: 14, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !83, line: 795, column: 7)
!2369 = !DILocation(line: 797, column: 38, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !83, line: 797, column: 5)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !83, line: 796, column: 5)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !83, line: 795, column: 19)
!2373 = !DILocation(line: 797, column: 5, scope: !2370)
!2374 = !DILocation(line: 798, column: 5, scope: !2372)
!2375 = !DILocation(line: 795, column: 14, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2368, file: !83, line: 795, column: 7)
!2377 = !DILocation(line: 795, column: 7, scope: !2368)
!2378 = !DILocation(line: 797, column: 38, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !83, line: 797, column: 5)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !83, line: 796, column: 5)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !83, line: 795, column: 20)
!2382 = !DILocation(line: 797, column: 5, scope: !2379)
!2383 = !DILocation(line: 798, column: 5, scope: !2381)
!2384 = !DILocation(line: 801, column: 15, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2358, file: !83, line: 801, column: 7)
!2386 = !DILocation(line: 801, column: 7, scope: !2358)
!2387 = !DILocation(line: 803, column: 38, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !83, line: 803, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !83, line: 802, column: 5)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !83, line: 801, column: 20)
!2391 = !DILocation(line: 803, column: 5, scope: !2388)
!2392 = !DILocation(line: 804, column: 5, scope: !2390)
!2393 = !DILocation(line: 801, column: 15, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2385, file: !83, line: 801, column: 7)
!2395 = !DILocation(line: 801, column: 7, scope: !2385)
!2396 = !DILocation(line: 803, column: 38, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !83, line: 803, column: 5)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !83, line: 802, column: 5)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !83, line: 801, column: 24)
!2400 = !DILocation(line: 803, column: 5, scope: !2397)
!2401 = !DILocation(line: 804, column: 5, scope: !2399)
!2402 = !DILocation(line: 807, column: 15, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2358, file: !83, line: 807, column: 7)
!2404 = !DILocation(line: 807, column: 7, scope: !2358)
!2405 = !DILocation(line: 809, column: 38, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !83, line: 809, column: 5)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !83, line: 808, column: 5)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !83, line: 807, column: 20)
!2409 = !DILocation(line: 809, column: 5, scope: !2406)
!2410 = !DILocation(line: 810, column: 5, scope: !2408)
!2411 = !DILocation(line: 807, column: 15, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2403, file: !83, line: 807, column: 7)
!2413 = !DILocation(line: 807, column: 7, scope: !2403)
!2414 = !DILocation(line: 809, column: 38, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !83, line: 809, column: 5)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !83, line: 808, column: 5)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !83, line: 807, column: 21)
!2418 = !DILocation(line: 809, column: 5, scope: !2415)
!2419 = !DILocation(line: 810, column: 5, scope: !2417)
!2420 = !DILocation(line: 812, column: 45, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2358, file: !83, line: 812, column: 3)
!2422 = !DILocation(line: 812, column: 20, scope: !2421)
!2423 = !DILocation(line: 812, column: 18, scope: !2421)
!2424 = !DILocation(line: 813, column: 53, scope: !2421)
!2425 = !DILocation(line: 813, column: 47, scope: !2421)
!2426 = !DILocation(line: 813, column: 68, scope: !2421)
!2427 = !DILocation(line: 813, column: 45, scope: !2421)
!2428 = !DILocation(line: 813, column: 20, scope: !2421)
!2429 = !DILocation(line: 813, column: 18, scope: !2421)
!2430 = !DILocation(line: 815, column: 20, scope: !2421)
!2431 = !DILocation(line: 815, column: 18, scope: !2421)
!2432 = !DILocation(line: 818, column: 41, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2421, file: !83, line: 816, column: 3)
!2434 = !DILocation(line: 817, column: 15, scope: !2433)
!2435 = !DILocalVariable(name: "statuslen", scope: !2329, file: !83, line: 790, type: !13)
!2436 = !DILocation(line: 819, column: 20, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2358, file: !83, line: 819, column: 7)
!2438 = !DILocation(line: 819, column: 7, scope: !2358)
!2439 = !DILocation(line: 828, column: 38, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !83, line: 821, column: 5)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !83, line: 820, column: 5)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !83, line: 819, column: 26)
!2443 = !DILocation(line: 828, column: 5, scope: !2440)
!2444 = !DILocation(line: 831, column: 3, scope: !2442)
!2445 = !DILocation(line: 831, column: 3, scope: !2358)
!2446 = !DILocation(line: 0, scope: !2358)
!2447 = !DILocation(line: 833, column: 1, scope: !2329)
!2448 = distinct !DISubprogram(name: "lakai_get_sample", scope: !83, file: !83, line: 887, type: !2449, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!41, !212, !13, !15, !41, !41}
!2451 = !DILocalVariable(name: "handle", arg: 1, scope: !2448, file: !83, line: 887, type: !212)
!2452 = !DILocation(line: 0, scope: !2448)
!2453 = !DILocalVariable(name: "samplenum", arg: 2, scope: !2448, file: !83, line: 887, type: !13)
!2454 = !DILocalVariable(name: "buffer", arg: 3, scope: !2448, file: !83, line: 887, type: !15)
!2455 = !DILocalVariable(name: "locat", arg: 4, scope: !2448, file: !83, line: 887, type: !41)
!2456 = !DILocalVariable(name: "len", arg: 5, scope: !2448, file: !83, line: 888, type: !41)
!2457 = !DILocalVariable(name: "statusbuf", scope: !2448, file: !83, line: 894, type: !752)
!2458 = !DILocation(line: 894, column: 17, scope: !2448)
!2459 = !DILocalVariable(name: "cmdblk1___74", scope: !2448, file: !83, line: 896, type: !2460)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 144, elements: !2461)
!2461 = !{!2462}
!2462 = !DISubrange(count: 18)
!2463 = !DILocation(line: 896, column: 17, scope: !2448)
!2464 = !DILocalVariable(name: "__cil_tmp14", scope: !2448, file: !83, line: 898, type: !58)
!2465 = !DILocation(line: 898, column: 9, scope: !2448)
!2466 = !DILocalVariable(name: "__cil_tmp15", scope: !2448, file: !83, line: 899, type: !58)
!2467 = !DILocation(line: 899, column: 9, scope: !2448)
!2468 = !DILocalVariable(name: "__cil_tmp16", scope: !2448, file: !83, line: 900, type: !15)
!2469 = !DILocation(line: 900, column: 9, scope: !2448)
!2470 = !DILocalVariable(name: "__cil_tmp17", scope: !2448, file: !83, line: 901, type: !15)
!2471 = !DILocation(line: 901, column: 9, scope: !2448)
!2472 = !DILocalVariable(name: "__cil_tmp18", scope: !2448, file: !83, line: 902, type: !15)
!2473 = !DILocation(line: 902, column: 9, scope: !2448)
!2474 = !DILocalVariable(name: "__cil_tmp19", scope: !2448, file: !83, line: 903, type: !15)
!2475 = !DILocation(line: 903, column: 9, scope: !2448)
!2476 = !DILocation(line: 892, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2448, file: !83, line: 905, column: 3)
!2478 = !DILocation(line: 892, column: 19, scope: !2477)
!2479 = !DILocation(line: 892, column: 20, scope: !2477)
!2480 = !DILocation(line: 900, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !83, line: 900, column: 7)
!2482 = !DILocation(line: 900, column: 24, scope: !2481)
!2483 = !DILocation(line: 900, column: 7, scope: !2477)
!2484 = !DILocation(line: 902, column: 38, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !83, line: 902, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !83, line: 901, column: 5)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !83, line: 900, column: 31)
!2488 = !DILocation(line: 902, column: 5, scope: !2485)
!2489 = !DILocation(line: 903, column: 5, scope: !2487)
!2490 = !DILocation(line: 900, column: 14, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !83, line: 900, column: 7)
!2492 = !DILocation(line: 902, column: 38, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !83, line: 902, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !83, line: 901, column: 5)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !83, line: 900, column: 19)
!2496 = !DILocation(line: 902, column: 5, scope: !2493)
!2497 = !DILocation(line: 903, column: 5, scope: !2495)
!2498 = !DILocation(line: 900, column: 14, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2491, file: !83, line: 900, column: 7)
!2500 = !DILocation(line: 900, column: 7, scope: !2491)
!2501 = !DILocation(line: 902, column: 38, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !83, line: 902, column: 5)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !83, line: 901, column: 5)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !83, line: 900, column: 20)
!2505 = !DILocation(line: 902, column: 5, scope: !2502)
!2506 = !DILocation(line: 903, column: 5, scope: !2504)
!2507 = !DILocation(line: 907, column: 48, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2477, file: !83, line: 905, column: 3)
!2509 = !DILocation(line: 907, column: 21, scope: !2508)
!2510 = !DILocation(line: 907, column: 3, scope: !2508)
!2511 = !DILocation(line: 907, column: 19, scope: !2508)
!2512 = !DILocation(line: 908, column: 49, scope: !2508)
!2513 = !DILocation(line: 908, column: 55, scope: !2508)
!2514 = !DILocation(line: 908, column: 21, scope: !2508)
!2515 = !DILocation(line: 908, column: 3, scope: !2508)
!2516 = !DILocation(line: 908, column: 19, scope: !2508)
!2517 = !DILocation(line: 911, column: 44, scope: !2508)
!2518 = !DILocation(line: 911, column: 21, scope: !2508)
!2519 = !DILocation(line: 911, column: 3, scope: !2508)
!2520 = !DILocation(line: 911, column: 19, scope: !2508)
!2521 = !DILocation(line: 912, column: 45, scope: !2508)
!2522 = !DILocation(line: 912, column: 51, scope: !2508)
!2523 = !DILocation(line: 912, column: 21, scope: !2508)
!2524 = !DILocation(line: 912, column: 3, scope: !2508)
!2525 = !DILocation(line: 912, column: 19, scope: !2508)
!2526 = !DILocation(line: 913, column: 45, scope: !2508)
!2527 = !DILocation(line: 913, column: 52, scope: !2508)
!2528 = !DILocation(line: 913, column: 21, scope: !2508)
!2529 = !DILocation(line: 913, column: 3, scope: !2508)
!2530 = !DILocation(line: 913, column: 19, scope: !2508)
!2531 = !DILocation(line: 914, column: 46, scope: !2508)
!2532 = !DILocation(line: 914, column: 53, scope: !2508)
!2533 = !DILocation(line: 914, column: 22, scope: !2508)
!2534 = !DILocation(line: 914, column: 3, scope: !2508)
!2535 = !DILocation(line: 914, column: 20, scope: !2508)
!2536 = !DILocation(line: 916, column: 43, scope: !2508)
!2537 = !DILocation(line: 916, column: 22, scope: !2508)
!2538 = !DILocation(line: 916, column: 3, scope: !2508)
!2539 = !DILocation(line: 916, column: 20, scope: !2508)
!2540 = !DILocation(line: 917, column: 44, scope: !2508)
!2541 = !DILocation(line: 917, column: 50, scope: !2508)
!2542 = !DILocation(line: 917, column: 22, scope: !2508)
!2543 = !DILocation(line: 917, column: 3, scope: !2508)
!2544 = !DILocation(line: 917, column: 20, scope: !2508)
!2545 = !DILocation(line: 918, column: 44, scope: !2508)
!2546 = !DILocation(line: 918, column: 51, scope: !2508)
!2547 = !DILocation(line: 918, column: 22, scope: !2508)
!2548 = !DILocation(line: 918, column: 3, scope: !2508)
!2549 = !DILocation(line: 918, column: 20, scope: !2508)
!2550 = !DILocation(line: 919, column: 44, scope: !2508)
!2551 = !DILocation(line: 919, column: 51, scope: !2508)
!2552 = !DILocation(line: 919, column: 22, scope: !2508)
!2553 = !DILocation(line: 919, column: 3, scope: !2508)
!2554 = !DILocation(line: 919, column: 20, scope: !2508)
!2555 = !DILocation(line: 921, column: 3, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2508, file: !83, line: 920, column: 3)
!2557 = !DILocation(line: 923, column: 51, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2508, file: !83, line: 923, column: 3)
!2559 = !DILocation(line: 924, column: 43, scope: !2558)
!2560 = !DILocation(line: 923, column: 16, scope: !2558)
!2561 = !DILocalVariable(name: "availbytes", scope: !2448, file: !83, line: 890, type: !13)
!2562 = !DILocation(line: 924, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2477, file: !83, line: 924, column: 7)
!2564 = !DILocation(line: 924, column: 7, scope: !2477)
!2565 = !DILocation(line: 932, column: 38, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !83, line: 926, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !83, line: 925, column: 5)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !83, line: 924, column: 27)
!2569 = !DILocation(line: 932, column: 5, scope: !2566)
!2570 = !DILocation(line: 935, column: 3, scope: !2568)
!2571 = !DILocalVariable(name: "stilltoget", scope: !2448, file: !83, line: 891, type: !13)
!2572 = !DILocalVariable(name: "ptr", scope: !2448, file: !83, line: 895, type: !78)
!2573 = !DILocation(line: 937, column: 3, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !83, line: 938, column: 3)
!2575 = distinct !DILexicalBlock(scope: !2477, file: !83, line: 937, column: 3)
!2576 = !DILocation(line: 0, scope: !2477)
!2577 = !DILocation(line: 937, column: 13, scope: !2574)
!2578 = !DILocation(line: 937, column: 23, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !83, line: 937, column: 9)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !83, line: 937, column: 13)
!2581 = !DILocation(line: 937, column: 9, scope: !2580)
!2582 = !DILocation(line: 937, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !83, line: 937, column: 29)
!2584 = !DILocation(line: 939, column: 20, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !83, line: 939, column: 9)
!2586 = !DILocation(line: 939, column: 9, scope: !2580)
!2587 = !DILocalVariable(name: "getnow", scope: !2448, file: !83, line: 892, type: !13)
!2588 = !DILocation(line: 941, column: 5, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !83, line: 939, column: 29)
!2590 = !DILocation(line: 0, scope: !2585)
!2591 = !DILocation(line: 943, column: 11, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !83, line: 945, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !83, line: 944, column: 5)
!2594 = !DILocalVariable(name: "tmp", scope: !2448, file: !83, line: 897, type: !41)
!2595 = !DILocation(line: 943, column: 11, scope: !2593)
!2596 = !DILocalVariable(name: "ret", scope: !2448, file: !83, line: 893, type: !13)
!2597 = !DILocation(line: 947, column: 16, scope: !2593)
!2598 = !DILocation(line: 948, column: 9, scope: !2593)
!2599 = distinct !{!2599, !2573, !2600}
!2600 = !DILocation(line: 950, column: 3, scope: !2574)
!2601 = !DILocation(line: 952, column: 3, scope: !2574)
!2602 = !DILocation(line: 951, column: 3, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !83, line: 956, column: 3)
!2604 = distinct !DILexicalBlock(scope: !2477, file: !83, line: 955, column: 3)
!2605 = !DILocation(line: 953, column: 3, scope: !2477)
!2606 = !DILocation(line: 955, column: 1, scope: !2448)
!2607 = distinct !DISubprogram(name: "sendrecv_scsimidi2", scope: !83, file: !83, line: 1589, type: !1513, scopeLine: 1591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2608 = !DILocalVariable(name: "handle", arg: 1, scope: !2607, file: !83, line: 1589, type: !212)
!2609 = !DILocation(line: 0, scope: !2607)
!2610 = !DILocalVariable(name: "sysexblk", arg: 2, scope: !2607, file: !83, line: 1589, type: !15)
!2611 = !DILocalVariable(name: "sysexblksize", arg: 3, scope: !2607, file: !83, line: 1589, type: !65)
!2612 = !DILocalVariable(name: "buf", arg: 4, scope: !2607, file: !83, line: 1590, type: !15)
!2613 = !DILocalVariable(name: "outbuf", scope: !2607, file: !83, line: 1592, type: !1341)
!2614 = !DILocation(line: 1592, column: 17, scope: !2607)
!2615 = !DILocalVariable(name: "__cil_tmp9", scope: !2607, file: !83, line: 1596, type: !58)
!2616 = !DILocation(line: 1596, column: 9, scope: !2607)
!2617 = !DILocalVariable(name: "__cil_tmp10", scope: !2607, file: !83, line: 1597, type: !15)
!2618 = !DILocation(line: 1597, column: 9, scope: !2607)
!2619 = !DILocalVariable(name: "__cil_tmp11", scope: !2607, file: !83, line: 1598, type: !15)
!2620 = !DILocation(line: 1598, column: 9, scope: !2607)
!2621 = !DILocalVariable(name: "__cil_tmp12", scope: !2607, file: !83, line: 1599, type: !15)
!2622 = !DILocation(line: 1599, column: 9, scope: !2607)
!2623 = !DILocalVariable(name: "__cil_tmp13", scope: !2607, file: !83, line: 1600, type: !15)
!2624 = !DILocation(line: 1600, column: 9, scope: !2607)
!2625 = !DILocalVariable(name: "__cil_tmp14", scope: !2607, file: !83, line: 1601, type: !15)
!2626 = !DILocation(line: 1601, column: 9, scope: !2607)
!2627 = !DILocalVariable(name: "__cil_tmp15", scope: !2607, file: !83, line: 1602, type: !15)
!2628 = !DILocation(line: 1602, column: 9, scope: !2607)
!2629 = !DILocation(line: 1610, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1610, column: 7)
!2631 = distinct !DILexicalBlock(scope: !2607, file: !83, line: 1604, column: 3)
!2632 = !DILocation(line: 1610, column: 24, scope: !2630)
!2633 = !DILocation(line: 1610, column: 7, scope: !2631)
!2634 = !DILocation(line: 1612, column: 38, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !83, line: 1612, column: 5)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !83, line: 1611, column: 5)
!2637 = distinct !DILexicalBlock(scope: !2630, file: !83, line: 1610, column: 31)
!2638 = !DILocation(line: 1612, column: 5, scope: !2635)
!2639 = !DILocation(line: 1613, column: 5, scope: !2637)
!2640 = !DILocation(line: 1610, column: 14, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2630, file: !83, line: 1610, column: 7)
!2642 = !DILocation(line: 1612, column: 38, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !83, line: 1612, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !83, line: 1611, column: 5)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !83, line: 1610, column: 19)
!2646 = !DILocation(line: 1612, column: 5, scope: !2643)
!2647 = !DILocation(line: 1613, column: 5, scope: !2645)
!2648 = !DILocation(line: 1610, column: 14, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2641, file: !83, line: 1610, column: 7)
!2650 = !DILocation(line: 1610, column: 7, scope: !2641)
!2651 = !DILocation(line: 1612, column: 38, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !83, line: 1612, column: 5)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !83, line: 1611, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !83, line: 1610, column: 20)
!2655 = !DILocation(line: 1612, column: 5, scope: !2652)
!2656 = !DILocation(line: 1613, column: 5, scope: !2654)
!2657 = !DILocation(line: 1616, column: 20, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1616, column: 7)
!2659 = !DILocation(line: 1616, column: 7, scope: !2631)
!2660 = !DILocation(line: 1618, column: 38, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !83, line: 1618, column: 5)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !83, line: 1617, column: 5)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !83, line: 1616, column: 30)
!2664 = !DILocation(line: 1618, column: 5, scope: !2661)
!2665 = !DILocation(line: 1619, column: 5, scope: !2663)
!2666 = !DILocation(line: 1623, column: 45, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1621, column: 3)
!2668 = !DILocation(line: 1623, column: 38, scope: !2667)
!2669 = !DILocation(line: 1623, column: 75, scope: !2667)
!2670 = !DILocation(line: 1623, column: 21, scope: !2667)
!2671 = !DILocation(line: 1623, column: 19, scope: !2667)
!2672 = !DILocation(line: 1624, column: 52, scope: !2667)
!2673 = !DILocation(line: 1624, column: 62, scope: !2667)
!2674 = !DILocation(line: 1624, column: 21, scope: !2667)
!2675 = !DILocation(line: 1624, column: 19, scope: !2667)
!2676 = !DILocation(line: 1625, column: 52, scope: !2667)
!2677 = !DILocation(line: 1625, column: 65, scope: !2667)
!2678 = !DILocation(line: 1625, column: 21, scope: !2667)
!2679 = !DILocation(line: 1625, column: 19, scope: !2667)
!2680 = !DILocation(line: 1631, column: 22, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2667, file: !83, line: 1626, column: 3)
!2682 = !DILocation(line: 1631, column: 9, scope: !2681)
!2683 = !DILocalVariable(name: "tmp", scope: !2607, file: !83, line: 1594, type: !13)
!2684 = !DILocation(line: 1631, column: 11, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1631, column: 7)
!2686 = !DILocation(line: 1631, column: 7, scope: !2631)
!2687 = !DILocation(line: 1633, column: 38, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !83, line: 1633, column: 5)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !83, line: 1632, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2685, file: !83, line: 1631, column: 16)
!2691 = !DILocation(line: 1633, column: 5, scope: !2688)
!2692 = !DILocation(line: 1634, column: 5, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !83, line: 1635, column: 5)
!2694 = !DILocation(line: 1635, column: 5, scope: !2690)
!2695 = !DILocation(line: 1639, column: 26, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !83, line: 1638, column: 3)
!2697 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1637, column: 3)
!2698 = !DILocation(line: 1640, column: 34, scope: !2696)
!2699 = !DILocation(line: 1639, column: 13, scope: !2696)
!2700 = !DILocalVariable(name: "tmp___0", scope: !2607, file: !83, line: 1595, type: !13)
!2701 = !DILocation(line: 1639, column: 15, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2631, file: !83, line: 1639, column: 7)
!2703 = !DILocation(line: 1639, column: 7, scope: !2631)
!2704 = !DILocation(line: 1641, column: 38, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !83, line: 1641, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !83, line: 1640, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !83, line: 1639, column: 20)
!2708 = !DILocation(line: 1641, column: 5, scope: !2705)
!2709 = !DILocation(line: 1642, column: 5, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !83, line: 1643, column: 5)
!2711 = !DILocation(line: 1643, column: 5, scope: !2707)
!2712 = !DILocation(line: 1647, column: 21, scope: !2631)
!2713 = !DILocation(line: 1647, column: 15, scope: !2631)
!2714 = !DILocation(line: 1647, column: 31, scope: !2631)
!2715 = !DILocation(line: 1647, column: 47, scope: !2631)
!2716 = !DILocation(line: 1647, column: 41, scope: !2631)
!2717 = !DILocation(line: 1647, column: 57, scope: !2631)
!2718 = !DILocation(line: 1647, column: 38, scope: !2631)
!2719 = !DILocation(line: 1647, column: 72, scope: !2631)
!2720 = !DILocation(line: 1647, column: 66, scope: !2631)
!2721 = !DILocation(line: 1647, column: 64, scope: !2631)
!2722 = !DILocalVariable(name: "templen", scope: !2607, file: !83, line: 1593, type: !13)
!2723 = !DILocation(line: 1651, column: 3, scope: !2631)
!2724 = !DILocation(line: 0, scope: !2631)
!2725 = !DILocation(line: 1653, column: 1, scope: !2607)
!2726 = distinct !DISubprogram(name: "getbulkdata", scope: !83, file: !83, line: 1714, type: !2727, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!41, !212, !13, !15}
!2729 = !DILocalVariable(name: "handle", arg: 1, scope: !2726, file: !83, line: 1714, type: !212)
!2730 = !DILocation(line: 0, scope: !2726)
!2731 = !DILocalVariable(name: "numbytes", arg: 2, scope: !2726, file: !83, line: 1714, type: !13)
!2732 = !DILocalVariable(name: "buf", arg: 3, scope: !2726, file: !83, line: 1714, type: !15)
!2733 = !DILocalVariable(name: "__cil_tmp5", scope: !2726, file: !83, line: 1717, type: !15)
!2734 = !DILocation(line: 1717, column: 9, scope: !2726)
!2735 = !DILocalVariable(name: "__cil_tmp6", scope: !2726, file: !83, line: 1718, type: !15)
!2736 = !DILocation(line: 1718, column: 9, scope: !2726)
!2737 = !DILocalVariable(name: "__cil_tmp7", scope: !2726, file: !83, line: 1719, type: !15)
!2738 = !DILocation(line: 1719, column: 9, scope: !2726)
!2739 = !DILocalVariable(name: "__cil_tmp8", scope: !2726, file: !83, line: 1720, type: !15)
!2740 = !DILocation(line: 1720, column: 9, scope: !2726)
!2741 = !DILocalVariable(name: "__cil_tmp9", scope: !2726, file: !83, line: 1721, type: !15)
!2742 = !DILocation(line: 1721, column: 9, scope: !2726)
!2743 = !DILocation(line: 1724, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !83, line: 1724, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2726, file: !83, line: 1723, column: 3)
!2746 = !DILocation(line: 1724, column: 24, scope: !2744)
!2747 = !DILocation(line: 1724, column: 7, scope: !2745)
!2748 = !DILocation(line: 1726, column: 38, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !83, line: 1726, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !83, line: 1725, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2744, file: !83, line: 1724, column: 31)
!2752 = !DILocation(line: 1726, column: 5, scope: !2749)
!2753 = !DILocation(line: 1727, column: 5, scope: !2751)
!2754 = !DILocation(line: 1724, column: 14, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2744, file: !83, line: 1724, column: 7)
!2756 = !DILocation(line: 1726, column: 38, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !83, line: 1726, column: 5)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !83, line: 1725, column: 5)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !83, line: 1724, column: 19)
!2760 = !DILocation(line: 1726, column: 5, scope: !2757)
!2761 = !DILocation(line: 1727, column: 5, scope: !2759)
!2762 = !DILocation(line: 1724, column: 14, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2755, file: !83, line: 1724, column: 7)
!2764 = !DILocation(line: 1724, column: 7, scope: !2755)
!2765 = !DILocation(line: 1726, column: 38, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !83, line: 1726, column: 5)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !83, line: 1725, column: 5)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !83, line: 1724, column: 20)
!2769 = !DILocation(line: 1726, column: 5, scope: !2766)
!2770 = !DILocation(line: 1727, column: 5, scope: !2768)
!2771 = !DILocation(line: 1730, column: 16, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2745, file: !83, line: 1730, column: 7)
!2773 = !DILocation(line: 1730, column: 7, scope: !2745)
!2774 = !DILocation(line: 1732, column: 38, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !83, line: 1732, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !83, line: 1731, column: 5)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !83, line: 1730, column: 25)
!2778 = !DILocation(line: 1732, column: 5, scope: !2775)
!2779 = !DILocation(line: 1733, column: 5, scope: !2777)
!2780 = !DILocation(line: 1737, column: 45, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2745, file: !83, line: 1735, column: 3)
!2782 = !DILocation(line: 1737, column: 19, scope: !2781)
!2783 = !DILocation(line: 1737, column: 17, scope: !2781)
!2784 = !DILocation(line: 1738, column: 45, scope: !2781)
!2785 = !DILocation(line: 1738, column: 19, scope: !2781)
!2786 = !DILocation(line: 1738, column: 17, scope: !2781)
!2787 = !DILocation(line: 1739, column: 17, scope: !2781)
!2788 = !DILocation(line: 1741, column: 22, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2781, file: !83, line: 1740, column: 3)
!2790 = !DILocation(line: 1741, column: 9, scope: !2789)
!2791 = !DILocalVariable(name: "tmp", scope: !2726, file: !83, line: 1716, type: !13)
!2792 = !DILocation(line: 1741, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2745, file: !83, line: 1741, column: 7)
!2794 = !DILocation(line: 1741, column: 7, scope: !2745)
!2795 = !DILocation(line: 1743, column: 38, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !83, line: 1743, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !83, line: 1742, column: 5)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !83, line: 1741, column: 16)
!2799 = !DILocation(line: 1743, column: 5, scope: !2796)
!2800 = !DILocation(line: 1744, column: 5, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !83, line: 1745, column: 5)
!2802 = !DILocation(line: 1745, column: 5, scope: !2798)
!2803 = !DILocation(line: 1748, column: 11, scope: !2745)
!2804 = !DILocation(line: 1748, column: 3, scope: !2745)
!2805 = !DILocation(line: 0, scope: !2745)
!2806 = !DILocation(line: 1750, column: 1, scope: !2726)
!2807 = distinct !DISubprogram(name: "lakai_get_miscdata", scope: !83, file: !83, line: 960, type: !2808, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!13, !212, !78}
!2810 = !DILocalVariable(name: "handle", arg: 1, scope: !2807, file: !83, line: 960, type: !212)
!2811 = !DILocation(line: 0, scope: !2807)
!2812 = !DILocalVariable(name: "data", arg: 2, scope: !2807, file: !83, line: 960, type: !78)
!2813 = !DILocalVariable(name: "finalbuf", scope: !2807, file: !83, line: 962, type: !1778)
!2814 = !DILocation(line: 962, column: 17, scope: !2807)
!2815 = !DILocalVariable(name: "__cil_tmp7", scope: !2807, file: !83, line: 966, type: !58)
!2816 = !DILocation(line: 966, column: 9, scope: !2807)
!2817 = !DILocalVariable(name: "__cil_tmp8", scope: !2807, file: !83, line: 967, type: !15)
!2818 = !DILocation(line: 967, column: 9, scope: !2807)
!2819 = !DILocalVariable(name: "__cil_tmp9", scope: !2807, file: !83, line: 968, type: !15)
!2820 = !DILocation(line: 968, column: 9, scope: !2807)
!2821 = !DILocalVariable(name: "__cil_tmp10", scope: !2807, file: !83, line: 969, type: !15)
!2822 = !DILocation(line: 969, column: 9, scope: !2807)
!2823 = !DILocalVariable(name: "__cil_tmp11", scope: !2807, file: !83, line: 970, type: !15)
!2824 = !DILocation(line: 970, column: 9, scope: !2807)
!2825 = !DILocation(line: 968, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !83, line: 968, column: 7)
!2827 = distinct !DILexicalBlock(scope: !2807, file: !83, line: 972, column: 3)
!2828 = !DILocation(line: 968, column: 24, scope: !2826)
!2829 = !DILocation(line: 968, column: 7, scope: !2827)
!2830 = !DILocation(line: 970, column: 38, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !83, line: 970, column: 5)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !83, line: 969, column: 5)
!2833 = distinct !DILexicalBlock(scope: !2826, file: !83, line: 968, column: 31)
!2834 = !DILocation(line: 970, column: 5, scope: !2831)
!2835 = !DILocation(line: 971, column: 5, scope: !2833)
!2836 = !DILocation(line: 968, column: 14, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2826, file: !83, line: 968, column: 7)
!2838 = !DILocation(line: 970, column: 38, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !83, line: 970, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !83, line: 969, column: 5)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !83, line: 968, column: 19)
!2842 = !DILocation(line: 970, column: 5, scope: !2839)
!2843 = !DILocation(line: 971, column: 5, scope: !2841)
!2844 = !DILocation(line: 968, column: 14, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2837, file: !83, line: 968, column: 7)
!2846 = !DILocation(line: 968, column: 7, scope: !2837)
!2847 = !DILocation(line: 970, column: 38, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !83, line: 970, column: 5)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !83, line: 969, column: 5)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !83, line: 968, column: 20)
!2851 = !DILocation(line: 970, column: 5, scope: !2848)
!2852 = !DILocation(line: 971, column: 5, scope: !2850)
!2853 = !DILocation(line: 975, column: 40, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !83, line: 974, column: 3)
!2855 = distinct !DILexicalBlock(scope: !2827, file: !83, line: 973, column: 3)
!2856 = !DILocation(line: 974, column: 14, scope: !2854)
!2857 = !DILocalVariable(name: "finallen", scope: !2807, file: !83, line: 964, type: !13)
!2858 = !DILocation(line: 975, column: 16, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2827, file: !83, line: 975, column: 7)
!2860 = !DILocation(line: 975, column: 7, scope: !2827)
!2861 = !DILocation(line: 977, column: 38, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !83, line: 977, column: 5)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !83, line: 976, column: 5)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !83, line: 975, column: 22)
!2865 = !DILocation(line: 977, column: 5, scope: !2862)
!2866 = !DILocation(line: 978, column: 5, scope: !2864)
!2867 = !DILocation(line: 986, column: 23, scope: !2827)
!2868 = !DILocation(line: 986, column: 28, scope: !2827)
!2869 = !DILocalVariable(name: "numvals", scope: !2807, file: !83, line: 965, type: !13)
!2870 = !DILocalVariable(name: "i", scope: !2807, file: !83, line: 963, type: !13)
!2871 = !DILocation(line: 987, column: 3, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !83, line: 989, column: 3)
!2873 = distinct !DILexicalBlock(scope: !2827, file: !83, line: 988, column: 3)
!2874 = !DILocation(line: 0, scope: !2827)
!2875 = !DILocation(line: 987, column: 13, scope: !2872)
!2876 = !DILocation(line: 987, column: 14, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !83, line: 987, column: 9)
!2878 = distinct !DILexicalBlock(scope: !2872, file: !83, line: 987, column: 13)
!2879 = !DILocation(line: 987, column: 9, scope: !2878)
!2880 = !DILocation(line: 987, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !83, line: 987, column: 26)
!2882 = !DILocation(line: 989, column: 57, scope: !2878)
!2883 = !DILocation(line: 989, column: 53, scope: !2878)
!2884 = !DILocation(line: 989, column: 42, scope: !2878)
!2885 = !DILocation(line: 989, column: 36, scope: !2878)
!2886 = !DILocation(line: 989, column: 87, scope: !2878)
!2887 = !DILocation(line: 989, column: 83, scope: !2878)
!2888 = !DILocation(line: 989, column: 92, scope: !2878)
!2889 = !DILocation(line: 989, column: 71, scope: !2878)
!2890 = !DILocation(line: 989, column: 65, scope: !2878)
!2891 = !DILocation(line: 989, column: 97, scope: !2878)
!2892 = !DILocation(line: 989, column: 62, scope: !2878)
!2893 = !DILocation(line: 989, column: 19, scope: !2878)
!2894 = !DILocation(line: 989, column: 12, scope: !2878)
!2895 = !DILocation(line: 989, column: 17, scope: !2878)
!2896 = !DILocation(line: 987, column: 7, scope: !2878)
!2897 = distinct !{!2897, !2871, !2898}
!2898 = !DILocation(line: 988, column: 3, scope: !2872)
!2899 = !DILocation(line: 990, column: 3, scope: !2872)
!2900 = !DILocation(line: 997, column: 3, scope: !2827)
!2901 = !DILocation(line: 999, column: 1, scope: !2807)
!2902 = distinct !DISubprogram(name: "lakai_put_program", scope: !83, file: !83, line: 1005, type: !2178, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2903 = !DILocalVariable(name: "handle", arg: 1, scope: !2902, file: !83, line: 1005, type: !212)
!2904 = !DILocation(line: 0, scope: !2902)
!2905 = !DILocalVariable(name: "prognum", arg: 2, scope: !2902, file: !83, line: 1005, type: !13)
!2906 = !DILocalVariable(name: "data", arg: 3, scope: !2902, file: !83, line: 1005, type: !78)
!2907 = !DILocalVariable(name: "len", arg: 4, scope: !2902, file: !83, line: 1005, type: !13)
!2908 = !DILocalVariable(name: "finalbuf", scope: !2902, file: !83, line: 1007, type: !1778)
!2909 = !DILocation(line: 1007, column: 17, scope: !2902)
!2910 = !DILocalVariable(name: "resbuf", scope: !2902, file: !83, line: 1008, type: !2911)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1024, elements: !2912)
!2912 = !{!2913}
!2913 = !DISubrange(count: 128)
!2914 = !DILocation(line: 1008, column: 17, scope: !2902)
!2915 = !DILocalVariable(name: "__cil_tmp9", scope: !2902, file: !83, line: 1011, type: !58)
!2916 = !DILocation(line: 1011, column: 9, scope: !2902)
!2917 = !DILocalVariable(name: "__cil_tmp10", scope: !2902, file: !83, line: 1012, type: !58)
!2918 = !DILocation(line: 1012, column: 9, scope: !2902)
!2919 = !DILocalVariable(name: "__cil_tmp11", scope: !2902, file: !83, line: 1013, type: !15)
!2920 = !DILocation(line: 1013, column: 9, scope: !2902)
!2921 = !DILocalVariable(name: "__cil_tmp12", scope: !2902, file: !83, line: 1014, type: !15)
!2922 = !DILocation(line: 1014, column: 9, scope: !2902)
!2923 = !DILocalVariable(name: "__cil_tmp13", scope: !2902, file: !83, line: 1015, type: !15)
!2924 = !DILocation(line: 1015, column: 9, scope: !2902)
!2925 = !DILocalVariable(name: "__cil_tmp14", scope: !2902, file: !83, line: 1016, type: !15)
!2926 = !DILocation(line: 1016, column: 9, scope: !2902)
!2927 = !DILocalVariable(name: "__cil_tmp15", scope: !2902, file: !83, line: 1017, type: !15)
!2928 = !DILocation(line: 1017, column: 9, scope: !2902)
!2929 = !DILocalVariable(name: "__cil_tmp16", scope: !2902, file: !83, line: 1018, type: !15)
!2930 = !DILocation(line: 1018, column: 9, scope: !2902)
!2931 = !DILocation(line: 1017, column: 7, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1017, column: 7)
!2933 = distinct !DILexicalBlock(scope: !2902, file: !83, line: 1020, column: 3)
!2934 = !DILocation(line: 1017, column: 24, scope: !2932)
!2935 = !DILocation(line: 1017, column: 7, scope: !2933)
!2936 = !DILocation(line: 1019, column: 38, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !83, line: 1019, column: 5)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !83, line: 1018, column: 5)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !83, line: 1017, column: 31)
!2940 = !DILocation(line: 1019, column: 5, scope: !2937)
!2941 = !DILocation(line: 1020, column: 5, scope: !2939)
!2942 = !DILocation(line: 1017, column: 14, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2932, file: !83, line: 1017, column: 7)
!2944 = !DILocation(line: 1019, column: 38, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !83, line: 1019, column: 5)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !83, line: 1018, column: 5)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !83, line: 1017, column: 19)
!2948 = !DILocation(line: 1019, column: 5, scope: !2945)
!2949 = !DILocation(line: 1020, column: 5, scope: !2947)
!2950 = !DILocation(line: 1017, column: 14, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2943, file: !83, line: 1017, column: 7)
!2952 = !DILocation(line: 1017, column: 7, scope: !2943)
!2953 = !DILocation(line: 1019, column: 38, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !83, line: 1019, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !83, line: 1018, column: 5)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !83, line: 1017, column: 20)
!2957 = !DILocation(line: 1019, column: 5, scope: !2954)
!2958 = !DILocation(line: 1020, column: 5, scope: !2956)
!2959 = !DILocation(line: 1023, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1023, column: 7)
!2961 = !DILocation(line: 1023, column: 7, scope: !2933)
!2962 = !DILocation(line: 1025, column: 38, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !83, line: 1025, column: 5)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !83, line: 1024, column: 5)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !83, line: 1023, column: 20)
!2966 = !DILocation(line: 1025, column: 5, scope: !2963)
!2967 = !DILocation(line: 1026, column: 5, scope: !2965)
!2968 = !DILocation(line: 1023, column: 15, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2960, file: !83, line: 1023, column: 7)
!2970 = !DILocation(line: 1023, column: 7, scope: !2960)
!2971 = !DILocation(line: 1025, column: 38, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !83, line: 1025, column: 5)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !83, line: 1024, column: 5)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !83, line: 1023, column: 24)
!2975 = !DILocation(line: 1025, column: 5, scope: !2972)
!2976 = !DILocation(line: 1026, column: 5, scope: !2974)
!2977 = !DILocation(line: 1034, column: 46, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1028, column: 3)
!2979 = !DILocation(line: 1034, column: 21, scope: !2978)
!2980 = !DILocation(line: 1034, column: 19, scope: !2978)
!2981 = !DILocation(line: 1035, column: 54, scope: !2978)
!2982 = !DILocation(line: 1035, column: 48, scope: !2978)
!2983 = !DILocation(line: 1035, column: 70, scope: !2978)
!2984 = !DILocation(line: 1035, column: 46, scope: !2978)
!2985 = !DILocation(line: 1035, column: 21, scope: !2978)
!2986 = !DILocation(line: 1035, column: 19, scope: !2978)
!2987 = !DILocation(line: 1038, column: 35, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !83, line: 1036, column: 3)
!2989 = !DILocation(line: 1038, column: 3, scope: !2988)
!2990 = !DILocalVariable(name: "i", scope: !2902, file: !83, line: 1009, type: !13)
!2991 = !DILocation(line: 1040, column: 3, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !83, line: 1043, column: 3)
!2993 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1042, column: 3)
!2994 = !DILocation(line: 0, scope: !2933)
!2995 = !DILocation(line: 1040, column: 13, scope: !2992)
!2996 = !DILocation(line: 1040, column: 14, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !83, line: 1040, column: 9)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !83, line: 1040, column: 13)
!2999 = !DILocation(line: 1040, column: 9, scope: !2998)
!3000 = !DILocation(line: 1040, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !83, line: 1040, column: 22)
!3002 = !DILocation(line: 1042, column: 94, scope: !2998)
!3003 = !DILocation(line: 1042, column: 87, scope: !2998)
!3004 = !DILocation(line: 1042, column: 81, scope: !2998)
!3005 = !DILocation(line: 1042, column: 99, scope: !2998)
!3006 = !DILocation(line: 1042, column: 64, scope: !2998)
!3007 = !DILocation(line: 1042, column: 56, scope: !2998)
!3008 = !DILocation(line: 1042, column: 37, scope: !2998)
!3009 = !DILocation(line: 1042, column: 35, scope: !2998)
!3010 = !DILocation(line: 1042, column: 5, scope: !2998)
!3011 = !DILocation(line: 1042, column: 62, scope: !2998)
!3012 = !DILocation(line: 1043, column: 103, scope: !2998)
!3013 = !DILocation(line: 1043, column: 96, scope: !2998)
!3014 = !DILocation(line: 1043, column: 90, scope: !2998)
!3015 = !DILocation(line: 1043, column: 108, scope: !2998)
!3016 = !DILocation(line: 1043, column: 115, scope: !2998)
!3017 = !DILocation(line: 1043, column: 72, scope: !2998)
!3018 = !DILocation(line: 1043, column: 57, scope: !2998)
!3019 = !DILocation(line: 1043, column: 38, scope: !2998)
!3020 = !DILocation(line: 1043, column: 36, scope: !2998)
!3021 = !DILocation(line: 1043, column: 63, scope: !2998)
!3022 = !DILocation(line: 1043, column: 5, scope: !2998)
!3023 = !DILocation(line: 1043, column: 70, scope: !2998)
!3024 = !DILocation(line: 1040, column: 7, scope: !2998)
!3025 = distinct !{!3025, !2991, !3026}
!3026 = !DILocation(line: 1041, column: 3, scope: !2992)
!3027 = !DILocation(line: 1043, column: 3, scope: !2992)
!3028 = !DILocation(line: 1045, column: 54, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1046, column: 3)
!3030 = !DILocation(line: 1045, column: 35, scope: !3029)
!3031 = !DILocation(line: 1045, column: 33, scope: !3029)
!3032 = !DILocation(line: 1045, column: 3, scope: !3029)
!3033 = !DILocation(line: 1045, column: 62, scope: !3029)
!3034 = !DILocation(line: 1052, column: 48, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !83, line: 1046, column: 3)
!3036 = !DILocation(line: 1052, column: 121, scope: !3035)
!3037 = !DILocation(line: 1052, column: 100, scope: !3035)
!3038 = !DILocation(line: 1052, column: 98, scope: !3035)
!3039 = !DILocation(line: 1052, column: 127, scope: !3035)
!3040 = !DILocation(line: 1052, column: 60, scope: !3035)
!3041 = !DILocation(line: 1053, column: 40, scope: !3035)
!3042 = !DILocation(line: 1052, column: 14, scope: !3035)
!3043 = !DILocalVariable(name: "finallen", scope: !2902, file: !83, line: 1010, type: !13)
!3044 = !DILocation(line: 1053, column: 16, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2933, file: !83, line: 1053, column: 7)
!3046 = !DILocation(line: 1053, column: 7, scope: !2933)
!3047 = !DILocation(line: 1055, column: 38, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !83, line: 1055, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !83, line: 1054, column: 5)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !83, line: 1053, column: 22)
!3051 = !DILocation(line: 1055, column: 5, scope: !3048)
!3052 = !DILocation(line: 1056, column: 5, scope: !3050)
!3053 = !DILocation(line: 1065, column: 3, scope: !2933)
!3054 = !DILocation(line: 1067, column: 1, scope: !2902)
!3055 = distinct !DISubprogram(name: "lakai_put_keygroup", scope: !83, file: !83, line: 1076, type: !3056, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!13, !212, !13, !13, !78, !13}
!3058 = !DILocalVariable(name: "handle", arg: 1, scope: !3055, file: !83, line: 1076, type: !212)
!3059 = !DILocation(line: 0, scope: !3055)
!3060 = !DILocalVariable(name: "prognum", arg: 2, scope: !3055, file: !83, line: 1076, type: !13)
!3061 = !DILocalVariable(name: "kgrpnum", arg: 3, scope: !3055, file: !83, line: 1076, type: !13)
!3062 = !DILocalVariable(name: "data", arg: 4, scope: !3055, file: !83, line: 1076, type: !78)
!3063 = !DILocalVariable(name: "len", arg: 5, scope: !3055, file: !83, line: 1077, type: !13)
!3064 = !DILocalVariable(name: "finalbuf", scope: !3055, file: !83, line: 1079, type: !1778)
!3065 = !DILocation(line: 1079, column: 17, scope: !3055)
!3066 = !DILocalVariable(name: "resbuf", scope: !3055, file: !83, line: 1080, type: !2911)
!3067 = !DILocation(line: 1080, column: 17, scope: !3055)
!3068 = !DILocalVariable(name: "__cil_tmp10", scope: !3055, file: !83, line: 1083, type: !58)
!3069 = !DILocation(line: 1083, column: 9, scope: !3055)
!3070 = !DILocalVariable(name: "__cil_tmp11", scope: !3055, file: !83, line: 1084, type: !58)
!3071 = !DILocation(line: 1084, column: 9, scope: !3055)
!3072 = !DILocalVariable(name: "__cil_tmp12", scope: !3055, file: !83, line: 1085, type: !15)
!3073 = !DILocation(line: 1085, column: 9, scope: !3055)
!3074 = !DILocalVariable(name: "__cil_tmp13", scope: !3055, file: !83, line: 1086, type: !15)
!3075 = !DILocation(line: 1086, column: 9, scope: !3055)
!3076 = !DILocalVariable(name: "__cil_tmp14", scope: !3055, file: !83, line: 1087, type: !15)
!3077 = !DILocation(line: 1087, column: 9, scope: !3055)
!3078 = !DILocalVariable(name: "__cil_tmp15", scope: !3055, file: !83, line: 1088, type: !15)
!3079 = !DILocation(line: 1088, column: 9, scope: !3055)
!3080 = !DILocalVariable(name: "__cil_tmp16", scope: !3055, file: !83, line: 1089, type: !15)
!3081 = !DILocation(line: 1089, column: 9, scope: !3055)
!3082 = !DILocalVariable(name: "__cil_tmp17", scope: !3055, file: !83, line: 1090, type: !15)
!3083 = !DILocation(line: 1090, column: 9, scope: !3055)
!3084 = !DILocalVariable(name: "__cil_tmp18", scope: !3055, file: !83, line: 1091, type: !15)
!3085 = !DILocation(line: 1091, column: 9, scope: !3055)
!3086 = !DILocation(line: 1090, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1090, column: 7)
!3088 = distinct !DILexicalBlock(scope: !3055, file: !83, line: 1093, column: 3)
!3089 = !DILocation(line: 1090, column: 24, scope: !3087)
!3090 = !DILocation(line: 1090, column: 7, scope: !3088)
!3091 = !DILocation(line: 1092, column: 38, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !83, line: 1092, column: 5)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !83, line: 1091, column: 5)
!3094 = distinct !DILexicalBlock(scope: !3087, file: !83, line: 1090, column: 31)
!3095 = !DILocation(line: 1092, column: 5, scope: !3092)
!3096 = !DILocation(line: 1093, column: 5, scope: !3094)
!3097 = !DILocation(line: 1090, column: 14, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3087, file: !83, line: 1090, column: 7)
!3099 = !DILocation(line: 1092, column: 38, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !83, line: 1092, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !83, line: 1091, column: 5)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !83, line: 1090, column: 19)
!3103 = !DILocation(line: 1092, column: 5, scope: !3100)
!3104 = !DILocation(line: 1093, column: 5, scope: !3102)
!3105 = !DILocation(line: 1090, column: 14, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !83, line: 1090, column: 7)
!3107 = !DILocation(line: 1090, column: 7, scope: !3098)
!3108 = !DILocation(line: 1092, column: 38, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !83, line: 1092, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !83, line: 1091, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !83, line: 1090, column: 20)
!3112 = !DILocation(line: 1092, column: 5, scope: !3109)
!3113 = !DILocation(line: 1093, column: 5, scope: !3111)
!3114 = !DILocation(line: 1096, column: 15, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1096, column: 7)
!3116 = !DILocation(line: 1096, column: 7, scope: !3088)
!3117 = !DILocation(line: 1098, column: 38, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !83, line: 1098, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !83, line: 1097, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !83, line: 1096, column: 20)
!3121 = !DILocation(line: 1098, column: 5, scope: !3118)
!3122 = !DILocation(line: 1099, column: 5, scope: !3120)
!3123 = !DILocation(line: 1096, column: 15, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !83, line: 1096, column: 7)
!3125 = !DILocation(line: 1096, column: 7, scope: !3115)
!3126 = !DILocation(line: 1098, column: 38, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !83, line: 1098, column: 5)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !83, line: 1097, column: 5)
!3129 = distinct !DILexicalBlock(scope: !3124, file: !83, line: 1096, column: 24)
!3130 = !DILocation(line: 1098, column: 5, scope: !3127)
!3131 = !DILocation(line: 1099, column: 5, scope: !3129)
!3132 = !DILocation(line: 1102, column: 15, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1102, column: 7)
!3134 = !DILocation(line: 1102, column: 7, scope: !3088)
!3135 = !DILocation(line: 1104, column: 38, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !83, line: 1104, column: 5)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !83, line: 1103, column: 5)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !83, line: 1102, column: 22)
!3139 = !DILocation(line: 1104, column: 5, scope: !3136)
!3140 = !DILocation(line: 1105, column: 5, scope: !3138)
!3141 = !DILocation(line: 1113, column: 46, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1107, column: 3)
!3143 = !DILocation(line: 1113, column: 21, scope: !3142)
!3144 = !DILocation(line: 1113, column: 19, scope: !3142)
!3145 = !DILocation(line: 1114, column: 54, scope: !3142)
!3146 = !DILocation(line: 1114, column: 48, scope: !3142)
!3147 = !DILocation(line: 1114, column: 70, scope: !3142)
!3148 = !DILocation(line: 1114, column: 46, scope: !3142)
!3149 = !DILocation(line: 1114, column: 21, scope: !3142)
!3150 = !DILocation(line: 1114, column: 19, scope: !3142)
!3151 = !DILocation(line: 1116, column: 21, scope: !3142)
!3152 = !DILocation(line: 1116, column: 19, scope: !3142)
!3153 = !DILocation(line: 1119, column: 35, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3142, file: !83, line: 1117, column: 3)
!3155 = !DILocation(line: 1119, column: 3, scope: !3154)
!3156 = !DILocalVariable(name: "i", scope: !3055, file: !83, line: 1081, type: !13)
!3157 = !DILocation(line: 1121, column: 3, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !83, line: 1124, column: 3)
!3159 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1123, column: 3)
!3160 = !DILocation(line: 0, scope: !3088)
!3161 = !DILocation(line: 1121, column: 13, scope: !3158)
!3162 = !DILocation(line: 1121, column: 14, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !83, line: 1121, column: 9)
!3164 = distinct !DILexicalBlock(scope: !3158, file: !83, line: 1121, column: 13)
!3165 = !DILocation(line: 1121, column: 9, scope: !3164)
!3166 = !DILocation(line: 1121, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !83, line: 1121, column: 22)
!3168 = !DILocation(line: 1123, column: 94, scope: !3164)
!3169 = !DILocation(line: 1123, column: 87, scope: !3164)
!3170 = !DILocation(line: 1123, column: 81, scope: !3164)
!3171 = !DILocation(line: 1123, column: 99, scope: !3164)
!3172 = !DILocation(line: 1123, column: 64, scope: !3164)
!3173 = !DILocation(line: 1123, column: 56, scope: !3164)
!3174 = !DILocation(line: 1123, column: 37, scope: !3164)
!3175 = !DILocation(line: 1123, column: 35, scope: !3164)
!3176 = !DILocation(line: 1123, column: 5, scope: !3164)
!3177 = !DILocation(line: 1123, column: 62, scope: !3164)
!3178 = !DILocation(line: 1124, column: 103, scope: !3164)
!3179 = !DILocation(line: 1124, column: 96, scope: !3164)
!3180 = !DILocation(line: 1124, column: 90, scope: !3164)
!3181 = !DILocation(line: 1124, column: 108, scope: !3164)
!3182 = !DILocation(line: 1124, column: 115, scope: !3164)
!3183 = !DILocation(line: 1124, column: 72, scope: !3164)
!3184 = !DILocation(line: 1124, column: 57, scope: !3164)
!3185 = !DILocation(line: 1124, column: 38, scope: !3164)
!3186 = !DILocation(line: 1124, column: 36, scope: !3164)
!3187 = !DILocation(line: 1124, column: 63, scope: !3164)
!3188 = !DILocation(line: 1124, column: 5, scope: !3164)
!3189 = !DILocation(line: 1124, column: 70, scope: !3164)
!3190 = !DILocation(line: 1121, column: 7, scope: !3164)
!3191 = distinct !{!3191, !3157, !3192}
!3192 = !DILocation(line: 1122, column: 3, scope: !3158)
!3193 = !DILocation(line: 1124, column: 3, scope: !3158)
!3194 = !DILocation(line: 1126, column: 54, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1127, column: 3)
!3196 = !DILocation(line: 1126, column: 35, scope: !3195)
!3197 = !DILocation(line: 1126, column: 33, scope: !3195)
!3198 = !DILocation(line: 1126, column: 3, scope: !3195)
!3199 = !DILocation(line: 1126, column: 62, scope: !3195)
!3200 = !DILocation(line: 1133, column: 48, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3195, file: !83, line: 1127, column: 3)
!3202 = !DILocation(line: 1133, column: 121, scope: !3201)
!3203 = !DILocation(line: 1133, column: 100, scope: !3201)
!3204 = !DILocation(line: 1133, column: 98, scope: !3201)
!3205 = !DILocation(line: 1133, column: 127, scope: !3201)
!3206 = !DILocation(line: 1133, column: 60, scope: !3201)
!3207 = !DILocation(line: 1134, column: 40, scope: !3201)
!3208 = !DILocation(line: 1133, column: 14, scope: !3201)
!3209 = !DILocalVariable(name: "finallen", scope: !3055, file: !83, line: 1082, type: !13)
!3210 = !DILocation(line: 1134, column: 16, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3088, file: !83, line: 1134, column: 7)
!3212 = !DILocation(line: 1134, column: 7, scope: !3088)
!3213 = !DILocation(line: 1136, column: 38, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !83, line: 1136, column: 5)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !83, line: 1135, column: 5)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !83, line: 1134, column: 22)
!3217 = !DILocation(line: 1136, column: 5, scope: !3214)
!3218 = !DILocation(line: 1137, column: 5, scope: !3216)
!3219 = !DILocation(line: 1139, column: 3, scope: !3088)
!3220 = !DILocation(line: 1141, column: 1, scope: !3055)
!3221 = distinct !DISubprogram(name: "lakai_put_sample", scope: !83, file: !83, line: 1150, type: !2449, scopeLine: 1152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3222 = !DILocalVariable(name: "handle", arg: 1, scope: !3221, file: !83, line: 1150, type: !212)
!3223 = !DILocation(line: 0, scope: !3221)
!3224 = !DILocalVariable(name: "samplenum", arg: 2, scope: !3221, file: !83, line: 1150, type: !13)
!3225 = !DILocalVariable(name: "buffer", arg: 3, scope: !3221, file: !83, line: 1150, type: !15)
!3226 = !DILocalVariable(name: "locat", arg: 4, scope: !3221, file: !83, line: 1150, type: !41)
!3227 = !DILocalVariable(name: "len", arg: 5, scope: !3221, file: !83, line: 1151, type: !41)
!3228 = !DILocalVariable(name: "statusbuf", scope: !3221, file: !83, line: 1157, type: !752)
!3229 = !DILocation(line: 1157, column: 17, scope: !3221)
!3230 = !DILocalVariable(name: "cmdblk1___74", scope: !3221, file: !83, line: 1160, type: !3231)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !85)
!3232 = !DILocation(line: 1160, column: 17, scope: !3221)
!3233 = !DILocalVariable(name: "__cil_tmp15", scope: !3221, file: !83, line: 1162, type: !58)
!3234 = !DILocation(line: 1162, column: 9, scope: !3221)
!3235 = !DILocalVariable(name: "__cil_tmp16", scope: !3221, file: !83, line: 1163, type: !58)
!3236 = !DILocation(line: 1163, column: 9, scope: !3221)
!3237 = !DILocalVariable(name: "__cil_tmp17", scope: !3221, file: !83, line: 1164, type: !15)
!3238 = !DILocation(line: 1164, column: 9, scope: !3221)
!3239 = !DILocalVariable(name: "__cil_tmp18", scope: !3221, file: !83, line: 1165, type: !15)
!3240 = !DILocation(line: 1165, column: 9, scope: !3221)
!3241 = !DILocalVariable(name: "__cil_tmp19", scope: !3221, file: !83, line: 1166, type: !15)
!3242 = !DILocation(line: 1166, column: 9, scope: !3221)
!3243 = !DILocation(line: 1155, column: 28, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3221, file: !83, line: 1168, column: 3)
!3245 = !DILocation(line: 1155, column: 17, scope: !3244)
!3246 = !DILocalVariable(name: "len_samples", scope: !3221, file: !83, line: 1159, type: !13)
!3247 = !DILocation(line: 1156, column: 3, scope: !3244)
!3248 = !DILocation(line: 1156, column: 19, scope: !3244)
!3249 = !DILocation(line: 1156, column: 20, scope: !3244)
!3250 = !DILocation(line: 1166, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3244, file: !83, line: 1166, column: 7)
!3252 = !DILocation(line: 1166, column: 24, scope: !3251)
!3253 = !DILocation(line: 1166, column: 7, scope: !3244)
!3254 = !DILocation(line: 1168, column: 38, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !83, line: 1168, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !83, line: 1167, column: 5)
!3257 = distinct !DILexicalBlock(scope: !3251, file: !83, line: 1166, column: 31)
!3258 = !DILocation(line: 1168, column: 5, scope: !3255)
!3259 = !DILocation(line: 1169, column: 5, scope: !3257)
!3260 = !DILocation(line: 1166, column: 14, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3251, file: !83, line: 1166, column: 7)
!3262 = !DILocation(line: 1168, column: 38, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !83, line: 1168, column: 5)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !83, line: 1167, column: 5)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !83, line: 1166, column: 19)
!3266 = !DILocation(line: 1168, column: 5, scope: !3263)
!3267 = !DILocation(line: 1169, column: 5, scope: !3265)
!3268 = !DILocation(line: 1166, column: 14, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !83, line: 1166, column: 7)
!3270 = !DILocation(line: 1166, column: 7, scope: !3261)
!3271 = !DILocation(line: 1168, column: 38, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !83, line: 1168, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !83, line: 1167, column: 5)
!3274 = distinct !DILexicalBlock(scope: !3269, file: !83, line: 1166, column: 20)
!3275 = !DILocation(line: 1168, column: 5, scope: !3272)
!3276 = !DILocation(line: 1169, column: 5, scope: !3274)
!3277 = !DILocation(line: 1173, column: 48, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3244, file: !83, line: 1171, column: 3)
!3279 = !DILocation(line: 1173, column: 21, scope: !3278)
!3280 = !DILocation(line: 1173, column: 3, scope: !3278)
!3281 = !DILocation(line: 1173, column: 19, scope: !3278)
!3282 = !DILocation(line: 1174, column: 49, scope: !3278)
!3283 = !DILocation(line: 1174, column: 55, scope: !3278)
!3284 = !DILocation(line: 1174, column: 21, scope: !3278)
!3285 = !DILocation(line: 1174, column: 3, scope: !3278)
!3286 = !DILocation(line: 1174, column: 19, scope: !3278)
!3287 = !DILocation(line: 1177, column: 44, scope: !3278)
!3288 = !DILocation(line: 1177, column: 21, scope: !3278)
!3289 = !DILocation(line: 1177, column: 3, scope: !3278)
!3290 = !DILocation(line: 1177, column: 19, scope: !3278)
!3291 = !DILocation(line: 1178, column: 45, scope: !3278)
!3292 = !DILocation(line: 1178, column: 51, scope: !3278)
!3293 = !DILocation(line: 1178, column: 21, scope: !3278)
!3294 = !DILocation(line: 1178, column: 3, scope: !3278)
!3295 = !DILocation(line: 1178, column: 19, scope: !3278)
!3296 = !DILocation(line: 1179, column: 45, scope: !3278)
!3297 = !DILocation(line: 1179, column: 52, scope: !3278)
!3298 = !DILocation(line: 1179, column: 21, scope: !3278)
!3299 = !DILocation(line: 1179, column: 3, scope: !3278)
!3300 = !DILocation(line: 1179, column: 19, scope: !3278)
!3301 = !DILocation(line: 1180, column: 46, scope: !3278)
!3302 = !DILocation(line: 1180, column: 53, scope: !3278)
!3303 = !DILocation(line: 1180, column: 22, scope: !3278)
!3304 = !DILocation(line: 1180, column: 3, scope: !3278)
!3305 = !DILocation(line: 1180, column: 20, scope: !3278)
!3306 = !DILocation(line: 1182, column: 51, scope: !3278)
!3307 = !DILocation(line: 1182, column: 22, scope: !3278)
!3308 = !DILocation(line: 1182, column: 3, scope: !3278)
!3309 = !DILocation(line: 1182, column: 20, scope: !3278)
!3310 = !DILocation(line: 1183, column: 52, scope: !3278)
!3311 = !DILocation(line: 1183, column: 58, scope: !3278)
!3312 = !DILocation(line: 1183, column: 22, scope: !3278)
!3313 = !DILocation(line: 1183, column: 3, scope: !3278)
!3314 = !DILocation(line: 1183, column: 20, scope: !3278)
!3315 = !DILocation(line: 1184, column: 52, scope: !3278)
!3316 = !DILocation(line: 1184, column: 59, scope: !3278)
!3317 = !DILocation(line: 1184, column: 22, scope: !3278)
!3318 = !DILocation(line: 1184, column: 3, scope: !3278)
!3319 = !DILocation(line: 1184, column: 20, scope: !3278)
!3320 = !DILocation(line: 1185, column: 52, scope: !3278)
!3321 = !DILocation(line: 1185, column: 59, scope: !3278)
!3322 = !DILocation(line: 1185, column: 22, scope: !3278)
!3323 = !DILocation(line: 1185, column: 3, scope: !3278)
!3324 = !DILocation(line: 1185, column: 20, scope: !3278)
!3325 = !DILocation(line: 1188, column: 3, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3278, file: !83, line: 1186, column: 3)
!3327 = !DILocation(line: 1190, column: 51, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3278, file: !83, line: 1190, column: 3)
!3329 = !DILocation(line: 1191, column: 43, scope: !3328)
!3330 = !DILocation(line: 1190, column: 16, scope: !3328)
!3331 = !DILocalVariable(name: "availbytes", scope: !3221, file: !83, line: 1153, type: !13)
!3332 = !DILocation(line: 1207, column: 3, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3278, file: !83, line: 1193, column: 3)
!3334 = !DILocation(line: 1209, column: 16, scope: !3278)
!3335 = !DILocalVariable(name: "stilltoput", scope: !3221, file: !83, line: 1154, type: !13)
!3336 = !DILocalVariable(name: "ptr", scope: !3221, file: !83, line: 1158, type: !78)
!3337 = !DILocation(line: 1211, column: 3, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !83, line: 1213, column: 3)
!3339 = distinct !DILexicalBlock(scope: !3244, file: !83, line: 1212, column: 3)
!3340 = !DILocation(line: 0, scope: !3244)
!3341 = !DILocation(line: 1211, column: 13, scope: !3338)
!3342 = !DILocation(line: 1211, column: 23, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !83, line: 1211, column: 9)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !83, line: 1211, column: 13)
!3345 = !DILocation(line: 1211, column: 9, scope: !3344)
!3346 = !DILocation(line: 1211, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !83, line: 1211, column: 29)
!3348 = !DILocation(line: 1213, column: 20, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3344, file: !83, line: 1213, column: 9)
!3350 = !DILocation(line: 1213, column: 9, scope: !3344)
!3351 = !DILocalVariable(name: "putnow", scope: !3221, file: !83, line: 1155, type: !13)
!3352 = !DILocation(line: 1215, column: 5, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !83, line: 1213, column: 29)
!3354 = !DILocation(line: 0, scope: !3349)
!3355 = !DILocation(line: 1217, column: 11, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !83, line: 1219, column: 5)
!3357 = distinct !DILexicalBlock(scope: !3344, file: !83, line: 1218, column: 5)
!3358 = !DILocalVariable(name: "tmp", scope: !3221, file: !83, line: 1161, type: !41)
!3359 = !DILocation(line: 1217, column: 11, scope: !3357)
!3360 = !DILocalVariable(name: "ret", scope: !3221, file: !83, line: 1156, type: !13)
!3361 = !DILocation(line: 1219, column: 16, scope: !3357)
!3362 = !DILocation(line: 1220, column: 9, scope: !3357)
!3363 = distinct !{!3363, !3337, !3364}
!3364 = !DILocation(line: 1222, column: 3, scope: !3338)
!3365 = !DILocation(line: 1224, column: 3, scope: !3338)
!3366 = !DILocation(line: 1223, column: 3, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !83, line: 1228, column: 3)
!3368 = distinct !DILexicalBlock(scope: !3244, file: !83, line: 1227, column: 3)
!3369 = !DILocation(line: 1225, column: 3, scope: !3244)
!3370 = !DILocation(line: 1227, column: 1, scope: !3221)
!3371 = distinct !DISubprogram(name: "putbulkdata", scope: !83, file: !83, line: 1768, type: !2727, scopeLine: 1769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3372 = !DILocalVariable(name: "handle", arg: 1, scope: !3371, file: !83, line: 1768, type: !212)
!3373 = !DILocation(line: 0, scope: !3371)
!3374 = !DILocalVariable(name: "numbytes", arg: 2, scope: !3371, file: !83, line: 1768, type: !13)
!3375 = !DILocalVariable(name: "buf", arg: 3, scope: !3371, file: !83, line: 1768, type: !15)
!3376 = !DILocalVariable(name: "__cil_tmp5", scope: !3371, file: !83, line: 1771, type: !15)
!3377 = !DILocation(line: 1771, column: 9, scope: !3371)
!3378 = !DILocalVariable(name: "__cil_tmp6", scope: !3371, file: !83, line: 1772, type: !15)
!3379 = !DILocation(line: 1772, column: 9, scope: !3371)
!3380 = !DILocalVariable(name: "__cil_tmp7", scope: !3371, file: !83, line: 1773, type: !15)
!3381 = !DILocation(line: 1773, column: 9, scope: !3371)
!3382 = !DILocalVariable(name: "__cil_tmp8", scope: !3371, file: !83, line: 1774, type: !15)
!3383 = !DILocation(line: 1774, column: 9, scope: !3371)
!3384 = !DILocalVariable(name: "__cil_tmp9", scope: !3371, file: !83, line: 1775, type: !15)
!3385 = !DILocation(line: 1775, column: 9, scope: !3371)
!3386 = !DILocation(line: 1778, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !83, line: 1778, column: 7)
!3388 = distinct !DILexicalBlock(scope: !3371, file: !83, line: 1777, column: 3)
!3389 = !DILocation(line: 1778, column: 24, scope: !3387)
!3390 = !DILocation(line: 1778, column: 7, scope: !3388)
!3391 = !DILocation(line: 1780, column: 38, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !83, line: 1780, column: 5)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !83, line: 1779, column: 5)
!3394 = distinct !DILexicalBlock(scope: !3387, file: !83, line: 1778, column: 31)
!3395 = !DILocation(line: 1780, column: 5, scope: !3392)
!3396 = !DILocation(line: 1781, column: 5, scope: !3394)
!3397 = !DILocation(line: 1778, column: 14, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3387, file: !83, line: 1778, column: 7)
!3399 = !DILocation(line: 1780, column: 38, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !83, line: 1780, column: 5)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !83, line: 1779, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !83, line: 1778, column: 19)
!3403 = !DILocation(line: 1780, column: 5, scope: !3400)
!3404 = !DILocation(line: 1781, column: 5, scope: !3402)
!3405 = !DILocation(line: 1778, column: 14, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3398, file: !83, line: 1778, column: 7)
!3407 = !DILocation(line: 1778, column: 7, scope: !3398)
!3408 = !DILocation(line: 1780, column: 38, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !83, line: 1780, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !83, line: 1779, column: 5)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !83, line: 1778, column: 20)
!3412 = !DILocation(line: 1780, column: 5, scope: !3409)
!3413 = !DILocation(line: 1781, column: 5, scope: !3411)
!3414 = !DILocation(line: 1784, column: 16, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3388, file: !83, line: 1784, column: 7)
!3416 = !DILocation(line: 1784, column: 7, scope: !3388)
!3417 = !DILocation(line: 1786, column: 38, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !83, line: 1786, column: 5)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !83, line: 1785, column: 5)
!3420 = distinct !DILexicalBlock(scope: !3415, file: !83, line: 1784, column: 25)
!3421 = !DILocation(line: 1786, column: 5, scope: !3418)
!3422 = !DILocation(line: 1787, column: 5, scope: !3420)
!3423 = !DILocation(line: 1791, column: 45, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3388, file: !83, line: 1789, column: 3)
!3425 = !DILocation(line: 1791, column: 19, scope: !3424)
!3426 = !DILocation(line: 1791, column: 17, scope: !3424)
!3427 = !DILocation(line: 1792, column: 45, scope: !3424)
!3428 = !DILocation(line: 1792, column: 19, scope: !3424)
!3429 = !DILocation(line: 1792, column: 17, scope: !3424)
!3430 = !DILocation(line: 1793, column: 17, scope: !3424)
!3431 = !DILocation(line: 1795, column: 22, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3424, file: !83, line: 1794, column: 3)
!3433 = !DILocation(line: 1795, column: 9, scope: !3432)
!3434 = !DILocalVariable(name: "tmp", scope: !3371, file: !83, line: 1770, type: !13)
!3435 = !DILocation(line: 1795, column: 11, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3388, file: !83, line: 1795, column: 7)
!3437 = !DILocation(line: 1795, column: 7, scope: !3388)
!3438 = !DILocation(line: 1797, column: 38, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !83, line: 1797, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !83, line: 1796, column: 5)
!3441 = distinct !DILexicalBlock(scope: !3436, file: !83, line: 1795, column: 16)
!3442 = !DILocation(line: 1797, column: 5, scope: !3439)
!3443 = !DILocation(line: 1798, column: 5, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3440, file: !83, line: 1799, column: 5)
!3445 = !DILocation(line: 1799, column: 5, scope: !3441)
!3446 = !DILocation(line: 1804, column: 11, scope: !3388)
!3447 = !DILocation(line: 1804, column: 3, scope: !3388)
!3448 = !DILocation(line: 0, scope: !3388)
!3449 = !DILocation(line: 1806, column: 1, scope: !3371)
!3450 = distinct !DISubprogram(name: "lakai_asciitoakai", scope: !83, file: !83, line: 1235, type: !1684, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3451 = !DILocalVariable(name: "src", arg: 1, scope: !3450, file: !83, line: 1235, type: !15)
!3452 = !DILocation(line: 0, scope: !3450)
!3453 = !DILocalVariable(name: "dst", arg: 2, scope: !3450, file: !83, line: 1235, type: !15)
!3454 = !DILocalVariable(name: "len", arg: 3, scope: !3450, file: !83, line: 1235, type: !13)
!3455 = !DILocalVariable(name: "i", scope: !3450, file: !83, line: 1237, type: !13)
!3456 = !DILocation(line: 1239, column: 3, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !83, line: 1241, column: 3)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !83, line: 1240, column: 3)
!3459 = distinct !DILexicalBlock(scope: !3450, file: !83, line: 1241, column: 3)
!3460 = !DILocation(line: 0, scope: !3459)
!3461 = !DILocation(line: 1239, column: 13, scope: !3457)
!3462 = !DILocation(line: 1239, column: 14, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !83, line: 1239, column: 9)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !83, line: 1239, column: 13)
!3465 = !DILocation(line: 1239, column: 9, scope: !3464)
!3466 = !DILocation(line: 1239, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !83, line: 1239, column: 22)
!3468 = !DILocation(line: 1241, column: 36, scope: !3464)
!3469 = !DILocation(line: 1241, column: 30, scope: !3464)
!3470 = !DILocalVariable(name: "val_in", scope: !3450, file: !83, line: 1238, type: !73)
!3471 = !DILocation(line: 1242, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3464, file: !83, line: 1242, column: 9)
!3473 = !DILocation(line: 1242, column: 22, scope: !3472)
!3474 = !DILocation(line: 1242, column: 9, scope: !3464)
!3475 = !DILocation(line: 1242, column: 11, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !83, line: 1242, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !83, line: 1242, column: 29)
!3478 = !DILocation(line: 1242, column: 24, scope: !3476)
!3479 = !DILocation(line: 1242, column: 11, scope: !3477)
!3480 = !DILocation(line: 1243, column: 36, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3476, file: !83, line: 1242, column: 31)
!3482 = !DILocation(line: 1243, column: 49, scope: !3481)
!3483 = !DILocation(line: 1243, column: 19, scope: !3481)
!3484 = !DILocalVariable(name: "val_out", scope: !3450, file: !83, line: 1239, type: !73)
!3485 = !DILocation(line: 1244, column: 7, scope: !3481)
!3486 = !DILocation(line: 1242, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3476, file: !83, line: 1244, column: 14)
!3488 = !DILocation(line: 1244, column: 5, scope: !3477)
!3489 = !DILocation(line: 1244, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3472, file: !83, line: 1244, column: 9)
!3491 = !DILocation(line: 1244, column: 22, scope: !3490)
!3492 = !DILocation(line: 1244, column: 9, scope: !3472)
!3493 = !DILocation(line: 1244, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !83, line: 1244, column: 11)
!3495 = distinct !DILexicalBlock(scope: !3490, file: !83, line: 1244, column: 29)
!3496 = !DILocation(line: 1244, column: 24, scope: !3494)
!3497 = !DILocation(line: 1244, column: 11, scope: !3495)
!3498 = !DILocation(line: 1245, column: 36, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !83, line: 1244, column: 31)
!3500 = !DILocation(line: 1245, column: 49, scope: !3499)
!3501 = !DILocation(line: 1245, column: 19, scope: !3499)
!3502 = !DILocation(line: 1246, column: 7, scope: !3499)
!3503 = !DILocation(line: 1244, column: 9, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3494, file: !83, line: 1246, column: 14)
!3505 = !DILocation(line: 1246, column: 5, scope: !3495)
!3506 = !DILocation(line: 1246, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3490, file: !83, line: 1246, column: 9)
!3508 = !DILocation(line: 1246, column: 22, scope: !3507)
!3509 = !DILocation(line: 1246, column: 9, scope: !3490)
!3510 = !DILocation(line: 1246, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !83, line: 1246, column: 11)
!3512 = distinct !DILexicalBlock(scope: !3507, file: !83, line: 1246, column: 29)
!3513 = !DILocation(line: 1246, column: 24, scope: !3511)
!3514 = !DILocation(line: 1246, column: 11, scope: !3512)
!3515 = !DILocation(line: 1247, column: 36, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3511, file: !83, line: 1246, column: 32)
!3517 = !DILocation(line: 1247, column: 49, scope: !3516)
!3518 = !DILocation(line: 1247, column: 19, scope: !3516)
!3519 = !DILocation(line: 1248, column: 7, scope: !3516)
!3520 = !DILocation(line: 1246, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3511, file: !83, line: 1248, column: 14)
!3522 = !DILocation(line: 1248, column: 5, scope: !3512)
!3523 = !DILocation(line: 1248, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3507, file: !83, line: 1248, column: 9)
!3525 = !DILocation(line: 1248, column: 22, scope: !3524)
!3526 = !DILocation(line: 1248, column: 9, scope: !3507)
!3527 = !DILocation(line: 1250, column: 5, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !83, line: 1248, column: 29)
!3529 = !DILocation(line: 1250, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3524, file: !83, line: 1250, column: 9)
!3531 = !DILocation(line: 1250, column: 22, scope: !3530)
!3532 = !DILocation(line: 1250, column: 9, scope: !3524)
!3533 = !DILocation(line: 1252, column: 5, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3530, file: !83, line: 1250, column: 29)
!3535 = !DILocation(line: 1252, column: 9, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3530, file: !83, line: 1252, column: 9)
!3537 = !DILocation(line: 1252, column: 22, scope: !3536)
!3538 = !DILocation(line: 1252, column: 9, scope: !3530)
!3539 = !DILocation(line: 1254, column: 5, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !83, line: 1252, column: 29)
!3541 = !DILocation(line: 1254, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3536, file: !83, line: 1254, column: 9)
!3543 = !DILocation(line: 1254, column: 22, scope: !3542)
!3544 = !DILocation(line: 1254, column: 9, scope: !3536)
!3545 = !DILocation(line: 1256, column: 5, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !83, line: 1254, column: 29)
!3547 = !DILocation(line: 0, scope: !3542)
!3548 = !DILocation(line: 0, scope: !3536)
!3549 = !DILocation(line: 0, scope: !3530)
!3550 = !DILocation(line: 0, scope: !3524)
!3551 = !DILocation(line: 0, scope: !3507)
!3552 = !DILocation(line: 0, scope: !3490)
!3553 = !DILocation(line: 0, scope: !3472)
!3554 = !DILocation(line: 1259, column: 11, scope: !3464)
!3555 = !DILocation(line: 1259, column: 16, scope: !3464)
!3556 = !DILocation(line: 1239, column: 7, scope: !3464)
!3557 = distinct !{!3557, !3456, !3558}
!3558 = !DILocation(line: 1240, column: 3, scope: !3457)
!3559 = !DILocation(line: 1242, column: 3, scope: !3457)
!3560 = !DILocation(line: 1261, column: 3, scope: !3459)
!3561 = distinct !DISubprogram(name: "do_send_sample", scope: !3562, file: !3562, line: 108, type: !3563, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3562 = !DIFile(filename: "/home/wslee/benchmarks/sound/lakai-0.1/lakres.c", directory: "")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!13, !212, !15, !13}
!3565 = !DILocalVariable(name: "hd1", arg: 1, scope: !3561, file: !3562, line: 108, type: !212)
!3566 = !DILocation(line: 0, scope: !3561)
!3567 = !DILocalVariable(name: "fname", arg: 2, scope: !3561, file: !3562, line: 108, type: !15)
!3568 = !DILocalVariable(name: "sample_idx", arg: 3, scope: !3561, file: !3562, line: 108, type: !13)
!3569 = !DILocalVariable(name: "hdrbuf", scope: !3561, file: !3562, line: 115, type: !1778)
!3570 = !DILocation(line: 115, column: 17, scope: !3561)
!3571 = !DILocalVariable(name: "__cil_tmp12", scope: !3561, file: !3562, line: 118, type: !58)
!3572 = !DILocation(line: 118, column: 9, scope: !3561)
!3573 = !DILocalVariable(name: "__cil_tmp13", scope: !3561, file: !3562, line: 119, type: !15)
!3574 = !DILocation(line: 119, column: 9, scope: !3561)
!3575 = !DILocalVariable(name: "__cil_tmp14", scope: !3561, file: !3562, line: 120, type: !15)
!3576 = !DILocation(line: 120, column: 9, scope: !3561)
!3577 = !DILocalVariable(name: "__cil_tmp15", scope: !3561, file: !3562, line: 121, type: !15)
!3578 = !DILocation(line: 121, column: 9, scope: !3561)
!3579 = !DILocalVariable(name: "__cil_tmp16", scope: !3561, file: !3562, line: 122, type: !15)
!3580 = !DILocation(line: 122, column: 9, scope: !3561)
!3581 = !DILocalVariable(name: "__cil_tmp17", scope: !3561, file: !3562, line: 123, type: !15)
!3582 = !DILocation(line: 123, column: 9, scope: !3561)
!3583 = !DILocation(line: 118, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !3562, line: 127, column: 3)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !3562, line: 126, column: 3)
!3586 = distinct !DILexicalBlock(scope: !3561, file: !3562, line: 125, column: 3)
!3587 = !DILocalVariable(name: "fp1", scope: !3561, file: !3562, line: 110, type: !6)
!3588 = !DILocation(line: 119, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !3562, line: 119, column: 7)
!3590 = !DILocation(line: 119, column: 7, scope: !3586)
!3591 = !DILocation(line: 121, column: 38, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !3562, line: 121, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3562, line: 120, column: 5)
!3594 = distinct !DILexicalBlock(scope: !3589, file: !3562, line: 119, column: 14)
!3595 = !DILocation(line: 121, column: 5, scope: !3592)
!3596 = !DILocation(line: 122, column: 5, scope: !3594)
!3597 = !DILocation(line: 124, column: 3, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3562, line: 125, column: 3)
!3599 = distinct !DILexicalBlock(scope: !3586, file: !3562, line: 124, column: 3)
!3600 = !DILocation(line: 125, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3599, file: !3562, line: 126, column: 3)
!3602 = !DILocalVariable(name: "tmp", scope: !3561, file: !3562, line: 116, type: !41)
!3603 = !DILocation(line: 125, column: 10, scope: !3599)
!3604 = !DILocalVariable(name: "flen", scope: !3561, file: !3562, line: 111, type: !13)
!3605 = !DILocation(line: 125, column: 3, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3599, file: !3562, line: 126, column: 3)
!3607 = !DILocation(line: 127, column: 13, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3599, file: !3562, line: 127, column: 3)
!3609 = !DILocalVariable(name: "tmp___0", scope: !3561, file: !3562, line: 117, type: !58)
!3610 = !DILocalVariable(name: "buf", scope: !3561, file: !3562, line: 113, type: !78)
!3611 = !DILocation(line: 128, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3586, file: !3562, line: 128, column: 7)
!3613 = !DILocation(line: 128, column: 7, scope: !3586)
!3614 = !DILocation(line: 130, column: 38, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3562, line: 130, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !3562, line: 129, column: 5)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !3562, line: 128, column: 14)
!3618 = !DILocation(line: 130, column: 5, scope: !3615)
!3619 = !DILocation(line: 131, column: 5, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !3562, line: 132, column: 5)
!3621 = !DILocation(line: 132, column: 5, scope: !3617)
!3622 = !DILocation(line: 135, column: 36, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 135, column: 3)
!3624 = distinct !DILexicalBlock(scope: !3586, file: !3562, line: 134, column: 3)
!3625 = !DILocation(line: 135, column: 3, scope: !3623)
!3626 = !DILocation(line: 136, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 138, column: 3)
!3628 = !DILocation(line: 137, column: 3, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 138, column: 3)
!3630 = !DILocation(line: 143, column: 3, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 139, column: 3)
!3632 = !DILocation(line: 148, column: 50, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 145, column: 3)
!3634 = !DILocation(line: 148, column: 9, scope: !3633)
!3635 = !DILocalVariable(name: "res", scope: !3561, file: !3562, line: 112, type: !13)
!3636 = !DILocation(line: 152, column: 37, scope: !3624)
!3637 = !DILocation(line: 152, column: 31, scope: !3624)
!3638 = !DILocation(line: 152, column: 48, scope: !3624)
!3639 = !DILocation(line: 152, column: 67, scope: !3624)
!3640 = !DILocation(line: 152, column: 61, scope: !3624)
!3641 = !DILocation(line: 152, column: 78, scope: !3624)
!3642 = !DILocation(line: 152, column: 59, scope: !3624)
!3643 = !DILocation(line: 152, column: 95, scope: !3624)
!3644 = !DILocation(line: 152, column: 89, scope: !3624)
!3645 = !DILocation(line: 152, column: 106, scope: !3624)
!3646 = !DILocation(line: 152, column: 87, scope: !3624)
!3647 = !DILocation(line: 152, column: 121, scope: !3624)
!3648 = !DILocation(line: 152, column: 115, scope: !3624)
!3649 = !DILocation(line: 152, column: 113, scope: !3624)
!3650 = !DILocation(line: 152, column: 12, scope: !3624)
!3651 = !DILocalVariable(name: "slocat", scope: !3561, file: !3562, line: 114, type: !74)
!3652 = !DILocation(line: 164, column: 50, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 153, column: 3)
!3654 = !DILocation(line: 164, column: 75, scope: !3653)
!3655 = !DILocation(line: 164, column: 62, scope: !3653)
!3656 = !DILocation(line: 164, column: 3, scope: !3653)
!3657 = !DILocation(line: 166, column: 36, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 166, column: 3)
!3659 = !DILocation(line: 166, column: 3, scope: !3658)
!3660 = !DILocation(line: 168, column: 3, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3624, file: !3562, line: 168, column: 3)
!3662 = !DILocation(line: 169, column: 3, scope: !3586)
!3663 = !DILocation(line: 0, scope: !3586)
!3664 = !DILocation(line: 171, column: 1, scope: !3561)
!3665 = distinct !DISubprogram(name: "do_send_program", scope: !3562, file: !3562, line: 182, type: !3563, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3666 = !DILocalVariable(name: "hd1", arg: 1, scope: !3665, file: !3562, line: 182, type: !212)
!3667 = !DILocation(line: 0, scope: !3665)
!3668 = !DILocalVariable(name: "fname", arg: 2, scope: !3665, file: !3562, line: 182, type: !15)
!3669 = !DILocalVariable(name: "prog_idx", arg: 3, scope: !3665, file: !3562, line: 182, type: !13)
!3670 = !DILocalVariable(name: "__cil_tmp11", scope: !3665, file: !3562, line: 191, type: !15)
!3671 = !DILocation(line: 191, column: 9, scope: !3665)
!3672 = !DILocalVariable(name: "__cil_tmp12", scope: !3665, file: !3562, line: 192, type: !15)
!3673 = !DILocation(line: 192, column: 9, scope: !3665)
!3674 = !DILocalVariable(name: "__cil_tmp13", scope: !3665, file: !3562, line: 193, type: !15)
!3675 = !DILocation(line: 193, column: 9, scope: !3665)
!3676 = !DILocalVariable(name: "__cil_tmp14", scope: !3665, file: !3562, line: 194, type: !15)
!3677 = !DILocation(line: 194, column: 9, scope: !3665)
!3678 = !DILocalVariable(name: "__cil_tmp15", scope: !3665, file: !3562, line: 195, type: !15)
!3679 = !DILocation(line: 195, column: 9, scope: !3665)
!3680 = !DILocalVariable(name: "__cil_tmp16", scope: !3665, file: !3562, line: 196, type: !15)
!3681 = !DILocation(line: 196, column: 9, scope: !3665)
!3682 = !DILocation(line: 188, column: 9, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3562, line: 200, column: 3)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 199, column: 3)
!3685 = distinct !DILexicalBlock(scope: !3665, file: !3562, line: 198, column: 3)
!3686 = !DILocalVariable(name: "fp1", scope: !3665, file: !3562, line: 184, type: !6)
!3687 = !DILocation(line: 189, column: 9, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 189, column: 7)
!3689 = !DILocation(line: 189, column: 7, scope: !3685)
!3690 = !DILocation(line: 191, column: 38, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3562, line: 191, column: 5)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !3562, line: 190, column: 5)
!3693 = distinct !DILexicalBlock(scope: !3688, file: !3562, line: 189, column: 14)
!3694 = !DILocation(line: 191, column: 5, scope: !3691)
!3695 = !DILocation(line: 192, column: 5, scope: !3693)
!3696 = !DILocation(line: 194, column: 3, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3562, line: 195, column: 3)
!3698 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 194, column: 3)
!3699 = !DILocation(line: 195, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3698, file: !3562, line: 196, column: 3)
!3701 = !DILocalVariable(name: "tmp", scope: !3665, file: !3562, line: 189, type: !41)
!3702 = !DILocation(line: 195, column: 10, scope: !3698)
!3703 = !DILocalVariable(name: "flen", scope: !3665, file: !3562, line: 186, type: !13)
!3704 = !DILocation(line: 195, column: 3, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3698, file: !3562, line: 196, column: 3)
!3706 = !DILocation(line: 197, column: 13, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3698, file: !3562, line: 197, column: 3)
!3708 = !DILocalVariable(name: "tmp___0", scope: !3665, file: !3562, line: 190, type: !58)
!3709 = !DILocalVariable(name: "buf", scope: !3665, file: !3562, line: 188, type: !78)
!3710 = !DILocation(line: 198, column: 9, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 198, column: 7)
!3712 = !DILocation(line: 198, column: 7, scope: !3685)
!3713 = !DILocation(line: 200, column: 38, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3562, line: 200, column: 5)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !3562, line: 199, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3711, file: !3562, line: 198, column: 14)
!3717 = !DILocation(line: 200, column: 5, scope: !3714)
!3718 = !DILocation(line: 201, column: 5, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !3562, line: 202, column: 5)
!3720 = !DILocation(line: 202, column: 5, scope: !3716)
!3721 = !DILocation(line: 205, column: 3, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !3562, line: 205, column: 3)
!3723 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 204, column: 3)
!3724 = !DILocation(line: 206, column: 3, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !3562, line: 207, column: 3)
!3726 = !DILocation(line: 208, column: 30, scope: !3723)
!3727 = !DILocation(line: 208, column: 24, scope: !3723)
!3728 = !DILocation(line: 208, column: 18, scope: !3723)
!3729 = !DILocalVariable(name: "numkeygroups", scope: !3665, file: !3562, line: 187, type: !13)
!3730 = !DILocation(line: 209, column: 36, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !3562, line: 209, column: 3)
!3732 = !DILocation(line: 209, column: 3, scope: !3731)
!3733 = !DILocation(line: 213, column: 9, scope: !3723)
!3734 = !DILocation(line: 213, column: 15, scope: !3723)
!3735 = !DILocation(line: 216, column: 3, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3723, file: !3562, line: 214, column: 3)
!3737 = !DILocalVariable(name: "i", scope: !3665, file: !3562, line: 185, type: !13)
!3738 = !DILocation(line: 221, column: 3, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3562, line: 224, column: 3)
!3740 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 223, column: 3)
!3741 = !DILocation(line: 0, scope: !3685)
!3742 = !DILocation(line: 221, column: 13, scope: !3739)
!3743 = !DILocation(line: 221, column: 14, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3562, line: 221, column: 9)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !3562, line: 221, column: 13)
!3746 = !DILocation(line: 221, column: 9, scope: !3745)
!3747 = !DILocation(line: 221, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !3562, line: 221, column: 31)
!3749 = !DILocation(line: 224, column: 38, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3562, line: 224, column: 5)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !3562, line: 223, column: 5)
!3752 = !DILocation(line: 224, column: 5, scope: !3750)
!3753 = !DILocation(line: 226, column: 38, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !3562, line: 227, column: 5)
!3755 = !DILocation(line: 226, column: 55, scope: !3754)
!3756 = !DILocation(line: 226, column: 60, scope: !3754)
!3757 = !DILocation(line: 226, column: 50, scope: !3754)
!3758 = !DILocation(line: 226, column: 5, scope: !3754)
!3759 = !DILocation(line: 228, column: 38, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3751, file: !3562, line: 228, column: 5)
!3761 = !DILocation(line: 228, column: 5, scope: !3760)
!3762 = !DILocation(line: 221, column: 7, scope: !3751)
!3763 = distinct !{!3763, !3738, !3764}
!3764 = !DILocation(line: 223, column: 3, scope: !3739)
!3765 = !DILocation(line: 225, column: 3, scope: !3739)
!3766 = !DILocation(line: 232, column: 3, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3562, line: 229, column: 3)
!3768 = distinct !DILexicalBlock(scope: !3685, file: !3562, line: 228, column: 3)
!3769 = !DILocation(line: 234, column: 3, scope: !3685)
!3770 = !DILocation(line: 236, column: 1, scope: !3665)
!3771 = distinct !DISubprogram(name: "hexprint", scope: !83, file: !83, line: 1406, type: !3772, scopeLine: 1407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !78, !13}
!3774 = !DILocalVariable(name: "buf", arg: 1, scope: !3771, file: !83, line: 1406, type: !78)
!3775 = !DILocation(line: 0, scope: !3771)
!3776 = !DILocalVariable(name: "len", arg: 2, scope: !3771, file: !83, line: 1406, type: !13)
!3777 = !DILocalVariable(name: "hexlist", scope: !3771, file: !83, line: 1408, type: !3778)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 136, elements: !3779)
!3779 = !{!3780}
!3780 = !DISubrange(count: 17)
!3781 = !DILocation(line: 1408, column: 17, scope: !3771)
!3782 = !DILocalVariable(name: "__cil_tmp5", scope: !3771, file: !83, line: 1410, type: !58)
!3783 = !DILocation(line: 1410, column: 9, scope: !3771)
!3784 = !DILocation(line: 1408, column: 3, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3771, file: !83, line: 1412, column: 3)
!3786 = !DILocation(line: 1408, column: 14, scope: !3785)
!3787 = !DILocation(line: 1408, column: 15, scope: !3785)
!3788 = !DILocalVariable(name: "i", scope: !3771, file: !83, line: 1409, type: !43)
!3789 = !DILocation(line: 1411, column: 3, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !83, line: 1413, column: 3)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !83, line: 1412, column: 3)
!3792 = !DILocation(line: 0, scope: !3785)
!3793 = !DILocation(line: 1411, column: 13, scope: !3790)
!3794 = !DILocation(line: 1411, column: 12, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 1411, column: 9)
!3796 = distinct !DILexicalBlock(scope: !3790, file: !83, line: 1411, column: 13)
!3797 = !DILocation(line: 1411, column: 20, scope: !3795)
!3798 = !DILocation(line: 1411, column: 9, scope: !3796)
!3799 = !DILocation(line: 1411, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3795, file: !83, line: 1411, column: 28)
!3801 = !DILocation(line: 1413, column: 9, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 1413, column: 9)
!3803 = !DILocation(line: 1413, column: 17, scope: !3802)
!3804 = !DILocation(line: 1413, column: 22, scope: !3802)
!3805 = !DILocation(line: 1413, column: 9, scope: !3796)
!3806 = !DILocation(line: 1416, column: 30, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 1415, column: 7)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !83, line: 1414, column: 7)
!3809 = distinct !DILexicalBlock(scope: !3802, file: !83, line: 1413, column: 28)
!3810 = !DILocation(line: 1416, column: 38, scope: !3807)
!3811 = !DILocation(line: 1416, column: 45, scope: !3807)
!3812 = !DILocation(line: 1416, column: 21, scope: !3807)
!3813 = !DILocation(line: 1416, column: 15, scope: !3807)
!3814 = !DILocation(line: 1416, column: 7, scope: !3807)
!3815 = !DILocation(line: 1417, column: 30, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 1418, column: 7)
!3817 = !DILocation(line: 1417, column: 38, scope: !3816)
!3818 = !DILocation(line: 1417, column: 44, scope: !3816)
!3819 = !DILocation(line: 1417, column: 21, scope: !3816)
!3820 = !DILocation(line: 1417, column: 15, scope: !3816)
!3821 = !DILocation(line: 1417, column: 7, scope: !3816)
!3822 = !DILocation(line: 1418, column: 30, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 1419, column: 7)
!3824 = !DILocation(line: 1418, column: 38, scope: !3823)
!3825 = !DILocation(line: 1418, column: 44, scope: !3823)
!3826 = !DILocation(line: 1418, column: 21, scope: !3823)
!3827 = !DILocation(line: 1418, column: 15, scope: !3823)
!3828 = !DILocation(line: 1418, column: 7, scope: !3823)
!3829 = !DILocation(line: 1419, column: 29, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 1420, column: 7)
!3831 = !DILocation(line: 1419, column: 37, scope: !3830)
!3832 = !DILocation(line: 1419, column: 21, scope: !3830)
!3833 = !DILocation(line: 1419, column: 15, scope: !3830)
!3834 = !DILocation(line: 1419, column: 7, scope: !3830)
!3835 = !DILocation(line: 1420, column: 7, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 1421, column: 7)
!3837 = !DILocation(line: 1423, column: 5, scope: !3809)
!3838 = !DILocation(line: 1422, column: 9, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 1422, column: 9)
!3840 = !DILocation(line: 1422, column: 17, scope: !3839)
!3841 = !DILocation(line: 1422, column: 21, scope: !3839)
!3842 = !DILocation(line: 1422, column: 9, scope: !3796)
!3843 = !DILocation(line: 1423, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !83, line: 1424, column: 7)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !83, line: 1423, column: 7)
!3846 = distinct !DILexicalBlock(scope: !3839, file: !83, line: 1422, column: 27)
!3847 = !DILocation(line: 1426, column: 5, scope: !3846)
!3848 = !DILocation(line: 1425, column: 41, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !83, line: 1428, column: 5)
!3850 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 1427, column: 5)
!3851 = !DILocation(line: 1425, column: 39, scope: !3849)
!3852 = !DILocation(line: 1425, column: 33, scope: !3849)
!3853 = !DILocation(line: 1425, column: 27, scope: !3849)
!3854 = !DILocation(line: 1425, column: 50, scope: !3849)
!3855 = !DILocation(line: 1425, column: 19, scope: !3849)
!3856 = !DILocation(line: 1425, column: 13, scope: !3849)
!3857 = !DILocation(line: 1425, column: 5, scope: !3849)
!3858 = !DILocation(line: 1426, column: 41, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3850, file: !83, line: 1427, column: 5)
!3860 = !DILocation(line: 1426, column: 39, scope: !3859)
!3861 = !DILocation(line: 1426, column: 33, scope: !3859)
!3862 = !DILocation(line: 1426, column: 27, scope: !3859)
!3863 = !DILocation(line: 1426, column: 50, scope: !3859)
!3864 = !DILocation(line: 1426, column: 19, scope: !3859)
!3865 = !DILocation(line: 1426, column: 13, scope: !3859)
!3866 = !DILocation(line: 1426, column: 5, scope: !3859)
!3867 = !DILocation(line: 1427, column: 5, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3850, file: !83, line: 1428, column: 5)
!3869 = !DILocation(line: 1429, column: 10, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 1429, column: 9)
!3871 = !DILocation(line: 1429, column: 18, scope: !3870)
!3872 = !DILocation(line: 1429, column: 23, scope: !3870)
!3873 = !DILocation(line: 1429, column: 28, scope: !3870)
!3874 = !DILocation(line: 1429, column: 9, scope: !3796)
!3875 = !DILocation(line: 1430, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !83, line: 1431, column: 7)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !83, line: 1430, column: 7)
!3878 = distinct !DILexicalBlock(scope: !3870, file: !83, line: 1429, column: 34)
!3879 = !DILocation(line: 1433, column: 5, scope: !3878)
!3880 = !DILocation(line: 1411, column: 27, scope: !3796)
!3881 = !DILocation(line: 1411, column: 35, scope: !3796)
!3882 = distinct !{!3882, !3789, !3883}
!3883 = !DILocation(line: 1412, column: 3, scope: !3790)
!3884 = !DILocation(line: 1414, column: 3, scope: !3790)
!3885 = !DILocation(line: 1432, column: 3, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !83, line: 1418, column: 3)
!3887 = distinct !DILexicalBlock(scope: !3785, file: !83, line: 1417, column: 3)
!3888 = !DILocation(line: 1433, column: 3, scope: !3785)
