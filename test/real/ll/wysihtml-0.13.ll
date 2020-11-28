; ModuleID = '/tmp/tmp.ll'
source_filename = "c/wysihtml-0.13.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.__anonunion_pthread_mutex_t_10 = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, %union.__anonunion____missing_field_name_11 }
%union.__anonunion____missing_field_name_11 = type { %struct.__pthread_internal_slist }
%struct.__pthread_internal_slist = type { %struct.__pthread_internal_slist* }
%union.__anonunion_pthread_attr_t_9 = type { i64, [32 x i8] }

@plock = global { { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } } { { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } { i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] undef, { i32, [4 x i8] } { i32 0, [4 x i8] undef } } }, align 8, !dbg !0
@mozillacmdline = global i8* null, align 8, !dbg !100
@currentfile = global i8* null, align 8, !dbg !103
@wait_sleeptime = global i32 3, align 4, !dbg !105
@last_input = common global i64 0, align 8, !dbg !114
@.str = private unnamed_addr constant [5 x i8] c"m:s:\00", align 1
@optarg = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown option -%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"wysihtmldaemon Version %s, with wait %i seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0.13\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Mozilla command-line not specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%as\00", align 1
@temporary_filename = global i8* null, align 8, !dbg !107
@.str.7 = private unnamed_addr constant [61 x i8] c"/usr/share/xml/docbook/stylesheet/ldp/html/tldp-one-page.xsl\00", align 1
@xsltstylesheet = global i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), align 8, !dbg !110
@optional = global i8* null, align 8, !dbg !112
@.str.8 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s/wysidocbookXXXXXX\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @loopexec() #0 !dbg !145 {
entry:
  %buf = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !148, metadata !DIExpression()), !dbg !149
  %call = call i64 @time(i64* null) #7, !dbg !150
  call void @llvm.dbg.value(metadata i64 %call, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 %call, metadata !156, metadata !DIExpression()), !dbg !155
  br label %while.body, !dbg !157

while.body:                                       ; preds = %if.end26, %entry
  %last_display.0 = phi i64 [ %call, %entry ], [ %last_display.2, %if.end26 ], !dbg !160
  call void @llvm.dbg.value(metadata i64 %last_display.0, metadata !156, metadata !DIExpression()), !dbg !155
  br label %while_continue___0, !dbg !161

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !161

while_continue:                                   ; preds = %while_continue___0
  %call1 = call i32 @sleep(i32 1), !dbg !162
  %call2 = call i32 @pthread_mutex_lock(%union.__anonunion_pthread_mutex_t_10* bitcast ({ { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } }* @plock to %union.__anonunion_pthread_mutex_t_10*)) #7, !dbg !166
  %call3 = call i64 @time(i64* null) #7, !dbg !168
  call void @llvm.dbg.value(metadata i64 %call3, metadata !170, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32 0, metadata !171, metadata !DIExpression()), !dbg !155
  %0 = load i64, i64* @last_input, align 8, !dbg !172
  %call4 = call double @difftime(i64 %0, i64 %last_display.0) #8, !dbg !174
  call void @llvm.dbg.value(metadata double %call4, metadata !175, metadata !DIExpression()), !dbg !155
  %cmp = fcmp ogt double %call4, 0.000000e+00, !dbg !176
  br i1 %cmp, label %if.then, label %if.end19, !dbg !178

if.then:                                          ; preds = %while_continue
  %1 = load i64, i64* @last_input, align 8, !dbg !179
  %call5 = call double @difftime(i64 %call3, i64 %1) #8, !dbg !183
  call void @llvm.dbg.value(metadata double %call5, metadata !184, metadata !DIExpression()), !dbg !155
  %2 = load i32, i32* @wait_sleeptime, align 4, !dbg !185
  %conv = sitofp i32 %2 to double, !dbg !187
  %cmp6 = fcmp ogt double %call5, %conv, !dbg !188
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !189

if.then8:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 1, metadata !171, metadata !DIExpression()), !dbg !155
  br label %if.end18, !dbg !190

if.else:                                          ; preds = %if.then
  %call9 = call double @difftime(i64 %call3, i64 %last_display.0) #8, !dbg !192
  call void @llvm.dbg.value(metadata double %call9, metadata !196, metadata !DIExpression()), !dbg !155
  %cmp10 = fcmp ogt double %call9, 2.000000e+01, !dbg !197
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !199

if.then12:                                        ; preds = %if.else
  %3 = load i64, i64* @last_input, align 8, !dbg !200
  %call13 = call double @difftime(i64 %call3, i64 %3) #8, !dbg !204
  call void @llvm.dbg.value(metadata double %call13, metadata !205, metadata !DIExpression()), !dbg !155
  %cmp14 = fcmp ogt double %call13, 0.000000e+00, !dbg !206
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !208

if.then16:                                        ; preds = %if.then12
  call void @llvm.dbg.value(metadata i32 1, metadata !171, metadata !DIExpression()), !dbg !155
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then16, %if.then12
  %doit.0 = phi i32 [ 1, %if.then16 ], [ 0, %if.then12 ], !dbg !211
  call void @llvm.dbg.value(metadata i32 %doit.0, metadata !171, metadata !DIExpression()), !dbg !155
  br label %if.end17, !dbg !212

if.end17:                                         ; preds = %if.end, %if.else
  %doit.1 = phi i32 [ %doit.0, %if.end ], [ 0, %if.else ], !dbg !211
  call void @llvm.dbg.value(metadata i32 %doit.1, metadata !171, metadata !DIExpression()), !dbg !155
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  %doit.2 = phi i32 [ 1, %if.then8 ], [ %doit.1, %if.end17 ], !dbg !213
  call void @llvm.dbg.value(metadata i32 %doit.2, metadata !171, metadata !DIExpression()), !dbg !155
  br label %if.end19, !dbg !214

if.end19:                                         ; preds = %if.end18, %while_continue
  %doit.3 = phi i32 [ %doit.2, %if.end18 ], [ 0, %while_continue ], !dbg !211
  call void @llvm.dbg.value(metadata i32 %doit.3, metadata !171, metadata !DIExpression()), !dbg !155
  %tobool = icmp ne i32 %doit.3, 0, !dbg !215
  br i1 %tobool, label %if.then20, label %if.end26, !dbg !217

if.then20:                                        ; preds = %if.end19
  %4 = load i8*, i8** @currentfile, align 8, !dbg !218
  %tobool21 = icmp ne i8* %4, null, !dbg !218
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !221

if.then22:                                        ; preds = %if.then20
  store i8* null, i8** %buf, align 8, !dbg !222
  %5 = load i8*, i8** @mozillacmdline, align 8, !dbg !225
  %6 = load i8*, i8** @currentfile, align 8, !dbg !227
  %call23 = call i32 (i8**, i8*, ...) @asprintf(i8** %buf, i8* %5, i8* %6) #7, !dbg !228
  %7 = load i8*, i8** %buf, align 8, !dbg !229
  %call24 = call i32 @system(i8* %7), !dbg !231
  %8 = load i8*, i8** %buf, align 8, !dbg !232
  call void @free(i8* %8) #7, !dbg !234
  call void @llvm.dbg.value(metadata i64 %call3, metadata !156, metadata !DIExpression()), !dbg !155
  br label %if.end25, !dbg !235

if.end25:                                         ; preds = %if.then22, %if.then20
  %last_display.1 = phi i64 [ %call3, %if.then22 ], [ %last_display.0, %if.then20 ], !dbg !160
  call void @llvm.dbg.value(metadata i64 %last_display.1, metadata !156, metadata !DIExpression()), !dbg !155
  br label %if.end26, !dbg !236

if.end26:                                         ; preds = %if.end25, %if.end19
  %last_display.2 = phi i64 [ %last_display.1, %if.end25 ], [ %last_display.0, %if.end19 ], !dbg !160
  call void @llvm.dbg.value(metadata i64 %last_display.2, metadata !156, metadata !DIExpression()), !dbg !155
  %call27 = call i32 @pthread_mutex_unlock(%union.__anonunion_pthread_mutex_t_10* bitcast ({ { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } }* @plock to %union.__anonunion_pthread_mutex_t_10*)) #7, !dbg !237
  br label %while.body, !dbg !157, !llvm.loop !240

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !242

while_break:                                      ; preds = %while_break___0
  ret i32 undef, !dbg !243
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i32 @sleep(i32) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.__anonunion_pthread_mutex_t_10*) #2

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #4

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #2

declare i32 @system(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.__anonunion_pthread_mutex_t_10*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %ac, i8** %av) #0 !dbg !244 {
entry:
  %t = alloca i64, align 8
  %instr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %ac, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8** %av, metadata !249, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i64* %t, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i8** %instr, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata !4, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata !4, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata !4, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata !4, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata !4, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata !4, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata !4, metadata !266, metadata !DIExpression()), !dbg !267
  br label %while.body, !dbg !268

while.body:                                       ; preds = %switch_break, %entry
  br label %while_continue___1, !dbg !272

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !272

while_continue:                                   ; preds = %while_continue___1
  %call = call i32 @getopt(i32 %ac, i8** %av, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !273
  call void @llvm.dbg.value(metadata i32 %call, metadata !277, metadata !DIExpression()), !dbg !248
  %cmp = icmp ne i32 -1, %call, !dbg !278
  br i1 %cmp, label %if.end, label %if.then, !dbg !280

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !281

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 109, !dbg !283
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !286

if.then2:                                         ; preds = %if.end
  br label %case_109, !dbg !287

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 115, !dbg !289
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !291

if.then5:                                         ; preds = %if.end3
  br label %case_115, !dbg !292

if.end6:                                          ; preds = %if.end3
  br label %switch_default, !dbg !294

case_109:                                         ; preds = %if.then2
  %0 = load i8*, i8** @optarg, align 8, !dbg !295
  %call7 = call noalias i8* @strdup(i8* %0) #7, !dbg !298
  call void @llvm.dbg.value(metadata i8* %call7, metadata !299, metadata !DIExpression()), !dbg !248
  store i8* %call7, i8** @mozillacmdline, align 8, !dbg !300
  br label %switch_break, !dbg !301

case_115:                                         ; preds = %if.then5
  %1 = load i8*, i8** @optarg, align 8, !dbg !302
  %call8 = call i32 @atoi(i8* %1) #9, !dbg !305
  store i32 %call8, i32* @wait_sleeptime, align 4, !dbg !306
  br label %switch_break, !dbg !307

switch_default:                                   ; preds = %if.end6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !308
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %call), !dbg !311
  call void @exit(i32 1) #10, !dbg !312
  unreachable, !dbg !312

switch_break:                                     ; preds = %case_115, %case_109
  br label %while.body, !dbg !268, !llvm.loop !314

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !316

while_break:                                      ; preds = %while_break___1, %if.then
  %3 = load i32, i32* @wait_sleeptime, align 4, !dbg !317
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %3), !dbg !320
  %4 = load i8*, i8** @mozillacmdline, align 8, !dbg !321
  %tobool = icmp ne i8* %4, null, !dbg !321
  br i1 %tobool, label %if.end13, label %if.then11, !dbg !323

if.then11:                                        ; preds = %while_break
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !324
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)), !dbg !328
  call void @exit(i32 1) #10, !dbg !329
  unreachable, !dbg !329

if.end13:                                         ; preds = %while_break
  %call14 = call i32 @pthread_create(i64* %t, %union.__anonunion_pthread_attr_t_9* null, i8* (i8*)* bitcast (i32 ()* @loopexec to i8* (i8*)*), i8* null) #7, !dbg !331
  br label %while.body15, !dbg !334

while.body15:                                     ; preds = %if.end21, %if.end13
  br label %while_continue___2, !dbg !337

while_continue___2:                               ; preds = %while.body15
  br label %while_continue___0, !dbg !337

while_continue___0:                               ; preds = %while_continue___2
  store i8* null, i8** %instr, align 8, !dbg !338
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !341
  %call17 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %instr), !dbg !343
  %call18 = call i32 @pthread_mutex_lock(%union.__anonunion_pthread_mutex_t_10* bitcast ({ { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } }* @plock to %union.__anonunion_pthread_mutex_t_10*)) #7, !dbg !345
  %6 = load i8*, i8** @currentfile, align 8, !dbg !347
  %tobool19 = icmp ne i8* %6, null, !dbg !347
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !349

if.then20:                                        ; preds = %while_continue___0
  %7 = load i8*, i8** @currentfile, align 8, !dbg !350
  call void @free(i8* %7) #7, !dbg !354
  br label %if.end21, !dbg !355

if.end21:                                         ; preds = %if.then20, %while_continue___0
  %8 = load i8*, i8** %instr, align 8, !dbg !356
  store i8* %8, i8** @currentfile, align 8, !dbg !358
  %call22 = call i64 @time(i64* null) #7, !dbg !359
  store i64 %call22, i64* @last_input, align 8, !dbg !361
  %call23 = call i32 @pthread_mutex_unlock(%union.__anonunion_pthread_mutex_t_10* bitcast ({ { i32, i32, i32, i32, i32, [4 x i8], { i32, [4 x i8] } } }* @plock to %union.__anonunion_pthread_mutex_t_10*)) #7, !dbg !362
  br label %while.body15, !dbg !334, !llvm.loop !364

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !366

while_break___0:                                  ; preds = %while_break___2
  ret i32 0, !dbg !367
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.__anonunion_pthread_attr_t_9*, i8* (i8*)*, i8*) #2

declare i32 @scanf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @new_temporary_filename() #0 !dbg !368 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata !4, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata !4, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i8*, i8** @temporary_filename, align 8, !dbg !377
  %tobool = icmp ne i8* %0, null, !dbg !377
  br i1 %tobool, label %if.then, label %if.end5, !dbg !380

if.then:                                          ; preds = %entry
  %call = call i32 @fork() #7, !dbg !381
  call void @llvm.dbg.value(metadata i32 %call, metadata !385, metadata !DIExpression()), !dbg !387
  %tobool1 = icmp ne i32 %call, 0, !dbg !388
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !390

if.then2:                                         ; preds = %if.then
  %call3 = call i32 @sleep(i32 10), !dbg !391
  %1 = load i8*, i8** @temporary_filename, align 8, !dbg !395
  %call4 = call i32 @unlink(i8* %1) #7, !dbg !397
  call void @exit(i32 0) #10, !dbg !398
  unreachable, !dbg !398

if.end:                                           ; preds = %if.then
  %2 = load i8*, i8** @temporary_filename, align 8, !dbg !400
  call void @free(i8* %2) #7, !dbg !403
  store i8* null, i8** @temporary_filename, align 8, !dbg !404
  br label %if.end5, !dbg !405

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !406
  call void @llvm.dbg.value(metadata i8* %call6, metadata !409, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i8* %call6, metadata !410, metadata !DIExpression()), !dbg !387
  %tobool7 = icmp ne i8* %call6, null, !dbg !411
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !413

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), metadata !410, metadata !DIExpression()), !dbg !387
  br label %if.end9, !dbg !414

if.end9:                                          ; preds = %if.then8, %if.end5
  %tmp___1.0 = phi i8* [ %call6, %if.end5 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %if.then8 ], !dbg !416
  call void @llvm.dbg.value(metadata i8* %tmp___1.0, metadata !410, metadata !DIExpression()), !dbg !387
  %call10 = call i32 (i8**, i8*, ...) @asprintf(i8** @temporary_filename, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* %tmp___1.0) #7, !dbg !417
  %3 = load i8*, i8** @temporary_filename, align 8, !dbg !420
  %call11 = call i32 @mkstemp(i8* %3), !dbg !422
  call void @llvm.dbg.value(metadata i32 %call11, metadata !423, metadata !DIExpression()), !dbg !387
  %call12 = call i32 @close(i32 %call11), !dbg !424
  %call13 = call i32 @waitpid(i32 -1, i32* null, i32 1), !dbg !426
  ret void, !dbg !428
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i32 @mkstemp(i8*) #3

declare i32 @close(i32) #3

declare i32 @waitpid(i32, i32*, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!139, !140, !141, !142, !143}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "plock", scope: !2, file: !102, line: 30, type: !116, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !99, nameTableKind: GNU)
!3 = !DIFile(filename: "c/wysihtml-0.13.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !12, !13, !14, !16, !17, !19, !21, !81, !85, !95, !98}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !8, line: 76, baseType: !9)
!8 = !DIFile(filename: "/usr/include/time.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 149, baseType: !11)
!10 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!11 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !23, line: 49, baseType: !24)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !25, line: 271, size: 1728, elements: !26)
!25 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!26 = !{!27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !48, !49, !50, !51, !53, !55, !57, !61, !64, !68, !69, !70, !71, !72, !76, !77}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !25, line: 272, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !24, file: !25, line: 273, baseType: !14, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !24, file: !25, line: 274, baseType: !14, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !24, file: !25, line: 275, baseType: !14, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !24, file: !25, line: 276, baseType: !14, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !24, file: !25, line: 277, baseType: !14, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !24, file: !25, line: 278, baseType: !14, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !24, file: !25, line: 279, baseType: !14, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !24, file: !25, line: 280, baseType: !14, size: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !24, file: !25, line: 281, baseType: !14, size: 64, offset: 576)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !24, file: !25, line: 282, baseType: !14, size: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !24, file: !25, line: 283, baseType: !14, size: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !24, file: !25, line: 284, baseType: !41, size: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !25, line: 186, size: 192, elements: !43)
!43 = !{!44, !45, !47}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !42, file: !25, line: 187, baseType: !41, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !42, file: !25, line: 188, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !42, file: !25, line: 189, baseType: !28, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !24, file: !25, line: 285, baseType: !46, size: 64, offset: 832)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !24, file: !25, line: 286, baseType: !28, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !25, line: 287, baseType: !28, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !24, file: !25, line: 288, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 141, baseType: !11)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !24, file: !25, line: 289, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !24, file: !25, line: 290, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !24, file: !25, line: 291, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !25, line: 292, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !25, line: 180, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !25, line: 293, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 142, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !10, line: 56, baseType: !67)
!67 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !24, file: !25, line: 294, baseType: !12, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !24, file: !25, line: 295, baseType: !12, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !24, file: !25, line: 296, baseType: !12, size: 64, offset: 1344)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !24, file: !25, line: 297, baseType: !12, size: 64, offset: 1408)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !24, file: !25, line: 298, baseType: !73, size: 32, offset: 1472)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 211, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !24, file: !25, line: 299, baseType: !28, size: 32, offset: 1504)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !24, file: !25, line: 300, baseType: !78, size: 192, offset: 1536)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 24)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !83, line: 50, baseType: !84)
!83 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!84 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !83, line: 53, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_pthread_attr_t_9", file: !83, line: 53, size: 320, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !88, file: !83, line: 54, baseType: !91, size: 288)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 288, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 36)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !88, file: !83, line: 55, baseType: !11, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!12, !12}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!99 = !{!0, !100, !103, !105, !107, !110, !112, !114}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "mozillacmdline", scope: !2, file: !102, line: 31, type: !17, isLocal: false, isDefinition: true)
!102 = !DIFile(filename: "/home/wslee/benchmarks/textformat/wysihtml-0.13/src/wysihtmldaemon.c", directory: "")
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "currentfile", scope: !2, file: !102, line: 32, type: !14, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "wait_sleeptime", scope: !2, file: !102, line: 34, type: !28, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "temporary_filename", scope: !2, file: !109, line: 41, type: !14, isLocal: false, isDefinition: true)
!109 = !DIFile(filename: "/home/wslee/benchmarks/textformat/wysihtml-0.13/src/wysidocbookdaemon.c", directory: "")
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "xsltstylesheet", scope: !2, file: !109, line: 44, type: !14, isLocal: false, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "optional", scope: !2, file: !109, line: 47, type: !14, isLocal: false, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "last_input", scope: !2, file: !102, line: 33, type: !7, isLocal: false, isDefinition: true)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !83, line: 76, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_pthread_mutex_t_10", file: !83, line: 76, size: 256, elements: !118)
!118 = !{!119, !137, !138}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !117, file: !83, line: 77, baseType: !120, size: 256)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !83, line: 76, size: 256, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !120, file: !83, line: 77, baseType: !28, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !120, file: !83, line: 78, baseType: !75, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !120, file: !83, line: 79, baseType: !28, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !120, file: !83, line: 80, baseType: !28, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !120, file: !83, line: 81, baseType: !75, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField1", scope: !120, file: !83, line: 82, baseType: !128, size: 64, offset: 192)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_11", file: !83, line: 76, size: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !128, file: !83, line: 77, baseType: !28, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !128, file: !83, line: 78, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_slist_t", file: !83, line: 67, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_slist", file: !83, line: 67, size: 64, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !133, file: !83, line: 68, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !117, file: !83, line: 78, baseType: !78, size: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !117, file: !83, line: 79, baseType: !11, size: 64)
!139 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!140 = !{i32 2, !"Dwarf Version", i32 4}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 7, !"PIC Level", i32 2}
!144 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!145 = distinct !DISubprogram(name: "loopexec", scope: !102, file: !102, line: 39, type: !146, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!146 = !DISubroutineType(types: !147)
!147 = !{!28}
!148 = !DILocalVariable(name: "buf", scope: !145, file: !102, line: 49, type: !14)
!149 = !DILocation(line: 49, column: 9, scope: !145)
!150 = !DILocation(line: 41, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !102, line: 53, column: 3)
!152 = distinct !DILexicalBlock(scope: !153, file: !102, line: 52, column: 3)
!153 = distinct !DILexicalBlock(scope: !145, file: !102, line: 51, column: 3)
!154 = !DILocalVariable(name: "tmp", scope: !145, file: !102, line: 42, type: !7)
!155 = !DILocation(line: 0, scope: !145)
!156 = !DILocalVariable(name: "last_display", scope: !145, file: !102, line: 41, type: !7)
!157 = !DILocation(line: 46, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !102, line: 44, column: 3)
!159 = distinct !DILexicalBlock(scope: !153, file: !102, line: 43, column: 3)
!160 = !DILocation(line: 0, scope: !153)
!161 = !DILocation(line: 46, column: 13, scope: !158)
!162 = !DILocation(line: 48, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !102, line: 50, column: 5)
!164 = distinct !DILexicalBlock(scope: !165, file: !102, line: 49, column: 5)
!165 = distinct !DILexicalBlock(scope: !158, file: !102, line: 46, column: 13)
!166 = !DILocation(line: 49, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !102, line: 50, column: 5)
!168 = !DILocation(line: 51, column: 20, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !102, line: 51, column: 5)
!170 = !DILocalVariable(name: "current_time", scope: !145, file: !102, line: 43, type: !7)
!171 = !DILocalVariable(name: "doit", scope: !145, file: !102, line: 44, type: !28)
!172 = !DILocation(line: 55, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !102, line: 53, column: 5)
!174 = !DILocation(line: 55, column: 15, scope: !173)
!175 = !DILocalVariable(name: "tmp___3", scope: !145, file: !102, line: 48, type: !13)
!176 = !DILocation(line: 55, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !102, line: 55, column: 9)
!178 = !DILocation(line: 55, column: 9, scope: !165)
!179 = !DILocation(line: 57, column: 40, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !102, line: 57, column: 7)
!181 = distinct !DILexicalBlock(scope: !182, file: !102, line: 56, column: 7)
!182 = distinct !DILexicalBlock(scope: !177, file: !102, line: 55, column: 31)
!183 = !DILocation(line: 57, column: 17, scope: !180)
!184 = !DILocalVariable(name: "tmp___2", scope: !145, file: !102, line: 47, type: !13)
!185 = !DILocation(line: 57, column: 30, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !102, line: 57, column: 11)
!187 = !DILocation(line: 57, column: 21, scope: !186)
!188 = !DILocation(line: 57, column: 19, scope: !186)
!189 = !DILocation(line: 57, column: 11, scope: !182)
!190 = !DILocation(line: 60, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !102, line: 57, column: 46)
!192 = !DILocation(line: 61, column: 19, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !102, line: 62, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !102, line: 61, column: 9)
!195 = distinct !DILexicalBlock(scope: !186, file: !102, line: 60, column: 14)
!196 = !DILocalVariable(name: "tmp___0", scope: !145, file: !102, line: 45, type: !13)
!197 = !DILocation(line: 61, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !102, line: 61, column: 13)
!199 = !DILocation(line: 61, column: 13, scope: !195)
!200 = !DILocation(line: 61, column: 44, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !102, line: 63, column: 11)
!202 = distinct !DILexicalBlock(scope: !203, file: !102, line: 62, column: 11)
!203 = distinct !DILexicalBlock(scope: !198, file: !102, line: 61, column: 36)
!204 = !DILocation(line: 61, column: 21, scope: !201)
!205 = !DILocalVariable(name: "tmp___1", scope: !145, file: !102, line: 46, type: !13)
!206 = !DILocation(line: 61, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !102, line: 61, column: 15)
!208 = !DILocation(line: 61, column: 15, scope: !203)
!209 = !DILocation(line: 65, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !102, line: 61, column: 37)
!211 = !DILocation(line: 0, scope: !165)
!212 = !DILocation(line: 66, column: 9, scope: !203)
!213 = !DILocation(line: 0, scope: !186)
!214 = !DILocation(line: 68, column: 5, scope: !182)
!215 = !DILocation(line: 68, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !165, file: !102, line: 68, column: 9)
!217 = !DILocation(line: 68, column: 9, scope: !165)
!218 = !DILocation(line: 70, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !102, line: 70, column: 11)
!220 = distinct !DILexicalBlock(scope: !216, file: !102, line: 68, column: 15)
!221 = !DILocation(line: 70, column: 11, scope: !220)
!222 = !DILocation(line: 72, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !102, line: 71, column: 9)
!224 = distinct !DILexicalBlock(scope: !219, file: !102, line: 70, column: 24)
!225 = !DILocation(line: 73, column: 86, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !102, line: 73, column: 9)
!227 = !DILocation(line: 74, column: 18, scope: !226)
!228 = !DILocation(line: 73, column: 9, scope: !226)
!229 = !DILocation(line: 75, column: 32, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !102, line: 76, column: 9)
!231 = !DILocation(line: 75, column: 9, scope: !230)
!232 = !DILocation(line: 76, column: 22, scope: !233)
!233 = distinct !DILexicalBlock(scope: !223, file: !102, line: 77, column: 9)
!234 = !DILocation(line: 76, column: 9, scope: !233)
!235 = !DILocation(line: 79, column: 7, scope: !224)
!236 = !DILocation(line: 80, column: 5, scope: !220)
!237 = !DILocation(line: 80, column: 5, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !102, line: 82, column: 5)
!239 = distinct !DILexicalBlock(scope: !165, file: !102, line: 81, column: 5)
!240 = distinct !{!240, !157, !241}
!241 = !DILocation(line: 83, column: 3, scope: !158)
!242 = !DILocation(line: 85, column: 3, scope: !158)
!243 = !DILocation(line: 89, column: 1, scope: !145)
!244 = distinct !DISubprogram(name: "main", scope: !102, file: !102, line: 85, type: !245, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!245 = !DISubroutineType(types: !246)
!246 = !{!28, !28, !16}
!247 = !DILocalVariable(name: "ac", arg: 1, scope: !244, file: !102, line: 85, type: !28)
!248 = !DILocation(line: 0, scope: !244)
!249 = !DILocalVariable(name: "av", arg: 2, scope: !244, file: !102, line: 85, type: !16)
!250 = !DILocalVariable(name: "t", scope: !244, file: !102, line: 87, type: !82)
!251 = !DILocation(line: 87, column: 13, scope: !244)
!252 = !DILocalVariable(name: "instr", scope: !244, file: !102, line: 90, type: !14)
!253 = !DILocation(line: 90, column: 9, scope: !244)
!254 = !DILocalVariable(name: "__cil_tmp7", scope: !244, file: !102, line: 91, type: !14)
!255 = !DILocation(line: 91, column: 9, scope: !244)
!256 = !DILocalVariable(name: "__cil_tmp8", scope: !244, file: !102, line: 92, type: !14)
!257 = !DILocation(line: 92, column: 9, scope: !244)
!258 = !DILocalVariable(name: "__cil_tmp9", scope: !244, file: !102, line: 93, type: !14)
!259 = !DILocation(line: 93, column: 9, scope: !244)
!260 = !DILocalVariable(name: "__cil_tmp10", scope: !244, file: !102, line: 94, type: !14)
!261 = !DILocation(line: 94, column: 9, scope: !244)
!262 = !DILocalVariable(name: "__cil_tmp11", scope: !244, file: !102, line: 95, type: !14)
!263 = !DILocation(line: 95, column: 9, scope: !244)
!264 = !DILocalVariable(name: "__cil_tmp12", scope: !244, file: !102, line: 96, type: !14)
!265 = !DILocation(line: 96, column: 9, scope: !244)
!266 = !DILocalVariable(name: "__cil_tmp13", scope: !244, file: !102, line: 97, type: !14)
!267 = !DILocation(line: 97, column: 9, scope: !244)
!268 = !DILocation(line: 91, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !102, line: 101, column: 3)
!270 = distinct !DILexicalBlock(scope: !271, file: !102, line: 100, column: 3)
!271 = distinct !DILexicalBlock(scope: !244, file: !102, line: 99, column: 3)
!272 = !DILocation(line: 91, column: 13, scope: !269)
!273 = !DILocation(line: 91, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !102, line: 95, column: 5)
!275 = distinct !DILexicalBlock(scope: !276, file: !102, line: 94, column: 5)
!276 = distinct !DILexicalBlock(scope: !269, file: !102, line: 91, column: 13)
!277 = !DILocalVariable(name: "opt", scope: !244, file: !102, line: 88, type: !28)
!278 = !DILocation(line: 91, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !102, line: 91, column: 9)
!280 = !DILocation(line: 91, column: 9, scope: !276)
!281 = !DILocation(line: 91, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !102, line: 91, column: 24)
!283 = !DILocation(line: 95, column: 13, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !102, line: 95, column: 9)
!285 = distinct !DILexicalBlock(scope: !276, file: !102, line: 93, column: 5)
!286 = !DILocation(line: 95, column: 9, scope: !285)
!287 = !DILocation(line: 95, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !102, line: 95, column: 21)
!289 = !DILocation(line: 98, column: 13, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !102, line: 98, column: 9)
!291 = !DILocation(line: 98, column: 9, scope: !285)
!292 = !DILocation(line: 98, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !102, line: 98, column: 21)
!294 = !DILocation(line: 101, column: 5, scope: !285)
!295 = !DILocation(line: 96, column: 34, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !102, line: 104, column: 5)
!297 = distinct !DILexicalBlock(scope: !285, file: !102, line: 103, column: 5)
!298 = !DILocation(line: 96, column: 11, scope: !296)
!299 = !DILocalVariable(name: "tmp", scope: !244, file: !102, line: 89, type: !14)
!300 = !DILocation(line: 96, column: 20, scope: !297)
!301 = !DILocation(line: 97, column: 5, scope: !285)
!302 = !DILocation(line: 99, column: 43, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !102, line: 100, column: 5)
!304 = distinct !DILexicalBlock(scope: !285, file: !102, line: 99, column: 5)
!305 = !DILocation(line: 99, column: 22, scope: !303)
!306 = !DILocation(line: 99, column: 20, scope: !303)
!307 = !DILocation(line: 100, column: 5, scope: !285)
!308 = !DILocation(line: 102, column: 38, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !102, line: 103, column: 5)
!310 = distinct !DILexicalBlock(scope: !285, file: !102, line: 102, column: 5)
!311 = !DILocation(line: 102, column: 5, scope: !309)
!312 = !DILocation(line: 103, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !102, line: 105, column: 5)
!314 = distinct !{!314, !268, !315}
!315 = !DILocation(line: 108, column: 3, scope: !269)
!316 = !DILocation(line: 110, column: 3, scope: !269)
!317 = !DILocation(line: 108, column: 18, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !102, line: 114, column: 3)
!319 = distinct !DILexicalBlock(scope: !271, file: !102, line: 113, column: 3)
!320 = !DILocation(line: 107, column: 3, scope: !318)
!321 = !DILocation(line: 110, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !271, file: !102, line: 110, column: 7)
!323 = !DILocation(line: 110, column: 7, scope: !271)
!324 = !DILocation(line: 112, column: 38, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !102, line: 112, column: 5)
!326 = distinct !DILexicalBlock(scope: !327, file: !102, line: 111, column: 5)
!327 = distinct !DILexicalBlock(scope: !322, file: !102, line: 110, column: 25)
!328 = !DILocation(line: 112, column: 5, scope: !325)
!329 = !DILocation(line: 113, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !102, line: 114, column: 5)
!331 = !DILocation(line: 116, column: 3, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !102, line: 118, column: 3)
!333 = distinct !DILexicalBlock(scope: !271, file: !102, line: 117, column: 3)
!334 = !DILocation(line: 117, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !102, line: 121, column: 3)
!336 = distinct !DILexicalBlock(scope: !271, file: !102, line: 120, column: 3)
!337 = !DILocation(line: 117, column: 13, scope: !335)
!338 = !DILocation(line: 119, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !102, line: 120, column: 5)
!340 = distinct !DILexicalBlock(scope: !335, file: !102, line: 117, column: 13)
!341 = !DILocation(line: 120, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !102, line: 120, column: 5)
!343 = !DILocation(line: 121, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !102, line: 122, column: 5)
!345 = !DILocation(line: 122, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !102, line: 123, column: 5)
!347 = !DILocation(line: 123, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !340, file: !102, line: 123, column: 9)
!349 = !DILocation(line: 123, column: 9, scope: !340)
!350 = !DILocation(line: 123, column: 20, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !102, line: 125, column: 7)
!352 = distinct !DILexicalBlock(scope: !353, file: !102, line: 124, column: 7)
!353 = distinct !DILexicalBlock(scope: !348, file: !102, line: 123, column: 22)
!354 = !DILocation(line: 123, column: 7, scope: !351)
!355 = !DILocation(line: 126, column: 5, scope: !353)
!356 = !DILocation(line: 124, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !340, file: !102, line: 127, column: 5)
!358 = !DILocation(line: 124, column: 17, scope: !357)
!359 = !DILocation(line: 125, column: 18, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !102, line: 125, column: 5)
!361 = !DILocation(line: 125, column: 16, scope: !360)
!362 = !DILocation(line: 126, column: 5, scope: !363)
!363 = distinct !DILexicalBlock(scope: !357, file: !102, line: 127, column: 5)
!364 = distinct !{!364, !334, !365}
!365 = !DILocation(line: 129, column: 3, scope: !335)
!366 = !DILocation(line: 131, column: 3, scope: !335)
!367 = !DILocation(line: 135, column: 1, scope: !244)
!368 = distinct !DISubprogram(name: "new_temporary_filename", scope: !109, file: !109, line: 64, type: !369, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null}
!371 = !DILocalVariable(name: "__cil_tmp6", scope: !368, file: !109, line: 70, type: !14)
!372 = !DILocation(line: 70, column: 9, scope: !368)
!373 = !DILocalVariable(name: "__cil_tmp7", scope: !368, file: !109, line: 71, type: !14)
!374 = !DILocation(line: 71, column: 9, scope: !368)
!375 = !DILocalVariable(name: "__cil_tmp8", scope: !368, file: !109, line: 72, type: !14)
!376 = !DILocation(line: 72, column: 9, scope: !368)
!377 = !DILocation(line: 67, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !109, line: 67, column: 7)
!379 = distinct !DILexicalBlock(scope: !368, file: !109, line: 74, column: 3)
!380 = !DILocation(line: 67, column: 7, scope: !379)
!381 = !DILocation(line: 69, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !109, line: 69, column: 5)
!383 = distinct !DILexicalBlock(scope: !384, file: !109, line: 68, column: 5)
!384 = distinct !DILexicalBlock(scope: !378, file: !109, line: 67, column: 27)
!385 = !DILocalVariable(name: "tmp", scope: !368, file: !109, line: 67, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !10, line: 143, baseType: !28)
!387 = !DILocation(line: 0, scope: !368)
!388 = !DILocation(line: 69, column: 11, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !109, line: 69, column: 9)
!390 = !DILocation(line: 69, column: 9, scope: !384)
!391 = !DILocation(line: 71, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !109, line: 71, column: 7)
!393 = distinct !DILexicalBlock(scope: !394, file: !109, line: 70, column: 7)
!394 = distinct !DILexicalBlock(scope: !389, file: !109, line: 69, column: 16)
!395 = !DILocation(line: 82, column: 30, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !109, line: 73, column: 7)
!397 = !DILocation(line: 82, column: 7, scope: !396)
!398 = !DILocation(line: 83, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !109, line: 84, column: 7)
!400 = !DILocation(line: 85, column: 18, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !109, line: 88, column: 5)
!402 = distinct !DILexicalBlock(scope: !384, file: !109, line: 87, column: 5)
!403 = !DILocation(line: 85, column: 5, scope: !401)
!404 = !DILocation(line: 86, column: 24, scope: !402)
!405 = !DILocation(line: 88, column: 3, scope: !384)
!406 = !DILocation(line: 89, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !109, line: 90, column: 3)
!408 = distinct !DILexicalBlock(scope: !379, file: !109, line: 89, column: 3)
!409 = !DILocalVariable(name: "tmp___2", scope: !368, file: !109, line: 69, type: !14)
!410 = !DILocalVariable(name: "tmp___1", scope: !368, file: !109, line: 68, type: !17)
!411 = !DILocation(line: 89, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !379, file: !109, line: 89, column: 7)
!413 = !DILocation(line: 89, column: 7, scope: !379)
!414 = !DILocation(line: 90, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !109, line: 89, column: 18)
!416 = !DILocation(line: 0, scope: !379)
!417 = !DILocation(line: 89, column: 3, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !109, line: 92, column: 3)
!419 = distinct !DILexicalBlock(scope: !379, file: !109, line: 91, column: 3)
!420 = !DILocation(line: 91, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !109, line: 92, column: 3)
!422 = !DILocation(line: 91, column: 8, scope: !421)
!423 = !DILocalVariable(name: "fd", scope: !368, file: !109, line: 66, type: !28)
!424 = !DILocation(line: 92, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !419, file: !109, line: 93, column: 3)
!426 = !DILocation(line: 94, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !109, line: 94, column: 3)
!428 = !DILocation(line: 95, column: 3, scope: !379)
