; ModuleID = '/tmp/tmp.ll'
source_filename = "c/cd-discid-1.1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"/dev/cdrom\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s [devicename]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CDROMREADTOCHDR\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: %s: Can't allocate memory for TOC entries\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CDROMREADTOCENTRY\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @cddb_sum(i32 %n) #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !105
  br label %while.body, !dbg !107

while.body:                                       ; preds = %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %add, %if.end ], !dbg !111
  %n.addr.0 = phi i32 [ %n, %entry ], [ %div, %if.end ]
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !106, metadata !DIExpression()), !dbg !105
  br label %while_continue___0, !dbg !112

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !112

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp sgt i32 %n.addr.0, 0, !dbg !113
  br i1 %cmp, label %if.end, label %if.then, !dbg !116

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !117

if.end:                                           ; preds = %while_continue
  %rem = srem i32 %n.addr.0, 10, !dbg !119
  %add = add nsw i32 %ret.0, %rem, !dbg !120
  call void @llvm.dbg.value(metadata i32 %add, metadata !106, metadata !DIExpression()), !dbg !105
  %div = sdiv i32 %n.addr.0, 10, !dbg !121
  call void @llvm.dbg.value(metadata i32 %div, metadata !104, metadata !DIExpression()), !dbg !105
  br label %while.body, !dbg !107, !llvm.loop !122

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !124

while_break:                                      ; preds = %while_break___0, %if.then
  ret i32 %ret.0, !dbg !125
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !126 {
entry:
  %hdr = alloca %struct.cdrom_tochdr, align 1
  call void @llvm.dbg.value(metadata i32 %argc, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8** %argv, metadata !132, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.cdrom_tochdr* %hdr, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata !7, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata !7, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata !7, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata !7, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata !7, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata !7, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata !7, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata !7, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata !7, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata !7, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata !7, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata !7, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata !7, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata !7, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata !7, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i64 0, metadata !169, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8 1, metadata !171, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), metadata !172, metadata !DIExpression()), !dbg !131
  %cmp = icmp eq i32 %argc, 2, !dbg !173
  br i1 %cmp, label %if.then, label %if.else, !dbg !176

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !177
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !179
  call void @llvm.dbg.value(metadata i8* %0, metadata !172, metadata !DIExpression()), !dbg !131
  br label %if.end4, !dbg !180

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %argc, 2, !dbg !181
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !183

if.then2:                                         ; preds = %if.else
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !184
  %add.ptr3 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !188
  %2 = load i8*, i8** %add.ptr3, align 8, !dbg !189
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %2), !dbg !190
  call void @exit(i32 1) #5, !dbg !191
  unreachable, !dbg !191

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %devicename.0 = phi i8* [ %0, %if.then ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %if.end ], !dbg !193
  call void @llvm.dbg.value(metadata i8* %devicename.0, metadata !172, metadata !DIExpression()), !dbg !131
  %call5 = call i32 (i8*, i32, ...) @open(i8* %devicename.0, i32 2048), !dbg !194
  call void @llvm.dbg.value(metadata i32 %call5, metadata !197, metadata !DIExpression()), !dbg !131
  %cmp6 = icmp slt i32 %call5, 0, !dbg !198
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !200

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !201
  %add.ptr8 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !205
  %4 = load i8*, i8** %add.ptr8, align 8, !dbg !206
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %4, i8* %devicename.0), !dbg !207
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !208
  call void @exit(i32 1) #5, !dbg !210
  unreachable, !dbg !210

if.end10:                                         ; preds = %if.end4
  %call11 = call i32 (i32, i64, ...) @ioctl(i32 %call5, i64 21253, %struct.cdrom_tochdr* %hdr) #6, !dbg !212
  call void @llvm.dbg.value(metadata i32 %call11, metadata !215, metadata !DIExpression()), !dbg !131
  %cmp12 = icmp slt i32 %call11, 0, !dbg !216
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !218

if.then13:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !219
  %add.ptr14 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !223
  %6 = load i8*, i8** %add.ptr14, align 8, !dbg !224
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %6, i8* %devicename.0), !dbg !225
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !226
  call void @exit(i32 1) #5, !dbg !228
  unreachable, !dbg !228

if.end16:                                         ; preds = %if.end10
  %cdth_trk0 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %hdr, i32 0, i32 0, !dbg !230
  %7 = load i8, i8* %cdth_trk0, align 1, !dbg !230
  call void @llvm.dbg.value(metadata i8 %7, metadata !170, metadata !DIExpression()), !dbg !131
  %cdth_trk1 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %hdr, i32 0, i32 1, !dbg !232
  %8 = load i8, i8* %cdth_trk1, align 1, !dbg !232
  call void @llvm.dbg.value(metadata i8 %8, metadata !171, metadata !DIExpression()), !dbg !131
  %conv = zext i8 %8 to i32, !dbg !233
  %add = add nsw i32 %conv, 1, !dbg !234
  %conv17 = sext i32 %add to i64, !dbg !235
  %mul = mul i64 %conv17, 12, !dbg !236
  %conv18 = trunc i64 %mul to i32, !dbg !237
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !238, metadata !DIExpression()), !dbg !131
  %call19 = call noalias i8* @malloc(i32 %conv18) #6, !dbg !239
  call void @llvm.dbg.value(metadata i8* %call19, metadata !241, metadata !DIExpression()), !dbg !131
  %9 = bitcast i8* %call19 to %struct.cdrom_tocentry*, !dbg !242
  call void @llvm.dbg.value(metadata %struct.cdrom_tocentry* %9, metadata !243, metadata !DIExpression()), !dbg !131
  %tobool = icmp ne %struct.cdrom_tocentry* %9, null, !dbg !244
  br i1 %tobool, label %if.end23, label %if.then20, !dbg !246

if.then20:                                        ; preds = %if.end16
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !247
  %add.ptr21 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !251
  %11 = load i8*, i8** %add.ptr21, align 8, !dbg !252
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i8* %11, i8* %devicename.0), !dbg !253
  call void @exit(i32 1) #5, !dbg !254
  unreachable, !dbg !254

if.end23:                                         ; preds = %if.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body, !dbg !257

while.body:                                       ; preds = %if.end42, %if.end23
  %i.0 = phi i32 [ 0, %if.end23 ], [ %inc, %if.end42 ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while_continue___2, !dbg !260

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !260

while_continue:                                   ; preds = %while_continue___2
  %conv24 = zext i8 %8 to i32, !dbg !261
  %cmp25 = icmp slt i32 %i.0, %conv24, !dbg !264
  br i1 %cmp25, label %if.end28, label %if.then27, !dbg !265

if.then27:                                        ; preds = %while_continue
  br label %while_break, !dbg !266

if.end28:                                         ; preds = %while_continue
  %add29 = add nsw i32 %i.0, 1, !dbg !268
  %conv30 = trunc i32 %add29 to i8, !dbg !270
  %idx.ext = sext i32 %i.0 to i64, !dbg !271
  %add.ptr31 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext, !dbg !271
  %cdte_track = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr31, i32 0, i32 0, !dbg !272
  store i8 %conv30, i8* %cdte_track, align 4, !dbg !273
  %idx.ext32 = sext i32 %i.0 to i64, !dbg !274
  %add.ptr33 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext32, !dbg !274
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr33, i32 0, i32 2, !dbg !275
  store i8 1, i8* %cdte_format, align 2, !dbg !276
  %idx.ext34 = sext i32 %i.0 to i64, !dbg !277
  %add.ptr35 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext34, !dbg !277
  %call36 = call i32 (i32, i64, ...) @ioctl(i32 %call5, i64 21254, %struct.cdrom_tocentry* %add.ptr35) #6, !dbg !279
  call void @llvm.dbg.value(metadata i32 %call36, metadata !280, metadata !DIExpression()), !dbg !131
  %cmp37 = icmp slt i32 %call36, 0, !dbg !281
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !283

if.then39:                                        ; preds = %if.end28
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !284
  %add.ptr40 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !288
  %13 = load i8*, i8** %add.ptr40, align 8, !dbg !289
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %13, i8* %devicename.0), !dbg !290
  call void @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)), !dbg !291
  br label %if.end42, !dbg !293

if.end42:                                         ; preds = %if.then39, %if.end28
  %inc = add nsw i32 %i.0, 1, !dbg !294
  call void @llvm.dbg.value(metadata i32 %inc, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body, !dbg !257, !llvm.loop !295

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !297

while_break:                                      ; preds = %while_break___2, %if.then27
  %conv43 = zext i8 %8 to i32, !dbg !298
  %idx.ext44 = sext i32 %conv43 to i64, !dbg !300
  %add.ptr45 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext44, !dbg !300
  %cdte_track46 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr45, i32 0, i32 0, !dbg !301
  store i8 -86, i8* %cdte_track46, align 4, !dbg !302
  %conv47 = zext i8 %8 to i32, !dbg !303
  %idx.ext48 = sext i32 %conv47 to i64, !dbg !304
  %add.ptr49 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext48, !dbg !304
  %cdte_format50 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr49, i32 0, i32 2, !dbg !305
  store i8 1, i8* %cdte_format50, align 2, !dbg !306
  %idx.ext51 = sext i32 %i.0 to i64, !dbg !307
  %add.ptr52 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext51, !dbg !307
  %call53 = call i32 (i32, i64, ...) @ioctl(i32 %call5, i64 21254, %struct.cdrom_tocentry* %add.ptr52) #6, !dbg !309
  call void @llvm.dbg.value(metadata i32 %call53, metadata !310, metadata !DIExpression()), !dbg !131
  %cmp54 = icmp slt i32 %call53, 0, !dbg !311
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !313

if.then56:                                        ; preds = %while_break
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %add.ptr57 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !318
  %15 = load i8*, i8** %add.ptr57, align 8, !dbg !319
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %15, i8* %devicename.0), !dbg !320
  call void @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)), !dbg !321
  br label %if.end59, !dbg !323

if.end59:                                         ; preds = %if.then56, %while_break
  call void @llvm.dbg.value(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body60, !dbg !324

while.body60:                                     ; preds = %if.end65, %if.end59
  %i.1 = phi i32 [ 0, %if.end59 ], [ %inc72, %if.end65 ], !dbg !193
  %cksum.0 = phi i64 [ 0, %if.end59 ], [ %add71, %if.end65 ], !dbg !193
  call void @llvm.dbg.value(metadata i64 %cksum.0, metadata !169, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while_continue___3, !dbg !327

while_continue___3:                               ; preds = %while.body60
  br label %while_continue___0, !dbg !327

while_continue___0:                               ; preds = %while_continue___3
  %conv61 = zext i8 %8 to i32, !dbg !328
  %cmp62 = icmp slt i32 %i.1, %conv61, !dbg !331
  br i1 %cmp62, label %if.end65, label %if.then64, !dbg !332

if.then64:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !333

if.end65:                                         ; preds = %while_continue___0
  %idx.ext66 = sext i32 %i.1 to i64, !dbg !335
  %add.ptr67 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext66, !dbg !335
  %cdte_addr = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr67, i32 0, i32 3, !dbg !338
  %lba = bitcast %union.cdrom_addr* %cdte_addr to i32*, !dbg !339
  %16 = load i32, i32* %lba, align 4, !dbg !339
  %add68 = add nsw i32 %16, 150, !dbg !340
  %div = sdiv i32 %add68, 75, !dbg !341
  %call69 = call i32 @cddb_sum(i32 %div), !dbg !342
  call void @llvm.dbg.value(metadata i32 %call69, metadata !343, metadata !DIExpression()), !dbg !131
  %conv70 = sext i32 %call69 to i64, !dbg !344
  %add71 = add nsw i64 %cksum.0, %conv70, !dbg !345
  call void @llvm.dbg.value(metadata i64 %add71, metadata !169, metadata !DIExpression()), !dbg !131
  %inc72 = add nsw i32 %i.1, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %inc72, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body60, !dbg !324, !llvm.loop !347

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !349

while_break___0:                                  ; preds = %while_break___3, %if.then64
  %conv73 = zext i8 %8 to i32, !dbg !350
  %idx.ext74 = sext i32 %conv73 to i64, !dbg !352
  %add.ptr75 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext74, !dbg !352
  %cdte_addr76 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr75, i32 0, i32 3, !dbg !353
  %lba77 = bitcast %union.cdrom_addr* %cdte_addr76 to i32*, !dbg !354
  %17 = load i32, i32* %lba77, align 4, !dbg !354
  %add78 = add nsw i32 %17, 150, !dbg !355
  %div79 = sdiv i32 %add78, 75, !dbg !356
  %add.ptr80 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 0, !dbg !357
  %cdte_addr81 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr80, i32 0, i32 3, !dbg !358
  %lba82 = bitcast %union.cdrom_addr* %cdte_addr81 to i32*, !dbg !359
  %18 = load i32, i32* %lba82, align 4, !dbg !359
  %add83 = add nsw i32 %18, 150, !dbg !360
  %div84 = sdiv i32 %add83, 75, !dbg !361
  %sub = sub nsw i32 %div79, %div84, !dbg !362
  call void @llvm.dbg.value(metadata i32 %sub, metadata !363, metadata !DIExpression()), !dbg !131
  %rem = srem i64 %cksum.0, 255, !dbg !364
  %shl = shl i64 %rem, 24, !dbg !366
  %shl85 = shl i32 %sub, 8, !dbg !367
  %conv86 = sext i32 %shl85 to i64, !dbg !368
  %or = or i64 %shl, %conv86, !dbg !369
  %conv87 = zext i8 %8 to i64, !dbg !370
  %or88 = or i64 %or, %conv87, !dbg !371
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 %or88), !dbg !372
  %conv90 = zext i8 %8 to i32, !dbg !373
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %conv90), !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body92, !dbg !376

while.body92:                                     ; preds = %if.end97, %while_break___0
  %i.2 = phi i32 [ 0, %while_break___0 ], [ %inc104, %if.end97 ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while_continue___4, !dbg !379

while_continue___4:                               ; preds = %while.body92
  br label %while_continue___1, !dbg !379

while_continue___1:                               ; preds = %while_continue___4
  %conv93 = zext i8 %8 to i32, !dbg !380
  %cmp94 = icmp slt i32 %i.2, %conv93, !dbg !383
  br i1 %cmp94, label %if.end97, label %if.then96, !dbg !384

if.then96:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !385

if.end97:                                         ; preds = %while_continue___1
  %idx.ext98 = sext i32 %i.2 to i64, !dbg !387
  %add.ptr99 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext98, !dbg !387
  %cdte_addr100 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr99, i32 0, i32 3, !dbg !390
  %lba101 = bitcast %union.cdrom_addr* %cdte_addr100 to i32*, !dbg !391
  %19 = load i32, i32* %lba101, align 4, !dbg !391
  %add102 = add nsw i32 %19, 150, !dbg !392
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %add102), !dbg !393
  %inc104 = add nsw i32 %i.2, 1, !dbg !394
  call void @llvm.dbg.value(metadata i32 %inc104, metadata !256, metadata !DIExpression()), !dbg !131
  br label %while.body92, !dbg !376, !llvm.loop !395

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !397

while_break___1:                                  ; preds = %while_break___4, %if.then96
  %conv105 = zext i8 %8 to i32, !dbg !398
  %idx.ext106 = sext i32 %conv105 to i64, !dbg !401
  %add.ptr107 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i64 %idx.ext106, !dbg !401
  %cdte_addr108 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %add.ptr107, i32 0, i32 3, !dbg !402
  %lba109 = bitcast %union.cdrom_addr* %cdte_addr108 to i32*, !dbg !403
  %20 = load i32, i32* %lba109, align 4, !dbg !403
  %add110 = add nsw i32 %20, 150, !dbg !404
  %div111 = sdiv i32 %add110, 75, !dbg !405
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %div111), !dbg !406
  %21 = bitcast %struct.cdrom_tocentry* %9 to i8*, !dbg !407
  call void @free(i8* %21) #6, !dbg !409
  ret i32 0, !dbg !410
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @open(i8*, i32, ...) #2

declare void @perror(i8*) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #4

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!99}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, nameTableKind: GNU)
!6 = !DIFile(filename: "c/cd-discid-1.1.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{}
!8 = !{!9, !10, !12, !75, !19, !77, !67, !78, !83, !45, !62}
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !16, line: 271, size: 1728, elements: !17)
!16 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!17 = !{!18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !39, !40, !41, !42, !46, !48, !50, !54, !57, !61, !63, !64, !65, !66, !70, !71}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !16, line: 272, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !15, file: !16, line: 273, baseType: !10, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !15, file: !16, line: 274, baseType: !10, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !15, file: !16, line: 275, baseType: !10, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !15, file: !16, line: 276, baseType: !10, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !15, file: !16, line: 277, baseType: !10, size: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !15, file: !16, line: 278, baseType: !10, size: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !15, file: !16, line: 279, baseType: !10, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !15, file: !16, line: 280, baseType: !10, size: 64, offset: 512)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !15, file: !16, line: 281, baseType: !10, size: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !15, file: !16, line: 282, baseType: !10, size: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !15, file: !16, line: 283, baseType: !10, size: 64, offset: 704)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !15, file: !16, line: 284, baseType: !32, size: 64, offset: 768)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !16, line: 186, size: 192, elements: !34)
!34 = !{!35, !36, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !33, file: !16, line: 187, baseType: !32, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !33, file: !16, line: 188, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !33, file: !16, line: 189, baseType: !19, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !15, file: !16, line: 285, baseType: !37, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !15, file: !16, line: 286, baseType: !19, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !16, line: 287, baseType: !19, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !15, file: !16, line: 288, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 141, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !15, file: !16, line: 289, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !15, file: !16, line: 290, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !15, file: !16, line: 291, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 292, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !16, line: 180, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !16, line: 293, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 142, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !44, line: 56, baseType: !60)
!60 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !15, file: !16, line: 294, baseType: !62, size: 64, offset: 1216)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !15, file: !16, line: 295, baseType: !62, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !15, file: !16, line: 296, baseType: !62, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !15, file: !16, line: 297, baseType: !62, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !15, file: !16, line: 298, baseType: !67, size: 32, offset: 1472)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 211, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !15, file: !16, line: 299, baseType: !19, size: 32, offset: 1504)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !15, file: !16, line: 300, baseType: !72, size: 192, offset: 1536)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 24)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_tocentry", file: !80, line: 219, size: 96, elements: !81)
!80 = !DIFile(filename: "/usr/include/linux/cdrom.h", directory: "")
!81 = !{!82, !85, !86, !87, !88, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_track", scope: !79, file: !80, line: 220, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !84, line: 20, baseType: !9)
!84 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_adr", scope: !79, file: !80, line: 221, baseType: !83, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_ctrl", scope: !79, file: !80, line: 222, baseType: !83, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_format", scope: !79, file: !80, line: 223, baseType: !83, size: 8, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_addr", scope: !79, file: !80, line: 224, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cdrom_addr", file: !80, line: 162, size: 32, elements: !90)
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "msf", scope: !89, file: !80, line: 163, baseType: !92, size: 24)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_msf0", file: !80, line: 154, size: 24, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !92, file: !80, line: 155, baseType: !83, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !92, file: !80, line: 156, baseType: !83, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !92, file: !80, line: 157, baseType: !83, size: 8, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !89, file: !80, line: 164, baseType: !19, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_datamode", scope: !79, file: !80, line: 225, baseType: !83, size: 8, offset: 64)
!99 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!100 = distinct !DISubprogram(name: "cddb_sum", scope: !101, file: !101, line: 101, type: !102, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!101 = !DIFile(filename: "/home/wslee/benchmarks/sound/cd-discid-1.1/cd-discid.c", directory: "")
!102 = !DISubroutineType(types: !103)
!103 = !{!19, !19}
!104 = !DILocalVariable(name: "n", arg: 1, scope: !100, file: !101, line: 101, type: !19)
!105 = !DILocation(line: 0, scope: !100)
!106 = !DILocalVariable(name: "ret", scope: !100, file: !101, line: 103, type: !19)
!107 = !DILocation(line: 106, column: 3, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !101, line: 106, column: 3)
!109 = distinct !DILexicalBlock(scope: !110, file: !101, line: 105, column: 3)
!110 = distinct !DILexicalBlock(scope: !100, file: !101, line: 105, column: 3)
!111 = !DILocation(line: 0, scope: !110)
!112 = !DILocation(line: 106, column: 13, scope: !108)
!113 = !DILocation(line: 106, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !101, line: 106, column: 9)
!115 = distinct !DILexicalBlock(scope: !108, file: !101, line: 106, column: 13)
!116 = !DILocation(line: 106, column: 9, scope: !115)
!117 = !DILocation(line: 106, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !101, line: 106, column: 20)
!119 = !DILocation(line: 107, column: 14, scope: !115)
!120 = !DILocation(line: 107, column: 9, scope: !115)
!121 = !DILocation(line: 108, column: 7, scope: !115)
!122 = distinct !{!122, !107, !123}
!123 = !DILocation(line: 109, column: 3, scope: !108)
!124 = !DILocation(line: 111, column: 3, scope: !108)
!125 = !DILocation(line: 111, column: 3, scope: !110)
!126 = distinct !DISubprogram(name: "main", scope: !101, file: !101, line: 114, type: !127, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!127 = !DISubroutineType(types: !128)
!128 = !{!19, !19, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!130 = !DILocalVariable(name: "argc", arg: 1, scope: !126, file: !101, line: 114, type: !19)
!131 = !DILocation(line: 0, scope: !126)
!132 = !DILocalVariable(name: "argv", arg: 2, scope: !126, file: !101, line: 114, type: !129)
!133 = !DILocalVariable(name: "hdr", scope: !126, file: !101, line: 124, type: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_tochdr", file: !80, line: 189, size: 16, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cdth_trk0", scope: !134, file: !80, line: 190, baseType: !83, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cdth_trk1", scope: !134, file: !80, line: 191, baseType: !83, size: 8, offset: 8)
!138 = !DILocation(line: 124, column: 23, scope: !126)
!139 = !DILocalVariable(name: "__cil_tmp18", scope: !126, file: !101, line: 131, type: !10)
!140 = !DILocation(line: 131, column: 9, scope: !126)
!141 = !DILocalVariable(name: "__cil_tmp19", scope: !126, file: !101, line: 132, type: !10)
!142 = !DILocation(line: 132, column: 9, scope: !126)
!143 = !DILocalVariable(name: "__cil_tmp20", scope: !126, file: !101, line: 133, type: !10)
!144 = !DILocation(line: 133, column: 9, scope: !126)
!145 = !DILocalVariable(name: "__cil_tmp21", scope: !126, file: !101, line: 134, type: !10)
!146 = !DILocation(line: 134, column: 9, scope: !126)
!147 = !DILocalVariable(name: "__cil_tmp22", scope: !126, file: !101, line: 135, type: !10)
!148 = !DILocation(line: 135, column: 9, scope: !126)
!149 = !DILocalVariable(name: "__cil_tmp23", scope: !126, file: !101, line: 136, type: !10)
!150 = !DILocation(line: 136, column: 9, scope: !126)
!151 = !DILocalVariable(name: "__cil_tmp24", scope: !126, file: !101, line: 137, type: !10)
!152 = !DILocation(line: 137, column: 9, scope: !126)
!153 = !DILocalVariable(name: "__cil_tmp25", scope: !126, file: !101, line: 138, type: !10)
!154 = !DILocation(line: 138, column: 9, scope: !126)
!155 = !DILocalVariable(name: "__cil_tmp26", scope: !126, file: !101, line: 139, type: !10)
!156 = !DILocation(line: 139, column: 9, scope: !126)
!157 = !DILocalVariable(name: "__cil_tmp27", scope: !126, file: !101, line: 140, type: !10)
!158 = !DILocation(line: 140, column: 9, scope: !126)
!159 = !DILocalVariable(name: "__cil_tmp28", scope: !126, file: !101, line: 141, type: !10)
!160 = !DILocation(line: 141, column: 9, scope: !126)
!161 = !DILocalVariable(name: "__cil_tmp29", scope: !126, file: !101, line: 142, type: !10)
!162 = !DILocation(line: 142, column: 9, scope: !126)
!163 = !DILocalVariable(name: "__cil_tmp30", scope: !126, file: !101, line: 143, type: !10)
!164 = !DILocation(line: 143, column: 9, scope: !126)
!165 = !DILocalVariable(name: "__cil_tmp31", scope: !126, file: !101, line: 144, type: !10)
!166 = !DILocation(line: 144, column: 9, scope: !126)
!167 = !DILocalVariable(name: "__cil_tmp32", scope: !126, file: !101, line: 145, type: !10)
!168 = !DILocation(line: 145, column: 9, scope: !126)
!169 = !DILocalVariable(name: "cksum", scope: !126, file: !101, line: 120, type: !45)
!170 = !DILocalVariable(name: "first", scope: !126, file: !101, line: 121, type: !9)
!171 = !DILocalVariable(name: "last", scope: !126, file: !101, line: 122, type: !9)
!172 = !DILocalVariable(name: "devicename", scope: !126, file: !101, line: 123, type: !10)
!173 = !DILocation(line: 129, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !101, line: 129, column: 7)
!175 = distinct !DILexicalBlock(scope: !126, file: !101, line: 147, column: 3)
!176 = !DILocation(line: 129, column: 7, scope: !175)
!177 = !DILocation(line: 130, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !101, line: 129, column: 18)
!179 = !DILocation(line: 130, column: 18, scope: !178)
!180 = !DILocation(line: 131, column: 3, scope: !178)
!181 = !DILocation(line: 131, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !101, line: 131, column: 7)
!183 = !DILocation(line: 131, column: 7, scope: !174)
!184 = !DILocation(line: 132, column: 38, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !101, line: 133, column: 5)
!186 = distinct !DILexicalBlock(scope: !187, file: !101, line: 132, column: 5)
!187 = distinct !DILexicalBlock(scope: !182, file: !101, line: 131, column: 17)
!188 = !DILocation(line: 133, column: 20, scope: !185)
!189 = !DILocation(line: 133, column: 13, scope: !185)
!190 = !DILocation(line: 132, column: 5, scope: !185)
!191 = !DILocation(line: 133, column: 5, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !101, line: 135, column: 5)
!193 = !DILocation(line: 0, scope: !175)
!194 = !DILocation(line: 136, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !101, line: 138, column: 3)
!196 = distinct !DILexicalBlock(scope: !175, file: !101, line: 137, column: 3)
!197 = !DILocalVariable(name: "drive", scope: !126, file: !101, line: 117, type: !19)
!198 = !DILocation(line: 137, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !175, file: !101, line: 137, column: 7)
!200 = !DILocation(line: 137, column: 7, scope: !175)
!201 = !DILocation(line: 138, column: 38, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !101, line: 139, column: 5)
!203 = distinct !DILexicalBlock(scope: !204, file: !101, line: 138, column: 5)
!204 = distinct !DILexicalBlock(scope: !199, file: !101, line: 137, column: 18)
!205 = !DILocation(line: 139, column: 20, scope: !202)
!206 = !DILocation(line: 139, column: 13, scope: !202)
!207 = !DILocation(line: 138, column: 5, scope: !202)
!208 = !DILocation(line: 139, column: 5, scope: !209)
!209 = distinct !DILexicalBlock(scope: !203, file: !101, line: 141, column: 5)
!210 = !DILocation(line: 140, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !101, line: 141, column: 5)
!212 = !DILocation(line: 154, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !101, line: 145, column: 3)
!214 = distinct !DILexicalBlock(scope: !175, file: !101, line: 144, column: 3)
!215 = !DILocalVariable(name: "tmp", scope: !126, file: !101, line: 126, type: !19)
!216 = !DILocation(line: 154, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !175, file: !101, line: 154, column: 7)
!218 = !DILocation(line: 154, column: 7, scope: !175)
!219 = !DILocation(line: 155, column: 38, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !101, line: 156, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !101, line: 155, column: 5)
!222 = distinct !DILexicalBlock(scope: !217, file: !101, line: 154, column: 16)
!223 = !DILocation(line: 156, column: 20, scope: !220)
!224 = !DILocation(line: 156, column: 13, scope: !220)
!225 = !DILocation(line: 155, column: 5, scope: !220)
!226 = !DILocation(line: 156, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !101, line: 158, column: 5)
!228 = !DILocation(line: 157, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !221, file: !101, line: 158, column: 5)
!230 = !DILocation(line: 161, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !175, file: !101, line: 161, column: 3)
!232 = !DILocation(line: 162, column: 14, scope: !231)
!233 = !DILocation(line: 164, column: 33, scope: !231)
!234 = !DILocation(line: 164, column: 44, scope: !231)
!235 = !DILocation(line: 164, column: 16, scope: !231)
!236 = !DILocation(line: 164, column: 49, scope: !231)
!237 = !DILocation(line: 164, column: 9, scope: !231)
!238 = !DILocalVariable(name: "len", scope: !126, file: !101, line: 116, type: !19)
!239 = !DILocation(line: 166, column: 13, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !101, line: 165, column: 3)
!241 = !DILocalVariable(name: "tmp___0", scope: !126, file: !101, line: 127, type: !62)
!242 = !DILocation(line: 166, column: 14, scope: !231)
!243 = !DILocalVariable(name: "TocEntry", scope: !126, file: !101, line: 125, type: !78)
!244 = !DILocation(line: 167, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !175, file: !101, line: 167, column: 7)
!246 = !DILocation(line: 167, column: 7, scope: !175)
!247 = !DILocation(line: 168, column: 38, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !101, line: 169, column: 5)
!249 = distinct !DILexicalBlock(scope: !250, file: !101, line: 168, column: 5)
!250 = distinct !DILexicalBlock(scope: !245, file: !101, line: 167, column: 19)
!251 = !DILocation(line: 169, column: 20, scope: !248)
!252 = !DILocation(line: 169, column: 13, scope: !248)
!253 = !DILocation(line: 168, column: 5, scope: !248)
!254 = !DILocation(line: 171, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !101, line: 171, column: 5)
!256 = !DILocalVariable(name: "i", scope: !126, file: !101, line: 118, type: !19)
!257 = !DILocation(line: 210, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !101, line: 212, column: 3)
!259 = distinct !DILexicalBlock(scope: !175, file: !101, line: 211, column: 3)
!260 = !DILocation(line: 210, column: 13, scope: !258)
!261 = !DILocation(line: 210, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !101, line: 210, column: 9)
!263 = distinct !DILexicalBlock(scope: !258, file: !101, line: 210, column: 13)
!264 = !DILocation(line: 210, column: 14, scope: !262)
!265 = !DILocation(line: 210, column: 9, scope: !263)
!266 = !DILocation(line: 210, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !101, line: 210, column: 29)
!268 = !DILocation(line: 212, column: 44, scope: !269)
!269 = distinct !DILexicalBlock(scope: !263, file: !101, line: 212, column: 5)
!270 = !DILocation(line: 212, column: 34, scope: !269)
!271 = !DILocation(line: 212, column: 15, scope: !269)
!272 = !DILocation(line: 212, column: 21, scope: !269)
!273 = !DILocation(line: 212, column: 32, scope: !269)
!274 = !DILocation(line: 213, column: 15, scope: !269)
!275 = !DILocation(line: 213, column: 21, scope: !269)
!276 = !DILocation(line: 213, column: 33, scope: !269)
!277 = !DILocation(line: 214, column: 46, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !101, line: 214, column: 5)
!279 = !DILocation(line: 214, column: 15, scope: !278)
!280 = !DILocalVariable(name: "tmp___1", scope: !126, file: !101, line: 128, type: !19)
!281 = !DILocation(line: 214, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !263, file: !101, line: 214, column: 9)
!283 = !DILocation(line: 214, column: 9, scope: !263)
!284 = !DILocation(line: 215, column: 40, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !101, line: 216, column: 7)
!286 = distinct !DILexicalBlock(scope: !287, file: !101, line: 215, column: 7)
!287 = distinct !DILexicalBlock(scope: !282, file: !101, line: 214, column: 22)
!288 = !DILocation(line: 216, column: 22, scope: !285)
!289 = !DILocation(line: 216, column: 15, scope: !285)
!290 = !DILocation(line: 215, column: 7, scope: !285)
!291 = !DILocation(line: 216, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !101, line: 218, column: 7)
!293 = !DILocation(line: 219, column: 5, scope: !287)
!294 = !DILocation(line: 210, column: 7, scope: !263)
!295 = distinct !{!295, !257, !296}
!296 = !DILocation(line: 211, column: 3, scope: !258)
!297 = !DILocation(line: 213, column: 3, scope: !258)
!298 = !DILocation(line: 220, column: 15, scope: !299)
!299 = distinct !DILexicalBlock(scope: !175, file: !101, line: 216, column: 3)
!300 = !DILocation(line: 220, column: 13, scope: !299)
!301 = !DILocation(line: 220, column: 22, scope: !299)
!302 = !DILocation(line: 220, column: 33, scope: !299)
!303 = !DILocation(line: 221, column: 15, scope: !299)
!304 = !DILocation(line: 221, column: 13, scope: !299)
!305 = !DILocation(line: 221, column: 22, scope: !299)
!306 = !DILocation(line: 221, column: 34, scope: !299)
!307 = !DILocation(line: 222, column: 44, scope: !308)
!308 = distinct !DILexicalBlock(scope: !299, file: !101, line: 222, column: 3)
!309 = !DILocation(line: 222, column: 13, scope: !308)
!310 = !DILocalVariable(name: "tmp___2", scope: !126, file: !101, line: 129, type: !19)
!311 = !DILocation(line: 222, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !175, file: !101, line: 222, column: 7)
!313 = !DILocation(line: 222, column: 7, scope: !175)
!314 = !DILocation(line: 223, column: 38, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !101, line: 224, column: 5)
!316 = distinct !DILexicalBlock(scope: !317, file: !101, line: 223, column: 5)
!317 = distinct !DILexicalBlock(scope: !312, file: !101, line: 222, column: 20)
!318 = !DILocation(line: 224, column: 20, scope: !315)
!319 = !DILocation(line: 224, column: 13, scope: !315)
!320 = !DILocation(line: 223, column: 5, scope: !315)
!321 = !DILocation(line: 224, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !101, line: 226, column: 5)
!323 = !DILocation(line: 227, column: 3, scope: !317)
!324 = !DILocation(line: 232, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !101, line: 234, column: 3)
!326 = distinct !DILexicalBlock(scope: !175, file: !101, line: 233, column: 3)
!327 = !DILocation(line: 232, column: 13, scope: !325)
!328 = !DILocation(line: 232, column: 16, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !101, line: 232, column: 9)
!330 = distinct !DILexicalBlock(scope: !325, file: !101, line: 232, column: 13)
!331 = !DILocation(line: 232, column: 14, scope: !329)
!332 = !DILocation(line: 232, column: 9, scope: !330)
!333 = !DILocation(line: 232, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !101, line: 232, column: 29)
!335 = !DILocation(line: 236, column: 35, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !101, line: 235, column: 5)
!337 = distinct !DILexicalBlock(scope: !330, file: !101, line: 234, column: 5)
!338 = !DILocation(line: 236, column: 41, scope: !336)
!339 = !DILocation(line: 236, column: 51, scope: !336)
!340 = !DILocation(line: 236, column: 55, scope: !336)
!341 = !DILocation(line: 236, column: 62, scope: !336)
!342 = !DILocation(line: 236, column: 15, scope: !336)
!343 = !DILocalVariable(name: "tmp___3", scope: !126, file: !101, line: 130, type: !19)
!344 = !DILocation(line: 236, column: 14, scope: !337)
!345 = !DILocation(line: 236, column: 11, scope: !337)
!346 = !DILocation(line: 232, column: 7, scope: !337)
!347 = distinct !{!347, !324, !348}
!348 = !DILocation(line: 234, column: 3, scope: !325)
!349 = !DILocation(line: 236, column: 3, scope: !325)
!350 = !DILocation(line: 239, column: 28, scope: !351)
!351 = distinct !DILexicalBlock(scope: !175, file: !101, line: 239, column: 3)
!352 = !DILocation(line: 239, column: 26, scope: !351)
!353 = !DILocation(line: 239, column: 35, scope: !351)
!354 = !DILocation(line: 239, column: 45, scope: !351)
!355 = !DILocation(line: 239, column: 49, scope: !351)
!356 = !DILocation(line: 239, column: 56, scope: !351)
!357 = !DILocation(line: 239, column: 74, scope: !351)
!358 = !DILocation(line: 239, column: 80, scope: !351)
!359 = !DILocation(line: 239, column: 90, scope: !351)
!360 = !DILocation(line: 239, column: 94, scope: !351)
!361 = !DILocation(line: 239, column: 101, scope: !351)
!362 = !DILocation(line: 239, column: 61, scope: !351)
!363 = !DILocalVariable(name: "totaltime", scope: !126, file: !101, line: 119, type: !19)
!364 = !DILocation(line: 243, column: 60, scope: !365)
!365 = distinct !DILexicalBlock(scope: !351, file: !101, line: 240, column: 3)
!366 = !DILocation(line: 243, column: 67, scope: !365)
!367 = !DILocation(line: 243, column: 94, scope: !365)
!368 = !DILocation(line: 243, column: 76, scope: !365)
!369 = !DILocation(line: 243, column: 74, scope: !365)
!370 = !DILocation(line: 243, column: 103, scope: !365)
!371 = !DILocation(line: 243, column: 101, scope: !365)
!372 = !DILocation(line: 243, column: 3, scope: !365)
!373 = !DILocation(line: 246, column: 50, scope: !374)
!374 = distinct !DILexicalBlock(scope: !351, file: !101, line: 245, column: 3)
!375 = !DILocation(line: 246, column: 3, scope: !374)
!376 = !DILocation(line: 249, column: 3, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !101, line: 252, column: 3)
!378 = distinct !DILexicalBlock(scope: !175, file: !101, line: 251, column: 3)
!379 = !DILocation(line: 249, column: 13, scope: !377)
!380 = !DILocation(line: 249, column: 16, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !101, line: 249, column: 9)
!382 = distinct !DILexicalBlock(scope: !377, file: !101, line: 249, column: 13)
!383 = !DILocation(line: 249, column: 14, scope: !381)
!384 = !DILocation(line: 249, column: 9, scope: !382)
!385 = !DILocation(line: 249, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !101, line: 249, column: 29)
!387 = !DILocation(line: 250, column: 62, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !101, line: 252, column: 5)
!389 = distinct !DILexicalBlock(scope: !382, file: !101, line: 251, column: 5)
!390 = !DILocation(line: 250, column: 68, scope: !388)
!391 = !DILocation(line: 250, column: 78, scope: !388)
!392 = !DILocation(line: 250, column: 82, scope: !388)
!393 = !DILocation(line: 250, column: 5, scope: !388)
!394 = !DILocation(line: 249, column: 7, scope: !389)
!395 = distinct !{!395, !376, !396}
!396 = !DILocation(line: 251, column: 3, scope: !377)
!397 = !DILocation(line: 253, column: 3, scope: !377)
!398 = !DILocation(line: 254, column: 65, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !101, line: 257, column: 3)
!400 = distinct !DILexicalBlock(scope: !175, file: !101, line: 256, column: 3)
!401 = !DILocation(line: 254, column: 63, scope: !399)
!402 = !DILocation(line: 254, column: 72, scope: !399)
!403 = !DILocation(line: 254, column: 82, scope: !399)
!404 = !DILocation(line: 254, column: 86, scope: !399)
!405 = !DILocation(line: 254, column: 93, scope: !399)
!406 = !DILocation(line: 254, column: 3, scope: !399)
!407 = !DILocation(line: 256, column: 8, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !101, line: 256, column: 3)
!409 = !DILocation(line: 256, column: 3, scope: !408)
!410 = !DILocation(line: 258, column: 3, scope: !175)
