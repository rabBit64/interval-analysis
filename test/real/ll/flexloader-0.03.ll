; ModuleID = '/tmp/tmp.ll'
source_filename = "c/flexloader-0.03.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@debug = global i32 0, align 4, !dbg !0
@quiet = global i32 0, align 4, !dbg !89
@.str = private unnamed_addr constant [5 x i8] c"dhqv\00", align 1
@long_options = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !92
@.str.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@optind = external global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Code NOT downloaded to the FPGA\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Code successfully downloaded to the FPGA\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Can't open %s!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Byteblaster not found on %s!\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Opening %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Altera FLEX not found!\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Download failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"flexloader version 0.03\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"(C) 2005 Aurelien Jarno\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [294 x i8] c"Usage: flexloader parport_device rbf_file\0A\0AValid options are:\0A  -d,       --debug             Print debug messages.\0A  -h,       --help              Print this message.\0A  -q,       --quiet             Don't print any message.\0A  -v,       --version           Display flexloader version number.\0A\0A\00", align 1
@data = internal global i8 0, align 1, !dbg !97
@.str.17 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Detecting byteblaster\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Driving D5 low\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ACK stuck high\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Driving D5 high\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ACK stuck low\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Configuring FLEX\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"nSTATUS != 1\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"nSTATUS != 0\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"CONF_DONE != 0\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Downloading code\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Downloading byte %i\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Unexpected end of file\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Checksum error\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"%i bytes downloaded\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Initializing FLEX\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !106 {
entry:
  %lindex = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8** %argv, metadata !112, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %lindex, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata !4, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata !4, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata !4, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata !4, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %lindex, align 4, !dbg !123
  br label %while.body, !dbg !125

while.body:                                       ; preds = %switch_break, %entry
  br label %while_continue___0, !dbg !128

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !128

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i32 0, i32 0), i32* %lindex) #5, !dbg !129
  call void @llvm.dbg.value(metadata i32 %call, metadata !133, metadata !DIExpression()), !dbg !111
  %cmp = icmp ne i32 %call, -1, !dbg !134
  br i1 %cmp, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !137

if.end:                                           ; preds = %while_continue
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %call), !dbg !139
  %cmp2 = icmp eq i32 %call, 100, !dbg !142
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !145

if.then3:                                         ; preds = %if.end
  br label %case_100, !dbg !146

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %call, 104, !dbg !148
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !150

if.then6:                                         ; preds = %if.end4
  br label %case_104, !dbg !151

if.end7:                                          ; preds = %if.end4
  %cmp8 = icmp eq i32 %call, 113, !dbg !153
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !155

if.then9:                                         ; preds = %if.end7
  br label %case_113, !dbg !156

if.end10:                                         ; preds = %if.end7
  %cmp11 = icmp eq i32 %call, 118, !dbg !158
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !160

if.then12:                                        ; preds = %if.end10
  br label %case_118, !dbg !161

if.end13:                                         ; preds = %if.end10
  br label %switch_default, !dbg !163

case_100:                                         ; preds = %if.then3
  store i32 1, i32* @debug, align 4, !dbg !164
  br label %switch_break, !dbg !165

case_104:                                         ; preds = %if.then6
  call void @print_banner(), !dbg !166
  call void @print_usage(), !dbg !169
  call void @exit(i32 0) #6, !dbg !171
  unreachable, !dbg !171

case_113:                                         ; preds = %if.then9
  store i32 1, i32* @quiet, align 4, !dbg !173
  br label %switch_break, !dbg !174

case_118:                                         ; preds = %if.then12
  call void @print_banner(), !dbg !175
  call void @exit(i32 0) #6, !dbg !178
  unreachable, !dbg !178

switch_default:                                   ; preds = %if.end13
  call void @print_banner(), !dbg !180
  call void @print_usage(), !dbg !183
  call void @exit(i32 1) #6, !dbg !185
  unreachable, !dbg !185

switch_break:                                     ; preds = %case_113, %case_100
  br label %while.body, !dbg !125, !llvm.loop !187

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !189

while_break:                                      ; preds = %while_break___0, %if.then
  call void @print_banner(), !dbg !190
  %0 = load i32, i32* @optind, align 4, !dbg !193
  %sub = sub nsw i32 %argc, %0, !dbg !195
  %cmp14 = icmp ne i32 %sub, 2, !dbg !196
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !197

if.then15:                                        ; preds = %while_break
  call void @print_usage(), !dbg !198
  call void @exit(i32 1) #6, !dbg !202
  unreachable, !dbg !202

if.end16:                                         ; preds = %while_break
  %1 = load i32, i32* @optind, align 4, !dbg !204
  %idx.ext = sext i32 %1 to i64, !dbg !207
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !207
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !208
  %3 = load i32, i32* @optind, align 4, !dbg !209
  %add = add nsw i32 %3, 1, !dbg !210
  %idx.ext17 = sext i32 %add to i64, !dbg !211
  %add.ptr18 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext17, !dbg !211
  %4 = load i8*, i8** %add.ptr18, align 8, !dbg !212
  %call19 = call i32 @flex_download_program(i8* %2, i8* %4), !dbg !213
  call void @llvm.dbg.value(metadata i32 %call19, metadata !214, metadata !DIExpression()), !dbg !111
  %cmp20 = icmp ne i32 %call19, 0, !dbg !215
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !217

if.then21:                                        ; preds = %if.end16
  %5 = load i32, i32* @quiet, align 4, !dbg !218
  %tobool = icmp ne i32 %5, 0, !dbg !218
  br i1 %tobool, label %if.end24, label %if.then22, !dbg !221

if.then22:                                        ; preds = %if.then21
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)), !dbg !222
  br label %if.end24, !dbg !226

if.end24:                                         ; preds = %if.then22, %if.then21
  br label %if.end29, !dbg !227

if.else:                                          ; preds = %if.end16
  %6 = load i32, i32* @quiet, align 4, !dbg !228
  %tobool25 = icmp ne i32 %6, 0, !dbg !228
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !230

if.then26:                                        ; preds = %if.else
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !231
  br label %if.end28, !dbg !235

if.end28:                                         ; preds = %if.then26, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end24
  ret i32 0, !dbg !236
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @print_banner() #0 !dbg !237 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata !4, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i32, i32* @quiet, align 4, !dbg !244
  %tobool = icmp ne i32 %0, 0, !dbg !244
  br i1 %tobool, label %if.end, label %if.then, !dbg !247

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0)), !dbg !248
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0)), !dbg !252
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @print_usage() #0 !dbg !256 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !257, metadata !DIExpression()), !dbg !258
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([294 x i8], [294 x i8]* @.str.16, i32 0, i32 0)), !dbg !259
  ret void, !dbg !263
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @flex_download_program(i8* %device, i8* %rbf_file) #0 !dbg !264 {
entry:
  call void @llvm.dbg.value(metadata i8* %device, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8* %rbf_file, metadata !270, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata !4, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata !4, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata !4, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata !4, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata !4, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load i32, i32* @debug, align 4, !dbg !281
  %tobool = icmp ne i32 %0, 0, !dbg !281
  br i1 %tobool, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %rbf_file), !dbg !285
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, i32, ...) @open(i8* %rbf_file, i32 0), !dbg !290
  call void @llvm.dbg.value(metadata i32 %call1, metadata !293, metadata !DIExpression()), !dbg !269
  %cmp = icmp slt i32 %call1, 0, !dbg !294
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !296

if.then2:                                         ; preds = %if.end
  %1 = load i32, i32* @quiet, align 4, !dbg !297
  %tobool3 = icmp ne i32 %1, 0, !dbg !297
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !300

if.then4:                                         ; preds = %if.then2
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)), !dbg !301
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !305
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* %rbf_file), !dbg !307
  br label %if.end6, !dbg !308

if.end6:                                          ; preds = %if.then4, %if.then2
  br label %return, !dbg !309

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @open_byteblaster(i8* %device), !dbg !310
  call void @llvm.dbg.value(metadata i32 %call8, metadata !313, metadata !DIExpression()), !dbg !269
  %cmp9 = icmp slt i32 %call8, 0, !dbg !314
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !316

if.then10:                                        ; preds = %if.end7
  br label %return, !dbg !317

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @flex_config(i32 %call8), !dbg !319
  call void @llvm.dbg.value(metadata i32 %call12, metadata !322, metadata !DIExpression()), !dbg !269
  %cmp13 = icmp slt i32 %call12, 0, !dbg !323
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !325

if.then14:                                        ; preds = %if.end11
  %3 = load i32, i32* @quiet, align 4, !dbg !326
  %tobool15 = icmp ne i32 %3, 0, !dbg !326
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !329

if.then16:                                        ; preds = %if.then14
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !330
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)), !dbg !334
  br label %if.end18, !dbg !335

if.end18:                                         ; preds = %if.then16, %if.then14
  br label %return, !dbg !336

if.end19:                                         ; preds = %if.end11
  %call20 = call i32 @flex_download(i32 %call8, i32 %call1), !dbg !337
  call void @llvm.dbg.value(metadata i32 %call20, metadata !340, metadata !DIExpression()), !dbg !269
  %cmp21 = icmp slt i32 %call20, 0, !dbg !341
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !343

if.then22:                                        ; preds = %if.end19
  %5 = load i32, i32* @quiet, align 4, !dbg !344
  %tobool23 = icmp ne i32 %5, 0, !dbg !344
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !347

if.then24:                                        ; preds = %if.then22
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)), !dbg !352
  br label %if.end26, !dbg !353

if.end26:                                         ; preds = %if.then24, %if.then22
  br label %return, !dbg !354

if.end27:                                         ; preds = %if.end19
  call void @flex_init(i32 %call8), !dbg !355
  call void @close_byteblaster(i32 %call8), !dbg !358
  %call28 = call i32 @close(i32 %call1), !dbg !360
  br label %return, !dbg !362

return:                                           ; preds = %if.end27, %if.end26, %if.end18, %if.then10, %if.end6
  %retval.0 = phi i32 [ -1, %if.end6 ], [ -1, %if.then10 ], [ -1, %if.end18 ], [ -1, %if.end26 ], [ 0, %if.end27 ], !dbg !363
  ret i32 %retval.0, !dbg !364
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_nSTATUS(i32 %device) #0 !dbg !365 {
entry:
  %status = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %device, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata i8* %status, metadata !370, metadata !DIExpression()), !dbg !371
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 2147577985, i8* %status) #5, !dbg !372
  %0 = load i8, i8* %status, align 1, !dbg !376
  %conv = zext i8 %0 to i32, !dbg !377
  %and = and i32 %conv, 16, !dbg !378
  %cmp = icmp eq i32 %and, 16, !dbg !379
  %conv1 = zext i1 %cmp to i32, !dbg !379
  ret i32 %conv1, !dbg !380
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_CONF_DONE(i32 %device) #0 !dbg !381 {
entry:
  %status = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %device, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i8* %status, metadata !384, metadata !DIExpression()), !dbg !385
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 2147577985, i8* %status) #5, !dbg !386
  %0 = load i8, i8* %status, align 1, !dbg !390
  %conv = zext i8 %0 to i32, !dbg !391
  %and = and i32 %conv, 128, !dbg !392
  %cmp = icmp ne i32 %and, 128, !dbg !393
  %conv1 = zext i1 %cmp to i32, !dbg !393
  ret i32 %conv1, !dbg !394
}

; Function Attrs: noinline nounwind ssp uwtable
define void @set_DCLK(i32 %device, i32 %value) #0 !dbg !395 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 %value, metadata !400, metadata !DIExpression()), !dbg !399
  %cmp = icmp ne i32 %value, 0, !dbg !401
  br i1 %cmp, label %if.then, label %if.else, !dbg !404

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !405, metadata !DIExpression()), !dbg !399
  br label %if.end, !dbg !406

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !405, metadata !DIExpression()), !dbg !399
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ], !dbg !408
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !405, metadata !DIExpression()), !dbg !399
  %conv = trunc i32 %tmp.0 to i8, !dbg !409
  call void @out_data(i32 %device, i8 zeroext 1, i8 zeroext %conv), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @out_data(i32 %device, i8 zeroext %mask, i8 zeroext %val) #0 !dbg !414 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8 %mask, metadata !419, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8 %val, metadata !420, metadata !DIExpression()), !dbg !418
  %0 = load i8, i8* @data, align 1, !dbg !421
  %conv = zext i8 %0 to i32, !dbg !424
  %conv1 = zext i8 %mask to i32, !dbg !425
  %neg = xor i32 %conv1, -1, !dbg !426
  %and = and i32 %conv, %neg, !dbg !427
  %conv2 = zext i8 %val to i32, !dbg !428
  %or = or i32 %and, %conv2, !dbg !429
  %conv3 = trunc i32 %or to i8, !dbg !430
  store i8 %conv3, i8* @data, align 1, !dbg !431
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 1073836166, i8* @data) #5, !dbg !432
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind ssp uwtable
define void @set_nCONFIG(i32 %device, i32 %value) #0 !dbg !435 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %value, metadata !438, metadata !DIExpression()), !dbg !437
  %cmp = icmp ne i32 %value, 0, !dbg !439
  br i1 %cmp, label %if.then, label %if.else, !dbg !442

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !443, metadata !DIExpression()), !dbg !437
  br label %if.end, !dbg !444

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !437
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ 2, %if.then ], [ 0, %if.else ], !dbg !446
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !443, metadata !DIExpression()), !dbg !437
  %conv = trunc i32 %tmp.0 to i8, !dbg !447
  call void @out_data(i32 %device, i8 zeroext 2, i8 zeroext %conv), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind ssp uwtable
define void @set_DATA0(i32 %device, i32 %value) #0 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %value, metadata !455, metadata !DIExpression()), !dbg !454
  %cmp = icmp ne i32 %value, 0, !dbg !456
  br i1 %cmp, label %if.then, label %if.else, !dbg !459

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 64, metadata !460, metadata !DIExpression()), !dbg !454
  br label %if.end, !dbg !461

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !460, metadata !DIExpression()), !dbg !454
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ 64, %if.then ], [ 0, %if.else ], !dbg !463
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !460, metadata !DIExpression()), !dbg !454
  %conv = trunc i32 %tmp.0 to i8, !dbg !464
  call void @out_data(i32 %device, i8 zeroext 64, i8 zeroext %conv), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @open_byteblaster(i8* %devicename) #0 !dbg !469 {
entry:
  call void @llvm.dbg.value(metadata i8* %devicename, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata !4, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata !4, metadata !476, metadata !DIExpression()), !dbg !477
  %call = call i32 @open_parport(i8* %devicename), !dbg !478
  call void @llvm.dbg.value(metadata i32 %call, metadata !482, metadata !DIExpression()), !dbg !473
  %cmp = icmp slt i32 %call, 0, !dbg !483
  br i1 %cmp, label %if.then, label %if.end3, !dbg !485

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @quiet, align 4, !dbg !486
  %tobool = icmp ne i32 %0, 0, !dbg !486
  br i1 %tobool, label %if.end, label %if.then1, !dbg !489

if.then1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !490
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* %devicename), !dbg !494
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then1, %if.then
  br label %return, !dbg !496

if.end3:                                          ; preds = %entry
  %call4 = call i32 @detect_byteblaster(i32 %call), !dbg !497
  call void @llvm.dbg.value(metadata i32 %call4, metadata !500, metadata !DIExpression()), !dbg !473
  %cmp5 = icmp slt i32 %call4, 0, !dbg !501
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !503

if.then6:                                         ; preds = %if.end3
  %2 = load i32, i32* @quiet, align 4, !dbg !504
  %tobool7 = icmp ne i32 %2, 0, !dbg !504
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !507

if.then8:                                         ; preds = %if.then6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !508
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %devicename), !dbg !512
  br label %if.end10, !dbg !513

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @close_byteblaster(i32 %call), !dbg !514
  br label %return, !dbg !517

if.end11:                                         ; preds = %if.end3
  br label %return, !dbg !518

return:                                           ; preds = %if.end11, %if.end10, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ -1, %if.end10 ], [ %call, %if.end11 ], !dbg !519
  ret i32 %retval.0, !dbg !520
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @open_parport(i8* %device_name) #0 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata i8* %device_name, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata !4, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata !4, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata !4, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata !4, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load i32, i32* @debug, align 4, !dbg !532
  %tobool = icmp ne i32 %0, 0, !dbg !532
  br i1 %tobool, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %device_name), !dbg !536
  br label %if.end, !dbg !540

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, i32, ...) @open(i8* %device_name, i32 2), !dbg !541
  call void @llvm.dbg.value(metadata i32 %call1, metadata !544, metadata !DIExpression()), !dbg !523
  %cmp = icmp slt i32 %call1, 0, !dbg !545
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !547

if.then2:                                         ; preds = %if.end
  %1 = load i32, i32* @quiet, align 4, !dbg !548
  %tobool3 = icmp ne i32 %1, 0, !dbg !548
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !551

if.then4:                                         ; preds = %if.then2
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)), !dbg !552
  br label %if.end5, !dbg !556

if.end5:                                          ; preds = %if.then4, %if.then2
  br label %return, !dbg !557

if.end6:                                          ; preds = %if.end
  %call7 = call i32 (i32, i64, ...) @ioctl(i32 %call1, i64 28811) #5, !dbg !558
  call void @llvm.dbg.value(metadata i32 %call7, metadata !561, metadata !DIExpression()), !dbg !523
  %cmp8 = icmp slt i32 %call7, 0, !dbg !562
  br i1 %cmp8, label %if.then9, label %if.end14, !dbg !564

if.then9:                                         ; preds = %if.end6
  %2 = load i32, i32* @quiet, align 4, !dbg !565
  %tobool10 = icmp ne i32 %2, 0, !dbg !565
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !568

if.then11:                                        ; preds = %if.then9
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)), !dbg !569
  br label %if.end12, !dbg !573

if.end12:                                         ; preds = %if.then11, %if.then9
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)), !dbg !574
  %call13 = call i32 @close(i32 %call1), !dbg !577
  br label %return, !dbg !579

if.end14:                                         ; preds = %if.end6
  br label %return, !dbg !580

return:                                           ; preds = %if.end14, %if.end12, %if.end5
  %retval.0 = phi i32 [ -1, %if.end5 ], [ -1, %if.end12 ], [ %call1, %if.end14 ], !dbg !581
  ret i32 %retval.0, !dbg !582
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @detect_byteblaster(i32 %device) #0 !dbg !583 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata !4, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata !4, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata !4, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata !4, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata !4, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata !4, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata !4, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i32, i32* @debug, align 4, !dbg !600
  %tobool = icmp ne i32 %0, 0, !dbg !600
  br i1 %tobool, label %if.then, label %if.end, !dbg !603

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)), !dbg !604
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @debug, align 4, !dbg !609
  %tobool1 = icmp ne i32 %1, 0, !dbg !609
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !611

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !612
  br label %if.end4, !dbg !616

if.end4:                                          ; preds = %if.then2, %if.end
  call void @set_D5(i32 %device, i32 0), !dbg !617
  %call5 = call i32 @usleep(i32 10000), !dbg !620
  %call6 = call i32 @get_ACK(i32 %device), !dbg !622
  call void @llvm.dbg.value(metadata i32 %call6, metadata !624, metadata !DIExpression()), !dbg !585
  %cmp = icmp eq i32 %call6, 1, !dbg !625
  br i1 %cmp, label %if.then7, label %if.end12, !dbg !627

if.then7:                                         ; preds = %if.end4
  %2 = load i32, i32* @debug, align 4, !dbg !628
  %tobool8 = icmp ne i32 %2, 0, !dbg !628
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !631

if.then9:                                         ; preds = %if.then7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !632
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)), !dbg !636
  br label %if.end11, !dbg !637

if.end11:                                         ; preds = %if.then9, %if.then7
  br label %return, !dbg !638

if.end12:                                         ; preds = %if.end4
  %4 = load i32, i32* @debug, align 4, !dbg !639
  %tobool13 = icmp ne i32 %4, 0, !dbg !639
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !641

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)), !dbg !642
  br label %if.end16, !dbg !646

if.end16:                                         ; preds = %if.then14, %if.end12
  call void @set_D5(i32 %device, i32 1), !dbg !647
  %call17 = call i32 @usleep(i32 10000), !dbg !650
  %call18 = call i32 @get_ACK(i32 %device), !dbg !652
  call void @llvm.dbg.value(metadata i32 %call18, metadata !654, metadata !DIExpression()), !dbg !585
  %cmp19 = icmp eq i32 %call18, 0, !dbg !655
  br i1 %cmp19, label %if.then20, label %if.end25, !dbg !657

if.then20:                                        ; preds = %if.end16
  %5 = load i32, i32* @debug, align 4, !dbg !658
  %tobool21 = icmp ne i32 %5, 0, !dbg !658
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !661

if.then22:                                        ; preds = %if.then20
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !662
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)), !dbg !666
  br label %if.end24, !dbg !667

if.end24:                                         ; preds = %if.then22, %if.then20
  br label %return, !dbg !668

if.end25:                                         ; preds = %if.end16
  %7 = load i32, i32* @debug, align 4, !dbg !669
  %tobool26 = icmp ne i32 %7, 0, !dbg !669
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !671

if.then27:                                        ; preds = %if.end25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !672
  br label %if.end29, !dbg !676

if.end29:                                         ; preds = %if.then27, %if.end25
  call void @set_D5(i32 %device, i32 0), !dbg !677
  %call30 = call i32 @usleep(i32 10000), !dbg !680
  %call31 = call i32 @get_ACK(i32 %device), !dbg !682
  call void @llvm.dbg.value(metadata i32 %call31, metadata !684, metadata !DIExpression()), !dbg !585
  %cmp32 = icmp eq i32 %call31, 1, !dbg !685
  br i1 %cmp32, label %if.then33, label %if.end38, !dbg !687

if.then33:                                        ; preds = %if.end29
  %8 = load i32, i32* @debug, align 4, !dbg !688
  %tobool34 = icmp ne i32 %8, 0, !dbg !688
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !691

if.then35:                                        ; preds = %if.then33
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !692
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)), !dbg !696
  br label %if.end37, !dbg !697

if.end37:                                         ; preds = %if.then35, %if.then33
  br label %return, !dbg !698

if.end38:                                         ; preds = %if.end29
  br label %return, !dbg !699

return:                                           ; preds = %if.end38, %if.end37, %if.end24, %if.end11
  %retval.0 = phi i32 [ -1, %if.end11 ], [ -1, %if.end24 ], [ -1, %if.end37 ], [ 0, %if.end38 ], !dbg !700
  ret i32 %retval.0, !dbg !701
}

; Function Attrs: noinline nounwind ssp uwtable
define void @close_byteblaster(i32 %device) #0 !dbg !702 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !705, metadata !DIExpression()), !dbg !706
  call void @enable_byteblaster(i32 %device, i32 0), !dbg !707
  call void @close_parport(i32 %device), !dbg !711
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind ssp uwtable
define void @enable_byteblaster(i32 %device, i32 %value) #0 !dbg !714 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i32 %value, metadata !717, metadata !DIExpression()), !dbg !716
  call void @set_AUTOFEED(i32 %device, i32 %value), !dbg !718
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @close_parport(i32 %device) #0 !dbg !723 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !724, metadata !DIExpression()), !dbg !725
  %tobool = icmp ne i32 %device, 0, !dbg !726
  br i1 %tobool, label %if.then, label %if.end, !dbg !729

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 28812) #5, !dbg !730
  %call1 = call i32 @close(i32 %device), !dbg !734
  br label %if.end, !dbg !736

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @set_AUTOFEED(i32 %device, i32 %value) #0 !dbg !738 {
entry:
  %control = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %device, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %value, metadata !741, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata i8* %control, metadata !742, metadata !DIExpression()), !dbg !743
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 2147577987, i8* %control) #5, !dbg !744
  %0 = load i8, i8* %control, align 1, !dbg !748
  %conv = zext i8 %0 to i32, !dbg !749
  %and = and i32 %conv, -3, !dbg !750
  %conv1 = trunc i32 %and to i8, !dbg !751
  store i8 %conv1, i8* %control, align 1, !dbg !752
  %cmp = icmp ne i32 %value, 0, !dbg !753
  br i1 %cmp, label %if.then, label %if.end, !dbg !755

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %control, align 1, !dbg !756
  %conv3 = zext i8 %1 to i32, !dbg !758
  %or = or i32 %conv3, 2, !dbg !759
  %conv4 = trunc i32 %or to i8, !dbg !760
  store i8 %conv4, i8* %control, align 1, !dbg !761
  br label %if.end, !dbg !762

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 1073836164, i8* %control) #5, !dbg !763
  %call6 = call i32 @usleep(i32 100000), !dbg !766
  ret void, !dbg !768
}

declare i32 @open(i8*, i32, ...) #3

declare void @perror(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @flex_config(i32 %device) #0 !dbg !769 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata !4, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.declare(metadata !4, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata !4, metadata !776, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.declare(metadata !4, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.declare(metadata !4, metadata !780, metadata !DIExpression()), !dbg !781
  call void @set_DCLK(i32 %device, i32 0), !dbg !782
  call void @set_DATA0(i32 %device, i32 1), !dbg !786
  call void @set_nCONFIG(i32 %device, i32 1), !dbg !788
  call void @enable_byteblaster(i32 %device, i32 1), !dbg !790
  %call = call i32 @usleep(i32 100000), !dbg !792
  %0 = load i32, i32* @debug, align 4, !dbg !794
  %tobool = icmp ne i32 %0, 0, !dbg !794
  br i1 %tobool, label %if.then, label %if.end, !dbg !796

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)), !dbg !797
  br label %if.end, !dbg !801

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 50, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body, !dbg !803

while.body:                                       ; preds = %if.end7, %if.end
  %t.0 = phi i32 [ 50, %if.end ], [ %dec, %if.end7 ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while_continue___3, !dbg !807

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !807

while_continue:                                   ; preds = %while_continue___3
  %cmp = icmp sgt i32 %t.0, 0, !dbg !808
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !811

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !812

if.end3:                                          ; preds = %while_continue
  %call4 = call i32 @get_nSTATUS(i32 %device), !dbg !814
  call void @llvm.dbg.value(metadata i32 %call4, metadata !817, metadata !DIExpression()), !dbg !771
  %cmp5 = icmp eq i32 %call4, 1, !dbg !818
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !820

if.then6:                                         ; preds = %if.end3
  br label %while_break, !dbg !821

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @usleep(i32 10000), !dbg !823
  %dec = add nsw i32 %t.0, -1, !dbg !826
  call void @llvm.dbg.value(metadata i32 %dec, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body, !dbg !803, !llvm.loop !827

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !829

while_break:                                      ; preds = %while_break___3, %if.then6, %if.then2
  %cmp9 = icmp eq i32 %t.0, 0, !dbg !830
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !832

if.then10:                                        ; preds = %while_break
  %1 = load i32, i32* @quiet, align 4, !dbg !833
  %tobool11 = icmp ne i32 %1, 0, !dbg !833
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !836

if.then12:                                        ; preds = %if.then10
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !837
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)), !dbg !841
  br label %if.end14, !dbg !842

if.end14:                                         ; preds = %if.then12, %if.then10
  br label %return, !dbg !843

if.end15:                                         ; preds = %while_break
  call void @set_nCONFIG(i32 %device, i32 0), !dbg !844
  call void @llvm.dbg.value(metadata i32 50, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body16, !dbg !847

while.body16:                                     ; preds = %if.end23, %if.end15
  %t.1 = phi i32 [ 50, %if.end15 ], [ %dec25, %if.end23 ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while_continue___4, !dbg !850

while_continue___4:                               ; preds = %while.body16
  br label %while_continue___0, !dbg !850

while_continue___0:                               ; preds = %while_continue___4
  %cmp17 = icmp sgt i32 %t.1, 0, !dbg !851
  br i1 %cmp17, label %if.end19, label %if.then18, !dbg !854

if.then18:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !855

if.end19:                                         ; preds = %while_continue___0
  %call20 = call i32 @get_nSTATUS(i32 %device), !dbg !857
  call void @llvm.dbg.value(metadata i32 %call20, metadata !860, metadata !DIExpression()), !dbg !771
  %cmp21 = icmp eq i32 %call20, 0, !dbg !861
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !863

if.then22:                                        ; preds = %if.end19
  br label %while_break___0, !dbg !864

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @usleep(i32 10000), !dbg !866
  %dec25 = add nsw i32 %t.1, -1, !dbg !869
  call void @llvm.dbg.value(metadata i32 %dec25, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body16, !dbg !847, !llvm.loop !870

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !872

while_break___0:                                  ; preds = %while_break___4, %if.then22, %if.then18
  %cmp26 = icmp eq i32 %t.1, 0, !dbg !873
  br i1 %cmp26, label %if.then27, label %if.end32, !dbg !875

if.then27:                                        ; preds = %while_break___0
  %3 = load i32, i32* @quiet, align 4, !dbg !876
  %tobool28 = icmp ne i32 %3, 0, !dbg !876
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !879

if.then29:                                        ; preds = %if.then27
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !880
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0)), !dbg !884
  br label %if.end31, !dbg !885

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %return, !dbg !886

if.end32:                                         ; preds = %while_break___0
  call void @llvm.dbg.value(metadata i32 50, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body33, !dbg !887

while.body33:                                     ; preds = %if.end40, %if.end32
  %t.2 = phi i32 [ 50, %if.end32 ], [ %dec42, %if.end40 ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %t.2, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while_continue___5, !dbg !890

while_continue___5:                               ; preds = %while.body33
  br label %while_continue___1, !dbg !890

while_continue___1:                               ; preds = %while_continue___5
  %cmp34 = icmp sgt i32 %t.2, 0, !dbg !891
  br i1 %cmp34, label %if.end36, label %if.then35, !dbg !894

if.then35:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !895

if.end36:                                         ; preds = %while_continue___1
  %call37 = call i32 @get_CONF_DONE(i32 %device), !dbg !897
  call void @llvm.dbg.value(metadata i32 %call37, metadata !900, metadata !DIExpression()), !dbg !771
  %cmp38 = icmp eq i32 %call37, 0, !dbg !901
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !903

if.then39:                                        ; preds = %if.end36
  br label %while_break___1, !dbg !904

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @usleep(i32 10000), !dbg !906
  %dec42 = add nsw i32 %t.2, -1, !dbg !909
  call void @llvm.dbg.value(metadata i32 %dec42, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body33, !dbg !887, !llvm.loop !910

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !912

while_break___1:                                  ; preds = %while_break___5, %if.then39, %if.then35
  %cmp43 = icmp eq i32 %t.2, 0, !dbg !913
  br i1 %cmp43, label %if.then44, label %if.end49, !dbg !915

if.then44:                                        ; preds = %while_break___1
  %5 = load i32, i32* @quiet, align 4, !dbg !916
  %tobool45 = icmp ne i32 %5, 0, !dbg !916
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !919

if.then46:                                        ; preds = %if.then44
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !920
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)), !dbg !924
  br label %if.end48, !dbg !925

if.end48:                                         ; preds = %if.then46, %if.then44
  br label %return, !dbg !926

if.end49:                                         ; preds = %while_break___1
  call void @set_nCONFIG(i32 %device, i32 1), !dbg !927
  call void @llvm.dbg.value(metadata i32 50, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body50, !dbg !930

while.body50:                                     ; preds = %if.end57, %if.end49
  %t.3 = phi i32 [ 50, %if.end49 ], [ %dec59, %if.end57 ], !dbg !806
  call void @llvm.dbg.value(metadata i32 %t.3, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while_continue___6, !dbg !933

while_continue___6:                               ; preds = %while.body50
  br label %while_continue___2, !dbg !933

while_continue___2:                               ; preds = %while_continue___6
  %cmp51 = icmp sgt i32 %t.3, 0, !dbg !934
  br i1 %cmp51, label %if.end53, label %if.then52, !dbg !937

if.then52:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !938

if.end53:                                         ; preds = %while_continue___2
  %call54 = call i32 @get_nSTATUS(i32 %device), !dbg !940
  call void @llvm.dbg.value(metadata i32 %call54, metadata !943, metadata !DIExpression()), !dbg !771
  %cmp55 = icmp eq i32 %call54, 1, !dbg !944
  br i1 %cmp55, label %if.then56, label %if.end57, !dbg !946

if.then56:                                        ; preds = %if.end53
  br label %while_break___2, !dbg !947

if.end57:                                         ; preds = %if.end53
  %call58 = call i32 @usleep(i32 10000), !dbg !949
  %dec59 = add nsw i32 %t.3, -1, !dbg !952
  call void @llvm.dbg.value(metadata i32 %dec59, metadata !802, metadata !DIExpression()), !dbg !771
  br label %while.body50, !dbg !930, !llvm.loop !953

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !955

while_break___2:                                  ; preds = %while_break___6, %if.then56, %if.then52
  %cmp60 = icmp eq i32 %t.3, 0, !dbg !956
  br i1 %cmp60, label %if.then61, label %if.end66, !dbg !958

if.then61:                                        ; preds = %while_break___2
  %7 = load i32, i32* @quiet, align 4, !dbg !959
  %tobool62 = icmp ne i32 %7, 0, !dbg !959
  br i1 %tobool62, label %if.end65, label %if.then63, !dbg !962

if.then63:                                        ; preds = %if.then61
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !963
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)), !dbg !967
  br label %if.end65, !dbg !968

if.end65:                                         ; preds = %if.then63, %if.then61
  br label %return, !dbg !969

if.end66:                                         ; preds = %while_break___2
  %call67 = call i32 @usleep(i32 40000), !dbg !970
  br label %return, !dbg !973

return:                                           ; preds = %if.end66, %if.end65, %if.end48, %if.end31, %if.end14
  %retval.0 = phi i32 [ -1, %if.end14 ], [ -1, %if.end31 ], [ -1, %if.end48 ], [ -1, %if.end65 ], [ 0, %if.end66 ], !dbg !806
  ret i32 %retval.0, !dbg !974
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @flex_download(i32 %device, i32 %file) #0 !dbg !975 {
entry:
  %data___1 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %device, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32 %file, metadata !980, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i8* %data___1, metadata !981, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.declare(metadata !4, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.declare(metadata !4, metadata !985, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.declare(metadata !4, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.declare(metadata !4, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata !4, metadata !991, metadata !DIExpression()), !dbg !992
  %0 = load i32, i32* @debug, align 4, !dbg !993
  %tobool = icmp ne i32 %0, 0, !dbg !993
  br i1 %tobool, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)), !dbg !997
  br label %if.end, !dbg !1001

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !979
  br label %while.body, !dbg !1003

while.body:                                       ; preds = %while_break___0, %if.end
  %byte.0 = phi i32 [ 0, %if.end ], [ %inc37, %while_break___0 ], !dbg !1006
  call void @llvm.dbg.value(metadata i32 %byte.0, metadata !1002, metadata !DIExpression()), !dbg !979
  br label %while_continue___1, !dbg !1007

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1007

while_continue:                                   ; preds = %while_continue___1
  %1 = load i32, i32* @debug, align 4, !dbg !1008
  %tobool1 = icmp ne i32 %1, 0, !dbg !1008
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !1011

if.then2:                                         ; preds = %while_continue
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i32 %byte.0), !dbg !1012
  br label %if.end4, !dbg !1016

if.end4:                                          ; preds = %if.then2, %while_continue
  %call5 = call i32 @read(i32 %file, i8* %data___1, i32 1), !dbg !1017
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1020, metadata !DIExpression()), !dbg !979
  %cmp = icmp ne i32 %call5, 1, !dbg !1024
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !1026

if.then6:                                         ; preds = %if.end4
  %2 = load i32, i32* @quiet, align 4, !dbg !1027
  %tobool7 = icmp ne i32 %2, 0, !dbg !1027
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1030

if.then8:                                         ; preds = %if.then6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1031
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0)), !dbg !1035
  br label %if.end10, !dbg !1036

if.end10:                                         ; preds = %if.then8, %if.then6
  br label %while_break, !dbg !1037

if.end11:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 0, metadata !1038, metadata !DIExpression()), !dbg !979
  br label %while.body13, !dbg !1039

while.body13:                                     ; preds = %if.end36, %if.end11
  %bit.0 = phi i32 [ 0, %if.end11 ], [ %inc, %if.end36 ], !dbg !1042
  call void @llvm.dbg.value(metadata i32 %bit.0, metadata !1038, metadata !DIExpression()), !dbg !979
  br label %while_continue___2, !dbg !1043

while_continue___2:                               ; preds = %while.body13
  br label %while_continue___0, !dbg !1043

while_continue___0:                               ; preds = %while_continue___2
  %cmp14 = icmp slt i32 %bit.0, 8, !dbg !1044
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !1047

if.then15:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1048

if.end16:                                         ; preds = %while_continue___0
  %4 = load i8, i8* %data___1, align 1, !dbg !1050
  %conv = zext i8 %4 to i32, !dbg !1053
  %and = and i32 %conv, 1, !dbg !1054
  call void @set_DATA0(i32 %device, i32 %and), !dbg !1055
  call void @set_DCLK(i32 %device, i32 1), !dbg !1056
  call void @set_DCLK(i32 %device, i32 0), !dbg !1058
  %5 = load i8, i8* %data___1, align 1, !dbg !1060
  %conv17 = zext i8 %5 to i32, !dbg !1061
  %shr = ashr i32 %conv17, 1, !dbg !1062
  %conv18 = trunc i32 %shr to i8, !dbg !1063
  store i8 %conv18, i8* %data___1, align 1, !dbg !1064
  %call19 = call i32 @get_nSTATUS(i32 %device), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %call19, metadata !1067, metadata !DIExpression()), !dbg !979
  %cmp20 = icmp eq i32 %call19, 0, !dbg !1068
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !1070

if.then22:                                        ; preds = %if.end16
  %6 = load i32, i32* @quiet, align 4, !dbg !1071
  %tobool23 = icmp ne i32 %6, 0, !dbg !1071
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !1074

if.then24:                                        ; preds = %if.then22
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1075
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)), !dbg !1079
  br label %if.end26, !dbg !1080

if.end26:                                         ; preds = %if.then24, %if.then22
  br label %while_break, !dbg !1081

if.end27:                                         ; preds = %if.end16
  %call28 = call i32 @get_CONF_DONE(i32 %device), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %call28, metadata !1085, metadata !DIExpression()), !dbg !979
  %cmp29 = icmp eq i32 %call28, 1, !dbg !1086
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !1088

if.then31:                                        ; preds = %if.end27
  %8 = load i32, i32* @quiet, align 4, !dbg !1089
  %tobool32 = icmp ne i32 %8, 0, !dbg !1089
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !1092

if.then33:                                        ; preds = %if.then31
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i32 %byte.0), !dbg !1093
  br label %if.end35, !dbg !1097

if.end35:                                         ; preds = %if.then33, %if.then31
  br label %while_break, !dbg !1098

if.end36:                                         ; preds = %if.end27
  %inc = add nsw i32 %bit.0, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1038, metadata !DIExpression()), !dbg !979
  br label %while.body13, !dbg !1039, !llvm.loop !1099

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1101

while_break___0:                                  ; preds = %while_break___2, %if.then15
  %inc37 = add nsw i32 %byte.0, 1, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %inc37, metadata !1002, metadata !DIExpression()), !dbg !979
  br label %while.body, !dbg !1003, !llvm.loop !1103

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1105

while_break:                                      ; preds = %while_break___1, %if.end35, %if.end26, %if.end10
  %retval.0 = phi i32 [ -1, %if.end10 ], [ -1, %if.end26 ], [ 0, %if.end35 ], [ undef, %while_break___1 ], !dbg !1042
  ret i32 %retval.0, !dbg !1106
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @flex_init(i32 %device) #0 !dbg !1107 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata !4, metadata !1110, metadata !DIExpression()), !dbg !1111
  %0 = load i32, i32* @debug, align 4, !dbg !1112
  %tobool = icmp ne i32 %0, 0, !dbg !1112
  br i1 %tobool, label %if.then, label %if.end, !dbg !1115

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)), !dbg !1116
  br label %if.end, !dbg !1120

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1121, metadata !DIExpression()), !dbg !1109
  br label %while.body, !dbg !1122

while.body:                                       ; preds = %if.end2, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end2 ], !dbg !1125
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1121, metadata !DIExpression()), !dbg !1109
  br label %while_continue___0, !dbg !1126

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1126

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 10, !dbg !1127
  br i1 %cmp, label %if.end2, label %if.then1, !dbg !1130

if.then1:                                         ; preds = %while_continue
  br label %while_break, !dbg !1131

if.end2:                                          ; preds = %while_continue
  call void @set_DCLK(i32 %device, i32 1), !dbg !1133
  call void @set_DCLK(i32 %device, i32 0), !dbg !1136
  %inc = add nsw i32 %i.0, 1, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1121, metadata !DIExpression()), !dbg !1109
  br label %while.body, !dbg !1122, !llvm.loop !1139

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1141

while_break:                                      ; preds = %while_break___0, %if.then1
  ret void, !dbg !1142
}

declare i32 @close(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @set_D5(i32 %device, i32 %value) #0 !dbg !1143 {
entry:
  call void @llvm.dbg.value(metadata i32 %device, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 %value, metadata !1146, metadata !DIExpression()), !dbg !1145
  %cmp = icmp ne i32 %value, 0, !dbg !1147
  br i1 %cmp, label %if.then, label %if.else, !dbg !1150

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 32, metadata !1151, metadata !DIExpression()), !dbg !1145
  br label %if.end, !dbg !1152

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1151, metadata !DIExpression()), !dbg !1145
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ 32, %if.then ], [ 0, %if.else ], !dbg !1154
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !1151, metadata !DIExpression()), !dbg !1145
  %conv = trunc i32 %tmp.0 to i8, !dbg !1155
  call void @out_data(i32 %device, i8 zeroext 32, i8 zeroext %conv), !dbg !1158
  ret void, !dbg !1159
}

declare i32 @usleep(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @get_ACK(i32 %device) #0 !dbg !1160 {
entry:
  %status = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %device, metadata !1161, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.declare(metadata i8* %status, metadata !1163, metadata !DIExpression()), !dbg !1164
  %call = call i32 (i32, i64, ...) @ioctl(i32 %device, i64 2147577985, i8* %status) #5, !dbg !1165
  %0 = load i8, i8* %status, align 1, !dbg !1169
  %conv = zext i8 %0 to i32, !dbg !1170
  %and = and i32 %conv, 64, !dbg !1171
  %cmp = icmp eq i32 %and, 64, !dbg !1172
  %conv1 = zext i1 %cmp to i32, !dbg !1172
  ret i32 %conv1, !dbg !1173
}

declare i32 @read(i32, i8*, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!100, !101, !102, !103, !104}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !91, line: 41, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !88, nameTableKind: GNU)
!3 = !DIFile(filename: "c/flexloader-0.03.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !10, !16, !23, !24, !19, !25, !26, !87, !75, !80}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !13, line: 106, size: 256, elements: !14)
!13 = !DIFile(filename: "/usr/include/getopt.h", directory: "")
!14 = !{!15, !18, !20, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 107, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !12, file: !13, line: 108, baseType: !19, size: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !12, file: !13, line: 109, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !12, file: !13, line: 110, baseType: !19, size: 32, offset: 192)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 49, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 271, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !52, !53, !54, !55, !59, !61, !63, !67, !70, !74, !76, !77, !78, !79, !82, !83}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 272, baseType: !19, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 273, baseType: !8, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 274, baseType: !8, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 275, baseType: !8, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 276, baseType: !8, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 277, baseType: !8, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 278, baseType: !8, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 279, baseType: !8, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 280, baseType: !8, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 281, baseType: !8, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 282, baseType: !8, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 283, baseType: !8, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 284, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 186, size: 192, elements: !47)
!47 = !{!48, !49, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !46, file: !30, line: 187, baseType: !45, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !46, file: !30, line: 188, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !46, file: !30, line: 189, baseType: !19, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 285, baseType: !50, size: 64, offset: 832)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 286, baseType: !19, size: 32, offset: 896)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 287, baseType: !19, size: 32, offset: 928)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 288, baseType: !56, size: 64, offset: 960)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 141, baseType: !58)
!57 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 289, baseType: !60, size: 16, offset: 1024)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 290, baseType: !62, size: 8, offset: 1040)
!62 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 291, baseType: !64, size: 8, offset: 1048)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 292, baseType: !68, size: 64, offset: 1088)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 180, baseType: null)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 293, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !57, line: 142, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !57, line: 56, baseType: !73)
!73 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !29, file: !30, line: 294, baseType: !75, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !29, file: !30, line: 295, baseType: !75, size: 64, offset: 1280)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !29, file: !30, line: 296, baseType: !75, size: 64, offset: 1344)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !29, file: !30, line: 297, baseType: !75, size: 64, offset: 1408)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 298, baseType: !80, size: 32, offset: 1472)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 211, baseType: !24)
!81 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 299, baseType: !19, size: 32, offset: 1504)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 300, baseType: !84, size: 192, offset: 1536)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 24)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !57, line: 150, baseType: !24)
!88 = !{!0, !89, !92, !97}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !91, line: 42, type: !19, isLocal: false, isDefinition: true)
!91 = !DIFile(filename: "/home/wslee/benchmarks/flexloader-0.03/src/main.c", directory: "")
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !91, line: 77, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1280, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 5)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "data", scope: !2, file: !99, line: 63, type: !25, isLocal: true, isDefinition: true)
!99 = !DIFile(filename: "/home/wslee/benchmarks/flexloader-0.03/src/byteblaster.c", directory: "")
!100 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!101 = !{i32 2, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 7, !"PIC Level", i32 2}
!105 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!106 = distinct !DISubprogram(name: "main", scope: !91, file: !91, line: 72, type: !107, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DISubroutineType(types: !108)
!108 = !{!19, !19, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!110 = !DILocalVariable(name: "argc", arg: 1, scope: !106, file: !91, line: 72, type: !19)
!111 = !DILocation(line: 0, scope: !106)
!112 = !DILocalVariable(name: "argv", arg: 2, scope: !106, file: !91, line: 72, type: !109)
!113 = !DILocalVariable(name: "lindex", scope: !106, file: !91, line: 75, type: !19)
!114 = !DILocation(line: 75, column: 7, scope: !106)
!115 = !DILocalVariable(name: "__cil_tmp6", scope: !106, file: !91, line: 77, type: !8)
!116 = !DILocation(line: 77, column: 9, scope: !106)
!117 = !DILocalVariable(name: "__cil_tmp7", scope: !106, file: !91, line: 78, type: !8)
!118 = !DILocation(line: 78, column: 9, scope: !106)
!119 = !DILocalVariable(name: "__cil_tmp8", scope: !106, file: !91, line: 79, type: !8)
!120 = !DILocation(line: 79, column: 9, scope: !106)
!121 = !DILocalVariable(name: "__cil_tmp9", scope: !106, file: !91, line: 80, type: !8)
!122 = !DILocation(line: 80, column: 9, scope: !106)
!123 = !DILocation(line: 75, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !106, file: !91, line: 82, column: 3)
!125 = !DILocation(line: 86, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !91, line: 77, column: 3)
!127 = distinct !DILexicalBlock(scope: !124, file: !91, line: 76, column: 3)
!128 = !DILocation(line: 86, column: 13, scope: !126)
!129 = !DILocation(line: 86, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !91, line: 90, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !91, line: 89, column: 5)
!132 = distinct !DILexicalBlock(scope: !126, file: !91, line: 86, column: 13)
!133 = !DILocalVariable(name: "c", scope: !106, file: !91, line: 74, type: !19)
!134 = !DILocation(line: 86, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !91, line: 86, column: 9)
!136 = !DILocation(line: 86, column: 9, scope: !132)
!137 = !DILocation(line: 86, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !91, line: 86, column: 22)
!139 = !DILocation(line: 88, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !91, line: 89, column: 5)
!141 = distinct !DILexicalBlock(scope: !132, file: !91, line: 88, column: 5)
!142 = !DILocation(line: 91, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !91, line: 91, column: 9)
!144 = distinct !DILexicalBlock(scope: !132, file: !91, line: 91, column: 5)
!145 = !DILocation(line: 91, column: 9, scope: !144)
!146 = !DILocation(line: 91, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !91, line: 91, column: 19)
!148 = !DILocation(line: 95, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !91, line: 95, column: 9)
!150 = !DILocation(line: 95, column: 9, scope: !144)
!151 = !DILocation(line: 95, column: 7, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !91, line: 95, column: 19)
!153 = !DILocation(line: 101, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !144, file: !91, line: 101, column: 9)
!155 = !DILocation(line: 101, column: 9, scope: !144)
!156 = !DILocation(line: 101, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !91, line: 101, column: 19)
!158 = !DILocation(line: 105, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !144, file: !91, line: 105, column: 9)
!160 = !DILocation(line: 105, column: 9, scope: !144)
!161 = !DILocation(line: 105, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !91, line: 105, column: 19)
!163 = !DILocation(line: 110, column: 5, scope: !144)
!164 = !DILocation(line: 92, column: 11, scope: !144)
!165 = !DILocation(line: 93, column: 5, scope: !144)
!166 = !DILocation(line: 96, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !91, line: 96, column: 5)
!168 = distinct !DILexicalBlock(scope: !144, file: !91, line: 95, column: 5)
!169 = !DILocation(line: 97, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !91, line: 98, column: 5)
!171 = !DILocation(line: 98, column: 5, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !91, line: 99, column: 5)
!173 = !DILocation(line: 102, column: 11, scope: !144)
!174 = !DILocation(line: 103, column: 5, scope: !144)
!175 = !DILocation(line: 106, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !91, line: 106, column: 5)
!177 = distinct !DILexicalBlock(scope: !144, file: !91, line: 105, column: 5)
!178 = !DILocation(line: 107, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !177, file: !91, line: 108, column: 5)
!180 = !DILocation(line: 111, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !91, line: 111, column: 5)
!182 = distinct !DILexicalBlock(scope: !144, file: !91, line: 110, column: 5)
!183 = !DILocation(line: 112, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !91, line: 113, column: 5)
!185 = !DILocation(line: 113, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !91, line: 114, column: 5)
!187 = distinct !{!187, !125, !188}
!188 = !DILocation(line: 117, column: 3, scope: !126)
!189 = !DILocation(line: 119, column: 3, scope: !126)
!190 = !DILocation(line: 118, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !91, line: 123, column: 3)
!192 = distinct !DILexicalBlock(scope: !124, file: !91, line: 122, column: 3)
!193 = !DILocation(line: 119, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !124, file: !91, line: 119, column: 7)
!195 = !DILocation(line: 119, column: 12, scope: !194)
!196 = !DILocation(line: 119, column: 21, scope: !194)
!197 = !DILocation(line: 119, column: 7, scope: !124)
!198 = !DILocation(line: 121, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !91, line: 121, column: 5)
!200 = distinct !DILexicalBlock(scope: !201, file: !91, line: 120, column: 5)
!201 = distinct !DILexicalBlock(scope: !194, file: !91, line: 119, column: 27)
!202 = !DILocation(line: 122, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !91, line: 123, column: 5)
!204 = !DILocation(line: 126, column: 40, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !91, line: 127, column: 3)
!206 = distinct !DILexicalBlock(scope: !124, file: !91, line: 126, column: 3)
!207 = !DILocation(line: 126, column: 38, scope: !205)
!208 = !DILocation(line: 126, column: 31, scope: !205)
!209 = !DILocation(line: 126, column: 59, scope: !205)
!210 = !DILocation(line: 126, column: 66, scope: !205)
!211 = !DILocation(line: 126, column: 56, scope: !205)
!212 = !DILocation(line: 126, column: 49, scope: !205)
!213 = !DILocation(line: 126, column: 9, scope: !205)
!214 = !DILocalVariable(name: "tmp", scope: !106, file: !91, line: 76, type: !19)
!215 = !DILocation(line: 126, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !124, file: !91, line: 126, column: 7)
!217 = !DILocation(line: 126, column: 7, scope: !124)
!218 = !DILocation(line: 128, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !91, line: 128, column: 9)
!220 = distinct !DILexicalBlock(scope: !216, file: !91, line: 126, column: 17)
!221 = !DILocation(line: 128, column: 9, scope: !220)
!222 = !DILocation(line: 129, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !91, line: 130, column: 7)
!224 = distinct !DILexicalBlock(scope: !225, file: !91, line: 129, column: 7)
!225 = distinct !DILexicalBlock(scope: !219, file: !91, line: 128, column: 18)
!226 = !DILocation(line: 132, column: 5, scope: !225)
!227 = !DILocation(line: 133, column: 3, scope: !220)
!228 = !DILocation(line: 133, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !216, file: !91, line: 133, column: 7)
!230 = !DILocation(line: 133, column: 7, scope: !216)
!231 = !DILocation(line: 134, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !91, line: 135, column: 5)
!233 = distinct !DILexicalBlock(scope: !234, file: !91, line: 134, column: 5)
!234 = distinct !DILexicalBlock(scope: !229, file: !91, line: 133, column: 16)
!235 = !DILocation(line: 137, column: 3, scope: !234)
!236 = !DILocation(line: 137, column: 3, scope: !124)
!237 = distinct !DISubprogram(name: "print_banner", scope: !91, file: !91, line: 63, type: !238, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!238 = !DISubroutineType(types: !239)
!239 = !{null}
!240 = !DILocalVariable(name: "__cil_tmp1", scope: !237, file: !91, line: 65, type: !8)
!241 = !DILocation(line: 65, column: 9, scope: !237)
!242 = !DILocalVariable(name: "__cil_tmp2", scope: !237, file: !91, line: 66, type: !8)
!243 = !DILocation(line: 66, column: 9, scope: !237)
!244 = !DILocation(line: 65, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !91, line: 65, column: 7)
!246 = distinct !DILexicalBlock(scope: !237, file: !91, line: 68, column: 3)
!247 = !DILocation(line: 65, column: 7, scope: !246)
!248 = !DILocation(line: 67, column: 5, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !91, line: 67, column: 5)
!250 = distinct !DILexicalBlock(scope: !251, file: !91, line: 66, column: 5)
!251 = distinct !DILexicalBlock(scope: !245, file: !91, line: 65, column: 16)
!252 = !DILocation(line: 68, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !91, line: 69, column: 5)
!254 = !DILocation(line: 71, column: 3, scope: !251)
!255 = !DILocation(line: 70, column: 3, scope: !246)
!256 = distinct !DISubprogram(name: "print_usage", scope: !91, file: !91, line: 51, type: !238, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!257 = !DILocalVariable(name: "__cil_tmp1", scope: !256, file: !91, line: 53, type: !8)
!258 = !DILocation(line: 53, column: 9, scope: !256)
!259 = !DILocation(line: 53, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !91, line: 57, column: 3)
!261 = distinct !DILexicalBlock(scope: !262, file: !91, line: 56, column: 3)
!262 = distinct !DILexicalBlock(scope: !256, file: !91, line: 55, column: 3)
!263 = !DILocation(line: 61, column: 3, scope: !262)
!264 = distinct !DISubprogram(name: "flex_download_program", scope: !265, file: !265, line: 187, type: !266, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!265 = !DIFile(filename: "/home/wslee/benchmarks/flexloader-0.03/src/flexloader.c", directory: "")
!266 = !DISubroutineType(types: !267)
!267 = !{!19, !8, !8}
!268 = !DILocalVariable(name: "device", arg: 1, scope: !264, file: !265, line: 187, type: !8)
!269 = !DILocation(line: 0, scope: !264)
!270 = !DILocalVariable(name: "rbf_file", arg: 2, scope: !264, file: !265, line: 187, type: !8)
!271 = !DILocalVariable(name: "__cil_tmp7", scope: !264, file: !265, line: 193, type: !8)
!272 = !DILocation(line: 193, column: 9, scope: !264)
!273 = !DILocalVariable(name: "__cil_tmp8", scope: !264, file: !265, line: 194, type: !8)
!274 = !DILocation(line: 194, column: 9, scope: !264)
!275 = !DILocalVariable(name: "__cil_tmp9", scope: !264, file: !265, line: 195, type: !8)
!276 = !DILocation(line: 195, column: 9, scope: !264)
!277 = !DILocalVariable(name: "__cil_tmp10", scope: !264, file: !265, line: 196, type: !8)
!278 = !DILocation(line: 196, column: 9, scope: !264)
!279 = !DILocalVariable(name: "__cil_tmp11", scope: !264, file: !265, line: 197, type: !8)
!280 = !DILocation(line: 197, column: 9, scope: !264)
!281 = !DILocation(line: 192, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !265, line: 192, column: 7)
!283 = distinct !DILexicalBlock(scope: !264, file: !265, line: 199, column: 3)
!284 = !DILocation(line: 192, column: 7, scope: !283)
!285 = !DILocation(line: 193, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !265, line: 194, column: 5)
!287 = distinct !DILexicalBlock(scope: !288, file: !265, line: 193, column: 5)
!288 = distinct !DILexicalBlock(scope: !282, file: !265, line: 192, column: 14)
!289 = !DILocation(line: 196, column: 3, scope: !288)
!290 = !DILocation(line: 195, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !265, line: 198, column: 3)
!292 = distinct !DILexicalBlock(scope: !283, file: !265, line: 197, column: 3)
!293 = !DILocalVariable(name: "fd", scope: !264, file: !265, line: 189, type: !19)
!294 = !DILocation(line: 197, column: 10, scope: !295)
!295 = distinct !DILexicalBlock(scope: !283, file: !265, line: 197, column: 7)
!296 = !DILocation(line: 197, column: 7, scope: !283)
!297 = !DILocation(line: 199, column: 11, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !265, line: 199, column: 9)
!299 = distinct !DILexicalBlock(scope: !295, file: !265, line: 197, column: 15)
!300 = !DILocation(line: 199, column: 9, scope: !299)
!301 = !DILocation(line: 201, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !265, line: 201, column: 7)
!303 = distinct !DILexicalBlock(scope: !304, file: !265, line: 200, column: 7)
!304 = distinct !DILexicalBlock(scope: !298, file: !265, line: 199, column: 18)
!305 = !DILocation(line: 202, column: 40, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !265, line: 203, column: 7)
!307 = !DILocation(line: 202, column: 7, scope: !306)
!308 = !DILocation(line: 206, column: 5, scope: !304)
!309 = !DILocation(line: 204, column: 5, scope: !299)
!310 = !DILocation(line: 207, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !265, line: 207, column: 3)
!312 = distinct !DILexicalBlock(scope: !283, file: !265, line: 206, column: 3)
!313 = !DILocalVariable(name: "byteblaster", scope: !264, file: !265, line: 190, type: !19)
!314 = !DILocation(line: 209, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !283, file: !265, line: 209, column: 7)
!316 = !DILocation(line: 209, column: 7, scope: !283)
!317 = !DILocation(line: 210, column: 5, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !265, line: 209, column: 24)
!319 = !DILocation(line: 212, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !265, line: 213, column: 3)
!321 = distinct !DILexicalBlock(scope: !283, file: !265, line: 212, column: 3)
!322 = !DILocalVariable(name: "tmp", scope: !264, file: !265, line: 191, type: !19)
!323 = !DILocation(line: 212, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !283, file: !265, line: 212, column: 7)
!325 = !DILocation(line: 212, column: 7, scope: !283)
!326 = !DILocation(line: 214, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !265, line: 214, column: 9)
!328 = distinct !DILexicalBlock(scope: !324, file: !265, line: 212, column: 16)
!329 = !DILocation(line: 214, column: 9, scope: !328)
!330 = !DILocation(line: 215, column: 40, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !265, line: 216, column: 7)
!332 = distinct !DILexicalBlock(scope: !333, file: !265, line: 215, column: 7)
!333 = distinct !DILexicalBlock(scope: !327, file: !265, line: 214, column: 18)
!334 = !DILocation(line: 215, column: 7, scope: !331)
!335 = !DILocation(line: 218, column: 5, scope: !333)
!336 = !DILocation(line: 216, column: 5, scope: !328)
!337 = !DILocation(line: 219, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !265, line: 219, column: 3)
!339 = distinct !DILexicalBlock(scope: !283, file: !265, line: 218, column: 3)
!340 = !DILocalVariable(name: "tmp___0", scope: !264, file: !265, line: 192, type: !19)
!341 = !DILocation(line: 219, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !283, file: !265, line: 219, column: 7)
!343 = !DILocation(line: 219, column: 7, scope: !283)
!344 = !DILocation(line: 221, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !265, line: 221, column: 9)
!346 = distinct !DILexicalBlock(scope: !342, file: !265, line: 219, column: 20)
!347 = !DILocation(line: 221, column: 9, scope: !346)
!348 = !DILocation(line: 222, column: 40, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !265, line: 223, column: 7)
!350 = distinct !DILexicalBlock(scope: !351, file: !265, line: 222, column: 7)
!351 = distinct !DILexicalBlock(scope: !345, file: !265, line: 221, column: 18)
!352 = !DILocation(line: 222, column: 7, scope: !349)
!353 = !DILocation(line: 225, column: 5, scope: !351)
!354 = !DILocation(line: 223, column: 5, scope: !346)
!355 = !DILocation(line: 226, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !265, line: 226, column: 3)
!357 = distinct !DILexicalBlock(scope: !283, file: !265, line: 225, column: 3)
!358 = !DILocation(line: 228, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !357, file: !265, line: 228, column: 3)
!360 = !DILocation(line: 230, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !265, line: 230, column: 3)
!362 = !DILocation(line: 231, column: 3, scope: !283)
!363 = !DILocation(line: 0, scope: !283)
!364 = !DILocation(line: 233, column: 1, scope: !264)
!365 = distinct !DISubprogram(name: "get_nSTATUS", scope: !99, file: !99, line: 182, type: !366, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!366 = !DISubroutineType(types: !367)
!367 = !{!19, !19}
!368 = !DILocalVariable(name: "device", arg: 1, scope: !365, file: !99, line: 182, type: !19)
!369 = !DILocation(line: 0, scope: !365)
!370 = !DILocalVariable(name: "status", scope: !365, file: !99, line: 184, type: !25)
!371 = !DILocation(line: 184, column: 17, scope: !365)
!372 = !DILocation(line: 186, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !99, line: 188, column: 3)
!374 = distinct !DILexicalBlock(scope: !375, file: !99, line: 187, column: 3)
!375 = distinct !DILexicalBlock(scope: !365, file: !99, line: 186, column: 3)
!376 = !DILocation(line: 187, column: 18, scope: !375)
!377 = !DILocation(line: 187, column: 12, scope: !375)
!378 = !DILocation(line: 187, column: 25, scope: !375)
!379 = !DILocation(line: 187, column: 31, scope: !375)
!380 = !DILocation(line: 187, column: 3, scope: !375)
!381 = distinct !DISubprogram(name: "get_CONF_DONE", scope: !99, file: !99, line: 190, type: !366, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DILocalVariable(name: "device", arg: 1, scope: !381, file: !99, line: 190, type: !19)
!383 = !DILocation(line: 0, scope: !381)
!384 = !DILocalVariable(name: "status", scope: !381, file: !99, line: 192, type: !25)
!385 = !DILocation(line: 192, column: 17, scope: !381)
!386 = !DILocation(line: 194, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !99, line: 196, column: 3)
!388 = distinct !DILexicalBlock(scope: !389, file: !99, line: 195, column: 3)
!389 = distinct !DILexicalBlock(scope: !381, file: !99, line: 194, column: 3)
!390 = !DILocation(line: 195, column: 18, scope: !389)
!391 = !DILocation(line: 195, column: 12, scope: !389)
!392 = !DILocation(line: 195, column: 25, scope: !389)
!393 = !DILocation(line: 195, column: 32, scope: !389)
!394 = !DILocation(line: 195, column: 3, scope: !389)
!395 = distinct !DISubprogram(name: "set_DCLK", scope: !99, file: !99, line: 198, type: !396, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !19, !19}
!398 = !DILocalVariable(name: "device", arg: 1, scope: !395, file: !99, line: 198, type: !19)
!399 = !DILocation(line: 0, scope: !395)
!400 = !DILocalVariable(name: "value", arg: 2, scope: !395, file: !99, line: 198, type: !19)
!401 = !DILocation(line: 201, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !99, line: 201, column: 7)
!403 = distinct !DILexicalBlock(scope: !395, file: !99, line: 202, column: 3)
!404 = !DILocation(line: 201, column: 7, scope: !403)
!405 = !DILocalVariable(name: "tmp", scope: !395, file: !99, line: 200, type: !19)
!406 = !DILocation(line: 202, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !99, line: 201, column: 19)
!408 = !DILocation(line: 0, scope: !402)
!409 = !DILocation(line: 201, column: 38, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !99, line: 204, column: 3)
!411 = distinct !DILexicalBlock(scope: !403, file: !99, line: 203, column: 3)
!412 = !DILocation(line: 201, column: 3, scope: !410)
!413 = !DILocation(line: 202, column: 3, scope: !403)
!414 = distinct !DISubprogram(name: "out_data", scope: !99, file: !99, line: 61, type: !415, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !19, !25, !25}
!417 = !DILocalVariable(name: "device", arg: 1, scope: !414, file: !99, line: 61, type: !19)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocalVariable(name: "mask", arg: 2, scope: !414, file: !99, line: 61, type: !25)
!420 = !DILocalVariable(name: "val", arg: 3, scope: !414, file: !99, line: 61, type: !25)
!421 = !DILocation(line: 65, column: 34, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !99, line: 66, column: 3)
!423 = distinct !DILexicalBlock(scope: !414, file: !99, line: 65, column: 3)
!424 = !DILocation(line: 65, column: 28, scope: !422)
!425 = !DILocation(line: 65, column: 44, scope: !422)
!426 = !DILocation(line: 65, column: 41, scope: !422)
!427 = !DILocation(line: 65, column: 39, scope: !422)
!428 = !DILocation(line: 65, column: 59, scope: !422)
!429 = !DILocation(line: 65, column: 57, scope: !422)
!430 = !DILocation(line: 65, column: 10, scope: !422)
!431 = !DILocation(line: 65, column: 8, scope: !422)
!432 = !DILocation(line: 66, column: 3, scope: !433)
!433 = distinct !DILexicalBlock(scope: !422, file: !99, line: 66, column: 3)
!434 = !DILocation(line: 67, column: 3, scope: !423)
!435 = distinct !DISubprogram(name: "set_nCONFIG", scope: !99, file: !99, line: 204, type: !396, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!436 = !DILocalVariable(name: "device", arg: 1, scope: !435, file: !99, line: 204, type: !19)
!437 = !DILocation(line: 0, scope: !435)
!438 = !DILocalVariable(name: "value", arg: 2, scope: !435, file: !99, line: 204, type: !19)
!439 = !DILocation(line: 207, column: 13, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !99, line: 207, column: 7)
!441 = distinct !DILexicalBlock(scope: !435, file: !99, line: 208, column: 3)
!442 = !DILocation(line: 207, column: 7, scope: !441)
!443 = !DILocalVariable(name: "tmp", scope: !435, file: !99, line: 206, type: !19)
!444 = !DILocation(line: 208, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !99, line: 207, column: 19)
!446 = !DILocation(line: 0, scope: !440)
!447 = !DILocation(line: 207, column: 38, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !99, line: 210, column: 3)
!449 = distinct !DILexicalBlock(scope: !441, file: !99, line: 209, column: 3)
!450 = !DILocation(line: 207, column: 3, scope: !448)
!451 = !DILocation(line: 208, column: 3, scope: !441)
!452 = distinct !DISubprogram(name: "set_DATA0", scope: !99, file: !99, line: 210, type: !396, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!453 = !DILocalVariable(name: "device", arg: 1, scope: !452, file: !99, line: 210, type: !19)
!454 = !DILocation(line: 0, scope: !452)
!455 = !DILocalVariable(name: "value", arg: 2, scope: !452, file: !99, line: 210, type: !19)
!456 = !DILocation(line: 213, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !99, line: 213, column: 7)
!458 = distinct !DILexicalBlock(scope: !452, file: !99, line: 214, column: 3)
!459 = !DILocation(line: 213, column: 7, scope: !458)
!460 = !DILocalVariable(name: "tmp", scope: !452, file: !99, line: 212, type: !19)
!461 = !DILocation(line: 214, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !99, line: 213, column: 19)
!463 = !DILocation(line: 0, scope: !457)
!464 = !DILocation(line: 213, column: 39, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !99, line: 216, column: 3)
!466 = distinct !DILexicalBlock(scope: !458, file: !99, line: 215, column: 3)
!467 = !DILocation(line: 213, column: 3, scope: !465)
!468 = !DILocation(line: 214, column: 3, scope: !458)
!469 = distinct !DISubprogram(name: "open_byteblaster", scope: !99, file: !99, line: 216, type: !470, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!470 = !DISubroutineType(types: !471)
!471 = !{!19, !8}
!472 = !DILocalVariable(name: "devicename", arg: 1, scope: !469, file: !99, line: 216, type: !8)
!473 = !DILocation(line: 0, scope: !469)
!474 = !DILocalVariable(name: "__cil_tmp4", scope: !469, file: !99, line: 220, type: !8)
!475 = !DILocation(line: 220, column: 9, scope: !469)
!476 = !DILocalVariable(name: "__cil_tmp5", scope: !469, file: !99, line: 221, type: !8)
!477 = !DILocation(line: 221, column: 9, scope: !469)
!478 = !DILocation(line: 220, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !99, line: 225, column: 3)
!480 = distinct !DILexicalBlock(scope: !481, file: !99, line: 224, column: 3)
!481 = distinct !DILexicalBlock(scope: !469, file: !99, line: 223, column: 3)
!482 = !DILocalVariable(name: "dev", scope: !469, file: !99, line: 218, type: !19)
!483 = !DILocation(line: 221, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !99, line: 221, column: 7)
!485 = !DILocation(line: 221, column: 7, scope: !481)
!486 = !DILocation(line: 223, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !99, line: 223, column: 9)
!488 = distinct !DILexicalBlock(scope: !484, file: !99, line: 221, column: 16)
!489 = !DILocation(line: 223, column: 9, scope: !488)
!490 = !DILocation(line: 224, column: 40, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !99, line: 225, column: 7)
!492 = distinct !DILexicalBlock(scope: !493, file: !99, line: 224, column: 7)
!493 = distinct !DILexicalBlock(scope: !487, file: !99, line: 223, column: 18)
!494 = !DILocation(line: 224, column: 7, scope: !491)
!495 = !DILocation(line: 228, column: 5, scope: !493)
!496 = !DILocation(line: 225, column: 5, scope: !488)
!497 = !DILocation(line: 228, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !99, line: 228, column: 3)
!499 = distinct !DILexicalBlock(scope: !481, file: !99, line: 227, column: 3)
!500 = !DILocalVariable(name: "tmp", scope: !469, file: !99, line: 219, type: !19)
!501 = !DILocation(line: 228, column: 11, scope: !502)
!502 = distinct !DILexicalBlock(scope: !481, file: !99, line: 228, column: 7)
!503 = !DILocation(line: 228, column: 7, scope: !481)
!504 = !DILocation(line: 230, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !99, line: 230, column: 9)
!506 = distinct !DILexicalBlock(scope: !502, file: !99, line: 228, column: 16)
!507 = !DILocation(line: 230, column: 9, scope: !506)
!508 = !DILocation(line: 231, column: 40, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !99, line: 232, column: 7)
!510 = distinct !DILexicalBlock(scope: !511, file: !99, line: 231, column: 7)
!511 = distinct !DILexicalBlock(scope: !505, file: !99, line: 230, column: 18)
!512 = !DILocation(line: 231, column: 7, scope: !509)
!513 = !DILocation(line: 235, column: 5, scope: !511)
!514 = !DILocation(line: 232, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !99, line: 237, column: 5)
!516 = distinct !DILexicalBlock(scope: !506, file: !99, line: 236, column: 5)
!517 = !DILocation(line: 233, column: 5, scope: !506)
!518 = !DILocation(line: 236, column: 3, scope: !481)
!519 = !DILocation(line: 0, scope: !481)
!520 = !DILocation(line: 238, column: 1, scope: !469)
!521 = distinct !DISubprogram(name: "open_parport", scope: !99, file: !99, line: 95, type: !470, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!522 = !DILocalVariable(name: "device_name", arg: 1, scope: !521, file: !99, line: 95, type: !8)
!523 = !DILocation(line: 0, scope: !521)
!524 = !DILocalVariable(name: "__cil_tmp4", scope: !521, file: !99, line: 99, type: !8)
!525 = !DILocation(line: 99, column: 9, scope: !521)
!526 = !DILocalVariable(name: "__cil_tmp5", scope: !521, file: !99, line: 100, type: !8)
!527 = !DILocation(line: 100, column: 9, scope: !521)
!528 = !DILocalVariable(name: "__cil_tmp6", scope: !521, file: !99, line: 101, type: !8)
!529 = !DILocation(line: 101, column: 9, scope: !521)
!530 = !DILocalVariable(name: "__cil_tmp7", scope: !521, file: !99, line: 102, type: !8)
!531 = !DILocation(line: 102, column: 9, scope: !521)
!532 = !DILocation(line: 99, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !99, line: 99, column: 7)
!534 = distinct !DILexicalBlock(scope: !521, file: !99, line: 104, column: 3)
!535 = !DILocation(line: 99, column: 7, scope: !534)
!536 = !DILocation(line: 100, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !99, line: 101, column: 5)
!538 = distinct !DILexicalBlock(scope: !539, file: !99, line: 100, column: 5)
!539 = distinct !DILexicalBlock(scope: !533, file: !99, line: 99, column: 14)
!540 = !DILocation(line: 103, column: 3, scope: !539)
!541 = !DILocation(line: 102, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !99, line: 105, column: 3)
!543 = distinct !DILexicalBlock(scope: !534, file: !99, line: 104, column: 3)
!544 = !DILocalVariable(name: "dev", scope: !521, file: !99, line: 97, type: !19)
!545 = !DILocation(line: 104, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !534, file: !99, line: 104, column: 7)
!547 = !DILocation(line: 104, column: 7, scope: !534)
!548 = !DILocation(line: 106, column: 11, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !99, line: 106, column: 9)
!550 = distinct !DILexicalBlock(scope: !546, file: !99, line: 104, column: 16)
!551 = !DILocation(line: 106, column: 9, scope: !550)
!552 = !DILocation(line: 107, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !99, line: 108, column: 7)
!554 = distinct !DILexicalBlock(scope: !555, file: !99, line: 107, column: 7)
!555 = distinct !DILexicalBlock(scope: !549, file: !99, line: 106, column: 18)
!556 = !DILocation(line: 110, column: 5, scope: !555)
!557 = !DILocation(line: 108, column: 5, scope: !550)
!558 = !DILocation(line: 110, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !99, line: 111, column: 3)
!560 = distinct !DILexicalBlock(scope: !534, file: !99, line: 110, column: 3)
!561 = !DILocalVariable(name: "tmp", scope: !521, file: !99, line: 98, type: !19)
!562 = !DILocation(line: 110, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !534, file: !99, line: 110, column: 7)
!564 = !DILocation(line: 110, column: 7, scope: !534)
!565 = !DILocation(line: 112, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !99, line: 112, column: 9)
!567 = distinct !DILexicalBlock(scope: !563, file: !99, line: 110, column: 16)
!568 = !DILocation(line: 112, column: 9, scope: !567)
!569 = !DILocation(line: 113, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !99, line: 114, column: 7)
!571 = distinct !DILexicalBlock(scope: !572, file: !99, line: 113, column: 7)
!572 = distinct !DILexicalBlock(scope: !566, file: !99, line: 112, column: 18)
!573 = !DILocation(line: 116, column: 5, scope: !572)
!574 = !DILocation(line: 114, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !99, line: 118, column: 5)
!576 = distinct !DILexicalBlock(scope: !567, file: !99, line: 117, column: 5)
!577 = !DILocation(line: 115, column: 5, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !99, line: 116, column: 5)
!579 = !DILocation(line: 116, column: 5, scope: !567)
!580 = !DILocation(line: 119, column: 3, scope: !534)
!581 = !DILocation(line: 0, scope: !534)
!582 = !DILocation(line: 121, column: 1, scope: !521)
!583 = distinct !DISubprogram(name: "detect_byteblaster", scope: !99, file: !99, line: 133, type: !366, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!584 = !DILocalVariable(name: "device", arg: 1, scope: !583, file: !99, line: 133, type: !19)
!585 = !DILocation(line: 0, scope: !583)
!586 = !DILocalVariable(name: "__cil_tmp5", scope: !583, file: !99, line: 138, type: !8)
!587 = !DILocation(line: 138, column: 9, scope: !583)
!588 = !DILocalVariable(name: "__cil_tmp6", scope: !583, file: !99, line: 139, type: !8)
!589 = !DILocation(line: 139, column: 9, scope: !583)
!590 = !DILocalVariable(name: "__cil_tmp7", scope: !583, file: !99, line: 140, type: !8)
!591 = !DILocation(line: 140, column: 9, scope: !583)
!592 = !DILocalVariable(name: "__cil_tmp8", scope: !583, file: !99, line: 141, type: !8)
!593 = !DILocation(line: 141, column: 9, scope: !583)
!594 = !DILocalVariable(name: "__cil_tmp9", scope: !583, file: !99, line: 142, type: !8)
!595 = !DILocation(line: 142, column: 9, scope: !583)
!596 = !DILocalVariable(name: "__cil_tmp10", scope: !583, file: !99, line: 143, type: !8)
!597 = !DILocation(line: 143, column: 9, scope: !583)
!598 = !DILocalVariable(name: "__cil_tmp11", scope: !583, file: !99, line: 144, type: !8)
!599 = !DILocation(line: 144, column: 9, scope: !583)
!600 = !DILocation(line: 135, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !99, line: 135, column: 7)
!602 = distinct !DILexicalBlock(scope: !583, file: !99, line: 146, column: 3)
!603 = !DILocation(line: 135, column: 7, scope: !602)
!604 = !DILocation(line: 136, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !99, line: 137, column: 5)
!606 = distinct !DILexicalBlock(scope: !607, file: !99, line: 136, column: 5)
!607 = distinct !DILexicalBlock(scope: !601, file: !99, line: 135, column: 14)
!608 = !DILocation(line: 139, column: 3, scope: !607)
!609 = !DILocation(line: 139, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !99, line: 139, column: 7)
!611 = !DILocation(line: 139, column: 7, scope: !602)
!612 = !DILocation(line: 140, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !99, line: 141, column: 5)
!614 = distinct !DILexicalBlock(scope: !615, file: !99, line: 140, column: 5)
!615 = distinct !DILexicalBlock(scope: !610, file: !99, line: 139, column: 14)
!616 = !DILocation(line: 143, column: 3, scope: !615)
!617 = !DILocation(line: 141, column: 3, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !99, line: 145, column: 3)
!619 = distinct !DILexicalBlock(scope: !602, file: !99, line: 144, column: 3)
!620 = !DILocation(line: 142, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !99, line: 143, column: 3)
!622 = !DILocation(line: 143, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !99, line: 144, column: 3)
!624 = !DILocalVariable(name: "tmp", scope: !583, file: !99, line: 135, type: !19)
!625 = !DILocation(line: 143, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !602, file: !99, line: 143, column: 7)
!627 = !DILocation(line: 143, column: 7, scope: !602)
!628 = !DILocation(line: 145, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !99, line: 145, column: 9)
!630 = distinct !DILexicalBlock(scope: !626, file: !99, line: 143, column: 17)
!631 = !DILocation(line: 145, column: 9, scope: !630)
!632 = !DILocation(line: 146, column: 40, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !99, line: 147, column: 7)
!634 = distinct !DILexicalBlock(scope: !635, file: !99, line: 146, column: 7)
!635 = distinct !DILexicalBlock(scope: !629, file: !99, line: 145, column: 16)
!636 = !DILocation(line: 146, column: 7, scope: !633)
!637 = !DILocation(line: 149, column: 5, scope: !635)
!638 = !DILocation(line: 147, column: 5, scope: !630)
!639 = !DILocation(line: 150, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !602, file: !99, line: 150, column: 7)
!641 = !DILocation(line: 150, column: 7, scope: !602)
!642 = !DILocation(line: 151, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !99, line: 152, column: 5)
!644 = distinct !DILexicalBlock(scope: !645, file: !99, line: 151, column: 5)
!645 = distinct !DILexicalBlock(scope: !640, file: !99, line: 150, column: 14)
!646 = !DILocation(line: 154, column: 3, scope: !645)
!647 = !DILocation(line: 152, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !99, line: 156, column: 3)
!649 = distinct !DILexicalBlock(scope: !602, file: !99, line: 155, column: 3)
!650 = !DILocation(line: 153, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !649, file: !99, line: 154, column: 3)
!652 = !DILocation(line: 154, column: 13, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !99, line: 155, column: 3)
!654 = !DILocalVariable(name: "tmp___0", scope: !583, file: !99, line: 136, type: !19)
!655 = !DILocation(line: 154, column: 15, scope: !656)
!656 = distinct !DILexicalBlock(scope: !602, file: !99, line: 154, column: 7)
!657 = !DILocation(line: 154, column: 7, scope: !602)
!658 = !DILocation(line: 156, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !99, line: 156, column: 9)
!660 = distinct !DILexicalBlock(scope: !656, file: !99, line: 154, column: 21)
!661 = !DILocation(line: 156, column: 9, scope: !660)
!662 = !DILocation(line: 157, column: 40, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !99, line: 158, column: 7)
!664 = distinct !DILexicalBlock(scope: !665, file: !99, line: 157, column: 7)
!665 = distinct !DILexicalBlock(scope: !659, file: !99, line: 156, column: 16)
!666 = !DILocation(line: 157, column: 7, scope: !663)
!667 = !DILocation(line: 160, column: 5, scope: !665)
!668 = !DILocation(line: 158, column: 5, scope: !660)
!669 = !DILocation(line: 161, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !602, file: !99, line: 161, column: 7)
!671 = !DILocation(line: 161, column: 7, scope: !602)
!672 = !DILocation(line: 162, column: 5, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !99, line: 163, column: 5)
!674 = distinct !DILexicalBlock(scope: !675, file: !99, line: 162, column: 5)
!675 = distinct !DILexicalBlock(scope: !670, file: !99, line: 161, column: 14)
!676 = !DILocation(line: 165, column: 3, scope: !675)
!677 = !DILocation(line: 163, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !99, line: 167, column: 3)
!679 = distinct !DILexicalBlock(scope: !602, file: !99, line: 166, column: 3)
!680 = !DILocation(line: 164, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !679, file: !99, line: 165, column: 3)
!682 = !DILocation(line: 165, column: 13, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !99, line: 166, column: 3)
!684 = !DILocalVariable(name: "tmp___1", scope: !583, file: !99, line: 137, type: !19)
!685 = !DILocation(line: 165, column: 15, scope: !686)
!686 = distinct !DILexicalBlock(scope: !602, file: !99, line: 165, column: 7)
!687 = !DILocation(line: 165, column: 7, scope: !602)
!688 = !DILocation(line: 167, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !99, line: 167, column: 9)
!690 = distinct !DILexicalBlock(scope: !686, file: !99, line: 165, column: 21)
!691 = !DILocation(line: 167, column: 9, scope: !690)
!692 = !DILocation(line: 168, column: 40, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !99, line: 169, column: 7)
!694 = distinct !DILexicalBlock(scope: !695, file: !99, line: 168, column: 7)
!695 = distinct !DILexicalBlock(scope: !689, file: !99, line: 167, column: 16)
!696 = !DILocation(line: 168, column: 7, scope: !693)
!697 = !DILocation(line: 171, column: 5, scope: !695)
!698 = !DILocation(line: 169, column: 5, scope: !690)
!699 = !DILocation(line: 172, column: 3, scope: !602)
!700 = !DILocation(line: 0, scope: !602)
!701 = !DILocation(line: 174, column: 1, scope: !583)
!702 = distinct !DISubprogram(name: "close_byteblaster", scope: !99, file: !99, line: 239, type: !703, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !19}
!705 = !DILocalVariable(name: "device", arg: 1, scope: !702, file: !99, line: 239, type: !19)
!706 = !DILocation(line: 0, scope: !702)
!707 = !DILocation(line: 241, column: 3, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !99, line: 245, column: 3)
!709 = distinct !DILexicalBlock(scope: !710, file: !99, line: 244, column: 3)
!710 = distinct !DILexicalBlock(scope: !702, file: !99, line: 243, column: 3)
!711 = !DILocation(line: 242, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !99, line: 243, column: 3)
!713 = !DILocation(line: 243, column: 3, scope: !710)
!714 = distinct !DISubprogram(name: "enable_byteblaster", scope: !99, file: !99, line: 245, type: !396, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!715 = !DILocalVariable(name: "device", arg: 1, scope: !714, file: !99, line: 245, type: !19)
!716 = !DILocation(line: 0, scope: !714)
!717 = !DILocalVariable(name: "value", arg: 2, scope: !714, file: !99, line: 245, type: !19)
!718 = !DILocation(line: 247, column: 3, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !99, line: 251, column: 3)
!720 = distinct !DILexicalBlock(scope: !721, file: !99, line: 250, column: 3)
!721 = distinct !DILexicalBlock(scope: !714, file: !99, line: 249, column: 3)
!722 = !DILocation(line: 248, column: 3, scope: !721)
!723 = distinct !DISubprogram(name: "close_parport", scope: !99, file: !99, line: 122, type: !703, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!724 = !DILocalVariable(name: "device", arg: 1, scope: !723, file: !99, line: 122, type: !19)
!725 = !DILocation(line: 0, scope: !723)
!726 = !DILocation(line: 124, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !99, line: 124, column: 7)
!728 = distinct !DILexicalBlock(scope: !723, file: !99, line: 126, column: 3)
!729 = !DILocation(line: 124, column: 7, scope: !728)
!730 = !DILocation(line: 127, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !99, line: 126, column: 5)
!732 = distinct !DILexicalBlock(scope: !733, file: !99, line: 125, column: 5)
!733 = distinct !DILexicalBlock(scope: !727, file: !99, line: 124, column: 15)
!734 = !DILocation(line: 129, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !99, line: 129, column: 5)
!736 = !DILocation(line: 132, column: 3, scope: !733)
!737 = !DILocation(line: 131, column: 3, scope: !728)
!738 = distinct !DISubprogram(name: "set_AUTOFEED", scope: !99, file: !99, line: 69, type: !396, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!739 = !DILocalVariable(name: "device", arg: 1, scope: !738, file: !99, line: 69, type: !19)
!740 = !DILocation(line: 0, scope: !738)
!741 = !DILocalVariable(name: "value", arg: 2, scope: !738, file: !99, line: 69, type: !19)
!742 = !DILocalVariable(name: "control", scope: !738, file: !99, line: 71, type: !25)
!743 = !DILocation(line: 71, column: 17, scope: !738)
!744 = !DILocation(line: 73, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !99, line: 75, column: 3)
!746 = distinct !DILexicalBlock(scope: !747, file: !99, line: 74, column: 3)
!747 = distinct !DILexicalBlock(scope: !738, file: !99, line: 73, column: 3)
!748 = !DILocation(line: 74, column: 36, scope: !746)
!749 = !DILocation(line: 74, column: 30, scope: !746)
!750 = !DILocation(line: 74, column: 44, scope: !746)
!751 = !DILocation(line: 74, column: 13, scope: !746)
!752 = !DILocation(line: 74, column: 11, scope: !746)
!753 = !DILocation(line: 75, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !747, file: !99, line: 75, column: 7)
!755 = !DILocation(line: 75, column: 7, scope: !747)
!756 = !DILocation(line: 76, column: 38, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !99, line: 75, column: 19)
!758 = !DILocation(line: 76, column: 32, scope: !757)
!759 = !DILocation(line: 76, column: 46, scope: !757)
!760 = !DILocation(line: 76, column: 15, scope: !757)
!761 = !DILocation(line: 76, column: 13, scope: !757)
!762 = !DILocation(line: 77, column: 3, scope: !757)
!763 = !DILocation(line: 77, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !99, line: 79, column: 3)
!765 = distinct !DILexicalBlock(scope: !747, file: !99, line: 78, column: 3)
!766 = !DILocation(line: 78, column: 3, scope: !767)
!767 = distinct !DILexicalBlock(scope: !765, file: !99, line: 80, column: 3)
!768 = !DILocation(line: 79, column: 3, scope: !747)
!769 = distinct !DISubprogram(name: "flex_config", scope: !265, file: !265, line: 48, type: !366, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!770 = !DILocalVariable(name: "device", arg: 1, scope: !769, file: !265, line: 48, type: !19)
!771 = !DILocation(line: 0, scope: !769)
!772 = !DILocalVariable(name: "__cil_tmp7", scope: !769, file: !265, line: 55, type: !8)
!773 = !DILocation(line: 55, column: 9, scope: !769)
!774 = !DILocalVariable(name: "__cil_tmp8", scope: !769, file: !265, line: 56, type: !8)
!775 = !DILocation(line: 56, column: 9, scope: !769)
!776 = !DILocalVariable(name: "__cil_tmp9", scope: !769, file: !265, line: 57, type: !8)
!777 = !DILocation(line: 57, column: 9, scope: !769)
!778 = !DILocalVariable(name: "__cil_tmp10", scope: !769, file: !265, line: 58, type: !8)
!779 = !DILocation(line: 58, column: 9, scope: !769)
!780 = !DILocalVariable(name: "__cil_tmp11", scope: !769, file: !265, line: 59, type: !8)
!781 = !DILocation(line: 59, column: 9, scope: !769)
!782 = !DILocation(line: 52, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !265, line: 63, column: 3)
!784 = distinct !DILexicalBlock(scope: !785, file: !265, line: 62, column: 3)
!785 = distinct !DILexicalBlock(scope: !769, file: !265, line: 61, column: 3)
!786 = !DILocation(line: 53, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !265, line: 54, column: 3)
!788 = !DILocation(line: 54, column: 3, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !265, line: 55, column: 3)
!790 = !DILocation(line: 55, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !265, line: 56, column: 3)
!792 = !DILocation(line: 56, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !784, file: !265, line: 57, column: 3)
!794 = !DILocation(line: 58, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !785, file: !265, line: 58, column: 7)
!796 = !DILocation(line: 58, column: 7, scope: !785)
!797 = !DILocation(line: 59, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !265, line: 60, column: 5)
!799 = distinct !DILexicalBlock(scope: !800, file: !265, line: 59, column: 5)
!800 = distinct !DILexicalBlock(scope: !795, file: !265, line: 58, column: 14)
!801 = !DILocation(line: 62, column: 3, scope: !800)
!802 = !DILocalVariable(name: "t", scope: !769, file: !265, line: 50, type: !19)
!803 = !DILocation(line: 61, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !265, line: 63, column: 3)
!805 = distinct !DILexicalBlock(scope: !785, file: !265, line: 62, column: 3)
!806 = !DILocation(line: 0, scope: !785)
!807 = !DILocation(line: 61, column: 13, scope: !804)
!808 = !DILocation(line: 61, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !265, line: 61, column: 9)
!810 = distinct !DILexicalBlock(scope: !804, file: !265, line: 61, column: 13)
!811 = !DILocation(line: 61, column: 9, scope: !810)
!812 = !DILocation(line: 61, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !265, line: 61, column: 20)
!814 = !DILocation(line: 63, column: 11, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !265, line: 64, column: 5)
!816 = distinct !DILexicalBlock(scope: !810, file: !265, line: 63, column: 5)
!817 = !DILocalVariable(name: "tmp", scope: !769, file: !265, line: 51, type: !19)
!818 = !DILocation(line: 63, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !265, line: 63, column: 9)
!820 = !DILocation(line: 63, column: 9, scope: !810)
!821 = !DILocation(line: 64, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !265, line: 63, column: 19)
!823 = !DILocation(line: 65, column: 5, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !265, line: 67, column: 5)
!825 = distinct !DILexicalBlock(scope: !810, file: !265, line: 66, column: 5)
!826 = !DILocation(line: 61, column: 7, scope: !825)
!827 = distinct !{!827, !803, !828}
!828 = !DILocation(line: 63, column: 3, scope: !804)
!829 = !DILocation(line: 65, column: 3, scope: !804)
!830 = !DILocation(line: 67, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !785, file: !265, line: 67, column: 7)
!832 = !DILocation(line: 67, column: 7, scope: !785)
!833 = !DILocation(line: 69, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !265, line: 69, column: 9)
!835 = distinct !DILexicalBlock(scope: !831, file: !265, line: 67, column: 15)
!836 = !DILocation(line: 69, column: 9, scope: !835)
!837 = !DILocation(line: 70, column: 40, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !265, line: 71, column: 7)
!839 = distinct !DILexicalBlock(scope: !840, file: !265, line: 70, column: 7)
!840 = distinct !DILexicalBlock(scope: !834, file: !265, line: 69, column: 18)
!841 = !DILocation(line: 70, column: 7, scope: !838)
!842 = !DILocation(line: 73, column: 5, scope: !840)
!843 = !DILocation(line: 71, column: 5, scope: !835)
!844 = !DILocation(line: 74, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !265, line: 74, column: 3)
!846 = distinct !DILexicalBlock(scope: !785, file: !265, line: 73, column: 3)
!847 = !DILocation(line: 76, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !265, line: 79, column: 3)
!849 = distinct !DILexicalBlock(scope: !785, file: !265, line: 78, column: 3)
!850 = !DILocation(line: 76, column: 13, scope: !848)
!851 = !DILocation(line: 76, column: 14, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !265, line: 76, column: 9)
!853 = distinct !DILexicalBlock(scope: !848, file: !265, line: 76, column: 13)
!854 = !DILocation(line: 76, column: 9, scope: !853)
!855 = !DILocation(line: 76, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !265, line: 76, column: 20)
!857 = !DILocation(line: 78, column: 15, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !265, line: 79, column: 5)
!859 = distinct !DILexicalBlock(scope: !853, file: !265, line: 78, column: 5)
!860 = !DILocalVariable(name: "tmp___0", scope: !769, file: !265, line: 52, type: !19)
!861 = !DILocation(line: 78, column: 17, scope: !862)
!862 = distinct !DILexicalBlock(scope: !853, file: !265, line: 78, column: 9)
!863 = !DILocation(line: 78, column: 9, scope: !853)
!864 = !DILocation(line: 79, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !265, line: 78, column: 23)
!866 = !DILocation(line: 80, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !265, line: 82, column: 5)
!868 = distinct !DILexicalBlock(scope: !853, file: !265, line: 81, column: 5)
!869 = !DILocation(line: 76, column: 7, scope: !868)
!870 = distinct !{!870, !847, !871}
!871 = !DILocation(line: 78, column: 3, scope: !848)
!872 = !DILocation(line: 80, column: 3, scope: !848)
!873 = !DILocation(line: 82, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !785, file: !265, line: 82, column: 7)
!875 = !DILocation(line: 82, column: 7, scope: !785)
!876 = !DILocation(line: 84, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !265, line: 84, column: 9)
!878 = distinct !DILexicalBlock(scope: !874, file: !265, line: 82, column: 15)
!879 = !DILocation(line: 84, column: 9, scope: !878)
!880 = !DILocation(line: 85, column: 40, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !265, line: 86, column: 7)
!882 = distinct !DILexicalBlock(scope: !883, file: !265, line: 85, column: 7)
!883 = distinct !DILexicalBlock(scope: !877, file: !265, line: 84, column: 18)
!884 = !DILocation(line: 85, column: 7, scope: !881)
!885 = !DILocation(line: 88, column: 5, scope: !883)
!886 = !DILocation(line: 86, column: 5, scope: !878)
!887 = !DILocation(line: 89, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !265, line: 91, column: 3)
!889 = distinct !DILexicalBlock(scope: !785, file: !265, line: 90, column: 3)
!890 = !DILocation(line: 89, column: 13, scope: !888)
!891 = !DILocation(line: 89, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !265, line: 89, column: 9)
!893 = distinct !DILexicalBlock(scope: !888, file: !265, line: 89, column: 13)
!894 = !DILocation(line: 89, column: 9, scope: !893)
!895 = !DILocation(line: 89, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !265, line: 89, column: 20)
!897 = !DILocation(line: 91, column: 15, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !265, line: 92, column: 5)
!899 = distinct !DILexicalBlock(scope: !893, file: !265, line: 91, column: 5)
!900 = !DILocalVariable(name: "tmp___1", scope: !769, file: !265, line: 53, type: !19)
!901 = !DILocation(line: 91, column: 17, scope: !902)
!902 = distinct !DILexicalBlock(scope: !893, file: !265, line: 91, column: 9)
!903 = !DILocation(line: 91, column: 9, scope: !893)
!904 = !DILocation(line: 92, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !265, line: 91, column: 23)
!906 = !DILocation(line: 93, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !265, line: 95, column: 5)
!908 = distinct !DILexicalBlock(scope: !893, file: !265, line: 94, column: 5)
!909 = !DILocation(line: 89, column: 7, scope: !908)
!910 = distinct !{!910, !887, !911}
!911 = !DILocation(line: 91, column: 3, scope: !888)
!912 = !DILocation(line: 93, column: 3, scope: !888)
!913 = !DILocation(line: 95, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !785, file: !265, line: 95, column: 7)
!915 = !DILocation(line: 95, column: 7, scope: !785)
!916 = !DILocation(line: 97, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !265, line: 97, column: 9)
!918 = distinct !DILexicalBlock(scope: !914, file: !265, line: 95, column: 15)
!919 = !DILocation(line: 97, column: 9, scope: !918)
!920 = !DILocation(line: 98, column: 40, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !265, line: 99, column: 7)
!922 = distinct !DILexicalBlock(scope: !923, file: !265, line: 98, column: 7)
!923 = distinct !DILexicalBlock(scope: !917, file: !265, line: 97, column: 18)
!924 = !DILocation(line: 98, column: 7, scope: !921)
!925 = !DILocation(line: 101, column: 5, scope: !923)
!926 = !DILocation(line: 99, column: 5, scope: !918)
!927 = !DILocation(line: 102, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !265, line: 102, column: 3)
!929 = distinct !DILexicalBlock(scope: !785, file: !265, line: 101, column: 3)
!930 = !DILocation(line: 104, column: 3, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !265, line: 107, column: 3)
!932 = distinct !DILexicalBlock(scope: !785, file: !265, line: 106, column: 3)
!933 = !DILocation(line: 104, column: 13, scope: !931)
!934 = !DILocation(line: 104, column: 14, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !265, line: 104, column: 9)
!936 = distinct !DILexicalBlock(scope: !931, file: !265, line: 104, column: 13)
!937 = !DILocation(line: 104, column: 9, scope: !936)
!938 = !DILocation(line: 104, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !265, line: 104, column: 20)
!940 = !DILocation(line: 106, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !265, line: 107, column: 5)
!942 = distinct !DILexicalBlock(scope: !936, file: !265, line: 106, column: 5)
!943 = !DILocalVariable(name: "tmp___2", scope: !769, file: !265, line: 54, type: !19)
!944 = !DILocation(line: 106, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !265, line: 106, column: 9)
!946 = !DILocation(line: 106, column: 9, scope: !936)
!947 = !DILocation(line: 107, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !265, line: 106, column: 23)
!949 = !DILocation(line: 108, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !265, line: 110, column: 5)
!951 = distinct !DILexicalBlock(scope: !936, file: !265, line: 109, column: 5)
!952 = !DILocation(line: 104, column: 7, scope: !951)
!953 = distinct !{!953, !930, !954}
!954 = !DILocation(line: 106, column: 3, scope: !931)
!955 = !DILocation(line: 108, column: 3, scope: !931)
!956 = !DILocation(line: 110, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !785, file: !265, line: 110, column: 7)
!958 = !DILocation(line: 110, column: 7, scope: !785)
!959 = !DILocation(line: 112, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !265, line: 112, column: 9)
!961 = distinct !DILexicalBlock(scope: !957, file: !265, line: 110, column: 15)
!962 = !DILocation(line: 112, column: 9, scope: !961)
!963 = !DILocation(line: 113, column: 40, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !265, line: 114, column: 7)
!965 = distinct !DILexicalBlock(scope: !966, file: !265, line: 113, column: 7)
!966 = distinct !DILexicalBlock(scope: !960, file: !265, line: 112, column: 18)
!967 = !DILocation(line: 113, column: 7, scope: !964)
!968 = !DILocation(line: 116, column: 5, scope: !966)
!969 = !DILocation(line: 114, column: 5, scope: !961)
!970 = !DILocation(line: 117, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !265, line: 117, column: 3)
!972 = distinct !DILexicalBlock(scope: !785, file: !265, line: 116, column: 3)
!973 = !DILocation(line: 118, column: 3, scope: !785)
!974 = !DILocation(line: 120, column: 1, scope: !769)
!975 = distinct !DISubprogram(name: "flex_download", scope: !265, file: !265, line: 121, type: !976, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!976 = !DISubroutineType(types: !977)
!977 = !{!19, !19, !19}
!978 = !DILocalVariable(name: "device", arg: 1, scope: !975, file: !265, line: 121, type: !19)
!979 = !DILocation(line: 0, scope: !975)
!980 = !DILocalVariable(name: "file", arg: 2, scope: !975, file: !265, line: 121, type: !19)
!981 = !DILocalVariable(name: "data___1", scope: !975, file: !265, line: 125, type: !25)
!982 = !DILocation(line: 125, column: 17, scope: !975)
!983 = !DILocalVariable(name: "__cil_tmp9", scope: !975, file: !265, line: 129, type: !8)
!984 = !DILocation(line: 129, column: 9, scope: !975)
!985 = !DILocalVariable(name: "__cil_tmp10", scope: !975, file: !265, line: 130, type: !8)
!986 = !DILocation(line: 130, column: 9, scope: !975)
!987 = !DILocalVariable(name: "__cil_tmp11", scope: !975, file: !265, line: 131, type: !8)
!988 = !DILocation(line: 131, column: 9, scope: !975)
!989 = !DILocalVariable(name: "__cil_tmp12", scope: !975, file: !265, line: 132, type: !8)
!990 = !DILocation(line: 132, column: 9, scope: !975)
!991 = !DILocalVariable(name: "__cil_tmp13", scope: !975, file: !265, line: 133, type: !8)
!992 = !DILocation(line: 133, column: 9, scope: !975)
!993 = !DILocation(line: 126, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !265, line: 126, column: 7)
!995 = distinct !DILexicalBlock(scope: !975, file: !265, line: 135, column: 3)
!996 = !DILocation(line: 126, column: 7, scope: !995)
!997 = !DILocation(line: 127, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !265, line: 128, column: 5)
!999 = distinct !DILexicalBlock(scope: !1000, file: !265, line: 127, column: 5)
!1000 = distinct !DILexicalBlock(scope: !994, file: !265, line: 126, column: 14)
!1001 = !DILocation(line: 130, column: 3, scope: !1000)
!1002 = !DILocalVariable(name: "byte", scope: !975, file: !265, line: 123, type: !19)
!1003 = !DILocation(line: 129, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !265, line: 131, column: 3)
!1005 = distinct !DILexicalBlock(scope: !995, file: !265, line: 130, column: 3)
!1006 = !DILocation(line: 0, scope: !995)
!1007 = !DILocation(line: 129, column: 13, scope: !1004)
!1008 = !DILocation(line: 131, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !265, line: 131, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !265, line: 129, column: 13)
!1011 = !DILocation(line: 131, column: 9, scope: !1010)
!1012 = !DILocation(line: 132, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !265, line: 133, column: 7)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !265, line: 132, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !265, line: 131, column: 16)
!1016 = !DILocation(line: 135, column: 5, scope: !1015)
!1017 = !DILocation(line: 134, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !265, line: 137, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !265, line: 136, column: 5)
!1020 = !DILocalVariable(name: "tmp", scope: !975, file: !265, line: 126, type: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1022, line: 110, baseType: !1023)
!1022 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !57, line: 180, baseType: !19)
!1024 = !DILocation(line: 134, column: 13, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1010, file: !265, line: 134, column: 9)
!1026 = !DILocation(line: 134, column: 9, scope: !1010)
!1027 = !DILocation(line: 136, column: 13, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !265, line: 136, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !265, line: 134, column: 19)
!1030 = !DILocation(line: 136, column: 11, scope: !1029)
!1031 = !DILocation(line: 137, column: 42, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !265, line: 138, column: 9)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !265, line: 137, column: 9)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !265, line: 136, column: 20)
!1035 = !DILocation(line: 137, column: 9, scope: !1032)
!1036 = !DILocation(line: 140, column: 7, scope: !1034)
!1037 = !DILocation(line: 138, column: 7, scope: !1029)
!1038 = !DILocalVariable(name: "bit", scope: !975, file: !265, line: 124, type: !19)
!1039 = !DILocation(line: 141, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !265, line: 143, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1010, file: !265, line: 142, column: 5)
!1042 = !DILocation(line: 0, scope: !1010)
!1043 = !DILocation(line: 141, column: 15, scope: !1040)
!1044 = !DILocation(line: 141, column: 18, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !265, line: 141, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !265, line: 141, column: 15)
!1047 = !DILocation(line: 141, column: 11, scope: !1046)
!1048 = !DILocation(line: 141, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !265, line: 141, column: 24)
!1050 = !DILocation(line: 143, column: 31, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !265, line: 144, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !265, line: 143, column: 7)
!1053 = !DILocation(line: 143, column: 25, scope: !1051)
!1054 = !DILocation(line: 143, column: 40, scope: !1051)
!1055 = !DILocation(line: 143, column: 7, scope: !1051)
!1056 = !DILocation(line: 144, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !265, line: 145, column: 7)
!1058 = !DILocation(line: 145, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !265, line: 146, column: 7)
!1060 = !DILocation(line: 146, column: 41, scope: !1052)
!1061 = !DILocation(line: 146, column: 35, scope: !1052)
!1062 = !DILocation(line: 146, column: 50, scope: !1052)
!1063 = !DILocation(line: 146, column: 18, scope: !1052)
!1064 = !DILocation(line: 146, column: 16, scope: !1052)
!1065 = !DILocation(line: 148, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1052, file: !265, line: 147, column: 7)
!1067 = !DILocalVariable(name: "tmp___0", scope: !975, file: !265, line: 127, type: !19)
!1068 = !DILocation(line: 148, column: 19, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1046, file: !265, line: 148, column: 11)
!1070 = !DILocation(line: 148, column: 11, scope: !1046)
!1071 = !DILocation(line: 150, column: 15, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !265, line: 150, column: 13)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !265, line: 148, column: 25)
!1074 = !DILocation(line: 150, column: 13, scope: !1073)
!1075 = !DILocation(line: 151, column: 44, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !265, line: 152, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !265, line: 151, column: 11)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !265, line: 150, column: 22)
!1079 = !DILocation(line: 151, column: 11, scope: !1076)
!1080 = !DILocation(line: 154, column: 9, scope: !1078)
!1081 = !DILocation(line: 152, column: 9, scope: !1073)
!1082 = !DILocation(line: 155, column: 17, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !265, line: 155, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1046, file: !265, line: 154, column: 7)
!1085 = !DILocalVariable(name: "tmp___1", scope: !975, file: !265, line: 128, type: !19)
!1086 = !DILocation(line: 155, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1046, file: !265, line: 155, column: 11)
!1088 = !DILocation(line: 155, column: 11, scope: !1046)
!1089 = !DILocation(line: 157, column: 15, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !265, line: 157, column: 13)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !265, line: 155, column: 25)
!1092 = !DILocation(line: 157, column: 13, scope: !1091)
!1093 = !DILocation(line: 158, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !265, line: 159, column: 11)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !265, line: 158, column: 11)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !265, line: 157, column: 22)
!1097 = !DILocation(line: 161, column: 9, scope: !1096)
!1098 = !DILocation(line: 159, column: 9, scope: !1091)
!1099 = distinct !{!1099, !1039, !1100}
!1100 = !DILocation(line: 142, column: 5, scope: !1040)
!1101 = !DILocation(line: 144, column: 5, scope: !1040)
!1102 = !DILocation(line: 129, column: 10, scope: !1010)
!1103 = distinct !{!1103, !1003, !1104}
!1104 = !DILocation(line: 130, column: 3, scope: !1004)
!1105 = !DILocation(line: 132, column: 3, scope: !1004)
!1106 = !DILocation(line: 136, column: 1, scope: !975)
!1107 = distinct !DISubprogram(name: "flex_init", scope: !265, file: !265, line: 165, type: !703, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1108 = !DILocalVariable(name: "device", arg: 1, scope: !1107, file: !265, line: 165, type: !19)
!1109 = !DILocation(line: 0, scope: !1107)
!1110 = !DILocalVariable(name: "__cil_tmp3", scope: !1107, file: !265, line: 168, type: !8)
!1111 = !DILocation(line: 168, column: 9, scope: !1107)
!1112 = !DILocation(line: 169, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !265, line: 169, column: 7)
!1114 = distinct !DILexicalBlock(scope: !1107, file: !265, line: 170, column: 3)
!1115 = !DILocation(line: 169, column: 7, scope: !1114)
!1116 = !DILocation(line: 170, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !265, line: 171, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !265, line: 170, column: 5)
!1119 = distinct !DILexicalBlock(scope: !1113, file: !265, line: 169, column: 14)
!1120 = !DILocation(line: 173, column: 3, scope: !1119)
!1121 = !DILocalVariable(name: "i", scope: !1107, file: !265, line: 167, type: !19)
!1122 = !DILocation(line: 173, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !265, line: 175, column: 3)
!1124 = distinct !DILexicalBlock(scope: !1114, file: !265, line: 174, column: 3)
!1125 = !DILocation(line: 0, scope: !1114)
!1126 = !DILocation(line: 173, column: 13, scope: !1123)
!1127 = !DILocation(line: 173, column: 14, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !265, line: 173, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !265, line: 173, column: 13)
!1130 = !DILocation(line: 173, column: 9, scope: !1129)
!1131 = !DILocation(line: 173, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !265, line: 173, column: 21)
!1133 = !DILocation(line: 175, column: 5, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !265, line: 176, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !265, line: 175, column: 5)
!1136 = !DILocation(line: 176, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !265, line: 177, column: 5)
!1138 = !DILocation(line: 173, column: 7, scope: !1135)
!1139 = distinct !{!1139, !1122, !1140}
!1140 = !DILocation(line: 175, column: 3, scope: !1123)
!1141 = !DILocation(line: 177, column: 3, scope: !1123)
!1142 = !DILocation(line: 178, column: 3, scope: !1114)
!1143 = distinct !DISubprogram(name: "set_D5", scope: !99, file: !99, line: 81, type: !396, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1144 = !DILocalVariable(name: "device", arg: 1, scope: !1143, file: !99, line: 81, type: !19)
!1145 = !DILocation(line: 0, scope: !1143)
!1146 = !DILocalVariable(name: "value", arg: 2, scope: !1143, file: !99, line: 81, type: !19)
!1147 = !DILocation(line: 84, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !99, line: 84, column: 7)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !99, line: 85, column: 3)
!1150 = !DILocation(line: 84, column: 7, scope: !1149)
!1151 = !DILocalVariable(name: "tmp", scope: !1143, file: !99, line: 83, type: !19)
!1152 = !DILocation(line: 85, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !99, line: 84, column: 19)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 84, column: 39, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !99, line: 87, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1149, file: !99, line: 86, column: 3)
!1158 = !DILocation(line: 84, column: 3, scope: !1156)
!1159 = !DILocation(line: 85, column: 3, scope: !1149)
!1160 = distinct !DISubprogram(name: "get_ACK", scope: !99, file: !99, line: 87, type: !366, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1161 = !DILocalVariable(name: "device", arg: 1, scope: !1160, file: !99, line: 87, type: !19)
!1162 = !DILocation(line: 0, scope: !1160)
!1163 = !DILocalVariable(name: "status", scope: !1160, file: !99, line: 89, type: !25)
!1164 = !DILocation(line: 89, column: 17, scope: !1160)
!1165 = !DILocation(line: 91, column: 3, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !99, line: 93, column: 3)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !99, line: 92, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !99, line: 91, column: 3)
!1169 = !DILocation(line: 92, column: 18, scope: !1168)
!1170 = !DILocation(line: 92, column: 12, scope: !1168)
!1171 = !DILocation(line: 92, column: 25, scope: !1168)
!1172 = !DILocation(line: 92, column: 31, scope: !1168)
!1173 = !DILocation(line: 92, column: 3, scope: !1168)
