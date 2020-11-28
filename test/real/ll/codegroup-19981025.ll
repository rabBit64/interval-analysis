; ModuleID = '/tmp/tmp.ll'
source_filename = "c/codegroup-19981025.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external global %struct._IO_FILE*, align 8
@fi = internal global %struct._IO_FILE* null, align 8, !dbg !0
@stdout = external global %struct._IO_FILE*, align 8
@fo = internal global %struct._IO_FILE* null, align 8, !dbg !81
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0A%s  --  Encode/decode file as code groups.  Call:\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\0A               %s [-e[ncode] / -d[ecode]] [infile] [outfile]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot open input file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot open output file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Too many file names specified.\0A\00", align 1
@exitstat = internal global i32 0, align 4, !dbg !133
@crc2 = internal global i32 0, align 4, !dbg !83
@crc1 = internal global i32 0, align 4, !dbg !85
@low8 = internal global [256 x i8] c"\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@\00\C1\81@\01\C0\80A\00\C1\81@\01\C0\80A\01\C0\80A\00\C1\81@", align 16, !dbg !87
@high8 = internal global [256 x i8] c"\00\C0\C1\01\C3\03\02\C2\C6\06\07\C7\05\C5\C4\04\CC\0C\0D\CD\0F\CF\CE\0E\0A\CA\CB\0B\C9\09\08\C8\D8\18\19\D9\1B\DB\DA\1A\1E\DE\DF\1F\DD\1D\1C\DC\14\D4\D5\15\D7\17\16\D6\D2\12\13\D3\11\D1\D0\10\F001\F13\F3\F226\F6\F77\F554\F4<\FC\FD=\FF?>\FE\FA:;\FB9\F9\F88(\E8\E9)\EB+*\EA\EE./\EF-\ED\EC,\E4$%\E5'\E7\E6&\22\E2\E3#\E1! \E0\A0`a\A1c\A3\A2bf\A6\A7g\A5ed\A4l\AC\ADm\AFon\AE\AAjk\ABi\A9\A8hx\B8\B9y\BB{z\BA\BE~\7F\BF}\BD\BC|\B4tu\B5w\B7\B6vr\B2\B3s\B1qp\B0P\90\91Q\93SR\92\96VW\97U\95\94T\9C\\]\9D_\9F\9E^Z\9A\9B[\99YX\98\88HI\89K\8B\8AJN\8E\8FO\8DML\8CD\84\85E\87GF\86\82BC\83A\81\80@", align 16, !dbg !92
@groupbuf = internal global [6 x i8] zeroinitializer, align 1, !dbg !94
@.str.9 = private unnamed_addr constant [32 x i8] c"No code groups found in input.\0A\00", align 1
@gcount = internal global i64 0, align 8, !dbg !109
@cksum = internal global i64 0, align 8, !dbg !111
@.str.10 = private unnamed_addr constant [38 x i8] c"Warning: count and checksum missing.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"         File may be incomplete.\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Error: skipping to next group.  Data lost.\0A\00", align 1
@gprefix = internal global i32 0, align 4, !dbg !117
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"Too many errors.  %d additional data lost message%s suppressed.\0A\00", align 1
@obuf = internal global [32 x i8] zeroinitializer, align 16, !dbg !119
@.str.16 = private unnamed_addr constant [36 x i8] c"Warning: groups missing from file.\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"         Groups sent: %ld, Groups received %ld.\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Warning: extraneous groups in file.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Warning: checksum error on file contents.\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Warning: extraneous material after final data block.\0A\00", align 1
@skipws = internal global i32 0, align 4, !dbg !99
@iocp = internal global i32 256, align 4, !dbg !101
@iolen = internal global i32 0, align 4, !dbg !103
@iobuf = internal global [256 x i8] zeroinitializer, align 16, !dbg !107
@ateof = internal global i32 0, align 4, !dbg !105
@.str.21 = private unnamed_addr constant [6 x i8] c"WWWWW\00", align 1
@obnib = internal global i32 0, align 4, !dbg !113
@obbyte = internal global i32 0, align 4, !dbg !115
@.str.22 = private unnamed_addr constant [6 x i8] c"ZZZZZ\00", align 1
@linelen = internal global i32 0, align 4, !dbg !124
@linebuf = internal global [68 x i8] zeroinitializer, align 16, !dbg !126
@gblen = internal global i32 0, align 4, !dbg !131

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !141 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i8** %argv, metadata !147, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata !4, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata !4, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata !4, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata !4, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata !4, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata !4, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata !4, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata !4, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata !4, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata !4, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !168
  store %struct._IO_FILE* %0, %struct._IO_FILE** @fi, align 8, !dbg !170
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !171
  store %struct._IO_FILE* %1, %struct._IO_FILE** @fo, align 8, !dbg !172
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 0, metadata !174, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 1, metadata !175, metadata !DIExpression()), !dbg !146
  br label %while.body, !dbg !176

while.body:                                       ; preds = %if.end70, %entry
  %decode.0 = phi i32 [ 0, %entry ], [ %decode.2, %if.end70 ], !dbg !179
  %f.0 = phi i32 [ 0, %entry ], [ %f.2, %if.end70 ], !dbg !180
  %i.0 = phi i32 [ 1, %entry ], [ %inc71, %if.end70 ], !dbg !179
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !175, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %f.0, metadata !173, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %decode.0, metadata !174, metadata !DIExpression()), !dbg !146
  br label %while_continue___0, !dbg !181

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !181

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %argc, !dbg !182
  br i1 %cmp, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !186

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !188
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !188
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !189
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !146
  %3 = load i8, i8* %2, align 1, !dbg !191
  %conv = sext i8 %3 to i32, !dbg !193
  %cmp1 = icmp eq i32 %conv, 45, !dbg !194
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !195

if.then3:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !196
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !190, metadata !DIExpression()), !dbg !146
  %4 = load i8, i8* %incdec.ptr, align 1, !dbg !199
  call void @llvm.dbg.value(metadata i8 %4, metadata !200, metadata !DIExpression()), !dbg !146
  %call = call i16** @__ctype_b_loc() #6, !dbg !201
  call void @llvm.dbg.value(metadata i16** %call, metadata !203, metadata !DIExpression()), !dbg !146
  %5 = load i16*, i16** %call, align 8, !dbg !207
  %conv4 = sext i8 %4 to i32, !dbg !209
  %idx.ext5 = sext i32 %conv4 to i64, !dbg !210
  %add.ptr6 = getelementptr inbounds i16, i16* %5, i64 %idx.ext5, !dbg !210
  %6 = load i16, i16* %add.ptr6, align 2, !dbg !211
  %conv7 = zext i16 %6 to i32, !dbg !212
  %and = and i32 %conv7, 512, !dbg !213
  %tobool = icmp ne i32 %and, 0, !dbg !213
  br i1 %tobool, label %if.then8, label %if.end12, !dbg !214

if.then8:                                         ; preds = %if.then3
  %conv9 = sext i8 %4 to i32, !dbg !215
  %call10 = call i32 @toupper(i32 %conv9) #7, !dbg !219
  call void @llvm.dbg.value(metadata i32 %call10, metadata !220, metadata !DIExpression()), !dbg !146
  %conv11 = trunc i32 %call10 to i8, !dbg !221
  call void @llvm.dbg.value(metadata i8 %conv11, metadata !200, metadata !DIExpression()), !dbg !146
  br label %if.end12, !dbg !222

if.end12:                                         ; preds = %if.then8, %if.then3
  %opt.0 = phi i8 [ %conv11, %if.then8 ], [ %4, %if.then3 ], !dbg !223
  call void @llvm.dbg.value(metadata i8 %opt.0, metadata !200, metadata !DIExpression()), !dbg !146
  %conv13 = sext i8 %opt.0 to i32, !dbg !224
  %cmp14 = icmp eq i32 %conv13, 68, !dbg !227
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !228

if.then16:                                        ; preds = %if.end12
  br label %case_68, !dbg !229

if.end17:                                         ; preds = %if.end12
  %conv18 = sext i8 %opt.0 to i32, !dbg !231
  %cmp19 = icmp eq i32 %conv18, 69, !dbg !233
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !234

if.then21:                                        ; preds = %if.end17
  br label %case_69, !dbg !235

if.end22:                                         ; preds = %if.end17
  %conv23 = sext i8 %opt.0 to i32, !dbg !237
  %cmp24 = icmp eq i32 %conv23, 63, !dbg !239
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !240

if.then26:                                        ; preds = %if.end22
  br label %case_63, !dbg !241

if.end27:                                         ; preds = %if.end22
  %conv28 = sext i8 %opt.0 to i32, !dbg !243
  %cmp29 = icmp eq i32 %conv28, 85, !dbg !245
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !240

if.then31:                                        ; preds = %if.end27
  br label %case_63, !dbg !246

if.end32:                                         ; preds = %if.end27
  br label %switch_break, !dbg !248

case_68:                                          ; preds = %if.then16
  call void @llvm.dbg.value(metadata i32 1, metadata !174, metadata !DIExpression()), !dbg !146
  br label %switch_break, !dbg !249

case_69:                                          ; preds = %if.then21
  call void @llvm.dbg.value(metadata i32 0, metadata !174, metadata !DIExpression()), !dbg !146
  br label %switch_break, !dbg !250

case_63:                                          ; preds = %if.then31, %if.then26
  br label %case_85, !dbg !250

case_85:                                          ; preds = %case_63
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !251
  %add.ptr33 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !254
  %8 = load i8*, i8** %add.ptr33, align 8, !dbg !255
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %8), !dbg !256
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !257
  %add.ptr35 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !259
  %10 = load i8*, i8** %add.ptr35, align 8, !dbg !260
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), i8* %10), !dbg !261
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !262
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !264
  br label %return, !dbg !265

switch_break:                                     ; preds = %case_69, %case_68, %if.end32
  %decode.1 = phi i32 [ 1, %case_68 ], [ 0, %case_69 ], [ %decode.0, %if.end32 ], !dbg !179
  call void @llvm.dbg.value(metadata i32 %decode.1, metadata !174, metadata !DIExpression()), !dbg !146
  br label %if.end70, !dbg !266

if.else:                                          ; preds = %if.end
  %cmp38 = icmp eq i32 %f.0, 0, !dbg !267
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !271

if.then40:                                        ; preds = %if.else
  br label %case_0, !dbg !272

if.end41:                                         ; preds = %if.else
  %cmp42 = icmp eq i32 %f.0, 1, !dbg !274
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !276

if.then44:                                        ; preds = %if.end41
  br label %case_1, !dbg !277

if.end45:                                         ; preds = %if.end41
  br label %switch_default, !dbg !279

case_0:                                           ; preds = %if.then40
  %call46 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !280
  call void @llvm.dbg.value(metadata i32 %call46, metadata !283, metadata !DIExpression()), !dbg !146
  %cmp47 = icmp ne i32 %call46, 0, !dbg !284
  br i1 %cmp47, label %if.then49, label %if.end56, !dbg !286

if.then49:                                        ; preds = %case_0
  %call50 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !287
  store %struct._IO_FILE* %call50, %struct._IO_FILE** @fi, align 8, !dbg !291
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fi, align 8, !dbg !292
  %13 = ptrtoint %struct._IO_FILE* %12 to i64, !dbg !294
  %cmp51 = icmp eq i64 %13, 0, !dbg !295
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !296

if.then53:                                        ; preds = %if.then49
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !297
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %2), !dbg !301
  br label %return, !dbg !302

if.end55:                                         ; preds = %if.then49
  br label %if.end56, !dbg !303

if.end56:                                         ; preds = %if.end55, %case_0
  %inc = add nsw i32 %f.0, 1, !dbg !304
  call void @llvm.dbg.value(metadata i32 %inc, metadata !173, metadata !DIExpression()), !dbg !146
  br label %switch_break___0, !dbg !305

case_1:                                           ; preds = %if.then44
  %call57 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !306
  call void @llvm.dbg.value(metadata i32 %call57, metadata !309, metadata !DIExpression()), !dbg !146
  %cmp58 = icmp ne i32 %call57, 0, !dbg !310
  br i1 %cmp58, label %if.then60, label %if.end67, !dbg !312

if.then60:                                        ; preds = %case_1
  %call61 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !313
  store %struct._IO_FILE* %call61, %struct._IO_FILE** @fo, align 8, !dbg !317
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fo, align 8, !dbg !318
  %16 = ptrtoint %struct._IO_FILE* %15 to i64, !dbg !320
  %cmp62 = icmp eq i64 %16, 0, !dbg !321
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !322

if.then64:                                        ; preds = %if.then60
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !323
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %2), !dbg !327
  br label %return, !dbg !328

if.end66:                                         ; preds = %if.then60
  br label %if.end67, !dbg !329

if.end67:                                         ; preds = %if.end66, %case_1
  %inc68 = add nsw i32 %f.0, 1, !dbg !330
  call void @llvm.dbg.value(metadata i32 %inc68, metadata !173, metadata !DIExpression()), !dbg !146
  br label %switch_break___0, !dbg !331

switch_default:                                   ; preds = %if.end45
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !332
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)), !dbg !335
  br label %return, !dbg !336

switch_break___0:                                 ; preds = %if.end67, %if.end56
  %f.1 = phi i32 [ %inc, %if.end56 ], [ %inc68, %if.end67 ], !dbg !337
  call void @llvm.dbg.value(metadata i32 %f.1, metadata !173, metadata !DIExpression()), !dbg !146
  br label %if.end70

if.end70:                                         ; preds = %switch_break___0, %switch_break
  %decode.2 = phi i32 [ %decode.1, %switch_break ], [ %decode.0, %switch_break___0 ], !dbg !179
  %f.2 = phi i32 [ %f.0, %switch_break ], [ %f.1, %switch_break___0 ], !dbg !179
  call void @llvm.dbg.value(metadata i32 %f.2, metadata !173, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %decode.2, metadata !174, metadata !DIExpression()), !dbg !146
  %inc71 = add nsw i32 %i.0, 1, !dbg !338
  call void @llvm.dbg.value(metadata i32 %inc71, metadata !175, metadata !DIExpression()), !dbg !146
  br label %while.body, !dbg !176, !llvm.loop !339

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !341

while_break:                                      ; preds = %while_break___0, %if.then
  call void @crcinit(), !dbg !342
  %tobool72 = icmp ne i32 %decode.0, 0, !dbg !345
  br i1 %tobool72, label %if.then73, label %if.else74, !dbg !347

if.then73:                                        ; preds = %while_break
  call void @ungroup(), !dbg !348
  br label %if.end75, !dbg !352

if.else74:                                        ; preds = %while_break
  call void @engroup(), !dbg !353
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then73
  %19 = load i32, i32* @exitstat, align 4, !dbg !357
  br label %return, !dbg !358

return:                                           ; preds = %if.end75, %switch_default, %if.then64, %if.then53, %case_85
  %retval.0 = phi i32 [ 0, %case_85 ], [ 2, %if.then53 ], [ 2, %if.then64 ], [ 2, %switch_default ], [ %19, %if.end75 ], !dbg !179
  ret i32 %retval.0, !dbg !359
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal void @crcinit() #0 !dbg !360 {
entry:
  store i32 0, i32* @crc2, align 4, !dbg !363
  %0 = load i32, i32* @crc2, align 4, !dbg !366
  store i32 %0, i32* @crc1, align 4, !dbg !363
  call void @crcchar(i8 zeroext 1), !dbg !367
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @ungroup() #0 !dbg !370 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata !4, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata !4, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata !4, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata !4, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata !4, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata !4, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata !4, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata !4, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata !4, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata !4, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata !4, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata !4, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !398
  store i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i64 0, i64 5), align 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !398
  br label %while.body, !dbg !402

while.body:                                       ; preds = %if.end18, %entry
  %l.0 = phi i32 [ 0, %entry ], [ %l.3, %if.end18 ], !dbg !405
  call void @llvm.dbg.value(metadata i32 %l.0, metadata !401, metadata !DIExpression()), !dbg !398
  br label %while_continue___1, !dbg !406

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !406

while_continue:                                   ; preds = %while_continue___1
  %call = call i32 @insig(), !dbg !407
  call void @llvm.dbg.value(metadata i32 %call, metadata !411, metadata !DIExpression()), !dbg !398
  %cmp = icmp eq i32 %call, -1, !dbg !412
  br i1 %cmp, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !415

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 90, !dbg !417
  br i1 %cmp1, label %if.then2, label %if.else17, !dbg !419

if.then2:                                         ; preds = %if.end
  %inc = add nsw i32 %l.0, 1, !dbg !420
  call void @llvm.dbg.value(metadata i32 %inc, metadata !401, metadata !DIExpression()), !dbg !398
  %cmp3 = icmp eq i32 %inc, 5, !dbg !422
  br i1 %cmp3, label %if.then4, label %if.end16, !dbg !424

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 @insig(), !dbg !425
  call void @llvm.dbg.value(metadata i32 %call5, metadata !411, metadata !DIExpression()), !dbg !398
  %cmp6 = icmp eq i32 %call5, -1, !dbg !429
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !431

if.then7:                                         ; preds = %if.then4
  br label %while_break, !dbg !432

if.end8:                                          ; preds = %if.then4
  %cmp9 = icmp eq i32 %call5, 32, !dbg !434
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !436

if.then10:                                        ; preds = %if.end8
  br label %while_break, !dbg !437

if.else:                                          ; preds = %if.end8
  %cmp11 = icmp eq i32 %call5, 90, !dbg !439
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !441

if.then12:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 5, metadata !401, metadata !DIExpression()), !dbg !398
  br label %if.end14, !dbg !442

if.else13:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !398
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  %l.1 = phi i32 [ 5, %if.then12 ], [ 0, %if.else13 ], !dbg !444
  call void @llvm.dbg.value(metadata i32 %l.1, metadata !401, metadata !DIExpression()), !dbg !398
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  br label %if.end16, !dbg !445

if.end16:                                         ; preds = %if.end15, %if.then2
  %l.2 = phi i32 [ %l.1, %if.end15 ], [ %inc, %if.then2 ], !dbg !446
  call void @llvm.dbg.value(metadata i32 %l.2, metadata !401, metadata !DIExpression()), !dbg !398
  br label %if.end18, !dbg !447

if.else17:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !398
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %l.3 = phi i32 [ %l.2, %if.end16 ], [ 0, %if.else17 ], !dbg !448
  call void @llvm.dbg.value(metadata i32 %l.3, metadata !401, metadata !DIExpression()), !dbg !398
  br label %while.body, !dbg !402, !llvm.loop !449

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !451

while_break:                                      ; preds = %while_break___1, %if.then10, %if.then7, %if.then
  %i.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then7 ], [ %call5, %if.then10 ], [ undef, %while_break___1 ], !dbg !452
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !411, metadata !DIExpression()), !dbg !398
  %cmp19 = icmp eq i32 %i.0, -1, !dbg !453
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !455

if.then20:                                        ; preds = %while_break
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !456
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)), !dbg !460
  store i32 2, i32* @exitstat, align 4, !dbg !461
  br label %while_break___0, !dbg !462

if.end22:                                         ; preds = %while_break
  store i64 1, i64* @gcount, align 8, !dbg !463
  br label %while.body23, !dbg !464

while.body23:                                     ; preds = %if.end90, %if.end22
  %nerrs.0 = phi i32 [ 0, %if.end22 ], [ %nerrs.1, %if.end90 ], !dbg !405
  call void @llvm.dbg.value(metadata i32 %nerrs.0, metadata !397, metadata !DIExpression()), !dbg !398
  br label %while_continue___2, !dbg !467

while_continue___2:                               ; preds = %while.body23
  br label %while_continue___0, !dbg !467

while_continue___0:                               ; preds = %while_continue___2
  %1 = load i64, i64* @gcount, align 8, !dbg !468
  call void @llvm.dbg.value(metadata i64 %1, metadata !471, metadata !DIExpression()), !dbg !398
  %2 = load i32, i32* @crc1, align 4, !dbg !472
  %shl = shl i32 %2, 16, !dbg !473
  %3 = load i32, i32* @crc2, align 4, !dbg !474
  %or = or i32 %shl, %3, !dbg !475
  %conv = zext i32 %or to i64, !dbg !476
  store i64 %conv, i64* @cksum, align 8, !dbg !477
  %4 = load i64, i64* @cksum, align 8, !dbg !478
  call void @llvm.dbg.value(metadata i64 %4, metadata !479, metadata !DIExpression()), !dbg !398
  %call24 = call i32 @in32(), !dbg !480
  call void @llvm.dbg.value(metadata i32 %call24, metadata !411, metadata !DIExpression()), !dbg !398
  %cmp25 = icmp eq i32 %call24, -1, !dbg !482
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !484

if.then27:                                        ; preds = %while_continue___0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !485
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0)), !dbg !489
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !490
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)), !dbg !492
  store i32 1, i32* @exitstat, align 4, !dbg !493
  br label %while_break___0, !dbg !494

if.end30:                                         ; preds = %while_continue___0
  %cmp31 = icmp eq i32 %call24, 0, !dbg !495
  br i1 %cmp31, label %if.then33, label %if.else40, !dbg !497

if.then33:                                        ; preds = %if.end30
  %inc34 = add nsw i32 %nerrs.0, 1, !dbg !498
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !397, metadata !DIExpression()), !dbg !398
  %cmp35 = icmp sle i32 %inc34, 10, !dbg !500
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !502

if.then37:                                        ; preds = %if.then33
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !503
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)), !dbg !507
  store i32 1, i32* @exitstat, align 4, !dbg !508
  br label %if.end39, !dbg !509

if.end39:                                         ; preds = %if.then37, %if.then33
  br label %if.end90, !dbg !510

if.else40:                                        ; preds = %if.end30
  %8 = load i32, i32* @gprefix, align 4, !dbg !511
  %cmp41 = icmp eq i32 %8, 85, !dbg !513
  br i1 %cmp41, label %if.then43, label %if.else80, !dbg !514

if.then43:                                        ; preds = %if.else40
  %cmp44 = icmp sgt i32 %nerrs.0, 10, !dbg !515
  br i1 %cmp44, label %if.then46, label %if.end53, !dbg !518

if.then46:                                        ; preds = %if.then43
  %sub = sub nsw i32 %nerrs.0, 10, !dbg !519
  call void @llvm.dbg.value(metadata i32 %sub, metadata !397, metadata !DIExpression()), !dbg !398
  %cmp47 = icmp sgt i32 %sub, 1, !dbg !521
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !523

if.then49:                                        ; preds = %if.then46
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), metadata !524, metadata !DIExpression()), !dbg !398
  br label %if.end51, !dbg !525

if.else50:                                        ; preds = %if.then46
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), metadata !524, metadata !DIExpression()), !dbg !398
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then49
  %tmp.0 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), %if.then49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %if.else50 ], !dbg !527
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !524, metadata !DIExpression()), !dbg !398
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !528
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i32 %sub, i8* %tmp.0), !dbg !531
  br label %if.end53, !dbg !532

if.end53:                                         ; preds = %if.end51, %if.then43
  %call54 = call i64 @getlong(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @obuf, i32 0, i32 0)), !dbg !533
  store i64 %call54, i64* @gcount, align 8, !dbg !536
  %call55 = call i64 @getlong(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @obuf, i32 0, i64 4)), !dbg !537
  store i64 %call55, i64* @cksum, align 8, !dbg !539
  %10 = load i64, i64* @gcount, align 8, !dbg !540
  %cmp56 = icmp sgt i64 %10, %1, !dbg !542
  br i1 %cmp56, label %if.then58, label %if.else61, !dbg !543

if.then58:                                        ; preds = %if.end53
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !544
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0)), !dbg !548
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !549
  %13 = load i64, i64* @gcount, align 8, !dbg !551
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i64 %13, i64 %1), !dbg !552
  store i32 1, i32* @exitstat, align 4, !dbg !553
  br label %if.end68, !dbg !554

if.else61:                                        ; preds = %if.end53
  %14 = load i64, i64* @gcount, align 8, !dbg !555
  %cmp62 = icmp slt i64 %14, %1, !dbg !557
  br i1 %cmp62, label %if.then64, label %if.end67, !dbg !558

if.then64:                                        ; preds = %if.else61
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !559
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)), !dbg !563
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !564
  %17 = load i64, i64* @gcount, align 8, !dbg !566
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i64 %17, i64 %1), !dbg !567
  store i32 1, i32* @exitstat, align 4, !dbg !568
  br label %if.end67, !dbg !569

if.end67:                                         ; preds = %if.then64, %if.else61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then58
  %18 = load i64, i64* @cksum, align 8, !dbg !570
  %cmp69 = icmp ne i64 %18, %4, !dbg !572
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !573

if.then71:                                        ; preds = %if.end68
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !574
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0)), !dbg !578
  store i32 1, i32* @exitstat, align 4, !dbg !579
  br label %if.end73, !dbg !580

if.end73:                                         ; preds = %if.then71, %if.end68
  %call74 = call i32 @in32(), !dbg !581
  call void @llvm.dbg.value(metadata i32 %call74, metadata !584, metadata !DIExpression()), !dbg !398
  %cmp75 = icmp ne i32 %call74, -1, !dbg !585
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !587

if.then77:                                        ; preds = %if.end73
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !588
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0)), !dbg !592
  store i32 1, i32* @exitstat, align 4, !dbg !593
  br label %if.end79, !dbg !594

if.end79:                                         ; preds = %if.then77, %if.end73
  br label %while_break___0, !dbg !595

if.else80:                                        ; preds = %if.else40
  %21 = load i32, i32* @gprefix, align 4, !dbg !596
  %cmp81 = icmp eq i32 %21, 89, !dbg !598
  br i1 %cmp81, label %if.then83, label %if.else85, !dbg !599

if.then83:                                        ; preds = %if.else80
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fo, align 8, !dbg !600
  %call84 = call i32 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @obuf, i32 0, i32 0), i32 32, i32 1, %struct._IO_FILE* %22), !dbg !604
  br label %if.end88, !dbg !605

if.else85:                                        ; preds = %if.else80
  %23 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @obuf, i64 0, i64 0), align 16, !dbg !606
  %conv86 = zext i8 %23 to i32, !dbg !610
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fo, align 8, !dbg !611
  %call87 = call i32 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @obuf, i32 0, i64 1), i32 1, i32 %conv86, %struct._IO_FILE* %24), !dbg !612
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then83
  br label %if.end89

if.end89:                                         ; preds = %if.end88
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end39
  %nerrs.1 = phi i32 [ %inc34, %if.end39 ], [ %nerrs.0, %if.end89 ], !dbg !405
  call void @llvm.dbg.value(metadata i32 %nerrs.1, metadata !397, metadata !DIExpression()), !dbg !398
  br label %while.body23, !dbg !464, !llvm.loop !613

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !615

while_break___0:                                  ; preds = %while_break___2, %if.end79, %if.then27, %if.then20
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @engroup() #0 !dbg !617 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !618, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata !4, metadata !620, metadata !DIExpression()), !dbg !621
  %call = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !622
  call void @outgroup(), !dbg !626
  br label %while.body, !dbg !628

while.body:                                       ; preds = %if.end4, %entry
  br label %while_continue___1, !dbg !631

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !631

while_continue:                                   ; preds = %while_continue___1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fi, align 8, !dbg !632
  %call1 = call i32 @fread(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i64 1), i32 1, i32 32, %struct._IO_FILE* %0), !dbg !636
  call void @llvm.dbg.value(metadata i32 %call1, metadata !637, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 %call1, metadata !639, metadata !DIExpression()), !dbg !638
  %cmp = icmp sle i32 %call1, 0, !dbg !640
  br i1 %cmp, label %if.then, label %if.end, !dbg !642

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !643

if.end:                                           ; preds = %while_continue
  %cmp2 = icmp slt i32 %call1, 32, !dbg !645
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !647

if.then3:                                         ; preds = %if.end
  %conv = trunc i32 %call1 to i8, !dbg !648
  store i8 %conv, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i64 0, i64 0), align 16, !dbg !651
  call void @out32(i32 86, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i32 0)), !dbg !652
  br label %if.end4, !dbg !654

if.else:                                          ; preds = %if.end
  call void @out32(i32 89, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i64 1)), !dbg !655
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %while.body, !dbg !628, !llvm.loop !659

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !661

while_break:                                      ; preds = %while_break___1, %if.then
  %1 = load i64, i64* @gcount, align 8, !dbg !662
  call void @storelong(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i32 0), i64 %1), !dbg !665
  %2 = load i32, i32* @crc1, align 4, !dbg !666
  %shl = shl i32 %2, 16, !dbg !667
  %3 = load i32, i32* @crc2, align 4, !dbg !668
  %or = or i32 %shl, %3, !dbg !669
  %conv5 = zext i32 %or to i64, !dbg !670
  store i64 %conv5, i64* @cksum, align 8, !dbg !671
  %4 = load i64, i64* @cksum, align 8, !dbg !672
  call void @storelong(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i64 4), i64 %4), !dbg !674
  call void @llvm.dbg.value(metadata i32 8, metadata !675, metadata !DIExpression()), !dbg !638
  br label %while.body6, !dbg !676

while.body6:                                      ; preds = %if.end10, %while_break
  %i.0 = phi i32 [ 8, %while_break ], [ %add, %if.end10 ], !dbg !679
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !675, metadata !DIExpression()), !dbg !638
  br label %while_continue___2, !dbg !680

while_continue___2:                               ; preds = %while.body6
  br label %while_continue___0, !dbg !680

while_continue___0:                               ; preds = %while_continue___2
  %cmp7 = icmp slt i32 %i.0, 32, !dbg !681
  br i1 %cmp7, label %if.end10, label %if.then9, !dbg !684

if.then9:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !685

if.end10:                                         ; preds = %while_continue___0
  %5 = load i64, i64* @gcount, align 8, !dbg !687
  %6 = load i64, i64* @cksum, align 8, !dbg !689
  %xor = xor i64 %5, %6, !dbg !690
  %7 = load i64, i64* @cksum, align 8, !dbg !691
  %shr = ashr i64 %7, 3, !dbg !692
  %xor11 = xor i64 %xor, %shr, !dbg !693
  %8 = load i64, i64* @cksum, align 8, !dbg !694
  %shl12 = shl i64 %8, 3, !dbg !695
  %xor13 = xor i64 %xor11, %shl12, !dbg !696
  store i64 %xor13, i64* @cksum, align 8, !dbg !697
  %idx.ext = sext i32 %i.0 to i64, !dbg !698
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i32 0), i64 %idx.ext, !dbg !698
  %9 = load i64, i64* @cksum, align 8, !dbg !700
  call void @storelong(i8* %add.ptr, i64 %9), !dbg !701
  %add = add nsw i32 %i.0, 4, !dbg !702
  call void @llvm.dbg.value(metadata i32 %add, metadata !675, metadata !DIExpression()), !dbg !638
  br label %while.body6, !dbg !676, !llvm.loop !703

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !705

while_break___0:                                  ; preds = %while_break___2, %if.then9
  call void @out32(i32 85, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i32 0)), !dbg !706
  %call14 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !709
  call void @outgroup(), !dbg !711
  call void @outline(), !dbg !713
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @crcchar(i8 zeroext %b) #0 !dbg !716 {
entry:
  call void @llvm.dbg.value(metadata i8 %b, metadata !719, metadata !DIExpression()), !dbg !720
  %conv = zext i8 %b to i32, !dbg !721
  %0 = load i32, i32* @crc1, align 4, !dbg !723
  %xor = xor i32 %conv, %0, !dbg !724
  %and = and i32 255, %xor, !dbg !725
  call void @llvm.dbg.value(metadata i32 %and, metadata !726, metadata !DIExpression()), !dbg !720
  %idxprom = zext i32 %and to i64, !dbg !727
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @low8, i64 0, i64 %idxprom, !dbg !727
  %1 = load i8, i8* %arrayidx, align 1, !dbg !727
  %conv1 = zext i8 %1 to i32, !dbg !728
  %2 = load i32, i32* @crc2, align 4, !dbg !729
  %xor2 = xor i32 %conv1, %2, !dbg !730
  store i32 %xor2, i32* @crc1, align 4, !dbg !731
  %idxprom3 = zext i32 %and to i64, !dbg !732
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @high8, i64 0, i64 %idxprom3, !dbg !732
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !732
  %conv5 = zext i8 %3 to i32, !dbg !733
  store i32 %conv5, i32* @crc2, align 4, !dbg !734
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @insig() #0 !dbg !736 {
entry:
  %0 = load i32, i32* @skipws, align 4, !dbg !739
  %tobool = icmp ne i32 %0, 0, !dbg !739
  br i1 %tobool, label %if.then, label %if.end5, !dbg !742

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !743

while.body:                                       ; preds = %if.end4, %if.then
  br label %while_continue___0, !dbg !747

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !747

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @inchar(), !dbg !748
  call void @llvm.dbg.value(metadata i32 %call, metadata !752, metadata !DIExpression()), !dbg !753
  %cmp = icmp eq i32 %call, -1, !dbg !754
  br i1 %cmp, label %if.then1, label %if.else, !dbg !756

if.then1:                                         ; preds = %while_continue
  store i32 0, i32* @skipws, align 4, !dbg !757
  br label %return, !dbg !759

if.else:                                          ; preds = %while_continue
  %cmp2 = icmp sgt i32 %call, 32, !dbg !760
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !762

if.then3:                                         ; preds = %if.else
  store i32 0, i32* @skipws, align 4, !dbg !763
  br label %return, !dbg !765

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %while.body, !dbg !743, !llvm.loop !766

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !768

while_break:                                      ; preds = %while_break___0
  br label %if.end5, !dbg !769

if.end5:                                          ; preds = %while_break, %entry
  %call6 = call i32 @inchar(), !dbg !770
  call void @llvm.dbg.value(metadata i32 %call6, metadata !752, metadata !DIExpression()), !dbg !753
  %cmp7 = icmp sle i32 %call6, 32, !dbg !773
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !775

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata i32 32, metadata !752, metadata !DIExpression()), !dbg !753
  store i32 1, i32* @skipws, align 4, !dbg !776
  br label %if.end9, !dbg !778

if.end9:                                          ; preds = %if.then8, %if.end5
  %c.0 = phi i32 [ 32, %if.then8 ], [ %call6, %if.end5 ], !dbg !779
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !752, metadata !DIExpression()), !dbg !753
  br label %return, !dbg !780

return:                                           ; preds = %if.end9, %if.then3, %if.then1
  %retval.0 = phi i32 [ %call, %if.then1 ], [ %call, %if.then3 ], [ %c.0, %if.end9 ], !dbg !779
  ret i32 %retval.0, !dbg !781
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @in32() #0 !dbg !782 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata !4, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !788
  %tobool = icmp ne i32 0, 0, !dbg !789
  br i1 %tobool, label %if.then, label %if.else20, !dbg !792

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !793

while.body:                                       ; preds = %if.end19, %if.then
  br label %while_continue___2, !dbg !797

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !797

while_continue:                                   ; preds = %while_continue___2
  %call = call i32 @ingroup(), !dbg !798
  call void @llvm.dbg.value(metadata i32 %call, metadata !802, metadata !DIExpression()), !dbg !788
  %cmp = icmp eq i32 %call, -1, !dbg !803
  br i1 %cmp, label %if.then1, label %if.end, !dbg !805

if.then1:                                         ; preds = %while_continue
  br label %return, !dbg !806

if.end:                                           ; preds = %while_continue
  %cmp2 = icmp eq i32 %call, 1, !dbg !808
  br i1 %cmp2, label %if.then3, label %if.end19, !dbg !810

if.then3:                                         ; preds = %if.end
  %0 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i64 0, i64 0), align 1, !dbg !811
  %conv = sext i8 %0 to i32, !dbg !814
  %cmp4 = icmp eq i32 %conv, 89, !dbg !815
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !816

if.then6:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !788
  br label %while_break, !dbg !817

if.else:                                          ; preds = %if.then3
  %1 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i64 0, i64 0), align 1, !dbg !819
  %conv7 = sext i8 %1 to i32, !dbg !821
  %cmp8 = icmp eq i32 %conv7, 86, !dbg !822
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !814

if.then10:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !788
  br label %while_break, !dbg !823

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !825
  call void @llvm.dbg.value(metadata i32 %call12, metadata !829, metadata !DIExpression()), !dbg !788
  %cmp13 = icmp eq i32 %call12, 0, !dbg !830
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !832

if.then15:                                        ; preds = %if.else11
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !788
  br label %while_break, !dbg !833

if.end16:                                         ; preds = %if.else11
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  br label %if.end19, !dbg !835

if.end19:                                         ; preds = %if.end18, %if.end
  br label %while.body, !dbg !793, !llvm.loop !836

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !838

while_break:                                      ; preds = %while_break___2, %if.then15, %if.then10, %if.then6
  br label %if.end22, !dbg !839

if.else20:                                        ; preds = %entry
  %call21 = call i32 @ingroup(), !dbg !840
  call void @llvm.dbg.value(metadata i32 %call21, metadata !802, metadata !DIExpression()), !dbg !788
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %while_break
  %i.0 = phi i32 [ %call, %while_break ], [ %call21, %if.else20 ], !dbg !844
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !802, metadata !DIExpression()), !dbg !788
  %cmp23 = icmp eq i32 %i.0, -1, !dbg !845
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !847

if.then25:                                        ; preds = %if.end22
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !848

if.else26:                                        ; preds = %if.end22
  %cmp27 = icmp eq i32 %i.0, 0, !dbg !850
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !852

if.then29:                                        ; preds = %if.else26
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !853

if.end30:                                         ; preds = %if.else26
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  %call32 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32 %call32, metadata !858, metadata !DIExpression()), !dbg !788
  %cmp33 = icmp eq i32 %call32, 0, !dbg !859
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !861

if.then35:                                        ; preds = %if.end31
  br label %return, !dbg !862

if.end36:                                         ; preds = %if.end31
  %2 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i64 0, i64 0), align 1, !dbg !864
  %conv37 = sext i8 %2 to i32, !dbg !865
  store i32 %conv37, i32* @gprefix, align 4, !dbg !866
  %3 = load i32, i32* @gprefix, align 4, !dbg !867
  %cmp38 = icmp eq i32 %3, 89, !dbg !869
  br i1 %cmp38, label %if.then40, label %if.else41, !dbg !870

if.then40:                                        ; preds = %if.end36
  br label %_L, !dbg !871

if.else41:                                        ; preds = %if.end36
  %4 = load i32, i32* @gprefix, align 4, !dbg !873
  %cmp42 = icmp eq i32 %4, 86, !dbg !875
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !867

if.then44:                                        ; preds = %if.else41
  br label %_L, !dbg !876

if.else45:                                        ; preds = %if.else41
  %5 = load i32, i32* @gprefix, align 4, !dbg !878
  %cmp46 = icmp eq i32 %5, 85, !dbg !880
  br i1 %cmp46, label %if.then48, label %if.else79, !dbg !873

if.then48:                                        ; preds = %if.else45
  br label %_L, !dbg !881

_L:                                               ; preds = %if.then48, %if.then44, %if.then40
  store i32 0, i32* @obnib, align 4, !dbg !882
  store i32 0, i32* @obbyte, align 4, !dbg !885
  %call49 = call i32 @ostore(i32 1), !dbg !886
  call void @llvm.dbg.value(metadata i32 %call49, metadata !802, metadata !DIExpression()), !dbg !788
  %cmp50 = icmp eq i32 %call49, 0, !dbg !888
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !890

if.then52:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !891

if.end53:                                         ; preds = %_L
  call void @llvm.dbg.value(metadata i32 0, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while.body54, !dbg !894

while.body54:                                     ; preds = %if.end72, %if.end53
  %j.0 = phi i32 [ 0, %if.end53 ], [ %inc, %if.end72 ], !dbg !897
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while_continue___3, !dbg !898

while_continue___3:                               ; preds = %while.body54
  br label %while_continue___0, !dbg !898

while_continue___0:                               ; preds = %while_continue___3
  %cmp55 = icmp slt i32 %j.0, 12, !dbg !899
  br i1 %cmp55, label %if.end58, label %if.then57, !dbg !902

if.then57:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !903

if.end58:                                         ; preds = %while_continue___0
  %call59 = call i32 @ingroup(), !dbg !905
  call void @llvm.dbg.value(metadata i32 %call59, metadata !802, metadata !DIExpression()), !dbg !788
  %cmp60 = icmp eq i32 %call59, -1, !dbg !908
  br i1 %cmp60, label %if.then62, label %if.else63, !dbg !910

if.then62:                                        ; preds = %if.end58
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !911

if.else63:                                        ; preds = %if.end58
  %cmp64 = icmp eq i32 %call59, 0, !dbg !913
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !915

if.then66:                                        ; preds = %if.else63
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !916

if.end67:                                         ; preds = %if.else63
  br label %if.end68

if.end68:                                         ; preds = %if.end67
  %call69 = call i32 @ostore(i32 0), !dbg !918
  call void @llvm.dbg.value(metadata i32 %call69, metadata !921, metadata !DIExpression()), !dbg !788
  %tobool70 = icmp ne i32 %call69, 0, !dbg !922
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !924

if.then71:                                        ; preds = %if.end68
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !925

if.end72:                                         ; preds = %if.end68
  %inc = add nsw i32 %j.0, 1, !dbg !927
  call void @llvm.dbg.value(metadata i32 %inc, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while.body54, !dbg !894, !llvm.loop !928

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !930

while_break___0:                                  ; preds = %while_break___3, %if.then57
  call void @llvm.dbg.value(metadata i32 0, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while.body73, !dbg !931

while.body73:                                     ; preds = %if.end77, %while_break___0
  %j.1 = phi i32 [ 0, %while_break___0 ], [ %inc78, %if.end77 ], !dbg !897
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while_continue___4, !dbg !934

while_continue___4:                               ; preds = %while.body73
  br label %while_continue___1, !dbg !934

while_continue___1:                               ; preds = %while_continue___4
  %cmp74 = icmp slt i32 %j.1, 32, !dbg !935
  br i1 %cmp74, label %if.end77, label %if.then76, !dbg !938

if.then76:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !939

if.end77:                                         ; preds = %while_continue___1
  %idxprom = sext i32 %j.1 to i64, !dbg !941
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @obuf, i64 0, i64 %idxprom, !dbg !941
  %6 = load i8, i8* %arrayidx, align 1, !dbg !941
  call void @crcchar(i8 zeroext %6), !dbg !944
  %inc78 = add nsw i32 %j.1, 1, !dbg !945
  call void @llvm.dbg.value(metadata i32 %inc78, metadata !893, metadata !DIExpression()), !dbg !788
  br label %while.body73, !dbg !931, !llvm.loop !946

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !948

while_break___1:                                  ; preds = %while_break___4, %if.then76
  br label %return, !dbg !949

if.else79:                                        ; preds = %if.else45
  call void @llvm.dbg.value(metadata i32 1, metadata !787, metadata !DIExpression()), !dbg !788
  br label %return, !dbg !950

return:                                           ; preds = %if.else79, %while_break___1, %if.then71, %if.then66, %if.then62, %if.then52, %if.then35, %if.then29, %if.then25, %if.then1
  %retval.0 = phi i32 [ -1, %if.then1 ], [ 0, %if.then25 ], [ 0, %if.then29 ], [ -1, %if.then35 ], [ 0, %if.then52 ], [ 0, %if.then62 ], [ 0, %if.then66 ], [ 0, %if.then71 ], [ 1, %while_break___1 ], [ 0, %if.else79 ], !dbg !952
  ret i32 %retval.0, !dbg !953
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @getlong(i8* %cp) #0 !dbg !954 {
entry:
  call void @llvm.dbg.value(metadata i8* %cp, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 0, metadata !959, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 0, metadata !960, metadata !DIExpression()), !dbg !958
  br label %while.body, !dbg !961

while.body:                                       ; preds = %if.end, %entry
  %l.0 = phi i64 [ 0, %entry ], [ %or, %if.end ], !dbg !965
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !965
  %cp.addr.0 = phi i8* [ %cp, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %cp.addr.0, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !960, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 %l.0, metadata !959, metadata !DIExpression()), !dbg !958
  br label %while_continue___0, !dbg !966

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !966

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 4, !dbg !967
  br i1 %cmp, label %if.end, label %if.then, !dbg !970

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !971

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %cp.addr.0, metadata !973, metadata !DIExpression()), !dbg !958
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.addr.0, i32 1, !dbg !974
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !957, metadata !DIExpression()), !dbg !958
  %0 = load i8, i8* %cp.addr.0, align 1, !dbg !975
  %conv = zext i8 %0 to i64, !dbg !976
  %mul = mul nsw i32 %i.0, 8, !dbg !977
  %sh_prom = zext i32 %mul to i64, !dbg !978
  %shl = shl i64 %conv, %sh_prom, !dbg !978
  %or = or i64 %l.0, %shl, !dbg !979
  call void @llvm.dbg.value(metadata i64 %or, metadata !959, metadata !DIExpression()), !dbg !958
  %inc = add nsw i32 %i.0, 1, !dbg !980
  call void @llvm.dbg.value(metadata i32 %inc, metadata !960, metadata !DIExpression()), !dbg !958
  br label %while.body, !dbg !961, !llvm.loop !981

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !983

while_break:                                      ; preds = %while_break___0, %if.then
  ret i64 %l.0, !dbg !984
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @inchar() #0 !dbg !985 {
entry:
  %0 = load i32, i32* @iocp, align 4, !dbg !986
  %1 = load i32, i32* @iolen, align 4, !dbg !989
  %cmp = icmp sge i32 %0, %1, !dbg !990
  br i1 %cmp, label %if.then, label %if.end2, !dbg !991

if.then:                                          ; preds = %entry
  %call = call i32 @inbuf(), !dbg !992
  call void @llvm.dbg.value(metadata i32 %call, metadata !996, metadata !DIExpression()), !dbg !997
  %tobool = icmp ne i32 %call, 0, !dbg !998
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1000

if.then1:                                         ; preds = %if.then
  br label %return, !dbg !1001

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !1003

if.end2:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* @iocp, align 4, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %2, metadata !1005, metadata !DIExpression()), !dbg !997
  %3 = load i32, i32* @iocp, align 4, !dbg !1006
  %inc = add nsw i32 %3, 1, !dbg !1006
  store i32 %inc, i32* @iocp, align 4, !dbg !1006
  %idxprom = sext i32 %2 to i64, !dbg !1007
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @iobuf, i64 0, i64 %idxprom, !dbg !1007
  %4 = load i8, i8* %arrayidx, align 1, !dbg !1007
  %conv = zext i8 %4 to i32, !dbg !1008
  br label %return, !dbg !1009

return:                                           ; preds = %if.end2, %if.then1
  %retval.0 = phi i32 [ %conv, %if.end2 ], [ -1, %if.then1 ], !dbg !1010
  ret i32 %retval.0, !dbg !1011
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @inbuf() #0 !dbg !1012 {
entry:
  %0 = load i32, i32* @ateof, align 4, !dbg !1013
  %tobool = icmp ne i32 %0, 0, !dbg !1013
  br i1 %tobool, label %if.then, label %if.end, !dbg !1016

if.then:                                          ; preds = %entry
  br label %return, !dbg !1017

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fi, align 8, !dbg !1019
  %call = call i32 @fread(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iobuf, i32 0, i32 0), i32 1, i32 256, %struct._IO_FILE* %1), !dbg !1022
  call void @llvm.dbg.value(metadata i32 %call, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %call, metadata !1025, metadata !DIExpression()), !dbg !1024
  %cmp = icmp sle i32 %call, 0, !dbg !1026
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1028

if.then1:                                         ; preds = %if.end
  store i32 1, i32* @ateof, align 4, !dbg !1029
  br label %return, !dbg !1031

if.end2:                                          ; preds = %if.end
  store i32 %call, i32* @iolen, align 4, !dbg !1032
  store i32 0, i32* @iocp, align 4, !dbg !1033
  br label %return, !dbg !1034

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then1 ], [ 1, %if.end2 ], !dbg !1035
  ret i32 %retval.0, !dbg !1036
}

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @ingroup() #0 !dbg !1037 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1038, metadata !DIExpression()), !dbg !1039
  br label %while.body, !dbg !1040

while.body:                                       ; preds = %if.end9, %entry
  br label %while_continue___1, !dbg !1044

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1044

while_continue:                                   ; preds = %while_continue___1
  %call = call i32 @insig(), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %call, metadata !1049, metadata !DIExpression()), !dbg !1039
  %cmp = icmp eq i32 %call, -1, !dbg !1050
  br i1 %cmp, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %while_continue
  br label %while_break___0, !dbg !1053

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp ne i32 %call, 32, !dbg !1055
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !1057

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp slt i32 %call, 65, !dbg !1058
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1061

if.then4:                                         ; preds = %if.then2
  call void @inskerr(), !dbg !1062
  br label %while_break___0, !dbg !1066

if.else:                                          ; preds = %if.then2
  %cmp5 = icmp sgt i32 %call, 90, !dbg !1067
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1069

if.then6:                                         ; preds = %if.else
  call void @inskerr(), !dbg !1070
  br label %while_break___0, !dbg !1074

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1039
  %inc = add nsw i32 0, 1, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1038, metadata !DIExpression()), !dbg !1039
  %conv = trunc i32 %call to i8, !dbg !1077
  %idxprom = sext i32 0 to i64, !dbg !1078
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom, !dbg !1078
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1079
  br label %while_break, !dbg !1080

if.end9:                                          ; preds = %if.end
  br label %while.body, !dbg !1040, !llvm.loop !1081

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1083

while_break:                                      ; preds = %while_break___1, %if.end8
  br label %while.body10, !dbg !1084

while.body10:                                     ; preds = %if.end38, %while_break
  %gp.0 = phi i32 [ %inc, %while_break ], [ %inc39, %if.end38 ], !dbg !1087
  call void @llvm.dbg.value(metadata i32 %gp.0, metadata !1038, metadata !DIExpression()), !dbg !1039
  br label %while_continue___2, !dbg !1088

while_continue___2:                               ; preds = %while.body10
  br label %while_continue___0, !dbg !1088

while_continue___0:                               ; preds = %while_continue___2
  %call11 = call i32 @insig(), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1049, metadata !DIExpression()), !dbg !1039
  %cmp12 = icmp eq i32 %call11, -1, !dbg !1093
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !1095

if.then14:                                        ; preds = %while_continue___0
  br label %_L, !dbg !1096

if.else15:                                        ; preds = %while_continue___0
  %cmp16 = icmp eq i32 %call11, 32, !dbg !1098
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !1100

if.then18:                                        ; preds = %if.else15
  br label %_L, !dbg !1101

_L:                                               ; preds = %if.then18, %if.then14
  %cmp19 = icmp slt i32 %gp.0, 5, !dbg !1102
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1105

if.then21:                                        ; preds = %_L
  br label %while_break___0, !dbg !1106

if.end22:                                         ; preds = %_L
  %0 = load i64, i64* @gcount, align 8, !dbg !1108
  %inc23 = add nsw i64 %0, 1, !dbg !1108
  store i64 %inc23, i64* @gcount, align 8, !dbg !1108
  br label %while_break___0, !dbg !1109

if.end24:                                         ; preds = %if.else15
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %cmp26 = icmp slt i32 %call11, 65, !dbg !1110
  br i1 %cmp26, label %if.then28, label %if.else29, !dbg !1112

if.then28:                                        ; preds = %if.end25
  call void @inskerr(), !dbg !1113
  br label %while_break___0, !dbg !1117

if.else29:                                        ; preds = %if.end25
  %cmp30 = icmp sgt i32 %call11, 90, !dbg !1118
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1120

if.then32:                                        ; preds = %if.else29
  call void @inskerr(), !dbg !1121
  br label %while_break___0, !dbg !1125

if.end33:                                         ; preds = %if.else29
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  %cmp35 = icmp sge i32 %gp.0, 5, !dbg !1126
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1128

if.then37:                                        ; preds = %if.end34
  call void @inskerr(), !dbg !1129
  br label %while_break___0, !dbg !1133

if.end38:                                         ; preds = %if.end34
  call void @llvm.dbg.value(metadata i32 %gp.0, metadata !1134, metadata !DIExpression()), !dbg !1039
  %inc39 = add nsw i32 %gp.0, 1, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !1038, metadata !DIExpression()), !dbg !1039
  %conv40 = trunc i32 %call11 to i8, !dbg !1136
  %idxprom41 = sext i32 %gp.0 to i64, !dbg !1137
  %arrayidx42 = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom41, !dbg !1137
  store i8 %conv40, i8* %arrayidx42, align 1, !dbg !1138
  br label %while.body10, !dbg !1084, !llvm.loop !1139

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1141

while_break___0:                                  ; preds = %while_break___2, %if.then37, %if.then32, %if.then28, %if.end22, %if.then21, %if.then6, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then4 ], [ 0, %if.then6 ], [ 0, %if.then21 ], [ 1, %if.end22 ], [ 0, %if.then28 ], [ 0, %if.then32 ], [ 0, %if.then37 ], [ undef, %while_break___2 ], !dbg !1087
  ret i32 %retval.0, !dbg !1142
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @ostore(i32 %x) #0 !dbg !1143 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %x, metadata !1148, metadata !DIExpression()), !dbg !1147
  br label %while.body, !dbg !1149

while.body:                                       ; preds = %if.end26, %entry
  %i.0 = phi i32 [ %x, %entry ], [ %inc27, %if.end26 ], !dbg !1153
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1148, metadata !DIExpression()), !dbg !1147
  br label %while_continue___0, !dbg !1154

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1154

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 5, !dbg !1155
  br i1 %cmp, label %if.end, label %if.then, !dbg !1158

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1159

if.end:                                           ; preds = %while_continue
  %idxprom = sext i32 %i.0 to i64, !dbg !1161
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom, !dbg !1161
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1161
  %conv = sext i8 %0 to i32, !dbg !1163
  %cmp1 = icmp slt i32 %conv, 65, !dbg !1164
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !1165

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !1166

if.else:                                          ; preds = %if.end
  %idxprom4 = sext i32 %i.0 to i64, !dbg !1168
  %arrayidx5 = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom4, !dbg !1168
  %1 = load i8, i8* %arrayidx5, align 1, !dbg !1168
  %conv6 = sext i8 %1 to i32, !dbg !1170
  %cmp7 = icmp sgt i32 %conv6, 80, !dbg !1171
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1163

if.then9:                                         ; preds = %if.else
  br label %return, !dbg !1172

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %idxprom12 = sext i32 %i.0 to i64, !dbg !1174
  %arrayidx13 = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom12, !dbg !1174
  %2 = load i8, i8* %arrayidx13, align 1, !dbg !1174
  %conv14 = sext i8 %2 to i32, !dbg !1175
  %sub = sub nsw i32 %conv14, 65, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1177, metadata !DIExpression()), !dbg !1147
  %3 = load i32, i32* @obnib, align 4, !dbg !1178
  %tobool = icmp ne i32 %3, 0, !dbg !1178
  br i1 %tobool, label %if.then15, label %if.else22, !dbg !1180

if.then15:                                        ; preds = %if.end11
  %4 = load i32, i32* @obbyte, align 4, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %4, metadata !1183, metadata !DIExpression()), !dbg !1147
  %5 = load i32, i32* @obbyte, align 4, !dbg !1184
  %inc = add nsw i32 %5, 1, !dbg !1184
  store i32 %inc, i32* @obbyte, align 4, !dbg !1184
  %idxprom16 = sext i32 %4 to i64, !dbg !1185
  %arrayidx17 = getelementptr inbounds [32 x i8], [32 x i8]* @obuf, i64 0, i64 %idxprom16, !dbg !1185
  %6 = load i8, i8* %arrayidx17, align 1, !dbg !1185
  %conv18 = zext i8 %6 to i32, !dbg !1186
  %or = or i32 %conv18, %sub, !dbg !1187
  %conv19 = trunc i32 %or to i8, !dbg !1188
  %idxprom20 = sext i32 %4 to i64, !dbg !1189
  %arrayidx21 = getelementptr inbounds [32 x i8], [32 x i8]* @obuf, i64 0, i64 %idxprom20, !dbg !1189
  store i8 %conv19, i8* %arrayidx21, align 1, !dbg !1190
  store i32 0, i32* @obnib, align 4, !dbg !1191
  br label %if.end26, !dbg !1192

if.else22:                                        ; preds = %if.end11
  %shl = shl i32 %sub, 4, !dbg !1193
  %conv23 = trunc i32 %shl to i8, !dbg !1195
  %7 = load i32, i32* @obbyte, align 4, !dbg !1196
  %idxprom24 = sext i32 %7 to i64, !dbg !1197
  %arrayidx25 = getelementptr inbounds [32 x i8], [32 x i8]* @obuf, i64 0, i64 %idxprom24, !dbg !1197
  store i8 %conv23, i8* %arrayidx25, align 1, !dbg !1198
  store i32 1, i32* @obnib, align 4, !dbg !1199
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then15
  %inc27 = add nsw i32 %i.0, 1, !dbg !1200
  call void @llvm.dbg.value(metadata i32 %inc27, metadata !1148, metadata !DIExpression()), !dbg !1147
  br label %while.body, !dbg !1149, !llvm.loop !1201

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1203

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !1204

return:                                           ; preds = %while_break, %if.then9, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then9 ], [ 1, %while_break ], !dbg !1153
  ret i32 %retval.0, !dbg !1205
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @inskerr() #0 !dbg !1206 {
entry:
  br label %while.body, !dbg !1207

while.body:                                       ; preds = %if.end3, %entry
  br label %while_continue___0, !dbg !1211

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1211

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @insig(), !dbg !1212
  call void @llvm.dbg.value(metadata i32 %call, metadata !1216, metadata !DIExpression()), !dbg !1217
  %cmp = icmp eq i32 %call, -1, !dbg !1218
  br i1 %cmp, label %if.then, label %if.else, !dbg !1220

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1221

if.else:                                          ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 32, !dbg !1223
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1225

if.then2:                                         ; preds = %if.else
  br label %while_break, !dbg !1226

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  br label %while.body, !dbg !1207, !llvm.loop !1228

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1230

while_break:                                      ; preds = %while_break___0, %if.then2, %if.then
  ret void, !dbg !1231
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @outgroup() #0 !dbg !1232 {
entry:
  %0 = load i32, i32* @linelen, align 4, !dbg !1233
  %add = add nsw i32 %0, 5, !dbg !1236
  %add1 = add nsw i32 %add, 1, !dbg !1237
  %cmp = icmp sgt i32 %add1, 64, !dbg !1238
  br i1 %cmp, label %if.then, label %if.end, !dbg !1239

if.then:                                          ; preds = %entry
  call void @outline(), !dbg !1240
  br label %if.end, !dbg !1244

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @linelen, align 4, !dbg !1245
  %cmp2 = icmp sgt i32 %1, 0, !dbg !1247
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1248

if.then3:                                         ; preds = %if.end
  %2 = load i32, i32* @linelen, align 4, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %2, metadata !1251, metadata !DIExpression()), !dbg !1252
  %3 = load i32, i32* @linelen, align 4, !dbg !1253
  %inc = add nsw i32 %3, 1, !dbg !1253
  store i32 %inc, i32* @linelen, align 4, !dbg !1253
  %idxprom = sext i32 %2 to i64, !dbg !1254
  %arrayidx = getelementptr inbounds [68 x i8], [68 x i8]* @linebuf, i64 0, i64 %idxprom, !dbg !1254
  store i8 32, i8* %arrayidx, align 1, !dbg !1255
  br label %if.end4, !dbg !1256

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, i32* @linelen, align 4, !dbg !1257
  %idx.ext = sext i32 %4 to i64, !dbg !1260
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @linebuf, i32 0, i32 0), i64 %idx.ext, !dbg !1260
  %call = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @groupbuf, i32 0, i32 0)) #8, !dbg !1261
  %5 = load i32, i32* @linelen, align 4, !dbg !1262
  %add5 = add nsw i32 %5, 5, !dbg !1262
  store i32 %add5, i32* @linelen, align 4, !dbg !1262
  store i32 0, i32* @gblen, align 4, !dbg !1263
  %6 = load i64, i64* @gcount, align 8, !dbg !1264
  %inc6 = add nsw i64 %6, 1, !dbg !1264
  store i64 %inc6, i64* @gcount, align 8, !dbg !1264
  ret void, !dbg !1265
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @out32(i32 %code, i8* %dbuf) #0 !dbg !1266 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %dbuf, metadata !1271, metadata !DIExpression()), !dbg !1270
  call void @outchar(i32 %code), !dbg !1272
  call void @llvm.dbg.value(metadata i32 0, metadata !1276, metadata !DIExpression()), !dbg !1270
  br label %while.body, !dbg !1277

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1280
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1276, metadata !DIExpression()), !dbg !1270
  br label %while_continue___0, !dbg !1281

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1281

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 32, !dbg !1282
  br i1 %cmp, label %if.end, label %if.then, !dbg !1285

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1286

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !1288
  %add.ptr = getelementptr inbounds i8, i8* %dbuf, i64 %idx.ext, !dbg !1288
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1291
  %conv = zext i8 %0 to i32, !dbg !1292
  call void @outbyte(i32 %conv), !dbg !1293
  %inc = add nsw i32 %i.0, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1276, metadata !DIExpression()), !dbg !1270
  br label %while.body, !dbg !1277, !llvm.loop !1295

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1297

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @storelong(i8* %cp, i64 %l) #0 !dbg !1299 {
entry:
  call void @llvm.dbg.value(metadata i8* %cp, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %l, metadata !1304, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 0, metadata !1305, metadata !DIExpression()), !dbg !1303
  br label %while.body, !dbg !1306

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1310
  %l.addr.0 = phi i64 [ %l, %entry ], [ %shr, %if.end ]
  %cp.addr.0 = phi i8* [ %cp, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %cp.addr.0, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %l.addr.0, metadata !1304, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1305, metadata !DIExpression()), !dbg !1303
  br label %while_continue___0, !dbg !1311

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1311

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 4, !dbg !1312
  br i1 %cmp, label %if.end, label %if.then, !dbg !1315

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1316

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %cp.addr.0, metadata !1318, metadata !DIExpression()), !dbg !1303
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.addr.0, i32 1, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1302, metadata !DIExpression()), !dbg !1303
  %and = and i64 %l.addr.0, 255, !dbg !1320
  %conv = trunc i64 %and to i8, !dbg !1321
  store i8 %conv, i8* %cp.addr.0, align 1, !dbg !1322
  %shr = ashr i64 %l.addr.0, 8, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1304, metadata !DIExpression()), !dbg !1303
  %inc = add nsw i32 %i.0, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1305, metadata !DIExpression()), !dbg !1303
  br label %while.body, !dbg !1306, !llvm.loop !1325

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1327

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !1328
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @outline() #0 !dbg !1329 {
entry:
  %0 = load i32, i32* @linelen, align 4, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %0, metadata !1333, metadata !DIExpression()), !dbg !1334
  %1 = load i32, i32* @linelen, align 4, !dbg !1335
  %inc = add nsw i32 %1, 1, !dbg !1335
  store i32 %inc, i32* @linelen, align 4, !dbg !1335
  %idxprom = sext i32 %0 to i64, !dbg !1336
  %arrayidx = getelementptr inbounds [68 x i8], [68 x i8]* @linebuf, i64 0, i64 %idxprom, !dbg !1336
  store i8 10, i8* %arrayidx, align 1, !dbg !1337
  %2 = load i32, i32* @linelen, align 4, !dbg !1338
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fo, align 8, !dbg !1340
  %call = call i32 @fwrite(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @linebuf, i32 0, i32 0), i32 %2, i32 1, %struct._IO_FILE* %3), !dbg !1341
  store i32 0, i32* @linelen, align 4, !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @outchar(i32 %c) #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !1347, metadata !DIExpression()), !dbg !1348
  %0 = load i32, i32* @gblen, align 4, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %0, metadata !1351, metadata !DIExpression()), !dbg !1348
  %1 = load i32, i32* @gblen, align 4, !dbg !1349
  %inc = add nsw i32 %1, 1, !dbg !1349
  store i32 %inc, i32* @gblen, align 4, !dbg !1349
  %conv = trunc i32 %c to i8, !dbg !1352
  %idxprom = sext i32 %0 to i64, !dbg !1353
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @groupbuf, i64 0, i64 %idxprom, !dbg !1353
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1354
  %2 = load i32, i32* @gblen, align 4, !dbg !1355
  %cmp = icmp sge i32 %2, 5, !dbg !1357
  br i1 %cmp, label %if.then, label %if.end, !dbg !1358

if.then:                                          ; preds = %entry
  call void @outgroup(), !dbg !1359
  br label %if.end, !dbg !1363

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1364
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @outbyte(i32 %b) #0 !dbg !1365 {
entry:
  call void @llvm.dbg.value(metadata i32 %b, metadata !1366, metadata !DIExpression()), !dbg !1367
  %conv = trunc i32 %b to i8, !dbg !1368
  call void @crcchar(i8 zeroext %conv), !dbg !1372
  %and = and i32 %b, 240, !dbg !1373
  %shr = ashr i32 %and, 4, !dbg !1375
  %add = add nsw i32 65, %shr, !dbg !1376
  call void @outchar(i32 %add), !dbg !1377
  %and1 = and i32 %b, 15, !dbg !1378
  %add2 = add nsw i32 65, %and1, !dbg !1380
  call void @outchar(i32 %add2), !dbg !1381
  ret void, !dbg !1382
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!135, !136, !137, !138, !139}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fi", scope: !2, file: !75, line: 43, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !80, nameTableKind: GNU)
!3 = !DIFile(filename: "c/codegroup-19981025.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !8, !71, !73, !58, !74, !65, !41, !77, !63, !16, !79}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 49, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 271, size: 1728, elements: !13)
!12 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!13 = !{!14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !35, !36, !37, !38, !42, !44, !46, !50, !53, !57, !59, !60, !61, !62, !66, !67}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 272, baseType: !6, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 273, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 274, baseType: !16, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 275, baseType: !16, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 276, baseType: !16, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 277, baseType: !16, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 278, baseType: !16, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 279, baseType: !16, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 280, baseType: !16, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 281, baseType: !16, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 282, baseType: !16, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 283, baseType: !16, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 284, baseType: !28, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 186, size: 192, elements: !30)
!30 = !{!31, !32, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !29, file: !12, line: 187, baseType: !28, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !29, file: !12, line: 188, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !29, file: !12, line: 189, baseType: !6, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 285, baseType: !33, size: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 286, baseType: !6, size: 32, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 287, baseType: !6, size: 32, offset: 928)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 288, baseType: !39, size: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 141, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 289, baseType: !43, size: 16, offset: 1024)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 290, baseType: !45, size: 8, offset: 1040)
!45 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 291, baseType: !47, size: 8, offset: 1048)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 292, baseType: !51, size: 64, offset: 1088)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 180, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 293, baseType: !54, size: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 142, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !40, line: 56, baseType: !56)
!56 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !11, file: !12, line: 294, baseType: !58, size: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !11, file: !12, line: 295, baseType: !58, size: 64, offset: 1280)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !11, file: !12, line: 296, baseType: !58, size: 64, offset: 1344)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !11, file: !12, line: 297, baseType: !58, size: 64, offset: 1408)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 298, baseType: !63, size: 32, offset: 1472)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 211, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 299, baseType: !6, size: 32, offset: 1504)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 300, baseType: !68, size: 192, offset: 1536)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 24)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !75, line: 32, baseType: !76)
!75 = !DIFile(filename: "/home/wslee/benchmarks/textformat/codegroup-19981025/codegroup.c", directory: "")
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!80 = !{!0, !81, !83, !85, !87, !92, !94, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !124, !126, !131, !133}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "fo", scope: !2, file: !75, line: 44, type: !8, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "crc2", scope: !2, file: !75, line: 126, type: !65, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "crc1", scope: !2, file: !75, line: 126, type: !65, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "low8", scope: !2, file: !75, line: 68, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 256)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "high8", scope: !2, file: !75, line: 97, type: !89, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "groupbuf", scope: !2, file: !75, line: 46, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 6)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "skipws", scope: !2, file: !75, line: 289, type: !6, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "iocp", scope: !2, file: !75, line: 58, type: !6, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "iolen", scope: !2, file: !75, line: 57, type: !6, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "ateof", scope: !2, file: !75, line: 59, type: !6, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "iobuf", scope: !2, file: !75, line: 48, type: !89, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "gcount", scope: !2, file: !75, line: 50, type: !41, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "cksum", scope: !2, file: !75, line: 51, type: !41, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "obnib", scope: !2, file: !75, line: 60, type: !6, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "obbyte", scope: !2, file: !75, line: 61, type: !6, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "gprefix", scope: !2, file: !75, line: 56, type: !6, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "obuf", scope: !2, file: !75, line: 49, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 32)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "linelen", scope: !2, file: !75, line: 54, type: !6, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "linebuf", scope: !2, file: !75, line: 47, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 68)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "gblen", scope: !2, file: !75, line: 53, type: !6, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "exitstat", scope: !2, file: !75, line: 63, type: !6, isLocal: true, isDefinition: true)
!135 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!136 = !{i32 2, !"Dwarf Version", i32 4}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{i32 1, !"wchar_size", i32 4}
!139 = !{i32 7, !"PIC Level", i32 2}
!140 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!141 = distinct !DISubprogram(name: "main", scope: !75, file: !75, line: 586, type: !142, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DISubroutineType(types: !143)
!143 = !{!6, !6, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!145 = !DILocalVariable(name: "argc", arg: 1, scope: !141, file: !75, line: 586, type: !6)
!146 = !DILocation(line: 0, scope: !141)
!147 = !DILocalVariable(name: "argv", arg: 2, scope: !141, file: !75, line: 586, type: !144)
!148 = !DILocalVariable(name: "__cil_tmp12", scope: !141, file: !75, line: 597, type: !16)
!149 = !DILocation(line: 597, column: 9, scope: !141)
!150 = !DILocalVariable(name: "__cil_tmp13", scope: !141, file: !75, line: 598, type: !16)
!151 = !DILocation(line: 598, column: 9, scope: !141)
!152 = !DILocalVariable(name: "__cil_tmp14", scope: !141, file: !75, line: 599, type: !16)
!153 = !DILocation(line: 599, column: 9, scope: !141)
!154 = !DILocalVariable(name: "__cil_tmp15", scope: !141, file: !75, line: 600, type: !16)
!155 = !DILocation(line: 600, column: 9, scope: !141)
!156 = !DILocalVariable(name: "__cil_tmp16", scope: !141, file: !75, line: 601, type: !16)
!157 = !DILocation(line: 601, column: 9, scope: !141)
!158 = !DILocalVariable(name: "__cil_tmp17", scope: !141, file: !75, line: 602, type: !16)
!159 = !DILocation(line: 602, column: 9, scope: !141)
!160 = !DILocalVariable(name: "__cil_tmp18", scope: !141, file: !75, line: 603, type: !16)
!161 = !DILocation(line: 603, column: 9, scope: !141)
!162 = !DILocalVariable(name: "__cil_tmp19", scope: !141, file: !75, line: 604, type: !16)
!163 = !DILocation(line: 604, column: 9, scope: !141)
!164 = !DILocalVariable(name: "__cil_tmp20", scope: !141, file: !75, line: 605, type: !16)
!165 = !DILocation(line: 605, column: 9, scope: !141)
!166 = !DILocalVariable(name: "__cil_tmp21", scope: !141, file: !75, line: 606, type: !16)
!167 = !DILocation(line: 606, column: 9, scope: !141)
!168 = !DILocation(line: 589, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !141, file: !75, line: 608, column: 3)
!170 = !DILocation(line: 589, column: 6, scope: !169)
!171 = !DILocation(line: 590, column: 8, scope: !169)
!172 = !DILocation(line: 590, column: 6, scope: !169)
!173 = !DILocalVariable(name: "f", scope: !141, file: !75, line: 589, type: !6)
!174 = !DILocalVariable(name: "decode", scope: !141, file: !75, line: 590, type: !6)
!175 = !DILocalVariable(name: "i", scope: !141, file: !75, line: 588, type: !6)
!176 = !DILocation(line: 595, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !75, line: 597, column: 3)
!178 = distinct !DILexicalBlock(scope: !169, file: !75, line: 596, column: 3)
!179 = !DILocation(line: 0, scope: !169)
!180 = !DILocation(line: 592, column: 5, scope: !169)
!181 = !DILocation(line: 595, column: 13, scope: !177)
!182 = !DILocation(line: 595, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !75, line: 595, column: 9)
!184 = distinct !DILexicalBlock(scope: !177, file: !75, line: 595, column: 13)
!185 = !DILocation(line: 595, column: 9, scope: !184)
!186 = !DILocation(line: 595, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !75, line: 595, column: 23)
!188 = !DILocation(line: 596, column: 17, scope: !184)
!189 = !DILocation(line: 596, column: 10, scope: !184)
!190 = !DILocalVariable(name: "cp", scope: !141, file: !75, line: 591, type: !16)
!191 = !DILocation(line: 597, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !75, line: 597, column: 9)
!193 = !DILocation(line: 597, column: 9, scope: !192)
!194 = !DILocation(line: 597, column: 19, scope: !192)
!195 = !DILocation(line: 597, column: 9, scope: !184)
!196 = !DILocation(line: 598, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !75, line: 598, column: 7)
!198 = distinct !DILexicalBlock(scope: !192, file: !75, line: 597, column: 26)
!199 = !DILocation(line: 598, column: 13, scope: !197)
!200 = !DILocalVariable(name: "opt", scope: !141, file: !75, line: 592, type: !7)
!201 = !DILocation(line: 599, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !75, line: 599, column: 7)
!203 = !DILocalVariable(name: "tmp___0", scope: !141, file: !75, line: 594, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!207 = !DILocation(line: 599, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !198, file: !75, line: 599, column: 11)
!209 = !DILocation(line: 599, column: 38, scope: !208)
!210 = !DILocation(line: 599, column: 36, scope: !208)
!211 = !DILocation(line: 599, column: 25, scope: !208)
!212 = !DILocation(line: 599, column: 11, scope: !208)
!213 = !DILocation(line: 599, column: 49, scope: !208)
!214 = !DILocation(line: 599, column: 11, scope: !198)
!215 = !DILocation(line: 600, column: 23, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !75, line: 601, column: 9)
!217 = distinct !DILexicalBlock(scope: !218, file: !75, line: 600, column: 9)
!218 = distinct !DILexicalBlock(scope: !208, file: !75, line: 599, column: 56)
!219 = !DILocation(line: 600, column: 15, scope: !216)
!220 = !DILocalVariable(name: "tmp", scope: !141, file: !75, line: 593, type: !6)
!221 = !DILocation(line: 600, column: 15, scope: !217)
!222 = !DILocation(line: 602, column: 7, scope: !218)
!223 = !DILocation(line: 0, scope: !198)
!224 = !DILocation(line: 604, column: 11, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !75, line: 604, column: 11)
!226 = distinct !DILexicalBlock(scope: !198, file: !75, line: 603, column: 7)
!227 = !DILocation(line: 604, column: 21, scope: !225)
!228 = !DILocation(line: 604, column: 11, scope: !226)
!229 = !DILocation(line: 604, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !75, line: 604, column: 28)
!231 = !DILocation(line: 608, column: 11, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !75, line: 608, column: 11)
!233 = !DILocation(line: 608, column: 21, scope: !232)
!234 = !DILocation(line: 608, column: 11, scope: !226)
!235 = !DILocation(line: 608, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !75, line: 608, column: 28)
!237 = !DILocation(line: 613, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !226, file: !75, line: 613, column: 11)
!239 = !DILocation(line: 613, column: 21, scope: !238)
!240 = !DILocation(line: 613, column: 11, scope: !226)
!241 = !DILocation(line: 613, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !75, line: 613, column: 28)
!243 = !DILocation(line: 613, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !226, file: !75, line: 613, column: 11)
!245 = !DILocation(line: 613, column: 21, scope: !244)
!246 = !DILocation(line: 613, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !75, line: 613, column: 28)
!248 = !DILocation(line: 602, column: 7, scope: !226)
!249 = !DILocation(line: 606, column: 7, scope: !226)
!250 = !DILocation(line: 610, column: 7, scope: !226)
!251 = !DILocation(line: 614, column: 40, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !75, line: 614, column: 7)
!253 = distinct !DILexicalBlock(scope: !226, file: !75, line: 613, column: 7)
!254 = !DILocation(line: 615, column: 22, scope: !252)
!255 = !DILocation(line: 615, column: 15, scope: !252)
!256 = !DILocation(line: 614, column: 7, scope: !252)
!257 = !DILocation(line: 615, column: 40, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !75, line: 617, column: 7)
!259 = !DILocation(line: 616, column: 22, scope: !258)
!260 = !DILocation(line: 616, column: 15, scope: !258)
!261 = !DILocation(line: 615, column: 7, scope: !258)
!262 = !DILocation(line: 617, column: 40, scope: !263)
!263 = distinct !DILexicalBlock(scope: !253, file: !75, line: 618, column: 7)
!264 = !DILocation(line: 617, column: 7, scope: !263)
!265 = !DILocation(line: 618, column: 7, scope: !226)
!266 = !DILocation(line: 621, column: 5, scope: !198)
!267 = !DILocation(line: 641, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !75, line: 641, column: 11)
!269 = distinct !DILexicalBlock(scope: !270, file: !75, line: 622, column: 7)
!270 = distinct !DILexicalBlock(scope: !192, file: !75, line: 621, column: 12)
!271 = !DILocation(line: 641, column: 11, scope: !269)
!272 = !DILocation(line: 641, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !75, line: 641, column: 19)
!274 = !DILocation(line: 651, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !75, line: 651, column: 11)
!276 = !DILocation(line: 651, column: 11, scope: !269)
!277 = !DILocation(line: 651, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !75, line: 651, column: 19)
!279 = !DILocation(line: 661, column: 7, scope: !269)
!280 = !DILocation(line: 642, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !75, line: 664, column: 7)
!282 = distinct !DILexicalBlock(scope: !269, file: !75, line: 663, column: 7)
!283 = !DILocalVariable(name: "tmp___1", scope: !141, file: !75, line: 595, type: !6)
!284 = !DILocation(line: 642, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !269, file: !75, line: 642, column: 11)
!286 = !DILocation(line: 642, column: 11, scope: !269)
!287 = !DILocation(line: 643, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !75, line: 644, column: 9)
!289 = distinct !DILexicalBlock(scope: !290, file: !75, line: 643, column: 9)
!290 = distinct !DILexicalBlock(scope: !285, file: !75, line: 642, column: 25)
!291 = !DILocation(line: 643, column: 12, scope: !288)
!292 = !DILocation(line: 643, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !75, line: 643, column: 13)
!294 = !DILocation(line: 643, column: 13, scope: !293)
!295 = !DILocation(line: 643, column: 32, scope: !293)
!296 = !DILocation(line: 643, column: 13, scope: !290)
!297 = !DILocation(line: 644, column: 44, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !75, line: 645, column: 11)
!299 = distinct !DILexicalBlock(scope: !300, file: !75, line: 644, column: 11)
!300 = distinct !DILexicalBlock(scope: !293, file: !75, line: 643, column: 64)
!301 = !DILocation(line: 644, column: 11, scope: !298)
!302 = !DILocation(line: 645, column: 11, scope: !300)
!303 = !DILocation(line: 647, column: 7, scope: !290)
!304 = !DILocation(line: 648, column: 9, scope: !269)
!305 = !DILocation(line: 649, column: 7, scope: !269)
!306 = !DILocation(line: 652, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !75, line: 652, column: 7)
!308 = distinct !DILexicalBlock(scope: !269, file: !75, line: 651, column: 7)
!309 = !DILocalVariable(name: "tmp___2", scope: !141, file: !75, line: 596, type: !6)
!310 = !DILocation(line: 652, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !269, file: !75, line: 652, column: 11)
!312 = !DILocation(line: 652, column: 11, scope: !269)
!313 = !DILocation(line: 653, column: 14, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !75, line: 654, column: 9)
!315 = distinct !DILexicalBlock(scope: !316, file: !75, line: 653, column: 9)
!316 = distinct !DILexicalBlock(scope: !311, file: !75, line: 652, column: 25)
!317 = !DILocation(line: 653, column: 12, scope: !314)
!318 = !DILocation(line: 653, column: 29, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !75, line: 653, column: 13)
!320 = !DILocation(line: 653, column: 13, scope: !319)
!321 = !DILocation(line: 653, column: 32, scope: !319)
!322 = !DILocation(line: 653, column: 13, scope: !316)
!323 = !DILocation(line: 654, column: 44, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !75, line: 655, column: 11)
!325 = distinct !DILexicalBlock(scope: !326, file: !75, line: 654, column: 11)
!326 = distinct !DILexicalBlock(scope: !319, file: !75, line: 653, column: 64)
!327 = !DILocation(line: 654, column: 11, scope: !324)
!328 = !DILocation(line: 655, column: 11, scope: !326)
!329 = !DILocation(line: 657, column: 7, scope: !316)
!330 = !DILocation(line: 658, column: 9, scope: !269)
!331 = !DILocation(line: 659, column: 7, scope: !269)
!332 = !DILocation(line: 662, column: 40, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !75, line: 662, column: 7)
!334 = distinct !DILexicalBlock(scope: !269, file: !75, line: 661, column: 7)
!335 = !DILocation(line: 662, column: 7, scope: !333)
!336 = !DILocation(line: 663, column: 7, scope: !269)
!337 = !DILocation(line: 0, scope: !269)
!338 = !DILocation(line: 595, column: 7, scope: !184)
!339 = distinct !{!339, !176, !340}
!340 = !DILocation(line: 596, column: 3, scope: !177)
!341 = !DILocation(line: 598, column: 3, scope: !177)
!342 = !DILocation(line: 668, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !75, line: 602, column: 3)
!344 = distinct !DILexicalBlock(scope: !169, file: !75, line: 601, column: 3)
!345 = !DILocation(line: 669, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !169, file: !75, line: 669, column: 7)
!347 = !DILocation(line: 669, column: 7, scope: !169)
!348 = !DILocation(line: 673, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !75, line: 671, column: 5)
!350 = distinct !DILexicalBlock(scope: !351, file: !75, line: 670, column: 5)
!351 = distinct !DILexicalBlock(scope: !346, file: !75, line: 669, column: 15)
!352 = !DILocation(line: 676, column: 3, scope: !351)
!353 = !DILocation(line: 678, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !75, line: 678, column: 5)
!355 = distinct !DILexicalBlock(scope: !356, file: !75, line: 677, column: 5)
!356 = distinct !DILexicalBlock(scope: !346, file: !75, line: 676, column: 10)
!357 = !DILocation(line: 680, column: 11, scope: !169)
!358 = !DILocation(line: 680, column: 3, scope: !169)
!359 = !DILocation(line: 682, column: 1, scope: !141)
!360 = distinct !DISubprogram(name: "crcinit", scope: !75, file: !75, line: 140, type: !361, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = !DILocation(line: 142, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !75, line: 145, column: 3)
!365 = distinct !DILexicalBlock(scope: !360, file: !75, line: 144, column: 3)
!366 = !DILocation(line: 142, column: 10, scope: !364)
!367 = !DILocation(line: 143, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !75, line: 143, column: 3)
!369 = !DILocation(line: 144, column: 3, scope: !365)
!370 = distinct !DISubprogram(name: "ungroup", scope: !75, file: !75, line: 476, type: !361, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!371 = !DILocalVariable(name: "__cil_tmp8", scope: !370, file: !75, line: 485, type: !16)
!372 = !DILocation(line: 485, column: 9, scope: !370)
!373 = !DILocalVariable(name: "__cil_tmp9", scope: !370, file: !75, line: 486, type: !16)
!374 = !DILocation(line: 486, column: 9, scope: !370)
!375 = !DILocalVariable(name: "__cil_tmp10", scope: !370, file: !75, line: 487, type: !16)
!376 = !DILocation(line: 487, column: 9, scope: !370)
!377 = !DILocalVariable(name: "__cil_tmp11", scope: !370, file: !75, line: 488, type: !16)
!378 = !DILocation(line: 488, column: 9, scope: !370)
!379 = !DILocalVariable(name: "__cil_tmp12", scope: !370, file: !75, line: 489, type: !16)
!380 = !DILocation(line: 489, column: 9, scope: !370)
!381 = !DILocalVariable(name: "__cil_tmp13", scope: !370, file: !75, line: 490, type: !16)
!382 = !DILocation(line: 490, column: 9, scope: !370)
!383 = !DILocalVariable(name: "__cil_tmp14", scope: !370, file: !75, line: 491, type: !16)
!384 = !DILocation(line: 491, column: 9, scope: !370)
!385 = !DILocalVariable(name: "__cil_tmp15", scope: !370, file: !75, line: 492, type: !16)
!386 = !DILocation(line: 492, column: 9, scope: !370)
!387 = !DILocalVariable(name: "__cil_tmp16", scope: !370, file: !75, line: 493, type: !16)
!388 = !DILocation(line: 493, column: 9, scope: !370)
!389 = !DILocalVariable(name: "__cil_tmp17", scope: !370, file: !75, line: 494, type: !16)
!390 = !DILocation(line: 494, column: 9, scope: !370)
!391 = !DILocalVariable(name: "__cil_tmp18", scope: !370, file: !75, line: 495, type: !16)
!392 = !DILocation(line: 495, column: 9, scope: !370)
!393 = !DILocalVariable(name: "__cil_tmp19", scope: !370, file: !75, line: 496, type: !16)
!394 = !DILocation(line: 496, column: 9, scope: !370)
!395 = !DILocalVariable(name: "__cil_tmp20", scope: !370, file: !75, line: 497, type: !16)
!396 = !DILocation(line: 497, column: 9, scope: !370)
!397 = !DILocalVariable(name: "nerrs", scope: !370, file: !75, line: 480, type: !6)
!398 = !DILocation(line: 0, scope: !370)
!399 = !DILocation(line: 481, column: 15, scope: !400)
!400 = distinct !DILexicalBlock(scope: !370, file: !75, line: 499, column: 3)
!401 = !DILocalVariable(name: "l", scope: !370, file: !75, line: 479, type: !6)
!402 = !DILocation(line: 486, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !75, line: 487, column: 3)
!404 = distinct !DILexicalBlock(scope: !400, file: !75, line: 486, column: 3)
!405 = !DILocation(line: 0, scope: !400)
!406 = !DILocation(line: 486, column: 13, scope: !403)
!407 = !DILocation(line: 487, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !75, line: 490, column: 5)
!409 = distinct !DILexicalBlock(scope: !410, file: !75, line: 489, column: 5)
!410 = distinct !DILexicalBlock(scope: !403, file: !75, line: 486, column: 13)
!411 = !DILocalVariable(name: "i", scope: !370, file: !75, line: 478, type: !6)
!412 = !DILocation(line: 488, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !75, line: 488, column: 9)
!414 = !DILocation(line: 488, column: 9, scope: !410)
!415 = !DILocation(line: 489, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !75, line: 488, column: 18)
!417 = !DILocation(line: 491, column: 11, scope: !418)
!418 = distinct !DILexicalBlock(scope: !410, file: !75, line: 491, column: 9)
!419 = !DILocation(line: 491, column: 9, scope: !410)
!420 = !DILocation(line: 492, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !75, line: 491, column: 18)
!422 = !DILocation(line: 493, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !75, line: 493, column: 11)
!424 = !DILocation(line: 493, column: 11, scope: !421)
!425 = !DILocation(line: 494, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !75, line: 495, column: 9)
!427 = distinct !DILexicalBlock(scope: !428, file: !75, line: 494, column: 9)
!428 = distinct !DILexicalBlock(scope: !423, file: !75, line: 493, column: 19)
!429 = !DILocation(line: 495, column: 15, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !75, line: 495, column: 13)
!431 = !DILocation(line: 495, column: 13, scope: !428)
!432 = !DILocation(line: 496, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !75, line: 495, column: 22)
!434 = !DILocation(line: 498, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !428, file: !75, line: 498, column: 13)
!436 = !DILocation(line: 498, column: 13, scope: !428)
!437 = !DILocation(line: 499, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !75, line: 498, column: 22)
!439 = !DILocation(line: 501, column: 15, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !75, line: 501, column: 13)
!441 = !DILocation(line: 501, column: 13, scope: !435)
!442 = !DILocation(line: 502, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !75, line: 501, column: 22)
!444 = !DILocation(line: 0, scope: !440)
!445 = !DILocation(line: 503, column: 7, scope: !428)
!446 = !DILocation(line: 0, scope: !421)
!447 = !DILocation(line: 504, column: 5, scope: !421)
!448 = !DILocation(line: 0, scope: !418)
!449 = distinct !{!449, !402, !450}
!450 = !DILocation(line: 507, column: 3, scope: !403)
!451 = !DILocation(line: 509, column: 3, scope: !403)
!452 = !DILocation(line: 0, scope: !410)
!453 = !DILocation(line: 512, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !400, file: !75, line: 512, column: 7)
!455 = !DILocation(line: 512, column: 7, scope: !400)
!456 = !DILocation(line: 513, column: 38, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !75, line: 514, column: 5)
!458 = distinct !DILexicalBlock(scope: !459, file: !75, line: 513, column: 5)
!459 = distinct !DILexicalBlock(scope: !454, file: !75, line: 512, column: 16)
!460 = !DILocation(line: 513, column: 5, scope: !457)
!461 = !DILocation(line: 514, column: 14, scope: !458)
!462 = !DILocation(line: 515, column: 5, scope: !459)
!463 = !DILocation(line: 518, column: 10, scope: !400)
!464 = !DILocation(line: 519, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !75, line: 520, column: 3)
!466 = distinct !DILexicalBlock(scope: !400, file: !75, line: 519, column: 3)
!467 = !DILocation(line: 519, column: 13, scope: !465)
!468 = !DILocation(line: 520, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !75, line: 522, column: 5)
!470 = distinct !DILexicalBlock(scope: !465, file: !75, line: 519, column: 13)
!471 = !DILocalVariable(name: "savegc", scope: !370, file: !75, line: 481, type: !41)
!472 = !DILocation(line: 521, column: 22, scope: !469)
!473 = !DILocation(line: 521, column: 27, scope: !469)
!474 = !DILocation(line: 521, column: 36, scope: !469)
!475 = !DILocation(line: 521, column: 34, scope: !469)
!476 = !DILocation(line: 521, column: 13, scope: !469)
!477 = !DILocation(line: 521, column: 11, scope: !469)
!478 = !DILocation(line: 522, column: 14, scope: !469)
!479 = !DILocalVariable(name: "savecs", scope: !370, file: !75, line: 482, type: !41)
!480 = !DILocation(line: 523, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !469, file: !75, line: 523, column: 5)
!482 = !DILocation(line: 524, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !470, file: !75, line: 524, column: 9)
!484 = !DILocation(line: 524, column: 9, scope: !470)
!485 = !DILocation(line: 525, column: 40, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !75, line: 526, column: 7)
!487 = distinct !DILexicalBlock(scope: !488, file: !75, line: 525, column: 7)
!488 = distinct !DILexicalBlock(scope: !483, file: !75, line: 524, column: 18)
!489 = !DILocation(line: 525, column: 7, scope: !486)
!490 = !DILocation(line: 526, column: 40, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !75, line: 527, column: 7)
!492 = !DILocation(line: 526, column: 7, scope: !491)
!493 = !DILocation(line: 527, column: 16, scope: !487)
!494 = !DILocation(line: 528, column: 7, scope: !488)
!495 = !DILocation(line: 530, column: 11, scope: !496)
!496 = distinct !DILexicalBlock(scope: !470, file: !75, line: 530, column: 9)
!497 = !DILocation(line: 530, column: 9, scope: !470)
!498 = !DILocation(line: 531, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !75, line: 530, column: 17)
!500 = !DILocation(line: 531, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !499, file: !75, line: 531, column: 11)
!502 = !DILocation(line: 531, column: 11, scope: !499)
!503 = !DILocation(line: 532, column: 42, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !75, line: 533, column: 9)
!505 = distinct !DILexicalBlock(scope: !506, file: !75, line: 532, column: 9)
!506 = distinct !DILexicalBlock(scope: !501, file: !75, line: 531, column: 24)
!507 = !DILocation(line: 532, column: 9, scope: !504)
!508 = !DILocation(line: 534, column: 18, scope: !505)
!509 = !DILocation(line: 536, column: 7, scope: !506)
!510 = !DILocation(line: 537, column: 5, scope: !499)
!511 = !DILocation(line: 537, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !75, line: 537, column: 9)
!513 = !DILocation(line: 537, column: 17, scope: !512)
!514 = !DILocation(line: 537, column: 9, scope: !496)
!515 = !DILocation(line: 538, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !75, line: 538, column: 11)
!517 = distinct !DILexicalBlock(scope: !512, file: !75, line: 537, column: 24)
!518 = !DILocation(line: 538, column: 11, scope: !517)
!519 = !DILocation(line: 539, column: 15, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !75, line: 538, column: 23)
!521 = !DILocation(line: 540, column: 19, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !75, line: 540, column: 13)
!523 = !DILocation(line: 540, column: 13, scope: !520)
!524 = !DILocalVariable(name: "tmp", scope: !370, file: !75, line: 483, type: !71)
!525 = !DILocation(line: 541, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !75, line: 540, column: 24)
!527 = !DILocation(line: 0, scope: !522)
!528 = !DILocation(line: 540, column: 42, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !75, line: 543, column: 9)
!530 = distinct !DILexicalBlock(scope: !520, file: !75, line: 542, column: 9)
!531 = !DILocation(line: 540, column: 9, scope: !529)
!532 = !DILocation(line: 544, column: 7, scope: !520)
!533 = !DILocation(line: 544, column: 16, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !75, line: 546, column: 7)
!535 = distinct !DILexicalBlock(scope: !517, file: !75, line: 545, column: 7)
!536 = !DILocation(line: 544, column: 14, scope: !534)
!537 = !DILocation(line: 545, column: 15, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !75, line: 546, column: 7)
!539 = !DILocation(line: 545, column: 13, scope: !538)
!540 = !DILocation(line: 546, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !517, file: !75, line: 546, column: 11)
!542 = !DILocation(line: 546, column: 18, scope: !541)
!543 = !DILocation(line: 546, column: 11, scope: !517)
!544 = !DILocation(line: 547, column: 42, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !75, line: 548, column: 9)
!546 = distinct !DILexicalBlock(scope: !547, file: !75, line: 547, column: 9)
!547 = distinct !DILexicalBlock(scope: !541, file: !75, line: 546, column: 28)
!548 = !DILocation(line: 547, column: 9, scope: !545)
!549 = !DILocation(line: 548, column: 42, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !75, line: 549, column: 9)
!551 = !DILocation(line: 549, column: 17, scope: !550)
!552 = !DILocation(line: 548, column: 9, scope: !550)
!553 = !DILocation(line: 551, column: 18, scope: !546)
!554 = !DILocation(line: 553, column: 7, scope: !547)
!555 = !DILocation(line: 552, column: 11, scope: !556)
!556 = distinct !DILexicalBlock(scope: !541, file: !75, line: 552, column: 11)
!557 = !DILocation(line: 552, column: 18, scope: !556)
!558 = !DILocation(line: 552, column: 11, scope: !541)
!559 = !DILocation(line: 553, column: 42, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !75, line: 554, column: 9)
!561 = distinct !DILexicalBlock(scope: !562, file: !75, line: 553, column: 9)
!562 = distinct !DILexicalBlock(scope: !556, file: !75, line: 552, column: 28)
!563 = !DILocation(line: 553, column: 9, scope: !560)
!564 = !DILocation(line: 554, column: 42, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !75, line: 555, column: 9)
!566 = !DILocation(line: 555, column: 17, scope: !565)
!567 = !DILocation(line: 554, column: 9, scope: !565)
!568 = !DILocation(line: 557, column: 18, scope: !561)
!569 = !DILocation(line: 559, column: 7, scope: !562)
!570 = !DILocation(line: 559, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !517, file: !75, line: 559, column: 11)
!572 = !DILocation(line: 559, column: 17, scope: !571)
!573 = !DILocation(line: 559, column: 11, scope: !517)
!574 = !DILocation(line: 560, column: 42, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !75, line: 561, column: 9)
!576 = distinct !DILexicalBlock(scope: !577, file: !75, line: 560, column: 9)
!577 = distinct !DILexicalBlock(scope: !571, file: !75, line: 559, column: 28)
!578 = !DILocation(line: 560, column: 9, scope: !575)
!579 = !DILocation(line: 567, column: 18, scope: !576)
!580 = !DILocation(line: 569, column: 7, scope: !577)
!581 = !DILocation(line: 569, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !75, line: 571, column: 7)
!583 = distinct !DILexicalBlock(scope: !517, file: !75, line: 570, column: 7)
!584 = !DILocalVariable(name: "tmp___0", scope: !370, file: !75, line: 484, type: !6)
!585 = !DILocation(line: 569, column: 19, scope: !586)
!586 = distinct !DILexicalBlock(scope: !517, file: !75, line: 569, column: 11)
!587 = !DILocation(line: 569, column: 11, scope: !517)
!588 = !DILocation(line: 570, column: 42, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !75, line: 571, column: 9)
!590 = distinct !DILexicalBlock(scope: !591, file: !75, line: 570, column: 9)
!591 = distinct !DILexicalBlock(scope: !586, file: !75, line: 569, column: 26)
!592 = !DILocation(line: 570, column: 9, scope: !589)
!593 = !DILocation(line: 572, column: 18, scope: !590)
!594 = !DILocation(line: 574, column: 7, scope: !591)
!595 = !DILocation(line: 574, column: 7, scope: !517)
!596 = !DILocation(line: 575, column: 9, scope: !597)
!597 = distinct !DILexicalBlock(scope: !512, file: !75, line: 575, column: 9)
!598 = !DILocation(line: 575, column: 17, scope: !597)
!599 = !DILocation(line: 575, column: 9, scope: !512)
!600 = !DILocation(line: 576, column: 105, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !75, line: 577, column: 7)
!602 = distinct !DILexicalBlock(scope: !603, file: !75, line: 576, column: 7)
!603 = distinct !DILexicalBlock(scope: !597, file: !75, line: 575, column: 24)
!604 = !DILocation(line: 576, column: 7, scope: !601)
!605 = !DILocation(line: 579, column: 5, scope: !603)
!606 = !DILocation(line: 578, column: 80, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !75, line: 581, column: 7)
!608 = distinct !DILexicalBlock(scope: !609, file: !75, line: 580, column: 7)
!609 = distinct !DILexicalBlock(scope: !597, file: !75, line: 579, column: 12)
!610 = !DILocation(line: 578, column: 71, scope: !607)
!611 = !DILocation(line: 579, column: 39, scope: !607)
!612 = !DILocation(line: 578, column: 7, scope: !607)
!613 = distinct !{!613, !464, !614}
!614 = !DILocation(line: 583, column: 3, scope: !465)
!615 = !DILocation(line: 585, column: 3, scope: !465)
!616 = !DILocation(line: 589, column: 1, scope: !370)
!617 = distinct !DISubprogram(name: "engroup", scope: !75, file: !75, line: 216, type: !361, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!618 = !DILocalVariable(name: "__cil_tmp4", scope: !617, file: !75, line: 221, type: !16)
!619 = !DILocation(line: 221, column: 9, scope: !617)
!620 = !DILocalVariable(name: "__cil_tmp5", scope: !617, file: !75, line: 222, type: !16)
!621 = !DILocation(line: 222, column: 9, scope: !617)
!622 = !DILocation(line: 220, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !75, line: 226, column: 3)
!624 = distinct !DILexicalBlock(scope: !625, file: !75, line: 225, column: 3)
!625 = distinct !DILexicalBlock(scope: !617, file: !75, line: 224, column: 3)
!626 = !DILocation(line: 221, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !75, line: 222, column: 3)
!628 = !DILocation(line: 223, column: 3, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !75, line: 225, column: 3)
!630 = distinct !DILexicalBlock(scope: !625, file: !75, line: 224, column: 3)
!631 = !DILocation(line: 223, column: 13, scope: !629)
!632 = !DILocation(line: 224, column: 105, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !75, line: 227, column: 5)
!634 = distinct !DILexicalBlock(scope: !635, file: !75, line: 226, column: 5)
!635 = distinct !DILexicalBlock(scope: !629, file: !75, line: 223, column: 13)
!636 = !DILocation(line: 224, column: 11, scope: !633)
!637 = !DILocalVariable(name: "tmp", scope: !617, file: !75, line: 220, type: !63)
!638 = !DILocation(line: 0, scope: !617)
!639 = !DILocalVariable(name: "l", scope: !617, file: !75, line: 219, type: !6)
!640 = !DILocation(line: 225, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !635, file: !75, line: 225, column: 9)
!642 = !DILocation(line: 225, column: 9, scope: !635)
!643 = !DILocation(line: 226, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !75, line: 225, column: 17)
!645 = !DILocation(line: 228, column: 11, scope: !646)
!646 = distinct !DILexicalBlock(scope: !635, file: !75, line: 228, column: 9)
!647 = !DILocation(line: 228, column: 9, scope: !635)
!648 = !DILocation(line: 229, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !75, line: 229, column: 7)
!650 = distinct !DILexicalBlock(scope: !646, file: !75, line: 228, column: 17)
!651 = !DILocation(line: 229, column: 16, scope: !649)
!652 = !DILocation(line: 230, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !75, line: 230, column: 7)
!654 = !DILocation(line: 233, column: 5, scope: !650)
!655 = !DILocation(line: 232, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !75, line: 235, column: 7)
!657 = distinct !DILexicalBlock(scope: !658, file: !75, line: 234, column: 7)
!658 = distinct !DILexicalBlock(scope: !646, file: !75, line: 233, column: 12)
!659 = distinct !{!659, !628, !660}
!660 = !DILocation(line: 236, column: 3, scope: !629)
!661 = !DILocation(line: 238, column: 3, scope: !629)
!662 = !DILocation(line: 238, column: 20, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !75, line: 242, column: 3)
!664 = distinct !DILexicalBlock(scope: !625, file: !75, line: 241, column: 3)
!665 = !DILocation(line: 238, column: 3, scope: !663)
!666 = !DILocation(line: 239, column: 20, scope: !664)
!667 = !DILocation(line: 239, column: 25, scope: !664)
!668 = !DILocation(line: 239, column: 34, scope: !664)
!669 = !DILocation(line: 239, column: 32, scope: !664)
!670 = !DILocation(line: 239, column: 11, scope: !664)
!671 = !DILocation(line: 239, column: 9, scope: !664)
!672 = !DILocation(line: 240, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !664, file: !75, line: 240, column: 3)
!674 = !DILocation(line: 240, column: 3, scope: !673)
!675 = !DILocalVariable(name: "i", scope: !617, file: !75, line: 218, type: !6)
!676 = !DILocation(line: 241, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !75, line: 244, column: 3)
!678 = distinct !DILexicalBlock(scope: !625, file: !75, line: 243, column: 3)
!679 = !DILocation(line: 0, scope: !625)
!680 = !DILocation(line: 241, column: 13, scope: !677)
!681 = !DILocation(line: 241, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !75, line: 241, column: 9)
!683 = distinct !DILexicalBlock(scope: !677, file: !75, line: 241, column: 13)
!684 = !DILocation(line: 241, column: 9, scope: !683)
!685 = !DILocation(line: 241, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !75, line: 241, column: 21)
!687 = !DILocation(line: 242, column: 15, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !75, line: 243, column: 5)
!689 = !DILocation(line: 242, column: 24, scope: !688)
!690 = !DILocation(line: 242, column: 22, scope: !688)
!691 = !DILocation(line: 242, column: 34, scope: !688)
!692 = !DILocation(line: 242, column: 40, scope: !688)
!693 = !DILocation(line: 242, column: 31, scope: !688)
!694 = !DILocation(line: 242, column: 50, scope: !688)
!695 = !DILocation(line: 242, column: 56, scope: !688)
!696 = !DILocation(line: 242, column: 47, scope: !688)
!697 = !DILocation(line: 242, column: 11, scope: !688)
!698 = !DILocation(line: 242, column: 21, scope: !699)
!699 = distinct !DILexicalBlock(scope: !688, file: !75, line: 243, column: 5)
!700 = !DILocation(line: 242, column: 26, scope: !699)
!701 = !DILocation(line: 242, column: 5, scope: !699)
!702 = !DILocation(line: 241, column: 7, scope: !688)
!703 = distinct !{!703, !676, !704}
!704 = !DILocation(line: 243, column: 3, scope: !677)
!705 = !DILocation(line: 245, column: 3, scope: !677)
!706 = !DILocation(line: 245, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !75, line: 249, column: 3)
!708 = distinct !DILexicalBlock(scope: !625, file: !75, line: 248, column: 3)
!709 = !DILocation(line: 247, column: 3, scope: !710)
!710 = distinct !DILexicalBlock(scope: !708, file: !75, line: 247, column: 3)
!711 = !DILocation(line: 248, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !75, line: 249, column: 3)
!713 = !DILocation(line: 249, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !75, line: 250, column: 3)
!715 = !DILocation(line: 250, column: 3, scope: !625)
!716 = distinct !DISubprogram(name: "crcchar", scope: !75, file: !75, line: 130, type: !717, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !74}
!719 = !DILocalVariable(name: "b", arg: 1, scope: !716, file: !75, line: 130, type: !74)
!720 = !DILocation(line: 0, scope: !716)
!721 = !DILocation(line: 134, column: 15, scope: !722)
!722 = distinct !DILexicalBlock(scope: !716, file: !75, line: 134, column: 3)
!723 = !DILocation(line: 134, column: 34, scope: !722)
!724 = !DILocation(line: 134, column: 32, scope: !722)
!725 = !DILocation(line: 134, column: 12, scope: !722)
!726 = !DILocalVariable(name: "c", scope: !716, file: !75, line: 132, type: !65)
!727 = !DILocation(line: 134, column: 25, scope: !722)
!728 = !DILocation(line: 134, column: 10, scope: !722)
!729 = !DILocation(line: 134, column: 35, scope: !722)
!730 = !DILocation(line: 134, column: 33, scope: !722)
!731 = !DILocation(line: 134, column: 8, scope: !722)
!732 = !DILocation(line: 135, column: 25, scope: !722)
!733 = !DILocation(line: 135, column: 10, scope: !722)
!734 = !DILocation(line: 135, column: 8, scope: !722)
!735 = !DILocation(line: 136, column: 3, scope: !722)
!736 = distinct !DISubprogram(name: "insig", scope: !75, file: !75, line: 286, type: !737, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!737 = !DISubroutineType(types: !738)
!738 = !{!6}
!739 = !DILocation(line: 291, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !75, line: 291, column: 7)
!741 = distinct !DILexicalBlock(scope: !736, file: !75, line: 290, column: 3)
!742 = !DILocation(line: 291, column: 7, scope: !741)
!743 = !DILocation(line: 292, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !75, line: 293, column: 5)
!745 = distinct !DILexicalBlock(scope: !746, file: !75, line: 292, column: 5)
!746 = distinct !DILexicalBlock(scope: !740, file: !75, line: 291, column: 15)
!747 = !DILocation(line: 292, column: 15, scope: !744)
!748 = !DILocation(line: 293, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !75, line: 296, column: 7)
!750 = distinct !DILexicalBlock(scope: !751, file: !75, line: 295, column: 7)
!751 = distinct !DILexicalBlock(scope: !744, file: !75, line: 292, column: 15)
!752 = !DILocalVariable(name: "c", scope: !736, file: !75, line: 288, type: !6)
!753 = !DILocation(line: 0, scope: !736)
!754 = !DILocation(line: 294, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !75, line: 294, column: 11)
!756 = !DILocation(line: 294, column: 11, scope: !751)
!757 = !DILocation(line: 295, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !75, line: 294, column: 20)
!759 = !DILocation(line: 296, column: 9, scope: !758)
!760 = !DILocation(line: 294, column: 13, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !75, line: 294, column: 11)
!762 = !DILocation(line: 294, column: 11, scope: !755)
!763 = !DILocation(line: 295, column: 16, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !75, line: 294, column: 19)
!765 = !DILocation(line: 296, column: 9, scope: !764)
!766 = distinct !{!766, !743, !767}
!767 = !DILocation(line: 298, column: 5, scope: !744)
!768 = !DILocation(line: 300, column: 5, scope: !744)
!769 = !DILocation(line: 303, column: 3, scope: !746)
!770 = !DILocation(line: 300, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !75, line: 305, column: 3)
!772 = distinct !DILexicalBlock(scope: !741, file: !75, line: 304, column: 3)
!773 = !DILocation(line: 301, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !741, file: !75, line: 301, column: 7)
!775 = !DILocation(line: 301, column: 7, scope: !741)
!776 = !DILocation(line: 303, column: 12, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !75, line: 301, column: 16)
!778 = !DILocation(line: 304, column: 3, scope: !777)
!779 = !DILocation(line: 0, scope: !741)
!780 = !DILocation(line: 305, column: 3, scope: !741)
!781 = !DILocation(line: 307, column: 1, scope: !736)
!782 = distinct !DISubprogram(name: "in32", scope: !75, file: !75, line: 400, type: !737, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!783 = !DILocalVariable(name: "__cil_tmp7", scope: !782, file: !75, line: 408, type: !16)
!784 = !DILocation(line: 408, column: 9, scope: !782)
!785 = !DILocalVariable(name: "__cil_tmp8", scope: !782, file: !75, line: 409, type: !16)
!786 = !DILocation(line: 409, column: 9, scope: !782)
!787 = !DILocalVariable(name: "inerr", scope: !782, file: !75, line: 402, type: !6)
!788 = !DILocation(line: 0, scope: !782)
!789 = !DILocation(line: 405, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !75, line: 405, column: 7)
!791 = distinct !DILexicalBlock(scope: !782, file: !75, line: 411, column: 3)
!792 = !DILocation(line: 405, column: 7, scope: !791)
!793 = !DILocation(line: 406, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !75, line: 407, column: 5)
!795 = distinct !DILexicalBlock(scope: !796, file: !75, line: 406, column: 5)
!796 = distinct !DILexicalBlock(scope: !790, file: !75, line: 405, column: 14)
!797 = !DILocation(line: 406, column: 15, scope: !794)
!798 = !DILocation(line: 407, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !75, line: 410, column: 7)
!800 = distinct !DILexicalBlock(scope: !801, file: !75, line: 409, column: 7)
!801 = distinct !DILexicalBlock(scope: !794, file: !75, line: 406, column: 15)
!802 = !DILocalVariable(name: "i", scope: !782, file: !75, line: 403, type: !6)
!803 = !DILocation(line: 408, column: 13, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !75, line: 408, column: 11)
!805 = !DILocation(line: 408, column: 11, scope: !801)
!806 = !DILocation(line: 409, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !75, line: 408, column: 20)
!808 = !DILocation(line: 411, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !801, file: !75, line: 411, column: 11)
!810 = !DILocation(line: 411, column: 11, scope: !801)
!811 = !DILocation(line: 412, column: 19, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !75, line: 412, column: 13)
!813 = distinct !DILexicalBlock(scope: !809, file: !75, line: 411, column: 19)
!814 = !DILocation(line: 412, column: 13, scope: !812)
!815 = !DILocation(line: 412, column: 31, scope: !812)
!816 = !DILocation(line: 412, column: 13, scope: !813)
!817 = !DILocation(line: 415, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !812, file: !75, line: 412, column: 38)
!819 = !DILocation(line: 412, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !812, file: !75, line: 412, column: 13)
!821 = !DILocation(line: 412, column: 13, scope: !820)
!822 = !DILocation(line: 412, column: 31, scope: !820)
!823 = !DILocation(line: 415, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !75, line: 412, column: 38)
!825 = !DILocation(line: 412, column: 17, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !75, line: 418, column: 11)
!827 = distinct !DILexicalBlock(scope: !828, file: !75, line: 417, column: 11)
!828 = distinct !DILexicalBlock(scope: !820, file: !75, line: 416, column: 16)
!829 = !DILocalVariable(name: "tmp", scope: !782, file: !75, line: 405, type: !6)
!830 = !DILocation(line: 412, column: 19, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !75, line: 412, column: 15)
!832 = !DILocation(line: 412, column: 15, scope: !828)
!833 = !DILocation(line: 415, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !75, line: 412, column: 25)
!835 = !DILocation(line: 418, column: 7, scope: !813)
!836 = distinct !{!836, !793, !837}
!837 = !DILocation(line: 419, column: 5, scope: !794)
!838 = !DILocation(line: 421, column: 5, scope: !794)
!839 = !DILocation(line: 424, column: 3, scope: !796)
!840 = !DILocation(line: 420, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !75, line: 426, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !75, line: 425, column: 5)
!843 = distinct !DILexicalBlock(scope: !790, file: !75, line: 424, column: 10)
!844 = !DILocation(line: 0, scope: !790)
!845 = !DILocation(line: 422, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !791, file: !75, line: 422, column: 7)
!847 = !DILocation(line: 422, column: 7, scope: !791)
!848 = !DILocation(line: 424, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !75, line: 422, column: 16)
!850 = !DILocation(line: 422, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !75, line: 422, column: 7)
!852 = !DILocation(line: 422, column: 7, scope: !846)
!853 = !DILocation(line: 424, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !75, line: 422, column: 15)
!855 = !DILocation(line: 426, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !75, line: 427, column: 3)
!857 = distinct !DILexicalBlock(scope: !791, file: !75, line: 426, column: 3)
!858 = !DILocalVariable(name: "tmp___0", scope: !782, file: !75, line: 406, type: !6)
!859 = !DILocation(line: 426, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !791, file: !75, line: 426, column: 7)
!861 = !DILocation(line: 426, column: 7, scope: !791)
!862 = !DILocation(line: 427, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !75, line: 426, column: 21)
!864 = !DILocation(line: 429, column: 19, scope: !791)
!865 = !DILocation(line: 429, column: 13, scope: !791)
!866 = !DILocation(line: 429, column: 11, scope: !791)
!867 = !DILocation(line: 430, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !791, file: !75, line: 430, column: 7)
!869 = !DILocation(line: 430, column: 15, scope: !868)
!870 = !DILocation(line: 430, column: 7, scope: !791)
!871 = !DILocation(line: 430, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !75, line: 430, column: 22)
!873 = !DILocation(line: 430, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !75, line: 430, column: 7)
!875 = !DILocation(line: 430, column: 15, scope: !874)
!876 = !DILocation(line: 430, column: 5, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !75, line: 430, column: 22)
!878 = !DILocation(line: 430, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !75, line: 430, column: 7)
!880 = !DILocation(line: 430, column: 15, scope: !879)
!881 = !DILocation(line: 430, column: 22, scope: !879)
!882 = !DILocation(line: 431, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !75, line: 432, column: 5)
!884 = distinct !DILexicalBlock(scope: !879, file: !75, line: 430, column: 22)
!885 = !DILocation(line: 432, column: 12, scope: !883)
!886 = !DILocation(line: 433, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !75, line: 433, column: 5)
!888 = !DILocation(line: 434, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !75, line: 434, column: 9)
!890 = !DILocation(line: 434, column: 9, scope: !884)
!891 = !DILocation(line: 436, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !75, line: 434, column: 17)
!893 = !DILocalVariable(name: "j", scope: !782, file: !75, line: 404, type: !6)
!894 = !DILocation(line: 438, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !75, line: 440, column: 5)
!896 = distinct !DILexicalBlock(scope: !884, file: !75, line: 439, column: 5)
!897 = !DILocation(line: 0, scope: !884)
!898 = !DILocation(line: 438, column: 15, scope: !895)
!899 = !DILocation(line: 438, column: 16, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !75, line: 438, column: 11)
!901 = distinct !DILexicalBlock(scope: !895, file: !75, line: 438, column: 15)
!902 = !DILocation(line: 438, column: 11, scope: !901)
!903 = !DILocation(line: 438, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !75, line: 438, column: 23)
!905 = !DILocation(line: 439, column: 11, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !75, line: 441, column: 7)
!907 = distinct !DILexicalBlock(scope: !901, file: !75, line: 440, column: 7)
!908 = !DILocation(line: 440, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !901, file: !75, line: 440, column: 11)
!910 = !DILocation(line: 440, column: 11, scope: !901)
!911 = !DILocation(line: 442, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !75, line: 440, column: 20)
!913 = !DILocation(line: 440, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !75, line: 440, column: 11)
!915 = !DILocation(line: 440, column: 11, scope: !909)
!916 = !DILocation(line: 442, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !75, line: 440, column: 19)
!918 = !DILocation(line: 444, column: 17, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !75, line: 445, column: 7)
!920 = distinct !DILexicalBlock(scope: !901, file: !75, line: 444, column: 7)
!921 = !DILocalVariable(name: "tmp___1", scope: !782, file: !75, line: 407, type: !6)
!922 = !DILocation(line: 444, column: 13, scope: !923)
!923 = distinct !DILexicalBlock(scope: !901, file: !75, line: 444, column: 11)
!924 = !DILocation(line: 444, column: 11, scope: !901)
!925 = !DILocation(line: 446, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !75, line: 444, column: 22)
!927 = !DILocation(line: 438, column: 9, scope: !901)
!928 = distinct !{!928, !894, !929}
!929 = !DILocation(line: 439, column: 5, scope: !895)
!930 = !DILocation(line: 441, column: 5, scope: !895)
!931 = !DILocation(line: 449, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !75, line: 451, column: 5)
!933 = distinct !DILexicalBlock(scope: !884, file: !75, line: 450, column: 5)
!934 = !DILocation(line: 449, column: 15, scope: !932)
!935 = !DILocation(line: 449, column: 16, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !75, line: 449, column: 11)
!937 = distinct !DILexicalBlock(scope: !932, file: !75, line: 449, column: 15)
!938 = !DILocation(line: 449, column: 11, scope: !937)
!939 = !DILocation(line: 449, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !75, line: 449, column: 23)
!941 = !DILocation(line: 450, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !75, line: 452, column: 7)
!943 = distinct !DILexicalBlock(scope: !937, file: !75, line: 451, column: 7)
!944 = !DILocation(line: 450, column: 7, scope: !942)
!945 = !DILocation(line: 449, column: 9, scope: !943)
!946 = distinct !{!946, !931, !947}
!947 = !DILocation(line: 451, column: 5, scope: !932)
!948 = !DILocation(line: 453, column: 5, scope: !932)
!949 = !DILocation(line: 452, column: 5, scope: !884)
!950 = !DILocation(line: 455, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !879, file: !75, line: 453, column: 10)
!952 = !DILocation(line: 0, scope: !791)
!953 = !DILocation(line: 458, column: 1, scope: !782)
!954 = distinct !DISubprogram(name: "getlong", scope: !75, file: !75, line: 462, type: !955, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!955 = !DISubroutineType(types: !956)
!956 = !{!41, !79}
!957 = !DILocalVariable(name: "cp", arg: 1, scope: !954, file: !75, line: 462, type: !79)
!958 = !DILocation(line: 0, scope: !954)
!959 = !DILocalVariable(name: "l", scope: !954, file: !75, line: 465, type: !41)
!960 = !DILocalVariable(name: "i", scope: !954, file: !75, line: 464, type: !6)
!961 = !DILocation(line: 467, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !75, line: 469, column: 3)
!963 = distinct !DILexicalBlock(scope: !964, file: !75, line: 468, column: 3)
!964 = distinct !DILexicalBlock(scope: !954, file: !75, line: 468, column: 3)
!965 = !DILocation(line: 0, scope: !964)
!966 = !DILocation(line: 467, column: 13, scope: !962)
!967 = !DILocation(line: 467, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !75, line: 467, column: 9)
!969 = distinct !DILexicalBlock(scope: !962, file: !75, line: 467, column: 13)
!970 = !DILocation(line: 467, column: 9, scope: !969)
!971 = !DILocation(line: 467, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !75, line: 467, column: 20)
!973 = !DILocalVariable(name: "tmp", scope: !954, file: !75, line: 466, type: !79)
!974 = !DILocation(line: 468, column: 8, scope: !969)
!975 = !DILocation(line: 468, column: 17, scope: !969)
!976 = !DILocation(line: 468, column: 10, scope: !969)
!977 = !DILocation(line: 468, column: 27, scope: !969)
!978 = !DILocation(line: 468, column: 22, scope: !969)
!979 = !DILocation(line: 468, column: 7, scope: !969)
!980 = !DILocation(line: 467, column: 7, scope: !969)
!981 = distinct !{!981, !961, !982}
!982 = !DILocation(line: 468, column: 3, scope: !962)
!983 = !DILocation(line: 470, column: 3, scope: !962)
!984 = !DILocation(line: 471, column: 3, scope: !964)
!985 = distinct !DISubprogram(name: "inchar", scope: !75, file: !75, line: 273, type: !737, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!986 = !DILocation(line: 275, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !75, line: 275, column: 7)
!988 = distinct !DILexicalBlock(scope: !985, file: !75, line: 278, column: 3)
!989 = !DILocation(line: 275, column: 15, scope: !987)
!990 = !DILocation(line: 275, column: 12, scope: !987)
!991 = !DILocation(line: 275, column: 7, scope: !988)
!992 = !DILocation(line: 276, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !75, line: 277, column: 5)
!994 = distinct !DILexicalBlock(scope: !995, file: !75, line: 276, column: 5)
!995 = distinct !DILexicalBlock(scope: !987, file: !75, line: 275, column: 22)
!996 = !DILocalVariable(name: "tmp", scope: !985, file: !75, line: 275, type: !6)
!997 = !DILocation(line: 0, scope: !985)
!998 = !DILocation(line: 276, column: 11, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !75, line: 276, column: 9)
!1000 = !DILocation(line: 276, column: 9, scope: !995)
!1001 = !DILocation(line: 277, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !75, line: 276, column: 16)
!1003 = !DILocation(line: 279, column: 3, scope: !995)
!1004 = !DILocation(line: 281, column: 13, scope: !988)
!1005 = !DILocalVariable(name: "tmp___0", scope: !985, file: !75, line: 276, type: !6)
!1006 = !DILocation(line: 281, column: 8, scope: !988)
!1007 = !DILocation(line: 281, column: 17, scope: !988)
!1008 = !DILocation(line: 281, column: 11, scope: !988)
!1009 = !DILocation(line: 281, column: 3, scope: !988)
!1010 = !DILocation(line: 0, scope: !988)
!1011 = !DILocation(line: 283, column: 1, scope: !985)
!1012 = distinct !DISubprogram(name: "inbuf", scope: !75, file: !75, line: 254, type: !737, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1013 = !DILocation(line: 258, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !75, line: 258, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !75, line: 259, column: 3)
!1016 = !DILocation(line: 258, column: 7, scope: !1015)
!1017 = !DILocation(line: 259, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !75, line: 258, column: 14)
!1019 = !DILocation(line: 261, column: 100, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !75, line: 262, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !75, line: 261, column: 3)
!1022 = !DILocation(line: 261, column: 9, scope: !1020)
!1023 = !DILocalVariable(name: "tmp", scope: !1012, file: !75, line: 257, type: !63)
!1024 = !DILocation(line: 0, scope: !1012)
!1025 = !DILocalVariable(name: "l", scope: !1012, file: !75, line: 256, type: !6)
!1026 = !DILocation(line: 262, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1015, file: !75, line: 262, column: 7)
!1028 = !DILocation(line: 262, column: 7, scope: !1015)
!1029 = !DILocation(line: 263, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !75, line: 262, column: 15)
!1031 = !DILocation(line: 264, column: 5, scope: !1030)
!1032 = !DILocation(line: 266, column: 9, scope: !1015)
!1033 = !DILocation(line: 267, column: 8, scope: !1015)
!1034 = !DILocation(line: 268, column: 3, scope: !1015)
!1035 = !DILocation(line: 0, scope: !1015)
!1036 = !DILocation(line: 270, column: 1, scope: !1012)
!1037 = distinct !DISubprogram(name: "ingroup", scope: !75, file: !75, line: 327, type: !737, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1038 = !DILocalVariable(name: "gp", scope: !1037, file: !75, line: 329, type: !6)
!1039 = !DILocation(line: 0, scope: !1037)
!1040 = !DILocation(line: 332, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !75, line: 331, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !75, line: 330, column: 3)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !75, line: 334, column: 3)
!1044 = !DILocation(line: 332, column: 13, scope: !1041)
!1045 = !DILocation(line: 333, column: 10, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !75, line: 336, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 335, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !75, line: 332, column: 13)
!1049 = !DILocalVariable(name: "ch", scope: !1037, file: !75, line: 330, type: !6)
!1050 = !DILocation(line: 334, column: 12, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 334, column: 9)
!1052 = !DILocation(line: 334, column: 9, scope: !1048)
!1053 = !DILocation(line: 335, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !75, line: 334, column: 19)
!1055 = !DILocation(line: 337, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 337, column: 9)
!1057 = !DILocation(line: 337, column: 9, scope: !1048)
!1058 = !DILocation(line: 338, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !75, line: 338, column: 11)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !75, line: 337, column: 19)
!1061 = !DILocation(line: 338, column: 11, scope: !1060)
!1062 = !DILocation(line: 339, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !75, line: 340, column: 9)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !75, line: 339, column: 9)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !75, line: 338, column: 20)
!1066 = !DILocation(line: 340, column: 9, scope: !1065)
!1067 = !DILocation(line: 338, column: 14, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1059, file: !75, line: 338, column: 11)
!1069 = !DILocation(line: 338, column: 11, scope: !1059)
!1070 = !DILocation(line: 339, column: 9, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !75, line: 340, column: 9)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !75, line: 339, column: 9)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !75, line: 338, column: 20)
!1074 = !DILocation(line: 340, column: 9, scope: !1073)
!1075 = !DILocalVariable(name: "tmp", scope: !1037, file: !75, line: 331, type: !6)
!1076 = !DILocation(line: 342, column: 10, scope: !1060)
!1077 = !DILocation(line: 342, column: 23, scope: !1060)
!1078 = !DILocation(line: 342, column: 7, scope: !1060)
!1079 = !DILocation(line: 342, column: 21, scope: !1060)
!1080 = !DILocation(line: 343, column: 7, scope: !1060)
!1081 = distinct !{!1081, !1040, !1082}
!1082 = !DILocation(line: 345, column: 3, scope: !1041)
!1083 = !DILocation(line: 347, column: 3, scope: !1041)
!1084 = !DILocation(line: 347, column: 3, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !75, line: 351, column: 3)
!1086 = distinct !DILexicalBlock(scope: !1043, file: !75, line: 350, column: 3)
!1087 = !DILocation(line: 0, scope: !1043)
!1088 = !DILocation(line: 347, column: 13, scope: !1085)
!1089 = !DILocation(line: 348, column: 10, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !75, line: 351, column: 5)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !75, line: 350, column: 5)
!1092 = distinct !DILexicalBlock(scope: !1085, file: !75, line: 347, column: 13)
!1093 = !DILocation(line: 349, column: 12, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !75, line: 349, column: 9)
!1095 = !DILocation(line: 349, column: 9, scope: !1092)
!1096 = !DILocation(line: 349, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !75, line: 349, column: 19)
!1098 = !DILocation(line: 349, column: 12, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !75, line: 349, column: 9)
!1100 = !DILocation(line: 349, column: 9, scope: !1094)
!1101 = !DILocation(line: 349, column: 19, scope: !1099)
!1102 = !DILocation(line: 350, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !75, line: 350, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !75, line: 349, column: 19)
!1105 = !DILocation(line: 350, column: 11, scope: !1104)
!1106 = !DILocation(line: 351, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !75, line: 350, column: 19)
!1108 = !DILocation(line: 353, column: 14, scope: !1104)
!1109 = !DILocation(line: 354, column: 7, scope: !1104)
!1110 = !DILocation(line: 356, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1092, file: !75, line: 356, column: 9)
!1112 = !DILocation(line: 356, column: 9, scope: !1092)
!1113 = !DILocation(line: 357, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !75, line: 358, column: 7)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !75, line: 357, column: 7)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !75, line: 356, column: 18)
!1117 = !DILocation(line: 358, column: 7, scope: !1116)
!1118 = !DILocation(line: 356, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !75, line: 356, column: 9)
!1120 = !DILocation(line: 356, column: 9, scope: !1111)
!1121 = !DILocation(line: 357, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !75, line: 358, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !75, line: 357, column: 7)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !75, line: 356, column: 18)
!1125 = !DILocation(line: 358, column: 7, scope: !1124)
!1126 = !DILocation(line: 360, column: 12, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1092, file: !75, line: 360, column: 9)
!1128 = !DILocation(line: 360, column: 9, scope: !1092)
!1129 = !DILocation(line: 361, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !75, line: 362, column: 7)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !75, line: 361, column: 7)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !75, line: 360, column: 18)
!1133 = !DILocation(line: 362, column: 7, scope: !1132)
!1134 = !DILocalVariable(name: "tmp___0", scope: !1037, file: !75, line: 332, type: !6)
!1135 = !DILocation(line: 364, column: 8, scope: !1092)
!1136 = !DILocation(line: 364, column: 25, scope: !1092)
!1137 = !DILocation(line: 364, column: 5, scope: !1092)
!1138 = !DILocation(line: 364, column: 23, scope: !1092)
!1139 = distinct !{!1139, !1084, !1140}
!1140 = !DILocation(line: 365, column: 3, scope: !1085)
!1141 = !DILocation(line: 367, column: 3, scope: !1085)
!1142 = !DILocation(line: 371, column: 1, scope: !1037)
!1143 = distinct !DISubprogram(name: "ostore", scope: !75, file: !75, line: 373, type: !1144, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!6, !6}
!1146 = !DILocalVariable(name: "x", arg: 1, scope: !1143, file: !75, line: 373, type: !6)
!1147 = !DILocation(line: 0, scope: !1143)
!1148 = !DILocalVariable(name: "i", scope: !1143, file: !75, line: 375, type: !6)
!1149 = !DILocation(line: 377, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !75, line: 379, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !75, line: 378, column: 3)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !75, line: 379, column: 3)
!1153 = !DILocation(line: 0, scope: !1152)
!1154 = !DILocation(line: 377, column: 13, scope: !1150)
!1155 = !DILocation(line: 377, column: 14, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !75, line: 377, column: 9)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 377, column: 13)
!1158 = !DILocation(line: 377, column: 9, scope: !1157)
!1159 = !DILocation(line: 377, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !75, line: 377, column: 20)
!1161 = !DILocation(line: 378, column: 15, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !75, line: 378, column: 9)
!1163 = !DILocation(line: 378, column: 9, scope: !1162)
!1164 = !DILocation(line: 378, column: 27, scope: !1162)
!1165 = !DILocation(line: 378, column: 9, scope: !1157)
!1166 = !DILocation(line: 379, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !75, line: 378, column: 33)
!1168 = !DILocation(line: 378, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !75, line: 378, column: 9)
!1170 = !DILocation(line: 378, column: 9, scope: !1169)
!1171 = !DILocation(line: 378, column: 27, scope: !1169)
!1172 = !DILocation(line: 379, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !75, line: 378, column: 33)
!1174 = !DILocation(line: 381, column: 15, scope: !1157)
!1175 = !DILocation(line: 381, column: 9, scope: !1157)
!1176 = !DILocation(line: 381, column: 27, scope: !1157)
!1177 = !DILocalVariable(name: "j", scope: !1143, file: !75, line: 376, type: !6)
!1178 = !DILocation(line: 382, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1157, file: !75, line: 382, column: 9)
!1180 = !DILocation(line: 382, column: 9, scope: !1157)
!1181 = !DILocation(line: 383, column: 13, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !75, line: 382, column: 16)
!1183 = !DILocalVariable(name: "tmp", scope: !1143, file: !75, line: 377, type: !6)
!1184 = !DILocation(line: 383, column: 14, scope: !1182)
!1185 = !DILocation(line: 383, column: 33, scope: !1182)
!1186 = !DILocation(line: 383, column: 27, scope: !1182)
!1187 = !DILocation(line: 383, column: 43, scope: !1182)
!1188 = !DILocation(line: 383, column: 19, scope: !1182)
!1189 = !DILocation(line: 383, column: 7, scope: !1182)
!1190 = !DILocation(line: 383, column: 17, scope: !1182)
!1191 = !DILocation(line: 384, column: 13, scope: !1182)
!1192 = !DILocation(line: 385, column: 5, scope: !1182)
!1193 = !DILocation(line: 386, column: 32, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !75, line: 385, column: 12)
!1195 = !DILocation(line: 386, column: 22, scope: !1194)
!1196 = !DILocation(line: 386, column: 12, scope: !1194)
!1197 = !DILocation(line: 386, column: 7, scope: !1194)
!1198 = !DILocation(line: 386, column: 20, scope: !1194)
!1199 = !DILocation(line: 387, column: 13, scope: !1194)
!1200 = !DILocation(line: 377, column: 7, scope: !1157)
!1201 = distinct !{!1201, !1149, !1202}
!1202 = !DILocation(line: 378, column: 3, scope: !1150)
!1203 = !DILocation(line: 380, column: 3, scope: !1150)
!1204 = !DILocation(line: 390, column: 3, scope: !1152)
!1205 = !DILocation(line: 392, column: 1, scope: !1143)
!1206 = distinct !DISubprogram(name: "inskerr", scope: !75, file: !75, line: 311, type: !361, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1207 = !DILocation(line: 315, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !75, line: 317, column: 3)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !75, line: 316, column: 3)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !75, line: 315, column: 3)
!1211 = !DILocation(line: 315, column: 13, scope: !1208)
!1212 = !DILocation(line: 316, column: 10, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !75, line: 319, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !75, line: 318, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1208, file: !75, line: 315, column: 13)
!1216 = !DILocalVariable(name: "ch", scope: !1206, file: !75, line: 313, type: !6)
!1217 = !DILocation(line: 0, scope: !1206)
!1218 = !DILocation(line: 317, column: 12, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !75, line: 317, column: 9)
!1220 = !DILocation(line: 317, column: 9, scope: !1215)
!1221 = !DILocation(line: 318, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !75, line: 317, column: 19)
!1223 = !DILocation(line: 317, column: 12, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !75, line: 317, column: 9)
!1225 = !DILocation(line: 317, column: 9, scope: !1219)
!1226 = !DILocation(line: 318, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !75, line: 317, column: 19)
!1228 = distinct !{!1228, !1207, !1229}
!1229 = !DILocation(line: 320, column: 3, scope: !1208)
!1230 = !DILocation(line: 322, column: 3, scope: !1208)
!1231 = !DILocation(line: 321, column: 3, scope: !1210)
!1232 = distinct !DISubprogram(name: "outgroup", scope: !75, file: !75, line: 157, type: !361, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1233 = !DILocation(line: 159, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !75, line: 159, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !75, line: 161, column: 3)
!1236 = !DILocation(line: 159, column: 16, scope: !1234)
!1237 = !DILocation(line: 159, column: 21, scope: !1234)
!1238 = !DILocation(line: 159, column: 25, scope: !1234)
!1239 = !DILocation(line: 159, column: 7, scope: !1235)
!1240 = !DILocation(line: 160, column: 5, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !75, line: 161, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !75, line: 160, column: 5)
!1243 = distinct !DILexicalBlock(scope: !1234, file: !75, line: 159, column: 31)
!1244 = !DILocation(line: 163, column: 3, scope: !1243)
!1245 = !DILocation(line: 162, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1235, file: !75, line: 162, column: 7)
!1247 = !DILocation(line: 162, column: 15, scope: !1246)
!1248 = !DILocation(line: 162, column: 7, scope: !1235)
!1249 = !DILocation(line: 163, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !75, line: 162, column: 20)
!1251 = !DILocalVariable(name: "tmp", scope: !1232, file: !75, line: 159, type: !6)
!1252 = !DILocation(line: 0, scope: !1232)
!1253 = !DILocation(line: 163, column: 13, scope: !1250)
!1254 = !DILocation(line: 163, column: 5, scope: !1250)
!1255 = !DILocation(line: 163, column: 18, scope: !1250)
!1256 = !DILocation(line: 164, column: 3, scope: !1250)
!1257 = !DILocation(line: 165, column: 46, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !75, line: 166, column: 3)
!1259 = distinct !DILexicalBlock(scope: !1235, file: !75, line: 165, column: 3)
!1260 = !DILocation(line: 165, column: 44, scope: !1258)
!1261 = !DILocation(line: 165, column: 3, scope: !1258)
!1262 = !DILocation(line: 166, column: 11, scope: !1259)
!1263 = !DILocation(line: 167, column: 9, scope: !1259)
!1264 = !DILocation(line: 168, column: 10, scope: !1259)
!1265 = !DILocation(line: 169, column: 3, scope: !1235)
!1266 = distinct !DISubprogram(name: "out32", scope: !75, file: !75, line: 192, type: !1267, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !6, !79}
!1269 = !DILocalVariable(name: "code", arg: 1, scope: !1266, file: !75, line: 192, type: !6)
!1270 = !DILocation(line: 0, scope: !1266)
!1271 = !DILocalVariable(name: "dbuf", arg: 2, scope: !1266, file: !75, line: 192, type: !79)
!1272 = !DILocation(line: 196, column: 3, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !75, line: 198, column: 3)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !75, line: 197, column: 3)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !75, line: 196, column: 3)
!1276 = !DILocalVariable(name: "i", scope: !1266, file: !75, line: 194, type: !6)
!1277 = !DILocation(line: 197, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !75, line: 200, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !75, line: 199, column: 3)
!1280 = !DILocation(line: 0, scope: !1275)
!1281 = !DILocation(line: 197, column: 13, scope: !1278)
!1282 = !DILocation(line: 197, column: 14, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !75, line: 197, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !75, line: 197, column: 13)
!1285 = !DILocation(line: 197, column: 9, scope: !1284)
!1286 = !DILocation(line: 197, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !75, line: 197, column: 21)
!1288 = !DILocation(line: 198, column: 26, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !75, line: 200, column: 5)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !75, line: 199, column: 5)
!1291 = !DILocation(line: 198, column: 19, scope: !1289)
!1292 = !DILocation(line: 198, column: 13, scope: !1289)
!1293 = !DILocation(line: 198, column: 5, scope: !1289)
!1294 = !DILocation(line: 197, column: 7, scope: !1290)
!1295 = distinct !{!1295, !1277, !1296}
!1296 = !DILocation(line: 199, column: 3, scope: !1278)
!1297 = !DILocation(line: 201, column: 3, scope: !1278)
!1298 = !DILocation(line: 200, column: 3, scope: !1275)
!1299 = distinct !DISubprogram(name: "storelong", scope: !75, file: !75, line: 204, type: !1300, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !79, !41}
!1302 = !DILocalVariable(name: "cp", arg: 1, scope: !1299, file: !75, line: 204, type: !79)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocalVariable(name: "l", arg: 2, scope: !1299, file: !75, line: 204, type: !41)
!1305 = !DILocalVariable(name: "i", scope: !1299, file: !75, line: 206, type: !6)
!1306 = !DILocation(line: 208, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !75, line: 210, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !75, line: 209, column: 3)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 209, column: 3)
!1310 = !DILocation(line: 0, scope: !1309)
!1311 = !DILocation(line: 208, column: 13, scope: !1307)
!1312 = !DILocation(line: 208, column: 14, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !75, line: 208, column: 9)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !75, line: 208, column: 13)
!1315 = !DILocation(line: 208, column: 9, scope: !1314)
!1316 = !DILocation(line: 208, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !75, line: 208, column: 20)
!1318 = !DILocalVariable(name: "tmp", scope: !1299, file: !75, line: 207, type: !79)
!1319 = !DILocation(line: 209, column: 8, scope: !1314)
!1320 = !DILocation(line: 209, column: 22, scope: !1314)
!1321 = !DILocation(line: 209, column: 12, scope: !1314)
!1322 = !DILocation(line: 209, column: 10, scope: !1314)
!1323 = !DILocation(line: 210, column: 7, scope: !1314)
!1324 = !DILocation(line: 208, column: 7, scope: !1314)
!1325 = distinct !{!1325, !1306, !1326}
!1326 = !DILocation(line: 209, column: 3, scope: !1307)
!1327 = !DILocation(line: 211, column: 3, scope: !1307)
!1328 = !DILocation(line: 212, column: 3, scope: !1309)
!1329 = distinct !DISubprogram(name: "outline", scope: !75, file: !75, line: 148, type: !361, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1330 = !DILocation(line: 150, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !75, line: 153, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !75, line: 152, column: 3)
!1333 = !DILocalVariable(name: "tmp", scope: !1329, file: !75, line: 150, type: !6)
!1334 = !DILocation(line: 0, scope: !1329)
!1335 = !DILocation(line: 150, column: 11, scope: !1331)
!1336 = !DILocation(line: 150, column: 3, scope: !1331)
!1337 = !DILocation(line: 150, column: 16, scope: !1331)
!1338 = !DILocation(line: 151, column: 63, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !75, line: 151, column: 3)
!1340 = !DILocation(line: 152, column: 35, scope: !1339)
!1341 = !DILocation(line: 151, column: 3, scope: !1339)
!1342 = !DILocation(line: 152, column: 11, scope: !1331)
!1343 = !DILocation(line: 153, column: 3, scope: !1332)
!1344 = distinct !DISubprogram(name: "outchar", scope: !75, file: !75, line: 173, type: !1345, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !6}
!1347 = !DILocalVariable(name: "c", arg: 1, scope: !1344, file: !75, line: 173, type: !6)
!1348 = !DILocation(line: 0, scope: !1344)
!1349 = !DILocation(line: 175, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !75, line: 177, column: 3)
!1351 = !DILocalVariable(name: "tmp", scope: !1344, file: !75, line: 175, type: !6)
!1352 = !DILocation(line: 175, column: 19, scope: !1350)
!1353 = !DILocation(line: 175, column: 3, scope: !1350)
!1354 = !DILocation(line: 175, column: 17, scope: !1350)
!1355 = !DILocation(line: 176, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !75, line: 176, column: 7)
!1357 = !DILocation(line: 176, column: 13, scope: !1356)
!1358 = !DILocation(line: 176, column: 7, scope: !1350)
!1359 = !DILocation(line: 177, column: 5, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !75, line: 178, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !75, line: 177, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !75, line: 176, column: 19)
!1363 = !DILocation(line: 180, column: 3, scope: !1362)
!1364 = !DILocation(line: 179, column: 3, scope: !1350)
!1365 = distinct !DISubprogram(name: "outbyte", scope: !75, file: !75, line: 183, type: !1345, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1366 = !DILocalVariable(name: "b", arg: 1, scope: !1365, file: !75, line: 183, type: !6)
!1367 = !DILocation(line: 0, scope: !1365)
!1368 = !DILocation(line: 185, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !75, line: 189, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !75, line: 188, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !75, line: 187, column: 3)
!1372 = !DILocation(line: 185, column: 3, scope: !1369)
!1373 = !DILocation(line: 186, column: 20, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !75, line: 187, column: 3)
!1375 = !DILocation(line: 186, column: 27, scope: !1374)
!1376 = !DILocation(line: 186, column: 14, scope: !1374)
!1377 = !DILocation(line: 186, column: 3, scope: !1374)
!1378 = !DILocation(line: 187, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !75, line: 188, column: 3)
!1380 = !DILocation(line: 187, column: 14, scope: !1379)
!1381 = !DILocation(line: 187, column: 3, scope: !1379)
!1382 = !DILocation(line: 188, column: 3, scope: !1371)
