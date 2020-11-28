; ModuleID = '/tmp/tmp.ll'
source_filename = "c/alac-decoder-0.1.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.alac_file = type { i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stream_tTAG = type { %struct._IO_FILE*, i32, i32 }
%struct.__anonstruct_demux_res_t_24 = type { i32, i16, i16, i32, i32, i8*, %struct.__anonstruct_time_to_sample_25*, i32, i32*, i32, i32, i8*, i32 }
%struct.__anonstruct_time_to_sample_25 = type { i32, i32 }
%struct.__anonstruct_qtmovie_t_25 = type { %struct.stream_tTAG*, %struct.__anonstruct_demux_res_t_24*, i64 }

@host_bigendian = global i32 0, align 4, !dbg !0
@alac = global %struct.alac_file* null, align 8, !dbg !160
@input_file = internal global %struct._IO_FILE* null, align 8, !dbg !167
@input_stream = internal global %struct.stream_tTAG* null, align 8, !dbg !163
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"failed to create input stream from file\0A\00", align 1
@test_file_type = internal global i32 0, align 4, !dbg !169
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to load the QuickTime movie headers\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" (file type: %c%c%c%c)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"failed to load the QUickTime movie headers. Probably not a quicktime file\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"file type: %c%c%c%c\0A\00", align 1
@write_wav_format = internal global i32 1, align 4, !dbg !171
@output_file = internal global %struct._IO_FILE* null, align 8, !dbg !173
@output_opened = internal global i32 0, align 4, !dbg !175
@input_opened = internal global i32 0, align 4, !dbg !177
@.str.6 = private unnamed_addr constant [50 x i8] c"FIXME: unimplemented, unhandling of wasted_bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"FIXME: unhandled predicition type: %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"FIXME: unimplemented sample size %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"need 64bit support\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"(top) unknown chunk id: %c%c%c%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@verbose = internal global i32 0, align 4, !dbg !165
@.str.14 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"failed to open output file '%s': \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"failed to open input file '%s': \00", align 1
@.str.21 = private unnamed_addr constant [553 x i8] c"Usage: alac [options] [--] file\0ADecompresses the ALAC file specified\0A\0AOptions:\0A  -f output.wav     outputs the decompressed data to the\0A                    specified file, in WAV format. Default\0A                    is stdout.\0A  -r                write output as raw PCM data. Default\0A                    is in WAV format.\0A  -v                verbose output.\0A  -t                test that file is ALAC, also tests for\0A                    other m4a file types.\0A\0AThis software is Copyright (c) 2005 David Hammerton\0AAll rights reserved\0Ahttp://crazney.net/\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"sample %i does not exist\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"no time to samples\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"sample %i does not have a duration\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sample failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"sorry buffer too small! (is %i want %i)\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"read %i bytes. total: %i\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"done reading, read %i frames\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"not M4A file\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"strange size for chunk inside moov\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"(moov) unknown chunk id: %c%c%c%c\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"strange size for chunk inside trak\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"(trak) unknown chunk id: %c%c%c%c\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"strange size for chunk inside mdia\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"(mdia) unknown chunk id: %c%c%c%c\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"unexpected size in media info\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"not a sound header! can't handle this.\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"expected dinf, didn't get it.\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"expected stbl, didn't get it.\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"strange size for chunk inside stbl (%lu) (remaining: %lu)\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(stbl) unknown chunk id: %c%c%c%c\0A\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"only expecting one entry in sample description atom!\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"unknown version??\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"ehm, size remianing?\0A\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"i was expecting variable samples sizes\0A\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"stream contains mdat before moov but is not seekable\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"error while seeking stream to mdat pos\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @wavwriter_writeheaders(%struct._IO_FILE* %f, i32 %datasize, i32 %numchannels, i32 %samplerate, i32 %bitspersample) #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %datasize, metadata !191, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %numchannels, metadata !192, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %samplerate, metadata !193, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %bitspersample, metadata !194, metadata !DIExpression()), !dbg !190
  call void @write_uint32(%struct._IO_FILE* %f, i32 1380533830, i32 1), !dbg !195
  %add = add nsw i32 36, %datasize, !dbg !199
  call void @write_uint32(%struct._IO_FILE* %f, i32 %add, i32 0), !dbg !201
  call void @write_uint32(%struct._IO_FILE* %f, i32 1463899717, i32 1), !dbg !202
  call void @write_uint32(%struct._IO_FILE* %f, i32 1718449184, i32 1), !dbg !204
  call void @write_uint32(%struct._IO_FILE* %f, i32 16, i32 0), !dbg !206
  call void @write_uint16(%struct._IO_FILE* %f, i16 zeroext 1, i32 0), !dbg !208
  %conv = trunc i32 %numchannels to i16, !dbg !210
  call void @write_uint16(%struct._IO_FILE* %f, i16 zeroext %conv, i32 0), !dbg !212
  call void @write_uint32(%struct._IO_FILE* %f, i32 %samplerate, i32 0), !dbg !213
  %mul = mul nsw i32 %samplerate, %numchannels, !dbg !215
  %div = sdiv i32 %bitspersample, 8, !dbg !217
  %mul1 = mul nsw i32 %mul, %div, !dbg !218
  call void @write_uint32(%struct._IO_FILE* %f, i32 %mul1, i32 0), !dbg !219
  %div2 = sdiv i32 %bitspersample, 8, !dbg !220
  %mul3 = mul nsw i32 %numchannels, %div2, !dbg !222
  %conv4 = trunc i32 %mul3 to i16, !dbg !223
  call void @write_uint16(%struct._IO_FILE* %f, i16 zeroext %conv4, i32 0), !dbg !224
  %conv5 = trunc i32 %bitspersample to i16, !dbg !225
  call void @write_uint16(%struct._IO_FILE* %f, i16 zeroext %conv5, i32 0), !dbg !227
  call void @write_uint32(%struct._IO_FILE* %f, i32 1684108385, i32 1), !dbg !228
  call void @write_uint32(%struct._IO_FILE* %f, i32 %datasize, i32 0), !dbg !230
  ret void, !dbg !232
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal void @write_uint32(%struct._IO_FILE* %f, i32 %v, i32 %bigendian) #0 !dbg !233 {
entry:
  %v.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v.addr, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %bigendian, metadata !240, metadata !DIExpression()), !dbg !237
  %0 = load i32, i32* @host_bigendian, align 4, !dbg !241
  %xor = xor i32 %bigendian, %0, !dbg !244
  %tobool = icmp ne i32 %xor, 0, !dbg !244
  br i1 %tobool, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !246

while.body:                                       ; preds = %if.then
  br label %while_continue___0, !dbg !250

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !250

while_continue:                                   ; preds = %while_continue___0
  %1 = load i32, i32* %v.addr, align 4, !dbg !251
  %and = and i32 %1, 255, !dbg !253
  %shl = shl i32 %and, 24, !dbg !254
  %2 = load i32, i32* %v.addr, align 4, !dbg !255
  %and1 = and i32 %2, 65280, !dbg !256
  %shl2 = shl i32 %and1, 8, !dbg !257
  %or = or i32 %shl, %shl2, !dbg !258
  %3 = load i32, i32* %v.addr, align 4, !dbg !259
  %and3 = and i32 %3, 16711680, !dbg !260
  %shr = lshr i32 %and3, 8, !dbg !261
  %or4 = or i32 %or, %shr, !dbg !262
  %4 = load i32, i32* %v.addr, align 4, !dbg !263
  %and5 = and i32 %4, -16777216, !dbg !264
  %shr6 = lshr i32 %and5, 24, !dbg !265
  %or7 = or i32 %or4, %shr6, !dbg !266
  store i32 %or7, i32* %v.addr, align 4, !dbg !267
  br label %while_break, !dbg !268

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !269

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !270

if.end:                                           ; preds = %while_break, %entry
  %5 = bitcast i32* %v.addr to i8*, !dbg !271
  %call = call i32 @fwrite(i8* %5, i32 4, i32 1, %struct._IO_FILE* %f), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @write_uint16(%struct._IO_FILE* %f, i16 zeroext %v, i32 %bigendian) #0 !dbg !276 {
entry:
  %v.addr = alloca i16, align 2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !279, metadata !DIExpression()), !dbg !280
  store i16 %v, i16* %v.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %v.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %bigendian, metadata !283, metadata !DIExpression()), !dbg !280
  %0 = load i32, i32* @host_bigendian, align 4, !dbg !284
  %xor = xor i32 %bigendian, %0, !dbg !287
  %tobool = icmp ne i32 %xor, 0, !dbg !287
  br i1 %tobool, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !289

while.body:                                       ; preds = %if.then
  br label %while_continue___0, !dbg !293

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !293

while_continue:                                   ; preds = %while_continue___0
  %1 = load i16, i16* %v.addr, align 2, !dbg !294
  %conv = zext i16 %1 to i32, !dbg !296
  %and = and i32 %conv, 255, !dbg !297
  %shl = shl i32 %and, 8, !dbg !298
  %2 = load i16, i16* %v.addr, align 2, !dbg !299
  %conv1 = zext i16 %2 to i32, !dbg !300
  %and2 = and i32 %conv1, 65280, !dbg !301
  %shr = ashr i32 %and2, 8, !dbg !302
  %or = or i32 %shl, %shr, !dbg !303
  %conv3 = trunc i32 %or to i16, !dbg !304
  store i16 %conv3, i16* %v.addr, align 2, !dbg !305
  br label %while_break, !dbg !306

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !307

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !308

if.end:                                           ; preds = %while_break, %entry
  %3 = bitcast i16* %v.addr to i8*, !dbg !309
  %call = call i32 @fwrite(i8* %3, i32 2, i32 1, %struct._IO_FILE* %f), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind ssp uwtable
define void @set_endian() #0 !dbg !314 {
entry:
  %integer = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %integer, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 170, i32* %integer, align 4, !dbg !319
  %0 = bitcast i32* %integer to i8*, !dbg !321
  call void @llvm.dbg.value(metadata i8* %0, metadata !322, metadata !DIExpression()), !dbg !323
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0, !dbg !324
  %1 = load i8, i8* %add.ptr, align 1, !dbg !326
  %conv = zext i8 %1 to i32, !dbg !327
  %cmp = icmp eq i32 %conv, 170, !dbg !328
  br i1 %cmp, label %if.then, label %if.else, !dbg !329

if.then:                                          ; preds = %entry
  store i32 0, i32* @host_bigendian, align 4, !dbg !330
  br label %if.end, !dbg !332

if.else:                                          ; preds = %entry
  store i32 1, i32* @host_bigendian, align 4, !dbg !333
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !336 {
entry:
  %demux_res = alloca %struct.__anonstruct_demux_res_t_24, align 8
  %thissample_duration = alloca i32, align 4
  %thissample_bytesize = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i8** %argv, metadata !342, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_demux_res_t_24* %demux_res, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %thissample_duration, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %thissample_bytesize, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata !4, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata !4, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata !4, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata !4, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata !4, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata !4, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = bitcast %struct.__anonstruct_demux_res_t_24* %demux_res to i8*, !dbg !361
  %call = call i8* @memset(i8* %0, i32 0, i32 72) #7, !dbg !365
  call void @set_endian(), !dbg !366
  call void @setup_environment(i32 %argc, i8** %argv), !dbg !368
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @input_file, align 8, !dbg !370
  %call1 = call %struct.stream_tTAG* @stream_create_file(%struct._IO_FILE* %1, i32 1), !dbg !372
  store %struct.stream_tTAG* %call1, %struct.stream_tTAG** @input_stream, align 8, !dbg !373
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** @input_stream, align 8, !dbg !374
  %tobool = icmp ne %struct.stream_tTAG* %2, null, !dbg !374
  br i1 %tobool, label %if.end, label %if.then, !dbg !376

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)), !dbg !381
  br label %return, !dbg !382

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** @input_stream, align 8, !dbg !383
  %call3 = call i32 @qtmovie_read(%struct.stream_tTAG* %4, %struct.__anonstruct_demux_res_t_24* %demux_res), !dbg !386
  call void @llvm.dbg.value(metadata i32 %call3, metadata !387, metadata !DIExpression()), !dbg !341
  %tobool4 = icmp ne i32 %call3, 0, !dbg !388
  br i1 %tobool4, label %if.end32, label %if.then5, !dbg !390

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* @test_file_type, align 4, !dbg !391
  %tobool6 = icmp ne i32 %5, 0, !dbg !391
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !394

if.then7:                                         ; preds = %if.then5
  br label %_L, !dbg !395

if.else:                                          ; preds = %if.then5
  %format_read = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 0, !dbg !397
  %6 = load i32, i32* %format_read, align 8, !dbg !397
  %tobool8 = icmp ne i32 %6, 0, !dbg !399
  br i1 %tobool8, label %if.end30, label %if.then9, !dbg !400

if.then9:                                         ; preds = %if.else
  br label %_L, !dbg !401

_L:                                               ; preds = %if.then9, %if.then7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !402
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)), !dbg !406
  %format_read11 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 0, !dbg !407
  %8 = load i32, i32* %format_read11, align 8, !dbg !407
  %tobool12 = icmp ne i32 %8, 0, !dbg !409
  br i1 %tobool12, label %if.then13, label %if.else27, !dbg !410

if.then13:                                        ; preds = %_L
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !411
  %format = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !415
  %10 = load i32, i32* %format, align 4, !dbg !415
  %shr = ashr i32 %10, 24, !dbg !416
  %conv = trunc i32 %shr to i8, !dbg !417
  %conv14 = sext i8 %conv to i32, !dbg !418
  %format15 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !419
  %11 = load i32, i32* %format15, align 4, !dbg !419
  %shr16 = ashr i32 %11, 16, !dbg !420
  %conv17 = trunc i32 %shr16 to i8, !dbg !421
  %conv18 = sext i8 %conv17 to i32, !dbg !422
  %format19 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !423
  %12 = load i32, i32* %format19, align 4, !dbg !423
  %shr20 = ashr i32 %12, 8, !dbg !424
  %conv21 = trunc i32 %shr20 to i8, !dbg !425
  %conv22 = sext i8 %conv21 to i32, !dbg !426
  %format23 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !427
  %13 = load i32, i32* %format23, align 4, !dbg !427
  %conv24 = trunc i32 %13 to i8, !dbg !428
  %conv25 = sext i8 %conv24 to i32, !dbg !429
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %conv14, i32 %conv18, i32 %conv22, i32 %conv25), !dbg !430
  br label %if.end29, !dbg !431

if.else27:                                        ; preds = %_L
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !432
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !436
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then13
  br label %return, !dbg !437

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %if.end32, !dbg !438

if.end32:                                         ; preds = %if.end31, %if.end
  %15 = load i32, i32* @test_file_type, align 4, !dbg !439
  %tobool33 = icmp ne i32 %15, 0, !dbg !439
  br i1 %tobool33, label %if.then34, label %if.end65, !dbg !441

if.then34:                                        ; preds = %if.end32
  %format_read35 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 0, !dbg !442
  %16 = load i32, i32* %format_read35, align 8, !dbg !442
  %tobool36 = icmp ne i32 %16, 0, !dbg !445
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !446

if.then37:                                        ; preds = %if.then34
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !447
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0)), !dbg !451
  br label %return, !dbg !452

if.end39:                                         ; preds = %if.then34
  %format40 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !453
  %18 = load i32, i32* %format40, align 4, !dbg !453
  %shr41 = ashr i32 %18, 24, !dbg !456
  %conv42 = trunc i32 %shr41 to i8, !dbg !457
  %conv43 = sext i8 %conv42 to i32, !dbg !458
  %format44 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !459
  %19 = load i32, i32* %format44, align 4, !dbg !459
  %shr45 = ashr i32 %19, 16, !dbg !460
  %conv46 = trunc i32 %shr45 to i8, !dbg !461
  %conv47 = sext i8 %conv46 to i32, !dbg !462
  %format48 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !463
  %20 = load i32, i32* %format48, align 4, !dbg !463
  %shr49 = ashr i32 %20, 8, !dbg !464
  %conv50 = trunc i32 %shr49 to i8, !dbg !465
  %conv51 = sext i8 %conv50 to i32, !dbg !466
  %format52 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !467
  %21 = load i32, i32* %format52, align 4, !dbg !467
  %conv53 = trunc i32 %21 to i8, !dbg !468
  %conv54 = sext i8 %conv53 to i32, !dbg !469
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %conv43, i32 %conv47, i32 %conv51, i32 %conv54), !dbg !470
  %format56 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !471
  %22 = load i32, i32* %format56, align 4, !dbg !471
  %cmp = icmp eq i32 %22, 1634492771, !dbg !474
  br i1 %cmp, label %if.then58, label %if.end59, !dbg !475

if.then58:                                        ; preds = %if.end39
  br label %case_exp, !dbg !476

if.end59:                                         ; preds = %if.end39
  %format60 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 4, !dbg !478
  %23 = load i32, i32* %format60, align 4, !dbg !478
  %cmp61 = icmp eq i32 %23, 1836069985, !dbg !480
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !481

if.then63:                                        ; preds = %if.end59
  br label %case_exp___0, !dbg !482

if.end64:                                         ; preds = %if.end59
  br label %switch_break, !dbg !484

case_exp:                                         ; preds = %if.then58
  br label %return, !dbg !485

case_exp___0:                                     ; preds = %if.then63
  br label %return, !dbg !486

switch_break:                                     ; preds = %if.end64
  br label %return, !dbg !487

if.end65:                                         ; preds = %if.end32
  call void @init_sound_converter(%struct.__anonstruct_demux_res_t_24* %demux_res), !dbg !488
  %24 = load i32, i32* @write_wav_format, align 4, !dbg !491
  %tobool66 = icmp ne i32 %24, 0, !dbg !491
  br i1 %tobool66, label %if.then67, label %if.end80, !dbg !493

if.then67:                                        ; preds = %if.end65
  call void @llvm.dbg.value(metadata i32 0, metadata !494, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !341
  br label %while.body, !dbg !496

while.body:                                       ; preds = %if.end71, %if.then67
  %output_size.0 = phi i32 [ 0, %if.then67 ], [ %add, %if.end71 ], !dbg !500
  %i.0 = phi i32 [ 0, %if.then67 ], [ %inc, %if.end71 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !495, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %output_size.0, metadata !494, metadata !DIExpression()), !dbg !341
  br label %while_continue___0, !dbg !501

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !501

while_continue:                                   ; preds = %while_continue___0
  %num_sample_byte_sizes = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 9, !dbg !502
  %25 = load i32, i32* %num_sample_byte_sizes, align 8, !dbg !502
  %cmp68 = icmp ult i32 %i.0, %25, !dbg !505
  br i1 %cmp68, label %if.end71, label %if.then70, !dbg !506

if.then70:                                        ; preds = %while_continue
  br label %while_break, !dbg !507

if.end71:                                         ; preds = %while_continue
  store i32 0, i32* %thissample_duration, align 4, !dbg !509
  store i32 0, i32* %thissample_bytesize, align 4, !dbg !511
  %call72 = call i32 @get_sample_info(%struct.__anonstruct_demux_res_t_24* %demux_res, i32 %i.0, i32* %thissample_duration, i32* %thissample_bytesize), !dbg !512
  %26 = load i32, i32* %thissample_duration, align 4, !dbg !514
  %sample_size = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 2, !dbg !515
  %27 = load i16, i16* %sample_size, align 2, !dbg !515
  %conv73 = zext i16 %27 to i32, !dbg !516
  %div = sdiv i32 %conv73, 8, !dbg !517
  %mul = mul i32 %26, %div, !dbg !518
  %num_channels = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 1, !dbg !519
  %28 = load i16, i16* %num_channels, align 4, !dbg !519
  %conv74 = zext i16 %28 to i32, !dbg !520
  %mul75 = mul i32 %mul, %conv74, !dbg !521
  %add = add i32 %output_size.0, %mul75, !dbg !522
  call void @llvm.dbg.value(metadata i32 %add, metadata !494, metadata !DIExpression()), !dbg !341
  %inc = add i32 %i.0, 1, !dbg !523
  call void @llvm.dbg.value(metadata i32 %inc, metadata !495, metadata !DIExpression()), !dbg !341
  br label %while.body, !dbg !496, !llvm.loop !524

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !526

while_break:                                      ; preds = %while_break___0, %if.then70
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @output_file, align 8, !dbg !527
  %num_channels76 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 1, !dbg !530
  %30 = load i16, i16* %num_channels76, align 4, !dbg !530
  %conv77 = zext i16 %30 to i32, !dbg !531
  %sample_rate = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 3, !dbg !532
  %31 = load i32, i32* %sample_rate, align 8, !dbg !532
  %sample_size78 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 2, !dbg !533
  %32 = load i16, i16* %sample_size78, align 2, !dbg !533
  %conv79 = zext i16 %32 to i32, !dbg !534
  call void @wavwriter_writeheaders(%struct._IO_FILE* %29, i32 %output_size.0, i32 %conv77, i32 %31, i32 %conv79), !dbg !535
  br label %if.end80, !dbg !536

if.end80:                                         ; preds = %while_break, %if.end65
  call void @GetBuffer(%struct.__anonstruct_demux_res_t_24* %demux_res), !dbg !537
  %33 = load %struct.stream_tTAG*, %struct.stream_tTAG** @input_stream, align 8, !dbg !540
  call void @stream_destroy(%struct.stream_tTAG* %33), !dbg !542
  %34 = load i32, i32* @output_opened, align 4, !dbg !543
  %tobool81 = icmp ne i32 %34, 0, !dbg !543
  br i1 %tobool81, label %if.then82, label %if.end84, !dbg !545

if.then82:                                        ; preds = %if.end80
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @output_file, align 8, !dbg !546
  %call83 = call i32 @fclose(%struct._IO_FILE* %35), !dbg !550
  br label %if.end84, !dbg !551

if.end84:                                         ; preds = %if.then82, %if.end80
  %36 = load i32, i32* @input_opened, align 4, !dbg !552
  %tobool85 = icmp ne i32 %36, 0, !dbg !552
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !554

if.then86:                                        ; preds = %if.end84
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @input_file, align 8, !dbg !555
  %call87 = call i32 @fclose(%struct._IO_FILE* %37), !dbg !559
  br label %if.end88, !dbg !560

if.end88:                                         ; preds = %if.then86, %if.end84
  br label %return, !dbg !561

return:                                           ; preds = %if.end88, %switch_break, %case_exp___0, %case_exp, %if.then37, %if.end29, %if.then
  %retval.0 = phi i32 [ 0, %case_exp ], [ 100, %case_exp___0 ], [ 1, %switch_break ], [ 1, %if.then37 ], [ 0, %if.end88 ], [ 1, %if.end29 ], [ 1, %if.then ], !dbg !562
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @setup_environment(i32 %argc, i8** %argv) #0 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8** %argv, metadata !569, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata !4, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata !4, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata !4, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata !4, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata !4, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata !4, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata !4, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata !4, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata !4, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata !4, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %argc, metadata !590, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* null, metadata !591, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* null, metadata !592, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 0, metadata !593, metadata !DIExpression()), !dbg !568
  %cmp = icmp slt i32 %argc, 2, !dbg !594
  br i1 %cmp, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %entry
  call void @usage(), !dbg !598
  br label %if.end, !dbg !602

if.end:                                           ; preds = %if.then, %entry
  %sub = sub nsw i32 %argc, 1, !dbg !603
  call void @llvm.dbg.value(metadata i32 %sub, metadata !590, metadata !DIExpression()), !dbg !568
  br label %while.body, !dbg !604

while.body:                                       ; preds = %if.end47, %if.end
  %i.0 = phi i32 [ %sub, %if.end ], [ %dec48, %if.end47 ], !dbg !607
  %output_file_n.0 = phi i8* [ null, %if.end ], [ %output_file_n.1, %if.end47 ], !dbg !607
  %escaped.0 = phi i32 [ 0, %if.end ], [ %escaped.5, %if.end47 ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %escaped.0, metadata !593, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %output_file_n.0, metadata !592, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !590, metadata !DIExpression()), !dbg !568
  br label %while_continue___0, !dbg !609

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !609

while_continue:                                   ; preds = %while_continue___0
  %cmp1 = icmp sgt i32 %i.0, 1, !dbg !610
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !613

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !614

if.end3:                                          ; preds = %while_continue
  %sub4 = sub nsw i32 %argc, %i.0, !dbg !616
  %idx.ext = sext i32 %sub4 to i64, !dbg !619
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !619
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !620
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !621
  call void @llvm.dbg.value(metadata i32 %call, metadata !622, metadata !DIExpression()), !dbg !568
  %cmp5 = icmp eq i32 %call, 0, !dbg !623
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !625

if.then6:                                         ; preds = %if.end3
  %dec = add nsw i32 %i.0, -1, !dbg !626
  call void @llvm.dbg.value(metadata i32 %dec, metadata !590, metadata !DIExpression()), !dbg !568
  %tobool = icmp ne i32 %dec, 0, !dbg !628
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !630

if.then7:                                         ; preds = %if.then6
  call void @usage(), !dbg !631
  br label %if.end8, !dbg !635

if.end8:                                          ; preds = %if.then7, %if.then6
  %sub9 = sub nsw i32 %argc, %dec, !dbg !636
  %idx.ext10 = sext i32 %sub9 to i64, !dbg !637
  %add.ptr11 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext10, !dbg !637
  %1 = load i8*, i8** %add.ptr11, align 8, !dbg !638
  call void @llvm.dbg.value(metadata i8* %1, metadata !592, metadata !DIExpression()), !dbg !568
  br label %if.end47, !dbg !639

if.else:                                          ; preds = %if.end3
  %sub12 = sub nsw i32 %argc, %i.0, !dbg !640
  %idx.ext13 = sext i32 %sub12 to i64, !dbg !644
  %add.ptr14 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext13, !dbg !644
  %2 = load i8*, i8** %add.ptr14, align 8, !dbg !645
  %call15 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !646
  call void @llvm.dbg.value(metadata i32 %call15, metadata !647, metadata !DIExpression()), !dbg !568
  %cmp16 = icmp eq i32 %call15, 0, !dbg !648
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !650

if.then17:                                        ; preds = %if.else
  store i32 0, i32* @write_wav_format, align 4, !dbg !651
  br label %if.end46, !dbg !653

if.else18:                                        ; preds = %if.else
  %sub19 = sub nsw i32 %argc, %i.0, !dbg !654
  %idx.ext20 = sext i32 %sub19 to i64, !dbg !658
  %add.ptr21 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext20, !dbg !658
  %3 = load i8*, i8** %add.ptr21, align 8, !dbg !659
  %call22 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !660
  call void @llvm.dbg.value(metadata i32 %call22, metadata !661, metadata !DIExpression()), !dbg !568
  %cmp23 = icmp eq i32 %call22, 0, !dbg !662
  br i1 %cmp23, label %if.then24, label %if.else25, !dbg !664

if.then24:                                        ; preds = %if.else18
  store i32 1, i32* @verbose, align 4, !dbg !665
  br label %if.end45, !dbg !667

if.else25:                                        ; preds = %if.else18
  %sub26 = sub nsw i32 %argc, %i.0, !dbg !668
  %idx.ext27 = sext i32 %sub26 to i64, !dbg !672
  %add.ptr28 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext27, !dbg !672
  %4 = load i8*, i8** %add.ptr28, align 8, !dbg !673
  %call29 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !674
  call void @llvm.dbg.value(metadata i32 %call29, metadata !675, metadata !DIExpression()), !dbg !568
  %cmp30 = icmp eq i32 %call29, 0, !dbg !676
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !678

if.then31:                                        ; preds = %if.else25
  store i32 1, i32* @test_file_type, align 4, !dbg !679
  br label %if.end44, !dbg !681

if.else32:                                        ; preds = %if.else25
  %sub33 = sub nsw i32 %argc, %i.0, !dbg !682
  %idx.ext34 = sext i32 %sub33 to i64, !dbg !686
  %add.ptr35 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext34, !dbg !686
  %5 = load i8*, i8** %add.ptr35, align 8, !dbg !687
  %call36 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !688
  call void @llvm.dbg.value(metadata i32 %call36, metadata !689, metadata !DIExpression()), !dbg !568
  %cmp37 = icmp eq i32 %call36, 0, !dbg !690
  br i1 %cmp37, label %if.then38, label %if.else42, !dbg !692

if.then38:                                        ; preds = %if.else32
  %cmp39 = icmp ne i32 %i.0, 2, !dbg !693
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !696

if.then40:                                        ; preds = %if.then38
  call void @usage(), !dbg !697
  br label %if.end41, !dbg !701

if.end41:                                         ; preds = %if.then40, %if.then38
  call void @llvm.dbg.value(metadata i32 1, metadata !593, metadata !DIExpression()), !dbg !568
  br label %if.end43, !dbg !702

if.else42:                                        ; preds = %if.else32
  call void @usage(), !dbg !703
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  %escaped.1 = phi i32 [ 1, %if.end41 ], [ %escaped.0, %if.else42 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %escaped.1, metadata !593, metadata !DIExpression()), !dbg !568
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then31
  %escaped.2 = phi i32 [ %escaped.0, %if.then31 ], [ %escaped.1, %if.end43 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %escaped.2, metadata !593, metadata !DIExpression()), !dbg !568
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then24
  %escaped.3 = phi i32 [ %escaped.0, %if.then24 ], [ %escaped.2, %if.end44 ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %escaped.3, metadata !593, metadata !DIExpression()), !dbg !568
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then17
  %escaped.4 = phi i32 [ %escaped.0, %if.then17 ], [ %escaped.3, %if.end45 ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %escaped.4, metadata !593, metadata !DIExpression()), !dbg !568
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end8
  %i.1 = phi i32 [ %dec, %if.end8 ], [ %i.0, %if.end46 ], !dbg !607
  %output_file_n.1 = phi i8* [ %1, %if.end8 ], [ %output_file_n.0, %if.end46 ], !dbg !607
  %escaped.5 = phi i32 [ %escaped.0, %if.end8 ], [ %escaped.4, %if.end46 ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %escaped.5, metadata !593, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %output_file_n.1, metadata !592, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !590, metadata !DIExpression()), !dbg !568
  %dec48 = add nsw i32 %i.1, -1, !dbg !707
  call void @llvm.dbg.value(metadata i32 %dec48, metadata !590, metadata !DIExpression()), !dbg !568
  br label %while.body, !dbg !604, !llvm.loop !708

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !710

while_break:                                      ; preds = %while_break___0, %if.then2
  %cmp49 = icmp ne i32 %i.0, 1, !dbg !711
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !713

if.then50:                                        ; preds = %while_break
  call void @usage(), !dbg !714
  br label %if.end51, !dbg !718

if.end51:                                         ; preds = %if.then50, %while_break
  %sub52 = sub nsw i32 %argc, 1, !dbg !719
  %idx.ext53 = sext i32 %sub52 to i64, !dbg !720
  %add.ptr54 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext53, !dbg !720
  %6 = load i8*, i8** %add.ptr54, align 8, !dbg !721
  call void @llvm.dbg.value(metadata i8* %6, metadata !591, metadata !DIExpression()), !dbg !568
  %tobool55 = icmp ne i32 %escaped.0, 0, !dbg !722
  br i1 %tobool55, label %if.end68, label %if.then56, !dbg !724

if.then56:                                        ; preds = %if.end51
  %add.ptr57 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !725
  %7 = load i8, i8* %add.ptr57, align 1, !dbg !728
  %conv = sext i8 %7 to i32, !dbg !729
  %cmp58 = icmp eq i32 %conv, 45, !dbg !730
  br i1 %cmp58, label %if.then60, label %if.end67, !dbg !731

if.then60:                                        ; preds = %if.then56
  %add.ptr61 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !732
  %8 = load i8, i8* %add.ptr61, align 1, !dbg !735
  %conv62 = sext i8 %8 to i32, !dbg !736
  %cmp63 = icmp ne i32 %conv62, 0, !dbg !737
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !738

if.then65:                                        ; preds = %if.then60
  call void @usage(), !dbg !739
  br label %if.end66, !dbg !743

if.end66:                                         ; preds = %if.then65, %if.then60
  br label %if.end67, !dbg !744

if.end67:                                         ; preds = %if.end66, %if.then56
  br label %if.end68, !dbg !745

if.end68:                                         ; preds = %if.end67, %if.end51
  %tobool69 = icmp ne i8* %6, null, !dbg !746
  br i1 %tobool69, label %if.end71, label %if.then70, !dbg !748

if.then70:                                        ; preds = %if.end68
  call void @usage(), !dbg !749
  br label %if.end71, !dbg !753

if.end71:                                         ; preds = %if.then70, %if.end68
  %tobool72 = icmp ne i8* %output_file_n.0, null, !dbg !754
  br i1 %tobool72, label %if.then73, label %if.else79, !dbg !756

if.then73:                                        ; preds = %if.end71
  %call74 = call %struct._IO_FILE* @fopen(i8* %output_file_n.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)), !dbg !757
  store %struct._IO_FILE* %call74, %struct._IO_FILE** @output_file, align 8, !dbg !761
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @output_file, align 8, !dbg !762
  %tobool75 = icmp ne %struct._IO_FILE* %9, null, !dbg !762
  br i1 %tobool75, label %if.end78, label %if.then76, !dbg !764

if.then76:                                        ; preds = %if.then73
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !765
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* %output_file_n.0), !dbg !769
  call void @perror(i8* null), !dbg !770
  call void @exit(i32 1) #9, !dbg !772
  unreachable, !dbg !772

if.end78:                                         ; preds = %if.then73
  store i32 1, i32* @output_opened, align 4, !dbg !774
  br label %if.end80, !dbg !775

if.else79:                                        ; preds = %if.end71
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776
  store %struct._IO_FILE* %11, %struct._IO_FILE** @output_file, align 8, !dbg !778
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.end78
  %call81 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !779
  call void @llvm.dbg.value(metadata i32 %call81, metadata !782, metadata !DIExpression()), !dbg !568
  %cmp82 = icmp eq i32 %call81, 0, !dbg !783
  br i1 %cmp82, label %if.then84, label %if.else85, !dbg !785

if.then84:                                        ; preds = %if.end80
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !786
  store %struct._IO_FILE* %12, %struct._IO_FILE** @input_file, align 8, !dbg !788
  br label %if.end91, !dbg !789

if.else85:                                        ; preds = %if.end80
  %call86 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)), !dbg !790
  store %struct._IO_FILE* %call86, %struct._IO_FILE** @input_file, align 8, !dbg !794
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @input_file, align 8, !dbg !795
  %tobool87 = icmp ne %struct._IO_FILE* %13, null, !dbg !795
  br i1 %tobool87, label %if.end90, label %if.then88, !dbg !797

if.then88:                                        ; preds = %if.else85
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !798
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* %6), !dbg !802
  call void @perror(i8* null), !dbg !803
  call void @exit(i32 1) #9, !dbg !805
  unreachable, !dbg !805

if.end90:                                         ; preds = %if.else85
  store i32 1, i32* @input_opened, align 4, !dbg !807
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then84
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.stream_tTAG* @stream_create_file(%struct._IO_FILE* %file, i32 %bigendian) #0 !dbg !809 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %bigendian, metadata !814, metadata !DIExpression()), !dbg !813
  %call = call noalias i8* @malloc(i32 16) #7, !dbg !815
  call void @llvm.dbg.value(metadata i8* %call, metadata !819, metadata !DIExpression()), !dbg !813
  %0 = bitcast i8* %call to %struct.stream_tTAG*, !dbg !820
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %0, metadata !821, metadata !DIExpression()), !dbg !813
  %f = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %0, i32 0, i32 0, !dbg !822
  store %struct._IO_FILE* %file, %struct._IO_FILE** %f, align 8, !dbg !823
  %bigendian1 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %0, i32 0, i32 1, !dbg !824
  store i32 %bigendian, i32* %bigendian1, align 8, !dbg !825
  %eof = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %0, i32 0, i32 2, !dbg !826
  store i32 0, i32* %eof, align 4, !dbg !827
  ret %struct.stream_tTAG* %0, !dbg !828
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @qtmovie_read(%struct.stream_tTAG* %file, %struct.__anonstruct_demux_res_t_24* %demux_res) #0 !dbg !829 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %file, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata %struct.__anonstruct_demux_res_t_24* %demux_res, metadata !834, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata !4, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata !4, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 0, metadata !839, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !840, metadata !DIExpression()), !dbg !833
  %call = call noalias i8* @malloc(i32 24) #7, !dbg !841
  call void @llvm.dbg.value(metadata i8* %call, metadata !845, metadata !DIExpression()), !dbg !833
  %0 = bitcast i8* %call to %struct.__anonstruct_qtmovie_t_25*, !dbg !846
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %0, metadata !847, metadata !DIExpression()), !dbg !833
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 0, !dbg !848
  store %struct.stream_tTAG* %file, %struct.stream_tTAG** %stream, align 8, !dbg !849
  %res = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 1, !dbg !850
  store %struct.__anonstruct_demux_res_t_24* %demux_res, %struct.__anonstruct_demux_res_t_24** %res, align 8, !dbg !851
  %1 = bitcast %struct.__anonstruct_demux_res_t_24* %demux_res to i8*, !dbg !852
  %call1 = call i8* @memset(i8* %1, i32 0, i32 72) #7, !dbg !854
  br label %while.body, !dbg !855

while.body:                                       ; preds = %switch_break, %entry
  %found_moov.0 = phi i32 [ 0, %entry ], [ %found_moov.1, %switch_break ], !dbg !858
  %found_mdat.0 = phi i32 [ 0, %entry ], [ %found_mdat.1, %switch_break ], !dbg !859
  call void @llvm.dbg.value(metadata i32 %found_mdat.0, metadata !840, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 %found_moov.0, metadata !839, metadata !DIExpression()), !dbg !833
  br label %while_continue___0, !dbg !860

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !860

while_continue:                                   ; preds = %while_continue___0
  %stream2 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 0, !dbg !861
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream2, align 8, !dbg !861
  %call3 = call i32 @stream_read_uint32(%struct.stream_tTAG* %2), !dbg !865
  call void @llvm.dbg.value(metadata i32 %call3, metadata !866, metadata !DIExpression()), !dbg !833
  %stream4 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 0, !dbg !867
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream4, align 8, !dbg !867
  %call5 = call i32 @stream_eof(%struct.stream_tTAG* %3), !dbg !869
  call void @llvm.dbg.value(metadata i32 %call5, metadata !870, metadata !DIExpression()), !dbg !833
  %tobool = icmp ne i32 %call5, 0, !dbg !871
  br i1 %tobool, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %while_continue
  br label %return, !dbg !874

if.end:                                           ; preds = %while_continue
  %cmp = icmp eq i32 %call3, 1, !dbg !876
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !878

if.then6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !879
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)), !dbg !883
  br label %return, !dbg !884

if.end8:                                          ; preds = %if.end
  %stream9 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 0, !dbg !885
  %5 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream9, align 8, !dbg !885
  %call10 = call i32 @stream_read_uint32(%struct.stream_tTAG* %5), !dbg !888
  call void @llvm.dbg.value(metadata i32 %call10, metadata !889, metadata !DIExpression()), !dbg !833
  %cmp11 = icmp eq i32 %call10, 1718909296, !dbg !890
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !893

if.then12:                                        ; preds = %if.end8
  br label %case_exp, !dbg !894

if.end13:                                         ; preds = %if.end8
  %cmp14 = icmp eq i32 %call10, 1836019574, !dbg !896
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !898

if.then15:                                        ; preds = %if.end13
  br label %case_exp___0, !dbg !899

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %call10, 1835295092, !dbg !901
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !903

if.then18:                                        ; preds = %if.end16
  br label %case_exp___1, !dbg !904

if.end19:                                         ; preds = %if.end16
  %cmp20 = icmp eq i32 %call10, 1718773093, !dbg !906
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !908

if.then21:                                        ; preds = %if.end19
  br label %case_exp___2, !dbg !909

if.end22:                                         ; preds = %if.end19
  br label %switch_default, !dbg !911

case_exp:                                         ; preds = %if.then12
  call void @read_chunk_ftyp(%struct.__anonstruct_qtmovie_t_25* %0, i32 %call3), !dbg !912
  br label %switch_break, !dbg !915

case_exp___0:                                     ; preds = %if.then15
  %call23 = call i32 @read_chunk_moov(%struct.__anonstruct_qtmovie_t_25* %0, i32 %call3), !dbg !916
  call void @llvm.dbg.value(metadata i32 %call23, metadata !919, metadata !DIExpression()), !dbg !833
  %cmp24 = icmp eq i32 %call23, 0, !dbg !920
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !922

if.then25:                                        ; preds = %case_exp___0
  br label %return, !dbg !923

if.end26:                                         ; preds = %case_exp___0
  %tobool27 = icmp ne i32 %found_mdat.0, 0, !dbg !925
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !927

if.then28:                                        ; preds = %if.end26
  %call29 = call i32 @set_saved_mdat(%struct.__anonstruct_qtmovie_t_25* %0), !dbg !928
  call void @llvm.dbg.value(metadata i32 %call29, metadata !932, metadata !DIExpression()), !dbg !833
  br label %return, !dbg !933

if.end30:                                         ; preds = %if.end26
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()), !dbg !833
  br label %switch_break, !dbg !934

case_exp___1:                                     ; preds = %if.then18
  %tobool31 = icmp ne i32 %found_moov.0, 0, !dbg !935
  %lnot = xor i1 %tobool31, true, !dbg !935
  %lnot.ext = zext i1 %lnot to i32, !dbg !935
  call void @read_chunk_mdat(%struct.__anonstruct_qtmovie_t_25* %0, i32 %call3, i32 %lnot.ext), !dbg !938
  %tobool32 = icmp ne i32 %found_moov.0, 0, !dbg !939
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !941

if.then33:                                        ; preds = %case_exp___1
  br label %return, !dbg !942

if.end34:                                         ; preds = %case_exp___1
  call void @llvm.dbg.value(metadata i32 1, metadata !840, metadata !DIExpression()), !dbg !833
  br label %switch_break, !dbg !944

case_exp___2:                                     ; preds = %if.then21
  %stream35 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %0, i32 0, i32 0, !dbg !945
  %6 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream35, align 8, !dbg !945
  %sub = sub i32 %call3, 8, !dbg !948
  call void @stream_skip(%struct.stream_tTAG* %6, i32 %sub), !dbg !949
  br label %switch_break, !dbg !950

switch_default:                                   ; preds = %if.end22
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !951
  %shr = ashr i32 %call10, 24, !dbg !954
  %conv = trunc i32 %shr to i8, !dbg !955
  %conv36 = sext i8 %conv to i32, !dbg !956
  %shr37 = ashr i32 %call10, 16, !dbg !957
  %conv38 = trunc i32 %shr37 to i8, !dbg !958
  %conv39 = sext i8 %conv38 to i32, !dbg !959
  %shr40 = ashr i32 %call10, 8, !dbg !960
  %conv41 = trunc i32 %shr40 to i8, !dbg !961
  %conv42 = sext i8 %conv41 to i32, !dbg !962
  %conv43 = trunc i32 %call10 to i8, !dbg !963
  %conv44 = sext i8 %conv43 to i32, !dbg !964
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i32 %conv36, i32 %conv39, i32 %conv42, i32 %conv44), !dbg !965
  br label %return, !dbg !966

switch_break:                                     ; preds = %case_exp___2, %if.end34, %if.end30, %case_exp
  %found_moov.1 = phi i32 [ %found_moov.0, %case_exp ], [ 1, %if.end30 ], [ %found_moov.0, %if.end34 ], [ %found_moov.0, %case_exp___2 ], !dbg !967
  %found_mdat.1 = phi i32 [ %found_mdat.0, %case_exp ], [ %found_mdat.0, %if.end30 ], [ 1, %if.end34 ], [ %found_mdat.0, %case_exp___2 ], !dbg !967
  call void @llvm.dbg.value(metadata i32 %found_mdat.1, metadata !840, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 %found_moov.1, metadata !839, metadata !DIExpression()), !dbg !833
  br label %while.body, !dbg !855, !llvm.loop !968

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !970

while_break:                                      ; preds = %while_break___0
  store i32 0, i32* undef, align 4, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %while_break, %switch_default, %if.then33, %if.then28, %if.then25, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then25 ], [ %call29, %if.then28 ], [ 1, %if.then33 ], [ 0, %switch_default ], [ undef, %while_break ], !dbg !972
  ret i32 %retval.0, !dbg !973
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @init_sound_converter(%struct.__anonstruct_demux_res_t_24* %demux_res) #0 !dbg !974 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_demux_res_t_24* %demux_res, metadata !977, metadata !DIExpression()), !dbg !978
  %sample_size = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 2, !dbg !979
  %0 = load i16, i16* %sample_size, align 2, !dbg !979
  %conv = zext i16 %0 to i32, !dbg !983
  %num_channels = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 1, !dbg !984
  %1 = load i16, i16* %num_channels, align 4, !dbg !984
  %conv1 = zext i16 %1 to i32, !dbg !985
  %call = call %struct.alac_file* @create_alac(i32 %conv, i32 %conv1), !dbg !986
  store %struct.alac_file* %call, %struct.alac_file** @alac, align 8, !dbg !987
  %2 = load %struct.alac_file*, %struct.alac_file** @alac, align 8, !dbg !988
  %codecdata = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 11, !dbg !990
  %3 = load i8*, i8** %codecdata, align 8, !dbg !990
  call void @alac_set_info(%struct.alac_file* %2, i8* %3), !dbg !991
  ret void, !dbg !992
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @get_sample_info(%struct.__anonstruct_demux_res_t_24* %demux_res, i32 %samplenum, i32* %sample_duration, i32* %sample_byte_size) #0 !dbg !993 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_demux_res_t_24* %demux_res, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %samplenum, metadata !998, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32* %sample_duration, metadata !999, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32* %sample_byte_size, metadata !1000, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata !4, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata !4, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata !4, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i32 0, metadata !1007, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()), !dbg !997
  %num_sample_byte_sizes = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 9, !dbg !1009
  %0 = load i32, i32* %num_sample_byte_sizes, align 8, !dbg !1009
  %cmp = icmp uge i32 %samplenum, %0, !dbg !1012
  br i1 %cmp, label %if.then, label %if.end, !dbg !1013

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1014
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i32 %samplenum), !dbg !1018
  br label %return, !dbg !1019

if.end:                                           ; preds = %entry
  %num_time_to_samples = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 7, !dbg !1020
  %2 = load i32, i32* %num_time_to_samples, align 8, !dbg !1020
  %tobool = icmp ne i32 %2, 0, !dbg !1022
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !1023

if.then1:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1024
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)), !dbg !1028
  br label %return, !dbg !1029

if.end3:                                          ; preds = %if.end
  br label %while.body, !dbg !1030

while.body:                                       ; preds = %if.end16, %if.end3
  %duration_index_accum.0 = phi i32 [ 0, %if.end3 ], [ %add11, %if.end16 ], !dbg !1033
  %duration_cur_index.0 = phi i32 [ 0, %if.end3 ], [ %inc, %if.end16 ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %duration_cur_index.0, metadata !1008, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %duration_index_accum.0, metadata !1007, metadata !DIExpression()), !dbg !997
  br label %while_continue___0, !dbg !1034

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1034

while_continue:                                   ; preds = %while_continue___0
  %time_to_sample = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 6, !dbg !1035
  %4 = load %struct.__anonstruct_time_to_sample_25*, %struct.__anonstruct_time_to_sample_25** %time_to_sample, align 8, !dbg !1035
  %idx.ext = zext i32 %duration_cur_index.0 to i64, !dbg !1038
  %add.ptr = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %4, i64 %idx.ext, !dbg !1038
  %sample_count = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %add.ptr, i32 0, i32 0, !dbg !1039
  %5 = load i32, i32* %sample_count, align 4, !dbg !1039
  %add = add i32 %5, %duration_index_accum.0, !dbg !1040
  %cmp4 = icmp ule i32 %add, %samplenum, !dbg !1041
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !1042

if.then5:                                         ; preds = %while_continue
  br label %while_break, !dbg !1043

if.end6:                                          ; preds = %while_continue
  %time_to_sample7 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 6, !dbg !1045
  %6 = load %struct.__anonstruct_time_to_sample_25*, %struct.__anonstruct_time_to_sample_25** %time_to_sample7, align 8, !dbg !1045
  %idx.ext8 = zext i32 %duration_cur_index.0 to i64, !dbg !1046
  %add.ptr9 = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %6, i64 %idx.ext8, !dbg !1046
  %sample_count10 = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %add.ptr9, i32 0, i32 0, !dbg !1047
  %7 = load i32, i32* %sample_count10, align 4, !dbg !1047
  %add11 = add i32 %duration_index_accum.0, %7, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %add11, metadata !1007, metadata !DIExpression()), !dbg !997
  %inc = add i32 %duration_cur_index.0, 1, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1008, metadata !DIExpression()), !dbg !997
  %num_time_to_samples12 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 7, !dbg !1050
  %8 = load i32, i32* %num_time_to_samples12, align 8, !dbg !1050
  %cmp13 = icmp uge i32 %inc, %8, !dbg !1052
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !1053

if.then14:                                        ; preds = %if.end6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1054
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i32 %samplenum), !dbg !1058
  br label %return, !dbg !1059

if.end16:                                         ; preds = %if.end6
  br label %while.body, !dbg !1030, !llvm.loop !1060

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1062

while_break:                                      ; preds = %while_break___0, %if.then5
  %time_to_sample17 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 6, !dbg !1063
  %10 = load %struct.__anonstruct_time_to_sample_25*, %struct.__anonstruct_time_to_sample_25** %time_to_sample17, align 8, !dbg !1063
  %idx.ext18 = zext i32 %duration_cur_index.0 to i64, !dbg !1064
  %add.ptr19 = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %10, i64 %idx.ext18, !dbg !1064
  %sample_duration20 = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %add.ptr19, i32 0, i32 1, !dbg !1065
  %11 = load i32, i32* %sample_duration20, align 4, !dbg !1065
  store i32 %11, i32* %sample_duration, align 4, !dbg !1066
  %sample_byte_size21 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 8, !dbg !1067
  %12 = load i32*, i32** %sample_byte_size21, align 8, !dbg !1067
  %idx.ext22 = zext i32 %samplenum to i64, !dbg !1068
  %add.ptr23 = getelementptr inbounds i32, i32* %12, i64 %idx.ext22, !dbg !1068
  %13 = load i32, i32* %add.ptr23, align 4, !dbg !1069
  store i32 %13, i32* %sample_byte_size, align 4, !dbg !1070
  br label %return, !dbg !1071

return:                                           ; preds = %while_break, %if.then14, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 1, %while_break ], [ 0, %if.then1 ], !dbg !1033
  ret i32 %retval.0, !dbg !1072
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @GetBuffer(%struct.__anonstruct_demux_res_t_24* %demux_res) #0 !dbg !1073 {
entry:
  %sample_duration = alloca i32, align 4
  %sample_byte_size = alloca i32, align 4
  %outputBytes = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.__anonstruct_demux_res_t_24* %demux_res, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.declare(metadata i32* %sample_duration, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %sample_byte_size, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata i32* %outputBytes, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata !4, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.declare(metadata !4, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata !4, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata !4, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 16384, metadata !1090, metadata !DIExpression()), !dbg !1075
  %conv = trunc i64 16384 to i32, !dbg !1091
  %call = call noalias i8* @malloc(i32 %conv) #7, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %call, metadata !1096, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %call, metadata !1097, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !1098, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 65536, metadata !1099, metadata !DIExpression()), !dbg !1075
  %call1 = call noalias i8* @malloc(i32 65536) #7, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1102, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !1103, metadata !DIExpression()), !dbg !1075
  br label %while.body, !dbg !1104

while.body:                                       ; preds = %if.end16, %entry
  %bytes_read.0 = phi i32 [ 0, %entry ], [ %add, %if.end16 ], !dbg !1107
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end16 ], !dbg !1107
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1103, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %bytes_read.0, metadata !1098, metadata !DIExpression()), !dbg !1075
  br label %while_continue___0, !dbg !1108

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1108

while_continue:                                   ; preds = %while_continue___0
  %num_sample_byte_sizes = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %demux_res, i32 0, i32 9, !dbg !1109
  %0 = load i32, i32* %num_sample_byte_sizes, align 8, !dbg !1109
  %cmp = icmp ult i32 %i.0, %0, !dbg !1112
  br i1 %cmp, label %if.end, label %if.then, !dbg !1113

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1114

if.end:                                           ; preds = %while_continue
  %call3 = call i32 @get_sample_info(%struct.__anonstruct_demux_res_t_24* %demux_res, i32 %i.0, i32* %sample_duration, i32* %sample_byte_size), !dbg !1116
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1119, metadata !DIExpression()), !dbg !1075
  %tobool = icmp ne i32 %call3, 0, !dbg !1120
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !1122

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1123
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)), !dbg !1127
  br label %return, !dbg !1128

if.end6:                                          ; preds = %if.end
  %2 = load i32, i32* %sample_byte_size, align 4, !dbg !1129
  %cmp7 = icmp ult i32 65536, %2, !dbg !1131
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1132

if.then9:                                         ; preds = %if.end6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1133
  %4 = load i32, i32* %sample_byte_size, align 4, !dbg !1137
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0), i32 65536, i32 %4), !dbg !1138
  br label %return, !dbg !1139

if.end11:                                         ; preds = %if.end6
  %5 = load %struct.stream_tTAG*, %struct.stream_tTAG** @input_stream, align 8, !dbg !1140
  %6 = load i32, i32* %sample_byte_size, align 4, !dbg !1143
  call void @stream_read(%struct.stream_tTAG* %5, i32 %6, i8* %call1), !dbg !1144
  %conv12 = trunc i64 16384 to i32, !dbg !1145
  store i32 %conv12, i32* %outputBytes, align 4, !dbg !1146
  %7 = load %struct.alac_file*, %struct.alac_file** @alac, align 8, !dbg !1147
  call void @decode_frame(%struct.alac_file* %7, i8* %call1, i8* %call, i32* %outputBytes), !dbg !1149
  %8 = load i32, i32* %outputBytes, align 4, !dbg !1150
  %add = add nsw i32 %bytes_read.0, %8, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %add, metadata !1098, metadata !DIExpression()), !dbg !1075
  %9 = load i32, i32* @verbose, align 4, !dbg !1152
  %tobool13 = icmp ne i32 %9, 0, !dbg !1152
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1154

if.then14:                                        ; preds = %if.end11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1155
  %11 = load i32, i32* %outputBytes, align 4, !dbg !1159
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i32 %11, i32 %add), !dbg !1160
  br label %if.end16, !dbg !1161

if.end16:                                         ; preds = %if.then14, %if.end11
  %12 = load i32, i32* %outputBytes, align 4, !dbg !1162
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @output_file, align 8, !dbg !1165
  %call17 = call i32 @fwrite(i8* %call, i32 %12, i32 1, %struct._IO_FILE* %13), !dbg !1166
  %inc = add i32 %i.0, 1, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1103, metadata !DIExpression()), !dbg !1075
  br label %while.body, !dbg !1104, !llvm.loop !1168

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1170

while_break:                                      ; preds = %while_break___0, %if.then
  %14 = load i32, i32* @verbose, align 4, !dbg !1171
  %tobool18 = icmp ne i32 %14, 0, !dbg !1171
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !1173

if.then19:                                        ; preds = %while_break
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1174
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i32 %i.0), !dbg !1178
  br label %if.end21, !dbg !1179

if.end21:                                         ; preds = %if.then19, %while_break
  br label %return, !dbg !1180

return:                                           ; preds = %if.end21, %if.then9, %if.then4
  ret void, !dbg !1181
}

; Function Attrs: noinline nounwind ssp uwtable
define void @stream_destroy(%struct.stream_tTAG* %stream) #0 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = bitcast %struct.stream_tTAG* %stream to i8*, !dbg !1187
  call void @free(i8* %0) #7, !dbg !1191
  ret void, !dbg !1192
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @alac_set_info(%struct.alac_file* %alac___0, i8* %inputbuffer) #0 !dbg !1193 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %inputbuffer, metadata !1198, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %inputbuffer, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr = getelementptr inbounds i8, i8* %inputbuffer, i64 4, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 4, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %add.ptr1, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 4, !dbg !1203
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 4, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %add.ptr3, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr3, i64 4, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %add.ptr4, metadata !1199, metadata !DIExpression()), !dbg !1197
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr4, i64 4, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %add.ptr5, metadata !1199, metadata !DIExpression()), !dbg !1197
  %0 = bitcast i8* %add.ptr5 to i32*, !dbg !1207
  %1 = load i32, i32* %0, align 4, !dbg !1207
  %setinfo_max_samples_per_frame = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1208
  store i32 %1, i32* %setinfo_max_samples_per_frame, align 8, !dbg !1209
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !1210
  %tobool = icmp ne i32 %2, 0, !dbg !1210
  br i1 %tobool, label %if.end, label %if.then, !dbg !1212

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !1213

while.body:                                       ; preds = %if.then
  br label %while_continue___4, !dbg !1217

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !1217

while_continue:                                   ; preds = %while_continue___4
  %setinfo_max_samples_per_frame6 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1218
  %3 = load i32, i32* %setinfo_max_samples_per_frame6, align 8, !dbg !1218
  %and = and i32 %3, 255, !dbg !1220
  %shl = shl i32 %and, 24, !dbg !1221
  %setinfo_max_samples_per_frame7 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1222
  %4 = load i32, i32* %setinfo_max_samples_per_frame7, align 8, !dbg !1222
  %and8 = and i32 %4, 65280, !dbg !1223
  %shl9 = shl i32 %and8, 8, !dbg !1224
  %or = or i32 %shl, %shl9, !dbg !1225
  %setinfo_max_samples_per_frame10 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1226
  %5 = load i32, i32* %setinfo_max_samples_per_frame10, align 8, !dbg !1226
  %and11 = and i32 %5, 16711680, !dbg !1227
  %shr = lshr i32 %and11, 8, !dbg !1228
  %or12 = or i32 %or, %shr, !dbg !1229
  %setinfo_max_samples_per_frame13 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1230
  %6 = load i32, i32* %setinfo_max_samples_per_frame13, align 8, !dbg !1230
  %and14 = and i32 %6, -16777216, !dbg !1231
  %shr15 = lshr i32 %and14, 24, !dbg !1232
  %or16 = or i32 %or12, %shr15, !dbg !1233
  %setinfo_max_samples_per_frame17 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1234
  store i32 %or16, i32* %setinfo_max_samples_per_frame17, align 8, !dbg !1235
  br label %while_break, !dbg !1236

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !1237

while_break:                                      ; preds = %while_break___4, %while_continue
  br label %if.end, !dbg !1238

if.end:                                           ; preds = %while_break, %entry
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr5, i64 4, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %add.ptr18, metadata !1199, metadata !DIExpression()), !dbg !1197
  %7 = load i8, i8* %add.ptr18, align 1, !dbg !1240
  %setinfo_7a = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 10, !dbg !1241
  store i8 %7, i8* %setinfo_7a, align 4, !dbg !1242
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr18, i32 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1199, metadata !DIExpression()), !dbg !1197
  %8 = load i8, i8* %incdec.ptr, align 1, !dbg !1244
  %setinfo_sample_size = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !1245
  store i8 %8, i8* %setinfo_sample_size, align 1, !dbg !1246
  %incdec.ptr19 = getelementptr inbounds i8, i8* %incdec.ptr, i32 1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %incdec.ptr19, metadata !1199, metadata !DIExpression()), !dbg !1197
  %9 = load i8, i8* %incdec.ptr19, align 1, !dbg !1248
  %setinfo_rice_historymult = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 12, !dbg !1249
  store i8 %9, i8* %setinfo_rice_historymult, align 2, !dbg !1250
  %incdec.ptr20 = getelementptr inbounds i8, i8* %incdec.ptr19, i32 1, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %incdec.ptr20, metadata !1199, metadata !DIExpression()), !dbg !1197
  %10 = load i8, i8* %incdec.ptr20, align 1, !dbg !1252
  %setinfo_rice_initialhistory = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 13, !dbg !1253
  store i8 %10, i8* %setinfo_rice_initialhistory, align 1, !dbg !1254
  %incdec.ptr21 = getelementptr inbounds i8, i8* %incdec.ptr20, i32 1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %incdec.ptr21, metadata !1199, metadata !DIExpression()), !dbg !1197
  %11 = load i8, i8* %incdec.ptr21, align 1, !dbg !1256
  %setinfo_rice_kmodifier = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !1257
  store i8 %11, i8* %setinfo_rice_kmodifier, align 8, !dbg !1258
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr21, i32 1, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, metadata !1199, metadata !DIExpression()), !dbg !1197
  %12 = load i8, i8* %incdec.ptr22, align 1, !dbg !1260
  %setinfo_7f = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 15, !dbg !1261
  store i8 %12, i8* %setinfo_7f, align 1, !dbg !1262
  %incdec.ptr23 = getelementptr inbounds i8, i8* %incdec.ptr22, i32 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %incdec.ptr23, metadata !1199, metadata !DIExpression()), !dbg !1197
  %13 = bitcast i8* %incdec.ptr23 to i16*, !dbg !1264
  %14 = load i16, i16* %13, align 2, !dbg !1264
  %setinfo_80 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 16, !dbg !1265
  store i16 %14, i16* %setinfo_80, align 2, !dbg !1266
  %15 = load i32, i32* @host_bigendian, align 4, !dbg !1267
  %tobool24 = icmp ne i32 %15, 0, !dbg !1267
  br i1 %tobool24, label %if.end37, label %if.then25, !dbg !1269

if.then25:                                        ; preds = %if.end
  br label %while.body26, !dbg !1270

while.body26:                                     ; preds = %if.then25
  br label %while_continue___5, !dbg !1274

while_continue___5:                               ; preds = %while.body26
  br label %while_continue___0, !dbg !1274

while_continue___0:                               ; preds = %while_continue___5
  %setinfo_8027 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 16, !dbg !1275
  %16 = load i16, i16* %setinfo_8027, align 2, !dbg !1275
  %conv = zext i16 %16 to i32, !dbg !1277
  %and28 = and i32 %conv, 255, !dbg !1278
  %shl29 = shl i32 %and28, 8, !dbg !1279
  %setinfo_8030 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 16, !dbg !1280
  %17 = load i16, i16* %setinfo_8030, align 2, !dbg !1280
  %conv31 = zext i16 %17 to i32, !dbg !1281
  %and32 = and i32 %conv31, 65280, !dbg !1282
  %shr33 = ashr i32 %and32, 8, !dbg !1283
  %or34 = or i32 %shl29, %shr33, !dbg !1284
  %conv35 = trunc i32 %or34 to i16, !dbg !1285
  %setinfo_8036 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 16, !dbg !1286
  store i16 %conv35, i16* %setinfo_8036, align 2, !dbg !1287
  br label %while_break___0, !dbg !1288

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !1289

while_break___0:                                  ; preds = %while_break___5, %while_continue___0
  br label %if.end37, !dbg !1290

if.end37:                                         ; preds = %while_break___0, %if.end
  %add.ptr38 = getelementptr inbounds i8, i8* %incdec.ptr23, i64 2, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %add.ptr38, metadata !1199, metadata !DIExpression()), !dbg !1197
  %18 = bitcast i8* %add.ptr38 to i32*, !dbg !1292
  %19 = load i32, i32* %18, align 4, !dbg !1292
  %setinfo_82 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1293
  store i32 %19, i32* %setinfo_82, align 4, !dbg !1294
  %20 = load i32, i32* @host_bigendian, align 4, !dbg !1295
  %tobool39 = icmp ne i32 %20, 0, !dbg !1295
  br i1 %tobool39, label %if.end58, label %if.then40, !dbg !1297

if.then40:                                        ; preds = %if.end37
  br label %while.body41, !dbg !1298

while.body41:                                     ; preds = %if.then40
  br label %while_continue___6, !dbg !1302

while_continue___6:                               ; preds = %while.body41
  br label %while_continue___1, !dbg !1302

while_continue___1:                               ; preds = %while_continue___6
  %setinfo_8242 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1303
  %21 = load i32, i32* %setinfo_8242, align 4, !dbg !1303
  %and43 = and i32 %21, 255, !dbg !1305
  %shl44 = shl i32 %and43, 24, !dbg !1306
  %setinfo_8245 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1307
  %22 = load i32, i32* %setinfo_8245, align 4, !dbg !1307
  %and46 = and i32 %22, 65280, !dbg !1308
  %shl47 = shl i32 %and46, 8, !dbg !1309
  %or48 = or i32 %shl44, %shl47, !dbg !1310
  %setinfo_8249 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1311
  %23 = load i32, i32* %setinfo_8249, align 4, !dbg !1311
  %and50 = and i32 %23, 16711680, !dbg !1312
  %shr51 = lshr i32 %and50, 8, !dbg !1313
  %or52 = or i32 %or48, %shr51, !dbg !1314
  %setinfo_8253 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1315
  %24 = load i32, i32* %setinfo_8253, align 4, !dbg !1315
  %and54 = and i32 %24, -16777216, !dbg !1316
  %shr55 = lshr i32 %and54, 24, !dbg !1317
  %or56 = or i32 %or52, %shr55, !dbg !1318
  %setinfo_8257 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 17, !dbg !1319
  store i32 %or56, i32* %setinfo_8257, align 4, !dbg !1320
  br label %while_break___1, !dbg !1321

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !1322

while_break___1:                                  ; preds = %while_break___6, %while_continue___1
  br label %if.end58, !dbg !1323

if.end58:                                         ; preds = %while_break___1, %if.end37
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr38, i64 4, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %add.ptr59, metadata !1199, metadata !DIExpression()), !dbg !1197
  %25 = bitcast i8* %add.ptr59 to i32*, !dbg !1325
  %26 = load i32, i32* %25, align 4, !dbg !1325
  %setinfo_86 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1326
  store i32 %26, i32* %setinfo_86, align 8, !dbg !1327
  %27 = load i32, i32* @host_bigendian, align 4, !dbg !1328
  %tobool60 = icmp ne i32 %27, 0, !dbg !1328
  br i1 %tobool60, label %if.end79, label %if.then61, !dbg !1330

if.then61:                                        ; preds = %if.end58
  br label %while.body62, !dbg !1331

while.body62:                                     ; preds = %if.then61
  br label %while_continue___7, !dbg !1335

while_continue___7:                               ; preds = %while.body62
  br label %while_continue___2, !dbg !1335

while_continue___2:                               ; preds = %while_continue___7
  %setinfo_8663 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1336
  %28 = load i32, i32* %setinfo_8663, align 8, !dbg !1336
  %and64 = and i32 %28, 255, !dbg !1338
  %shl65 = shl i32 %and64, 24, !dbg !1339
  %setinfo_8666 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1340
  %29 = load i32, i32* %setinfo_8666, align 8, !dbg !1340
  %and67 = and i32 %29, 65280, !dbg !1341
  %shl68 = shl i32 %and67, 8, !dbg !1342
  %or69 = or i32 %shl65, %shl68, !dbg !1343
  %setinfo_8670 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1344
  %30 = load i32, i32* %setinfo_8670, align 8, !dbg !1344
  %and71 = and i32 %30, 16711680, !dbg !1345
  %shr72 = lshr i32 %and71, 8, !dbg !1346
  %or73 = or i32 %or69, %shr72, !dbg !1347
  %setinfo_8674 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1348
  %31 = load i32, i32* %setinfo_8674, align 8, !dbg !1348
  %and75 = and i32 %31, -16777216, !dbg !1349
  %shr76 = lshr i32 %and75, 24, !dbg !1350
  %or77 = or i32 %or73, %shr76, !dbg !1351
  %setinfo_8678 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 18, !dbg !1352
  store i32 %or77, i32* %setinfo_8678, align 8, !dbg !1353
  br label %while_break___2, !dbg !1354

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !1355

while_break___2:                                  ; preds = %while_break___7, %while_continue___2
  br label %if.end79, !dbg !1356

if.end79:                                         ; preds = %while_break___2, %if.end58
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr59, i64 4, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %add.ptr80, metadata !1199, metadata !DIExpression()), !dbg !1197
  %32 = bitcast i8* %add.ptr80 to i32*, !dbg !1358
  %33 = load i32, i32* %32, align 4, !dbg !1358
  %setinfo_8a_rate = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1359
  store i32 %33, i32* %setinfo_8a_rate, align 4, !dbg !1360
  %34 = load i32, i32* @host_bigendian, align 4, !dbg !1361
  %tobool81 = icmp ne i32 %34, 0, !dbg !1361
  br i1 %tobool81, label %if.end100, label %if.then82, !dbg !1363

if.then82:                                        ; preds = %if.end79
  br label %while.body83, !dbg !1364

while.body83:                                     ; preds = %if.then82
  br label %while_continue___8, !dbg !1368

while_continue___8:                               ; preds = %while.body83
  br label %while_continue___3, !dbg !1368

while_continue___3:                               ; preds = %while_continue___8
  %setinfo_8a_rate84 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1369
  %35 = load i32, i32* %setinfo_8a_rate84, align 4, !dbg !1369
  %and85 = and i32 %35, 255, !dbg !1371
  %shl86 = shl i32 %and85, 24, !dbg !1372
  %setinfo_8a_rate87 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1373
  %36 = load i32, i32* %setinfo_8a_rate87, align 4, !dbg !1373
  %and88 = and i32 %36, 65280, !dbg !1374
  %shl89 = shl i32 %and88, 8, !dbg !1375
  %or90 = or i32 %shl86, %shl89, !dbg !1376
  %setinfo_8a_rate91 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1377
  %37 = load i32, i32* %setinfo_8a_rate91, align 4, !dbg !1377
  %and92 = and i32 %37, 16711680, !dbg !1378
  %shr93 = lshr i32 %and92, 8, !dbg !1379
  %or94 = or i32 %or90, %shr93, !dbg !1380
  %setinfo_8a_rate95 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1381
  %38 = load i32, i32* %setinfo_8a_rate95, align 4, !dbg !1381
  %and96 = and i32 %38, -16777216, !dbg !1382
  %shr97 = lshr i32 %and96, 24, !dbg !1383
  %or98 = or i32 %or94, %shr97, !dbg !1384
  %setinfo_8a_rate99 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 19, !dbg !1385
  store i32 %or98, i32* %setinfo_8a_rate99, align 4, !dbg !1386
  br label %while_break___3, !dbg !1387

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !1388

while_break___3:                                  ; preds = %while_break___8, %while_continue___3
  br label %if.end100, !dbg !1389

if.end100:                                        ; preds = %while_break___3, %if.end79
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr80, i64 4, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %add.ptr101, metadata !1199, metadata !DIExpression()), !dbg !1197
  call void @allocate_buffers(%struct.alac_file* %alac___0), !dbg !1392
  ret void, !dbg !1394
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @allocate_buffers(%struct.alac_file* %alac___0) #0 !dbg !1395 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1398, metadata !DIExpression()), !dbg !1399
  %setinfo_max_samples_per_frame = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1400
  %0 = load i32, i32* %setinfo_max_samples_per_frame, align 8, !dbg !1400
  %mul = mul i32 %0, 4, !dbg !1404
  %call = call noalias i8* @malloc(i32 %mul) #7, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %call, metadata !1406, metadata !DIExpression()), !dbg !1399
  %1 = bitcast i8* %call to i32*, !dbg !1407
  %predicterror_buffer_a = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 5, !dbg !1408
  store i32* %1, i32** %predicterror_buffer_a, align 8, !dbg !1409
  %setinfo_max_samples_per_frame1 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1410
  %2 = load i32, i32* %setinfo_max_samples_per_frame1, align 8, !dbg !1410
  %mul2 = mul i32 %2, 4, !dbg !1412
  %call3 = call noalias i8* @malloc(i32 %mul2) #7, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %call3, metadata !1414, metadata !DIExpression()), !dbg !1399
  %3 = bitcast i8* %call3 to i32*, !dbg !1415
  %predicterror_buffer_b = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 6, !dbg !1416
  store i32* %3, i32** %predicterror_buffer_b, align 8, !dbg !1417
  %setinfo_max_samples_per_frame4 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1418
  %4 = load i32, i32* %setinfo_max_samples_per_frame4, align 8, !dbg !1418
  %mul5 = mul i32 %4, 4, !dbg !1420
  %call6 = call noalias i8* @malloc(i32 %mul5) #7, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %call6, metadata !1422, metadata !DIExpression()), !dbg !1399
  %5 = bitcast i8* %call6 to i32*, !dbg !1423
  %outputsamples_buffer_a = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !1424
  store i32* %5, i32** %outputsamples_buffer_a, align 8, !dbg !1425
  %setinfo_max_samples_per_frame7 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1426
  %6 = load i32, i32* %setinfo_max_samples_per_frame7, align 8, !dbg !1426
  %mul8 = mul i32 %6, 4, !dbg !1428
  %call9 = call noalias i8* @malloc(i32 %mul8) #7, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %call9, metadata !1430, metadata !DIExpression()), !dbg !1399
  %7 = bitcast i8* %call9 to i32*, !dbg !1431
  %outputsamples_buffer_b = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 8, !dbg !1432
  store i32* %7, i32** %outputsamples_buffer_b, align 8, !dbg !1433
  ret void, !dbg !1434
}

; Function Attrs: noinline nounwind ssp uwtable
define void @basterdised_rice_decompress(%struct.alac_file* %alac___0, i32* %output_buffer, i32 %output_size, i32 %readsamplesize, i32 %rice_initialhistory, i32 %rice_kmodifier, i32 %rice_historymult, i32 %rice_kmodifier_mask) #0 !dbg !1435 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1438, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32* %output_buffer, metadata !1440, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %output_size, metadata !1441, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %readsamplesize, metadata !1442, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %rice_initialhistory, metadata !1443, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %rice_kmodifier, metadata !1444, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %rice_historymult, metadata !1445, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %rice_kmodifier_mask, metadata !1446, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %rice_initialhistory, metadata !1447, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression()), !dbg !1439
  br label %while.body, !dbg !1450

while.body:                                       ; preds = %if.end102, %entry
  %output_count.0 = phi i32 [ 0, %entry ], [ %inc103, %if.end102 ], !dbg !1454
  %history.0 = phi i32 [ %rice_initialhistory, %entry ], [ %history.3, %if.end102 ], !dbg !1454
  %sign_modifier.0 = phi i32 [ 0, %entry ], [ %sign_modifier.3, %if.end102 ], !dbg !1454
  call void @llvm.dbg.value(metadata i32 %sign_modifier.0, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %history.0, metadata !1447, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %output_count.0, metadata !1449, metadata !DIExpression()), !dbg !1439
  br label %while_continue___2, !dbg !1455

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !1455

while_continue:                                   ; preds = %while_continue___2
  %cmp = icmp slt i32 %output_count.0, %output_size, !dbg !1456
  br i1 %cmp, label %if.end, label %if.then, !dbg !1459

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1460

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 0, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while.body2, !dbg !1463

while.body2:                                      ; preds = %if.end7, %if.end
  %x.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end7 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while_continue___3, !dbg !1467

while_continue___3:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !1467

while_continue___0:                               ; preds = %while_continue___3
  %cmp3 = icmp sle i32 %x.0, 8, !dbg !1468
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1471

if.then4:                                         ; preds = %while_continue___0
  %call = call i32 @readbit(%struct.alac_file* %alac___0), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %call, metadata !1476, metadata !DIExpression()), !dbg !1439
  %tobool = icmp ne i32 %call, 0, !dbg !1477
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !1479

if.then5:                                         ; preds = %if.then4
  br label %while_break___0, !dbg !1480

if.end6:                                          ; preds = %if.then4
  br label %if.end7, !dbg !1482

if.else:                                          ; preds = %while_continue___0
  br label %while_break___0, !dbg !1483

if.end7:                                          ; preds = %if.end6
  %inc = add nsw i32 %x.0, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while.body2, !dbg !1463, !llvm.loop !1486

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !1488

while_break___0:                                  ; preds = %while_break___3, %if.else, %if.then5
  %cmp8 = icmp sgt i32 %x.0, 8, !dbg !1489
  br i1 %cmp8, label %if.then9, label %if.else14, !dbg !1491

if.then9:                                         ; preds = %while_break___0
  %call10 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %readsamplesize), !dbg !1492
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1496, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1497, metadata !DIExpression()), !dbg !1439
  %cmp11 = icmp ne i32 %readsamplesize, 32, !dbg !1498
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1500

if.then12:                                        ; preds = %if.then9
  %sub = sub nsw i32 32, %readsamplesize, !dbg !1501
  %shr = lshr i32 -1, %sub, !dbg !1503
  %and = and i32 %call10, %shr, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %and, metadata !1497, metadata !DIExpression()), !dbg !1439
  br label %if.end13, !dbg !1505

if.end13:                                         ; preds = %if.then12, %if.then9
  %value.0 = phi i32 [ %and, %if.then12 ], [ %call10, %if.then9 ], !dbg !1506
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !1497, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %if.end35, !dbg !1507

if.else14:                                        ; preds = %while_break___0
  %shr15 = lshr i32 %history.0, 9, !dbg !1508
  %add = add i32 %shr15, 3, !dbg !1512
  %call16 = call i32 @count_leading_zeros(i32 %add), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %call16, metadata !1514, metadata !DIExpression()), !dbg !1439
  %sub17 = sub nsw i32 31, %rice_kmodifier, !dbg !1515
  %sub18 = sub nsw i32 %sub17, %call16, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %sub18, metadata !1517, metadata !DIExpression()), !dbg !1439
  %cmp19 = icmp slt i32 %sub18, 0, !dbg !1518
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !1520

if.then20:                                        ; preds = %if.else14
  %add21 = add nsw i32 %sub18, %rice_kmodifier, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %add21, metadata !1517, metadata !DIExpression()), !dbg !1439
  br label %if.end23, !dbg !1523

if.else22:                                        ; preds = %if.else14
  call void @llvm.dbg.value(metadata i32 %rice_kmodifier, metadata !1517, metadata !DIExpression()), !dbg !1439
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then20
  %k.0 = phi i32 [ %add21, %if.then20 ], [ %rice_kmodifier, %if.else22 ], !dbg !1524
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1517, metadata !DIExpression()), !dbg !1439
  %cmp24 = icmp ne i32 %k.0, 1, !dbg !1525
  br i1 %cmp24, label %if.then25, label %if.end34, !dbg !1527

if.then25:                                        ; preds = %if.end23
  %call26 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %k.0), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1532, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1533, metadata !DIExpression()), !dbg !1439
  %shl = shl i32 %x.0, %k.0, !dbg !1534
  %sub27 = sub nsw i32 %shl, %x.0, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %sub27, metadata !1462, metadata !DIExpression()), !dbg !1439
  %cmp28 = icmp sgt i32 %call26, 1, !dbg !1536
  br i1 %cmp28, label %if.then29, label %if.else32, !dbg !1538

if.then29:                                        ; preds = %if.then25
  %sub30 = sub nsw i32 %call26, 1, !dbg !1539
  %add31 = add nsw i32 %sub27, %sub30, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %add31, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %if.end33, !dbg !1542

if.else32:                                        ; preds = %if.then25
  call void @unreadbits(%struct.alac_file* %alac___0, i32 1), !dbg !1543
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then29
  %x.1 = phi i32 [ %add31, %if.then29 ], [ %sub27, %if.else32 ], !dbg !1547
  call void @llvm.dbg.value(metadata i32 %x.1, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %if.end34, !dbg !1548

if.end34:                                         ; preds = %if.end33, %if.end23
  %x.2 = phi i32 [ %x.1, %if.end33 ], [ %x.0, %if.end23 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %x.2, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end13
  %x.3 = phi i32 [ %value.0, %if.end13 ], [ %x.2, %if.end34 ], !dbg !1549
  call void @llvm.dbg.value(metadata i32 %x.3, metadata !1462, metadata !DIExpression()), !dbg !1439
  %add36 = add nsw i32 %sign_modifier.0, %x.3, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %add36, metadata !1551, metadata !DIExpression()), !dbg !1439
  %add37 = add nsw i32 %add36, 1, !dbg !1552
  %div = sdiv i32 %add37, 2, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %div, metadata !1554, metadata !DIExpression()), !dbg !1439
  %and38 = and i32 %add36, 1, !dbg !1555
  %tobool39 = icmp ne i32 %and38, 0, !dbg !1555
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1557

if.then40:                                        ; preds = %if.end35
  %mul = mul nsw i32 %div, -1, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1554, metadata !DIExpression()), !dbg !1439
  br label %if.end41, !dbg !1560

if.end41:                                         ; preds = %if.then40, %if.end35
  %final_val.0 = phi i32 [ %mul, %if.then40 ], [ %div, %if.end35 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %final_val.0, metadata !1554, metadata !DIExpression()), !dbg !1439
  %idx.ext = sext i32 %output_count.0 to i64, !dbg !1561
  %add.ptr = getelementptr inbounds i32, i32* %output_buffer, i64 %idx.ext, !dbg !1561
  store i32 %final_val.0, i32* %add.ptr, align 4, !dbg !1562
  call void @llvm.dbg.value(metadata i32 0, metadata !1448, metadata !DIExpression()), !dbg !1439
  %mul42 = mul nsw i32 %add36, %rice_historymult, !dbg !1563
  %mul43 = mul i32 %history.0, %rice_historymult, !dbg !1564
  %shr44 = lshr i32 %mul43, 9, !dbg !1565
  %sub45 = sub i32 %mul42, %shr44, !dbg !1566
  %add46 = add i32 %history.0, %sub45, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %add46, metadata !1447, metadata !DIExpression()), !dbg !1439
  %cmp47 = icmp sgt i32 %add36, 65535, !dbg !1568
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !1570

if.then48:                                        ; preds = %if.end41
  call void @llvm.dbg.value(metadata i32 65535, metadata !1447, metadata !DIExpression()), !dbg !1439
  br label %if.end49, !dbg !1571

if.end49:                                         ; preds = %if.then48, %if.end41
  %history.1 = phi i32 [ 65535, %if.then48 ], [ %add46, %if.end41 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %history.1, metadata !1447, metadata !DIExpression()), !dbg !1439
  %cmp50 = icmp ult i32 %history.1, 128, !dbg !1573
  br i1 %cmp50, label %if.then51, label %if.end102, !dbg !1575

if.then51:                                        ; preds = %if.end49
  %add52 = add nsw i32 %output_count.0, 1, !dbg !1576
  %cmp53 = icmp slt i32 %add52, %output_size, !dbg !1579
  br i1 %cmp53, label %if.then54, label %if.end101, !dbg !1580

if.then54:                                        ; preds = %if.then51
  call void @llvm.dbg.value(metadata i32 1, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while.body56, !dbg !1581

while.body56:                                     ; preds = %if.end64, %if.then54
  %x.4 = phi i32 [ 0, %if.then54 ], [ %inc65, %if.end64 ], !dbg !1585
  call void @llvm.dbg.value(metadata i32 %x.4, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while_continue___4, !dbg !1586

while_continue___4:                               ; preds = %while.body56
  br label %while_continue___1, !dbg !1586

while_continue___1:                               ; preds = %while_continue___4
  %cmp57 = icmp sle i32 %x.4, 8, !dbg !1587
  br i1 %cmp57, label %if.then58, label %if.else63, !dbg !1590

if.then58:                                        ; preds = %while_continue___1
  %call59 = call i32 @readbit(%struct.alac_file* %alac___0), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %call59, metadata !1595, metadata !DIExpression()), !dbg !1439
  %tobool60 = icmp ne i32 %call59, 0, !dbg !1596
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !1598

if.then61:                                        ; preds = %if.then58
  br label %while_break___1, !dbg !1599

if.end62:                                         ; preds = %if.then58
  br label %if.end64, !dbg !1601

if.else63:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1602

if.end64:                                         ; preds = %if.end62
  %inc65 = add nsw i32 %x.4, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !1462, metadata !DIExpression()), !dbg !1439
  br label %while.body56, !dbg !1581, !llvm.loop !1605

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !1607

while_break___1:                                  ; preds = %while_break___4, %if.else63, %if.then61
  %cmp66 = icmp sgt i32 %x.4, 8, !dbg !1608
  br i1 %cmp66, label %if.then67, label %if.else70, !dbg !1610

if.then67:                                        ; preds = %while_break___1
  %call68 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !1611
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1615, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1616, metadata !DIExpression()), !dbg !1439
  %and69 = and i32 %call68, 65535, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %and69, metadata !1616, metadata !DIExpression()), !dbg !1439
  br label %if.end88, !dbg !1618

if.else70:                                        ; preds = %while_break___1
  %call71 = call i32 @count_leading_zeros(i32 %history.1), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %call71, metadata !1623, metadata !DIExpression()), !dbg !1439
  %add72 = add i32 %history.1, 16, !dbg !1624
  %shr73 = lshr i32 %add72, 6, !dbg !1625
  %add74 = add i32 %call71, %shr73, !dbg !1626
  %sub75 = sub i32 %add74, 24, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %sub75, metadata !1628, metadata !DIExpression()), !dbg !1439
  %call76 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %sub75), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %call76, metadata !1631, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %call76, metadata !1632, metadata !DIExpression()), !dbg !1439
  %shl77 = shl i32 1, %sub75, !dbg !1633
  %sub78 = sub nsw i32 %shl77, 1, !dbg !1634
  %and79 = and i32 %sub78, %rice_kmodifier_mask, !dbg !1635
  %mul80 = mul nsw i32 %and79, %x.4, !dbg !1636
  %add81 = add nsw i32 %mul80, %call76, !dbg !1637
  %sub82 = sub nsw i32 %add81, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %sub82, metadata !1616, metadata !DIExpression()), !dbg !1439
  %cmp83 = icmp slt i32 %call76, 2, !dbg !1639
  br i1 %cmp83, label %if.then84, label %if.end87, !dbg !1641

if.then84:                                        ; preds = %if.else70
  %sub85 = sub nsw i32 1, %call76, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %sub85, metadata !1462, metadata !DIExpression()), !dbg !1439
  %add86 = add nsw i32 %sub82, %sub85, !dbg !1645
  call void @llvm.dbg.value(metadata i32 %add86, metadata !1616, metadata !DIExpression()), !dbg !1439
  call void @unreadbits(%struct.alac_file* %alac___0, i32 1), !dbg !1646
  br label %if.end87, !dbg !1648

if.end87:                                         ; preds = %if.then84, %if.else70
  %block_size.0 = phi i32 [ %add86, %if.then84 ], [ %sub82, %if.else70 ], !dbg !1649
  call void @llvm.dbg.value(metadata i32 %block_size.0, metadata !1616, metadata !DIExpression()), !dbg !1439
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then67
  %block_size.1 = phi i32 [ %and69, %if.then67 ], [ %block_size.0, %if.end87 ], !dbg !1650
  call void @llvm.dbg.value(metadata i32 %block_size.1, metadata !1616, metadata !DIExpression()), !dbg !1439
  %cmp89 = icmp sgt i32 %block_size.1, 0, !dbg !1651
  br i1 %cmp89, label %if.then90, label %if.end97, !dbg !1653

if.then90:                                        ; preds = %if.end88
  %add91 = add nsw i32 %output_count.0, 1, !dbg !1654
  %idx.ext92 = sext i32 %add91 to i64, !dbg !1658
  %add.ptr93 = getelementptr inbounds i32, i32* %output_buffer, i64 %idx.ext92, !dbg !1658
  %0 = bitcast i32* %add.ptr93 to i8*, !dbg !1659
  %mul94 = mul nsw i32 %block_size.1, 4, !dbg !1660
  %call95 = call i8* @memset(i8* %0, i32 0, i32 %mul94) #7, !dbg !1661
  %add96 = add nsw i32 %output_count.0, %block_size.1, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %add96, metadata !1449, metadata !DIExpression()), !dbg !1439
  br label %if.end97, !dbg !1663

if.end97:                                         ; preds = %if.then90, %if.end88
  %output_count.1 = phi i32 [ %add96, %if.then90 ], [ %output_count.0, %if.end88 ], !dbg !1454
  call void @llvm.dbg.value(metadata i32 %output_count.1, metadata !1449, metadata !DIExpression()), !dbg !1439
  %cmp98 = icmp sgt i32 %block_size.1, 65535, !dbg !1664
  br i1 %cmp98, label %if.then99, label %if.end100, !dbg !1666

if.then99:                                        ; preds = %if.end97
  call void @llvm.dbg.value(metadata i32 0, metadata !1448, metadata !DIExpression()), !dbg !1439
  br label %if.end100, !dbg !1667

if.end100:                                        ; preds = %if.then99, %if.end97
  %sign_modifier.1 = phi i32 [ 0, %if.then99 ], [ 1, %if.end97 ], !dbg !1585
  call void @llvm.dbg.value(metadata i32 %sign_modifier.1, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1447, metadata !DIExpression()), !dbg !1439
  br label %if.end101, !dbg !1669

if.end101:                                        ; preds = %if.end100, %if.then51
  %output_count.2 = phi i32 [ %output_count.1, %if.end100 ], [ %output_count.0, %if.then51 ], !dbg !1454
  %history.2 = phi i32 [ 0, %if.end100 ], [ %history.1, %if.then51 ], !dbg !1466
  %sign_modifier.2 = phi i32 [ %sign_modifier.1, %if.end100 ], [ 0, %if.then51 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %sign_modifier.2, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %history.2, metadata !1447, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %output_count.2, metadata !1449, metadata !DIExpression()), !dbg !1439
  br label %if.end102, !dbg !1670

if.end102:                                        ; preds = %if.end101, %if.end49
  %output_count.3 = phi i32 [ %output_count.2, %if.end101 ], [ %output_count.0, %if.end49 ], !dbg !1454
  %history.3 = phi i32 [ %history.2, %if.end101 ], [ %history.1, %if.end49 ], !dbg !1466
  %sign_modifier.3 = phi i32 [ %sign_modifier.2, %if.end101 ], [ 0, %if.end49 ], !dbg !1466
  call void @llvm.dbg.value(metadata i32 %sign_modifier.3, metadata !1448, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %history.3, metadata !1447, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %output_count.3, metadata !1449, metadata !DIExpression()), !dbg !1439
  %inc103 = add nsw i32 %output_count.3, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %inc103, metadata !1449, metadata !DIExpression()), !dbg !1439
  br label %while.body, !dbg !1450, !llvm.loop !1672

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !1674

while_break:                                      ; preds = %while_break___2, %if.then
  ret void, !dbg !1675
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @readbit(%struct.alac_file* %alac___0) #0 !dbg !1676 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1679, metadata !DIExpression()), !dbg !1680
  %input_buffer = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !1681
  %0 = load i8*, i8** %input_buffer, align 8, !dbg !1681
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1683
  %1 = load i8, i8* %add.ptr, align 1, !dbg !1684
  %conv = zext i8 %1 to i32, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1686, metadata !DIExpression()), !dbg !1680
  %input_buffer_bitaccumulator = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1687
  %2 = load i32, i32* %input_buffer_bitaccumulator, align 8, !dbg !1687
  %shl = shl i32 %conv, %2, !dbg !1688
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1686, metadata !DIExpression()), !dbg !1680
  %shr = ashr i32 %shl, 7, !dbg !1689
  %and = and i32 %shr, 1, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %and, metadata !1686, metadata !DIExpression()), !dbg !1680
  %input_buffer_bitaccumulator1 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1691
  %3 = load i32, i32* %input_buffer_bitaccumulator1, align 8, !dbg !1691
  %add = add nsw i32 %3, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %add, metadata !1693, metadata !DIExpression()), !dbg !1680
  %div = sdiv i32 %add, 8, !dbg !1694
  %input_buffer2 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !1695
  %4 = load i8*, i8** %input_buffer2, align 8, !dbg !1696
  %idx.ext = sext i32 %div to i64, !dbg !1696
  %add.ptr3 = getelementptr inbounds i8, i8* %4, i64 %idx.ext, !dbg !1696
  store i8* %add.ptr3, i8** %input_buffer2, align 8, !dbg !1696
  %rem = srem i32 %add, 8, !dbg !1697
  %input_buffer_bitaccumulator4 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1698
  store i32 %rem, i32* %input_buffer_bitaccumulator4, align 8, !dbg !1699
  ret i32 %and, !dbg !1700
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @readbits(%struct.alac_file* %alac___0, i32 %bits) #0 !dbg !1701 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %bits, metadata !1706, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 0, metadata !1707, metadata !DIExpression()), !dbg !1705
  %cmp = icmp sgt i32 %bits, 16, !dbg !1708
  br i1 %cmp, label %if.then, label %if.end, !dbg !1711

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %bits, 16, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1706, metadata !DIExpression()), !dbg !1705
  %call = call i32 @readbits_16(%struct.alac_file* %alac___0, i32 16), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %call, metadata !1717, metadata !DIExpression()), !dbg !1705
  %shl = shl i32 %call, %sub, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1707, metadata !DIExpression()), !dbg !1705
  br label %if.end, !dbg !1719

if.end:                                           ; preds = %if.then, %entry
  %bits.addr.0 = phi i32 [ %sub, %if.then ], [ %bits, %entry ]
  %result.0 = phi i32 [ %shl, %if.then ], [ 0, %entry ], !dbg !1720
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1707, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %bits.addr.0, metadata !1706, metadata !DIExpression()), !dbg !1705
  %call1 = call i32 @readbits_16(%struct.alac_file* %alac___0, i32 %bits.addr.0), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1724, metadata !DIExpression()), !dbg !1705
  %or = or i32 %result.0, %call1, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %or, metadata !1707, metadata !DIExpression()), !dbg !1705
  ret i32 %or, !dbg !1726
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @count_leading_zeros(i32 %input) #0 !dbg !1727 {
entry:
  call void @llvm.dbg.value(metadata i32 %input, metadata !1730, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 0, metadata !1732, metadata !DIExpression()), !dbg !1731
  %tobool = icmp ne i32 %input, 0, !dbg !1733
  br i1 %tobool, label %if.end, label %if.then, !dbg !1736

if.then:                                          ; preds = %entry
  br label %return, !dbg !1737

if.end:                                           ; preds = %entry
  %0 = call i32 asm "bsr $1, $0\0A", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %input) #10, !dbg !1739, !srcloc !1740
  call void @llvm.dbg.value(metadata i32 %0, metadata !1732, metadata !DIExpression()), !dbg !1731
  %sub = sub nsw i32 31, %0, !dbg !1741
  br label %return, !dbg !1742

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.end ], [ 32, %if.then ], !dbg !1743
  ret i32 %retval.0, !dbg !1744
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @unreadbits(%struct.alac_file* %alac___0, i32 %bits) #0 !dbg !1745 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1748, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i32 %bits, metadata !1750, metadata !DIExpression()), !dbg !1749
  %input_buffer_bitaccumulator = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1751
  %0 = load i32, i32* %input_buffer_bitaccumulator, align 8, !dbg !1751
  %sub = sub nsw i32 %0, %bits, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1754, metadata !DIExpression()), !dbg !1749
  %shr = ashr i32 %sub, 3, !dbg !1755
  %input_buffer = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !1756
  %1 = load i8*, i8** %input_buffer, align 8, !dbg !1757
  %idx.ext = sext i32 %shr to i64, !dbg !1757
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext, !dbg !1757
  store i8* %add.ptr, i8** %input_buffer, align 8, !dbg !1757
  %and = and i32 %sub, 7, !dbg !1758
  %input_buffer_bitaccumulator1 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1759
  store i32 %and, i32* %input_buffer_bitaccumulator1, align 8, !dbg !1760
  %input_buffer_bitaccumulator2 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1761
  %2 = load i32, i32* %input_buffer_bitaccumulator2, align 8, !dbg !1761
  %cmp = icmp slt i32 %2, 0, !dbg !1763
  br i1 %cmp, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  %input_buffer_bitaccumulator3 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1765
  %3 = load i32, i32* %input_buffer_bitaccumulator3, align 8, !dbg !1767
  %mul = mul nsw i32 %3, -1, !dbg !1767
  store i32 %mul, i32* %input_buffer_bitaccumulator3, align 8, !dbg !1767
  br label %if.end, !dbg !1768

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1769
}

; Function Attrs: noinline nounwind ssp uwtable
define void @deinterlace_16(i32* %buffer_a, i32* %buffer_b, i16* %buffer_out, i32 %numchannels, i32 %numsamples, i8 zeroext %interlacing_shift, i8 zeroext %interlacing_leftweight) #0 !dbg !1770 {
entry:
  call void @llvm.dbg.value(metadata i32* %buffer_a, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32* %buffer_b, metadata !1775, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i16* %buffer_out, metadata !1776, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %numchannels, metadata !1777, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %numsamples, metadata !1778, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %interlacing_shift, metadata !1779, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %interlacing_leftweight, metadata !1780, metadata !DIExpression()), !dbg !1774
  %cmp = icmp sle i32 %numsamples, 0, !dbg !1781
  br i1 %cmp, label %if.then, label %if.end, !dbg !1784

if.then:                                          ; preds = %entry
  br label %return, !dbg !1785

if.end:                                           ; preds = %entry
  %tobool = icmp ne i8 %interlacing_leftweight, 0, !dbg !1787
  br i1 %tobool, label %if.then1, label %if.end38, !dbg !1789

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1791

while.body:                                       ; preds = %if.end30, %if.then1
  %i.0 = phi i32 [ 0, %if.then1 ], [ %inc, %if.end30 ], !dbg !1795
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while_continue___5, !dbg !1796

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !1796

while_continue:                                   ; preds = %while_continue___5
  %cmp2 = icmp slt i32 %i.0, %numsamples, !dbg !1797
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !1800

if.then3:                                         ; preds = %while_continue
  br label %while_break, !dbg !1801

if.end4:                                          ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !1803
  %add.ptr = getelementptr inbounds i32, i32* %buffer_a, i64 %idx.ext, !dbg !1803
  %0 = load i32, i32* %add.ptr, align 4, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %0, metadata !1805, metadata !DIExpression()), !dbg !1774
  %idx.ext5 = sext i32 %i.0 to i64, !dbg !1806
  %add.ptr6 = getelementptr inbounds i32, i32* %buffer_b, i64 %idx.ext5, !dbg !1806
  %1 = load i32, i32* %add.ptr6, align 4, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %1, metadata !1808, metadata !DIExpression()), !dbg !1774
  %conv = zext i8 %interlacing_leftweight to i32, !dbg !1809
  %mul = mul nsw i32 %1, %conv, !dbg !1810
  %conv7 = zext i8 %interlacing_shift to i32, !dbg !1811
  %shr = ashr i32 %mul, %conv7, !dbg !1812
  %sub = sub nsw i32 %0, %shr, !dbg !1813
  %conv8 = trunc i32 %sub to i16, !dbg !1814
  call void @llvm.dbg.value(metadata i16 %conv8, metadata !1815, metadata !DIExpression()), !dbg !1774
  %conv9 = sext i16 %conv8 to i32, !dbg !1816
  %add = add nsw i32 %conv9, %1, !dbg !1817
  %conv10 = trunc i32 %add to i16, !dbg !1818
  call void @llvm.dbg.value(metadata i16 %conv10, metadata !1819, metadata !DIExpression()), !dbg !1774
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !1820
  %tobool11 = icmp ne i32 %2, 0, !dbg !1820
  br i1 %tobool11, label %if.then12, label %if.end30, !dbg !1822

if.then12:                                        ; preds = %if.end4
  br label %while.body14, !dbg !1823

while.body14:                                     ; preds = %if.then12
  br label %while_continue___6, !dbg !1827

while_continue___6:                               ; preds = %while.body14
  br label %while_continue___0, !dbg !1827

while_continue___0:                               ; preds = %while_continue___6
  %conv15 = sext i16 %conv10 to i32, !dbg !1828
  %and = and i32 %conv15, 255, !dbg !1830
  %shl = shl i32 %and, 8, !dbg !1831
  %conv16 = sext i16 %conv10 to i32, !dbg !1832
  %and17 = and i32 %conv16, 65280, !dbg !1833
  %shr18 = ashr i32 %and17, 8, !dbg !1834
  %or = or i32 %shl, %shr18, !dbg !1835
  %conv19 = trunc i32 %or to i16, !dbg !1836
  call void @llvm.dbg.value(metadata i16 %conv19, metadata !1819, metadata !DIExpression()), !dbg !1774
  br label %while_break___0, !dbg !1837

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !1838

while_break___0:                                  ; preds = %while_break___6, %while_continue___0
  br label %while.body21, !dbg !1839

while.body21:                                     ; preds = %while_break___0
  br label %while_continue___7, !dbg !1842

while_continue___7:                               ; preds = %while.body21
  br label %while_continue___1, !dbg !1842

while_continue___1:                               ; preds = %while_continue___7
  %conv22 = sext i16 %conv8 to i32, !dbg !1843
  %and23 = and i32 %conv22, 255, !dbg !1845
  %shl24 = shl i32 %and23, 8, !dbg !1846
  %conv25 = sext i16 %conv8 to i32, !dbg !1847
  %and26 = and i32 %conv25, 65280, !dbg !1848
  %shr27 = ashr i32 %and26, 8, !dbg !1849
  %or28 = or i32 %shl24, %shr27, !dbg !1850
  %conv29 = trunc i32 %or28 to i16, !dbg !1851
  call void @llvm.dbg.value(metadata i16 %conv29, metadata !1815, metadata !DIExpression()), !dbg !1774
  br label %while_break___1, !dbg !1852

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !1853

while_break___1:                                  ; preds = %while_break___7, %while_continue___1
  br label %if.end30, !dbg !1854

if.end30:                                         ; preds = %while_break___1, %if.end4
  %left.0 = phi i16 [ %conv19, %while_break___1 ], [ %conv10, %if.end4 ], !dbg !1855
  %right.0 = phi i16 [ %conv29, %while_break___1 ], [ %conv8, %if.end4 ], !dbg !1855
  call void @llvm.dbg.value(metadata i16 %right.0, metadata !1815, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i16 %left.0, metadata !1819, metadata !DIExpression()), !dbg !1774
  %mul31 = mul nsw i32 %i.0, %numchannels, !dbg !1856
  %idx.ext32 = sext i32 %mul31 to i64, !dbg !1857
  %add.ptr33 = getelementptr inbounds i16, i16* %buffer_out, i64 %idx.ext32, !dbg !1857
  store i16 %left.0, i16* %add.ptr33, align 2, !dbg !1858
  %mul34 = mul nsw i32 %i.0, %numchannels, !dbg !1859
  %add35 = add nsw i32 %mul34, 1, !dbg !1860
  %idx.ext36 = sext i32 %add35 to i64, !dbg !1861
  %add.ptr37 = getelementptr inbounds i16, i16* %buffer_out, i64 %idx.ext36, !dbg !1861
  store i16 %right.0, i16* %add.ptr37, align 2, !dbg !1862
  %inc = add nsw i32 %i.0, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1791, !llvm.loop !1864

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !1866

while_break:                                      ; preds = %while_break___5, %if.then3
  br label %return, !dbg !1867

if.end38:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while.body39, !dbg !1868

while.body39:                                     ; preds = %if.end72, %if.end38
  %i.1 = phi i32 [ 0, %if.end38 ], [ %inc80, %if.end72 ], !dbg !1871
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while_continue___8, !dbg !1872

while_continue___8:                               ; preds = %while.body39
  br label %while_continue___2, !dbg !1872

while_continue___2:                               ; preds = %while_continue___8
  %cmp40 = icmp slt i32 %i.1, %numsamples, !dbg !1873
  br i1 %cmp40, label %if.end43, label %if.then42, !dbg !1876

if.then42:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1877

if.end43:                                         ; preds = %while_continue___2
  %idx.ext44 = sext i32 %i.1 to i64, !dbg !1879
  %add.ptr45 = getelementptr inbounds i32, i32* %buffer_a, i64 %idx.ext44, !dbg !1879
  %3 = load i32, i32* %add.ptr45, align 4, !dbg !1880
  %conv46 = trunc i32 %3 to i16, !dbg !1881
  call void @llvm.dbg.value(metadata i16 %conv46, metadata !1882, metadata !DIExpression()), !dbg !1774
  %idx.ext47 = sext i32 %i.1 to i64, !dbg !1883
  %add.ptr48 = getelementptr inbounds i32, i32* %buffer_b, i64 %idx.ext47, !dbg !1883
  %4 = load i32, i32* %add.ptr48, align 4, !dbg !1884
  %conv49 = trunc i32 %4 to i16, !dbg !1885
  call void @llvm.dbg.value(metadata i16 %conv49, metadata !1886, metadata !DIExpression()), !dbg !1774
  %5 = load i32, i32* @host_bigendian, align 4, !dbg !1887
  %tobool50 = icmp ne i32 %5, 0, !dbg !1887
  br i1 %tobool50, label %if.then51, label %if.end72, !dbg !1889

if.then51:                                        ; preds = %if.end43
  br label %while.body53, !dbg !1890

while.body53:                                     ; preds = %if.then51
  br label %while_continue___9, !dbg !1894

while_continue___9:                               ; preds = %while.body53
  br label %while_continue___3, !dbg !1894

while_continue___3:                               ; preds = %while_continue___9
  %conv54 = sext i16 %conv46 to i32, !dbg !1895
  %and55 = and i32 %conv54, 255, !dbg !1897
  %shl56 = shl i32 %and55, 8, !dbg !1898
  %conv57 = sext i16 %conv46 to i32, !dbg !1899
  %and58 = and i32 %conv57, 65280, !dbg !1900
  %shr59 = ashr i32 %and58, 8, !dbg !1901
  %or60 = or i32 %shl56, %shr59, !dbg !1902
  %conv61 = trunc i32 %or60 to i16, !dbg !1903
  call void @llvm.dbg.value(metadata i16 %conv61, metadata !1882, metadata !DIExpression()), !dbg !1774
  br label %while_break___3, !dbg !1904

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !1905

while_break___3:                                  ; preds = %while_break___9, %while_continue___3
  br label %while.body63, !dbg !1906

while.body63:                                     ; preds = %while_break___3
  br label %while_continue___10, !dbg !1909

while_continue___10:                              ; preds = %while.body63
  br label %while_continue___4, !dbg !1909

while_continue___4:                               ; preds = %while_continue___10
  %conv64 = sext i16 %conv49 to i32, !dbg !1910
  %and65 = and i32 %conv64, 255, !dbg !1912
  %shl66 = shl i32 %and65, 8, !dbg !1913
  %conv67 = sext i16 %conv49 to i32, !dbg !1914
  %and68 = and i32 %conv67, 65280, !dbg !1915
  %shr69 = ashr i32 %and68, 8, !dbg !1916
  %or70 = or i32 %shl66, %shr69, !dbg !1917
  %conv71 = trunc i32 %or70 to i16, !dbg !1918
  call void @llvm.dbg.value(metadata i16 %conv71, metadata !1886, metadata !DIExpression()), !dbg !1774
  br label %while_break___4, !dbg !1919

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !1920

while_break___4:                                  ; preds = %while_break___10, %while_continue___4
  br label %if.end72, !dbg !1921

if.end72:                                         ; preds = %while_break___4, %if.end43
  %left___0.0 = phi i16 [ %conv61, %while_break___4 ], [ %conv46, %if.end43 ], !dbg !1922
  %right___0.0 = phi i16 [ %conv71, %while_break___4 ], [ %conv49, %if.end43 ], !dbg !1922
  call void @llvm.dbg.value(metadata i16 %right___0.0, metadata !1886, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i16 %left___0.0, metadata !1882, metadata !DIExpression()), !dbg !1774
  %mul73 = mul nsw i32 %i.1, %numchannels, !dbg !1923
  %idx.ext74 = sext i32 %mul73 to i64, !dbg !1924
  %add.ptr75 = getelementptr inbounds i16, i16* %buffer_out, i64 %idx.ext74, !dbg !1924
  store i16 %left___0.0, i16* %add.ptr75, align 2, !dbg !1925
  %mul76 = mul nsw i32 %i.1, %numchannels, !dbg !1926
  %add77 = add nsw i32 %mul76, 1, !dbg !1927
  %idx.ext78 = sext i32 %add77 to i64, !dbg !1928
  %add.ptr79 = getelementptr inbounds i16, i16* %buffer_out, i64 %idx.ext78, !dbg !1928
  store i16 %right___0.0, i16* %add.ptr79, align 2, !dbg !1929
  %inc80 = add nsw i32 %i.1, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %inc80, metadata !1790, metadata !DIExpression()), !dbg !1774
  br label %while.body39, !dbg !1868, !llvm.loop !1931

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !1933

while_break___2:                                  ; preds = %while_break___8, %if.then42
  br label %return, !dbg !1934

return:                                           ; preds = %while_break___2, %while_break, %if.then
  ret void, !dbg !1935
}

; Function Attrs: noinline nounwind ssp uwtable
define void @decode_frame(%struct.alac_file* %alac___0, i8* %inbuffer, i8* %outbuffer, i32* %outputsize) #0 !dbg !1936 {
entry:
  %predictor_coef_table = alloca [32 x i16], align 16
  %predictor_coef_table_a = alloca [32 x i16], align 16
  %predictor_coef_table_b = alloca [32 x i16], align 16
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %inbuffer, metadata !1942, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %outbuffer, metadata !1943, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32* %outputsize, metadata !1944, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.declare(metadata [32 x i16]* %predictor_coef_table, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.declare(metadata [32 x i16]* %predictor_coef_table_a, metadata !1950, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.declare(metadata [32 x i16]* %predictor_coef_table_b, metadata !1952, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.declare(metadata !4, metadata !1954, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.declare(metadata !4, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.declare(metadata !4, metadata !1958, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.declare(metadata !4, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.declare(metadata !4, metadata !1962, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.declare(metadata !4, metadata !1964, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.declare(metadata !4, metadata !1966, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.declare(metadata !4, metadata !1968, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.declare(metadata !4, metadata !1970, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.declare(metadata !4, metadata !1972, metadata !DIExpression()), !dbg !1973
  %setinfo_max_samples_per_frame = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 9, !dbg !1974
  %0 = load i32, i32* %setinfo_max_samples_per_frame, align 8, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %0, metadata !1977, metadata !DIExpression()), !dbg !1941
  %input_buffer = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !1978
  store i8* %inbuffer, i8** %input_buffer, align 8, !dbg !1979
  %input_buffer_bitaccumulator = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !1980
  store i32 0, i32* %input_buffer_bitaccumulator, align 8, !dbg !1981
  %call = call i32 @readbits(%struct.alac_file* %alac___0, i32 3), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %call, metadata !1984, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call, metadata !1985, metadata !DIExpression()), !dbg !1941
  %bytespersample = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 4, !dbg !1986
  %1 = load i32, i32* %bytespersample, align 4, !dbg !1986
  %mul = mul nsw i32 %0, %1, !dbg !1987
  store i32 %mul, i32* %outputsize, align 4, !dbg !1988
  %cmp = icmp eq i32 %call, 0, !dbg !1989
  br i1 %cmp, label %if.then, label %if.end, !dbg !1992

if.then:                                          ; preds = %entry
  br label %case_0, !dbg !1993

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %call, 1, !dbg !1995
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1997

if.then2:                                         ; preds = %if.end
  br label %case_1, !dbg !1998

if.end3:                                          ; preds = %if.end
  br label %switch_break, !dbg !2000

case_0:                                           ; preds = %if.then
  %call4 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2001
  %call5 = call i32 @readbits(%struct.alac_file* %alac___0, i32 12), !dbg !2004
  %call6 = call i32 @readbits(%struct.alac_file* %alac___0, i32 1), !dbg !2006
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2008, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2009, metadata !DIExpression()), !dbg !1941
  %call7 = call i32 @readbits(%struct.alac_file* %alac___0, i32 2), !dbg !2010
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2012, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2013, metadata !DIExpression()), !dbg !1941
  %call8 = call i32 @readbits(%struct.alac_file* %alac___0, i32 1), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2016, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2017, metadata !DIExpression()), !dbg !1941
  %tobool = icmp ne i32 %call6, 0, !dbg !2018
  br i1 %tobool, label %if.then9, label %if.end13, !dbg !2020

if.then9:                                         ; preds = %case_0
  %call10 = call i32 @readbits(%struct.alac_file* %alac___0, i32 32), !dbg !2021
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2025, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1977, metadata !DIExpression()), !dbg !1941
  %bytespersample11 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 4, !dbg !2026
  %2 = load i32, i32* %bytespersample11, align 4, !dbg !2026
  %mul12 = mul nsw i32 %call10, %2, !dbg !2027
  store i32 %mul12, i32* %outputsize, align 4, !dbg !2028
  br label %if.end13, !dbg !2029

if.end13:                                         ; preds = %if.then9, %case_0
  %outputsamples.0 = phi i32 [ %call10, %if.then9 ], [ %0, %case_0 ], !dbg !2030
  call void @llvm.dbg.value(metadata i32 %outputsamples.0, metadata !1977, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2031
  %3 = load i8, i8* %setinfo_sample_size, align 1, !dbg !2031
  %conv = zext i8 %3 to i32, !dbg !2032
  %mul14 = mul nsw i32 %call7, 8, !dbg !2033
  %sub = sub nsw i32 %conv, %mul14, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2035, metadata !DIExpression()), !dbg !1941
  %tobool15 = icmp ne i32 %call8, 0, !dbg !2036
  br i1 %tobool15, label %if.else46, label %if.then16, !dbg !2038

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @readbits(%struct.alac_file* %alac___0, i32 8), !dbg !2039
  %call18 = call i32 @readbits(%struct.alac_file* %alac___0, i32 8), !dbg !2043
  %call19 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2047, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2048, metadata !DIExpression()), !dbg !1941
  %call20 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %call20, metadata !2051, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call20, metadata !2052, metadata !DIExpression()), !dbg !1941
  %call21 = call i32 @readbits(%struct.alac_file* %alac___0, i32 3), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2055, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2056, metadata !DIExpression()), !dbg !1941
  %call22 = call i32 @readbits(%struct.alac_file* %alac___0, i32 5), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2059, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2060, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 0, metadata !2061, metadata !DIExpression()), !dbg !1941
  br label %while.body, !dbg !2062

while.body:                                       ; preds = %if.end26, %if.then16
  %i.0 = phi i32 [ 0, %if.then16 ], [ %inc, %if.end26 ], !dbg !2065
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2061, metadata !DIExpression()), !dbg !1941
  br label %while_continue___8, !dbg !2066

while_continue___8:                               ; preds = %while.body
  br label %while_continue, !dbg !2066

while_continue:                                   ; preds = %while_continue___8
  %cmp23 = icmp slt i32 %i.0, %call22, !dbg !2067
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !2070

if.then25:                                        ; preds = %while_continue
  br label %while_break, !dbg !2071

if.end26:                                         ; preds = %while_continue
  %call27 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %call27, metadata !2076, metadata !DIExpression()), !dbg !1941
  %conv28 = trunc i32 %call27 to i16, !dbg !2077
  %idxprom = sext i32 %i.0 to i64, !dbg !2078
  %arrayidx = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table, i64 0, i64 %idxprom, !dbg !2078
  store i16 %conv28, i16* %arrayidx, align 2, !dbg !2079
  %inc = add nsw i32 %i.0, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2061, metadata !DIExpression()), !dbg !1941
  br label %while.body, !dbg !2062, !llvm.loop !2081

while_break___8:                                  ; No predecessors!
  br label %while_break, !dbg !2083

while_break:                                      ; preds = %while_break___8, %if.then25
  %tobool29 = icmp ne i32 %call7, 0, !dbg !2084
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !2086

if.then30:                                        ; preds = %while_break
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2087
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0)), !dbg !2091
  br label %if.end32, !dbg !2092

if.end32:                                         ; preds = %if.then30, %while_break
  %predicterror_buffer_a = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 5, !dbg !2093
  %5 = load i32*, i32** %predicterror_buffer_a, align 8, !dbg !2093
  %setinfo_rice_initialhistory = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 13, !dbg !2096
  %6 = load i8, i8* %setinfo_rice_initialhistory, align 1, !dbg !2096
  %conv33 = zext i8 %6 to i32, !dbg !2097
  %setinfo_rice_kmodifier = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2098
  %7 = load i8, i8* %setinfo_rice_kmodifier, align 8, !dbg !2098
  %conv34 = zext i8 %7 to i32, !dbg !2099
  %setinfo_rice_historymult = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 12, !dbg !2100
  %8 = load i8, i8* %setinfo_rice_historymult, align 2, !dbg !2100
  %conv35 = zext i8 %8 to i32, !dbg !2101
  %mul36 = mul nsw i32 %call21, %conv35, !dbg !2102
  %div = sdiv i32 %mul36, 4, !dbg !2103
  %setinfo_rice_kmodifier37 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2104
  %9 = load i8, i8* %setinfo_rice_kmodifier37, align 8, !dbg !2104
  %conv38 = zext i8 %9 to i32, !dbg !2105
  %shl = shl i32 1, %conv38, !dbg !2106
  %sub39 = sub nsw i32 %shl, 1, !dbg !2107
  call void @basterdised_rice_decompress(%struct.alac_file* %alac___0, i32* %5, i32 %outputsamples.0, i32 %sub, i32 %conv33, i32 %conv34, i32 %div, i32 %sub39), !dbg !2108
  %cmp40 = icmp eq i32 %call19, 0, !dbg !2109
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !2111

if.then42:                                        ; preds = %if.end32
  %predicterror_buffer_a43 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 5, !dbg !2112
  %10 = load i32*, i32** %predicterror_buffer_a43, align 8, !dbg !2112
  %outputsamples_buffer_a = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2116
  %11 = load i32*, i32** %outputsamples_buffer_a, align 8, !dbg !2116
  %arraydecay = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table, i32 0, i32 0, !dbg !2117
  call void @predictor_decompress_fir_adapt(i32* %10, i32* %11, i32 %outputsamples.0, i32 %sub, i16* %arraydecay, i32 %call22, i32 %call20), !dbg !2118
  br label %if.end45, !dbg !2119

if.else:                                          ; preds = %if.end32
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2120
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 %call19), !dbg !2124
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  br label %if.end78, !dbg !2125

if.else46:                                        ; preds = %if.end13
  %cmp47 = icmp sle i32 %sub, 16, !dbg !2126
  br i1 %cmp47, label %if.then49, label %if.else61, !dbg !2128

if.then49:                                        ; preds = %if.else46
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !1941
  br label %while.body50, !dbg !2130

while.body50:                                     ; preds = %if.end54, %if.then49
  %i___0.0 = phi i32 [ 0, %if.then49 ], [ %inc60, %if.end54 ], !dbg !2134
  call void @llvm.dbg.value(metadata i32 %i___0.0, metadata !2129, metadata !DIExpression()), !dbg !1941
  br label %while_continue___9, !dbg !2135

while_continue___9:                               ; preds = %while.body50
  br label %while_continue___0, !dbg !2135

while_continue___0:                               ; preds = %while_continue___9
  %cmp51 = icmp slt i32 %i___0.0, %outputsamples.0, !dbg !2136
  br i1 %cmp51, label %if.end54, label %if.then53, !dbg !2139

if.then53:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2140

if.end54:                                         ; preds = %while_continue___0
  %call55 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %sub), !dbg !2142
  call void @llvm.dbg.value(metadata i32 %call55, metadata !2145, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call55, metadata !2146, metadata !DIExpression()), !dbg !1941
  %sub56 = sub nsw i32 32, %sub, !dbg !2147
  %shl57 = shl i32 %call55, %sub56, !dbg !2148
  %sub58 = sub nsw i32 32, %sub, !dbg !2149
  %shr = ashr i32 %shl57, %sub58, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2146, metadata !DIExpression()), !dbg !1941
  %outputsamples_buffer_a59 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2151
  %13 = load i32*, i32** %outputsamples_buffer_a59, align 8, !dbg !2151
  %idx.ext = sext i32 %i___0.0 to i64, !dbg !2152
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext, !dbg !2152
  store i32 %shr, i32* %add.ptr, align 4, !dbg !2153
  %inc60 = add nsw i32 %i___0.0, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %inc60, metadata !2129, metadata !DIExpression()), !dbg !1941
  br label %while.body50, !dbg !2130, !llvm.loop !2155

while_break___9:                                  ; No predecessors!
  br label %while_break___0, !dbg !2157

while_break___0:                                  ; preds = %while_break___9, %if.then53
  br label %if.end77, !dbg !2158

if.else61:                                        ; preds = %if.else46
  call void @llvm.dbg.value(metadata i32 0, metadata !2159, metadata !DIExpression()), !dbg !1941
  br label %while.body62, !dbg !2160

while.body62:                                     ; preds = %if.end66, %if.else61
  %i___1.0 = phi i32 [ 0, %if.else61 ], [ %inc76, %if.end66 ], !dbg !2164
  call void @llvm.dbg.value(metadata i32 %i___1.0, metadata !2159, metadata !DIExpression()), !dbg !1941
  br label %while_continue___10, !dbg !2165

while_continue___10:                              ; preds = %while.body62
  br label %while_continue___1, !dbg !2165

while_continue___1:                               ; preds = %while_continue___10
  %cmp63 = icmp slt i32 %i___1.0, %outputsamples.0, !dbg !2166
  br i1 %cmp63, label %if.end66, label %if.then65, !dbg !2169

if.then65:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2170

if.end66:                                         ; preds = %while_continue___1
  %call67 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2172
  call void @llvm.dbg.value(metadata i32 %call67, metadata !2175, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call67, metadata !2176, metadata !DIExpression()), !dbg !1941
  %shl68 = shl i32 %call67, 16, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %shl68, metadata !2176, metadata !DIExpression()), !dbg !1941
  %sub69 = sub nsw i32 32, %sub, !dbg !2178
  %shr70 = ashr i32 %shl68, %sub69, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %shr70, metadata !2176, metadata !DIExpression()), !dbg !1941
  %sub71 = sub nsw i32 %sub, 16, !dbg !2180
  %call72 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %sub71), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %call72, metadata !2183, metadata !DIExpression()), !dbg !1941
  %or = or i32 %shr70, %call72, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %or, metadata !2176, metadata !DIExpression()), !dbg !1941
  %outputsamples_buffer_a73 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2185
  %14 = load i32*, i32** %outputsamples_buffer_a73, align 8, !dbg !2185
  %idx.ext74 = sext i32 %i___1.0 to i64, !dbg !2186
  %add.ptr75 = getelementptr inbounds i32, i32* %14, i64 %idx.ext74, !dbg !2186
  store i32 %or, i32* %add.ptr75, align 4, !dbg !2187
  %inc76 = add nsw i32 %i___1.0, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %inc76, metadata !2159, metadata !DIExpression()), !dbg !1941
  br label %while.body62, !dbg !2160, !llvm.loop !2189

while_break___10:                                 ; No predecessors!
  br label %while_break___1, !dbg !2191

while_break___1:                                  ; preds = %while_break___10, %if.then65
  br label %if.end77

if.end77:                                         ; preds = %while_break___1, %while_break___0
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end45
  %setinfo_sample_size79 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2192
  %15 = load i8, i8* %setinfo_sample_size79, align 1, !dbg !2192
  %conv80 = zext i8 %15 to i32, !dbg !2195
  %cmp81 = icmp eq i32 %conv80, 16, !dbg !2196
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2197

if.then83:                                        ; preds = %if.end78
  br label %case_16, !dbg !2198

if.end84:                                         ; preds = %if.end78
  %setinfo_sample_size85 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2200
  %16 = load i8, i8* %setinfo_sample_size85, align 1, !dbg !2200
  %conv86 = zext i8 %16 to i32, !dbg !2202
  %cmp87 = icmp eq i32 %conv86, 32, !dbg !2203
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !2204

if.then89:                                        ; preds = %if.end84
  br label %case_32, !dbg !2205

if.end90:                                         ; preds = %if.end84
  %setinfo_sample_size91 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2207
  %17 = load i8, i8* %setinfo_sample_size91, align 1, !dbg !2207
  %conv92 = zext i8 %17 to i32, !dbg !2209
  %cmp93 = icmp eq i32 %conv92, 24, !dbg !2210
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !2204

if.then95:                                        ; preds = %if.end90
  br label %case_32, !dbg !2211

if.end96:                                         ; preds = %if.end90
  %setinfo_sample_size97 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2213
  %18 = load i8, i8* %setinfo_sample_size97, align 1, !dbg !2213
  %conv98 = zext i8 %18 to i32, !dbg !2215
  %cmp99 = icmp eq i32 %conv98, 20, !dbg !2216
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2204

if.then101:                                       ; preds = %if.end96
  br label %case_32, !dbg !2217

if.end102:                                        ; preds = %if.end96
  br label %switch_default, !dbg !2219

case_16:                                          ; preds = %if.then83
  call void @llvm.dbg.value(metadata i32 0, metadata !2220, metadata !DIExpression()), !dbg !1941
  br label %while.body103, !dbg !2221

while.body103:                                    ; preds = %if.end123, %case_16
  %i___2.0 = phi i32 [ 0, %case_16 ], [ %inc127, %if.end123 ], !dbg !2224
  call void @llvm.dbg.value(metadata i32 %i___2.0, metadata !2220, metadata !DIExpression()), !dbg !1941
  br label %while_continue___11, !dbg !2225

while_continue___11:                              ; preds = %while.body103
  br label %while_continue___2, !dbg !2225

while_continue___2:                               ; preds = %while_continue___11
  %cmp104 = icmp slt i32 %i___2.0, %outputsamples.0, !dbg !2226
  br i1 %cmp104, label %if.end107, label %if.then106, !dbg !2229

if.then106:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !2230

if.end107:                                        ; preds = %while_continue___2
  %outputsamples_buffer_a108 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2232
  %19 = load i32*, i32** %outputsamples_buffer_a108, align 8, !dbg !2232
  %idx.ext109 = sext i32 %i___2.0 to i64, !dbg !2233
  %add.ptr110 = getelementptr inbounds i32, i32* %19, i64 %idx.ext109, !dbg !2233
  %20 = load i32, i32* %add.ptr110, align 4, !dbg !2234
  %conv111 = trunc i32 %20 to i16, !dbg !2235
  call void @llvm.dbg.value(metadata i16 %conv111, metadata !2236, metadata !DIExpression()), !dbg !1941
  %21 = load i32, i32* @host_bigendian, align 4, !dbg !2237
  %tobool112 = icmp ne i32 %21, 0, !dbg !2237
  br i1 %tobool112, label %if.then113, label %if.end123, !dbg !2239

if.then113:                                       ; preds = %if.end107
  br label %while.body115, !dbg !2240

while.body115:                                    ; preds = %if.then113
  br label %while_continue___12, !dbg !2244

while_continue___12:                              ; preds = %while.body115
  br label %while_continue___3, !dbg !2244

while_continue___3:                               ; preds = %while_continue___12
  %conv116 = sext i16 %conv111 to i32, !dbg !2245
  %and = and i32 %conv116, 255, !dbg !2247
  %shl117 = shl i32 %and, 8, !dbg !2248
  %conv118 = sext i16 %conv111 to i32, !dbg !2249
  %and119 = and i32 %conv118, 65280, !dbg !2250
  %shr120 = ashr i32 %and119, 8, !dbg !2251
  %or121 = or i32 %shl117, %shr120, !dbg !2252
  %conv122 = trunc i32 %or121 to i16, !dbg !2253
  call void @llvm.dbg.value(metadata i16 %conv122, metadata !2236, metadata !DIExpression()), !dbg !1941
  br label %while_break___3, !dbg !2254

while_break___12:                                 ; No predecessors!
  br label %while_break___3, !dbg !2255

while_break___3:                                  ; preds = %while_break___12, %while_continue___3
  br label %if.end123, !dbg !2256

if.end123:                                        ; preds = %while_break___3, %if.end107
  %sample.0 = phi i16 [ %conv122, %while_break___3 ], [ %conv111, %if.end107 ], !dbg !2257
  call void @llvm.dbg.value(metadata i16 %sample.0, metadata !2236, metadata !DIExpression()), !dbg !1941
  %22 = bitcast i8* %outbuffer to i16*, !dbg !2258
  %numchannels = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 3, !dbg !2259
  %23 = load i32, i32* %numchannels, align 8, !dbg !2259
  %mul124 = mul nsw i32 %i___2.0, %23, !dbg !2260
  %idx.ext125 = sext i32 %mul124 to i64, !dbg !2261
  %add.ptr126 = getelementptr inbounds i16, i16* %22, i64 %idx.ext125, !dbg !2261
  store i16 %sample.0, i16* %add.ptr126, align 2, !dbg !2262
  %inc127 = add nsw i32 %i___2.0, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %inc127, metadata !2220, metadata !DIExpression()), !dbg !1941
  br label %while.body103, !dbg !2221, !llvm.loop !2264

while_break___11:                                 ; No predecessors!
  br label %while_break___2, !dbg !2266

while_break___2:                                  ; preds = %while_break___11, %if.then106
  br label %switch_break___0, !dbg !2267

case_32:                                          ; preds = %if.then101, %if.then95, %if.then89
  br label %case_24, !dbg !2267

case_24:                                          ; preds = %case_32
  br label %case_20, !dbg !2267

case_20:                                          ; preds = %case_24
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2268
  %setinfo_sample_size128 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2271
  %25 = load i8, i8* %setinfo_sample_size128, align 1, !dbg !2271
  %conv129 = zext i8 %25 to i32, !dbg !2272
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 %conv129), !dbg !2273
  br label %switch_break___0, !dbg !2274

switch_default:                                   ; preds = %if.end102
  br label %switch_break___0, !dbg !2275

switch_break___0:                                 ; preds = %switch_default, %case_20, %while_break___2
  br label %switch_break, !dbg !2276

case_1:                                           ; preds = %if.then2
  %call131 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2277
  %call132 = call i32 @readbits(%struct.alac_file* %alac___0, i32 12), !dbg !2280
  %call133 = call i32 @readbits(%struct.alac_file* %alac___0, i32 1), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %call133, metadata !2284, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call133, metadata !2285, metadata !DIExpression()), !dbg !1941
  %call134 = call i32 @readbits(%struct.alac_file* %alac___0, i32 2), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %call134, metadata !2288, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call134, metadata !2289, metadata !DIExpression()), !dbg !1941
  %call135 = call i32 @readbits(%struct.alac_file* %alac___0, i32 1), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %call135, metadata !2292, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call135, metadata !2293, metadata !DIExpression()), !dbg !1941
  %tobool136 = icmp ne i32 %call133, 0, !dbg !2294
  br i1 %tobool136, label %if.then137, label %if.end141, !dbg !2296

if.then137:                                       ; preds = %case_1
  %call138 = call i32 @readbits(%struct.alac_file* %alac___0, i32 32), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %call138, metadata !2301, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call138, metadata !1977, metadata !DIExpression()), !dbg !1941
  %bytespersample139 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 4, !dbg !2302
  %26 = load i32, i32* %bytespersample139, align 4, !dbg !2302
  %mul140 = mul nsw i32 %call138, %26, !dbg !2303
  store i32 %mul140, i32* %outputsize, align 4, !dbg !2304
  br label %if.end141, !dbg !2305

if.end141:                                        ; preds = %if.then137, %case_1
  %outputsamples.1 = phi i32 [ %call138, %if.then137 ], [ %0, %case_1 ], !dbg !2030
  call void @llvm.dbg.value(metadata i32 %outputsamples.1, metadata !1977, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size142 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2306
  %27 = load i8, i8* %setinfo_sample_size142, align 1, !dbg !2306
  %conv143 = zext i8 %27 to i32, !dbg !2307
  %mul144 = mul nsw i32 %call134, 8, !dbg !2308
  %sub145 = sub nsw i32 %conv143, %mul144, !dbg !2309
  %add = add nsw i32 %sub145, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %add, metadata !2311, metadata !DIExpression()), !dbg !1941
  %tobool146 = icmp ne i32 %call135, 0, !dbg !2312
  br i1 %tobool146, label %if.else226, label %if.then147, !dbg !2314

if.then147:                                       ; preds = %if.end141
  %call148 = call i32 @readbits(%struct.alac_file* %alac___0, i32 8), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %call148, metadata !2319, metadata !DIExpression()), !dbg !1941
  %conv149 = trunc i32 %call148 to i8, !dbg !2320
  call void @llvm.dbg.value(metadata i8 %conv149, metadata !2321, metadata !DIExpression()), !dbg !1941
  %call150 = call i32 @readbits(%struct.alac_file* %alac___0, i32 8), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %call150, metadata !2324, metadata !DIExpression()), !dbg !1941
  %conv151 = trunc i32 %call150 to i8, !dbg !2325
  call void @llvm.dbg.value(metadata i8 %conv151, metadata !2326, metadata !DIExpression()), !dbg !1941
  %call152 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %call152, metadata !2329, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call152, metadata !2330, metadata !DIExpression()), !dbg !1941
  %call153 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %call153, metadata !2333, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call153, metadata !2334, metadata !DIExpression()), !dbg !1941
  %call154 = call i32 @readbits(%struct.alac_file* %alac___0, i32 3), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %call154, metadata !2337, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call154, metadata !2338, metadata !DIExpression()), !dbg !1941
  %call155 = call i32 @readbits(%struct.alac_file* %alac___0, i32 5), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %call155, metadata !2341, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call155, metadata !2342, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while.body156, !dbg !2344

while.body156:                                    ; preds = %if.end160, %if.then147
  %i___3.0 = phi i32 [ 0, %if.then147 ], [ %inc165, %if.end160 ], !dbg !2347
  call void @llvm.dbg.value(metadata i32 %i___3.0, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while_continue___13, !dbg !2348

while_continue___13:                              ; preds = %while.body156
  br label %while_continue___4, !dbg !2348

while_continue___4:                               ; preds = %while_continue___13
  %cmp157 = icmp slt i32 %i___3.0, %call155, !dbg !2349
  br i1 %cmp157, label %if.end160, label %if.then159, !dbg !2352

if.then159:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !2353

if.end160:                                        ; preds = %while_continue___4
  %call161 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %call161, metadata !2358, metadata !DIExpression()), !dbg !1941
  %conv162 = trunc i32 %call161 to i16, !dbg !2359
  %idxprom163 = sext i32 %i___3.0 to i64, !dbg !2360
  %arrayidx164 = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table_a, i64 0, i64 %idxprom163, !dbg !2360
  store i16 %conv162, i16* %arrayidx164, align 2, !dbg !2361
  %inc165 = add nsw i32 %i___3.0, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %inc165, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while.body156, !dbg !2344, !llvm.loop !2363

while_break___13:                                 ; No predecessors!
  br label %while_break___4, !dbg !2365

while_break___4:                                  ; preds = %while_break___13, %if.then159
  %call166 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %call166, metadata !2369, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call166, metadata !2370, metadata !DIExpression()), !dbg !1941
  %call167 = call i32 @readbits(%struct.alac_file* %alac___0, i32 4), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %call167, metadata !2373, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call167, metadata !2374, metadata !DIExpression()), !dbg !1941
  %call168 = call i32 @readbits(%struct.alac_file* %alac___0, i32 3), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %call168, metadata !2377, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call168, metadata !2378, metadata !DIExpression()), !dbg !1941
  %call169 = call i32 @readbits(%struct.alac_file* %alac___0, i32 5), !dbg !2379
  call void @llvm.dbg.value(metadata i32 %call169, metadata !2381, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call169, metadata !2382, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while.body170, !dbg !2383

while.body170:                                    ; preds = %if.end174, %while_break___4
  %i___3.1 = phi i32 [ 0, %while_break___4 ], [ %inc179, %if.end174 ], !dbg !2347
  call void @llvm.dbg.value(metadata i32 %i___3.1, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while_continue___14, !dbg !2386

while_continue___14:                              ; preds = %while.body170
  br label %while_continue___5, !dbg !2386

while_continue___5:                               ; preds = %while_continue___14
  %cmp171 = icmp slt i32 %i___3.1, %call169, !dbg !2387
  br i1 %cmp171, label %if.end174, label %if.then173, !dbg !2390

if.then173:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !2391

if.end174:                                        ; preds = %while_continue___5
  %call175 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %call175, metadata !2396, metadata !DIExpression()), !dbg !1941
  %conv176 = trunc i32 %call175 to i16, !dbg !2397
  %idxprom177 = sext i32 %i___3.1 to i64, !dbg !2398
  %arrayidx178 = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table_b, i64 0, i64 %idxprom177, !dbg !2398
  store i16 %conv176, i16* %arrayidx178, align 2, !dbg !2399
  %inc179 = add nsw i32 %i___3.1, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %inc179, metadata !2343, metadata !DIExpression()), !dbg !1941
  br label %while.body170, !dbg !2383, !llvm.loop !2401

while_break___14:                                 ; No predecessors!
  br label %while_break___5, !dbg !2403

while_break___5:                                  ; preds = %while_break___14, %if.then173
  %tobool180 = icmp ne i32 %call134, 0, !dbg !2404
  br i1 %tobool180, label %if.then181, label %if.end183, !dbg !2406

if.then181:                                       ; preds = %while_break___5
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2407
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0)), !dbg !2411
  br label %if.end183, !dbg !2412

if.end183:                                        ; preds = %if.then181, %while_break___5
  %predicterror_buffer_a184 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 5, !dbg !2413
  %29 = load i32*, i32** %predicterror_buffer_a184, align 8, !dbg !2413
  %setinfo_rice_initialhistory185 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 13, !dbg !2416
  %30 = load i8, i8* %setinfo_rice_initialhistory185, align 1, !dbg !2416
  %conv186 = zext i8 %30 to i32, !dbg !2417
  %setinfo_rice_kmodifier187 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2418
  %31 = load i8, i8* %setinfo_rice_kmodifier187, align 8, !dbg !2418
  %conv188 = zext i8 %31 to i32, !dbg !2419
  %setinfo_rice_historymult189 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 12, !dbg !2420
  %32 = load i8, i8* %setinfo_rice_historymult189, align 2, !dbg !2420
  %conv190 = zext i8 %32 to i32, !dbg !2421
  %mul191 = mul nsw i32 %call154, %conv190, !dbg !2422
  %div192 = sdiv i32 %mul191, 4, !dbg !2423
  %setinfo_rice_kmodifier193 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2424
  %33 = load i8, i8* %setinfo_rice_kmodifier193, align 8, !dbg !2424
  %conv194 = zext i8 %33 to i32, !dbg !2425
  %shl195 = shl i32 1, %conv194, !dbg !2426
  %sub196 = sub nsw i32 %shl195, 1, !dbg !2427
  call void @basterdised_rice_decompress(%struct.alac_file* %alac___0, i32* %29, i32 %outputsamples.1, i32 %add, i32 %conv186, i32 %conv188, i32 %div192, i32 %sub196), !dbg !2428
  %cmp197 = icmp eq i32 %call152, 0, !dbg !2429
  br i1 %cmp197, label %if.then199, label %if.else203, !dbg !2431

if.then199:                                       ; preds = %if.end183
  %predicterror_buffer_a200 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 5, !dbg !2432
  %34 = load i32*, i32** %predicterror_buffer_a200, align 8, !dbg !2432
  %outputsamples_buffer_a201 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2436
  %35 = load i32*, i32** %outputsamples_buffer_a201, align 8, !dbg !2436
  %arraydecay202 = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table_a, i32 0, i32 0, !dbg !2437
  call void @predictor_decompress_fir_adapt(i32* %34, i32* %35, i32 %outputsamples.1, i32 %add, i16* %arraydecay202, i32 %call155, i32 %call153), !dbg !2438
  br label %if.end205, !dbg !2439

if.else203:                                       ; preds = %if.end183
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2440
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 %call152), !dbg !2444
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.then199
  %predicterror_buffer_b = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 6, !dbg !2445
  %37 = load i32*, i32** %predicterror_buffer_b, align 8, !dbg !2445
  %setinfo_rice_initialhistory206 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 13, !dbg !2448
  %38 = load i8, i8* %setinfo_rice_initialhistory206, align 1, !dbg !2448
  %conv207 = zext i8 %38 to i32, !dbg !2449
  %setinfo_rice_kmodifier208 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2450
  %39 = load i8, i8* %setinfo_rice_kmodifier208, align 8, !dbg !2450
  %conv209 = zext i8 %39 to i32, !dbg !2451
  %setinfo_rice_historymult210 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 12, !dbg !2452
  %40 = load i8, i8* %setinfo_rice_historymult210, align 2, !dbg !2452
  %conv211 = zext i8 %40 to i32, !dbg !2453
  %mul212 = mul nsw i32 %call168, %conv211, !dbg !2454
  %div213 = sdiv i32 %mul212, 4, !dbg !2455
  %setinfo_rice_kmodifier214 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 14, !dbg !2456
  %41 = load i8, i8* %setinfo_rice_kmodifier214, align 8, !dbg !2456
  %conv215 = zext i8 %41 to i32, !dbg !2457
  %shl216 = shl i32 1, %conv215, !dbg !2458
  %sub217 = sub nsw i32 %shl216, 1, !dbg !2459
  call void @basterdised_rice_decompress(%struct.alac_file* %alac___0, i32* %37, i32 %outputsamples.1, i32 %add, i32 %conv207, i32 %conv209, i32 %div213, i32 %sub217), !dbg !2460
  %cmp218 = icmp eq i32 %call166, 0, !dbg !2461
  br i1 %cmp218, label %if.then220, label %if.else223, !dbg !2463

if.then220:                                       ; preds = %if.end205
  %predicterror_buffer_b221 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 6, !dbg !2464
  %42 = load i32*, i32** %predicterror_buffer_b221, align 8, !dbg !2464
  %outputsamples_buffer_b = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 8, !dbg !2468
  %43 = load i32*, i32** %outputsamples_buffer_b, align 8, !dbg !2468
  %arraydecay222 = getelementptr inbounds [32 x i16], [32 x i16]* %predictor_coef_table_b, i32 0, i32 0, !dbg !2469
  call void @predictor_decompress_fir_adapt(i32* %42, i32* %43, i32 %outputsamples.1, i32 %add, i16* %arraydecay222, i32 %call169, i32 %call167), !dbg !2470
  br label %if.end225, !dbg !2471

if.else223:                                       ; preds = %if.end205
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2472
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 %call166), !dbg !2476
  br label %if.end225

if.end225:                                        ; preds = %if.else223, %if.then220
  br label %if.end302, !dbg !2477

if.else226:                                       ; preds = %if.end141
  %setinfo_sample_size227 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2478
  %45 = load i8, i8* %setinfo_sample_size227, align 1, !dbg !2478
  %conv228 = zext i8 %45 to i32, !dbg !2481
  %cmp229 = icmp sle i32 %conv228, 16, !dbg !2482
  br i1 %cmp229, label %if.then231, label %if.else266, !dbg !2483

if.then231:                                       ; preds = %if.else226
  call void @llvm.dbg.value(metadata i32 0, metadata !2484, metadata !DIExpression()), !dbg !1941
  br label %while.body232, !dbg !2485

while.body232:                                    ; preds = %if.end236, %if.then231
  %i___4.0 = phi i32 [ 0, %if.then231 ], [ %inc265, %if.end236 ], !dbg !2489
  call void @llvm.dbg.value(metadata i32 %i___4.0, metadata !2484, metadata !DIExpression()), !dbg !1941
  br label %while_continue___15, !dbg !2490

while_continue___15:                              ; preds = %while.body232
  br label %while_continue___6, !dbg !2490

while_continue___6:                               ; preds = %while_continue___15
  %cmp233 = icmp slt i32 %i___4.0, %outputsamples.1, !dbg !2491
  br i1 %cmp233, label %if.end236, label %if.then235, !dbg !2494

if.then235:                                       ; preds = %while_continue___6
  br label %while_break___6, !dbg !2495

if.end236:                                        ; preds = %while_continue___6
  %setinfo_sample_size237 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2497
  %46 = load i8, i8* %setinfo_sample_size237, align 1, !dbg !2497
  %conv238 = zext i8 %46 to i32, !dbg !2500
  %call239 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %conv238), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %call239, metadata !2502, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call239, metadata !2503, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size240 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2504
  %47 = load i8, i8* %setinfo_sample_size240, align 1, !dbg !2504
  %conv241 = zext i8 %47 to i32, !dbg !2506
  %call242 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %conv241), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %call242, metadata !2508, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call242, metadata !2509, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size243 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2510
  %48 = load i8, i8* %setinfo_sample_size243, align 1, !dbg !2510
  %conv244 = zext i8 %48 to i32, !dbg !2511
  %sub245 = sub nsw i32 32, %conv244, !dbg !2512
  %shl246 = shl i32 %call239, %sub245, !dbg !2513
  %setinfo_sample_size247 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2514
  %49 = load i8, i8* %setinfo_sample_size247, align 1, !dbg !2514
  %conv248 = zext i8 %49 to i32, !dbg !2515
  %sub249 = sub nsw i32 32, %conv248, !dbg !2516
  %shr250 = ashr i32 %shl246, %sub249, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %shr250, metadata !2503, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size251 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2518
  %50 = load i8, i8* %setinfo_sample_size251, align 1, !dbg !2518
  %conv252 = zext i8 %50 to i32, !dbg !2519
  %sub253 = sub nsw i32 32, %conv252, !dbg !2520
  %shl254 = shl i32 %call242, %sub253, !dbg !2521
  %setinfo_sample_size255 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2522
  %51 = load i8, i8* %setinfo_sample_size255, align 1, !dbg !2522
  %conv256 = zext i8 %51 to i32, !dbg !2523
  %sub257 = sub nsw i32 32, %conv256, !dbg !2524
  %shr258 = ashr i32 %shl254, %sub257, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %shr258, metadata !2509, metadata !DIExpression()), !dbg !1941
  %outputsamples_buffer_a259 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2526
  %52 = load i32*, i32** %outputsamples_buffer_a259, align 8, !dbg !2526
  %idx.ext260 = sext i32 %i___4.0 to i64, !dbg !2527
  %add.ptr261 = getelementptr inbounds i32, i32* %52, i64 %idx.ext260, !dbg !2527
  store i32 %shr250, i32* %add.ptr261, align 4, !dbg !2528
  %outputsamples_buffer_b262 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 8, !dbg !2529
  %53 = load i32*, i32** %outputsamples_buffer_b262, align 8, !dbg !2529
  %idx.ext263 = sext i32 %i___4.0 to i64, !dbg !2530
  %add.ptr264 = getelementptr inbounds i32, i32* %53, i64 %idx.ext263, !dbg !2530
  store i32 %shr258, i32* %add.ptr264, align 4, !dbg !2531
  %inc265 = add nsw i32 %i___4.0, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %inc265, metadata !2484, metadata !DIExpression()), !dbg !1941
  br label %while.body232, !dbg !2485, !llvm.loop !2533

while_break___15:                                 ; No predecessors!
  br label %while_break___6, !dbg !2535

while_break___6:                                  ; preds = %while_break___15, %if.then235
  br label %if.end301, !dbg !2536

if.else266:                                       ; preds = %if.else226
  call void @llvm.dbg.value(metadata i32 0, metadata !2537, metadata !DIExpression()), !dbg !1941
  br label %while.body267, !dbg !2538

while.body267:                                    ; preds = %if.end271, %if.else266
  %i___5.0 = phi i32 [ 0, %if.else266 ], [ %inc300, %if.end271 ], !dbg !2542
  call void @llvm.dbg.value(metadata i32 %i___5.0, metadata !2537, metadata !DIExpression()), !dbg !1941
  br label %while_continue___16, !dbg !2543

while_continue___16:                              ; preds = %while.body267
  br label %while_continue___7, !dbg !2543

while_continue___7:                               ; preds = %while_continue___16
  %cmp268 = icmp slt i32 %i___5.0, %outputsamples.1, !dbg !2544
  br i1 %cmp268, label %if.end271, label %if.then270, !dbg !2547

if.then270:                                       ; preds = %while_continue___7
  br label %while_break___7, !dbg !2548

if.end271:                                        ; preds = %while_continue___7
  %call272 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %call272, metadata !2553, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call272, metadata !2554, metadata !DIExpression()), !dbg !1941
  %shl273 = shl i32 %call272, 16, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %shl273, metadata !2554, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size274 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2556
  %54 = load i8, i8* %setinfo_sample_size274, align 1, !dbg !2556
  %conv275 = zext i8 %54 to i32, !dbg !2557
  %sub276 = sub nsw i32 32, %conv275, !dbg !2558
  %shr277 = ashr i32 %shl273, %sub276, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %shr277, metadata !2554, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size278 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2560
  %55 = load i8, i8* %setinfo_sample_size278, align 1, !dbg !2560
  %conv279 = zext i8 %55 to i32, !dbg !2562
  %sub280 = sub nsw i32 %conv279, 16, !dbg !2563
  %call281 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %sub280), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %call281, metadata !2565, metadata !DIExpression()), !dbg !1941
  %or282 = or i32 %shr277, %call281, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %or282, metadata !2554, metadata !DIExpression()), !dbg !1941
  %call283 = call i32 @readbits(%struct.alac_file* %alac___0, i32 16), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %call283, metadata !2569, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %call283, metadata !2570, metadata !DIExpression()), !dbg !1941
  %shl284 = shl i32 %call283, 16, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %shl284, metadata !2570, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size285 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2572
  %56 = load i8, i8* %setinfo_sample_size285, align 1, !dbg !2572
  %conv286 = zext i8 %56 to i32, !dbg !2573
  %sub287 = sub nsw i32 32, %conv286, !dbg !2574
  %shr288 = ashr i32 %shl284, %sub287, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %shr288, metadata !2570, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size289 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2576
  %57 = load i8, i8* %setinfo_sample_size289, align 1, !dbg !2576
  %conv290 = zext i8 %57 to i32, !dbg !2578
  %sub291 = sub nsw i32 %conv290, 16, !dbg !2579
  %call292 = call i32 @readbits(%struct.alac_file* %alac___0, i32 %sub291), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %call292, metadata !2581, metadata !DIExpression()), !dbg !1941
  %or293 = or i32 %shr288, %call292, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %or293, metadata !2570, metadata !DIExpression()), !dbg !1941
  %outputsamples_buffer_a294 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2583
  %58 = load i32*, i32** %outputsamples_buffer_a294, align 8, !dbg !2583
  %idx.ext295 = sext i32 %i___5.0 to i64, !dbg !2584
  %add.ptr296 = getelementptr inbounds i32, i32* %58, i64 %idx.ext295, !dbg !2584
  store i32 %or282, i32* %add.ptr296, align 4, !dbg !2585
  %outputsamples_buffer_b297 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 8, !dbg !2586
  %59 = load i32*, i32** %outputsamples_buffer_b297, align 8, !dbg !2586
  %idx.ext298 = sext i32 %i___5.0 to i64, !dbg !2587
  %add.ptr299 = getelementptr inbounds i32, i32* %59, i64 %idx.ext298, !dbg !2587
  store i32 %or293, i32* %add.ptr299, align 4, !dbg !2588
  %inc300 = add nsw i32 %i___5.0, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %inc300, metadata !2537, metadata !DIExpression()), !dbg !1941
  br label %while.body267, !dbg !2538, !llvm.loop !2590

while_break___16:                                 ; No predecessors!
  br label %while_break___7, !dbg !2592

while_break___7:                                  ; preds = %while_break___16, %if.then270
  br label %if.end301

if.end301:                                        ; preds = %while_break___7, %while_break___6
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !1941
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.end225
  %interlacing_shift.0 = phi i8 [ 0, %if.end301 ], [ %conv149, %if.end225 ], !dbg !2593
  %interlacing_leftweight.0 = phi i8 [ 0, %if.end301 ], [ %conv151, %if.end225 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8 %interlacing_leftweight.0, metadata !2326, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %interlacing_shift.0, metadata !2321, metadata !DIExpression()), !dbg !1941
  %setinfo_sample_size303 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2594
  %60 = load i8, i8* %setinfo_sample_size303, align 1, !dbg !2594
  %conv304 = zext i8 %60 to i32, !dbg !2597
  %cmp305 = icmp eq i32 %conv304, 16, !dbg !2598
  br i1 %cmp305, label %if.then307, label %if.end308, !dbg !2599

if.then307:                                       ; preds = %if.end302
  br label %case_16___0, !dbg !2600

if.end308:                                        ; preds = %if.end302
  %setinfo_sample_size309 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2602
  %61 = load i8, i8* %setinfo_sample_size309, align 1, !dbg !2602
  %conv310 = zext i8 %61 to i32, !dbg !2604
  %cmp311 = icmp eq i32 %conv310, 32, !dbg !2605
  br i1 %cmp311, label %if.then313, label %if.end314, !dbg !2606

if.then313:                                       ; preds = %if.end308
  br label %case_32___0, !dbg !2607

if.end314:                                        ; preds = %if.end308
  %setinfo_sample_size315 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2609
  %62 = load i8, i8* %setinfo_sample_size315, align 1, !dbg !2609
  %conv316 = zext i8 %62 to i32, !dbg !2611
  %cmp317 = icmp eq i32 %conv316, 24, !dbg !2612
  br i1 %cmp317, label %if.then319, label %if.end320, !dbg !2606

if.then319:                                       ; preds = %if.end314
  br label %case_32___0, !dbg !2613

if.end320:                                        ; preds = %if.end314
  %setinfo_sample_size321 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2615
  %63 = load i8, i8* %setinfo_sample_size321, align 1, !dbg !2615
  %conv322 = zext i8 %63 to i32, !dbg !2617
  %cmp323 = icmp eq i32 %conv322, 20, !dbg !2618
  br i1 %cmp323, label %if.then325, label %if.end326, !dbg !2606

if.then325:                                       ; preds = %if.end320
  br label %case_32___0, !dbg !2619

if.end326:                                        ; preds = %if.end320
  br label %switch_default___0, !dbg !2621

case_16___0:                                      ; preds = %if.then307
  %outputsamples_buffer_a327 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 7, !dbg !2622
  %64 = load i32*, i32** %outputsamples_buffer_a327, align 8, !dbg !2622
  %outputsamples_buffer_b328 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 8, !dbg !2625
  %65 = load i32*, i32** %outputsamples_buffer_b328, align 8, !dbg !2625
  %66 = bitcast i8* %outbuffer to i16*, !dbg !2626
  %numchannels329 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 3, !dbg !2627
  %67 = load i32, i32* %numchannels329, align 8, !dbg !2627
  call void @deinterlace_16(i32* %64, i32* %65, i16* %66, i32 %67, i32 %outputsamples.1, i8 zeroext %interlacing_shift.0, i8 zeroext %interlacing_leftweight.0), !dbg !2628
  br label %switch_break___1, !dbg !2629

case_32___0:                                      ; preds = %if.then325, %if.then319, %if.then313
  br label %case_24___0, !dbg !2629

case_24___0:                                      ; preds = %case_32___0
  br label %case_20___0, !dbg !2629

case_20___0:                                      ; preds = %case_24___0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2630
  %setinfo_sample_size330 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 11, !dbg !2633
  %69 = load i8, i8* %setinfo_sample_size330, align 1, !dbg !2633
  %conv331 = zext i8 %69 to i32, !dbg !2634
  %call332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 %conv331), !dbg !2635
  br label %switch_break___1, !dbg !2636

switch_default___0:                               ; preds = %if.end326
  br label %switch_break___1, !dbg !2637

switch_break___1:                                 ; preds = %switch_default___0, %case_20___0, %case_16___0
  br label %switch_break, !dbg !2638

switch_break:                                     ; preds = %switch_break___1, %switch_break___0, %if.end3
  ret void, !dbg !2639
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @predictor_decompress_fir_adapt(i32* %error_buffer, i32* %buffer_out, i32 %output_size, i32 %readsamplesize, i16* %predictor_coef_table, i32 %predictor_coef_num, i32 %predictor_quantitization) #0 !dbg !2640 {
entry:
  call void @llvm.dbg.value(metadata i32* %error_buffer, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32* %buffer_out, metadata !2645, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %output_size, metadata !2646, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %readsamplesize, metadata !2647, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i16* %predictor_coef_table, metadata !2648, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %predictor_coef_num, metadata !2649, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %predictor_quantitization, metadata !2650, metadata !DIExpression()), !dbg !2644
  %0 = load i32, i32* %error_buffer, align 4, !dbg !2651
  store i32 %0, i32* %buffer_out, align 4, !dbg !2653
  %tobool = icmp ne i32 %predictor_coef_num, 0, !dbg !2654
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2656

if.then:                                          ; preds = %entry
  %cmp = icmp sle i32 %output_size, 1, !dbg !2657
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2660

if.then1:                                         ; preds = %if.then
  br label %return, !dbg !2661

if.end:                                           ; preds = %if.then
  %add.ptr = getelementptr inbounds i32, i32* %buffer_out, i64 1, !dbg !2663
  %1 = bitcast i32* %add.ptr to i8*, !dbg !2666
  %add.ptr2 = getelementptr inbounds i32, i32* %error_buffer, i64 1, !dbg !2667
  %2 = bitcast i32* %add.ptr2 to i8*, !dbg !2668
  %sub = sub nsw i32 %output_size, 1, !dbg !2669
  %mul = mul nsw i32 %sub, 4, !dbg !2670
  %call = call i8* @memcpy(i8* %1, i8* %2, i32 %mul) #7, !dbg !2671
  br label %return, !dbg !2672

if.end3:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %predictor_coef_num, 31, !dbg !2673
  br i1 %cmp4, label %if.then5, label %if.end22, !dbg !2675

if.then5:                                         ; preds = %if.end3
  %cmp6 = icmp sle i32 %output_size, 1, !dbg !2676
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2679

if.then7:                                         ; preds = %if.then5
  br label %return, !dbg !2680

if.end8:                                          ; preds = %if.then5
  call void @llvm.dbg.value(metadata i32 0, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while.body, !dbg !2683

while.body:                                       ; preds = %if.end12, %if.end8
  %i.0 = phi i32 [ 0, %if.end8 ], [ %inc, %if.end12 ], !dbg !2686
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while_continue___5, !dbg !2687

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !2687

while_continue:                                   ; preds = %while_continue___5
  %sub9 = sub nsw i32 %output_size, 1, !dbg !2688
  %cmp10 = icmp slt i32 %i.0, %sub9, !dbg !2691
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !2692

if.then11:                                        ; preds = %while_continue
  br label %while_break, !dbg !2693

if.end12:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !2695
  %add.ptr13 = getelementptr inbounds i32, i32* %buffer_out, i64 %idx.ext, !dbg !2695
  %3 = load i32, i32* %add.ptr13, align 4, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %3, metadata !2697, metadata !DIExpression()), !dbg !2644
  %add = add nsw i32 %i.0, 1, !dbg !2698
  %idx.ext14 = sext i32 %add to i64, !dbg !2699
  %add.ptr15 = getelementptr inbounds i32, i32* %error_buffer, i64 %idx.ext14, !dbg !2699
  %4 = load i32, i32* %add.ptr15, align 4, !dbg !2700
  call void @llvm.dbg.value(metadata i32 %4, metadata !2701, metadata !DIExpression()), !dbg !2644
  %add16 = add nsw i32 %3, %4, !dbg !2702
  %sub17 = sub nsw i32 32, %readsamplesize, !dbg !2703
  %shl = shl i32 %add16, %sub17, !dbg !2704
  %sub18 = sub nsw i32 32, %readsamplesize, !dbg !2705
  %shr = ashr i32 %shl, %sub18, !dbg !2706
  %add19 = add nsw i32 %i.0, 1, !dbg !2707
  %idx.ext20 = sext i32 %add19 to i64, !dbg !2708
  %add.ptr21 = getelementptr inbounds i32, i32* %buffer_out, i64 %idx.ext20, !dbg !2708
  store i32 %shr, i32* %add.ptr21, align 4, !dbg !2709
  %inc = add nsw i32 %i.0, 1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while.body, !dbg !2683, !llvm.loop !2711

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !2713

while_break:                                      ; preds = %while_break___5, %if.then11
  br label %return, !dbg !2714

if.end22:                                         ; preds = %if.end3
  %cmp23 = icmp sgt i32 %predictor_coef_num, 0, !dbg !2715
  br i1 %cmp23, label %if.then24, label %if.end43, !dbg !2717

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()), !dbg !2644
  br label %while.body25, !dbg !2719

while.body25:                                     ; preds = %if.end28, %if.then24
  %i___0.0 = phi i32 [ 0, %if.then24 ], [ %inc42, %if.end28 ], !dbg !2723
  call void @llvm.dbg.value(metadata i32 %i___0.0, metadata !2718, metadata !DIExpression()), !dbg !2644
  br label %while_continue___6, !dbg !2724

while_continue___6:                               ; preds = %while.body25
  br label %while_continue___0, !dbg !2724

while_continue___0:                               ; preds = %while_continue___6
  %cmp26 = icmp slt i32 %i___0.0, %predictor_coef_num, !dbg !2725
  br i1 %cmp26, label %if.end28, label %if.then27, !dbg !2728

if.then27:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2729

if.end28:                                         ; preds = %while_continue___0
  %idx.ext29 = sext i32 %i___0.0 to i64, !dbg !2731
  %add.ptr30 = getelementptr inbounds i32, i32* %buffer_out, i64 %idx.ext29, !dbg !2731
  %5 = load i32, i32* %add.ptr30, align 4, !dbg !2732
  %add31 = add nsw i32 %i___0.0, 1, !dbg !2733
  %idx.ext32 = sext i32 %add31 to i64, !dbg !2734
  %add.ptr33 = getelementptr inbounds i32, i32* %error_buffer, i64 %idx.ext32, !dbg !2734
  %6 = load i32, i32* %add.ptr33, align 4, !dbg !2735
  %add34 = add nsw i32 %5, %6, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %add34, metadata !2737, metadata !DIExpression()), !dbg !2644
  %sub35 = sub nsw i32 32, %readsamplesize, !dbg !2738
  %shl36 = shl i32 %add34, %sub35, !dbg !2739
  %sub37 = sub nsw i32 32, %readsamplesize, !dbg !2740
  %shr38 = ashr i32 %shl36, %sub37, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %shr38, metadata !2737, metadata !DIExpression()), !dbg !2644
  %add39 = add nsw i32 %i___0.0, 1, !dbg !2742
  %idx.ext40 = sext i32 %add39 to i64, !dbg !2743
  %add.ptr41 = getelementptr inbounds i32, i32* %buffer_out, i64 %idx.ext40, !dbg !2743
  store i32 %shr38, i32* %add.ptr41, align 4, !dbg !2744
  %inc42 = add nsw i32 %i___0.0, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !2718, metadata !DIExpression()), !dbg !2644
  br label %while.body25, !dbg !2719, !llvm.loop !2746

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !2748

while_break___0:                                  ; preds = %while_break___6, %if.then27
  br label %if.end43, !dbg !2749

if.end43:                                         ; preds = %while_break___0, %if.end22
  %cmp44 = icmp sgt i32 %predictor_coef_num, 0, !dbg !2750
  br i1 %cmp44, label %if.then45, label %if.end171, !dbg !2752

if.then45:                                        ; preds = %if.end43
  %add46 = add nsw i32 %predictor_coef_num, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %add46, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while.body47, !dbg !2755

while.body47:                                     ; preds = %if.end169, %if.then45
  %i.1 = phi i32 [ %add46, %if.then45 ], [ %inc170, %if.end169 ], !dbg !2758
  %buffer_out.addr.0 = phi i32* [ %buffer_out, %if.then45 ], [ %incdec.ptr, %if.end169 ]
  call void @llvm.dbg.value(metadata i32* %buffer_out.addr.0, metadata !2645, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while_continue___7, !dbg !2759

while_continue___7:                               ; preds = %while.body47
  br label %while_continue___1, !dbg !2759

while_continue___1:                               ; preds = %while_continue___7
  %cmp48 = icmp slt i32 %i.1, %output_size, !dbg !2760
  br i1 %cmp48, label %if.end50, label %if.then49, !dbg !2763

if.then49:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2764

if.end50:                                         ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()), !dbg !2644
  %idx.ext51 = sext i32 %i.1 to i64, !dbg !2767
  %add.ptr52 = getelementptr inbounds i32, i32* %error_buffer, i64 %idx.ext51, !dbg !2767
  %7 = load i32, i32* %add.ptr52, align 4, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %7, metadata !2769, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()), !dbg !2644
  br label %while.body54, !dbg !2771

while.body54:                                     ; preds = %if.end57, %if.end50
  %sum.0 = phi i32 [ 0, %if.end50 ], [ %add66, %if.end57 ], !dbg !2774
  %j.0 = phi i32 [ 0, %if.end50 ], [ %inc67, %if.end57 ], !dbg !2774
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2770, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !2766, metadata !DIExpression()), !dbg !2644
  br label %while_continue___8, !dbg !2775

while_continue___8:                               ; preds = %while.body54
  br label %while_continue___2, !dbg !2775

while_continue___2:                               ; preds = %while_continue___8
  %cmp55 = icmp slt i32 %j.0, %predictor_coef_num, !dbg !2776
  br i1 %cmp55, label %if.end57, label %if.then56, !dbg !2779

if.then56:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !2780

if.end57:                                         ; preds = %while_continue___2
  %sub58 = sub nsw i32 %predictor_coef_num, %j.0, !dbg !2782
  %idx.ext59 = sext i32 %sub58 to i64, !dbg !2783
  %add.ptr60 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 %idx.ext59, !dbg !2783
  %8 = load i32, i32* %add.ptr60, align 4, !dbg !2784
  %add.ptr61 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 0, !dbg !2785
  %9 = load i32, i32* %add.ptr61, align 4, !dbg !2786
  %sub62 = sub nsw i32 %8, %9, !dbg !2787
  %idx.ext63 = sext i32 %j.0 to i64, !dbg !2788
  %add.ptr64 = getelementptr inbounds i16, i16* %predictor_coef_table, i64 %idx.ext63, !dbg !2788
  %10 = load i16, i16* %add.ptr64, align 2, !dbg !2789
  %conv = sext i16 %10 to i32, !dbg !2790
  %mul65 = mul nsw i32 %sub62, %conv, !dbg !2791
  %add66 = add nsw i32 %sum.0, %mul65, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %add66, metadata !2766, metadata !DIExpression()), !dbg !2644
  %inc67 = add nsw i32 %j.0, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %inc67, metadata !2770, metadata !DIExpression()), !dbg !2644
  br label %while.body54, !dbg !2771, !llvm.loop !2794

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !2796

while_break___2:                                  ; preds = %while_break___8, %if.then56
  %sub68 = sub nsw i32 %predictor_quantitization, 1, !dbg !2797
  %shl69 = shl i32 1, %sub68, !dbg !2798
  %add70 = add nsw i32 %shl69, %sum.0, !dbg !2799
  call void @llvm.dbg.value(metadata i32 %add70, metadata !2800, metadata !DIExpression()), !dbg !2644
  %shr71 = ashr i32 %add70, %predictor_quantitization, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %shr71, metadata !2800, metadata !DIExpression()), !dbg !2644
  %add.ptr72 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 0, !dbg !2802
  %11 = load i32, i32* %add.ptr72, align 4, !dbg !2803
  %add73 = add nsw i32 %shr71, %11, !dbg !2804
  %add74 = add nsw i32 %add73, %7, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %add74, metadata !2800, metadata !DIExpression()), !dbg !2644
  %sub75 = sub nsw i32 32, %readsamplesize, !dbg !2806
  %shl76 = shl i32 %add74, %sub75, !dbg !2807
  %sub77 = sub nsw i32 32, %readsamplesize, !dbg !2808
  %shr78 = ashr i32 %shl76, %sub77, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %shr78, metadata !2800, metadata !DIExpression()), !dbg !2644
  %add79 = add nsw i32 %predictor_coef_num, 1, !dbg !2810
  %idx.ext80 = sext i32 %add79 to i64, !dbg !2811
  %add.ptr81 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 %idx.ext80, !dbg !2811
  store i32 %shr78, i32* %add.ptr81, align 4, !dbg !2812
  %cmp82 = icmp sgt i32 %7, 0, !dbg !2813
  br i1 %cmp82, label %if.then84, label %if.else123, !dbg !2815

if.then84:                                        ; preds = %while_break___2
  %sub85 = sub nsw i32 %predictor_coef_num, 1, !dbg !2816
  call void @llvm.dbg.value(metadata i32 %sub85, metadata !2818, metadata !DIExpression()), !dbg !2644
  br label %while.body87, !dbg !2819

while.body87:                                     ; preds = %if.end110, %if.then84
  %error_val.0 = phi i32 [ %7, %if.then84 ], [ %sub122, %if.end110 ], !dbg !2774
  %predictor_num.0 = phi i32 [ %sub85, %if.then84 ], [ %dec, %if.end110 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %predictor_num.0, metadata !2818, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %error_val.0, metadata !2769, metadata !DIExpression()), !dbg !2644
  br label %while_continue___9, !dbg !2823

while_continue___9:                               ; preds = %while.body87
  br label %while_continue___3, !dbg !2823

while_continue___3:                               ; preds = %while_continue___9
  %cmp88 = icmp sge i32 %predictor_num.0, 0, !dbg !2824
  br i1 %cmp88, label %if.then90, label %if.else, !dbg !2827

if.then90:                                        ; preds = %while_continue___3
  %cmp91 = icmp sgt i32 %error_val.0, 0, !dbg !2828
  br i1 %cmp91, label %if.end94, label %if.then93, !dbg !2831

if.then93:                                        ; preds = %if.then90
  br label %while_break___3, !dbg !2832

if.end94:                                         ; preds = %if.then90
  br label %if.end95, !dbg !2834

if.else:                                          ; preds = %while_continue___3
  br label %while_break___3, !dbg !2835

if.end95:                                         ; preds = %if.end94
  %add.ptr96 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 0, !dbg !2837
  %12 = load i32, i32* %add.ptr96, align 4, !dbg !2838
  %sub97 = sub nsw i32 %predictor_coef_num, %predictor_num.0, !dbg !2839
  %idx.ext98 = sext i32 %sub97 to i64, !dbg !2840
  %add.ptr99 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 %idx.ext98, !dbg !2840
  %13 = load i32, i32* %add.ptr99, align 4, !dbg !2841
  %sub100 = sub nsw i32 %12, %13, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %sub100, metadata !2843, metadata !DIExpression()), !dbg !2644
  %cmp101 = icmp slt i32 %sub100, 0, !dbg !2844
  br i1 %cmp101, label %if.then103, label %if.else104, !dbg !2846

if.then103:                                       ; preds = %if.end95
  call void @llvm.dbg.value(metadata i32 -1, metadata !2847, metadata !DIExpression()), !dbg !2644
  br label %if.end110, !dbg !2848

if.else104:                                       ; preds = %if.end95
  %cmp105 = icmp sgt i32 %sub100, 0, !dbg !2850
  br i1 %cmp105, label %if.then107, label %if.else108, !dbg !2853

if.then107:                                       ; preds = %if.else104
  call void @llvm.dbg.value(metadata i32 1, metadata !2854, metadata !DIExpression()), !dbg !2644
  br label %if.end109, !dbg !2855

if.else108:                                       ; preds = %if.else104
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()), !dbg !2644
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  %tmp.0 = phi i32 [ 1, %if.then107 ], [ 0, %if.else108 ], !dbg !2857
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2854, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2847, metadata !DIExpression()), !dbg !2644
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then103
  %tmp___0.0 = phi i32 [ -1, %if.then103 ], [ %tmp.0, %if.end109 ], !dbg !2858
  call void @llvm.dbg.value(metadata i32 %tmp___0.0, metadata !2847, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %tmp___0.0, metadata !2859, metadata !DIExpression()), !dbg !2644
  %idx.ext111 = sext i32 %predictor_num.0 to i64, !dbg !2860
  %add.ptr112 = getelementptr inbounds i16, i16* %predictor_coef_table, i64 %idx.ext111, !dbg !2860
  %14 = load i16, i16* %add.ptr112, align 2, !dbg !2861
  %conv113 = sext i16 %14 to i32, !dbg !2862
  %sub114 = sub nsw i32 %conv113, %tmp___0.0, !dbg !2863
  %conv115 = trunc i32 %sub114 to i16, !dbg !2864
  %idx.ext116 = sext i32 %predictor_num.0 to i64, !dbg !2865
  %add.ptr117 = getelementptr inbounds i16, i16* %predictor_coef_table, i64 %idx.ext116, !dbg !2865
  store i16 %conv115, i16* %add.ptr117, align 2, !dbg !2866
  %mul118 = mul nsw i32 %sub100, %tmp___0.0, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %mul118, metadata !2843, metadata !DIExpression()), !dbg !2644
  %shr119 = ashr i32 %mul118, %predictor_quantitization, !dbg !2868
  %sub120 = sub nsw i32 %predictor_coef_num, %predictor_num.0, !dbg !2869
  %mul121 = mul nsw i32 %shr119, %sub120, !dbg !2870
  %sub122 = sub nsw i32 %error_val.0, %mul121, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %sub122, metadata !2769, metadata !DIExpression()), !dbg !2644
  %dec = add nsw i32 %predictor_num.0, -1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2818, metadata !DIExpression()), !dbg !2644
  br label %while.body87, !dbg !2819, !llvm.loop !2873

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !2875

while_break___3:                                  ; preds = %while_break___9, %if.else, %if.then93
  br label %if.end169, !dbg !2876

if.else123:                                       ; preds = %while_break___2
  %cmp124 = icmp slt i32 %7, 0, !dbg !2877
  br i1 %cmp124, label %if.then126, label %if.end168, !dbg !2879

if.then126:                                       ; preds = %if.else123
  %sub127 = sub nsw i32 %predictor_coef_num, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %sub127, metadata !2882, metadata !DIExpression()), !dbg !2644
  br label %while.body129, !dbg !2883

while.body129:                                    ; preds = %if.end153, %if.then126
  %error_val.1 = phi i32 [ %7, %if.then126 ], [ %sub166, %if.end153 ], !dbg !2774
  %predictor_num___0.0 = phi i32 [ %sub127, %if.then126 ], [ %dec167, %if.end153 ], !dbg !2886
  call void @llvm.dbg.value(metadata i32 %predictor_num___0.0, metadata !2882, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %error_val.1, metadata !2769, metadata !DIExpression()), !dbg !2644
  br label %while_continue___10, !dbg !2887

while_continue___10:                              ; preds = %while.body129
  br label %while_continue___4, !dbg !2887

while_continue___4:                               ; preds = %while_continue___10
  %cmp130 = icmp sge i32 %predictor_num___0.0, 0, !dbg !2888
  br i1 %cmp130, label %if.then132, label %if.else137, !dbg !2891

if.then132:                                       ; preds = %while_continue___4
  %cmp133 = icmp slt i32 %error_val.1, 0, !dbg !2892
  br i1 %cmp133, label %if.end136, label %if.then135, !dbg !2895

if.then135:                                       ; preds = %if.then132
  br label %while_break___4, !dbg !2896

if.end136:                                        ; preds = %if.then132
  br label %if.end138, !dbg !2898

if.else137:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !2899

if.end138:                                        ; preds = %if.end136
  %add.ptr139 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 0, !dbg !2901
  %15 = load i32, i32* %add.ptr139, align 4, !dbg !2902
  %sub140 = sub nsw i32 %predictor_coef_num, %predictor_num___0.0, !dbg !2903
  %idx.ext141 = sext i32 %sub140 to i64, !dbg !2904
  %add.ptr142 = getelementptr inbounds i32, i32* %buffer_out.addr.0, i64 %idx.ext141, !dbg !2904
  %16 = load i32, i32* %add.ptr142, align 4, !dbg !2905
  %sub143 = sub nsw i32 %15, %16, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %sub143, metadata !2907, metadata !DIExpression()), !dbg !2644
  %cmp144 = icmp slt i32 %sub143, 0, !dbg !2908
  br i1 %cmp144, label %if.then146, label %if.else147, !dbg !2910

if.then146:                                       ; preds = %if.end138
  call void @llvm.dbg.value(metadata i32 -1, metadata !2911, metadata !DIExpression()), !dbg !2644
  br label %if.end153, !dbg !2912

if.else147:                                       ; preds = %if.end138
  %cmp148 = icmp sgt i32 %sub143, 0, !dbg !2914
  br i1 %cmp148, label %if.then150, label %if.else151, !dbg !2917

if.then150:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 1, metadata !2918, metadata !DIExpression()), !dbg !2644
  br label %if.end152, !dbg !2919

if.else151:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 0, metadata !2918, metadata !DIExpression()), !dbg !2644
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then150
  %tmp___1.0 = phi i32 [ 1, %if.then150 ], [ 0, %if.else151 ], !dbg !2921
  call void @llvm.dbg.value(metadata i32 %tmp___1.0, metadata !2918, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %tmp___1.0, metadata !2911, metadata !DIExpression()), !dbg !2644
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then146
  %tmp___2.0 = phi i32 [ -1, %if.then146 ], [ %tmp___1.0, %if.end152 ], !dbg !2922
  call void @llvm.dbg.value(metadata i32 %tmp___2.0, metadata !2911, metadata !DIExpression()), !dbg !2644
  %sub154 = sub nsw i32 0, %tmp___2.0, !dbg !2923
  call void @llvm.dbg.value(metadata i32 %sub154, metadata !2924, metadata !DIExpression()), !dbg !2644
  %idx.ext155 = sext i32 %predictor_num___0.0 to i64, !dbg !2925
  %add.ptr156 = getelementptr inbounds i16, i16* %predictor_coef_table, i64 %idx.ext155, !dbg !2925
  %17 = load i16, i16* %add.ptr156, align 2, !dbg !2926
  %conv157 = sext i16 %17 to i32, !dbg !2927
  %sub158 = sub nsw i32 %conv157, %sub154, !dbg !2928
  %conv159 = trunc i32 %sub158 to i16, !dbg !2929
  %idx.ext160 = sext i32 %predictor_num___0.0 to i64, !dbg !2930
  %add.ptr161 = getelementptr inbounds i16, i16* %predictor_coef_table, i64 %idx.ext160, !dbg !2930
  store i16 %conv159, i16* %add.ptr161, align 2, !dbg !2931
  %mul162 = mul nsw i32 %sub143, %sub154, !dbg !2932
  call void @llvm.dbg.value(metadata i32 %mul162, metadata !2907, metadata !DIExpression()), !dbg !2644
  %shr163 = ashr i32 %mul162, %predictor_quantitization, !dbg !2933
  %sub164 = sub nsw i32 %predictor_coef_num, %predictor_num___0.0, !dbg !2934
  %mul165 = mul nsw i32 %shr163, %sub164, !dbg !2935
  %sub166 = sub nsw i32 %error_val.1, %mul165, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %sub166, metadata !2769, metadata !DIExpression()), !dbg !2644
  %dec167 = add nsw i32 %predictor_num___0.0, -1, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %dec167, metadata !2882, metadata !DIExpression()), !dbg !2644
  br label %while.body129, !dbg !2883, !llvm.loop !2938

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !2940

while_break___4:                                  ; preds = %while_break___10, %if.else137, %if.then135
  br label %if.end168, !dbg !2941

if.end168:                                        ; preds = %while_break___4, %if.else123
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %while_break___3
  %incdec.ptr = getelementptr inbounds i32, i32* %buffer_out.addr.0, i32 1, !dbg !2942
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !2645, metadata !DIExpression()), !dbg !2644
  %inc170 = add nsw i32 %i.1, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %inc170, metadata !2682, metadata !DIExpression()), !dbg !2644
  br label %while.body47, !dbg !2755, !llvm.loop !2944

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !2946

while_break___1:                                  ; preds = %while_break___7, %if.then49
  br label %if.end171, !dbg !2947

if.end171:                                        ; preds = %while_break___1, %if.end43
  br label %return, !dbg !2948

return:                                           ; preds = %if.end171, %while_break, %if.then7, %if.end, %if.then1
  ret void, !dbg !2949
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.alac_file* @create_alac(i32 %samplesize, i32 %numchannels) #0 !dbg !2950 {
entry:
  call void @llvm.dbg.value(metadata i32 %samplesize, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %numchannels, metadata !2955, metadata !DIExpression()), !dbg !2954
  %call = call noalias i8* @malloc(i32 80) #7, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %call, metadata !2960, metadata !DIExpression()), !dbg !2954
  %0 = bitcast i8* %call to %struct.alac_file*, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.alac_file* %0, metadata !2962, metadata !DIExpression()), !dbg !2954
  %samplesize1 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %0, i32 0, i32 2, !dbg !2963
  store i32 %samplesize, i32* %samplesize1, align 4, !dbg !2964
  %numchannels2 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %0, i32 0, i32 3, !dbg !2965
  store i32 %numchannels, i32* %numchannels2, align 8, !dbg !2966
  %div = sdiv i32 %samplesize, 8, !dbg !2967
  %mul = mul nsw i32 %div, %numchannels, !dbg !2968
  %bytespersample = getelementptr inbounds %struct.alac_file, %struct.alac_file* %0, i32 0, i32 4, !dbg !2969
  store i32 %mul, i32* %bytespersample, align 4, !dbg !2970
  ret %struct.alac_file* %0, !dbg !2971
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @stream_read_uint32(%struct.stream_tTAG* %stream) #0 !dbg !2972 {
entry:
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.declare(metadata i32* %v, metadata !2977, metadata !DIExpression()), !dbg !2978
  %0 = bitcast i32* %v to i8*, !dbg !2979
  call void @stream_read(%struct.stream_tTAG* %stream, i32 4, i8* %0), !dbg !2983
  %bigendian = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !2984
  %1 = load i32, i32* %bigendian, align 8, !dbg !2984
  %tobool = icmp ne i32 %1, 0, !dbg !2986
  br i1 %tobool, label %if.then, label %if.else3, !dbg !2987

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !2988
  %tobool1 = icmp ne i32 %2, 0, !dbg !2988
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !2991

if.then2:                                         ; preds = %if.then
  br label %_L, !dbg !2992

if.else:                                          ; preds = %if.then
  br label %_L___0, !dbg !2994

if.else3:                                         ; preds = %entry
  br label %_L___0, !dbg !2996

_L___0:                                           ; preds = %if.else3, %if.else
  %bigendian4 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !2997
  %3 = load i32, i32* %bigendian4, align 8, !dbg !2997
  %tobool5 = icmp ne i32 %3, 0, !dbg !2999
  br i1 %tobool5, label %if.end16, label %if.then6, !dbg !2986

if.then6:                                         ; preds = %_L___0
  %4 = load i32, i32* @host_bigendian, align 4, !dbg !3000
  %tobool7 = icmp ne i32 %4, 0, !dbg !3000
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3003

if.then8:                                         ; preds = %if.then6
  br label %_L, !dbg !3004

_L:                                               ; preds = %if.then8, %if.then2
  br label %while.body, !dbg !3005

while.body:                                       ; preds = %_L
  br label %while_continue___0, !dbg !3009

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3009

while_continue:                                   ; preds = %while_continue___0
  %5 = load i32, i32* %v, align 4, !dbg !3010
  %and = and i32 %5, 255, !dbg !3012
  %shl = shl i32 %and, 24, !dbg !3013
  %6 = load i32, i32* %v, align 4, !dbg !3014
  %and9 = and i32 %6, 65280, !dbg !3015
  %shl10 = shl i32 %and9, 8, !dbg !3016
  %or = or i32 %shl, %shl10, !dbg !3017
  %7 = load i32, i32* %v, align 4, !dbg !3018
  %and11 = and i32 %7, 16711680, !dbg !3019
  %shr = lshr i32 %and11, 8, !dbg !3020
  %or12 = or i32 %or, %shr, !dbg !3021
  %8 = load i32, i32* %v, align 4, !dbg !3022
  %and13 = and i32 %8, -16777216, !dbg !3023
  %shr14 = lshr i32 %and13, 24, !dbg !3024
  %or15 = or i32 %or12, %shr14, !dbg !3025
  store i32 %or15, i32* %v, align 4, !dbg !3026
  br label %while_break, !dbg !3027

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3028

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !3029

if.end:                                           ; preds = %while_break, %if.then6
  br label %if.end16, !dbg !3030

if.end16:                                         ; preds = %if.end, %_L___0
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %9 = load i32, i32* %v, align 4, !dbg !3031
  ret i32 %9, !dbg !3032
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @stream_eof(%struct.stream_tTAG* %stream) #0 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3036, metadata !DIExpression()), !dbg !3037
  %eof = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 2, !dbg !3038
  %0 = load i32, i32* %eof, align 4, !dbg !3038
  ret i32 %0, !dbg !3040
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_ftyp(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3041 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3046, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.declare(metadata !4, metadata !3047, metadata !DIExpression()), !dbg !3048
  %sub = sub i32 %chunk_len, 8, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3052, metadata !DIExpression()), !dbg !3045
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3053
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3053
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %call, metadata !3056, metadata !DIExpression()), !dbg !3045
  %sub1 = sub i32 %sub, 4, !dbg !3057
  call void @llvm.dbg.value(metadata i32 %sub1, metadata !3052, metadata !DIExpression()), !dbg !3045
  %cmp = icmp ne i32 %call, 1295270176, !dbg !3058
  br i1 %cmp, label %if.then, label %if.end, !dbg !3060

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3061
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)), !dbg !3065
  br label %return, !dbg !3066

if.end:                                           ; preds = %entry
  %stream3 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3067
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream3, align 8, !dbg !3067
  %call4 = call i32 @stream_read_uint32(%struct.stream_tTAG* %2), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3071, metadata !DIExpression()), !dbg !3045
  %sub5 = sub i32 %sub1, 4, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %sub5, metadata !3052, metadata !DIExpression()), !dbg !3045
  br label %while.body, !dbg !3073

while.body:                                       ; preds = %if.end7, %if.end
  %size_remaining.0 = phi i32 [ %sub5, %if.end ], [ %sub10, %if.end7 ], !dbg !3076
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !3052, metadata !DIExpression()), !dbg !3045
  br label %while_continue___0, !dbg !3077

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3077

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !3078
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !3081

if.then6:                                         ; preds = %while_continue
  br label %while_break, !dbg !3082

if.end7:                                          ; preds = %while_continue
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3084
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !3084
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %3), !dbg !3087
  %sub10 = sub i32 %size_remaining.0, 4, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !3052, metadata !DIExpression()), !dbg !3045
  br label %while.body, !dbg !3073, !llvm.loop !3089

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3091

while_break:                                      ; preds = %while_break___0, %if.then6
  br label %return, !dbg !3092

return:                                           ; preds = %while_break, %if.then
  ret void, !dbg !3093
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_moov(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3094 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3099, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata !4, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.declare(metadata !4, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.declare(metadata !4, metadata !3104, metadata !DIExpression()), !dbg !3105
  %sub = sub i32 %chunk_len, 8, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3108, metadata !DIExpression()), !dbg !3098
  br label %while.body, !dbg !3109

while.body:                                       ; preds = %switch_break, %entry
  %size_remaining.0 = phi i32 [ %sub, %entry ], [ %sub39, %switch_break ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !3108, metadata !DIExpression()), !dbg !3098
  br label %while_continue___0, !dbg !3113

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3113

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !3114
  br i1 %tobool, label %if.end, label %if.then, !dbg !3117

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3118

if.end:                                           ; preds = %while_continue
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3120
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3120
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !3123
  call void @llvm.dbg.value(metadata i32 %call, metadata !3124, metadata !DIExpression()), !dbg !3098
  %cmp = icmp ule i32 %call, 1, !dbg !3125
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3127

if.then1:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3128
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !3132
  br label %return, !dbg !3133

if.else:                                          ; preds = %if.end
  %cmp3 = icmp ugt i32 %call, %size_remaining.0, !dbg !3134
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3136

if.then4:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3137
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !3141
  br label %return, !dbg !3142

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3143
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !3143
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %3), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %call9, metadata !3147, metadata !DIExpression()), !dbg !3098
  %cmp10 = icmp eq i32 %call9, 1836476516, !dbg !3148
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3151

if.then11:                                        ; preds = %if.end7
  br label %case_exp, !dbg !3152

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq i32 %call9, 1953653099, !dbg !3154
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3156

if.then14:                                        ; preds = %if.end12
  br label %case_exp___0, !dbg !3157

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call9, 1969517665, !dbg !3159
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3161

if.then17:                                        ; preds = %if.end15
  br label %case_exp___1, !dbg !3162

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %call9, 1701606260, !dbg !3164
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3166

if.then20:                                        ; preds = %if.end18
  br label %case_exp___2, !dbg !3167

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %call9, 1768907891, !dbg !3169
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3171

if.then23:                                        ; preds = %if.end21
  br label %case_exp___3, !dbg !3172

if.end24:                                         ; preds = %if.end21
  br label %switch_default, !dbg !3174

case_exp:                                         ; preds = %if.then11
  call void @read_chunk_mvhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3175
  br label %switch_break, !dbg !3178

case_exp___0:                                     ; preds = %if.then14
  %call25 = call i32 @read_chunk_trak(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %call25, metadata !3182, metadata !DIExpression()), !dbg !3098
  %cmp26 = icmp eq i32 %call25, 0, !dbg !3183
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !3185

if.then27:                                        ; preds = %case_exp___0
  br label %return, !dbg !3186

if.end28:                                         ; preds = %case_exp___0
  br label %switch_break, !dbg !3188

case_exp___1:                                     ; preds = %if.then17
  call void @read_chunk_udta(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3189
  br label %switch_break, !dbg !3192

case_exp___2:                                     ; preds = %if.then20
  call void @read_chunk_elst(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3193
  br label %switch_break, !dbg !3196

case_exp___3:                                     ; preds = %if.then23
  call void @read_chunk_iods(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3197
  br label %switch_break, !dbg !3200

switch_default:                                   ; preds = %if.end24
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3201
  %shr = ashr i32 %call9, 24, !dbg !3204
  %conv = trunc i32 %shr to i8, !dbg !3205
  %conv29 = sext i8 %conv to i32, !dbg !3206
  %shr30 = ashr i32 %call9, 16, !dbg !3207
  %conv31 = trunc i32 %shr30 to i8, !dbg !3208
  %conv32 = sext i8 %conv31 to i32, !dbg !3209
  %shr33 = ashr i32 %call9, 8, !dbg !3210
  %conv34 = trunc i32 %shr33 to i8, !dbg !3211
  %conv35 = sext i8 %conv34 to i32, !dbg !3212
  %conv36 = trunc i32 %call9 to i8, !dbg !3213
  %conv37 = sext i8 %conv36 to i32, !dbg !3214
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i32 %conv29, i32 %conv32, i32 %conv35, i32 %conv37), !dbg !3215
  br label %return, !dbg !3216

switch_break:                                     ; preds = %case_exp___3, %case_exp___2, %case_exp___1, %if.end28, %case_exp
  %sub39 = sub i32 %size_remaining.0, %call, !dbg !3217
  call void @llvm.dbg.value(metadata i32 %sub39, metadata !3108, metadata !DIExpression()), !dbg !3098
  br label %while.body, !dbg !3109, !llvm.loop !3218

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3220

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !3221

return:                                           ; preds = %while_break, %switch_default, %if.then27, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 0, %if.then27 ], [ 0, %switch_default ], [ 1, %while_break ], !dbg !3112
  ret i32 %retval.0, !dbg !3222
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @set_saved_mdat(%struct.__anonstruct_qtmovie_t_25* %qtmovie) #0 !dbg !3223 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.declare(metadata !4, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata !4, metadata !3230, metadata !DIExpression()), !dbg !3231
  %saved_mdat_pos = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 2, !dbg !3232
  %0 = load i64, i64* %saved_mdat_pos, align 8, !dbg !3232
  %cmp = icmp eq i64 %0, -1, !dbg !3235
  br i1 %cmp, label %if.then, label %if.end, !dbg !3236

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3237
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.47, i32 0, i32 0)), !dbg !3241
  br label %return, !dbg !3242

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3243
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3243
  %saved_mdat_pos1 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 2, !dbg !3246
  %3 = load i64, i64* %saved_mdat_pos1, align 8, !dbg !3246
  %call2 = call i32 @stream_setpos(%struct.stream_tTAG* %2, i64 %3), !dbg !3247
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3248, metadata !DIExpression()), !dbg !3227
  %tobool = icmp ne i32 %call2, 0, !dbg !3249
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !3251

if.then3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3252
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0)), !dbg !3256
  br label %return, !dbg !3257

if.end5:                                          ; preds = %if.end
  br label %return, !dbg !3258

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end5 ], !dbg !3259
  ret i32 %retval.0, !dbg !3260
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_mdat(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len, i32 %skip_mdat) #0 !dbg !3261 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3266, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %skip_mdat, metadata !3267, metadata !DIExpression()), !dbg !3265
  %sub = sub i32 %chunk_len, 8, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3270, metadata !DIExpression()), !dbg !3265
  %cmp = icmp eq i32 %sub, 0, !dbg !3271
  br i1 %cmp, label %if.then, label %if.end, !dbg !3273

if.then:                                          ; preds = %entry
  br label %return, !dbg !3274

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !3276
  %0 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res, align 8, !dbg !3276
  %mdat_len = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %0, i32 0, i32 12, !dbg !3277
  store i32 %sub, i32* %mdat_len, align 8, !dbg !3278
  %tobool = icmp ne i32 %skip_mdat, 0, !dbg !3279
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !3281

if.then1:                                         ; preds = %if.end
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3282
  %1 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3282
  %call = call i64 @stream_tell(%struct.stream_tTAG* %1), !dbg !3286
  %saved_mdat_pos = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 2, !dbg !3287
  store i64 %call, i64* %saved_mdat_pos, align 8, !dbg !3288
  %stream2 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3289
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream2, align 8, !dbg !3289
  call void @stream_skip(%struct.stream_tTAG* %2, i32 %sub), !dbg !3291
  br label %if.end3, !dbg !3292

if.end3:                                          ; preds = %if.then1, %if.end
  br label %return, !dbg !3293

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3294
}

; Function Attrs: noinline nounwind ssp uwtable
define void @stream_skip(%struct.stream_tTAG* %stream, i32 %skip) #0 !dbg !3295 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %skip, metadata !3300, metadata !DIExpression()), !dbg !3299
  %f = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 0, !dbg !3301
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !3301
  %conv = zext i32 %skip to i64, !dbg !3305
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %conv, i32 1), !dbg !3306
  call void @llvm.dbg.value(metadata i32 %call, metadata !3307, metadata !DIExpression()), !dbg !3299
  %cmp = icmp eq i32 %call, 0, !dbg !3308
  br i1 %cmp, label %if.then, label %if.end, !dbg !3310

if.then:                                          ; preds = %entry
  br label %return, !dbg !3311

if.end:                                           ; preds = %entry
  %call2 = call i32* @__errno_location() #10, !dbg !3313
  call void @llvm.dbg.value(metadata i32* %call2, metadata !3316, metadata !DIExpression()), !dbg !3299
  %1 = load i32, i32* %call2, align 4, !dbg !3317
  %cmp3 = icmp eq i32 %1, 29, !dbg !3319
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !3320

if.then5:                                         ; preds = %if.end
  %call6 = call noalias i8* @malloc(i32 %skip) #7, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %call6, metadata !3325, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %call6, metadata !3326, metadata !DIExpression()), !dbg !3299
  call void @stream_read(%struct.stream_tTAG* %stream, i32 %skip, i8* %call6), !dbg !3327
  call void @free(i8* %call6) #7, !dbg !3329
  br label %if.end7, !dbg !3331

if.end7:                                          ; preds = %if.then5, %if.end
  br label %return, !dbg !3332

return:                                           ; preds = %if.end7, %if.then
  ret void, !dbg !3333
}

; Function Attrs: noinline nounwind ssp uwtable
define void @stream_read(%struct.stream_tTAG* %stream, i32 %size, i8* %buf) #0 !dbg !3334 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %size, metadata !3339, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3340, metadata !DIExpression()), !dbg !3338
  %shr = lshr i32 %size, 2, !dbg !3341
  %f = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 0, !dbg !3345
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !3345
  %call = call i32 @fread(i8* %buf, i32 4, i32 %shr, %struct._IO_FILE* %0), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %call, metadata !3347, metadata !DIExpression()), !dbg !3338
  %mul = mul i32 %call, 4, !dbg !3348
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3349, metadata !DIExpression()), !dbg !3338
  %idx.ext = zext i32 %mul to i64, !dbg !3350
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext, !dbg !3350
  %sub = sub i32 %size, %mul, !dbg !3352
  %f1 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 0, !dbg !3353
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f1, align 8, !dbg !3353
  %call2 = call i32 @fread(i8* %add.ptr, i32 1, i32 %sub, %struct._IO_FILE* %1), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3355, metadata !DIExpression()), !dbg !3338
  %add = add i32 %mul, %call2, !dbg !3356
  call void @llvm.dbg.value(metadata i32 %add, metadata !3349, metadata !DIExpression()), !dbg !3338
  %cmp = icmp eq i32 %add, 0, !dbg !3357
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3359

if.then:                                          ; preds = %entry
  %cmp3 = icmp ne i32 %size, 0, !dbg !3360
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !3363

if.then4:                                         ; preds = %if.then
  %eof = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 2, !dbg !3364
  store i32 1, i32* %eof, align 4, !dbg !3366
  br label %if.end, !dbg !3367

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5, !dbg !3368

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !3369
}

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @stream_read_int32(%struct.stream_tTAG* %stream) #0 !dbg !3370 {
entry:
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata i32* %v, metadata !3375, metadata !DIExpression()), !dbg !3376
  %0 = bitcast i32* %v to i8*, !dbg !3377
  call void @stream_read(%struct.stream_tTAG* %stream, i32 4, i8* %0), !dbg !3381
  %bigendian = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3382
  %1 = load i32, i32* %bigendian, align 8, !dbg !3382
  %tobool = icmp ne i32 %1, 0, !dbg !3384
  br i1 %tobool, label %if.then, label %if.else3, !dbg !3385

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !3386
  %tobool1 = icmp ne i32 %2, 0, !dbg !3386
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3389

if.then2:                                         ; preds = %if.then
  br label %_L, !dbg !3390

if.else:                                          ; preds = %if.then
  br label %_L___0, !dbg !3392

if.else3:                                         ; preds = %entry
  br label %_L___0, !dbg !3394

_L___0:                                           ; preds = %if.else3, %if.else
  %bigendian4 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3395
  %3 = load i32, i32* %bigendian4, align 8, !dbg !3395
  %tobool5 = icmp ne i32 %3, 0, !dbg !3397
  br i1 %tobool5, label %if.end16, label %if.then6, !dbg !3384

if.then6:                                         ; preds = %_L___0
  %4 = load i32, i32* @host_bigendian, align 4, !dbg !3398
  %tobool7 = icmp ne i32 %4, 0, !dbg !3398
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3401

if.then8:                                         ; preds = %if.then6
  br label %_L, !dbg !3402

_L:                                               ; preds = %if.then8, %if.then2
  br label %while.body, !dbg !3403

while.body:                                       ; preds = %_L
  br label %while_continue___0, !dbg !3407

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3407

while_continue:                                   ; preds = %while_continue___0
  %5 = load i32, i32* %v, align 4, !dbg !3408
  %and = and i32 %5, 255, !dbg !3410
  %shl = shl i32 %and, 24, !dbg !3411
  %6 = load i32, i32* %v, align 4, !dbg !3412
  %and9 = and i32 %6, 65280, !dbg !3413
  %shl10 = shl i32 %and9, 8, !dbg !3414
  %or = or i32 %shl, %shl10, !dbg !3415
  %7 = load i32, i32* %v, align 4, !dbg !3416
  %and11 = and i32 %7, 16711680, !dbg !3417
  %shr = ashr i32 %and11, 8, !dbg !3418
  %or12 = or i32 %or, %shr, !dbg !3419
  %8 = load i32, i32* %v, align 4, !dbg !3420
  %and13 = and i32 %8, -16777216, !dbg !3421
  %shr14 = lshr i32 %and13, 24, !dbg !3422
  %or15 = or i32 %or12, %shr14, !dbg !3423
  store i32 %or15, i32* %v, align 4, !dbg !3424
  br label %while_break, !dbg !3425

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3426

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !3427

if.end:                                           ; preds = %while_break, %if.then6
  br label %if.end16, !dbg !3428

if.end16:                                         ; preds = %if.end, %_L___0
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %9 = load i32, i32* %v, align 4, !dbg !3429
  ret i32 %9, !dbg !3430
}

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @stream_read_int16(%struct.stream_tTAG* %stream) #0 !dbg !3431 {
entry:
  %v = alloca i16, align 2
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.declare(metadata i16* %v, metadata !3436, metadata !DIExpression()), !dbg !3437
  %0 = bitcast i16* %v to i8*, !dbg !3438
  call void @stream_read(%struct.stream_tTAG* %stream, i32 2, i8* %0), !dbg !3442
  %bigendian = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3443
  %1 = load i32, i32* %bigendian, align 8, !dbg !3443
  %tobool = icmp ne i32 %1, 0, !dbg !3445
  br i1 %tobool, label %if.then, label %if.else3, !dbg !3446

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !3447
  %tobool1 = icmp ne i32 %2, 0, !dbg !3447
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3450

if.then2:                                         ; preds = %if.then
  br label %_L, !dbg !3451

if.else:                                          ; preds = %if.then
  br label %_L___0, !dbg !3453

if.else3:                                         ; preds = %entry
  br label %_L___0, !dbg !3455

_L___0:                                           ; preds = %if.else3, %if.else
  %bigendian4 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3456
  %3 = load i32, i32* %bigendian4, align 8, !dbg !3456
  %tobool5 = icmp ne i32 %3, 0, !dbg !3458
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !3445

if.then6:                                         ; preds = %_L___0
  %4 = load i32, i32* @host_bigendian, align 4, !dbg !3459
  %tobool7 = icmp ne i32 %4, 0, !dbg !3459
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3462

if.then8:                                         ; preds = %if.then6
  br label %_L, !dbg !3463

_L:                                               ; preds = %if.then8, %if.then2
  br label %while.body, !dbg !3464

while.body:                                       ; preds = %_L
  br label %while_continue___0, !dbg !3468

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3468

while_continue:                                   ; preds = %while_continue___0
  %5 = load i16, i16* %v, align 2, !dbg !3469
  %conv = sext i16 %5 to i32, !dbg !3471
  %and = and i32 %conv, 255, !dbg !3472
  %shl = shl i32 %and, 8, !dbg !3473
  %6 = load i16, i16* %v, align 2, !dbg !3474
  %conv9 = sext i16 %6 to i32, !dbg !3475
  %and10 = and i32 %conv9, 65280, !dbg !3476
  %shr = ashr i32 %and10, 8, !dbg !3477
  %or = or i32 %shl, %shr, !dbg !3478
  %conv11 = trunc i32 %or to i16, !dbg !3479
  store i16 %conv11, i16* %v, align 2, !dbg !3480
  br label %while_break, !dbg !3481

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3482

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !3483

if.end:                                           ; preds = %while_break, %if.then6
  br label %if.end12, !dbg !3484

if.end12:                                         ; preds = %if.end, %_L___0
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  %7 = load i16, i16* %v, align 2, !dbg !3485
  ret i16 %7, !dbg !3486
}

; Function Attrs: noinline nounwind ssp uwtable
define zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %stream) #0 !dbg !3487 {
entry:
  %v = alloca i16, align 2
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata i16* %v, metadata !3492, metadata !DIExpression()), !dbg !3493
  %0 = bitcast i16* %v to i8*, !dbg !3494
  call void @stream_read(%struct.stream_tTAG* %stream, i32 2, i8* %0), !dbg !3498
  %bigendian = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3499
  %1 = load i32, i32* %bigendian, align 8, !dbg !3499
  %tobool = icmp ne i32 %1, 0, !dbg !3501
  br i1 %tobool, label %if.then, label %if.else3, !dbg !3502

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @host_bigendian, align 4, !dbg !3503
  %tobool1 = icmp ne i32 %2, 0, !dbg !3503
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3506

if.then2:                                         ; preds = %if.then
  br label %_L, !dbg !3507

if.else:                                          ; preds = %if.then
  br label %_L___0, !dbg !3509

if.else3:                                         ; preds = %entry
  br label %_L___0, !dbg !3511

_L___0:                                           ; preds = %if.else3, %if.else
  %bigendian4 = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 1, !dbg !3512
  %3 = load i32, i32* %bigendian4, align 8, !dbg !3512
  %tobool5 = icmp ne i32 %3, 0, !dbg !3514
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !3501

if.then6:                                         ; preds = %_L___0
  %4 = load i32, i32* @host_bigendian, align 4, !dbg !3515
  %tobool7 = icmp ne i32 %4, 0, !dbg !3515
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3518

if.then8:                                         ; preds = %if.then6
  br label %_L, !dbg !3519

_L:                                               ; preds = %if.then8, %if.then2
  br label %while.body, !dbg !3520

while.body:                                       ; preds = %_L
  br label %while_continue___0, !dbg !3524

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3524

while_continue:                                   ; preds = %while_continue___0
  %5 = load i16, i16* %v, align 2, !dbg !3525
  %conv = zext i16 %5 to i32, !dbg !3527
  %and = and i32 %conv, 255, !dbg !3528
  %shl = shl i32 %and, 8, !dbg !3529
  %6 = load i16, i16* %v, align 2, !dbg !3530
  %conv9 = zext i16 %6 to i32, !dbg !3531
  %and10 = and i32 %conv9, 65280, !dbg !3532
  %shr = ashr i32 %and10, 8, !dbg !3533
  %or = or i32 %shl, %shr, !dbg !3534
  %conv11 = trunc i32 %or to i16, !dbg !3535
  store i16 %conv11, i16* %v, align 2, !dbg !3536
  br label %while_break, !dbg !3537

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3538

while_break:                                      ; preds = %while_break___0, %while_continue
  br label %if.end, !dbg !3539

if.end:                                           ; preds = %while_break, %if.then6
  br label %if.end12, !dbg !3540

if.end12:                                         ; preds = %if.end, %_L___0
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  %7 = load i16, i16* %v, align 2, !dbg !3541
  ret i16 %7, !dbg !3542
}

; Function Attrs: noinline nounwind ssp uwtable
define signext i8 @stream_read_int8(%struct.stream_tTAG* %stream) #0 !dbg !3543 {
entry:
  %v = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.declare(metadata i8* %v, metadata !3549, metadata !DIExpression()), !dbg !3550
  call void @stream_read(%struct.stream_tTAG* %stream, i32 1, i8* %v), !dbg !3551
  %0 = load i8, i8* %v, align 1, !dbg !3555
  ret i8 %0, !dbg !3556
}

; Function Attrs: noinline nounwind ssp uwtable
define zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %stream) #0 !dbg !3557 {
entry:
  %v = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3560, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.declare(metadata i8* %v, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @stream_read(%struct.stream_tTAG* %stream, i32 1, i8* %v), !dbg !3564
  %0 = load i8, i8* %v, align 1, !dbg !3568
  ret i8 %0, !dbg !3569
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @stream_tell(%struct.stream_tTAG* %stream) #0 !dbg !3570 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3573, metadata !DIExpression()), !dbg !3574
  %f = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 0, !dbg !3575
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !3575
  %call = call i64 @ftell(%struct._IO_FILE* %0), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %call, metadata !3580, metadata !DIExpression()), !dbg !3574
  ret i64 %call, !dbg !3581
}

declare i64 @ftell(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @stream_setpos(%struct.stream_tTAG* %stream, i64 %pos) #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata %struct.stream_tTAG* %stream, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %pos, metadata !3587, metadata !DIExpression()), !dbg !3586
  %f = getelementptr inbounds %struct.stream_tTAG, %struct.stream_tTAG* %stream, i32 0, i32 0, !dbg !3588
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !3588
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 %pos, i32 0), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %call, metadata !3593, metadata !DIExpression()), !dbg !3586
  ret i32 %call, !dbg !3594
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @usage() #0 !dbg !3595 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !3596, metadata !DIExpression()), !dbg !3597
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3598
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([553 x i8], [553 x i8]* @.str.21, i32 0, i32 0)), !dbg !3602
  call void @exit(i32 1) #9, !dbg !3603
  unreachable, !dbg !3603

return:                                           ; No predecessors!
  ret void, !dbg !3605
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @readbits_16(%struct.alac_file* %alac___0, i32 %bits) #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata %struct.alac_file* %alac___0, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %bits, metadata !3609, metadata !DIExpression()), !dbg !3608
  %input_buffer = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !3610
  %0 = load i8*, i8** %input_buffer, align 8, !dbg !3610
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0, !dbg !3612
  %1 = load i8, i8* %add.ptr, align 1, !dbg !3613
  %conv = zext i8 %1 to i32, !dbg !3614
  %shl = shl i32 %conv, 16, !dbg !3615
  %input_buffer1 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !3616
  %2 = load i8*, i8** %input_buffer1, align 8, !dbg !3616
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3617
  %3 = load i8, i8* %add.ptr2, align 1, !dbg !3618
  %conv3 = zext i8 %3 to i32, !dbg !3619
  %shl4 = shl i32 %conv3, 8, !dbg !3620
  %or = or i32 %shl, %shl4, !dbg !3621
  %input_buffer5 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !3622
  %4 = load i8*, i8** %input_buffer5, align 8, !dbg !3622
  %add.ptr6 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !3623
  %5 = load i8, i8* %add.ptr6, align 1, !dbg !3624
  %conv7 = zext i8 %5 to i32, !dbg !3625
  %or8 = or i32 %or, %conv7, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %or8, metadata !3627, metadata !DIExpression()), !dbg !3608
  %input_buffer_bitaccumulator = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !3628
  %6 = load i32, i32* %input_buffer_bitaccumulator, align 8, !dbg !3628
  %shl9 = shl i32 %or8, %6, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %shl9, metadata !3627, metadata !DIExpression()), !dbg !3608
  %and = and i32 %shl9, 16777215, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %and, metadata !3627, metadata !DIExpression()), !dbg !3608
  %sub = sub nsw i32 24, %bits, !dbg !3631
  %shr = lshr i32 %and, %sub, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %shr, metadata !3627, metadata !DIExpression()), !dbg !3608
  %input_buffer_bitaccumulator10 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !3633
  %7 = load i32, i32* %input_buffer_bitaccumulator10, align 8, !dbg !3633
  %add = add nsw i32 %7, %bits, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %add, metadata !3635, metadata !DIExpression()), !dbg !3608
  %shr11 = ashr i32 %add, 3, !dbg !3636
  %input_buffer12 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 0, !dbg !3637
  %8 = load i8*, i8** %input_buffer12, align 8, !dbg !3638
  %idx.ext = sext i32 %shr11 to i64, !dbg !3638
  %add.ptr13 = getelementptr inbounds i8, i8* %8, i64 %idx.ext, !dbg !3638
  store i8* %add.ptr13, i8** %input_buffer12, align 8, !dbg !3638
  %and14 = and i32 %add, 7, !dbg !3639
  %input_buffer_bitaccumulator15 = getelementptr inbounds %struct.alac_file, %struct.alac_file* %alac___0, i32 0, i32 1, !dbg !3640
  store i32 %and14, i32* %input_buffer_bitaccumulator15, align 8, !dbg !3641
  ret i32 %shr, !dbg !3642
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_mvhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3643 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3646, metadata !DIExpression()), !dbg !3645
  %sub = sub i32 %chunk_len, 8, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3650, metadata !DIExpression()), !dbg !3645
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3651
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3651
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3653
  ret void, !dbg !3654
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_trak(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3658, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.declare(metadata !4, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.declare(metadata !4, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.declare(metadata !4, metadata !3663, metadata !DIExpression()), !dbg !3664
  %sub = sub i32 %chunk_len, 8, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3667, metadata !DIExpression()), !dbg !3657
  br label %while.body, !dbg !3668

while.body:                                       ; preds = %switch_break, %entry
  %size_remaining.0 = phi i32 [ %sub, %entry ], [ %sub33, %switch_break ], !dbg !3671
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !3667, metadata !DIExpression()), !dbg !3657
  br label %while_continue___0, !dbg !3672

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3672

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !3673
  br i1 %tobool, label %if.end, label %if.then, !dbg !3676

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3677

if.end:                                           ; preds = %while_continue
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3679
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3679
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !3682
  call void @llvm.dbg.value(metadata i32 %call, metadata !3683, metadata !DIExpression()), !dbg !3657
  %cmp = icmp ule i32 %call, 1, !dbg !3684
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3686

if.then1:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3687
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !3691
  br label %return, !dbg !3692

if.else:                                          ; preds = %if.end
  %cmp3 = icmp ugt i32 %call, %size_remaining.0, !dbg !3693
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3695

if.then4:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3696
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !3700
  br label %return, !dbg !3701

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3702
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !3702
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %3), !dbg !3705
  call void @llvm.dbg.value(metadata i32 %call9, metadata !3706, metadata !DIExpression()), !dbg !3657
  %cmp10 = icmp eq i32 %call9, 1953196132, !dbg !3707
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3710

if.then11:                                        ; preds = %if.end7
  br label %case_exp, !dbg !3711

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq i32 %call9, 1835297121, !dbg !3713
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3715

if.then14:                                        ; preds = %if.end12
  br label %case_exp___0, !dbg !3716

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call9, 1701082227, !dbg !3718
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3720

if.then17:                                        ; preds = %if.end15
  br label %case_exp___1, !dbg !3721

if.end18:                                         ; preds = %if.end15
  br label %switch_default, !dbg !3723

case_exp:                                         ; preds = %if.then11
  call void @read_chunk_tkhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3724
  br label %switch_break, !dbg !3727

case_exp___0:                                     ; preds = %if.then14
  %call19 = call i32 @read_chunk_mdia(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3728
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3731, metadata !DIExpression()), !dbg !3657
  %cmp20 = icmp eq i32 %call19, 0, !dbg !3732
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3734

if.then21:                                        ; preds = %case_exp___0
  br label %return, !dbg !3735

if.end22:                                         ; preds = %case_exp___0
  br label %switch_break, !dbg !3737

case_exp___1:                                     ; preds = %if.then17
  call void @read_chunk_edts(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3738
  br label %switch_break, !dbg !3741

switch_default:                                   ; preds = %if.end18
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3742
  %shr = ashr i32 %call9, 24, !dbg !3745
  %conv = trunc i32 %shr to i8, !dbg !3746
  %conv23 = sext i8 %conv to i32, !dbg !3747
  %shr24 = ashr i32 %call9, 16, !dbg !3748
  %conv25 = trunc i32 %shr24 to i8, !dbg !3749
  %conv26 = sext i8 %conv25 to i32, !dbg !3750
  %shr27 = ashr i32 %call9, 8, !dbg !3751
  %conv28 = trunc i32 %shr27 to i8, !dbg !3752
  %conv29 = sext i8 %conv28 to i32, !dbg !3753
  %conv30 = trunc i32 %call9 to i8, !dbg !3754
  %conv31 = sext i8 %conv30 to i32, !dbg !3755
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0), i32 %conv23, i32 %conv26, i32 %conv29, i32 %conv31), !dbg !3756
  br label %return, !dbg !3757

switch_break:                                     ; preds = %case_exp___1, %if.end22, %case_exp
  %sub33 = sub i32 %size_remaining.0, %call, !dbg !3758
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !3667, metadata !DIExpression()), !dbg !3657
  br label %while.body, !dbg !3668, !llvm.loop !3759

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3761

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !3762

return:                                           ; preds = %while_break, %switch_default, %if.then21, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 0, %if.then21 ], [ 0, %switch_default ], [ 1, %while_break ], !dbg !3671
  ret i32 %retval.0, !dbg !3763
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_udta(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3764 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3765, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3767, metadata !DIExpression()), !dbg !3766
  %sub = sub i32 %chunk_len, 8, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3771, metadata !DIExpression()), !dbg !3766
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3772
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3772
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3774
  ret void, !dbg !3775
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_elst(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3779, metadata !DIExpression()), !dbg !3778
  %sub = sub i32 %chunk_len, 8, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3783, metadata !DIExpression()), !dbg !3778
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3784
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3784
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3786
  ret void, !dbg !3787
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_iods(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3788 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3791, metadata !DIExpression()), !dbg !3790
  %sub = sub i32 %chunk_len, 8, !dbg !3792
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3795, metadata !DIExpression()), !dbg !3790
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3796
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3796
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3798
  ret void, !dbg !3799
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_tkhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3800 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3801, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3803, metadata !DIExpression()), !dbg !3802
  %sub = sub i32 %chunk_len, 8, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3807, metadata !DIExpression()), !dbg !3802
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3808
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3808
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3810
  ret void, !dbg !3811
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_mdia(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3812 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3815, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.declare(metadata !4, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.declare(metadata !4, metadata !3818, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.declare(metadata !4, metadata !3820, metadata !DIExpression()), !dbg !3821
  %sub = sub i32 %chunk_len, 8, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3824, metadata !DIExpression()), !dbg !3814
  br label %while.body, !dbg !3825

while.body:                                       ; preds = %switch_break, %entry
  %size_remaining.0 = phi i32 [ %sub, %entry ], [ %sub33, %switch_break ], !dbg !3828
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !3824, metadata !DIExpression()), !dbg !3814
  br label %while_continue___0, !dbg !3829

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3829

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !3830
  br i1 %tobool, label %if.end, label %if.then, !dbg !3833

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3834

if.end:                                           ; preds = %while_continue
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3836
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3836
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !3839
  call void @llvm.dbg.value(metadata i32 %call, metadata !3840, metadata !DIExpression()), !dbg !3814
  %cmp = icmp ule i32 %call, 1, !dbg !3841
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3843

if.then1:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3844
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0)), !dbg !3848
  br label %return, !dbg !3849

if.else:                                          ; preds = %if.end
  %cmp3 = icmp ugt i32 %call, %size_remaining.0, !dbg !3850
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3852

if.then4:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3853
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0)), !dbg !3857
  br label %return, !dbg !3858

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3859
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !3859
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %3), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %call9, metadata !3863, metadata !DIExpression()), !dbg !3814
  %cmp10 = icmp eq i32 %call9, 1835296868, !dbg !3864
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3867

if.then11:                                        ; preds = %if.end7
  br label %case_exp, !dbg !3868

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq i32 %call9, 1751411826, !dbg !3870
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3872

if.then14:                                        ; preds = %if.end12
  br label %case_exp___0, !dbg !3873

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call9, 1835626086, !dbg !3875
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3877

if.then17:                                        ; preds = %if.end15
  br label %case_exp___1, !dbg !3878

if.end18:                                         ; preds = %if.end15
  br label %switch_default, !dbg !3880

case_exp:                                         ; preds = %if.then11
  call void @read_chunk_mdhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3881
  br label %switch_break, !dbg !3884

case_exp___0:                                     ; preds = %if.then14
  call void @read_chunk_hdlr(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3885
  br label %switch_break, !dbg !3888

case_exp___1:                                     ; preds = %if.then17
  %call19 = call i32 @read_chunk_minf(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !3889
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3892, metadata !DIExpression()), !dbg !3814
  %cmp20 = icmp eq i32 %call19, 0, !dbg !3893
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3895

if.then21:                                        ; preds = %case_exp___1
  br label %return, !dbg !3896

if.end22:                                         ; preds = %case_exp___1
  br label %switch_break, !dbg !3898

switch_default:                                   ; preds = %if.end18
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3899
  %shr = ashr i32 %call9, 24, !dbg !3902
  %conv = trunc i32 %shr to i8, !dbg !3903
  %conv23 = sext i8 %conv to i32, !dbg !3904
  %shr24 = ashr i32 %call9, 16, !dbg !3905
  %conv25 = trunc i32 %shr24 to i8, !dbg !3906
  %conv26 = sext i8 %conv25 to i32, !dbg !3907
  %shr27 = ashr i32 %call9, 8, !dbg !3908
  %conv28 = trunc i32 %shr27 to i8, !dbg !3909
  %conv29 = sext i8 %conv28 to i32, !dbg !3910
  %conv30 = trunc i32 %call9 to i8, !dbg !3911
  %conv31 = sext i8 %conv30 to i32, !dbg !3912
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0), i32 %conv23, i32 %conv26, i32 %conv29, i32 %conv31), !dbg !3913
  br label %return, !dbg !3914

switch_break:                                     ; preds = %if.end22, %case_exp___0, %case_exp
  %sub33 = sub i32 %size_remaining.0, %call, !dbg !3915
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !3824, metadata !DIExpression()), !dbg !3814
  br label %while.body, !dbg !3825, !llvm.loop !3916

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3918

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !3919

return:                                           ; preds = %while_break, %switch_default, %if.then21, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 0, %if.then21 ], [ 0, %switch_default ], [ 1, %while_break ], !dbg !3828
  ret i32 %retval.0, !dbg !3920
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_edts(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3921 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3924, metadata !DIExpression()), !dbg !3923
  %sub = sub i32 %chunk_len, 8, !dbg !3925
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3928, metadata !DIExpression()), !dbg !3923
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3929
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3929
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3931
  ret void, !dbg !3932
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_mdhd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3933 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3936, metadata !DIExpression()), !dbg !3935
  %sub = sub i32 %chunk_len, 8, !dbg !3937
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3940, metadata !DIExpression()), !dbg !3935
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3941
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3941
  call void @stream_skip(%struct.stream_tTAG* %0, i32 %sub), !dbg !3943
  ret void, !dbg !3944
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_hdlr(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !3945 {
entry:
  %str = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !3948, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata [256 x i8]* %str, metadata !3949, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.declare(metadata !4, metadata !3954, metadata !DIExpression()), !dbg !3955
  %sub = sub i32 %chunk_len, 8, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3958, metadata !DIExpression()), !dbg !3947
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %str, i64 0, i64 0, !dbg !3959
  store i8 0, i8* %arrayidx, align 16, !dbg !3960
  call void @llvm.dbg.value(metadata i32 1, metadata !3961, metadata !DIExpression()), !dbg !3947
  br label %while.body, !dbg !3962

while.body:                                       ; preds = %if.end, %entry
  %tmp.0 = phi i32 [ 1, %entry ], [ %inc, %if.end ], !dbg !3965
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !3961, metadata !DIExpression()), !dbg !3947
  br label %while_continue___0, !dbg !3966

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3966

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp uge i32 %tmp.0, 256, !dbg !3967
  br i1 %cmp, label %if.then, label %if.end, !dbg !3970

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3971

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %tmp.0 to i64, !dbg !3973
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i64 0, i64 %idxprom, !dbg !3973
  store i8 0, i8* %arrayidx1, align 1, !dbg !3974
  %inc = add i32 %tmp.0, 1, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3961, metadata !DIExpression()), !dbg !3947
  br label %while.body, !dbg !3962, !llvm.loop !3975

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3977

while_break:                                      ; preds = %while_break___0, %if.then
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3978
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !3978
  %call = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %0), !dbg !3981
  %dec = add i32 %sub, -1, !dbg !3982
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3958, metadata !DIExpression()), !dbg !3947
  %stream2 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3983
  %1 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream2, align 8, !dbg !3983
  %call3 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %1), !dbg !3985
  %stream4 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3986
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream4, align 8, !dbg !3986
  %call5 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %2), !dbg !3988
  %stream6 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3989
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream6, align 8, !dbg !3989
  %call7 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %3), !dbg !3991
  %sub8 = sub i32 %dec, 3, !dbg !3992
  call void @llvm.dbg.value(metadata i32 %sub8, metadata !3958, metadata !DIExpression()), !dbg !3947
  %stream9 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3993
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream9, align 8, !dbg !3993
  %call10 = call i32 @stream_read_uint32(%struct.stream_tTAG* %4), !dbg !3995
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3996, metadata !DIExpression()), !dbg !3947
  %stream11 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !3997
  %5 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream11, align 8, !dbg !3997
  %call12 = call i32 @stream_read_uint32(%struct.stream_tTAG* %5), !dbg !3999
  call void @llvm.dbg.value(metadata i32 %call12, metadata !4000, metadata !DIExpression()), !dbg !3947
  %sub13 = sub i32 %sub8, 8, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !3958, metadata !DIExpression()), !dbg !3947
  %stream14 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4002
  %6 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream14, align 8, !dbg !4002
  %call15 = call i32 @stream_read_uint32(%struct.stream_tTAG* %6), !dbg !4004
  %sub16 = sub i32 %sub13, 4, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %sub16, metadata !3958, metadata !DIExpression()), !dbg !3947
  %stream17 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4006
  %7 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream17, align 8, !dbg !4006
  %call18 = call i32 @stream_read_uint32(%struct.stream_tTAG* %7), !dbg !4008
  %stream19 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4009
  %8 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream19, align 8, !dbg !4009
  %call20 = call i32 @stream_read_uint32(%struct.stream_tTAG* %8), !dbg !4011
  %sub21 = sub i32 %sub16, 8, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %sub21, metadata !3958, metadata !DIExpression()), !dbg !3947
  %stream22 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4013
  %9 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream22, align 8, !dbg !4013
  %call23 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %9), !dbg !4015
  call void @llvm.dbg.value(metadata i8 %call23, metadata !4016, metadata !DIExpression()), !dbg !3947
  %conv = zext i8 %call23 to i32, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4018, metadata !DIExpression()), !dbg !3947
  %stream24 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4019
  %10 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream24, align 8, !dbg !4019
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0, !dbg !4021
  call void @stream_read(%struct.stream_tTAG* %10, i32 %conv, i8* %arraydecay), !dbg !4022
  %add = add nsw i32 1, %conv, !dbg !4023
  %sub25 = sub i32 %sub21, %add, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %sub25, metadata !3958, metadata !DIExpression()), !dbg !3947
  %tobool = icmp ne i32 %sub25, 0, !dbg !4025
  br i1 %tobool, label %if.then26, label %if.end28, !dbg !4027

if.then26:                                        ; preds = %while_break
  %stream27 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4028
  %11 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream27, align 8, !dbg !4028
  call void @stream_skip(%struct.stream_tTAG* %11, i32 %sub25), !dbg !4032
  br label %if.end28, !dbg !4033

if.end28:                                         ; preds = %if.then26, %while_break
  ret void, !dbg !4034
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_minf(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !4035 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !4036, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !4038, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.declare(metadata !4, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.declare(metadata !4, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata !4, metadata !4043, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.declare(metadata !4, metadata !4045, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata !4, metadata !4047, metadata !DIExpression()), !dbg !4048
  %sub = sub i32 %chunk_len, 8, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4052, metadata !DIExpression()), !dbg !4037
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4053
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !4053
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !4055
  call void @llvm.dbg.value(metadata i32 %call, metadata !4056, metadata !DIExpression()), !dbg !4037
  %cmp = icmp ne i32 %call, 16, !dbg !4057
  br i1 %cmp, label %if.then, label %if.end, !dbg !4059

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4060
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0)), !dbg !4064
  br label %return, !dbg !4065

if.end:                                           ; preds = %entry
  %stream2 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4066
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream2, align 8, !dbg !4066
  %call3 = call i32 @stream_read_uint32(%struct.stream_tTAG* %2), !dbg !4069
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4070, metadata !DIExpression()), !dbg !4037
  %cmp4 = icmp ne i32 %call3, 1936549988, !dbg !4071
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !4073

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4074
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0)), !dbg !4078
  br label %return, !dbg !4079

if.end7:                                          ; preds = %if.end
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4080
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !4080
  call void @stream_skip(%struct.stream_tTAG* %4, i32 8), !dbg !4083
  %sub9 = sub i32 %sub, 16, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !4052, metadata !DIExpression()), !dbg !4037
  %stream10 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4085
  %5 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream10, align 8, !dbg !4085
  %call11 = call i32 @stream_read_uint32(%struct.stream_tTAG* %5), !dbg !4087
  call void @llvm.dbg.value(metadata i32 %call11, metadata !4088, metadata !DIExpression()), !dbg !4037
  %stream12 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4089
  %6 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream12, align 8, !dbg !4089
  %call13 = call i32 @stream_read_uint32(%struct.stream_tTAG* %6), !dbg !4091
  call void @llvm.dbg.value(metadata i32 %call13, metadata !4092, metadata !DIExpression()), !dbg !4037
  %cmp14 = icmp ne i32 %call13, 1684631142, !dbg !4093
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !4095

if.then15:                                        ; preds = %if.end7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4096
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0)), !dbg !4100
  br label %return, !dbg !4101

if.end17:                                         ; preds = %if.end7
  %stream18 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4102
  %8 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream18, align 8, !dbg !4102
  %sub19 = sub i32 %call11, 8, !dbg !4105
  call void @stream_skip(%struct.stream_tTAG* %8, i32 %sub19), !dbg !4106
  %sub20 = sub i32 %sub9, %call11, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %sub20, metadata !4052, metadata !DIExpression()), !dbg !4037
  %stream21 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4108
  %9 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream21, align 8, !dbg !4108
  %call22 = call i32 @stream_read_uint32(%struct.stream_tTAG* %9), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %call22, metadata !4111, metadata !DIExpression()), !dbg !4037
  %stream23 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4112
  %10 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream23, align 8, !dbg !4112
  %call24 = call i32 @stream_read_uint32(%struct.stream_tTAG* %10), !dbg !4114
  call void @llvm.dbg.value(metadata i32 %call24, metadata !4115, metadata !DIExpression()), !dbg !4037
  %cmp25 = icmp ne i32 %call24, 1937007212, !dbg !4116
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !4118

if.then26:                                        ; preds = %if.end17
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4119
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0)), !dbg !4123
  br label %return, !dbg !4124

if.end28:                                         ; preds = %if.end17
  %call29 = call i32 @read_chunk_stbl(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call22), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %call29, metadata !4128, metadata !DIExpression()), !dbg !4037
  %cmp30 = icmp eq i32 %call29, 0, !dbg !4129
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4131

if.then31:                                        ; preds = %if.end28
  br label %return, !dbg !4132

if.end32:                                         ; preds = %if.end28
  %sub33 = sub i32 %sub20, %call22, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !4052, metadata !DIExpression()), !dbg !4037
  %tobool = icmp ne i32 %sub33, 0, !dbg !4135
  br i1 %tobool, label %if.then34, label %if.end37, !dbg !4137

if.then34:                                        ; preds = %if.end32
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4138
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)), !dbg !4142
  %stream36 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4143
  %13 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream36, align 8, !dbg !4143
  call void @stream_skip(%struct.stream_tTAG* %13, i32 %sub33), !dbg !4145
  br label %if.end37, !dbg !4146

if.end37:                                         ; preds = %if.then34, %if.end32
  br label %return, !dbg !4147

return:                                           ; preds = %if.end37, %if.then31, %if.then26, %if.then15, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then15 ], [ 0, %if.then26 ], [ 0, %if.then31 ], [ 1, %if.end37 ], !dbg !4148
  ret i32 %retval.0, !dbg !4149
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_stbl(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !4150 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !4153, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.declare(metadata !4, metadata !4154, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.declare(metadata !4, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.declare(metadata !4, metadata !4158, metadata !DIExpression()), !dbg !4159
  %sub = sub i32 %chunk_len, 8, !dbg !4160
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4162, metadata !DIExpression()), !dbg !4152
  br label %while.body, !dbg !4163

while.body:                                       ; preds = %switch_break, %entry
  %size_remaining.0 = phi i32 [ %sub, %entry ], [ %sub41, %switch_break ], !dbg !4166
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !4162, metadata !DIExpression()), !dbg !4152
  br label %while_continue___0, !dbg !4167

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4167

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !4168
  br i1 %tobool, label %if.end, label %if.then, !dbg !4171

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !4172

if.end:                                           ; preds = %while_continue
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4174
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !4174
  %call = call i32 @stream_read_uint32(%struct.stream_tTAG* %0), !dbg !4177
  call void @llvm.dbg.value(metadata i32 %call, metadata !4178, metadata !DIExpression()), !dbg !4152
  %cmp = icmp ule i32 %call, 1, !dbg !4179
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4181

if.then1:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4182
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i32 0, i32 0), i32 %call, i32 %size_remaining.0), !dbg !4186
  br label %return, !dbg !4187

if.else:                                          ; preds = %if.end
  %cmp3 = icmp ugt i32 %call, %size_remaining.0, !dbg !4188
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !4190

if.then4:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4191
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i32 0, i32 0), i32 %call, i32 %size_remaining.0), !dbg !4195
  br label %return, !dbg !4196

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4197
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !4197
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %3), !dbg !4200
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4201, metadata !DIExpression()), !dbg !4152
  %cmp10 = icmp eq i32 %call9, 1937011556, !dbg !4202
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4205

if.then11:                                        ; preds = %if.end7
  br label %case_exp, !dbg !4206

if.end12:                                         ; preds = %if.end7
  %cmp13 = icmp eq i32 %call9, 1937011827, !dbg !4208
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4210

if.then14:                                        ; preds = %if.end12
  br label %case_exp___0, !dbg !4211

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call9, 1937011578, !dbg !4213
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4215

if.then17:                                        ; preds = %if.end15
  br label %case_exp___1, !dbg !4216

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %call9, 1937007471, !dbg !4218
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4220

if.then20:                                        ; preds = %if.end18
  br label %case_exp___2, !dbg !4221

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %call9, 1937011555, !dbg !4223
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !4220

if.then23:                                        ; preds = %if.end21
  br label %case_exp___2, !dbg !4225

if.end24:                                         ; preds = %if.end21
  br label %switch_default, !dbg !4227

case_exp:                                         ; preds = %if.then11
  %call25 = call i32 @read_chunk_stsd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !4228
  call void @llvm.dbg.value(metadata i32 %call25, metadata !4231, metadata !DIExpression()), !dbg !4152
  %cmp26 = icmp eq i32 %call25, 0, !dbg !4232
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !4234

if.then27:                                        ; preds = %case_exp
  br label %return, !dbg !4235

if.end28:                                         ; preds = %case_exp
  br label %switch_break, !dbg !4237

case_exp___0:                                     ; preds = %if.then14
  call void @read_chunk_stts(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !4238
  br label %switch_break, !dbg !4241

case_exp___1:                                     ; preds = %if.then17
  call void @read_chunk_stsz(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %call), !dbg !4242
  br label %switch_break, !dbg !4245

case_exp___2:                                     ; preds = %if.then23, %if.then20
  br label %case_exp___3, !dbg !4245

case_exp___3:                                     ; preds = %case_exp___2
  %stream29 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4246
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream29, align 8, !dbg !4246
  %sub30 = sub i32 %call, 8, !dbg !4249
  call void @stream_skip(%struct.stream_tTAG* %4, i32 %sub30), !dbg !4250
  br label %switch_break, !dbg !4251

switch_default:                                   ; preds = %if.end24
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4252
  %shr = ashr i32 %call9, 24, !dbg !4255
  %conv = trunc i32 %shr to i8, !dbg !4256
  %conv31 = sext i8 %conv to i32, !dbg !4257
  %shr32 = ashr i32 %call9, 16, !dbg !4258
  %conv33 = trunc i32 %shr32 to i8, !dbg !4259
  %conv34 = sext i8 %conv33 to i32, !dbg !4260
  %shr35 = ashr i32 %call9, 8, !dbg !4261
  %conv36 = trunc i32 %shr35 to i8, !dbg !4262
  %conv37 = sext i8 %conv36 to i32, !dbg !4263
  %conv38 = trunc i32 %call9 to i8, !dbg !4264
  %conv39 = sext i8 %conv38 to i32, !dbg !4265
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i32 %conv31, i32 %conv34, i32 %conv37, i32 %conv39), !dbg !4266
  br label %return, !dbg !4267

switch_break:                                     ; preds = %case_exp___3, %case_exp___1, %case_exp___0, %if.end28
  %sub41 = sub i32 %size_remaining.0, %call, !dbg !4268
  call void @llvm.dbg.value(metadata i32 %sub41, metadata !4162, metadata !DIExpression()), !dbg !4152
  br label %while.body, !dbg !4163, !llvm.loop !4269

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4271

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !4272

return:                                           ; preds = %while_break, %switch_default, %if.then27, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then4 ], [ 0, %if.then27 ], [ 0, %switch_default ], [ 1, %while_break ], !dbg !4166
  ret i32 %retval.0, !dbg !4273
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @read_chunk_stsd(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !4274 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !4275, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !4277, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.declare(metadata !4, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.declare(metadata !4, metadata !4280, metadata !DIExpression()), !dbg !4281
  %sub = sub i32 %chunk_len, 8, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4285, metadata !DIExpression()), !dbg !4276
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4286
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !4286
  %call = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %0), !dbg !4288
  %dec = add i32 %sub, -1, !dbg !4289
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4285, metadata !DIExpression()), !dbg !4276
  %stream1 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4290
  %1 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream1, align 8, !dbg !4290
  %call2 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %1), !dbg !4292
  %stream3 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4293
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream3, align 8, !dbg !4293
  %call4 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %2), !dbg !4295
  %stream5 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4296
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream5, align 8, !dbg !4296
  %call6 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %3), !dbg !4298
  %sub7 = sub i32 %dec, 3, !dbg !4299
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !4285, metadata !DIExpression()), !dbg !4276
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4300
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !4300
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %4), !dbg !4302
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4303, metadata !DIExpression()), !dbg !4276
  %sub10 = sub i32 %sub7, 4, !dbg !4304
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !4285, metadata !DIExpression()), !dbg !4276
  %cmp = icmp ne i32 %call9, 1, !dbg !4305
  br i1 %cmp, label %if.then, label %if.end, !dbg !4307

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4308
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i32 0, i32 0)), !dbg !4312
  br label %return, !dbg !4313

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4276
  br label %while.body, !dbg !4315

while.body:                                       ; preds = %if.end90, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end90 ], !dbg !4318
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4314, metadata !DIExpression()), !dbg !4276
  br label %while_continue___0, !dbg !4319

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4319

while_continue:                                   ; preds = %while_continue___0
  %cmp12 = icmp ult i32 %i.0, %call9, !dbg !4320
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !4323

if.then13:                                        ; preds = %while_continue
  br label %while_break, !dbg !4324

if.end14:                                         ; preds = %while_continue
  %stream15 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4326
  %6 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream15, align 8, !dbg !4326
  %call16 = call i32 @stream_read_uint32(%struct.stream_tTAG* %6), !dbg !4329
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4330, metadata !DIExpression()), !dbg !4276
  %stream17 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4331
  %7 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream17, align 8, !dbg !4331
  %call18 = call i32 @stream_read_uint32(%struct.stream_tTAG* %7), !dbg !4333
  %res = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4334
  %8 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res, align 8, !dbg !4334
  %format = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %8, i32 0, i32 4, !dbg !4335
  store i32 %call18, i32* %format, align 4, !dbg !4336
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4337, metadata !DIExpression()), !dbg !4276
  %sub19 = sub i32 %call16, 8, !dbg !4338
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream20 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4339
  %9 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream20, align 8, !dbg !4339
  call void @stream_skip(%struct.stream_tTAG* %9, i32 6), !dbg !4341
  %sub21 = sub i32 %sub19, 6, !dbg !4342
  call void @llvm.dbg.value(metadata i32 %sub21, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream22 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4343
  %10 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream22, align 8, !dbg !4343
  %call23 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %10), !dbg !4345
  call void @llvm.dbg.value(metadata i16 %call23, metadata !4346, metadata !DIExpression()), !dbg !4276
  %conv = zext i16 %call23 to i32, !dbg !4347
  %cmp24 = icmp ne i32 %conv, 1, !dbg !4349
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !4350

if.then26:                                        ; preds = %if.end14
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4351
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0)), !dbg !4355
  br label %if.end28, !dbg !4356

if.end28:                                         ; preds = %if.then26, %if.end14
  %sub29 = sub i32 %sub21, 2, !dbg !4357
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream30 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4359
  %12 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream30, align 8, !dbg !4359
  %call31 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %12), !dbg !4361
  %stream32 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4362
  %13 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream32, align 8, !dbg !4362
  %call33 = call i32 @stream_read_uint32(%struct.stream_tTAG* %13), !dbg !4364
  %sub34 = sub i32 %sub29, 6, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %sub34, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream35 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4366
  %14 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream35, align 8, !dbg !4366
  %call36 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %14), !dbg !4368
  %sub37 = sub i32 %sub34, 2, !dbg !4369
  call void @llvm.dbg.value(metadata i32 %sub37, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream38 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4370
  %15 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream38, align 8, !dbg !4370
  %call39 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %15), !dbg !4372
  %res40 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4373
  %16 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res40, align 8, !dbg !4373
  %num_channels = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %16, i32 0, i32 1, !dbg !4374
  store i16 %call39, i16* %num_channels, align 4, !dbg !4375
  %stream41 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4376
  %17 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream41, align 8, !dbg !4376
  %call42 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %17), !dbg !4378
  %res43 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4379
  %18 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res43, align 8, !dbg !4379
  %sample_size = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %18, i32 0, i32 2, !dbg !4380
  store i16 %call42, i16* %sample_size, align 2, !dbg !4381
  %sub44 = sub i32 %sub37, 4, !dbg !4382
  call void @llvm.dbg.value(metadata i32 %sub44, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream45 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4383
  %19 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream45, align 8, !dbg !4383
  %call46 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %19), !dbg !4385
  %stream47 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4386
  %20 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream47, align 8, !dbg !4386
  %call48 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %20), !dbg !4388
  %sub49 = sub i32 %sub44, 4, !dbg !4389
  call void @llvm.dbg.value(metadata i32 %sub49, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream50 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4390
  %21 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream50, align 8, !dbg !4390
  %call51 = call zeroext i16 @stream_read_uint16(%struct.stream_tTAG* %21), !dbg !4392
  call void @llvm.dbg.value(metadata i16 %call51, metadata !4393, metadata !DIExpression()), !dbg !4276
  %conv52 = zext i16 %call51 to i32, !dbg !4394
  %res53 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4395
  %22 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res53, align 8, !dbg !4395
  %sample_rate = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %22, i32 0, i32 3, !dbg !4396
  store i32 %conv52, i32* %sample_rate, align 8, !dbg !4397
  %sub54 = sub i32 %sub49, 2, !dbg !4398
  call void @llvm.dbg.value(metadata i32 %sub54, metadata !4337, metadata !DIExpression()), !dbg !4276
  %stream55 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4399
  %23 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream55, align 8, !dbg !4399
  call void @stream_skip(%struct.stream_tTAG* %23, i32 2), !dbg !4401
  %sub56 = sub i32 %sub54, 2, !dbg !4402
  call void @llvm.dbg.value(metadata i32 %sub56, metadata !4337, metadata !DIExpression()), !dbg !4276
  %add = add i32 %sub56, 12, !dbg !4403
  %add57 = add i32 %add, 8, !dbg !4404
  %res58 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4405
  %24 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res58, align 8, !dbg !4405
  %codecdata_len = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %24, i32 0, i32 10, !dbg !4406
  store i32 %add57, i32* %codecdata_len, align 4, !dbg !4407
  %res59 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4408
  %25 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res59, align 8, !dbg !4408
  %codecdata_len60 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %25, i32 0, i32 10, !dbg !4410
  %26 = load i32, i32* %codecdata_len60, align 4, !dbg !4410
  %call61 = call noalias i8* @malloc(i32 %26) #7, !dbg !4411
  %res62 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4412
  %27 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res62, align 8, !dbg !4412
  %codecdata = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %27, i32 0, i32 11, !dbg !4413
  store i8* %call61, i8** %codecdata, align 8, !dbg !4414
  %res63 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4415
  %28 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res63, align 8, !dbg !4415
  %codecdata64 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %28, i32 0, i32 11, !dbg !4417
  %29 = load i8*, i8** %codecdata64, align 8, !dbg !4417
  %res65 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4418
  %30 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res65, align 8, !dbg !4418
  %codecdata_len66 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %30, i32 0, i32 10, !dbg !4419
  %31 = load i32, i32* %codecdata_len66, align 4, !dbg !4419
  %call67 = call i8* @memset(i8* %29, i32 0, i32 %31) #7, !dbg !4420
  %res68 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4421
  %32 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res68, align 8, !dbg !4421
  %codecdata69 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %32, i32 0, i32 11, !dbg !4422
  %33 = load i8*, i8** %codecdata69, align 8, !dbg !4422
  %34 = bitcast i8* %33 to i32*, !dbg !4423
  %add.ptr = getelementptr inbounds i32, i32* %34, i64 0, !dbg !4424
  store i32 201326592, i32* %add.ptr, align 4, !dbg !4425
  %res70 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4426
  %35 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res70, align 8, !dbg !4426
  %codecdata71 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %35, i32 0, i32 11, !dbg !4427
  %36 = load i8*, i8** %codecdata71, align 8, !dbg !4427
  %37 = bitcast i8* %36 to i32*, !dbg !4428
  %add.ptr72 = getelementptr inbounds i32, i32* %37, i64 1, !dbg !4429
  store i32 1634562662, i32* %add.ptr72, align 4, !dbg !4430
  %res73 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4431
  %38 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res73, align 8, !dbg !4431
  %codecdata74 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %38, i32 0, i32 11, !dbg !4432
  %39 = load i8*, i8** %codecdata74, align 8, !dbg !4432
  %40 = bitcast i8* %39 to i32*, !dbg !4433
  %add.ptr75 = getelementptr inbounds i32, i32* %40, i64 2, !dbg !4434
  store i32 1667329121, i32* %add.ptr75, align 4, !dbg !4435
  %stream76 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4436
  %41 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream76, align 8, !dbg !4436
  %res77 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4438
  %42 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res77, align 8, !dbg !4438
  %codecdata78 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %42, i32 0, i32 11, !dbg !4439
  %43 = load i8*, i8** %codecdata78, align 8, !dbg !4439
  %add.ptr79 = getelementptr inbounds i8, i8* %43, i64 12, !dbg !4440
  call void @stream_read(%struct.stream_tTAG* %41, i32 %sub56, i8* %add.ptr79), !dbg !4441
  %sub80 = sub i32 %sub56, %sub56, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %sub80, metadata !4337, metadata !DIExpression()), !dbg !4276
  %tobool = icmp ne i32 %sub80, 0, !dbg !4443
  br i1 %tobool, label %if.then81, label %if.end83, !dbg !4445

if.then81:                                        ; preds = %if.end28
  %stream82 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4446
  %44 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream82, align 8, !dbg !4446
  call void @stream_skip(%struct.stream_tTAG* %44, i32 %sub80), !dbg !4450
  br label %if.end83, !dbg !4451

if.end83:                                         ; preds = %if.then81, %if.end28
  %res84 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4452
  %45 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res84, align 8, !dbg !4452
  %format_read = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %45, i32 0, i32 0, !dbg !4453
  store i32 1, i32* %format_read, align 8, !dbg !4454
  %res85 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4455
  %46 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res85, align 8, !dbg !4455
  %format86 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %46, i32 0, i32 4, !dbg !4457
  %47 = load i32, i32* %format86, align 4, !dbg !4457
  %cmp87 = icmp ne i32 %47, 1634492771, !dbg !4458
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !4459

if.then89:                                        ; preds = %if.end83
  br label %return, !dbg !4460

if.end90:                                         ; preds = %if.end83
  %inc = add i32 %i.0, 1, !dbg !4462
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4314, metadata !DIExpression()), !dbg !4276
  br label %while.body, !dbg !4315, !llvm.loop !4463

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4465

while_break:                                      ; preds = %while_break___0, %if.then13
  br label %return, !dbg !4466

return:                                           ; preds = %while_break, %if.then89, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then89 ], [ 1, %while_break ], !dbg !4318
  ret i32 %retval.0, !dbg !4467
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_stts(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !4468 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !4471, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.declare(metadata !4, metadata !4472, metadata !DIExpression()), !dbg !4473
  %sub = sub i32 %chunk_len, 8, !dbg !4474
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4477, metadata !DIExpression()), !dbg !4470
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4478
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !4478
  %call = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %0), !dbg !4480
  %dec = add i32 %sub, -1, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4477, metadata !DIExpression()), !dbg !4470
  %stream1 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4482
  %1 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream1, align 8, !dbg !4482
  %call2 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %1), !dbg !4484
  %stream3 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4485
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream3, align 8, !dbg !4485
  %call4 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %2), !dbg !4487
  %stream5 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4488
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream5, align 8, !dbg !4488
  %call6 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %3), !dbg !4490
  %sub7 = sub i32 %dec, 3, !dbg !4491
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !4477, metadata !DIExpression()), !dbg !4470
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4492
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !4492
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %4), !dbg !4494
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4495, metadata !DIExpression()), !dbg !4470
  %sub10 = sub i32 %sub7, 4, !dbg !4496
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !4477, metadata !DIExpression()), !dbg !4470
  %res = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4497
  %5 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res, align 8, !dbg !4497
  %num_time_to_samples = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %5, i32 0, i32 7, !dbg !4498
  store i32 %call9, i32* %num_time_to_samples, align 8, !dbg !4499
  %conv = zext i32 %call9 to i64, !dbg !4500
  %mul = mul i64 %conv, 8, !dbg !4502
  %conv11 = trunc i64 %mul to i32, !dbg !4503
  %call12 = call noalias i8* @malloc(i32 %conv11) #7, !dbg !4504
  call void @llvm.dbg.value(metadata i8* %call12, metadata !4505, metadata !DIExpression()), !dbg !4470
  %6 = bitcast i8* %call12 to %struct.__anonstruct_time_to_sample_25*, !dbg !4506
  %res13 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4507
  %7 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res13, align 8, !dbg !4507
  %time_to_sample = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %7, i32 0, i32 6, !dbg !4508
  store %struct.__anonstruct_time_to_sample_25* %6, %struct.__anonstruct_time_to_sample_25** %time_to_sample, align 8, !dbg !4509
  call void @llvm.dbg.value(metadata i32 0, metadata !4510, metadata !DIExpression()), !dbg !4470
  br label %while.body, !dbg !4511

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !4514
  %size_remaining.0 = phi i32 [ %sub10, %entry ], [ %sub25, %if.end ], !dbg !4514
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !4477, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4510, metadata !DIExpression()), !dbg !4470
  br label %while_continue___0, !dbg !4515

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4515

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp ult i32 %i.0, %call9, !dbg !4516
  br i1 %cmp, label %if.end, label %if.then, !dbg !4519

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !4520

if.end:                                           ; preds = %while_continue
  %stream15 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4522
  %8 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream15, align 8, !dbg !4522
  %call16 = call i32 @stream_read_uint32(%struct.stream_tTAG* %8), !dbg !4525
  %res17 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4526
  %9 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res17, align 8, !dbg !4526
  %time_to_sample18 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %9, i32 0, i32 6, !dbg !4527
  %10 = load %struct.__anonstruct_time_to_sample_25*, %struct.__anonstruct_time_to_sample_25** %time_to_sample18, align 8, !dbg !4527
  %idx.ext = zext i32 %i.0 to i64, !dbg !4528
  %add.ptr = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %10, i64 %idx.ext, !dbg !4528
  %sample_count = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %add.ptr, i32 0, i32 0, !dbg !4529
  store i32 %call16, i32* %sample_count, align 4, !dbg !4530
  %stream19 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4531
  %11 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream19, align 8, !dbg !4531
  %call20 = call i32 @stream_read_uint32(%struct.stream_tTAG* %11), !dbg !4533
  %res21 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4534
  %12 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res21, align 8, !dbg !4534
  %time_to_sample22 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %12, i32 0, i32 6, !dbg !4535
  %13 = load %struct.__anonstruct_time_to_sample_25*, %struct.__anonstruct_time_to_sample_25** %time_to_sample22, align 8, !dbg !4535
  %idx.ext23 = zext i32 %i.0 to i64, !dbg !4536
  %add.ptr24 = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %13, i64 %idx.ext23, !dbg !4536
  %sample_duration = getelementptr inbounds %struct.__anonstruct_time_to_sample_25, %struct.__anonstruct_time_to_sample_25* %add.ptr24, i32 0, i32 1, !dbg !4537
  store i32 %call20, i32* %sample_duration, align 4, !dbg !4538
  %sub25 = sub i32 %size_remaining.0, 8, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %sub25, metadata !4477, metadata !DIExpression()), !dbg !4470
  %inc = add i32 %i.0, 1, !dbg !4540
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4510, metadata !DIExpression()), !dbg !4470
  br label %while.body, !dbg !4511, !llvm.loop !4541

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4543

while_break:                                      ; preds = %while_break___0, %if.then
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !4544
  br i1 %tobool, label %if.then26, label %if.end29, !dbg !4546

if.then26:                                        ; preds = %while_break
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4547
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0)), !dbg !4551
  %stream28 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4552
  %15 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream28, align 8, !dbg !4552
  call void @stream_skip(%struct.stream_tTAG* %15, i32 %size_remaining.0), !dbg !4554
  br label %if.end29, !dbg !4555

if.end29:                                         ; preds = %if.then26, %while_break
  ret void, !dbg !4556
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @read_chunk_stsz(%struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 %chunk_len) #0 !dbg !4557 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_qtmovie_t_25* %qtmovie, metadata !4558, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 %chunk_len, metadata !4560, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.declare(metadata !4, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata !4, metadata !4563, metadata !DIExpression()), !dbg !4564
  %sub = sub i32 %chunk_len, 8, !dbg !4565
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4568, metadata !DIExpression()), !dbg !4559
  %stream = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4569
  %0 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream, align 8, !dbg !4569
  %call = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %0), !dbg !4571
  %dec = add i32 %sub, -1, !dbg !4572
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4568, metadata !DIExpression()), !dbg !4559
  %stream1 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4573
  %1 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream1, align 8, !dbg !4573
  %call2 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %1), !dbg !4575
  %stream3 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4576
  %2 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream3, align 8, !dbg !4576
  %call4 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %2), !dbg !4578
  %stream5 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4579
  %3 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream5, align 8, !dbg !4579
  %call6 = call zeroext i8 @stream_read_uint8(%struct.stream_tTAG* %3), !dbg !4581
  %sub7 = sub i32 %dec, 3, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !4568, metadata !DIExpression()), !dbg !4559
  %stream8 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4583
  %4 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream8, align 8, !dbg !4583
  %call9 = call i32 @stream_read_uint32(%struct.stream_tTAG* %4), !dbg !4585
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4586, metadata !DIExpression()), !dbg !4559
  %cmp = icmp ne i32 %call9, 0, !dbg !4587
  br i1 %cmp, label %if.then, label %if.end, !dbg !4589

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4590
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)), !dbg !4594
  %stream11 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4595
  %6 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream11, align 8, !dbg !4595
  %call12 = call i32 @stream_read_uint32(%struct.stream_tTAG* %6), !dbg !4597
  %sub13 = sub i32 %sub7, 4, !dbg !4598
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !4568, metadata !DIExpression()), !dbg !4559
  br label %return, !dbg !4599

if.end:                                           ; preds = %entry
  %sub14 = sub i32 %sub7, 4, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %sub14, metadata !4568, metadata !DIExpression()), !dbg !4559
  %stream15 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4602
  %7 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream15, align 8, !dbg !4602
  %call16 = call i32 @stream_read_uint32(%struct.stream_tTAG* %7), !dbg !4604
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4605, metadata !DIExpression()), !dbg !4559
  %sub17 = sub i32 %sub14, 4, !dbg !4606
  call void @llvm.dbg.value(metadata i32 %sub17, metadata !4568, metadata !DIExpression()), !dbg !4559
  %res = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4607
  %8 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res, align 8, !dbg !4607
  %num_sample_byte_sizes = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %8, i32 0, i32 9, !dbg !4608
  store i32 %call16, i32* %num_sample_byte_sizes, align 8, !dbg !4609
  %conv = zext i32 %call16 to i64, !dbg !4610
  %mul = mul i64 %conv, 4, !dbg !4612
  %conv18 = trunc i64 %mul to i32, !dbg !4613
  %call19 = call noalias i8* @malloc(i32 %conv18) #7, !dbg !4614
  call void @llvm.dbg.value(metadata i8* %call19, metadata !4615, metadata !DIExpression()), !dbg !4559
  %9 = bitcast i8* %call19 to i32*, !dbg !4616
  %res20 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4617
  %10 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res20, align 8, !dbg !4617
  %sample_byte_size = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %10, i32 0, i32 8, !dbg !4618
  store i32* %9, i32** %sample_byte_size, align 8, !dbg !4619
  call void @llvm.dbg.value(metadata i32 0, metadata !4620, metadata !DIExpression()), !dbg !4559
  br label %while.body, !dbg !4621

while.body:                                       ; preds = %if.end24, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end24 ], !dbg !4624
  %size_remaining.0 = phi i32 [ %sub17, %if.end ], [ %sub29, %if.end24 ], !dbg !4624
  call void @llvm.dbg.value(metadata i32 %size_remaining.0, metadata !4568, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4620, metadata !DIExpression()), !dbg !4559
  br label %while_continue___0, !dbg !4625

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4625

while_continue:                                   ; preds = %while_continue___0
  %cmp21 = icmp ult i32 %i.0, %call16, !dbg !4626
  br i1 %cmp21, label %if.end24, label %if.then23, !dbg !4629

if.then23:                                        ; preds = %while_continue
  br label %while_break, !dbg !4630

if.end24:                                         ; preds = %while_continue
  %stream25 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4632
  %11 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream25, align 8, !dbg !4632
  %call26 = call i32 @stream_read_uint32(%struct.stream_tTAG* %11), !dbg !4635
  %res27 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 1, !dbg !4636
  %12 = load %struct.__anonstruct_demux_res_t_24*, %struct.__anonstruct_demux_res_t_24** %res27, align 8, !dbg !4636
  %sample_byte_size28 = getelementptr inbounds %struct.__anonstruct_demux_res_t_24, %struct.__anonstruct_demux_res_t_24* %12, i32 0, i32 8, !dbg !4637
  %13 = load i32*, i32** %sample_byte_size28, align 8, !dbg !4637
  %idx.ext = zext i32 %i.0 to i64, !dbg !4638
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext, !dbg !4638
  store i32 %call26, i32* %add.ptr, align 4, !dbg !4639
  %sub29 = sub i32 %size_remaining.0, 4, !dbg !4640
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !4568, metadata !DIExpression()), !dbg !4559
  %inc = add i32 %i.0, 1, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4620, metadata !DIExpression()), !dbg !4559
  br label %while.body, !dbg !4621, !llvm.loop !4642

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4644

while_break:                                      ; preds = %while_break___0, %if.then23
  %tobool = icmp ne i32 %size_remaining.0, 0, !dbg !4645
  br i1 %tobool, label %if.then30, label %if.end33, !dbg !4647

if.then30:                                        ; preds = %while_break
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4648
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0)), !dbg !4652
  %stream32 = getelementptr inbounds %struct.__anonstruct_qtmovie_t_25, %struct.__anonstruct_qtmovie_t_25* %qtmovie, i32 0, i32 0, !dbg !4653
  %15 = load %struct.stream_tTAG*, %struct.stream_tTAG** %stream32, align 8, !dbg !4653
  call void @stream_skip(%struct.stream_tTAG* %15, i32 %size_remaining.0), !dbg !4655
  br label %if.end33, !dbg !4656

if.end33:                                         ; preds = %if.then30, %while_break
  br label %return, !dbg !4657

return:                                           ; preds = %if.end33, %if.then
  ret void, !dbg !4658
}

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
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!179, !180, !181, !182, !183}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "host_bigendian", scope: !2, file: !162, line: 47, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !159, nameTableKind: GNU)
!3 = !DIFile(filename: "c/alac-decoder-0.1.3.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !9, !11, !13, !14, !15, !17, !76, !26, !78, !80, !8, !82, !83, !85, !86, !88, !84, !89, !116, !25, !51, !122, !155, !101, !157, !158, !143}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 52, baseType: !8)
!7 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 50, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 211, baseType: !8)
!16 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 271, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!22 = !{!23, !24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !45, !46, !47, !48, !52, !53, !55, !59, !62, !66, !67, !68, !69, !70, !71, !72}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 272, baseType: !13, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 273, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 274, baseType: !25, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 275, baseType: !25, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 276, baseType: !25, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 277, baseType: !25, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 278, baseType: !25, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 279, baseType: !25, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 280, baseType: !25, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 281, baseType: !25, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 282, baseType: !25, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 283, baseType: !25, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 284, baseType: !38, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 186, size: 192, elements: !40)
!40 = !{!41, !42, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !39, file: !21, line: 187, baseType: !38, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !39, file: !21, line: 188, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !39, file: !21, line: 189, baseType: !13, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 285, baseType: !43, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 286, baseType: !13, size: 32, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 287, baseType: !13, size: 32, offset: 928)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 288, baseType: !49, size: 64, offset: 960)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 141, baseType: !51)
!50 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 289, baseType: !10, size: 16, offset: 1024)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 290, baseType: !54, size: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 291, baseType: !56, size: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 292, baseType: !60, size: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 180, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 293, baseType: !63, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 142, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !50, line: 56, baseType: !65)
!65 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !20, file: !21, line: 294, baseType: !14, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !20, file: !21, line: 295, baseType: !14, size: 64, offset: 1280)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !20, file: !21, line: 296, baseType: !14, size: 64, offset: 1344)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !20, file: !21, line: 297, baseType: !14, size: 64, offset: 1408)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 298, baseType: !15, size: 32, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 299, baseType: !13, size: 32, offset: 1504)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 300, baseType: !73, size: 192, offset: 1536)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 24)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !79, line: 197, baseType: !13)
!79 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "fourcc_t", file: !81, line: 7, baseType: !6)
!81 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/demux.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 49, baseType: !12)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !79, line: 196, baseType: !87)
!87 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "alac_file", file: !91, line: 4, baseType: !92)
!91 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/decomp.h", directory: "")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alac_file", file: !93, line: 53, size: 640, elements: !94)
!93 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/alac.c", directory: "")
!94 = !{!95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "input_buffer", scope: !92, file: !93, line: 54, baseType: !11, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "input_buffer_bitaccumulator", scope: !92, file: !93, line: 55, baseType: !13, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "samplesize", scope: !92, file: !93, line: 56, baseType: !13, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "numchannels", scope: !92, file: !93, line: 57, baseType: !13, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bytespersample", scope: !92, file: !93, line: 58, baseType: !13, size: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "predicterror_buffer_a", scope: !92, file: !93, line: 59, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "predicterror_buffer_b", scope: !92, file: !93, line: 60, baseType: !101, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "outputsamples_buffer_a", scope: !92, file: !93, line: 61, baseType: !101, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "outputsamples_buffer_b", scope: !92, file: !93, line: 62, baseType: !101, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_max_samples_per_frame", scope: !92, file: !93, line: 63, baseType: !6, size: 32, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_7a", scope: !92, file: !93, line: 64, baseType: !84, size: 8, offset: 480)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_sample_size", scope: !92, file: !93, line: 65, baseType: !84, size: 8, offset: 488)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_rice_historymult", scope: !92, file: !93, line: 66, baseType: !84, size: 8, offset: 496)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_rice_initialhistory", scope: !92, file: !93, line: 67, baseType: !84, size: 8, offset: 504)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_rice_kmodifier", scope: !92, file: !93, line: 68, baseType: !84, size: 8, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_7f", scope: !92, file: !93, line: 69, baseType: !84, size: 8, offset: 520)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_80", scope: !92, file: !93, line: 70, baseType: !9, size: 16, offset: 528)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_82", scope: !92, file: !93, line: 71, baseType: !6, size: 32, offset: 544)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_86", scope: !92, file: !93, line: 72, baseType: !6, size: 32, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "setinfo_8a_rate", scope: !92, file: !93, line: 73, baseType: !6, size: 32, offset: 608)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "qtmovie_t", file: !118, line: 41, baseType: !119)
!118 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/demux.c", directory: "")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_qtmovie_t_25", file: !118, line: 41, size: 192, elements: !120)
!120 = !{!121, !131, !154}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !119, file: !118, line: 42, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream_t", file: !124, line: 8, baseType: !125)
!124 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/stream.h", directory: "")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_tTAG", file: !126, line: 52, size: 128, elements: !127)
!126 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/stream.c", directory: "")
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !125, file: !126, line: 53, baseType: !17, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "bigendian", scope: !125, file: !126, line: 54, baseType: !13, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !125, file: !126, line: 55, baseType: !13, size: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !119, file: !118, line: 43, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "demux_res_t", file: !81, line: 9, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_demux_res_t_24", file: !81, line: 9, size: 576, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !148, !149, !150, !151, !152, !153}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "format_read", scope: !134, file: !81, line: 10, baseType: !13, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "num_channels", scope: !134, file: !81, line: 11, baseType: !9, size: 16, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sample_size", scope: !134, file: !81, line: 12, baseType: !9, size: 16, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sample_rate", scope: !134, file: !81, line: 13, baseType: !6, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !134, file: !81, line: 14, baseType: !80, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !81, line: 15, baseType: !14, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_sample", scope: !134, file: !81, line: 16, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_time_to_sample_25", file: !81, line: 9, size: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sample_count", scope: !144, file: !81, line: 10, baseType: !6, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sample_duration", scope: !144, file: !81, line: 11, baseType: !6, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "num_time_to_samples", scope: !134, file: !81, line: 17, baseType: !6, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sample_byte_size", scope: !134, file: !81, line: 18, baseType: !82, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "num_sample_byte_sizes", scope: !134, file: !81, line: 19, baseType: !6, size: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "codecdata_len", scope: !134, file: !81, line: 20, baseType: !6, size: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "codecdata", scope: !134, file: !81, line: 21, baseType: !14, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mdat_len", scope: !134, file: !81, line: 22, baseType: !6, size: 32, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_mdat_pos", scope: !119, file: !118, line: 44, baseType: !51, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !{!0, !160, !163, !165, !167, !169, !171, !173, !175, !177}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "alac", scope: !2, file: !162, line: 49, type: !89, isLocal: false, isDefinition: true)
!162 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/main.c", directory: "")
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "input_stream", scope: !2, file: !162, line: 53, type: !122, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !162, line: 59, type: !13, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "input_file", scope: !2, file: !162, line: 51, type: !17, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "test_file_type", scope: !2, file: !162, line: 60, type: !13, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "write_wav_format", scope: !2, file: !162, line: 58, type: !13, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "output_file", scope: !2, file: !162, line: 55, type: !17, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "output_opened", scope: !2, file: !162, line: 56, type: !13, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "input_opened", scope: !2, file: !162, line: 52, type: !13, isLocal: true, isDefinition: true)
!179 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!180 = !{i32 2, !"Dwarf Version", i32 4}
!181 = !{i32 2, !"Debug Info Version", i32 3}
!182 = !{i32 1, !"wchar_size", i32 4}
!183 = !{i32 7, !"PIC Level", i32 2}
!184 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!185 = distinct !DISubprogram(name: "wavwriter_writeheaders", scope: !186, file: !186, line: 69, type: !187, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!186 = !DIFile(filename: "/home/wslee/benchmarks/sound/alac-decoder-0.1.3/wavwriter.c", directory: "")
!187 = !DISubroutineType(types: !188)
!188 = !{null, !17, !13, !13, !13, !13}
!189 = !DILocalVariable(name: "f", arg: 1, scope: !185, file: !186, line: 69, type: !17)
!190 = !DILocation(line: 0, scope: !185)
!191 = !DILocalVariable(name: "datasize", arg: 2, scope: !185, file: !186, line: 69, type: !13)
!192 = !DILocalVariable(name: "numchannels", arg: 3, scope: !185, file: !186, line: 69, type: !13)
!193 = !DILocalVariable(name: "samplerate", arg: 4, scope: !185, file: !186, line: 69, type: !13)
!194 = !DILocalVariable(name: "bitspersample", arg: 5, scope: !185, file: !186, line: 70, type: !13)
!195 = !DILocation(line: 74, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !186, line: 76, column: 3)
!197 = distinct !DILexicalBlock(scope: !198, file: !186, line: 75, column: 3)
!198 = distinct !DILexicalBlock(scope: !185, file: !186, line: 74, column: 3)
!199 = !DILocation(line: 75, column: 34, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !186, line: 76, column: 3)
!201 = !DILocation(line: 75, column: 3, scope: !200)
!202 = !DILocation(line: 76, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !186, line: 77, column: 3)
!204 = !DILocation(line: 79, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !186, line: 78, column: 3)
!206 = !DILocation(line: 80, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !197, file: !186, line: 81, column: 3)
!208 = !DILocation(line: 81, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !197, file: !186, line: 82, column: 3)
!210 = !DILocation(line: 82, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !197, file: !186, line: 83, column: 3)
!212 = !DILocation(line: 82, column: 3, scope: !211)
!213 = !DILocation(line: 83, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !197, file: !186, line: 84, column: 3)
!215 = !DILocation(line: 84, column: 43, scope: !216)
!216 = distinct !DILexicalBlock(scope: !197, file: !186, line: 85, column: 3)
!217 = !DILocation(line: 84, column: 75, scope: !216)
!218 = !DILocation(line: 84, column: 58, scope: !216)
!219 = !DILocation(line: 84, column: 3, scope: !216)
!220 = !DILocation(line: 85, column: 60, scope: !221)
!221 = distinct !DILexicalBlock(scope: !197, file: !186, line: 86, column: 3)
!222 = !DILocation(line: 85, column: 43, scope: !221)
!223 = !DILocation(line: 85, column: 19, scope: !221)
!224 = !DILocation(line: 85, column: 3, scope: !221)
!225 = !DILocation(line: 86, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !197, file: !186, line: 87, column: 3)
!227 = !DILocation(line: 86, column: 3, scope: !226)
!228 = !DILocation(line: 89, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !197, file: !186, line: 88, column: 3)
!230 = !DILocation(line: 90, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !197, file: !186, line: 91, column: 3)
!232 = !DILocation(line: 91, column: 3, scope: !198)
!233 = distinct !DISubprogram(name: "write_uint32", scope: !186, file: !186, line: 57, type: !234, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !17, !6, !13}
!236 = !DILocalVariable(name: "f", arg: 1, scope: !233, file: !186, line: 57, type: !17)
!237 = !DILocation(line: 0, scope: !233)
!238 = !DILocalVariable(name: "v", arg: 2, scope: !233, file: !186, line: 57, type: !6)
!239 = !DILocation(line: 57, column: 45, scope: !233)
!240 = !DILocalVariable(name: "bigendian", arg: 3, scope: !233, file: !186, line: 57, type: !13)
!241 = !DILocation(line: 59, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !186, line: 59, column: 7)
!243 = distinct !DILexicalBlock(scope: !233, file: !186, line: 61, column: 3)
!244 = !DILocation(line: 59, column: 17, scope: !242)
!245 = !DILocation(line: 59, column: 7, scope: !243)
!246 = !DILocation(line: 59, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !186, line: 61, column: 5)
!248 = distinct !DILexicalBlock(scope: !249, file: !186, line: 60, column: 5)
!249 = distinct !DILexicalBlock(scope: !242, file: !186, line: 59, column: 35)
!250 = !DILocation(line: 59, column: 15, scope: !247)
!251 = !DILocation(line: 59, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !186, line: 59, column: 15)
!253 = !DILocation(line: 59, column: 17, scope: !252)
!254 = !DILocation(line: 59, column: 25, scope: !252)
!255 = !DILocation(line: 59, column: 36, scope: !252)
!256 = !DILocation(line: 59, column: 38, scope: !252)
!257 = !DILocation(line: 59, column: 48, scope: !252)
!258 = !DILocation(line: 59, column: 32, scope: !252)
!259 = !DILocation(line: 59, column: 59, scope: !252)
!260 = !DILocation(line: 59, column: 61, scope: !252)
!261 = !DILocation(line: 59, column: 74, scope: !252)
!262 = !DILocation(line: 59, column: 55, scope: !252)
!263 = !DILocation(line: 59, column: 85, scope: !252)
!264 = !DILocation(line: 59, column: 87, scope: !252)
!265 = !DILocation(line: 59, column: 102, scope: !252)
!266 = !DILocation(line: 59, column: 81, scope: !252)
!267 = !DILocation(line: 59, column: 9, scope: !252)
!268 = !DILocation(line: 59, column: 7, scope: !252)
!269 = !DILocation(line: 62, column: 5, scope: !247)
!270 = !DILocation(line: 65, column: 3, scope: !249)
!271 = !DILocation(line: 60, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !186, line: 67, column: 3)
!273 = distinct !DILexicalBlock(scope: !243, file: !186, line: 66, column: 3)
!274 = !DILocation(line: 60, column: 3, scope: !272)
!275 = !DILocation(line: 61, column: 3, scope: !243)
!276 = distinct !DISubprogram(name: "write_uint16", scope: !186, file: !186, line: 63, type: !277, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !17, !9, !13}
!279 = !DILocalVariable(name: "f", arg: 1, scope: !276, file: !186, line: 63, type: !17)
!280 = !DILocation(line: 0, scope: !276)
!281 = !DILocalVariable(name: "v", arg: 2, scope: !276, file: !186, line: 63, type: !9)
!282 = !DILocation(line: 63, column: 45, scope: !276)
!283 = !DILocalVariable(name: "bigendian", arg: 3, scope: !276, file: !186, line: 63, type: !13)
!284 = !DILocation(line: 65, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !186, line: 65, column: 7)
!286 = distinct !DILexicalBlock(scope: !276, file: !186, line: 67, column: 3)
!287 = !DILocation(line: 65, column: 17, scope: !285)
!288 = !DILocation(line: 65, column: 7, scope: !286)
!289 = !DILocation(line: 65, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !186, line: 67, column: 5)
!291 = distinct !DILexicalBlock(scope: !292, file: !186, line: 66, column: 5)
!292 = distinct !DILexicalBlock(scope: !285, file: !186, line: 65, column: 35)
!293 = !DILocation(line: 65, column: 15, scope: !290)
!294 = !DILocation(line: 65, column: 31, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !186, line: 65, column: 15)
!296 = !DILocation(line: 65, column: 25, scope: !295)
!297 = !DILocation(line: 65, column: 33, scope: !295)
!298 = !DILocation(line: 65, column: 40, scope: !295)
!299 = !DILocation(line: 65, column: 56, scope: !295)
!300 = !DILocation(line: 65, column: 50, scope: !295)
!301 = !DILocation(line: 65, column: 58, scope: !295)
!302 = !DILocation(line: 65, column: 67, scope: !295)
!303 = !DILocation(line: 65, column: 46, scope: !295)
!304 = !DILocation(line: 65, column: 11, scope: !295)
!305 = !DILocation(line: 65, column: 9, scope: !295)
!306 = !DILocation(line: 65, column: 7, scope: !295)
!307 = !DILocation(line: 68, column: 5, scope: !290)
!308 = !DILocation(line: 71, column: 3, scope: !292)
!309 = !DILocation(line: 66, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !186, line: 73, column: 3)
!311 = distinct !DILexicalBlock(scope: !286, file: !186, line: 72, column: 3)
!312 = !DILocation(line: 66, column: 3, scope: !310)
!313 = !DILocation(line: 67, column: 3, scope: !286)
!314 = distinct !DISubprogram(name: "set_endian", scope: !162, file: !162, line: 271, type: !315, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{null}
!317 = !DILocalVariable(name: "integer", scope: !314, file: !162, line: 273, type: !6)
!318 = !DILocation(line: 273, column: 12, scope: !314)
!319 = !DILocation(line: 273, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !314, file: !162, line: 276, column: 3)
!321 = !DILocation(line: 274, column: 7, scope: !320)
!322 = !DILocalVariable(name: "p", scope: !314, file: !162, line: 274, type: !11)
!323 = !DILocation(line: 0, scope: !314)
!324 = !DILocation(line: 276, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !162, line: 276, column: 7)
!326 = !DILocation(line: 276, column: 13, scope: !325)
!327 = !DILocation(line: 276, column: 7, scope: !325)
!328 = !DILocation(line: 276, column: 22, scope: !325)
!329 = !DILocation(line: 276, column: 7, scope: !320)
!330 = !DILocation(line: 276, column: 20, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !162, line: 276, column: 30)
!332 = !DILocation(line: 277, column: 3, scope: !331)
!333 = !DILocation(line: 277, column: 20, scope: !334)
!334 = distinct !DILexicalBlock(scope: !325, file: !162, line: 277, column: 10)
!335 = !DILocation(line: 278, column: 3, scope: !320)
!336 = distinct !DISubprogram(name: "main", scope: !162, file: !162, line: 280, type: !337, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!337 = !DISubroutineType(types: !338)
!338 = !{!13, !13, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!340 = !DILocalVariable(name: "argc", arg: 1, scope: !336, file: !162, line: 280, type: !13)
!341 = !DILocation(line: 0, scope: !336)
!342 = !DILocalVariable(name: "argv", arg: 2, scope: !336, file: !162, line: 280, type: !339)
!343 = !DILocalVariable(name: "demux_res", scope: !336, file: !162, line: 282, type: !133)
!344 = !DILocation(line: 282, column: 15, scope: !336)
!345 = !DILocalVariable(name: "thissample_duration", scope: !336, file: !162, line: 286, type: !8)
!346 = !DILocation(line: 286, column: 16, scope: !336)
!347 = !DILocalVariable(name: "thissample_bytesize", scope: !336, file: !162, line: 287, type: !8)
!348 = !DILocation(line: 287, column: 16, scope: !336)
!349 = !DILocalVariable(name: "__cil_tmp9", scope: !336, file: !162, line: 288, type: !25)
!350 = !DILocation(line: 288, column: 9, scope: !336)
!351 = !DILocalVariable(name: "__cil_tmp10", scope: !336, file: !162, line: 289, type: !25)
!352 = !DILocation(line: 289, column: 9, scope: !336)
!353 = !DILocalVariable(name: "__cil_tmp11", scope: !336, file: !162, line: 290, type: !25)
!354 = !DILocation(line: 290, column: 9, scope: !336)
!355 = !DILocalVariable(name: "__cil_tmp12", scope: !336, file: !162, line: 291, type: !25)
!356 = !DILocation(line: 291, column: 9, scope: !336)
!357 = !DILocalVariable(name: "__cil_tmp13", scope: !336, file: !162, line: 292, type: !25)
!358 = !DILocation(line: 292, column: 9, scope: !336)
!359 = !DILocalVariable(name: "__cil_tmp14", scope: !336, file: !162, line: 293, type: !25)
!360 = !DILocation(line: 293, column: 9, scope: !336)
!361 = !DILocation(line: 285, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !162, line: 297, column: 3)
!363 = distinct !DILexicalBlock(scope: !364, file: !162, line: 296, column: 3)
!364 = distinct !DILexicalBlock(scope: !336, file: !162, line: 295, column: 3)
!365 = !DILocation(line: 285, column: 3, scope: !362)
!366 = !DILocation(line: 287, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !162, line: 287, column: 3)
!368 = !DILocation(line: 289, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !162, line: 289, column: 3)
!370 = !DILocation(line: 296, column: 37, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !162, line: 291, column: 3)
!372 = !DILocation(line: 296, column: 18, scope: !371)
!373 = !DILocation(line: 296, column: 16, scope: !371)
!374 = !DILocation(line: 297, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !364, file: !162, line: 297, column: 7)
!376 = !DILocation(line: 297, column: 7, scope: !364)
!377 = !DILocation(line: 299, column: 38, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !162, line: 299, column: 5)
!379 = distinct !DILexicalBlock(scope: !380, file: !162, line: 298, column: 5)
!380 = distinct !DILexicalBlock(scope: !375, file: !162, line: 297, column: 23)
!381 = !DILocation(line: 299, column: 5, scope: !378)
!382 = !DILocation(line: 300, column: 5, scope: !380)
!383 = !DILocation(line: 305, column: 22, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !162, line: 303, column: 3)
!385 = distinct !DILexicalBlock(scope: !364, file: !162, line: 302, column: 3)
!386 = !DILocation(line: 305, column: 9, scope: !384)
!387 = !DILocalVariable(name: "tmp", scope: !336, file: !162, line: 285, type: !13)
!388 = !DILocation(line: 305, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !364, file: !162, line: 305, column: 7)
!390 = !DILocation(line: 305, column: 7, scope: !364)
!391 = !DILocation(line: 307, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !162, line: 307, column: 9)
!393 = distinct !DILexicalBlock(scope: !389, file: !162, line: 305, column: 14)
!394 = !DILocation(line: 307, column: 9, scope: !393)
!395 = !DILocation(line: 307, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !162, line: 307, column: 27)
!397 = !DILocation(line: 307, column: 21, scope: !398)
!398 = distinct !DILexicalBlock(scope: !392, file: !162, line: 307, column: 9)
!399 = !DILocation(line: 307, column: 11, scope: !398)
!400 = !DILocation(line: 307, column: 9, scope: !392)
!401 = !DILocation(line: 307, column: 34, scope: !398)
!402 = !DILocation(line: 309, column: 40, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !162, line: 310, column: 7)
!404 = distinct !DILexicalBlock(scope: !405, file: !162, line: 309, column: 7)
!405 = distinct !DILexicalBlock(scope: !398, file: !162, line: 307, column: 34)
!406 = !DILocation(line: 309, column: 7, scope: !403)
!407 = !DILocation(line: 310, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !162, line: 310, column: 11)
!409 = !DILocation(line: 310, column: 11, scope: !408)
!410 = !DILocation(line: 310, column: 11, scope: !405)
!411 = !DILocation(line: 311, column: 42, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !162, line: 312, column: 9)
!413 = distinct !DILexicalBlock(scope: !414, file: !162, line: 311, column: 9)
!414 = distinct !DILexicalBlock(scope: !408, file: !162, line: 310, column: 34)
!415 = !DILocation(line: 312, column: 52, scope: !412)
!416 = !DILocation(line: 312, column: 59, scope: !412)
!417 = !DILocation(line: 312, column: 24, scope: !412)
!418 = !DILocation(line: 312, column: 17, scope: !412)
!419 = !DILocation(line: 312, column: 103, scope: !412)
!420 = !DILocation(line: 312, column: 110, scope: !412)
!421 = !DILocation(line: 312, column: 75, scope: !412)
!422 = !DILocation(line: 312, column: 68, scope: !412)
!423 = !DILocation(line: 313, column: 52, scope: !412)
!424 = !DILocation(line: 313, column: 59, scope: !412)
!425 = !DILocation(line: 313, column: 24, scope: !412)
!426 = !DILocation(line: 313, column: 17, scope: !412)
!427 = !DILocation(line: 313, column: 91, scope: !412)
!428 = !DILocation(line: 313, column: 74, scope: !412)
!429 = !DILocation(line: 313, column: 67, scope: !412)
!430 = !DILocation(line: 311, column: 9, scope: !412)
!431 = !DILocation(line: 316, column: 7, scope: !414)
!432 = !DILocation(line: 314, column: 42, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !162, line: 318, column: 9)
!434 = distinct !DILexicalBlock(scope: !435, file: !162, line: 317, column: 9)
!435 = distinct !DILexicalBlock(scope: !408, file: !162, line: 316, column: 14)
!436 = !DILocation(line: 314, column: 9, scope: !433)
!437 = !DILocation(line: 315, column: 7, scope: !405)
!438 = !DILocation(line: 317, column: 3, scope: !393)
!439 = !DILocation(line: 318, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !364, file: !162, line: 318, column: 7)
!441 = !DILocation(line: 318, column: 7, scope: !364)
!442 = !DILocation(line: 321, column: 21, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !162, line: 321, column: 9)
!444 = distinct !DILexicalBlock(scope: !440, file: !162, line: 318, column: 23)
!445 = !DILocation(line: 321, column: 11, scope: !443)
!446 = !DILocation(line: 321, column: 9, scope: !444)
!447 = !DILocation(line: 323, column: 40, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !162, line: 323, column: 7)
!449 = distinct !DILexicalBlock(scope: !450, file: !162, line: 322, column: 7)
!450 = distinct !DILexicalBlock(scope: !443, file: !162, line: 321, column: 34)
!451 = !DILocation(line: 323, column: 7, scope: !448)
!452 = !DILocation(line: 325, column: 7, scope: !450)
!453 = !DILocation(line: 327, column: 105, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !162, line: 328, column: 5)
!455 = distinct !DILexicalBlock(scope: !444, file: !162, line: 327, column: 5)
!456 = !DILocation(line: 327, column: 112, scope: !454)
!457 = !DILocation(line: 327, column: 77, scope: !454)
!458 = !DILocation(line: 327, column: 70, scope: !454)
!459 = !DILocation(line: 328, column: 47, scope: !454)
!460 = !DILocation(line: 328, column: 54, scope: !454)
!461 = !DILocation(line: 328, column: 19, scope: !454)
!462 = !DILocation(line: 328, column: 12, scope: !454)
!463 = !DILocation(line: 328, column: 98, scope: !454)
!464 = !DILocation(line: 328, column: 105, scope: !454)
!465 = !DILocation(line: 328, column: 70, scope: !454)
!466 = !DILocation(line: 328, column: 63, scope: !454)
!467 = !DILocation(line: 329, column: 36, scope: !454)
!468 = !DILocation(line: 329, column: 19, scope: !454)
!469 = !DILocation(line: 329, column: 12, scope: !454)
!470 = !DILocation(line: 327, column: 5, scope: !454)
!471 = !DILocation(line: 331, column: 19, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !162, line: 331, column: 9)
!473 = distinct !DILexicalBlock(scope: !444, file: !162, line: 332, column: 5)
!474 = !DILocation(line: 331, column: 26, scope: !472)
!475 = !DILocation(line: 331, column: 9, scope: !473)
!476 = !DILocation(line: 331, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !472, file: !162, line: 331, column: 89)
!478 = !DILocation(line: 333, column: 19, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !162, line: 333, column: 9)
!480 = !DILocation(line: 333, column: 26, scope: !479)
!481 = !DILocation(line: 333, column: 9, scope: !473)
!482 = !DILocation(line: 333, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !162, line: 333, column: 90)
!484 = !DILocation(line: 329, column: 5, scope: !473)
!485 = !DILocation(line: 332, column: 5, scope: !473)
!486 = !DILocation(line: 334, column: 5, scope: !473)
!487 = !DILocation(line: 336, column: 5, scope: !444)
!488 = !DILocation(line: 340, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !162, line: 339, column: 3)
!490 = distinct !DILexicalBlock(scope: !364, file: !162, line: 338, column: 3)
!491 = !DILocation(line: 343, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !364, file: !162, line: 343, column: 7)
!493 = !DILocation(line: 343, column: 7, scope: !364)
!494 = !DILocalVariable(name: "output_size", scope: !336, file: !162, line: 283, type: !8)
!495 = !DILocalVariable(name: "i", scope: !336, file: !162, line: 284, type: !8)
!496 = !DILocation(line: 347, column: 5, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !162, line: 349, column: 5)
!498 = distinct !DILexicalBlock(scope: !499, file: !162, line: 348, column: 5)
!499 = distinct !DILexicalBlock(scope: !492, file: !162, line: 343, column: 25)
!500 = !DILocation(line: 0, scope: !499)
!501 = !DILocation(line: 347, column: 15, scope: !497)
!502 = !DILocation(line: 347, column: 28, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !162, line: 347, column: 11)
!504 = distinct !DILexicalBlock(scope: !497, file: !162, line: 347, column: 15)
!505 = !DILocation(line: 347, column: 16, scope: !503)
!506 = !DILocation(line: 347, column: 11, scope: !504)
!507 = !DILocation(line: 347, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !162, line: 347, column: 52)
!509 = !DILocation(line: 349, column: 27, scope: !510)
!510 = distinct !DILexicalBlock(scope: !504, file: !162, line: 349, column: 7)
!511 = !DILocation(line: 350, column: 27, scope: !510)
!512 = !DILocation(line: 352, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !162, line: 351, column: 7)
!514 = !DILocation(line: 355, column: 23, scope: !510)
!515 = !DILocation(line: 355, column: 77, scope: !510)
!516 = !DILocation(line: 355, column: 61, scope: !510)
!517 = !DILocation(line: 355, column: 89, scope: !510)
!518 = !DILocation(line: 355, column: 43, scope: !510)
!519 = !DILocation(line: 355, column: 122, scope: !510)
!520 = !DILocation(line: 355, column: 97, scope: !510)
!521 = !DILocation(line: 355, column: 95, scope: !510)
!522 = !DILocation(line: 355, column: 19, scope: !510)
!523 = !DILocation(line: 347, column: 9, scope: !510)
!524 = distinct !{!524, !496, !525}
!525 = !DILocation(line: 349, column: 5, scope: !497)
!526 = !DILocation(line: 351, column: 5, scope: !497)
!527 = !DILocation(line: 358, column: 28, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !162, line: 355, column: 5)
!529 = distinct !DILexicalBlock(scope: !499, file: !162, line: 354, column: 5)
!530 = !DILocation(line: 358, column: 76, scope: !528)
!531 = !DILocation(line: 358, column: 60, scope: !528)
!532 = !DILocation(line: 359, column: 44, scope: !528)
!533 = !DILocation(line: 359, column: 73, scope: !528)
!534 = !DILocation(line: 359, column: 57, scope: !528)
!535 = !DILocation(line: 358, column: 5, scope: !528)
!536 = !DILocation(line: 362, column: 3, scope: !499)
!537 = !DILocation(line: 366, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !162, line: 364, column: 3)
!539 = distinct !DILexicalBlock(scope: !364, file: !162, line: 363, column: 3)
!540 = !DILocation(line: 368, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !162, line: 368, column: 3)
!542 = !DILocation(line: 368, column: 3, scope: !541)
!543 = !DILocation(line: 370, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !364, file: !162, line: 370, column: 7)
!545 = !DILocation(line: 370, column: 7, scope: !364)
!546 = !DILocation(line: 371, column: 12, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !162, line: 372, column: 5)
!548 = distinct !DILexicalBlock(scope: !549, file: !162, line: 371, column: 5)
!549 = distinct !DILexicalBlock(scope: !544, file: !162, line: 370, column: 22)
!550 = !DILocation(line: 371, column: 5, scope: !547)
!551 = !DILocation(line: 374, column: 3, scope: !549)
!552 = !DILocation(line: 373, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !364, file: !162, line: 373, column: 7)
!554 = !DILocation(line: 373, column: 7, scope: !364)
!555 = !DILocation(line: 374, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !162, line: 375, column: 5)
!557 = distinct !DILexicalBlock(scope: !558, file: !162, line: 374, column: 5)
!558 = distinct !DILexicalBlock(scope: !553, file: !162, line: 373, column: 21)
!559 = !DILocation(line: 374, column: 5, scope: !556)
!560 = !DILocation(line: 377, column: 3, scope: !558)
!561 = !DILocation(line: 376, column: 3, scope: !364)
!562 = !DILocation(line: 0, scope: !364)
!563 = !DILocation(line: 378, column: 1, scope: !336)
!564 = distinct !DISubprogram(name: "setup_environment", scope: !162, file: !162, line: 181, type: !565, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !13, !339}
!567 = !DILocalVariable(name: "argc", arg: 1, scope: !564, file: !162, line: 181, type: !13)
!568 = !DILocation(line: 0, scope: !564)
!569 = !DILocalVariable(name: "argv", arg: 2, scope: !564, file: !162, line: 181, type: !339)
!570 = !DILocalVariable(name: "__cil_tmp13", scope: !564, file: !162, line: 193, type: !25)
!571 = !DILocation(line: 193, column: 9, scope: !564)
!572 = !DILocalVariable(name: "__cil_tmp14", scope: !564, file: !162, line: 194, type: !25)
!573 = !DILocation(line: 194, column: 9, scope: !564)
!574 = !DILocalVariable(name: "__cil_tmp15", scope: !564, file: !162, line: 195, type: !25)
!575 = !DILocation(line: 195, column: 9, scope: !564)
!576 = !DILocalVariable(name: "__cil_tmp16", scope: !564, file: !162, line: 196, type: !25)
!577 = !DILocation(line: 196, column: 9, scope: !564)
!578 = !DILocalVariable(name: "__cil_tmp17", scope: !564, file: !162, line: 197, type: !25)
!579 = !DILocation(line: 197, column: 9, scope: !564)
!580 = !DILocalVariable(name: "__cil_tmp18", scope: !564, file: !162, line: 198, type: !25)
!581 = !DILocation(line: 198, column: 9, scope: !564)
!582 = !DILocalVariable(name: "__cil_tmp19", scope: !564, file: !162, line: 199, type: !25)
!583 = !DILocation(line: 199, column: 9, scope: !564)
!584 = !DILocalVariable(name: "__cil_tmp20", scope: !564, file: !162, line: 200, type: !25)
!585 = !DILocation(line: 200, column: 9, scope: !564)
!586 = !DILocalVariable(name: "__cil_tmp21", scope: !564, file: !162, line: 201, type: !25)
!587 = !DILocation(line: 201, column: 9, scope: !564)
!588 = !DILocalVariable(name: "__cil_tmp22", scope: !564, file: !162, line: 202, type: !25)
!589 = !DILocation(line: 202, column: 9, scope: !564)
!590 = !DILocalVariable(name: "i", scope: !564, file: !162, line: 183, type: !13)
!591 = !DILocalVariable(name: "input_file_n", scope: !564, file: !162, line: 184, type: !25)
!592 = !DILocalVariable(name: "output_file_n", scope: !564, file: !162, line: 185, type: !25)
!593 = !DILocalVariable(name: "escaped", scope: !564, file: !162, line: 186, type: !13)
!594 = !DILocation(line: 190, column: 12, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !162, line: 190, column: 7)
!596 = distinct !DILexicalBlock(scope: !564, file: !162, line: 204, column: 3)
!597 = !DILocation(line: 190, column: 7, scope: !596)
!598 = !DILocation(line: 190, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !162, line: 192, column: 5)
!600 = distinct !DILexicalBlock(scope: !601, file: !162, line: 191, column: 5)
!601 = distinct !DILexicalBlock(scope: !595, file: !162, line: 190, column: 17)
!602 = !DILocation(line: 193, column: 3, scope: !601)
!603 = !DILocation(line: 192, column: 12, scope: !596)
!604 = !DILocation(line: 192, column: 3, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !162, line: 194, column: 3)
!606 = distinct !DILexicalBlock(scope: !596, file: !162, line: 193, column: 3)
!607 = !DILocation(line: 0, scope: !596)
!608 = !DILocation(line: 188, column: 11, scope: !596)
!609 = !DILocation(line: 192, column: 13, scope: !605)
!610 = !DILocation(line: 192, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !162, line: 192, column: 9)
!612 = distinct !DILexicalBlock(scope: !605, file: !162, line: 192, column: 13)
!613 = !DILocation(line: 192, column: 9, scope: !612)
!614 = !DILocation(line: 192, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !162, line: 192, column: 20)
!616 = !DILocation(line: 194, column: 53, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !162, line: 195, column: 5)
!618 = distinct !DILexicalBlock(scope: !612, file: !162, line: 194, column: 5)
!619 = !DILocation(line: 194, column: 45, scope: !617)
!620 = !DILocation(line: 194, column: 38, scope: !617)
!621 = !DILocation(line: 194, column: 15, scope: !617)
!622 = !DILocalVariable(name: "tmp___3", scope: !564, file: !162, line: 191, type: !13)
!623 = !DILocation(line: 194, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !612, file: !162, line: 194, column: 9)
!625 = !DILocation(line: 194, column: 9, scope: !612)
!626 = !DILocation(line: 196, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !162, line: 194, column: 23)
!628 = !DILocation(line: 196, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !162, line: 196, column: 11)
!630 = !DILocation(line: 196, column: 11, scope: !627)
!631 = !DILocation(line: 196, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !162, line: 198, column: 9)
!633 = distinct !DILexicalBlock(scope: !634, file: !162, line: 197, column: 9)
!634 = distinct !DILexicalBlock(scope: !629, file: !162, line: 196, column: 16)
!635 = !DILocation(line: 199, column: 7, scope: !634)
!636 = !DILocation(line: 197, column: 38, scope: !627)
!637 = !DILocation(line: 197, column: 30, scope: !627)
!638 = !DILocation(line: 197, column: 23, scope: !627)
!639 = !DILocation(line: 198, column: 5, scope: !627)
!640 = !DILocation(line: 199, column: 55, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !162, line: 200, column: 7)
!642 = distinct !DILexicalBlock(scope: !643, file: !162, line: 199, column: 7)
!643 = distinct !DILexicalBlock(scope: !624, file: !162, line: 198, column: 12)
!644 = !DILocation(line: 199, column: 47, scope: !641)
!645 = !DILocation(line: 199, column: 40, scope: !641)
!646 = !DILocation(line: 199, column: 17, scope: !641)
!647 = !DILocalVariable(name: "tmp___2", scope: !564, file: !162, line: 190, type: !13)
!648 = !DILocation(line: 199, column: 19, scope: !649)
!649 = distinct !DILexicalBlock(scope: !643, file: !162, line: 199, column: 11)
!650 = !DILocation(line: 199, column: 11, scope: !643)
!651 = !DILocation(line: 201, column: 26, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !162, line: 199, column: 25)
!653 = !DILocation(line: 202, column: 7, scope: !652)
!654 = !DILocation(line: 203, column: 57, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !162, line: 204, column: 9)
!656 = distinct !DILexicalBlock(scope: !657, file: !162, line: 203, column: 9)
!657 = distinct !DILexicalBlock(scope: !649, file: !162, line: 202, column: 14)
!658 = !DILocation(line: 203, column: 49, scope: !655)
!659 = !DILocation(line: 203, column: 42, scope: !655)
!660 = !DILocation(line: 203, column: 19, scope: !655)
!661 = !DILocalVariable(name: "tmp___1", scope: !564, file: !162, line: 189, type: !13)
!662 = !DILocation(line: 203, column: 21, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !162, line: 203, column: 13)
!664 = !DILocation(line: 203, column: 13, scope: !657)
!665 = !DILocation(line: 205, column: 19, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !162, line: 203, column: 27)
!667 = !DILocation(line: 206, column: 9, scope: !666)
!668 = !DILocation(line: 207, column: 59, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !162, line: 208, column: 11)
!670 = distinct !DILexicalBlock(scope: !671, file: !162, line: 207, column: 11)
!671 = distinct !DILexicalBlock(scope: !663, file: !162, line: 206, column: 16)
!672 = !DILocation(line: 207, column: 51, scope: !669)
!673 = !DILocation(line: 207, column: 44, scope: !669)
!674 = !DILocation(line: 207, column: 21, scope: !669)
!675 = !DILocalVariable(name: "tmp___0", scope: !564, file: !162, line: 188, type: !13)
!676 = !DILocation(line: 207, column: 23, scope: !677)
!677 = distinct !DILexicalBlock(scope: !671, file: !162, line: 207, column: 15)
!678 = !DILocation(line: 207, column: 15, scope: !671)
!679 = !DILocation(line: 209, column: 28, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !162, line: 207, column: 29)
!681 = !DILocation(line: 210, column: 11, scope: !680)
!682 = !DILocation(line: 211, column: 57, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !162, line: 212, column: 13)
!684 = distinct !DILexicalBlock(scope: !685, file: !162, line: 211, column: 13)
!685 = distinct !DILexicalBlock(scope: !677, file: !162, line: 210, column: 18)
!686 = !DILocation(line: 211, column: 49, scope: !683)
!687 = !DILocation(line: 211, column: 42, scope: !683)
!688 = !DILocation(line: 211, column: 19, scope: !683)
!689 = !DILocalVariable(name: "tmp", scope: !564, file: !162, line: 187, type: !13)
!690 = !DILocation(line: 211, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !162, line: 211, column: 17)
!692 = !DILocation(line: 211, column: 17, scope: !685)
!693 = !DILocation(line: 214, column: 21, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !162, line: 214, column: 19)
!695 = distinct !DILexicalBlock(scope: !691, file: !162, line: 211, column: 27)
!696 = !DILocation(line: 214, column: 19, scope: !695)
!697 = !DILocation(line: 214, column: 17, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !162, line: 216, column: 17)
!699 = distinct !DILexicalBlock(scope: !700, file: !162, line: 215, column: 17)
!700 = distinct !DILexicalBlock(scope: !694, file: !162, line: 214, column: 27)
!701 = !DILocation(line: 217, column: 15, scope: !700)
!702 = !DILocation(line: 216, column: 13, scope: !695)
!703 = !DILocation(line: 218, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !162, line: 218, column: 15)
!705 = distinct !DILexicalBlock(scope: !706, file: !162, line: 217, column: 15)
!706 = distinct !DILexicalBlock(scope: !691, file: !162, line: 216, column: 20)
!707 = !DILocation(line: 192, column: 7, scope: !612)
!708 = distinct !{!708, !604, !709}
!709 = !DILocation(line: 193, column: 3, scope: !605)
!710 = !DILocation(line: 195, column: 3, scope: !605)
!711 = !DILocation(line: 221, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !596, file: !162, line: 221, column: 7)
!713 = !DILocation(line: 221, column: 7, scope: !596)
!714 = !DILocation(line: 221, column: 5, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !162, line: 223, column: 5)
!716 = distinct !DILexicalBlock(scope: !717, file: !162, line: 222, column: 5)
!717 = distinct !DILexicalBlock(scope: !712, file: !162, line: 221, column: 15)
!718 = !DILocation(line: 224, column: 3, scope: !717)
!719 = !DILocation(line: 223, column: 33, scope: !596)
!720 = !DILocation(line: 223, column: 25, scope: !596)
!721 = !DILocation(line: 223, column: 18, scope: !596)
!722 = !DILocation(line: 229, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !596, file: !162, line: 229, column: 7)
!724 = !DILocation(line: 229, column: 7, scope: !596)
!725 = !DILocation(line: 229, column: 30, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !162, line: 229, column: 9)
!727 = distinct !DILexicalBlock(scope: !723, file: !162, line: 229, column: 18)
!728 = !DILocation(line: 229, column: 15, scope: !726)
!729 = !DILocation(line: 229, column: 9, scope: !726)
!730 = !DILocation(line: 229, column: 35, scope: !726)
!731 = !DILocation(line: 229, column: 9, scope: !727)
!732 = !DILocation(line: 229, column: 32, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !162, line: 229, column: 11)
!734 = distinct !DILexicalBlock(scope: !726, file: !162, line: 229, column: 42)
!735 = !DILocation(line: 229, column: 17, scope: !733)
!736 = !DILocation(line: 229, column: 11, scope: !733)
!737 = !DILocation(line: 229, column: 37, scope: !733)
!738 = !DILocation(line: 229, column: 11, scope: !734)
!739 = !DILocation(line: 229, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !162, line: 231, column: 9)
!741 = distinct !DILexicalBlock(scope: !742, file: !162, line: 230, column: 9)
!742 = distinct !DILexicalBlock(scope: !733, file: !162, line: 229, column: 43)
!743 = !DILocation(line: 232, column: 7, scope: !742)
!744 = !DILocation(line: 233, column: 5, scope: !734)
!745 = !DILocation(line: 234, column: 3, scope: !727)
!746 = !DILocation(line: 231, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !596, file: !162, line: 231, column: 7)
!748 = !DILocation(line: 231, column: 7, scope: !596)
!749 = !DILocation(line: 231, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !162, line: 233, column: 5)
!751 = distinct !DILexicalBlock(scope: !752, file: !162, line: 232, column: 5)
!752 = distinct !DILexicalBlock(scope: !747, file: !162, line: 231, column: 23)
!753 = !DILocation(line: 234, column: 3, scope: !752)
!754 = !DILocation(line: 233, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !596, file: !162, line: 233, column: 7)
!756 = !DILocation(line: 233, column: 7, scope: !596)
!757 = !DILocation(line: 235, column: 19, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !162, line: 235, column: 5)
!759 = distinct !DILexicalBlock(scope: !760, file: !162, line: 234, column: 5)
!760 = distinct !DILexicalBlock(scope: !755, file: !162, line: 233, column: 22)
!761 = !DILocation(line: 235, column: 17, scope: !758)
!762 = !DILocation(line: 236, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !162, line: 236, column: 9)
!764 = !DILocation(line: 236, column: 9, scope: !760)
!765 = !DILocation(line: 238, column: 40, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !162, line: 238, column: 7)
!767 = distinct !DILexicalBlock(scope: !768, file: !162, line: 237, column: 7)
!768 = distinct !DILexicalBlock(scope: !763, file: !162, line: 236, column: 24)
!769 = !DILocation(line: 238, column: 7, scope: !766)
!770 = !DILocation(line: 239, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !162, line: 241, column: 7)
!772 = !DILocation(line: 240, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !162, line: 241, column: 7)
!774 = !DILocation(line: 242, column: 19, scope: !760)
!775 = !DILocation(line: 243, column: 3, scope: !760)
!776 = !DILocation(line: 246, column: 19, scope: !777)
!777 = distinct !DILexicalBlock(scope: !755, file: !162, line: 243, column: 10)
!778 = !DILocation(line: 246, column: 17, scope: !777)
!779 = !DILocation(line: 249, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !162, line: 249, column: 3)
!781 = distinct !DILexicalBlock(scope: !596, file: !162, line: 248, column: 3)
!782 = !DILocalVariable(name: "tmp___4", scope: !564, file: !162, line: 192, type: !13)
!783 = !DILocation(line: 249, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !596, file: !162, line: 249, column: 7)
!785 = !DILocation(line: 249, column: 7, scope: !596)
!786 = !DILocation(line: 251, column: 18, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !162, line: 249, column: 21)
!788 = !DILocation(line: 251, column: 16, scope: !787)
!789 = !DILocation(line: 252, column: 3, scope: !787)
!790 = !DILocation(line: 255, column: 18, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !162, line: 254, column: 5)
!792 = distinct !DILexicalBlock(scope: !793, file: !162, line: 253, column: 5)
!793 = distinct !DILexicalBlock(scope: !784, file: !162, line: 252, column: 10)
!794 = !DILocation(line: 255, column: 16, scope: !791)
!795 = !DILocation(line: 256, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !162, line: 256, column: 9)
!797 = !DILocation(line: 256, column: 9, scope: !793)
!798 = !DILocation(line: 258, column: 40, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !162, line: 258, column: 7)
!800 = distinct !DILexicalBlock(scope: !801, file: !162, line: 257, column: 7)
!801 = distinct !DILexicalBlock(scope: !796, file: !162, line: 256, column: 23)
!802 = !DILocation(line: 258, column: 7, scope: !799)
!803 = !DILocation(line: 259, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !162, line: 261, column: 7)
!805 = !DILocation(line: 260, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !162, line: 261, column: 7)
!807 = !DILocation(line: 262, column: 18, scope: !793)
!808 = !DILocation(line: 264, column: 3, scope: !596)
!809 = distinct !DISubprogram(name: "stream_create_file", scope: !126, file: !126, line: 157, type: !810, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!810 = !DISubroutineType(types: !811)
!811 = !{!122, !17, !13}
!812 = !DILocalVariable(name: "file", arg: 1, scope: !809, file: !126, line: 157, type: !17)
!813 = !DILocation(line: 0, scope: !809)
!814 = !DILocalVariable(name: "bigendian", arg: 2, scope: !809, file: !126, line: 157, type: !13)
!815 = !DILocation(line: 162, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !126, line: 164, column: 3)
!817 = distinct !DILexicalBlock(scope: !818, file: !126, line: 163, column: 3)
!818 = distinct !DILexicalBlock(scope: !809, file: !126, line: 162, column: 3)
!819 = !DILocalVariable(name: "tmp", scope: !809, file: !126, line: 160, type: !14)
!820 = !DILocation(line: 162, column: 16, scope: !817)
!821 = !DILocalVariable(name: "new_stream", scope: !809, file: !126, line: 159, type: !122)
!822 = !DILocation(line: 163, column: 15, scope: !817)
!823 = !DILocation(line: 163, column: 17, scope: !817)
!824 = !DILocation(line: 164, column: 15, scope: !817)
!825 = !DILocation(line: 164, column: 25, scope: !817)
!826 = !DILocation(line: 165, column: 15, scope: !817)
!827 = !DILocation(line: 165, column: 19, scope: !817)
!828 = !DILocation(line: 167, column: 3, scope: !818)
!829 = distinct !DISubprogram(name: "qtmovie_read", scope: !118, file: !118, line: 653, type: !830, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!830 = !DISubroutineType(types: !831)
!831 = !{!13, !122, !132}
!832 = !DILocalVariable(name: "file", arg: 1, scope: !829, file: !118, line: 653, type: !122)
!833 = !DILocation(line: 0, scope: !829)
!834 = !DILocalVariable(name: "demux_res", arg: 2, scope: !829, file: !118, line: 653, type: !132)
!835 = !DILocalVariable(name: "__cil_tmp12", scope: !829, file: !118, line: 664, type: !25)
!836 = !DILocation(line: 664, column: 9, scope: !829)
!837 = !DILocalVariable(name: "__cil_tmp13", scope: !829, file: !118, line: 665, type: !25)
!838 = !DILocation(line: 665, column: 9, scope: !829)
!839 = !DILocalVariable(name: "found_moov", scope: !829, file: !118, line: 655, type: !13)
!840 = !DILocalVariable(name: "found_mdat", scope: !829, file: !118, line: 656, type: !13)
!841 = !DILocation(line: 659, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !118, line: 657, column: 3)
!843 = distinct !DILexicalBlock(scope: !844, file: !118, line: 668, column: 3)
!844 = distinct !DILexicalBlock(scope: !829, file: !118, line: 667, column: 3)
!845 = !DILocalVariable(name: "tmp", scope: !829, file: !118, line: 658, type: !14)
!846 = !DILocation(line: 659, column: 13, scope: !843)
!847 = !DILocalVariable(name: "qtmovie", scope: !829, file: !118, line: 657, type: !116)
!848 = !DILocation(line: 662, column: 12, scope: !843)
!849 = !DILocation(line: 662, column: 19, scope: !843)
!850 = !DILocation(line: 664, column: 12, scope: !843)
!851 = !DILocation(line: 664, column: 16, scope: !843)
!852 = !DILocation(line: 666, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !843, file: !118, line: 665, column: 3)
!854 = !DILocation(line: 666, column: 3, scope: !853)
!855 = !DILocation(line: 669, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !118, line: 670, column: 3)
!857 = distinct !DILexicalBlock(scope: !844, file: !118, line: 669, column: 3)
!858 = !DILocation(line: 655, column: 14, scope: !843)
!859 = !DILocation(line: 656, column: 14, scope: !843)
!860 = !DILocation(line: 669, column: 13, scope: !856)
!861 = !DILocation(line: 674, column: 45, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !118, line: 673, column: 5)
!863 = distinct !DILexicalBlock(scope: !864, file: !118, line: 672, column: 5)
!864 = distinct !DILexicalBlock(scope: !856, file: !118, line: 669, column: 13)
!865 = !DILocation(line: 674, column: 17, scope: !862)
!866 = !DILocalVariable(name: "chunk_len", scope: !829, file: !118, line: 659, type: !15)
!867 = !DILocation(line: 675, column: 35, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !118, line: 676, column: 5)
!869 = !DILocation(line: 675, column: 15, scope: !868)
!870 = !DILocalVariable(name: "tmp___0", scope: !829, file: !118, line: 661, type: !13)
!871 = !DILocation(line: 675, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !118, line: 675, column: 9)
!873 = !DILocation(line: 675, column: 9, scope: !864)
!874 = !DILocation(line: 677, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !118, line: 675, column: 18)
!876 = !DILocation(line: 680, column: 19, scope: !877)
!877 = distinct !DILexicalBlock(scope: !864, file: !118, line: 680, column: 9)
!878 = !DILocation(line: 680, column: 9, scope: !864)
!879 = !DILocation(line: 682, column: 40, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !118, line: 682, column: 7)
!881 = distinct !DILexicalBlock(scope: !882, file: !118, line: 681, column: 7)
!882 = distinct !DILexicalBlock(scope: !877, file: !118, line: 680, column: 26)
!883 = !DILocation(line: 682, column: 7, scope: !880)
!884 = !DILocation(line: 683, column: 7, scope: !882)
!885 = !DILocation(line: 685, column: 44, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !118, line: 686, column: 5)
!887 = distinct !DILexicalBlock(scope: !864, file: !118, line: 685, column: 5)
!888 = !DILocation(line: 685, column: 16, scope: !886)
!889 = !DILocalVariable(name: "chunk_id", scope: !829, file: !118, line: 660, type: !80)
!890 = !DILocation(line: 689, column: 18, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !118, line: 689, column: 9)
!892 = distinct !DILexicalBlock(scope: !864, file: !118, line: 688, column: 5)
!893 = !DILocation(line: 689, column: 9, scope: !892)
!894 = !DILocation(line: 689, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !118, line: 689, column: 84)
!896 = !DILocation(line: 692, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !118, line: 692, column: 9)
!898 = !DILocation(line: 692, column: 9, scope: !892)
!899 = !DILocation(line: 692, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !118, line: 692, column: 84)
!901 = !DILocation(line: 705, column: 18, scope: !902)
!902 = distinct !DILexicalBlock(scope: !892, file: !118, line: 705, column: 9)
!903 = !DILocation(line: 705, column: 9, scope: !892)
!904 = !DILocation(line: 705, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !118, line: 705, column: 83)
!906 = !DILocation(line: 713, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !892, file: !118, line: 713, column: 9)
!908 = !DILocation(line: 713, column: 9, scope: !892)
!909 = !DILocation(line: 713, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !118, line: 713, column: 84)
!911 = !DILocation(line: 716, column: 5, scope: !892)
!912 = !DILocation(line: 690, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !118, line: 719, column: 5)
!914 = distinct !DILexicalBlock(scope: !892, file: !118, line: 718, column: 5)
!915 = !DILocation(line: 691, column: 5, scope: !892)
!916 = !DILocation(line: 693, column: 15, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !118, line: 694, column: 5)
!918 = distinct !DILexicalBlock(scope: !892, file: !118, line: 693, column: 5)
!919 = !DILocalVariable(name: "tmp___1", scope: !829, file: !118, line: 662, type: !13)
!920 = !DILocation(line: 693, column: 17, scope: !921)
!921 = distinct !DILexicalBlock(scope: !892, file: !118, line: 693, column: 9)
!922 = !DILocation(line: 693, column: 9, scope: !892)
!923 = !DILocation(line: 694, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !118, line: 693, column: 23)
!925 = !DILocation(line: 695, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !892, file: !118, line: 695, column: 9)
!927 = !DILocation(line: 695, column: 9, scope: !892)
!928 = !DILocation(line: 697, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !118, line: 697, column: 7)
!930 = distinct !DILexicalBlock(scope: !931, file: !118, line: 696, column: 7)
!931 = distinct !DILexicalBlock(scope: !926, file: !118, line: 695, column: 21)
!932 = !DILocalVariable(name: "tmp___2", scope: !829, file: !118, line: 663, type: !13)
!933 = !DILocation(line: 697, column: 7, scope: !931)
!934 = !DILocation(line: 700, column: 5, scope: !892)
!935 = !DILocation(line: 706, column: 41, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !118, line: 703, column: 5)
!937 = distinct !DILexicalBlock(scope: !892, file: !118, line: 702, column: 5)
!938 = !DILocation(line: 706, column: 5, scope: !936)
!939 = !DILocation(line: 707, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !892, file: !118, line: 707, column: 9)
!941 = !DILocation(line: 707, column: 9, scope: !892)
!942 = !DILocation(line: 708, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !118, line: 707, column: 21)
!944 = !DILocation(line: 710, column: 5, scope: !892)
!945 = !DILocation(line: 714, column: 26, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !118, line: 713, column: 5)
!947 = distinct !DILexicalBlock(scope: !892, file: !118, line: 712, column: 5)
!948 = !DILocation(line: 714, column: 44, scope: !946)
!949 = !DILocation(line: 714, column: 5, scope: !946)
!950 = !DILocation(line: 715, column: 5, scope: !892)
!951 = !DILocation(line: 717, column: 38, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !118, line: 718, column: 5)
!953 = distinct !DILexicalBlock(scope: !892, file: !118, line: 717, column: 5)
!954 = !DILocation(line: 718, column: 47, scope: !952)
!955 = !DILocation(line: 718, column: 20, scope: !952)
!956 = !DILocation(line: 718, column: 13, scope: !952)
!957 = !DILocation(line: 718, column: 90, scope: !952)
!958 = !DILocation(line: 718, column: 63, scope: !952)
!959 = !DILocation(line: 718, column: 56, scope: !952)
!960 = !DILocation(line: 719, column: 47, scope: !952)
!961 = !DILocation(line: 719, column: 20, scope: !952)
!962 = !DILocation(line: 719, column: 13, scope: !952)
!963 = !DILocation(line: 719, column: 62, scope: !952)
!964 = !DILocation(line: 719, column: 55, scope: !952)
!965 = !DILocation(line: 717, column: 5, scope: !952)
!966 = !DILocation(line: 719, column: 5, scope: !892)
!967 = !DILocation(line: 0, scope: !844)
!968 = distinct !{!968, !855, !969}
!969 = !DILocation(line: 722, column: 3, scope: !856)
!970 = !DILocation(line: 724, column: 3, scope: !856)
!971 = !DILocation(line: 723, column: 3, scope: !844)
!972 = !DILocation(line: 0, scope: !864)
!973 = !DILocation(line: 725, column: 1, scope: !829)
!974 = distinct !DISubprogram(name: "init_sound_converter", scope: !162, file: !162, line: 153, type: !975, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !132}
!977 = !DILocalVariable(name: "demux_res", arg: 1, scope: !974, file: !162, line: 153, type: !132)
!978 = !DILocation(line: 0, scope: !974)
!979 = !DILocation(line: 155, column: 39, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !162, line: 159, column: 3)
!981 = distinct !DILexicalBlock(scope: !982, file: !162, line: 158, column: 3)
!982 = distinct !DILexicalBlock(scope: !974, file: !162, line: 157, column: 3)
!983 = !DILocation(line: 155, column: 22, scope: !980)
!984 = !DILocation(line: 155, column: 69, scope: !980)
!985 = !DILocation(line: 155, column: 52, scope: !980)
!986 = !DILocation(line: 155, column: 10, scope: !980)
!987 = !DILocation(line: 155, column: 8, scope: !980)
!988 = !DILocation(line: 157, column: 17, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !162, line: 157, column: 3)
!990 = !DILocation(line: 157, column: 42, scope: !989)
!991 = !DILocation(line: 157, column: 3, scope: !989)
!992 = !DILocation(line: 158, column: 3, scope: !982)
!993 = distinct !DISubprogram(name: "get_sample_info", scope: !162, file: !162, line: 62, type: !994, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!994 = !DISubroutineType(types: !995)
!995 = !{!13, !132, !6, !82, !82}
!996 = !DILocalVariable(name: "demux_res", arg: 1, scope: !993, file: !162, line: 62, type: !132)
!997 = !DILocation(line: 0, scope: !993)
!998 = !DILocalVariable(name: "samplenum", arg: 2, scope: !993, file: !162, line: 62, type: !6)
!999 = !DILocalVariable(name: "sample_duration", arg: 3, scope: !993, file: !162, line: 62, type: !82)
!1000 = !DILocalVariable(name: "sample_byte_size", arg: 4, scope: !993, file: !162, line: 63, type: !82)
!1001 = !DILocalVariable(name: "__cil_tmp7", scope: !993, file: !162, line: 67, type: !25)
!1002 = !DILocation(line: 67, column: 9, scope: !993)
!1003 = !DILocalVariable(name: "__cil_tmp8", scope: !993, file: !162, line: 68, type: !25)
!1004 = !DILocation(line: 68, column: 9, scope: !993)
!1005 = !DILocalVariable(name: "__cil_tmp9", scope: !993, file: !162, line: 69, type: !25)
!1006 = !DILocation(line: 69, column: 9, scope: !993)
!1007 = !DILocalVariable(name: "duration_index_accum", scope: !993, file: !162, line: 65, type: !8)
!1008 = !DILocalVariable(name: "duration_cur_index", scope: !993, file: !162, line: 66, type: !8)
!1009 = !DILocation(line: 69, column: 31, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !162, line: 69, column: 7)
!1011 = distinct !DILexicalBlock(scope: !993, file: !162, line: 71, column: 3)
!1012 = !DILocation(line: 69, column: 17, scope: !1010)
!1013 = !DILocation(line: 69, column: 7, scope: !1011)
!1014 = !DILocation(line: 71, column: 38, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !162, line: 71, column: 5)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !162, line: 70, column: 5)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !162, line: 69, column: 54)
!1018 = !DILocation(line: 71, column: 5, scope: !1015)
!1019 = !DILocation(line: 72, column: 5, scope: !1017)
!1020 = !DILocation(line: 75, column: 20, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1011, file: !162, line: 75, column: 7)
!1022 = !DILocation(line: 75, column: 9, scope: !1021)
!1023 = !DILocation(line: 75, column: 7, scope: !1011)
!1024 = !DILocation(line: 77, column: 38, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !162, line: 77, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !162, line: 76, column: 5)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !162, line: 75, column: 41)
!1028 = !DILocation(line: 77, column: 5, scope: !1025)
!1029 = !DILocation(line: 78, column: 5, scope: !1027)
!1030 = !DILocation(line: 80, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !162, line: 81, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1011, file: !162, line: 80, column: 3)
!1033 = !DILocation(line: 0, scope: !1011)
!1034 = !DILocation(line: 80, column: 13, scope: !1031)
!1035 = !DILocation(line: 80, column: 24, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !162, line: 80, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !162, line: 80, column: 13)
!1038 = !DILocation(line: 80, column: 39, scope: !1036)
!1039 = !DILocation(line: 80, column: 62, scope: !1036)
!1040 = !DILocation(line: 80, column: 75, scope: !1036)
!1041 = !DILocation(line: 80, column: 98, scope: !1036)
!1042 = !DILocation(line: 80, column: 9, scope: !1037)
!1043 = !DILocation(line: 80, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !162, line: 80, column: 113)
!1045 = !DILocation(line: 83, column: 41, scope: !1037)
!1046 = !DILocation(line: 83, column: 56, scope: !1037)
!1047 = !DILocation(line: 83, column: 79, scope: !1037)
!1048 = !DILocation(line: 83, column: 26, scope: !1037)
!1049 = !DILocation(line: 84, column: 24, scope: !1037)
!1050 = !DILocation(line: 85, column: 42, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1037, file: !162, line: 85, column: 9)
!1052 = !DILocation(line: 85, column: 28, scope: !1051)
!1053 = !DILocation(line: 85, column: 9, scope: !1037)
!1054 = !DILocation(line: 87, column: 40, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !162, line: 87, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !162, line: 86, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !162, line: 85, column: 63)
!1058 = !DILocation(line: 87, column: 7, scope: !1055)
!1059 = !DILocation(line: 88, column: 7, scope: !1057)
!1060 = distinct !{!1060, !1030, !1061}
!1061 = !DILocation(line: 90, column: 3, scope: !1031)
!1062 = !DILocation(line: 92, column: 3, scope: !1031)
!1063 = !DILocation(line: 92, column: 34, scope: !1011)
!1064 = !DILocation(line: 92, column: 49, scope: !1011)
!1065 = !DILocation(line: 92, column: 72, scope: !1011)
!1066 = !DILocation(line: 92, column: 20, scope: !1011)
!1067 = !DILocation(line: 93, column: 36, scope: !1011)
!1068 = !DILocation(line: 93, column: 53, scope: !1011)
!1069 = !DILocation(line: 93, column: 23, scope: !1011)
!1070 = !DILocation(line: 93, column: 21, scope: !1011)
!1071 = !DILocation(line: 95, column: 3, scope: !1011)
!1072 = !DILocation(line: 97, column: 1, scope: !993)
!1073 = distinct !DISubprogram(name: "GetBuffer", scope: !162, file: !162, line: 98, type: !975, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1074 = !DILocalVariable(name: "demux_res", arg: 1, scope: !1073, file: !162, line: 98, type: !132)
!1075 = !DILocation(line: 0, scope: !1073)
!1076 = !DILocalVariable(name: "sample_duration", scope: !1073, file: !162, line: 107, type: !6)
!1077 = !DILocation(line: 107, column: 12, scope: !1073)
!1078 = !DILocalVariable(name: "sample_byte_size", scope: !1073, file: !162, line: 108, type: !6)
!1079 = !DILocation(line: 108, column: 12, scope: !1073)
!1080 = !DILocalVariable(name: "outputBytes", scope: !1073, file: !162, line: 109, type: !13)
!1081 = !DILocation(line: 109, column: 7, scope: !1073)
!1082 = !DILocalVariable(name: "__cil_tmp13", scope: !1073, file: !162, line: 111, type: !25)
!1083 = !DILocation(line: 111, column: 9, scope: !1073)
!1084 = !DILocalVariable(name: "__cil_tmp14", scope: !1073, file: !162, line: 112, type: !25)
!1085 = !DILocation(line: 112, column: 9, scope: !1073)
!1086 = !DILocalVariable(name: "__cil_tmp15", scope: !1073, file: !162, line: 113, type: !25)
!1087 = !DILocation(line: 113, column: 9, scope: !1073)
!1088 = !DILocalVariable(name: "__cil_tmp16", scope: !1073, file: !162, line: 114, type: !25)
!1089 = !DILocation(line: 114, column: 9, scope: !1073)
!1090 = !DILocalVariable(name: "destBufferSize", scope: !1073, file: !162, line: 100, type: !158)
!1091 = !DILocation(line: 101, column: 16, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !162, line: 101, column: 3)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !162, line: 117, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1073, file: !162, line: 116, column: 3)
!1095 = !DILocation(line: 101, column: 9, scope: !1092)
!1096 = !DILocalVariable(name: "tmp", scope: !1073, file: !162, line: 102, type: !14)
!1097 = !DILocalVariable(name: "pDestBuffer", scope: !1073, file: !162, line: 101, type: !14)
!1098 = !DILocalVariable(name: "bytes_read", scope: !1073, file: !162, line: 103, type: !13)
!1099 = !DILocalVariable(name: "buffer_size", scope: !1073, file: !162, line: 104, type: !8)
!1100 = !DILocation(line: 109, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1093, file: !162, line: 105, column: 3)
!1102 = !DILocalVariable(name: "buffer", scope: !1073, file: !162, line: 105, type: !14)
!1103 = !DILocalVariable(name: "i", scope: !1073, file: !162, line: 106, type: !8)
!1104 = !DILocation(line: 111, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !162, line: 114, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1094, file: !162, line: 113, column: 3)
!1107 = !DILocation(line: 0, scope: !1094)
!1108 = !DILocation(line: 111, column: 13, scope: !1105)
!1109 = !DILocation(line: 111, column: 27, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 111, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !162, line: 111, column: 13)
!1112 = !DILocation(line: 111, column: 14, scope: !1110)
!1113 = !DILocation(line: 111, column: 9, scope: !1111)
!1114 = !DILocation(line: 111, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !162, line: 111, column: 51)
!1116 = !DILocation(line: 119, column: 15, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !162, line: 114, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 113, column: 5)
!1119 = !DILocalVariable(name: "tmp___0", scope: !1073, file: !162, line: 110, type: !13)
!1120 = !DILocation(line: 119, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 119, column: 9)
!1122 = !DILocation(line: 119, column: 9, scope: !1111)
!1123 = !DILocation(line: 122, column: 40, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !162, line: 121, column: 7)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !162, line: 120, column: 7)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !162, line: 119, column: 20)
!1127 = !DILocation(line: 122, column: 7, scope: !1124)
!1128 = !DILocation(line: 123, column: 7, scope: !1126)
!1129 = !DILocation(line: 126, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 126, column: 9)
!1131 = !DILocation(line: 126, column: 21, scope: !1130)
!1132 = !DILocation(line: 126, column: 9, scope: !1111)
!1133 = !DILocation(line: 128, column: 40, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !162, line: 128, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !162, line: 127, column: 7)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !162, line: 126, column: 41)
!1137 = !DILocation(line: 129, column: 28, scope: !1134)
!1138 = !DILocation(line: 128, column: 7, scope: !1134)
!1139 = !DILocation(line: 131, column: 7, scope: !1136)
!1140 = !DILocation(line: 134, column: 17, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !162, line: 134, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 133, column: 5)
!1143 = !DILocation(line: 134, column: 31, scope: !1141)
!1144 = !DILocation(line: 134, column: 5, scope: !1141)
!1145 = !DILocation(line: 138, column: 19, scope: !1142)
!1146 = !DILocation(line: 138, column: 17, scope: !1142)
!1147 = !DILocation(line: 139, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1142, file: !162, line: 139, column: 5)
!1149 = !DILocation(line: 139, column: 5, scope: !1148)
!1150 = !DILocation(line: 142, column: 19, scope: !1142)
!1151 = !DILocation(line: 142, column: 16, scope: !1142)
!1152 = !DILocation(line: 144, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 144, column: 9)
!1154 = !DILocation(line: 144, column: 9, scope: !1111)
!1155 = !DILocation(line: 145, column: 40, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !162, line: 146, column: 7)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !162, line: 145, column: 7)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !162, line: 144, column: 18)
!1159 = !DILocation(line: 146, column: 15, scope: !1156)
!1160 = !DILocation(line: 145, column: 7, scope: !1156)
!1161 = !DILocation(line: 149, column: 5, scope: !1158)
!1162 = !DILocation(line: 147, column: 67, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !162, line: 151, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1111, file: !162, line: 150, column: 5)
!1165 = !DILocation(line: 148, column: 37, scope: !1163)
!1166 = !DILocation(line: 147, column: 5, scope: !1163)
!1167 = !DILocation(line: 111, column: 7, scope: !1164)
!1168 = distinct !{!1168, !1104, !1169}
!1169 = !DILocation(line: 113, column: 3, scope: !1105)
!1170 = !DILocation(line: 115, column: 3, scope: !1105)
!1171 = !DILocation(line: 149, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1094, file: !162, line: 149, column: 7)
!1173 = !DILocation(line: 149, column: 7, scope: !1094)
!1174 = !DILocation(line: 150, column: 38, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !162, line: 151, column: 5)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !162, line: 150, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !162, line: 149, column: 16)
!1178 = !DILocation(line: 150, column: 5, scope: !1175)
!1179 = !DILocation(line: 154, column: 3, scope: !1177)
!1180 = !DILocation(line: 151, column: 3, scope: !1094)
!1181 = !DILocation(line: 153, column: 1, scope: !1073)
!1182 = distinct !DISubprogram(name: "stream_destroy", scope: !126, file: !126, line: 170, type: !1183, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !122}
!1185 = !DILocalVariable(name: "stream", arg: 1, scope: !1182, file: !126, line: 170, type: !122)
!1186 = !DILocation(line: 0, scope: !1182)
!1187 = !DILocation(line: 172, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !126, line: 176, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !126, line: 175, column: 3)
!1190 = distinct !DILexicalBlock(scope: !1182, file: !126, line: 174, column: 3)
!1191 = !DILocation(line: 172, column: 3, scope: !1188)
!1192 = !DILocation(line: 173, column: 3, scope: !1190)
!1193 = distinct !DISubprogram(name: "alac_set_info", scope: !93, file: !93, line: 98, type: !1194, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !89, !25}
!1196 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1193, file: !93, line: 98, type: !89)
!1197 = !DILocation(line: 0, scope: !1193)
!1198 = !DILocalVariable(name: "inputbuffer", arg: 2, scope: !1193, file: !93, line: 98, type: !25)
!1199 = !DILocalVariable(name: "ptr", scope: !1193, file: !93, line: 100, type: !25)
!1200 = !DILocation(line: 101, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !93, line: 102, column: 3)
!1202 = !DILocation(line: 102, column: 7, scope: !1201)
!1203 = !DILocation(line: 103, column: 7, scope: !1201)
!1204 = !DILocation(line: 104, column: 7, scope: !1201)
!1205 = !DILocation(line: 105, column: 7, scope: !1201)
!1206 = !DILocation(line: 107, column: 7, scope: !1201)
!1207 = !DILocation(line: 109, column: 45, scope: !1201)
!1208 = !DILocation(line: 109, column: 13, scope: !1201)
!1209 = !DILocation(line: 109, column: 43, scope: !1201)
!1210 = !DILocation(line: 110, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 110, column: 7)
!1212 = !DILocation(line: 110, column: 7, scope: !1201)
!1213 = !DILocation(line: 111, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !93, line: 112, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !93, line: 111, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !93, line: 110, column: 25)
!1217 = !DILocation(line: 111, column: 15, scope: !1214)
!1218 = !DILocation(line: 111, column: 63, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !93, line: 111, column: 15)
!1220 = !DILocation(line: 111, column: 93, scope: !1219)
!1221 = !DILocation(line: 111, column: 101, scope: !1219)
!1222 = !DILocation(line: 111, column: 122, scope: !1219)
!1223 = !DILocation(line: 111, column: 152, scope: !1219)
!1224 = !DILocation(line: 111, column: 162, scope: !1219)
!1225 = !DILocation(line: 111, column: 108, scope: !1219)
!1226 = !DILocation(line: 111, column: 183, scope: !1219)
!1227 = !DILocation(line: 111, column: 213, scope: !1219)
!1228 = !DILocation(line: 111, column: 226, scope: !1219)
!1229 = !DILocation(line: 111, column: 169, scope: !1219)
!1230 = !DILocation(line: 111, column: 247, scope: !1219)
!1231 = !DILocation(line: 111, column: 277, scope: !1219)
!1232 = !DILocation(line: 111, column: 292, scope: !1219)
!1233 = !DILocation(line: 111, column: 233, scope: !1219)
!1234 = !DILocation(line: 111, column: 17, scope: !1219)
!1235 = !DILocation(line: 111, column: 47, scope: !1219)
!1236 = !DILocation(line: 111, column: 7, scope: !1219)
!1237 = !DILocation(line: 114, column: 5, scope: !1214)
!1238 = !DILocation(line: 117, column: 3, scope: !1216)
!1239 = !DILocation(line: 112, column: 7, scope: !1201)
!1240 = !DILocation(line: 113, column: 26, scope: !1201)
!1241 = !DILocation(line: 113, column: 13, scope: !1201)
!1242 = !DILocation(line: 113, column: 24, scope: !1201)
!1243 = !DILocation(line: 114, column: 7, scope: !1201)
!1244 = !DILocation(line: 115, column: 35, scope: !1201)
!1245 = !DILocation(line: 115, column: 13, scope: !1201)
!1246 = !DILocation(line: 115, column: 33, scope: !1201)
!1247 = !DILocation(line: 116, column: 7, scope: !1201)
!1248 = !DILocation(line: 117, column: 40, scope: !1201)
!1249 = !DILocation(line: 117, column: 13, scope: !1201)
!1250 = !DILocation(line: 117, column: 38, scope: !1201)
!1251 = !DILocation(line: 118, column: 7, scope: !1201)
!1252 = !DILocation(line: 119, column: 43, scope: !1201)
!1253 = !DILocation(line: 119, column: 13, scope: !1201)
!1254 = !DILocation(line: 119, column: 41, scope: !1201)
!1255 = !DILocation(line: 120, column: 7, scope: !1201)
!1256 = !DILocation(line: 121, column: 38, scope: !1201)
!1257 = !DILocation(line: 121, column: 13, scope: !1201)
!1258 = !DILocation(line: 121, column: 36, scope: !1201)
!1259 = !DILocation(line: 122, column: 7, scope: !1201)
!1260 = !DILocation(line: 123, column: 26, scope: !1201)
!1261 = !DILocation(line: 123, column: 13, scope: !1201)
!1262 = !DILocation(line: 123, column: 24, scope: !1201)
!1263 = !DILocation(line: 124, column: 7, scope: !1201)
!1264 = !DILocation(line: 125, column: 26, scope: !1201)
!1265 = !DILocation(line: 125, column: 13, scope: !1201)
!1266 = !DILocation(line: 125, column: 24, scope: !1201)
!1267 = !DILocation(line: 126, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 126, column: 7)
!1269 = !DILocation(line: 126, column: 7, scope: !1201)
!1270 = !DILocation(line: 127, column: 5, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !93, line: 128, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !93, line: 127, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !93, line: 126, column: 25)
!1274 = !DILocation(line: 127, column: 15, scope: !1271)
!1275 = !DILocation(line: 127, column: 60, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 127, column: 15)
!1277 = !DILocation(line: 127, column: 44, scope: !1276)
!1278 = !DILocation(line: 127, column: 71, scope: !1276)
!1279 = !DILocation(line: 127, column: 78, scope: !1276)
!1280 = !DILocation(line: 127, column: 104, scope: !1276)
!1281 = !DILocation(line: 127, column: 88, scope: !1276)
!1282 = !DILocation(line: 127, column: 115, scope: !1276)
!1283 = !DILocation(line: 127, column: 124, scope: !1276)
!1284 = !DILocation(line: 127, column: 84, scope: !1276)
!1285 = !DILocation(line: 127, column: 30, scope: !1276)
!1286 = !DILocation(line: 127, column: 17, scope: !1276)
!1287 = !DILocation(line: 127, column: 28, scope: !1276)
!1288 = !DILocation(line: 127, column: 7, scope: !1276)
!1289 = !DILocation(line: 130, column: 5, scope: !1271)
!1290 = !DILocation(line: 133, column: 3, scope: !1273)
!1291 = !DILocation(line: 128, column: 7, scope: !1201)
!1292 = !DILocation(line: 129, column: 26, scope: !1201)
!1293 = !DILocation(line: 129, column: 13, scope: !1201)
!1294 = !DILocation(line: 129, column: 24, scope: !1201)
!1295 = !DILocation(line: 130, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 130, column: 7)
!1297 = !DILocation(line: 130, column: 7, scope: !1201)
!1298 = !DILocation(line: 131, column: 5, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !93, line: 132, column: 5)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !93, line: 131, column: 5)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !93, line: 130, column: 25)
!1302 = !DILocation(line: 131, column: 15, scope: !1299)
!1303 = !DILocation(line: 131, column: 44, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !93, line: 131, column: 15)
!1305 = !DILocation(line: 131, column: 55, scope: !1304)
!1306 = !DILocation(line: 131, column: 63, scope: !1304)
!1307 = !DILocation(line: 131, column: 84, scope: !1304)
!1308 = !DILocation(line: 131, column: 95, scope: !1304)
!1309 = !DILocation(line: 131, column: 105, scope: !1304)
!1310 = !DILocation(line: 131, column: 70, scope: !1304)
!1311 = !DILocation(line: 131, column: 126, scope: !1304)
!1312 = !DILocation(line: 131, column: 137, scope: !1304)
!1313 = !DILocation(line: 131, column: 150, scope: !1304)
!1314 = !DILocation(line: 131, column: 112, scope: !1304)
!1315 = !DILocation(line: 131, column: 171, scope: !1304)
!1316 = !DILocation(line: 131, column: 182, scope: !1304)
!1317 = !DILocation(line: 131, column: 197, scope: !1304)
!1318 = !DILocation(line: 131, column: 157, scope: !1304)
!1319 = !DILocation(line: 131, column: 17, scope: !1304)
!1320 = !DILocation(line: 131, column: 28, scope: !1304)
!1321 = !DILocation(line: 131, column: 7, scope: !1304)
!1322 = !DILocation(line: 134, column: 5, scope: !1299)
!1323 = !DILocation(line: 137, column: 3, scope: !1301)
!1324 = !DILocation(line: 132, column: 7, scope: !1201)
!1325 = !DILocation(line: 133, column: 26, scope: !1201)
!1326 = !DILocation(line: 133, column: 13, scope: !1201)
!1327 = !DILocation(line: 133, column: 24, scope: !1201)
!1328 = !DILocation(line: 134, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 134, column: 7)
!1330 = !DILocation(line: 134, column: 7, scope: !1201)
!1331 = !DILocation(line: 135, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !93, line: 136, column: 5)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !93, line: 135, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !93, line: 134, column: 25)
!1335 = !DILocation(line: 135, column: 15, scope: !1332)
!1336 = !DILocation(line: 135, column: 44, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !93, line: 135, column: 15)
!1338 = !DILocation(line: 135, column: 55, scope: !1337)
!1339 = !DILocation(line: 135, column: 63, scope: !1337)
!1340 = !DILocation(line: 135, column: 84, scope: !1337)
!1341 = !DILocation(line: 135, column: 95, scope: !1337)
!1342 = !DILocation(line: 135, column: 105, scope: !1337)
!1343 = !DILocation(line: 135, column: 70, scope: !1337)
!1344 = !DILocation(line: 135, column: 126, scope: !1337)
!1345 = !DILocation(line: 135, column: 137, scope: !1337)
!1346 = !DILocation(line: 135, column: 150, scope: !1337)
!1347 = !DILocation(line: 135, column: 112, scope: !1337)
!1348 = !DILocation(line: 135, column: 171, scope: !1337)
!1349 = !DILocation(line: 135, column: 182, scope: !1337)
!1350 = !DILocation(line: 135, column: 197, scope: !1337)
!1351 = !DILocation(line: 135, column: 157, scope: !1337)
!1352 = !DILocation(line: 135, column: 17, scope: !1337)
!1353 = !DILocation(line: 135, column: 28, scope: !1337)
!1354 = !DILocation(line: 135, column: 7, scope: !1337)
!1355 = !DILocation(line: 138, column: 5, scope: !1332)
!1356 = !DILocation(line: 141, column: 3, scope: !1334)
!1357 = !DILocation(line: 136, column: 7, scope: !1201)
!1358 = !DILocation(line: 137, column: 31, scope: !1201)
!1359 = !DILocation(line: 137, column: 13, scope: !1201)
!1360 = !DILocation(line: 137, column: 29, scope: !1201)
!1361 = !DILocation(line: 138, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 138, column: 7)
!1363 = !DILocation(line: 138, column: 7, scope: !1201)
!1364 = !DILocation(line: 139, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !93, line: 140, column: 5)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !93, line: 139, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 138, column: 25)
!1368 = !DILocation(line: 139, column: 15, scope: !1365)
!1369 = !DILocation(line: 139, column: 49, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !93, line: 139, column: 15)
!1371 = !DILocation(line: 139, column: 65, scope: !1370)
!1372 = !DILocation(line: 139, column: 73, scope: !1370)
!1373 = !DILocation(line: 139, column: 94, scope: !1370)
!1374 = !DILocation(line: 139, column: 110, scope: !1370)
!1375 = !DILocation(line: 139, column: 120, scope: !1370)
!1376 = !DILocation(line: 139, column: 80, scope: !1370)
!1377 = !DILocation(line: 139, column: 141, scope: !1370)
!1378 = !DILocation(line: 139, column: 157, scope: !1370)
!1379 = !DILocation(line: 139, column: 170, scope: !1370)
!1380 = !DILocation(line: 139, column: 127, scope: !1370)
!1381 = !DILocation(line: 139, column: 191, scope: !1370)
!1382 = !DILocation(line: 139, column: 207, scope: !1370)
!1383 = !DILocation(line: 139, column: 222, scope: !1370)
!1384 = !DILocation(line: 139, column: 177, scope: !1370)
!1385 = !DILocation(line: 139, column: 17, scope: !1370)
!1386 = !DILocation(line: 139, column: 33, scope: !1370)
!1387 = !DILocation(line: 139, column: 7, scope: !1370)
!1388 = !DILocation(line: 142, column: 5, scope: !1365)
!1389 = !DILocation(line: 145, column: 3, scope: !1367)
!1390 = !DILocation(line: 140, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1201, file: !93, line: 146, column: 3)
!1392 = !DILocation(line: 142, column: 3, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !93, line: 141, column: 3)
!1394 = !DILocation(line: 144, column: 3, scope: !1201)
!1395 = distinct !DISubprogram(name: "allocate_buffers", scope: !93, file: !93, line: 89, type: !1396, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !89}
!1398 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1395, file: !93, line: 89, type: !89)
!1399 = !DILocation(line: 0, scope: !1395)
!1400 = !DILocation(line: 91, column: 26, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 98, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !93, line: 97, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !93, line: 96, column: 3)
!1404 = !DILocation(line: 91, column: 56, scope: !1401)
!1405 = !DILocation(line: 91, column: 9, scope: !1401)
!1406 = !DILocalVariable(name: "tmp", scope: !1395, file: !93, line: 91, type: !14)
!1407 = !DILocation(line: 91, column: 37, scope: !1402)
!1408 = !DILocation(line: 91, column: 13, scope: !1402)
!1409 = !DILocation(line: 91, column: 35, scope: !1402)
!1410 = !DILocation(line: 92, column: 30, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 92, column: 3)
!1412 = !DILocation(line: 92, column: 60, scope: !1411)
!1413 = !DILocation(line: 92, column: 13, scope: !1411)
!1414 = !DILocalVariable(name: "tmp___0", scope: !1395, file: !93, line: 92, type: !14)
!1415 = !DILocation(line: 92, column: 37, scope: !1402)
!1416 = !DILocation(line: 92, column: 13, scope: !1402)
!1417 = !DILocation(line: 92, column: 35, scope: !1402)
!1418 = !DILocation(line: 94, column: 30, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 93, column: 3)
!1420 = !DILocation(line: 94, column: 60, scope: !1419)
!1421 = !DILocation(line: 94, column: 13, scope: !1419)
!1422 = !DILocalVariable(name: "tmp___1", scope: !1395, file: !93, line: 93, type: !14)
!1423 = !DILocation(line: 94, column: 38, scope: !1402)
!1424 = !DILocation(line: 94, column: 13, scope: !1402)
!1425 = !DILocation(line: 94, column: 36, scope: !1402)
!1426 = !DILocation(line: 95, column: 30, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 95, column: 3)
!1428 = !DILocation(line: 95, column: 60, scope: !1427)
!1429 = !DILocation(line: 95, column: 13, scope: !1427)
!1430 = !DILocalVariable(name: "tmp___2", scope: !1395, file: !93, line: 94, type: !14)
!1431 = !DILocation(line: 95, column: 38, scope: !1402)
!1432 = !DILocation(line: 95, column: 13, scope: !1402)
!1433 = !DILocation(line: 95, column: 36, scope: !1402)
!1434 = !DILocation(line: 96, column: 3, scope: !1403)
!1435 = distinct !DISubprogram(name: "basterdised_rice_decompress", scope: !93, file: !93, line: 324, type: !1436, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !89, !101, !13, !13, !13, !13, !13, !13}
!1438 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1435, file: !93, line: 324, type: !89)
!1439 = !DILocation(line: 0, scope: !1435)
!1440 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1435, file: !93, line: 324, type: !101)
!1441 = !DILocalVariable(name: "output_size", arg: 3, scope: !1435, file: !93, line: 324, type: !13)
!1442 = !DILocalVariable(name: "readsamplesize", arg: 4, scope: !1435, file: !93, line: 325, type: !13)
!1443 = !DILocalVariable(name: "rice_initialhistory", arg: 5, scope: !1435, file: !93, line: 325, type: !13)
!1444 = !DILocalVariable(name: "rice_kmodifier", arg: 6, scope: !1435, file: !93, line: 325, type: !13)
!1445 = !DILocalVariable(name: "rice_historymult", arg: 7, scope: !1435, file: !93, line: 326, type: !13)
!1446 = !DILocalVariable(name: "rice_kmodifier_mask", arg: 8, scope: !1435, file: !93, line: 326, type: !13)
!1447 = !DILocalVariable(name: "history", scope: !1435, file: !93, line: 329, type: !8)
!1448 = !DILocalVariable(name: "sign_modifier", scope: !1435, file: !93, line: 330, type: !13)
!1449 = !DILocalVariable(name: "output_count", scope: !1435, file: !93, line: 328, type: !13)
!1450 = !DILocation(line: 338, column: 3, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !93, line: 340, column: 3)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 339, column: 3)
!1453 = distinct !DILexicalBlock(scope: !1435, file: !93, line: 349, column: 3)
!1454 = !DILocation(line: 0, scope: !1453)
!1455 = !DILocation(line: 338, column: 13, scope: !1451)
!1456 = !DILocation(line: 338, column: 25, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 338, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1451, file: !93, line: 338, column: 13)
!1459 = !DILocation(line: 338, column: 9, scope: !1458)
!1460 = !DILocation(line: 338, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !93, line: 338, column: 41)
!1462 = !DILocalVariable(name: "x", scope: !1435, file: !93, line: 331, type: !78)
!1463 = !DILocation(line: 345, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !93, line: 342, column: 5)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 341, column: 5)
!1466 = !DILocation(line: 0, scope: !1458)
!1467 = !DILocation(line: 345, column: 15, scope: !1464)
!1468 = !DILocation(line: 345, column: 13, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !93, line: 345, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !93, line: 345, column: 15)
!1471 = !DILocation(line: 345, column: 11, scope: !1470)
!1472 = !DILocation(line: 345, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !93, line: 347, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !93, line: 346, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1469, file: !93, line: 345, column: 19)
!1476 = !DILocalVariable(name: "tmp", scope: !1435, file: !93, line: 334, type: !13)
!1477 = !DILocation(line: 345, column: 15, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !93, line: 345, column: 13)
!1479 = !DILocation(line: 345, column: 13, scope: !1475)
!1480 = !DILocation(line: 345, column: 11, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !93, line: 345, column: 20)
!1482 = !DILocation(line: 347, column: 7, scope: !1475)
!1483 = !DILocation(line: 345, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1469, file: !93, line: 347, column: 14)
!1485 = !DILocation(line: 347, column: 9, scope: !1470)
!1486 = distinct !{!1486, !1463, !1487}
!1487 = !DILocation(line: 348, column: 5, scope: !1464)
!1488 = !DILocation(line: 350, column: 5, scope: !1464)
!1489 = !DILocation(line: 351, column: 11, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 351, column: 9)
!1491 = !DILocation(line: 351, column: 9, scope: !1458)
!1492 = !DILocation(line: 355, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !93, line: 353, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !93, line: 352, column: 7)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !93, line: 351, column: 16)
!1496 = !DILocalVariable(name: "tmp___0", scope: !1435, file: !93, line: 336, type: !6)
!1497 = !DILocalVariable(name: "value", scope: !1435, file: !93, line: 335, type: !78)
!1498 = !DILocation(line: 358, column: 26, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !93, line: 358, column: 11)
!1500 = !DILocation(line: 358, column: 11, scope: !1495)
!1501 = !DILocation(line: 359, column: 71, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !93, line: 358, column: 33)
!1503 = !DILocation(line: 359, column: 64, scope: !1502)
!1504 = !DILocation(line: 359, column: 49, scope: !1502)
!1505 = !DILocation(line: 360, column: 7, scope: !1502)
!1506 = !DILocation(line: 0, scope: !1495)
!1507 = !DILocation(line: 362, column: 5, scope: !1495)
!1508 = !DILocation(line: 369, column: 53, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !93, line: 364, column: 7)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !93, line: 363, column: 7)
!1511 = distinct !DILexicalBlock(scope: !1490, file: !93, line: 362, column: 12)
!1512 = !DILocation(line: 369, column: 59, scope: !1509)
!1513 = !DILocation(line: 369, column: 17, scope: !1509)
!1514 = !DILocalVariable(name: "tmp___1", scope: !1435, file: !93, line: 339, type: !13)
!1515 = !DILocation(line: 369, column: 15, scope: !1510)
!1516 = !DILocation(line: 369, column: 33, scope: !1510)
!1517 = !DILocalVariable(name: "k", scope: !1435, file: !93, line: 338, type: !13)
!1518 = !DILocation(line: 371, column: 13, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !93, line: 371, column: 11)
!1520 = !DILocation(line: 371, column: 11, scope: !1511)
!1521 = !DILocation(line: 371, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !93, line: 371, column: 18)
!1523 = !DILocation(line: 372, column: 7, scope: !1522)
!1524 = !DILocation(line: 0, scope: !1519)
!1525 = !DILocation(line: 374, column: 13, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1511, file: !93, line: 374, column: 11)
!1527 = !DILocation(line: 374, column: 11, scope: !1511)
!1528 = !DILocation(line: 376, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 376, column: 9)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !93, line: 375, column: 9)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !93, line: 374, column: 19)
!1532 = !DILocalVariable(name: "tmp___2", scope: !1435, file: !93, line: 340, type: !6)
!1533 = !DILocalVariable(name: "extrabits", scope: !1435, file: !93, line: 337, type: !13)
!1534 = !DILocation(line: 379, column: 16, scope: !1530)
!1535 = !DILocation(line: 379, column: 22, scope: !1530)
!1536 = !DILocation(line: 381, column: 23, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !93, line: 381, column: 13)
!1538 = !DILocation(line: 381, column: 13, scope: !1531)
!1539 = !DILocation(line: 383, column: 26, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !93, line: 381, column: 28)
!1541 = !DILocation(line: 383, column: 13, scope: !1540)
!1542 = !DILocation(line: 384, column: 9, scope: !1540)
!1543 = !DILocation(line: 385, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !93, line: 386, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !93, line: 385, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1537, file: !93, line: 384, column: 16)
!1547 = !DILocation(line: 0, scope: !1531)
!1548 = !DILocation(line: 389, column: 7, scope: !1531)
!1549 = !DILocation(line: 0, scope: !1490)
!1550 = !DILocation(line: 389, column: 32, scope: !1458)
!1551 = !DILocalVariable(name: "x_modified", scope: !1435, file: !93, line: 332, type: !78)
!1552 = !DILocation(line: 390, column: 29, scope: !1458)
!1553 = !DILocation(line: 390, column: 34, scope: !1458)
!1554 = !DILocalVariable(name: "final_val", scope: !1435, file: !93, line: 333, type: !78)
!1555 = !DILocation(line: 391, column: 20, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 391, column: 9)
!1557 = !DILocation(line: 391, column: 9, scope: !1458)
!1558 = !DILocation(line: 391, column: 17, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !93, line: 391, column: 25)
!1560 = !DILocation(line: 392, column: 5, scope: !1559)
!1561 = !DILocation(line: 393, column: 21, scope: !1458)
!1562 = !DILocation(line: 393, column: 37, scope: !1458)
!1563 = !DILocation(line: 398, column: 43, scope: !1458)
!1564 = !DILocation(line: 398, column: 74, scope: !1458)
!1565 = !DILocation(line: 398, column: 108, scope: !1458)
!1566 = !DILocation(line: 398, column: 63, scope: !1458)
!1567 = !DILocation(line: 398, column: 13, scope: !1458)
!1568 = !DILocation(line: 401, column: 20, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 401, column: 9)
!1570 = !DILocation(line: 401, column: 9, scope: !1458)
!1571 = !DILocation(line: 403, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !93, line: 401, column: 29)
!1573 = !DILocation(line: 405, column: 17, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 405, column: 9)
!1575 = !DILocation(line: 405, column: 9, scope: !1458)
!1576 = !DILocation(line: 405, column: 24, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !93, line: 405, column: 11)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !93, line: 405, column: 25)
!1579 = !DILocation(line: 405, column: 28, scope: !1577)
!1580 = !DILocation(line: 405, column: 11, scope: !1578)
!1581 = !DILocation(line: 412, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !93, line: 413, column: 9)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !93, line: 412, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1577, file: !93, line: 405, column: 43)
!1585 = !DILocation(line: 0, scope: !1584)
!1586 = !DILocation(line: 412, column: 19, scope: !1582)
!1587 = !DILocation(line: 412, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !93, line: 412, column: 15)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !93, line: 412, column: 19)
!1590 = !DILocation(line: 412, column: 15, scope: !1589)
!1591 = !DILocation(line: 412, column: 23, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !93, line: 414, column: 13)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !93, line: 413, column: 13)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !93, line: 412, column: 23)
!1595 = !DILocalVariable(name: "tmp___3", scope: !1435, file: !93, line: 342, type: !13)
!1596 = !DILocation(line: 412, column: 19, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !93, line: 412, column: 17)
!1598 = !DILocation(line: 412, column: 17, scope: !1594)
!1599 = !DILocation(line: 412, column: 15, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !93, line: 412, column: 28)
!1601 = !DILocation(line: 414, column: 11, scope: !1594)
!1602 = !DILocation(line: 412, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1588, file: !93, line: 414, column: 18)
!1604 = !DILocation(line: 414, column: 13, scope: !1589)
!1605 = distinct !{!1605, !1581, !1606}
!1606 = !DILocation(line: 415, column: 9, scope: !1582)
!1607 = !DILocation(line: 417, column: 9, scope: !1582)
!1608 = !DILocation(line: 417, column: 15, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1584, file: !93, line: 417, column: 13)
!1610 = !DILocation(line: 417, column: 13, scope: !1584)
!1611 = !DILocation(line: 419, column: 21, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !93, line: 419, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !93, line: 418, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !93, line: 417, column: 20)
!1615 = !DILocalVariable(name: "tmp___4", scope: !1435, file: !93, line: 343, type: !6)
!1616 = !DILocalVariable(name: "block_size", scope: !1435, file: !93, line: 341, type: !13)
!1617 = !DILocation(line: 420, column: 22, scope: !1613)
!1618 = !DILocation(line: 422, column: 9, scope: !1614)
!1619 = !DILocation(line: 427, column: 21, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !93, line: 424, column: 11)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !93, line: 423, column: 11)
!1622 = distinct !DILexicalBlock(scope: !1609, file: !93, line: 422, column: 16)
!1623 = !DILocalVariable(name: "tmp___5", scope: !1435, file: !93, line: 346, type: !13)
!1624 = !DILocation(line: 427, column: 62, scope: !1621)
!1625 = !DILocation(line: 427, column: 69, scope: !1621)
!1626 = !DILocation(line: 427, column: 50, scope: !1621)
!1627 = !DILocation(line: 427, column: 76, scope: !1621)
!1628 = !DILocalVariable(name: "k___0", scope: !1435, file: !93, line: 344, type: !13)
!1629 = !DILocation(line: 429, column: 21, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1621, file: !93, line: 428, column: 11)
!1631 = !DILocalVariable(name: "tmp___6", scope: !1435, file: !93, line: 347, type: !6)
!1632 = !DILocalVariable(name: "extrabits___0", scope: !1435, file: !93, line: 345, type: !13)
!1633 = !DILocation(line: 431, column: 30, scope: !1621)
!1634 = !DILocation(line: 431, column: 40, scope: !1621)
!1635 = !DILocation(line: 431, column: 45, scope: !1621)
!1636 = !DILocation(line: 431, column: 68, scope: !1621)
!1637 = !DILocation(line: 431, column: 72, scope: !1621)
!1638 = !DILocation(line: 431, column: 89, scope: !1621)
!1639 = !DILocation(line: 434, column: 29, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1622, file: !93, line: 434, column: 15)
!1641 = !DILocation(line: 434, column: 15, scope: !1622)
!1642 = !DILocation(line: 436, column: 19, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !93, line: 435, column: 13)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !93, line: 434, column: 34)
!1645 = !DILocation(line: 437, column: 24, scope: !1643)
!1646 = !DILocation(line: 438, column: 13, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !93, line: 438, column: 13)
!1648 = !DILocation(line: 441, column: 11, scope: !1644)
!1649 = !DILocation(line: 0, scope: !1622)
!1650 = !DILocation(line: 0, scope: !1609)
!1651 = !DILocation(line: 442, column: 24, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1584, file: !93, line: 442, column: 13)
!1653 = !DILocation(line: 442, column: 13, scope: !1584)
!1654 = !DILocation(line: 444, column: 57, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !93, line: 444, column: 11)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !93, line: 443, column: 11)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !93, line: 442, column: 29)
!1658 = !DILocation(line: 444, column: 41, scope: !1655)
!1659 = !DILocation(line: 444, column: 18, scope: !1655)
!1660 = !DILocation(line: 444, column: 88, scope: !1655)
!1661 = !DILocation(line: 444, column: 11, scope: !1655)
!1662 = !DILocation(line: 445, column: 24, scope: !1656)
!1663 = !DILocation(line: 447, column: 9, scope: !1657)
!1664 = !DILocation(line: 449, column: 24, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1584, file: !93, line: 449, column: 13)
!1666 = !DILocation(line: 449, column: 13, scope: !1584)
!1667 = !DILocation(line: 451, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !93, line: 449, column: 33)
!1669 = !DILocation(line: 453, column: 7, scope: !1584)
!1670 = !DILocation(line: 454, column: 5, scope: !1578)
!1671 = !DILocation(line: 338, column: 18, scope: !1458)
!1672 = distinct !{!1672, !1450, !1673}
!1673 = !DILocation(line: 339, column: 3, scope: !1451)
!1674 = !DILocation(line: 341, column: 3, scope: !1451)
!1675 = !DILocation(line: 455, column: 3, scope: !1453)
!1676 = distinct !DISubprogram(name: "readbit", scope: !93, file: !93, line: 197, type: !1677, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!13, !89}
!1679 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1676, file: !93, line: 197, type: !89)
!1680 = !DILocation(line: 0, scope: !1676)
!1681 = !DILocation(line: 202, column: 30, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !93, line: 202, column: 3)
!1683 = !DILocation(line: 202, column: 43, scope: !1682)
!1684 = !DILocation(line: 202, column: 18, scope: !1682)
!1685 = !DILocation(line: 202, column: 12, scope: !1682)
!1686 = !DILocalVariable(name: "result", scope: !1676, file: !93, line: 199, type: !13)
!1687 = !DILocation(line: 204, column: 24, scope: !1682)
!1688 = !DILocation(line: 204, column: 10, scope: !1682)
!1689 = !DILocation(line: 206, column: 20, scope: !1682)
!1690 = !DILocation(line: 206, column: 26, scope: !1682)
!1691 = !DILocation(line: 208, column: 31, scope: !1682)
!1692 = !DILocation(line: 208, column: 59, scope: !1682)
!1693 = !DILocalVariable(name: "new_accumulator", scope: !1676, file: !93, line: 200, type: !13)
!1694 = !DILocation(line: 210, column: 45, scope: !1682)
!1695 = !DILocation(line: 210, column: 13, scope: !1682)
!1696 = !DILocation(line: 210, column: 26, scope: !1682)
!1697 = !DILocation(line: 212, column: 59, scope: !1682)
!1698 = !DILocation(line: 212, column: 13, scope: !1682)
!1699 = !DILocation(line: 212, column: 41, scope: !1682)
!1700 = !DILocation(line: 214, column: 3, scope: !1682)
!1701 = distinct !DISubprogram(name: "readbits", scope: !93, file: !93, line: 181, type: !1702, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!6, !89, !13}
!1704 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1701, file: !93, line: 181, type: !89)
!1705 = !DILocation(line: 0, scope: !1701)
!1706 = !DILocalVariable(name: "bits", arg: 2, scope: !1701, file: !93, line: 181, type: !13)
!1707 = !DILocalVariable(name: "result", scope: !1701, file: !93, line: 183, type: !78)
!1708 = !DILocation(line: 185, column: 12, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !93, line: 185, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1701, file: !93, line: 187, column: 3)
!1711 = !DILocation(line: 185, column: 7, scope: !1710)
!1712 = !DILocation(line: 187, column: 10, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 186, column: 5)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !93, line: 185, column: 18)
!1715 = !DILocation(line: 188, column: 11, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !93, line: 188, column: 5)
!1717 = !DILocalVariable(name: "tmp", scope: !1701, file: !93, line: 184, type: !6)
!1718 = !DILocation(line: 188, column: 29, scope: !1713)
!1719 = !DILocation(line: 190, column: 3, scope: !1714)
!1720 = !DILocation(line: 0, scope: !1710)
!1721 = !DILocation(line: 191, column: 13, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !93, line: 192, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1710, file: !93, line: 191, column: 3)
!1724 = !DILocalVariable(name: "tmp___0", scope: !1701, file: !93, line: 185, type: !6)
!1725 = !DILocation(line: 191, column: 45, scope: !1723)
!1726 = !DILocation(line: 193, column: 3, scope: !1710)
!1727 = distinct !DISubprogram(name: "count_leading_zeros", scope: !93, file: !93, line: 253, type: !1728, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!13, !13}
!1730 = !DILocalVariable(name: "input", arg: 1, scope: !1727, file: !93, line: 253, type: !13)
!1731 = !DILocation(line: 0, scope: !1727)
!1732 = !DILocalVariable(name: "output", scope: !1727, file: !93, line: 255, type: !13)
!1733 = !DILocation(line: 256, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !93, line: 256, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1727, file: !93, line: 257, column: 3)
!1736 = !DILocation(line: 256, column: 7, scope: !1735)
!1737 = !DILocation(line: 256, column: 5, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !93, line: 256, column: 16)
!1739 = !DILocation(line: 257, column: 3, scope: !1735)
!1740 = !{i32 32573}
!1741 = !DILocation(line: 260, column: 14, scope: !1735)
!1742 = !DILocation(line: 260, column: 3, scope: !1735)
!1743 = !DILocation(line: 0, scope: !1735)
!1744 = !DILocation(line: 262, column: 1, scope: !1727)
!1745 = distinct !DISubprogram(name: "unreadbits", scope: !93, file: !93, line: 217, type: !1746, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !89, !13}
!1748 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1745, file: !93, line: 217, type: !89)
!1749 = !DILocation(line: 0, scope: !1745)
!1750 = !DILocalVariable(name: "bits", arg: 2, scope: !1745, file: !93, line: 217, type: !13)
!1751 = !DILocation(line: 219, column: 31, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !93, line: 221, column: 3)
!1753 = !DILocation(line: 219, column: 59, scope: !1752)
!1754 = !DILocalVariable(name: "new_accumulator", scope: !1745, file: !93, line: 219, type: !13)
!1755 = !DILocation(line: 221, column: 45, scope: !1752)
!1756 = !DILocation(line: 221, column: 13, scope: !1752)
!1757 = !DILocation(line: 221, column: 26, scope: !1752)
!1758 = !DILocation(line: 223, column: 59, scope: !1752)
!1759 = !DILocation(line: 223, column: 13, scope: !1752)
!1760 = !DILocation(line: 223, column: 41, scope: !1752)
!1761 = !DILocation(line: 224, column: 17, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !93, line: 224, column: 7)
!1763 = !DILocation(line: 224, column: 45, scope: !1762)
!1764 = !DILocation(line: 224, column: 7, scope: !1752)
!1765 = !DILocation(line: 225, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !93, line: 224, column: 50)
!1767 = !DILocation(line: 225, column: 43, scope: !1766)
!1768 = !DILocation(line: 226, column: 3, scope: !1766)
!1769 = !DILocation(line: 226, column: 3, scope: !1752)
!1770 = distinct !DISubprogram(name: "deinterlace_16", scope: !93, file: !93, line: 604, type: !1771, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !101, !101, !88, !13, !13, !84, !84}
!1773 = !DILocalVariable(name: "buffer_a", arg: 1, scope: !1770, file: !93, line: 604, type: !101)
!1774 = !DILocation(line: 0, scope: !1770)
!1775 = !DILocalVariable(name: "buffer_b", arg: 2, scope: !1770, file: !93, line: 604, type: !101)
!1776 = !DILocalVariable(name: "buffer_out", arg: 3, scope: !1770, file: !93, line: 604, type: !88)
!1777 = !DILocalVariable(name: "numchannels", arg: 4, scope: !1770, file: !93, line: 605, type: !13)
!1778 = !DILocalVariable(name: "numsamples", arg: 5, scope: !1770, file: !93, line: 605, type: !13)
!1779 = !DILocalVariable(name: "interlacing_shift", arg: 6, scope: !1770, file: !93, line: 605, type: !84)
!1780 = !DILocalVariable(name: "interlacing_leftweight", arg: 7, scope: !1770, file: !93, line: 606, type: !84)
!1781 = !DILocation(line: 611, column: 18, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !93, line: 611, column: 7)
!1783 = distinct !DILexicalBlock(scope: !1770, file: !93, line: 616, column: 3)
!1784 = !DILocation(line: 611, column: 7, scope: !1783)
!1785 = !DILocation(line: 611, column: 5, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !93, line: 611, column: 24)
!1787 = !DILocation(line: 614, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !93, line: 614, column: 7)
!1789 = !DILocation(line: 614, column: 7, scope: !1783)
!1790 = !DILocalVariable(name: "i", scope: !1770, file: !93, line: 608, type: !13)
!1791 = !DILocation(line: 616, column: 5, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !93, line: 618, column: 5)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !93, line: 617, column: 5)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !93, line: 614, column: 31)
!1795 = !DILocation(line: 0, scope: !1794)
!1796 = !DILocation(line: 616, column: 15, scope: !1792)
!1797 = !DILocation(line: 616, column: 16, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !93, line: 616, column: 11)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !93, line: 616, column: 15)
!1800 = !DILocation(line: 616, column: 11, scope: !1799)
!1801 = !DILocation(line: 616, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !93, line: 616, column: 31)
!1803 = !DILocation(line: 622, column: 29, scope: !1799)
!1804 = !DILocation(line: 622, column: 18, scope: !1799)
!1805 = !DILocalVariable(name: "midright", scope: !1770, file: !93, line: 610, type: !78)
!1806 = !DILocation(line: 623, column: 31, scope: !1799)
!1807 = !DILocation(line: 623, column: 20, scope: !1799)
!1808 = !DILocalVariable(name: "difference", scope: !1770, file: !93, line: 609, type: !78)
!1809 = !DILocation(line: 626, column: 51, scope: !1799)
!1810 = !DILocation(line: 626, column: 49, scope: !1799)
!1811 = !DILocation(line: 626, column: 87, scope: !1799)
!1812 = !DILocation(line: 626, column: 84, scope: !1799)
!1813 = !DILocation(line: 626, column: 35, scope: !1799)
!1814 = !DILocation(line: 626, column: 15, scope: !1799)
!1815 = !DILocalVariable(name: "right", scope: !1770, file: !93, line: 612, type: !86)
!1816 = !DILocation(line: 627, column: 25, scope: !1799)
!1817 = !DILocation(line: 627, column: 37, scope: !1799)
!1818 = !DILocation(line: 627, column: 14, scope: !1799)
!1819 = !DILocalVariable(name: "left", scope: !1770, file: !93, line: 611, type: !86)
!1820 = !DILocation(line: 630, column: 11, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1799, file: !93, line: 630, column: 11)
!1822 = !DILocation(line: 630, column: 11, scope: !1799)
!1823 = !DILocation(line: 632, column: 9, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !93, line: 632, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !93, line: 631, column: 9)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !93, line: 630, column: 27)
!1827 = !DILocation(line: 632, column: 19, scope: !1824)
!1828 = !DILocation(line: 632, column: 31, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !93, line: 632, column: 19)
!1830 = !DILocation(line: 632, column: 42, scope: !1829)
!1831 = !DILocation(line: 632, column: 49, scope: !1829)
!1832 = !DILocation(line: 632, column: 59, scope: !1829)
!1833 = !DILocation(line: 632, column: 70, scope: !1829)
!1834 = !DILocation(line: 632, column: 79, scope: !1829)
!1835 = !DILocation(line: 632, column: 55, scope: !1829)
!1836 = !DILocation(line: 632, column: 18, scope: !1829)
!1837 = !DILocation(line: 632, column: 11, scope: !1829)
!1838 = !DILocation(line: 635, column: 9, scope: !1824)
!1839 = !DILocation(line: 633, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !93, line: 639, column: 9)
!1841 = distinct !DILexicalBlock(scope: !1826, file: !93, line: 638, column: 9)
!1842 = !DILocation(line: 633, column: 19, scope: !1840)
!1843 = !DILocation(line: 633, column: 32, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !93, line: 633, column: 19)
!1845 = !DILocation(line: 633, column: 44, scope: !1844)
!1846 = !DILocation(line: 633, column: 51, scope: !1844)
!1847 = !DILocation(line: 633, column: 61, scope: !1844)
!1848 = !DILocation(line: 633, column: 73, scope: !1844)
!1849 = !DILocation(line: 633, column: 82, scope: !1844)
!1850 = !DILocation(line: 633, column: 57, scope: !1844)
!1851 = !DILocation(line: 633, column: 19, scope: !1844)
!1852 = !DILocation(line: 633, column: 11, scope: !1844)
!1853 = !DILocation(line: 636, column: 9, scope: !1840)
!1854 = !DILocation(line: 639, column: 7, scope: !1826)
!1855 = !DILocation(line: 0, scope: !1799)
!1856 = !DILocation(line: 636, column: 24, scope: !1799)
!1857 = !DILocation(line: 636, column: 20, scope: !1799)
!1858 = !DILocation(line: 636, column: 39, scope: !1799)
!1859 = !DILocation(line: 637, column: 25, scope: !1799)
!1860 = !DILocation(line: 637, column: 39, scope: !1799)
!1861 = !DILocation(line: 637, column: 20, scope: !1799)
!1862 = !DILocation(line: 637, column: 45, scope: !1799)
!1863 = !DILocation(line: 616, column: 9, scope: !1799)
!1864 = distinct !{!1864, !1791, !1865}
!1865 = !DILocation(line: 617, column: 5, scope: !1792)
!1866 = !DILocation(line: 619, column: 5, scope: !1792)
!1867 = !DILocation(line: 640, column: 5, scope: !1794)
!1868 = !DILocation(line: 644, column: 3, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !93, line: 646, column: 3)
!1870 = distinct !DILexicalBlock(scope: !1783, file: !93, line: 645, column: 3)
!1871 = !DILocation(line: 0, scope: !1783)
!1872 = !DILocation(line: 644, column: 13, scope: !1869)
!1873 = !DILocation(line: 644, column: 14, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !93, line: 644, column: 9)
!1875 = distinct !DILexicalBlock(scope: !1869, file: !93, line: 644, column: 13)
!1876 = !DILocation(line: 644, column: 9, scope: !1875)
!1877 = !DILocation(line: 644, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !93, line: 644, column: 29)
!1879 = !DILocation(line: 648, column: 37, scope: !1875)
!1880 = !DILocation(line: 648, column: 26, scope: !1875)
!1881 = !DILocation(line: 648, column: 16, scope: !1875)
!1882 = !DILocalVariable(name: "left___0", scope: !1770, file: !93, line: 613, type: !86)
!1883 = !DILocation(line: 649, column: 38, scope: !1875)
!1884 = !DILocation(line: 649, column: 27, scope: !1875)
!1885 = !DILocation(line: 649, column: 17, scope: !1875)
!1886 = !DILocalVariable(name: "right___0", scope: !1770, file: !93, line: 614, type: !86)
!1887 = !DILocation(line: 652, column: 9, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1875, file: !93, line: 652, column: 9)
!1889 = !DILocation(line: 652, column: 9, scope: !1875)
!1890 = !DILocation(line: 654, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !93, line: 654, column: 7)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !93, line: 653, column: 7)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !93, line: 652, column: 25)
!1894 = !DILocation(line: 654, column: 17, scope: !1891)
!1895 = !DILocation(line: 654, column: 33, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !93, line: 654, column: 17)
!1897 = !DILocation(line: 654, column: 48, scope: !1896)
!1898 = !DILocation(line: 654, column: 55, scope: !1896)
!1899 = !DILocation(line: 654, column: 65, scope: !1896)
!1900 = !DILocation(line: 654, column: 80, scope: !1896)
!1901 = !DILocation(line: 654, column: 89, scope: !1896)
!1902 = !DILocation(line: 654, column: 61, scope: !1896)
!1903 = !DILocation(line: 654, column: 20, scope: !1896)
!1904 = !DILocation(line: 654, column: 9, scope: !1896)
!1905 = !DILocation(line: 657, column: 7, scope: !1891)
!1906 = !DILocation(line: 655, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !93, line: 661, column: 7)
!1908 = distinct !DILexicalBlock(scope: !1893, file: !93, line: 660, column: 7)
!1909 = !DILocation(line: 655, column: 17, scope: !1907)
!1910 = !DILocation(line: 655, column: 34, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !93, line: 655, column: 17)
!1912 = !DILocation(line: 655, column: 50, scope: !1911)
!1913 = !DILocation(line: 655, column: 57, scope: !1911)
!1914 = !DILocation(line: 655, column: 67, scope: !1911)
!1915 = !DILocation(line: 655, column: 83, scope: !1911)
!1916 = !DILocation(line: 655, column: 92, scope: !1911)
!1917 = !DILocation(line: 655, column: 63, scope: !1911)
!1918 = !DILocation(line: 655, column: 21, scope: !1911)
!1919 = !DILocation(line: 655, column: 9, scope: !1911)
!1920 = !DILocation(line: 658, column: 7, scope: !1907)
!1921 = !DILocation(line: 661, column: 5, scope: !1893)
!1922 = !DILocation(line: 0, scope: !1875)
!1923 = !DILocation(line: 658, column: 22, scope: !1875)
!1924 = !DILocation(line: 658, column: 18, scope: !1875)
!1925 = !DILocation(line: 658, column: 37, scope: !1875)
!1926 = !DILocation(line: 659, column: 23, scope: !1875)
!1927 = !DILocation(line: 659, column: 37, scope: !1875)
!1928 = !DILocation(line: 659, column: 18, scope: !1875)
!1929 = !DILocation(line: 659, column: 43, scope: !1875)
!1930 = !DILocation(line: 644, column: 7, scope: !1875)
!1931 = distinct !{!1931, !1868, !1932}
!1932 = !DILocation(line: 645, column: 3, scope: !1869)
!1933 = !DILocation(line: 647, column: 3, scope: !1869)
!1934 = !DILocation(line: 661, column: 3, scope: !1783)
!1935 = !DILocation(line: 663, column: 1, scope: !1770)
!1936 = distinct !DISubprogram(name: "decode_frame", scope: !93, file: !93, line: 663, type: !1937, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !89, !11, !14, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1940 = !DILocalVariable(name: "alac___0", arg: 1, scope: !1936, file: !93, line: 663, type: !89)
!1941 = !DILocation(line: 0, scope: !1936)
!1942 = !DILocalVariable(name: "inbuffer", arg: 2, scope: !1936, file: !93, line: 663, type: !11)
!1943 = !DILocalVariable(name: "outbuffer", arg: 3, scope: !1936, file: !93, line: 663, type: !14)
!1944 = !DILocalVariable(name: "outputsize", arg: 4, scope: !1936, file: !93, line: 664, type: !1939)
!1945 = !DILocalVariable(name: "predictor_coef_table", scope: !1936, file: !93, line: 678, type: !1946)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 512, elements: !1947)
!1947 = !{!1948}
!1948 = !DISubrange(count: 32)
!1949 = !DILocation(line: 678, column: 11, scope: !1936)
!1950 = !DILocalVariable(name: "predictor_coef_table_a", scope: !1936, file: !93, line: 707, type: !1946)
!1951 = !DILocation(line: 707, column: 11, scope: !1936)
!1952 = !DILocalVariable(name: "predictor_coef_table_b", scope: !1936, file: !93, line: 712, type: !1946)
!1953 = !DILocation(line: 712, column: 11, scope: !1936)
!1954 = !DILocalVariable(name: "__cil_tmp81", scope: !1936, file: !93, line: 742, type: !14)
!1955 = !DILocation(line: 742, column: 9, scope: !1936)
!1956 = !DILocalVariable(name: "__cil_tmp82", scope: !1936, file: !93, line: 743, type: !14)
!1957 = !DILocation(line: 743, column: 9, scope: !1936)
!1958 = !DILocalVariable(name: "__cil_tmp83", scope: !1936, file: !93, line: 744, type: !14)
!1959 = !DILocation(line: 744, column: 9, scope: !1936)
!1960 = !DILocalVariable(name: "__cil_tmp84", scope: !1936, file: !93, line: 745, type: !25)
!1961 = !DILocation(line: 745, column: 9, scope: !1936)
!1962 = !DILocalVariable(name: "__cil_tmp85", scope: !1936, file: !93, line: 746, type: !25)
!1963 = !DILocation(line: 746, column: 9, scope: !1936)
!1964 = !DILocalVariable(name: "__cil_tmp86", scope: !1936, file: !93, line: 747, type: !25)
!1965 = !DILocation(line: 747, column: 9, scope: !1936)
!1966 = !DILocalVariable(name: "__cil_tmp87", scope: !1936, file: !93, line: 748, type: !25)
!1967 = !DILocation(line: 748, column: 9, scope: !1936)
!1968 = !DILocalVariable(name: "__cil_tmp88", scope: !1936, file: !93, line: 749, type: !25)
!1969 = !DILocation(line: 749, column: 9, scope: !1936)
!1970 = !DILocalVariable(name: "__cil_tmp89", scope: !1936, file: !93, line: 750, type: !25)
!1971 = !DILocation(line: 750, column: 9, scope: !1936)
!1972 = !DILocalVariable(name: "__cil_tmp90", scope: !1936, file: !93, line: 751, type: !25)
!1973 = !DILocation(line: 751, column: 9, scope: !1936)
!1974 = !DILocation(line: 668, column: 39, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !93, line: 754, column: 3)
!1976 = distinct !DILexicalBlock(scope: !1936, file: !93, line: 753, column: 3)
!1977 = !DILocalVariable(name: "outputsamples", scope: !1936, file: !93, line: 667, type: !78)
!1978 = !DILocation(line: 671, column: 13, scope: !1975)
!1979 = !DILocation(line: 671, column: 26, scope: !1975)
!1980 = !DILocation(line: 672, column: 13, scope: !1975)
!1981 = !DILocation(line: 672, column: 41, scope: !1975)
!1982 = !DILocation(line: 674, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !93, line: 673, column: 3)
!1984 = !DILocalVariable(name: "tmp", scope: !1936, file: !93, line: 668, type: !6)
!1985 = !DILocalVariable(name: "channels", scope: !1936, file: !93, line: 666, type: !13)
!1986 = !DILocation(line: 676, column: 43, scope: !1975)
!1987 = !DILocation(line: 676, column: 31, scope: !1975)
!1988 = !DILocation(line: 676, column: 15, scope: !1975)
!1989 = !DILocation(line: 680, column: 16, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 680, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1976, file: !93, line: 678, column: 3)
!1992 = !DILocation(line: 680, column: 7, scope: !1991)
!1993 = !DILocation(line: 680, column: 5, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !93, line: 680, column: 22)
!1995 = !DILocation(line: 836, column: 16, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 836, column: 7)
!1997 = !DILocation(line: 836, column: 7, scope: !1991)
!1998 = !DILocation(line: 836, column: 5, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !93, line: 836, column: 22)
!2000 = !DILocation(line: 678, column: 3, scope: !1991)
!2001 = !DILocation(line: 693, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 681, column: 3)
!2003 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 680, column: 3)
!2004 = !DILocation(line: 695, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 695, column: 3)
!2006 = !DILocation(line: 697, column: 13, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 697, column: 3)
!2008 = !DILocalVariable(name: "tmp___0", scope: !1936, file: !93, line: 674, type: !6)
!2009 = !DILocalVariable(name: "hassize", scope: !1936, file: !93, line: 669, type: !13)
!2010 = !DILocation(line: 699, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 698, column: 3)
!2012 = !DILocalVariable(name: "tmp___1", scope: !1936, file: !93, line: 675, type: !6)
!2013 = !DILocalVariable(name: "wasted_bytes", scope: !1936, file: !93, line: 672, type: !13)
!2014 = !DILocation(line: 701, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 700, column: 3)
!2016 = !DILocalVariable(name: "tmp___2", scope: !1936, file: !93, line: 676, type: !6)
!2017 = !DILocalVariable(name: "isnotcompressed", scope: !1936, file: !93, line: 670, type: !13)
!2018 = !DILocation(line: 703, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 703, column: 7)
!2020 = !DILocation(line: 703, column: 7, scope: !1991)
!2021 = !DILocation(line: 707, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !93, line: 705, column: 5)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !93, line: 704, column: 5)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !93, line: 703, column: 16)
!2025 = !DILocalVariable(name: "tmp___3", scope: !1936, file: !93, line: 677, type: !6)
!2026 = !DILocation(line: 708, column: 45, scope: !2023)
!2027 = !DILocation(line: 708, column: 33, scope: !2023)
!2028 = !DILocation(line: 708, column: 17, scope: !2023)
!2029 = !DILocation(line: 710, column: 3, scope: !2024)
!2030 = !DILocation(line: 0, scope: !1976)
!2031 = !DILocation(line: 711, column: 36, scope: !1991)
!2032 = !DILocation(line: 711, column: 20, scope: !1991)
!2033 = !DILocation(line: 711, column: 71, scope: !1991)
!2034 = !DILocation(line: 711, column: 56, scope: !1991)
!2035 = !DILocalVariable(name: "readsamplesize", scope: !1936, file: !93, line: 671, type: !13)
!2036 = !DILocation(line: 713, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 713, column: 7)
!2038 = !DILocation(line: 713, column: 7, scope: !1991)
!2039 = !DILocation(line: 723, column: 5, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 715, column: 5)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 714, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !93, line: 713, column: 26)
!2043 = !DILocation(line: 724, column: 5, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 725, column: 5)
!2045 = !DILocation(line: 726, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 726, column: 5)
!2047 = !DILocalVariable(name: "tmp___4", scope: !1936, file: !93, line: 683, type: !6)
!2048 = !DILocalVariable(name: "prediction_type", scope: !1936, file: !93, line: 680, type: !13)
!2049 = !DILocation(line: 727, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 727, column: 5)
!2051 = !DILocalVariable(name: "tmp___5", scope: !1936, file: !93, line: 684, type: !6)
!2052 = !DILocalVariable(name: "prediction_quantitization", scope: !1936, file: !93, line: 681, type: !13)
!2053 = !DILocation(line: 729, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 728, column: 5)
!2055 = !DILocalVariable(name: "tmp___6", scope: !1936, file: !93, line: 685, type: !6)
!2056 = !DILocalVariable(name: "ricemodifier", scope: !1936, file: !93, line: 673, type: !13)
!2057 = !DILocation(line: 730, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2041, file: !93, line: 730, column: 5)
!2059 = !DILocalVariable(name: "tmp___7", scope: !1936, file: !93, line: 686, type: !6)
!2060 = !DILocalVariable(name: "predictor_coef_num", scope: !1936, file: !93, line: 679, type: !13)
!2061 = !DILocalVariable(name: "i", scope: !1936, file: !93, line: 682, type: !13)
!2062 = !DILocation(line: 733, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !93, line: 736, column: 5)
!2064 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 735, column: 5)
!2065 = !DILocation(line: 0, scope: !2042)
!2066 = !DILocation(line: 733, column: 15, scope: !2063)
!2067 = !DILocation(line: 733, column: 16, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !93, line: 733, column: 11)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !93, line: 733, column: 15)
!2070 = !DILocation(line: 733, column: 11, scope: !2069)
!2071 = !DILocation(line: 733, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !93, line: 733, column: 39)
!2073 = !DILocation(line: 735, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !93, line: 736, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !93, line: 735, column: 7)
!2076 = !DILocalVariable(name: "tmp___8", scope: !1936, file: !93, line: 687, type: !6)
!2077 = !DILocation(line: 735, column: 33, scope: !2075)
!2078 = !DILocation(line: 735, column: 7, scope: !2075)
!2079 = !DILocation(line: 735, column: 31, scope: !2075)
!2080 = !DILocation(line: 733, column: 9, scope: !2075)
!2081 = distinct !{!2081, !2062, !2082}
!2082 = !DILocation(line: 735, column: 5, scope: !2063)
!2083 = !DILocation(line: 737, column: 5, scope: !2063)
!2084 = !DILocation(line: 738, column: 9, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 738, column: 9)
!2086 = !DILocation(line: 738, column: 9, scope: !2042)
!2087 = !DILocation(line: 743, column: 40, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !93, line: 740, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !93, line: 739, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !93, line: 738, column: 23)
!2091 = !DILocation(line: 743, column: 7, scope: !2088)
!2092 = !DILocation(line: 746, column: 5, scope: !2090)
!2093 = !DILocation(line: 746, column: 53, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !93, line: 748, column: 5)
!2095 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 747, column: 5)
!2096 = !DILocation(line: 747, column: 65, scope: !2094)
!2097 = !DILocation(line: 747, column: 49, scope: !2094)
!2098 = !DILocation(line: 748, column: 49, scope: !2094)
!2099 = !DILocation(line: 748, column: 33, scope: !2094)
!2100 = !DILocation(line: 748, column: 105, scope: !2094)
!2101 = !DILocation(line: 748, column: 89, scope: !2094)
!2102 = !DILocation(line: 748, column: 87, scope: !2094)
!2103 = !DILocation(line: 748, column: 131, scope: !2094)
!2104 = !DILocation(line: 749, column: 55, scope: !2094)
!2105 = !DILocation(line: 749, column: 39, scope: !2094)
!2106 = !DILocation(line: 749, column: 36, scope: !2094)
!2107 = !DILocation(line: 749, column: 79, scope: !2094)
!2108 = !DILocation(line: 746, column: 5, scope: !2094)
!2109 = !DILocation(line: 755, column: 25, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 755, column: 9)
!2111 = !DILocation(line: 755, column: 9, scope: !2042)
!2112 = !DILocation(line: 757, column: 48, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !93, line: 757, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !93, line: 756, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !93, line: 755, column: 31)
!2116 = !DILocation(line: 757, column: 81, scope: !2113)
!2117 = !DILocation(line: 758, column: 69, scope: !2113)
!2118 = !DILocation(line: 757, column: 7, scope: !2113)
!2119 = !DILocation(line: 762, column: 5, scope: !2115)
!2120 = !DILocation(line: 767, column: 40, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !93, line: 764, column: 7)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !93, line: 763, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2110, file: !93, line: 762, column: 12)
!2124 = !DILocation(line: 767, column: 7, scope: !2121)
!2125 = !DILocation(line: 772, column: 3, scope: !2042)
!2126 = !DILocation(line: 779, column: 22, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2037, file: !93, line: 779, column: 7)
!2128 = !DILocation(line: 779, column: 7, scope: !2037)
!2129 = !DILocalVariable(name: "i___0", scope: !1936, file: !93, line: 688, type: !13)
!2130 = !DILocation(line: 782, column: 5, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !93, line: 784, column: 5)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !93, line: 783, column: 5)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !93, line: 779, column: 29)
!2134 = !DILocation(line: 0, scope: !2133)
!2135 = !DILocation(line: 782, column: 15, scope: !2131)
!2136 = !DILocation(line: 782, column: 20, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !93, line: 782, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2131, file: !93, line: 782, column: 15)
!2139 = !DILocation(line: 782, column: 11, scope: !2138)
!2140 = !DILocation(line: 782, column: 9, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !93, line: 782, column: 38)
!2142 = !DILocation(line: 784, column: 17, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !93, line: 785, column: 7)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !93, line: 784, column: 7)
!2145 = !DILocalVariable(name: "tmp___9", scope: !1936, file: !93, line: 690, type: !6)
!2146 = !DILocalVariable(name: "audiobits", scope: !1936, file: !93, line: 689, type: !78)
!2147 = !DILocation(line: 786, column: 37, scope: !2144)
!2148 = !DILocation(line: 786, column: 30, scope: !2144)
!2149 = !DILocation(line: 786, column: 63, scope: !2144)
!2150 = !DILocation(line: 786, column: 56, scope: !2144)
!2151 = !DILocation(line: 788, column: 19, scope: !2144)
!2152 = !DILocation(line: 788, column: 42, scope: !2144)
!2153 = !DILocation(line: 788, column: 51, scope: !2144)
!2154 = !DILocation(line: 782, column: 13, scope: !2144)
!2155 = distinct !{!2155, !2130, !2156}
!2156 = !DILocation(line: 784, column: 5, scope: !2131)
!2157 = !DILocation(line: 786, column: 5, scope: !2131)
!2158 = !DILocation(line: 789, column: 3, scope: !2133)
!2159 = !DILocalVariable(name: "i___1", scope: !1936, file: !93, line: 691, type: !13)
!2160 = !DILocation(line: 794, column: 5, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !93, line: 796, column: 5)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !93, line: 795, column: 5)
!2163 = distinct !DILexicalBlock(scope: !2127, file: !93, line: 789, column: 10)
!2164 = !DILocation(line: 0, scope: !2163)
!2165 = !DILocation(line: 794, column: 15, scope: !2161)
!2166 = !DILocation(line: 794, column: 20, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !93, line: 794, column: 11)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !93, line: 794, column: 15)
!2169 = !DILocation(line: 794, column: 11, scope: !2168)
!2170 = !DILocation(line: 794, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !93, line: 794, column: 38)
!2172 = !DILocation(line: 798, column: 18, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !93, line: 797, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2168, file: !93, line: 796, column: 7)
!2175 = !DILocalVariable(name: "tmp___10", scope: !1936, file: !93, line: 693, type: !6)
!2176 = !DILocalVariable(name: "audiobits___0", scope: !1936, file: !93, line: 692, type: !78)
!2177 = !DILocation(line: 801, column: 21, scope: !2174)
!2178 = !DILocation(line: 802, column: 28, scope: !2174)
!2179 = !DILocation(line: 802, column: 21, scope: !2174)
!2180 = !DILocation(line: 804, column: 52, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !93, line: 803, column: 7)
!2182 = !DILocation(line: 804, column: 18, scope: !2181)
!2183 = !DILocalVariable(name: "tmp___11", scope: !1936, file: !93, line: 694, type: !6)
!2184 = !DILocation(line: 804, column: 63, scope: !2174)
!2185 = !DILocation(line: 806, column: 19, scope: !2174)
!2186 = !DILocation(line: 806, column: 42, scope: !2174)
!2187 = !DILocation(line: 806, column: 51, scope: !2174)
!2188 = !DILocation(line: 794, column: 13, scope: !2174)
!2189 = distinct !{!2189, !2160, !2190}
!2190 = !DILocation(line: 796, column: 5, scope: !2161)
!2191 = !DILocation(line: 798, column: 5, scope: !2161)
!2192 = !DILocation(line: 814, column: 23, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 814, column: 7)
!2194 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 802, column: 3)
!2195 = !DILocation(line: 814, column: 7, scope: !2193)
!2196 = !DILocation(line: 814, column: 43, scope: !2193)
!2197 = !DILocation(line: 814, column: 7, scope: !2194)
!2198 = !DILocation(line: 814, column: 5, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !93, line: 814, column: 50)
!2200 = !DILocation(line: 828, column: 23, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 828, column: 7)
!2202 = !DILocation(line: 828, column: 7, scope: !2201)
!2203 = !DILocation(line: 828, column: 43, scope: !2201)
!2204 = !DILocation(line: 828, column: 7, scope: !2194)
!2205 = !DILocation(line: 828, column: 5, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2201, file: !93, line: 828, column: 50)
!2207 = !DILocation(line: 828, column: 23, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 828, column: 7)
!2209 = !DILocation(line: 828, column: 7, scope: !2208)
!2210 = !DILocation(line: 828, column: 43, scope: !2208)
!2211 = !DILocation(line: 828, column: 5, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !93, line: 828, column: 50)
!2213 = !DILocation(line: 828, column: 23, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 828, column: 7)
!2215 = !DILocation(line: 828, column: 7, scope: !2214)
!2216 = !DILocation(line: 828, column: 43, scope: !2214)
!2217 = !DILocation(line: 828, column: 5, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !93, line: 828, column: 50)
!2219 = !DILocation(line: 831, column: 3, scope: !2194)
!2220 = !DILocalVariable(name: "i___2", scope: !1936, file: !93, line: 695, type: !13)
!2221 = !DILocation(line: 817, column: 3, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !93, line: 819, column: 3)
!2223 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 818, column: 3)
!2224 = !DILocation(line: 0, scope: !2194)
!2225 = !DILocation(line: 817, column: 13, scope: !2222)
!2226 = !DILocation(line: 817, column: 18, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !93, line: 817, column: 9)
!2228 = distinct !DILexicalBlock(scope: !2222, file: !93, line: 817, column: 13)
!2229 = !DILocation(line: 817, column: 9, scope: !2228)
!2230 = !DILocation(line: 817, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !93, line: 817, column: 36)
!2232 = !DILocation(line: 819, column: 36, scope: !2228)
!2233 = !DILocation(line: 819, column: 59, scope: !2228)
!2234 = !DILocation(line: 819, column: 24, scope: !2228)
!2235 = !DILocation(line: 819, column: 14, scope: !2228)
!2236 = !DILocalVariable(name: "sample", scope: !1936, file: !93, line: 696, type: !86)
!2237 = !DILocation(line: 820, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2228, file: !93, line: 820, column: 9)
!2239 = !DILocation(line: 820, column: 9, scope: !2228)
!2240 = !DILocation(line: 821, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !93, line: 822, column: 7)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !93, line: 821, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !93, line: 820, column: 25)
!2244 = !DILocation(line: 821, column: 17, scope: !2241)
!2245 = !DILocation(line: 821, column: 31, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !93, line: 821, column: 17)
!2247 = !DILocation(line: 821, column: 44, scope: !2246)
!2248 = !DILocation(line: 821, column: 51, scope: !2246)
!2249 = !DILocation(line: 821, column: 61, scope: !2246)
!2250 = !DILocation(line: 821, column: 74, scope: !2246)
!2251 = !DILocation(line: 821, column: 83, scope: !2246)
!2252 = !DILocation(line: 821, column: 57, scope: !2246)
!2253 = !DILocation(line: 821, column: 18, scope: !2246)
!2254 = !DILocation(line: 821, column: 9, scope: !2246)
!2255 = !DILocation(line: 824, column: 7, scope: !2241)
!2256 = !DILocation(line: 827, column: 5, scope: !2243)
!2257 = !DILocation(line: 0, scope: !2228)
!2258 = !DILocation(line: 822, column: 7, scope: !2228)
!2259 = !DILocation(line: 822, column: 48, scope: !2228)
!2260 = !DILocation(line: 822, column: 36, scope: !2228)
!2261 = !DILocation(line: 822, column: 28, scope: !2228)
!2262 = !DILocation(line: 822, column: 61, scope: !2228)
!2263 = !DILocation(line: 817, column: 11, scope: !2228)
!2264 = distinct !{!2264, !2221, !2265}
!2265 = !DILocation(line: 818, column: 3, scope: !2222)
!2266 = !DILocation(line: 820, column: 3, scope: !2222)
!2267 = !DILocation(line: 824, column: 3, scope: !2194)
!2268 = !DILocation(line: 829, column: 36, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !93, line: 829, column: 3)
!2270 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 828, column: 3)
!2271 = !DILocation(line: 830, column: 27, scope: !2269)
!2272 = !DILocation(line: 830, column: 11, scope: !2269)
!2273 = !DILocation(line: 829, column: 3, scope: !2269)
!2274 = !DILocation(line: 830, column: 3, scope: !2194)
!2275 = !DILocation(line: 832, column: 3, scope: !2194)
!2276 = !DILocation(line: 834, column: 3, scope: !1991)
!2277 = !DILocation(line: 850, column: 3, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !93, line: 837, column: 3)
!2279 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 836, column: 3)
!2280 = !DILocation(line: 852, column: 3, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2279, file: !93, line: 852, column: 3)
!2282 = !DILocation(line: 854, column: 14, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !93, line: 854, column: 3)
!2284 = !DILocalVariable(name: "tmp___12", scope: !1936, file: !93, line: 703, type: !6)
!2285 = !DILocalVariable(name: "hassize___0", scope: !1936, file: !93, line: 697, type: !13)
!2286 = !DILocation(line: 856, column: 14, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2279, file: !93, line: 855, column: 3)
!2288 = !DILocalVariable(name: "tmp___13", scope: !1936, file: !93, line: 704, type: !6)
!2289 = !DILocalVariable(name: "wasted_bytes___0", scope: !1936, file: !93, line: 700, type: !13)
!2290 = !DILocation(line: 858, column: 14, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2279, file: !93, line: 857, column: 3)
!2292 = !DILocalVariable(name: "tmp___14", scope: !1936, file: !93, line: 705, type: !6)
!2293 = !DILocalVariable(name: "isnotcompressed___0", scope: !1936, file: !93, line: 698, type: !13)
!2294 = !DILocation(line: 860, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 860, column: 7)
!2296 = !DILocation(line: 860, column: 7, scope: !1991)
!2297 = !DILocation(line: 864, column: 16, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !93, line: 862, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !93, line: 861, column: 5)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !93, line: 860, column: 20)
!2301 = !DILocalVariable(name: "tmp___15", scope: !1936, file: !93, line: 706, type: !6)
!2302 = !DILocation(line: 865, column: 45, scope: !2299)
!2303 = !DILocation(line: 865, column: 33, scope: !2299)
!2304 = !DILocation(line: 865, column: 17, scope: !2299)
!2305 = !DILocation(line: 867, column: 3, scope: !2300)
!2306 = !DILocation(line: 868, column: 41, scope: !1991)
!2307 = !DILocation(line: 868, column: 25, scope: !1991)
!2308 = !DILocation(line: 868, column: 80, scope: !1991)
!2309 = !DILocation(line: 868, column: 61, scope: !1991)
!2310 = !DILocation(line: 868, column: 85, scope: !1991)
!2311 = !DILocalVariable(name: "readsamplesize___0", scope: !1936, file: !93, line: 699, type: !13)
!2312 = !DILocation(line: 870, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 870, column: 7)
!2314 = !DILocation(line: 870, column: 7, scope: !1991)
!2315 = !DILocation(line: 886, column: 16, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 872, column: 5)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 871, column: 5)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !93, line: 870, column: 30)
!2319 = !DILocalVariable(name: "tmp___16", scope: !1936, file: !93, line: 718, type: !6)
!2320 = !DILocation(line: 886, column: 25, scope: !2317)
!2321 = !DILocalVariable(name: "interlacing_shift", scope: !1936, file: !93, line: 701, type: !84)
!2322 = !DILocation(line: 887, column: 16, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 887, column: 5)
!2324 = !DILocalVariable(name: "tmp___17", scope: !1936, file: !93, line: 719, type: !6)
!2325 = !DILocation(line: 887, column: 30, scope: !2317)
!2326 = !DILocalVariable(name: "interlacing_leftweight", scope: !1936, file: !93, line: 702, type: !84)
!2327 = !DILocation(line: 890, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 888, column: 5)
!2329 = !DILocalVariable(name: "tmp___18", scope: !1936, file: !93, line: 720, type: !6)
!2330 = !DILocalVariable(name: "prediction_type_a", scope: !1936, file: !93, line: 709, type: !13)
!2331 = !DILocation(line: 891, column: 16, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 891, column: 5)
!2333 = !DILocalVariable(name: "tmp___19", scope: !1936, file: !93, line: 721, type: !6)
!2334 = !DILocalVariable(name: "prediction_quantitization_a", scope: !1936, file: !93, line: 710, type: !13)
!2335 = !DILocation(line: 893, column: 16, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 892, column: 5)
!2337 = !DILocalVariable(name: "tmp___20", scope: !1936, file: !93, line: 722, type: !6)
!2338 = !DILocalVariable(name: "ricemodifier_a", scope: !1936, file: !93, line: 711, type: !13)
!2339 = !DILocation(line: 894, column: 16, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2317, file: !93, line: 894, column: 5)
!2341 = !DILocalVariable(name: "tmp___21", scope: !1936, file: !93, line: 723, type: !6)
!2342 = !DILocalVariable(name: "predictor_coef_num_a", scope: !1936, file: !93, line: 708, type: !13)
!2343 = !DILocalVariable(name: "i___3", scope: !1936, file: !93, line: 717, type: !13)
!2344 = !DILocation(line: 897, column: 5, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !93, line: 900, column: 5)
!2346 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 899, column: 5)
!2347 = !DILocation(line: 0, scope: !2318)
!2348 = !DILocation(line: 897, column: 15, scope: !2345)
!2349 = !DILocation(line: 897, column: 20, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !93, line: 897, column: 11)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !93, line: 897, column: 15)
!2352 = !DILocation(line: 897, column: 11, scope: !2351)
!2353 = !DILocation(line: 897, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !93, line: 897, column: 45)
!2355 = !DILocation(line: 899, column: 18, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !93, line: 900, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2351, file: !93, line: 899, column: 7)
!2358 = !DILocalVariable(name: "tmp___22", scope: !1936, file: !93, line: 724, type: !6)
!2359 = !DILocation(line: 899, column: 39, scope: !2357)
!2360 = !DILocation(line: 899, column: 7, scope: !2357)
!2361 = !DILocation(line: 899, column: 37, scope: !2357)
!2362 = !DILocation(line: 897, column: 13, scope: !2357)
!2363 = distinct !{!2363, !2344, !2364}
!2364 = !DILocation(line: 899, column: 5, scope: !2345)
!2365 = !DILocation(line: 901, column: 5, scope: !2345)
!2366 = !DILocation(line: 903, column: 16, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !93, line: 905, column: 5)
!2368 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 904, column: 5)
!2369 = !DILocalVariable(name: "tmp___23", scope: !1936, file: !93, line: 725, type: !6)
!2370 = !DILocalVariable(name: "prediction_type_b", scope: !1936, file: !93, line: 714, type: !13)
!2371 = !DILocation(line: 904, column: 16, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !93, line: 904, column: 5)
!2373 = !DILocalVariable(name: "tmp___24", scope: !1936, file: !93, line: 726, type: !6)
!2374 = !DILocalVariable(name: "prediction_quantitization_b", scope: !1936, file: !93, line: 715, type: !13)
!2375 = !DILocation(line: 906, column: 16, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2368, file: !93, line: 905, column: 5)
!2377 = !DILocalVariable(name: "tmp___25", scope: !1936, file: !93, line: 727, type: !6)
!2378 = !DILocalVariable(name: "ricemodifier_b", scope: !1936, file: !93, line: 716, type: !13)
!2379 = !DILocation(line: 907, column: 16, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2368, file: !93, line: 907, column: 5)
!2381 = !DILocalVariable(name: "tmp___26", scope: !1936, file: !93, line: 728, type: !6)
!2382 = !DILocalVariable(name: "predictor_coef_num_b", scope: !1936, file: !93, line: 713, type: !13)
!2383 = !DILocation(line: 910, column: 5, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !93, line: 913, column: 5)
!2385 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 912, column: 5)
!2386 = !DILocation(line: 910, column: 15, scope: !2384)
!2387 = !DILocation(line: 910, column: 20, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !93, line: 910, column: 11)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !93, line: 910, column: 15)
!2390 = !DILocation(line: 910, column: 11, scope: !2389)
!2391 = !DILocation(line: 910, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !93, line: 910, column: 45)
!2393 = !DILocation(line: 912, column: 18, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !93, line: 913, column: 7)
!2395 = distinct !DILexicalBlock(scope: !2389, file: !93, line: 912, column: 7)
!2396 = !DILocalVariable(name: "tmp___27", scope: !1936, file: !93, line: 729, type: !6)
!2397 = !DILocation(line: 912, column: 39, scope: !2395)
!2398 = !DILocation(line: 912, column: 7, scope: !2395)
!2399 = !DILocation(line: 912, column: 37, scope: !2395)
!2400 = !DILocation(line: 910, column: 13, scope: !2395)
!2401 = distinct !{!2401, !2383, !2402}
!2402 = !DILocation(line: 912, column: 5, scope: !2384)
!2403 = !DILocation(line: 914, column: 5, scope: !2384)
!2404 = !DILocation(line: 916, column: 9, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 916, column: 9)
!2406 = !DILocation(line: 916, column: 9, scope: !2318)
!2407 = !DILocation(line: 918, column: 40, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !93, line: 918, column: 7)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !93, line: 917, column: 7)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !93, line: 916, column: 27)
!2411 = !DILocation(line: 918, column: 7, scope: !2408)
!2412 = !DILocation(line: 921, column: 5, scope: !2410)
!2413 = !DILocation(line: 922, column: 53, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !93, line: 923, column: 5)
!2415 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 922, column: 5)
!2416 = !DILocation(line: 923, column: 69, scope: !2414)
!2417 = !DILocation(line: 923, column: 53, scope: !2414)
!2418 = !DILocation(line: 924, column: 49, scope: !2414)
!2419 = !DILocation(line: 924, column: 33, scope: !2414)
!2420 = !DILocation(line: 924, column: 107, scope: !2414)
!2421 = !DILocation(line: 924, column: 91, scope: !2414)
!2422 = !DILocation(line: 924, column: 89, scope: !2414)
!2423 = !DILocation(line: 924, column: 133, scope: !2414)
!2424 = !DILocation(line: 925, column: 55, scope: !2414)
!2425 = !DILocation(line: 925, column: 39, scope: !2414)
!2426 = !DILocation(line: 925, column: 36, scope: !2414)
!2427 = !DILocation(line: 925, column: 79, scope: !2414)
!2428 = !DILocation(line: 922, column: 5, scope: !2414)
!2429 = !DILocation(line: 931, column: 27, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 931, column: 9)
!2431 = !DILocation(line: 931, column: 9, scope: !2318)
!2432 = !DILocation(line: 933, column: 48, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !93, line: 933, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !93, line: 932, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2430, file: !93, line: 931, column: 33)
!2436 = !DILocation(line: 933, column: 81, scope: !2433)
!2437 = !DILocation(line: 934, column: 73, scope: !2433)
!2438 = !DILocation(line: 933, column: 7, scope: !2433)
!2439 = !DILocation(line: 938, column: 5, scope: !2435)
!2440 = !DILocation(line: 943, column: 40, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !93, line: 940, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !93, line: 939, column: 7)
!2443 = distinct !DILexicalBlock(scope: !2430, file: !93, line: 938, column: 12)
!2444 = !DILocation(line: 943, column: 7, scope: !2441)
!2445 = !DILocation(line: 947, column: 53, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !93, line: 949, column: 5)
!2447 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 948, column: 5)
!2448 = !DILocation(line: 948, column: 69, scope: !2446)
!2449 = !DILocation(line: 948, column: 53, scope: !2446)
!2450 = !DILocation(line: 949, column: 49, scope: !2446)
!2451 = !DILocation(line: 949, column: 33, scope: !2446)
!2452 = !DILocation(line: 949, column: 107, scope: !2446)
!2453 = !DILocation(line: 949, column: 91, scope: !2446)
!2454 = !DILocation(line: 949, column: 89, scope: !2446)
!2455 = !DILocation(line: 949, column: 133, scope: !2446)
!2456 = !DILocation(line: 950, column: 55, scope: !2446)
!2457 = !DILocation(line: 950, column: 39, scope: !2446)
!2458 = !DILocation(line: 950, column: 36, scope: !2446)
!2459 = !DILocation(line: 950, column: 79, scope: !2446)
!2460 = !DILocation(line: 947, column: 5, scope: !2446)
!2461 = !DILocation(line: 956, column: 27, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2318, file: !93, line: 956, column: 9)
!2463 = !DILocation(line: 956, column: 9, scope: !2318)
!2464 = !DILocation(line: 958, column: 48, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !93, line: 958, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !93, line: 957, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !93, line: 956, column: 33)
!2468 = !DILocation(line: 958, column: 81, scope: !2465)
!2469 = !DILocation(line: 959, column: 73, scope: !2465)
!2470 = !DILocation(line: 958, column: 7, scope: !2465)
!2471 = !DILocation(line: 963, column: 5, scope: !2467)
!2472 = !DILocation(line: 968, column: 40, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !93, line: 965, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !93, line: 964, column: 7)
!2475 = distinct !DILexicalBlock(scope: !2462, file: !93, line: 963, column: 12)
!2476 = !DILocation(line: 968, column: 7, scope: !2473)
!2477 = !DILocation(line: 973, column: 3, scope: !2318)
!2478 = !DILocation(line: 973, column: 25, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !93, line: 973, column: 9)
!2480 = distinct !DILexicalBlock(scope: !2313, file: !93, line: 973, column: 10)
!2481 = !DILocation(line: 973, column: 9, scope: !2479)
!2482 = !DILocation(line: 973, column: 45, scope: !2479)
!2483 = !DILocation(line: 973, column: 9, scope: !2480)
!2484 = !DILocalVariable(name: "i___4", scope: !1936, file: !93, line: 730, type: !13)
!2485 = !DILocation(line: 976, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !93, line: 978, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !93, line: 977, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2479, file: !93, line: 973, column: 52)
!2489 = !DILocation(line: 0, scope: !2488)
!2490 = !DILocation(line: 976, column: 17, scope: !2486)
!2491 = !DILocation(line: 976, column: 22, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !93, line: 976, column: 13)
!2493 = distinct !DILexicalBlock(scope: !2486, file: !93, line: 976, column: 17)
!2494 = !DILocation(line: 976, column: 13, scope: !2493)
!2495 = !DILocation(line: 976, column: 11, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !93, line: 976, column: 40)
!2497 = !DILocation(line: 980, column: 55, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !93, line: 979, column: 9)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !93, line: 978, column: 9)
!2500 = !DILocation(line: 980, column: 39, scope: !2498)
!2501 = !DILocation(line: 980, column: 20, scope: !2498)
!2502 = !DILocalVariable(name: "tmp___28", scope: !1936, file: !93, line: 733, type: !6)
!2503 = !DILocalVariable(name: "audiobits_a", scope: !1936, file: !93, line: 731, type: !78)
!2504 = !DILocation(line: 981, column: 55, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2499, file: !93, line: 981, column: 9)
!2506 = !DILocation(line: 981, column: 39, scope: !2505)
!2507 = !DILocation(line: 981, column: 20, scope: !2505)
!2508 = !DILocalVariable(name: "tmp___29", scope: !1936, file: !93, line: 734, type: !6)
!2509 = !DILocalVariable(name: "audiobits_b", scope: !1936, file: !93, line: 732, type: !78)
!2510 = !DILocation(line: 983, column: 61, scope: !2499)
!2511 = !DILocation(line: 983, column: 45, scope: !2499)
!2512 = !DILocation(line: 983, column: 43, scope: !2499)
!2513 = !DILocation(line: 983, column: 36, scope: !2499)
!2514 = !DILocation(line: 983, column: 108, scope: !2499)
!2515 = !DILocation(line: 983, column: 92, scope: !2499)
!2516 = !DILocation(line: 983, column: 90, scope: !2499)
!2517 = !DILocation(line: 983, column: 83, scope: !2499)
!2518 = !DILocation(line: 984, column: 61, scope: !2499)
!2519 = !DILocation(line: 984, column: 45, scope: !2499)
!2520 = !DILocation(line: 984, column: 43, scope: !2499)
!2521 = !DILocation(line: 984, column: 36, scope: !2499)
!2522 = !DILocation(line: 984, column: 108, scope: !2499)
!2523 = !DILocation(line: 984, column: 92, scope: !2499)
!2524 = !DILocation(line: 984, column: 90, scope: !2499)
!2525 = !DILocation(line: 984, column: 83, scope: !2499)
!2526 = !DILocation(line: 986, column: 21, scope: !2499)
!2527 = !DILocation(line: 986, column: 44, scope: !2499)
!2528 = !DILocation(line: 986, column: 53, scope: !2499)
!2529 = !DILocation(line: 987, column: 21, scope: !2499)
!2530 = !DILocation(line: 987, column: 44, scope: !2499)
!2531 = !DILocation(line: 987, column: 53, scope: !2499)
!2532 = !DILocation(line: 976, column: 15, scope: !2499)
!2533 = distinct !{!2533, !2485, !2534}
!2534 = !DILocation(line: 978, column: 7, scope: !2486)
!2535 = !DILocation(line: 980, column: 7, scope: !2486)
!2536 = !DILocation(line: 983, column: 5, scope: !2488)
!2537 = !DILocalVariable(name: "i___5", scope: !1936, file: !93, line: 735, type: !13)
!2538 = !DILocation(line: 993, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !93, line: 995, column: 7)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !93, line: 994, column: 7)
!2541 = distinct !DILexicalBlock(scope: !2479, file: !93, line: 983, column: 12)
!2542 = !DILocation(line: 0, scope: !2541)
!2543 = !DILocation(line: 993, column: 17, scope: !2539)
!2544 = !DILocation(line: 993, column: 22, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !93, line: 993, column: 13)
!2546 = distinct !DILexicalBlock(scope: !2539, file: !93, line: 993, column: 17)
!2547 = !DILocation(line: 993, column: 13, scope: !2546)
!2548 = !DILocation(line: 993, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !93, line: 993, column: 40)
!2550 = !DILocation(line: 997, column: 20, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !93, line: 996, column: 9)
!2552 = distinct !DILexicalBlock(scope: !2546, file: !93, line: 995, column: 9)
!2553 = !DILocalVariable(name: "tmp___30", scope: !1936, file: !93, line: 738, type: !6)
!2554 = !DILocalVariable(name: "audiobits_a___0", scope: !1936, file: !93, line: 736, type: !78)
!2555 = !DILocation(line: 998, column: 25, scope: !2552)
!2556 = !DILocation(line: 999, column: 50, scope: !2552)
!2557 = !DILocation(line: 999, column: 34, scope: !2552)
!2558 = !DILocation(line: 999, column: 32, scope: !2552)
!2559 = !DILocation(line: 999, column: 25, scope: !2552)
!2560 = !DILocation(line: 1000, column: 55, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2552, file: !93, line: 1000, column: 9)
!2562 = !DILocation(line: 1000, column: 39, scope: !2561)
!2563 = !DILocation(line: 1000, column: 75, scope: !2561)
!2564 = !DILocation(line: 1000, column: 20, scope: !2561)
!2565 = !DILocalVariable(name: "tmp___31", scope: !1936, file: !93, line: 739, type: !6)
!2566 = !DILocation(line: 1000, column: 69, scope: !2552)
!2567 = !DILocation(line: 1002, column: 20, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2552, file: !93, line: 1001, column: 9)
!2569 = !DILocalVariable(name: "tmp___32", scope: !1936, file: !93, line: 740, type: !6)
!2570 = !DILocalVariable(name: "audiobits_b___0", scope: !1936, file: !93, line: 737, type: !78)
!2571 = !DILocation(line: 1003, column: 25, scope: !2552)
!2572 = !DILocation(line: 1004, column: 50, scope: !2552)
!2573 = !DILocation(line: 1004, column: 34, scope: !2552)
!2574 = !DILocation(line: 1004, column: 32, scope: !2552)
!2575 = !DILocation(line: 1004, column: 25, scope: !2552)
!2576 = !DILocation(line: 1005, column: 55, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2552, file: !93, line: 1005, column: 9)
!2578 = !DILocation(line: 1005, column: 39, scope: !2577)
!2579 = !DILocation(line: 1005, column: 75, scope: !2577)
!2580 = !DILocation(line: 1005, column: 20, scope: !2577)
!2581 = !DILocalVariable(name: "tmp___33", scope: !1936, file: !93, line: 741, type: !6)
!2582 = !DILocation(line: 1005, column: 69, scope: !2552)
!2583 = !DILocation(line: 1007, column: 21, scope: !2552)
!2584 = !DILocation(line: 1007, column: 44, scope: !2552)
!2585 = !DILocation(line: 1007, column: 53, scope: !2552)
!2586 = !DILocation(line: 1008, column: 21, scope: !2552)
!2587 = !DILocation(line: 1008, column: 44, scope: !2552)
!2588 = !DILocation(line: 1008, column: 53, scope: !2552)
!2589 = !DILocation(line: 993, column: 15, scope: !2552)
!2590 = distinct !{!2590, !2538, !2591}
!2591 = !DILocation(line: 995, column: 7, scope: !2539)
!2592 = !DILocation(line: 997, column: 7, scope: !2539)
!2593 = !DILocation(line: 0, scope: !2313)
!2594 = !DILocation(line: 1018, column: 23, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1018, column: 7)
!2596 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 1015, column: 3)
!2597 = !DILocation(line: 1018, column: 7, scope: !2595)
!2598 = !DILocation(line: 1018, column: 43, scope: !2595)
!2599 = !DILocation(line: 1018, column: 7, scope: !2596)
!2600 = !DILocation(line: 1018, column: 5, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !93, line: 1018, column: 50)
!2602 = !DILocation(line: 1031, column: 23, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1031, column: 7)
!2604 = !DILocation(line: 1031, column: 7, scope: !2603)
!2605 = !DILocation(line: 1031, column: 43, scope: !2603)
!2606 = !DILocation(line: 1031, column: 7, scope: !2596)
!2607 = !DILocation(line: 1031, column: 5, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !93, line: 1031, column: 50)
!2609 = !DILocation(line: 1031, column: 23, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1031, column: 7)
!2611 = !DILocation(line: 1031, column: 7, scope: !2610)
!2612 = !DILocation(line: 1031, column: 43, scope: !2610)
!2613 = !DILocation(line: 1031, column: 5, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !93, line: 1031, column: 50)
!2615 = !DILocation(line: 1031, column: 23, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1031, column: 7)
!2617 = !DILocation(line: 1031, column: 7, scope: !2616)
!2618 = !DILocation(line: 1031, column: 43, scope: !2616)
!2619 = !DILocation(line: 1031, column: 5, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !93, line: 1031, column: 50)
!2621 = !DILocation(line: 1034, column: 3, scope: !2596)
!2622 = !DILocation(line: 1020, column: 28, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !93, line: 1037, column: 3)
!2624 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1036, column: 3)
!2625 = !DILocation(line: 1020, column: 62, scope: !2623)
!2626 = !DILocation(line: 1021, column: 18, scope: !2623)
!2627 = !DILocation(line: 1021, column: 50, scope: !2623)
!2628 = !DILocation(line: 1020, column: 3, scope: !2623)
!2629 = !DILocation(line: 1027, column: 3, scope: !2596)
!2630 = !DILocation(line: 1032, column: 36, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !93, line: 1032, column: 3)
!2632 = distinct !DILexicalBlock(scope: !2596, file: !93, line: 1031, column: 3)
!2633 = !DILocation(line: 1033, column: 27, scope: !2631)
!2634 = !DILocation(line: 1033, column: 11, scope: !2631)
!2635 = !DILocation(line: 1032, column: 3, scope: !2631)
!2636 = !DILocation(line: 1033, column: 3, scope: !2596)
!2637 = !DILocation(line: 1035, column: 3, scope: !2596)
!2638 = !DILocation(line: 1038, column: 3, scope: !1991)
!2639 = !DILocation(line: 1041, column: 3, scope: !1976)
!2640 = distinct !DISubprogram(name: "predictor_decompress_fir_adapt", scope: !93, file: !93, line: 464, type: !2641, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{null, !101, !101, !13, !13, !88, !13, !13}
!2643 = !DILocalVariable(name: "error_buffer", arg: 1, scope: !2640, file: !93, line: 464, type: !101)
!2644 = !DILocation(line: 0, scope: !2640)
!2645 = !DILocalVariable(name: "buffer_out", arg: 2, scope: !2640, file: !93, line: 464, type: !101)
!2646 = !DILocalVariable(name: "output_size", arg: 3, scope: !2640, file: !93, line: 465, type: !13)
!2647 = !DILocalVariable(name: "readsamplesize", arg: 4, scope: !2640, file: !93, line: 465, type: !13)
!2648 = !DILocalVariable(name: "predictor_coef_table", arg: 5, scope: !2640, file: !93, line: 466, type: !88)
!2649 = !DILocalVariable(name: "predictor_coef_num", arg: 6, scope: !2640, file: !93, line: 466, type: !13)
!2650 = !DILocalVariable(name: "predictor_quantitization", arg: 7, scope: !2640, file: !93, line: 467, type: !13)
!2651 = !DILocation(line: 475, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2640, file: !93, line: 489, column: 3)
!2653 = !DILocation(line: 475, column: 15, scope: !2652)
!2654 = !DILocation(line: 477, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !93, line: 477, column: 7)
!2656 = !DILocation(line: 477, column: 7, scope: !2652)
!2657 = !DILocation(line: 479, column: 21, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !93, line: 479, column: 9)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !93, line: 477, column: 29)
!2660 = !DILocation(line: 479, column: 9, scope: !2659)
!2661 = !DILocation(line: 479, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !93, line: 479, column: 27)
!2663 = !DILocation(line: 480, column: 49, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !93, line: 482, column: 5)
!2665 = distinct !DILexicalBlock(scope: !2659, file: !93, line: 481, column: 5)
!2666 = !DILocation(line: 480, column: 12, scope: !2664)
!2667 = !DILocation(line: 480, column: 102, scope: !2664)
!2668 = !DILocation(line: 480, column: 55, scope: !2664)
!2669 = !DILocation(line: 481, column: 35, scope: !2664)
!2670 = !DILocation(line: 481, column: 40, scope: !2664)
!2671 = !DILocation(line: 480, column: 5, scope: !2664)
!2672 = !DILocation(line: 481, column: 5, scope: !2659)
!2673 = !DILocation(line: 484, column: 26, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2652, file: !93, line: 484, column: 7)
!2675 = !DILocation(line: 484, column: 7, scope: !2652)
!2676 = !DILocation(line: 488, column: 21, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !93, line: 488, column: 9)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !93, line: 484, column: 33)
!2679 = !DILocation(line: 488, column: 9, scope: !2678)
!2680 = !DILocation(line: 488, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2677, file: !93, line: 488, column: 27)
!2682 = !DILocalVariable(name: "i", scope: !2640, file: !93, line: 469, type: !13)
!2683 = !DILocation(line: 489, column: 5, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !93, line: 491, column: 5)
!2685 = distinct !DILexicalBlock(scope: !2678, file: !93, line: 490, column: 5)
!2686 = !DILocation(line: 0, scope: !2678)
!2687 = !DILocation(line: 489, column: 15, scope: !2684)
!2688 = !DILocation(line: 489, column: 30, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !93, line: 489, column: 11)
!2690 = distinct !DILexicalBlock(scope: !2684, file: !93, line: 489, column: 15)
!2691 = !DILocation(line: 489, column: 16, scope: !2689)
!2692 = !DILocation(line: 489, column: 11, scope: !2690)
!2693 = !DILocation(line: 489, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !93, line: 489, column: 36)
!2695 = !DILocation(line: 494, column: 33, scope: !2690)
!2696 = !DILocation(line: 494, column: 20, scope: !2690)
!2697 = !DILocalVariable(name: "prev_value", scope: !2640, file: !93, line: 470, type: !78)
!2698 = !DILocation(line: 495, column: 41, scope: !2690)
!2699 = !DILocation(line: 495, column: 36, scope: !2690)
!2700 = !DILocation(line: 495, column: 21, scope: !2690)
!2701 = !DILocalVariable(name: "error_value", scope: !2640, file: !93, line: 471, type: !78)
!2702 = !DILocation(line: 496, column: 46, scope: !2690)
!2703 = !DILocation(line: 496, column: 68, scope: !2690)
!2704 = !DILocation(line: 496, column: 61, scope: !2690)
!2705 = !DILocation(line: 496, column: 94, scope: !2690)
!2706 = !DILocation(line: 496, column: 87, scope: !2690)
!2707 = !DILocation(line: 496, column: 25, scope: !2690)
!2708 = !DILocation(line: 496, column: 20, scope: !2690)
!2709 = !DILocation(line: 496, column: 31, scope: !2690)
!2710 = !DILocation(line: 489, column: 9, scope: !2690)
!2711 = distinct !{!2711, !2683, !2712}
!2712 = !DILocation(line: 490, column: 5, scope: !2684)
!2713 = !DILocation(line: 492, column: 5, scope: !2684)
!2714 = !DILocation(line: 498, column: 5, scope: !2678)
!2715 = !DILocation(line: 502, column: 26, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2652, file: !93, line: 502, column: 7)
!2717 = !DILocation(line: 502, column: 7, scope: !2652)
!2718 = !DILocalVariable(name: "i___0", scope: !2640, file: !93, line: 472, type: !13)
!2719 = !DILocation(line: 505, column: 5, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !93, line: 507, column: 5)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !93, line: 506, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2716, file: !93, line: 502, column: 31)
!2723 = !DILocation(line: 0, scope: !2722)
!2724 = !DILocation(line: 505, column: 15, scope: !2720)
!2725 = !DILocation(line: 505, column: 20, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !93, line: 505, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2720, file: !93, line: 505, column: 15)
!2728 = !DILocation(line: 505, column: 11, scope: !2727)
!2729 = !DILocation(line: 505, column: 9, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !93, line: 505, column: 43)
!2731 = !DILocation(line: 509, column: 26, scope: !2727)
!2732 = !DILocation(line: 509, column: 13, scope: !2727)
!2733 = !DILocation(line: 509, column: 61, scope: !2727)
!2734 = !DILocation(line: 509, column: 52, scope: !2727)
!2735 = !DILocation(line: 509, column: 37, scope: !2727)
!2736 = !DILocation(line: 509, column: 35, scope: !2727)
!2737 = !DILocalVariable(name: "val", scope: !2640, file: !93, line: 473, type: !78)
!2738 = !DILocation(line: 511, column: 25, scope: !2727)
!2739 = !DILocation(line: 511, column: 18, scope: !2727)
!2740 = !DILocation(line: 511, column: 51, scope: !2727)
!2741 = !DILocation(line: 511, column: 44, scope: !2727)
!2742 = !DILocation(line: 513, column: 29, scope: !2727)
!2743 = !DILocation(line: 513, column: 20, scope: !2727)
!2744 = !DILocation(line: 513, column: 35, scope: !2727)
!2745 = !DILocation(line: 505, column: 13, scope: !2727)
!2746 = distinct !{!2746, !2719, !2747}
!2747 = !DILocation(line: 506, column: 5, scope: !2720)
!2748 = !DILocation(line: 508, column: 5, scope: !2720)
!2749 = !DILocation(line: 511, column: 3, scope: !2722)
!2750 = !DILocation(line: 536, column: 26, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2652, file: !93, line: 536, column: 7)
!2752 = !DILocation(line: 536, column: 7, scope: !2652)
!2753 = !DILocation(line: 538, column: 28, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2751, file: !93, line: 536, column: 31)
!2755 = !DILocation(line: 538, column: 5, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !93, line: 540, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !93, line: 539, column: 5)
!2758 = !DILocation(line: 0, scope: !2754)
!2759 = !DILocation(line: 538, column: 15, scope: !2756)
!2760 = !DILocation(line: 538, column: 16, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !93, line: 538, column: 11)
!2762 = distinct !DILexicalBlock(scope: !2756, file: !93, line: 538, column: 15)
!2763 = !DILocation(line: 538, column: 11, scope: !2762)
!2764 = !DILocation(line: 538, column: 9, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !93, line: 538, column: 32)
!2766 = !DILocalVariable(name: "sum", scope: !2640, file: !93, line: 475, type: !13)
!2767 = !DILocation(line: 545, column: 34, scope: !2762)
!2768 = !DILocation(line: 545, column: 19, scope: !2762)
!2769 = !DILocalVariable(name: "error_val", scope: !2640, file: !93, line: 477, type: !13)
!2770 = !DILocalVariable(name: "j", scope: !2640, file: !93, line: 474, type: !13)
!2771 = !DILocation(line: 547, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !93, line: 549, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2762, file: !93, line: 548, column: 7)
!2774 = !DILocation(line: 0, scope: !2762)
!2775 = !DILocation(line: 547, column: 17, scope: !2772)
!2776 = !DILocation(line: 547, column: 18, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !93, line: 547, column: 13)
!2778 = distinct !DILexicalBlock(scope: !2772, file: !93, line: 547, column: 17)
!2779 = !DILocation(line: 547, column: 13, scope: !2778)
!2780 = !DILocation(line: 547, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !93, line: 547, column: 41)
!2782 = !DILocation(line: 549, column: 52, scope: !2778)
!2783 = !DILocation(line: 549, column: 30, scope: !2778)
!2784 = !DILocation(line: 549, column: 17, scope: !2778)
!2785 = !DILocation(line: 549, column: 73, scope: !2778)
!2786 = !DILocation(line: 549, column: 60, scope: !2778)
!2787 = !DILocation(line: 549, column: 58, scope: !2778)
!2788 = !DILocation(line: 549, column: 114, scope: !2778)
!2789 = !DILocation(line: 549, column: 91, scope: !2778)
!2790 = !DILocation(line: 549, column: 81, scope: !2778)
!2791 = !DILocation(line: 549, column: 79, scope: !2778)
!2792 = !DILocation(line: 549, column: 13, scope: !2778)
!2793 = !DILocation(line: 547, column: 11, scope: !2778)
!2794 = distinct !{!2794, !2771, !2795}
!2795 = !DILocation(line: 548, column: 7, scope: !2772)
!2796 = !DILocation(line: 550, column: 7, scope: !2772)
!2797 = !DILocation(line: 553, column: 48, scope: !2762)
!2798 = !DILocation(line: 553, column: 19, scope: !2762)
!2799 = !DILocation(line: 553, column: 54, scope: !2762)
!2800 = !DILocalVariable(name: "outval", scope: !2640, file: !93, line: 476, type: !13)
!2801 = !DILocation(line: 554, column: 14, scope: !2762)
!2802 = !DILocation(line: 555, column: 39, scope: !2762)
!2803 = !DILocation(line: 555, column: 26, scope: !2762)
!2804 = !DILocation(line: 555, column: 24, scope: !2762)
!2805 = !DILocation(line: 555, column: 45, scope: !2762)
!2806 = !DILocation(line: 556, column: 31, scope: !2762)
!2807 = !DILocation(line: 556, column: 24, scope: !2762)
!2808 = !DILocation(line: 556, column: 57, scope: !2762)
!2809 = !DILocation(line: 556, column: 50, scope: !2762)
!2810 = !DILocation(line: 558, column: 42, scope: !2762)
!2811 = !DILocation(line: 558, column: 20, scope: !2762)
!2812 = !DILocation(line: 558, column: 48, scope: !2762)
!2813 = !DILocation(line: 560, column: 21, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2762, file: !93, line: 560, column: 11)
!2815 = !DILocation(line: 560, column: 11, scope: !2762)
!2816 = !DILocation(line: 562, column: 44, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !93, line: 560, column: 26)
!2818 = !DILocalVariable(name: "predictor_num", scope: !2640, file: !93, line: 478, type: !13)
!2819 = !DILocation(line: 564, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !93, line: 564, column: 9)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !93, line: 563, column: 9)
!2822 = !DILocation(line: 0, scope: !2817)
!2823 = !DILocation(line: 564, column: 19, scope: !2820)
!2824 = !DILocation(line: 564, column: 29, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !93, line: 564, column: 15)
!2826 = distinct !DILexicalBlock(scope: !2820, file: !93, line: 564, column: 19)
!2827 = !DILocation(line: 564, column: 15, scope: !2826)
!2828 = !DILocation(line: 564, column: 30, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !93, line: 564, column: 17)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !93, line: 564, column: 35)
!2831 = !DILocation(line: 564, column: 17, scope: !2830)
!2832 = !DILocation(line: 564, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !93, line: 564, column: 36)
!2834 = !DILocation(line: 566, column: 11, scope: !2830)
!2835 = !DILocation(line: 564, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2825, file: !93, line: 566, column: 18)
!2837 = !DILocation(line: 566, column: 34, scope: !2826)
!2838 = !DILocation(line: 566, column: 21, scope: !2826)
!2839 = !DILocation(line: 566, column: 76, scope: !2826)
!2840 = !DILocation(line: 566, column: 54, scope: !2826)
!2841 = !DILocation(line: 566, column: 41, scope: !2826)
!2842 = !DILocation(line: 566, column: 39, scope: !2826)
!2843 = !DILocalVariable(name: "val___0", scope: !2640, file: !93, line: 479, type: !13)
!2844 = !DILocation(line: 567, column: 23, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2826, file: !93, line: 567, column: 15)
!2846 = !DILocation(line: 567, column: 15, scope: !2826)
!2847 = !DILocalVariable(name: "tmp___0", scope: !2640, file: !93, line: 482, type: !13)
!2848 = !DILocation(line: 568, column: 11, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !93, line: 567, column: 28)
!2850 = !DILocation(line: 567, column: 25, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !93, line: 567, column: 17)
!2852 = distinct !DILexicalBlock(scope: !2845, file: !93, line: 568, column: 18)
!2853 = !DILocation(line: 567, column: 17, scope: !2852)
!2854 = !DILocalVariable(name: "tmp", scope: !2640, file: !93, line: 481, type: !13)
!2855 = !DILocation(line: 568, column: 13, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !93, line: 567, column: 30)
!2857 = !DILocation(line: 0, scope: !2851)
!2858 = !DILocation(line: 0, scope: !2845)
!2859 = !DILocalVariable(name: "sign", scope: !2640, file: !93, line: 480, type: !13)
!2860 = !DILocation(line: 569, column: 93, scope: !2826)
!2861 = !DILocation(line: 569, column: 70, scope: !2826)
!2862 = !DILocation(line: 569, column: 64, scope: !2826)
!2863 = !DILocation(line: 569, column: 110, scope: !2826)
!2864 = !DILocation(line: 569, column: 53, scope: !2826)
!2865 = !DILocation(line: 569, column: 34, scope: !2826)
!2866 = !DILocation(line: 569, column: 51, scope: !2826)
!2867 = !DILocation(line: 571, column: 19, scope: !2826)
!2868 = !DILocation(line: 573, column: 33, scope: !2826)
!2869 = !DILocation(line: 573, column: 84, scope: !2826)
!2870 = !DILocation(line: 573, column: 62, scope: !2826)
!2871 = !DILocation(line: 573, column: 21, scope: !2826)
!2872 = !DILocation(line: 576, column: 25, scope: !2826)
!2873 = distinct !{!2873, !2819, !2874}
!2874 = !DILocation(line: 577, column: 9, scope: !2820)
!2875 = !DILocation(line: 579, column: 9, scope: !2820)
!2876 = !DILocation(line: 582, column: 7, scope: !2817)
!2877 = !DILocation(line: 579, column: 21, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2814, file: !93, line: 579, column: 11)
!2879 = !DILocation(line: 579, column: 11, scope: !2814)
!2880 = !DILocation(line: 581, column: 48, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !93, line: 579, column: 26)
!2882 = !DILocalVariable(name: "predictor_num___0", scope: !2640, file: !93, line: 483, type: !13)
!2883 = !DILocation(line: 583, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !93, line: 583, column: 9)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !93, line: 582, column: 9)
!2886 = !DILocation(line: 0, scope: !2881)
!2887 = !DILocation(line: 583, column: 19, scope: !2884)
!2888 = !DILocation(line: 583, column: 33, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !93, line: 583, column: 15)
!2890 = distinct !DILexicalBlock(scope: !2884, file: !93, line: 583, column: 19)
!2891 = !DILocation(line: 583, column: 15, scope: !2890)
!2892 = !DILocation(line: 583, column: 30, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !93, line: 583, column: 17)
!2894 = distinct !DILexicalBlock(scope: !2889, file: !93, line: 583, column: 39)
!2895 = !DILocation(line: 583, column: 17, scope: !2894)
!2896 = !DILocation(line: 583, column: 15, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !93, line: 583, column: 36)
!2898 = !DILocation(line: 585, column: 11, scope: !2894)
!2899 = !DILocation(line: 583, column: 13, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2889, file: !93, line: 585, column: 18)
!2901 = !DILocation(line: 585, column: 34, scope: !2890)
!2902 = !DILocation(line: 585, column: 21, scope: !2890)
!2903 = !DILocation(line: 585, column: 76, scope: !2890)
!2904 = !DILocation(line: 585, column: 54, scope: !2890)
!2905 = !DILocation(line: 585, column: 41, scope: !2890)
!2906 = !DILocation(line: 585, column: 39, scope: !2890)
!2907 = !DILocalVariable(name: "val___1", scope: !2640, file: !93, line: 484, type: !13)
!2908 = !DILocation(line: 586, column: 23, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2890, file: !93, line: 586, column: 15)
!2910 = !DILocation(line: 586, column: 15, scope: !2890)
!2911 = !DILocalVariable(name: "tmp___2", scope: !2640, file: !93, line: 487, type: !13)
!2912 = !DILocation(line: 587, column: 11, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !93, line: 586, column: 28)
!2914 = !DILocation(line: 586, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !93, line: 586, column: 17)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !93, line: 587, column: 18)
!2917 = !DILocation(line: 586, column: 17, scope: !2916)
!2918 = !DILocalVariable(name: "tmp___1", scope: !2640, file: !93, line: 486, type: !13)
!2919 = !DILocation(line: 587, column: 13, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !93, line: 586, column: 30)
!2921 = !DILocation(line: 0, scope: !2915)
!2922 = !DILocation(line: 0, scope: !2909)
!2923 = !DILocation(line: 586, column: 22, scope: !2890)
!2924 = !DILocalVariable(name: "sign___0", scope: !2640, file: !93, line: 485, type: !13)
!2925 = !DILocation(line: 588, column: 97, scope: !2890)
!2926 = !DILocation(line: 588, column: 74, scope: !2890)
!2927 = !DILocation(line: 588, column: 68, scope: !2890)
!2928 = !DILocation(line: 588, column: 118, scope: !2890)
!2929 = !DILocation(line: 588, column: 57, scope: !2890)
!2930 = !DILocation(line: 588, column: 34, scope: !2890)
!2931 = !DILocation(line: 588, column: 55, scope: !2890)
!2932 = !DILocation(line: 590, column: 19, scope: !2890)
!2933 = !DILocation(line: 592, column: 33, scope: !2890)
!2934 = !DILocation(line: 592, column: 84, scope: !2890)
!2935 = !DILocation(line: 592, column: 62, scope: !2890)
!2936 = !DILocation(line: 592, column: 21, scope: !2890)
!2937 = !DILocation(line: 595, column: 29, scope: !2890)
!2938 = distinct !{!2938, !2883, !2939}
!2939 = !DILocation(line: 596, column: 9, scope: !2884)
!2940 = !DILocation(line: 598, column: 9, scope: !2884)
!2941 = !DILocation(line: 601, column: 7, scope: !2881)
!2942 = !DILocation(line: 599, column: 18, scope: !2762)
!2943 = !DILocation(line: 538, column: 9, scope: !2762)
!2944 = distinct !{!2944, !2755, !2945}
!2945 = !DILocation(line: 539, column: 5, scope: !2756)
!2946 = !DILocation(line: 541, column: 5, scope: !2756)
!2947 = !DILocation(line: 544, column: 3, scope: !2754)
!2948 = !DILocation(line: 602, column: 3, scope: !2652)
!2949 = !DILocation(line: 604, column: 1, scope: !2640)
!2950 = distinct !DISubprogram(name: "create_alac", scope: !93, file: !93, line: 1043, type: !2951, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!89, !13, !13}
!2953 = !DILocalVariable(name: "samplesize", arg: 1, scope: !2950, file: !93, line: 1043, type: !13)
!2954 = !DILocation(line: 0, scope: !2950)
!2955 = !DILocalVariable(name: "numchannels", arg: 2, scope: !2950, file: !93, line: 1043, type: !13)
!2956 = !DILocation(line: 1045, column: 9, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !93, line: 1050, column: 3)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !93, line: 1049, column: 3)
!2959 = distinct !DILexicalBlock(scope: !2950, file: !93, line: 1048, column: 3)
!2960 = !DILocalVariable(name: "tmp", scope: !2950, file: !93, line: 1046, type: !14)
!2961 = !DILocation(line: 1045, column: 13, scope: !2958)
!2962 = !DILocalVariable(name: "newfile", scope: !2950, file: !93, line: 1045, type: !89)
!2963 = !DILocation(line: 1047, column: 12, scope: !2958)
!2964 = !DILocation(line: 1047, column: 23, scope: !2958)
!2965 = !DILocation(line: 1048, column: 12, scope: !2958)
!2966 = !DILocation(line: 1048, column: 24, scope: !2958)
!2967 = !DILocation(line: 1049, column: 41, scope: !2958)
!2968 = !DILocation(line: 1049, column: 46, scope: !2958)
!2969 = !DILocation(line: 1049, column: 12, scope: !2958)
!2970 = !DILocation(line: 1049, column: 27, scope: !2958)
!2971 = !DILocation(line: 1051, column: 3, scope: !2959)
!2972 = distinct !DISubprogram(name: "stream_read_uint32", scope: !126, file: !126, line: 80, type: !2973, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!6, !122}
!2975 = !DILocalVariable(name: "stream", arg: 1, scope: !2972, file: !126, line: 80, type: !122)
!2976 = !DILocation(line: 0, scope: !2972)
!2977 = !DILocalVariable(name: "v", scope: !2972, file: !126, line: 82, type: !6)
!2978 = !DILocation(line: 82, column: 12, scope: !2972)
!2979 = !DILocation(line: 83, column: 35, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !126, line: 86, column: 3)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !126, line: 85, column: 3)
!2982 = distinct !DILexicalBlock(scope: !2972, file: !126, line: 84, column: 3)
!2983 = !DILocation(line: 83, column: 3, scope: !2980)
!2984 = !DILocation(line: 84, column: 15, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2982, file: !126, line: 84, column: 7)
!2986 = !DILocation(line: 84, column: 7, scope: !2985)
!2987 = !DILocation(line: 84, column: 7, scope: !2982)
!2988 = !DILocation(line: 84, column: 11, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !126, line: 84, column: 9)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !126, line: 84, column: 26)
!2991 = !DILocation(line: 84, column: 9, scope: !2990)
!2992 = !DILocation(line: 84, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !126, line: 84, column: 27)
!2994 = !DILocation(line: 84, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2989, file: !126, line: 85, column: 12)
!2996 = !DILocation(line: 86, column: 3, scope: !2990)
!2997 = !DILocation(line: 84, column: 17, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2985, file: !126, line: 84, column: 7)
!2999 = !DILocation(line: 84, column: 9, scope: !2998)
!3000 = !DILocation(line: 84, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !126, line: 84, column: 9)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !126, line: 84, column: 28)
!3003 = !DILocation(line: 84, column: 9, scope: !3002)
!3004 = !DILocation(line: 84, column: 25, scope: !3001)
!3005 = !DILocation(line: 87, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !126, line: 87, column: 7)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !126, line: 86, column: 7)
!3008 = distinct !DILexicalBlock(scope: !3001, file: !126, line: 84, column: 25)
!3009 = !DILocation(line: 87, column: 17, scope: !3006)
!3010 = !DILocation(line: 87, column: 17, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !126, line: 87, column: 17)
!3012 = !DILocation(line: 87, column: 19, scope: !3011)
!3013 = !DILocation(line: 87, column: 27, scope: !3011)
!3014 = !DILocation(line: 87, column: 38, scope: !3011)
!3015 = !DILocation(line: 87, column: 40, scope: !3011)
!3016 = !DILocation(line: 87, column: 50, scope: !3011)
!3017 = !DILocation(line: 87, column: 34, scope: !3011)
!3018 = !DILocation(line: 87, column: 61, scope: !3011)
!3019 = !DILocation(line: 87, column: 63, scope: !3011)
!3020 = !DILocation(line: 87, column: 76, scope: !3011)
!3021 = !DILocation(line: 87, column: 57, scope: !3011)
!3022 = !DILocation(line: 87, column: 87, scope: !3011)
!3023 = !DILocation(line: 87, column: 89, scope: !3011)
!3024 = !DILocation(line: 87, column: 104, scope: !3011)
!3025 = !DILocation(line: 87, column: 83, scope: !3011)
!3026 = !DILocation(line: 87, column: 11, scope: !3011)
!3027 = !DILocation(line: 87, column: 9, scope: !3011)
!3028 = !DILocation(line: 90, column: 7, scope: !3006)
!3029 = !DILocation(line: 93, column: 5, scope: !3008)
!3030 = !DILocation(line: 94, column: 3, scope: !3002)
!3031 = !DILocation(line: 89, column: 11, scope: !2982)
!3032 = !DILocation(line: 89, column: 3, scope: !2982)
!3033 = distinct !DISubprogram(name: "stream_eof", scope: !126, file: !126, line: 142, type: !3034, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!13, !122}
!3036 = !DILocalVariable(name: "stream", arg: 1, scope: !3033, file: !126, line: 142, type: !122)
!3037 = !DILocation(line: 0, scope: !3033)
!3038 = !DILocation(line: 144, column: 19, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3033, file: !126, line: 146, column: 3)
!3040 = !DILocation(line: 144, column: 3, scope: !3039)
!3041 = distinct !DISubprogram(name: "read_chunk_ftyp", scope: !118, file: !118, line: 50, type: !3042, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !116, !15}
!3044 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3041, file: !118, line: 50, type: !116)
!3045 = !DILocation(line: 0, scope: !3041)
!3046 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3041, file: !118, line: 50, type: !15)
!3047 = !DILocalVariable(name: "__cil_tmp6", scope: !3041, file: !118, line: 55, type: !25)
!3048 = !DILocation(line: 55, column: 9, scope: !3041)
!3049 = !DILocation(line: 54, column: 30, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !118, line: 58, column: 3)
!3051 = distinct !DILexicalBlock(scope: !3041, file: !118, line: 57, column: 3)
!3052 = !DILocalVariable(name: "size_remaining", scope: !3041, file: !118, line: 54, type: !15)
!3053 = !DILocation(line: 56, column: 38, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !118, line: 55, column: 3)
!3055 = !DILocation(line: 56, column: 10, scope: !3054)
!3056 = !DILocalVariable(name: "type", scope: !3041, file: !118, line: 52, type: !80)
!3057 = !DILocation(line: 57, column: 18, scope: !3050)
!3058 = !DILocation(line: 58, column: 12, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3051, file: !118, line: 58, column: 7)
!3060 = !DILocation(line: 58, column: 7, scope: !3051)
!3061 = !DILocation(line: 60, column: 38, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !118, line: 60, column: 5)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !118, line: 59, column: 5)
!3064 = distinct !DILexicalBlock(scope: !3059, file: !118, line: 58, column: 74)
!3065 = !DILocation(line: 60, column: 5, scope: !3062)
!3066 = !DILocation(line: 61, column: 5, scope: !3064)
!3067 = !DILocation(line: 63, column: 43, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !118, line: 64, column: 3)
!3069 = distinct !DILexicalBlock(scope: !3051, file: !118, line: 63, column: 3)
!3070 = !DILocation(line: 63, column: 15, scope: !3068)
!3071 = !DILocalVariable(name: "minor_ver", scope: !3041, file: !118, line: 53, type: !6)
!3072 = !DILocation(line: 64, column: 18, scope: !3069)
!3073 = !DILocation(line: 67, column: 3, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !118, line: 67, column: 3)
!3075 = distinct !DILexicalBlock(scope: !3051, file: !118, line: 66, column: 3)
!3076 = !DILocation(line: 0, scope: !3051)
!3077 = !DILocation(line: 67, column: 13, scope: !3074)
!3078 = !DILocation(line: 67, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !118, line: 67, column: 9)
!3080 = distinct !DILexicalBlock(scope: !3074, file: !118, line: 67, column: 13)
!3081 = !DILocation(line: 67, column: 9, scope: !3080)
!3082 = !DILocation(line: 67, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !118, line: 67, column: 27)
!3084 = !DILocation(line: 70, column: 33, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !118, line: 70, column: 5)
!3086 = distinct !DILexicalBlock(scope: !3080, file: !118, line: 69, column: 5)
!3087 = !DILocation(line: 70, column: 5, scope: !3085)
!3088 = !DILocation(line: 71, column: 20, scope: !3086)
!3089 = distinct !{!3089, !3073, !3090}
!3090 = !DILocation(line: 73, column: 3, scope: !3074)
!3091 = !DILocation(line: 75, column: 3, scope: !3074)
!3092 = !DILocation(line: 73, column: 3, scope: !3051)
!3093 = !DILocation(line: 75, column: 1, scope: !3041)
!3094 = distinct !DISubprogram(name: "read_chunk_moov", scope: !118, file: !118, line: 569, type: !3095, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!13, !116, !15}
!3097 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3094, file: !118, line: 569, type: !116)
!3098 = !DILocation(line: 0, scope: !3094)
!3099 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3094, file: !118, line: 569, type: !15)
!3100 = !DILocalVariable(name: "__cil_tmp7", scope: !3094, file: !118, line: 575, type: !25)
!3101 = !DILocation(line: 575, column: 9, scope: !3094)
!3102 = !DILocalVariable(name: "__cil_tmp8", scope: !3094, file: !118, line: 576, type: !25)
!3103 = !DILocation(line: 576, column: 9, scope: !3094)
!3104 = !DILocalVariable(name: "__cil_tmp9", scope: !3094, file: !118, line: 577, type: !25)
!3105 = !DILocation(line: 577, column: 9, scope: !3094)
!3106 = !DILocation(line: 571, column: 30, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3094, file: !118, line: 579, column: 3)
!3108 = !DILocalVariable(name: "size_remaining", scope: !3094, file: !118, line: 571, type: !15)
!3109 = !DILocation(line: 573, column: 3, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !118, line: 573, column: 3)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !118, line: 572, column: 3)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocation(line: 573, column: 13, scope: !3110)
!3114 = !DILocation(line: 573, column: 11, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !118, line: 573, column: 9)
!3116 = distinct !DILexicalBlock(scope: !3110, file: !118, line: 573, column: 13)
!3117 = !DILocation(line: 573, column: 9, scope: !3116)
!3118 = !DILocation(line: 573, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !118, line: 573, column: 27)
!3120 = !DILocation(line: 578, column: 49, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !118, line: 576, column: 5)
!3122 = distinct !DILexicalBlock(scope: !3116, file: !118, line: 575, column: 5)
!3123 = !DILocation(line: 578, column: 21, scope: !3121)
!3124 = !DILocalVariable(name: "sub_chunk_len", scope: !3094, file: !118, line: 572, type: !15)
!3125 = !DILocation(line: 579, column: 23, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3116, file: !118, line: 579, column: 9)
!3127 = !DILocation(line: 579, column: 9, scope: !3116)
!3128 = !DILocation(line: 581, column: 40, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !118, line: 581, column: 7)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !118, line: 580, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !118, line: 579, column: 30)
!3132 = !DILocation(line: 581, column: 7, scope: !3129)
!3133 = !DILocation(line: 582, column: 7, scope: !3131)
!3134 = !DILocation(line: 579, column: 23, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3126, file: !118, line: 579, column: 9)
!3136 = !DILocation(line: 579, column: 9, scope: !3126)
!3137 = !DILocation(line: 581, column: 40, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !118, line: 581, column: 7)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !118, line: 580, column: 7)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !118, line: 579, column: 41)
!3141 = !DILocation(line: 581, column: 7, scope: !3138)
!3142 = !DILocation(line: 582, column: 7, scope: !3140)
!3143 = !DILocation(line: 585, column: 48, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !118, line: 585, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3116, file: !118, line: 584, column: 5)
!3146 = !DILocation(line: 585, column: 20, scope: !3144)
!3147 = !DILocalVariable(name: "sub_chunk_id", scope: !3094, file: !118, line: 573, type: !80)
!3148 = !DILocation(line: 589, column: 22, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 589, column: 9)
!3150 = distinct !DILexicalBlock(scope: !3116, file: !118, line: 588, column: 5)
!3151 = !DILocation(line: 589, column: 9, scope: !3150)
!3152 = !DILocation(line: 589, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !118, line: 589, column: 88)
!3154 = !DILocation(line: 592, column: 22, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 592, column: 9)
!3156 = !DILocation(line: 592, column: 9, scope: !3150)
!3157 = !DILocation(line: 592, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !118, line: 592, column: 87)
!3159 = !DILocation(line: 596, column: 22, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 596, column: 9)
!3161 = !DILocation(line: 596, column: 9, scope: !3150)
!3162 = !DILocation(line: 596, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !118, line: 596, column: 87)
!3164 = !DILocation(line: 599, column: 22, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 599, column: 9)
!3166 = !DILocation(line: 599, column: 9, scope: !3150)
!3167 = !DILocation(line: 599, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3165, file: !118, line: 599, column: 88)
!3169 = !DILocation(line: 602, column: 22, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 602, column: 9)
!3171 = !DILocation(line: 602, column: 9, scope: !3150)
!3172 = !DILocation(line: 602, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !118, line: 602, column: 88)
!3174 = !DILocation(line: 605, column: 5, scope: !3150)
!3175 = !DILocation(line: 590, column: 5, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !118, line: 608, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 607, column: 5)
!3178 = !DILocation(line: 591, column: 5, scope: !3150)
!3179 = !DILocation(line: 593, column: 11, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !118, line: 594, column: 5)
!3181 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 593, column: 5)
!3182 = !DILocalVariable(name: "tmp", scope: !3094, file: !118, line: 574, type: !13)
!3183 = !DILocation(line: 593, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 593, column: 9)
!3185 = !DILocation(line: 593, column: 9, scope: !3150)
!3186 = !DILocation(line: 594, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !118, line: 593, column: 19)
!3188 = !DILocation(line: 595, column: 5, scope: !3150)
!3189 = !DILocation(line: 597, column: 5, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !118, line: 598, column: 5)
!3191 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 597, column: 5)
!3192 = !DILocation(line: 598, column: 5, scope: !3150)
!3193 = !DILocation(line: 600, column: 5, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !118, line: 601, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 600, column: 5)
!3196 = !DILocation(line: 601, column: 5, scope: !3150)
!3197 = !DILocation(line: 603, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !118, line: 604, column: 5)
!3199 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 603, column: 5)
!3200 = !DILocation(line: 604, column: 5, scope: !3150)
!3201 = !DILocation(line: 606, column: 38, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !118, line: 607, column: 5)
!3203 = distinct !DILexicalBlock(scope: !3150, file: !118, line: 606, column: 5)
!3204 = !DILocation(line: 607, column: 51, scope: !3202)
!3205 = !DILocation(line: 607, column: 20, scope: !3202)
!3206 = !DILocation(line: 607, column: 13, scope: !3202)
!3207 = !DILocation(line: 607, column: 98, scope: !3202)
!3208 = !DILocation(line: 607, column: 67, scope: !3202)
!3209 = !DILocation(line: 607, column: 60, scope: !3202)
!3210 = !DILocation(line: 608, column: 51, scope: !3202)
!3211 = !DILocation(line: 608, column: 20, scope: !3202)
!3212 = !DILocation(line: 608, column: 13, scope: !3202)
!3213 = !DILocation(line: 608, column: 66, scope: !3202)
!3214 = !DILocation(line: 608, column: 59, scope: !3202)
!3215 = !DILocation(line: 606, column: 5, scope: !3202)
!3216 = !DILocation(line: 608, column: 5, scope: !3150)
!3217 = !DILocation(line: 611, column: 20, scope: !3116)
!3218 = distinct !{!3218, !3109, !3219}
!3219 = !DILocation(line: 612, column: 3, scope: !3110)
!3220 = !DILocation(line: 614, column: 3, scope: !3110)
!3221 = !DILocation(line: 614, column: 3, scope: !3107)
!3222 = !DILocation(line: 616, column: 1, scope: !3094)
!3223 = distinct !DISubprogram(name: "set_saved_mdat", scope: !118, file: !118, line: 636, type: !3224, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!13, !116}
!3226 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3223, file: !118, line: 636, type: !116)
!3227 = !DILocation(line: 0, scope: !3223)
!3228 = !DILocalVariable(name: "__cil_tmp3", scope: !3223, file: !118, line: 639, type: !25)
!3229 = !DILocation(line: 639, column: 9, scope: !3223)
!3230 = !DILocalVariable(name: "__cil_tmp4", scope: !3223, file: !118, line: 640, type: !25)
!3231 = !DILocation(line: 640, column: 9, scope: !3223)
!3232 = !DILocation(line: 638, column: 16, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !118, line: 638, column: 7)
!3234 = distinct !DILexicalBlock(scope: !3223, file: !118, line: 642, column: 3)
!3235 = !DILocation(line: 638, column: 31, scope: !3233)
!3236 = !DILocation(line: 638, column: 7, scope: !3234)
!3237 = !DILocation(line: 640, column: 38, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !118, line: 640, column: 5)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !118, line: 639, column: 5)
!3240 = distinct !DILexicalBlock(scope: !3233, file: !118, line: 638, column: 39)
!3241 = !DILocation(line: 640, column: 5, scope: !3238)
!3242 = !DILocation(line: 641, column: 5, scope: !3240)
!3243 = !DILocation(line: 644, column: 32, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !118, line: 644, column: 3)
!3245 = distinct !DILexicalBlock(scope: !3234, file: !118, line: 643, column: 3)
!3246 = !DILocation(line: 644, column: 49, scope: !3244)
!3247 = !DILocation(line: 644, column: 9, scope: !3244)
!3248 = !DILocalVariable(name: "tmp", scope: !3223, file: !118, line: 638, type: !13)
!3249 = !DILocation(line: 644, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3234, file: !118, line: 644, column: 7)
!3251 = !DILocation(line: 644, column: 7, scope: !3234)
!3252 = !DILocation(line: 646, column: 38, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !118, line: 646, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !118, line: 645, column: 5)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !118, line: 644, column: 12)
!3256 = !DILocation(line: 646, column: 5, scope: !3253)
!3257 = !DILocation(line: 647, column: 5, scope: !3255)
!3258 = !DILocation(line: 650, column: 3, scope: !3234)
!3259 = !DILocation(line: 0, scope: !3234)
!3260 = !DILocation(line: 652, column: 1, scope: !3223)
!3261 = distinct !DISubprogram(name: "read_chunk_mdat", scope: !118, file: !118, line: 617, type: !3262, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !116, !15, !13}
!3264 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3261, file: !118, line: 617, type: !116)
!3265 = !DILocation(line: 0, scope: !3261)
!3266 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3261, file: !118, line: 617, type: !15)
!3267 = !DILocalVariable(name: "skip_mdat", arg: 3, scope: !3261, file: !118, line: 617, type: !13)
!3268 = !DILocation(line: 619, column: 30, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !118, line: 621, column: 3)
!3270 = !DILocalVariable(name: "size_remaining", scope: !3261, file: !118, line: 619, type: !15)
!3271 = !DILocation(line: 621, column: 22, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !118, line: 621, column: 7)
!3273 = !DILocation(line: 621, column: 7, scope: !3269)
!3274 = !DILocation(line: 621, column: 5, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !118, line: 621, column: 29)
!3276 = !DILocation(line: 623, column: 13, scope: !3269)
!3277 = !DILocation(line: 623, column: 19, scope: !3269)
!3278 = !DILocation(line: 623, column: 28, scope: !3269)
!3279 = !DILocation(line: 624, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3269, file: !118, line: 624, column: 7)
!3281 = !DILocation(line: 624, column: 7, scope: !3269)
!3282 = !DILocation(line: 626, column: 52, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !118, line: 626, column: 5)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !118, line: 625, column: 5)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !118, line: 624, column: 18)
!3286 = !DILocation(line: 626, column: 31, scope: !3283)
!3287 = !DILocation(line: 626, column: 14, scope: !3283)
!3288 = !DILocation(line: 626, column: 29, scope: !3283)
!3289 = !DILocation(line: 627, column: 26, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3284, file: !118, line: 628, column: 5)
!3291 = !DILocation(line: 627, column: 5, scope: !3290)
!3292 = !DILocation(line: 630, column: 3, scope: !3285)
!3293 = !DILocation(line: 634, column: 3, scope: !3269)
!3294 = !DILocation(line: 636, column: 1, scope: !3261)
!3295 = distinct !DISubprogram(name: "stream_skip", scope: !126, file: !126, line: 131, type: !3296, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !122, !15}
!3298 = !DILocalVariable(name: "stream", arg: 1, scope: !3295, file: !126, line: 131, type: !122)
!3299 = !DILocation(line: 0, scope: !3295)
!3300 = !DILocalVariable(name: "skip", arg: 2, scope: !3295, file: !126, line: 131, type: !15)
!3301 = !DILocation(line: 133, column: 23, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !126, line: 140, column: 3)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !126, line: 139, column: 3)
!3304 = distinct !DILexicalBlock(scope: !3295, file: !126, line: 138, column: 3)
!3305 = !DILocation(line: 133, column: 26, scope: !3302)
!3306 = !DILocation(line: 133, column: 9, scope: !3302)
!3307 = !DILocalVariable(name: "tmp", scope: !3295, file: !126, line: 133, type: !13)
!3308 = !DILocation(line: 133, column: 11, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !126, line: 133, column: 7)
!3310 = !DILocation(line: 133, column: 7, scope: !3304)
!3311 = !DILocation(line: 133, column: 5, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !126, line: 133, column: 17)
!3313 = !DILocation(line: 134, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !126, line: 136, column: 3)
!3315 = distinct !DILexicalBlock(scope: !3304, file: !126, line: 135, column: 3)
!3316 = !DILocalVariable(name: "tmp___1", scope: !3295, file: !126, line: 136, type: !1939)
!3317 = !DILocation(line: 134, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3304, file: !126, line: 134, column: 7)
!3319 = !DILocation(line: 134, column: 16, scope: !3318)
!3320 = !DILocation(line: 134, column: 7, scope: !3304)
!3321 = !DILocation(line: 136, column: 15, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !126, line: 136, column: 5)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !126, line: 135, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !126, line: 134, column: 23)
!3325 = !DILocalVariable(name: "tmp___0", scope: !3295, file: !126, line: 135, type: !14)
!3326 = !DILocalVariable(name: "buffer", scope: !3295, file: !126, line: 134, type: !25)
!3327 = !DILocation(line: 137, column: 5, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3323, file: !126, line: 137, column: 5)
!3329 = !DILocation(line: 138, column: 5, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3323, file: !126, line: 139, column: 5)
!3331 = !DILocation(line: 141, column: 3, scope: !3324)
!3332 = !DILocation(line: 140, column: 3, scope: !3304)
!3333 = !DILocation(line: 142, column: 1, scope: !3295)
!3334 = distinct !DISubprogram(name: "stream_read", scope: !126, file: !126, line: 58, type: !3335, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !122, !15, !14}
!3337 = !DILocalVariable(name: "stream", arg: 1, scope: !3334, file: !126, line: 58, type: !122)
!3338 = !DILocation(line: 0, scope: !3334)
!3339 = !DILocalVariable(name: "size", arg: 2, scope: !3334, file: !126, line: 58, type: !15)
!3340 = !DILocalVariable(name: "buf", arg: 3, scope: !3334, file: !126, line: 58, type: !14)
!3341 = !DILocation(line: 62, column: 62, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !126, line: 66, column: 3)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !126, line: 65, column: 3)
!3344 = distinct !DILexicalBlock(scope: !3334, file: !126, line: 64, column: 3)
!3345 = !DILocation(line: 62, column: 101, scope: !3342)
!3346 = !DILocation(line: 62, column: 9, scope: !3342)
!3347 = !DILocalVariable(name: "tmp", scope: !3334, file: !126, line: 61, type: !15)
!3348 = !DILocation(line: 62, column: 13, scope: !3343)
!3349 = !DILocalVariable(name: "ret", scope: !3334, file: !126, line: 60, type: !15)
!3350 = !DILocation(line: 63, column: 57, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3343, file: !126, line: 63, column: 3)
!3352 = !DILocation(line: 63, column: 82, scope: !3351)
!3353 = !DILocation(line: 64, column: 52, scope: !3351)
!3354 = !DILocation(line: 63, column: 13, scope: !3351)
!3355 = !DILocalVariable(name: "tmp___0", scope: !3334, file: !126, line: 62, type: !15)
!3356 = !DILocation(line: 63, column: 7, scope: !3343)
!3357 = !DILocation(line: 65, column: 11, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3344, file: !126, line: 65, column: 7)
!3359 = !DILocation(line: 65, column: 7, scope: !3344)
!3360 = !DILocation(line: 65, column: 14, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !126, line: 65, column: 9)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !126, line: 65, column: 18)
!3363 = !DILocation(line: 65, column: 9, scope: !3362)
!3364 = !DILocation(line: 65, column: 15, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3361, file: !126, line: 65, column: 21)
!3366 = !DILocation(line: 65, column: 19, scope: !3365)
!3367 = !DILocation(line: 66, column: 5, scope: !3365)
!3368 = !DILocation(line: 67, column: 3, scope: !3362)
!3369 = !DILocation(line: 66, column: 3, scope: !3344)
!3370 = distinct !DISubprogram(name: "stream_read_int32", scope: !126, file: !126, line: 68, type: !3371, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!78, !122}
!3373 = !DILocalVariable(name: "stream", arg: 1, scope: !3370, file: !126, line: 68, type: !122)
!3374 = !DILocation(line: 0, scope: !3370)
!3375 = !DILocalVariable(name: "v", scope: !3370, file: !126, line: 70, type: !78)
!3376 = !DILocation(line: 70, column: 11, scope: !3370)
!3377 = !DILocation(line: 71, column: 35, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !126, line: 74, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !126, line: 73, column: 3)
!3380 = distinct !DILexicalBlock(scope: !3370, file: !126, line: 72, column: 3)
!3381 = !DILocation(line: 71, column: 3, scope: !3378)
!3382 = !DILocation(line: 72, column: 15, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !126, line: 72, column: 7)
!3384 = !DILocation(line: 72, column: 7, scope: !3383)
!3385 = !DILocation(line: 72, column: 7, scope: !3380)
!3386 = !DILocation(line: 72, column: 11, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !126, line: 72, column: 9)
!3388 = distinct !DILexicalBlock(scope: !3383, file: !126, line: 72, column: 26)
!3389 = !DILocation(line: 72, column: 9, scope: !3388)
!3390 = !DILocation(line: 72, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3387, file: !126, line: 72, column: 27)
!3392 = !DILocation(line: 72, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !126, line: 73, column: 12)
!3394 = !DILocation(line: 74, column: 3, scope: !3388)
!3395 = !DILocation(line: 72, column: 17, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3383, file: !126, line: 72, column: 7)
!3397 = !DILocation(line: 72, column: 9, scope: !3396)
!3398 = !DILocation(line: 72, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !126, line: 72, column: 9)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !126, line: 72, column: 28)
!3401 = !DILocation(line: 72, column: 9, scope: !3400)
!3402 = !DILocation(line: 72, column: 25, scope: !3399)
!3403 = !DILocation(line: 75, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !126, line: 75, column: 7)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !126, line: 74, column: 7)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !126, line: 72, column: 25)
!3407 = !DILocation(line: 75, column: 17, scope: !3404)
!3408 = !DILocation(line: 75, column: 43, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3404, file: !126, line: 75, column: 17)
!3410 = !DILocation(line: 75, column: 45, scope: !3409)
!3411 = !DILocation(line: 75, column: 52, scope: !3409)
!3412 = !DILocation(line: 75, column: 63, scope: !3409)
!3413 = !DILocation(line: 75, column: 65, scope: !3409)
!3414 = !DILocation(line: 75, column: 74, scope: !3409)
!3415 = !DILocation(line: 75, column: 59, scope: !3409)
!3416 = !DILocation(line: 75, column: 85, scope: !3409)
!3417 = !DILocation(line: 75, column: 87, scope: !3409)
!3418 = !DILocation(line: 75, column: 99, scope: !3409)
!3419 = !DILocation(line: 75, column: 81, scope: !3409)
!3420 = !DILocation(line: 75, column: 125, scope: !3409)
!3421 = !DILocation(line: 75, column: 127, scope: !3409)
!3422 = !DILocation(line: 75, column: 142, scope: !3409)
!3423 = !DILocation(line: 75, column: 106, scope: !3409)
!3424 = !DILocation(line: 75, column: 11, scope: !3409)
!3425 = !DILocation(line: 75, column: 9, scope: !3409)
!3426 = !DILocation(line: 78, column: 7, scope: !3404)
!3427 = !DILocation(line: 81, column: 5, scope: !3406)
!3428 = !DILocation(line: 82, column: 3, scope: !3400)
!3429 = !DILocation(line: 77, column: 11, scope: !3380)
!3430 = !DILocation(line: 77, column: 3, scope: !3380)
!3431 = distinct !DISubprogram(name: "stream_read_int16", scope: !126, file: !126, line: 92, type: !3432, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!86, !122}
!3434 = !DILocalVariable(name: "stream", arg: 1, scope: !3431, file: !126, line: 92, type: !122)
!3435 = !DILocation(line: 0, scope: !3431)
!3436 = !DILocalVariable(name: "v", scope: !3431, file: !126, line: 94, type: !86)
!3437 = !DILocation(line: 94, column: 11, scope: !3431)
!3438 = !DILocation(line: 95, column: 35, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !126, line: 98, column: 3)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !126, line: 97, column: 3)
!3441 = distinct !DILexicalBlock(scope: !3431, file: !126, line: 96, column: 3)
!3442 = !DILocation(line: 95, column: 3, scope: !3439)
!3443 = !DILocation(line: 96, column: 15, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !126, line: 96, column: 7)
!3445 = !DILocation(line: 96, column: 7, scope: !3444)
!3446 = !DILocation(line: 96, column: 7, scope: !3441)
!3447 = !DILocation(line: 96, column: 11, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !126, line: 96, column: 9)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !126, line: 96, column: 26)
!3450 = !DILocation(line: 96, column: 9, scope: !3449)
!3451 = !DILocation(line: 96, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3448, file: !126, line: 96, column: 27)
!3453 = !DILocation(line: 96, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3448, file: !126, line: 97, column: 12)
!3455 = !DILocation(line: 98, column: 3, scope: !3449)
!3456 = !DILocation(line: 96, column: 17, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3444, file: !126, line: 96, column: 7)
!3458 = !DILocation(line: 96, column: 9, scope: !3457)
!3459 = !DILocation(line: 96, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !126, line: 96, column: 9)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !126, line: 96, column: 28)
!3462 = !DILocation(line: 96, column: 9, scope: !3461)
!3463 = !DILocation(line: 96, column: 25, scope: !3460)
!3464 = !DILocation(line: 99, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !126, line: 99, column: 7)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !126, line: 98, column: 7)
!3467 = distinct !DILexicalBlock(scope: !3460, file: !126, line: 96, column: 25)
!3468 = !DILocation(line: 99, column: 17, scope: !3465)
!3469 = !DILocation(line: 99, column: 32, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !126, line: 99, column: 17)
!3471 = !DILocation(line: 99, column: 26, scope: !3470)
!3472 = !DILocation(line: 99, column: 34, scope: !3470)
!3473 = !DILocation(line: 99, column: 41, scope: !3470)
!3474 = !DILocation(line: 99, column: 57, scope: !3470)
!3475 = !DILocation(line: 99, column: 51, scope: !3470)
!3476 = !DILocation(line: 99, column: 59, scope: !3470)
!3477 = !DILocation(line: 99, column: 68, scope: !3470)
!3478 = !DILocation(line: 99, column: 47, scope: !3470)
!3479 = !DILocation(line: 99, column: 13, scope: !3470)
!3480 = !DILocation(line: 99, column: 11, scope: !3470)
!3481 = !DILocation(line: 99, column: 9, scope: !3470)
!3482 = !DILocation(line: 102, column: 7, scope: !3465)
!3483 = !DILocation(line: 105, column: 5, scope: !3467)
!3484 = !DILocation(line: 106, column: 3, scope: !3461)
!3485 = !DILocation(line: 101, column: 11, scope: !3441)
!3486 = !DILocation(line: 101, column: 3, scope: !3441)
!3487 = distinct !DISubprogram(name: "stream_read_uint16", scope: !126, file: !126, line: 104, type: !3488, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!9, !122}
!3490 = !DILocalVariable(name: "stream", arg: 1, scope: !3487, file: !126, line: 104, type: !122)
!3491 = !DILocation(line: 0, scope: !3487)
!3492 = !DILocalVariable(name: "v", scope: !3487, file: !126, line: 106, type: !9)
!3493 = !DILocation(line: 106, column: 12, scope: !3487)
!3494 = !DILocation(line: 107, column: 35, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !126, line: 110, column: 3)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !126, line: 109, column: 3)
!3497 = distinct !DILexicalBlock(scope: !3487, file: !126, line: 108, column: 3)
!3498 = !DILocation(line: 107, column: 3, scope: !3495)
!3499 = !DILocation(line: 108, column: 15, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !126, line: 108, column: 7)
!3501 = !DILocation(line: 108, column: 7, scope: !3500)
!3502 = !DILocation(line: 108, column: 7, scope: !3497)
!3503 = !DILocation(line: 108, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !126, line: 108, column: 9)
!3505 = distinct !DILexicalBlock(scope: !3500, file: !126, line: 108, column: 26)
!3506 = !DILocation(line: 108, column: 9, scope: !3505)
!3507 = !DILocation(line: 108, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3504, file: !126, line: 108, column: 27)
!3509 = !DILocation(line: 108, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3504, file: !126, line: 109, column: 12)
!3511 = !DILocation(line: 110, column: 3, scope: !3505)
!3512 = !DILocation(line: 108, column: 17, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3500, file: !126, line: 108, column: 7)
!3514 = !DILocation(line: 108, column: 9, scope: !3513)
!3515 = !DILocation(line: 108, column: 9, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !126, line: 108, column: 9)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !126, line: 108, column: 28)
!3518 = !DILocation(line: 108, column: 9, scope: !3517)
!3519 = !DILocation(line: 108, column: 25, scope: !3516)
!3520 = !DILocation(line: 111, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !126, line: 111, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !126, line: 110, column: 7)
!3523 = distinct !DILexicalBlock(scope: !3516, file: !126, line: 108, column: 25)
!3524 = !DILocation(line: 111, column: 17, scope: !3521)
!3525 = !DILocation(line: 111, column: 33, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !126, line: 111, column: 17)
!3527 = !DILocation(line: 111, column: 27, scope: !3526)
!3528 = !DILocation(line: 111, column: 35, scope: !3526)
!3529 = !DILocation(line: 111, column: 42, scope: !3526)
!3530 = !DILocation(line: 111, column: 58, scope: !3526)
!3531 = !DILocation(line: 111, column: 52, scope: !3526)
!3532 = !DILocation(line: 111, column: 60, scope: !3526)
!3533 = !DILocation(line: 111, column: 69, scope: !3526)
!3534 = !DILocation(line: 111, column: 48, scope: !3526)
!3535 = !DILocation(line: 111, column: 13, scope: !3526)
!3536 = !DILocation(line: 111, column: 11, scope: !3526)
!3537 = !DILocation(line: 111, column: 9, scope: !3526)
!3538 = !DILocation(line: 114, column: 7, scope: !3521)
!3539 = !DILocation(line: 117, column: 5, scope: !3523)
!3540 = !DILocation(line: 118, column: 3, scope: !3517)
!3541 = !DILocation(line: 113, column: 11, scope: !3497)
!3542 = !DILocation(line: 113, column: 3, scope: !3497)
!3543 = distinct !DISubprogram(name: "stream_read_int8", scope: !126, file: !126, line: 116, type: !3544, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!3546, !122}
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 37, baseType: !54)
!3547 = !DILocalVariable(name: "stream", arg: 1, scope: !3543, file: !126, line: 116, type: !122)
!3548 = !DILocation(line: 0, scope: !3543)
!3549 = !DILocalVariable(name: "v", scope: !3543, file: !126, line: 118, type: !3546)
!3550 = !DILocation(line: 118, column: 10, scope: !3543)
!3551 = !DILocation(line: 119, column: 3, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !126, line: 122, column: 3)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !126, line: 121, column: 3)
!3554 = distinct !DILexicalBlock(scope: !3543, file: !126, line: 120, column: 3)
!3555 = !DILocation(line: 120, column: 11, scope: !3554)
!3556 = !DILocation(line: 120, column: 3, scope: !3554)
!3557 = distinct !DISubprogram(name: "stream_read_uint8", scope: !126, file: !126, line: 123, type: !3558, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!84, !122}
!3560 = !DILocalVariable(name: "stream", arg: 1, scope: !3557, file: !126, line: 123, type: !122)
!3561 = !DILocation(line: 0, scope: !3557)
!3562 = !DILocalVariable(name: "v", scope: !3557, file: !126, line: 125, type: !84)
!3563 = !DILocation(line: 125, column: 11, scope: !3557)
!3564 = !DILocation(line: 126, column: 3, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !126, line: 129, column: 3)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !126, line: 128, column: 3)
!3567 = distinct !DILexicalBlock(scope: !3557, file: !126, line: 127, column: 3)
!3568 = !DILocation(line: 127, column: 11, scope: !3567)
!3569 = !DILocation(line: 127, column: 3, scope: !3567)
!3570 = distinct !DISubprogram(name: "stream_tell", scope: !126, file: !126, line: 147, type: !3571, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!51, !122}
!3573 = !DILocalVariable(name: "stream", arg: 1, scope: !3570, file: !126, line: 147, type: !122)
!3574 = !DILocation(line: 0, scope: !3570)
!3575 = !DILocation(line: 149, column: 23, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !126, line: 153, column: 3)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !126, line: 152, column: 3)
!3578 = distinct !DILexicalBlock(scope: !3570, file: !126, line: 151, column: 3)
!3579 = !DILocation(line: 149, column: 9, scope: !3576)
!3580 = !DILocalVariable(name: "tmp", scope: !3570, file: !126, line: 149, type: !51)
!3581 = !DILocation(line: 149, column: 3, scope: !3578)
!3582 = distinct !DISubprogram(name: "stream_setpos", scope: !126, file: !126, line: 152, type: !3583, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!13, !122, !51}
!3585 = !DILocalVariable(name: "stream", arg: 1, scope: !3582, file: !126, line: 152, type: !122)
!3586 = !DILocation(line: 0, scope: !3582)
!3587 = !DILocalVariable(name: "pos", arg: 2, scope: !3582, file: !126, line: 152, type: !51)
!3588 = !DILocation(line: 154, column: 23, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !126, line: 158, column: 3)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !126, line: 157, column: 3)
!3591 = distinct !DILexicalBlock(scope: !3582, file: !126, line: 156, column: 3)
!3592 = !DILocation(line: 154, column: 9, scope: !3589)
!3593 = !DILocalVariable(name: "tmp", scope: !3582, file: !126, line: 154, type: !13)
!3594 = !DILocation(line: 154, column: 3, scope: !3591)
!3595 = distinct !DISubprogram(name: "usage", scope: !162, file: !162, line: 160, type: !315, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3596 = !DILocalVariable(name: "__cil_tmp1", scope: !3595, file: !162, line: 162, type: !25)
!3597 = !DILocation(line: 162, column: 9, scope: !3595)
!3598 = !DILocation(line: 162, column: 36, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !162, line: 166, column: 3)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !162, line: 165, column: 3)
!3601 = distinct !DILexicalBlock(scope: !3595, file: !162, line: 164, column: 3)
!3602 = !DILocation(line: 162, column: 3, scope: !3599)
!3603 = !DILocation(line: 178, column: 3, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !162, line: 164, column: 3)
!3605 = !DILocation(line: 182, column: 1, scope: !3595)
!3606 = distinct !DISubprogram(name: "readbits_16", scope: !93, file: !93, line: 149, type: !1702, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3607 = !DILocalVariable(name: "alac___0", arg: 1, scope: !3606, file: !93, line: 149, type: !89)
!3608 = !DILocation(line: 0, scope: !3606)
!3609 = !DILocalVariable(name: "bits", arg: 2, scope: !3606, file: !93, line: 149, type: !13)
!3610 = !DILocation(line: 154, column: 44, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3606, file: !93, line: 154, column: 3)
!3612 = !DILocation(line: 154, column: 57, scope: !3611)
!3613 = !DILocation(line: 154, column: 32, scope: !3611)
!3614 = !DILocation(line: 154, column: 26, scope: !3611)
!3615 = !DILocation(line: 154, column: 62, scope: !3611)
!3616 = !DILocation(line: 154, column: 90, scope: !3611)
!3617 = !DILocation(line: 154, column: 103, scope: !3611)
!3618 = !DILocation(line: 154, column: 78, scope: !3611)
!3619 = !DILocation(line: 154, column: 72, scope: !3611)
!3620 = !DILocation(line: 154, column: 108, scope: !3611)
!3621 = !DILocation(line: 154, column: 69, scope: !3611)
!3622 = !DILocation(line: 154, column: 135, scope: !3611)
!3623 = !DILocation(line: 154, column: 148, scope: !3611)
!3624 = !DILocation(line: 154, column: 123, scope: !3611)
!3625 = !DILocation(line: 154, column: 117, scope: !3611)
!3626 = !DILocation(line: 154, column: 115, scope: !3611)
!3627 = !DILocalVariable(name: "result", scope: !3606, file: !93, line: 151, type: !6)
!3628 = !DILocation(line: 161, column: 24, scope: !3611)
!3629 = !DILocation(line: 161, column: 10, scope: !3611)
!3630 = !DILocation(line: 163, column: 10, scope: !3611)
!3631 = !DILocation(line: 167, column: 17, scope: !3611)
!3632 = !DILocation(line: 167, column: 10, scope: !3611)
!3633 = !DILocation(line: 169, column: 31, scope: !3611)
!3634 = !DILocation(line: 169, column: 59, scope: !3611)
!3635 = !DILocalVariable(name: "new_accumulator", scope: !3606, file: !93, line: 152, type: !13)
!3636 = !DILocation(line: 172, column: 45, scope: !3611)
!3637 = !DILocation(line: 172, column: 13, scope: !3611)
!3638 = !DILocation(line: 172, column: 26, scope: !3611)
!3639 = !DILocation(line: 175, column: 59, scope: !3611)
!3640 = !DILocation(line: 175, column: 13, scope: !3611)
!3641 = !DILocation(line: 175, column: 41, scope: !3611)
!3642 = !DILocation(line: 177, column: 3, scope: !3611)
!3643 = distinct !DISubprogram(name: "read_chunk_mvhd", scope: !118, file: !118, line: 542, type: !3042, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3644 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3643, file: !118, line: 542, type: !116)
!3645 = !DILocation(line: 0, scope: !3643)
!3646 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3643, file: !118, line: 542, type: !15)
!3647 = !DILocation(line: 545, column: 30, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !118, line: 547, column: 3)
!3649 = distinct !DILexicalBlock(scope: !3643, file: !118, line: 546, column: 3)
!3650 = !DILocalVariable(name: "size_remaining", scope: !3643, file: !118, line: 544, type: !15)
!3651 = !DILocation(line: 547, column: 24, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3648, file: !118, line: 546, column: 3)
!3653 = !DILocation(line: 547, column: 3, scope: !3652)
!3654 = !DILocation(line: 548, column: 3, scope: !3649)
!3655 = distinct !DISubprogram(name: "read_chunk_trak", scope: !118, file: !118, line: 499, type: !3095, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3656 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3655, file: !118, line: 499, type: !116)
!3657 = !DILocation(line: 0, scope: !3655)
!3658 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3655, file: !118, line: 499, type: !15)
!3659 = !DILocalVariable(name: "__cil_tmp7", scope: !3655, file: !118, line: 505, type: !25)
!3660 = !DILocation(line: 505, column: 9, scope: !3655)
!3661 = !DILocalVariable(name: "__cil_tmp8", scope: !3655, file: !118, line: 506, type: !25)
!3662 = !DILocation(line: 506, column: 9, scope: !3655)
!3663 = !DILocalVariable(name: "__cil_tmp9", scope: !3655, file: !118, line: 507, type: !25)
!3664 = !DILocation(line: 507, column: 9, scope: !3655)
!3665 = !DILocation(line: 501, column: 30, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3655, file: !118, line: 509, column: 3)
!3667 = !DILocalVariable(name: "size_remaining", scope: !3655, file: !118, line: 501, type: !15)
!3668 = !DILocation(line: 503, column: 3, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !118, line: 503, column: 3)
!3670 = distinct !DILexicalBlock(scope: !3666, file: !118, line: 502, column: 3)
!3671 = !DILocation(line: 0, scope: !3666)
!3672 = !DILocation(line: 503, column: 13, scope: !3669)
!3673 = !DILocation(line: 503, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !118, line: 503, column: 9)
!3675 = distinct !DILexicalBlock(scope: !3669, file: !118, line: 503, column: 13)
!3676 = !DILocation(line: 503, column: 9, scope: !3675)
!3677 = !DILocation(line: 503, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3674, file: !118, line: 503, column: 27)
!3679 = !DILocation(line: 508, column: 49, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !118, line: 506, column: 5)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !118, line: 505, column: 5)
!3682 = !DILocation(line: 508, column: 21, scope: !3680)
!3683 = !DILocalVariable(name: "sub_chunk_len", scope: !3655, file: !118, line: 502, type: !15)
!3684 = !DILocation(line: 509, column: 23, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3675, file: !118, line: 509, column: 9)
!3686 = !DILocation(line: 509, column: 9, scope: !3675)
!3687 = !DILocation(line: 511, column: 40, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !118, line: 511, column: 7)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !118, line: 510, column: 7)
!3690 = distinct !DILexicalBlock(scope: !3685, file: !118, line: 509, column: 30)
!3691 = !DILocation(line: 511, column: 7, scope: !3688)
!3692 = !DILocation(line: 512, column: 7, scope: !3690)
!3693 = !DILocation(line: 509, column: 23, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3685, file: !118, line: 509, column: 9)
!3695 = !DILocation(line: 509, column: 9, scope: !3685)
!3696 = !DILocation(line: 511, column: 40, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !118, line: 511, column: 7)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !118, line: 510, column: 7)
!3699 = distinct !DILexicalBlock(scope: !3694, file: !118, line: 509, column: 41)
!3700 = !DILocation(line: 511, column: 7, scope: !3697)
!3701 = !DILocation(line: 512, column: 7, scope: !3699)
!3702 = !DILocation(line: 515, column: 48, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !118, line: 515, column: 5)
!3704 = distinct !DILexicalBlock(scope: !3675, file: !118, line: 514, column: 5)
!3705 = !DILocation(line: 515, column: 20, scope: !3703)
!3706 = !DILocalVariable(name: "sub_chunk_id", scope: !3655, file: !118, line: 503, type: !80)
!3707 = !DILocation(line: 519, column: 22, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 519, column: 9)
!3709 = distinct !DILexicalBlock(scope: !3675, file: !118, line: 518, column: 5)
!3710 = !DILocation(line: 519, column: 9, scope: !3709)
!3711 = !DILocation(line: 519, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !118, line: 519, column: 88)
!3713 = !DILocation(line: 522, column: 22, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 522, column: 9)
!3715 = !DILocation(line: 522, column: 9, scope: !3709)
!3716 = !DILocation(line: 522, column: 7, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !118, line: 522, column: 87)
!3718 = !DILocation(line: 526, column: 22, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 526, column: 9)
!3720 = !DILocation(line: 526, column: 9, scope: !3709)
!3721 = !DILocation(line: 526, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !118, line: 526, column: 88)
!3723 = !DILocation(line: 529, column: 5, scope: !3709)
!3724 = !DILocation(line: 520, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !118, line: 532, column: 5)
!3726 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 531, column: 5)
!3727 = !DILocation(line: 521, column: 5, scope: !3709)
!3728 = !DILocation(line: 523, column: 11, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !118, line: 524, column: 5)
!3730 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 523, column: 5)
!3731 = !DILocalVariable(name: "tmp", scope: !3655, file: !118, line: 504, type: !13)
!3732 = !DILocation(line: 523, column: 13, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 523, column: 9)
!3734 = !DILocation(line: 523, column: 9, scope: !3709)
!3735 = !DILocation(line: 524, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !118, line: 523, column: 19)
!3737 = !DILocation(line: 525, column: 5, scope: !3709)
!3738 = !DILocation(line: 527, column: 5, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !118, line: 528, column: 5)
!3740 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 527, column: 5)
!3741 = !DILocation(line: 528, column: 5, scope: !3709)
!3742 = !DILocation(line: 530, column: 38, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !118, line: 531, column: 5)
!3744 = distinct !DILexicalBlock(scope: !3709, file: !118, line: 530, column: 5)
!3745 = !DILocation(line: 531, column: 51, scope: !3743)
!3746 = !DILocation(line: 531, column: 20, scope: !3743)
!3747 = !DILocation(line: 531, column: 13, scope: !3743)
!3748 = !DILocation(line: 531, column: 98, scope: !3743)
!3749 = !DILocation(line: 531, column: 67, scope: !3743)
!3750 = !DILocation(line: 531, column: 60, scope: !3743)
!3751 = !DILocation(line: 532, column: 51, scope: !3743)
!3752 = !DILocation(line: 532, column: 20, scope: !3743)
!3753 = !DILocation(line: 532, column: 13, scope: !3743)
!3754 = !DILocation(line: 532, column: 66, scope: !3743)
!3755 = !DILocation(line: 532, column: 59, scope: !3743)
!3756 = !DILocation(line: 530, column: 5, scope: !3743)
!3757 = !DILocation(line: 532, column: 5, scope: !3709)
!3758 = !DILocation(line: 535, column: 20, scope: !3675)
!3759 = distinct !{!3759, !3668, !3760}
!3760 = !DILocation(line: 536, column: 3, scope: !3669)
!3761 = !DILocation(line: 538, column: 3, scope: !3669)
!3762 = !DILocation(line: 538, column: 3, scope: !3666)
!3763 = !DILocation(line: 540, column: 1, scope: !3655)
!3764 = distinct !DISubprogram(name: "read_chunk_udta", scope: !118, file: !118, line: 551, type: !3042, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3765 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3764, file: !118, line: 551, type: !116)
!3766 = !DILocation(line: 0, scope: !3764)
!3767 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3764, file: !118, line: 551, type: !15)
!3768 = !DILocation(line: 554, column: 30, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !118, line: 556, column: 3)
!3770 = distinct !DILexicalBlock(scope: !3764, file: !118, line: 555, column: 3)
!3771 = !DILocalVariable(name: "size_remaining", scope: !3764, file: !118, line: 553, type: !15)
!3772 = !DILocation(line: 556, column: 24, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3769, file: !118, line: 555, column: 3)
!3774 = !DILocation(line: 556, column: 3, scope: !3773)
!3775 = !DILocation(line: 557, column: 3, scope: !3770)
!3776 = distinct !DISubprogram(name: "read_chunk_elst", scope: !118, file: !118, line: 99, type: !3042, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3777 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3776, file: !118, line: 99, type: !116)
!3778 = !DILocation(line: 0, scope: !3776)
!3779 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3776, file: !118, line: 99, type: !15)
!3780 = !DILocation(line: 102, column: 30, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !118, line: 104, column: 3)
!3782 = distinct !DILexicalBlock(scope: !3776, file: !118, line: 103, column: 3)
!3783 = !DILocalVariable(name: "size_remaining", scope: !3776, file: !118, line: 101, type: !15)
!3784 = !DILocation(line: 104, column: 24, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3781, file: !118, line: 103, column: 3)
!3786 = !DILocation(line: 104, column: 3, scope: !3785)
!3787 = !DILocation(line: 105, column: 3, scope: !3782)
!3788 = distinct !DISubprogram(name: "read_chunk_iods", scope: !118, file: !118, line: 560, type: !3042, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3789 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3788, file: !118, line: 560, type: !116)
!3790 = !DILocation(line: 0, scope: !3788)
!3791 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3788, file: !118, line: 560, type: !15)
!3792 = !DILocation(line: 563, column: 30, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !118, line: 565, column: 3)
!3794 = distinct !DILexicalBlock(scope: !3788, file: !118, line: 564, column: 3)
!3795 = !DILocalVariable(name: "size_remaining", scope: !3788, file: !118, line: 562, type: !15)
!3796 = !DILocation(line: 565, column: 24, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3793, file: !118, line: 564, column: 3)
!3798 = !DILocation(line: 565, column: 3, scope: !3797)
!3799 = !DILocation(line: 566, column: 3, scope: !3794)
!3800 = distinct !DISubprogram(name: "read_chunk_tkhd", scope: !118, file: !118, line: 75, type: !3042, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3801 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3800, file: !118, line: 75, type: !116)
!3802 = !DILocation(line: 0, scope: !3800)
!3803 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3800, file: !118, line: 75, type: !15)
!3804 = !DILocation(line: 78, column: 30, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !118, line: 80, column: 3)
!3806 = distinct !DILexicalBlock(scope: !3800, file: !118, line: 79, column: 3)
!3807 = !DILocalVariable(name: "size_remaining", scope: !3800, file: !118, line: 77, type: !15)
!3808 = !DILocation(line: 80, column: 24, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3805, file: !118, line: 79, column: 3)
!3810 = !DILocation(line: 80, column: 3, scope: !3809)
!3811 = !DILocation(line: 81, column: 3, scope: !3806)
!3812 = distinct !DISubprogram(name: "read_chunk_mdia", scope: !118, file: !118, line: 456, type: !3095, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3813 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3812, file: !118, line: 456, type: !116)
!3814 = !DILocation(line: 0, scope: !3812)
!3815 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3812, file: !118, line: 456, type: !15)
!3816 = !DILocalVariable(name: "__cil_tmp7", scope: !3812, file: !118, line: 462, type: !25)
!3817 = !DILocation(line: 462, column: 9, scope: !3812)
!3818 = !DILocalVariable(name: "__cil_tmp8", scope: !3812, file: !118, line: 463, type: !25)
!3819 = !DILocation(line: 463, column: 9, scope: !3812)
!3820 = !DILocalVariable(name: "__cil_tmp9", scope: !3812, file: !118, line: 464, type: !25)
!3821 = !DILocation(line: 464, column: 9, scope: !3812)
!3822 = !DILocation(line: 458, column: 30, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3812, file: !118, line: 466, column: 3)
!3824 = !DILocalVariable(name: "size_remaining", scope: !3812, file: !118, line: 458, type: !15)
!3825 = !DILocation(line: 460, column: 3, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !118, line: 460, column: 3)
!3827 = distinct !DILexicalBlock(scope: !3823, file: !118, line: 459, column: 3)
!3828 = !DILocation(line: 0, scope: !3823)
!3829 = !DILocation(line: 460, column: 13, scope: !3826)
!3830 = !DILocation(line: 460, column: 11, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !118, line: 460, column: 9)
!3832 = distinct !DILexicalBlock(scope: !3826, file: !118, line: 460, column: 13)
!3833 = !DILocation(line: 460, column: 9, scope: !3832)
!3834 = !DILocation(line: 460, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !118, line: 460, column: 27)
!3836 = !DILocation(line: 465, column: 49, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !118, line: 463, column: 5)
!3838 = distinct !DILexicalBlock(scope: !3832, file: !118, line: 462, column: 5)
!3839 = !DILocation(line: 465, column: 21, scope: !3837)
!3840 = !DILocalVariable(name: "sub_chunk_len", scope: !3812, file: !118, line: 459, type: !15)
!3841 = !DILocation(line: 466, column: 23, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3832, file: !118, line: 466, column: 9)
!3843 = !DILocation(line: 466, column: 9, scope: !3832)
!3844 = !DILocation(line: 468, column: 40, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !118, line: 468, column: 7)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !118, line: 467, column: 7)
!3847 = distinct !DILexicalBlock(scope: !3842, file: !118, line: 466, column: 30)
!3848 = !DILocation(line: 468, column: 7, scope: !3845)
!3849 = !DILocation(line: 469, column: 7, scope: !3847)
!3850 = !DILocation(line: 466, column: 23, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3842, file: !118, line: 466, column: 9)
!3852 = !DILocation(line: 466, column: 9, scope: !3842)
!3853 = !DILocation(line: 468, column: 40, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !118, line: 468, column: 7)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !118, line: 467, column: 7)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !118, line: 466, column: 41)
!3857 = !DILocation(line: 468, column: 7, scope: !3854)
!3858 = !DILocation(line: 469, column: 7, scope: !3856)
!3859 = !DILocation(line: 472, column: 48, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !118, line: 472, column: 5)
!3861 = distinct !DILexicalBlock(scope: !3832, file: !118, line: 471, column: 5)
!3862 = !DILocation(line: 472, column: 20, scope: !3860)
!3863 = !DILocalVariable(name: "sub_chunk_id", scope: !3812, file: !118, line: 460, type: !80)
!3864 = !DILocation(line: 476, column: 22, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 476, column: 9)
!3866 = distinct !DILexicalBlock(scope: !3832, file: !118, line: 475, column: 5)
!3867 = !DILocation(line: 476, column: 9, scope: !3866)
!3868 = !DILocation(line: 476, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !118, line: 476, column: 88)
!3870 = !DILocation(line: 479, column: 22, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 479, column: 9)
!3872 = !DILocation(line: 479, column: 9, scope: !3866)
!3873 = !DILocation(line: 479, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3871, file: !118, line: 479, column: 88)
!3875 = !DILocation(line: 482, column: 22, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 482, column: 9)
!3877 = !DILocation(line: 482, column: 9, scope: !3866)
!3878 = !DILocation(line: 482, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3876, file: !118, line: 482, column: 88)
!3880 = !DILocation(line: 486, column: 5, scope: !3866)
!3881 = !DILocation(line: 477, column: 5, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !118, line: 489, column: 5)
!3883 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 488, column: 5)
!3884 = !DILocation(line: 478, column: 5, scope: !3866)
!3885 = !DILocation(line: 480, column: 5, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !118, line: 481, column: 5)
!3887 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 480, column: 5)
!3888 = !DILocation(line: 481, column: 5, scope: !3866)
!3889 = !DILocation(line: 483, column: 11, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !118, line: 484, column: 5)
!3891 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 483, column: 5)
!3892 = !DILocalVariable(name: "tmp", scope: !3812, file: !118, line: 461, type: !13)
!3893 = !DILocation(line: 483, column: 13, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 483, column: 9)
!3895 = !DILocation(line: 483, column: 9, scope: !3866)
!3896 = !DILocation(line: 484, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3894, file: !118, line: 483, column: 19)
!3898 = !DILocation(line: 485, column: 5, scope: !3866)
!3899 = !DILocation(line: 487, column: 38, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !118, line: 488, column: 5)
!3901 = distinct !DILexicalBlock(scope: !3866, file: !118, line: 487, column: 5)
!3902 = !DILocation(line: 488, column: 51, scope: !3900)
!3903 = !DILocation(line: 488, column: 20, scope: !3900)
!3904 = !DILocation(line: 488, column: 13, scope: !3900)
!3905 = !DILocation(line: 488, column: 98, scope: !3900)
!3906 = !DILocation(line: 488, column: 67, scope: !3900)
!3907 = !DILocation(line: 488, column: 60, scope: !3900)
!3908 = !DILocation(line: 489, column: 51, scope: !3900)
!3909 = !DILocation(line: 489, column: 20, scope: !3900)
!3910 = !DILocation(line: 489, column: 13, scope: !3900)
!3911 = !DILocation(line: 489, column: 66, scope: !3900)
!3912 = !DILocation(line: 489, column: 59, scope: !3900)
!3913 = !DILocation(line: 487, column: 5, scope: !3900)
!3914 = !DILocation(line: 489, column: 5, scope: !3866)
!3915 = !DILocation(line: 492, column: 20, scope: !3832)
!3916 = distinct !{!3916, !3825, !3917}
!3917 = !DILocation(line: 493, column: 3, scope: !3826)
!3918 = !DILocation(line: 495, column: 3, scope: !3826)
!3919 = !DILocation(line: 495, column: 3, scope: !3823)
!3920 = !DILocation(line: 497, column: 1, scope: !3812)
!3921 = distinct !DISubprogram(name: "read_chunk_edts", scope: !118, file: !118, line: 91, type: !3042, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3922 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3921, file: !118, line: 91, type: !116)
!3923 = !DILocation(line: 0, scope: !3921)
!3924 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3921, file: !118, line: 91, type: !15)
!3925 = !DILocation(line: 94, column: 30, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !118, line: 96, column: 3)
!3927 = distinct !DILexicalBlock(scope: !3921, file: !118, line: 95, column: 3)
!3928 = !DILocalVariable(name: "size_remaining", scope: !3921, file: !118, line: 93, type: !15)
!3929 = !DILocation(line: 96, column: 24, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3926, file: !118, line: 95, column: 3)
!3931 = !DILocation(line: 96, column: 3, scope: !3930)
!3932 = !DILocation(line: 97, column: 3, scope: !3927)
!3933 = distinct !DISubprogram(name: "read_chunk_mdhd", scope: !118, file: !118, line: 83, type: !3042, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3934 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3933, file: !118, line: 83, type: !116)
!3935 = !DILocation(line: 0, scope: !3933)
!3936 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3933, file: !118, line: 83, type: !15)
!3937 = !DILocation(line: 86, column: 30, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !118, line: 88, column: 3)
!3939 = distinct !DILexicalBlock(scope: !3933, file: !118, line: 87, column: 3)
!3940 = !DILocalVariable(name: "size_remaining", scope: !3933, file: !118, line: 85, type: !15)
!3941 = !DILocation(line: 88, column: 24, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !118, line: 87, column: 3)
!3943 = !DILocation(line: 88, column: 3, scope: !3942)
!3944 = !DILocation(line: 89, column: 3, scope: !3939)
!3945 = distinct !DISubprogram(name: "read_chunk_hdlr", scope: !118, file: !118, line: 108, type: !3042, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3946 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !3945, file: !118, line: 108, type: !116)
!3947 = !DILocation(line: 0, scope: !3945)
!3948 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !3945, file: !118, line: 108, type: !15)
!3949 = !DILocalVariable(name: "str", scope: !3945, file: !118, line: 114, type: !3950)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !3951)
!3951 = !{!3952}
!3952 = !DISubrange(count: 256)
!3953 = !DILocation(line: 114, column: 8, scope: !3945)
!3954 = !DILocalVariable(name: "__cil_tmp10", scope: !3945, file: !118, line: 117, type: !14)
!3955 = !DILocation(line: 117, column: 9, scope: !3945)
!3956 = !DILocation(line: 111, column: 30, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3945, file: !118, line: 119, column: 3)
!3958 = !DILocalVariable(name: "size_remaining", scope: !3945, file: !118, line: 112, type: !15)
!3959 = !DILocation(line: 114, column: 3, scope: !3957)
!3960 = !DILocation(line: 114, column: 10, scope: !3957)
!3961 = !DILocalVariable(name: "tmp", scope: !3945, file: !118, line: 115, type: !8)
!3962 = !DILocation(line: 114, column: 3, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !118, line: 116, column: 3)
!3964 = distinct !DILexicalBlock(scope: !3957, file: !118, line: 115, column: 3)
!3965 = !DILocation(line: 0, scope: !3957)
!3966 = !DILocation(line: 114, column: 13, scope: !3963)
!3967 = !DILocation(line: 114, column: 13, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !118, line: 114, column: 9)
!3969 = distinct !DILexicalBlock(scope: !3963, file: !118, line: 114, column: 13)
!3970 = !DILocation(line: 114, column: 9, scope: !3969)
!3971 = !DILocation(line: 114, column: 7, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3968, file: !118, line: 114, column: 22)
!3973 = !DILocation(line: 114, column: 5, scope: !3969)
!3974 = !DILocation(line: 114, column: 14, scope: !3969)
!3975 = distinct !{!3975, !3962, !3976}
!3976 = !DILocation(line: 115, column: 3, scope: !3963)
!3977 = !DILocation(line: 117, column: 3, scope: !3963)
!3978 = !DILocation(line: 117, column: 30, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 121, column: 3)
!3980 = distinct !DILexicalBlock(scope: !3957, file: !118, line: 120, column: 3)
!3981 = !DILocation(line: 117, column: 3, scope: !3979)
!3982 = !DILocation(line: 118, column: 18, scope: !3980)
!3983 = !DILocation(line: 120, column: 30, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 119, column: 3)
!3985 = !DILocation(line: 120, column: 3, scope: !3984)
!3986 = !DILocation(line: 121, column: 30, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 122, column: 3)
!3988 = !DILocation(line: 121, column: 3, scope: !3987)
!3989 = !DILocation(line: 122, column: 30, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 123, column: 3)
!3991 = !DILocation(line: 122, column: 3, scope: !3990)
!3992 = !DILocation(line: 123, column: 18, scope: !3980)
!3993 = !DILocation(line: 126, column: 42, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 124, column: 3)
!3995 = !DILocation(line: 126, column: 14, scope: !3994)
!3996 = !DILocalVariable(name: "comptype", scope: !3945, file: !118, line: 110, type: !80)
!3997 = !DILocation(line: 127, column: 45, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 128, column: 3)
!3999 = !DILocation(line: 127, column: 17, scope: !3998)
!4000 = !DILocalVariable(name: "compsubtype", scope: !3945, file: !118, line: 111, type: !80)
!4001 = !DILocation(line: 128, column: 18, scope: !3980)
!4002 = !DILocation(line: 131, column: 31, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 129, column: 3)
!4004 = !DILocation(line: 131, column: 3, scope: !4003)
!4005 = !DILocation(line: 132, column: 18, scope: !3980)
!4006 = !DILocation(line: 135, column: 31, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 133, column: 3)
!4008 = !DILocation(line: 135, column: 3, scope: !4007)
!4009 = !DILocation(line: 136, column: 31, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 137, column: 3)
!4011 = !DILocation(line: 136, column: 3, scope: !4010)
!4012 = !DILocation(line: 137, column: 18, scope: !3980)
!4013 = !DILocation(line: 140, column: 40, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 138, column: 3)
!4015 = !DILocation(line: 140, column: 13, scope: !4014)
!4016 = !DILocalVariable(name: "tmp___0", scope: !3945, file: !118, line: 116, type: !84)
!4017 = !DILocation(line: 140, column: 16, scope: !3980)
!4018 = !DILocalVariable(name: "strlen___0", scope: !3945, file: !118, line: 113, type: !13)
!4019 = !DILocation(line: 141, column: 24, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3980, file: !118, line: 141, column: 3)
!4021 = !DILocation(line: 141, column: 61, scope: !4020)
!4022 = !DILocation(line: 141, column: 3, scope: !4020)
!4023 = !DILocation(line: 142, column: 33, scope: !3980)
!4024 = !DILocation(line: 142, column: 18, scope: !3980)
!4025 = !DILocation(line: 144, column: 7, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3957, file: !118, line: 144, column: 7)
!4027 = !DILocation(line: 144, column: 7, scope: !3957)
!4028 = !DILocation(line: 146, column: 26, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !118, line: 146, column: 5)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !118, line: 145, column: 5)
!4031 = distinct !DILexicalBlock(scope: !4026, file: !118, line: 144, column: 23)
!4032 = !DILocation(line: 146, column: 5, scope: !4029)
!4033 = !DILocation(line: 149, column: 3, scope: !4031)
!4034 = !DILocation(line: 149, column: 3, scope: !3957)
!4035 = distinct !DISubprogram(name: "read_chunk_minf", scope: !118, file: !118, line: 402, type: !3095, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4036 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !4035, file: !118, line: 402, type: !116)
!4037 = !DILocation(line: 0, scope: !4035)
!4038 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !4035, file: !118, line: 402, type: !15)
!4039 = !DILocalVariable(name: "__cil_tmp11", scope: !4035, file: !118, line: 412, type: !25)
!4040 = !DILocation(line: 412, column: 9, scope: !4035)
!4041 = !DILocalVariable(name: "__cil_tmp12", scope: !4035, file: !118, line: 413, type: !25)
!4042 = !DILocation(line: 413, column: 9, scope: !4035)
!4043 = !DILocalVariable(name: "__cil_tmp13", scope: !4035, file: !118, line: 414, type: !25)
!4044 = !DILocation(line: 414, column: 9, scope: !4035)
!4045 = !DILocalVariable(name: "__cil_tmp14", scope: !4035, file: !118, line: 415, type: !25)
!4046 = !DILocation(line: 415, column: 9, scope: !4035)
!4047 = !DILocalVariable(name: "__cil_tmp15", scope: !4035, file: !118, line: 416, type: !25)
!4048 = !DILocation(line: 416, column: 9, scope: !4035)
!4049 = !DILocation(line: 405, column: 30, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 419, column: 3)
!4051 = distinct !DILexicalBlock(scope: !4035, file: !118, line: 418, column: 3)
!4052 = !DILocalVariable(name: "size_remaining", scope: !4035, file: !118, line: 406, type: !15)
!4053 = !DILocation(line: 408, column: 37, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4050, file: !118, line: 406, column: 3)
!4055 = !DILocation(line: 408, column: 9, scope: !4054)
!4056 = !DILocalVariable(name: "tmp", scope: !4035, file: !118, line: 407, type: !6)
!4057 = !DILocation(line: 408, column: 11, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 408, column: 7)
!4059 = !DILocation(line: 408, column: 7, scope: !4051)
!4060 = !DILocation(line: 410, column: 38, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !118, line: 410, column: 5)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !118, line: 409, column: 5)
!4063 = distinct !DILexicalBlock(scope: !4058, file: !118, line: 408, column: 19)
!4064 = !DILocation(line: 410, column: 5, scope: !4061)
!4065 = !DILocation(line: 411, column: 5, scope: !4063)
!4066 = !DILocation(line: 413, column: 41, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !118, line: 414, column: 3)
!4068 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 413, column: 3)
!4069 = !DILocation(line: 413, column: 13, scope: !4067)
!4070 = !DILocalVariable(name: "tmp___0", scope: !4035, file: !118, line: 408, type: !6)
!4071 = !DILocation(line: 413, column: 15, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 413, column: 7)
!4073 = !DILocation(line: 413, column: 7, scope: !4051)
!4074 = !DILocation(line: 415, column: 38, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !118, line: 415, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !118, line: 414, column: 5)
!4077 = distinct !DILexicalBlock(scope: !4072, file: !118, line: 413, column: 81)
!4078 = !DILocation(line: 415, column: 5, scope: !4075)
!4079 = !DILocation(line: 416, column: 5, scope: !4077)
!4080 = !DILocation(line: 419, column: 24, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !118, line: 419, column: 3)
!4082 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 418, column: 3)
!4083 = !DILocation(line: 419, column: 3, scope: !4081)
!4084 = !DILocation(line: 420, column: 18, scope: !4082)
!4085 = !DILocation(line: 424, column: 43, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !118, line: 421, column: 3)
!4087 = !DILocation(line: 424, column: 15, scope: !4086)
!4088 = !DILocalVariable(name: "dinf_size", scope: !4035, file: !118, line: 404, type: !15)
!4089 = !DILocation(line: 425, column: 41, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4082, file: !118, line: 426, column: 3)
!4091 = !DILocation(line: 425, column: 13, scope: !4090)
!4092 = !DILocalVariable(name: "tmp___1", scope: !4035, file: !118, line: 409, type: !6)
!4093 = !DILocation(line: 425, column: 15, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 425, column: 7)
!4095 = !DILocation(line: 425, column: 7, scope: !4051)
!4096 = !DILocation(line: 427, column: 38, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !118, line: 427, column: 5)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !118, line: 426, column: 5)
!4099 = distinct !DILexicalBlock(scope: !4094, file: !118, line: 425, column: 81)
!4100 = !DILocation(line: 427, column: 5, scope: !4097)
!4101 = !DILocation(line: 428, column: 5, scope: !4099)
!4102 = !DILocation(line: 431, column: 24, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !118, line: 431, column: 3)
!4104 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 430, column: 3)
!4105 = !DILocation(line: 431, column: 42, scope: !4103)
!4106 = !DILocation(line: 431, column: 3, scope: !4103)
!4107 = !DILocation(line: 432, column: 18, scope: !4104)
!4108 = !DILocation(line: 437, column: 43, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4104, file: !118, line: 433, column: 3)
!4110 = !DILocation(line: 437, column: 15, scope: !4109)
!4111 = !DILocalVariable(name: "stbl_size", scope: !4035, file: !118, line: 405, type: !15)
!4112 = !DILocation(line: 438, column: 41, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4104, file: !118, line: 439, column: 3)
!4114 = !DILocation(line: 438, column: 13, scope: !4113)
!4115 = !DILocalVariable(name: "tmp___2", scope: !4035, file: !118, line: 410, type: !6)
!4116 = !DILocation(line: 438, column: 15, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 438, column: 7)
!4118 = !DILocation(line: 438, column: 7, scope: !4051)
!4119 = !DILocation(line: 440, column: 38, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !118, line: 440, column: 5)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !118, line: 439, column: 5)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !118, line: 438, column: 80)
!4123 = !DILocation(line: 440, column: 5, scope: !4120)
!4124 = !DILocation(line: 441, column: 5, scope: !4122)
!4125 = !DILocation(line: 443, column: 13, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !118, line: 444, column: 3)
!4127 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 443, column: 3)
!4128 = !DILocalVariable(name: "tmp___3", scope: !4035, file: !118, line: 411, type: !13)
!4129 = !DILocation(line: 443, column: 15, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 443, column: 7)
!4131 = !DILocation(line: 443, column: 7, scope: !4051)
!4132 = !DILocation(line: 444, column: 5, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4130, file: !118, line: 443, column: 21)
!4134 = !DILocation(line: 445, column: 18, scope: !4051)
!4135 = !DILocation(line: 447, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4051, file: !118, line: 447, column: 7)
!4137 = !DILocation(line: 447, column: 7, scope: !4051)
!4138 = !DILocation(line: 449, column: 38, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !118, line: 449, column: 5)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !118, line: 448, column: 5)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !118, line: 447, column: 23)
!4142 = !DILocation(line: 449, column: 5, scope: !4139)
!4143 = !DILocation(line: 450, column: 26, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4140, file: !118, line: 451, column: 5)
!4145 = !DILocation(line: 450, column: 5, scope: !4144)
!4146 = !DILocation(line: 453, column: 3, scope: !4141)
!4147 = !DILocation(line: 453, column: 3, scope: !4051)
!4148 = !DILocation(line: 0, scope: !4051)
!4149 = !DILocation(line: 455, column: 1, scope: !4035)
!4150 = distinct !DISubprogram(name: "read_chunk_stbl", scope: !118, file: !118, line: 354, type: !3095, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4151 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !4150, file: !118, line: 354, type: !116)
!4152 = !DILocation(line: 0, scope: !4150)
!4153 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !4150, file: !118, line: 354, type: !15)
!4154 = !DILocalVariable(name: "__cil_tmp7", scope: !4150, file: !118, line: 360, type: !25)
!4155 = !DILocation(line: 360, column: 9, scope: !4150)
!4156 = !DILocalVariable(name: "__cil_tmp8", scope: !4150, file: !118, line: 361, type: !25)
!4157 = !DILocation(line: 361, column: 9, scope: !4150)
!4158 = !DILocalVariable(name: "__cil_tmp9", scope: !4150, file: !118, line: 362, type: !25)
!4159 = !DILocation(line: 362, column: 9, scope: !4150)
!4160 = !DILocation(line: 356, column: 30, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4150, file: !118, line: 364, column: 3)
!4162 = !DILocalVariable(name: "size_remaining", scope: !4150, file: !118, line: 356, type: !15)
!4163 = !DILocation(line: 358, column: 3, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !118, line: 358, column: 3)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !118, line: 357, column: 3)
!4166 = !DILocation(line: 0, scope: !4161)
!4167 = !DILocation(line: 358, column: 13, scope: !4164)
!4168 = !DILocation(line: 358, column: 11, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !118, line: 358, column: 9)
!4170 = distinct !DILexicalBlock(scope: !4164, file: !118, line: 358, column: 13)
!4171 = !DILocation(line: 358, column: 9, scope: !4170)
!4172 = !DILocation(line: 358, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !118, line: 358, column: 27)
!4174 = !DILocation(line: 363, column: 49, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !118, line: 361, column: 5)
!4176 = distinct !DILexicalBlock(scope: !4170, file: !118, line: 360, column: 5)
!4177 = !DILocation(line: 363, column: 21, scope: !4175)
!4178 = !DILocalVariable(name: "sub_chunk_len", scope: !4150, file: !118, line: 357, type: !15)
!4179 = !DILocation(line: 364, column: 23, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4170, file: !118, line: 364, column: 9)
!4181 = !DILocation(line: 364, column: 9, scope: !4170)
!4182 = !DILocation(line: 366, column: 40, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !118, line: 366, column: 7)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !118, line: 365, column: 7)
!4185 = distinct !DILexicalBlock(scope: !4180, file: !118, line: 364, column: 30)
!4186 = !DILocation(line: 366, column: 7, scope: !4183)
!4187 = !DILocation(line: 368, column: 7, scope: !4185)
!4188 = !DILocation(line: 364, column: 23, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4180, file: !118, line: 364, column: 9)
!4190 = !DILocation(line: 364, column: 9, scope: !4180)
!4191 = !DILocation(line: 366, column: 40, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !118, line: 366, column: 7)
!4193 = distinct !DILexicalBlock(scope: !4194, file: !118, line: 365, column: 7)
!4194 = distinct !DILexicalBlock(scope: !4189, file: !118, line: 364, column: 41)
!4195 = !DILocation(line: 366, column: 7, scope: !4192)
!4196 = !DILocation(line: 368, column: 7, scope: !4194)
!4197 = !DILocation(line: 371, column: 48, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !118, line: 371, column: 5)
!4199 = distinct !DILexicalBlock(scope: !4170, file: !118, line: 370, column: 5)
!4200 = !DILocation(line: 371, column: 20, scope: !4198)
!4201 = !DILocalVariable(name: "sub_chunk_id", scope: !4150, file: !118, line: 358, type: !80)
!4202 = !DILocation(line: 375, column: 22, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 375, column: 9)
!4204 = distinct !DILexicalBlock(scope: !4170, file: !118, line: 374, column: 5)
!4205 = !DILocation(line: 375, column: 9, scope: !4204)
!4206 = !DILocation(line: 375, column: 7, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !118, line: 375, column: 88)
!4208 = !DILocation(line: 379, column: 22, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 379, column: 9)
!4210 = !DILocation(line: 379, column: 9, scope: !4204)
!4211 = !DILocation(line: 379, column: 7, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !118, line: 379, column: 88)
!4213 = !DILocation(line: 382, column: 22, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 382, column: 9)
!4215 = !DILocation(line: 382, column: 9, scope: !4204)
!4216 = !DILocation(line: 382, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !118, line: 382, column: 88)
!4218 = !DILocation(line: 386, column: 22, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 386, column: 9)
!4220 = !DILocation(line: 386, column: 9, scope: !4204)
!4221 = !DILocation(line: 386, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !118, line: 386, column: 87)
!4223 = !DILocation(line: 386, column: 22, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 386, column: 9)
!4225 = !DILocation(line: 386, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4224, file: !118, line: 386, column: 87)
!4227 = !DILocation(line: 390, column: 5, scope: !4204)
!4228 = !DILocation(line: 376, column: 11, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !118, line: 393, column: 5)
!4230 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 392, column: 5)
!4231 = !DILocalVariable(name: "tmp", scope: !4150, file: !118, line: 359, type: !13)
!4232 = !DILocation(line: 376, column: 13, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 376, column: 9)
!4234 = !DILocation(line: 376, column: 9, scope: !4204)
!4235 = !DILocation(line: 377, column: 7, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4233, file: !118, line: 376, column: 19)
!4237 = !DILocation(line: 378, column: 5, scope: !4204)
!4238 = !DILocation(line: 380, column: 5, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !118, line: 381, column: 5)
!4240 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 380, column: 5)
!4241 = !DILocation(line: 381, column: 5, scope: !4204)
!4242 = !DILocation(line: 383, column: 5, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !118, line: 384, column: 5)
!4244 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 383, column: 5)
!4245 = !DILocation(line: 384, column: 5, scope: !4204)
!4246 = !DILocation(line: 388, column: 26, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !118, line: 388, column: 5)
!4248 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 387, column: 5)
!4249 = !DILocation(line: 388, column: 48, scope: !4247)
!4250 = !DILocation(line: 388, column: 5, scope: !4247)
!4251 = !DILocation(line: 389, column: 5, scope: !4204)
!4252 = !DILocation(line: 391, column: 38, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !118, line: 392, column: 5)
!4254 = distinct !DILexicalBlock(scope: !4204, file: !118, line: 391, column: 5)
!4255 = !DILocation(line: 392, column: 51, scope: !4253)
!4256 = !DILocation(line: 392, column: 20, scope: !4253)
!4257 = !DILocation(line: 392, column: 13, scope: !4253)
!4258 = !DILocation(line: 392, column: 98, scope: !4253)
!4259 = !DILocation(line: 392, column: 67, scope: !4253)
!4260 = !DILocation(line: 392, column: 60, scope: !4253)
!4261 = !DILocation(line: 393, column: 51, scope: !4253)
!4262 = !DILocation(line: 393, column: 20, scope: !4253)
!4263 = !DILocation(line: 393, column: 13, scope: !4253)
!4264 = !DILocation(line: 393, column: 66, scope: !4253)
!4265 = !DILocation(line: 393, column: 59, scope: !4253)
!4266 = !DILocation(line: 391, column: 5, scope: !4253)
!4267 = !DILocation(line: 393, column: 5, scope: !4204)
!4268 = !DILocation(line: 396, column: 20, scope: !4170)
!4269 = distinct !{!4269, !4163, !4270}
!4270 = !DILocation(line: 397, column: 3, scope: !4164)
!4271 = !DILocation(line: 399, column: 3, scope: !4164)
!4272 = !DILocation(line: 399, column: 3, scope: !4161)
!4273 = !DILocation(line: 401, column: 1, scope: !4150)
!4274 = distinct !DISubprogram(name: "read_chunk_stsd", scope: !118, file: !118, line: 151, type: !3095, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4275 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !4274, file: !118, line: 151, type: !116)
!4276 = !DILocation(line: 0, scope: !4274)
!4277 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !4274, file: !118, line: 151, type: !15)
!4278 = !DILocalVariable(name: "__cil_tmp10", scope: !4274, file: !118, line: 160, type: !25)
!4279 = !DILocation(line: 160, column: 9, scope: !4274)
!4280 = !DILocalVariable(name: "__cil_tmp11", scope: !4274, file: !118, line: 161, type: !25)
!4281 = !DILocation(line: 161, column: 9, scope: !4274)
!4282 = !DILocation(line: 155, column: 30, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !118, line: 164, column: 3)
!4284 = distinct !DILexicalBlock(scope: !4274, file: !118, line: 163, column: 3)
!4285 = !DILocalVariable(name: "size_remaining", scope: !4274, file: !118, line: 155, type: !15)
!4286 = !DILocation(line: 158, column: 30, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !118, line: 156, column: 3)
!4288 = !DILocation(line: 158, column: 3, scope: !4287)
!4289 = !DILocation(line: 159, column: 18, scope: !4283)
!4290 = !DILocation(line: 161, column: 30, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4283, file: !118, line: 160, column: 3)
!4292 = !DILocation(line: 161, column: 3, scope: !4291)
!4293 = !DILocation(line: 162, column: 30, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4283, file: !118, line: 163, column: 3)
!4295 = !DILocation(line: 162, column: 3, scope: !4294)
!4296 = !DILocation(line: 163, column: 30, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4283, file: !118, line: 164, column: 3)
!4298 = !DILocation(line: 163, column: 3, scope: !4297)
!4299 = !DILocation(line: 164, column: 18, scope: !4283)
!4300 = !DILocation(line: 166, column: 44, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4283, file: !118, line: 165, column: 3)
!4302 = !DILocation(line: 166, column: 16, scope: !4301)
!4303 = !DILocalVariable(name: "numentries", scope: !4274, file: !118, line: 154, type: !6)
!4304 = !DILocation(line: 167, column: 18, scope: !4283)
!4305 = !DILocation(line: 169, column: 18, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4284, file: !118, line: 169, column: 7)
!4307 = !DILocation(line: 169, column: 7, scope: !4284)
!4308 = !DILocation(line: 171, column: 38, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !118, line: 171, column: 5)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !118, line: 170, column: 5)
!4311 = distinct !DILexicalBlock(scope: !4306, file: !118, line: 169, column: 25)
!4312 = !DILocation(line: 171, column: 5, scope: !4309)
!4313 = !DILocation(line: 172, column: 5, scope: !4311)
!4314 = !DILocalVariable(name: "i", scope: !4274, file: !118, line: 153, type: !8)
!4315 = !DILocation(line: 175, column: 3, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !118, line: 177, column: 3)
!4317 = distinct !DILexicalBlock(scope: !4284, file: !118, line: 176, column: 3)
!4318 = !DILocation(line: 0, scope: !4284)
!4319 = !DILocation(line: 175, column: 13, scope: !4316)
!4320 = !DILocation(line: 175, column: 14, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 175, column: 9)
!4322 = distinct !DILexicalBlock(scope: !4316, file: !118, line: 175, column: 13)
!4323 = !DILocation(line: 175, column: 9, scope: !4322)
!4324 = !DILocation(line: 175, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4321, file: !118, line: 175, column: 29)
!4326 = !DILocation(line: 182, column: 46, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !118, line: 178, column: 5)
!4328 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 177, column: 5)
!4329 = !DILocation(line: 182, column: 18, scope: !4327)
!4330 = !DILocalVariable(name: "entry_size", scope: !4274, file: !118, line: 156, type: !6)
!4331 = !DILocation(line: 183, column: 58, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !118, line: 184, column: 5)
!4333 = !DILocation(line: 183, column: 30, scope: !4332)
!4334 = !DILocation(line: 183, column: 15, scope: !4332)
!4335 = !DILocation(line: 183, column: 21, scope: !4332)
!4336 = !DILocation(line: 183, column: 28, scope: !4332)
!4337 = !DILocalVariable(name: "entry_remaining", scope: !4274, file: !118, line: 158, type: !6)
!4338 = !DILocation(line: 185, column: 21, scope: !4328)
!4339 = !DILocation(line: 189, column: 26, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4328, file: !118, line: 186, column: 5)
!4341 = !DILocation(line: 189, column: 5, scope: !4340)
!4342 = !DILocation(line: 190, column: 21, scope: !4328)
!4343 = !DILocation(line: 192, column: 43, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4328, file: !118, line: 191, column: 5)
!4345 = !DILocation(line: 192, column: 15, scope: !4344)
!4346 = !DILocalVariable(name: "version", scope: !4274, file: !118, line: 157, type: !9)
!4347 = !DILocation(line: 193, column: 9, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 193, column: 9)
!4349 = !DILocation(line: 193, column: 23, scope: !4348)
!4350 = !DILocation(line: 193, column: 9, scope: !4322)
!4351 = !DILocation(line: 194, column: 40, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !118, line: 195, column: 7)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !118, line: 194, column: 7)
!4354 = distinct !DILexicalBlock(scope: !4348, file: !118, line: 193, column: 29)
!4355 = !DILocation(line: 194, column: 7, scope: !4352)
!4356 = !DILocation(line: 197, column: 5, scope: !4354)
!4357 = !DILocation(line: 195, column: 21, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 198, column: 5)
!4359 = !DILocation(line: 198, column: 33, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 196, column: 5)
!4361 = !DILocation(line: 198, column: 5, scope: !4360)
!4362 = !DILocation(line: 200, column: 33, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 200, column: 5)
!4364 = !DILocation(line: 200, column: 5, scope: !4363)
!4365 = !DILocation(line: 201, column: 21, scope: !4358)
!4366 = !DILocation(line: 204, column: 33, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 202, column: 5)
!4368 = !DILocation(line: 204, column: 5, scope: !4367)
!4369 = !DILocation(line: 205, column: 21, scope: !4358)
!4370 = !DILocation(line: 207, column: 64, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 206, column: 5)
!4372 = !DILocation(line: 207, column: 36, scope: !4371)
!4373 = !DILocation(line: 207, column: 15, scope: !4371)
!4374 = !DILocation(line: 207, column: 21, scope: !4371)
!4375 = !DILocation(line: 207, column: 34, scope: !4371)
!4376 = !DILocation(line: 209, column: 63, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 209, column: 5)
!4378 = !DILocation(line: 209, column: 35, scope: !4377)
!4379 = !DILocation(line: 209, column: 15, scope: !4377)
!4380 = !DILocation(line: 209, column: 21, scope: !4377)
!4381 = !DILocation(line: 209, column: 33, scope: !4377)
!4382 = !DILocation(line: 210, column: 21, scope: !4358)
!4383 = !DILocation(line: 213, column: 33, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 211, column: 5)
!4385 = !DILocation(line: 213, column: 5, scope: !4384)
!4386 = !DILocation(line: 215, column: 33, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 215, column: 5)
!4388 = !DILocation(line: 215, column: 5, scope: !4387)
!4389 = !DILocation(line: 216, column: 21, scope: !4358)
!4390 = !DILocation(line: 219, column: 39, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 217, column: 5)
!4392 = !DILocation(line: 219, column: 11, scope: !4391)
!4393 = !DILocalVariable(name: "tmp", scope: !4274, file: !118, line: 159, type: !9)
!4394 = !DILocation(line: 219, column: 35, scope: !4358)
!4395 = !DILocation(line: 219, column: 15, scope: !4358)
!4396 = !DILocation(line: 219, column: 21, scope: !4358)
!4397 = !DILocation(line: 219, column: 33, scope: !4358)
!4398 = !DILocation(line: 220, column: 21, scope: !4358)
!4399 = !DILocation(line: 223, column: 26, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 221, column: 5)
!4401 = !DILocation(line: 223, column: 5, scope: !4400)
!4402 = !DILocation(line: 224, column: 21, scope: !4358)
!4403 = !DILocation(line: 246, column: 54, scope: !4358)
!4404 = !DILocation(line: 246, column: 61, scope: !4358)
!4405 = !DILocation(line: 246, column: 15, scope: !4358)
!4406 = !DILocation(line: 246, column: 21, scope: !4358)
!4407 = !DILocation(line: 246, column: 35, scope: !4358)
!4408 = !DILocation(line: 247, column: 50, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 247, column: 5)
!4410 = !DILocation(line: 247, column: 56, scope: !4409)
!4411 = !DILocation(line: 247, column: 33, scope: !4409)
!4412 = !DILocation(line: 247, column: 15, scope: !4409)
!4413 = !DILocation(line: 247, column: 21, scope: !4409)
!4414 = !DILocation(line: 247, column: 31, scope: !4409)
!4415 = !DILocation(line: 248, column: 22, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 249, column: 5)
!4417 = !DILocation(line: 248, column: 28, scope: !4416)
!4418 = !DILocation(line: 248, column: 52, scope: !4416)
!4419 = !DILocation(line: 248, column: 58, scope: !4416)
!4420 = !DILocation(line: 248, column: 5, scope: !4416)
!4421 = !DILocation(line: 250, column: 33, scope: !4358)
!4422 = !DILocation(line: 250, column: 39, scope: !4358)
!4423 = !DILocation(line: 250, column: 7, scope: !4358)
!4424 = !DILocation(line: 250, column: 49, scope: !4358)
!4425 = !DILocation(line: 250, column: 54, scope: !4358)
!4426 = !DILocation(line: 251, column: 33, scope: !4358)
!4427 = !DILocation(line: 251, column: 39, scope: !4358)
!4428 = !DILocation(line: 251, column: 7, scope: !4358)
!4429 = !DILocation(line: 251, column: 49, scope: !4358)
!4430 = !DILocation(line: 251, column: 54, scope: !4358)
!4431 = !DILocation(line: 252, column: 33, scope: !4358)
!4432 = !DILocation(line: 252, column: 39, scope: !4358)
!4433 = !DILocation(line: 252, column: 7, scope: !4358)
!4434 = !DILocation(line: 252, column: 49, scope: !4358)
!4435 = !DILocation(line: 252, column: 54, scope: !4358)
!4436 = !DILocation(line: 254, column: 26, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4358, file: !118, line: 253, column: 5)
!4438 = !DILocation(line: 254, column: 78, scope: !4437)
!4439 = !DILocation(line: 254, column: 84, scope: !4437)
!4440 = !DILocation(line: 254, column: 94, scope: !4437)
!4441 = !DILocation(line: 254, column: 5, scope: !4437)
!4442 = !DILocation(line: 257, column: 21, scope: !4358)
!4443 = !DILocation(line: 260, column: 9, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 260, column: 9)
!4445 = !DILocation(line: 260, column: 9, scope: !4322)
!4446 = !DILocation(line: 261, column: 28, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !118, line: 262, column: 7)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !118, line: 261, column: 7)
!4449 = distinct !DILexicalBlock(scope: !4444, file: !118, line: 260, column: 26)
!4450 = !DILocation(line: 261, column: 7, scope: !4447)
!4451 = !DILocation(line: 264, column: 5, scope: !4449)
!4452 = !DILocation(line: 263, column: 15, scope: !4322)
!4453 = !DILocation(line: 263, column: 21, scope: !4322)
!4454 = !DILocation(line: 263, column: 33, scope: !4322)
!4455 = !DILocation(line: 264, column: 19, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4322, file: !118, line: 264, column: 9)
!4457 = !DILocation(line: 264, column: 25, scope: !4456)
!4458 = !DILocation(line: 264, column: 32, scope: !4456)
!4459 = !DILocation(line: 264, column: 9, scope: !4322)
!4460 = !DILocation(line: 268, column: 7, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4456, file: !118, line: 264, column: 95)
!4462 = !DILocation(line: 175, column: 7, scope: !4322)
!4463 = distinct !{!4463, !4315, !4464}
!4464 = !DILocation(line: 176, column: 3, scope: !4316)
!4465 = !DILocation(line: 178, column: 3, scope: !4316)
!4466 = !DILocation(line: 272, column: 3, scope: !4284)
!4467 = !DILocation(line: 274, column: 1, scope: !4274)
!4468 = distinct !DISubprogram(name: "read_chunk_stts", scope: !118, file: !118, line: 275, type: !3042, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4469 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !4468, file: !118, line: 275, type: !116)
!4470 = !DILocation(line: 0, scope: !4468)
!4471 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !4468, file: !118, line: 275, type: !15)
!4472 = !DILocalVariable(name: "__cil_tmp7", scope: !4468, file: !118, line: 281, type: !25)
!4473 = !DILocation(line: 281, column: 9, scope: !4468)
!4474 = !DILocation(line: 279, column: 30, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !118, line: 284, column: 3)
!4476 = distinct !DILexicalBlock(scope: !4468, file: !118, line: 283, column: 3)
!4477 = !DILocalVariable(name: "size_remaining", scope: !4468, file: !118, line: 279, type: !15)
!4478 = !DILocation(line: 282, column: 30, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 280, column: 3)
!4480 = !DILocation(line: 282, column: 3, scope: !4479)
!4481 = !DILocation(line: 283, column: 18, scope: !4475)
!4482 = !DILocation(line: 285, column: 30, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 284, column: 3)
!4484 = !DILocation(line: 285, column: 3, scope: !4483)
!4485 = !DILocation(line: 286, column: 30, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 287, column: 3)
!4487 = !DILocation(line: 286, column: 3, scope: !4486)
!4488 = !DILocation(line: 287, column: 30, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 288, column: 3)
!4490 = !DILocation(line: 287, column: 3, scope: !4489)
!4491 = !DILocation(line: 288, column: 18, scope: !4475)
!4492 = !DILocation(line: 290, column: 44, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 289, column: 3)
!4494 = !DILocation(line: 290, column: 16, scope: !4493)
!4495 = !DILocalVariable(name: "numentries", scope: !4468, file: !118, line: 278, type: !6)
!4496 = !DILocation(line: 291, column: 18, scope: !4475)
!4497 = !DILocation(line: 293, column: 13, scope: !4475)
!4498 = !DILocation(line: 293, column: 19, scope: !4475)
!4499 = !DILocation(line: 293, column: 39, scope: !4475)
!4500 = !DILocation(line: 294, column: 26, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4475, file: !118, line: 294, column: 3)
!4502 = !DILocation(line: 294, column: 53, scope: !4501)
!4503 = !DILocation(line: 294, column: 16, scope: !4501)
!4504 = !DILocation(line: 294, column: 9, scope: !4501)
!4505 = !DILocalVariable(name: "tmp", scope: !4468, file: !118, line: 280, type: !14)
!4506 = !DILocation(line: 294, column: 36, scope: !4475)
!4507 = !DILocation(line: 294, column: 13, scope: !4475)
!4508 = !DILocation(line: 294, column: 19, scope: !4475)
!4509 = !DILocation(line: 294, column: 34, scope: !4475)
!4510 = !DILocalVariable(name: "i", scope: !4468, file: !118, line: 277, type: !8)
!4511 = !DILocation(line: 296, column: 3, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !118, line: 299, column: 3)
!4513 = distinct !DILexicalBlock(scope: !4476, file: !118, line: 298, column: 3)
!4514 = !DILocation(line: 0, scope: !4476)
!4515 = !DILocation(line: 296, column: 13, scope: !4512)
!4516 = !DILocation(line: 296, column: 14, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !118, line: 296, column: 9)
!4518 = distinct !DILexicalBlock(scope: !4512, file: !118, line: 296, column: 13)
!4519 = !DILocation(line: 296, column: 9, scope: !4518)
!4520 = !DILocation(line: 296, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4517, file: !118, line: 296, column: 29)
!4522 = !DILocation(line: 298, column: 86, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !118, line: 299, column: 5)
!4524 = distinct !DILexicalBlock(scope: !4518, file: !118, line: 298, column: 5)
!4525 = !DILocation(line: 298, column: 58, scope: !4523)
!4526 = !DILocation(line: 298, column: 16, scope: !4523)
!4527 = !DILocation(line: 298, column: 22, scope: !4523)
!4528 = !DILocation(line: 298, column: 37, scope: !4523)
!4529 = !DILocation(line: 298, column: 43, scope: !4523)
!4530 = !DILocation(line: 298, column: 56, scope: !4523)
!4531 = !DILocation(line: 299, column: 89, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4524, file: !118, line: 300, column: 5)
!4533 = !DILocation(line: 299, column: 61, scope: !4532)
!4534 = !DILocation(line: 299, column: 16, scope: !4532)
!4535 = !DILocation(line: 299, column: 22, scope: !4532)
!4536 = !DILocation(line: 299, column: 37, scope: !4532)
!4537 = !DILocation(line: 299, column: 43, scope: !4532)
!4538 = !DILocation(line: 299, column: 59, scope: !4532)
!4539 = !DILocation(line: 300, column: 20, scope: !4524)
!4540 = !DILocation(line: 296, column: 7, scope: !4524)
!4541 = distinct !{!4541, !4511, !4542}
!4542 = !DILocation(line: 298, column: 3, scope: !4512)
!4543 = !DILocation(line: 300, column: 3, scope: !4512)
!4544 = !DILocation(line: 303, column: 7, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4476, file: !118, line: 303, column: 7)
!4546 = !DILocation(line: 303, column: 7, scope: !4476)
!4547 = !DILocation(line: 305, column: 38, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !118, line: 305, column: 5)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !118, line: 304, column: 5)
!4550 = distinct !DILexicalBlock(scope: !4545, file: !118, line: 303, column: 23)
!4551 = !DILocation(line: 305, column: 5, scope: !4548)
!4552 = !DILocation(line: 306, column: 26, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4549, file: !118, line: 307, column: 5)
!4554 = !DILocation(line: 306, column: 5, scope: !4553)
!4555 = !DILocation(line: 309, column: 3, scope: !4550)
!4556 = !DILocation(line: 308, column: 3, scope: !4476)
!4557 = distinct !DISubprogram(name: "read_chunk_stsz", scope: !118, file: !118, line: 310, type: !3042, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4558 = !DILocalVariable(name: "qtmovie", arg: 1, scope: !4557, file: !118, line: 310, type: !116)
!4559 = !DILocation(line: 0, scope: !4557)
!4560 = !DILocalVariable(name: "chunk_len", arg: 2, scope: !4557, file: !118, line: 310, type: !15)
!4561 = !DILocalVariable(name: "__cil_tmp8", scope: !4557, file: !118, line: 317, type: !25)
!4562 = !DILocation(line: 317, column: 9, scope: !4557)
!4563 = !DILocalVariable(name: "__cil_tmp9", scope: !4557, file: !118, line: 318, type: !25)
!4564 = !DILocation(line: 318, column: 9, scope: !4557)
!4565 = !DILocation(line: 314, column: 30, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !118, line: 321, column: 3)
!4567 = distinct !DILexicalBlock(scope: !4557, file: !118, line: 320, column: 3)
!4568 = !DILocalVariable(name: "size_remaining", scope: !4557, file: !118, line: 314, type: !15)
!4569 = !DILocation(line: 317, column: 30, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4566, file: !118, line: 315, column: 3)
!4571 = !DILocation(line: 317, column: 3, scope: !4570)
!4572 = !DILocation(line: 318, column: 18, scope: !4566)
!4573 = !DILocation(line: 320, column: 30, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4566, file: !118, line: 319, column: 3)
!4575 = !DILocation(line: 320, column: 3, scope: !4574)
!4576 = !DILocation(line: 321, column: 30, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4566, file: !118, line: 322, column: 3)
!4578 = !DILocation(line: 321, column: 3, scope: !4577)
!4579 = !DILocation(line: 322, column: 30, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4566, file: !118, line: 323, column: 3)
!4581 = !DILocation(line: 322, column: 3, scope: !4580)
!4582 = !DILocation(line: 323, column: 18, scope: !4566)
!4583 = !DILocation(line: 326, column: 37, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4566, file: !118, line: 324, column: 3)
!4585 = !DILocation(line: 326, column: 9, scope: !4584)
!4586 = !DILocalVariable(name: "tmp", scope: !4557, file: !118, line: 315, type: !6)
!4587 = !DILocation(line: 326, column: 11, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4567, file: !118, line: 326, column: 7)
!4589 = !DILocation(line: 326, column: 7, scope: !4567)
!4590 = !DILocation(line: 328, column: 38, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !118, line: 328, column: 5)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !118, line: 327, column: 5)
!4593 = distinct !DILexicalBlock(scope: !4588, file: !118, line: 326, column: 18)
!4594 = !DILocation(line: 328, column: 5, scope: !4591)
!4595 = !DILocation(line: 329, column: 33, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !118, line: 330, column: 5)
!4597 = !DILocation(line: 329, column: 5, scope: !4596)
!4598 = !DILocation(line: 330, column: 20, scope: !4592)
!4599 = !DILocation(line: 331, column: 5, scope: !4593)
!4600 = !DILocation(line: 333, column: 18, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4567, file: !118, line: 333, column: 3)
!4602 = !DILocation(line: 335, column: 44, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4601, file: !118, line: 334, column: 3)
!4604 = !DILocation(line: 335, column: 16, scope: !4603)
!4605 = !DILocalVariable(name: "numentries", scope: !4557, file: !118, line: 313, type: !6)
!4606 = !DILocation(line: 336, column: 18, scope: !4601)
!4607 = !DILocation(line: 338, column: 13, scope: !4601)
!4608 = !DILocation(line: 338, column: 19, scope: !4601)
!4609 = !DILocation(line: 338, column: 41, scope: !4601)
!4610 = !DILocation(line: 339, column: 30, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4601, file: !118, line: 339, column: 3)
!4612 = !DILocation(line: 339, column: 57, scope: !4611)
!4613 = !DILocation(line: 339, column: 20, scope: !4611)
!4614 = !DILocation(line: 339, column: 13, scope: !4611)
!4615 = !DILocalVariable(name: "tmp___0", scope: !4557, file: !118, line: 316, type: !14)
!4616 = !DILocation(line: 339, column: 38, scope: !4601)
!4617 = !DILocation(line: 339, column: 13, scope: !4601)
!4618 = !DILocation(line: 339, column: 19, scope: !4601)
!4619 = !DILocation(line: 339, column: 36, scope: !4601)
!4620 = !DILocalVariable(name: "i", scope: !4557, file: !118, line: 312, type: !8)
!4621 = !DILocation(line: 341, column: 3, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !118, line: 344, column: 3)
!4623 = distinct !DILexicalBlock(scope: !4567, file: !118, line: 343, column: 3)
!4624 = !DILocation(line: 0, scope: !4567)
!4625 = !DILocation(line: 341, column: 13, scope: !4622)
!4626 = !DILocation(line: 341, column: 14, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !118, line: 341, column: 9)
!4628 = distinct !DILexicalBlock(scope: !4622, file: !118, line: 341, column: 13)
!4629 = !DILocation(line: 341, column: 9, scope: !4628)
!4630 = !DILocation(line: 341, column: 7, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !118, line: 341, column: 29)
!4632 = !DILocation(line: 343, column: 75, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !118, line: 344, column: 5)
!4634 = distinct !DILexicalBlock(scope: !4628, file: !118, line: 343, column: 5)
!4635 = !DILocation(line: 343, column: 47, scope: !4633)
!4636 = !DILocation(line: 343, column: 17, scope: !4633)
!4637 = !DILocation(line: 343, column: 23, scope: !4633)
!4638 = !DILocation(line: 343, column: 40, scope: !4633)
!4639 = !DILocation(line: 343, column: 45, scope: !4633)
!4640 = !DILocation(line: 344, column: 20, scope: !4634)
!4641 = !DILocation(line: 341, column: 7, scope: !4634)
!4642 = distinct !{!4642, !4621, !4643}
!4643 = !DILocation(line: 343, column: 3, scope: !4622)
!4644 = !DILocation(line: 345, column: 3, scope: !4622)
!4645 = !DILocation(line: 347, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4567, file: !118, line: 347, column: 7)
!4647 = !DILocation(line: 347, column: 7, scope: !4567)
!4648 = !DILocation(line: 349, column: 38, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !118, line: 349, column: 5)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !118, line: 348, column: 5)
!4651 = distinct !DILexicalBlock(scope: !4646, file: !118, line: 347, column: 23)
!4652 = !DILocation(line: 349, column: 5, scope: !4649)
!4653 = !DILocation(line: 350, column: 26, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4650, file: !118, line: 351, column: 5)
!4655 = !DILocation(line: 350, column: 5, scope: !4654)
!4656 = !DILocation(line: 353, column: 3, scope: !4651)
!4657 = !DILocation(line: 352, column: 3, scope: !4567)
!4658 = !DILocation(line: 354, column: 1, scope: !4557)
