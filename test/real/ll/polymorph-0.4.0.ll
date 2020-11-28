; ModuleID = '/tmp/tmp.ll'
source_filename = "c/polymorph-0.4.0.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__anonstruct_polym_t_25 = type { [2048 x i8], %struct.__anonstruct_xtn_t_24*, %struct.polym_t* }
%struct.__anonstruct_xtn_t_24 = type { [16 x i8], %struct.xtn_t* }
%struct.xtn_t = type opaque
%struct.polym_t = type opaque

@init_file = global [14 x i8] c"/polymorphrc\00\00", align 1, !dbg !0
@hidn_file = global [15 x i8] c"/.polymorphrc\00\00", align 1, !dbg !135
@.str = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/usr/local/etc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"POLYMORPH_DIR\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"list is NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"polymorph ran out of memory while initializing\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"in the interest of saving files,\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"polymorph terminated\0A\00", align 1
@hidden = global i32 0, align 4, !dbg !141
@track = global i32 0, align 4, !dbg !144
@clean = global i32 0, align 4, !dbg !146
@target = common global [2048 x i8] zeroinitializer, align 16, !dbg !150
@wd = common global [2048 x i8] zeroinitializer, align 16, !dbg !152
@curr_dir = common global %struct.__dirstream* null, align 8, !dbg !171
@.str.10 = private unnamed_addr constant [56 x i8] c"polymorph could not open the current working directory\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"maybe you don't have permissions?\0A\00", align 1
@victim = common global %struct.dirent* null, align 8, !dbg !154
@status = common global %struct.stat zeroinitializer, align 8, !dbg !169
@.str.12 = private unnamed_addr constant [39 x i8] c"polymorph encountered something funky\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"achtvf:\00", align 1
@optarg = external global i8*, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"polymorph v%s -- filename convertor\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0.4.0\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"written by Gerall Kahla.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"-a  all      convert hidden files\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"-c\09clean\09\09 reduce a file's name to just after the last backslash\0A\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"-f  file     convert this file to a name with all lowercase letters\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"-h  help     print this message and exit\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"-t  track    track down the targets of symlinks and convert them\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"-v  version  print the version number and exit\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"polymorph v%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"please run 'polymorph -h' for commandline options\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"target exists -- skipping %s...\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"polymorph had trouble converting %s to %s...\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"the file is now possibly corrupt\0A\00", align 1
@tmpbuf = common global [2048 x i8] zeroinitializer, align 16, !dbg !148

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_polym_t_25* @grok_rcfile() #0 !dbg !186 {
entry:
  %where = alloca [2048 x i8], align 16
  call void @llvm.dbg.declare(metadata [2048 x i8]* %where, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata !4, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata !4, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata !4, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata !4, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata !4, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata !4, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata !4, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* null, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 0, metadata !207, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !206
  br label %while.body, !dbg !209

while.body:                                       ; preds = %if.end37, %entry
  %rcfile.0 = phi %struct._IO_FILE* [ undef, %entry ], [ %call30, %if.end37 ]
  %found.0 = phi i32 [ 0, %entry ], [ %found.1, %if.end37 ], !dbg !213
  %step.0 = phi i32 [ 0, %entry ], [ %inc, %if.end37 ], !dbg !213
  call void @llvm.dbg.value(metadata i32 %step.0, metadata !207, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 %found.0, metadata !208, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %rcfile.0, metadata !214, metadata !DIExpression()), !dbg !206
  br label %while_continue___0, !dbg !215

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !215

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %found.0, 0, !dbg !216
  br i1 %tobool, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !220

if.end:                                           ; preds = %while_continue
  %cmp = icmp eq i32 %step.0, 3, !dbg !222
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !225

if.then1:                                         ; preds = %if.end
  br label %case_3, !dbg !226

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp eq i32 %step.0, 2, !dbg !228
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !230

if.then4:                                         ; preds = %if.end2
  br label %case_2, !dbg !231

if.end5:                                          ; preds = %if.end2
  %cmp6 = icmp eq i32 %step.0, 1, !dbg !233
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !235

if.then7:                                         ; preds = %if.end5
  br label %case_1, !dbg !236

if.end8:                                          ; preds = %if.end5
  br label %switch_default, !dbg !238

case_3:                                           ; preds = %if.then1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 2048, i1 false), !dbg !239
  %arraydecay9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !242
  %call = call i8* @strcpy(i8* %arraydecay9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8, !dbg !244
  %arraydecay10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !245
  %call11 = call i8* @strcat(i8* %arraydecay10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @init_file, i32 0, i32 0)) #8, !dbg !247
  br label %switch_break, !dbg !248

case_2:                                           ; preds = %if.then4
  %arraydecay12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !249
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay12, i8 0, i64 2048, i1 false), !dbg !249
  %arraydecay13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !252
  %call14 = call i8* @strcpy(i8* %arraydecay13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !254
  %arraydecay15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !255
  %call16 = call i8* @strcat(i8* %arraydecay15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @init_file, i32 0, i32 0)) #8, !dbg !257
  br label %switch_break, !dbg !258

case_1:                                           ; preds = %if.then7
  %arraydecay17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay17, i8 0, i64 2048, i1 false), !dbg !259
  %call18 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !262
  call void @llvm.dbg.value(metadata i8* %call18, metadata !264, metadata !DIExpression()), !dbg !206
  %arraydecay19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !265
  %call20 = call i8* @strcpy(i8* %arraydecay19, i8* %call18) #8, !dbg !267
  %arraydecay21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !268
  %call22 = call i8* @strcat(i8* %arraydecay21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @hidn_file, i32 0, i32 0)) #8, !dbg !270
  br label %switch_break, !dbg !271

switch_default:                                   ; preds = %if.end8
  %arraydecay23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !272
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay23, i8 0, i64 2048, i1 false), !dbg !272
  %call24 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !275
  call void @llvm.dbg.value(metadata i8* %call24, metadata !277, metadata !DIExpression()), !dbg !206
  %arraydecay25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !278
  %call26 = call i8* @strcpy(i8* %arraydecay25, i8* %call24) #8, !dbg !280
  %arraydecay27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !281
  %call28 = call i8* @strcat(i8* %arraydecay27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @init_file, i32 0, i32 0)) #8, !dbg !283
  br label %switch_break, !dbg !284

switch_break:                                     ; preds = %switch_default, %case_1, %case_2, %case_3
  %inc = add nsw i32 %step.0, 1, !dbg !285
  call void @llvm.dbg.value(metadata i32 %inc, metadata !207, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !214, metadata !DIExpression()), !dbg !206
  %arraydecay29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %where, i32 0, i32 0, !dbg !287
  %call30 = call %struct._IO_FILE* @fopen(i8* %arraydecay29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !289
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call30, metadata !214, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 1, metadata !208, metadata !DIExpression()), !dbg !206
  %0 = ptrtoint %struct._IO_FILE* %call30 to i64, !dbg !290
  %cmp31 = icmp eq i64 %0, 0, !dbg !292
  br i1 %cmp31, label %if.then32, label %if.end34, !dbg !293

if.then32:                                        ; preds = %switch_break
  %call33 = call i32 @fclose(%struct._IO_FILE* %call30), !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !206
  br label %if.end34, !dbg !298

if.end34:                                         ; preds = %if.then32, %switch_break
  %found.1 = phi i32 [ 0, %if.then32 ], [ 1, %switch_break ], !dbg !299
  call void @llvm.dbg.value(metadata i32 %found.1, metadata !208, metadata !DIExpression()), !dbg !206
  %cmp35 = icmp sge i32 %inc, 3, !dbg !300
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !302

if.then36:                                        ; preds = %if.end34
  br label %while_break, !dbg !303

if.end37:                                         ; preds = %if.end34
  br label %while.body, !dbg !209, !llvm.loop !305

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !307

while_break:                                      ; preds = %while_break___0, %if.then36, %if.then
  %rcfile.1 = phi %struct._IO_FILE* [ %rcfile.0, %if.then ], [ %call30, %if.then36 ], [ undef, %while_break___0 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %rcfile.1, metadata !214, metadata !DIExpression()), !dbg !206
  %1 = ptrtoint %struct._IO_FILE* %rcfile.1 to i64, !dbg !308
  %cmp38 = icmp eq i64 %1, 0, !dbg !310
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !311

if.then39:                                        ; preds = %while_break
  br label %return, !dbg !312

if.end40:                                         ; preds = %while_break
  %call41 = call %struct.__anonstruct_polym_t_25* @parse_rcfile(%struct._IO_FILE* %rcfile.1, %struct.__anonstruct_polym_t_25* null), !dbg !314
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %call41, metadata !205, metadata !DIExpression()), !dbg !206
  %call42 = call i32 @fclose(%struct._IO_FILE* %rcfile.1), !dbg !317
  %2 = ptrtoint %struct.__anonstruct_polym_t_25* %call41 to i64, !dbg !319
  %cmp43 = icmp eq i64 %2, 0, !dbg !321
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !322

if.then44:                                        ; preds = %if.end40
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !323
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !327
  br label %if.end46, !dbg !328

if.end46:                                         ; preds = %if.then44, %if.end40
  br label %return, !dbg !329

return:                                           ; preds = %if.end46, %if.then39
  %retval.0 = phi %struct.__anonstruct_polym_t_25* [ null, %if.then39 ], [ %call41, %if.end46 ], !dbg !213
  ret %struct.__anonstruct_polym_t_25* %retval.0, !dbg !330
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_polym_t_25* @parse_rcfile(%struct._IO_FILE* %rcfile, %struct.__anonstruct_polym_t_25* %u_prefs) #0 !dbg !331 {
entry:
  %target_dir = alloca [2048 x i8], align 16
  %after_dir = alloca [2048 x i8], align 16
  %newxtn = alloca [16 x i8], align 16
  %buf = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %rcfile, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %u_prefs, metadata !336, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata [2048 x i8]* %target_dir, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata [2048 x i8]* %after_dir, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata [16 x i8]* %newxtn, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [2048 x i8]* %buf, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata !4, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata !4, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata !4, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata !4, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata !4, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* null, metadata !355, metadata !DIExpression()), !dbg !335
  br label %while.body, !dbg !356

while.body:                                       ; preds = %while_break___0, %entry
  br label %while_continue___1, !dbg !360

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !360

while_continue:                                   ; preds = %if.then33, %if.then27, %if.then21, %if.then15, %if.then9, %if.then3, %while_continue___1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0, !dbg !361
  %call = call i8* @fgets(i8* %arraydecay, i32 2048, %struct._IO_FILE* %rcfile), !dbg !365
  call void @llvm.dbg.value(metadata i8* %call, metadata !366, metadata !DIExpression()), !dbg !335
  %0 = ptrtoint i8* %call to i64, !dbg !367
  %cmp = icmp ne i64 %0, 0, !dbg !369
  br i1 %cmp, label %if.end, label %if.then, !dbg !370

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !371

if.end:                                           ; preds = %while_continue
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0, !dbg !373
  %1 = load i8, i8* %arrayidx, align 16, !dbg !373
  %conv = sext i8 %1 to i32, !dbg !375
  %cmp1 = icmp eq i32 %conv, 35, !dbg !376
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !377

if.then3:                                         ; preds = %if.end
  br label %while_continue, !dbg !378

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0, !dbg !380
  %2 = load i8, i8* %arrayidx5, align 16, !dbg !380
  %conv6 = sext i8 %2 to i32, !dbg !382
  %cmp7 = icmp eq i32 %conv6, 33, !dbg !383
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !384

if.then9:                                         ; preds = %if.end4
  br label %while_continue, !dbg !385

if.end10:                                         ; preds = %if.end4
  %arrayidx11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0, !dbg !387
  %3 = load i8, i8* %arrayidx11, align 16, !dbg !387
  %conv12 = sext i8 %3 to i32, !dbg !389
  %cmp13 = icmp eq i32 %conv12, 59, !dbg !390
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !391

if.then15:                                        ; preds = %if.end10
  br label %while_continue, !dbg !392

if.end16:                                         ; preds = %if.end10
  %arrayidx17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0, !dbg !394
  %4 = load i8, i8* %arrayidx17, align 16, !dbg !394
  %conv18 = sext i8 %4 to i32, !dbg !396
  %cmp19 = icmp eq i32 %conv18, 58, !dbg !397
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !398

if.then21:                                        ; preds = %if.end16
  br label %while_continue, !dbg !399

if.end22:                                         ; preds = %if.end16
  %call23 = call i16** @__ctype_b_loc() #9, !dbg !401
  call void @llvm.dbg.value(metadata i16** %call23, metadata !404, metadata !DIExpression()), !dbg !335
  %5 = load i16*, i16** %call23, align 8, !dbg !408
  %arrayidx24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0, !dbg !410
  %6 = load i8, i8* %arrayidx24, align 16, !dbg !410
  %conv25 = sext i8 %6 to i32, !dbg !411
  %idx.ext = sext i32 %conv25 to i64, !dbg !412
  %add.ptr = getelementptr inbounds i16, i16* %5, i64 %idx.ext, !dbg !412
  %7 = load i16, i16* %add.ptr, align 2, !dbg !413
  %conv26 = zext i16 %7 to i32, !dbg !414
  %and = and i32 %conv26, 8192, !dbg !415
  %tobool = icmp ne i32 %and, 0, !dbg !415
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !416

if.then27:                                        ; preds = %if.end22
  br label %while_continue, !dbg !417

if.end28:                                         ; preds = %if.end22
  %arraydecay29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0, !dbg !419
  %call30 = call i64 @strlen(i8* %arraydecay29) #10, !dbg !422
  call void @llvm.dbg.value(metadata i64 %call30, metadata !423, metadata !DIExpression()), !dbg !335
  %cmp31 = icmp ult i64 %call30, 16, !dbg !424
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !426

if.then33:                                        ; preds = %if.end28
  br label %while_continue, !dbg !427

if.end34:                                         ; preds = %if.end28
  %arraydecay35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0, !dbg !429
  %call36 = call i8* @strchr(i8* %arraydecay35, i32 58) #10, !dbg !432
  call void @llvm.dbg.value(metadata i8* %call36, metadata !433, metadata !DIExpression()), !dbg !335
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !434
  %arraydecay38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0, !dbg !436
  %call39 = call i8* @strcpy(i8* %arraydecay37, i8* %arraydecay38) #8, !dbg !437
  %arraydecay40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i32 0, i32 0, !dbg !438
  %call41 = call i8* @strcpy(i8* %arraydecay40, i8* %call36) #8, !dbg !440
  %arraydecay42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !441
  %call43 = call i8* @strchr(i8* %arraydecay42, i32 58) #10, !dbg !443
  call void @llvm.dbg.value(metadata i8* %call43, metadata !433, metadata !DIExpression()), !dbg !335
  store i8 0, i8* %call43, align 1, !dbg !444
  %arraydecay44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !445
  call void @trim_whitespace(i8* %arraydecay44), !dbg !447
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* null, metadata !448, metadata !DIExpression()), !dbg !335
  %8 = ptrtoint %struct.__anonstruct_polym_t_25* %u_prefs to i64, !dbg !449
  %cmp45 = icmp eq i64 %8, 0, !dbg !451
  br i1 %cmp45, label %if.then47, label %if.else, !dbg !452

if.then47:                                        ; preds = %if.end34
  %arraydecay48 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !453
  %call49 = call %struct.__anonstruct_polym_t_25* @add_dir(%struct.__anonstruct_polym_t_25* %u_prefs, i8* %arraydecay48), !dbg !457
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %call49, metadata !448, metadata !DIExpression()), !dbg !335
  br label %if.end58, !dbg !458

if.else:                                          ; preds = %if.end34
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !459
  %call51 = call %struct.__anonstruct_polym_t_25* @find_dir(%struct.__anonstruct_polym_t_25* %u_prefs, i8* %arraydecay50), !dbg !463
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %call51, metadata !448, metadata !DIExpression()), !dbg !335
  %9 = ptrtoint %struct.__anonstruct_polym_t_25* %call51 to i64, !dbg !464
  %cmp52 = icmp eq i64 %9, 0, !dbg !466
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !467

if.then54:                                        ; preds = %if.else
  %arraydecay55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %target_dir, i32 0, i32 0, !dbg !468
  %call56 = call %struct.__anonstruct_polym_t_25* @add_dir(%struct.__anonstruct_polym_t_25* %u_prefs, i8* %arraydecay55), !dbg !472
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %call56, metadata !448, metadata !DIExpression()), !dbg !335
  br label %if.end57, !dbg !473

if.end57:                                         ; preds = %if.then54, %if.else
  %tmpdir.0 = phi %struct.__anonstruct_polym_t_25* [ %call56, %if.then54 ], [ %call51, %if.else ], !dbg !474
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %tmpdir.0, metadata !448, metadata !DIExpression()), !dbg !335
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then47
  %tmpdir.1 = phi %struct.__anonstruct_polym_t_25* [ %call49, %if.then47 ], [ %tmpdir.0, %if.end57 ], !dbg !475
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %tmpdir.1, metadata !448, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* null, metadata !476, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !335
  br label %while.body60, !dbg !479

while.body60:                                     ; preds = %__Cont, %if.end58
  %e.0 = phi i32 [ 0, %if.end58 ], [ %e.3, %__Cont ], !dbg !482
  %i.0 = phi i32 [ 0, %if.end58 ], [ %inc118, %__Cont ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !478, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !477, metadata !DIExpression()), !dbg !335
  br label %while_continue___2, !dbg !484

while_continue___2:                               ; preds = %while.body60
  br label %while_continue___0, !dbg !484

while_continue___0:                               ; preds = %while_continue___2
  %arraydecay61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i32 0, i32 0, !dbg !485
  %call62 = call i64 @strlen(i8* %arraydecay61) #10, !dbg !489
  call void @llvm.dbg.value(metadata i64 %call62, metadata !490, metadata !DIExpression()), !dbg !335
  %conv63 = sext i32 %i.0 to i64, !dbg !491
  %cmp64 = icmp ult i64 %conv63, %call62, !dbg !493
  br i1 %cmp64, label %if.end67, label %if.then66, !dbg !494

if.then66:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !495

if.end67:                                         ; preds = %while_continue___0
  %call68 = call i16** @__ctype_b_loc() #9, !dbg !497
  call void @llvm.dbg.value(metadata i16** %call68, metadata !500, metadata !DIExpression()), !dbg !335
  %10 = load i16*, i16** %call68, align 8, !dbg !501
  %idxprom = sext i32 %i.0 to i64, !dbg !503
  %arrayidx69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i64 0, i64 %idxprom, !dbg !503
  %11 = load i8, i8* %arrayidx69, align 1, !dbg !503
  %conv70 = sext i8 %11 to i32, !dbg !504
  %idx.ext71 = sext i32 %conv70 to i64, !dbg !505
  %add.ptr72 = getelementptr inbounds i16, i16* %10, i64 %idx.ext71, !dbg !505
  %12 = load i16, i16* %add.ptr72, align 2, !dbg !506
  %conv73 = zext i16 %12 to i32, !dbg !507
  %and74 = and i32 %conv73, 8192, !dbg !508
  %tobool75 = icmp ne i32 %and74, 0, !dbg !508
  br i1 %tobool75, label %if.then76, label %if.else77, !dbg !509

if.then76:                                        ; preds = %if.end67
  br label %_L, !dbg !510

if.else77:                                        ; preds = %if.end67
  %idxprom78 = sext i32 %i.0 to i64, !dbg !512
  %arrayidx79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i64 0, i64 %idxprom78, !dbg !512
  %13 = load i8, i8* %arrayidx79, align 1, !dbg !512
  %conv80 = sext i8 %13 to i32, !dbg !514
  %cmp81 = icmp eq i32 %conv80, 44, !dbg !515
  br i1 %cmp81, label %if.then83, label %if.end101, !dbg !507

if.then83:                                        ; preds = %if.else77
  br label %_L, !dbg !516

_L:                                               ; preds = %if.then83, %if.then76
  %arraydecay84 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i32 0, i32 0, !dbg !517
  %call85 = call i64 @strlen(i8* %arraydecay84) #10, !dbg !521
  call void @llvm.dbg.value(metadata i64 %call85, metadata !522, metadata !DIExpression()), !dbg !335
  %cmp86 = icmp ugt i64 %call85, 1, !dbg !523
  br i1 %cmp86, label %if.then88, label %if.end100, !dbg !525

if.then88:                                        ; preds = %_L
  %arraydecay89 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i32 0, i32 0, !dbg !526
  %call90 = call %struct.__anonstruct_xtn_t_24* @find_xtn(%struct.__anonstruct_xtn_t_24* null, i8* %arraydecay89), !dbg !530
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %call90, metadata !531, metadata !DIExpression()), !dbg !335
  %14 = ptrtoint %struct.__anonstruct_xtn_t_24* %call90 to i64, !dbg !532
  %cmp91 = icmp ne i64 %14, 0, !dbg !534
  br i1 %cmp91, label %if.then93, label %if.end96, !dbg !535

if.then93:                                        ; preds = %if.then88
  %arraydecay94 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i32 0, i32 0, !dbg !536
  %call95 = call i8* @strcpy(i8* %arraydecay94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !540
  br label %__Cont, !dbg !541

if.end96:                                         ; preds = %if.then88
  %arraydecay97 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i32 0, i32 0, !dbg !542
  %call98 = call %struct.__anonstruct_xtn_t_24* @add_xtn(%struct.__anonstruct_xtn_t_24* null, i8* %arraydecay97), !dbg !545
  %arraydecay99 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i32 0, i32 0, !dbg !546
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay99, i8 0, i64 16, i1 false), !dbg !546
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !335
  br label %if.end100, !dbg !548

if.end100:                                        ; preds = %if.end96, %_L
  %e.1 = phi i32 [ 0, %if.end96 ], [ %e.0, %_L ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !477, metadata !DIExpression()), !dbg !335
  br label %__Cont, !dbg !549

if.end101:                                        ; preds = %if.else77
  br label %if.end102

if.end102:                                        ; preds = %if.end101
  %call103 = call i16** @__ctype_b_loc() #9, !dbg !550
  call void @llvm.dbg.value(metadata i16** %call103, metadata !553, metadata !DIExpression()), !dbg !335
  %15 = load i16*, i16** %call103, align 8, !dbg !554
  %idxprom104 = sext i32 %i.0 to i64, !dbg !556
  %arrayidx105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i64 0, i64 %idxprom104, !dbg !556
  %16 = load i8, i8* %arrayidx105, align 1, !dbg !556
  %conv106 = sext i8 %16 to i32, !dbg !557
  %idx.ext107 = sext i32 %conv106 to i64, !dbg !558
  %add.ptr108 = getelementptr inbounds i16, i16* %15, i64 %idx.ext107, !dbg !558
  %17 = load i16, i16* %add.ptr108, align 2, !dbg !559
  %conv109 = zext i16 %17 to i32, !dbg !560
  %and110 = and i32 %conv109, 16384, !dbg !561
  %tobool111 = icmp ne i32 %and110, 0, !dbg !561
  br i1 %tobool111, label %if.then112, label %if.end117, !dbg !562

if.then112:                                       ; preds = %if.end102
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !563, metadata !DIExpression()), !dbg !335
  %inc = add nsw i32 %e.0, 1, !dbg !564
  call void @llvm.dbg.value(metadata i32 %inc, metadata !477, metadata !DIExpression()), !dbg !335
  %idxprom113 = sext i32 %i.0 to i64, !dbg !566
  %arrayidx114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %after_dir, i64 0, i64 %idxprom113, !dbg !566
  %18 = load i8, i8* %arrayidx114, align 1, !dbg !566
  %idxprom115 = sext i32 %e.0 to i64, !dbg !567
  %arrayidx116 = getelementptr inbounds [16 x i8], [16 x i8]* %newxtn, i64 0, i64 %idxprom115, !dbg !567
  store i8 %18, i8* %arrayidx116, align 1, !dbg !568
  br label %if.end117, !dbg !569

if.end117:                                        ; preds = %if.then112, %if.end102
  %e.2 = phi i32 [ %inc, %if.then112 ], [ %e.0, %if.end102 ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %e.2, metadata !477, metadata !DIExpression()), !dbg !335
  br label %__Cont, !dbg !570

__Cont:                                           ; preds = %if.end117, %if.end100, %if.then93
  %e.3 = phi i32 [ %e.0, %if.then93 ], [ %e.1, %if.end100 ], [ %e.2, %if.end117 ], !dbg !483
  call void @llvm.dbg.value(metadata i32 %e.3, metadata !477, metadata !DIExpression()), !dbg !335
  %inc118 = add nsw i32 %i.0, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %inc118, metadata !478, metadata !DIExpression()), !dbg !335
  br label %while.body60, !dbg !479, !llvm.loop !572

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !574

while_break___0:                                  ; preds = %while_break___2, %if.then66
  %extns = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %tmpdir.1, i32 0, i32 1, !dbg !575
  store %struct.__anonstruct_xtn_t_24* null, %struct.__anonstruct_xtn_t_24** %extns, align 8, !dbg !576
  br label %while.body, !dbg !356, !llvm.loop !577

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !579

while_break:                                      ; preds = %while_break___1, %if.then
  ret %struct.__anonstruct_polym_t_25* null, !dbg !580
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind ssp uwtable
define void @trim_whitespace(i8* %victim___0) #0 !dbg !581 {
entry:
  %new_str = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %victim___0, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata [2048 x i8]* %new_str, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata !4, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 0, metadata !591, metadata !DIExpression()), !dbg !585
  br label %while.body, !dbg !592

while.body:                                       ; preds = %__Cont, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %__Cont ], !dbg !596
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %__Cont ], !dbg !597
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !590, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !591, metadata !DIExpression()), !dbg !585
  br label %while_continue___0, !dbg !598

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !598

while_continue:                                   ; preds = %while_continue___0
  %call = call i64 @strlen(i8* %victim___0) #10, !dbg !599
  call void @llvm.dbg.value(metadata i64 %call, metadata !603, metadata !DIExpression()), !dbg !585
  %conv = sext i32 %i.0 to i64, !dbg !604
  %cmp = icmp ult i64 %conv, %call, !dbg !606
  br i1 %cmp, label %if.end, label %if.then, !dbg !607

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !608

if.end:                                           ; preds = %while_continue
  %call2 = call i16** @__ctype_b_loc() #9, !dbg !610
  call void @llvm.dbg.value(metadata i16** %call2, metadata !613, metadata !DIExpression()), !dbg !585
  %0 = load i16*, i16** %call2, align 8, !dbg !614
  %idx.ext = sext i32 %i.0 to i64, !dbg !616
  %add.ptr = getelementptr inbounds i8, i8* %victim___0, i64 %idx.ext, !dbg !616
  %1 = load i8, i8* %add.ptr, align 1, !dbg !617
  %conv3 = sext i8 %1 to i32, !dbg !618
  %idx.ext4 = sext i32 %conv3 to i64, !dbg !619
  %add.ptr5 = getelementptr inbounds i16, i16* %0, i64 %idx.ext4, !dbg !619
  %2 = load i16, i16* %add.ptr5, align 2, !dbg !620
  %conv6 = zext i16 %2 to i32, !dbg !621
  %and = and i32 %conv6, 8192, !dbg !622
  %tobool = icmp ne i32 %and, 0, !dbg !622
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !623

if.then7:                                         ; preds = %if.end
  br label %__Cont, !dbg !624

if.end8:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !626, metadata !DIExpression()), !dbg !585
  %inc = add nsw i32 %j.0, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %inc, metadata !590, metadata !DIExpression()), !dbg !585
  %idx.ext9 = sext i32 %i.0 to i64, !dbg !628
  %add.ptr10 = getelementptr inbounds i8, i8* %victim___0, i64 %idx.ext9, !dbg !628
  %3 = load i8, i8* %add.ptr10, align 1, !dbg !629
  %idxprom = sext i32 %j.0 to i64, !dbg !630
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %new_str, i64 0, i64 %idxprom, !dbg !630
  store i8 %3, i8* %arrayidx, align 1, !dbg !631
  br label %__Cont, !dbg !630

__Cont:                                           ; preds = %if.end8, %if.then7
  %j.1 = phi i32 [ %j.0, %if.then7 ], [ %inc, %if.end8 ], !dbg !596
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !590, metadata !DIExpression()), !dbg !585
  %inc11 = add nsw i32 %i.0, 1, !dbg !632
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !591, metadata !DIExpression()), !dbg !585
  br label %while.body, !dbg !592, !llvm.loop !633

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !635

while_break:                                      ; preds = %while_break___0, %if.then
  %idxprom12 = sext i32 %j.0 to i64, !dbg !636
  %arrayidx13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %new_str, i64 0, i64 %idxprom12, !dbg !636
  store i8 0, i8* %arrayidx13, align 1, !dbg !638
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %new_str, i32 0, i32 0, !dbg !639
  %call14 = call i8* @strcpy(i8* %victim___0, i8* %arraydecay) #8, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_polym_t_25* @add_dir(%struct.__anonstruct_polym_t_25* %list, i8* %victim___0) #0 !dbg !643 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %list, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8* %victim___0, metadata !649, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata !4, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata !4, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata !4, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata !4, metadata !656, metadata !DIExpression()), !dbg !657
  %call = call noalias i8* @malloc(i64 2064) #8, !dbg !658
  call void @llvm.dbg.value(metadata i8* %call, metadata !662, metadata !DIExpression()), !dbg !648
  %0 = bitcast i8* %call to %struct.__anonstruct_polym_t_25*, !dbg !663
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %0, metadata !664, metadata !DIExpression()), !dbg !648
  %1 = ptrtoint %struct.__anonstruct_polym_t_25* %0 to i64, !dbg !665
  %cmp = icmp eq i64 %1, 0, !dbg !667
  br i1 %cmp, label %if.then, label %if.end, !dbg !668

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !669
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0)), !dbg !673
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !674
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)), !dbg !676
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !677
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !679
  call void @exit(i32 3) #11, !dbg !680
  unreachable, !dbg !680

if.end:                                           ; preds = %entry
  %dest = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %0, i32 0, i32 0, !dbg !682
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %dest, i32 0, i32 0, !dbg !685
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %victim___0) #8, !dbg !686
  %extns = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %0, i32 0, i32 1, !dbg !687
  store %struct.__anonstruct_xtn_t_24* null, %struct.__anonstruct_xtn_t_24** %extns, align 8, !dbg !688
  %next = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %0, i32 0, i32 2, !dbg !689
  store %struct.polym_t* null, %struct.polym_t** %next, align 8, !dbg !690
  %call5 = call %struct.__anonstruct_polym_t_25* @find_last_dir(%struct.__anonstruct_polym_t_25* %list), !dbg !691
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %call5, metadata !693, metadata !DIExpression()), !dbg !648
  %5 = ptrtoint %struct.__anonstruct_polym_t_25* %call5 to i64, !dbg !694
  %cmp6 = icmp eq i64 %5, 0, !dbg !696
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !697

if.then7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %0, metadata !647, metadata !DIExpression()), !dbg !648
  br label %if.end9, !dbg !698

if.else:                                          ; preds = %if.end
  %6 = bitcast %struct.__anonstruct_polym_t_25* %0 to %struct.polym_t*, !dbg !700
  %next8 = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %call5, i32 0, i32 2, !dbg !702
  store %struct.polym_t* %6, %struct.polym_t** %next8, align 8, !dbg !703
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  ret %struct.__anonstruct_polym_t_25* %0, !dbg !704
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_polym_t_25* @find_dir(%struct.__anonstruct_polym_t_25* %list, i8* %suspect) #0 !dbg !705 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %list, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8* %suspect, metadata !708, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %list, metadata !709, metadata !DIExpression()), !dbg !707
  br label %while.body, !dbg !710

while.body:                                       ; preds = %if.end2, %entry
  %tmp.0 = phi %struct.__anonstruct_polym_t_25* [ %list, %entry ], [ %2, %if.end2 ], !dbg !714
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %tmp.0, metadata !709, metadata !DIExpression()), !dbg !707
  br label %while_continue___0, !dbg !715

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !715

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.__anonstruct_polym_t_25* %tmp.0 to i64, !dbg !716
  %cmp = icmp ne i64 %0, 0, !dbg !719
  br i1 %cmp, label %if.end, label %if.then, !dbg !720

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !721

if.end:                                           ; preds = %while_continue
  %dest = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %tmp.0, i32 0, i32 0, !dbg !723
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %dest, i32 0, i32 0, !dbg !726
  %call = call i32 @strcmp(i8* %arraydecay, i8* %suspect) #10, !dbg !727
  call void @llvm.dbg.value(metadata i32 %call, metadata !728, metadata !DIExpression()), !dbg !707
  %tobool = icmp ne i32 %call, 0, !dbg !729
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !731

if.then1:                                         ; preds = %if.end
  br label %while_break, !dbg !732

if.end2:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %tmp.0, i32 0, i32 2, !dbg !734
  %1 = load %struct.polym_t*, %struct.polym_t** %next, align 8, !dbg !734
  %2 = bitcast %struct.polym_t* %1 to %struct.__anonstruct_polym_t_25*, !dbg !735
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %2, metadata !709, metadata !DIExpression()), !dbg !707
  br label %while.body, !dbg !710, !llvm.loop !736

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !738

while_break:                                      ; preds = %while_break___0, %if.then1, %if.then
  ret %struct.__anonstruct_polym_t_25* %tmp.0, !dbg !739
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_xtn_t_24* @find_xtn(%struct.__anonstruct_xtn_t_24* %list, i8* %suspect) #0 !dbg !740 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %list, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8* %suspect, metadata !745, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %list, metadata !746, metadata !DIExpression()), !dbg !744
  br label %while.body, !dbg !747

while.body:                                       ; preds = %if.end2, %entry
  %tmp.0 = phi %struct.__anonstruct_xtn_t_24* [ %list, %entry ], [ %2, %if.end2 ], !dbg !751
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %tmp.0, metadata !746, metadata !DIExpression()), !dbg !744
  br label %while_continue___0, !dbg !752

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !752

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.__anonstruct_xtn_t_24* %tmp.0 to i64, !dbg !753
  %cmp = icmp ne i64 %0, 0, !dbg !756
  br i1 %cmp, label %if.end, label %if.then, !dbg !757

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !758

if.end:                                           ; preds = %while_continue
  %x3 = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %tmp.0, i32 0, i32 0, !dbg !760
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %x3, i32 0, i32 0, !dbg !763
  %call = call i32 @strcmp(i8* %arraydecay, i8* %suspect) #10, !dbg !764
  call void @llvm.dbg.value(metadata i32 %call, metadata !765, metadata !DIExpression()), !dbg !744
  %tobool = icmp ne i32 %call, 0, !dbg !766
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !768

if.then1:                                         ; preds = %if.end
  br label %while_break, !dbg !769

if.end2:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %tmp.0, i32 0, i32 1, !dbg !771
  %1 = load %struct.xtn_t*, %struct.xtn_t** %next, align 8, !dbg !771
  %2 = bitcast %struct.xtn_t* %1 to %struct.__anonstruct_xtn_t_24*, !dbg !772
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %2, metadata !746, metadata !DIExpression()), !dbg !744
  br label %while.body, !dbg !747, !llvm.loop !773

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !775

while_break:                                      ; preds = %while_break___0, %if.then1, %if.then
  ret %struct.__anonstruct_xtn_t_24* %tmp.0, !dbg !776
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_xtn_t_24* @add_xtn(%struct.__anonstruct_xtn_t_24* %list, i8* %victim___0) #0 !dbg !777 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %list, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %victim___0, metadata !780, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.declare(metadata !4, metadata !781, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.declare(metadata !4, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata !4, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata !4, metadata !787, metadata !DIExpression()), !dbg !788
  %call = call noalias i8* @malloc(i64 24) #8, !dbg !789
  call void @llvm.dbg.value(metadata i8* %call, metadata !793, metadata !DIExpression()), !dbg !779
  %0 = bitcast i8* %call to %struct.__anonstruct_xtn_t_24*, !dbg !794
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %0, metadata !795, metadata !DIExpression()), !dbg !779
  %1 = ptrtoint %struct.__anonstruct_xtn_t_24* %0 to i64, !dbg !796
  %cmp = icmp eq i64 %1, 0, !dbg !798
  br i1 %cmp, label %if.then, label %if.end, !dbg !799

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !800
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0)), !dbg !804
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !805
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)), !dbg !807
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !808
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !810
  call void @exit(i32 3) #11, !dbg !811
  unreachable, !dbg !811

if.end:                                           ; preds = %entry
  %x3 = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %0, i32 0, i32 0, !dbg !813
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %x3, i32 0, i32 0, !dbg !816
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %victim___0) #8, !dbg !817
  %next = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %0, i32 0, i32 1, !dbg !818
  store %struct.xtn_t* null, %struct.xtn_t** %next, align 8, !dbg !819
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* null, metadata !820, metadata !DIExpression()), !dbg !779
  %call5 = call %struct.__anonstruct_xtn_t_24* @find_last_xtn(%struct.__anonstruct_xtn_t_24* %list), !dbg !821
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %call5, metadata !820, metadata !DIExpression()), !dbg !779
  %5 = ptrtoint %struct.__anonstruct_xtn_t_24* %call5 to i64, !dbg !823
  %cmp6 = icmp eq i64 %5, 0, !dbg !825
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !826

if.then7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %0, metadata !778, metadata !DIExpression()), !dbg !779
  br label %if.end9, !dbg !827

if.else:                                          ; preds = %if.end
  %6 = bitcast %struct.__anonstruct_xtn_t_24* %0 to %struct.xtn_t*, !dbg !829
  %next8 = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %call5, i32 0, i32 1, !dbg !831
  store %struct.xtn_t* %6, %struct.xtn_t** %next8, align 8, !dbg !832
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  ret %struct.__anonstruct_xtn_t_24* %0, !dbg !833
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_polym_t_25* @find_last_dir(%struct.__anonstruct_polym_t_25* %target___0) #0 !dbg !834 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %target___0, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = ptrtoint %struct.__anonstruct_polym_t_25* %target___0 to i64, !dbg !839
  %cmp = icmp eq i64 %0, 0, !dbg !842
  br i1 %cmp, label %if.then, label %if.end, !dbg !843

if.then:                                          ; preds = %entry
  br label %return, !dbg !844

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %target___0, metadata !846, metadata !DIExpression()), !dbg !838
  br label %while.body, !dbg !847

while.body:                                       ; preds = %if.end7, %if.end
  %run.0 = phi %struct.__anonstruct_polym_t_25* [ %target___0, %if.end ], [ %7, %if.end7 ], !dbg !850
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %run.0, metadata !846, metadata !DIExpression()), !dbg !838
  br label %while_continue___0, !dbg !851

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !851

while_continue:                                   ; preds = %while_continue___0
  %1 = ptrtoint %struct.__anonstruct_polym_t_25* %run.0 to i64, !dbg !852
  %cmp1 = icmp ne i64 %1, 0, !dbg !855
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !856

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !857

if.end3:                                          ; preds = %while_continue
  %next = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %run.0, i32 0, i32 2, !dbg !859
  %2 = load %struct.polym_t*, %struct.polym_t** %next, align 8, !dbg !859
  %3 = ptrtoint %struct.polym_t* %2 to i64, !dbg !861
  %cmp4 = icmp eq i64 %3, 0, !dbg !862
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !863

if.then5:                                         ; preds = %if.end3
  %next6 = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %run.0, i32 0, i32 2, !dbg !864
  %4 = load %struct.polym_t*, %struct.polym_t** %next6, align 8, !dbg !864
  %5 = bitcast %struct.polym_t* %4 to %struct.__anonstruct_polym_t_25*, !dbg !866
  br label %return, !dbg !867

if.end7:                                          ; preds = %if.end3
  %next8 = getelementptr inbounds %struct.__anonstruct_polym_t_25, %struct.__anonstruct_polym_t_25* %run.0, i32 0, i32 2, !dbg !868
  %6 = load %struct.polym_t*, %struct.polym_t** %next8, align 8, !dbg !868
  %7 = bitcast %struct.polym_t* %6 to %struct.__anonstruct_polym_t_25*, !dbg !869
  call void @llvm.dbg.value(metadata %struct.__anonstruct_polym_t_25* %7, metadata !846, metadata !DIExpression()), !dbg !838
  br label %while.body, !dbg !847, !llvm.loop !870

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !872

while_break:                                      ; preds = %while_break___0, %if.then2
  br label %return, !dbg !873

return:                                           ; preds = %while_break, %if.then5, %if.then
  %retval.0 = phi %struct.__anonstruct_polym_t_25* [ null, %if.then ], [ %5, %if.then5 ], [ null, %while_break ], !dbg !850
  ret %struct.__anonstruct_polym_t_25* %retval.0, !dbg !874
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.__anonstruct_xtn_t_24* @find_last_xtn(%struct.__anonstruct_xtn_t_24* %target___0) #0 !dbg !875 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %target___0, metadata !878, metadata !DIExpression()), !dbg !879
  %0 = ptrtoint %struct.__anonstruct_xtn_t_24* %target___0 to i64, !dbg !880
  %cmp = icmp eq i64 %0, 0, !dbg !883
  br i1 %cmp, label %if.then, label %if.end, !dbg !884

if.then:                                          ; preds = %entry
  br label %return, !dbg !885

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %target___0, metadata !887, metadata !DIExpression()), !dbg !879
  br label %while.body, !dbg !888

while.body:                                       ; preds = %if.end7, %if.end
  %run.0 = phi %struct.__anonstruct_xtn_t_24* [ %target___0, %if.end ], [ %7, %if.end7 ], !dbg !891
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %run.0, metadata !887, metadata !DIExpression()), !dbg !879
  br label %while_continue___0, !dbg !892

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !892

while_continue:                                   ; preds = %while_continue___0
  %1 = ptrtoint %struct.__anonstruct_xtn_t_24* %run.0 to i64, !dbg !893
  %cmp1 = icmp ne i64 %1, 0, !dbg !896
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !897

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !898

if.end3:                                          ; preds = %while_continue
  %next = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %run.0, i32 0, i32 1, !dbg !900
  %2 = load %struct.xtn_t*, %struct.xtn_t** %next, align 8, !dbg !900
  %3 = ptrtoint %struct.xtn_t* %2 to i64, !dbg !902
  %cmp4 = icmp eq i64 %3, 0, !dbg !903
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !904

if.then5:                                         ; preds = %if.end3
  %next6 = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %run.0, i32 0, i32 1, !dbg !905
  %4 = load %struct.xtn_t*, %struct.xtn_t** %next6, align 8, !dbg !905
  %5 = bitcast %struct.xtn_t* %4 to %struct.__anonstruct_xtn_t_24*, !dbg !907
  br label %return, !dbg !908

if.end7:                                          ; preds = %if.end3
  %next8 = getelementptr inbounds %struct.__anonstruct_xtn_t_24, %struct.__anonstruct_xtn_t_24* %run.0, i32 0, i32 1, !dbg !909
  %6 = load %struct.xtn_t*, %struct.xtn_t** %next8, align 8, !dbg !909
  %7 = bitcast %struct.xtn_t* %6 to %struct.__anonstruct_xtn_t_24*, !dbg !910
  call void @llvm.dbg.value(metadata %struct.__anonstruct_xtn_t_24* %7, metadata !887, metadata !DIExpression()), !dbg !879
  br label %while.body, !dbg !888, !llvm.loop !911

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !913

while_break:                                      ; preds = %while_break___0, %if.then2
  br label %return, !dbg !914

return:                                           ; preds = %while_break, %if.then5, %if.then
  %retval.0 = phi %struct.__anonstruct_xtn_t_24* [ null, %if.then ], [ %5, %if.then5 ], [ null, %while_break ], !dbg !891
  ret %struct.__anonstruct_xtn_t_24* %retval.0, !dbg !915
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !916 {
entry:
  %filename = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8** %argv, metadata !922, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata [2048 x i8]* %filename, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata !4, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata !4, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata !4, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata !4, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata !4, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata !4, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata !4, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata !4, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata !4, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata !4, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata !4, metadata !945, metadata !DIExpression()), !dbg !946
  %call = call i8* @strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @target, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !947
  call void @grok_commandLine(i32 %argc, i8** %argv), !dbg !951
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @target, i32 0, i32 0)) #10, !dbg !953
  call void @llvm.dbg.value(metadata i64 %call1, metadata !955, metadata !DIExpression()), !dbg !921
  %cmp = icmp ne i64 %call1, 0, !dbg !956
  br i1 %cmp, label %if.then, label %if.end, !dbg !958

if.then:                                          ; preds = %entry
  call void @convert_fileName(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @target, i32 0, i32 0)), !dbg !959
  br label %return, !dbg !963

if.end:                                           ; preds = %entry
  %call2 = call i8* @strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !964
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename, i32 0, i32 0, !dbg !967
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !969
  %call4 = call i8* @getcwd(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0), i64 2048) #8, !dbg !970
  %call5 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0)), !dbg !972
  store %struct.__dirstream* %call5, %struct.__dirstream** @curr_dir, align 8, !dbg !974
  %0 = load %struct.__dirstream*, %struct.__dirstream** @curr_dir, align 8, !dbg !975
  %1 = ptrtoint %struct.__dirstream* %0 to i64, !dbg !977
  %cmp6 = icmp eq i64 %1, 0, !dbg !978
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !979

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !980
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0)), !dbg !984
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !985
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)), !dbg !987
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !988
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !990
  call void @exit(i32 1) #11, !dbg !991
  unreachable, !dbg !991

if.end11:                                         ; preds = %if.end
  br label %while.body, !dbg !993

while.body:                                       ; preds = %if.end49, %if.end11
  br label %while_continue___0, !dbg !996

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !996

while_continue:                                   ; preds = %while_continue___0
  %5 = load %struct.__dirstream*, %struct.__dirstream** @curr_dir, align 8, !dbg !997
  %call12 = call %struct.dirent* @readdir(%struct.__dirstream* %5), !dbg !1001
  store %struct.dirent* %call12, %struct.dirent** @victim, align 8, !dbg !1002
  %6 = load %struct.dirent*, %struct.dirent** @victim, align 8, !dbg !1003
  %7 = ptrtoint %struct.dirent* %6 to i64, !dbg !1005
  %cmp13 = icmp ne i64 %7, 0, !dbg !1006
  br i1 %cmp13, label %if.end15, label %if.then14, !dbg !1007

if.then14:                                        ; preds = %while_continue
  br label %while_break, !dbg !1008

if.end15:                                         ; preds = %while_continue
  %8 = load i32, i32* @track, align 4, !dbg !1010
  %tobool = icmp ne i32 %8, 0, !dbg !1010
  br i1 %tobool, label %if.then16, label %if.else, !dbg !1012

if.then16:                                        ; preds = %if.end15
  %9 = load %struct.dirent*, %struct.dirent** @victim, align 8, !dbg !1013
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4, !dbg !1017
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0, !dbg !1018
  %call18 = call i32 @stat(i8* %arraydecay17, %struct.stat* @status) #8, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1020, metadata !DIExpression()), !dbg !921
  %cmp19 = icmp eq i32 %call18, -1, !dbg !1021
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1023

if.then20:                                        ; preds = %if.then16
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1024
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0)), !dbg !1028
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1029
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !1031
  br label %return, !dbg !1032

if.end23:                                         ; preds = %if.then16
  %12 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @status, i32 0, i32 3), align 8, !dbg !1033
  %and = and i32 %12, 61440, !dbg !1035
  %cmp24 = icmp eq i32 %and, 32768, !dbg !1036
  br i1 %cmp24, label %if.then25, label %if.end31, !dbg !1037

if.then25:                                        ; preds = %if.end23
  %arraydecay26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename, i32 0, i32 0, !dbg !1038
  %13 = load %struct.dirent*, %struct.dirent** @victim, align 8, !dbg !1042
  %d_name27 = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 4, !dbg !1043
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name27, i32 0, i32 0, !dbg !1044
  %call29 = call i8* @strcpy(i8* %arraydecay26, i8* %arraydecay28) #8, !dbg !1045
  %arraydecay30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename, i32 0, i32 0, !dbg !1046
  call void @convert_fileName(i8* %arraydecay30), !dbg !1048
  br label %if.end31, !dbg !1049

if.end31:                                         ; preds = %if.then25, %if.end23
  br label %if.end49, !dbg !1050

if.else:                                          ; preds = %if.end15
  %14 = load %struct.dirent*, %struct.dirent** @victim, align 8, !dbg !1051
  %d_name32 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 4, !dbg !1055
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name32, i32 0, i32 0, !dbg !1056
  %call34 = call i32 @lstat(i8* %arraydecay33, %struct.stat* @status) #8, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %call34, metadata !1058, metadata !DIExpression()), !dbg !921
  %cmp35 = icmp eq i32 %call34, -1, !dbg !1059
  br i1 %cmp35, label %if.then36, label %if.end39, !dbg !1061

if.then36:                                        ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1062
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0)), !dbg !1066
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1067
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !1069
  br label %return, !dbg !1070

if.end39:                                         ; preds = %if.else
  %17 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @status, i32 0, i32 3), align 8, !dbg !1071
  %and40 = and i32 %17, 61440, !dbg !1073
  %cmp41 = icmp eq i32 %and40, 32768, !dbg !1074
  br i1 %cmp41, label %if.then42, label %if.end48, !dbg !1075

if.then42:                                        ; preds = %if.end39
  %arraydecay43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename, i32 0, i32 0, !dbg !1076
  %18 = load %struct.dirent*, %struct.dirent** @victim, align 8, !dbg !1080
  %d_name44 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4, !dbg !1081
  %arraydecay45 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name44, i32 0, i32 0, !dbg !1082
  %call46 = call i8* @strcpy(i8* %arraydecay43, i8* %arraydecay45) #8, !dbg !1083
  %arraydecay47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %filename, i32 0, i32 0, !dbg !1084
  call void @convert_fileName(i8* %arraydecay47), !dbg !1086
  br label %if.end48, !dbg !1087

if.end48:                                         ; preds = %if.then42, %if.end39
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end31
  br label %while.body, !dbg !993, !llvm.loop !1088

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1090

while_break:                                      ; preds = %while_break___0, %if.then14
  %19 = load %struct.__dirstream*, %struct.__dirstream** @curr_dir, align 8, !dbg !1091
  %call50 = call i32 @closedir(%struct.__dirstream* %19), !dbg !1094
  br label %return, !dbg !1095

return:                                           ; preds = %while_break, %if.then36, %if.then20, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then20 ], [ 2, %if.then36 ], [ 0, %while_break ], !dbg !1096
  ret i32 %retval.0, !dbg !1097
}

; Function Attrs: noinline nounwind ssp uwtable
define void @grok_commandLine(i32 %argc, i8** %argv) #0 !dbg !1098 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1103, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata !4, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata !4, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata !4, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata !4, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata !4, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata !4, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata !4, metadata !1116, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata !4, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata !4, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata !4, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata !4, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata !4, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata !4, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata !4, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata !4, metadata !1132, metadata !DIExpression()), !dbg !1133
  br label %while.body, !dbg !1134

while.body:                                       ; preds = %switch_break, %entry
  br label %while_continue___0, !dbg !1138

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1138

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %call, metadata !1143, metadata !DIExpression()), !dbg !1102
  %cmp = icmp ne i32 %call, -1, !dbg !1144
  br i1 %cmp, label %if.end, label %if.then, !dbg !1146

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1147

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 97, !dbg !1149
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1152

if.then2:                                         ; preds = %if.end
  br label %case_97, !dbg !1153

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 99, !dbg !1155
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1157

if.then5:                                         ; preds = %if.end3
  br label %case_99, !dbg !1158

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %call, 102, !dbg !1160
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1162

if.then8:                                         ; preds = %if.end6
  br label %case_102, !dbg !1163

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call, 104, !dbg !1165
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1167

if.then11:                                        ; preds = %if.end9
  br label %case_104, !dbg !1168

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call, 116, !dbg !1170
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1172

if.then14:                                        ; preds = %if.end12
  br label %case_116, !dbg !1173

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call, 118, !dbg !1175
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1177

if.then17:                                        ; preds = %if.end15
  br label %case_118, !dbg !1178

if.end18:                                         ; preds = %if.end15
  br label %switch_default, !dbg !1180

case_97:                                          ; preds = %if.then2
  store i32 1, i32* @hidden, align 4, !dbg !1181
  br label %switch_break, !dbg !1182

case_99:                                          ; preds = %if.then5
  store i32 1, i32* @clean, align 4, !dbg !1183
  br label %switch_break, !dbg !1184

case_102:                                         ; preds = %if.then8
  %0 = load i8*, i8** @optarg, align 8, !dbg !1185
  %call19 = call i8* @strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @target, i32 0, i32 0), i8* %0) #8, !dbg !1188
  br label %switch_break, !dbg !1189

case_104:                                         ; preds = %if.then11
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1190
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)), !dbg !1193
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1194
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)), !dbg !1196
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0)), !dbg !1199
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1200
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0)), !dbg !1202
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i32 0, i32 0)), !dbg !1205
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1206
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0)), !dbg !1208
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i32 0, i32 0)), !dbg !1211
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1212
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0)), !dbg !1214
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1215
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !1217
  call void @exit(i32 0) #11, !dbg !1218
  unreachable, !dbg !1218

case_116:                                         ; preds = %if.then14
  store i32 1, i32* @track, align 4, !dbg !1220
  br label %switch_break, !dbg !1221

case_118:                                         ; preds = %if.then17
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1222
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)), !dbg !1225
  call void @exit(i32 0) #11, !dbg !1226
  unreachable, !dbg !1226

switch_default:                                   ; preds = %if.end18
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1228
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i32 0, i32 0)), !dbg !1231
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1232
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !1234
  call void @exit(i32 0) #11, !dbg !1235
  unreachable, !dbg !1235

switch_break:                                     ; preds = %case_116, %case_102, %case_99, %case_97
  br label %while.body, !dbg !1134, !llvm.loop !1237

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1239

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !1240
}

; Function Attrs: noinline nounwind ssp uwtable
define void @convert_fileName(i8* %original) #0 !dbg !1241 {
entry:
  %newname = alloca [2048 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %original, metadata !1242, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.declare(metadata [2048 x i8]* %newname, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata !4, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata !4, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata !4, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata !4, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata !4, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !1256, metadata !DIExpression()), !dbg !1243
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1257
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1261
  %call1 = call i32 @is_fileHidden(i8* %original), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1264, metadata !DIExpression()), !dbg !1243
  %tobool = icmp ne i32 %call1, 0, !dbg !1265
  br i1 %tobool, label %if.then, label %if.end4, !dbg !1267

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @hidden, align 4, !dbg !1268
  %tobool2 = icmp ne i32 %0, 0, !dbg !1268
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !1271

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1272

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1274

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call i32 @does_nameHaveUppers(i8* %original), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1278, metadata !DIExpression()), !dbg !1243
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1279
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1281

if.then7:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression()), !dbg !1243
  br label %while.body, !dbg !1283

while.body:                                       ; preds = %__Cont, %if.then7
  %i.0 = phi i32 [ 0, %if.then7 ], [ %inc, %__Cont ], !dbg !1287
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1282, metadata !DIExpression()), !dbg !1243
  br label %while_continue___0, !dbg !1288

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1288

while_continue:                                   ; preds = %while_continue___0
  %call8 = call i64 @strlen(i8* %original) #10, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %call8, metadata !1293, metadata !DIExpression()), !dbg !1243
  %conv = sext i32 %i.0 to i64, !dbg !1294
  %cmp = icmp ult i64 %conv, %call8, !dbg !1296
  br i1 %cmp, label %if.end11, label %if.then10, !dbg !1297

if.then10:                                        ; preds = %while_continue
  br label %while_break, !dbg !1298

if.end11:                                         ; preds = %while_continue
  %call12 = call i16** @__ctype_b_loc() #9, !dbg !1300
  call void @llvm.dbg.value(metadata i16** %call12, metadata !1303, metadata !DIExpression()), !dbg !1243
  %1 = load i16*, i16** %call12, align 8, !dbg !1304
  %idx.ext = sext i32 %i.0 to i64, !dbg !1306
  %add.ptr = getelementptr inbounds i8, i8* %original, i64 %idx.ext, !dbg !1306
  %2 = load i8, i8* %add.ptr, align 1, !dbg !1307
  %conv13 = sext i8 %2 to i32, !dbg !1308
  %idx.ext14 = sext i32 %conv13 to i64, !dbg !1309
  %add.ptr15 = getelementptr inbounds i16, i16* %1, i64 %idx.ext14, !dbg !1309
  %3 = load i16, i16* %add.ptr15, align 2, !dbg !1310
  %conv16 = zext i16 %3 to i32, !dbg !1311
  %and = and i32 %conv16, 256, !dbg !1312
  %tobool17 = icmp ne i32 %and, 0, !dbg !1312
  br i1 %tobool17, label %if.then18, label %if.end24, !dbg !1313

if.then18:                                        ; preds = %if.end11
  %idx.ext19 = sext i32 %i.0 to i64, !dbg !1314
  %add.ptr20 = getelementptr inbounds i8, i8* %original, i64 %idx.ext19, !dbg !1314
  %4 = load i8, i8* %add.ptr20, align 1, !dbg !1318
  %conv21 = sext i8 %4 to i32, !dbg !1319
  %call22 = call i32 @tolower(i32 %conv21) #10, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1321, metadata !DIExpression()), !dbg !1243
  %conv23 = trunc i32 %call22 to i8, !dbg !1322
  %idxprom = sext i32 %i.0 to i64, !dbg !1323
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i64 0, i64 %idxprom, !dbg !1323
  store i8 %conv23, i8* %arrayidx, align 1, !dbg !1324
  br label %__Cont, !dbg !1325

if.end24:                                         ; preds = %if.end11
  %idx.ext25 = sext i32 %i.0 to i64, !dbg !1326
  %add.ptr26 = getelementptr inbounds i8, i8* %original, i64 %idx.ext25, !dbg !1326
  %5 = load i8, i8* %add.ptr26, align 1, !dbg !1327
  %idxprom27 = sext i32 %i.0 to i64, !dbg !1328
  %arrayidx28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i64 0, i64 %idxprom27, !dbg !1328
  store i8 %5, i8* %arrayidx28, align 1, !dbg !1329
  br label %__Cont, !dbg !1328

__Cont:                                           ; preds = %if.end24, %if.then18
  %inc = add nsw i32 %i.0, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1282, metadata !DIExpression()), !dbg !1243
  br label %while.body, !dbg !1283, !llvm.loop !1331

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1333

while_break:                                      ; preds = %while_break___0, %if.then10
  %idxprom29 = sext i32 %i.0 to i64, !dbg !1334
  %arrayidx30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i64 0, i64 %idxprom29, !dbg !1334
  store i8 0, i8* %arrayidx30, align 1, !dbg !1335
  br label %if.end33, !dbg !1336

if.else:                                          ; preds = %if.end4
  %arraydecay31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1337
  %call32 = call i8* @strcpy(i8* %arraydecay31, i8* %original) #8, !dbg !1341
  call void @llvm.dbg.value(metadata i32 -1, metadata !1256, metadata !DIExpression()), !dbg !1243
  br label %if.end33

if.end33:                                         ; preds = %if.else, %while_break
  %error.0 = phi i32 [ 0, %while_break ], [ -1, %if.else ], !dbg !1342
  call void @llvm.dbg.value(metadata i32 %error.0, metadata !1256, metadata !DIExpression()), !dbg !1243
  %6 = load i32, i32* @clean, align 4, !dbg !1343
  %tobool34 = icmp ne i32 %6, 0, !dbg !1343
  br i1 %tobool34, label %if.then35, label %if.end45, !dbg !1345

if.then35:                                        ; preds = %if.end33
  call void @llvm.dbg.value(metadata i8* null, metadata !1346, metadata !DIExpression()), !dbg !1243
  %arraydecay36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1347
  %call37 = call i8* @strrchr(i8* %arraydecay36, i32 92) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %call37, metadata !1346, metadata !DIExpression()), !dbg !1243
  %7 = ptrtoint i8* %call37 to i64, !dbg !1352
  %cmp38 = icmp ne i64 %7, 0, !dbg !1354
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !1355

if.then40:                                        ; preds = %if.then35
  %arraydecay41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1356
  %add.ptr42 = getelementptr inbounds i8, i8* %call37, i64 1, !dbg !1360
  %call43 = call i8* @strcpy(i8* %arraydecay41, i8* %add.ptr42) #8, !dbg !1361
  br label %if.end44, !dbg !1362

if.end44:                                         ; preds = %if.then40, %if.then35
  br label %if.end45, !dbg !1363

if.end45:                                         ; preds = %if.end44, %if.end33
  %cmp46 = icmp ne i32 %error.0, -1, !dbg !1364
  br i1 %cmp46, label %if.then48, label %if.end55, !dbg !1366

if.then48:                                        ; preds = %if.end45
  %arraydecay49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1367
  %call50 = call i32 @does_newnameExist(i8* %arraydecay49), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %call50, metadata !1256, metadata !DIExpression()), !dbg !1243
  %tobool51 = icmp ne i32 %call50, 0, !dbg !1372
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !1374

if.then52:                                        ; preds = %if.then48
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1375
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0), i8* %original), !dbg !1379
  br label %return, !dbg !1380

if.end54:                                         ; preds = %if.then48
  br label %if.end55, !dbg !1381

if.end55:                                         ; preds = %if.end54, %if.end45
  %arraydecay56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1382
  %call57 = call i32 @rename(i8* %original, i8* %arraydecay56) #8, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %call57, metadata !1256, metadata !DIExpression()), !dbg !1243
  %tobool58 = icmp ne i32 %call57, 0, !dbg !1386
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !1388

if.then59:                                        ; preds = %if.end55
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1389
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1393
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0), i8* %original, i8* %arraydecay60), !dbg !1394
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1395
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0)), !dbg !1397
  br label %if.end63, !dbg !1398

if.end63:                                         ; preds = %if.then59, %if.end55
  %arraydecay64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %newname, i32 0, i32 0, !dbg !1399
  %call65 = call i8* @strcpy(i8* %original, i8* %arraydecay64) #8, !dbg !1402
  br label %return, !dbg !1403

return:                                           ; preds = %if.end63, %if.then52, %if.then3
  ret void, !dbg !1404
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #3

declare %struct.__dirstream* @opendir(i8*) #4

declare %struct.dirent* @readdir(%struct.__dirstream*) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @closedir(%struct.__dirstream*) #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_fileHidden(i8* %suspect) #0 !dbg !1405 {
entry:
  call void @llvm.dbg.value(metadata i8* %suspect, metadata !1408, metadata !DIExpression()), !dbg !1409
  %add.ptr = getelementptr inbounds i8, i8* %suspect, i64 0, !dbg !1410
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1413
  %conv = sext i8 %0 to i32, !dbg !1414
  %cmp = icmp eq i32 %conv, 46, !dbg !1415
  br i1 %cmp, label %if.then, label %if.end, !dbg !1416

if.then:                                          ; preds = %entry
  br label %return, !dbg !1417

if.end:                                           ; preds = %entry
  br label %return, !dbg !1419

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], !dbg !1420
  ret i32 %retval.0, !dbg !1421
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @does_nameHaveUppers(i8* %suspect) #0 !dbg !1422 {
entry:
  call void @llvm.dbg.value(metadata i8* %suspect, metadata !1423, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 0, metadata !1425, metadata !DIExpression()), !dbg !1424
  br label %while.body, !dbg !1426

while.body:                                       ; preds = %if.end8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end8 ], !dbg !1430
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1425, metadata !DIExpression()), !dbg !1424
  br label %while_continue___0, !dbg !1431

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1431

while_continue:                                   ; preds = %while_continue___0
  %call = call i64 @strlen(i8* %suspect) #10, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %call, metadata !1436, metadata !DIExpression()), !dbg !1424
  %conv = sext i32 %i.0 to i64, !dbg !1437
  %cmp = icmp ult i64 %conv, %call, !dbg !1439
  br i1 %cmp, label %if.end, label %if.then, !dbg !1440

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1441

if.end:                                           ; preds = %while_continue
  %call2 = call i16** @__ctype_b_loc() #9, !dbg !1443
  call void @llvm.dbg.value(metadata i16** %call2, metadata !1446, metadata !DIExpression()), !dbg !1424
  %0 = load i16*, i16** %call2, align 8, !dbg !1447
  %idx.ext = sext i32 %i.0 to i64, !dbg !1449
  %add.ptr = getelementptr inbounds i8, i8* %suspect, i64 %idx.ext, !dbg !1449
  %1 = load i8, i8* %add.ptr, align 1, !dbg !1450
  %conv3 = sext i8 %1 to i32, !dbg !1451
  %idx.ext4 = sext i32 %conv3 to i64, !dbg !1452
  %add.ptr5 = getelementptr inbounds i16, i16* %0, i64 %idx.ext4, !dbg !1452
  %2 = load i16, i16* %add.ptr5, align 2, !dbg !1453
  %conv6 = zext i16 %2 to i32, !dbg !1454
  %and = and i32 %conv6, 256, !dbg !1455
  %tobool = icmp ne i32 %and, 0, !dbg !1455
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !1456

if.then7:                                         ; preds = %if.end
  br label %return, !dbg !1457

if.end8:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1425, metadata !DIExpression()), !dbg !1424
  br label %while.body, !dbg !1426, !llvm.loop !1460

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1462

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !1463

return:                                           ; preds = %while_break, %if.then7
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %while_break ], !dbg !1430
  ret i32 %retval.0, !dbg !1464
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind ssp uwtable
define i32 @does_newnameExist(i8* %suspect) #0 !dbg !1465 {
entry:
  call void @llvm.dbg.value(metadata i8* %suspect, metadata !1466, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata !4, metadata !1468, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.declare(metadata !4, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.declare(metadata !4, metadata !1472, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.declare(metadata !4, metadata !1474, metadata !DIExpression()), !dbg !1475
  %call = call i8* @strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1476
  %call1 = call i8* @getcwd(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0), i64 2048) #8, !dbg !1480
  %call2 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @wd, i32 0, i32 0)), !dbg !1482
  call void @llvm.dbg.value(metadata %struct.__dirstream* %call2, metadata !1484, metadata !DIExpression()), !dbg !1467
  %0 = ptrtoint %struct.__dirstream* %call2 to i64, !dbg !1485
  %cmp = icmp eq i64 %0, 0, !dbg !1487
  br i1 %cmp, label %if.then, label %if.end, !dbg !1488

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1489
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0)), !dbg !1493
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1494
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)), !dbg !1496
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1497
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)), !dbg !1499
  call void @exit(i32 1) #11, !dbg !1500
  unreachable, !dbg !1500

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1502, metadata !DIExpression()), !dbg !1467
  br label %while.body, !dbg !1503

while.body:                                       ; preds = %if.end12, %if.end
  %found.0 = phi i32 [ 0, %if.end ], [ %found.1, %if.end12 ], !dbg !1506
  call void @llvm.dbg.value(metadata i32 %found.0, metadata !1502, metadata !DIExpression()), !dbg !1467
  br label %while_continue___0, !dbg !1507

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1507

while_continue:                                   ; preds = %while_continue___0
  %call6 = call %struct.dirent* @readdir(%struct.__dirstream* %call2), !dbg !1508
  call void @llvm.dbg.value(metadata %struct.dirent* %call6, metadata !1512, metadata !DIExpression()), !dbg !1467
  %4 = ptrtoint %struct.dirent* %call6 to i64, !dbg !1513
  %cmp7 = icmp ne i64 %4, 0, !dbg !1515
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !1516

if.then8:                                         ; preds = %while_continue
  br label %while_break, !dbg !1517

if.end9:                                          ; preds = %while_continue
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %call6, i32 0, i32 4, !dbg !1519
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0, !dbg !1522
  %call10 = call i32 @strcmp(i8* %suspect, i8* %arraydecay) #10, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1524, metadata !DIExpression()), !dbg !1467
  %tobool = icmp ne i32 %call10, 0, !dbg !1525
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !1527

if.then11:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !1467
  br label %if.end12, !dbg !1528

if.end12:                                         ; preds = %if.then11, %if.end9
  %found.1 = phi i32 [ %found.0, %if.end9 ], [ 1, %if.then11 ], !dbg !1530
  call void @llvm.dbg.value(metadata i32 %found.1, metadata !1502, metadata !DIExpression()), !dbg !1467
  br label %while.body, !dbg !1503, !llvm.loop !1531

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1533

while_break:                                      ; preds = %while_break___0, %if.then8
  %call13 = call i32 @closedir(%struct.__dirstream* %call2), !dbg !1534
  ret i32 %found.0, !dbg !1537
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!180, !181, !182, !183, !184}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_file", scope: !2, file: !137, line: 17, type: !177, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !134, nameTableKind: GNU)
!3 = !DIFile(filename: "c/polymorph-0.4.0.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !31, !32, !35, !36, !38, !34, !45, !13, !17, !29, !26, !95, !132}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "polym_t", file: !8, line: 17, baseType: !9)
!8 = !DIFile(filename: "/home/khheo/testset/polymorph-0.4.0/polymorph_types.h", directory: "")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_polym_t_25", file: !8, line: 17, size: 16512, elements: !10)
!10 = !{!11, !16, !28}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !9, file: !8, line: 18, baseType: !12, size: 16384)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16384, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 2048)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "extns", scope: !9, file: !8, line: 19, baseType: !17, size: 64, offset: 16384)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xtn_t", file: !8, line: 12, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_xtn_t_24", file: !8, line: 12, size: 192, elements: !20)
!20 = !{!21, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "x3", scope: !19, file: !8, line: 13, baseType: !22, size: 128)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 16)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !8, line: 14, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "xtn_t", file: !8, line: 12, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !8, line: 20, baseType: !29, size: 64, offset: 16448)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "polym_t", file: !8, line: 17, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 211, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.4.3/include/stddef.h", directory: "")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 49, baseType: !41)
!40 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 271, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!43 = !{!44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !65, !66, !67, !68, !72, !74, !76, !80, !83, !85, !86, !87, !88, !89, !90, !91}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 272, baseType: !45, size: 32)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 273, baseType: !35, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 274, baseType: !35, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 275, baseType: !35, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 276, baseType: !35, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 277, baseType: !35, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 278, baseType: !35, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 279, baseType: !35, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 280, baseType: !35, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 281, baseType: !35, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 282, baseType: !35, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 283, baseType: !35, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 284, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 186, size: 192, elements: !60)
!60 = !{!61, !62, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !59, file: !42, line: 187, baseType: !58, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !59, file: !42, line: 188, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !59, file: !42, line: 189, baseType: !45, size: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 285, baseType: !63, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 286, baseType: !45, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 287, baseType: !45, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 288, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 141, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 289, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 290, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 291, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 292, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 180, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 293, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 142, baseType: !71)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !41, file: !42, line: 294, baseType: !31, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !41, file: !42, line: 295, baseType: !31, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !41, file: !42, line: 296, baseType: !31, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !41, file: !42, line: 297, baseType: !31, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 298, baseType: !32, size: 64, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 299, baseType: !45, size: 32, offset: 1536)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 300, baseType: !92, size: 160, offset: 1568)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 20)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !97, line: 43, size: 1152, elements: !98)
!97 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!98 = !{!99, !101, !103, !105, !108, !110, !112, !113, !114, !115, !117, !119, !126, !127, !128}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !96, file: !97, line: 44, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !70, line: 134, baseType: !34)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !96, file: !97, line: 45, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !70, line: 137, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !96, file: !97, line: 46, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !70, line: 140, baseType: !34)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !96, file: !97, line: 47, baseType: !106, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !70, line: 139, baseType: !107)
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !96, file: !97, line: 48, baseType: !109, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !70, line: 135, baseType: !107)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !96, file: !97, line: 49, baseType: !111, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !70, line: 136, baseType: !107)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !96, file: !97, line: 50, baseType: !45, size: 32, offset: 288)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !96, file: !97, line: 51, baseType: !100, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !96, file: !97, line: 52, baseType: !69, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !96, file: !97, line: 53, baseType: !116, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !70, line: 164, baseType: !71)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !96, file: !97, line: 54, baseType: !118, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !70, line: 169, baseType: !71)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !96, file: !97, line: 55, baseType: !120, size: 128, offset: 576)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !121, line: 120, size: 128, elements: !122)
!121 = !DIFile(filename: "/usr/include/time.h", directory: "")
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !120, file: !121, line: 121, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !70, line: 149, baseType: !71)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !120, file: !121, line: 122, baseType: !71, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !96, file: !97, line: 56, baseType: !120, size: 128, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !96, file: !97, line: 57, baseType: !120, size: 128, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !96, file: !97, line: 58, baseType: !129, size: 192, offset: 960)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 192, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 3)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!134 = !{!0, !135, !141, !144, !146, !148, !150, !152, !154, !169, !171}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "hidn_file", scope: !2, file: !137, line: 18, type: !138, isLocal: false, isDefinition: true)
!137 = !DIFile(filename: "/home/khheo/testset/polymorph-0.4.0/rcfile.c", directory: "")
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 120, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 15)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "hidden", scope: !2, file: !143, line: 27, type: !45, isLocal: false, isDefinition: true)
!143 = !DIFile(filename: "/home/khheo/testset/polymorph-0.4.0/polymorph.c", directory: "")
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "track", scope: !2, file: !143, line: 28, type: !45, isLocal: false, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "clean", scope: !2, file: !143, line: 29, type: !45, isLocal: false, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "tmpbuf", scope: !2, file: !143, line: 23, type: !12, isLocal: false, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "target", scope: !2, file: !143, line: 23, type: !12, isLocal: false, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "wd", scope: !2, file: !143, line: 23, type: !12, isLocal: false, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "victim", scope: !2, file: !143, line: 24, type: !156, isLocal: false, isDefinition: true)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !158, line: 23, size: 2240, elements: !159)
!158 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!159 = !{!160, !161, !162, !163, !165}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !157, file: !158, line: 24, baseType: !102, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !157, file: !158, line: 25, baseType: !69, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !157, file: !158, line: 26, baseType: !73, size: 16, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !157, file: !158, line: 27, baseType: !164, size: 8, offset: 144)
!164 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !157, file: !158, line: 28, baseType: !166, size: 2048, offset: 152)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 256)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "status", scope: !2, file: !143, line: 25, type: !96, isLocal: false, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "curr_dir", scope: !2, file: !143, line: 26, type: !173, isLocal: false, isDefinition: true)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !175, line: 128, baseType: !176)
!175 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !175, line: 128, flags: DIFlagFwdDecl)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 112, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 14)
!180 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 7, !"PIC Level", i32 2}
!185 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!186 = distinct !DISubprogram(name: "grok_rcfile", scope: !137, file: !137, line: 30, type: !187, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!187 = !DISubroutineType(types: !188)
!188 = !{!6}
!189 = !DILocalVariable(name: "where", scope: !186, file: !137, line: 32, type: !12)
!190 = !DILocation(line: 32, column: 8, scope: !186)
!191 = !DILocalVariable(name: "__cil_tmp8", scope: !186, file: !137, line: 39, type: !31)
!192 = !DILocation(line: 39, column: 9, scope: !186)
!193 = !DILocalVariable(name: "__cil_tmp9", scope: !186, file: !137, line: 40, type: !35)
!194 = !DILocation(line: 40, column: 9, scope: !186)
!195 = !DILocalVariable(name: "__cil_tmp10", scope: !186, file: !137, line: 41, type: !35)
!196 = !DILocation(line: 41, column: 9, scope: !186)
!197 = !DILocalVariable(name: "__cil_tmp11", scope: !186, file: !137, line: 42, type: !35)
!198 = !DILocation(line: 42, column: 9, scope: !186)
!199 = !DILocalVariable(name: "__cil_tmp12", scope: !186, file: !137, line: 43, type: !35)
!200 = !DILocation(line: 43, column: 9, scope: !186)
!201 = !DILocalVariable(name: "__cil_tmp13", scope: !186, file: !137, line: 44, type: !35)
!202 = !DILocation(line: 44, column: 9, scope: !186)
!203 = !DILocalVariable(name: "__cil_tmp14", scope: !186, file: !137, line: 45, type: !35)
!204 = !DILocation(line: 45, column: 9, scope: !186)
!205 = !DILocalVariable(name: "list", scope: !186, file: !137, line: 35, type: !6)
!206 = !DILocation(line: 0, scope: !186)
!207 = !DILocalVariable(name: "step", scope: !186, file: !137, line: 33, type: !45)
!208 = !DILocalVariable(name: "found", scope: !186, file: !137, line: 34, type: !45)
!209 = !DILocation(line: 41, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !137, line: 39, column: 3)
!211 = distinct !DILexicalBlock(scope: !212, file: !137, line: 38, column: 3)
!212 = distinct !DILexicalBlock(scope: !186, file: !137, line: 47, column: 3)
!213 = !DILocation(line: 0, scope: !212)
!214 = !DILocalVariable(name: "rcfile", scope: !186, file: !137, line: 36, type: !38)
!215 = !DILocation(line: 41, column: 13, scope: !210)
!216 = !DILocation(line: 41, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !137, line: 41, column: 9)
!218 = distinct !DILexicalBlock(scope: !210, file: !137, line: 41, column: 13)
!219 = !DILocation(line: 41, column: 9, scope: !218)
!220 = !DILocation(line: 41, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !137, line: 41, column: 22)
!222 = !DILocation(line: 43, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !137, line: 43, column: 9)
!224 = distinct !DILexicalBlock(scope: !218, file: !137, line: 43, column: 5)
!225 = !DILocation(line: 43, column: 9, scope: !224)
!226 = !DILocation(line: 43, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !137, line: 43, column: 20)
!228 = !DILocation(line: 48, column: 14, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !137, line: 48, column: 9)
!230 = !DILocation(line: 48, column: 9, scope: !224)
!231 = !DILocation(line: 48, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !137, line: 48, column: 20)
!233 = !DILocation(line: 53, column: 14, scope: !234)
!234 = distinct !DILexicalBlock(scope: !224, file: !137, line: 53, column: 9)
!235 = !DILocation(line: 53, column: 9, scope: !224)
!236 = !DILocation(line: 53, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !137, line: 53, column: 20)
!238 = !DILocation(line: 59, column: 5, scope: !224)
!239 = !DILocation(line: 44, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !137, line: 62, column: 5)
!241 = distinct !DILexicalBlock(scope: !224, file: !137, line: 61, column: 5)
!242 = !DILocation(line: 45, column: 37, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !137, line: 46, column: 5)
!244 = !DILocation(line: 45, column: 5, scope: !243)
!245 = !DILocation(line: 46, column: 37, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !137, line: 47, column: 5)
!247 = !DILocation(line: 46, column: 5, scope: !246)
!248 = !DILocation(line: 47, column: 5, scope: !224)
!249 = !DILocation(line: 49, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !137, line: 50, column: 5)
!251 = distinct !DILexicalBlock(scope: !224, file: !137, line: 49, column: 5)
!252 = !DILocation(line: 50, column: 37, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !137, line: 51, column: 5)
!254 = !DILocation(line: 50, column: 5, scope: !253)
!255 = !DILocation(line: 51, column: 37, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !137, line: 52, column: 5)
!257 = !DILocation(line: 51, column: 5, scope: !256)
!258 = !DILocation(line: 52, column: 5, scope: !224)
!259 = !DILocation(line: 54, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !137, line: 55, column: 5)
!261 = distinct !DILexicalBlock(scope: !224, file: !137, line: 54, column: 5)
!262 = !DILocation(line: 55, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !137, line: 56, column: 5)
!264 = !DILocalVariable(name: "tmp", scope: !186, file: !137, line: 37, type: !35)
!265 = !DILocation(line: 55, column: 37, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !137, line: 57, column: 5)
!267 = !DILocation(line: 55, column: 5, scope: !266)
!268 = !DILocation(line: 56, column: 37, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !137, line: 57, column: 5)
!270 = !DILocation(line: 56, column: 5, scope: !269)
!271 = !DILocation(line: 57, column: 5, scope: !224)
!272 = !DILocation(line: 60, column: 5, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !137, line: 60, column: 5)
!274 = distinct !DILexicalBlock(scope: !224, file: !137, line: 59, column: 5)
!275 = !DILocation(line: 61, column: 15, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !137, line: 62, column: 5)
!277 = !DILocalVariable(name: "tmp___0", scope: !186, file: !137, line: 38, type: !35)
!278 = !DILocation(line: 61, column: 37, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !137, line: 63, column: 5)
!280 = !DILocation(line: 61, column: 5, scope: !279)
!281 = !DILocation(line: 62, column: 37, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !137, line: 63, column: 5)
!283 = !DILocation(line: 62, column: 5, scope: !282)
!284 = !DILocation(line: 63, column: 5, scope: !224)
!285 = !DILocation(line: 65, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !218, file: !137, line: 66, column: 5)
!287 = !DILocation(line: 67, column: 53, scope: !288)
!288 = distinct !DILexicalBlock(scope: !286, file: !137, line: 67, column: 5)
!289 = !DILocation(line: 67, column: 14, scope: !288)
!290 = !DILocation(line: 69, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !218, file: !137, line: 69, column: 9)
!292 = !DILocation(line: 69, column: 32, scope: !291)
!293 = !DILocation(line: 69, column: 9, scope: !218)
!294 = !DILocation(line: 70, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !137, line: 71, column: 7)
!296 = distinct !DILexicalBlock(scope: !297, file: !137, line: 70, column: 7)
!297 = distinct !DILexicalBlock(scope: !291, file: !137, line: 69, column: 64)
!298 = !DILocation(line: 73, column: 5, scope: !297)
!299 = !DILocation(line: 0, scope: !218)
!300 = !DILocation(line: 75, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !218, file: !137, line: 75, column: 9)
!302 = !DILocation(line: 75, column: 9, scope: !218)
!303 = !DILocation(line: 75, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !137, line: 75, column: 20)
!305 = distinct !{!305, !209, !306}
!306 = !DILocation(line: 77, column: 3, scope: !210)
!307 = !DILocation(line: 79, column: 3, scope: !210)
!308 = !DILocation(line: 80, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !212, file: !137, line: 80, column: 7)
!310 = !DILocation(line: 80, column: 30, scope: !309)
!311 = !DILocation(line: 80, column: 7, scope: !212)
!312 = !DILocation(line: 80, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !137, line: 80, column: 62)
!314 = !DILocation(line: 83, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !137, line: 83, column: 3)
!316 = distinct !DILexicalBlock(scope: !212, file: !137, line: 82, column: 3)
!317 = !DILocation(line: 86, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !316, file: !137, line: 85, column: 3)
!319 = !DILocation(line: 88, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !212, file: !137, line: 88, column: 7)
!321 = !DILocation(line: 88, column: 28, scope: !320)
!322 = !DILocation(line: 88, column: 7, scope: !212)
!323 = !DILocation(line: 88, column: 38, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !137, line: 90, column: 5)
!325 = distinct !DILexicalBlock(scope: !326, file: !137, line: 89, column: 5)
!326 = distinct !DILexicalBlock(scope: !320, file: !137, line: 88, column: 60)
!327 = !DILocation(line: 88, column: 5, scope: !324)
!328 = !DILocation(line: 91, column: 3, scope: !326)
!329 = !DILocation(line: 90, column: 3, scope: !212)
!330 = !DILocation(line: 92, column: 1, scope: !186)
!331 = distinct !DISubprogram(name: "parse_rcfile", scope: !137, file: !137, line: 102, type: !332, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !38, !6}
!334 = !DILocalVariable(name: "rcfile", arg: 1, scope: !331, file: !137, line: 102, type: !38)
!335 = !DILocation(line: 0, scope: !331)
!336 = !DILocalVariable(name: "u_prefs", arg: 2, scope: !331, file: !137, line: 102, type: !6)
!337 = !DILocalVariable(name: "target_dir", scope: !331, file: !137, line: 104, type: !12)
!338 = !DILocation(line: 104, column: 8, scope: !331)
!339 = !DILocalVariable(name: "after_dir", scope: !331, file: !137, line: 105, type: !12)
!340 = !DILocation(line: 105, column: 8, scope: !331)
!341 = !DILocalVariable(name: "newxtn", scope: !331, file: !137, line: 106, type: !22)
!342 = !DILocation(line: 106, column: 8, scope: !331)
!343 = !DILocalVariable(name: "buf", scope: !331, file: !137, line: 107, type: !12)
!344 = !DILocation(line: 107, column: 8, scope: !331)
!345 = !DILocalVariable(name: "__cil_tmp23", scope: !331, file: !137, line: 123, type: !31)
!346 = !DILocation(line: 123, column: 9, scope: !331)
!347 = !DILocalVariable(name: "__cil_tmp24", scope: !331, file: !137, line: 124, type: !31)
!348 = !DILocation(line: 124, column: 9, scope: !331)
!349 = !DILocalVariable(name: "__cil_tmp25", scope: !331, file: !137, line: 125, type: !31)
!350 = !DILocation(line: 125, column: 9, scope: !331)
!351 = !DILocalVariable(name: "__cil_tmp26", scope: !331, file: !137, line: 126, type: !31)
!352 = !DILocation(line: 126, column: 9, scope: !331)
!353 = !DILocalVariable(name: "__cil_tmp27", scope: !331, file: !137, line: 127, type: !35)
!354 = !DILocation(line: 127, column: 9, scope: !331)
!355 = !DILocalVariable(name: "head", scope: !331, file: !137, line: 110, type: !6)
!356 = !DILocation(line: 111, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !137, line: 111, column: 3)
!358 = distinct !DILexicalBlock(scope: !359, file: !137, line: 110, column: 3)
!359 = distinct !DILexicalBlock(scope: !331, file: !137, line: 129, column: 3)
!360 = !DILocation(line: 111, column: 13, scope: !357)
!361 = !DILocation(line: 111, column: 46, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !137, line: 115, column: 5)
!363 = distinct !DILexicalBlock(scope: !364, file: !137, line: 114, column: 5)
!364 = distinct !DILexicalBlock(scope: !357, file: !137, line: 111, column: 13)
!365 = !DILocation(line: 111, column: 15, scope: !362)
!366 = !DILocalVariable(name: "tmp___7", scope: !331, file: !137, line: 122, type: !35)
!367 = !DILocation(line: 111, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !137, line: 111, column: 9)
!369 = !DILocation(line: 111, column: 36, scope: !368)
!370 = !DILocation(line: 111, column: 9, scope: !364)
!371 = !DILocation(line: 111, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !137, line: 111, column: 69)
!373 = !DILocation(line: 113, column: 15, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !137, line: 113, column: 9)
!375 = !DILocation(line: 113, column: 9, scope: !374)
!376 = !DILocation(line: 113, column: 22, scope: !374)
!377 = !DILocation(line: 113, column: 9, scope: !364)
!378 = !DILocation(line: 113, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !137, line: 113, column: 29)
!380 = !DILocation(line: 114, column: 15, scope: !381)
!381 = distinct !DILexicalBlock(scope: !364, file: !137, line: 114, column: 9)
!382 = !DILocation(line: 114, column: 9, scope: !381)
!383 = !DILocation(line: 114, column: 22, scope: !381)
!384 = !DILocation(line: 114, column: 9, scope: !364)
!385 = !DILocation(line: 114, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !137, line: 114, column: 29)
!387 = !DILocation(line: 115, column: 15, scope: !388)
!388 = distinct !DILexicalBlock(scope: !364, file: !137, line: 115, column: 9)
!389 = !DILocation(line: 115, column: 9, scope: !388)
!390 = !DILocation(line: 115, column: 22, scope: !388)
!391 = !DILocation(line: 115, column: 9, scope: !364)
!392 = !DILocation(line: 115, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !137, line: 115, column: 29)
!394 = !DILocation(line: 116, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !364, file: !137, line: 116, column: 9)
!396 = !DILocation(line: 116, column: 9, scope: !395)
!397 = !DILocation(line: 116, column: 22, scope: !395)
!398 = !DILocation(line: 116, column: 9, scope: !364)
!399 = !DILocation(line: 116, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !395, file: !137, line: 116, column: 29)
!401 = !DILocation(line: 119, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !137, line: 119, column: 5)
!403 = distinct !DILexicalBlock(scope: !364, file: !137, line: 118, column: 5)
!404 = !DILocalVariable(name: "tmp", scope: !331, file: !137, line: 114, type: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!408 = !DILocation(line: 119, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !364, file: !137, line: 119, column: 9)
!410 = !DILocation(line: 119, column: 38, scope: !409)
!411 = !DILocation(line: 119, column: 32, scope: !409)
!412 = !DILocation(line: 119, column: 30, scope: !409)
!413 = !DILocation(line: 119, column: 23, scope: !409)
!414 = !DILocation(line: 119, column: 9, scope: !409)
!415 = !DILocation(line: 119, column: 46, scope: !409)
!416 = !DILocation(line: 119, column: 9, scope: !364)
!417 = !DILocation(line: 119, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !409, file: !137, line: 119, column: 54)
!419 = !DILocation(line: 122, column: 38, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !137, line: 122, column: 5)
!421 = distinct !DILexicalBlock(scope: !364, file: !137, line: 121, column: 5)
!422 = !DILocation(line: 122, column: 15, scope: !420)
!423 = !DILocalVariable(name: "tmp___0", scope: !331, file: !137, line: 115, type: !32)
!424 = !DILocation(line: 122, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !364, file: !137, line: 122, column: 9)
!426 = !DILocation(line: 122, column: 9, scope: !364)
!427 = !DILocation(line: 122, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !137, line: 122, column: 25)
!429 = !DILocation(line: 125, column: 36, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !137, line: 125, column: 5)
!431 = distinct !DILexicalBlock(scope: !364, file: !137, line: 124, column: 5)
!432 = !DILocation(line: 125, column: 13, scope: !430)
!433 = !DILocalVariable(name: "colon", scope: !331, file: !137, line: 108, type: !35)
!434 = !DILocation(line: 126, column: 37, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !137, line: 127, column: 5)
!436 = !DILocation(line: 126, column: 84, scope: !435)
!437 = !DILocation(line: 126, column: 5, scope: !435)
!438 = !DILocation(line: 127, column: 37, scope: !439)
!439 = distinct !DILexicalBlock(scope: !431, file: !137, line: 128, column: 5)
!440 = !DILocation(line: 127, column: 5, scope: !439)
!441 = !DILocation(line: 130, column: 36, scope: !442)
!442 = distinct !DILexicalBlock(scope: !431, file: !137, line: 129, column: 5)
!443 = !DILocation(line: 130, column: 13, scope: !442)
!444 = !DILocation(line: 131, column: 12, scope: !431)
!445 = !DILocation(line: 132, column: 21, scope: !446)
!446 = distinct !DILexicalBlock(scope: !431, file: !137, line: 132, column: 5)
!447 = !DILocation(line: 132, column: 5, scope: !446)
!448 = !DILocalVariable(name: "tmpdir", scope: !331, file: !137, line: 109, type: !6)
!449 = !DILocation(line: 136, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !364, file: !137, line: 136, column: 9)
!451 = !DILocation(line: 136, column: 33, scope: !450)
!452 = !DILocation(line: 136, column: 9, scope: !364)
!453 = !DILocation(line: 137, column: 33, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !137, line: 138, column: 7)
!455 = distinct !DILexicalBlock(scope: !456, file: !137, line: 137, column: 7)
!456 = distinct !DILexicalBlock(scope: !450, file: !137, line: 136, column: 65)
!457 = !DILocation(line: 137, column: 16, scope: !454)
!458 = !DILocation(line: 140, column: 5, scope: !456)
!459 = !DILocation(line: 139, column: 34, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !137, line: 142, column: 7)
!461 = distinct !DILexicalBlock(scope: !462, file: !137, line: 141, column: 7)
!462 = distinct !DILexicalBlock(scope: !450, file: !137, line: 140, column: 12)
!463 = !DILocation(line: 139, column: 16, scope: !460)
!464 = !DILocation(line: 140, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !137, line: 140, column: 11)
!466 = !DILocation(line: 140, column: 34, scope: !465)
!467 = !DILocation(line: 140, column: 11, scope: !462)
!468 = !DILocation(line: 141, column: 35, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !137, line: 142, column: 9)
!470 = distinct !DILexicalBlock(scope: !471, file: !137, line: 141, column: 9)
!471 = distinct !DILexicalBlock(scope: !465, file: !137, line: 140, column: 66)
!472 = !DILocation(line: 141, column: 18, scope: !469)
!473 = !DILocation(line: 144, column: 7, scope: !471)
!474 = !DILocation(line: 0, scope: !462)
!475 = !DILocation(line: 0, scope: !450)
!476 = !DILocalVariable(name: "tmpxtn", scope: !331, file: !137, line: 111, type: !17)
!477 = !DILocalVariable(name: "e", scope: !331, file: !137, line: 112, type: !45)
!478 = !DILocalVariable(name: "i", scope: !331, file: !137, line: 113, type: !45)
!479 = !DILocation(line: 149, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !137, line: 151, column: 5)
!481 = distinct !DILexicalBlock(scope: !364, file: !137, line: 150, column: 5)
!482 = !DILocation(line: 147, column: 7, scope: !364)
!483 = !DILocation(line: 0, scope: !364)
!484 = !DILocation(line: 149, column: 15, scope: !480)
!485 = !DILocation(line: 149, column: 40, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !137, line: 153, column: 7)
!487 = distinct !DILexicalBlock(scope: !488, file: !137, line: 152, column: 7)
!488 = distinct !DILexicalBlock(scope: !480, file: !137, line: 149, column: 15)
!489 = !DILocation(line: 149, column: 17, scope: !486)
!490 = !DILocalVariable(name: "tmp___6", scope: !331, file: !137, line: 121, type: !32)
!491 = !DILocation(line: 149, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !137, line: 149, column: 11)
!493 = !DILocation(line: 149, column: 25, scope: !492)
!494 = !DILocation(line: 149, column: 11, scope: !488)
!495 = !DILocation(line: 149, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !137, line: 149, column: 37)
!497 = !DILocation(line: 151, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !137, line: 152, column: 7)
!499 = distinct !DILexicalBlock(scope: !488, file: !137, line: 151, column: 7)
!500 = !DILocalVariable(name: "tmp___3", scope: !331, file: !137, line: 118, type: !405)
!501 = !DILocation(line: 151, column: 27, scope: !502)
!502 = distinct !DILexicalBlock(scope: !488, file: !137, line: 151, column: 11)
!503 = !DILocation(line: 151, column: 44, scope: !502)
!504 = !DILocation(line: 151, column: 38, scope: !502)
!505 = !DILocation(line: 151, column: 36, scope: !502)
!506 = !DILocation(line: 151, column: 25, scope: !502)
!507 = !DILocation(line: 151, column: 11, scope: !502)
!508 = !DILocation(line: 151, column: 58, scope: !502)
!509 = !DILocation(line: 151, column: 11, scope: !488)
!510 = !DILocation(line: 151, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !137, line: 151, column: 66)
!512 = !DILocation(line: 151, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !502, file: !137, line: 151, column: 11)
!514 = !DILocation(line: 151, column: 11, scope: !513)
!515 = !DILocation(line: 151, column: 30, scope: !513)
!516 = !DILocation(line: 151, column: 37, scope: !513)
!517 = !DILocation(line: 152, column: 42, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !137, line: 154, column: 9)
!519 = distinct !DILexicalBlock(scope: !520, file: !137, line: 153, column: 9)
!520 = distinct !DILexicalBlock(scope: !513, file: !137, line: 151, column: 37)
!521 = !DILocation(line: 152, column: 19, scope: !518)
!522 = !DILocalVariable(name: "tmp___2", scope: !331, file: !137, line: 117, type: !32)
!523 = !DILocation(line: 152, column: 21, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !137, line: 152, column: 13)
!525 = !DILocation(line: 152, column: 13, scope: !520)
!526 = !DILocation(line: 155, column: 38, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !137, line: 154, column: 11)
!528 = distinct !DILexicalBlock(scope: !529, file: !137, line: 153, column: 11)
!529 = distinct !DILexicalBlock(scope: !524, file: !137, line: 152, column: 28)
!530 = !DILocation(line: 155, column: 21, scope: !527)
!531 = !DILocalVariable(name: "tmp___1", scope: !331, file: !137, line: 116, type: !17)
!532 = !DILocation(line: 155, column: 15, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !137, line: 155, column: 15)
!534 = !DILocation(line: 155, column: 39, scope: !533)
!535 = !DILocation(line: 155, column: 15, scope: !529)
!536 = !DILocation(line: 156, column: 45, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !137, line: 157, column: 13)
!538 = distinct !DILexicalBlock(scope: !539, file: !137, line: 156, column: 13)
!539 = distinct !DILexicalBlock(scope: !533, file: !137, line: 155, column: 71)
!540 = !DILocation(line: 156, column: 13, scope: !537)
!541 = !DILocation(line: 157, column: 13, scope: !539)
!542 = !DILocation(line: 160, column: 27, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !137, line: 160, column: 11)
!544 = distinct !DILexicalBlock(scope: !529, file: !137, line: 159, column: 11)
!545 = !DILocation(line: 160, column: 11, scope: !543)
!546 = !DILocation(line: 161, column: 11, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !137, line: 162, column: 11)
!548 = !DILocation(line: 164, column: 9, scope: !529)
!549 = !DILocation(line: 164, column: 9, scope: !520)
!550 = !DILocation(line: 167, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !137, line: 167, column: 7)
!552 = distinct !DILexicalBlock(scope: !488, file: !137, line: 166, column: 7)
!553 = !DILocalVariable(name: "tmp___5", scope: !331, file: !137, line: 120, type: !405)
!554 = !DILocation(line: 167, column: 27, scope: !555)
!555 = distinct !DILexicalBlock(scope: !488, file: !137, line: 167, column: 11)
!556 = !DILocation(line: 167, column: 44, scope: !555)
!557 = !DILocation(line: 167, column: 38, scope: !555)
!558 = !DILocation(line: 167, column: 36, scope: !555)
!559 = !DILocation(line: 167, column: 25, scope: !555)
!560 = !DILocation(line: 167, column: 11, scope: !555)
!561 = !DILocation(line: 167, column: 58, scope: !555)
!562 = !DILocation(line: 167, column: 11, scope: !488)
!563 = !DILocalVariable(name: "tmp___4", scope: !331, file: !137, line: 119, type: !45)
!564 = !DILocation(line: 167, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !555, file: !137, line: 167, column: 67)
!566 = !DILocation(line: 167, column: 27, scope: !565)
!567 = !DILocation(line: 167, column: 9, scope: !565)
!568 = !DILocation(line: 167, column: 25, scope: !565)
!569 = !DILocation(line: 168, column: 7, scope: !565)
!570 = !DILocation(line: 167, column: 60, scope: !555)
!571 = !DILocation(line: 149, column: 9, scope: !488)
!572 = distinct !{!572, !479, !573}
!573 = !DILocation(line: 150, column: 5, scope: !480)
!574 = !DILocation(line: 152, column: 5, scope: !480)
!575 = !DILocation(line: 169, column: 13, scope: !364)
!576 = !DILocation(line: 169, column: 19, scope: !364)
!577 = distinct !{!577, !356, !578}
!578 = !DILocation(line: 170, column: 3, scope: !357)
!579 = !DILocation(line: 172, column: 3, scope: !357)
!580 = !DILocation(line: 172, column: 3, scope: !359)
!581 = distinct !DISubprogram(name: "trim_whitespace", scope: !137, file: !137, line: 181, type: !582, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !35}
!584 = !DILocalVariable(name: "victim___0", arg: 1, scope: !581, file: !137, line: 181, type: !35)
!585 = !DILocation(line: 0, scope: !581)
!586 = !DILocalVariable(name: "new_str", scope: !581, file: !137, line: 185, type: !12)
!587 = !DILocation(line: 185, column: 8, scope: !581)
!588 = !DILocalVariable(name: "__cil_tmp8", scope: !581, file: !137, line: 189, type: !31)
!589 = !DILocation(line: 189, column: 9, scope: !581)
!590 = !DILocalVariable(name: "j", scope: !581, file: !137, line: 184, type: !45)
!591 = !DILocalVariable(name: "i", scope: !581, file: !137, line: 183, type: !45)
!592 = !DILocation(line: 187, column: 3, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !137, line: 189, column: 3)
!594 = distinct !DILexicalBlock(scope: !595, file: !137, line: 188, column: 3)
!595 = distinct !DILexicalBlock(scope: !581, file: !137, line: 191, column: 3)
!596 = !DILocation(line: 0, scope: !595)
!597 = !DILocation(line: 185, column: 5, scope: !595)
!598 = !DILocation(line: 187, column: 13, scope: !593)
!599 = !DILocation(line: 187, column: 15, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !137, line: 191, column: 5)
!601 = distinct !DILexicalBlock(scope: !602, file: !137, line: 190, column: 5)
!602 = distinct !DILexicalBlock(scope: !593, file: !137, line: 187, column: 13)
!603 = !DILocalVariable(name: "tmp___1", scope: !581, file: !137, line: 188, type: !32)
!604 = !DILocation(line: 187, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !137, line: 187, column: 9)
!606 = !DILocation(line: 187, column: 23, scope: !605)
!607 = !DILocation(line: 187, column: 9, scope: !602)
!608 = !DILocation(line: 187, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !137, line: 187, column: 35)
!610 = !DILocation(line: 188, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !137, line: 190, column: 5)
!612 = distinct !DILexicalBlock(scope: !602, file: !137, line: 189, column: 5)
!613 = !DILocalVariable(name: "tmp", scope: !581, file: !137, line: 186, type: !405)
!614 = !DILocation(line: 188, column: 25, scope: !615)
!615 = distinct !DILexicalBlock(scope: !602, file: !137, line: 188, column: 9)
!616 = !DILocation(line: 188, column: 51, scope: !615)
!617 = !DILocation(line: 188, column: 38, scope: !615)
!618 = !DILocation(line: 188, column: 32, scope: !615)
!619 = !DILocation(line: 188, column: 30, scope: !615)
!620 = !DILocation(line: 188, column: 23, scope: !615)
!621 = !DILocation(line: 188, column: 9, scope: !615)
!622 = !DILocation(line: 188, column: 57, scope: !615)
!623 = !DILocation(line: 188, column: 9, scope: !602)
!624 = !DILocation(line: 188, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !615, file: !137, line: 188, column: 65)
!626 = !DILocalVariable(name: "tmp___0", scope: !581, file: !137, line: 187, type: !45)
!627 = !DILocation(line: 189, column: 7, scope: !602)
!628 = !DILocation(line: 189, column: 37, scope: !602)
!629 = !DILocation(line: 189, column: 24, scope: !602)
!630 = !DILocation(line: 189, column: 5, scope: !602)
!631 = !DILocation(line: 189, column: 22, scope: !602)
!632 = !DILocation(line: 187, column: 7, scope: !602)
!633 = distinct !{!633, !592, !634}
!634 = !DILocation(line: 188, column: 3, scope: !593)
!635 = !DILocation(line: 190, column: 3, scope: !593)
!636 = !DILocation(line: 192, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !595, file: !137, line: 193, column: 3)
!638 = !DILocation(line: 192, column: 14, scope: !637)
!639 = !DILocation(line: 193, column: 80, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !137, line: 193, column: 3)
!641 = !DILocation(line: 193, column: 3, scope: !640)
!642 = !DILocation(line: 195, column: 3, scope: !595)
!643 = distinct !DISubprogram(name: "add_dir", scope: !644, file: !644, line: 57, type: !645, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!644 = !DIFile(filename: "/home/khheo/testset/polymorph-0.4.0/llist.c", directory: "")
!645 = !DISubroutineType(types: !646)
!646 = !{!6, !6, !35}
!647 = !DILocalVariable(name: "list", arg: 1, scope: !643, file: !644, line: 57, type: !6)
!648 = !DILocation(line: 0, scope: !643)
!649 = !DILocalVariable(name: "victim___0", arg: 2, scope: !643, file: !644, line: 57, type: !35)
!650 = !DILocalVariable(name: "__cil_tmp6", scope: !643, file: !644, line: 62, type: !31)
!651 = !DILocation(line: 62, column: 9, scope: !643)
!652 = !DILocalVariable(name: "__cil_tmp7", scope: !643, file: !644, line: 63, type: !35)
!653 = !DILocation(line: 63, column: 9, scope: !643)
!654 = !DILocalVariable(name: "__cil_tmp8", scope: !643, file: !644, line: 64, type: !35)
!655 = !DILocation(line: 64, column: 9, scope: !643)
!656 = !DILocalVariable(name: "__cil_tmp9", scope: !643, file: !644, line: 65, type: !35)
!657 = !DILocation(line: 65, column: 9, scope: !643)
!658 = !DILocation(line: 61, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !644, line: 69, column: 3)
!660 = distinct !DILexicalBlock(scope: !661, file: !644, line: 68, column: 3)
!661 = distinct !DILexicalBlock(scope: !643, file: !644, line: 67, column: 3)
!662 = !DILocalVariable(name: "tmp___0", scope: !643, file: !644, line: 61, type: !31)
!663 = !DILocation(line: 61, column: 9, scope: !660)
!664 = !DILocalVariable(name: "tmp", scope: !643, file: !644, line: 59, type: !6)
!665 = !DILocation(line: 62, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !644, line: 62, column: 7)
!667 = !DILocation(line: 62, column: 27, scope: !666)
!668 = !DILocation(line: 62, column: 7, scope: !661)
!669 = !DILocation(line: 63, column: 38, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !644, line: 64, column: 5)
!671 = distinct !DILexicalBlock(scope: !672, file: !644, line: 63, column: 5)
!672 = distinct !DILexicalBlock(scope: !666, file: !644, line: 62, column: 59)
!673 = !DILocation(line: 63, column: 5, scope: !670)
!674 = !DILocation(line: 64, column: 38, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !644, line: 65, column: 5)
!676 = !DILocation(line: 64, column: 5, scope: !675)
!677 = !DILocation(line: 65, column: 38, scope: !678)
!678 = distinct !DILexicalBlock(scope: !671, file: !644, line: 66, column: 5)
!679 = !DILocation(line: 65, column: 5, scope: !678)
!680 = !DILocation(line: 66, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !671, file: !644, line: 67, column: 5)
!682 = !DILocation(line: 70, column: 41, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !644, line: 71, column: 3)
!684 = distinct !DILexicalBlock(scope: !661, file: !644, line: 70, column: 3)
!685 = !DILocation(line: 70, column: 35, scope: !683)
!686 = !DILocation(line: 70, column: 3, scope: !683)
!687 = !DILocation(line: 71, column: 8, scope: !684)
!688 = !DILocation(line: 71, column: 14, scope: !684)
!689 = !DILocation(line: 72, column: 8, scope: !684)
!690 = !DILocation(line: 72, column: 13, scope: !684)
!691 = !DILocation(line: 76, column: 10, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !644, line: 73, column: 3)
!693 = !DILocalVariable(name: "last", scope: !643, file: !644, line: 60, type: !6)
!694 = !DILocation(line: 78, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !661, file: !644, line: 78, column: 7)
!696 = !DILocation(line: 78, column: 28, scope: !695)
!697 = !DILocation(line: 78, column: 7, scope: !661)
!698 = !DILocation(line: 80, column: 3, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !644, line: 78, column: 60)
!700 = !DILocation(line: 81, column: 18, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !644, line: 80, column: 10)
!702 = !DILocation(line: 81, column: 11, scope: !701)
!703 = !DILocation(line: 81, column: 16, scope: !701)
!704 = !DILocation(line: 84, column: 3, scope: !661)
!705 = distinct !DISubprogram(name: "find_dir", scope: !644, file: !644, line: 38, type: !645, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!706 = !DILocalVariable(name: "list", arg: 1, scope: !705, file: !644, line: 38, type: !6)
!707 = !DILocation(line: 0, scope: !705)
!708 = !DILocalVariable(name: "suspect", arg: 2, scope: !705, file: !644, line: 38, type: !35)
!709 = !DILocalVariable(name: "tmp", scope: !705, file: !644, line: 40, type: !6)
!710 = !DILocation(line: 41, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !644, line: 43, column: 3)
!712 = distinct !DILexicalBlock(scope: !713, file: !644, line: 42, column: 3)
!713 = distinct !DILexicalBlock(scope: !705, file: !644, line: 43, column: 3)
!714 = !DILocation(line: 0, scope: !713)
!715 = !DILocation(line: 41, column: 13, scope: !711)
!716 = !DILocation(line: 41, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !644, line: 41, column: 9)
!718 = distinct !DILexicalBlock(scope: !711, file: !644, line: 41, column: 13)
!719 = !DILocation(line: 41, column: 32, scope: !717)
!720 = !DILocation(line: 41, column: 9, scope: !718)
!721 = !DILocation(line: 41, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !644, line: 41, column: 65)
!723 = !DILocation(line: 42, column: 44, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !644, line: 44, column: 5)
!725 = distinct !DILexicalBlock(scope: !718, file: !644, line: 43, column: 5)
!726 = !DILocation(line: 42, column: 38, scope: !724)
!727 = !DILocation(line: 42, column: 15, scope: !724)
!728 = !DILocalVariable(name: "tmp___0", scope: !705, file: !644, line: 41, type: !45)
!729 = !DILocation(line: 42, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !718, file: !644, line: 42, column: 9)
!731 = !DILocation(line: 42, column: 9, scope: !718)
!732 = !DILocation(line: 42, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !644, line: 42, column: 20)
!734 = !DILocation(line: 41, column: 27, scope: !718)
!735 = !DILocation(line: 41, column: 11, scope: !718)
!736 = distinct !{!736, !710, !737}
!737 = !DILocation(line: 42, column: 3, scope: !711)
!738 = !DILocation(line: 44, column: 3, scope: !711)
!739 = !DILocation(line: 45, column: 3, scope: !713)
!740 = distinct !DISubprogram(name: "find_xtn", scope: !644, file: !644, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!741 = !DISubroutineType(types: !742)
!742 = !{!17, !17, !35}
!743 = !DILocalVariable(name: "list", arg: 1, scope: !740, file: !644, line: 20, type: !17)
!744 = !DILocation(line: 0, scope: !740)
!745 = !DILocalVariable(name: "suspect", arg: 2, scope: !740, file: !644, line: 20, type: !35)
!746 = !DILocalVariable(name: "tmp", scope: !740, file: !644, line: 22, type: !17)
!747 = !DILocation(line: 23, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !644, line: 25, column: 3)
!749 = distinct !DILexicalBlock(scope: !750, file: !644, line: 24, column: 3)
!750 = distinct !DILexicalBlock(scope: !740, file: !644, line: 25, column: 3)
!751 = !DILocation(line: 0, scope: !750)
!752 = !DILocation(line: 23, column: 13, scope: !748)
!753 = !DILocation(line: 23, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !644, line: 23, column: 9)
!755 = distinct !DILexicalBlock(scope: !748, file: !644, line: 23, column: 13)
!756 = !DILocation(line: 23, column: 32, scope: !754)
!757 = !DILocation(line: 23, column: 9, scope: !755)
!758 = !DILocation(line: 23, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !644, line: 23, column: 65)
!760 = !DILocation(line: 24, column: 44, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !644, line: 26, column: 5)
!762 = distinct !DILexicalBlock(scope: !755, file: !644, line: 25, column: 5)
!763 = !DILocation(line: 24, column: 38, scope: !761)
!764 = !DILocation(line: 24, column: 15, scope: !761)
!765 = !DILocalVariable(name: "tmp___0", scope: !740, file: !644, line: 23, type: !45)
!766 = !DILocation(line: 24, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !644, line: 24, column: 9)
!768 = !DILocation(line: 24, column: 9, scope: !755)
!769 = !DILocation(line: 24, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !644, line: 24, column: 20)
!771 = !DILocation(line: 23, column: 25, scope: !755)
!772 = !DILocation(line: 23, column: 11, scope: !755)
!773 = distinct !{!773, !747, !774}
!774 = !DILocation(line: 24, column: 3, scope: !748)
!775 = !DILocation(line: 26, column: 3, scope: !748)
!776 = !DILocation(line: 27, column: 3, scope: !750)
!777 = distinct !DISubprogram(name: "add_xtn", scope: !644, file: !644, line: 94, type: !741, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!778 = !DILocalVariable(name: "list", arg: 1, scope: !777, file: !644, line: 94, type: !17)
!779 = !DILocation(line: 0, scope: !777)
!780 = !DILocalVariable(name: "victim___0", arg: 2, scope: !777, file: !644, line: 94, type: !35)
!781 = !DILocalVariable(name: "__cil_tmp6", scope: !777, file: !644, line: 99, type: !31)
!782 = !DILocation(line: 99, column: 9, scope: !777)
!783 = !DILocalVariable(name: "__cil_tmp7", scope: !777, file: !644, line: 100, type: !35)
!784 = !DILocation(line: 100, column: 9, scope: !777)
!785 = !DILocalVariable(name: "__cil_tmp8", scope: !777, file: !644, line: 101, type: !35)
!786 = !DILocation(line: 101, column: 9, scope: !777)
!787 = !DILocalVariable(name: "__cil_tmp9", scope: !777, file: !644, line: 102, type: !35)
!788 = !DILocation(line: 102, column: 9, scope: !777)
!789 = !DILocation(line: 97, column: 13, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !644, line: 106, column: 3)
!791 = distinct !DILexicalBlock(scope: !792, file: !644, line: 105, column: 3)
!792 = distinct !DILexicalBlock(scope: !777, file: !644, line: 104, column: 3)
!793 = !DILocalVariable(name: "tmp___0", scope: !777, file: !644, line: 98, type: !31)
!794 = !DILocation(line: 97, column: 9, scope: !791)
!795 = !DILocalVariable(name: "tmp", scope: !777, file: !644, line: 96, type: !17)
!796 = !DILocation(line: 98, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !644, line: 98, column: 7)
!798 = !DILocation(line: 98, column: 27, scope: !797)
!799 = !DILocation(line: 98, column: 7, scope: !792)
!800 = !DILocation(line: 99, column: 38, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !644, line: 100, column: 5)
!802 = distinct !DILexicalBlock(scope: !803, file: !644, line: 99, column: 5)
!803 = distinct !DILexicalBlock(scope: !797, file: !644, line: 98, column: 59)
!804 = !DILocation(line: 99, column: 5, scope: !801)
!805 = !DILocation(line: 100, column: 38, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !644, line: 101, column: 5)
!807 = !DILocation(line: 100, column: 5, scope: !806)
!808 = !DILocation(line: 101, column: 38, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !644, line: 102, column: 5)
!810 = !DILocation(line: 101, column: 5, scope: !809)
!811 = !DILocation(line: 102, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !802, file: !644, line: 103, column: 5)
!813 = !DILocation(line: 105, column: 41, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !644, line: 107, column: 3)
!815 = distinct !DILexicalBlock(scope: !792, file: !644, line: 106, column: 3)
!816 = !DILocation(line: 105, column: 35, scope: !814)
!817 = !DILocation(line: 105, column: 3, scope: !814)
!818 = !DILocation(line: 106, column: 8, scope: !815)
!819 = !DILocation(line: 106, column: 13, scope: !815)
!820 = !DILocalVariable(name: "last", scope: !777, file: !644, line: 97, type: !17)
!821 = !DILocation(line: 109, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !815, file: !644, line: 109, column: 3)
!823 = !DILocation(line: 111, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !792, file: !644, line: 111, column: 7)
!825 = !DILocation(line: 111, column: 28, scope: !824)
!826 = !DILocation(line: 111, column: 7, scope: !792)
!827 = !DILocation(line: 113, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !644, line: 111, column: 60)
!829 = !DILocation(line: 114, column: 18, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !644, line: 113, column: 10)
!831 = !DILocation(line: 114, column: 11, scope: !830)
!832 = !DILocation(line: 114, column: 16, scope: !830)
!833 = !DILocation(line: 117, column: 3, scope: !792)
!834 = distinct !DISubprogram(name: "find_last_dir", scope: !644, file: !644, line: 146, type: !835, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!835 = !DISubroutineType(types: !836)
!836 = !{!6, !6}
!837 = !DILocalVariable(name: "target___0", arg: 1, scope: !834, file: !644, line: 146, type: !6)
!838 = !DILocation(line: 0, scope: !834)
!839 = !DILocation(line: 149, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !644, line: 149, column: 7)
!841 = distinct !DILexicalBlock(scope: !834, file: !644, line: 150, column: 3)
!842 = !DILocation(line: 149, column: 34, scope: !840)
!843 = !DILocation(line: 149, column: 7, scope: !841)
!844 = !DILocation(line: 149, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !644, line: 149, column: 66)
!846 = !DILocalVariable(name: "run", scope: !834, file: !644, line: 148, type: !6)
!847 = !DILocation(line: 151, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !644, line: 153, column: 3)
!849 = distinct !DILexicalBlock(scope: !841, file: !644, line: 152, column: 3)
!850 = !DILocation(line: 0, scope: !841)
!851 = !DILocation(line: 151, column: 13, scope: !848)
!852 = !DILocation(line: 151, column: 12, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !644, line: 151, column: 9)
!854 = distinct !DILexicalBlock(scope: !848, file: !644, line: 151, column: 13)
!855 = !DILocation(line: 151, column: 32, scope: !853)
!856 = !DILocation(line: 151, column: 9, scope: !854)
!857 = !DILocation(line: 151, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !853, file: !644, line: 151, column: 65)
!859 = !DILocation(line: 152, column: 30, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !644, line: 152, column: 9)
!861 = !DILocation(line: 152, column: 9, scope: !860)
!862 = !DILocation(line: 152, column: 35, scope: !860)
!863 = !DILocation(line: 152, column: 9, scope: !854)
!864 = !DILocation(line: 152, column: 31, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !644, line: 152, column: 67)
!866 = !DILocation(line: 152, column: 15, scope: !865)
!867 = !DILocation(line: 152, column: 7, scope: !865)
!868 = !DILocation(line: 151, column: 27, scope: !854)
!869 = !DILocation(line: 151, column: 11, scope: !854)
!870 = distinct !{!870, !847, !871}
!871 = !DILocation(line: 152, column: 3, scope: !848)
!872 = !DILocation(line: 154, column: 3, scope: !848)
!873 = !DILocation(line: 155, column: 3, scope: !841)
!874 = !DILocation(line: 157, column: 1, scope: !834)
!875 = distinct !DISubprogram(name: "find_last_xtn", scope: !644, file: !644, line: 127, type: !876, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!876 = !DISubroutineType(types: !877)
!877 = !{!17, !17}
!878 = !DILocalVariable(name: "target___0", arg: 1, scope: !875, file: !644, line: 127, type: !17)
!879 = !DILocation(line: 0, scope: !875)
!880 = !DILocation(line: 130, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !644, line: 130, column: 7)
!882 = distinct !DILexicalBlock(scope: !875, file: !644, line: 131, column: 3)
!883 = !DILocation(line: 130, column: 34, scope: !881)
!884 = !DILocation(line: 130, column: 7, scope: !882)
!885 = !DILocation(line: 130, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !644, line: 130, column: 66)
!887 = !DILocalVariable(name: "run", scope: !875, file: !644, line: 129, type: !17)
!888 = !DILocation(line: 132, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !644, line: 134, column: 3)
!890 = distinct !DILexicalBlock(scope: !882, file: !644, line: 133, column: 3)
!891 = !DILocation(line: 0, scope: !882)
!892 = !DILocation(line: 132, column: 13, scope: !889)
!893 = !DILocation(line: 132, column: 12, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !644, line: 132, column: 9)
!895 = distinct !DILexicalBlock(scope: !889, file: !644, line: 132, column: 13)
!896 = !DILocation(line: 132, column: 32, scope: !894)
!897 = !DILocation(line: 132, column: 9, scope: !895)
!898 = !DILocation(line: 132, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !644, line: 132, column: 65)
!900 = !DILocation(line: 133, column: 30, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !644, line: 133, column: 9)
!902 = !DILocation(line: 133, column: 9, scope: !901)
!903 = !DILocation(line: 133, column: 35, scope: !901)
!904 = !DILocation(line: 133, column: 9, scope: !895)
!905 = !DILocation(line: 133, column: 29, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !644, line: 133, column: 67)
!907 = !DILocation(line: 133, column: 15, scope: !906)
!908 = !DILocation(line: 133, column: 7, scope: !906)
!909 = !DILocation(line: 132, column: 25, scope: !895)
!910 = !DILocation(line: 132, column: 11, scope: !895)
!911 = distinct !{!911, !888, !912}
!912 = !DILocation(line: 133, column: 3, scope: !889)
!913 = !DILocation(line: 135, column: 3, scope: !889)
!914 = !DILocation(line: 136, column: 3, scope: !882)
!915 = !DILocation(line: 138, column: 1, scope: !875)
!916 = distinct !DISubprogram(name: "main", scope: !143, file: !143, line: 37, type: !917, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!917 = !DISubroutineType(types: !918)
!918 = !{!45, !45, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!920 = !DILocalVariable(name: "argc", arg: 1, scope: !916, file: !143, line: 37, type: !45)
!921 = !DILocation(line: 0, scope: !916)
!922 = !DILocalVariable(name: "argv", arg: 2, scope: !916, file: !143, line: 37, type: !919)
!923 = !DILocalVariable(name: "filename", scope: !916, file: !143, line: 39, type: !12)
!924 = !DILocation(line: 39, column: 8, scope: !916)
!925 = !DILocalVariable(name: "__cil_tmp7", scope: !916, file: !143, line: 43, type: !31)
!926 = !DILocation(line: 43, column: 9, scope: !916)
!927 = !DILocalVariable(name: "__cil_tmp8", scope: !916, file: !143, line: 44, type: !35)
!928 = !DILocation(line: 44, column: 9, scope: !916)
!929 = !DILocalVariable(name: "__cil_tmp9", scope: !916, file: !143, line: 45, type: !35)
!930 = !DILocation(line: 45, column: 9, scope: !916)
!931 = !DILocalVariable(name: "__cil_tmp10", scope: !916, file: !143, line: 46, type: !35)
!932 = !DILocation(line: 46, column: 9, scope: !916)
!933 = !DILocalVariable(name: "__cil_tmp11", scope: !916, file: !143, line: 47, type: !35)
!934 = !DILocation(line: 47, column: 9, scope: !916)
!935 = !DILocalVariable(name: "__cil_tmp12", scope: !916, file: !143, line: 48, type: !35)
!936 = !DILocation(line: 48, column: 9, scope: !916)
!937 = !DILocalVariable(name: "__cil_tmp13", scope: !916, file: !143, line: 49, type: !35)
!938 = !DILocation(line: 49, column: 9, scope: !916)
!939 = !DILocalVariable(name: "__cil_tmp14", scope: !916, file: !143, line: 50, type: !35)
!940 = !DILocation(line: 50, column: 9, scope: !916)
!941 = !DILocalVariable(name: "__cil_tmp15", scope: !916, file: !143, line: 51, type: !35)
!942 = !DILocation(line: 51, column: 9, scope: !916)
!943 = !DILocalVariable(name: "__cil_tmp16", scope: !916, file: !143, line: 52, type: !35)
!944 = !DILocation(line: 52, column: 9, scope: !916)
!945 = !DILocalVariable(name: "__cil_tmp17", scope: !916, file: !143, line: 53, type: !35)
!946 = !DILocation(line: 53, column: 9, scope: !916)
!947 = !DILocation(line: 40, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !143, line: 57, column: 3)
!949 = distinct !DILexicalBlock(scope: !950, file: !143, line: 56, column: 3)
!950 = distinct !DILexicalBlock(scope: !916, file: !143, line: 55, column: 3)
!951 = !DILocation(line: 42, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !143, line: 42, column: 3)
!953 = !DILocation(line: 44, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !143, line: 44, column: 3)
!955 = !DILocalVariable(name: "tmp", scope: !916, file: !143, line: 40, type: !32)
!956 = !DILocation(line: 44, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !143, line: 44, column: 7)
!958 = !DILocation(line: 44, column: 7, scope: !950)
!959 = !DILocation(line: 45, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !143, line: 46, column: 5)
!961 = distinct !DILexicalBlock(scope: !962, file: !143, line: 45, column: 5)
!962 = distinct !DILexicalBlock(scope: !957, file: !143, line: 44, column: 19)
!963 = !DILocation(line: 46, column: 5, scope: !962)
!964 = !DILocation(line: 51, column: 3, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !143, line: 49, column: 3)
!966 = distinct !DILexicalBlock(scope: !950, file: !143, line: 48, column: 3)
!967 = !DILocation(line: 52, column: 35, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !143, line: 53, column: 3)
!969 = !DILocation(line: 52, column: 3, scope: !968)
!970 = !DILocation(line: 54, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !143, line: 54, column: 3)
!972 = !DILocation(line: 56, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !143, line: 56, column: 3)
!974 = !DILocation(line: 56, column: 12, scope: !973)
!975 = !DILocation(line: 57, column: 23, scope: !976)
!976 = distinct !DILexicalBlock(scope: !950, file: !143, line: 57, column: 7)
!977 = !DILocation(line: 57, column: 7, scope: !976)
!978 = !DILocation(line: 57, column: 32, scope: !976)
!979 = !DILocation(line: 57, column: 7, scope: !950)
!980 = !DILocation(line: 58, column: 38, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !143, line: 59, column: 5)
!982 = distinct !DILexicalBlock(scope: !983, file: !143, line: 58, column: 5)
!983 = distinct !DILexicalBlock(scope: !976, file: !143, line: 57, column: 64)
!984 = !DILocation(line: 58, column: 5, scope: !981)
!985 = !DILocation(line: 59, column: 38, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !143, line: 60, column: 5)
!987 = !DILocation(line: 59, column: 5, scope: !986)
!988 = !DILocation(line: 60, column: 38, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !143, line: 61, column: 5)
!990 = !DILocation(line: 60, column: 5, scope: !989)
!991 = !DILocation(line: 61, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !982, file: !143, line: 62, column: 5)
!993 = !DILocation(line: 64, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !143, line: 66, column: 3)
!995 = distinct !DILexicalBlock(scope: !950, file: !143, line: 65, column: 3)
!996 = !DILocation(line: 64, column: 13, scope: !994)
!997 = !DILocation(line: 64, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !143, line: 68, column: 5)
!999 = distinct !DILexicalBlock(scope: !1000, file: !143, line: 67, column: 5)
!1000 = distinct !DILexicalBlock(scope: !994, file: !143, line: 64, column: 13)
!1001 = !DILocation(line: 64, column: 14, scope: !998)
!1002 = !DILocation(line: 64, column: 12, scope: !998)
!1003 = !DILocation(line: 64, column: 28, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !143, line: 64, column: 9)
!1005 = !DILocation(line: 64, column: 12, scope: !1004)
!1006 = !DILocation(line: 64, column: 35, scope: !1004)
!1007 = !DILocation(line: 64, column: 9, scope: !1000)
!1008 = !DILocation(line: 64, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !143, line: 64, column: 68)
!1010 = !DILocation(line: 66, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !143, line: 66, column: 9)
!1012 = !DILocation(line: 66, column: 9, scope: !1000)
!1013 = !DILocation(line: 68, column: 56, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !143, line: 68, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !143, line: 67, column: 7)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !143, line: 66, column: 16)
!1017 = !DILocation(line: 68, column: 64, scope: !1014)
!1018 = !DILocation(line: 68, column: 55, scope: !1014)
!1019 = !DILocation(line: 68, column: 17, scope: !1014)
!1020 = !DILocalVariable(name: "tmp___0", scope: !916, file: !143, line: 41, type: !45)
!1021 = !DILocation(line: 68, column: 19, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !143, line: 68, column: 11)
!1023 = !DILocation(line: 68, column: 11, scope: !1016)
!1024 = !DILocation(line: 69, column: 42, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !143, line: 70, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !143, line: 69, column: 9)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !143, line: 68, column: 26)
!1028 = !DILocation(line: 69, column: 9, scope: !1025)
!1029 = !DILocation(line: 70, column: 42, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !143, line: 71, column: 9)
!1031 = !DILocation(line: 70, column: 9, scope: !1030)
!1032 = !DILocation(line: 71, column: 9, scope: !1027)
!1033 = !DILocation(line: 73, column: 19, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1016, file: !143, line: 73, column: 11)
!1035 = !DILocation(line: 73, column: 27, scope: !1034)
!1036 = !DILocation(line: 73, column: 37, scope: !1034)
!1037 = !DILocation(line: 73, column: 11, scope: !1016)
!1038 = !DILocation(line: 74, column: 41, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !143, line: 75, column: 9)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !143, line: 74, column: 9)
!1041 = distinct !DILexicalBlock(scope: !1034, file: !143, line: 73, column: 48)
!1042 = !DILocation(line: 74, column: 87, scope: !1039)
!1043 = !DILocation(line: 74, column: 95, scope: !1039)
!1044 = !DILocation(line: 74, column: 86, scope: !1039)
!1045 = !DILocation(line: 74, column: 9, scope: !1039)
!1046 = !DILocation(line: 75, column: 26, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !143, line: 76, column: 9)
!1048 = !DILocation(line: 75, column: 9, scope: !1047)
!1049 = !DILocation(line: 78, column: 7, scope: !1041)
!1050 = !DILocation(line: 79, column: 5, scope: !1016)
!1051 = !DILocation(line: 80, column: 57, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !143, line: 81, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !143, line: 80, column: 7)
!1054 = distinct !DILexicalBlock(scope: !1011, file: !143, line: 79, column: 12)
!1055 = !DILocation(line: 80, column: 65, scope: !1052)
!1056 = !DILocation(line: 80, column: 56, scope: !1052)
!1057 = !DILocation(line: 80, column: 17, scope: !1052)
!1058 = !DILocalVariable(name: "tmp___1", scope: !916, file: !143, line: 42, type: !45)
!1059 = !DILocation(line: 80, column: 19, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !143, line: 80, column: 11)
!1061 = !DILocation(line: 80, column: 11, scope: !1054)
!1062 = !DILocation(line: 81, column: 42, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !143, line: 82, column: 9)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !143, line: 81, column: 9)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !143, line: 80, column: 26)
!1066 = !DILocation(line: 81, column: 9, scope: !1063)
!1067 = !DILocation(line: 82, column: 42, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !143, line: 83, column: 9)
!1069 = !DILocation(line: 82, column: 9, scope: !1068)
!1070 = !DILocation(line: 83, column: 9, scope: !1065)
!1071 = !DILocation(line: 85, column: 19, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1054, file: !143, line: 85, column: 11)
!1073 = !DILocation(line: 85, column: 27, scope: !1072)
!1074 = !DILocation(line: 85, column: 37, scope: !1072)
!1075 = !DILocation(line: 85, column: 11, scope: !1054)
!1076 = !DILocation(line: 86, column: 41, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !143, line: 87, column: 9)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !143, line: 86, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !143, line: 85, column: 48)
!1080 = !DILocation(line: 86, column: 87, scope: !1077)
!1081 = !DILocation(line: 86, column: 95, scope: !1077)
!1082 = !DILocation(line: 86, column: 86, scope: !1077)
!1083 = !DILocation(line: 86, column: 9, scope: !1077)
!1084 = !DILocation(line: 87, column: 26, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !143, line: 88, column: 9)
!1086 = !DILocation(line: 87, column: 9, scope: !1085)
!1087 = !DILocation(line: 90, column: 7, scope: !1079)
!1088 = distinct !{!1088, !993, !1089}
!1089 = !DILocation(line: 92, column: 3, scope: !994)
!1090 = !DILocation(line: 94, column: 3, scope: !994)
!1091 = !DILocation(line: 93, column: 12, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !143, line: 98, column: 3)
!1093 = distinct !DILexicalBlock(scope: !950, file: !143, line: 97, column: 3)
!1094 = !DILocation(line: 93, column: 3, scope: !1092)
!1095 = !DILocation(line: 95, column: 3, scope: !950)
!1096 = !DILocation(line: 0, scope: !950)
!1097 = !DILocation(line: 97, column: 1, scope: !916)
!1098 = distinct !DISubprogram(name: "grok_commandLine", scope: !143, file: !143, line: 106, type: !1099, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !45, !919}
!1101 = !DILocalVariable(name: "argc", arg: 1, scope: !1098, file: !143, line: 106, type: !45)
!1102 = !DILocation(line: 0, scope: !1098)
!1103 = !DILocalVariable(name: "argv", arg: 2, scope: !1098, file: !143, line: 106, type: !919)
!1104 = !DILocalVariable(name: "__cil_tmp4", scope: !1098, file: !143, line: 109, type: !35)
!1105 = !DILocation(line: 109, column: 9, scope: !1098)
!1106 = !DILocalVariable(name: "__cil_tmp5", scope: !1098, file: !143, line: 110, type: !35)
!1107 = !DILocation(line: 110, column: 9, scope: !1098)
!1108 = !DILocalVariable(name: "__cil_tmp6", scope: !1098, file: !143, line: 111, type: !35)
!1109 = !DILocation(line: 111, column: 9, scope: !1098)
!1110 = !DILocalVariable(name: "__cil_tmp7", scope: !1098, file: !143, line: 112, type: !35)
!1111 = !DILocation(line: 112, column: 9, scope: !1098)
!1112 = !DILocalVariable(name: "__cil_tmp8", scope: !1098, file: !143, line: 113, type: !35)
!1113 = !DILocation(line: 113, column: 9, scope: !1098)
!1114 = !DILocalVariable(name: "__cil_tmp9", scope: !1098, file: !143, line: 114, type: !35)
!1115 = !DILocation(line: 114, column: 9, scope: !1098)
!1116 = !DILocalVariable(name: "__cil_tmp10", scope: !1098, file: !143, line: 115, type: !35)
!1117 = !DILocation(line: 115, column: 9, scope: !1098)
!1118 = !DILocalVariable(name: "__cil_tmp11", scope: !1098, file: !143, line: 116, type: !35)
!1119 = !DILocation(line: 116, column: 9, scope: !1098)
!1120 = !DILocalVariable(name: "__cil_tmp12", scope: !1098, file: !143, line: 117, type: !35)
!1121 = !DILocation(line: 117, column: 9, scope: !1098)
!1122 = !DILocalVariable(name: "__cil_tmp13", scope: !1098, file: !143, line: 118, type: !35)
!1123 = !DILocation(line: 118, column: 9, scope: !1098)
!1124 = !DILocalVariable(name: "__cil_tmp14", scope: !1098, file: !143, line: 119, type: !35)
!1125 = !DILocation(line: 119, column: 9, scope: !1098)
!1126 = !DILocalVariable(name: "__cil_tmp15", scope: !1098, file: !143, line: 120, type: !35)
!1127 = !DILocation(line: 120, column: 9, scope: !1098)
!1128 = !DILocalVariable(name: "__cil_tmp16", scope: !1098, file: !143, line: 121, type: !35)
!1129 = !DILocation(line: 121, column: 9, scope: !1098)
!1130 = !DILocalVariable(name: "__cil_tmp17", scope: !1098, file: !143, line: 122, type: !35)
!1131 = !DILocation(line: 122, column: 9, scope: !1098)
!1132 = !DILocalVariable(name: "__cil_tmp18", scope: !1098, file: !143, line: 123, type: !35)
!1133 = !DILocation(line: 123, column: 9, scope: !1098)
!1134 = !DILocation(line: 109, column: 3, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !143, line: 127, column: 3)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !143, line: 126, column: 3)
!1137 = distinct !DILexicalBlock(scope: !1098, file: !143, line: 125, column: 3)
!1138 = !DILocation(line: 109, column: 13, scope: !1135)
!1139 = !DILocation(line: 109, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !143, line: 113, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !143, line: 112, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !143, line: 109, column: 13)
!1143 = !DILocalVariable(name: "o", scope: !1098, file: !143, line: 108, type: !45)
!1144 = !DILocation(line: 109, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !143, line: 109, column: 9)
!1146 = !DILocation(line: 109, column: 9, scope: !1142)
!1147 = !DILocation(line: 109, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !143, line: 109, column: 22)
!1149 = !DILocation(line: 111, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 111, column: 9)
!1151 = distinct !DILexicalBlock(scope: !1142, file: !143, line: 111, column: 5)
!1152 = !DILocation(line: 111, column: 9, scope: !1151)
!1153 = !DILocation(line: 111, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !143, line: 111, column: 18)
!1155 = !DILocation(line: 114, column: 11, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 114, column: 9)
!1157 = !DILocation(line: 114, column: 9, scope: !1151)
!1158 = !DILocation(line: 114, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !143, line: 114, column: 18)
!1160 = !DILocation(line: 117, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 117, column: 9)
!1162 = !DILocation(line: 117, column: 9, scope: !1151)
!1163 = !DILocation(line: 117, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !143, line: 117, column: 19)
!1165 = !DILocation(line: 120, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 120, column: 9)
!1167 = !DILocation(line: 120, column: 9, scope: !1151)
!1168 = !DILocation(line: 120, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !143, line: 120, column: 19)
!1170 = !DILocation(line: 131, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 131, column: 9)
!1172 = !DILocation(line: 131, column: 9, scope: !1151)
!1173 = !DILocation(line: 131, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !143, line: 131, column: 19)
!1175 = !DILocation(line: 134, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 134, column: 9)
!1177 = !DILocation(line: 134, column: 9, scope: !1151)
!1178 = !DILocation(line: 134, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !143, line: 134, column: 19)
!1180 = !DILocation(line: 137, column: 5, scope: !1151)
!1181 = !DILocation(line: 112, column: 12, scope: !1151)
!1182 = !DILocation(line: 113, column: 5, scope: !1151)
!1183 = !DILocation(line: 115, column: 11, scope: !1151)
!1184 = !DILocation(line: 116, column: 5, scope: !1151)
!1185 = !DILocation(line: 118, column: 80, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !143, line: 119, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 118, column: 5)
!1188 = !DILocation(line: 118, column: 5, scope: !1186)
!1189 = !DILocation(line: 119, column: 5, scope: !1151)
!1190 = !DILocation(line: 121, column: 38, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 122, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 121, column: 5)
!1193 = !DILocation(line: 121, column: 5, scope: !1191)
!1194 = !DILocation(line: 122, column: 38, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 124, column: 5)
!1196 = !DILocation(line: 122, column: 5, scope: !1195)
!1197 = !DILocation(line: 123, column: 38, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 124, column: 5)
!1199 = !DILocation(line: 123, column: 5, scope: !1198)
!1200 = !DILocation(line: 124, column: 38, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 125, column: 5)
!1202 = !DILocation(line: 124, column: 5, scope: !1201)
!1203 = !DILocation(line: 125, column: 38, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 126, column: 5)
!1205 = !DILocation(line: 125, column: 5, scope: !1204)
!1206 = !DILocation(line: 126, column: 38, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 127, column: 5)
!1208 = !DILocation(line: 126, column: 5, scope: !1207)
!1209 = !DILocation(line: 127, column: 38, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 128, column: 5)
!1211 = !DILocation(line: 127, column: 5, scope: !1210)
!1212 = !DILocation(line: 128, column: 38, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 129, column: 5)
!1214 = !DILocation(line: 128, column: 5, scope: !1213)
!1215 = !DILocation(line: 129, column: 38, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 130, column: 5)
!1217 = !DILocation(line: 129, column: 5, scope: !1216)
!1218 = !DILocation(line: 130, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1192, file: !143, line: 131, column: 5)
!1220 = !DILocation(line: 132, column: 11, scope: !1151)
!1221 = !DILocation(line: 133, column: 5, scope: !1151)
!1222 = !DILocation(line: 135, column: 38, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !143, line: 136, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 135, column: 5)
!1225 = !DILocation(line: 135, column: 5, scope: !1223)
!1226 = !DILocation(line: 136, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !143, line: 138, column: 5)
!1228 = !DILocation(line: 138, column: 38, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !143, line: 141, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1151, file: !143, line: 140, column: 5)
!1231 = !DILocation(line: 138, column: 5, scope: !1229)
!1232 = !DILocation(line: 139, column: 38, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !143, line: 140, column: 5)
!1234 = !DILocation(line: 139, column: 5, scope: !1233)
!1235 = !DILocation(line: 140, column: 5, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !143, line: 141, column: 5)
!1237 = distinct !{!1237, !1134, !1238}
!1238 = !DILocation(line: 145, column: 3, scope: !1135)
!1239 = !DILocation(line: 147, column: 3, scope: !1135)
!1240 = !DILocation(line: 144, column: 3, scope: !1137)
!1241 = distinct !DISubprogram(name: "convert_fileName", scope: !143, file: !143, line: 179, type: !582, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1242 = !DILocalVariable(name: "original", arg: 1, scope: !1241, file: !143, line: 179, type: !35)
!1243 = !DILocation(line: 0, scope: !1241)
!1244 = !DILocalVariable(name: "newname", scope: !1241, file: !143, line: 181, type: !12)
!1245 = !DILocation(line: 181, column: 8, scope: !1241)
!1246 = !DILocalVariable(name: "__cil_tmp11", scope: !1241, file: !143, line: 190, type: !31)
!1247 = !DILocation(line: 190, column: 9, scope: !1241)
!1248 = !DILocalVariable(name: "__cil_tmp12", scope: !1241, file: !143, line: 191, type: !35)
!1249 = !DILocation(line: 191, column: 9, scope: !1241)
!1250 = !DILocalVariable(name: "__cil_tmp13", scope: !1241, file: !143, line: 192, type: !35)
!1251 = !DILocation(line: 192, column: 9, scope: !1241)
!1252 = !DILocalVariable(name: "__cil_tmp14", scope: !1241, file: !143, line: 193, type: !35)
!1253 = !DILocation(line: 193, column: 9, scope: !1241)
!1254 = !DILocalVariable(name: "__cil_tmp15", scope: !1241, file: !143, line: 194, type: !35)
!1255 = !DILocation(line: 194, column: 9, scope: !1241)
!1256 = !DILocalVariable(name: "error", scope: !1241, file: !143, line: 184, type: !45)
!1257 = !DILocation(line: 185, column: 35, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !143, line: 185, column: 3)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 197, column: 3)
!1260 = distinct !DILexicalBlock(scope: !1241, file: !143, line: 196, column: 3)
!1261 = !DILocation(line: 185, column: 3, scope: !1258)
!1262 = !DILocation(line: 187, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !143, line: 187, column: 3)
!1264 = !DILocalVariable(name: "tmp", scope: !1241, file: !143, line: 185, type: !45)
!1265 = !DILocation(line: 187, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 187, column: 7)
!1267 = !DILocation(line: 187, column: 7, scope: !1260)
!1268 = !DILocation(line: 187, column: 11, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !143, line: 187, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !143, line: 187, column: 12)
!1271 = !DILocation(line: 187, column: 9, scope: !1270)
!1272 = !DILocation(line: 187, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !143, line: 187, column: 19)
!1274 = !DILocation(line: 189, column: 3, scope: !1270)
!1275 = !DILocation(line: 189, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !143, line: 191, column: 3)
!1277 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 190, column: 3)
!1278 = !DILocalVariable(name: "tmp___3", scope: !1241, file: !143, line: 189, type: !45)
!1279 = !DILocation(line: 189, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 189, column: 7)
!1281 = !DILocation(line: 189, column: 7, scope: !1260)
!1282 = !DILocalVariable(name: "i", scope: !1241, file: !143, line: 183, type: !45)
!1283 = !DILocation(line: 191, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !143, line: 193, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !143, line: 192, column: 5)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !143, line: 189, column: 16)
!1287 = !DILocation(line: 0, scope: !1286)
!1288 = !DILocation(line: 191, column: 15, scope: !1284)
!1289 = !DILocation(line: 191, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !143, line: 195, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !143, line: 194, column: 7)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !143, line: 191, column: 15)
!1293 = !DILocalVariable(name: "tmp___2", scope: !1241, file: !143, line: 188, type: !32)
!1294 = !DILocation(line: 191, column: 14, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !143, line: 191, column: 11)
!1296 = !DILocation(line: 191, column: 25, scope: !1295)
!1297 = !DILocation(line: 191, column: 11, scope: !1292)
!1298 = !DILocation(line: 191, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !143, line: 191, column: 37)
!1300 = !DILocation(line: 192, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !143, line: 194, column: 7)
!1302 = distinct !DILexicalBlock(scope: !1292, file: !143, line: 193, column: 7)
!1303 = !DILocalVariable(name: "tmp___1", scope: !1241, file: !143, line: 187, type: !405)
!1304 = !DILocation(line: 192, column: 27, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1292, file: !143, line: 192, column: 11)
!1306 = !DILocation(line: 192, column: 55, scope: !1305)
!1307 = !DILocation(line: 192, column: 44, scope: !1305)
!1308 = !DILocation(line: 192, column: 38, scope: !1305)
!1309 = !DILocation(line: 192, column: 36, scope: !1305)
!1310 = !DILocation(line: 192, column: 25, scope: !1305)
!1311 = !DILocation(line: 192, column: 11, scope: !1305)
!1312 = !DILocation(line: 192, column: 61, scope: !1305)
!1313 = !DILocation(line: 192, column: 11, scope: !1292)
!1314 = !DILocation(line: 193, column: 44, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !143, line: 194, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !143, line: 193, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !143, line: 192, column: 68)
!1318 = !DILocation(line: 193, column: 33, scope: !1315)
!1319 = !DILocation(line: 193, column: 27, scope: !1315)
!1320 = !DILocation(line: 193, column: 19, scope: !1315)
!1321 = !DILocalVariable(name: "tmp___0", scope: !1241, file: !143, line: 186, type: !45)
!1322 = !DILocation(line: 193, column: 22, scope: !1316)
!1323 = !DILocation(line: 193, column: 9, scope: !1316)
!1324 = !DILocation(line: 193, column: 20, scope: !1316)
!1325 = !DILocation(line: 194, column: 9, scope: !1317)
!1326 = !DILocation(line: 196, column: 31, scope: !1292)
!1327 = !DILocation(line: 196, column: 20, scope: !1292)
!1328 = !DILocation(line: 196, column: 7, scope: !1292)
!1329 = !DILocation(line: 196, column: 18, scope: !1292)
!1330 = !DILocation(line: 191, column: 9, scope: !1292)
!1331 = distinct !{!1331, !1283, !1332}
!1332 = !DILocation(line: 192, column: 5, scope: !1284)
!1333 = !DILocation(line: 194, column: 5, scope: !1284)
!1334 = !DILocation(line: 198, column: 5, scope: !1286)
!1335 = !DILocation(line: 198, column: 16, scope: !1286)
!1336 = !DILocation(line: 199, column: 3, scope: !1286)
!1337 = !DILocation(line: 200, column: 37, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !143, line: 201, column: 5)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !143, line: 200, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1280, file: !143, line: 199, column: 10)
!1341 = !DILocation(line: 200, column: 5, scope: !1338)
!1342 = !DILocation(line: 0, scope: !1260)
!1343 = !DILocation(line: 206, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 206, column: 7)
!1345 = !DILocation(line: 206, column: 7, scope: !1260)
!1346 = !DILocalVariable(name: "bslash", scope: !1241, file: !143, line: 182, type: !35)
!1347 = !DILocation(line: 208, column: 38, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !143, line: 208, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !143, line: 207, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !143, line: 206, column: 14)
!1351 = !DILocation(line: 208, column: 14, scope: !1348)
!1352 = !DILocation(line: 209, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !143, line: 209, column: 9)
!1354 = !DILocation(line: 209, column: 32, scope: !1353)
!1355 = !DILocation(line: 209, column: 9, scope: !1350)
!1356 = !DILocation(line: 209, column: 39, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !143, line: 211, column: 7)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !143, line: 210, column: 7)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !143, line: 209, column: 64)
!1360 = !DILocation(line: 209, column: 91, scope: !1357)
!1361 = !DILocation(line: 209, column: 7, scope: !1357)
!1362 = !DILocation(line: 212, column: 5, scope: !1359)
!1363 = !DILocation(line: 213, column: 3, scope: !1350)
!1364 = !DILocation(line: 212, column: 13, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 212, column: 7)
!1366 = !DILocation(line: 212, column: 7, scope: !1260)
!1367 = !DILocation(line: 213, column: 31, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !143, line: 214, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !143, line: 213, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !143, line: 212, column: 20)
!1371 = !DILocation(line: 213, column: 13, scope: !1368)
!1372 = !DILocation(line: 214, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !143, line: 214, column: 9)
!1374 = !DILocation(line: 214, column: 9, scope: !1370)
!1375 = !DILocation(line: 215, column: 40, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !143, line: 216, column: 7)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !143, line: 215, column: 7)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !143, line: 214, column: 16)
!1379 = !DILocation(line: 215, column: 7, scope: !1376)
!1380 = !DILocation(line: 216, column: 7, scope: !1378)
!1381 = !DILocation(line: 218, column: 3, scope: !1370)
!1382 = !DILocation(line: 220, column: 60, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !143, line: 220, column: 3)
!1384 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 219, column: 3)
!1385 = !DILocation(line: 220, column: 11, scope: !1383)
!1386 = !DILocation(line: 221, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 221, column: 7)
!1388 = !DILocation(line: 221, column: 7, scope: !1260)
!1389 = !DILocation(line: 222, column: 38, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !143, line: 223, column: 5)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !143, line: 222, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !143, line: 221, column: 14)
!1393 = !DILocation(line: 223, column: 23, scope: !1390)
!1394 = !DILocation(line: 222, column: 5, scope: !1390)
!1395 = !DILocation(line: 226, column: 38, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !143, line: 225, column: 5)
!1397 = !DILocation(line: 226, column: 5, scope: !1396)
!1398 = !DILocation(line: 229, column: 3, scope: !1392)
!1399 = !DILocation(line: 229, column: 78, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !143, line: 231, column: 3)
!1401 = distinct !DILexicalBlock(scope: !1260, file: !143, line: 230, column: 3)
!1402 = !DILocation(line: 229, column: 3, scope: !1400)
!1403 = !DILocation(line: 231, column: 3, scope: !1260)
!1404 = !DILocation(line: 233, column: 1, scope: !1241)
!1405 = distinct !DISubprogram(name: "is_fileHidden", scope: !143, file: !143, line: 288, type: !1406, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!45, !35}
!1408 = !DILocalVariable(name: "suspect", arg: 1, scope: !1405, file: !143, line: 288, type: !35)
!1409 = !DILocation(line: 0, scope: !1405)
!1410 = !DILocation(line: 290, column: 23, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !143, line: 290, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1405, file: !143, line: 292, column: 3)
!1413 = !DILocation(line: 290, column: 13, scope: !1411)
!1414 = !DILocation(line: 290, column: 7, scope: !1411)
!1415 = !DILocation(line: 290, column: 28, scope: !1411)
!1416 = !DILocation(line: 290, column: 7, scope: !1412)
!1417 = !DILocation(line: 290, column: 5, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !143, line: 290, column: 35)
!1419 = !DILocation(line: 292, column: 3, scope: !1412)
!1420 = !DILocation(line: 0, scope: !1412)
!1421 = !DILocation(line: 294, column: 1, scope: !1405)
!1422 = distinct !DISubprogram(name: "does_nameHaveUppers", scope: !143, file: !143, line: 272, type: !1406, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1423 = !DILocalVariable(name: "suspect", arg: 1, scope: !1422, file: !143, line: 272, type: !35)
!1424 = !DILocation(line: 0, scope: !1422)
!1425 = !DILocalVariable(name: "i", scope: !1422, file: !143, line: 274, type: !45)
!1426 = !DILocation(line: 275, column: 3, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !143, line: 277, column: 3)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !143, line: 276, column: 3)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !143, line: 278, column: 3)
!1430 = !DILocation(line: 0, scope: !1429)
!1431 = !DILocation(line: 275, column: 13, scope: !1427)
!1432 = !DILocation(line: 275, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !143, line: 279, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !143, line: 278, column: 5)
!1435 = distinct !DILexicalBlock(scope: !1427, file: !143, line: 275, column: 13)
!1436 = !DILocalVariable(name: "tmp___0", scope: !1422, file: !143, line: 276, type: !32)
!1437 = !DILocation(line: 275, column: 12, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !143, line: 275, column: 9)
!1439 = !DILocation(line: 275, column: 23, scope: !1438)
!1440 = !DILocation(line: 275, column: 9, scope: !1435)
!1441 = !DILocation(line: 275, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !143, line: 275, column: 35)
!1443 = !DILocation(line: 276, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !143, line: 278, column: 5)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !143, line: 277, column: 5)
!1446 = !DILocalVariable(name: "tmp", scope: !1422, file: !143, line: 275, type: !405)
!1447 = !DILocation(line: 276, column: 25, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1435, file: !143, line: 276, column: 9)
!1449 = !DILocation(line: 276, column: 48, scope: !1448)
!1450 = !DILocation(line: 276, column: 38, scope: !1448)
!1451 = !DILocation(line: 276, column: 32, scope: !1448)
!1452 = !DILocation(line: 276, column: 30, scope: !1448)
!1453 = !DILocation(line: 276, column: 23, scope: !1448)
!1454 = !DILocation(line: 276, column: 9, scope: !1448)
!1455 = !DILocation(line: 276, column: 54, scope: !1448)
!1456 = !DILocation(line: 276, column: 9, scope: !1435)
!1457 = !DILocation(line: 276, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !143, line: 276, column: 61)
!1459 = !DILocation(line: 275, column: 7, scope: !1435)
!1460 = distinct !{!1460, !1426, !1461}
!1461 = !DILocation(line: 276, column: 3, scope: !1427)
!1462 = !DILocation(line: 278, column: 3, scope: !1427)
!1463 = !DILocation(line: 279, column: 3, scope: !1429)
!1464 = !DILocation(line: 281, column: 1, scope: !1422)
!1465 = distinct !DISubprogram(name: "does_newnameExist", scope: !143, file: !143, line: 238, type: !1406, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1466 = !DILocalVariable(name: "suspect", arg: 1, scope: !1465, file: !143, line: 238, type: !35)
!1467 = !DILocation(line: 0, scope: !1465)
!1468 = !DILocalVariable(name: "__cil_tmp6", scope: !1465, file: !143, line: 244, type: !35)
!1469 = !DILocation(line: 244, column: 9, scope: !1465)
!1470 = !DILocalVariable(name: "__cil_tmp7", scope: !1465, file: !143, line: 245, type: !35)
!1471 = !DILocation(line: 245, column: 9, scope: !1465)
!1472 = !DILocalVariable(name: "__cil_tmp8", scope: !1465, file: !143, line: 246, type: !35)
!1473 = !DILocation(line: 246, column: 9, scope: !1465)
!1474 = !DILocalVariable(name: "__cil_tmp9", scope: !1465, file: !143, line: 247, type: !35)
!1475 = !DILocation(line: 247, column: 9, scope: !1465)
!1476 = !DILocation(line: 243, column: 3, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !143, line: 251, column: 3)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !143, line: 250, column: 3)
!1479 = distinct !DILexicalBlock(scope: !1465, file: !143, line: 249, column: 3)
!1480 = !DILocation(line: 244, column: 3, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !143, line: 245, column: 3)
!1482 = !DILocation(line: 246, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !143, line: 246, column: 3)
!1484 = !DILocalVariable(name: "tmp", scope: !1465, file: !143, line: 242, type: !173)
!1485 = !DILocation(line: 248, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1479, file: !143, line: 248, column: 7)
!1487 = !DILocation(line: 248, column: 27, scope: !1486)
!1488 = !DILocation(line: 248, column: 7, scope: !1479)
!1489 = !DILocation(line: 249, column: 38, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !143, line: 250, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !143, line: 249, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !143, line: 248, column: 59)
!1493 = !DILocation(line: 249, column: 5, scope: !1490)
!1494 = !DILocation(line: 250, column: 38, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !143, line: 251, column: 5)
!1496 = !DILocation(line: 250, column: 5, scope: !1495)
!1497 = !DILocation(line: 251, column: 38, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1491, file: !143, line: 252, column: 5)
!1499 = !DILocation(line: 251, column: 5, scope: !1498)
!1500 = !DILocation(line: 252, column: 5, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1491, file: !143, line: 253, column: 5)
!1502 = !DILocalVariable(name: "found", scope: !1465, file: !143, line: 241, type: !45)
!1503 = !DILocation(line: 257, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !143, line: 257, column: 3)
!1505 = distinct !DILexicalBlock(scope: !1479, file: !143, line: 256, column: 3)
!1506 = !DILocation(line: 255, column: 9, scope: !1479)
!1507 = !DILocation(line: 257, column: 13, scope: !1504)
!1508 = !DILocation(line: 257, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !143, line: 261, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !143, line: 260, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1504, file: !143, line: 257, column: 13)
!1512 = !DILocalVariable(name: "looking", scope: !1465, file: !143, line: 240, type: !156)
!1513 = !DILocation(line: 257, column: 12, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !143, line: 257, column: 9)
!1515 = !DILocation(line: 257, column: 36, scope: !1514)
!1516 = !DILocation(line: 257, column: 9, scope: !1511)
!1517 = !DILocation(line: 257, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !143, line: 257, column: 69)
!1519 = !DILocation(line: 258, column: 73, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !143, line: 260, column: 5)
!1521 = distinct !DILexicalBlock(scope: !1511, file: !143, line: 259, column: 5)
!1522 = !DILocation(line: 258, column: 63, scope: !1520)
!1523 = !DILocation(line: 258, column: 15, scope: !1520)
!1524 = !DILocalVariable(name: "tmp___0", scope: !1465, file: !143, line: 243, type: !45)
!1525 = !DILocation(line: 258, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1511, file: !143, line: 258, column: 9)
!1527 = !DILocation(line: 258, column: 9, scope: !1511)
!1528 = !DILocation(line: 259, column: 5, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !143, line: 258, column: 20)
!1530 = !DILocation(line: 0, scope: !1479)
!1531 = distinct !{!1531, !1503, !1532}
!1532 = !DILocation(line: 260, column: 3, scope: !1504)
!1533 = !DILocation(line: 262, column: 3, scope: !1504)
!1534 = !DILocation(line: 261, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !143, line: 266, column: 3)
!1536 = distinct !DILexicalBlock(scope: !1479, file: !143, line: 265, column: 3)
!1537 = !DILocation(line: 262, column: 3, scope: !1479)
