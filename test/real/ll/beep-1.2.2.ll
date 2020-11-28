; ModuleID = '/tmp/tmp.ll'
source_filename = "c/beep-1.2.2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.beep_parms_t = type { float, i32, i32, i32, i32, i32, %struct.beep_parms_t* }
%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [129 x i8] c"Copyright (C) Johnathan Nightingale, 2002.  Use and Distribution subject to GPL.  For information: http://www.gnu.org/copyleft/.\00", align 1
@copyright = global i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@console_fd = global i32 -1, align 4, !dbg !101
@.str.1 = private unnamed_addr constant [75 x i8] c"Usage:\0A%s [-f freq] [-l length] [-r reps] [-d delay] [-D delay] [-s] [-c]\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s [Options...] [-n] [--new] [Options...] ... \0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s [-h] [--help]\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s [-v] [-V] [--version]\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"f:l:r:d:D:schvVn\00", align 1
@optarg = external global i8*, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"beep-1.2.2\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [42 x i8] c"Could not open /dev/console for writing.\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @handle_signal(i32 %signum) #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i32 %signum, metadata !112, metadata !DIExpression()), !dbg !113
  %cmp = icmp eq i32 %signum, 2, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %entry
  br label %case_2, !dbg !119

if.end:                                           ; preds = %entry
  br label %switch_break, !dbg !121

case_2:                                           ; preds = %if.then
  %0 = load i32, i32* @console_fd, align 4, !dbg !122
  %cmp1 = icmp sge i32 %0, 0, !dbg !124
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !125

if.then2:                                         ; preds = %case_2
  %1 = load i32, i32* @console_fd, align 4, !dbg !126
  %call = call i32 (i32, i64, ...) @ioctl(i32 %1, i64 19247, i32 0) #5, !dbg !130
  %2 = load i32, i32* @console_fd, align 4, !dbg !131
  %call3 = call i32 @close(i32 %2), !dbg !133
  call void @exit(i32 %signum) #6, !dbg !134
  unreachable, !dbg !134

if.else:                                          ; preds = %case_2
  call void @exit(i32 %signum) #6, !dbg !136
  unreachable, !dbg !136

switch_break:                                     ; preds = %if.end
  ret void, !dbg !140
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

declare i32 @close(i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @usage_bail(i8* %executable_name) #0 !dbg !141 {
entry:
  call void @llvm.dbg.value(metadata i8* %executable_name, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata !4, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata !4, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata !4, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata !4, metadata !152, metadata !DIExpression()), !dbg !153
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* %executable_name), !dbg !154
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i8* %executable_name), !dbg !158
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %executable_name), !dbg !160
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %executable_name), !dbg !162
  call void @exit(i32 1) #6, !dbg !164
  unreachable, !dbg !164

return:                                           ; No predecessors!
  ret void, !dbg !166
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @parse_command_line(i32 %argc, i8** %argv, %struct.beep_parms_t* %result) #0 !dbg !167 {
entry:
  %opt_list = alloca [4 x %struct.option], align 16
  %argval = alloca i32, align 4
  %argfreq = alloca float, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8** %argv, metadata !173, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %result, metadata !174, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [4 x %struct.option]* %opt_list, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %argval, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata float* %argfreq, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata !4, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata !4, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata !4, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata !4, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata !4, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata !4, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata !4, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata !4, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata !4, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata !4, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata !4, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata !4, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata !4, metadata !208, metadata !DIExpression()), !dbg !209
  %arrayidx = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 0, !dbg !210
  %name = getelementptr inbounds %struct.option, %struct.option* %arrayidx, i32 0, i32 0, !dbg !212
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %name, align 16, !dbg !213
  %arrayidx1 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 0, !dbg !210
  %has_arg = getelementptr inbounds %struct.option, %struct.option* %arrayidx1, i32 0, i32 1, !dbg !212
  store i32 0, i32* %has_arg, align 8, !dbg !214
  %arrayidx2 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 0, !dbg !210
  %flag = getelementptr inbounds %struct.option, %struct.option* %arrayidx2, i32 0, i32 2, !dbg !212
  store i32* null, i32** %flag, align 16, !dbg !213
  %arrayidx3 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 0, !dbg !210
  %val = getelementptr inbounds %struct.option, %struct.option* %arrayidx3, i32 0, i32 3, !dbg !212
  store i32 104, i32* %val, align 8, !dbg !215
  %arrayidx4 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 1, !dbg !210
  %name5 = getelementptr inbounds %struct.option, %struct.option* %arrayidx4, i32 0, i32 0, !dbg !212
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %name5, align 16, !dbg !213
  %arrayidx6 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 1, !dbg !210
  %has_arg7 = getelementptr inbounds %struct.option, %struct.option* %arrayidx6, i32 0, i32 1, !dbg !212
  store i32 0, i32* %has_arg7, align 8, !dbg !214
  %arrayidx8 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 1, !dbg !210
  %flag9 = getelementptr inbounds %struct.option, %struct.option* %arrayidx8, i32 0, i32 2, !dbg !212
  store i32* null, i32** %flag9, align 16, !dbg !213
  %arrayidx10 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 1, !dbg !210
  %val11 = getelementptr inbounds %struct.option, %struct.option* %arrayidx10, i32 0, i32 3, !dbg !212
  store i32 86, i32* %val11, align 8, !dbg !215
  %arrayidx12 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 2, !dbg !210
  %name13 = getelementptr inbounds %struct.option, %struct.option* %arrayidx12, i32 0, i32 0, !dbg !212
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %name13, align 16, !dbg !213
  %arrayidx14 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 2, !dbg !210
  %has_arg15 = getelementptr inbounds %struct.option, %struct.option* %arrayidx14, i32 0, i32 1, !dbg !212
  store i32 0, i32* %has_arg15, align 8, !dbg !214
  %arrayidx16 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 2, !dbg !210
  %flag17 = getelementptr inbounds %struct.option, %struct.option* %arrayidx16, i32 0, i32 2, !dbg !212
  store i32* null, i32** %flag17, align 16, !dbg !213
  %arrayidx18 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 2, !dbg !210
  %val19 = getelementptr inbounds %struct.option, %struct.option* %arrayidx18, i32 0, i32 3, !dbg !212
  store i32 110, i32* %val19, align 8, !dbg !215
  %arrayidx20 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 3, !dbg !210
  %name21 = getelementptr inbounds %struct.option, %struct.option* %arrayidx20, i32 0, i32 0, !dbg !212
  store i8* null, i8** %name21, align 16, !dbg !213
  %arrayidx22 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 3, !dbg !210
  %has_arg23 = getelementptr inbounds %struct.option, %struct.option* %arrayidx22, i32 0, i32 1, !dbg !212
  store i32 0, i32* %has_arg23, align 8, !dbg !214
  %arrayidx24 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 3, !dbg !210
  %flag25 = getelementptr inbounds %struct.option, %struct.option* %arrayidx24, i32 0, i32 2, !dbg !212
  store i32* null, i32** %flag25, align 16, !dbg !213
  %arrayidx26 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i64 0, i64 3, !dbg !210
  %val27 = getelementptr inbounds %struct.option, %struct.option* %arrayidx26, i32 0, i32 3, !dbg !212
  store i32 0, i32* %val27, align 8, !dbg !215
  br label %while.body, !dbg !216

while.body:                                       ; preds = %switch_break, %entry
  %result.addr.0 = phi %struct.beep_parms_t* [ %result, %entry ], [ %result.addr.1, %switch_break ]
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %result.addr.0, metadata !174, metadata !DIExpression()), !dbg !172
  br label %while_continue___0, !dbg !219

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !219

while_continue:                                   ; preds = %while_continue___0
  %arraydecay = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %opt_list, i32 0, i32 0, !dbg !220
  %call = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct.option* %arraydecay, i32* null) #5, !dbg !224
  call void @llvm.dbg.value(metadata i32 %call, metadata !225, metadata !DIExpression()), !dbg !172
  %cmp = icmp ne i32 %call, -1, !dbg !226
  br i1 %cmp, label %if.end, label %if.then, !dbg !228

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !229

if.end:                                           ; preds = %while_continue
  store i32 -1, i32* %argval, align 4, !dbg !231
  store float -1.000000e+00, float* %argfreq, align 4, !dbg !232
  %cmp28 = icmp eq i32 %call, 102, !dbg !233
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !236

if.then29:                                        ; preds = %if.end
  br label %case_102, !dbg !237

if.end30:                                         ; preds = %if.end
  %cmp31 = icmp eq i32 %call, 108, !dbg !239
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !241

if.then32:                                        ; preds = %if.end30
  br label %case_108, !dbg !242

if.end33:                                         ; preds = %if.end30
  %cmp34 = icmp eq i32 %call, 114, !dbg !244
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !246

if.then35:                                        ; preds = %if.end33
  br label %case_114, !dbg !247

if.end36:                                         ; preds = %if.end33
  %cmp37 = icmp eq i32 %call, 100, !dbg !249
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !251

if.then38:                                        ; preds = %if.end36
  br label %case_100, !dbg !252

if.end39:                                         ; preds = %if.end36
  %cmp40 = icmp eq i32 %call, 68, !dbg !254
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !256

if.then41:                                        ; preds = %if.end39
  br label %case_68, !dbg !257

if.end42:                                         ; preds = %if.end39
  %cmp43 = icmp eq i32 %call, 115, !dbg !259
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !261

if.then44:                                        ; preds = %if.end42
  br label %case_115, !dbg !262

if.end45:                                         ; preds = %if.end42
  %cmp46 = icmp eq i32 %call, 99, !dbg !264
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !266

if.then47:                                        ; preds = %if.end45
  br label %case_99, !dbg !267

if.end48:                                         ; preds = %if.end45
  %cmp49 = icmp eq i32 %call, 86, !dbg !269
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !271

if.then50:                                        ; preds = %if.end48
  br label %case_86, !dbg !272

if.end51:                                         ; preds = %if.end48
  %cmp52 = icmp eq i32 %call, 118, !dbg !274
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !271

if.then53:                                        ; preds = %if.end51
  br label %case_86, !dbg !276

if.end54:                                         ; preds = %if.end51
  %cmp55 = icmp eq i32 %call, 110, !dbg !278
  br i1 %cmp55, label %if.then56, label %if.end57, !dbg !280

if.then56:                                        ; preds = %if.end54
  br label %case_110, !dbg !281

if.end57:                                         ; preds = %if.end54
  br label %switch_default, !dbg !283

case_102:                                         ; preds = %if.then29
  %0 = load i8*, i8** @optarg, align 8, !dbg !284
  %call58 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), float* %argfreq) #5, !dbg !287
  call void @llvm.dbg.value(metadata i32 %call58, metadata !288, metadata !DIExpression()), !dbg !172
  %tobool = icmp ne i32 %call58, 0, !dbg !289
  br i1 %tobool, label %if.then59, label %if.else68, !dbg !291

if.then59:                                        ; preds = %case_102
  %1 = load float, float* %argfreq, align 4, !dbg !292
  %cmp60 = fcmp oge float %1, 2.000000e+04, !dbg !295
  br i1 %cmp60, label %if.then61, label %if.else, !dbg !296

if.then61:                                        ; preds = %if.then59
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !297
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !301
  call void @usage_bail(i8* %2), !dbg !302
  br label %if.end67, !dbg !303

if.else:                                          ; preds = %if.then59
  %3 = load float, float* %argfreq, align 4, !dbg !304
  %cmp62 = fcmp ole float %3, 0.000000e+00, !dbg !306
  br i1 %cmp62, label %if.then63, label %if.else65, !dbg !292

if.then63:                                        ; preds = %if.else
  %add.ptr64 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !307
  %4 = load i8*, i8** %add.ptr64, align 8, !dbg !311
  call void @usage_bail(i8* %4), !dbg !312
  br label %if.end66, !dbg !313

if.else65:                                        ; preds = %if.else
  %5 = load float, float* %argfreq, align 4, !dbg !314
  %freq = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 0, !dbg !316
  store float %5, float* %freq, align 8, !dbg !317
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then63
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then61
  br label %if.end70, !dbg !318

if.else68:                                        ; preds = %case_102
  %add.ptr69 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !319
  %6 = load i8*, i8** %add.ptr69, align 8, !dbg !323
  call void @usage_bail(i8* %6), !dbg !324
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.end67
  br label %switch_break, !dbg !325

case_108:                                         ; preds = %if.then32
  %7 = load i8*, i8** @optarg, align 8, !dbg !326
  %call71 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %argval) #5, !dbg !329
  call void @llvm.dbg.value(metadata i32 %call71, metadata !330, metadata !DIExpression()), !dbg !172
  %tobool72 = icmp ne i32 %call71, 0, !dbg !331
  br i1 %tobool72, label %if.then73, label %if.else79, !dbg !333

if.then73:                                        ; preds = %case_108
  %8 = load i32, i32* %argval, align 4, !dbg !334
  %cmp74 = icmp slt i32 %8, 0, !dbg !337
  br i1 %cmp74, label %if.then75, label %if.else77, !dbg !338

if.then75:                                        ; preds = %if.then73
  %add.ptr76 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !339
  %9 = load i8*, i8** %add.ptr76, align 8, !dbg !343
  call void @usage_bail(i8* %9), !dbg !344
  br label %if.end78, !dbg !345

if.else77:                                        ; preds = %if.then73
  %10 = load i32, i32* %argval, align 4, !dbg !346
  %length = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 1, !dbg !348
  store i32 %10, i32* %length, align 4, !dbg !349
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then75
  br label %if.end81, !dbg !350

if.else79:                                        ; preds = %case_108
  %add.ptr80 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !351
  %11 = load i8*, i8** %add.ptr80, align 8, !dbg !355
  call void @usage_bail(i8* %11), !dbg !356
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.end78
  br label %switch_break, !dbg !357

case_114:                                         ; preds = %if.then35
  %12 = load i8*, i8** @optarg, align 8, !dbg !358
  %call82 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %argval) #5, !dbg !361
  call void @llvm.dbg.value(metadata i32 %call82, metadata !362, metadata !DIExpression()), !dbg !172
  %tobool83 = icmp ne i32 %call82, 0, !dbg !363
  br i1 %tobool83, label %if.then84, label %if.else90, !dbg !365

if.then84:                                        ; preds = %case_114
  %13 = load i32, i32* %argval, align 4, !dbg !366
  %cmp85 = icmp slt i32 %13, 0, !dbg !369
  br i1 %cmp85, label %if.then86, label %if.else88, !dbg !370

if.then86:                                        ; preds = %if.then84
  %add.ptr87 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !371
  %14 = load i8*, i8** %add.ptr87, align 8, !dbg !375
  call void @usage_bail(i8* %14), !dbg !376
  br label %if.end89, !dbg !377

if.else88:                                        ; preds = %if.then84
  %15 = load i32, i32* %argval, align 4, !dbg !378
  %reps = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 2, !dbg !380
  store i32 %15, i32* %reps, align 8, !dbg !381
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.then86
  br label %if.end92, !dbg !382

if.else90:                                        ; preds = %case_114
  %add.ptr91 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !383
  %16 = load i8*, i8** %add.ptr91, align 8, !dbg !387
  call void @usage_bail(i8* %16), !dbg !388
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.end89
  br label %switch_break, !dbg !389

case_100:                                         ; preds = %if.then38
  %17 = load i8*, i8** @optarg, align 8, !dbg !390
  %call93 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %argval) #5, !dbg !393
  call void @llvm.dbg.value(metadata i32 %call93, metadata !394, metadata !DIExpression()), !dbg !172
  %tobool94 = icmp ne i32 %call93, 0, !dbg !395
  br i1 %tobool94, label %if.then95, label %if.else101, !dbg !397

if.then95:                                        ; preds = %case_100
  %18 = load i32, i32* %argval, align 4, !dbg !398
  %cmp96 = icmp slt i32 %18, 0, !dbg !401
  br i1 %cmp96, label %if.then97, label %if.else99, !dbg !402

if.then97:                                        ; preds = %if.then95
  %add.ptr98 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !403
  %19 = load i8*, i8** %add.ptr98, align 8, !dbg !407
  call void @usage_bail(i8* %19), !dbg !408
  br label %if.end100, !dbg !409

if.else99:                                        ; preds = %if.then95
  %20 = load i32, i32* %argval, align 4, !dbg !410
  %delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 3, !dbg !412
  store i32 %20, i32* %delay, align 4, !dbg !413
  %end_delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 4, !dbg !414
  store i32 0, i32* %end_delay, align 8, !dbg !415
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then97
  br label %if.end103, !dbg !416

if.else101:                                       ; preds = %case_100
  %add.ptr102 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !417
  %21 = load i8*, i8** %add.ptr102, align 8, !dbg !421
  call void @usage_bail(i8* %21), !dbg !422
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.end100
  br label %switch_break, !dbg !423

case_68:                                          ; preds = %if.then41
  %22 = load i8*, i8** @optarg, align 8, !dbg !424
  %call104 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %argval) #5, !dbg !427
  call void @llvm.dbg.value(metadata i32 %call104, metadata !428, metadata !DIExpression()), !dbg !172
  %tobool105 = icmp ne i32 %call104, 0, !dbg !429
  br i1 %tobool105, label %if.then106, label %if.else114, !dbg !431

if.then106:                                       ; preds = %case_68
  %23 = load i32, i32* %argval, align 4, !dbg !432
  %cmp107 = icmp slt i32 %23, 0, !dbg !435
  br i1 %cmp107, label %if.then108, label %if.else110, !dbg !436

if.then108:                                       ; preds = %if.then106
  %add.ptr109 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !437
  %24 = load i8*, i8** %add.ptr109, align 8, !dbg !441
  call void @usage_bail(i8* %24), !dbg !442
  br label %if.end113, !dbg !443

if.else110:                                       ; preds = %if.then106
  %25 = load i32, i32* %argval, align 4, !dbg !444
  %delay111 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 3, !dbg !446
  store i32 %25, i32* %delay111, align 4, !dbg !447
  %end_delay112 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 4, !dbg !448
  store i32 1, i32* %end_delay112, align 8, !dbg !449
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.then108
  br label %if.end116, !dbg !450

if.else114:                                       ; preds = %case_68
  %add.ptr115 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !451
  %26 = load i8*, i8** %add.ptr115, align 8, !dbg !455
  call void @usage_bail(i8* %26), !dbg !456
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %if.end113
  br label %switch_break, !dbg !457

case_115:                                         ; preds = %if.then44
  %stdin_beep = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 5, !dbg !458
  store i32 1, i32* %stdin_beep, align 4, !dbg !459
  br label %switch_break, !dbg !460

case_99:                                          ; preds = %if.then47
  %stdin_beep117 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 5, !dbg !461
  store i32 2, i32* %stdin_beep117, align 4, !dbg !462
  br label %switch_break, !dbg !463

case_86:                                          ; preds = %if.then53, %if.then50
  br label %case_118, !dbg !463

case_118:                                         ; preds = %case_86
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)), !dbg !464
  call void @exit(i32 0) #6, !dbg !467
  unreachable, !dbg !467

case_110:                                         ; preds = %if.then56
  %call119 = call noalias i8* @malloc(i32 32) #5, !dbg !469
  call void @llvm.dbg.value(metadata i8* %call119, metadata !472, metadata !DIExpression()), !dbg !172
  %27 = bitcast i8* %call119 to %struct.beep_parms_t*, !dbg !473
  %next = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !474
  store %struct.beep_parms_t* %27, %struct.beep_parms_t** %next, align 8, !dbg !475
  %next120 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !476
  %28 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next120, align 8, !dbg !476
  %freq121 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %28, i32 0, i32 0, !dbg !477
  store float 4.400000e+02, float* %freq121, align 8, !dbg !478
  %next122 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !479
  %29 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next122, align 8, !dbg !479
  %length123 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %29, i32 0, i32 1, !dbg !480
  store i32 200, i32* %length123, align 4, !dbg !481
  %next124 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !482
  %30 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next124, align 8, !dbg !482
  %reps125 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %30, i32 0, i32 2, !dbg !483
  store i32 1, i32* %reps125, align 8, !dbg !484
  %next126 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !485
  %31 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next126, align 8, !dbg !485
  %delay127 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %31, i32 0, i32 3, !dbg !486
  store i32 100, i32* %delay127, align 4, !dbg !487
  %next128 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !488
  %32 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next128, align 8, !dbg !488
  %end_delay129 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %32, i32 0, i32 4, !dbg !489
  store i32 0, i32* %end_delay129, align 8, !dbg !490
  %next130 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !491
  %33 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next130, align 8, !dbg !491
  %stdin_beep131 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %33, i32 0, i32 5, !dbg !492
  store i32 0, i32* %stdin_beep131, align 4, !dbg !493
  %next132 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !494
  %34 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next132, align 8, !dbg !494
  %next133 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %34, i32 0, i32 6, !dbg !495
  store %struct.beep_parms_t* null, %struct.beep_parms_t** %next133, align 8, !dbg !496
  %next134 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %result.addr.0, i32 0, i32 6, !dbg !497
  %35 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next134, align 8, !dbg !497
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %35, metadata !174, metadata !DIExpression()), !dbg !172
  br label %switch_break, !dbg !498

switch_default:                                   ; preds = %if.end57
  %add.ptr135 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !499
  %36 = load i8*, i8** %add.ptr135, align 8, !dbg !502
  call void @usage_bail(i8* %36), !dbg !503
  br label %switch_break, !dbg !504

switch_break:                                     ; preds = %switch_default, %case_110, %case_99, %case_115, %if.end116, %if.end103, %if.end92, %if.end81, %if.end70
  %result.addr.1 = phi %struct.beep_parms_t* [ %result.addr.0, %if.end70 ], [ %result.addr.0, %if.end81 ], [ %result.addr.0, %if.end92 ], [ %result.addr.0, %if.end103 ], [ %result.addr.0, %if.end116 ], [ %result.addr.0, %case_115 ], [ %result.addr.0, %case_99 ], [ %35, %case_110 ], [ %result.addr.0, %switch_default ]
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %result.addr.1, metadata !174, metadata !DIExpression()), !dbg !172
  br label %while.body, !dbg !216, !llvm.loop !505

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !507

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !508
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i32 @"\01__isoc99_sscanf"(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @play_beep(%struct.beep_parms_t* byval align 8 %parms) #0 !dbg !509 {
entry:
  call void @llvm.dbg.declare(metadata %struct.beep_parms_t* %parms, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata !4, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata !4, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata !4, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata !4, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata !4, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata !4, metadata !524, metadata !DIExpression()), !dbg !525
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 1), !dbg !526
  store i32 %call, i32* @console_fd, align 4, !dbg !530
  %0 = load i32, i32* @console_fd, align 4, !dbg !531
  %cmp = icmp eq i32 %0, -1, !dbg !533
  br i1 %cmp, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !535
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0)), !dbg !539
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !540
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)), !dbg !542
  call void @exit(i32 1) #6, !dbg !544
  unreachable, !dbg !544

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !546, metadata !DIExpression()), !dbg !547
  br label %while.body, !dbg !548

while.body:                                       ; preds = %if.end25, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end25 ], !dbg !551
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !546, metadata !DIExpression()), !dbg !547
  br label %while_continue___0, !dbg !552

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !552

while_continue:                                   ; preds = %while_continue___0
  %reps = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 2, !dbg !553
  %2 = load i32, i32* %reps, align 8, !dbg !553
  %cmp3 = icmp slt i32 %i.0, %2, !dbg !556
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !557

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !558

if.end5:                                          ; preds = %while_continue
  %3 = load i32, i32* @console_fd, align 4, !dbg !560
  %freq = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 0, !dbg !563
  %4 = load float, float* %freq, align 8, !dbg !563
  %div = fdiv float 1.193180e+06, %4, !dbg !564
  %conv = fptosi float %div to i32, !dbg !565
  %call6 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 19247, i32 %conv) #5, !dbg !566
  call void @llvm.dbg.value(metadata i32 %call6, metadata !567, metadata !DIExpression()), !dbg !547
  %cmp7 = icmp slt i32 %call6, 0, !dbg !568
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !570

if.then9:                                         ; preds = %if.end5
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !571
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)), !dbg !575
  br label %if.end11, !dbg !577

if.end11:                                         ; preds = %if.then9, %if.end5
  %length = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 1, !dbg !578
  %5 = load i32, i32* %length, align 4, !dbg !578
  %mul = mul nsw i32 1000, %5, !dbg !581
  %call12 = call i32 @usleep(i32 %mul), !dbg !582
  %6 = load i32, i32* @console_fd, align 4, !dbg !583
  %call13 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 19247, i32 0) #5, !dbg !585
  %end_delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 4, !dbg !586
  %7 = load i32, i32* %end_delay, align 8, !dbg !586
  %tobool = icmp ne i32 %7, 0, !dbg !588
  br i1 %tobool, label %if.then14, label %if.else, !dbg !589

if.then14:                                        ; preds = %if.end11
  %delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 3, !dbg !590
  %8 = load i32, i32* %delay, align 4, !dbg !590
  %mul15 = mul nsw i32 1000, %8, !dbg !594
  %call16 = call i32 @usleep(i32 %mul15), !dbg !595
  br label %if.end25, !dbg !596

if.else:                                          ; preds = %if.end11
  %add = add nsw i32 %i.0, 1, !dbg !597
  %reps17 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 2, !dbg !599
  %9 = load i32, i32* %reps17, align 8, !dbg !599
  %cmp18 = icmp slt i32 %add, %9, !dbg !600
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !588

if.then20:                                        ; preds = %if.else
  %delay21 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms, i32 0, i32 3, !dbg !601
  %10 = load i32, i32* %delay21, align 4, !dbg !601
  %mul22 = mul nsw i32 1000, %10, !dbg !605
  %call23 = call i32 @usleep(i32 %mul22), !dbg !606
  br label %if.end24, !dbg !607

if.end24:                                         ; preds = %if.then20, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then14
  %inc = add nsw i32 %i.0, 1, !dbg !608
  call void @llvm.dbg.value(metadata i32 %inc, metadata !546, metadata !DIExpression()), !dbg !547
  br label %while.body, !dbg !548, !llvm.loop !609

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !611

while_break:                                      ; preds = %while_break___0, %if.then4
  %11 = load i32, i32* @console_fd, align 4, !dbg !612
  %call26 = call i32 @close(i32 %11), !dbg !615
  ret void, !dbg !616
}

declare i32 @open(i8*, i32, ...) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @perror(i8*) #3

declare i32 @usleep(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !617 {
entry:
  %sin = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i8** %argv, metadata !622, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata [4096 x i8]* %sin, metadata !623, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata !4, metadata !628, metadata !DIExpression()), !dbg !629
  %call = call noalias i8* @malloc(i32 32) #5, !dbg !630
  call void @llvm.dbg.value(metadata i8* %call, metadata !634, metadata !DIExpression()), !dbg !621
  %0 = bitcast i8* %call to %struct.beep_parms_t*, !dbg !635
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %0, metadata !636, metadata !DIExpression()), !dbg !621
  %freq = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 0, !dbg !637
  store float 4.400000e+02, float* %freq, align 8, !dbg !638
  %length = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 1, !dbg !639
  store i32 200, i32* %length, align 4, !dbg !640
  %reps = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 2, !dbg !641
  store i32 1, i32* %reps, align 8, !dbg !642
  %delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 3, !dbg !643
  store i32 100, i32* %delay, align 4, !dbg !644
  %end_delay = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 4, !dbg !645
  store i32 0, i32* %end_delay, align 8, !dbg !646
  %stdin_beep = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 5, !dbg !647
  store i32 0, i32* %stdin_beep, align 4, !dbg !648
  %next1 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %0, i32 0, i32 6, !dbg !649
  store %struct.beep_parms_t* null, %struct.beep_parms_t** %next1, align 8, !dbg !650
  %call2 = call void (i32)* @signal(i32 2, void (i32)* @handle_signal) #5, !dbg !651
  call void @parse_command_line(i32 %argc, i8** %argv, %struct.beep_parms_t* %0), !dbg !653
  br label %while.body, !dbg !655

while.body:                                       ; preds = %if.end29, %entry
  %parms.0 = phi %struct.beep_parms_t* [ %0, %entry ], [ %1, %if.end29 ], !dbg !658
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %parms.0, metadata !636, metadata !DIExpression()), !dbg !621
  br label %while_continue___2, !dbg !659

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !659

while_continue:                                   ; preds = %while_continue___2
  %tobool = icmp ne %struct.beep_parms_t* %parms.0, null, !dbg !660
  br i1 %tobool, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !664

if.end:                                           ; preds = %while_continue
  %next3 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms.0, i32 0, i32 6, !dbg !666
  %1 = load %struct.beep_parms_t*, %struct.beep_parms_t** %next3, align 8, !dbg !666
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %1, metadata !667, metadata !DIExpression()), !dbg !621
  %stdin_beep4 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms.0, i32 0, i32 5, !dbg !668
  %2 = load i32, i32* %stdin_beep4, align 4, !dbg !668
  %tobool5 = icmp ne i32 %2, 0, !dbg !670
  br i1 %tobool5, label %if.then6, label %if.else28, !dbg !671

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !672
  %call7 = call i32 @setvbuf(%struct._IO_FILE* %3, i8* null, i32 2, i32 0) #5, !dbg !676
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677
  %call8 = call i32 @setvbuf(%struct._IO_FILE* %4, i8* null, i32 2, i32 0) #5, !dbg !679
  br label %while.body10, !dbg !680

while.body10:                                     ; preds = %if.end27, %if.then6
  br label %while_continue___3, !dbg !683

while_continue___3:                               ; preds = %while.body10
  br label %while_continue___0, !dbg !683

while_continue___0:                               ; preds = %while_continue___3
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %sin, i32 0, i32 0, !dbg !684
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !688
  %call11 = call i8* @fgets(i8* %arraydecay, i32 4096, %struct._IO_FILE* %5), !dbg !689
  call void @llvm.dbg.value(metadata i8* %call11, metadata !690, metadata !DIExpression()), !dbg !621
  %tobool12 = icmp ne i8* %call11, null, !dbg !691
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !693

if.then13:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !694

if.end14:                                         ; preds = %while_continue___0
  %stdin_beep15 = getelementptr inbounds %struct.beep_parms_t, %struct.beep_parms_t* %parms.0, i32 0, i32 5, !dbg !696
  %6 = load i32, i32* %stdin_beep15, align 4, !dbg !696
  %cmp = icmp eq i32 %6, 2, !dbg !698
  br i1 %cmp, label %if.then16, label %if.else, !dbg !699

if.then16:                                        ; preds = %if.end14
  %arraydecay17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %sin, i32 0, i32 0, !dbg !700
  call void @llvm.dbg.value(metadata i8* %arraydecay17, metadata !702, metadata !DIExpression()), !dbg !621
  br label %while.body19, !dbg !703

while.body19:                                     ; preds = %if.end22, %if.then16
  %ptr.0 = phi i8* [ %arraydecay17, %if.then16 ], [ %incdec.ptr, %if.end22 ], !dbg !706
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !702, metadata !DIExpression()), !dbg !621
  br label %while_continue___4, !dbg !707

while_continue___4:                               ; preds = %while.body19
  br label %while_continue___1, !dbg !707

while_continue___1:                               ; preds = %while_continue___4
  %7 = load i8, i8* %ptr.0, align 1, !dbg !708
  %tobool20 = icmp ne i8 %7, 0, !dbg !708
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !711

if.then21:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !712

if.end22:                                         ; preds = %while_continue___1
  %8 = load i8, i8* %ptr.0, align 1, !dbg !714
  %conv = sext i8 %8 to i32, !dbg !717
  %call23 = call i32 @putchar(i32 %conv), !dbg !718
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719
  %call24 = call i32 @fflush(%struct._IO_FILE* %9), !dbg !721
  call void @play_beep(%struct.beep_parms_t* byval align 8 %parms.0), !dbg !722
  %incdec.ptr = getelementptr inbounds i8, i8* %ptr.0, i32 1, !dbg !724
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !702, metadata !DIExpression()), !dbg !621
  br label %while.body19, !dbg !703, !llvm.loop !725

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !727

while_break___1:                                  ; preds = %while_break___4, %if.then21
  br label %if.end27, !dbg !728

if.else:                                          ; preds = %if.end14
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %sin, i32 0, i32 0, !dbg !729
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733
  %call26 = call i32 @fputs(i8* %arraydecay25, %struct._IO_FILE* %10), !dbg !734
  call void @play_beep(%struct.beep_parms_t* byval align 8 %parms.0), !dbg !735
  br label %if.end27

if.end27:                                         ; preds = %if.else, %while_break___1
  br label %while.body10, !dbg !680, !llvm.loop !737

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !739

while_break___0:                                  ; preds = %while_break___3, %if.then13
  br label %if.end29, !dbg !740

if.else28:                                        ; preds = %if.end
  call void @play_beep(%struct.beep_parms_t* byval align 8 %parms.0), !dbg !741
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %while_break___0
  %11 = bitcast %struct.beep_parms_t* %parms.0 to i8*, !dbg !745
  call void @free(i8* %11) #5, !dbg !748
  call void @llvm.dbg.value(metadata %struct.beep_parms_t* %1, metadata !636, metadata !DIExpression()), !dbg !621
  br label %while.body, !dbg !655, !llvm.loop !749

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !751

while_break:                                      ; preds = %while_break___2, %if.then
  ret i32 0, !dbg !752
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare i32 @putchar(i32) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!103, !104, !105, !106, !107}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "copyright", scope: !2, file: !30, line: 51, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !100, nameTableKind: GNU)
!3 = !DIFile(filename: "c/beep-1.2.2.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !9, !11, !12, !15, !24, !25, !28, !40, !41, !10, !99, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !18, line: 106, size: 256, elements: !19)
!18 = !DIFile(filename: "/usr/include/getopt.h", directory: "")
!19 = !{!20, !21, !22, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 107, baseType: !6, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !17, file: !18, line: 108, baseType: !10, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !17, file: !18, line: 109, baseType: !9, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !17, file: !18, line: 110, baseType: !10, size: 32, offset: 192)
!24 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 211, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "beep_parms_t", file: !30, line: 72, baseType: !31)
!30 = !DIFile(filename: "/home/wslee/benchmarks/sound/beep-1.2.2/beep.c", directory: "")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "beep_parms_t", file: !30, line: 72, size: 256, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !31, file: !30, line: 73, baseType: !24, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !31, file: !30, line: 74, baseType: !10, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !31, file: !30, line: 75, baseType: !10, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !31, file: !30, line: 76, baseType: !10, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "end_delay", scope: !31, file: !30, line: 77, baseType: !10, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_beep", scope: !31, file: !30, line: 78, baseType: !10, size: 32, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !30, line: 79, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 49, baseType: !44)
!43 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 271, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !67, !68, !69, !70, !74, !76, !78, !82, !85, !89, !90, !91, !92, !93, !94, !95}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 272, baseType: !10, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 273, baseType: !14, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 274, baseType: !14, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 275, baseType: !14, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 276, baseType: !14, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 277, baseType: !14, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 278, baseType: !14, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 279, baseType: !14, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 280, baseType: !14, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 281, baseType: !14, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 282, baseType: !14, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 283, baseType: !14, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 284, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 186, size: 192, elements: !62)
!62 = !{!63, !64, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !61, file: !45, line: 187, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !61, file: !45, line: 188, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !61, file: !45, line: 189, baseType: !10, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 285, baseType: !65, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 286, baseType: !10, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 287, baseType: !10, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 288, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 141, baseType: !73)
!72 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 289, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 290, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 291, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 292, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 180, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 293, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 142, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !72, line: 56, baseType: !88)
!88 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !44, file: !45, line: 294, baseType: !11, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !44, file: !45, line: 295, baseType: !11, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !44, file: !45, line: 296, baseType: !11, size: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !44, file: !45, line: 297, baseType: !11, size: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 298, baseType: !25, size: 32, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 299, baseType: !10, size: 32, offset: 1504)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 300, baseType: !96, size: 192, offset: 1536)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 24)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !72, line: 150, baseType: !27)
!100 = !{!0, !101}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "console_fd", scope: !2, file: !30, line: 91, type: !10, isLocal: false, isDefinition: true)
!103 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!104 = !{i32 2, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = !{i32 7, !"PIC Level", i32 2}
!108 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!109 = distinct !DISubprogram(name: "handle_signal", scope: !30, file: !30, line: 95, type: !110, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !10}
!112 = !DILocalVariable(name: "signum", arg: 1, scope: !109, file: !30, line: 95, type: !10)
!113 = !DILocation(line: 0, scope: !109)
!114 = !DILocation(line: 97, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !30, line: 97, column: 7)
!116 = distinct !DILexicalBlock(scope: !117, file: !30, line: 100, column: 3)
!117 = distinct !DILexicalBlock(scope: !109, file: !30, line: 99, column: 3)
!118 = !DILocation(line: 97, column: 7, scope: !116)
!119 = !DILocation(line: 97, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !30, line: 97, column: 20)
!121 = !DILocation(line: 96, column: 3, scope: !116)
!122 = !DILocation(line: 98, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !116, file: !30, line: 98, column: 7)
!124 = !DILocation(line: 98, column: 18, scope: !123)
!125 = !DILocation(line: 98, column: 7, scope: !116)
!126 = !DILocation(line: 100, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !30, line: 100, column: 5)
!128 = distinct !DILexicalBlock(scope: !129, file: !30, line: 99, column: 5)
!129 = distinct !DILexicalBlock(scope: !123, file: !30, line: 98, column: 24)
!130 = !DILocation(line: 100, column: 5, scope: !127)
!131 = !DILocation(line: 101, column: 11, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !30, line: 102, column: 5)
!133 = !DILocation(line: 101, column: 5, scope: !132)
!134 = !DILocation(line: 102, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !30, line: 103, column: 5)
!136 = !DILocation(line: 105, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !30, line: 107, column: 5)
!138 = distinct !DILexicalBlock(scope: !139, file: !30, line: 106, column: 5)
!139 = distinct !DILexicalBlock(scope: !123, file: !30, line: 105, column: 10)
!140 = !DILocation(line: 108, column: 3, scope: !117)
!141 = distinct !DISubprogram(name: "usage_bail", scope: !30, file: !30, line: 111, type: !142, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !6}
!144 = !DILocalVariable(name: "executable_name", arg: 1, scope: !141, file: !30, line: 111, type: !6)
!145 = !DILocation(line: 0, scope: !141)
!146 = !DILocalVariable(name: "__cil_tmp2", scope: !141, file: !30, line: 113, type: !14)
!147 = !DILocation(line: 113, column: 9, scope: !141)
!148 = !DILocalVariable(name: "__cil_tmp3", scope: !141, file: !30, line: 114, type: !14)
!149 = !DILocation(line: 114, column: 9, scope: !141)
!150 = !DILocalVariable(name: "__cil_tmp4", scope: !141, file: !30, line: 115, type: !14)
!151 = !DILocation(line: 115, column: 9, scope: !141)
!152 = !DILocalVariable(name: "__cil_tmp5", scope: !141, file: !30, line: 116, type: !14)
!153 = !DILocation(line: 116, column: 9, scope: !141)
!154 = !DILocation(line: 112, column: 3, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !30, line: 120, column: 3)
!156 = distinct !DILexicalBlock(scope: !157, file: !30, line: 119, column: 3)
!157 = distinct !DILexicalBlock(scope: !141, file: !30, line: 118, column: 3)
!158 = !DILocation(line: 115, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !30, line: 115, column: 3)
!160 = !DILocation(line: 116, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !30, line: 118, column: 3)
!162 = !DILocation(line: 117, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !30, line: 118, column: 3)
!164 = !DILocation(line: 118, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !30, line: 119, column: 3)
!166 = !DILocation(line: 122, column: 1, scope: !141)
!167 = distinct !DISubprogram(name: "parse_command_line", scope: !30, file: !30, line: 141, type: !168, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !10, !170, !28}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!171 = !DILocalVariable(name: "argc", arg: 1, scope: !167, file: !30, line: 141, type: !10)
!172 = !DILocation(line: 0, scope: !167)
!173 = !DILocalVariable(name: "argv", arg: 2, scope: !167, file: !30, line: 141, type: !170)
!174 = !DILocalVariable(name: "result", arg: 3, scope: !167, file: !30, line: 141, type: !28)
!175 = !DILocalVariable(name: "opt_list", scope: !167, file: !30, line: 144, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1024, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DILocation(line: 144, column: 17, scope: !167)
!180 = !DILocalVariable(name: "argval", scope: !167, file: !30, line: 145, type: !10)
!181 = !DILocation(line: 145, column: 7, scope: !167)
!182 = !DILocalVariable(name: "argfreq", scope: !167, file: !30, line: 146, type: !24)
!183 = !DILocation(line: 146, column: 9, scope: !167)
!184 = !DILocalVariable(name: "__cil_tmp14", scope: !167, file: !30, line: 153, type: !11)
!185 = !DILocation(line: 153, column: 9, scope: !167)
!186 = !DILocalVariable(name: "__cil_tmp15", scope: !167, file: !30, line: 154, type: !10)
!187 = !DILocation(line: 154, column: 7, scope: !167)
!188 = !DILocalVariable(name: "__cil_tmp16", scope: !167, file: !30, line: 155, type: !14)
!189 = !DILocation(line: 155, column: 9, scope: !167)
!190 = !DILocalVariable(name: "__cil_tmp17", scope: !167, file: !30, line: 156, type: !14)
!191 = !DILocation(line: 156, column: 9, scope: !167)
!192 = !DILocalVariable(name: "__cil_tmp18", scope: !167, file: !30, line: 157, type: !14)
!193 = !DILocation(line: 157, column: 9, scope: !167)
!194 = !DILocalVariable(name: "__cil_tmp19", scope: !167, file: !30, line: 158, type: !14)
!195 = !DILocation(line: 158, column: 9, scope: !167)
!196 = !DILocalVariable(name: "__cil_tmp20", scope: !167, file: !30, line: 159, type: !14)
!197 = !DILocation(line: 159, column: 9, scope: !167)
!198 = !DILocalVariable(name: "__cil_tmp21", scope: !167, file: !30, line: 160, type: !14)
!199 = !DILocation(line: 160, column: 9, scope: !167)
!200 = !DILocalVariable(name: "__cil_tmp22", scope: !167, file: !30, line: 161, type: !14)
!201 = !DILocation(line: 161, column: 9, scope: !167)
!202 = !DILocalVariable(name: "__cil_tmp23", scope: !167, file: !30, line: 162, type: !14)
!203 = !DILocation(line: 162, column: 9, scope: !167)
!204 = !DILocalVariable(name: "__cil_tmp24", scope: !167, file: !30, line: 163, type: !14)
!205 = !DILocation(line: 163, column: 9, scope: !167)
!206 = !DILocalVariable(name: "__cil_tmp25", scope: !167, file: !30, line: 164, type: !14)
!207 = !DILocation(line: 164, column: 9, scope: !167)
!208 = !DILocalVariable(name: "__cil_tmp26", scope: !167, file: !30, line: 165, type: !14)
!209 = !DILocation(line: 165, column: 9, scope: !167)
!210 = !DILocation(line: 144, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !167, file: !30, line: 167, column: 3)
!212 = !DILocation(line: 144, column: 15, scope: !211)
!213 = !DILocation(line: 144, column: 20, scope: !211)
!214 = !DILocation(line: 144, column: 23, scope: !211)
!215 = !DILocation(line: 144, column: 19, scope: !211)
!216 = !DILocation(line: 148, column: 3, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !30, line: 146, column: 3)
!218 = distinct !DILexicalBlock(scope: !211, file: !30, line: 145, column: 3)
!219 = !DILocation(line: 148, column: 13, scope: !217)
!220 = !DILocation(line: 148, column: 95, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !30, line: 152, column: 5)
!222 = distinct !DILexicalBlock(scope: !223, file: !30, line: 151, column: 5)
!223 = distinct !DILexicalBlock(scope: !217, file: !30, line: 148, column: 13)
!224 = !DILocation(line: 148, column: 9, scope: !221)
!225 = !DILocalVariable(name: "c", scope: !167, file: !30, line: 143, type: !10)
!226 = !DILocation(line: 148, column: 14, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !30, line: 148, column: 9)
!228 = !DILocation(line: 148, column: 9, scope: !223)
!229 = !DILocation(line: 148, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !30, line: 148, column: 22)
!231 = !DILocation(line: 150, column: 12, scope: !223)
!232 = !DILocation(line: 151, column: 13, scope: !223)
!233 = !DILocation(line: 153, column: 11, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !30, line: 153, column: 9)
!235 = distinct !DILexicalBlock(scope: !223, file: !30, line: 152, column: 5)
!236 = !DILocation(line: 153, column: 9, scope: !235)
!237 = !DILocation(line: 153, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !30, line: 153, column: 19)
!239 = !DILocation(line: 160, column: 11, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !30, line: 160, column: 9)
!241 = !DILocation(line: 160, column: 9, scope: !235)
!242 = !DILocation(line: 160, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !30, line: 160, column: 19)
!244 = !DILocation(line: 166, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !30, line: 166, column: 9)
!246 = !DILocation(line: 166, column: 9, scope: !235)
!247 = !DILocation(line: 166, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !30, line: 166, column: 19)
!249 = !DILocation(line: 172, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !235, file: !30, line: 172, column: 9)
!251 = !DILocation(line: 172, column: 9, scope: !235)
!252 = !DILocation(line: 172, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !30, line: 172, column: 19)
!254 = !DILocation(line: 180, column: 11, scope: !255)
!255 = distinct !DILexicalBlock(scope: !235, file: !30, line: 180, column: 9)
!256 = !DILocation(line: 180, column: 9, scope: !235)
!257 = !DILocation(line: 180, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !30, line: 180, column: 18)
!259 = !DILocation(line: 188, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !235, file: !30, line: 188, column: 9)
!261 = !DILocation(line: 188, column: 9, scope: !235)
!262 = !DILocation(line: 188, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !30, line: 188, column: 19)
!264 = !DILocation(line: 191, column: 11, scope: !265)
!265 = distinct !DILexicalBlock(scope: !235, file: !30, line: 191, column: 9)
!266 = !DILocation(line: 191, column: 9, scope: !235)
!267 = !DILocation(line: 191, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !30, line: 191, column: 18)
!269 = !DILocation(line: 195, column: 11, scope: !270)
!270 = distinct !DILexicalBlock(scope: !235, file: !30, line: 195, column: 9)
!271 = !DILocation(line: 195, column: 9, scope: !235)
!272 = !DILocation(line: 195, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !30, line: 195, column: 18)
!274 = !DILocation(line: 195, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !235, file: !30, line: 195, column: 9)
!276 = !DILocation(line: 195, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !30, line: 195, column: 19)
!278 = !DILocation(line: 199, column: 11, scope: !279)
!279 = distinct !DILexicalBlock(scope: !235, file: !30, line: 199, column: 9)
!280 = !DILocation(line: 199, column: 9, scope: !235)
!281 = !DILocation(line: 199, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !30, line: 199, column: 19)
!283 = !DILocation(line: 211, column: 5, scope: !235)
!284 = !DILocation(line: 154, column: 51, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !30, line: 214, column: 5)
!286 = distinct !DILexicalBlock(scope: !235, file: !30, line: 213, column: 5)
!287 = !DILocation(line: 154, column: 11, scope: !285)
!288 = !DILocalVariable(name: "tmp", scope: !167, file: !30, line: 147, type: !10)
!289 = !DILocation(line: 154, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !235, file: !30, line: 154, column: 9)
!291 = !DILocation(line: 154, column: 9, scope: !235)
!292 = !DILocation(line: 154, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !30, line: 154, column: 11)
!294 = distinct !DILexicalBlock(scope: !290, file: !30, line: 154, column: 14)
!295 = !DILocation(line: 154, column: 19, scope: !293)
!296 = !DILocation(line: 154, column: 11, scope: !294)
!297 = !DILocation(line: 156, column: 43, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !30, line: 156, column: 9)
!299 = distinct !DILexicalBlock(scope: !300, file: !30, line: 155, column: 9)
!300 = distinct !DILexicalBlock(scope: !293, file: !30, line: 154, column: 37)
!301 = !DILocation(line: 156, column: 36, scope: !298)
!302 = !DILocation(line: 156, column: 9, scope: !298)
!303 = !DILocation(line: 159, column: 7, scope: !300)
!304 = !DILocation(line: 154, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !293, file: !30, line: 154, column: 11)
!306 = !DILocation(line: 154, column: 19, scope: !305)
!307 = !DILocation(line: 156, column: 43, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !30, line: 156, column: 9)
!309 = distinct !DILexicalBlock(scope: !310, file: !30, line: 155, column: 9)
!310 = distinct !DILexicalBlock(scope: !305, file: !30, line: 154, column: 33)
!311 = !DILocation(line: 156, column: 36, scope: !308)
!312 = !DILocation(line: 156, column: 9, scope: !308)
!313 = !DILocation(line: 159, column: 7, scope: !310)
!314 = !DILocation(line: 158, column: 24, scope: !315)
!315 = distinct !DILexicalBlock(scope: !305, file: !30, line: 159, column: 14)
!316 = !DILocation(line: 158, column: 17, scope: !315)
!317 = !DILocation(line: 158, column: 22, scope: !315)
!318 = !DILocation(line: 160, column: 5, scope: !294)
!319 = !DILocation(line: 156, column: 41, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !30, line: 162, column: 7)
!321 = distinct !DILexicalBlock(scope: !322, file: !30, line: 161, column: 7)
!322 = distinct !DILexicalBlock(scope: !290, file: !30, line: 160, column: 12)
!323 = !DILocation(line: 156, column: 34, scope: !320)
!324 = !DILocation(line: 156, column: 7, scope: !320)
!325 = !DILocation(line: 159, column: 5, scope: !235)
!326 = !DILocation(line: 161, column: 55, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !30, line: 162, column: 5)
!328 = distinct !DILexicalBlock(scope: !235, file: !30, line: 161, column: 5)
!329 = !DILocation(line: 161, column: 15, scope: !327)
!330 = !DILocalVariable(name: "tmp___0", scope: !167, file: !30, line: 148, type: !10)
!331 = !DILocation(line: 161, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !235, file: !30, line: 161, column: 9)
!333 = !DILocation(line: 161, column: 9, scope: !235)
!334 = !DILocation(line: 161, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !30, line: 161, column: 11)
!336 = distinct !DILexicalBlock(scope: !332, file: !30, line: 161, column: 18)
!337 = !DILocation(line: 161, column: 18, scope: !335)
!338 = !DILocation(line: 161, column: 11, scope: !336)
!339 = !DILocation(line: 162, column: 43, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !30, line: 163, column: 9)
!341 = distinct !DILexicalBlock(scope: !342, file: !30, line: 162, column: 9)
!342 = distinct !DILexicalBlock(scope: !335, file: !30, line: 161, column: 23)
!343 = !DILocation(line: 162, column: 36, scope: !340)
!344 = !DILocation(line: 162, column: 9, scope: !340)
!345 = !DILocation(line: 165, column: 7, scope: !342)
!346 = !DILocation(line: 164, column: 26, scope: !347)
!347 = distinct !DILexicalBlock(scope: !335, file: !30, line: 165, column: 14)
!348 = !DILocation(line: 164, column: 17, scope: !347)
!349 = !DILocation(line: 164, column: 24, scope: !347)
!350 = !DILocation(line: 166, column: 5, scope: !336)
!351 = !DILocation(line: 162, column: 41, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !30, line: 168, column: 7)
!353 = distinct !DILexicalBlock(scope: !354, file: !30, line: 167, column: 7)
!354 = distinct !DILexicalBlock(scope: !332, file: !30, line: 166, column: 12)
!355 = !DILocation(line: 162, column: 34, scope: !352)
!356 = !DILocation(line: 162, column: 7, scope: !352)
!357 = !DILocation(line: 165, column: 5, scope: !235)
!358 = !DILocation(line: 167, column: 55, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !30, line: 168, column: 5)
!360 = distinct !DILexicalBlock(scope: !235, file: !30, line: 167, column: 5)
!361 = !DILocation(line: 167, column: 15, scope: !359)
!362 = !DILocalVariable(name: "tmp___1", scope: !167, file: !30, line: 149, type: !10)
!363 = !DILocation(line: 167, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !235, file: !30, line: 167, column: 9)
!365 = !DILocation(line: 167, column: 9, scope: !235)
!366 = !DILocation(line: 167, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !30, line: 167, column: 11)
!368 = distinct !DILexicalBlock(scope: !364, file: !30, line: 167, column: 18)
!369 = !DILocation(line: 167, column: 18, scope: !367)
!370 = !DILocation(line: 167, column: 11, scope: !368)
!371 = !DILocation(line: 168, column: 43, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !30, line: 169, column: 9)
!373 = distinct !DILexicalBlock(scope: !374, file: !30, line: 168, column: 9)
!374 = distinct !DILexicalBlock(scope: !367, file: !30, line: 167, column: 23)
!375 = !DILocation(line: 168, column: 36, scope: !372)
!376 = !DILocation(line: 168, column: 9, scope: !372)
!377 = !DILocation(line: 171, column: 7, scope: !374)
!378 = !DILocation(line: 170, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !367, file: !30, line: 171, column: 14)
!380 = !DILocation(line: 170, column: 17, scope: !379)
!381 = !DILocation(line: 170, column: 22, scope: !379)
!382 = !DILocation(line: 172, column: 5, scope: !368)
!383 = !DILocation(line: 168, column: 41, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !30, line: 174, column: 7)
!385 = distinct !DILexicalBlock(scope: !386, file: !30, line: 173, column: 7)
!386 = distinct !DILexicalBlock(scope: !364, file: !30, line: 172, column: 12)
!387 = !DILocation(line: 168, column: 34, scope: !384)
!388 = !DILocation(line: 168, column: 7, scope: !384)
!389 = !DILocation(line: 171, column: 5, scope: !235)
!390 = !DILocation(line: 173, column: 55, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !30, line: 174, column: 5)
!392 = distinct !DILexicalBlock(scope: !235, file: !30, line: 173, column: 5)
!393 = !DILocation(line: 173, column: 15, scope: !391)
!394 = !DILocalVariable(name: "tmp___2", scope: !167, file: !30, line: 150, type: !10)
!395 = !DILocation(line: 173, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !235, file: !30, line: 173, column: 9)
!397 = !DILocation(line: 173, column: 9, scope: !235)
!398 = !DILocation(line: 173, column: 11, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !30, line: 173, column: 11)
!400 = distinct !DILexicalBlock(scope: !396, file: !30, line: 173, column: 18)
!401 = !DILocation(line: 173, column: 18, scope: !399)
!402 = !DILocation(line: 173, column: 11, scope: !400)
!403 = !DILocation(line: 174, column: 43, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !30, line: 175, column: 9)
!405 = distinct !DILexicalBlock(scope: !406, file: !30, line: 174, column: 9)
!406 = distinct !DILexicalBlock(scope: !399, file: !30, line: 173, column: 23)
!407 = !DILocation(line: 174, column: 36, scope: !404)
!408 = !DILocation(line: 174, column: 9, scope: !404)
!409 = !DILocation(line: 177, column: 7, scope: !406)
!410 = !DILocation(line: 176, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !399, file: !30, line: 177, column: 14)
!412 = !DILocation(line: 176, column: 17, scope: !411)
!413 = !DILocation(line: 176, column: 23, scope: !411)
!414 = !DILocation(line: 177, column: 17, scope: !411)
!415 = !DILocation(line: 177, column: 27, scope: !411)
!416 = !DILocation(line: 179, column: 5, scope: !400)
!417 = !DILocation(line: 174, column: 41, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !30, line: 181, column: 7)
!419 = distinct !DILexicalBlock(scope: !420, file: !30, line: 180, column: 7)
!420 = distinct !DILexicalBlock(scope: !396, file: !30, line: 179, column: 12)
!421 = !DILocation(line: 174, column: 34, scope: !418)
!422 = !DILocation(line: 174, column: 7, scope: !418)
!423 = !DILocation(line: 179, column: 5, scope: !235)
!424 = !DILocation(line: 181, column: 55, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !30, line: 182, column: 5)
!426 = distinct !DILexicalBlock(scope: !235, file: !30, line: 181, column: 5)
!427 = !DILocation(line: 181, column: 15, scope: !425)
!428 = !DILocalVariable(name: "tmp___3", scope: !167, file: !30, line: 151, type: !10)
!429 = !DILocation(line: 181, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !235, file: !30, line: 181, column: 9)
!431 = !DILocation(line: 181, column: 9, scope: !235)
!432 = !DILocation(line: 181, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !30, line: 181, column: 11)
!434 = distinct !DILexicalBlock(scope: !430, file: !30, line: 181, column: 18)
!435 = !DILocation(line: 181, column: 18, scope: !433)
!436 = !DILocation(line: 181, column: 11, scope: !434)
!437 = !DILocation(line: 182, column: 43, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !30, line: 183, column: 9)
!439 = distinct !DILexicalBlock(scope: !440, file: !30, line: 182, column: 9)
!440 = distinct !DILexicalBlock(scope: !433, file: !30, line: 181, column: 23)
!441 = !DILocation(line: 182, column: 36, scope: !438)
!442 = !DILocation(line: 182, column: 9, scope: !438)
!443 = !DILocation(line: 185, column: 7, scope: !440)
!444 = !DILocation(line: 184, column: 25, scope: !445)
!445 = distinct !DILexicalBlock(scope: !433, file: !30, line: 185, column: 14)
!446 = !DILocation(line: 184, column: 17, scope: !445)
!447 = !DILocation(line: 184, column: 23, scope: !445)
!448 = !DILocation(line: 185, column: 17, scope: !445)
!449 = !DILocation(line: 185, column: 27, scope: !445)
!450 = !DILocation(line: 187, column: 5, scope: !434)
!451 = !DILocation(line: 182, column: 41, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !30, line: 189, column: 7)
!453 = distinct !DILexicalBlock(scope: !454, file: !30, line: 188, column: 7)
!454 = distinct !DILexicalBlock(scope: !430, file: !30, line: 187, column: 12)
!455 = !DILocation(line: 182, column: 34, scope: !452)
!456 = !DILocation(line: 182, column: 7, scope: !452)
!457 = !DILocation(line: 187, column: 5, scope: !235)
!458 = !DILocation(line: 189, column: 13, scope: !235)
!459 = !DILocation(line: 189, column: 24, scope: !235)
!460 = !DILocation(line: 190, column: 5, scope: !235)
!461 = !DILocation(line: 192, column: 13, scope: !235)
!462 = !DILocation(line: 192, column: 24, scope: !235)
!463 = !DILocation(line: 193, column: 5, scope: !235)
!464 = !DILocation(line: 196, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !30, line: 197, column: 5)
!466 = distinct !DILexicalBlock(scope: !235, file: !30, line: 196, column: 5)
!467 = !DILocation(line: 197, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !466, file: !30, line: 198, column: 5)
!469 = !DILocation(line: 200, column: 15, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !30, line: 201, column: 5)
!471 = distinct !DILexicalBlock(scope: !235, file: !30, line: 200, column: 5)
!472 = !DILocalVariable(name: "tmp___4", scope: !167, file: !30, line: 152, type: !11)
!473 = !DILocation(line: 200, column: 20, scope: !471)
!474 = !DILocation(line: 200, column: 13, scope: !471)
!475 = !DILocation(line: 200, column: 18, scope: !471)
!476 = !DILocation(line: 201, column: 14, scope: !471)
!477 = !DILocation(line: 201, column: 21, scope: !471)
!478 = !DILocation(line: 201, column: 26, scope: !471)
!479 = !DILocation(line: 202, column: 14, scope: !471)
!480 = !DILocation(line: 202, column: 21, scope: !471)
!481 = !DILocation(line: 202, column: 28, scope: !471)
!482 = !DILocation(line: 203, column: 14, scope: !471)
!483 = !DILocation(line: 203, column: 21, scope: !471)
!484 = !DILocation(line: 203, column: 26, scope: !471)
!485 = !DILocation(line: 204, column: 14, scope: !471)
!486 = !DILocation(line: 204, column: 21, scope: !471)
!487 = !DILocation(line: 204, column: 27, scope: !471)
!488 = !DILocation(line: 205, column: 14, scope: !471)
!489 = !DILocation(line: 205, column: 21, scope: !471)
!490 = !DILocation(line: 205, column: 31, scope: !471)
!491 = !DILocation(line: 206, column: 14, scope: !471)
!492 = !DILocation(line: 206, column: 21, scope: !471)
!493 = !DILocation(line: 206, column: 32, scope: !471)
!494 = !DILocation(line: 207, column: 14, scope: !471)
!495 = !DILocation(line: 207, column: 21, scope: !471)
!496 = !DILocation(line: 207, column: 26, scope: !471)
!497 = !DILocation(line: 208, column: 22, scope: !471)
!498 = !DILocation(line: 209, column: 5, scope: !235)
!499 = !DILocation(line: 212, column: 39, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !30, line: 212, column: 5)
!501 = distinct !DILexicalBlock(scope: !235, file: !30, line: 211, column: 5)
!502 = !DILocation(line: 212, column: 32, scope: !500)
!503 = !DILocation(line: 212, column: 5, scope: !500)
!504 = !DILocation(line: 214, column: 5, scope: !501)
!505 = distinct !{!505, !216, !506}
!506 = !DILocation(line: 217, column: 3, scope: !217)
!507 = !DILocation(line: 219, column: 3, scope: !217)
!508 = !DILocation(line: 215, column: 3, scope: !211)
!509 = distinct !DISubprogram(name: "play_beep", scope: !30, file: !30, line: 217, type: !510, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !29}
!512 = !DILocalVariable(name: "parms", arg: 1, scope: !509, file: !30, line: 217, type: !29)
!513 = !DILocation(line: 217, column: 29, scope: !509)
!514 = !DILocalVariable(name: "__cil_tmp4", scope: !509, file: !30, line: 221, type: !14)
!515 = !DILocation(line: 221, column: 9, scope: !509)
!516 = !DILocalVariable(name: "__cil_tmp5", scope: !509, file: !30, line: 222, type: !14)
!517 = !DILocation(line: 222, column: 9, scope: !509)
!518 = !DILocalVariable(name: "__cil_tmp6", scope: !509, file: !30, line: 223, type: !14)
!519 = !DILocation(line: 223, column: 9, scope: !509)
!520 = !DILocalVariable(name: "__cil_tmp7", scope: !509, file: !30, line: 224, type: !14)
!521 = !DILocation(line: 224, column: 9, scope: !509)
!522 = !DILocalVariable(name: "__cil_tmp8", scope: !509, file: !30, line: 225, type: !14)
!523 = !DILocation(line: 225, column: 9, scope: !509)
!524 = !DILocalVariable(name: "__cil_tmp9", scope: !509, file: !30, line: 226, type: !14)
!525 = !DILocation(line: 226, column: 9, scope: !509)
!526 = !DILocation(line: 221, column: 16, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !30, line: 230, column: 3)
!528 = distinct !DILexicalBlock(scope: !529, file: !30, line: 229, column: 3)
!529 = distinct !DILexicalBlock(scope: !509, file: !30, line: 228, column: 3)
!530 = !DILocation(line: 221, column: 14, scope: !527)
!531 = !DILocation(line: 221, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !30, line: 221, column: 7)
!533 = !DILocation(line: 221, column: 18, scope: !532)
!534 = !DILocation(line: 221, column: 7, scope: !529)
!535 = !DILocation(line: 222, column: 38, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !30, line: 223, column: 5)
!537 = distinct !DILexicalBlock(scope: !538, file: !30, line: 222, column: 5)
!538 = distinct !DILexicalBlock(scope: !532, file: !30, line: 221, column: 25)
!539 = !DILocation(line: 222, column: 5, scope: !536)
!540 = !DILocation(line: 223, column: 5, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !30, line: 224, column: 5)
!542 = !DILocation(line: 224, column: 5, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !30, line: 225, column: 5)
!544 = !DILocation(line: 225, column: 5, scope: !545)
!545 = distinct !DILexicalBlock(scope: !537, file: !30, line: 226, column: 5)
!546 = !DILocalVariable(name: "i", scope: !509, file: !30, line: 219, type: !10)
!547 = !DILocation(line: 0, scope: !509)
!548 = !DILocation(line: 229, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !30, line: 231, column: 3)
!550 = distinct !DILexicalBlock(scope: !529, file: !30, line: 230, column: 3)
!551 = !DILocation(line: 0, scope: !529)
!552 = !DILocation(line: 229, column: 13, scope: !549)
!553 = !DILocation(line: 229, column: 22, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !30, line: 229, column: 9)
!555 = distinct !DILexicalBlock(scope: !549, file: !30, line: 229, column: 13)
!556 = !DILocation(line: 229, column: 14, scope: !554)
!557 = !DILocation(line: 229, column: 9, scope: !555)
!558 = !DILocation(line: 229, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !554, file: !30, line: 229, column: 29)
!560 = !DILocation(line: 230, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !30, line: 232, column: 5)
!562 = distinct !DILexicalBlock(scope: !555, file: !30, line: 231, column: 5)
!563 = !DILocation(line: 230, column: 69, scope: !561)
!564 = !DILocation(line: 230, column: 61, scope: !561)
!565 = !DILocation(line: 230, column: 38, scope: !561)
!566 = !DILocation(line: 230, column: 11, scope: !561)
!567 = !DILocalVariable(name: "tmp", scope: !509, file: !30, line: 220, type: !10)
!568 = !DILocation(line: 230, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !555, file: !30, line: 230, column: 9)
!570 = !DILocation(line: 230, column: 9, scope: !555)
!571 = !DILocation(line: 231, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !30, line: 232, column: 7)
!573 = distinct !DILexicalBlock(scope: !574, file: !30, line: 231, column: 7)
!574 = distinct !DILexicalBlock(scope: !569, file: !30, line: 230, column: 18)
!575 = !DILocation(line: 232, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !30, line: 233, column: 7)
!577 = !DILocation(line: 235, column: 5, scope: !574)
!578 = !DILocation(line: 235, column: 41, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !30, line: 237, column: 5)
!580 = distinct !DILexicalBlock(scope: !555, file: !30, line: 236, column: 5)
!581 = !DILocation(line: 235, column: 33, scope: !579)
!582 = !DILocation(line: 235, column: 5, scope: !579)
!583 = !DILocation(line: 236, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !30, line: 237, column: 5)
!585 = !DILocation(line: 236, column: 5, scope: !584)
!586 = !DILocation(line: 237, column: 15, scope: !587)
!587 = distinct !DILexicalBlock(scope: !555, file: !30, line: 237, column: 9)
!588 = !DILocation(line: 237, column: 9, scope: !587)
!589 = !DILocation(line: 237, column: 9, scope: !555)
!590 = !DILocation(line: 238, column: 43, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !30, line: 239, column: 7)
!592 = distinct !DILexicalBlock(scope: !593, file: !30, line: 238, column: 7)
!593 = distinct !DILexicalBlock(scope: !587, file: !30, line: 237, column: 26)
!594 = !DILocation(line: 238, column: 35, scope: !591)
!595 = !DILocation(line: 238, column: 7, scope: !591)
!596 = !DILocation(line: 241, column: 5, scope: !593)
!597 = !DILocation(line: 237, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !587, file: !30, line: 237, column: 9)
!599 = !DILocation(line: 237, column: 23, scope: !598)
!600 = !DILocation(line: 237, column: 15, scope: !598)
!601 = !DILocation(line: 238, column: 43, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !30, line: 239, column: 7)
!603 = distinct !DILexicalBlock(scope: !604, file: !30, line: 238, column: 7)
!604 = distinct !DILexicalBlock(scope: !598, file: !30, line: 237, column: 29)
!605 = !DILocation(line: 238, column: 35, scope: !602)
!606 = !DILocation(line: 238, column: 7, scope: !602)
!607 = !DILocation(line: 241, column: 5, scope: !604)
!608 = !DILocation(line: 229, column: 7, scope: !555)
!609 = distinct !{!609, !548, !610}
!610 = !DILocation(line: 230, column: 3, scope: !549)
!611 = !DILocation(line: 232, column: 3, scope: !549)
!612 = !DILocation(line: 241, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !30, line: 236, column: 3)
!614 = distinct !DILexicalBlock(scope: !529, file: !30, line: 235, column: 3)
!615 = !DILocation(line: 241, column: 3, scope: !613)
!616 = !DILocation(line: 242, column: 3, scope: !529)
!617 = distinct !DISubprogram(name: "main", scope: !30, file: !30, line: 246, type: !618, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{!10, !10, !170}
!620 = !DILocalVariable(name: "argc", arg: 1, scope: !617, file: !30, line: 246, type: !10)
!621 = !DILocation(line: 0, scope: !617)
!622 = !DILocalVariable(name: "argv", arg: 2, scope: !617, file: !30, line: 246, type: !170)
!623 = !DILocalVariable(name: "sin", scope: !617, file: !30, line: 248, type: !624)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32768, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 4096)
!627 = !DILocation(line: 248, column: 8, scope: !617)
!628 = !DILocalVariable(name: "__cil_tmp9", scope: !617, file: !30, line: 254, type: !11)
!629 = !DILocation(line: 254, column: 9, scope: !617)
!630 = !DILocation(line: 249, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !30, line: 258, column: 3)
!632 = distinct !DILexicalBlock(scope: !633, file: !30, line: 257, column: 3)
!633 = distinct !DILexicalBlock(scope: !617, file: !30, line: 256, column: 3)
!634 = !DILocalVariable(name: "tmp", scope: !617, file: !30, line: 251, type: !11)
!635 = !DILocation(line: 249, column: 11, scope: !632)
!636 = !DILocalVariable(name: "parms", scope: !617, file: !30, line: 250, type: !28)
!637 = !DILocation(line: 250, column: 10, scope: !632)
!638 = !DILocation(line: 250, column: 15, scope: !632)
!639 = !DILocation(line: 251, column: 10, scope: !632)
!640 = !DILocation(line: 251, column: 17, scope: !632)
!641 = !DILocation(line: 252, column: 10, scope: !632)
!642 = !DILocation(line: 252, column: 15, scope: !632)
!643 = !DILocation(line: 253, column: 10, scope: !632)
!644 = !DILocation(line: 253, column: 16, scope: !632)
!645 = !DILocation(line: 254, column: 10, scope: !632)
!646 = !DILocation(line: 254, column: 20, scope: !632)
!647 = !DILocation(line: 255, column: 10, scope: !632)
!648 = !DILocation(line: 255, column: 21, scope: !632)
!649 = !DILocation(line: 256, column: 10, scope: !632)
!650 = !DILocation(line: 256, column: 15, scope: !632)
!651 = !DILocation(line: 258, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !632, file: !30, line: 257, column: 3)
!653 = !DILocation(line: 259, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !632, file: !30, line: 260, column: 3)
!655 = !DILocation(line: 264, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !30, line: 263, column: 3)
!657 = distinct !DILexicalBlock(scope: !633, file: !30, line: 262, column: 3)
!658 = !DILocation(line: 0, scope: !633)
!659 = !DILocation(line: 264, column: 13, scope: !656)
!660 = !DILocation(line: 264, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !30, line: 264, column: 9)
!662 = distinct !DILexicalBlock(scope: !656, file: !30, line: 264, column: 13)
!663 = !DILocation(line: 264, column: 9, scope: !662)
!664 = !DILocation(line: 264, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !30, line: 264, column: 18)
!666 = !DILocation(line: 265, column: 19, scope: !662)
!667 = !DILocalVariable(name: "next", scope: !617, file: !30, line: 252, type: !28)
!668 = !DILocation(line: 267, column: 16, scope: !669)
!669 = distinct !DILexicalBlock(scope: !662, file: !30, line: 267, column: 9)
!670 = !DILocation(line: 267, column: 9, scope: !669)
!671 = !DILocation(line: 267, column: 9, scope: !662)
!672 = !DILocation(line: 275, column: 40, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !30, line: 269, column: 7)
!674 = distinct !DILexicalBlock(scope: !675, file: !30, line: 268, column: 7)
!675 = distinct !DILexicalBlock(scope: !669, file: !30, line: 267, column: 28)
!676 = !DILocation(line: 275, column: 7, scope: !673)
!677 = !DILocation(line: 276, column: 40, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !30, line: 278, column: 7)
!679 = !DILocation(line: 276, column: 7, scope: !678)
!680 = !DILocation(line: 277, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !30, line: 281, column: 7)
!682 = distinct !DILexicalBlock(scope: !675, file: !30, line: 280, column: 7)
!683 = !DILocation(line: 277, column: 17, scope: !681)
!684 = !DILocation(line: 277, column: 50, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !30, line: 281, column: 9)
!686 = distinct !DILexicalBlock(scope: !687, file: !30, line: 280, column: 9)
!687 = distinct !DILexicalBlock(scope: !681, file: !30, line: 277, column: 17)
!688 = !DILocation(line: 277, column: 88, scope: !685)
!689 = !DILocation(line: 277, column: 19, scope: !685)
!690 = !DILocalVariable(name: "tmp___0", scope: !617, file: !30, line: 253, type: !14)
!691 = !DILocation(line: 277, column: 15, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !30, line: 277, column: 13)
!693 = !DILocation(line: 277, column: 13, scope: !687)
!694 = !DILocation(line: 277, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !30, line: 277, column: 24)
!696 = !DILocation(line: 278, column: 20, scope: !697)
!697 = distinct !DILexicalBlock(scope: !687, file: !30, line: 278, column: 13)
!698 = !DILocation(line: 278, column: 31, scope: !697)
!699 = !DILocation(line: 278, column: 13, scope: !687)
!700 = !DILocation(line: 279, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !30, line: 278, column: 37)
!702 = !DILocalVariable(name: "ptr", scope: !617, file: !30, line: 249, type: !14)
!703 = !DILocation(line: 279, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !30, line: 281, column: 11)
!705 = distinct !DILexicalBlock(scope: !701, file: !30, line: 280, column: 11)
!706 = !DILocation(line: 0, scope: !701)
!707 = !DILocation(line: 279, column: 21, scope: !704)
!708 = !DILocation(line: 279, column: 19, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !30, line: 279, column: 17)
!710 = distinct !DILexicalBlock(scope: !704, file: !30, line: 279, column: 21)
!711 = !DILocation(line: 279, column: 17, scope: !710)
!712 = !DILocation(line: 279, column: 15, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !30, line: 279, column: 25)
!714 = !DILocation(line: 280, column: 27, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !30, line: 282, column: 13)
!716 = distinct !DILexicalBlock(scope: !710, file: !30, line: 281, column: 13)
!717 = !DILocation(line: 280, column: 21, scope: !715)
!718 = !DILocation(line: 280, column: 13, scope: !715)
!719 = !DILocation(line: 281, column: 20, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !30, line: 282, column: 13)
!721 = !DILocation(line: 281, column: 13, scope: !720)
!722 = !DILocation(line: 282, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !716, file: !30, line: 283, column: 13)
!724 = !DILocation(line: 279, column: 17, scope: !716)
!725 = distinct !{!725, !703, !726}
!726 = !DILocation(line: 281, column: 11, scope: !704)
!727 = !DILocation(line: 283, column: 11, scope: !704)
!728 = !DILocation(line: 286, column: 9, scope: !701)
!729 = !DILocation(line: 285, column: 50, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !30, line: 288, column: 11)
!731 = distinct !DILexicalBlock(scope: !732, file: !30, line: 287, column: 11)
!732 = distinct !DILexicalBlock(scope: !697, file: !30, line: 286, column: 16)
!733 = !DILocation(line: 285, column: 82, scope: !730)
!734 = !DILocation(line: 285, column: 11, scope: !730)
!735 = !DILocation(line: 286, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !30, line: 287, column: 11)
!737 = distinct !{!737, !680, !738}
!738 = !DILocation(line: 290, column: 7, scope: !681)
!739 = !DILocation(line: 292, column: 7, scope: !681)
!740 = !DILocation(line: 295, column: 5, scope: !675)
!741 = !DILocation(line: 290, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !30, line: 297, column: 7)
!743 = distinct !DILexicalBlock(scope: !744, file: !30, line: 296, column: 7)
!744 = distinct !DILexicalBlock(scope: !669, file: !30, line: 295, column: 12)
!745 = !DILocation(line: 294, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !30, line: 295, column: 5)
!747 = distinct !DILexicalBlock(scope: !662, file: !30, line: 294, column: 5)
!748 = !DILocation(line: 294, column: 5, scope: !746)
!749 = distinct !{!749, !655, !750}
!750 = !DILocation(line: 297, column: 3, scope: !656)
!751 = !DILocation(line: 299, column: 3, scope: !656)
!752 = !DILocation(line: 298, column: 3, scope: !633)
