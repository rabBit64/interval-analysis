; ModuleID = '/tmp/tmp.ll'
source_filename = "c/mpegdemux-0.1.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__anonstruct_mpeg_buffer_t_12 = type { i8*, i32, i32 }
%struct.mpeg_demux_t = type { i32, i32, %struct._IO_FILE*, i64, i32, i32, [4096 x i8], %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_pack_t_11, i64, i64, i64, i64, i64, [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8], i8*, i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)* }
%struct.__anonstruct_mpeg_shdr_t_9 = type { i32, i32, i32 }
%struct.__anonstruct_mpeg_packet_t_10 = type { i32, i32, i32, i32, i32, i8, i64, i8, i64 }
%struct.__anonstruct_mpeg_pack_t_11 = type { i32, i32, i64, i64, i32 }
%struct.__anonstruct_mpeg_stream_info_t_8 = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@pts1 = internal global [256 x i64] zeroinitializer, align 16, !dbg !0
@pts2 = internal global [256 x i64] zeroinitializer, align 16, !dbg !181
@fp = internal global [512 x %struct._IO_FILE*] zeroinitializer, align 16, !dbg !191
@skip_cnt = internal global i64 0, align 8, !dbg !214
@skip_ofs = internal global i64 0, align 8, !dbg !217
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@msg_level = internal global i32 3, align 4, !dbg !219
@stderr = external global %struct._IO_FILE*, align 8
@par_split = global i32 0, align 4, !dbg !165
@sequence = internal global i32 0, align 4, !dbg !222
@shdr = internal global %struct.__anonstruct_mpeg_buffer_t_12 zeroinitializer, align 8, !dbg !225
@pack = internal global %struct.__anonstruct_mpeg_buffer_t_12 zeroinitializer, align 8, !dbg !227
@packet___1 = internal global %struct.__anonstruct_mpeg_buffer_t_12 zeroinitializer, align 8, !dbg !229
@par_no_end = global i32 0, align 4, !dbg !159
@par_no_shdr = global i32 0, align 4, !dbg !152
@par_no_pack = global i32 0, align 4, !dbg !155
@par_no_packet = global i32 0, align 4, !dbg !157
@par_empty_pack = global i32 0, align 4, !dbg !161
@par_remux_skipped = global i32 0, align 4, !dbg !163
@par_drop = global i32 1, align 4, !dbg !167
@par_scan = global i32 0, align 4, !dbg !169
@par_first_pts = global i32 0, align 4, !dbg !171
@par_dvdac3 = global i32 0, align 4, !dbg !173
@par_dvdsub = global i32 0, align 4, !dbg !175
@par_demux_name = global i8* null, align 8, !dbg !177
@par_packet_max = global i32 0, align 4, !dbg !179
@.str.1 = private unnamed_addr constant [14 x i8] c"stream_##.dat\00", align 1
@par_stream = common global [256 x i8] zeroinitializer, align 16, !dbg !185
@par_substream = common global [256 x i8] zeroinitializer, align 16, !dbg !189
@.str.2 = private unnamed_addr constant [107 x i8] c"System headers: %lu\0APacks:          %lu\0APackets:        %lu\0AEnd codes:      %lu\0ASkipped:        %lu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Stream %02x:      %lu packets / %llu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Substream %02x:   %lu packets / %llu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@par_stream_map = common global [256 x i8] zeroinitializer, align 16, !dbg !197
@par_substream_map = common global [256 x i8] zeroinitializer, align 16, !dbg !199
@.str.7 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--scan\00", align 1
@par_mode = internal global i32 0, align 4, !dbg !231
@.str.9 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--list\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"--remux\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--demux\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"--stream\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s: missing stream id\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%s: bad stream id (%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"--substream\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s: missing substream id\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"%s: bad substream id (%s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--invalid\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%s: missing invalid stream id\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"--base-name\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"%s: missing base name\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"--packet-max-size\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"%s: missing maximum packet size\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"--stream-map\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"--substream-map\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"--split\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"--no-system-headers\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"--no-packs\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"-K\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"--remux-skipped\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"--no-packets\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"--no-end\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"--empty-packs\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"--no-drop\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"--first-pts\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"--ac3\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"--spu\00", align 1
@par_inp = internal global %struct._IO_FILE* null, align 8, !dbg !233
@stdin = external global %struct._IO_FILE*, align 8
@.str.59 = private unnamed_addr constant [32 x i8] c"%s: can't open input file (%s)\0A\00", align 1
@par_out = internal global %struct._IO_FILE* null, align 8, !dbg !235
@stdout = external global %struct._IO_FILE*, align 8
@.str.60 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"%s: can't open output file (%s)\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"%s: too many files (%s)\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"%s: unknown parameter (%s)\0A\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"%08llx: sid=%02x ssid=%02x incomplete packet\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"%08llx: sid=%02x\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"[%02x]\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c" MPEG1\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c" MPEG2\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c" UNKWN\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c" pts=%llu[%.4f]\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"%08llx: end code\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"demux: AC3 packet too small (sid=%02x size=%u)\0A\00", align 1
@packet = internal global %struct.__anonstruct_mpeg_buffer_t_12 zeroinitializer, align 8, !dbg !205
@.str.75 = private unnamed_addr constant [48 x i8] c"demux: incomplete packet (sid=%02x size=%u/%u)\0A\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"can't open stream file (%s)\0A\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"SPU \00", align 1
@half = internal global i32 0, align 4, !dbg !201
@spucnt = internal global i32 0, align 4, !dbg !203
@.str.78 = private unnamed_addr constant [54 x i8] c"%08llx: system header[%lu]: size=%u fixed=%d csps=%d\0A\00", align 1
@.str.79 = private unnamed_addr constant [66 x i8] c"%08llx: pack[%lu]: type=%u scr=%llu[%.4f] mux=%lu[%.2f] stuff=%u\0A\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"%08llx: packet[%lu]: sid=%02x\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c" size=%u\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c" pts=%llu[%.4f] dts=%llu[%.4f]\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"%08llx: end\0A\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"%08llx: skip %lu\0A\00", align 1
@.str.85 = private unnamed_addr constant [48 x i8] c"remux: incomplete packet (sid=%02x size=%u/%u)\0A\00", align 1
@.str.86 = private unnamed_addr constant [77 x i8] c"mpegdemux version 0.1.3\0A\0ACopyright (C) 2003-2009 Hampa Hug <hampa@hampa.ch>\0A\00", align 1
@.str.87 = private unnamed_addr constant [1357 x i8] c"usage: mpegdemux [options] [input [output]]\0A  -a, --ac3                    Assume DVD AC3 headers in private streams\0A  -b, --base-name name         Set the base name for demuxed streams\0A  -c, --scan                   Scan the stream [default]\0A  -d, --demux                  Demultiplex streams\0A  -D, --no-drop                Don't drop incomplete packets\0A  -e, --no-end                 Don't list end codes [no]\0A  -E, --empty-packs            Remux empty packs [no]\0A  -F, --first-pts              Print packet with lowest PTS [no]\0A  -h, --no-system-headers      Don't list system headers\0A  -i, --invalid id             Select invalid streams [none]\0A  -k, --no-packs               Don't list packs\0A  -K, --remux-skipped          Copy skipped bytes when remuxing [no]\0A  -l, --list                   List the stream contents\0A  -m, --packet-max-size int    Set the maximum packet size [0]\0A  -p, --substream id           Select substreams [none]\0A  -P, --substream-map id1 id2  Remap substream id1 to id2\0A  -r, --remux                  Copy modified input to output\0A  -s, --stream id              Select streams [none]\0A  -S, --stream-map id1 id2     Remap stream id1 to id2\0A  -t, --no-packets             Don't list packets\0A  -u, --spu                    Assume DVD subtitles in private streams\0A  -x, --split                  Split sequences while remuxing [no]\0A\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_scan(%struct._IO_FILE* %inp, %struct._IO_FILE* %out) #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %inp, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !248, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !247
  br label %while.body, !dbg !250

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !254
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !249, metadata !DIExpression()), !dbg !247
  br label %while_continue___0, !dbg !255

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !255

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp ult i32 %i.0, 256, !dbg !256
  br i1 %cmp, label %if.end, label %if.then, !dbg !259

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !260

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %i.0 to i64, !dbg !262
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @pts1, i64 0, i64 %idxprom, !dbg !262
  store i64 -1, i64* %arrayidx, align 8, !dbg !263
  %idxprom1 = zext i32 %i.0 to i64, !dbg !264
  %arrayidx2 = getelementptr inbounds [256 x i64], [256 x i64]* @pts2, i64 0, i64 %idxprom1, !dbg !264
  store i64 -1, i64* %arrayidx2, align 8, !dbg !265
  %inc = add i32 %i.0, 1, !dbg !266
  call void @llvm.dbg.value(metadata i32 %inc, metadata !249, metadata !DIExpression()), !dbg !247
  br label %while.body, !dbg !250, !llvm.loop !267

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !269

while_break:                                      ; preds = %while_break___0, %if.then
  %call = call %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* null, %struct._IO_FILE* %inp, i32 0), !dbg !270
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %call, metadata !273, metadata !DIExpression()), !dbg !247
  %0 = ptrtoint %struct.mpeg_demux_t* %call to i64, !dbg !274
  %cmp3 = icmp eq i64 %0, 0, !dbg !276
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !277

if.then4:                                         ; preds = %while_break
  br label %return, !dbg !278

if.end5:                                          ; preds = %while_break
  %1 = bitcast %struct._IO_FILE* %out to i8*, !dbg !280
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !282
  store i8* %1, i8** %ext, align 8, !dbg !283
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 20, !dbg !284
  store i32 (%struct.mpeg_demux_t*)* @mpeg_scan_system_header, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !285
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 19, !dbg !286
  store i32 (%struct.mpeg_demux_t*)* @mpeg_scan_pack, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !287
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 21, !dbg !288
  store i32 (%struct.mpeg_demux_t*)* @mpeg_scan_packet, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !289
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 22, !dbg !290
  store i32 (%struct.mpeg_demux_t*)* @mpeg_packet_check, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !291
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 23, !dbg !292
  store i32 (%struct.mpeg_demux_t*)* @mpeg_scan_end, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !293
  %call6 = call i32 @mpegd_parse(%struct.mpeg_demux_t* %call), !dbg !294
  call void @llvm.dbg.value(metadata i32 %call6, metadata !296, metadata !DIExpression()), !dbg !247
  call void @mpeg_print_stats(%struct.mpeg_demux_t* %call, %struct._IO_FILE* %out), !dbg !297
  call void @mpegd_close(%struct.mpeg_demux_t* %call), !dbg !299
  br label %return, !dbg !301

return:                                           ; preds = %if.end5, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ %call6, %if.end5 ], !dbg !254
  ret i32 %retval.0, !dbg !302
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %fp___1, i32 %close) #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !309, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %close, metadata !310, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata !4, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata !4, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata !4, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = ptrtoint %struct.mpeg_demux_t* %mpeg to i64, !dbg !317
  %cmp = icmp eq i64 %0, 0, !dbg !320
  br i1 %cmp, label %if.then, label %if.else, !dbg !321

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i32 12512) #4, !dbg !322
  call void @llvm.dbg.value(metadata i8* %call, metadata !326, metadata !DIExpression()), !dbg !308
  %1 = bitcast i8* %call to %struct.mpeg_demux_t*, !dbg !327
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %1, metadata !307, metadata !DIExpression()), !dbg !308
  %2 = ptrtoint %struct.mpeg_demux_t* %1 to i64, !dbg !328
  %cmp1 = icmp eq i64 %2, 0, !dbg !330
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !331

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !332

if.end:                                           ; preds = %if.then
  %free = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %1, i32 0, i32 1, !dbg !334
  store i32 1, i32* %free, align 4, !dbg !335
  br label %if.end4, !dbg !336

if.else:                                          ; preds = %entry
  %free3 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 1, !dbg !337
  store i32 0, i32* %free3, align 4, !dbg !339
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %mpeg.addr.0 = phi %struct.mpeg_demux_t* [ %1, %if.end ], [ %mpeg, %if.else ]
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg.addr.0, metadata !307, metadata !DIExpression()), !dbg !308
  %fp = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 2, !dbg !340
  store %struct._IO_FILE* %fp___1, %struct._IO_FILE** %fp, align 8, !dbg !342
  %close5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 0, !dbg !343
  store i32 %close, i32* %close5, align 8, !dbg !344
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 3, !dbg !345
  store i64 0, i64* %ofs, align 8, !dbg !346
  %buf_i = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 4, !dbg !347
  store i32 0, i32* %buf_i, align 8, !dbg !348
  %buf_n = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 5, !dbg !349
  store i32 0, i32* %buf_n, align 4, !dbg !350
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 17, !dbg !351
  store i8* null, i8** %ext, align 8, !dbg !352
  %mpeg_skip = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 18, !dbg !353
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_skip, align 8, !dbg !354
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 20, !dbg !355
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !356
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 21, !dbg !357
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !358
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 22, !dbg !359
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !360
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 19, !dbg !361
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !362
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg.addr.0, i32 0, i32 23, !dbg !363
  store i32 (%struct.mpeg_demux_t*)* null, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !364
  call void @mpegd_reset_stats(%struct.mpeg_demux_t* %mpeg.addr.0), !dbg !365
  br label %return, !dbg !367

return:                                           ; preds = %if.end4, %if.then2
  %retval.0 = phi %struct.mpeg_demux_t* [ null, %if.then2 ], [ %mpeg.addr.0, %if.end4 ], !dbg !368
  ret %struct.mpeg_demux_t* %retval.0, !dbg !369
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_scan_system_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !370 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !373, metadata !DIExpression()), !dbg !374
  ret i32 0, !dbg !375
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_scan_pack(%struct.mpeg_demux_t* %mpeg) #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !378, metadata !DIExpression()), !dbg !379
  ret i32 0, !dbg !380
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_scan_packet(%struct.mpeg_demux_t* %mpeg) #0 !dbg !382 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata !4, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata !4, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata !4, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata !4, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata !4, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata !4, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata !4, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata !4, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata !4, metadata !401, metadata !DIExpression()), !dbg !402
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !403
  %sid1 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 1, !dbg !406
  %0 = load i32, i32* %sid1, align 4, !dbg !406
  call void @llvm.dbg.value(metadata i32 %0, metadata !407, metadata !DIExpression()), !dbg !384
  %packet2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !408
  %ssid3 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet2, i32 0, i32 2, !dbg !409
  %1 = load i32, i32* %ssid3, align 8, !dbg !409
  call void @llvm.dbg.value(metadata i32 %1, metadata !410, metadata !DIExpression()), !dbg !384
  %conv = trunc i32 %0 to i8, !dbg !411
  %conv4 = trunc i32 %1 to i8, !dbg !413
  %call = call i32 @mpeg_stream_excl(i8 zeroext %conv, i8 zeroext %conv4), !dbg !414
  call void @llvm.dbg.value(metadata i32 %call, metadata !415, metadata !DIExpression()), !dbg !384
  %tobool = icmp ne i32 %call, 0, !dbg !416
  br i1 %tobool, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %entry
  br label %return, !dbg !419

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !421
  %2 = load i8*, i8** %ext, align 8, !dbg !421
  %3 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !423
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !424, metadata !DIExpression()), !dbg !384
  %ofs5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !425
  %4 = load i64, i64* %ofs5, align 8, !dbg !425
  call void @llvm.dbg.value(metadata i64 %4, metadata !426, metadata !DIExpression()), !dbg !384
  %packet6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !427
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet6, i32 0, i32 3, !dbg !429
  %5 = load i32, i32* %size, align 4, !dbg !429
  %conv7 = zext i32 %5 to i64, !dbg !430
  %add = add i64 %4, %conv7, !dbg !431
  %call8 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add), !dbg !432
  call void @llvm.dbg.value(metadata i32 %call8, metadata !433, metadata !DIExpression()), !dbg !384
  %tobool9 = icmp ne i32 %call8, 0, !dbg !434
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !436

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i32 0, i32 0), i64 %4, i32 %0, i32 %1), !dbg !437
  br label %if.end12, !dbg !441

if.end12:                                         ; preds = %if.then10, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !384
  %cmp = icmp eq i32 %0, 189, !dbg !443
  br i1 %cmp, label %if.then14, label %if.else, !dbg !445

if.then14:                                        ; preds = %if.end12
  %substreams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !446
  %idxprom = zext i32 %1 to i64, !dbg !449
  %arrayidx = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams, i64 0, i64 %idxprom, !dbg !449
  %packet_cnt = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx, i32 0, i32 0, !dbg !450
  %6 = load i64, i64* %packet_cnt, align 8, !dbg !450
  %cmp15 = icmp ugt i64 %6, 1, !dbg !451
  br i1 %cmp15, label %if.then17, label %if.end32, !dbg !452

if.then17:                                        ; preds = %if.then14
  %7 = load i32, i32* @par_first_pts, align 4, !dbg !453
  %tobool18 = icmp ne i32 %7, 0, !dbg !453
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !456

if.then19:                                        ; preds = %if.then17
  br label %return, !dbg !457

if.end20:                                         ; preds = %if.then17
  %packet21 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !459
  %have_pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet21, i32 0, i32 5, !dbg !461
  %8 = load i8, i8* %have_pts, align 4, !dbg !461
  %tobool22 = icmp ne i8 %8, 0, !dbg !462
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !463

if.then23:                                        ; preds = %if.end20
  br label %return, !dbg !464

if.end24:                                         ; preds = %if.end20
  %packet25 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !466
  %pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet25, i32 0, i32 6, !dbg !468
  %9 = load i64, i64* %pts, align 8, !dbg !468
  %idxprom26 = zext i32 %1 to i64, !dbg !469
  %arrayidx27 = getelementptr inbounds [256 x i64], [256 x i64]* @pts2, i64 0, i64 %idxprom26, !dbg !469
  %10 = load i64, i64* %arrayidx27, align 8, !dbg !469
  %cmp28 = icmp uge i64 %9, %10, !dbg !470
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !471

if.then30:                                        ; preds = %if.end24
  br label %return, !dbg !472

if.end31:                                         ; preds = %if.end24
  br label %if.end32, !dbg !474

if.end32:                                         ; preds = %if.end31, %if.then14
  %packet33 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !475
  %pts34 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet33, i32 0, i32 6, !dbg !477
  %11 = load i64, i64* %pts34, align 8, !dbg !477
  %idxprom35 = zext i32 %1 to i64, !dbg !478
  %arrayidx36 = getelementptr inbounds [256 x i64], [256 x i64]* @pts2, i64 0, i64 %idxprom35, !dbg !478
  %12 = load i64, i64* %arrayidx36, align 8, !dbg !478
  %cmp37 = icmp ult i64 %11, %12, !dbg !479
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !480

if.then39:                                        ; preds = %if.end32
  %packet40 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !481
  %pts41 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet40, i32 0, i32 6, !dbg !483
  %13 = load i64, i64* %pts41, align 8, !dbg !483
  %idxprom42 = zext i32 %1 to i64, !dbg !484
  %arrayidx43 = getelementptr inbounds [256 x i64], [256 x i64]* @pts2, i64 0, i64 %idxprom42, !dbg !484
  store i64 %13, i64* %arrayidx43, align 8, !dbg !485
  br label %if.end44, !dbg !486

if.end44:                                         ; preds = %if.then39, %if.end32
  br label %if.end80, !dbg !487

if.else:                                          ; preds = %if.end12
  %streams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !488
  %idxprom45 = zext i32 %0 to i64, !dbg !491
  %arrayidx46 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams, i64 0, i64 %idxprom45, !dbg !491
  %packet_cnt47 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx46, i32 0, i32 0, !dbg !492
  %14 = load i64, i64* %packet_cnt47, align 8, !dbg !492
  %cmp48 = icmp ugt i64 %14, 1, !dbg !493
  br i1 %cmp48, label %if.then50, label %if.end67, !dbg !494

if.then50:                                        ; preds = %if.else
  %15 = load i32, i32* @par_first_pts, align 4, !dbg !495
  %tobool51 = icmp ne i32 %15, 0, !dbg !495
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !498

if.then52:                                        ; preds = %if.then50
  br label %return, !dbg !499

if.end53:                                         ; preds = %if.then50
  %packet54 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !501
  %have_pts55 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet54, i32 0, i32 5, !dbg !503
  %16 = load i8, i8* %have_pts55, align 4, !dbg !503
  %tobool56 = icmp ne i8 %16, 0, !dbg !504
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !505

if.then57:                                        ; preds = %if.end53
  br label %return, !dbg !506

if.end58:                                         ; preds = %if.end53
  %packet59 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !508
  %pts60 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet59, i32 0, i32 6, !dbg !510
  %17 = load i64, i64* %pts60, align 8, !dbg !510
  %idxprom61 = zext i32 %0 to i64, !dbg !511
  %arrayidx62 = getelementptr inbounds [256 x i64], [256 x i64]* @pts1, i64 0, i64 %idxprom61, !dbg !511
  %18 = load i64, i64* %arrayidx62, align 8, !dbg !511
  %cmp63 = icmp uge i64 %17, %18, !dbg !512
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !513

if.then65:                                        ; preds = %if.end58
  br label %return, !dbg !514

if.end66:                                         ; preds = %if.end58
  br label %if.end67, !dbg !516

if.end67:                                         ; preds = %if.end66, %if.else
  %packet68 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !517
  %pts69 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet68, i32 0, i32 6, !dbg !519
  %19 = load i64, i64* %pts69, align 8, !dbg !519
  %idxprom70 = zext i32 %0 to i64, !dbg !520
  %arrayidx71 = getelementptr inbounds [256 x i64], [256 x i64]* @pts1, i64 0, i64 %idxprom70, !dbg !520
  %20 = load i64, i64* %arrayidx71, align 8, !dbg !520
  %cmp72 = icmp ult i64 %19, %20, !dbg !521
  br i1 %cmp72, label %if.then74, label %if.end79, !dbg !522

if.then74:                                        ; preds = %if.end67
  %packet75 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !523
  %pts76 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet75, i32 0, i32 6, !dbg !525
  %21 = load i64, i64* %pts76, align 8, !dbg !525
  %idxprom77 = zext i32 %0 to i64, !dbg !526
  %arrayidx78 = getelementptr inbounds [256 x i64], [256 x i64]* @pts1, i64 0, i64 %idxprom77, !dbg !526
  store i64 %21, i64* %arrayidx78, align 8, !dbg !527
  br label %if.end79, !dbg !528

if.end79:                                         ; preds = %if.then74, %if.end67
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end44
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i64 %4, i32 %0), !dbg !529
  %cmp82 = icmp eq i32 %0, 189, !dbg !532
  br i1 %cmp82, label %if.then84, label %if.else86, !dbg !534

if.then84:                                        ; preds = %if.end80
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %1), !dbg !535
  br label %if.end88, !dbg !539

if.else86:                                        ; preds = %if.end80
  %call87 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !540
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  %packet89 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !544
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet89, i32 0, i32 0, !dbg !546
  %22 = load i32, i32* %type, align 8, !dbg !546
  %cmp90 = icmp eq i32 %22, 1, !dbg !547
  br i1 %cmp90, label %if.then92, label %if.else94, !dbg !548

if.then92:                                        ; preds = %if.end88
  %call93 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !549
  br label %if.end104, !dbg !553

if.else94:                                        ; preds = %if.end88
  %packet95 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !554
  %type96 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet95, i32 0, i32 0, !dbg !556
  %23 = load i32, i32* %type96, align 8, !dbg !556
  %cmp97 = icmp eq i32 %23, 2, !dbg !557
  br i1 %cmp97, label %if.then99, label %if.else101, !dbg !558

if.then99:                                        ; preds = %if.else94
  %call100 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !559
  br label %if.end103, !dbg !563

if.else101:                                       ; preds = %if.else94
  %call102 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !564
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.then99
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then92
  %packet105 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !568
  %have_pts106 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet105, i32 0, i32 5, !dbg !570
  %24 = load i8, i8* %have_pts106, align 4, !dbg !570
  %tobool107 = icmp ne i8 %24, 0, !dbg !571
  br i1 %tobool107, label %if.then108, label %if.end115, !dbg !572

if.then108:                                       ; preds = %if.end104
  %packet109 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !573
  %pts110 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet109, i32 0, i32 6, !dbg !577
  %25 = load i64, i64* %pts110, align 8, !dbg !577
  %packet111 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !578
  %pts112 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet111, i32 0, i32 6, !dbg !579
  %26 = load i64, i64* %pts112, align 8, !dbg !579
  %conv113 = uitofp i64 %26 to double, !dbg !580
  %div = fdiv double %conv113, 9.000000e+04, !dbg !581
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i64 %25, double %div), !dbg !582
  br label %if.end115, !dbg !583

if.end115:                                        ; preds = %if.then108, %if.end104
  %call116 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %3), !dbg !584
  %call117 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !587
  br label %return, !dbg !589

return:                                           ; preds = %if.end115, %if.then65, %if.then57, %if.then52, %if.then30, %if.then23, %if.then19, %if.then
  ret i32 0, !dbg !590
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_packet_check(%struct.mpeg_demux_t* %mpeg) #0 !dbg !591 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i32, i32* @par_packet_max, align 4, !dbg !594
  %cmp = icmp ugt i32 %0, 0, !dbg !597
  br i1 %cmp, label %if.then, label %if.end3, !dbg !598

if.then:                                          ; preds = %entry
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !599
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 3, !dbg !602
  %1 = load i32, i32* %size, align 4, !dbg !602
  %2 = load i32, i32* @par_packet_max, align 4, !dbg !603
  %cmp1 = icmp ugt i32 %1, %2, !dbg !604
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !605

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !606

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !608

if.end3:                                          ; preds = %if.end, %entry
  %packet4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !609
  %sid = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet4, i32 0, i32 1, !dbg !611
  %3 = load i32, i32* %sid, align 4, !dbg !611
  %idxprom = zext i32 %3 to i64, !dbg !612
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom, !dbg !612
  %4 = load i8, i8* %arrayidx, align 1, !dbg !612
  %conv = zext i8 %4 to i32, !dbg !613
  %and = and i32 %conv, 2, !dbg !614
  %tobool = icmp ne i32 %and, 0, !dbg !614
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !615

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !616

if.end6:                                          ; preds = %if.end3
  br label %return, !dbg !618

return:                                           ; preds = %if.end6, %if.then5, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then5 ], [ 0, %if.end6 ], !dbg !619
  ret i32 %retval.0, !dbg !620
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_scan_end(%struct.mpeg_demux_t* %mpeg) #0 !dbg !621 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata !4, metadata !624, metadata !DIExpression()), !dbg !625
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !626
  %0 = load i8*, i8** %ext, align 8, !dbg !626
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !628
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !629, metadata !DIExpression()), !dbg !623
  %2 = load i32, i32* @par_no_end, align 4, !dbg !630
  %tobool = icmp ne i32 %2, 0, !dbg !630
  br i1 %tobool, label %if.end, label %if.then, !dbg !632

if.then:                                          ; preds = %entry
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !633
  %3 = load i64, i64* %ofs, align 8, !dbg !633
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i64 %3), !dbg !637
  br label %if.end, !dbg !638

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !639
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpegd_parse(%struct.mpeg_demux_t* %mpeg) #0 !dbg !640 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !641, metadata !DIExpression()), !dbg !642
  br label %while.body, !dbg !643

while.body:                                       ; preds = %switch_break, %entry
  br label %while_continue___0, !dbg !647

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !647

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @mpegd_seek_header(%struct.mpeg_demux_t* %mpeg), !dbg !648
  call void @llvm.dbg.value(metadata i32 %call, metadata !652, metadata !DIExpression()), !dbg !642
  %tobool = icmp ne i32 %call, 0, !dbg !653
  br i1 %tobool, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %while_continue
  br label %return, !dbg !656

if.end:                                           ; preds = %while_continue
  %call1 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 0, i32 32), !dbg !658
  call void @llvm.dbg.value(metadata i64 %call1, metadata !661, metadata !DIExpression()), !dbg !642
  %cmp = icmp eq i64 %call1, 442, !dbg !662
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !665

if.then2:                                         ; preds = %if.end
  br label %case_442, !dbg !666

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i64 %call1, 441, !dbg !668
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !670

if.then5:                                         ; preds = %if.end3
  br label %case_441, !dbg !671

if.end6:                                          ; preds = %if.end3
  br label %switch_default, !dbg !673

case_442:                                         ; preds = %if.then2
  %call7 = call i32 @mpegd_parse_pack(%struct.mpeg_demux_t* %mpeg), !dbg !674
  call void @llvm.dbg.value(metadata i32 %call7, metadata !677, metadata !DIExpression()), !dbg !642
  %tobool8 = icmp ne i32 %call7, 0, !dbg !678
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !680

if.then9:                                         ; preds = %case_442
  br label %return, !dbg !681

if.end10:                                         ; preds = %case_442
  br label %switch_break, !dbg !683

case_441:                                         ; preds = %if.then5
  %end_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 13, !dbg !684
  %0 = load i64, i64* %end_cnt, align 8, !dbg !685
  %inc = add i64 %0, 1, !dbg !685
  store i64 %inc, i64* %end_cnt, align 8, !dbg !685
  %ofs11 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !686
  %1 = load i64, i64* %ofs11, align 8, !dbg !686
  %add = add i64 %1, 4, !dbg !687
  call void @llvm.dbg.value(metadata i64 %add, metadata !688, metadata !DIExpression()), !dbg !642
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 23, !dbg !689
  %2 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !689
  %3 = ptrtoint i32 (%struct.mpeg_demux_t*)* %2 to i64, !dbg !691
  %cmp12 = icmp ne i64 %3, 0, !dbg !692
  br i1 %cmp12, label %if.then13, label %if.end19, !dbg !693

if.then13:                                        ; preds = %case_441
  %mpeg_end14 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 23, !dbg !694
  %4 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_end14, align 8, !dbg !694
  %call15 = call i32 %4(%struct.mpeg_demux_t* %mpeg), !dbg !698
  call void @llvm.dbg.value(metadata i32 %call15, metadata !699, metadata !DIExpression()), !dbg !642
  %tobool16 = icmp ne i32 %call15, 0, !dbg !700
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !702

if.then17:                                        ; preds = %if.then13
  br label %return, !dbg !703

if.end18:                                         ; preds = %if.then13
  br label %if.end19, !dbg !705

if.end19:                                         ; preds = %if.end18, %case_441
  %call20 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add), !dbg !706
  call void @llvm.dbg.value(metadata i32 %call20, metadata !709, metadata !DIExpression()), !dbg !642
  %tobool21 = icmp ne i32 %call20, 0, !dbg !710
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !712

if.then22:                                        ; preds = %if.end19
  br label %return, !dbg !713

if.end23:                                         ; preds = %if.end19
  br label %switch_break, !dbg !715

switch_default:                                   ; preds = %if.end6
  %ofs24 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !716
  %5 = load i64, i64* %ofs24, align 8, !dbg !716
  %add25 = add i64 %5, 1, !dbg !717
  call void @llvm.dbg.value(metadata i64 %add25, metadata !688, metadata !DIExpression()), !dbg !642
  %mpeg_skip = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 18, !dbg !718
  %6 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_skip, align 8, !dbg !718
  %7 = ptrtoint i32 (%struct.mpeg_demux_t*)* %6 to i64, !dbg !720
  %cmp26 = icmp ne i64 %7, 0, !dbg !721
  br i1 %cmp26, label %if.then27, label %if.end33, !dbg !722

if.then27:                                        ; preds = %switch_default
  %mpeg_skip28 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 18, !dbg !723
  %8 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_skip28, align 8, !dbg !723
  %call29 = call i32 %8(%struct.mpeg_demux_t* %mpeg), !dbg !727
  call void @llvm.dbg.value(metadata i32 %call29, metadata !728, metadata !DIExpression()), !dbg !642
  %tobool30 = icmp ne i32 %call29, 0, !dbg !729
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !731

if.then31:                                        ; preds = %if.then27
  br label %return, !dbg !732

if.end32:                                         ; preds = %if.then27
  br label %if.end33, !dbg !734

if.end33:                                         ; preds = %if.end32, %switch_default
  %call34 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add25), !dbg !735
  call void @llvm.dbg.value(metadata i32 %call34, metadata !738, metadata !DIExpression()), !dbg !642
  %tobool35 = icmp ne i32 %call34, 0, !dbg !739
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !741

if.then36:                                        ; preds = %if.end33
  br label %return, !dbg !742

if.end37:                                         ; preds = %if.end33
  br label %switch_break, !dbg !744

switch_break:                                     ; preds = %if.end37, %if.end23, %if.end10
  br label %while.body, !dbg !643, !llvm.loop !745

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !747

while_break:                                      ; preds = %while_break___0
  store i32 0, i32* undef, align 4, !dbg !748
  br label %return, !dbg !748

return:                                           ; preds = %while_break, %if.then36, %if.then31, %if.then22, %if.then17, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then9 ], [ 1, %if.then17 ], [ 1, %if.then22 ], [ 1, %if.then31 ], [ 0, %if.then36 ], [ undef, %while_break ], !dbg !749
  ret i32 %retval.0, !dbg !750
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mpeg_print_stats(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %fp___1) #0 !dbg !751 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !756, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata !4, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata !4, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata !4, metadata !761, metadata !DIExpression()), !dbg !762
  %shdr_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 10, !dbg !763
  %0 = load i64, i64* %shdr_cnt, align 8, !dbg !763
  %pack_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 11, !dbg !767
  %1 = load i64, i64* %pack_cnt, align 8, !dbg !767
  %packet_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 12, !dbg !768
  %2 = load i64, i64* %packet_cnt, align 8, !dbg !768
  %end_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 13, !dbg !769
  %3 = load i64, i64* %end_cnt, align 8, !dbg !769
  %skip_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 14, !dbg !770
  %4 = load i64, i64* %skip_cnt, align 8, !dbg !770
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp___1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i32 0, i32 0), i64 %0, i64 %1, i64 %2, i64 %3, i64 %4), !dbg !771
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while.body, !dbg !773

while.body:                                       ; preds = %if.end12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end12 ], !dbg !776
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while_continue___1, !dbg !777

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !777

while_continue:                                   ; preds = %while_continue___1
  %cmp = icmp ult i32 %i.0, 256, !dbg !778
  br i1 %cmp, label %if.end, label %if.then, !dbg !781

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !782

if.end:                                           ; preds = %while_continue
  %streams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !784
  %idxprom = zext i32 %i.0 to i64, !dbg !786
  %arrayidx = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams, i64 0, i64 %idxprom, !dbg !786
  %packet_cnt1 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx, i32 0, i32 0, !dbg !787
  %5 = load i64, i64* %packet_cnt1, align 8, !dbg !787
  %cmp2 = icmp ugt i64 %5, 0, !dbg !788
  br i1 %cmp2, label %if.then3, label %if.end12, !dbg !789

if.then3:                                         ; preds = %if.end
  %streams4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !790
  %idxprom5 = zext i32 %i.0 to i64, !dbg !794
  %arrayidx6 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams4, i64 0, i64 %idxprom5, !dbg !794
  %packet_cnt7 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx6, i32 0, i32 0, !dbg !795
  %6 = load i64, i64* %packet_cnt7, align 8, !dbg !795
  %streams8 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !796
  %idxprom9 = zext i32 %i.0 to i64, !dbg !797
  %arrayidx10 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams8, i64 0, i64 %idxprom9, !dbg !797
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx10, i32 0, i32 1, !dbg !798
  %7 = load i64, i64* %size, align 8, !dbg !798
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp___1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i32 %i.0, i64 %6, i64 %7), !dbg !799
  br label %if.end12, !dbg !800

if.end12:                                         ; preds = %if.then3, %if.end
  %inc = add i32 %i.0, 1, !dbg !801
  call void @llvm.dbg.value(metadata i32 %inc, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while.body, !dbg !773, !llvm.loop !802

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !804

while_break:                                      ; preds = %while_break___1, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while.body13, !dbg !805

while.body13:                                     ; preds = %if.end31, %while_break
  %i.1 = phi i32 [ 0, %while_break ], [ %inc32, %if.end31 ], !dbg !776
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while_continue___2, !dbg !808

while_continue___2:                               ; preds = %while.body13
  br label %while_continue___0, !dbg !808

while_continue___0:                               ; preds = %while_continue___2
  %cmp14 = icmp ult i32 %i.1, 256, !dbg !809
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !812

if.then15:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !813

if.end16:                                         ; preds = %while_continue___0
  %substreams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !815
  %idxprom17 = zext i32 %i.1 to i64, !dbg !817
  %arrayidx18 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams, i64 0, i64 %idxprom17, !dbg !817
  %packet_cnt19 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx18, i32 0, i32 0, !dbg !818
  %8 = load i64, i64* %packet_cnt19, align 8, !dbg !818
  %cmp20 = icmp ugt i64 %8, 0, !dbg !819
  br i1 %cmp20, label %if.then21, label %if.end31, !dbg !820

if.then21:                                        ; preds = %if.end16
  %substreams22 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !821
  %idxprom23 = zext i32 %i.1 to i64, !dbg !825
  %arrayidx24 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams22, i64 0, i64 %idxprom23, !dbg !825
  %packet_cnt25 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx24, i32 0, i32 0, !dbg !826
  %9 = load i64, i64* %packet_cnt25, align 8, !dbg !826
  %substreams26 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !827
  %idxprom27 = zext i32 %i.1 to i64, !dbg !828
  %arrayidx28 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams26, i64 0, i64 %idxprom27, !dbg !828
  %size29 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx28, i32 0, i32 1, !dbg !829
  %10 = load i64, i64* %size29, align 8, !dbg !829
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp___1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i32 %i.1, i64 %9, i64 %10), !dbg !830
  br label %if.end31, !dbg !831

if.end31:                                         ; preds = %if.then21, %if.end16
  %inc32 = add i32 %i.1, 1, !dbg !832
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !772, metadata !DIExpression()), !dbg !755
  br label %while.body13, !dbg !805, !llvm.loop !833

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !835

while_break___0:                                  ; preds = %while_break___2, %if.then15
  %call33 = call i32 @fflush(%struct._IO_FILE* %fp___1), !dbg !836
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mpegd_close(%struct.mpeg_demux_t* %mpeg) #0 !dbg !840 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !843, metadata !DIExpression()), !dbg !844
  %close = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 0, !dbg !845
  %0 = load i32, i32* %close, align 8, !dbg !845
  %tobool = icmp ne i32 %0, 0, !dbg !848
  br i1 %tobool, label %if.then, label %if.end, !dbg !849

if.then:                                          ; preds = %entry
  %fp = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 2, !dbg !850
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !850
  %call = call i32 @fclose(%struct._IO_FILE* %1), !dbg !854
  br label %if.end, !dbg !855

if.end:                                           ; preds = %if.then, %entry
  %free = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 1, !dbg !856
  %2 = load i32, i32* %free, align 4, !dbg !856
  %tobool1 = icmp ne i32 %2, 0, !dbg !858
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !859

if.then2:                                         ; preds = %if.end
  %3 = bitcast %struct.mpeg_demux_t* %mpeg to i8*, !dbg !860
  call void @free(i8* %3) #4, !dbg !864
  br label %if.end3, !dbg !865

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_demux(%struct._IO_FILE* %inp, %struct._IO_FILE* %out) #0 !dbg !867 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %inp, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !870, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while.body, !dbg !872

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !876
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while_continue___1, !dbg !877

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !877

while_continue:                                   ; preds = %while_continue___1
  %cmp = icmp ult i32 %i.0, 512, !dbg !878
  br i1 %cmp, label %if.end, label %if.then, !dbg !881

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !882

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %i.0 to i64, !dbg !884
  %arrayidx = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom, !dbg !884
  store %struct._IO_FILE* null, %struct._IO_FILE** %arrayidx, align 8, !dbg !885
  %inc = add i32 %i.0, 1, !dbg !886
  call void @llvm.dbg.value(metadata i32 %inc, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while.body, !dbg !872, !llvm.loop !887

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !889

while_break:                                      ; preds = %while_break___1, %if.then
  %call = call %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* null, %struct._IO_FILE* %inp, i32 0), !dbg !890
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %call, metadata !893, metadata !DIExpression()), !dbg !869
  %0 = ptrtoint %struct.mpeg_demux_t* %call to i64, !dbg !894
  %cmp1 = icmp eq i64 %0, 0, !dbg !896
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !897

if.then2:                                         ; preds = %while_break
  br label %return, !dbg !898

if.end3:                                          ; preds = %while_break
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 20, !dbg !900
  store i32 (%struct.mpeg_demux_t*)* @mpeg_demux_system_header, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !902
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 19, !dbg !903
  store i32 (%struct.mpeg_demux_t*)* @mpeg_demux_pack, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !904
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 21, !dbg !905
  store i32 (%struct.mpeg_demux_t*)* @mpeg_demux_packet, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !906
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 22, !dbg !907
  store i32 (%struct.mpeg_demux_t*)* @mpeg_packet_check, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !908
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 23, !dbg !909
  store i32 (%struct.mpeg_demux_t*)* @mpeg_demux_end, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !910
  %1 = bitcast %struct._IO_FILE* %out to i8*, !dbg !911
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !912
  store i8* %1, i8** %ext, align 8, !dbg !913
  %call4 = call i32 @mpegd_parse(%struct.mpeg_demux_t* %call), !dbg !914
  call void @llvm.dbg.value(metadata i32 %call4, metadata !916, metadata !DIExpression()), !dbg !869
  call void @mpegd_close(%struct.mpeg_demux_t* %call), !dbg !917
  call void @llvm.dbg.value(metadata i32 0, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while.body5, !dbg !919

while.body5:                                      ; preds = %if.end21, %if.end3
  %i.1 = phi i32 [ 0, %if.end3 ], [ %inc22, %if.end21 ], !dbg !876
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while_continue___2, !dbg !922

while_continue___2:                               ; preds = %while.body5
  br label %while_continue___0, !dbg !922

while_continue___0:                               ; preds = %while_continue___2
  %cmp6 = icmp ult i32 %i.1, 512, !dbg !923
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !926

if.then7:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !927

if.end8:                                          ; preds = %while_continue___0
  %idxprom9 = zext i32 %i.1 to i64, !dbg !929
  %arrayidx10 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom9, !dbg !929
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx10, align 8, !dbg !929
  %3 = ptrtoint %struct._IO_FILE* %2 to i64, !dbg !931
  %cmp11 = icmp ne i64 %3, 0, !dbg !932
  br i1 %cmp11, label %if.then12, label %if.end21, !dbg !933

if.then12:                                        ; preds = %if.end8
  %idxprom13 = zext i32 %i.1 to i64, !dbg !934
  %arrayidx14 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom13, !dbg !934
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx14, align 8, !dbg !934
  %5 = ptrtoint %struct._IO_FILE* %4 to i64, !dbg !937
  %6 = ptrtoint %struct._IO_FILE* %out to i64, !dbg !938
  %cmp15 = icmp ne i64 %5, %6, !dbg !939
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !940

if.then16:                                        ; preds = %if.then12
  %idxprom17 = zext i32 %i.1 to i64, !dbg !941
  %arrayidx18 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom17, !dbg !941
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx18, align 8, !dbg !941
  %call19 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !945
  br label %if.end20, !dbg !946

if.end20:                                         ; preds = %if.then16, %if.then12
  br label %if.end21, !dbg !947

if.end21:                                         ; preds = %if.end20, %if.end8
  %inc22 = add i32 %i.1, 1, !dbg !948
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !871, metadata !DIExpression()), !dbg !869
  br label %while.body5, !dbg !919, !llvm.loop !949

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !951

while_break___0:                                  ; preds = %while_break___2, %if.then7
  br label %return, !dbg !952

return:                                           ; preds = %while_break___0, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ %call4, %while_break___0 ], !dbg !876
  ret i32 %retval.0, !dbg !953
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_demux_system_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !954 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !955, metadata !DIExpression()), !dbg !956
  ret i32 0, !dbg !957
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_demux_pack(%struct.mpeg_demux_t* %mpeg) #0 !dbg !959 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !960, metadata !DIExpression()), !dbg !961
  ret i32 0, !dbg !962
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_demux_packet(%struct.mpeg_demux_t* %mpeg) #0 !dbg !964 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata !4, metadata !967, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.declare(metadata !4, metadata !969, metadata !DIExpression()), !dbg !970
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !971
  %sid1 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 1, !dbg !974
  %0 = load i32, i32* %sid1, align 4, !dbg !974
  call void @llvm.dbg.value(metadata i32 %0, metadata !975, metadata !DIExpression()), !dbg !966
  %packet2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !976
  %ssid3 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet2, i32 0, i32 2, !dbg !977
  %1 = load i32, i32* %ssid3, align 8, !dbg !977
  call void @llvm.dbg.value(metadata i32 %1, metadata !978, metadata !DIExpression()), !dbg !966
  %conv = trunc i32 %0 to i8, !dbg !979
  %conv4 = trunc i32 %1 to i8, !dbg !981
  %call = call i32 @mpeg_stream_excl(i8 zeroext %conv, i8 zeroext %conv4), !dbg !982
  call void @llvm.dbg.value(metadata i32 %call, metadata !983, metadata !DIExpression()), !dbg !966
  %tobool = icmp ne i32 %call, 0, !dbg !984
  br i1 %tobool, label %if.then, label %if.end, !dbg !986

if.then:                                          ; preds = %entry
  br label %return, !dbg !987

if.end:                                           ; preds = %entry
  %packet5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !989
  %offset = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet5, i32 0, i32 4, !dbg !990
  %2 = load i32, i32* %offset, align 8, !dbg !990
  call void @llvm.dbg.value(metadata i32 %2, metadata !991, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 %0, metadata !992, metadata !DIExpression()), !dbg !966
  %cmp = icmp eq i32 %0, 189, !dbg !993
  br i1 %cmp, label %if.then7, label %if.end12, !dbg !995

if.then7:                                         ; preds = %if.end
  %add = add i32 256, %1, !dbg !996
  call void @llvm.dbg.value(metadata i32 %add, metadata !992, metadata !DIExpression()), !dbg !966
  %inc = add i32 %2, 1, !dbg !998
  call void @llvm.dbg.value(metadata i32 %inc, metadata !991, metadata !DIExpression()), !dbg !966
  %3 = load i32, i32* @par_dvdac3, align 4, !dbg !999
  %tobool8 = icmp ne i32 %3, 0, !dbg !999
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1001

if.then9:                                         ; preds = %if.then7
  %add10 = add i32 %inc, 3, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %add10, metadata !991, metadata !DIExpression()), !dbg !966
  br label %if.end11, !dbg !1004

if.end11:                                         ; preds = %if.then9, %if.then7
  %cnt.0 = phi i32 [ %add10, %if.then9 ], [ %inc, %if.then7 ], !dbg !1005
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !991, metadata !DIExpression()), !dbg !966
  br label %if.end12, !dbg !1006

if.end12:                                         ; preds = %if.end11, %if.end
  %fpi.0 = phi i32 [ %add, %if.end11 ], [ %0, %if.end ], !dbg !1007
  %cnt.1 = phi i32 [ %cnt.0, %if.end11 ], [ %2, %if.end ], !dbg !1007
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !991, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 %fpi.0, metadata !992, metadata !DIExpression()), !dbg !966
  %packet13 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1008
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet13, i32 0, i32 3, !dbg !1010
  %4 = load i32, i32* %size, align 4, !dbg !1010
  %cmp14 = icmp ugt i32 %cnt.1, %4, !dbg !1011
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !1012

if.then16:                                        ; preds = %if.end12
  %packet17 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1013
  %size18 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet17, i32 0, i32 3, !dbg !1017
  %5 = load i32, i32* %size18, align 4, !dbg !1017
  call void (i8*, ...) @prt_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i32 0, i32 0), i32 %0, i32 %5), !dbg !1018
  br label %return, !dbg !1019

if.end19:                                         ; preds = %if.end12
  %idxprom = zext i32 %fpi.0 to i64, !dbg !1020
  %arrayidx = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom, !dbg !1020
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx, align 8, !dbg !1020
  %7 = ptrtoint %struct._IO_FILE* %6 to i64, !dbg !1022
  %cmp20 = icmp eq i64 %7, 0, !dbg !1023
  br i1 %cmp20, label %if.then22, label %if.end32, !dbg !1024

if.then22:                                        ; preds = %if.end19
  %call23 = call %struct._IO_FILE* @mpeg_demux_open(%struct.mpeg_demux_t* %mpeg, i32 %0, i32 %1), !dbg !1025
  %idxprom24 = zext i32 %fpi.0 to i64, !dbg !1029
  %arrayidx25 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom24, !dbg !1029
  store %struct._IO_FILE* %call23, %struct._IO_FILE** %arrayidx25, align 8, !dbg !1030
  %idxprom26 = zext i32 %fpi.0 to i64, !dbg !1031
  %arrayidx27 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom26, !dbg !1031
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx27, align 8, !dbg !1031
  %9 = ptrtoint %struct._IO_FILE* %8 to i64, !dbg !1033
  %cmp28 = icmp eq i64 %9, 0, !dbg !1034
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1035

if.then30:                                        ; preds = %if.then22
  br label %return, !dbg !1036

if.end31:                                         ; preds = %if.then22
  br label %if.end32, !dbg !1038

if.end32:                                         ; preds = %if.end31, %if.end19
  %cmp33 = icmp ugt i32 %cnt.1, 0, !dbg !1039
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !1041

if.then35:                                        ; preds = %if.end32
  %call36 = call i32 @mpegd_skip(%struct.mpeg_demux_t* %mpeg, i32 %cnt.1), !dbg !1042
  br label %if.end37, !dbg !1046

if.end37:                                         ; preds = %if.then35, %if.end32
  %packet38 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1047
  %size39 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet38, i32 0, i32 3, !dbg !1048
  %10 = load i32, i32* %size39, align 4, !dbg !1048
  %sub = sub i32 %10, %cnt.1, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %sub, metadata !991, metadata !DIExpression()), !dbg !966
  %cmp40 = icmp eq i32 %0, 189, !dbg !1050
  br i1 %cmp40, label %if.then42, label %if.end49, !dbg !1052

if.then42:                                        ; preds = %if.end37
  %11 = load i32, i32* @par_dvdsub, align 4, !dbg !1053
  %tobool43 = icmp ne i32 %11, 0, !dbg !1053
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !1056

if.then44:                                        ; preds = %if.then42
  %idxprom45 = zext i32 %fpi.0 to i64, !dbg !1057
  %arrayidx46 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom45, !dbg !1057
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx46, align 8, !dbg !1057
  %call47 = call i32 @mpeg_demux_copy_spu(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %12, i32 %sub), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %call47, metadata !1062, metadata !DIExpression()), !dbg !966
  br label %return, !dbg !1063

if.end48:                                         ; preds = %if.then42
  br label %if.end49, !dbg !1064

if.end49:                                         ; preds = %if.end48, %if.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !1065, metadata !DIExpression()), !dbg !966
  %call50 = call i32 @mpeg_buf_read(%struct.__anonstruct_mpeg_buffer_t_12* @packet, %struct.mpeg_demux_t* %mpeg, i32 %sub), !dbg !1066
  call void @llvm.dbg.value(metadata i32 %call50, metadata !1069, metadata !DIExpression()), !dbg !966
  %tobool51 = icmp ne i32 %call50, 0, !dbg !1070
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !1072

if.then52:                                        ; preds = %if.end49
  %13 = load i32, i32* getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet, i32 0, i32 1), align 8, !dbg !1073
  call void (i8*, ...) @prt_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.75, i32 0, i32 0), i32 %0, i32 %13, i32 %sub), !dbg !1077
  %14 = load i32, i32* @par_drop, align 4, !dbg !1078
  %tobool53 = icmp ne i32 %14, 0, !dbg !1078
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1080

if.then54:                                        ; preds = %if.then52
  call void @mpeg_buf_clear(%struct.__anonstruct_mpeg_buffer_t_12* @packet), !dbg !1081
  br label %return, !dbg !1085

if.end55:                                         ; preds = %if.then52
  call void @llvm.dbg.value(metadata i32 1, metadata !1065, metadata !DIExpression()), !dbg !966
  br label %if.end56, !dbg !1086

if.end56:                                         ; preds = %if.end55, %if.end49
  %r.0 = phi i32 [ 1, %if.end55 ], [ 0, %if.end49 ], !dbg !1007
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !1065, metadata !DIExpression()), !dbg !966
  %idxprom57 = zext i32 %fpi.0 to i64, !dbg !1087
  %arrayidx58 = getelementptr inbounds [512 x %struct._IO_FILE*], [512 x %struct._IO_FILE*]* @fp, i64 0, i64 %idxprom57, !dbg !1087
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx58, align 8, !dbg !1087
  %call59 = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @packet, %struct._IO_FILE* %15), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %call59, metadata !1091, metadata !DIExpression()), !dbg !966
  %tobool60 = icmp ne i32 %call59, 0, !dbg !1092
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !1094

if.then61:                                        ; preds = %if.end56
  call void @llvm.dbg.value(metadata i32 1, metadata !1065, metadata !DIExpression()), !dbg !966
  br label %if.end62, !dbg !1095

if.end62:                                         ; preds = %if.then61, %if.end56
  %r.1 = phi i32 [ 1, %if.then61 ], [ %r.0, %if.end56 ], !dbg !1007
  call void @llvm.dbg.value(metadata i32 %r.1, metadata !1065, metadata !DIExpression()), !dbg !966
  br label %return, !dbg !1097

return:                                           ; preds = %if.end62, %if.then54, %if.then44, %if.then30, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then16 ], [ 1, %if.then30 ], [ %call47, %if.then44 ], [ 1, %if.then54 ], [ %r.1, %if.end62 ], !dbg !1007
  ret i32 %retval.0, !dbg !1098
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_demux_end(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1099 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1100, metadata !DIExpression()), !dbg !1101
  ret i32 0, !dbg !1102
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_list(%struct._IO_FILE* %inp, %struct._IO_FILE* %out) #0 !dbg !1104 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %inp, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !1107, metadata !DIExpression()), !dbg !1106
  %call = call %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* null, %struct._IO_FILE* %inp, i32 0), !dbg !1108
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %call, metadata !1112, metadata !DIExpression()), !dbg !1106
  %0 = ptrtoint %struct.mpeg_demux_t* %call to i64, !dbg !1113
  %cmp = icmp eq i64 %0, 0, !dbg !1115
  br i1 %cmp, label %if.then, label %if.end, !dbg !1116

if.then:                                          ; preds = %entry
  br label %return, !dbg !1117

if.end:                                           ; preds = %entry
  store i64 0, i64* @skip_cnt, align 8, !dbg !1119
  store i64 0, i64* @skip_ofs, align 8, !dbg !1121
  %1 = bitcast %struct._IO_FILE* %out to i8*, !dbg !1122
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !1123
  store i8* %1, i8** %ext, align 8, !dbg !1124
  %mpeg_skip = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 18, !dbg !1125
  store i32 (%struct.mpeg_demux_t*)* @mpeg_list_skip, i32 (%struct.mpeg_demux_t*)** %mpeg_skip, align 8, !dbg !1126
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 20, !dbg !1127
  store i32 (%struct.mpeg_demux_t*)* @mpeg_list_system_header, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !1128
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 19, !dbg !1129
  store i32 (%struct.mpeg_demux_t*)* @mpeg_list_pack, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !1130
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 21, !dbg !1131
  store i32 (%struct.mpeg_demux_t*)* @mpeg_list_packet, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !1132
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 22, !dbg !1133
  store i32 (%struct.mpeg_demux_t*)* @mpeg_packet_check, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !1134
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 23, !dbg !1135
  store i32 (%struct.mpeg_demux_t*)* @mpeg_list_end, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !1136
  %call1 = call i32 @mpegd_parse(%struct.mpeg_demux_t* %call), !dbg !1137
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1139, metadata !DIExpression()), !dbg !1106
  call void @mpeg_list_print_skip(%struct._IO_FILE* %out), !dbg !1140
  call void @mpeg_print_stats(%struct.mpeg_demux_t* %call, %struct._IO_FILE* %out), !dbg !1142
  call void @mpegd_close(%struct.mpeg_demux_t* %call), !dbg !1144
  br label %return, !dbg !1146

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call1, %if.end ], !dbg !1147
  ret i32 %retval.0, !dbg !1148
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_list_skip(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1149 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1150, metadata !DIExpression()), !dbg !1151
  %0 = load i64, i64* @skip_cnt, align 8, !dbg !1152
  %cmp = icmp eq i64 %0, 0, !dbg !1155
  br i1 %cmp, label %if.then, label %if.end, !dbg !1156

if.then:                                          ; preds = %entry
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1157
  %1 = load i64, i64* %ofs, align 8, !dbg !1157
  store i64 %1, i64* @skip_ofs, align 8, !dbg !1159
  br label %if.end, !dbg !1160

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @skip_cnt, align 8, !dbg !1161
  %inc = add i64 %2, 1, !dbg !1161
  store i64 %inc, i64* @skip_cnt, align 8, !dbg !1161
  ret i32 0, !dbg !1162
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_list_system_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1163 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata !4, metadata !1166, metadata !DIExpression()), !dbg !1167
  %0 = load i32, i32* @par_no_shdr, align 4, !dbg !1168
  %tobool = icmp ne i32 %0, 0, !dbg !1168
  br i1 %tobool, label %if.then, label %if.end, !dbg !1171

if.then:                                          ; preds = %entry
  br label %return, !dbg !1172

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !1174
  %1 = load i8*, i8** %ext, align 8, !dbg !1174
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !1176
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1177, metadata !DIExpression()), !dbg !1165
  call void @mpeg_list_print_skip(%struct._IO_FILE* %2), !dbg !1178
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1180
  %3 = load i64, i64* %ofs, align 8, !dbg !1180
  %shdr_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 10, !dbg !1182
  %4 = load i64, i64* %shdr_cnt, align 8, !dbg !1182
  %sub = sub i64 %4, 1, !dbg !1183
  %shdr = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !1184
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr, i32 0, i32 0, !dbg !1185
  %5 = load i32, i32* %size, align 8, !dbg !1185
  %shdr1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !1186
  %fixed = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr1, i32 0, i32 1, !dbg !1187
  %6 = load i32, i32* %fixed, align 4, !dbg !1187
  %shdr2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !1188
  %csps = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr2, i32 0, i32 2, !dbg !1189
  %7 = load i32, i32* %csps, align 8, !dbg !1189
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.78, i32 0, i32 0), i64 %3, i64 %sub, i32 %5, i32 %6, i32 %7), !dbg !1190
  br label %return, !dbg !1191

return:                                           ; preds = %if.end, %if.then
  ret i32 0, !dbg !1192
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_list_pack(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1193 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.declare(metadata !4, metadata !1196, metadata !DIExpression()), !dbg !1197
  %0 = load i32, i32* @par_no_pack, align 4, !dbg !1198
  %tobool = icmp ne i32 %0, 0, !dbg !1198
  br i1 %tobool, label %if.then, label %if.end, !dbg !1201

if.then:                                          ; preds = %entry
  br label %return, !dbg !1202

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !1204
  %1 = load i8*, i8** %ext, align 8, !dbg !1204
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !1206
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1207, metadata !DIExpression()), !dbg !1195
  call void @mpeg_list_print_skip(%struct._IO_FILE* %2), !dbg !1208
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1210
  %3 = load i64, i64* %ofs, align 8, !dbg !1210
  %pack_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 11, !dbg !1212
  %4 = load i64, i64* %pack_cnt, align 8, !dbg !1212
  %sub = sub i64 %4, 1, !dbg !1213
  %pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1214
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack, i32 0, i32 1, !dbg !1215
  %5 = load i32, i32* %type, align 4, !dbg !1215
  %pack1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1216
  %scr = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack1, i32 0, i32 2, !dbg !1217
  %6 = load i64, i64* %scr, align 8, !dbg !1217
  %pack2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1218
  %scr3 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack2, i32 0, i32 2, !dbg !1219
  %7 = load i64, i64* %scr3, align 8, !dbg !1219
  %conv = uitofp i64 %7 to double, !dbg !1220
  %div = fdiv double %conv, 9.000000e+04, !dbg !1221
  %pack4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1222
  %mux_rate = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack4, i32 0, i32 3, !dbg !1223
  %8 = load i64, i64* %mux_rate, align 8, !dbg !1223
  %pack5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1224
  %mux_rate6 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack5, i32 0, i32 3, !dbg !1225
  %9 = load i64, i64* %mux_rate6, align 8, !dbg !1225
  %conv7 = uitofp i64 %9 to double, !dbg !1226
  %mul = fmul double 5.000000e+01, %conv7, !dbg !1227
  %pack8 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !1228
  %stuff = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack8, i32 0, i32 4, !dbg !1229
  %10 = load i32, i32* %stuff, align 8, !dbg !1229
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.79, i32 0, i32 0), i64 %3, i64 %sub, i32 %5, i64 %6, double %div, i64 %8, double %mul, i32 %10), !dbg !1230
  %call9 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !1231
  br label %return, !dbg !1233

return:                                           ; preds = %if.end, %if.then
  ret i32 0, !dbg !1234
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_list_packet(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1235 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.declare(metadata !4, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.declare(metadata !4, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata !4, metadata !1242, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.declare(metadata !4, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata !4, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata !4, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata !4, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata !4, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata !4, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata !4, metadata !1256, metadata !DIExpression()), !dbg !1257
  %0 = load i32, i32* @par_no_packet, align 4, !dbg !1258
  %tobool = icmp ne i32 %0, 0, !dbg !1258
  br i1 %tobool, label %if.then, label %if.end, !dbg !1261

if.then:                                          ; preds = %entry
  br label %return, !dbg !1262

if.end:                                           ; preds = %entry
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1264
  %sid1 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 1, !dbg !1266
  %1 = load i32, i32* %sid1, align 4, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1267, metadata !DIExpression()), !dbg !1237
  %packet2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1268
  %ssid3 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet2, i32 0, i32 2, !dbg !1269
  %2 = load i32, i32* %ssid3, align 8, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %2, metadata !1270, metadata !DIExpression()), !dbg !1237
  %conv = trunc i32 %1 to i8, !dbg !1271
  %conv4 = trunc i32 %2 to i8, !dbg !1273
  %call = call i32 @mpeg_stream_excl(i8 zeroext %conv, i8 zeroext %conv4), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %call, metadata !1275, metadata !DIExpression()), !dbg !1237
  %tobool5 = icmp ne i32 %call, 0, !dbg !1276
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1278

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !1279

if.end7:                                          ; preds = %if.end
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !1281
  %3 = load i8*, i8** %ext, align 8, !dbg !1281
  %4 = bitcast i8* %3 to %struct._IO_FILE*, !dbg !1283
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !1284, metadata !DIExpression()), !dbg !1237
  call void @mpeg_list_print_skip(%struct._IO_FILE* %4), !dbg !1285
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1287
  %5 = load i64, i64* %ofs, align 8, !dbg !1287
  %streams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !1289
  %idxprom = zext i32 %1 to i64, !dbg !1290
  %arrayidx = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams, i64 0, i64 %idxprom, !dbg !1290
  %packet_cnt = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx, i32 0, i32 0, !dbg !1291
  %6 = load i64, i64* %packet_cnt, align 8, !dbg !1291
  %sub = sub i64 %6, 1, !dbg !1292
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0), i64 %5, i64 %sub, i32 %1), !dbg !1293
  %cmp = icmp eq i32 %1, 189, !dbg !1294
  br i1 %cmp, label %if.then10, label %if.else, !dbg !1296

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %2), !dbg !1297
  br label %if.end13, !dbg !1301

if.else:                                          ; preds = %if.end7
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !1302
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %packet14 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1306
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet14, i32 0, i32 0, !dbg !1308
  %7 = load i32, i32* %type, align 8, !dbg !1308
  %cmp15 = icmp eq i32 %7, 1, !dbg !1309
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !1310

if.then17:                                        ; preds = %if.end13
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !1311
  br label %if.end29, !dbg !1315

if.else19:                                        ; preds = %if.end13
  %packet20 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1316
  %type21 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet20, i32 0, i32 0, !dbg !1318
  %8 = load i32, i32* %type21, align 8, !dbg !1318
  %cmp22 = icmp eq i32 %8, 2, !dbg !1319
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !1320

if.then24:                                        ; preds = %if.else19
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !1321
  br label %if.end28, !dbg !1325

if.else26:                                        ; preds = %if.else19
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !1326
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then17
  %packet30 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1330
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet30, i32 0, i32 3, !dbg !1333
  %9 = load i32, i32* %size, align 4, !dbg !1333
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 %9), !dbg !1334
  %packet32 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1335
  %have_pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet32, i32 0, i32 5, !dbg !1337
  %10 = load i8, i8* %have_pts, align 4, !dbg !1337
  %tobool33 = icmp ne i8 %10, 0, !dbg !1338
  br i1 %tobool33, label %if.then34, label %if.else45, !dbg !1339

if.then34:                                        ; preds = %if.end29
  %packet35 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1340
  %pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet35, i32 0, i32 6, !dbg !1344
  %11 = load i64, i64* %pts, align 8, !dbg !1344
  %packet36 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1345
  %pts37 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet36, i32 0, i32 6, !dbg !1346
  %12 = load i64, i64* %pts37, align 8, !dbg !1346
  %conv38 = uitofp i64 %12 to double, !dbg !1347
  %div = fdiv double %conv38, 9.000000e+04, !dbg !1348
  %packet39 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1349
  %dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet39, i32 0, i32 8, !dbg !1350
  %13 = load i64, i64* %dts, align 8, !dbg !1350
  %packet40 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1351
  %dts41 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet40, i32 0, i32 8, !dbg !1352
  %14 = load i64, i64* %dts41, align 8, !dbg !1352
  %conv42 = uitofp i64 %14 to double, !dbg !1353
  %div43 = fdiv double %conv42, 9.000000e+04, !dbg !1354
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0), i64 %11, double %div, i64 %13, double %div43), !dbg !1355
  br label %if.end63, !dbg !1356

if.else45:                                        ; preds = %if.end29
  %packet46 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1357
  %have_dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet46, i32 0, i32 7, !dbg !1359
  %15 = load i8, i8* %have_dts, align 8, !dbg !1359
  %tobool47 = icmp ne i8 %15, 0, !dbg !1360
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !1338

if.then48:                                        ; preds = %if.else45
  %packet49 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1361
  %pts50 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet49, i32 0, i32 6, !dbg !1365
  %16 = load i64, i64* %pts50, align 8, !dbg !1365
  %packet51 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1366
  %pts52 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet51, i32 0, i32 6, !dbg !1367
  %17 = load i64, i64* %pts52, align 8, !dbg !1367
  %conv53 = uitofp i64 %17 to double, !dbg !1368
  %div54 = fdiv double %conv53, 9.000000e+04, !dbg !1369
  %packet55 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1370
  %dts56 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet55, i32 0, i32 8, !dbg !1371
  %18 = load i64, i64* %dts56, align 8, !dbg !1371
  %packet57 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !1372
  %dts58 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet57, i32 0, i32 8, !dbg !1373
  %19 = load i64, i64* %dts58, align 8, !dbg !1373
  %conv59 = uitofp i64 %19 to double, !dbg !1374
  %div60 = fdiv double %conv59, 9.000000e+04, !dbg !1375
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0), i64 %16, double %div54, i64 %18, double %div60), !dbg !1376
  br label %if.end62, !dbg !1377

if.end62:                                         ; preds = %if.then48, %if.else45
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then34
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !1378
  br label %return, !dbg !1381

return:                                           ; preds = %if.end63, %if.then6, %if.then
  ret i32 0, !dbg !1382
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_list_end(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1383 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata !4, metadata !1386, metadata !DIExpression()), !dbg !1387
  %0 = load i32, i32* @par_no_end, align 4, !dbg !1388
  %tobool = icmp ne i32 %0, 0, !dbg !1388
  br i1 %tobool, label %if.then, label %if.end, !dbg !1391

if.then:                                          ; preds = %entry
  br label %return, !dbg !1392

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !1394
  %1 = load i8*, i8** %ext, align 8, !dbg !1394
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1397, metadata !DIExpression()), !dbg !1385
  call void @mpeg_list_print_skip(%struct._IO_FILE* %2), !dbg !1398
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1400
  %3 = load i64, i64* %ofs, align 8, !dbg !1400
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i64 %3), !dbg !1402
  br label %return, !dbg !1403

return:                                           ; preds = %if.end, %if.then
  ret i32 0, !dbg !1404
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @mpeg_list_print_skip(%struct._IO_FILE* %fp___1) #0 !dbg !1405 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.declare(metadata !4, metadata !1410, metadata !DIExpression()), !dbg !1411
  %0 = load i64, i64* @skip_cnt, align 8, !dbg !1412
  %cmp = icmp ugt i64 %0, 0, !dbg !1415
  br i1 %cmp, label %if.then, label %if.end, !dbg !1416

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @skip_ofs, align 8, !dbg !1417
  %2 = load i64, i64* @skip_cnt, align 8, !dbg !1421
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp___1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i64 %1, i64 %2), !dbg !1422
  store i64 0, i64* @skip_cnt, align 8, !dbg !1423
  br label %if.end, !dbg !1424

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1425
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mpeg_buf_init(%struct.__anonstruct_mpeg_buffer_t_12* %buf) #0 !dbg !1426 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1431, metadata !DIExpression()), !dbg !1432
  %buf1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1433
  store i8* null, i8** %buf1, align 8, !dbg !1435
  %max = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1436
  store i32 0, i32* %max, align 4, !dbg !1437
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1438
  store i32 0, i32* %cnt, align 8, !dbg !1439
  ret void, !dbg !1440
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mpeg_buf_free(%struct.__anonstruct_mpeg_buffer_t_12* %buf) #0 !dbg !1441 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1442, metadata !DIExpression()), !dbg !1443
  %buf1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1444
  %0 = load i8*, i8** %buf1, align 8, !dbg !1444
  call void @free(i8* %0) #4, !dbg !1448
  %buf2 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1449
  store i8* null, i8** %buf2, align 8, !dbg !1450
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1451
  store i32 0, i32* %cnt, align 8, !dbg !1452
  %max = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1453
  store i32 0, i32* %max, align 4, !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @mpeg_buf_clear(%struct.__anonstruct_mpeg_buffer_t_12* %buf) #0 !dbg !1456 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1457, metadata !DIExpression()), !dbg !1458
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1459
  store i32 0, i32* %cnt, align 8, !dbg !1461
  ret void, !dbg !1462
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_buf_set_max(%struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 %max) #0 !dbg !1463 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1466, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %max, metadata !1468, metadata !DIExpression()), !dbg !1467
  %max1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1469
  %0 = load i32, i32* %max1, align 4, !dbg !1469
  %cmp = icmp eq i32 %0, %max, !dbg !1472
  br i1 %cmp, label %if.then, label %if.end, !dbg !1473

if.then:                                          ; preds = %entry
  br label %return, !dbg !1474

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %max, 0, !dbg !1476
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !1478

if.then3:                                         ; preds = %if.end
  %buf4 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1479
  %1 = load i8*, i8** %buf4, align 8, !dbg !1479
  call void @free(i8* %1) #4, !dbg !1483
  %max5 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1484
  store i32 0, i32* %max5, align 4, !dbg !1485
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1486
  store i32 0, i32* %cnt, align 8, !dbg !1487
  br label %return, !dbg !1488

if.end6:                                          ; preds = %if.end
  %buf7 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1489
  %2 = load i8*, i8** %buf7, align 8, !dbg !1489
  %call = call i8* @realloc(i8* %2, i32 %max) #4, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %call, metadata !1493, metadata !DIExpression()), !dbg !1467
  %buf8 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1494
  store i8* %call, i8** %buf8, align 8, !dbg !1495
  %buf9 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1496
  %3 = load i8*, i8** %buf9, align 8, !dbg !1496
  %4 = ptrtoint i8* %3 to i64, !dbg !1498
  %cmp10 = icmp eq i64 %4, 0, !dbg !1499
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !1500

if.then11:                                        ; preds = %if.end6
  %max12 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1501
  store i32 0, i32* %max12, align 4, !dbg !1503
  %cnt13 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1504
  store i32 0, i32* %cnt13, align 8, !dbg !1505
  br label %return, !dbg !1506

if.end14:                                         ; preds = %if.end6
  %max15 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1507
  store i32 %max, i32* %max15, align 4, !dbg !1508
  %cnt16 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1509
  %5 = load i32, i32* %cnt16, align 8, !dbg !1509
  %cmp17 = icmp ugt i32 %5, %max, !dbg !1511
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1512

if.then18:                                        ; preds = %if.end14
  %cnt19 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1513
  store i32 %max, i32* %cnt19, align 8, !dbg !1515
  br label %if.end20, !dbg !1516

if.end20:                                         ; preds = %if.then18, %if.end14
  br label %return, !dbg !1517

return:                                           ; preds = %if.end20, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.then11 ], [ 0, %if.end20 ], !dbg !1518
  ret i32 %retval.0, !dbg !1519
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_buf_set_cnt(%struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 %cnt) #0 !dbg !1520 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1521, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %cnt, metadata !1523, metadata !DIExpression()), !dbg !1522
  %max = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 2, !dbg !1524
  %0 = load i32, i32* %max, align 4, !dbg !1524
  %cmp = icmp ugt i32 %cnt, %0, !dbg !1527
  br i1 %cmp, label %if.then, label %if.end2, !dbg !1528

if.then:                                          ; preds = %entry
  %call = call i32 @mpeg_buf_set_max(%struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 %cnt), !dbg !1529
  call void @llvm.dbg.value(metadata i32 %call, metadata !1533, metadata !DIExpression()), !dbg !1522
  %tobool = icmp ne i32 %call, 0, !dbg !1534
  br i1 %tobool, label %if.then1, label %if.end, !dbg !1536

if.then1:                                         ; preds = %if.then
  br label %return, !dbg !1537

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !1539

if.end2:                                          ; preds = %if.end, %entry
  %cnt3 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1540
  store i32 %cnt, i32* %cnt3, align 8, !dbg !1541
  br label %return, !dbg !1542

return:                                           ; preds = %if.end2, %if.then1
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.end2 ], !dbg !1543
  ret i32 %retval.0, !dbg !1544
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_buf_read(%struct.__anonstruct_mpeg_buffer_t_12* %buf, %struct.mpeg_demux_t* %mpeg, i32 %cnt) #0 !dbg !1545 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1548, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1550, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %cnt, metadata !1551, metadata !DIExpression()), !dbg !1549
  %call = call i32 @mpeg_buf_set_cnt(%struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 %cnt), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %call, metadata !1556, metadata !DIExpression()), !dbg !1549
  %tobool = icmp ne i32 %call, 0, !dbg !1557
  br i1 %tobool, label %if.then, label %if.end, !dbg !1559

if.then:                                          ; preds = %entry
  br label %return, !dbg !1560

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1562
  %0 = load i8*, i8** %buf1, align 8, !dbg !1562
  %call2 = call i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %0, i32 %cnt), !dbg !1565
  %cnt3 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1566
  store i32 %call2, i32* %cnt3, align 8, !dbg !1567
  %cnt4 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1568
  %1 = load i32, i32* %cnt4, align 8, !dbg !1568
  %cmp = icmp ne i32 %1, %cnt, !dbg !1570
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1571

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !1572

if.end6:                                          ; preds = %if.end
  br label %return, !dbg !1574

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then5 ], [ 0, %if.end6 ], !dbg !1575
  ret i32 %retval.0, !dbg !1576
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %buf, i32 %n) #0 !dbg !1577 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %buf, metadata !1582, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %n, metadata !1583, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %buf, metadata !1584, metadata !DIExpression()), !dbg !1581
  %buf_n = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1585
  %0 = load i32, i32* %buf_n, align 4, !dbg !1585
  %cmp = icmp ult i32 %n, %0, !dbg !1588
  br i1 %cmp, label %if.then, label %if.else, !dbg !1589

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %n, metadata !1590, metadata !DIExpression()), !dbg !1581
  br label %if.end, !dbg !1591

if.else:                                          ; preds = %entry
  %buf_n1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1593
  %1 = load i32, i32* %buf_n1, align 4, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %1, metadata !1590, metadata !DIExpression()), !dbg !1581
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.0 = phi i32 [ %n, %if.then ], [ %1, %if.else ], !dbg !1595
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1590, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1596, metadata !DIExpression()), !dbg !1581
  %cmp2 = icmp ugt i32 %i.0, 0, !dbg !1597
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !1599

if.then3:                                         ; preds = %if.end
  %buf4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !1600
  %buf_i = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !1604
  %2 = load i32, i32* %buf_i, align 8, !dbg !1604
  %idxprom = zext i32 %2 to i64, !dbg !1605
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf4, i64 0, i64 %idxprom, !dbg !1605
  %call = call i8* @memcpy(i8* %buf, i8* %arrayidx, i32 %i.0) #4, !dbg !1606
  %idx.ext = zext i32 %i.0 to i64, !dbg !1607
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1584, metadata !DIExpression()), !dbg !1581
  %buf_i5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !1608
  %3 = load i32, i32* %buf_i5, align 8, !dbg !1609
  %add = add i32 %3, %i.0, !dbg !1609
  store i32 %add, i32* %buf_i5, align 8, !dbg !1609
  %buf_n6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1610
  %4 = load i32, i32* %buf_n6, align 4, !dbg !1611
  %sub = sub i32 %4, %i.0, !dbg !1611
  store i32 %sub, i32* %buf_n6, align 4, !dbg !1611
  %sub7 = sub i32 %n, %i.0, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !1583, metadata !DIExpression()), !dbg !1581
  br label %if.end8, !dbg !1613

if.end8:                                          ; preds = %if.then3, %if.end
  %n.addr.0 = phi i32 [ %sub7, %if.then3 ], [ %n, %if.end ]
  %tmp.0 = phi i8* [ %add.ptr, %if.then3 ], [ %buf, %if.end ], !dbg !1614
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !1584, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !1583, metadata !DIExpression()), !dbg !1581
  %cmp9 = icmp ugt i32 %n.addr.0, 0, !dbg !1615
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !1617

if.then10:                                        ; preds = %if.end8
  %fp = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 2, !dbg !1618
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1618
  %call11 = call i32 @fread(i8* %tmp.0, i32 1, i32 %n.addr.0, %struct._IO_FILE* %5), !dbg !1622
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1623, metadata !DIExpression()), !dbg !1581
  %add12 = add i32 %i.0, %call11, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %add12, metadata !1596, metadata !DIExpression()), !dbg !1581
  br label %if.end13, !dbg !1625

if.end13:                                         ; preds = %if.then10, %if.end8
  %ret.0 = phi i32 [ %add12, %if.then10 ], [ %i.0, %if.end8 ], !dbg !1614
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1596, metadata !DIExpression()), !dbg !1581
  %conv = zext i32 %ret.0 to i64, !dbg !1626
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1627
  %6 = load i64, i64* %ofs, align 8, !dbg !1628
  %add14 = add i64 %6, %conv, !dbg !1628
  store i64 %add14, i64* %ofs, align 8, !dbg !1628
  ret i32 %ret.0, !dbg !1629
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_buf_write(%struct.__anonstruct_mpeg_buffer_t_12* %buf, %struct._IO_FILE* %fp___1) #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !1635, metadata !DIExpression()), !dbg !1634
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1636
  %0 = load i32, i32* %cnt, align 8, !dbg !1636
  %cmp = icmp ugt i32 %0, 0, !dbg !1639
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1640

if.then:                                          ; preds = %entry
  %buf1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1641
  %1 = load i8*, i8** %buf1, align 8, !dbg !1641
  %cnt2 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1645
  %2 = load i32, i32* %cnt2, align 8, !dbg !1645
  %call = call i32 @fwrite(i8* %1, i32 1, i32 %2, %struct._IO_FILE* %fp___1), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %call, metadata !1647, metadata !DIExpression()), !dbg !1634
  %cnt3 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1648
  %3 = load i32, i32* %cnt3, align 8, !dbg !1648
  %cmp4 = icmp ne i32 %call, %3, !dbg !1650
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1651

if.then5:                                         ; preds = %if.then
  br label %return, !dbg !1652

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1654

if.end6:                                          ; preds = %if.end, %entry
  br label %return, !dbg !1655

return:                                           ; preds = %if.end6, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end6 ], !dbg !1656
  ret i32 %retval.0, !dbg !1657
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* %buf, %struct._IO_FILE* %fp___1) #0 !dbg !1658 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mpeg_buffer_t_12* %buf, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !1661, metadata !DIExpression()), !dbg !1660
  %cnt = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1662
  %0 = load i32, i32* %cnt, align 8, !dbg !1662
  %cmp = icmp ugt i32 %0, 0, !dbg !1665
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1666

if.then:                                          ; preds = %entry
  %buf1 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 0, !dbg !1667
  %1 = load i8*, i8** %buf1, align 8, !dbg !1667
  %cnt2 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1671
  %2 = load i32, i32* %cnt2, align 8, !dbg !1671
  %call = call i32 @fwrite(i8* %1, i32 1, i32 %2, %struct._IO_FILE* %fp___1), !dbg !1672
  call void @llvm.dbg.value(metadata i32 %call, metadata !1673, metadata !DIExpression()), !dbg !1660
  %cnt3 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1674
  %3 = load i32, i32* %cnt3, align 8, !dbg !1674
  %cmp4 = icmp ne i32 %call, %3, !dbg !1676
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1677

if.then5:                                         ; preds = %if.then
  %cnt6 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1678
  store i32 0, i32* %cnt6, align 8, !dbg !1680
  br label %return, !dbg !1681

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !1682

if.end7:                                          ; preds = %if.end, %entry
  %cnt8 = getelementptr inbounds %struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* %buf, i32 0, i32 1, !dbg !1683
  store i32 0, i32* %cnt8, align 8, !dbg !1684
  br label %return, !dbg !1685

return:                                           ; preds = %if.end7, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end7 ], !dbg !1686
  ret i32 %retval.0, !dbg !1687
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @mpegd_reset_stats(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1688 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1689, metadata !DIExpression()), !dbg !1690
  %shdr_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 10, !dbg !1691
  store i64 0, i64* %shdr_cnt, align 8, !dbg !1693
  %pack_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 11, !dbg !1694
  store i64 0, i64* %pack_cnt, align 8, !dbg !1695
  %packet_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 12, !dbg !1696
  store i64 0, i64* %packet_cnt, align 8, !dbg !1697
  %end_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 13, !dbg !1698
  store i64 0, i64* %end_cnt, align 8, !dbg !1699
  %skip_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 14, !dbg !1700
  store i64 0, i64* %skip_cnt, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()), !dbg !1690
  br label %while.body, !dbg !1703

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1706
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1702, metadata !DIExpression()), !dbg !1690
  br label %while_continue___0, !dbg !1707

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1707

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp ult i32 %i.0, 256, !dbg !1708
  br i1 %cmp, label %if.end, label %if.then, !dbg !1711

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1712

if.end:                                           ; preds = %while_continue
  %streams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !1714
  %idxprom = zext i32 %i.0 to i64, !dbg !1715
  %arrayidx = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams, i64 0, i64 %idxprom, !dbg !1715
  %packet_cnt1 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx, i32 0, i32 0, !dbg !1716
  store i64 0, i64* %packet_cnt1, align 8, !dbg !1717
  %streams2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !1718
  %idxprom3 = zext i32 %i.0 to i64, !dbg !1719
  %arrayidx4 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams2, i64 0, i64 %idxprom3, !dbg !1719
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx4, i32 0, i32 1, !dbg !1720
  store i64 0, i64* %size, align 8, !dbg !1721
  %substreams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !1722
  %idxprom5 = zext i32 %i.0 to i64, !dbg !1723
  %arrayidx6 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams, i64 0, i64 %idxprom5, !dbg !1723
  %packet_cnt7 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx6, i32 0, i32 0, !dbg !1724
  store i64 0, i64* %packet_cnt7, align 8, !dbg !1725
  %substreams8 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !1726
  %idxprom9 = zext i32 %i.0 to i64, !dbg !1727
  %arrayidx10 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams8, i64 0, i64 %idxprom9, !dbg !1727
  %size11 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx10, i32 0, i32 1, !dbg !1728
  store i64 0, i64* %size11, align 8, !dbg !1729
  %inc = add i32 %i.0, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1702, metadata !DIExpression()), !dbg !1690
  br label %while.body, !dbg !1703, !llvm.loop !1731

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1733

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !1734
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.mpeg_demux_t* @mpegd_open(%struct.mpeg_demux_t* %mpeg, i8* %fname) #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1738, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1740, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.declare(metadata !4, metadata !1741, metadata !DIExpression()), !dbg !1742
  %call = call %struct._IO_FILE* @"\01fopen64"(i8* %fname, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !1743
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !1747, metadata !DIExpression()), !dbg !1739
  %0 = ptrtoint %struct._IO_FILE* %call to i64, !dbg !1748
  %cmp = icmp eq i64 %0, 0, !dbg !1750
  br i1 %cmp, label %if.then, label %if.end, !dbg !1751

if.then:                                          ; preds = %entry
  br label %return, !dbg !1752

if.end:                                           ; preds = %entry
  %call1 = call %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %call, i32 1), !dbg !1754
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %call1, metadata !1738, metadata !DIExpression()), !dbg !1739
  br label %return, !dbg !1757

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.mpeg_demux_t* [ null, %if.then ], [ %call1, %if.end ], !dbg !1758
  ret %struct.mpeg_demux_t* %retval.0, !dbg !1759
}

declare %struct._IO_FILE* @"\01fopen64"(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %i, i32 %n) #0 !dbg !1760 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %i, metadata !1765, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %n, metadata !1766, metadata !DIExpression()), !dbg !1764
  %add = add i32 %i, %n, !dbg !1767
  %call = call i32 @mpegd_need_bits(%struct.mpeg_demux_t* %mpeg, i32 %add), !dbg !1771
  call void @llvm.dbg.value(metadata i32 %call, metadata !1772, metadata !DIExpression()), !dbg !1764
  %tobool = icmp ne i32 %call, 0, !dbg !1773
  br i1 %tobool, label %if.then, label %if.end, !dbg !1775

if.then:                                          ; preds = %entry
  br label %return, !dbg !1776

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !1778
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf1, i32 0, i32 0, !dbg !1779
  %buf_i = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !1780
  %0 = load i32, i32* %buf_i, align 8, !dbg !1780
  %idx.ext = zext i32 %0 to i64, !dbg !1781
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1782, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 0, metadata !1783, metadata !DIExpression()), !dbg !1764
  %or = or i32 %i, %n, !dbg !1784
  %and = and i32 %or, 7, !dbg !1786
  %cmp = icmp eq i32 %and, 0, !dbg !1787
  br i1 %cmp, label %if.then2, label %if.end10, !dbg !1788

if.then2:                                         ; preds = %if.end
  %div = udiv i32 %i, 8, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %div, metadata !1765, metadata !DIExpression()), !dbg !1764
  %div3 = udiv i32 %n, 8, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %div3, metadata !1766, metadata !DIExpression()), !dbg !1764
  br label %while.body, !dbg !1792

while.body:                                       ; preds = %if.end6, %if.then2
  %r.0 = phi i64 [ 0, %if.then2 ], [ %or9, %if.end6 ], !dbg !1795
  %n.addr.0 = phi i32 [ %div3, %if.then2 ], [ %dec, %if.end6 ], !dbg !1796
  %i.addr.0 = phi i32 [ %div, %if.then2 ], [ %inc, %if.end6 ], !dbg !1796
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !1765, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !1766, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %r.0, metadata !1783, metadata !DIExpression()), !dbg !1764
  br label %while_continue___1, !dbg !1797

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1797

while_continue:                                   ; preds = %while_continue___1
  %cmp4 = icmp ugt i32 %n.addr.0, 0, !dbg !1798
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !1801

if.then5:                                         ; preds = %while_continue
  br label %while_break, !dbg !1802

if.end6:                                          ; preds = %while_continue
  %shl = shl i64 %r.0, 8, !dbg !1804
  %idx.ext7 = zext i32 %i.addr.0 to i64, !dbg !1805
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7, !dbg !1805
  %1 = load i8, i8* %add.ptr8, align 1, !dbg !1806
  %conv = zext i8 %1 to i64, !dbg !1807
  %or9 = or i64 %shl, %conv, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %or9, metadata !1783, metadata !DIExpression()), !dbg !1764
  %inc = add i32 %i.addr.0, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1765, metadata !DIExpression()), !dbg !1764
  %dec = add i32 %n.addr.0, -1, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1766, metadata !DIExpression()), !dbg !1764
  br label %while.body, !dbg !1792, !llvm.loop !1811

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1813

while_break:                                      ; preds = %while_break___1, %if.then5
  br label %return, !dbg !1814

if.end10:                                         ; preds = %if.end
  br label %while.body11, !dbg !1815

while.body11:                                     ; preds = %if.end20, %if.end10
  %r.1 = phi i64 [ 0, %if.end10 ], [ %or34, %if.end20 ], !dbg !1795
  %n.addr.1 = phi i32 [ %n, %if.end10 ], [ %sub36, %if.end20 ]
  %i.addr.1 = phi i32 [ %i, %if.end10 ], [ %add35, %if.end20 ]
  call void @llvm.dbg.value(metadata i32 %i.addr.1, metadata !1765, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %n.addr.1, metadata !1766, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %r.1, metadata !1783, metadata !DIExpression()), !dbg !1764
  br label %while_continue___2, !dbg !1818

while_continue___2:                               ; preds = %while.body11
  br label %while_continue___0, !dbg !1818

while_continue___0:                               ; preds = %while_continue___2
  %cmp12 = icmp ugt i32 %n.addr.1, 0, !dbg !1819
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !1822

if.then14:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1823

if.end15:                                         ; preds = %while_continue___0
  %and16 = and i32 %i.addr.1, 7, !dbg !1825
  %sub = sub i32 8, %and16, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1827, metadata !DIExpression()), !dbg !1764
  %cmp17 = icmp ugt i32 %sub, %n.addr.1, !dbg !1828
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1830

if.then19:                                        ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32 %n.addr.1, metadata !1827, metadata !DIExpression()), !dbg !1764
  br label %if.end20, !dbg !1831

if.end20:                                         ; preds = %if.then19, %if.end15
  %b_n.0 = phi i32 [ %n.addr.1, %if.then19 ], [ %sub, %if.end15 ], !dbg !1833
  call void @llvm.dbg.value(metadata i32 %b_n.0, metadata !1827, metadata !DIExpression()), !dbg !1764
  %and21 = and i32 %i.addr.1, 7, !dbg !1834
  %sub22 = sub i32 8, %and21, !dbg !1835
  %sub23 = sub i32 %sub22, %b_n.0, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !1837, metadata !DIExpression()), !dbg !1764
  %shl24 = shl i32 1, %b_n.0, !dbg !1838
  %sub25 = sub nsw i32 %shl24, 1, !dbg !1839
  %conv26 = sext i32 %sub25 to i64, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %conv26, metadata !1841, metadata !DIExpression()), !dbg !1764
  %shr = lshr i32 %i.addr.1, 3, !dbg !1842
  %idx.ext27 = zext i32 %shr to i64, !dbg !1843
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext27, !dbg !1843
  %2 = load i8, i8* %add.ptr28, align 1, !dbg !1844
  %conv29 = zext i8 %2 to i32, !dbg !1845
  %shr30 = ashr i32 %conv29, %sub23, !dbg !1846
  %conv31 = sext i32 %shr30 to i64, !dbg !1847
  %and32 = and i64 %conv31, %conv26, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %and32, metadata !1849, metadata !DIExpression()), !dbg !1764
  %sh_prom = zext i32 %b_n.0 to i64, !dbg !1850
  %shl33 = shl i64 %r.1, %sh_prom, !dbg !1850
  %or34 = or i64 %shl33, %and32, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %or34, metadata !1783, metadata !DIExpression()), !dbg !1764
  %add35 = add i32 %i.addr.1, %b_n.0, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %add35, metadata !1765, metadata !DIExpression()), !dbg !1764
  %sub36 = sub i32 %n.addr.1, %b_n.0, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %sub36, metadata !1766, metadata !DIExpression()), !dbg !1764
  br label %while.body11, !dbg !1815, !llvm.loop !1854

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1856

while_break___0:                                  ; preds = %while_break___2, %if.then14
  br label %return, !dbg !1857

return:                                           ; preds = %while_break___0, %while_break, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %r.0, %while_break ], [ %r.1, %while_break___0 ], !dbg !1795
  ret i64 %retval.0, !dbg !1858
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_need_bits(%struct.mpeg_demux_t* %mpeg, i32 %n) #0 !dbg !1859 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1862, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %n, metadata !1864, metadata !DIExpression()), !dbg !1863
  %add = add i32 %n, 7, !dbg !1865
  %div = udiv i32 %add, 8, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %div, metadata !1864, metadata !DIExpression()), !dbg !1863
  %buf_n = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1868
  %0 = load i32, i32* %buf_n, align 4, !dbg !1868
  %cmp = icmp ugt i32 %div, %0, !dbg !1870
  br i1 %cmp, label %if.then, label %if.end, !dbg !1871

if.then:                                          ; preds = %entry
  %call = call i32 @mpegd_buffer_fill(%struct.mpeg_demux_t* %mpeg), !dbg !1872
  br label %if.end, !dbg !1876

if.end:                                           ; preds = %if.then, %entry
  %buf_n1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1877
  %1 = load i32, i32* %buf_n1, align 4, !dbg !1877
  %cmp2 = icmp ugt i32 %div, %1, !dbg !1879
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1880

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !1881

if.end4:                                          ; preds = %if.end
  br label %return, !dbg !1883

return:                                           ; preds = %if.end4, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end4 ], !dbg !1884
  ret i32 %retval.0, !dbg !1885
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpegd_skip(%struct.mpeg_demux_t* %mpeg, i32 %n) #0 !dbg !1886 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1887, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %n, metadata !1889, metadata !DIExpression()), !dbg !1888
  %conv = zext i32 %n to i64, !dbg !1890
  %ofs = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1892
  %0 = load i64, i64* %ofs, align 8, !dbg !1893
  %add = add i64 %0, %conv, !dbg !1893
  store i64 %add, i64* %ofs, align 8, !dbg !1893
  %buf_n = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1894
  %1 = load i32, i32* %buf_n, align 4, !dbg !1894
  %cmp = icmp ule i32 %n, %1, !dbg !1896
  br i1 %cmp, label %if.then, label %if.end, !dbg !1897

if.then:                                          ; preds = %entry
  %buf_i = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !1898
  %2 = load i32, i32* %buf_i, align 8, !dbg !1900
  %add2 = add i32 %2, %n, !dbg !1900
  store i32 %add2, i32* %buf_i, align 8, !dbg !1900
  %buf_n3 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1901
  %3 = load i32, i32* %buf_n3, align 4, !dbg !1902
  %sub = sub i32 %3, %n, !dbg !1902
  store i32 %sub, i32* %buf_n3, align 4, !dbg !1902
  br label %return, !dbg !1903

if.end:                                           ; preds = %entry
  %buf_n4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1904
  %4 = load i32, i32* %buf_n4, align 4, !dbg !1904
  %sub5 = sub i32 %n, %4, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %sub5, metadata !1889, metadata !DIExpression()), !dbg !1888
  %buf_i6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !1906
  store i32 0, i32* %buf_i6, align 8, !dbg !1907
  %buf_n7 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !1908
  store i32 0, i32* %buf_n7, align 4, !dbg !1909
  br label %while.body, !dbg !1910

while.body:                                       ; preds = %if.end23, %if.end
  %n.addr.0 = phi i32 [ %sub5, %if.end ], [ %sub24, %if.end23 ], !dbg !1913
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !1889, metadata !DIExpression()), !dbg !1888
  br label %while_continue___0, !dbg !1914

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1914

while_continue:                                   ; preds = %while_continue___0
  %cmp8 = icmp ugt i32 %n.addr.0, 0, !dbg !1915
  br i1 %cmp8, label %if.end11, label %if.then10, !dbg !1918

if.then10:                                        ; preds = %while_continue
  br label %while_break, !dbg !1919

if.end11:                                         ; preds = %while_continue
  %cmp12 = icmp ule i32 %n.addr.0, 4096, !dbg !1921
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !1923

if.then14:                                        ; preds = %if.end11
  %buf = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !1924
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0, !dbg !1928
  %fp = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 2, !dbg !1929
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1929
  %call = call i32 @fread(i8* %arraydecay, i32 1, i32 %n.addr.0, %struct._IO_FILE* %5), !dbg !1930
  call void @llvm.dbg.value(metadata i32 %call, metadata !1931, metadata !DIExpression()), !dbg !1888
  br label %if.end19, !dbg !1932

if.else:                                          ; preds = %if.end11
  %buf15 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !1933
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf15, i32 0, i32 0, !dbg !1937
  %fp17 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 2, !dbg !1938
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp17, align 8, !dbg !1938
  %call18 = call i32 @fread(i8* %arraydecay16, i32 1, i32 4096, %struct._IO_FILE* %6), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1931, metadata !DIExpression()), !dbg !1888
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %r.0 = phi i32 [ %call, %if.then14 ], [ %call18, %if.else ], !dbg !1940
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !1931, metadata !DIExpression()), !dbg !1888
  %cmp20 = icmp ule i32 %r.0, 0, !dbg !1941
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1943

if.then22:                                        ; preds = %if.end19
  br label %return, !dbg !1944

if.end23:                                         ; preds = %if.end19
  %sub24 = sub i32 %n.addr.0, %r.0, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %sub24, metadata !1889, metadata !DIExpression()), !dbg !1888
  br label %while.body, !dbg !1910, !llvm.loop !1947

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1949

while_break:                                      ; preds = %while_break___0, %if.then10
  br label %return, !dbg !1950

return:                                           ; preds = %while_break, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then22 ], [ 0, %while_break ], !dbg !1913
  ret i32 %retval.0, !dbg !1951
}

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %ofs) #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %ofs, metadata !1957, metadata !DIExpression()), !dbg !1956
  %ofs1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1958
  %0 = load i64, i64* %ofs1, align 8, !dbg !1958
  %cmp = icmp eq i64 %ofs, %0, !dbg !1961
  br i1 %cmp, label %if.then, label %if.end, !dbg !1962

if.then:                                          ; preds = %entry
  br label %return, !dbg !1963

if.end:                                           ; preds = %entry
  %ofs2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1965
  %1 = load i64, i64* %ofs2, align 8, !dbg !1965
  %cmp3 = icmp ugt i64 %ofs, %1, !dbg !1967
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1968

if.then4:                                         ; preds = %if.end
  %ofs5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1969
  %2 = load i64, i64* %ofs5, align 8, !dbg !1969
  %sub = sub i64 %ofs, %2, !dbg !1973
  %conv = trunc i64 %sub to i32, !dbg !1974
  %call = call i32 @mpegd_skip(%struct.mpeg_demux_t* %mpeg, i32 %conv), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %call, metadata !1976, metadata !DIExpression()), !dbg !1956
  br label %return, !dbg !1977

if.end6:                                          ; preds = %if.end
  br label %return, !dbg !1978

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then4 ], [ 1, %if.end6 ], !dbg !1979
  ret i32 %retval.0, !dbg !1980
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_seek_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !1981 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !1982, metadata !DIExpression()), !dbg !1983
  br label %while.body, !dbg !1984

while.body:                                       ; preds = %if.end12, %entry
  br label %while_continue___0, !dbg !1988

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1988

while_continue:                                   ; preds = %while_continue___0
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 0, i32 24), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %call, metadata !1993, metadata !DIExpression()), !dbg !1983
  %cmp = icmp ne i64 %call, 1, !dbg !1994
  br i1 %cmp, label %if.end, label %if.then, !dbg !1996

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1997

if.end:                                           ; preds = %while_continue
  %ofs1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !1999
  %0 = load i64, i64* %ofs1, align 8, !dbg !1999
  %add = add i64 %0, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %add, metadata !2001, metadata !DIExpression()), !dbg !1983
  %mpeg_skip = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 18, !dbg !2002
  %1 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_skip, align 8, !dbg !2002
  %2 = ptrtoint i32 (%struct.mpeg_demux_t*)* %1 to i64, !dbg !2004
  %cmp2 = icmp ne i64 %2, 0, !dbg !2005
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !2006

if.then3:                                         ; preds = %if.end
  %mpeg_skip4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 18, !dbg !2007
  %3 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_skip4, align 8, !dbg !2007
  %call5 = call i32 %3(%struct.mpeg_demux_t* %mpeg), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %call5, metadata !2012, metadata !DIExpression()), !dbg !1983
  %tobool = icmp ne i32 %call5, 0, !dbg !2013
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !2015

if.then6:                                         ; preds = %if.then3
  br label %return, !dbg !2016

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !2018

if.end8:                                          ; preds = %if.end7, %if.end
  %call9 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %call9, metadata !2022, metadata !DIExpression()), !dbg !1983
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2023
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2025

if.then11:                                        ; preds = %if.end8
  br label %return, !dbg !2026

if.end12:                                         ; preds = %if.end8
  %skip_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 14, !dbg !2028
  %4 = load i64, i64* %skip_cnt, align 8, !dbg !2029
  %inc = add i64 %4, 1, !dbg !2029
  store i64 %inc, i64* %skip_cnt, align 8, !dbg !2029
  br label %while.body, !dbg !1984, !llvm.loop !2030

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2032

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !2033

return:                                           ; preds = %while_break, %if.then11, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.then11 ], [ 0, %while_break ], !dbg !2034
  ret i32 %retval.0, !dbg !2035
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_parse_pack(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2037, metadata !DIExpression()), !dbg !2038
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 32, i32 4), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %call, metadata !2043, metadata !DIExpression()), !dbg !2038
  %cmp = icmp eq i64 %call, 2, !dbg !2044
  br i1 %cmp, label %if.then, label %if.else, !dbg !2046

if.then:                                          ; preds = %entry
  %pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2047
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack, i32 0, i32 1, !dbg !2050
  store i32 1, i32* %type, align 4, !dbg !2051
  %call1 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 36, i32 3), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2054, metadata !DIExpression()), !dbg !2038
  %pack2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2055
  %scr = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack2, i32 0, i32 2, !dbg !2056
  store i64 %call1, i64* %scr, align 8, !dbg !2057
  %call3 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 40, i32 15), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %call3, metadata !2060, metadata !DIExpression()), !dbg !2038
  %pack4 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2061
  %scr5 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack4, i32 0, i32 2, !dbg !2062
  %0 = load i64, i64* %scr5, align 8, !dbg !2062
  %shl = shl i64 %0, 15, !dbg !2063
  %or = or i64 %shl, %call3, !dbg !2064
  %pack6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2065
  %scr7 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack6, i32 0, i32 2, !dbg !2066
  store i64 %or, i64* %scr7, align 8, !dbg !2067
  %call8 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 56, i32 15), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %call8, metadata !2070, metadata !DIExpression()), !dbg !2038
  %pack9 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2071
  %scr10 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack9, i32 0, i32 2, !dbg !2072
  %1 = load i64, i64* %scr10, align 8, !dbg !2072
  %shl11 = shl i64 %1, 15, !dbg !2073
  %or12 = or i64 %shl11, %call8, !dbg !2074
  %pack13 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2075
  %scr14 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack13, i32 0, i32 2, !dbg !2076
  store i64 %or12, i64* %scr14, align 8, !dbg !2077
  %call15 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 73, i32 22), !dbg !2078
  %pack16 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2080
  %mux_rate = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack16, i32 0, i32 3, !dbg !2081
  store i64 %call15, i64* %mux_rate, align 8, !dbg !2082
  %pack17 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2083
  %stuff = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack17, i32 0, i32 4, !dbg !2084
  store i32 0, i32* %stuff, align 8, !dbg !2085
  %pack18 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2086
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack18, i32 0, i32 0, !dbg !2087
  store i32 12, i32* %size, align 8, !dbg !2088
  br label %if.end60, !dbg !2089

if.else:                                          ; preds = %entry
  %call19 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 32, i32 2), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %call19, metadata !2094, metadata !DIExpression()), !dbg !2038
  %cmp20 = icmp eq i64 %call19, 1, !dbg !2095
  br i1 %cmp20, label %if.then21, label %if.else51, !dbg !2097

if.then21:                                        ; preds = %if.else
  %pack22 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2098
  %type23 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack22, i32 0, i32 1, !dbg !2101
  store i32 2, i32* %type23, align 4, !dbg !2102
  %call24 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 34, i32 3), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %call24, metadata !2105, metadata !DIExpression()), !dbg !2038
  %pack25 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2106
  %scr26 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack25, i32 0, i32 2, !dbg !2107
  store i64 %call24, i64* %scr26, align 8, !dbg !2108
  %call27 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 38, i32 15), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %call27, metadata !2111, metadata !DIExpression()), !dbg !2038
  %pack28 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2112
  %scr29 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack28, i32 0, i32 2, !dbg !2113
  %2 = load i64, i64* %scr29, align 8, !dbg !2113
  %shl30 = shl i64 %2, 15, !dbg !2114
  %or31 = or i64 %shl30, %call27, !dbg !2115
  %pack32 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2116
  %scr33 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack32, i32 0, i32 2, !dbg !2117
  store i64 %or31, i64* %scr33, align 8, !dbg !2118
  %call34 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 54, i32 15), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %call34, metadata !2121, metadata !DIExpression()), !dbg !2038
  %pack35 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2122
  %scr36 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack35, i32 0, i32 2, !dbg !2123
  %3 = load i64, i64* %scr36, align 8, !dbg !2123
  %shl37 = shl i64 %3, 15, !dbg !2124
  %or38 = or i64 %shl37, %call34, !dbg !2125
  %pack39 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2126
  %scr40 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack39, i32 0, i32 2, !dbg !2127
  store i64 %or38, i64* %scr40, align 8, !dbg !2128
  %call41 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 80, i32 22), !dbg !2129
  %pack42 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2131
  %mux_rate43 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack42, i32 0, i32 3, !dbg !2132
  store i64 %call41, i64* %mux_rate43, align 8, !dbg !2133
  %call44 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 109, i32 3), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %call44, metadata !2136, metadata !DIExpression()), !dbg !2038
  %conv = trunc i64 %call44 to i32, !dbg !2137
  %pack45 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2138
  %stuff46 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack45, i32 0, i32 4, !dbg !2139
  store i32 %conv, i32* %stuff46, align 8, !dbg !2140
  %pack47 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2141
  %stuff48 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack47, i32 0, i32 4, !dbg !2142
  %4 = load i32, i32* %stuff48, align 8, !dbg !2142
  %add = add i32 14, %4, !dbg !2143
  %pack49 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2144
  %size50 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack49, i32 0, i32 0, !dbg !2145
  store i32 %add, i32* %size50, align 8, !dbg !2146
  br label %if.end, !dbg !2147

if.else51:                                        ; preds = %if.else
  %pack52 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2148
  %type53 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack52, i32 0, i32 1, !dbg !2150
  store i32 0, i32* %type53, align 4, !dbg !2151
  %pack54 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2152
  %scr55 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack54, i32 0, i32 2, !dbg !2153
  store i64 0, i64* %scr55, align 8, !dbg !2154
  %pack56 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2155
  %mux_rate57 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack56, i32 0, i32 3, !dbg !2156
  store i64 0, i64* %mux_rate57, align 8, !dbg !2157
  %pack58 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2158
  %size59 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack58, i32 0, i32 0, !dbg !2159
  store i32 4, i32* %size59, align 8, !dbg !2160
  br label %if.end

if.end:                                           ; preds = %if.else51, %if.then21
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then
  %ofs61 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !2161
  %5 = load i64, i64* %ofs61, align 8, !dbg !2161
  %pack62 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2162
  %size63 = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack62, i32 0, i32 0, !dbg !2163
  %6 = load i32, i32* %size63, align 8, !dbg !2163
  %conv64 = zext i32 %6 to i64, !dbg !2164
  %add65 = add i64 %5, %conv64, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %add65, metadata !2166, metadata !DIExpression()), !dbg !2038
  %pack_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 11, !dbg !2167
  %7 = load i64, i64* %pack_cnt, align 8, !dbg !2168
  %inc = add i64 %7, 1, !dbg !2168
  store i64 %inc, i64* %pack_cnt, align 8, !dbg !2168
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 19, !dbg !2169
  %8 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !2169
  %9 = ptrtoint i32 (%struct.mpeg_demux_t*)* %8 to i64, !dbg !2171
  %cmp66 = icmp ne i64 %9, 0, !dbg !2172
  br i1 %cmp66, label %if.then68, label %if.end73, !dbg !2173

if.then68:                                        ; preds = %if.end60
  %mpeg_pack69 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 19, !dbg !2174
  %10 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_pack69, align 8, !dbg !2174
  %call70 = call i32 %10(%struct.mpeg_demux_t* %mpeg), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %call70, metadata !2179, metadata !DIExpression()), !dbg !2038
  %tobool = icmp ne i32 %call70, 0, !dbg !2180
  br i1 %tobool, label %if.then71, label %if.end72, !dbg !2182

if.then71:                                        ; preds = %if.then68
  br label %return, !dbg !2183

if.end72:                                         ; preds = %if.then68
  br label %if.end73, !dbg !2185

if.end73:                                         ; preds = %if.end72, %if.end60
  %call74 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add65), !dbg !2186
  %call75 = call i32 @mpegd_seek_header(%struct.mpeg_demux_t* %mpeg), !dbg !2189
  %call76 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 0, i32 32), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %call76, metadata !2193, metadata !DIExpression()), !dbg !2038
  %cmp77 = icmp eq i64 %call76, 443, !dbg !2194
  br i1 %cmp77, label %if.then79, label %if.end85, !dbg !2196

if.then79:                                        ; preds = %if.end73
  %call80 = call i32 @mpegd_parse_system_header(%struct.mpeg_demux_t* %mpeg), !dbg !2197
  call void @llvm.dbg.value(metadata i32 %call80, metadata !2201, metadata !DIExpression()), !dbg !2038
  %tobool81 = icmp ne i32 %call80, 0, !dbg !2202
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !2204

if.then82:                                        ; preds = %if.then79
  br label %return, !dbg !2205

if.end83:                                         ; preds = %if.then79
  %call84 = call i32 @mpegd_seek_header(%struct.mpeg_demux_t* %mpeg), !dbg !2207
  br label %if.end85, !dbg !2210

if.end85:                                         ; preds = %if.end83, %if.end73
  br label %while.body, !dbg !2211

while.body:                                       ; preds = %if.end108, %if.end85
  br label %while_continue___0, !dbg !2214

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2214

while_continue:                                   ; preds = %while_continue___0
  %call86 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 0, i32 24), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %call86, metadata !2219, metadata !DIExpression()), !dbg !2038
  %cmp87 = icmp eq i64 %call86, 1, !dbg !2220
  br i1 %cmp87, label %if.end90, label %if.then89, !dbg !2222

if.then89:                                        ; preds = %while_continue
  br label %while_break, !dbg !2223

if.end90:                                         ; preds = %while_continue
  %call91 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 24, i32 8), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %call91, metadata !2228, metadata !DIExpression()), !dbg !2038
  %conv92 = trunc i64 %call91 to i32, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %conv92, metadata !2230, metadata !DIExpression()), !dbg !2038
  %cmp93 = icmp eq i32 %conv92, 186, !dbg !2231
  br i1 %cmp93, label %if.then95, label %if.else96, !dbg !2233

if.then95:                                        ; preds = %if.end90
  br label %while_break, !dbg !2234

if.else96:                                        ; preds = %if.end90
  %cmp97 = icmp eq i32 %conv92, 185, !dbg !2236
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !2238

if.then99:                                        ; preds = %if.else96
  br label %while_break, !dbg !2239

if.else100:                                       ; preds = %if.else96
  %cmp101 = icmp eq i32 %conv92, 187, !dbg !2241
  br i1 %cmp101, label %if.then103, label %if.else104, !dbg !2243

if.then103:                                       ; preds = %if.else100
  br label %while_break, !dbg !2244

if.else104:                                       ; preds = %if.else100
  %call105 = call i32 @mpegd_parse_packet(%struct.mpeg_demux_t* %mpeg), !dbg !2246
  br label %if.end106

if.end106:                                        ; preds = %if.else104
  br label %if.end107

if.end107:                                        ; preds = %if.end106
  br label %if.end108

if.end108:                                        ; preds = %if.end107
  %call109 = call i32 @mpegd_seek_header(%struct.mpeg_demux_t* %mpeg), !dbg !2250
  br label %while.body, !dbg !2211, !llvm.loop !2253

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2255

while_break:                                      ; preds = %while_break___0, %if.then103, %if.then99, %if.then95, %if.then89
  br label %return, !dbg !2256

return:                                           ; preds = %while_break, %if.then82, %if.then71
  %retval.0 = phi i32 [ 1, %if.then71 ], [ 1, %if.then82 ], [ 0, %while_break ], !dbg !2257
  ret i32 %retval.0, !dbg !2258
}

; Function Attrs: noinline nounwind ssp uwtable
define void @msg_set_level(i32 %level) #0 !dbg !2259 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !2262, metadata !DIExpression()), !dbg !2263
  store i32 %level, i32* @msg_level, align 4, !dbg !2264
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @msg_get_level() #0 !dbg !2267 {
entry:
  %0 = load i32, i32* @msg_level, align 4, !dbg !2270
  ret i32 %0, !dbg !2272
}

; Function Attrs: noinline nounwind ssp uwtable
define void @prt_msg_va(i32 %level, i8* %msg, %struct.__va_list_tag* %va) #0 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2285, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, metadata !2286, metadata !DIExpression()), !dbg !2284
  %0 = load i32, i32* @msg_level, align 4, !dbg !2287
  %cmp = icmp ule i32 %level, %0, !dbg !2290
  br i1 %cmp, label %if.then, label %if.end, !dbg !2291

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2292
  %call = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %msg, %struct.__va_list_tag* %va), !dbg !2296
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2297
  %call1 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !2299
  br label %if.end, !dbg !2300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2301
}

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @prt_message(i32 %level, i8* %msg, ...) #0 !dbg !2302 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %level, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2307, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !2308, metadata !DIExpression()), !dbg !2314
  %0 = load i32, i32* @msg_level, align 4, !dbg !2315
  %cmp = icmp ule i32 %level, %0, !dbg !2318
  br i1 %cmp, label %if.then, label %if.end, !dbg !2319

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2320
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2320
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2320
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2324
  call void @prt_msg_va(i32 %level, i8* %msg, %struct.__va_list_tag* %arraydecay2), !dbg !2326
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2327
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2327
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2327
  br label %if.end, !dbg !2329

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2330
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @prt_err(i8* %msg, ...) #0 !dbg !2331 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2334, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !2336, metadata !DIExpression()), !dbg !2337
  %0 = load i32, i32* @msg_level, align 4, !dbg !2338
  %cmp = icmp ule i32 0, %0, !dbg !2341
  br i1 %cmp, label %if.then, label %if.end, !dbg !2342

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2343
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2343
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2343
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2347
  call void @prt_msg_va(i32 0, i8* %msg, %struct.__va_list_tag* %arraydecay2), !dbg !2349
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2350
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2350
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2350
  br label %if.end, !dbg !2352

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2353
}

; Function Attrs: noinline nounwind ssp uwtable
define void @prt_msg(i8* %msg, ...) #0 !dbg !2354 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !2357, metadata !DIExpression()), !dbg !2358
  %0 = load i32, i32* @msg_level, align 4, !dbg !2359
  %cmp = icmp ule i32 1, %0, !dbg !2362
  br i1 %cmp, label %if.then, label %if.end, !dbg !2363

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2364
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2364
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2364
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2368
  call void @prt_msg_va(i32 1, i8* %msg, %struct.__va_list_tag* %arraydecay2), !dbg !2370
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2371
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2371
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2371
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2374
}

; Function Attrs: noinline nounwind ssp uwtable
define void @prt_deb(i8* %msg, ...) #0 !dbg !2375 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !2378, metadata !DIExpression()), !dbg !2379
  %0 = load i32, i32* @msg_level, align 4, !dbg !2380
  %cmp = icmp ule i32 3, %0, !dbg !2383
  br i1 %cmp, label %if.then, label %if.end, !dbg !2384

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2385
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2385
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2385
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2389
  call void @prt_msg_va(i32 3, i8* %msg, %struct.__va_list_tag* %arraydecay2), !dbg !2391
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !2392
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2392
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2392
  br label %if.end, !dbg !2394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2395
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_remux(%struct._IO_FILE* %inp, %struct._IO_FILE* %out) #0 !dbg !2396 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %inp, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !2399, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata !4, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = call %struct.mpeg_demux_t* @mpegd_open_fp(%struct.mpeg_demux_t* null, %struct._IO_FILE* %inp, i32 0), !dbg !2407
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %call, metadata !2411, metadata !DIExpression()), !dbg !2398
  %0 = ptrtoint %struct.mpeg_demux_t* %call to i64, !dbg !2412
  %cmp = icmp eq i64 %0, 0, !dbg !2414
  br i1 %cmp, label %if.then, label %if.end, !dbg !2415

if.then:                                          ; preds = %entry
  br label %return, !dbg !2416

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @par_split, align 4, !dbg !2418
  %tobool = icmp ne i32 %1, 0, !dbg !2418
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2420

if.then1:                                         ; preds = %if.end
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !2421
  store i8* null, i8** %ext, align 8, !dbg !2424
  store i32 0, i32* @sequence, align 4, !dbg !2425
  %call2 = call i32 @mpeg_remux_next_fp(%struct.mpeg_demux_t* %call), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2428, metadata !DIExpression()), !dbg !2398
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2429
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2431

if.then4:                                         ; preds = %if.then1
  br label %return, !dbg !2432

if.end5:                                          ; preds = %if.then1
  br label %if.end7, !dbg !2434

if.else:                                          ; preds = %if.end
  %2 = bitcast %struct._IO_FILE* %out to i8*, !dbg !2435
  %ext6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !2437
  store i8* %2, i8** %ext6, align 8, !dbg !2438
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end5
  %mpeg_skip = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 18, !dbg !2439
  store i32 (%struct.mpeg_demux_t*)* @mpeg_remux_skip, i32 (%struct.mpeg_demux_t*)** %mpeg_skip, align 8, !dbg !2441
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 20, !dbg !2442
  store i32 (%struct.mpeg_demux_t*)* @mpeg_remux_system_header, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !2443
  %mpeg_pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 19, !dbg !2444
  store i32 (%struct.mpeg_demux_t*)* @mpeg_remux_pack, i32 (%struct.mpeg_demux_t*)** %mpeg_pack, align 8, !dbg !2445
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 21, !dbg !2446
  store i32 (%struct.mpeg_demux_t*)* @mpeg_remux_packet, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !2447
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 22, !dbg !2448
  store i32 (%struct.mpeg_demux_t*)* @mpeg_packet_check, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !2449
  %mpeg_end = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 23, !dbg !2450
  store i32 (%struct.mpeg_demux_t*)* @mpeg_remux_end, i32 (%struct.mpeg_demux_t*)** %mpeg_end, align 8, !dbg !2451
  call void @mpeg_buf_init(%struct.__anonstruct_mpeg_buffer_t_12* @shdr), !dbg !2452
  call void @mpeg_buf_init(%struct.__anonstruct_mpeg_buffer_t_12* @pack), !dbg !2454
  call void @mpeg_buf_init(%struct.__anonstruct_mpeg_buffer_t_12* @packet___1), !dbg !2456
  %call8 = call i32 @mpegd_parse(%struct.mpeg_demux_t* %call), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2460, metadata !DIExpression()), !dbg !2398
  %3 = load i32, i32* @par_no_end, align 4, !dbg !2461
  %tobool9 = icmp ne i32 %3, 0, !dbg !2461
  br i1 %tobool9, label %if.then10, label %if.end16, !dbg !2463

if.then10:                                        ; preds = %if.end7
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !2464
  store i8 0, i8* %arrayidx, align 1, !dbg !2467
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !2468
  store i8 0, i8* %arrayidx11, align 1, !dbg !2469
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 2, !dbg !2470
  store i8 1, i8* %arrayidx12, align 1, !dbg !2471
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 3, !dbg !2472
  store i8 -71, i8* %arrayidx13, align 1, !dbg !2473
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0, !dbg !2474
  %ext14 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !2476
  %4 = load i8*, i8** %ext14, align 8, !dbg !2476
  %5 = bitcast i8* %4 to %struct._IO_FILE*, !dbg !2477
  %call15 = call i32 @fwrite(i8* %arraydecay, i32 1, i32 4, %struct._IO_FILE* %5), !dbg !2478
  br label %if.end16, !dbg !2479

if.end16:                                         ; preds = %if.then10, %if.end7
  %6 = load i32, i32* @par_split, align 4, !dbg !2480
  %tobool17 = icmp ne i32 %6, 0, !dbg !2480
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !2482

if.then18:                                        ; preds = %if.end16
  %ext19 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !2483
  %7 = load i8*, i8** %ext19, align 8, !dbg !2483
  %8 = bitcast i8* %7 to %struct._IO_FILE*, !dbg !2487
  %call20 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !2488
  %ext21 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %call, i32 0, i32 17, !dbg !2489
  store i8* null, i8** %ext21, align 8, !dbg !2490
  br label %if.end22, !dbg !2491

if.end22:                                         ; preds = %if.then18, %if.end16
  call void @mpegd_close(%struct.mpeg_demux_t* %call), !dbg !2492
  call void @mpeg_buf_free(%struct.__anonstruct_mpeg_buffer_t_12* @shdr), !dbg !2495
  call void @mpeg_buf_free(%struct.__anonstruct_mpeg_buffer_t_12* @pack), !dbg !2497
  call void @mpeg_buf_free(%struct.__anonstruct_mpeg_buffer_t_12* @packet___1), !dbg !2499
  br label %return, !dbg !2501

return:                                           ; preds = %if.end22, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then4 ], [ %call8, %if.end22 ], !dbg !2502
  ret i32 %retval.0, !dbg !2503
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_next_fp(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2504 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata !4, metadata !2507, metadata !DIExpression()), !dbg !2508
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2509
  %0 = load i8*, i8** %ext, align 8, !dbg !2509
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !2511
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2512, metadata !DIExpression()), !dbg !2506
  %2 = ptrtoint %struct._IO_FILE* %1 to i64, !dbg !2513
  %cmp = icmp ne i64 %2, 0, !dbg !2515
  br i1 %cmp, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %entry
  %call = call i32 @fclose(%struct._IO_FILE* %1), !dbg !2517
  %ext1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2521
  store i8* null, i8** %ext1, align 8, !dbg !2522
  br label %if.end, !dbg !2523

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @par_demux_name, align 8, !dbg !2524
  %4 = load i32, i32* @sequence, align 4, !dbg !2527
  %call2 = call i8* @mpeg_get_name(i8* %3, i32 %4), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2529, metadata !DIExpression()), !dbg !2506
  %5 = ptrtoint i8* %call2 to i64, !dbg !2530
  %cmp3 = icmp eq i64 %5, 0, !dbg !2532
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2533

if.then4:                                         ; preds = %if.end
  br label %return, !dbg !2534

if.end5:                                          ; preds = %if.end
  %6 = load i32, i32* @sequence, align 4, !dbg !2536
  %inc = add i32 %6, 1, !dbg !2536
  store i32 %inc, i32* @sequence, align 4, !dbg !2536
  %call6 = call %struct._IO_FILE* @"\01fopen64"(i8* %call2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)), !dbg !2538
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call6, metadata !2512, metadata !DIExpression()), !dbg !2506
  call void @free(i8* %call2) #4, !dbg !2540
  %7 = ptrtoint %struct._IO_FILE* %call6 to i64, !dbg !2542
  %cmp7 = icmp eq i64 %7, 0, !dbg !2544
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2545

if.then8:                                         ; preds = %if.end5
  br label %return, !dbg !2546

if.end9:                                          ; preds = %if.end5
  %8 = bitcast %struct._IO_FILE* %call6 to i8*, !dbg !2548
  %ext10 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2549
  store i8* %8, i8** %ext10, align 8, !dbg !2550
  br label %return, !dbg !2551

return:                                           ; preds = %if.end9, %if.then8, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then8 ], [ 0, %if.end9 ], !dbg !2552
  ret i32 %retval.0, !dbg !2553
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_skip(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2554 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2555, metadata !DIExpression()), !dbg !2556
  %0 = load i32, i32* @par_remux_skipped, align 4, !dbg !2557
  %cmp = icmp eq i32 %0, 0, !dbg !2560
  br i1 %cmp, label %if.then, label %if.end, !dbg !2561

if.then:                                          ; preds = %entry
  br label %return, !dbg !2562

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2564
  %1 = load i8*, i8** %ext, align 8, !dbg !2564
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !2567
  %call = call i32 @mpeg_copy(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %2, i32 1), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %call, metadata !2569, metadata !DIExpression()), !dbg !2556
  %tobool = icmp ne i32 %call, 0, !dbg !2570
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2572

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !2573

if.end2:                                          ; preds = %if.end
  br label %return, !dbg !2575

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then1 ], [ 0, %if.end2 ], !dbg !2576
  ret i32 %retval.0, !dbg !2577
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_system_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2578 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2579, metadata !DIExpression()), !dbg !2580
  %0 = load i32, i32* @par_no_shdr, align 4, !dbg !2581
  %tobool = icmp ne i32 %0, 0, !dbg !2581
  br i1 %tobool, label %if.then, label %if.end2, !dbg !2584

if.then:                                          ; preds = %entry
  %shdr_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 10, !dbg !2585
  %1 = load i64, i64* %shdr_cnt, align 8, !dbg !2585
  %cmp = icmp ugt i64 %1, 1, !dbg !2588
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2589

if.then1:                                         ; preds = %if.then
  br label %return, !dbg !2590

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !2592

if.end2:                                          ; preds = %if.end, %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2593
  %2 = load i8*, i8** %ext, align 8, !dbg !2593
  %3 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !2596
  %call = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @pack, %struct._IO_FILE* %3), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %call, metadata !2598, metadata !DIExpression()), !dbg !2580
  %tobool3 = icmp ne i32 %call, 0, !dbg !2599
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2601

if.then4:                                         ; preds = %if.end2
  br label %return, !dbg !2602

if.end5:                                          ; preds = %if.end2
  %shdr = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !2604
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr, i32 0, i32 0, !dbg !2607
  %4 = load i32, i32* %size, align 8, !dbg !2607
  %call6 = call i32 @mpeg_buf_read(%struct.__anonstruct_mpeg_buffer_t_12* @shdr, %struct.mpeg_demux_t* %mpeg, i32 %4), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2609, metadata !DIExpression()), !dbg !2580
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2610
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2612

if.then8:                                         ; preds = %if.end5
  br label %return, !dbg !2613

if.end9:                                          ; preds = %if.end5
  %ext10 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2615
  %5 = load i8*, i8** %ext10, align 8, !dbg !2615
  %6 = bitcast i8* %5 to %struct._IO_FILE*, !dbg !2618
  %call11 = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @shdr, %struct._IO_FILE* %6), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %call11, metadata !2620, metadata !DIExpression()), !dbg !2580
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2621
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2623

if.then13:                                        ; preds = %if.end9
  br label %return, !dbg !2624

if.end14:                                         ; preds = %if.end9
  br label %return, !dbg !2626

return:                                           ; preds = %if.end14, %if.then13, %if.then8, %if.then4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 1, %if.then4 ], [ 1, %if.then8 ], [ 1, %if.then13 ], [ 0, %if.end14 ], !dbg !2627
  ret i32 %retval.0, !dbg !2628
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_pack(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2629 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2630, metadata !DIExpression()), !dbg !2631
  %pack = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 9, !dbg !2632
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_pack_t_11, %struct.__anonstruct_mpeg_pack_t_11* %pack, i32 0, i32 0, !dbg !2636
  %0 = load i32, i32* %size, align 8, !dbg !2636
  %call = call i32 @mpeg_buf_read(%struct.__anonstruct_mpeg_buffer_t_12* @pack, %struct.mpeg_demux_t* %mpeg, i32 %0), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %call, metadata !2638, metadata !DIExpression()), !dbg !2631
  %tobool = icmp ne i32 %call, 0, !dbg !2639
  br i1 %tobool, label %if.then, label %if.end, !dbg !2641

if.then:                                          ; preds = %entry
  br label %return, !dbg !2642

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @par_empty_pack, align 4, !dbg !2644
  %tobool1 = icmp ne i32 %1, 0, !dbg !2644
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2646

if.then2:                                         ; preds = %if.end
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2647
  %2 = load i8*, i8** %ext, align 8, !dbg !2647
  %3 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !2651
  %call3 = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @pack, %struct._IO_FILE* %3), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2653, metadata !DIExpression()), !dbg !2631
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2654
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2656

if.then5:                                         ; preds = %if.then2
  br label %return, !dbg !2657

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !2659

if.end7:                                          ; preds = %if.end6, %if.end
  br label %return, !dbg !2660

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then5 ], [ 0, %if.end7 ], !dbg !2661
  ret i32 %retval.0, !dbg !2662
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_packet(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2663 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata !4, metadata !2666, metadata !DIExpression()), !dbg !2667
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2668
  %sid1 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 1, !dbg !2671
  %0 = load i32, i32* %sid1, align 4, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2665
  %packet2 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2673
  %ssid3 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet2, i32 0, i32 2, !dbg !2674
  %1 = load i32, i32* %ssid3, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %1, metadata !2675, metadata !DIExpression()), !dbg !2665
  %conv = trunc i32 %0 to i8, !dbg !2676
  %conv4 = trunc i32 %1 to i8, !dbg !2678
  %call = call i32 @mpeg_stream_excl(i8 zeroext %conv, i8 zeroext %conv4), !dbg !2679
  call void @llvm.dbg.value(metadata i32 %call, metadata !2680, metadata !DIExpression()), !dbg !2665
  %tobool = icmp ne i32 %call, 0, !dbg !2681
  br i1 %tobool, label %if.then, label %if.end, !dbg !2683

if.then:                                          ; preds = %entry
  br label %return, !dbg !2684

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2686, metadata !DIExpression()), !dbg !2665
  %packet5 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2687
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet5, i32 0, i32 3, !dbg !2690
  %2 = load i32, i32* %size, align 4, !dbg !2690
  %call6 = call i32 @mpeg_buf_read(%struct.__anonstruct_mpeg_buffer_t_12* @packet___1, %struct.mpeg_demux_t* %mpeg, i32 %2), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2692, metadata !DIExpression()), !dbg !2665
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2693
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !2695

if.then8:                                         ; preds = %if.end
  %3 = load i32, i32* getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet___1, i32 0, i32 1), align 8, !dbg !2696
  %packet9 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2700
  %size10 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet9, i32 0, i32 3, !dbg !2701
  %4 = load i32, i32* %size10, align 4, !dbg !2701
  call void (i8*, ...) @prt_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.85, i32 0, i32 0), i32 %0, i32 %3, i32 %4), !dbg !2702
  %5 = load i32, i32* @par_drop, align 4, !dbg !2703
  %tobool11 = icmp ne i32 %5, 0, !dbg !2703
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2705

if.then12:                                        ; preds = %if.then8
  call void @mpeg_buf_clear(%struct.__anonstruct_mpeg_buffer_t_12* @packet___1), !dbg !2706
  br label %return, !dbg !2710

if.end13:                                         ; preds = %if.then8
  call void @llvm.dbg.value(metadata i32 1, metadata !2686, metadata !DIExpression()), !dbg !2665
  br label %if.end14, !dbg !2711

if.end14:                                         ; preds = %if.end13, %if.end
  %r.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.end ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !2686, metadata !DIExpression()), !dbg !2665
  %6 = load i32, i32* getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet___1, i32 0, i32 1), align 8, !dbg !2713
  %cmp = icmp uge i32 %6, 4, !dbg !2715
  br i1 %cmp, label %if.then16, label %if.end31, !dbg !2716

if.then16:                                        ; preds = %if.end14
  %idxprom = zext i32 %0 to i64, !dbg !2717
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream_map, i64 0, i64 %idxprom, !dbg !2717
  %7 = load i8, i8* %arrayidx, align 1, !dbg !2717
  %8 = load i8*, i8** getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet___1, i32 0, i32 0), align 8, !dbg !2719
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 3, !dbg !2720
  store i8 %7, i8* %add.ptr, align 1, !dbg !2721
  %cmp17 = icmp eq i32 %0, 189, !dbg !2722
  br i1 %cmp17, label %if.then19, label %if.end30, !dbg !2724

if.then19:                                        ; preds = %if.then16
  %9 = load i32, i32* getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet___1, i32 0, i32 1), align 8, !dbg !2725
  %packet20 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2728
  %offset = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet20, i32 0, i32 4, !dbg !2729
  %10 = load i32, i32* %offset, align 8, !dbg !2729
  %cmp21 = icmp ugt i32 %9, %10, !dbg !2730
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !2731

if.then23:                                        ; preds = %if.then19
  %idxprom24 = zext i32 %1 to i64, !dbg !2732
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream_map, i64 0, i64 %idxprom24, !dbg !2732
  %11 = load i8, i8* %arrayidx25, align 1, !dbg !2732
  %12 = load i8*, i8** getelementptr inbounds (%struct.__anonstruct_mpeg_buffer_t_12, %struct.__anonstruct_mpeg_buffer_t_12* @packet___1, i32 0, i32 0), align 8, !dbg !2734
  %packet26 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !2735
  %offset27 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet26, i32 0, i32 4, !dbg !2736
  %13 = load i32, i32* %offset27, align 8, !dbg !2736
  %idx.ext = zext i32 %13 to i64, !dbg !2737
  %add.ptr28 = getelementptr inbounds i8, i8* %12, i64 %idx.ext, !dbg !2737
  store i8 %11, i8* %add.ptr28, align 1, !dbg !2738
  br label %if.end29, !dbg !2739

if.end29:                                         ; preds = %if.then23, %if.then19
  br label %if.end30, !dbg !2740

if.end30:                                         ; preds = %if.end29, %if.then16
  br label %if.end31, !dbg !2741

if.end31:                                         ; preds = %if.end30, %if.end14
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2742
  %14 = load i8*, i8** %ext, align 8, !dbg !2742
  %15 = bitcast i8* %14 to %struct._IO_FILE*, !dbg !2745
  %call32 = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @pack, %struct._IO_FILE* %15), !dbg !2746
  call void @llvm.dbg.value(metadata i32 %call32, metadata !2747, metadata !DIExpression()), !dbg !2665
  %tobool33 = icmp ne i32 %call32, 0, !dbg !2748
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2750

if.then34:                                        ; preds = %if.end31
  br label %return, !dbg !2751

if.end35:                                         ; preds = %if.end31
  %ext36 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2753
  %16 = load i8*, i8** %ext36, align 8, !dbg !2753
  %17 = bitcast i8* %16 to %struct._IO_FILE*, !dbg !2756
  %call37 = call i32 @mpeg_buf_write_clear(%struct.__anonstruct_mpeg_buffer_t_12* @packet___1, %struct._IO_FILE* %17), !dbg !2757
  call void @llvm.dbg.value(metadata i32 %call37, metadata !2758, metadata !DIExpression()), !dbg !2665
  %tobool38 = icmp ne i32 %call37, 0, !dbg !2759
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2761

if.then39:                                        ; preds = %if.end35
  br label %return, !dbg !2762

if.end40:                                         ; preds = %if.end35
  br label %return, !dbg !2764

return:                                           ; preds = %if.end40, %if.then39, %if.then34, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then12 ], [ 1, %if.then34 ], [ 1, %if.then39 ], [ %r.0, %if.end40 ], !dbg !2712
  ret i32 %retval.0, !dbg !2765
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_remux_end(%struct.mpeg_demux_t* %mpeg) #0 !dbg !2766 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2767, metadata !DIExpression()), !dbg !2768
  %0 = load i32, i32* @par_no_end, align 4, !dbg !2769
  %tobool = icmp ne i32 %0, 0, !dbg !2769
  br i1 %tobool, label %if.then, label %if.end, !dbg !2772

if.then:                                          ; preds = %entry
  br label %return, !dbg !2773

if.end:                                           ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !2775
  %1 = load i8*, i8** %ext, align 8, !dbg !2775
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !2778
  %call = call i32 @mpeg_copy(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %2, i32 4), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %call, metadata !2780, metadata !DIExpression()), !dbg !2768
  %tobool1 = icmp ne i32 %call, 0, !dbg !2781
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2783

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2784

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* @par_split, align 4, !dbg !2786
  %tobool4 = icmp ne i32 %3, 0, !dbg !2786
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !2788

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @mpeg_remux_next_fp(%struct.mpeg_demux_t* %mpeg), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2793, metadata !DIExpression()), !dbg !2768
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2794
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2796

if.then8:                                         ; preds = %if.then5
  br label %return, !dbg !2797

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !2799

if.end10:                                         ; preds = %if.end9, %if.end3
  br label %return, !dbg !2800

return:                                           ; preds = %if.end10, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then2 ], [ 1, %if.then8 ], [ 0, %if.end10 ], !dbg !2801
  ret i32 %retval.0, !dbg !2802
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @mpeg_get_name(i8* %base, i32 %sid) #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata i8* %base, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %sid, metadata !2808, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata !4, metadata !2809, metadata !DIExpression()), !dbg !2810
  %0 = ptrtoint i8* %base to i64, !dbg !2811
  %cmp = icmp eq i64 %0, 0, !dbg !2814
  br i1 %cmp, label %if.then, label %if.end, !dbg !2815

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), metadata !2806, metadata !DIExpression()), !dbg !2807
  br label %if.end, !dbg !2816

if.end:                                           ; preds = %if.then, %entry
  %base.addr.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %if.then ], [ %base, %entry ]
  call void @llvm.dbg.value(metadata i8* %base.addr.0, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2818, metadata !DIExpression()), !dbg !2807
  br label %while.body, !dbg !2819

while.body:                                       ; preds = %if.end4, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end4 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2818, metadata !DIExpression()), !dbg !2807
  br label %while_continue___1, !dbg !2823

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !2823

while_continue:                                   ; preds = %while_continue___1
  %idx.ext = zext i32 %n.0 to i64, !dbg !2824
  %add.ptr = getelementptr inbounds i8, i8* %base.addr.0, i64 %idx.ext, !dbg !2824
  %1 = load i8, i8* %add.ptr, align 1, !dbg !2827
  %conv = sext i8 %1 to i32, !dbg !2828
  %cmp1 = icmp ne i32 %conv, 0, !dbg !2829
  br i1 %cmp1, label %if.end4, label %if.then3, !dbg !2830

if.then3:                                         ; preds = %while_continue
  br label %while_break, !dbg !2831

if.end4:                                          ; preds = %while_continue
  %inc = add i32 %n.0, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2818, metadata !DIExpression()), !dbg !2807
  br label %while.body, !dbg !2819, !llvm.loop !2834

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !2836

while_break:                                      ; preds = %while_break___1, %if.then3
  %inc5 = add i32 %n.0, 1, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %inc5, metadata !2818, metadata !DIExpression()), !dbg !2807
  %call = call noalias i8* @malloc(i32 %inc5) #4, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %call, metadata !2841, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %call, metadata !2842, metadata !DIExpression()), !dbg !2807
  %2 = ptrtoint i8* %call to i64, !dbg !2843
  %cmp6 = icmp eq i64 %2, 0, !dbg !2845
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2846

if.then8:                                         ; preds = %while_break
  br label %return, !dbg !2847

if.end9:                                          ; preds = %while_break
  br label %while.body10, !dbg !2849

while.body10:                                     ; preds = %if.end36, %if.end9
  %n.1 = phi i32 [ %inc5, %if.end9 ], [ %dec, %if.end36 ], !dbg !2822
  %sid.addr.0 = phi i32 [ %sid, %if.end9 ], [ %sid.addr.1, %if.end36 ]
  call void @llvm.dbg.value(metadata i32 %sid.addr.0, metadata !2808, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !2818, metadata !DIExpression()), !dbg !2807
  br label %while_continue___2, !dbg !2852

while_continue___2:                               ; preds = %while.body10
  br label %while_continue___0, !dbg !2852

while_continue___0:                               ; preds = %while_continue___2
  %cmp11 = icmp ugt i32 %n.1, 0, !dbg !2853
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !2856

if.then13:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2857

if.end14:                                         ; preds = %while_continue___0
  %dec = add i32 %n.1, -1, !dbg !2859
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2818, metadata !DIExpression()), !dbg !2807
  %idx.ext15 = zext i32 %dec to i64, !dbg !2860
  %add.ptr16 = getelementptr inbounds i8, i8* %base.addr.0, i64 %idx.ext15, !dbg !2860
  %3 = load i8, i8* %add.ptr16, align 1, !dbg !2861
  %idx.ext17 = zext i32 %dec to i64, !dbg !2862
  %add.ptr18 = getelementptr inbounds i8, i8* %call, i64 %idx.ext17, !dbg !2862
  store i8 %3, i8* %add.ptr18, align 1, !dbg !2863
  %idx.ext19 = zext i32 %dec to i64, !dbg !2864
  %add.ptr20 = getelementptr inbounds i8, i8* %call, i64 %idx.ext19, !dbg !2864
  %4 = load i8, i8* %add.ptr20, align 1, !dbg !2866
  %conv21 = sext i8 %4 to i32, !dbg !2867
  %cmp22 = icmp eq i32 %conv21, 35, !dbg !2868
  br i1 %cmp22, label %if.then24, label %if.end36, !dbg !2869

if.then24:                                        ; preds = %if.end14
  %rem = urem i32 %sid.addr.0, 16, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %rem, metadata !2872, metadata !DIExpression()), !dbg !2807
  %div = udiv i32 %sid.addr.0, 16, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %div, metadata !2808, metadata !DIExpression()), !dbg !2807
  %cmp25 = icmp ult i32 %rem, 10, !dbg !2874
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !2876

if.then27:                                        ; preds = %if.then24
  %add = add i32 48, %rem, !dbg !2877
  %conv28 = trunc i32 %add to i8, !dbg !2879
  %idx.ext29 = zext i32 %dec to i64, !dbg !2880
  %add.ptr30 = getelementptr inbounds i8, i8* %call, i64 %idx.ext29, !dbg !2880
  store i8 %conv28, i8* %add.ptr30, align 1, !dbg !2881
  br label %if.end35, !dbg !2882

if.else:                                          ; preds = %if.then24
  %add31 = add i32 97, %rem, !dbg !2883
  %sub = sub i32 %add31, 10, !dbg !2885
  %conv32 = trunc i32 %sub to i8, !dbg !2886
  %idx.ext33 = zext i32 %dec to i64, !dbg !2887
  %add.ptr34 = getelementptr inbounds i8, i8* %call, i64 %idx.ext33, !dbg !2887
  store i8 %conv32, i8* %add.ptr34, align 1, !dbg !2888
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then27
  br label %if.end36, !dbg !2889

if.end36:                                         ; preds = %if.end35, %if.end14
  %sid.addr.1 = phi i32 [ %div, %if.end35 ], [ %sid.addr.0, %if.end14 ]
  call void @llvm.dbg.value(metadata i32 %sid.addr.1, metadata !2808, metadata !DIExpression()), !dbg !2807
  br label %while.body10, !dbg !2849, !llvm.loop !2890

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !2892

while_break___0:                                  ; preds = %while_break___2, %if.then13
  br label %return, !dbg !2893

return:                                           ; preds = %while_break___0, %if.then8
  %retval.0 = phi i8* [ null, %if.then8 ], [ %call, %while_break___0 ], !dbg !2822
  ret i8* %retval.0, !dbg !2894
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_stream_excl(i8 zeroext %sid, i8 zeroext %ssid) #0 !dbg !2895 {
entry:
  call void @llvm.dbg.value(metadata i8 %sid, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8 %ssid, metadata !2900, metadata !DIExpression()), !dbg !2899
  %idxprom = zext i8 %sid to i64, !dbg !2901
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom, !dbg !2901
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2901
  %conv = zext i8 %0 to i32, !dbg !2904
  %and = and i32 %conv, 1, !dbg !2905
  %cmp = icmp eq i32 %and, 0, !dbg !2906
  br i1 %cmp, label %if.then, label %if.end, !dbg !2907

if.then:                                          ; preds = %entry
  br label %return, !dbg !2908

if.end:                                           ; preds = %entry
  %conv2 = zext i8 %sid to i32, !dbg !2910
  %cmp3 = icmp eq i32 %conv2, 189, !dbg !2912
  br i1 %cmp3, label %if.then5, label %if.end14, !dbg !2913

if.then5:                                         ; preds = %if.end
  %idxprom6 = zext i8 %ssid to i64, !dbg !2914
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom6, !dbg !2914
  %1 = load i8, i8* %arrayidx7, align 1, !dbg !2914
  %conv8 = zext i8 %1 to i32, !dbg !2917
  %and9 = and i32 %conv8, 1, !dbg !2918
  %cmp10 = icmp eq i32 %and9, 0, !dbg !2919
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2920

if.then12:                                        ; preds = %if.then5
  br label %return, !dbg !2921

if.end13:                                         ; preds = %if.then5
  br label %if.end14, !dbg !2923

if.end14:                                         ; preds = %if.end13, %if.end
  br label %return, !dbg !2924

return:                                           ; preds = %if.end14, %if.then12, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then12 ], [ 0, %if.end14 ], !dbg !2925
  ret i32 %retval.0, !dbg !2926
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mpeg_copy(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %fp___1, i32 %n) #0 !dbg !2927 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !2932, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 %n, metadata !2933, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.declare(metadata !4, metadata !2936, metadata !DIExpression()), !dbg !2937
  br label %while.body, !dbg !2938

while.body:                                       ; preds = %if.end14, %entry
  %n.addr.0 = phi i32 [ %n, %entry ], [ %sub, %if.end14 ]
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !2933, metadata !DIExpression()), !dbg !2931
  br label %while_continue___0, !dbg !2942

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2942

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp ugt i32 %n.addr.0, 0, !dbg !2943
  br i1 %cmp, label %if.end, label %if.then, !dbg !2946

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2947

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp ult i32 %n.addr.0, 4096, !dbg !2949
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2951

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !2952, metadata !DIExpression()), !dbg !2931
  br label %if.end3, !dbg !2953

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 4096, metadata !2952, metadata !DIExpression()), !dbg !2931
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %i.0 = phi i32 [ %n.addr.0, %if.then2 ], [ 4096, %if.else ], !dbg !2955
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2952, metadata !DIExpression()), !dbg !2931
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0, !dbg !2956
  %call = call i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %arraydecay, i32 %i.0), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %call, metadata !2960, metadata !DIExpression()), !dbg !2931
  %cmp4 = icmp ugt i32 %call, 0, !dbg !2961
  br i1 %cmp4, label %if.then5, label %if.end11, !dbg !2963

if.then5:                                         ; preds = %if.end3
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0, !dbg !2964
  %call7 = call i32 @fwrite(i8* %arraydecay6, i32 1, i32 %call, %struct._IO_FILE* %fp___1), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2969, metadata !DIExpression()), !dbg !2931
  %cmp8 = icmp ne i32 %call7, %call, !dbg !2970
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2972

if.then9:                                         ; preds = %if.then5
  br label %return, !dbg !2973

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !2975

if.end11:                                         ; preds = %if.end10, %if.end3
  %cmp12 = icmp ne i32 %i.0, %call, !dbg !2976
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2978

if.then13:                                        ; preds = %if.end11
  br label %return, !dbg !2979

if.end14:                                         ; preds = %if.end11
  %sub = sub i32 %n.addr.0, %i.0, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2933, metadata !DIExpression()), !dbg !2931
  br label %while.body, !dbg !2938, !llvm.loop !2982

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2984

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !2985

return:                                           ; preds = %while_break, %if.then13, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.then13 ], [ 0, %while_break ], !dbg !2986
  ret i32 %retval.0, !dbg !2987
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8** %argv, metadata !2993, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.declare(metadata !4, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.declare(metadata !4, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata !4, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata !4, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.declare(metadata !4, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.declare(metadata !4, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.declare(metadata !4, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata !4, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata !4, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.declare(metadata !4, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.declare(metadata !4, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.declare(metadata !4, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.declare(metadata !4, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata !4, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.declare(metadata !4, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata !4, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.declare(metadata !4, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata !4, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.declare(metadata !4, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.declare(metadata !4, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.declare(metadata !4, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.declare(metadata !4, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata !4, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.declare(metadata !4, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata !4, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.declare(metadata !4, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.declare(metadata !4, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.declare(metadata !4, metadata !3048, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata !4, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata !4, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata !4, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata !4, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata !4, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.declare(metadata !4, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.declare(metadata !4, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.declare(metadata !4, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.declare(metadata !4, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.declare(metadata !4, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata !4, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.declare(metadata !4, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.declare(metadata !4, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.declare(metadata !4, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.declare(metadata !4, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.declare(metadata !4, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.declare(metadata !4, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.declare(metadata !4, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.declare(metadata !4, metadata !3086, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.declare(metadata !4, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata !4, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.declare(metadata !4, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.declare(metadata !4, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.declare(metadata !4, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.declare(metadata !4, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.declare(metadata !4, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.declare(metadata !4, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.declare(metadata !4, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata !4, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.declare(metadata !4, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.declare(metadata !4, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.declare(metadata !4, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.declare(metadata !4, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.declare(metadata !4, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata !4, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.declare(metadata !4, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.declare(metadata !4, metadata !3122, metadata !DIExpression()), !dbg !3123
  %cmp = icmp eq i32 %argc, 2, !dbg !3124
  br i1 %cmp, label %if.then, label %if.end7, !dbg !3127

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !3128
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !3132
  %call = call i32 @str_isarg(i8* %0, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %call, metadata !3134, metadata !DIExpression()), !dbg !2992
  %tobool = icmp ne i32 %call, 0, !dbg !3135
  br i1 %tobool, label %if.then1, label %if.else, !dbg !3137

if.then1:                                         ; preds = %if.then
  call void @prt_version(), !dbg !3138
  br label %return, !dbg !3142

if.else:                                          ; preds = %if.then
  %add.ptr2 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !3143
  %1 = load i8*, i8** %add.ptr2, align 8, !dbg !3147
  %call3 = call i32 @str_isarg(i8* %1, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3149, metadata !DIExpression()), !dbg !2992
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3150
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !3152

if.then5:                                         ; preds = %if.else
  call void @prt_help(), !dbg !3153
  br label %return, !dbg !3157

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7, !dbg !3158

if.end7:                                          ; preds = %if.end6, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while.body, !dbg !3160

while.body:                                       ; preds = %if.end10, %if.end7
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc, %if.end10 ], !dbg !3163
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while_continue___3, !dbg !3164

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !3164

while_continue:                                   ; preds = %while_continue___3
  %cmp8 = icmp ult i32 %i.0, 256, !dbg !3165
  br i1 %cmp8, label %if.end10, label %if.then9, !dbg !3168

if.then9:                                         ; preds = %while_continue
  br label %while_break, !dbg !3169

if.end10:                                         ; preds = %while_continue
  %idxprom = zext i32 %i.0 to i64, !dbg !3171
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom, !dbg !3171
  store i8 0, i8* %arrayidx, align 1, !dbg !3172
  %idxprom11 = zext i32 %i.0 to i64, !dbg !3173
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom11, !dbg !3173
  store i8 0, i8* %arrayidx12, align 1, !dbg !3174
  %conv = trunc i32 %i.0 to i8, !dbg !3175
  %idxprom13 = zext i32 %i.0 to i64, !dbg !3176
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream_map, i64 0, i64 %idxprom13, !dbg !3176
  store i8 %conv, i8* %arrayidx14, align 1, !dbg !3177
  %conv15 = trunc i32 %i.0 to i8, !dbg !3178
  %idxprom16 = zext i32 %i.0 to i64, !dbg !3179
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream_map, i64 0, i64 %idxprom16, !dbg !3179
  store i8 %conv15, i8* %arrayidx17, align 1, !dbg !3180
  %inc = add i32 %i.0, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while.body, !dbg !3160, !llvm.loop !3182

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !3184

while_break:                                      ; preds = %while_break___3, %if.then9
  call void @llvm.dbg.value(metadata i32 1, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %while.body18, !dbg !3186

while.body18:                                     ; preds = %if.end412, %while_break
  %argi.0 = phi i32 [ 1, %while_break ], [ %inc413, %if.end412 ], !dbg !3163
  call void @llvm.dbg.value(metadata i32 %argi.0, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %while_continue___4, !dbg !3189

while_continue___4:                               ; preds = %while.body18
  br label %while_continue___0, !dbg !3189

while_continue___0:                               ; preds = %while_continue___4
  %cmp19 = icmp slt i32 %argi.0, %argc, !dbg !3190
  br i1 %cmp19, label %if.end22, label %if.then21, !dbg !3193

if.then21:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !3194

if.end22:                                         ; preds = %while_continue___0
  %idx.ext = sext i32 %argi.0 to i64, !dbg !3196
  %add.ptr23 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !3196
  %2 = load i8*, i8** %add.ptr23, align 8, !dbg !3199
  %call24 = call i32 @str_isarg(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !3200
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3201, metadata !DIExpression()), !dbg !2992
  %tobool25 = icmp ne i32 %call24, 0, !dbg !3202
  br i1 %tobool25, label %if.then26, label %if.else47, !dbg !3204

if.then26:                                        ; preds = %if.end22
  store i32 0, i32* @par_mode, align 4, !dbg !3205
  call void @llvm.dbg.value(metadata i32 0, metadata !3207, metadata !DIExpression()), !dbg !2992
  br label %while.body28, !dbg !3208

while.body28:                                     ; preds = %if.end32, %if.then26
  %i___0.0 = phi i32 [ 0, %if.then26 ], [ %inc46, %if.end32 ], !dbg !3211
  call void @llvm.dbg.value(metadata i32 %i___0.0, metadata !3207, metadata !DIExpression()), !dbg !2992
  br label %while_continue___5, !dbg !3212

while_continue___5:                               ; preds = %while.body28
  br label %while_continue___1, !dbg !3212

while_continue___1:                               ; preds = %while_continue___5
  %cmp29 = icmp ult i32 %i___0.0, 256, !dbg !3213
  br i1 %cmp29, label %if.end32, label %if.then31, !dbg !3216

if.then31:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !3217

if.end32:                                         ; preds = %while_continue___1
  %idxprom33 = zext i32 %i___0.0 to i64, !dbg !3219
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom33, !dbg !3219
  %3 = load i8, i8* %arrayidx34, align 1, !dbg !3219
  %conv35 = zext i8 %3 to i32, !dbg !3220
  %or = or i32 %conv35, 1, !dbg !3221
  %conv36 = trunc i32 %or to i8, !dbg !3222
  %idxprom37 = zext i32 %i___0.0 to i64, !dbg !3223
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom37, !dbg !3223
  store i8 %conv36, i8* %arrayidx38, align 1, !dbg !3224
  %idxprom39 = zext i32 %i___0.0 to i64, !dbg !3225
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom39, !dbg !3225
  %4 = load i8, i8* %arrayidx40, align 1, !dbg !3225
  %conv41 = zext i8 %4 to i32, !dbg !3226
  %or42 = or i32 %conv41, 1, !dbg !3227
  %conv43 = trunc i32 %or42 to i8, !dbg !3228
  %idxprom44 = zext i32 %i___0.0 to i64, !dbg !3229
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom44, !dbg !3229
  store i8 %conv43, i8* %arrayidx45, align 1, !dbg !3230
  %inc46 = add i32 %i___0.0, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %inc46, metadata !3207, metadata !DIExpression()), !dbg !2992
  br label %while.body28, !dbg !3208, !llvm.loop !3232

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !3234

while_break___1:                                  ; preds = %while_break___5, %if.then31
  br label %if.end412, !dbg !3235

if.else47:                                        ; preds = %if.end22
  %idx.ext48 = sext i32 %argi.0 to i64, !dbg !3236
  %add.ptr49 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext48, !dbg !3236
  %5 = load i8*, i8** %add.ptr49, align 8, !dbg !3240
  %call50 = call i32 @str_isarg(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %call50, metadata !3242, metadata !DIExpression()), !dbg !2992
  %tobool51 = icmp ne i32 %call50, 0, !dbg !3243
  br i1 %tobool51, label %if.then52, label %if.else53, !dbg !3245

if.then52:                                        ; preds = %if.else47
  store i32 1, i32* @par_mode, align 4, !dbg !3246
  br label %if.end411, !dbg !3248

if.else53:                                        ; preds = %if.else47
  %idx.ext54 = sext i32 %argi.0 to i64, !dbg !3249
  %add.ptr55 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext54, !dbg !3249
  %6 = load i8*, i8** %add.ptr55, align 8, !dbg !3253
  %call56 = call i32 @str_isarg(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %call56, metadata !3255, metadata !DIExpression()), !dbg !2992
  %tobool57 = icmp ne i32 %call56, 0, !dbg !3256
  br i1 %tobool57, label %if.then58, label %if.else59, !dbg !3258

if.then58:                                        ; preds = %if.else53
  store i32 2, i32* @par_mode, align 4, !dbg !3259
  br label %if.end410, !dbg !3261

if.else59:                                        ; preds = %if.else53
  %idx.ext60 = sext i32 %argi.0 to i64, !dbg !3262
  %add.ptr61 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext60, !dbg !3262
  %7 = load i8*, i8** %add.ptr61, align 8, !dbg !3266
  %call62 = call i32 @str_isarg(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)), !dbg !3267
  call void @llvm.dbg.value(metadata i32 %call62, metadata !3268, metadata !DIExpression()), !dbg !2992
  %tobool63 = icmp ne i32 %call62, 0, !dbg !3269
  br i1 %tobool63, label %if.then64, label %if.else65, !dbg !3271

if.then64:                                        ; preds = %if.else59
  store i32 3, i32* @par_mode, align 4, !dbg !3272
  br label %if.end409, !dbg !3274

if.else65:                                        ; preds = %if.else59
  %idx.ext66 = sext i32 %argi.0 to i64, !dbg !3275
  %add.ptr67 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext66, !dbg !3275
  %8 = load i8*, i8** %add.ptr67, align 8, !dbg !3279
  %call68 = call i32 @str_isarg(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %call68, metadata !3281, metadata !DIExpression()), !dbg !2992
  %tobool69 = icmp ne i32 %call68, 0, !dbg !3282
  br i1 %tobool69, label %if.then70, label %if.else86, !dbg !3284

if.then70:                                        ; preds = %if.else65
  %inc71 = add nsw i32 %argi.0, 1, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %inc71, metadata !3185, metadata !DIExpression()), !dbg !2992
  %cmp72 = icmp sge i32 %inc71, %argc, !dbg !3287
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !3289

if.then74:                                        ; preds = %if.then70
  %add.ptr75 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3290
  %9 = load i8*, i8** %add.ptr75, align 8, !dbg !3294
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %9), !dbg !3295
  br label %return, !dbg !3296

if.end76:                                         ; preds = %if.then70
  %idx.ext77 = sext i32 %inc71 to i64, !dbg !3297
  %add.ptr78 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext77, !dbg !3297
  %10 = load i8*, i8** %add.ptr78, align 8, !dbg !3300
  %call79 = call i32 @str_get_streams(i8* %10, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @par_stream, i32 0, i32 0), i32 1), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %call79, metadata !3302, metadata !DIExpression()), !dbg !2992
  %tobool80 = icmp ne i32 %call79, 0, !dbg !3303
  br i1 %tobool80, label %if.then81, label %if.end85, !dbg !3305

if.then81:                                        ; preds = %if.end76
  %add.ptr82 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3306
  %11 = load i8*, i8** %add.ptr82, align 8, !dbg !3310
  %idx.ext83 = sext i32 %inc71 to i64, !dbg !3311
  %add.ptr84 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext83, !dbg !3311
  %12 = load i8*, i8** %add.ptr84, align 8, !dbg !3312
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %11, i8* %12), !dbg !3313
  br label %return, !dbg !3314

if.end85:                                         ; preds = %if.end76
  br label %if.end408, !dbg !3315

if.else86:                                        ; preds = %if.else65
  %idx.ext87 = sext i32 %argi.0 to i64, !dbg !3316
  %add.ptr88 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext87, !dbg !3316
  %13 = load i8*, i8** %add.ptr88, align 8, !dbg !3320
  %call89 = call i32 @str_isarg(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0)), !dbg !3321
  call void @llvm.dbg.value(metadata i32 %call89, metadata !3322, metadata !DIExpression()), !dbg !2992
  %tobool90 = icmp ne i32 %call89, 0, !dbg !3323
  br i1 %tobool90, label %if.then91, label %if.else107, !dbg !3325

if.then91:                                        ; preds = %if.else86
  %inc92 = add nsw i32 %argi.0, 1, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %inc92, metadata !3185, metadata !DIExpression()), !dbg !2992
  %cmp93 = icmp sge i32 %inc92, %argc, !dbg !3328
  br i1 %cmp93, label %if.then95, label %if.end97, !dbg !3330

if.then95:                                        ; preds = %if.then91
  %add.ptr96 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3331
  %14 = load i8*, i8** %add.ptr96, align 8, !dbg !3335
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %14), !dbg !3336
  br label %return, !dbg !3337

if.end97:                                         ; preds = %if.then91
  %idx.ext98 = sext i32 %inc92 to i64, !dbg !3338
  %add.ptr99 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext98, !dbg !3338
  %15 = load i8*, i8** %add.ptr99, align 8, !dbg !3341
  %call100 = call i32 @str_get_streams(i8* %15, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @par_substream, i32 0, i32 0), i32 1), !dbg !3342
  call void @llvm.dbg.value(metadata i32 %call100, metadata !3343, metadata !DIExpression()), !dbg !2992
  %tobool101 = icmp ne i32 %call100, 0, !dbg !3344
  br i1 %tobool101, label %if.then102, label %if.end106, !dbg !3346

if.then102:                                       ; preds = %if.end97
  %add.ptr103 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3347
  %16 = load i8*, i8** %add.ptr103, align 8, !dbg !3351
  %idx.ext104 = sext i32 %inc92 to i64, !dbg !3352
  %add.ptr105 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext104, !dbg !3352
  %17 = load i8*, i8** %add.ptr105, align 8, !dbg !3353
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* %16, i8* %17), !dbg !3354
  br label %return, !dbg !3355

if.end106:                                        ; preds = %if.end97
  br label %if.end407, !dbg !3356

if.else107:                                       ; preds = %if.else86
  %idx.ext108 = sext i32 %argi.0 to i64, !dbg !3357
  %add.ptr109 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext108, !dbg !3357
  %18 = load i8*, i8** %add.ptr109, align 8, !dbg !3361
  %call110 = call i32 @str_isarg(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)), !dbg !3362
  call void @llvm.dbg.value(metadata i32 %call110, metadata !3363, metadata !DIExpression()), !dbg !2992
  %tobool111 = icmp ne i32 %call110, 0, !dbg !3364
  br i1 %tobool111, label %if.then112, label %if.else164, !dbg !3366

if.then112:                                       ; preds = %if.else107
  %inc113 = add nsw i32 %argi.0, 1, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %inc113, metadata !3185, metadata !DIExpression()), !dbg !2992
  %cmp114 = icmp sge i32 %inc113, %argc, !dbg !3369
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !3371

if.then116:                                       ; preds = %if.then112
  %add.ptr117 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3372
  %19 = load i8*, i8** %add.ptr117, align 8, !dbg !3376
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* %19), !dbg !3377
  br label %return, !dbg !3378

if.end118:                                        ; preds = %if.then112
  %idx.ext119 = sext i32 %inc113 to i64, !dbg !3379
  %add.ptr120 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext119, !dbg !3379
  %20 = load i8*, i8** %add.ptr120, align 8, !dbg !3382
  %call121 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #6, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %call121, metadata !3384, metadata !DIExpression()), !dbg !2992
  %cmp122 = icmp eq i32 %call121, 0, !dbg !3385
  br i1 %cmp122, label %if.then124, label %if.else153, !dbg !3387

if.then124:                                       ; preds = %if.end118
  call void @llvm.dbg.value(metadata i32 0, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while.body126, !dbg !3388

while.body126:                                    ; preds = %if.end151, %if.then124
  %i.1 = phi i32 [ 0, %if.then124 ], [ %inc152, %if.end151 ], !dbg !3392
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while_continue___6, !dbg !3393

while_continue___6:                               ; preds = %while.body126
  br label %while_continue___2, !dbg !3393

while_continue___2:                               ; preds = %while_continue___6
  %cmp127 = icmp ult i32 %i.1, 256, !dbg !3394
  br i1 %cmp127, label %if.end130, label %if.then129, !dbg !3397

if.then129:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !3398

if.end130:                                        ; preds = %while_continue___2
  %idxprom131 = zext i32 %i.1 to i64, !dbg !3400
  %arrayidx132 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom131, !dbg !3400
  %21 = load i8, i8* %arrayidx132, align 1, !dbg !3400
  %conv133 = zext i8 %21 to i32, !dbg !3402
  %and = and i32 %conv133, 1, !dbg !3403
  %tobool134 = icmp ne i32 %and, 0, !dbg !3403
  br i1 %tobool134, label %if.then135, label %if.else143, !dbg !3404

if.then135:                                       ; preds = %if.end130
  %idxprom136 = zext i32 %i.1 to i64, !dbg !3405
  %arrayidx137 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom136, !dbg !3405
  %22 = load i8, i8* %arrayidx137, align 1, !dbg !3405
  %conv138 = zext i8 %22 to i32, !dbg !3407
  %and139 = and i32 %conv138, -3, !dbg !3408
  %conv140 = trunc i32 %and139 to i8, !dbg !3409
  %idxprom141 = zext i32 %i.1 to i64, !dbg !3410
  %arrayidx142 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom141, !dbg !3410
  store i8 %conv140, i8* %arrayidx142, align 1, !dbg !3411
  br label %if.end151, !dbg !3412

if.else143:                                       ; preds = %if.end130
  %idxprom144 = zext i32 %i.1 to i64, !dbg !3413
  %arrayidx145 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom144, !dbg !3413
  %23 = load i8, i8* %arrayidx145, align 1, !dbg !3413
  %conv146 = zext i8 %23 to i32, !dbg !3415
  %or147 = or i32 %conv146, 2, !dbg !3416
  %conv148 = trunc i32 %or147 to i8, !dbg !3417
  %idxprom149 = zext i32 %i.1 to i64, !dbg !3418
  %arrayidx150 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom149, !dbg !3418
  store i8 %conv148, i8* %arrayidx150, align 1, !dbg !3419
  br label %if.end151

if.end151:                                        ; preds = %if.else143, %if.then135
  %inc152 = add i32 %i.1, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %inc152, metadata !3159, metadata !DIExpression()), !dbg !2992
  br label %while.body126, !dbg !3388, !llvm.loop !3421

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !3423

while_break___2:                                  ; preds = %while_break___6, %if.then129
  br label %if.end163, !dbg !3424

if.else153:                                       ; preds = %if.end118
  %idx.ext154 = sext i32 %inc113 to i64, !dbg !3425
  %add.ptr155 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext154, !dbg !3425
  %24 = load i8*, i8** %add.ptr155, align 8, !dbg !3429
  %call156 = call i32 @str_get_streams(i8* %24, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @par_stream, i32 0, i32 0), i32 2), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %call156, metadata !3431, metadata !DIExpression()), !dbg !2992
  %tobool157 = icmp ne i32 %call156, 0, !dbg !3432
  br i1 %tobool157, label %if.then158, label %if.end162, !dbg !3434

if.then158:                                       ; preds = %if.else153
  %add.ptr159 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3435
  %25 = load i8*, i8** %add.ptr159, align 8, !dbg !3439
  %idx.ext160 = sext i32 %inc113 to i64, !dbg !3440
  %add.ptr161 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext160, !dbg !3440
  %26 = load i8*, i8** %add.ptr161, align 8, !dbg !3441
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %25, i8* %26), !dbg !3442
  br label %return, !dbg !3443

if.end162:                                        ; preds = %if.else153
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %while_break___2
  br label %if.end406, !dbg !3444

if.else164:                                       ; preds = %if.else107
  %idx.ext165 = sext i32 %argi.0 to i64, !dbg !3445
  %add.ptr166 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext165, !dbg !3445
  %27 = load i8*, i8** %add.ptr166, align 8, !dbg !3449
  %call167 = call i32 @str_isarg(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %call167, metadata !3451, metadata !DIExpression()), !dbg !2992
  %tobool168 = icmp ne i32 %call167, 0, !dbg !3452
  br i1 %tobool168, label %if.then169, label %if.else183, !dbg !3454

if.then169:                                       ; preds = %if.else164
  %inc170 = add nsw i32 %argi.0, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %inc170, metadata !3185, metadata !DIExpression()), !dbg !2992
  %cmp171 = icmp sge i32 %inc170, %argc, !dbg !3457
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !3459

if.then173:                                       ; preds = %if.then169
  %add.ptr174 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3460
  %28 = load i8*, i8** %add.ptr174, align 8, !dbg !3464
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* %28), !dbg !3465
  br label %return, !dbg !3466

if.end175:                                        ; preds = %if.then169
  %29 = load i8*, i8** @par_demux_name, align 8, !dbg !3467
  %30 = ptrtoint i8* %29 to i64, !dbg !3469
  %cmp176 = icmp ne i64 %30, 0, !dbg !3470
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !3471

if.then178:                                       ; preds = %if.end175
  %31 = load i8*, i8** @par_demux_name, align 8, !dbg !3472
  call void @free(i8* %31) #4, !dbg !3476
  br label %if.end179, !dbg !3477

if.end179:                                        ; preds = %if.then178, %if.end175
  %idx.ext180 = sext i32 %inc170 to i64, !dbg !3478
  %add.ptr181 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext180, !dbg !3478
  %32 = load i8*, i8** %add.ptr181, align 8, !dbg !3481
  %call182 = call i8* @str_clone(i8* %32), !dbg !3482
  store i8* %call182, i8** @par_demux_name, align 8, !dbg !3483
  br label %if.end405, !dbg !3484

if.else183:                                       ; preds = %if.else164
  %idx.ext184 = sext i32 %argi.0 to i64, !dbg !3485
  %add.ptr185 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext184, !dbg !3485
  %33 = load i8*, i8** %add.ptr185, align 8, !dbg !3489
  %call186 = call i32 @str_isarg(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %call186, metadata !3491, metadata !DIExpression()), !dbg !2992
  %tobool187 = icmp ne i32 %call186, 0, !dbg !3492
  br i1 %tobool187, label %if.then188, label %if.else199, !dbg !3494

if.then188:                                       ; preds = %if.else183
  %inc189 = add nsw i32 %argi.0, 1, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %inc189, metadata !3185, metadata !DIExpression()), !dbg !2992
  %cmp190 = icmp sge i32 %inc189, %argc, !dbg !3497
  br i1 %cmp190, label %if.then192, label %if.end194, !dbg !3499

if.then192:                                       ; preds = %if.then188
  %add.ptr193 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3500
  %34 = load i8*, i8** %add.ptr193, align 8, !dbg !3504
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0), i8* %34), !dbg !3505
  br label %return, !dbg !3506

if.end194:                                        ; preds = %if.then188
  %idx.ext195 = sext i32 %inc189 to i64, !dbg !3507
  %add.ptr196 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext195, !dbg !3507
  %35 = load i8*, i8** %add.ptr196, align 8, !dbg !3510
  %call197 = call i64 @strtoul(i8* %35, i8** null, i32 0) #4, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %call197, metadata !3512, metadata !DIExpression()), !dbg !2992
  %conv198 = trunc i64 %call197 to i32, !dbg !3513
  store i32 %conv198, i32* @par_packet_max, align 4, !dbg !3514
  br label %if.end404, !dbg !3515

if.else199:                                       ; preds = %if.else183
  %idx.ext200 = sext i32 %argi.0 to i64, !dbg !3516
  %add.ptr201 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext200, !dbg !3516
  %36 = load i8*, i8** %add.ptr201, align 8, !dbg !3520
  %call202 = call i32 @str_isarg(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !3521
  call void @llvm.dbg.value(metadata i32 %call202, metadata !3522, metadata !DIExpression()), !dbg !2992
  %tobool203 = icmp ne i32 %call202, 0, !dbg !3523
  br i1 %tobool203, label %if.then204, label %if.else226, !dbg !3525

if.then204:                                       ; preds = %if.else199
  %add = add nsw i32 %argi.0, 2, !dbg !3526
  %cmp205 = icmp sge i32 %add, %argc, !dbg !3529
  br i1 %cmp205, label %if.then207, label %if.end209, !dbg !3530

if.then207:                                       ; preds = %if.then204
  %add.ptr208 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3531
  %37 = load i8*, i8** %add.ptr208, align 8, !dbg !3535
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %37), !dbg !3536
  br label %return, !dbg !3537

if.end209:                                        ; preds = %if.then204
  %add210 = add nsw i32 %argi.0, 1, !dbg !3538
  %idx.ext211 = sext i32 %add210 to i64, !dbg !3541
  %add.ptr212 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext211, !dbg !3541
  %38 = load i8*, i8** %add.ptr212, align 8, !dbg !3542
  %call213 = call i64 @strtoul(i8* %38, i8** null, i32 0) #4, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %call213, metadata !3544, metadata !DIExpression()), !dbg !2992
  %conv214 = trunc i64 %call213 to i32, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %conv214, metadata !3546, metadata !DIExpression()), !dbg !2992
  %add215 = add nsw i32 %argi.0, 2, !dbg !3547
  %idx.ext216 = sext i32 %add215 to i64, !dbg !3549
  %add.ptr217 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext216, !dbg !3549
  %39 = load i8*, i8** %add.ptr217, align 8, !dbg !3550
  %call218 = call i64 @strtoul(i8* %39, i8** null, i32 0) #4, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %call218, metadata !3552, metadata !DIExpression()), !dbg !2992
  %conv219 = trunc i64 %call218 to i32, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %conv219, metadata !3554, metadata !DIExpression()), !dbg !2992
  %and220 = and i32 %conv219, 255, !dbg !3555
  %conv221 = trunc i32 %and220 to i8, !dbg !3556
  %and222 = and i32 %conv214, 255, !dbg !3557
  %idxprom223 = zext i32 %and222 to i64, !dbg !3558
  %arrayidx224 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream_map, i64 0, i64 %idxprom223, !dbg !3558
  store i8 %conv221, i8* %arrayidx224, align 1, !dbg !3559
  %add225 = add nsw i32 %argi.0, 2, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %add225, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end403, !dbg !3561

if.else226:                                       ; preds = %if.else199
  %idx.ext227 = sext i32 %argi.0 to i64, !dbg !3562
  %add.ptr228 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext227, !dbg !3562
  %40 = load i8*, i8** %add.ptr228, align 8, !dbg !3566
  %call229 = call i32 @str_isarg(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %call229, metadata !3568, metadata !DIExpression()), !dbg !2992
  %tobool230 = icmp ne i32 %call229, 0, !dbg !3569
  br i1 %tobool230, label %if.then231, label %if.else254, !dbg !3571

if.then231:                                       ; preds = %if.else226
  %add232 = add nsw i32 %argi.0, 2, !dbg !3572
  %cmp233 = icmp sge i32 %add232, %argc, !dbg !3575
  br i1 %cmp233, label %if.then235, label %if.end237, !dbg !3576

if.then235:                                       ; preds = %if.then231
  %add.ptr236 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3577
  %41 = load i8*, i8** %add.ptr236, align 8, !dbg !3581
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %41), !dbg !3582
  br label %return, !dbg !3583

if.end237:                                        ; preds = %if.then231
  %add238 = add nsw i32 %argi.0, 1, !dbg !3584
  %idx.ext239 = sext i32 %add238 to i64, !dbg !3587
  %add.ptr240 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext239, !dbg !3587
  %42 = load i8*, i8** %add.ptr240, align 8, !dbg !3588
  %call241 = call i64 @strtoul(i8* %42, i8** null, i32 0) #4, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %call241, metadata !3590, metadata !DIExpression()), !dbg !2992
  %conv242 = trunc i64 %call241 to i32, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %conv242, metadata !3592, metadata !DIExpression()), !dbg !2992
  %add243 = add nsw i32 %argi.0, 2, !dbg !3593
  %idx.ext244 = sext i32 %add243 to i64, !dbg !3595
  %add.ptr245 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext244, !dbg !3595
  %43 = load i8*, i8** %add.ptr245, align 8, !dbg !3596
  %call246 = call i64 @strtoul(i8* %43, i8** null, i32 0) #4, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %call246, metadata !3598, metadata !DIExpression()), !dbg !2992
  %conv247 = trunc i64 %call246 to i32, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %conv247, metadata !3600, metadata !DIExpression()), !dbg !2992
  %and248 = and i32 %conv247, 255, !dbg !3601
  %conv249 = trunc i32 %and248 to i8, !dbg !3602
  %and250 = and i32 %conv242, 255, !dbg !3603
  %idxprom251 = zext i32 %and250 to i64, !dbg !3604
  %arrayidx252 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream_map, i64 0, i64 %idxprom251, !dbg !3604
  store i8 %conv249, i8* %arrayidx252, align 1, !dbg !3605
  %add253 = add nsw i32 %argi.0, 2, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %add253, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end402, !dbg !3607

if.else254:                                       ; preds = %if.else226
  %idx.ext255 = sext i32 %argi.0 to i64, !dbg !3608
  %add.ptr256 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext255, !dbg !3608
  %44 = load i8*, i8** %add.ptr256, align 8, !dbg !3612
  %call257 = call i32 @str_isarg(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %call257, metadata !3614, metadata !DIExpression()), !dbg !2992
  %tobool258 = icmp ne i32 %call257, 0, !dbg !3615
  br i1 %tobool258, label %if.then259, label %if.else260, !dbg !3617

if.then259:                                       ; preds = %if.else254
  store i32 1, i32* @par_split, align 4, !dbg !3618
  br label %if.end401, !dbg !3620

if.else260:                                       ; preds = %if.else254
  %idx.ext261 = sext i32 %argi.0 to i64, !dbg !3621
  %add.ptr262 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext261, !dbg !3621
  %45 = load i8*, i8** %add.ptr262, align 8, !dbg !3625
  %call263 = call i32 @str_isarg(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0)), !dbg !3626
  call void @llvm.dbg.value(metadata i32 %call263, metadata !3627, metadata !DIExpression()), !dbg !2992
  %tobool264 = icmp ne i32 %call263, 0, !dbg !3628
  br i1 %tobool264, label %if.then265, label %if.else266, !dbg !3630

if.then265:                                       ; preds = %if.else260
  store i32 1, i32* @par_no_shdr, align 4, !dbg !3631
  br label %if.end400, !dbg !3633

if.else266:                                       ; preds = %if.else260
  %idx.ext267 = sext i32 %argi.0 to i64, !dbg !3634
  %add.ptr268 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext267, !dbg !3634
  %46 = load i8*, i8** %add.ptr268, align 8, !dbg !3638
  %call269 = call i32 @str_isarg(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0)), !dbg !3639
  call void @llvm.dbg.value(metadata i32 %call269, metadata !3640, metadata !DIExpression()), !dbg !2992
  %tobool270 = icmp ne i32 %call269, 0, !dbg !3641
  br i1 %tobool270, label %if.then271, label %if.else272, !dbg !3643

if.then271:                                       ; preds = %if.else266
  store i32 1, i32* @par_no_pack, align 4, !dbg !3644
  br label %if.end399, !dbg !3646

if.else272:                                       ; preds = %if.else266
  %idx.ext273 = sext i32 %argi.0 to i64, !dbg !3647
  %add.ptr274 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext273, !dbg !3647
  %47 = load i8*, i8** %add.ptr274, align 8, !dbg !3651
  %call275 = call i32 @str_isarg(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0)), !dbg !3652
  call void @llvm.dbg.value(metadata i32 %call275, metadata !3653, metadata !DIExpression()), !dbg !2992
  %tobool276 = icmp ne i32 %call275, 0, !dbg !3654
  br i1 %tobool276, label %if.then277, label %if.else278, !dbg !3656

if.then277:                                       ; preds = %if.else272
  store i32 1, i32* @par_remux_skipped, align 4, !dbg !3657
  br label %if.end398, !dbg !3659

if.else278:                                       ; preds = %if.else272
  %idx.ext279 = sext i32 %argi.0 to i64, !dbg !3660
  %add.ptr280 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext279, !dbg !3660
  %48 = load i8*, i8** %add.ptr280, align 8, !dbg !3664
  %call281 = call i32 @str_isarg(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !3665
  call void @llvm.dbg.value(metadata i32 %call281, metadata !3666, metadata !DIExpression()), !dbg !2992
  %tobool282 = icmp ne i32 %call281, 0, !dbg !3667
  br i1 %tobool282, label %if.then283, label %if.else284, !dbg !3669

if.then283:                                       ; preds = %if.else278
  store i32 1, i32* @par_no_packet, align 4, !dbg !3670
  br label %if.end397, !dbg !3672

if.else284:                                       ; preds = %if.else278
  %idx.ext285 = sext i32 %argi.0 to i64, !dbg !3673
  %add.ptr286 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext285, !dbg !3673
  %49 = load i8*, i8** %add.ptr286, align 8, !dbg !3677
  %call287 = call i32 @str_isarg(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %call287, metadata !3679, metadata !DIExpression()), !dbg !2992
  %tobool288 = icmp ne i32 %call287, 0, !dbg !3680
  br i1 %tobool288, label %if.then289, label %if.else290, !dbg !3682

if.then289:                                       ; preds = %if.else284
  store i32 1, i32* @par_no_end, align 4, !dbg !3683
  br label %if.end396, !dbg !3685

if.else290:                                       ; preds = %if.else284
  %idx.ext291 = sext i32 %argi.0 to i64, !dbg !3686
  %add.ptr292 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext291, !dbg !3686
  %50 = load i8*, i8** %add.ptr292, align 8, !dbg !3690
  %call293 = call i32 @str_isarg(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)), !dbg !3691
  call void @llvm.dbg.value(metadata i32 %call293, metadata !3692, metadata !DIExpression()), !dbg !2992
  %tobool294 = icmp ne i32 %call293, 0, !dbg !3693
  br i1 %tobool294, label %if.then295, label %if.else296, !dbg !3695

if.then295:                                       ; preds = %if.else290
  store i32 1, i32* @par_empty_pack, align 4, !dbg !3696
  br label %if.end395, !dbg !3698

if.else296:                                       ; preds = %if.else290
  %idx.ext297 = sext i32 %argi.0 to i64, !dbg !3699
  %add.ptr298 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext297, !dbg !3699
  %51 = load i8*, i8** %add.ptr298, align 8, !dbg !3703
  %call299 = call i32 @str_isarg(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0)), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %call299, metadata !3705, metadata !DIExpression()), !dbg !2992
  %tobool300 = icmp ne i32 %call299, 0, !dbg !3706
  br i1 %tobool300, label %if.then301, label %if.else302, !dbg !3708

if.then301:                                       ; preds = %if.else296
  store i32 0, i32* @par_drop, align 4, !dbg !3709
  br label %if.end394, !dbg !3711

if.else302:                                       ; preds = %if.else296
  %idx.ext303 = sext i32 %argi.0 to i64, !dbg !3712
  %add.ptr304 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext303, !dbg !3712
  %52 = load i8*, i8** %add.ptr304, align 8, !dbg !3716
  %call305 = call i32 @str_isarg(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)), !dbg !3717
  call void @llvm.dbg.value(metadata i32 %call305, metadata !3718, metadata !DIExpression()), !dbg !2992
  %tobool306 = icmp ne i32 %call305, 0, !dbg !3719
  br i1 %tobool306, label %if.then307, label %if.else308, !dbg !3721

if.then307:                                       ; preds = %if.else302
  store i32 1, i32* @par_first_pts, align 4, !dbg !3722
  br label %if.end393, !dbg !3724

if.else308:                                       ; preds = %if.else302
  %idx.ext309 = sext i32 %argi.0 to i64, !dbg !3725
  %add.ptr310 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext309, !dbg !3725
  %53 = load i8*, i8** %add.ptr310, align 8, !dbg !3729
  %call311 = call i32 @str_isarg(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %call311, metadata !3731, metadata !DIExpression()), !dbg !2992
  %tobool312 = icmp ne i32 %call311, 0, !dbg !3732
  br i1 %tobool312, label %if.then313, label %if.else314, !dbg !3734

if.then313:                                       ; preds = %if.else308
  store i32 1, i32* @par_dvdac3, align 4, !dbg !3735
  br label %if.end392, !dbg !3737

if.else314:                                       ; preds = %if.else308
  %idx.ext315 = sext i32 %argi.0 to i64, !dbg !3738
  %add.ptr316 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext315, !dbg !3738
  %54 = load i8*, i8** %add.ptr316, align 8, !dbg !3742
  %call317 = call i32 @str_isarg(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %call317, metadata !3744, metadata !DIExpression()), !dbg !2992
  %tobool318 = icmp ne i32 %call317, 0, !dbg !3745
  br i1 %tobool318, label %if.then319, label %if.else320, !dbg !3747

if.then319:                                       ; preds = %if.else314
  store i32 1, i32* @par_dvdsub, align 4, !dbg !3748
  br label %if.end391, !dbg !3750

if.else320:                                       ; preds = %if.else314
  %idx.ext321 = sext i32 %argi.0 to i64, !dbg !3751
  %add.ptr322 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext321, !dbg !3751
  %55 = load i8*, i8** %add.ptr322, align 8, !dbg !3753
  %add.ptr323 = getelementptr inbounds i8, i8* %55, i64 0, !dbg !3754
  %56 = load i8, i8* %add.ptr323, align 1, !dbg !3755
  %conv324 = sext i8 %56 to i32, !dbg !3756
  %cmp325 = icmp ne i32 %conv324, 45, !dbg !3757
  br i1 %cmp325, label %if.then327, label %if.else328, !dbg !3758

if.then327:                                       ; preds = %if.else320
  br label %_L, !dbg !3759

if.else328:                                       ; preds = %if.else320
  %idx.ext329 = sext i32 %argi.0 to i64, !dbg !3761
  %add.ptr330 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext329, !dbg !3761
  %57 = load i8*, i8** %add.ptr330, align 8, !dbg !3763
  %add.ptr331 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !3764
  %58 = load i8, i8* %add.ptr331, align 1, !dbg !3765
  %conv332 = sext i8 %58 to i32, !dbg !3766
  %cmp333 = icmp eq i32 %conv332, 0, !dbg !3767
  br i1 %cmp333, label %if.then335, label %if.else385, !dbg !3756

if.then335:                                       ; preds = %if.else328
  br label %_L, !dbg !3768

_L:                                               ; preds = %if.then335, %if.then327
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3769
  %60 = ptrtoint %struct._IO_FILE* %59 to i64, !dbg !3772
  %cmp336 = icmp eq i64 %60, 0, !dbg !3773
  br i1 %cmp336, label %if.then338, label %if.else357, !dbg !3774

if.then338:                                       ; preds = %_L
  %idx.ext339 = sext i32 %argi.0 to i64, !dbg !3775
  %add.ptr340 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext339, !dbg !3775
  %61 = load i8*, i8** %add.ptr340, align 8, !dbg !3779
  %call341 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #6, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %call341, metadata !3781, metadata !DIExpression()), !dbg !2992
  %cmp342 = icmp eq i32 %call341, 0, !dbg !3782
  br i1 %cmp342, label %if.then344, label %if.else345, !dbg !3784

if.then344:                                       ; preds = %if.then338
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !3785
  store %struct._IO_FILE* %62, %struct._IO_FILE** @par_inp, align 8, !dbg !3787
  br label %if.end349, !dbg !3788

if.else345:                                       ; preds = %if.then338
  %idx.ext346 = sext i32 %argi.0 to i64, !dbg !3789
  %add.ptr347 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext346, !dbg !3789
  %63 = load i8*, i8** %add.ptr347, align 8, !dbg !3793
  %call348 = call %struct._IO_FILE* @"\01fopen64"(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !3794
  store %struct._IO_FILE* %call348, %struct._IO_FILE** @par_inp, align 8, !dbg !3795
  br label %if.end349

if.end349:                                        ; preds = %if.else345, %if.then344
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3796
  %65 = ptrtoint %struct._IO_FILE* %64 to i64, !dbg !3798
  %cmp350 = icmp eq i64 %65, 0, !dbg !3799
  br i1 %cmp350, label %if.then352, label %if.end356, !dbg !3800

if.then352:                                       ; preds = %if.end349
  %add.ptr353 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3801
  %66 = load i8*, i8** %add.ptr353, align 8, !dbg !3805
  %idx.ext354 = sext i32 %argi.0 to i64, !dbg !3806
  %add.ptr355 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext354, !dbg !3806
  %67 = load i8*, i8** %add.ptr355, align 8, !dbg !3807
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0), i8* %66, i8* %67), !dbg !3808
  br label %return, !dbg !3809

if.end356:                                        ; preds = %if.end349
  br label %if.end384, !dbg !3810

if.else357:                                       ; preds = %_L
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3811
  %69 = ptrtoint %struct._IO_FILE* %68 to i64, !dbg !3813
  %cmp358 = icmp eq i64 %69, 0, !dbg !3814
  br i1 %cmp358, label %if.then360, label %if.else379, !dbg !3815

if.then360:                                       ; preds = %if.else357
  %idx.ext361 = sext i32 %argi.0 to i64, !dbg !3816
  %add.ptr362 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext361, !dbg !3816
  %70 = load i8*, i8** %add.ptr362, align 8, !dbg !3820
  %call363 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #6, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %call363, metadata !3822, metadata !DIExpression()), !dbg !2992
  %cmp364 = icmp eq i32 %call363, 0, !dbg !3823
  br i1 %cmp364, label %if.then366, label %if.else367, !dbg !3825

if.then366:                                       ; preds = %if.then360
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3826
  store %struct._IO_FILE* %71, %struct._IO_FILE** @par_out, align 8, !dbg !3828
  br label %if.end371, !dbg !3829

if.else367:                                       ; preds = %if.then360
  %idx.ext368 = sext i32 %argi.0 to i64, !dbg !3830
  %add.ptr369 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext368, !dbg !3830
  %72 = load i8*, i8** %add.ptr369, align 8, !dbg !3834
  %call370 = call %struct._IO_FILE* @"\01fopen64"(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)), !dbg !3835
  store %struct._IO_FILE* %call370, %struct._IO_FILE** @par_out, align 8, !dbg !3836
  br label %if.end371

if.end371:                                        ; preds = %if.else367, %if.then366
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3837
  %74 = ptrtoint %struct._IO_FILE* %73 to i64, !dbg !3839
  %cmp372 = icmp eq i64 %74, 0, !dbg !3840
  br i1 %cmp372, label %if.then374, label %if.end378, !dbg !3841

if.then374:                                       ; preds = %if.end371
  %add.ptr375 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3842
  %75 = load i8*, i8** %add.ptr375, align 8, !dbg !3846
  %idx.ext376 = sext i32 %argi.0 to i64, !dbg !3847
  %add.ptr377 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext376, !dbg !3847
  %76 = load i8*, i8** %add.ptr377, align 8, !dbg !3848
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0), i8* %75, i8* %76), !dbg !3849
  br label %return, !dbg !3850

if.end378:                                        ; preds = %if.end371
  br label %if.end383, !dbg !3851

if.else379:                                       ; preds = %if.else357
  %add.ptr380 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3852
  %77 = load i8*, i8** %add.ptr380, align 8, !dbg !3856
  %idx.ext381 = sext i32 %argi.0 to i64, !dbg !3857
  %add.ptr382 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext381, !dbg !3857
  %78 = load i8*, i8** %add.ptr382, align 8, !dbg !3858
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i32 0, i32 0), i8* %77, i8* %78), !dbg !3859
  br label %return, !dbg !3860

if.end383:                                        ; preds = %if.end378
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %if.end356
  br label %if.end389, !dbg !3861

if.else385:                                       ; preds = %if.else328
  %add.ptr386 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !3862
  %79 = load i8*, i8** %add.ptr386, align 8, !dbg !3866
  %idx.ext387 = sext i32 %argi.0 to i64, !dbg !3867
  %add.ptr388 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext387, !dbg !3867
  %80 = load i8*, i8** %add.ptr388, align 8, !dbg !3868
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0), i8* %79, i8* %80), !dbg !3869
  br label %return, !dbg !3870

if.end389:                                        ; preds = %if.end384
  br label %if.end390

if.end390:                                        ; preds = %if.end389
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.then319
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %if.then313
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.then307
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.then301
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then295
  br label %if.end396

if.end396:                                        ; preds = %if.end395, %if.then289
  br label %if.end397

if.end397:                                        ; preds = %if.end396, %if.then283
  br label %if.end398

if.end398:                                        ; preds = %if.end397, %if.then277
  br label %if.end399

if.end399:                                        ; preds = %if.end398, %if.then271
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %if.then265
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %if.then259
  br label %if.end402

if.end402:                                        ; preds = %if.end401, %if.end237
  %argi.1 = phi i32 [ %add253, %if.end237 ], [ %argi.0, %if.end401 ], !dbg !3163
  call void @llvm.dbg.value(metadata i32 %argi.1, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end403

if.end403:                                        ; preds = %if.end402, %if.end209
  %argi.2 = phi i32 [ %add225, %if.end209 ], [ %argi.1, %if.end402 ], !dbg !3871
  call void @llvm.dbg.value(metadata i32 %argi.2, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end404

if.end404:                                        ; preds = %if.end403, %if.end194
  %argi.3 = phi i32 [ %inc189, %if.end194 ], [ %argi.2, %if.end403 ], !dbg !3872
  call void @llvm.dbg.value(metadata i32 %argi.3, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end405

if.end405:                                        ; preds = %if.end404, %if.end179
  %argi.4 = phi i32 [ %inc170, %if.end179 ], [ %argi.3, %if.end404 ], !dbg !3873
  call void @llvm.dbg.value(metadata i32 %argi.4, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.end163
  %argi.5 = phi i32 [ %inc113, %if.end163 ], [ %argi.4, %if.end405 ], !dbg !3874
  call void @llvm.dbg.value(metadata i32 %argi.5, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %if.end106
  %argi.6 = phi i32 [ %inc92, %if.end106 ], [ %argi.5, %if.end406 ], !dbg !3875
  call void @llvm.dbg.value(metadata i32 %argi.6, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.end85
  %argi.7 = phi i32 [ %inc71, %if.end85 ], [ %argi.6, %if.end407 ], !dbg !3876
  call void @llvm.dbg.value(metadata i32 %argi.7, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end409

if.end409:                                        ; preds = %if.end408, %if.then64
  %argi.8 = phi i32 [ %argi.0, %if.then64 ], [ %argi.7, %if.end408 ], !dbg !3163
  call void @llvm.dbg.value(metadata i32 %argi.8, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.then58
  %argi.9 = phi i32 [ %argi.0, %if.then58 ], [ %argi.8, %if.end409 ], !dbg !3877
  call void @llvm.dbg.value(metadata i32 %argi.9, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %if.then52
  %argi.10 = phi i32 [ %argi.0, %if.then52 ], [ %argi.9, %if.end410 ], !dbg !3877
  call void @llvm.dbg.value(metadata i32 %argi.10, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %while_break___1
  %argi.11 = phi i32 [ %argi.0, %while_break___1 ], [ %argi.10, %if.end411 ], !dbg !3877
  call void @llvm.dbg.value(metadata i32 %argi.11, metadata !3185, metadata !DIExpression()), !dbg !2992
  %inc413 = add nsw i32 %argi.11, 1, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %inc413, metadata !3185, metadata !DIExpression()), !dbg !2992
  br label %while.body18, !dbg !3186, !llvm.loop !3879

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !3881

while_break___0:                                  ; preds = %while_break___4, %if.then21
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3882
  %82 = ptrtoint %struct._IO_FILE* %81 to i64, !dbg !3884
  %cmp414 = icmp eq i64 %82, 0, !dbg !3885
  br i1 %cmp414, label %if.then416, label %if.end417, !dbg !3886

if.then416:                                       ; preds = %while_break___0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !3887
  store %struct._IO_FILE* %83, %struct._IO_FILE** @par_inp, align 8, !dbg !3889
  br label %if.end417, !dbg !3890

if.end417:                                        ; preds = %if.then416, %while_break___0
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3891
  %85 = ptrtoint %struct._IO_FILE* %84 to i64, !dbg !3893
  %cmp418 = icmp eq i64 %85, 0, !dbg !3894
  br i1 %cmp418, label %if.then420, label %if.end421, !dbg !3895

if.then420:                                       ; preds = %if.end417
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3896
  store %struct._IO_FILE* %86, %struct._IO_FILE** @par_out, align 8, !dbg !3898
  br label %if.end421, !dbg !3899

if.end421:                                        ; preds = %if.then420, %if.end417
  %87 = load i32, i32* @par_mode, align 4, !dbg !3900
  %cmp422 = icmp eq i32 %87, 0, !dbg !3903
  br i1 %cmp422, label %if.then424, label %if.end425, !dbg !3904

if.then424:                                       ; preds = %if.end421
  br label %case_0, !dbg !3905

if.end425:                                        ; preds = %if.end421
  %88 = load i32, i32* @par_mode, align 4, !dbg !3907
  %cmp426 = icmp eq i32 %88, 1, !dbg !3909
  br i1 %cmp426, label %if.then428, label %if.end429, !dbg !3910

if.then428:                                       ; preds = %if.end425
  br label %case_1, !dbg !3911

if.end429:                                        ; preds = %if.end425
  %89 = load i32, i32* @par_mode, align 4, !dbg !3913
  %cmp430 = icmp eq i32 %89, 2, !dbg !3915
  br i1 %cmp430, label %if.then432, label %if.end433, !dbg !3916

if.then432:                                       ; preds = %if.end429
  br label %case_2, !dbg !3917

if.end433:                                        ; preds = %if.end429
  %90 = load i32, i32* @par_mode, align 4, !dbg !3919
  %cmp434 = icmp eq i32 %90, 3, !dbg !3921
  br i1 %cmp434, label %if.then436, label %if.end437, !dbg !3922

if.then436:                                       ; preds = %if.end433
  br label %case_3, !dbg !3923

if.end437:                                        ; preds = %if.end433
  br label %switch_default, !dbg !3925

case_0:                                           ; preds = %if.then424
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3926
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3929
  %call438 = call i32 @mpeg_scan(%struct._IO_FILE* %91, %struct._IO_FILE* %92), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %call438, metadata !3931, metadata !DIExpression()), !dbg !2992
  br label %switch_break, !dbg !3932

case_1:                                           ; preds = %if.then428
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3933
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3936
  %call439 = call i32 @mpeg_list(%struct._IO_FILE* %93, %struct._IO_FILE* %94), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %call439, metadata !3931, metadata !DIExpression()), !dbg !2992
  br label %switch_break, !dbg !3938

case_2:                                           ; preds = %if.then432
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3939
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3942
  %call440 = call i32 @mpeg_remux(%struct._IO_FILE* %95, %struct._IO_FILE* %96), !dbg !3943
  call void @llvm.dbg.value(metadata i32 %call440, metadata !3931, metadata !DIExpression()), !dbg !2992
  br label %switch_break, !dbg !3944

case_3:                                           ; preds = %if.then436
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @par_inp, align 8, !dbg !3945
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @par_out, align 8, !dbg !3948
  %call441 = call i32 @mpeg_demux(%struct._IO_FILE* %97, %struct._IO_FILE* %98), !dbg !3949
  call void @llvm.dbg.value(metadata i32 %call441, metadata !3931, metadata !DIExpression()), !dbg !2992
  br label %switch_break, !dbg !3950

switch_default:                                   ; preds = %if.end437
  call void @llvm.dbg.value(metadata i32 1, metadata !3931, metadata !DIExpression()), !dbg !2992
  br label %switch_break, !dbg !3951

switch_break:                                     ; preds = %switch_default, %case_3, %case_2, %case_1, %case_0
  %r.0 = phi i32 [ %call438, %case_0 ], [ %call439, %case_1 ], [ %call440, %case_2 ], [ %call441, %case_3 ], [ 1, %switch_default ], !dbg !3952
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !3931, metadata !DIExpression()), !dbg !2992
  %tobool442 = icmp ne i32 %r.0, 0, !dbg !3953
  br i1 %tobool442, label %if.then443, label %if.end444, !dbg !3955

if.then443:                                       ; preds = %switch_break
  br label %return, !dbg !3956

if.end444:                                        ; preds = %switch_break
  br label %return, !dbg !3958

return:                                           ; preds = %if.end444, %if.then443, %if.else385, %if.else379, %if.then374, %if.then352, %if.then235, %if.then207, %if.then192, %if.then173, %if.then158, %if.then116, %if.then102, %if.then95, %if.then81, %if.then74, %if.then5, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then5 ], [ 1, %if.then74 ], [ 1, %if.then81 ], [ 1, %if.then95 ], [ 1, %if.then102 ], [ 1, %if.then116 ], [ 1, %if.then158 ], [ 1, %if.then173 ], [ 1, %if.then192 ], [ 1, %if.then207 ], [ 1, %if.then235 ], [ 1, %if.then352 ], [ 1, %if.then374 ], [ 1, %if.else379 ], [ 1, %if.else385 ], [ 1, %if.then443 ], [ 0, %if.end444 ], !dbg !3163
  ret i32 %retval.0, !dbg !3959
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @str_isarg(i8* %str, i8* %arg1, i8* %arg2) #0 !dbg !3960 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* %arg1, metadata !3965, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* %arg2, metadata !3966, metadata !DIExpression()), !dbg !3964
  %0 = ptrtoint i8* %arg1 to i64, !dbg !3967
  %cmp = icmp ne i64 %0, 0, !dbg !3970
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3971

if.then:                                          ; preds = %entry
  %call = call i32 @strcmp(i8* %str, i8* %arg1) #6, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %call, metadata !3976, metadata !DIExpression()), !dbg !3964
  %cmp1 = icmp eq i32 %call, 0, !dbg !3977
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3979

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !3980

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !3982

if.end3:                                          ; preds = %if.end, %entry
  %1 = ptrtoint i8* %arg2 to i64, !dbg !3983
  %cmp4 = icmp ne i64 %1, 0, !dbg !3985
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !3986

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @strcmp(i8* %str, i8* %arg2) #6, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %call6, metadata !3991, metadata !DIExpression()), !dbg !3964
  %cmp7 = icmp eq i32 %call6, 0, !dbg !3992
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3994

if.then8:                                         ; preds = %if.then5
  br label %return, !dbg !3995

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !3997

if.end10:                                         ; preds = %if.end9, %if.end3
  br label %return, !dbg !3998

return:                                           ; preds = %if.end10, %if.then8, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then8 ], [ 0, %if.end10 ], !dbg !3999
  ret i32 %retval.0, !dbg !4000
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @prt_version() #0 !dbg !4001 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !4004, metadata !DIExpression()), !dbg !4005
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4006
  %call = call i32 @fputs(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.86, i32 0, i32 0), %struct._IO_FILE* %0), !dbg !4010
  ret void, !dbg !4011
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @prt_help() #0 !dbg !4012 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !4013, metadata !DIExpression()), !dbg !4014
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4015
  %call = call i32 @fputs(i8* getelementptr inbounds ([1357 x i8], [1357 x i8]* @.str.87, i32 0, i32 0), %struct._IO_FILE* %0), !dbg !4019
  ret void, !dbg !4020
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @str_get_streams(i8* %str, i8* %stm, i32 %msk) #0 !dbg !4021 {
entry:
  %tmp = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %stm, metadata !4026, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %msk, metadata !4027, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.declare(metadata !4, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata !4, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 1, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %while.body, !dbg !4035

while.body:                                       ; preds = %if.end80, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %str.addr.6, %if.end80 ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !4024, metadata !DIExpression()), !dbg !4025
  br label %while_continue___2, !dbg !4039

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !4039

while_continue:                                   ; preds = %while_continue___2
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !4040
  %conv = sext i8 %0 to i32, !dbg !4043
  %cmp = icmp ne i32 %conv, 0, !dbg !4044
  br i1 %cmp, label %if.end, label %if.then, !dbg !4045

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !4046

if.end:                                           ; preds = %while_continue
  %call = call i8* @str_skip_white(i8* %str.addr.0), !dbg !4048
  call void @llvm.dbg.value(metadata i8* %call, metadata !4024, metadata !DIExpression()), !dbg !4025
  %1 = load i8, i8* %call, align 1, !dbg !4051
  %conv2 = sext i8 %1 to i32, !dbg !4053
  %cmp3 = icmp eq i32 %conv2, 43, !dbg !4054
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !4055

if.then5:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i32 1, !dbg !4056
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 1, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end13, !dbg !4058

if.else:                                          ; preds = %if.end
  %2 = load i8, i8* %call, align 1, !dbg !4059
  %conv6 = sext i8 %2 to i32, !dbg !4061
  %cmp7 = icmp eq i32 %conv6, 45, !dbg !4062
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !4063

if.then9:                                         ; preds = %if.else
  %incdec.ptr10 = getelementptr inbounds i8, i8* %call, i32 1, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %incdec.ptr10, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end12, !dbg !4066

if.else11:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then9
  %incl.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.else11 ], !dbg !4067
  %str.addr.1 = phi i8* [ %incdec.ptr10, %if.then9 ], [ %call, %if.else11 ], !dbg !4068
  call void @llvm.dbg.value(metadata i8* %str.addr.1, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %incl.0, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %incl.1 = phi i32 [ 1, %if.then5 ], [ %incl.0, %if.end12 ], !dbg !4069
  %str.addr.2 = phi i8* [ %incdec.ptr, %if.then5 ], [ %str.addr.1, %if.end12 ], !dbg !4069
  call void @llvm.dbg.value(metadata i8* %str.addr.2, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %incl.1, metadata !4034, metadata !DIExpression()), !dbg !4025
  %call14 = call i32 @strncmp(i8* %str.addr.2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 3) #6, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %call14, metadata !4073, metadata !DIExpression()), !dbg !4025
  %cmp15 = icmp eq i32 %call14, 0, !dbg !4074
  br i1 %cmp15, label %if.then17, label %if.else18, !dbg !4076

if.then17:                                        ; preds = %if.end13
  %add.ptr = getelementptr inbounds i8, i8* %str.addr.2, i64 3, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4079, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 255, metadata !4080, metadata !DIExpression()), !dbg !4025
  br label %if.end45, !dbg !4081

if.else18:                                        ; preds = %if.end13
  %call19 = call i32 @strncmp(i8* %str.addr.2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i32 4) #6, !dbg !4082
  call void @llvm.dbg.value(metadata i32 %call19, metadata !4086, metadata !DIExpression()), !dbg !4025
  %cmp20 = icmp eq i32 %call19, 0, !dbg !4087
  br i1 %cmp20, label %if.then22, label %if.else24, !dbg !4089

if.then22:                                        ; preds = %if.else18
  %add.ptr23 = getelementptr inbounds i8, i8* %str.addr.2, i64 4, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %add.ptr23, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4079, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 255, metadata !4080, metadata !DIExpression()), !dbg !4025
  %tobool = icmp ne i32 %incl.1, 0, !dbg !4092
  %lnot = xor i1 %tobool, true, !dbg !4092
  %lnot.ext = zext i1 %lnot to i32, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end44, !dbg !4093

if.else24:                                        ; preds = %if.else18
  %call25 = call i64 @strtoul(i8* %str.addr.2, i8** %tmp, i32 0) #4, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %call25, metadata !4098, metadata !DIExpression()), !dbg !4025
  %conv26 = trunc i64 %call25 to i32, !dbg !4099
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !4079, metadata !DIExpression()), !dbg !4025
  %3 = load i8*, i8** %tmp, align 8, !dbg !4100
  %4 = ptrtoint i8* %3 to i64, !dbg !4102
  %5 = ptrtoint i8* %str.addr.2 to i64, !dbg !4103
  %cmp27 = icmp eq i64 %4, %5, !dbg !4104
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4105

if.then29:                                        ; preds = %if.else24
  br label %return, !dbg !4106

if.end30:                                         ; preds = %if.else24
  %6 = load i8*, i8** %tmp, align 8, !dbg !4108
  call void @llvm.dbg.value(metadata i8* %6, metadata !4024, metadata !DIExpression()), !dbg !4025
  %7 = load i8, i8* %6, align 1, !dbg !4109
  %conv31 = sext i8 %7 to i32, !dbg !4111
  %cmp32 = icmp eq i32 %conv31, 45, !dbg !4112
  br i1 %cmp32, label %if.then34, label %if.else42, !dbg !4113

if.then34:                                        ; preds = %if.end30
  %incdec.ptr35 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %incdec.ptr35, metadata !4024, metadata !DIExpression()), !dbg !4025
  %call36 = call i64 @strtoul(i8* %incdec.ptr35, i8** %tmp, i32 0) #4, !dbg !4117
  call void @llvm.dbg.value(metadata i64 %call36, metadata !4119, metadata !DIExpression()), !dbg !4025
  %conv37 = trunc i64 %call36 to i32, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %conv37, metadata !4080, metadata !DIExpression()), !dbg !4025
  %8 = load i8*, i8** %tmp, align 8, !dbg !4121
  %9 = ptrtoint i8* %8 to i64, !dbg !4123
  %10 = ptrtoint i8* %incdec.ptr35 to i64, !dbg !4124
  %cmp38 = icmp eq i64 %9, %10, !dbg !4125
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4126

if.then40:                                        ; preds = %if.then34
  br label %return, !dbg !4127

if.end41:                                         ; preds = %if.then34
  %11 = load i8*, i8** %tmp, align 8, !dbg !4129
  call void @llvm.dbg.value(metadata i8* %11, metadata !4024, metadata !DIExpression()), !dbg !4025
  br label %if.end43, !dbg !4130

if.else42:                                        ; preds = %if.end30
  call void @llvm.dbg.value(metadata i32 %conv26, metadata !4080, metadata !DIExpression()), !dbg !4025
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  %stm2.0 = phi i32 [ %conv37, %if.end41 ], [ %conv26, %if.else42 ], !dbg !4131
  %str.addr.3 = phi i8* [ %11, %if.end41 ], [ %6, %if.else42 ], !dbg !4132
  call void @llvm.dbg.value(metadata i8* %str.addr.3, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %stm2.0, metadata !4080, metadata !DIExpression()), !dbg !4025
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then22
  %incl.2 = phi i32 [ %lnot.ext, %if.then22 ], [ %incl.1, %if.end43 ], !dbg !4068
  %stm1.0 = phi i32 [ 0, %if.then22 ], [ %conv26, %if.end43 ], !dbg !4133
  %stm2.1 = phi i32 [ 255, %if.then22 ], [ %stm2.0, %if.end43 ], !dbg !4133
  %str.addr.4 = phi i8* [ %add.ptr23, %if.then22 ], [ %str.addr.3, %if.end43 ], !dbg !4133
  call void @llvm.dbg.value(metadata i8* %str.addr.4, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %stm2.1, metadata !4080, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %stm1.0, metadata !4079, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %incl.2, metadata !4034, metadata !DIExpression()), !dbg !4025
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then17
  %incl.3 = phi i32 [ %incl.1, %if.then17 ], [ %incl.2, %if.end44 ], !dbg !4068
  %stm1.1 = phi i32 [ 0, %if.then17 ], [ %stm1.0, %if.end44 ], !dbg !4134
  %stm2.2 = phi i32 [ 255, %if.then17 ], [ %stm2.1, %if.end44 ], !dbg !4134
  %str.addr.5 = phi i8* [ %add.ptr, %if.then17 ], [ %str.addr.4, %if.end44 ], !dbg !4134
  call void @llvm.dbg.value(metadata i8* %str.addr.5, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %stm2.2, metadata !4080, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %stm1.1, metadata !4079, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %incl.3, metadata !4034, metadata !DIExpression()), !dbg !4025
  %tobool46 = icmp ne i32 %incl.3, 0, !dbg !4135
  br i1 %tobool46, label %if.then47, label %if.else59, !dbg !4137

if.then47:                                        ; preds = %if.end45
  call void @llvm.dbg.value(metadata i32 %stm1.1, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while.body49, !dbg !4139

while.body49:                                     ; preds = %if.end53, %if.then47
  %i.0 = phi i32 [ %stm1.1, %if.then47 ], [ %inc, %if.end53 ], !dbg !4143
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while_continue___3, !dbg !4144

while_continue___3:                               ; preds = %while.body49
  br label %while_continue___0, !dbg !4144

while_continue___0:                               ; preds = %while_continue___3
  %cmp50 = icmp ule i32 %i.0, %stm2.2, !dbg !4145
  br i1 %cmp50, label %if.end53, label %if.then52, !dbg !4148

if.then52:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !4149

if.end53:                                         ; preds = %while_continue___0
  %idx.ext = zext i32 %i.0 to i64, !dbg !4151
  %add.ptr54 = getelementptr inbounds i8, i8* %stm, i64 %idx.ext, !dbg !4151
  %12 = load i8, i8* %add.ptr54, align 1, !dbg !4152
  %conv55 = zext i8 %12 to i32, !dbg !4153
  %or = or i32 %conv55, %msk, !dbg !4154
  %conv56 = trunc i32 %or to i8, !dbg !4155
  %idx.ext57 = zext i32 %i.0 to i64, !dbg !4156
  %add.ptr58 = getelementptr inbounds i8, i8* %stm, i64 %idx.ext57, !dbg !4156
  store i8 %conv56, i8* %add.ptr58, align 1, !dbg !4157
  %inc = add i32 %i.0, 1, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while.body49, !dbg !4139, !llvm.loop !4159

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !4161

while_break___0:                                  ; preds = %while_break___3, %if.then52
  br label %if.end73, !dbg !4162

if.else59:                                        ; preds = %if.end45
  call void @llvm.dbg.value(metadata i32 %stm1.1, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while.body61, !dbg !4163

while.body61:                                     ; preds = %if.end65, %if.else59
  %i.1 = phi i32 [ %stm1.1, %if.else59 ], [ %inc72, %if.end65 ], !dbg !4167
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while_continue___4, !dbg !4168

while_continue___4:                               ; preds = %while.body61
  br label %while_continue___1, !dbg !4168

while_continue___1:                               ; preds = %while_continue___4
  %cmp62 = icmp ule i32 %i.1, %stm2.2, !dbg !4169
  br i1 %cmp62, label %if.end65, label %if.then64, !dbg !4172

if.then64:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !4173

if.end65:                                         ; preds = %while_continue___1
  %idx.ext66 = zext i32 %i.1 to i64, !dbg !4175
  %add.ptr67 = getelementptr inbounds i8, i8* %stm, i64 %idx.ext66, !dbg !4175
  %13 = load i8, i8* %add.ptr67, align 1, !dbg !4176
  %conv68 = zext i8 %13 to i32, !dbg !4177
  %neg = xor i32 %msk, -1, !dbg !4178
  %and = and i32 %conv68, %neg, !dbg !4179
  %conv69 = trunc i32 %and to i8, !dbg !4180
  %idx.ext70 = zext i32 %i.1 to i64, !dbg !4181
  %add.ptr71 = getelementptr inbounds i8, i8* %stm, i64 %idx.ext70, !dbg !4181
  store i8 %conv69, i8* %add.ptr71, align 1, !dbg !4182
  %inc72 = add i32 %i.1, 1, !dbg !4183
  call void @llvm.dbg.value(metadata i32 %inc72, metadata !4138, metadata !DIExpression()), !dbg !4025
  br label %while.body61, !dbg !4163, !llvm.loop !4184

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !4186

while_break___1:                                  ; preds = %while_break___4, %if.then64
  br label %if.end73

if.end73:                                         ; preds = %while_break___1, %while_break___0
  %call74 = call i8* @str_skip_white(i8* %str.addr.5), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %call74, metadata !4024, metadata !DIExpression()), !dbg !4025
  %14 = load i8, i8* %call74, align 1, !dbg !4190
  %conv75 = sext i8 %14 to i32, !dbg !4192
  %cmp76 = icmp eq i32 %conv75, 47, !dbg !4193
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !4194

if.then78:                                        ; preds = %if.end73
  %incdec.ptr79 = getelementptr inbounds i8, i8* %call74, i32 1, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %incdec.ptr79, metadata !4024, metadata !DIExpression()), !dbg !4025
  br label %if.end80, !dbg !4197

if.end80:                                         ; preds = %if.then78, %if.end73
  %str.addr.6 = phi i8* [ %incdec.ptr79, %if.then78 ], [ %call74, %if.end73 ], !dbg !4068
  call void @llvm.dbg.value(metadata i8* %str.addr.6, metadata !4024, metadata !DIExpression()), !dbg !4025
  br label %while.body, !dbg !4035, !llvm.loop !4198

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !4200

while_break:                                      ; preds = %while_break___2, %if.then
  br label %return, !dbg !4201

return:                                           ; preds = %while_break, %if.then40, %if.then29
  %retval.0 = phi i32 [ 1, %if.then29 ], [ 1, %if.then40 ], [ 0, %while_break ], !dbg !4202
  ret i32 %retval.0, !dbg !4203
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @str_clone(i8* %str) #0 !dbg !4204 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !4207, metadata !DIExpression()), !dbg !4208
  %call = call i32 @strlen(i8* %str) #6, !dbg !4209
  call void @llvm.dbg.value(metadata i32 %call, metadata !4213, metadata !DIExpression()), !dbg !4208
  %add = add i32 %call, 1, !dbg !4214
  %call1 = call noalias i8* @malloc(i32 %add) #4, !dbg !4216
  call void @llvm.dbg.value(metadata i8* %call1, metadata !4217, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i8* %call1, metadata !4218, metadata !DIExpression()), !dbg !4208
  %0 = ptrtoint i8* %call1 to i64, !dbg !4219
  %cmp = icmp eq i64 %0, 0, !dbg !4221
  br i1 %cmp, label %if.then, label %if.end, !dbg !4222

if.then:                                          ; preds = %entry
  br label %return, !dbg !4223

if.end:                                           ; preds = %entry
  %call2 = call i8* @strcpy(i8* %call1, i8* %str) #4, !dbg !4225
  br label %return, !dbg !4228

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call1, %if.end ], !dbg !4229
  ret i8* %retval.0, !dbg !4230
}

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct._IO_FILE* @mpeg_demux_open(%struct.mpeg_demux_t* %mpeg, i32 %sid, i32 %ssid) #0 !dbg !4231 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 %sid, metadata !4236, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 %ssid, metadata !4237, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata !4, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.declare(metadata !4, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.declare(metadata !4, metadata !4242, metadata !DIExpression()), !dbg !4243
  %0 = load i8*, i8** @par_demux_name, align 8, !dbg !4244
  %1 = ptrtoint i8* %0 to i64, !dbg !4247
  %cmp = icmp eq i64 %1, 0, !dbg !4248
  br i1 %cmp, label %if.then, label %if.else, !dbg !4249

if.then:                                          ; preds = %entry
  %ext = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 17, !dbg !4250
  %2 = load i8*, i8** %ext, align 8, !dbg !4250
  %3 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !4252
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !4253, metadata !DIExpression()), !dbg !4235
  br label %if.end22, !dbg !4254

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %sid, 189, !dbg !4255
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !4258

if.then2:                                         ; preds = %if.else
  %shl = shl i32 %sid, 8, !dbg !4259
  %add = add i32 %shl, %ssid, !dbg !4261
  call void @llvm.dbg.value(metadata i32 %add, metadata !4262, metadata !DIExpression()), !dbg !4235
  br label %if.end, !dbg !4263

if.else3:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %sid, metadata !4262, metadata !DIExpression()), !dbg !4235
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  %seq.0 = phi i32 [ %add, %if.then2 ], [ %sid, %if.else3 ], !dbg !4264
  call void @llvm.dbg.value(metadata i32 %seq.0, metadata !4262, metadata !DIExpression()), !dbg !4235
  %4 = load i8*, i8** @par_demux_name, align 8, !dbg !4265
  %call = call i8* @mpeg_get_name(i8* %4, i32 %seq.0), !dbg !4268
  call void @llvm.dbg.value(metadata i8* %call, metadata !4269, metadata !DIExpression()), !dbg !4235
  %call4 = call %struct._IO_FILE* @"\01fopen64"(i8* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)), !dbg !4270
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call4, metadata !4253, metadata !DIExpression()), !dbg !4235
  %5 = ptrtoint %struct._IO_FILE* %call4 to i64, !dbg !4272
  %cmp5 = icmp eq i64 %5, 0, !dbg !4274
  br i1 %cmp5, label %if.then6, label %if.end21, !dbg !4275

if.then6:                                         ; preds = %if.end
  call void (i8*, ...) @prt_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i32 0, i32 0), i8* %call), !dbg !4276
  %cmp7 = icmp eq i32 %sid, 189, !dbg !4280
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !4282

if.then8:                                         ; preds = %if.then6
  %idxprom = zext i32 %ssid to i64, !dbg !4283
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom, !dbg !4283
  %6 = load i8, i8* %arrayidx, align 1, !dbg !4283
  %conv = zext i8 %6 to i32, !dbg !4285
  %and = and i32 %conv, -2, !dbg !4286
  %conv9 = trunc i32 %and to i8, !dbg !4287
  %idxprom10 = zext i32 %ssid to i64, !dbg !4288
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @par_substream, i64 0, i64 %idxprom10, !dbg !4288
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !4289
  br label %if.end20, !dbg !4290

if.else12:                                        ; preds = %if.then6
  %idxprom13 = zext i32 %sid to i64, !dbg !4291
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom13, !dbg !4291
  %7 = load i8, i8* %arrayidx14, align 1, !dbg !4291
  %conv15 = zext i8 %7 to i32, !dbg !4293
  %and16 = and i32 %conv15, -2, !dbg !4294
  %conv17 = trunc i32 %and16 to i8, !dbg !4295
  %idxprom18 = zext i32 %sid to i64, !dbg !4296
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @par_stream, i64 0, i64 %idxprom18, !dbg !4296
  store i8 %conv17, i8* %arrayidx19, align 1, !dbg !4297
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then8
  call void @free(i8* %call) #4, !dbg !4298
  br label %return, !dbg !4301

if.end21:                                         ; preds = %if.end
  call void @free(i8* %call) #4, !dbg !4302
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %fp___1.0 = phi %struct._IO_FILE* [ %3, %if.then ], [ %call4, %if.end21 ], !dbg !4305
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1.0, metadata !4253, metadata !DIExpression()), !dbg !4235
  %cmp23 = icmp eq i32 %sid, 189, !dbg !4306
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !4308

if.then25:                                        ; preds = %if.end22
  %8 = load i32, i32* @par_dvdsub, align 4, !dbg !4309
  %tobool = icmp ne i32 %8, 0, !dbg !4309
  br i1 %tobool, label %if.then26, label %if.end28, !dbg !4312

if.then26:                                        ; preds = %if.then25
  %call27 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 1, i32 4, %struct._IO_FILE* %fp___1.0), !dbg !4313
  br label %if.end28, !dbg !4317

if.end28:                                         ; preds = %if.then26, %if.then25
  br label %if.end29, !dbg !4318

if.end29:                                         ; preds = %if.end28, %if.end22
  br label %return, !dbg !4319

return:                                           ; preds = %if.end29, %if.end20
  %retval.0 = phi %struct._IO_FILE* [ %fp___1.0, %if.end29 ], [ null, %if.end20 ], !dbg !4320
  ret %struct._IO_FILE* %retval.0, !dbg !4321
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpeg_demux_copy_spu(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %fp___1, i32 %cnt) #0 !dbg !4322 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp___1, metadata !4325, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %cnt, metadata !4326, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !4327, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata !4, metadata !4332, metadata !DIExpression()), !dbg !4333
  %0 = load i32, i32* @half, align 4, !dbg !4334
  %tobool = icmp ne i32 %0, 0, !dbg !4334
  br i1 %tobool, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4338
  %call = call i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %arraydecay, i32 1), !dbg !4342
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4343
  %call2 = call i32 @fwrite(i8* %arraydecay1, i32 1, i32 1, %struct._IO_FILE* %fp___1), !dbg !4345
  %1 = load i32, i32* @spucnt, align 4, !dbg !4346
  %shl = shl i32 %1, 8, !dbg !4347
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !4348
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4348
  %conv = zext i8 %2 to i32, !dbg !4349
  %add = add i32 %shl, %conv, !dbg !4350
  store i32 %add, i32* @spucnt, align 4, !dbg !4351
  store i32 0, i32* @half, align 4, !dbg !4352
  %3 = load i32, i32* @spucnt, align 4, !dbg !4353
  %sub = sub i32 %3, 2, !dbg !4353
  store i32 %sub, i32* @spucnt, align 4, !dbg !4353
  %dec = add i32 %cnt, -1, !dbg !4354
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4326, metadata !DIExpression()), !dbg !4324
  br label %if.end, !dbg !4355

if.end:                                           ; preds = %if.then, %entry
  %cnt.addr.0 = phi i32 [ %dec, %if.then ], [ %cnt, %entry ]
  call void @llvm.dbg.value(metadata i32 %cnt.addr.0, metadata !4326, metadata !DIExpression()), !dbg !4324
  br label %while.body, !dbg !4356

while.body:                                       ; preds = %if.end51, %if.end
  %cnt.addr.1 = phi i32 [ %cnt.addr.0, %if.end ], [ %sub53, %if.end51 ], !dbg !4359
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1, metadata !4326, metadata !DIExpression()), !dbg !4324
  br label %while_continue___1, !dbg !4360

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !4360

while_continue:                                   ; preds = %while_continue___1
  %cmp = icmp ugt i32 %cnt.addr.1, 0, !dbg !4361
  br i1 %cmp, label %if.end5, label %if.then4, !dbg !4364

if.then4:                                         ; preds = %while_continue
  br label %while_break, !dbg !4365

if.end5:                                          ; preds = %while_continue
  %4 = load i32, i32* @spucnt, align 4, !dbg !4367
  %cmp6 = icmp eq i32 %4, 0, !dbg !4369
  br i1 %cmp6, label %if.then8, label %if.end47, !dbg !4370

if.then8:                                         ; preds = %if.end5
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4371
  %pts9 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 6, !dbg !4373
  %5 = load i64, i64* %pts9, align 8, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %5, metadata !4374, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4375, metadata !DIExpression()), !dbg !4324
  br label %while.body11, !dbg !4376

while.body11:                                     ; preds = %if.end15, %if.then8
  %i.0 = phi i32 [ 0, %if.then8 ], [ %inc, %if.end15 ], !dbg !4379
  %pts.0 = phi i64 [ %5, %if.then8 ], [ %shr, %if.end15 ], !dbg !4379
  call void @llvm.dbg.value(metadata i64 %pts.0, metadata !4374, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4375, metadata !DIExpression()), !dbg !4324
  br label %while_continue___2, !dbg !4380

while_continue___2:                               ; preds = %while.body11
  br label %while_continue___0, !dbg !4380

while_continue___0:                               ; preds = %while_continue___2
  %cmp12 = icmp ult i32 %i.0, 8, !dbg !4381
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !4384

if.then14:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !4385

if.end15:                                         ; preds = %while_continue___0
  %and = and i64 %pts.0, 255, !dbg !4387
  %conv16 = trunc i64 %and to i8, !dbg !4388
  %sub17 = sub i32 7, %i.0, !dbg !4389
  %idxprom = zext i32 %sub17 to i64, !dbg !4390
  %arrayidx18 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %idxprom, !dbg !4390
  store i8 %conv16, i8* %arrayidx18, align 1, !dbg !4391
  %shr = lshr i64 %pts.0, 8, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %shr, metadata !4374, metadata !DIExpression()), !dbg !4324
  %inc = add i32 %i.0, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4375, metadata !DIExpression()), !dbg !4324
  br label %while.body11, !dbg !4376, !llvm.loop !4394

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !4396

while_break___0:                                  ; preds = %while_break___2, %if.then14
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4397
  %call20 = call i32 @fwrite(i8* %arraydecay19, i32 1, i32 8, %struct._IO_FILE* %fp___1), !dbg !4400
  %cmp21 = icmp eq i32 %cnt.addr.1, 1, !dbg !4401
  br i1 %cmp21, label %if.then23, label %if.end30, !dbg !4403

if.then23:                                        ; preds = %while_break___0
  %arraydecay24 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4404
  %call25 = call i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %arraydecay24, i32 1), !dbg !4408
  %arraydecay26 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4409
  %call27 = call i32 @fwrite(i8* %arraydecay26, i32 1, i32 1, %struct._IO_FILE* %fp___1), !dbg !4411
  %arrayidx28 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !4412
  %6 = load i8, i8* %arrayidx28, align 1, !dbg !4412
  %conv29 = zext i8 %6 to i32, !dbg !4413
  store i32 %conv29, i32* @spucnt, align 4, !dbg !4414
  store i32 1, i32* @half, align 4, !dbg !4415
  br label %return, !dbg !4416

if.end30:                                         ; preds = %while_break___0
  %arraydecay31 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4417
  %call32 = call i32 @mpegd_read(%struct.mpeg_demux_t* %mpeg, i8* %arraydecay31, i32 2), !dbg !4420
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0, !dbg !4421
  %call34 = call i32 @fwrite(i8* %arraydecay33, i32 1, i32 2, %struct._IO_FILE* %fp___1), !dbg !4423
  %arrayidx35 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !4424
  %7 = load i8, i8* %arrayidx35, align 1, !dbg !4424
  %conv36 = zext i8 %7 to i32, !dbg !4425
  %shl37 = shl i32 %conv36, 8, !dbg !4426
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 1, !dbg !4427
  %8 = load i8, i8* %arrayidx38, align 1, !dbg !4427
  %conv39 = zext i8 %8 to i32, !dbg !4428
  %add40 = add nsw i32 %shl37, %conv39, !dbg !4429
  store i32 %add40, i32* @spucnt, align 4, !dbg !4430
  %9 = load i32, i32* @spucnt, align 4, !dbg !4431
  %cmp41 = icmp ult i32 %9, 2, !dbg !4433
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !4434

if.then43:                                        ; preds = %if.end30
  br label %return, !dbg !4435

if.end44:                                         ; preds = %if.end30
  %10 = load i32, i32* @spucnt, align 4, !dbg !4437
  %sub45 = sub i32 %10, 2, !dbg !4437
  store i32 %sub45, i32* @spucnt, align 4, !dbg !4437
  %sub46 = sub i32 %cnt.addr.1, 2, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %sub46, metadata !4326, metadata !DIExpression()), !dbg !4324
  br label %if.end47, !dbg !4439

if.end47:                                         ; preds = %if.end44, %if.end5
  %cnt.addr.2 = phi i32 [ %sub46, %if.end44 ], [ %cnt.addr.1, %if.end5 ], !dbg !4359
  call void @llvm.dbg.value(metadata i32 %cnt.addr.2, metadata !4326, metadata !DIExpression()), !dbg !4324
  %11 = load i32, i32* @spucnt, align 4, !dbg !4440
  %cmp48 = icmp ult i32 %cnt.addr.2, %11, !dbg !4442
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !4443

if.then50:                                        ; preds = %if.end47
  call void @llvm.dbg.value(metadata i32 %cnt.addr.2, metadata !4444, metadata !DIExpression()), !dbg !4324
  br label %if.end51, !dbg !4445

if.else:                                          ; preds = %if.end47
  %12 = load i32, i32* @spucnt, align 4, !dbg !4447
  call void @llvm.dbg.value(metadata i32 %12, metadata !4444, metadata !DIExpression()), !dbg !4324
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then50
  %n.0 = phi i32 [ %cnt.addr.2, %if.then50 ], [ %12, %if.else ], !dbg !4449
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !4444, metadata !DIExpression()), !dbg !4324
  %call52 = call i32 @mpeg_copy(%struct.mpeg_demux_t* %mpeg, %struct._IO_FILE* %fp___1, i32 %n.0), !dbg !4450
  %sub53 = sub i32 %cnt.addr.2, %n.0, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %sub53, metadata !4326, metadata !DIExpression()), !dbg !4324
  %13 = load i32, i32* @spucnt, align 4, !dbg !4454
  %sub54 = sub i32 %13, %n.0, !dbg !4454
  store i32 %sub54, i32* @spucnt, align 4, !dbg !4454
  br label %while.body, !dbg !4356, !llvm.loop !4455

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !4457

while_break:                                      ; preds = %while_break___1, %if.then4
  br label %return, !dbg !4458

return:                                           ; preds = %while_break, %if.then43, %if.then23
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 1, %if.then43 ], [ 0, %while_break ], !dbg !4359
  ret i32 %retval.0, !dbg !4459
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_buffer_fill(%struct.mpeg_demux_t* %mpeg) #0 !dbg !4460 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4461, metadata !DIExpression()), !dbg !4462
  %buf_i = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !4463
  %0 = load i32, i32* %buf_i, align 8, !dbg !4463
  %cmp = icmp ugt i32 %0, 0, !dbg !4466
  br i1 %cmp, label %if.then, label %if.end11, !dbg !4467

if.then:                                          ; preds = %entry
  %buf_n = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !4468
  %1 = load i32, i32* %buf_n, align 4, !dbg !4468
  %cmp1 = icmp ugt i32 %1, 0, !dbg !4471
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !4472

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !4473, metadata !DIExpression()), !dbg !4462
  br label %while.body, !dbg !4474

while.body:                                       ; preds = %if.end, %if.then2
  %i.0 = phi i32 [ 0, %if.then2 ], [ %inc, %if.end ], !dbg !4478
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4473, metadata !DIExpression()), !dbg !4462
  br label %while_continue___0, !dbg !4479

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4479

while_continue:                                   ; preds = %while_continue___0
  %buf_n3 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !4480
  %2 = load i32, i32* %buf_n3, align 4, !dbg !4480
  %cmp4 = icmp ult i32 %i.0, %2, !dbg !4483
  br i1 %cmp4, label %if.end, label %if.then5, !dbg !4484

if.then5:                                         ; preds = %while_continue
  br label %while_break, !dbg !4485

if.end:                                           ; preds = %while_continue
  %buf = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !4487
  %buf_i6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !4488
  %3 = load i32, i32* %buf_i6, align 8, !dbg !4488
  %add = add i32 %3, %i.0, !dbg !4489
  %idxprom = zext i32 %add to i64, !dbg !4490
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 %idxprom, !dbg !4490
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4490
  %buf7 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !4491
  %idxprom8 = zext i32 %i.0 to i64, !dbg !4492
  %arrayidx9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf7, i64 0, i64 %idxprom8, !dbg !4492
  store i8 %4, i8* %arrayidx9, align 1, !dbg !4493
  %inc = add i32 %i.0, 1, !dbg !4494
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4473, metadata !DIExpression()), !dbg !4462
  br label %while.body, !dbg !4474, !llvm.loop !4495

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4497

while_break:                                      ; preds = %while_break___0, %if.then5
  br label %if.end10, !dbg !4498

if.end10:                                         ; preds = %while_break, %if.then
  br label %if.end11, !dbg !4499

if.end11:                                         ; preds = %if.end10, %entry
  %buf_i12 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 4, !dbg !4500
  store i32 0, i32* %buf_i12, align 8, !dbg !4501
  %buf_n13 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !4502
  %5 = load i32, i32* %buf_n13, align 4, !dbg !4502
  %sub = sub i32 4096, %5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4504, metadata !DIExpression()), !dbg !4462
  %cmp14 = icmp ugt i32 %sub, 0, !dbg !4505
  br i1 %cmp14, label %if.then15, label %if.end23, !dbg !4507

if.then15:                                        ; preds = %if.end11
  %buf16 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 6, !dbg !4508
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf16, i32 0, i32 0, !dbg !4512
  %buf_n17 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !4513
  %6 = load i32, i32* %buf_n17, align 4, !dbg !4513
  %idx.ext = zext i32 %6 to i64, !dbg !4514
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !4514
  %fp = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 2, !dbg !4515
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4515
  %call = call i32 @fread(i8* %add.ptr, i32 1, i32 %sub, %struct._IO_FILE* %7), !dbg !4516
  call void @llvm.dbg.value(metadata i32 %call, metadata !4517, metadata !DIExpression()), !dbg !4462
  %cmp18 = icmp ult i32 %call, 0, !dbg !4518
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4520

if.then19:                                        ; preds = %if.then15
  br label %return, !dbg !4521

if.end20:                                         ; preds = %if.then15
  %buf_n21 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 5, !dbg !4523
  %8 = load i32, i32* %buf_n21, align 4, !dbg !4524
  %add22 = add i32 %8, %call, !dbg !4524
  store i32 %add22, i32* %buf_n21, align 4, !dbg !4524
  br label %if.end23, !dbg !4525

if.end23:                                         ; preds = %if.end20, %if.end11
  br label %return, !dbg !4526

return:                                           ; preds = %if.end23, %if.then19
  %retval.0 = phi i32 [ 1, %if.then19 ], [ 0, %if.end23 ], !dbg !4527
  ret i32 %retval.0, !dbg !4528
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_parse_system_header(%struct.mpeg_demux_t* %mpeg) #0 !dbg !4529 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4530, metadata !DIExpression()), !dbg !4531
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 32, i32 16), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %call, metadata !4536, metadata !DIExpression()), !dbg !4531
  %add = add i64 %call, 6, !dbg !4537
  %conv = trunc i64 %add to i32, !dbg !4538
  %shdr = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !4539
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr, i32 0, i32 0, !dbg !4540
  store i32 %conv, i32* %size, align 8, !dbg !4541
  %call1 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 78, i32 1), !dbg !4542
  call void @llvm.dbg.value(metadata i64 %call1, metadata !4544, metadata !DIExpression()), !dbg !4531
  %conv2 = trunc i64 %call1 to i32, !dbg !4545
  %shdr3 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !4546
  %fixed = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr3, i32 0, i32 1, !dbg !4547
  store i32 %conv2, i32* %fixed, align 4, !dbg !4548
  %call4 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 79, i32 1), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %call4, metadata !4551, metadata !DIExpression()), !dbg !4531
  %conv5 = trunc i64 %call4 to i32, !dbg !4552
  %shdr6 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !4553
  %csps = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr6, i32 0, i32 2, !dbg !4554
  store i32 %conv5, i32* %csps, align 8, !dbg !4555
  %shdr_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 10, !dbg !4556
  %0 = load i64, i64* %shdr_cnt, align 8, !dbg !4557
  %inc = add i64 %0, 1, !dbg !4557
  store i64 %inc, i64* %shdr_cnt, align 8, !dbg !4557
  %ofs7 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !4558
  %1 = load i64, i64* %ofs7, align 8, !dbg !4558
  %shdr8 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 7, !dbg !4559
  %size9 = getelementptr inbounds %struct.__anonstruct_mpeg_shdr_t_9, %struct.__anonstruct_mpeg_shdr_t_9* %shdr8, i32 0, i32 0, !dbg !4560
  %2 = load i32, i32* %size9, align 8, !dbg !4560
  %conv10 = zext i32 %2 to i64, !dbg !4561
  %add11 = add i64 %1, %conv10, !dbg !4562
  call void @llvm.dbg.value(metadata i64 %add11, metadata !4563, metadata !DIExpression()), !dbg !4531
  %mpeg_system_header = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 20, !dbg !4564
  %3 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header, align 8, !dbg !4564
  %4 = ptrtoint i32 (%struct.mpeg_demux_t*)* %3 to i64, !dbg !4566
  %cmp = icmp ne i64 %4, 0, !dbg !4567
  br i1 %cmp, label %if.then, label %if.end16, !dbg !4568

if.then:                                          ; preds = %entry
  %mpeg_system_header13 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 20, !dbg !4569
  %5 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_system_header13, align 8, !dbg !4569
  %call14 = call i32 %5(%struct.mpeg_demux_t* %mpeg), !dbg !4573
  call void @llvm.dbg.value(metadata i32 %call14, metadata !4574, metadata !DIExpression()), !dbg !4531
  %tobool = icmp ne i32 %call14, 0, !dbg !4575
  br i1 %tobool, label %if.then15, label %if.end, !dbg !4577

if.then15:                                        ; preds = %if.then
  br label %return, !dbg !4578

if.end:                                           ; preds = %if.then
  br label %if.end16, !dbg !4580

if.end16:                                         ; preds = %if.end, %entry
  %call17 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add11), !dbg !4581
  br label %return, !dbg !4584

return:                                           ; preds = %if.end16, %if.then15
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end16 ], !dbg !4585
  ret i32 %retval.0, !dbg !4586
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_parse_packet(%struct.mpeg_demux_t* %mpeg) #0 !dbg !4587 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4588, metadata !DIExpression()), !dbg !4589
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4590
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 0, !dbg !4593
  store i32 0, i32* %type, align 8, !dbg !4594
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 24, i32 8), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %call, metadata !4597, metadata !DIExpression()), !dbg !4589
  %conv = trunc i64 %call to i32, !dbg !4598
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4599, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 0, metadata !4600, metadata !DIExpression()), !dbg !4589
  %packet1 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4601
  %sid2 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet1, i32 0, i32 1, !dbg !4602
  store i32 %conv, i32* %sid2, align 4, !dbg !4603
  %packet3 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4604
  %ssid4 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet3, i32 0, i32 2, !dbg !4605
  store i32 0, i32* %ssid4, align 8, !dbg !4606
  %call5 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 32, i32 16), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %call5, metadata !4609, metadata !DIExpression()), !dbg !4589
  %add = add i64 %call5, 6, !dbg !4610
  %conv6 = trunc i64 %add to i32, !dbg !4611
  %packet7 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4612
  %size = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet7, i32 0, i32 3, !dbg !4613
  store i32 %conv6, i32* %size, align 4, !dbg !4614
  %packet8 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4615
  %offset = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet8, i32 0, i32 4, !dbg !4616
  store i32 6, i32* %offset, align 8, !dbg !4617
  %packet9 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4618
  %have_pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet9, i32 0, i32 5, !dbg !4619
  store i8 0, i8* %have_pts, align 4, !dbg !4620
  %packet10 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4621
  %pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet10, i32 0, i32 6, !dbg !4622
  store i64 0, i64* %pts, align 8, !dbg !4623
  %packet11 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4624
  %have_dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet11, i32 0, i32 7, !dbg !4625
  store i8 0, i8* %have_dts, align 8, !dbg !4626
  %packet12 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4627
  %dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet12, i32 0, i32 8, !dbg !4628
  store i64 0, i64* %dts, align 8, !dbg !4629
  call void @llvm.dbg.value(metadata i32 48, metadata !4630, metadata !DIExpression()), !dbg !4589
  %cmp = icmp uge i32 %conv, 192, !dbg !4631
  br i1 %cmp, label %if.then, label %if.else17, !dbg !4633

if.then:                                          ; preds = %entry
  %cmp14 = icmp ult i32 %conv, 240, !dbg !4634
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !4637

if.then16:                                        ; preds = %if.then
  br label %_L, !dbg !4638

if.else:                                          ; preds = %if.then
  br label %_L___0, !dbg !4640

if.else17:                                        ; preds = %entry
  br label %_L___0, !dbg !4642

_L___0:                                           ; preds = %if.else17, %if.else
  %cmp18 = icmp eq i32 %conv, 189, !dbg !4643
  br i1 %cmp18, label %if.then20, label %if.else43, !dbg !4645

if.then20:                                        ; preds = %_L___0
  br label %_L, !dbg !4646

_L:                                               ; preds = %if.then20, %if.then16
  br label %while.body, !dbg !4647

while.body:                                       ; preds = %if.end28, %_L
  %i.0 = phi i32 [ 48, %_L ], [ %add29, %if.end28 ], !dbg !4651
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4630, metadata !DIExpression()), !dbg !4589
  br label %while_continue___0, !dbg !4652

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4652

while_continue:                                   ; preds = %while_continue___0
  %call21 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %i.0, i32 8), !dbg !4653
  call void @llvm.dbg.value(metadata i64 %call21, metadata !4657, metadata !DIExpression()), !dbg !4589
  %cmp22 = icmp eq i64 %call21, 255, !dbg !4658
  br i1 %cmp22, label %if.end, label %if.then24, !dbg !4660

if.then24:                                        ; preds = %while_continue
  br label %while_break, !dbg !4661

if.end:                                           ; preds = %while_continue
  %cmp25 = icmp ugt i32 %i.0, 176, !dbg !4663
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4665

if.then27:                                        ; preds = %if.end
  br label %while_break, !dbg !4666

if.end28:                                         ; preds = %if.end
  %add29 = add i32 %i.0, 8, !dbg !4668
  call void @llvm.dbg.value(metadata i32 %add29, metadata !4630, metadata !DIExpression()), !dbg !4589
  br label %while.body, !dbg !4647, !llvm.loop !4669

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4671

while_break:                                      ; preds = %while_break___0, %if.then27, %if.then24
  %call30 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %i.0, i32 2), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %call30, metadata !4675, metadata !DIExpression()), !dbg !4589
  %cmp31 = icmp eq i64 %call30, 2, !dbg !4676
  br i1 %cmp31, label %if.then33, label %if.else37, !dbg !4678

if.then33:                                        ; preds = %while_break
  %call34 = call i32 @mpegd_parse_packet2(%struct.mpeg_demux_t* %mpeg, i32 %i.0), !dbg !4679
  call void @llvm.dbg.value(metadata i32 %call34, metadata !4683, metadata !DIExpression()), !dbg !4589
  %tobool = icmp ne i32 %call34, 0, !dbg !4684
  br i1 %tobool, label %if.then35, label %if.end36, !dbg !4686

if.then35:                                        ; preds = %if.then33
  br label %return, !dbg !4687

if.end36:                                         ; preds = %if.then33
  br label %if.end42, !dbg !4689

if.else37:                                        ; preds = %while_break
  %call38 = call i32 @mpegd_parse_packet1(%struct.mpeg_demux_t* %mpeg, i32 %i.0), !dbg !4690
  call void @llvm.dbg.value(metadata i32 %call38, metadata !4694, metadata !DIExpression()), !dbg !4589
  %tobool39 = icmp ne i32 %call38, 0, !dbg !4695
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4697

if.then40:                                        ; preds = %if.else37
  br label %return, !dbg !4698

if.end41:                                         ; preds = %if.else37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end36
  br label %if.end50, !dbg !4700

if.else43:                                        ; preds = %_L___0
  %cmp44 = icmp eq i32 %conv, 190, !dbg !4701
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !4703

if.then46:                                        ; preds = %if.else43
  %packet47 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4704
  %type48 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet47, i32 0, i32 0, !dbg !4706
  store i32 1, i32* %type48, align 8, !dbg !4707
  br label %if.end49, !dbg !4708

if.end49:                                         ; preds = %if.then46, %if.else43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end42
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  %cmp52 = icmp eq i32 %conv, 189, !dbg !4709
  br i1 %cmp52, label %if.then54, label %if.end61, !dbg !4711

if.then54:                                        ; preds = %if.end51
  %packet55 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4712
  %offset56 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet55, i32 0, i32 4, !dbg !4716
  %0 = load i32, i32* %offset56, align 8, !dbg !4716
  %mul = mul i32 8, %0, !dbg !4717
  %call57 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %mul, i32 8), !dbg !4718
  call void @llvm.dbg.value(metadata i64 %call57, metadata !4719, metadata !DIExpression()), !dbg !4589
  %conv58 = trunc i64 %call57 to i32, !dbg !4720
  call void @llvm.dbg.value(metadata i32 %conv58, metadata !4600, metadata !DIExpression()), !dbg !4589
  %packet59 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4721
  %ssid60 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet59, i32 0, i32 2, !dbg !4722
  store i32 %conv58, i32* %ssid60, align 8, !dbg !4723
  br label %if.end61, !dbg !4724

if.end61:                                         ; preds = %if.then54, %if.end51
  %ssid.0 = phi i32 [ %conv58, %if.then54 ], [ 0, %if.end51 ], !dbg !4651
  call void @llvm.dbg.value(metadata i32 %ssid.0, metadata !4600, metadata !DIExpression()), !dbg !4589
  %mpeg_packet_check = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 22, !dbg !4725
  %1 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check, align 8, !dbg !4725
  %2 = ptrtoint i32 (%struct.mpeg_demux_t*)* %1 to i64, !dbg !4727
  %cmp62 = icmp ne i64 %2, 0, !dbg !4728
  br i1 %cmp62, label %if.then64, label %if.else75, !dbg !4729

if.then64:                                        ; preds = %if.end61
  %mpeg_packet_check65 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 22, !dbg !4730
  %3 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_packet_check65, align 8, !dbg !4730
  %call66 = call i32 %3(%struct.mpeg_demux_t* %mpeg), !dbg !4734
  call void @llvm.dbg.value(metadata i32 %call66, metadata !4735, metadata !DIExpression()), !dbg !4589
  %tobool67 = icmp ne i32 %call66, 0, !dbg !4736
  br i1 %tobool67, label %if.then68, label %if.else73, !dbg !4738

if.then68:                                        ; preds = %if.then64
  %call69 = call i32 @mpegd_skip(%struct.mpeg_demux_t* %mpeg, i32 1), !dbg !4739
  call void @llvm.dbg.value(metadata i32 %call69, metadata !4743, metadata !DIExpression()), !dbg !4589
  %tobool70 = icmp ne i32 %call69, 0, !dbg !4744
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !4746

if.then71:                                        ; preds = %if.then68
  br label %return, !dbg !4747

if.end72:                                         ; preds = %if.then68
  br label %if.end74, !dbg !4749

if.else73:                                        ; preds = %if.then64
  br label %_L___1, !dbg !4750

if.end74:                                         ; preds = %if.end72
  br label %if.end122, !dbg !4752

if.else75:                                        ; preds = %if.end61
  br label %_L___1, !dbg !4753

_L___1:                                           ; preds = %if.else75, %if.else73
  %packet_cnt = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 12, !dbg !4754
  %4 = load i64, i64* %packet_cnt, align 8, !dbg !4756
  %inc = add i64 %4, 1, !dbg !4756
  store i64 %inc, i64* %packet_cnt, align 8, !dbg !4756
  %streams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !4757
  %idxprom = zext i32 %conv to i64, !dbg !4758
  %arrayidx = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams, i64 0, i64 %idxprom, !dbg !4758
  %packet_cnt76 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx, i32 0, i32 0, !dbg !4759
  %5 = load i64, i64* %packet_cnt76, align 8, !dbg !4760
  %inc77 = add i64 %5, 1, !dbg !4760
  store i64 %inc77, i64* %packet_cnt76, align 8, !dbg !4760
  %packet78 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4761
  %size79 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet78, i32 0, i32 3, !dbg !4762
  %6 = load i32, i32* %size79, align 4, !dbg !4762
  %packet80 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4763
  %offset81 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet80, i32 0, i32 4, !dbg !4764
  %7 = load i32, i32* %offset81, align 8, !dbg !4764
  %sub = sub i32 %6, %7, !dbg !4765
  %conv82 = zext i32 %sub to i64, !dbg !4766
  %streams83 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 15, !dbg !4767
  %idxprom84 = zext i32 %conv to i64, !dbg !4768
  %arrayidx85 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %streams83, i64 0, i64 %idxprom84, !dbg !4768
  %size86 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx85, i32 0, i32 1, !dbg !4769
  %8 = load i64, i64* %size86, align 8, !dbg !4770
  %add87 = add i64 %8, %conv82, !dbg !4770
  store i64 %add87, i64* %size86, align 8, !dbg !4770
  %cmp88 = icmp eq i32 %conv, 189, !dbg !4771
  br i1 %cmp88, label %if.then90, label %if.end106, !dbg !4773

if.then90:                                        ; preds = %_L___1
  %substreams = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !4774
  %idxprom91 = zext i32 %ssid.0 to i64, !dbg !4776
  %arrayidx92 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams, i64 0, i64 %idxprom91, !dbg !4776
  %packet_cnt93 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx92, i32 0, i32 0, !dbg !4777
  %9 = load i64, i64* %packet_cnt93, align 8, !dbg !4778
  %inc94 = add i64 %9, 1, !dbg !4778
  store i64 %inc94, i64* %packet_cnt93, align 8, !dbg !4778
  %packet95 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4779
  %size96 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet95, i32 0, i32 3, !dbg !4780
  %10 = load i32, i32* %size96, align 4, !dbg !4780
  %packet97 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4781
  %offset98 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet97, i32 0, i32 4, !dbg !4782
  %11 = load i32, i32* %offset98, align 8, !dbg !4782
  %sub99 = sub i32 %10, %11, !dbg !4783
  %conv100 = zext i32 %sub99 to i64, !dbg !4784
  %substreams101 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 16, !dbg !4785
  %idxprom102 = zext i32 %ssid.0 to i64, !dbg !4786
  %arrayidx103 = getelementptr inbounds [256 x %struct.__anonstruct_mpeg_stream_info_t_8], [256 x %struct.__anonstruct_mpeg_stream_info_t_8]* %substreams101, i64 0, i64 %idxprom102, !dbg !4786
  %size104 = getelementptr inbounds %struct.__anonstruct_mpeg_stream_info_t_8, %struct.__anonstruct_mpeg_stream_info_t_8* %arrayidx103, i32 0, i32 1, !dbg !4787
  %12 = load i64, i64* %size104, align 8, !dbg !4788
  %add105 = add i64 %12, %conv100, !dbg !4788
  store i64 %add105, i64* %size104, align 8, !dbg !4788
  br label %if.end106, !dbg !4789

if.end106:                                        ; preds = %if.then90, %_L___1
  %ofs107 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 3, !dbg !4790
  %13 = load i64, i64* %ofs107, align 8, !dbg !4790
  %packet108 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4791
  %size109 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet108, i32 0, i32 3, !dbg !4792
  %14 = load i32, i32* %size109, align 4, !dbg !4792
  %conv110 = zext i32 %14 to i64, !dbg !4793
  %add111 = add i64 %13, %conv110, !dbg !4794
  call void @llvm.dbg.value(metadata i64 %add111, metadata !4795, metadata !DIExpression()), !dbg !4589
  %mpeg_packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 21, !dbg !4796
  %15 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_packet, align 8, !dbg !4796
  %16 = ptrtoint i32 (%struct.mpeg_demux_t*)* %15 to i64, !dbg !4798
  %cmp112 = icmp ne i64 %16, 0, !dbg !4799
  br i1 %cmp112, label %if.then114, label %if.end120, !dbg !4800

if.then114:                                       ; preds = %if.end106
  %mpeg_packet115 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 21, !dbg !4801
  %17 = load i32 (%struct.mpeg_demux_t*)*, i32 (%struct.mpeg_demux_t*)** %mpeg_packet115, align 8, !dbg !4801
  %call116 = call i32 %17(%struct.mpeg_demux_t* %mpeg), !dbg !4805
  call void @llvm.dbg.value(metadata i32 %call116, metadata !4806, metadata !DIExpression()), !dbg !4589
  %tobool117 = icmp ne i32 %call116, 0, !dbg !4807
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !4809

if.then118:                                       ; preds = %if.then114
  br label %return, !dbg !4810

if.end119:                                        ; preds = %if.then114
  br label %if.end120, !dbg !4812

if.end120:                                        ; preds = %if.end119, %if.end106
  %call121 = call i32 @mpegd_set_offset(%struct.mpeg_demux_t* %mpeg, i64 %add111), !dbg !4813
  br label %if.end122

if.end122:                                        ; preds = %if.end120, %if.end74
  br label %return, !dbg !4816

return:                                           ; preds = %if.end122, %if.then118, %if.then71, %if.then40, %if.then35
  %retval.0 = phi i32 [ 1, %if.then35 ], [ 1, %if.then71 ], [ 0, %if.end122 ], [ 1, %if.then118 ], [ 1, %if.then40 ], !dbg !4651
  ret i32 %retval.0, !dbg !4817
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_parse_packet2(%struct.mpeg_demux_t* %mpeg, i32 %i) #0 !dbg !4818 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %i, metadata !4821, metadata !DIExpression()), !dbg !4820
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4822
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 0, !dbg !4825
  store i32 2, i32* %type, align 8, !dbg !4826
  %add = add i32 %i, 8, !dbg !4827
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add, i32 2), !dbg !4829
  call void @llvm.dbg.value(metadata i64 %call, metadata !4830, metadata !DIExpression()), !dbg !4820
  %conv = trunc i64 %call to i32, !dbg !4831
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4832, metadata !DIExpression()), !dbg !4820
  %add1 = add i32 %i, 16, !dbg !4833
  %call2 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add1, i32 8), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %call2, metadata !4836, metadata !DIExpression()), !dbg !4820
  %conv3 = trunc i64 %call2 to i32, !dbg !4837
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !4838, metadata !DIExpression()), !dbg !4820
  %cmp = icmp eq i32 %conv, 2, !dbg !4839
  br i1 %cmp, label %if.then, label %if.else, !dbg !4841

if.then:                                          ; preds = %entry
  %add5 = add i32 %i, 24, !dbg !4842
  %call6 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add5, i32 4), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %call6, metadata !4847, metadata !DIExpression()), !dbg !4820
  %cmp7 = icmp eq i64 %call6, 2, !dbg !4848
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !4850

if.then9:                                         ; preds = %if.then
  %add10 = add i32 %i, 28, !dbg !4851
  %call11 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add10, i32 3), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %call11, metadata !4856, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 %call11, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add12 = add i32 %i, 32, !dbg !4858
  %call13 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add12, i32 15), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %call13, metadata !4861, metadata !DIExpression()), !dbg !4820
  %shl = shl i64 %call11, 15, !dbg !4862
  %or = or i64 %shl, %call13, !dbg !4863
  call void @llvm.dbg.value(metadata i64 %or, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add14 = add i32 %i, 48, !dbg !4864
  %call15 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add14, i32 15), !dbg !4866
  call void @llvm.dbg.value(metadata i64 %call15, metadata !4867, metadata !DIExpression()), !dbg !4820
  %shl16 = shl i64 %or, 15, !dbg !4868
  %or17 = or i64 %shl16, %call15, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %or17, metadata !4857, metadata !DIExpression()), !dbg !4820
  %packet18 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4870
  %have_pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet18, i32 0, i32 5, !dbg !4871
  store i8 1, i8* %have_pts, align 4, !dbg !4872
  %packet19 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4873
  %pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet19, i32 0, i32 6, !dbg !4874
  store i64 %or17, i64* %pts, align 8, !dbg !4875
  br label %if.end, !dbg !4876

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end62, !dbg !4877

if.else:                                          ; preds = %entry
  %and = and i32 %conv, 3, !dbg !4878
  %cmp20 = icmp eq i32 %and, 3, !dbg !4880
  br i1 %cmp20, label %if.then22, label %if.end61, !dbg !4881

if.then22:                                        ; preds = %if.else
  %add23 = add i32 %i, 24, !dbg !4882
  %call24 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add23, i32 4), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %call24, metadata !4887, metadata !DIExpression()), !dbg !4820
  %cmp25 = icmp eq i64 %call24, 3, !dbg !4888
  br i1 %cmp25, label %if.then27, label %if.end42, !dbg !4890

if.then27:                                        ; preds = %if.then22
  %add28 = add i32 %i, 28, !dbg !4891
  %call29 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add28, i32 3), !dbg !4895
  call void @llvm.dbg.value(metadata i64 %call29, metadata !4896, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 %call29, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add30 = add i32 %i, 32, !dbg !4897
  %call31 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add30, i32 15), !dbg !4899
  call void @llvm.dbg.value(metadata i64 %call31, metadata !4900, metadata !DIExpression()), !dbg !4820
  %shl32 = shl i64 %call29, 15, !dbg !4901
  %or33 = or i64 %shl32, %call31, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %or33, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add34 = add i32 %i, 48, !dbg !4903
  %call35 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add34, i32 15), !dbg !4905
  call void @llvm.dbg.value(metadata i64 %call35, metadata !4906, metadata !DIExpression()), !dbg !4820
  %shl36 = shl i64 %or33, 15, !dbg !4907
  %or37 = or i64 %shl36, %call35, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %or37, metadata !4857, metadata !DIExpression()), !dbg !4820
  %packet38 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4909
  %have_pts39 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet38, i32 0, i32 5, !dbg !4910
  store i8 1, i8* %have_pts39, align 4, !dbg !4911
  %packet40 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4912
  %pts41 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet40, i32 0, i32 6, !dbg !4913
  store i64 %or37, i64* %pts41, align 8, !dbg !4914
  br label %if.end42, !dbg !4915

if.end42:                                         ; preds = %if.then27, %if.then22
  %add43 = add i32 %i, 64, !dbg !4916
  %call44 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add43, i32 4), !dbg !4919
  call void @llvm.dbg.value(metadata i64 %call44, metadata !4920, metadata !DIExpression()), !dbg !4820
  %cmp45 = icmp eq i64 %call44, 1, !dbg !4921
  br i1 %cmp45, label %if.then47, label %if.end60, !dbg !4923

if.then47:                                        ; preds = %if.end42
  %add48 = add i32 %i, 68, !dbg !4924
  %call49 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add48, i32 3), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %call49, metadata !4929, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 %call49, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add50 = add i32 %i, 72, !dbg !4930
  %call51 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add50, i32 15), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %call51, metadata !4933, metadata !DIExpression()), !dbg !4820
  %shl52 = shl i64 %call49, 15, !dbg !4934
  %or53 = or i64 %shl52, %call51, !dbg !4935
  call void @llvm.dbg.value(metadata i64 %or53, metadata !4857, metadata !DIExpression()), !dbg !4820
  %add54 = add i32 %i, 88, !dbg !4936
  %call55 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add54, i32 15), !dbg !4938
  call void @llvm.dbg.value(metadata i64 %call55, metadata !4939, metadata !DIExpression()), !dbg !4820
  %shl56 = shl i64 %or53, 15, !dbg !4940
  %or57 = or i64 %shl56, %call55, !dbg !4941
  call void @llvm.dbg.value(metadata i64 %or57, metadata !4857, metadata !DIExpression()), !dbg !4820
  %packet58 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4942
  %have_dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet58, i32 0, i32 7, !dbg !4943
  store i8 1, i8* %have_dts, align 8, !dbg !4944
  %packet59 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4945
  %dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet59, i32 0, i32 8, !dbg !4946
  store i64 %or57, i64* %dts, align 8, !dbg !4947
  br label %if.end60, !dbg !4948

if.end60:                                         ; preds = %if.then47, %if.end42
  br label %if.end61, !dbg !4949

if.end61:                                         ; preds = %if.end60, %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end
  %add63 = add i32 %conv3, 3, !dbg !4950
  %mul = mul i32 8, %add63, !dbg !4951
  %add64 = add i32 %i, %mul, !dbg !4952
  call void @llvm.dbg.value(metadata i32 %add64, metadata !4821, metadata !DIExpression()), !dbg !4820
  %div = udiv i32 %add64, 8, !dbg !4953
  %packet65 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4954
  %offset = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet65, i32 0, i32 4, !dbg !4955
  store i32 %div, i32* %offset, align 8, !dbg !4956
  ret i32 0, !dbg !4957
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @mpegd_parse_packet1(%struct.mpeg_demux_t* %mpeg, i32 %i) #0 !dbg !4958 {
entry:
  call void @llvm.dbg.value(metadata %struct.mpeg_demux_t* %mpeg, metadata !4959, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 %i, metadata !4961, metadata !DIExpression()), !dbg !4960
  %packet = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !4962
  %type = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet, i32 0, i32 0, !dbg !4965
  store i32 1, i32* %type, align 8, !dbg !4966
  %call = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %i, i32 2), !dbg !4967
  call void @llvm.dbg.value(metadata i64 %call, metadata !4969, metadata !DIExpression()), !dbg !4960
  %cmp = icmp eq i64 %call, 1, !dbg !4970
  br i1 %cmp, label %if.then, label %if.end, !dbg !4972

if.then:                                          ; preds = %entry
  %add = add i32 %i, 16, !dbg !4973
  call void @llvm.dbg.value(metadata i32 %add, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end, !dbg !4975

if.end:                                           ; preds = %if.then, %entry
  %i.addr.0 = phi i32 [ %add, %if.then ], [ %i, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !4961, metadata !DIExpression()), !dbg !4960
  %call1 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %i.addr.0, i32 8), !dbg !4976
  call void @llvm.dbg.value(metadata i64 %call1, metadata !4979, metadata !DIExpression()), !dbg !4960
  %conv = trunc i64 %call1 to i32, !dbg !4980
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4981, metadata !DIExpression()), !dbg !4960
  %and = and i32 %conv, 240, !dbg !4982
  %cmp2 = icmp eq i32 %and, 32, !dbg !4984
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !4985

if.then4:                                         ; preds = %if.end
  %add5 = add i32 %i.addr.0, 4, !dbg !4986
  %call6 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add5, i32 3), !dbg !4990
  call void @llvm.dbg.value(metadata i64 %call6, metadata !4991, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %call6, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add7 = add i32 %i.addr.0, 8, !dbg !4993
  %call8 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add7, i32 15), !dbg !4995
  call void @llvm.dbg.value(metadata i64 %call8, metadata !4996, metadata !DIExpression()), !dbg !4960
  %shl = shl i64 %call6, 15, !dbg !4997
  %or = or i64 %shl, %call8, !dbg !4998
  call void @llvm.dbg.value(metadata i64 %or, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add9 = add i32 %i.addr.0, 24, !dbg !4999
  %call10 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add9, i32 15), !dbg !5001
  call void @llvm.dbg.value(metadata i64 %call10, metadata !5002, metadata !DIExpression()), !dbg !4960
  %shl11 = shl i64 %or, 15, !dbg !5003
  %or12 = or i64 %shl11, %call10, !dbg !5004
  call void @llvm.dbg.value(metadata i64 %or12, metadata !4992, metadata !DIExpression()), !dbg !4960
  %packet13 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5005
  %have_pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet13, i32 0, i32 5, !dbg !5006
  store i8 1, i8* %have_pts, align 4, !dbg !5007
  %packet14 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5008
  %pts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet14, i32 0, i32 6, !dbg !5009
  store i64 %or12, i64* %pts, align 8, !dbg !5010
  %add15 = add i32 %i.addr.0, 40, !dbg !5011
  call void @llvm.dbg.value(metadata i32 %add15, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end54, !dbg !5012

if.else:                                          ; preds = %if.end
  %and16 = and i32 %conv, 240, !dbg !5013
  %cmp17 = icmp eq i32 %and16, 48, !dbg !5015
  br i1 %cmp17, label %if.then19, label %if.else47, !dbg !5016

if.then19:                                        ; preds = %if.else
  %add20 = add i32 %i.addr.0, 4, !dbg !5017
  %call21 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add20, i32 3), !dbg !5021
  call void @llvm.dbg.value(metadata i64 %call21, metadata !5022, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %call21, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add22 = add i32 %i.addr.0, 8, !dbg !5023
  %call23 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add22, i32 15), !dbg !5025
  call void @llvm.dbg.value(metadata i64 %call23, metadata !5026, metadata !DIExpression()), !dbg !4960
  %shl24 = shl i64 %call21, 15, !dbg !5027
  %or25 = or i64 %shl24, %call23, !dbg !5028
  call void @llvm.dbg.value(metadata i64 %or25, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add26 = add i32 %i.addr.0, 24, !dbg !5029
  %call27 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add26, i32 15), !dbg !5031
  call void @llvm.dbg.value(metadata i64 %call27, metadata !5032, metadata !DIExpression()), !dbg !4960
  %shl28 = shl i64 %or25, 15, !dbg !5033
  %or29 = or i64 %shl28, %call27, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %or29, metadata !4992, metadata !DIExpression()), !dbg !4960
  %packet30 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5035
  %have_pts31 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet30, i32 0, i32 5, !dbg !5036
  store i8 1, i8* %have_pts31, align 4, !dbg !5037
  %packet32 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5038
  %pts33 = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet32, i32 0, i32 6, !dbg !5039
  store i64 %or29, i64* %pts33, align 8, !dbg !5040
  %add34 = add i32 %i.addr.0, 44, !dbg !5041
  %call35 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add34, i32 3), !dbg !5043
  call void @llvm.dbg.value(metadata i64 %call35, metadata !5044, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %call35, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add36 = add i32 %i.addr.0, 48, !dbg !5045
  %call37 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add36, i32 15), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %call37, metadata !5048, metadata !DIExpression()), !dbg !4960
  %shl38 = shl i64 %call35, 15, !dbg !5049
  %or39 = or i64 %shl38, %call37, !dbg !5050
  call void @llvm.dbg.value(metadata i64 %or39, metadata !4992, metadata !DIExpression()), !dbg !4960
  %add40 = add i32 %i.addr.0, 64, !dbg !5051
  %call41 = call i64 @mpegd_get_bits(%struct.mpeg_demux_t* %mpeg, i32 %add40, i32 15), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %call41, metadata !5054, metadata !DIExpression()), !dbg !4960
  %shl42 = shl i64 %or39, 15, !dbg !5055
  %or43 = or i64 %shl42, %call41, !dbg !5056
  call void @llvm.dbg.value(metadata i64 %or43, metadata !4992, metadata !DIExpression()), !dbg !4960
  %packet44 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5057
  %have_dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet44, i32 0, i32 7, !dbg !5058
  store i8 1, i8* %have_dts, align 8, !dbg !5059
  %packet45 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5060
  %dts = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet45, i32 0, i32 8, !dbg !5061
  store i64 %or43, i64* %dts, align 8, !dbg !5062
  %add46 = add i32 %i.addr.0, 80, !dbg !5063
  call void @llvm.dbg.value(metadata i32 %add46, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end53, !dbg !5064

if.else47:                                        ; preds = %if.else
  %cmp48 = icmp eq i32 %conv, 15, !dbg !5065
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !5067

if.then50:                                        ; preds = %if.else47
  %add51 = add i32 %i.addr.0, 8, !dbg !5068
  call void @llvm.dbg.value(metadata i32 %add51, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end52, !dbg !5070

if.end52:                                         ; preds = %if.then50, %if.else47
  %i.addr.1 = phi i32 [ %add51, %if.then50 ], [ %i.addr.0, %if.else47 ], !dbg !5071
  call void @llvm.dbg.value(metadata i32 %i.addr.1, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then19
  %i.addr.2 = phi i32 [ %add46, %if.then19 ], [ %i.addr.1, %if.end52 ], !dbg !5072
  call void @llvm.dbg.value(metadata i32 %i.addr.2, metadata !4961, metadata !DIExpression()), !dbg !4960
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then4
  %i.addr.3 = phi i32 [ %add15, %if.then4 ], [ %i.addr.2, %if.end53 ], !dbg !5073
  call void @llvm.dbg.value(metadata i32 %i.addr.3, metadata !4961, metadata !DIExpression()), !dbg !4960
  %div = udiv i32 %i.addr.3, 8, !dbg !5074
  %packet55 = getelementptr inbounds %struct.mpeg_demux_t, %struct.mpeg_demux_t* %mpeg, i32 0, i32 8, !dbg !5075
  %offset = getelementptr inbounds %struct.__anonstruct_mpeg_packet_t_10, %struct.__anonstruct_mpeg_packet_t_10* %packet55, i32 0, i32 4, !dbg !5076
  store i32 %div, i32* %offset, align 8, !dbg !5077
  ret i32 0, !dbg !5078
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @str_skip_white(i8* %str) #0 !dbg !5079 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !5082, metadata !DIExpression()), !dbg !5083
  br label %while.body, !dbg !5084

while.body:                                       ; preds = %if.end6, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %if.end6 ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !5082, metadata !DIExpression()), !dbg !5083
  br label %while_continue___0, !dbg !5088

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !5088

while_continue:                                   ; preds = %while_continue___0
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !5089
  %conv = sext i8 %0 to i32, !dbg !5092
  %cmp = icmp eq i32 %conv, 32, !dbg !5093
  br i1 %cmp, label %if.end6, label %if.then, !dbg !5094

if.then:                                          ; preds = %while_continue
  %1 = load i8, i8* %str.addr.0, align 1, !dbg !5095
  %conv2 = sext i8 %1 to i32, !dbg !5098
  %cmp3 = icmp eq i32 %conv2, 9, !dbg !5099
  br i1 %cmp3, label %if.end, label %if.then5, !dbg !5100

if.then5:                                         ; preds = %if.then
  br label %while_break, !dbg !5101

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5103

if.end6:                                          ; preds = %if.end, %while_continue
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i32 1, !dbg !5104
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5082, metadata !DIExpression()), !dbg !5083
  br label %while.body, !dbg !5084, !llvm.loop !5105

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !5107

while_break:                                      ; preds = %while_break___0, %if.then5
  ret i8* %str.addr.0, !dbg !5108
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #5

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!237, !238, !239, !240, !241}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!242}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pts1", scope: !2, file: !183, line: 35, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !151, nameTableKind: GNU)
!3 = !DIFile(filename: "c/mpegdemux-0.1.3.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !66, !116, !15, !144, !145, !71, !135, !147, !12, !80, !73, !85, !23, !24, !149, !150}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_demux_t", file: !8, line: 73, baseType: !9)
!8 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_parse.h", directory: "")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpeg_demux_t", file: !8, line: 73, size: 100096, elements: !10)
!10 = !{!11, !13, !14, !79, !81, !82, !83, !88, !95, !108, !118, !119, !120, !121, !122, !123, !132, !133, !134, !139, !140, !141, !142, !143}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !9, file: !8, line: 74, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !9, file: !8, line: 75, baseType: !12, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !9, file: !8, line: 76, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 271, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!20 = !{!21, !22, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !43, !44, !45, !46, !50, !52, !54, !58, !61, !65, !67, !68, !69, !70, !74, !75}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 272, baseType: !12, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 273, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 274, baseType: !23, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 275, baseType: !23, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 276, baseType: !23, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 277, baseType: !23, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 278, baseType: !23, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 279, baseType: !23, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 280, baseType: !23, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 281, baseType: !23, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 282, baseType: !23, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 283, baseType: !23, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 284, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 186, size: 192, elements: !38)
!38 = !{!39, !40, !42}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !37, file: !19, line: 187, baseType: !36, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !37, file: !19, line: 188, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !37, file: !19, line: 189, baseType: !12, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 285, baseType: !41, size: 64, offset: 832)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 286, baseType: !12, size: 32, offset: 896)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 287, baseType: !12, size: 32, offset: 928)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 288, baseType: !47, size: 64, offset: 960)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !48, line: 141, baseType: !49)
!48 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 289, baseType: !51, size: 16, offset: 1024)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 290, baseType: !53, size: 8, offset: 1040)
!53 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 291, baseType: !55, size: 8, offset: 1048)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 1)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 292, baseType: !59, size: 64, offset: 1088)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 180, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 293, baseType: !62, size: 64, offset: 1152)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !48, line: 142, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !48, line: 56, baseType: !64)
!64 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !18, file: !19, line: 294, baseType: !66, size: 64, offset: 1216)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !18, file: !19, line: 295, baseType: !66, size: 64, offset: 1280)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !18, file: !19, line: 296, baseType: !66, size: 64, offset: 1344)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !18, file: !19, line: 297, baseType: !66, size: 64, offset: 1408)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 298, baseType: !71, size: 32, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 211, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 299, baseType: !12, size: 32, offset: 1504)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 300, baseType: !76, size: 192, offset: 1536)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 24)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ofs", scope: !9, file: !8, line: 77, baseType: !80, size: 64, offset: 128)
!80 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buf_i", scope: !9, file: !8, line: 78, baseType: !73, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf_n", scope: !9, file: !8, line: 79, baseType: !73, size: 32, offset: 224)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !9, file: !8, line: 80, baseType: !84, size: 32768, offset: 256)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32768, elements: !86)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!87}
!87 = !DISubrange(count: 4096)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "shdr", scope: !9, file: !8, line: 81, baseType: !89, size: 96, offset: 33024)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_shdr_t", file: !8, line: 45, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mpeg_shdr_t_9", file: !8, line: 45, size: 96, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !90, file: !8, line: 46, baseType: !73, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !90, file: !8, line: 47, baseType: !12, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "csps", scope: !90, file: !8, line: 48, baseType: !12, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !9, file: !8, line: 82, baseType: !96, size: 384, offset: 33152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_packet_t", file: !8, line: 51, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mpeg_packet_t_10", file: !8, line: 51, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !8, line: 52, baseType: !73, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !97, file: !8, line: 53, baseType: !73, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ssid", scope: !97, file: !8, line: 54, baseType: !73, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !97, file: !8, line: 55, baseType: !73, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !97, file: !8, line: 56, baseType: !73, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "have_pts", scope: !97, file: !8, line: 57, baseType: !24, size: 8, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pts", scope: !97, file: !8, line: 58, baseType: !80, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "have_dts", scope: !97, file: !8, line: 59, baseType: !24, size: 8, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dts", scope: !97, file: !8, line: 60, baseType: !80, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !9, file: !8, line: 83, baseType: !109, size: 256, offset: 33536)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_pack_t", file: !8, line: 65, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mpeg_pack_t_11", file: !8, line: 65, size: 256, elements: !111)
!111 = !{!112, !113, !114, !115, !117}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !8, line: 66, baseType: !73, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !8, line: 67, baseType: !73, size: 32, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !110, file: !8, line: 68, baseType: !80, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mux_rate", scope: !110, file: !8, line: 69, baseType: !116, size: 64, offset: 128)
!116 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "stuff", scope: !110, file: !8, line: 70, baseType: !73, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "shdr_cnt", scope: !9, file: !8, line: 84, baseType: !116, size: 64, offset: 33792)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pack_cnt", scope: !9, file: !8, line: 85, baseType: !116, size: 64, offset: 33856)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "packet_cnt", scope: !9, file: !8, line: 86, baseType: !116, size: 64, offset: 33920)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "end_cnt", scope: !9, file: !8, line: 87, baseType: !116, size: 64, offset: 33984)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "skip_cnt", scope: !9, file: !8, line: 88, baseType: !116, size: 64, offset: 34048)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !9, file: !8, line: 89, baseType: !124, size: 32768, offset: 34112)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32768, elements: !130)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_stream_info_t", file: !8, line: 40, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mpeg_stream_info_t_8", file: !8, line: 40, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "packet_cnt", scope: !126, file: !8, line: 41, baseType: !116, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !126, file: !8, line: 42, baseType: !80, size: 64, offset: 64)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "substreams", scope: !9, file: !8, line: 90, baseType: !124, size: 32768, offset: 66880)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !9, file: !8, line: 91, baseType: !66, size: 64, offset: 99648)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_skip", scope: !9, file: !8, line: 92, baseType: !135, size: 64, offset: 99712)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_pack", scope: !9, file: !8, line: 93, baseType: !135, size: 64, offset: 99776)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_system_header", scope: !9, file: !8, line: 94, baseType: !135, size: 64, offset: 99840)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_packet", scope: !9, file: !8, line: 95, baseType: !135, size: 64, offset: 99904)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_packet_check", scope: !9, file: !8, line: 96, baseType: !135, size: 64, offset: 99968)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mpeg_end", scope: !9, file: !8, line: 97, baseType: !135, size: 64, offset: 100032)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!150 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!151 = !{!152, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !0, !181, !185, !189, !191, !197, !199, !201, !203, !205, !214, !217, !219, !222, !225, !227, !229, !231, !233, !235}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "par_no_shdr", scope: !2, file: !154, line: 50, type: !12, isLocal: false, isDefinition: true)
!154 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpegdemux.c", directory: "")
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "par_no_pack", scope: !2, file: !154, line: 51, type: !12, isLocal: false, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "par_no_packet", scope: !2, file: !154, line: 52, type: !12, isLocal: false, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "par_no_end", scope: !2, file: !154, line: 53, type: !12, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "par_empty_pack", scope: !2, file: !154, line: 54, type: !12, isLocal: false, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "par_remux_skipped", scope: !2, file: !154, line: 55, type: !12, isLocal: false, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "par_split", scope: !2, file: !154, line: 56, type: !12, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "par_drop", scope: !2, file: !154, line: 57, type: !12, isLocal: false, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "par_scan", scope: !2, file: !154, line: 58, type: !12, isLocal: false, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "par_first_pts", scope: !2, file: !154, line: 59, type: !12, isLocal: false, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "par_dvdac3", scope: !2, file: !154, line: 60, type: !12, isLocal: false, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "par_dvdsub", scope: !2, file: !154, line: 61, type: !12, isLocal: false, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "par_demux_name", scope: !2, file: !154, line: 62, type: !23, isLocal: false, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "par_packet_max", scope: !2, file: !154, line: 63, type: !73, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "pts2", scope: !2, file: !183, line: 36, type: !184, isLocal: true, isDefinition: true)
!183 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_scan.c", directory: "")
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 16384, elements: !130)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "par_stream", scope: !2, file: !187, line: 39, type: !188, isLocal: false, isDefinition: true)
!187 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpegdemux.h", directory: "")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !130)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "par_substream", scope: !2, file: !187, line: 40, type: !188, isLocal: false, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "fp", scope: !2, file: !193, line: 36, type: !194, isLocal: true, isDefinition: true)
!193 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_demux.c", directory: "")
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32768, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 512)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "par_stream_map", scope: !2, file: !187, line: 41, type: !188, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "par_substream_map", scope: !2, file: !187, line: 42, type: !188, isLocal: false, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !193, line: 45, type: !12, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "spucnt", scope: !2, file: !193, line: 44, type: !73, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "packet", scope: !2, file: !193, line: 38, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg_buffer_t", file: !208, line: 31, baseType: !209)
!208 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/buffer.h", directory: "")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mpeg_buffer_t_12", file: !208, line: 31, size: 128, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !209, file: !208, line: 32, baseType: !144, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !209, file: !208, line: 33, baseType: !73, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !209, file: !208, line: 34, baseType: !73, size: 32, offset: 96)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "skip_cnt", scope: !2, file: !216, line: 36, type: !116, isLocal: true, isDefinition: true)
!216 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_list.c", directory: "")
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "skip_ofs", scope: !2, file: !216, line: 35, type: !80, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "msg_level", scope: !2, file: !221, line: 32, type: !73, isLocal: true, isDefinition: true)
!221 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/message.c", directory: "")
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "sequence", scope: !2, file: !224, line: 44, type: !73, isLocal: true, isDefinition: true)
!224 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_remux.c", directory: "")
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "shdr", scope: !2, file: !224, line: 40, type: !207, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "pack", scope: !2, file: !224, line: 41, type: !207, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "packet___1", scope: !2, file: !224, line: 42, type: !207, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "par_mode", scope: !2, file: !154, line: 39, type: !73, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "par_inp", scope: !2, file: !154, line: 41, type: !15, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "par_out", scope: !2, file: !154, line: 42, type: !15, isLocal: true, isDefinition: true)
!237 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!238 = !{i32 2, !"Dwarf Version", i32 4}
!239 = !{i32 2, !"Debug Info Version", i32 3}
!240 = !{i32 1, !"wchar_size", i32 4}
!241 = !{i32 7, !"PIC Level", i32 2}
!242 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!243 = distinct !DISubprogram(name: "mpeg_scan", scope: !183, file: !183, line: 163, type: !244, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!244 = !DISubroutineType(types: !245)
!245 = !{!12, !15, !15}
!246 = !DILocalVariable(name: "inp", arg: 1, scope: !243, file: !183, line: 163, type: !15)
!247 = !DILocation(line: 0, scope: !243)
!248 = !DILocalVariable(name: "out", arg: 2, scope: !243, file: !183, line: 163, type: !15)
!249 = !DILocalVariable(name: "i", scope: !243, file: !183, line: 166, type: !73)
!250 = !DILocation(line: 169, column: 3, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !183, line: 171, column: 3)
!252 = distinct !DILexicalBlock(scope: !253, file: !183, line: 170, column: 3)
!253 = distinct !DILexicalBlock(scope: !243, file: !183, line: 169, column: 3)
!254 = !DILocation(line: 0, scope: !253)
!255 = !DILocation(line: 169, column: 13, scope: !251)
!256 = !DILocation(line: 169, column: 14, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !183, line: 169, column: 9)
!258 = distinct !DILexicalBlock(scope: !251, file: !183, line: 169, column: 13)
!259 = !DILocation(line: 169, column: 9, scope: !258)
!260 = !DILocation(line: 169, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !183, line: 169, column: 23)
!262 = !DILocation(line: 170, column: 5, scope: !258)
!263 = !DILocation(line: 170, column: 13, scope: !258)
!264 = !DILocation(line: 171, column: 5, scope: !258)
!265 = !DILocation(line: 171, column: 13, scope: !258)
!266 = !DILocation(line: 169, column: 7, scope: !258)
!267 = distinct !{!267, !250, !268}
!268 = !DILocation(line: 170, column: 3, scope: !251)
!269 = !DILocation(line: 172, column: 3, scope: !251)
!270 = !DILocation(line: 174, column: 10, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !183, line: 176, column: 3)
!272 = distinct !DILexicalBlock(scope: !253, file: !183, line: 175, column: 3)
!273 = !DILocalVariable(name: "mpeg", scope: !243, file: !183, line: 167, type: !6)
!274 = !DILocation(line: 175, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !253, file: !183, line: 175, column: 7)
!276 = !DILocation(line: 175, column: 28, scope: !275)
!277 = !DILocation(line: 175, column: 7, scope: !253)
!278 = !DILocation(line: 176, column: 5, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !183, line: 175, column: 60)
!280 = !DILocation(line: 179, column: 15, scope: !281)
!281 = distinct !DILexicalBlock(scope: !253, file: !183, line: 178, column: 3)
!282 = !DILocation(line: 179, column: 9, scope: !281)
!283 = !DILocation(line: 179, column: 13, scope: !281)
!284 = !DILocation(line: 181, column: 9, scope: !281)
!285 = !DILocation(line: 181, column: 28, scope: !281)
!286 = !DILocation(line: 182, column: 9, scope: !281)
!287 = !DILocation(line: 182, column: 19, scope: !281)
!288 = !DILocation(line: 183, column: 9, scope: !281)
!289 = !DILocation(line: 183, column: 21, scope: !281)
!290 = !DILocation(line: 184, column: 9, scope: !281)
!291 = !DILocation(line: 184, column: 27, scope: !281)
!292 = !DILocation(line: 185, column: 9, scope: !281)
!293 = !DILocation(line: 185, column: 18, scope: !281)
!294 = !DILocation(line: 187, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !281, file: !183, line: 186, column: 3)
!296 = !DILocalVariable(name: "r", scope: !243, file: !183, line: 165, type: !12)
!297 = !DILocation(line: 189, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !281, file: !183, line: 189, column: 3)
!299 = !DILocation(line: 191, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !281, file: !183, line: 191, column: 3)
!301 = !DILocation(line: 193, column: 3, scope: !253)
!302 = !DILocation(line: 195, column: 1, scope: !243)
!303 = distinct !DISubprogram(name: "mpegd_open_fp", scope: !304, file: !304, line: 32, type: !305, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!304 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/mpeg_parse.c", directory: "")
!305 = !DISubroutineType(types: !306)
!306 = !{!6, !6, !15, !12}
!307 = !DILocalVariable(name: "mpeg", arg: 1, scope: !303, file: !304, line: 32, type: !6)
!308 = !DILocation(line: 0, scope: !303)
!309 = !DILocalVariable(name: "fp___1", arg: 2, scope: !303, file: !304, line: 32, type: !15)
!310 = !DILocalVariable(name: "close", arg: 3, scope: !303, file: !304, line: 32, type: !12)
!311 = !DILocalVariable(name: "__cil_tmp5", scope: !303, file: !304, line: 35, type: !66)
!312 = !DILocation(line: 35, column: 9, scope: !303)
!313 = !DILocalVariable(name: "__cil_tmp6", scope: !303, file: !304, line: 36, type: !66)
!314 = !DILocation(line: 36, column: 9, scope: !303)
!315 = !DILocalVariable(name: "__cil_tmp7", scope: !303, file: !304, line: 37, type: !66)
!316 = !DILocation(line: 37, column: 9, scope: !303)
!317 = !DILocation(line: 34, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !304, line: 34, column: 7)
!319 = distinct !DILexicalBlock(scope: !303, file: !304, line: 39, column: 3)
!320 = !DILocation(line: 34, column: 28, scope: !318)
!321 = !DILocation(line: 34, column: 7, scope: !319)
!322 = !DILocation(line: 35, column: 11, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !304, line: 36, column: 5)
!324 = distinct !DILexicalBlock(scope: !325, file: !304, line: 35, column: 5)
!325 = distinct !DILexicalBlock(scope: !318, file: !304, line: 34, column: 60)
!326 = !DILocalVariable(name: "tmp", scope: !303, file: !304, line: 34, type: !66)
!327 = !DILocation(line: 35, column: 12, scope: !324)
!328 = !DILocation(line: 36, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !304, line: 36, column: 9)
!330 = !DILocation(line: 36, column: 30, scope: !329)
!331 = !DILocation(line: 36, column: 9, scope: !325)
!332 = !DILocation(line: 37, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !304, line: 36, column: 62)
!334 = !DILocation(line: 39, column: 11, scope: !325)
!335 = !DILocation(line: 39, column: 16, scope: !325)
!336 = !DILocation(line: 40, column: 3, scope: !325)
!337 = !DILocation(line: 42, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !318, file: !304, line: 40, column: 10)
!339 = !DILocation(line: 42, column: 16, scope: !338)
!340 = !DILocation(line: 45, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !319, file: !304, line: 44, column: 3)
!342 = !DILocation(line: 45, column: 12, scope: !341)
!343 = !DILocation(line: 46, column: 9, scope: !341)
!344 = !DILocation(line: 46, column: 15, scope: !341)
!345 = !DILocation(line: 48, column: 9, scope: !341)
!346 = !DILocation(line: 48, column: 13, scope: !341)
!347 = !DILocation(line: 50, column: 9, scope: !341)
!348 = !DILocation(line: 50, column: 15, scope: !341)
!349 = !DILocation(line: 51, column: 9, scope: !341)
!350 = !DILocation(line: 51, column: 15, scope: !341)
!351 = !DILocation(line: 53, column: 9, scope: !341)
!352 = !DILocation(line: 53, column: 13, scope: !341)
!353 = !DILocation(line: 55, column: 9, scope: !341)
!354 = !DILocation(line: 55, column: 19, scope: !341)
!355 = !DILocation(line: 56, column: 9, scope: !341)
!356 = !DILocation(line: 56, column: 28, scope: !341)
!357 = !DILocation(line: 57, column: 9, scope: !341)
!358 = !DILocation(line: 57, column: 21, scope: !341)
!359 = !DILocation(line: 58, column: 9, scope: !341)
!360 = !DILocation(line: 58, column: 27, scope: !341)
!361 = !DILocation(line: 59, column: 9, scope: !341)
!362 = !DILocation(line: 59, column: 19, scope: !341)
!363 = !DILocation(line: 60, column: 9, scope: !341)
!364 = !DILocation(line: 60, column: 18, scope: !341)
!365 = !DILocation(line: 62, column: 3, scope: !366)
!366 = distinct !DILexicalBlock(scope: !341, file: !304, line: 61, column: 3)
!367 = !DILocation(line: 64, column: 3, scope: !319)
!368 = !DILocation(line: 0, scope: !319)
!369 = !DILocation(line: 66, column: 1, scope: !303)
!370 = distinct !DISubprogram(name: "mpeg_scan_system_header", scope: !183, file: !183, line: 39, type: !371, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!371 = !DISubroutineType(types: !372)
!372 = !{!12, !6}
!373 = !DILocalVariable(name: "mpeg", arg: 1, scope: !370, file: !183, line: 39, type: !6)
!374 = !DILocation(line: 0, scope: !370)
!375 = !DILocation(line: 42, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !183, line: 43, column: 3)
!377 = distinct !DISubprogram(name: "mpeg_scan_pack", scope: !183, file: !183, line: 143, type: !371, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!378 = !DILocalVariable(name: "mpeg", arg: 1, scope: !377, file: !183, line: 143, type: !6)
!379 = !DILocation(line: 0, scope: !377)
!380 = !DILocation(line: 146, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !183, line: 147, column: 3)
!382 = distinct !DISubprogram(name: "mpeg_scan_packet", scope: !183, file: !183, line: 45, type: !371, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!383 = !DILocalVariable(name: "mpeg", arg: 1, scope: !382, file: !183, line: 45, type: !6)
!384 = !DILocation(line: 0, scope: !382)
!385 = !DILocalVariable(name: "__cil_tmp9", scope: !382, file: !183, line: 54, type: !23)
!386 = !DILocation(line: 54, column: 9, scope: !382)
!387 = !DILocalVariable(name: "__cil_tmp10", scope: !382, file: !183, line: 55, type: !23)
!388 = !DILocation(line: 55, column: 9, scope: !382)
!389 = !DILocalVariable(name: "__cil_tmp11", scope: !382, file: !183, line: 56, type: !23)
!390 = !DILocation(line: 56, column: 9, scope: !382)
!391 = !DILocalVariable(name: "__cil_tmp12", scope: !382, file: !183, line: 57, type: !23)
!392 = !DILocation(line: 57, column: 9, scope: !382)
!393 = !DILocalVariable(name: "__cil_tmp13", scope: !382, file: !183, line: 58, type: !23)
!394 = !DILocation(line: 58, column: 9, scope: !382)
!395 = !DILocalVariable(name: "__cil_tmp14", scope: !382, file: !183, line: 59, type: !23)
!396 = !DILocation(line: 59, column: 9, scope: !382)
!397 = !DILocalVariable(name: "__cil_tmp15", scope: !382, file: !183, line: 60, type: !23)
!398 = !DILocation(line: 60, column: 9, scope: !382)
!399 = !DILocalVariable(name: "__cil_tmp16", scope: !382, file: !183, line: 61, type: !23)
!400 = !DILocation(line: 61, column: 9, scope: !382)
!401 = !DILocalVariable(name: "__cil_tmp17", scope: !382, file: !183, line: 62, type: !23)
!402 = !DILocation(line: 62, column: 9, scope: !382)
!403 = !DILocation(line: 53, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !183, line: 65, column: 3)
!405 = distinct !DILexicalBlock(scope: !382, file: !183, line: 64, column: 3)
!406 = !DILocation(line: 53, column: 22, scope: !404)
!407 = !DILocalVariable(name: "sid", scope: !382, file: !183, line: 49, type: !73)
!408 = !DILocation(line: 54, column: 16, scope: !404)
!409 = !DILocation(line: 54, column: 23, scope: !404)
!410 = !DILocalVariable(name: "ssid", scope: !382, file: !183, line: 50, type: !73)
!411 = !DILocation(line: 56, column: 26, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !183, line: 55, column: 3)
!413 = !DILocation(line: 56, column: 47, scope: !412)
!414 = !DILocation(line: 56, column: 9, scope: !412)
!415 = !DILocalVariable(name: "tmp", scope: !382, file: !183, line: 52, type: !12)
!416 = !DILocation(line: 56, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !405, file: !183, line: 56, column: 7)
!418 = !DILocation(line: 56, column: 7, scope: !405)
!419 = !DILocation(line: 57, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !183, line: 56, column: 12)
!421 = !DILocation(line: 60, column: 26, scope: !422)
!422 = distinct !DILexicalBlock(scope: !405, file: !183, line: 59, column: 3)
!423 = !DILocation(line: 60, column: 12, scope: !422)
!424 = !DILocalVariable(name: "fp___1", scope: !382, file: !183, line: 47, type: !15)
!425 = !DILocation(line: 62, column: 15, scope: !422)
!426 = !DILocalVariable(name: "ofs", scope: !382, file: !183, line: 51, type: !80)
!427 = !DILocation(line: 64, column: 69, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !183, line: 63, column: 3)
!429 = !DILocation(line: 64, column: 76, scope: !428)
!430 = !DILocation(line: 64, column: 42, scope: !428)
!431 = !DILocation(line: 64, column: 40, scope: !428)
!432 = !DILocation(line: 64, column: 13, scope: !428)
!433 = !DILocalVariable(name: "tmp___0", scope: !382, file: !183, line: 53, type: !12)
!434 = !DILocation(line: 64, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !405, file: !183, line: 64, column: 7)
!436 = !DILocation(line: 64, column: 7, scope: !405)
!437 = !DILocation(line: 65, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !183, line: 66, column: 5)
!439 = distinct !DILexicalBlock(scope: !440, file: !183, line: 65, column: 5)
!440 = distinct !DILexicalBlock(scope: !435, file: !183, line: 64, column: 16)
!441 = !DILocation(line: 69, column: 3, scope: !440)
!442 = !DILocalVariable(name: "skip", scope: !382, file: !183, line: 48, type: !12)
!443 = !DILocation(line: 72, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !405, file: !183, line: 72, column: 7)
!445 = !DILocation(line: 72, column: 7, scope: !405)
!446 = !DILocation(line: 73, column: 15, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !183, line: 73, column: 9)
!448 = distinct !DILexicalBlock(scope: !444, file: !183, line: 72, column: 20)
!449 = !DILocation(line: 73, column: 9, scope: !447)
!450 = !DILocation(line: 73, column: 32, scope: !447)
!451 = !DILocation(line: 73, column: 43, scope: !447)
!452 = !DILocation(line: 73, column: 9, scope: !448)
!453 = !DILocation(line: 74, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !183, line: 74, column: 11)
!455 = distinct !DILexicalBlock(scope: !447, file: !183, line: 73, column: 50)
!456 = !DILocation(line: 74, column: 11, scope: !455)
!457 = !DILocation(line: 75, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !183, line: 74, column: 28)
!459 = !DILocation(line: 78, column: 19, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !183, line: 78, column: 11)
!461 = !DILocation(line: 78, column: 26, scope: !460)
!462 = !DILocation(line: 78, column: 13, scope: !460)
!463 = !DILocation(line: 78, column: 11, scope: !455)
!464 = !DILocation(line: 79, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !183, line: 78, column: 36)
!466 = !DILocation(line: 82, column: 17, scope: !467)
!467 = distinct !DILexicalBlock(scope: !455, file: !183, line: 82, column: 11)
!468 = !DILocation(line: 82, column: 24, scope: !467)
!469 = !DILocation(line: 82, column: 31, scope: !467)
!470 = !DILocation(line: 82, column: 28, scope: !467)
!471 = !DILocation(line: 82, column: 11, scope: !455)
!472 = !DILocation(line: 83, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !467, file: !183, line: 82, column: 43)
!474 = !DILocation(line: 85, column: 5, scope: !455)
!475 = !DILocation(line: 87, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !448, file: !183, line: 87, column: 9)
!477 = !DILocation(line: 87, column: 22, scope: !476)
!478 = !DILocation(line: 87, column: 28, scope: !476)
!479 = !DILocation(line: 87, column: 26, scope: !476)
!480 = !DILocation(line: 87, column: 9, scope: !448)
!481 = !DILocation(line: 88, column: 26, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !183, line: 87, column: 40)
!483 = !DILocation(line: 88, column: 33, scope: !482)
!484 = !DILocation(line: 88, column: 7, scope: !482)
!485 = !DILocation(line: 88, column: 18, scope: !482)
!486 = !DILocation(line: 89, column: 5, scope: !482)
!487 = !DILocation(line: 90, column: 3, scope: !448)
!488 = !DILocation(line: 92, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !183, line: 92, column: 9)
!490 = distinct !DILexicalBlock(scope: !444, file: !183, line: 90, column: 10)
!491 = !DILocation(line: 92, column: 9, scope: !489)
!492 = !DILocation(line: 92, column: 28, scope: !489)
!493 = !DILocation(line: 92, column: 39, scope: !489)
!494 = !DILocation(line: 92, column: 9, scope: !490)
!495 = !DILocation(line: 93, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !183, line: 93, column: 11)
!497 = distinct !DILexicalBlock(scope: !489, file: !183, line: 92, column: 46)
!498 = !DILocation(line: 93, column: 11, scope: !497)
!499 = !DILocation(line: 94, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !183, line: 93, column: 28)
!501 = !DILocation(line: 97, column: 19, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !183, line: 97, column: 11)
!503 = !DILocation(line: 97, column: 26, scope: !502)
!504 = !DILocation(line: 97, column: 13, scope: !502)
!505 = !DILocation(line: 97, column: 11, scope: !497)
!506 = !DILocation(line: 98, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !183, line: 97, column: 36)
!508 = !DILocation(line: 101, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !497, file: !183, line: 101, column: 11)
!510 = !DILocation(line: 101, column: 24, scope: !509)
!511 = !DILocation(line: 101, column: 31, scope: !509)
!512 = !DILocation(line: 101, column: 28, scope: !509)
!513 = !DILocation(line: 101, column: 11, scope: !497)
!514 = !DILocation(line: 102, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !183, line: 101, column: 42)
!516 = !DILocation(line: 104, column: 5, scope: !497)
!517 = !DILocation(line: 106, column: 15, scope: !518)
!518 = distinct !DILexicalBlock(scope: !490, file: !183, line: 106, column: 9)
!519 = !DILocation(line: 106, column: 22, scope: !518)
!520 = !DILocation(line: 106, column: 28, scope: !518)
!521 = !DILocation(line: 106, column: 26, scope: !518)
!522 = !DILocation(line: 106, column: 9, scope: !490)
!523 = !DILocation(line: 107, column: 25, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !183, line: 106, column: 39)
!525 = !DILocation(line: 107, column: 32, scope: !524)
!526 = !DILocation(line: 107, column: 7, scope: !524)
!527 = !DILocation(line: 107, column: 17, scope: !524)
!528 = !DILocation(line: 108, column: 5, scope: !524)
!529 = !DILocation(line: 111, column: 3, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !183, line: 111, column: 3)
!531 = distinct !DILexicalBlock(scope: !405, file: !183, line: 110, column: 3)
!532 = !DILocation(line: 113, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !405, file: !183, line: 113, column: 7)
!534 = !DILocation(line: 113, column: 7, scope: !405)
!535 = !DILocation(line: 114, column: 5, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !183, line: 115, column: 5)
!537 = distinct !DILexicalBlock(scope: !538, file: !183, line: 114, column: 5)
!538 = distinct !DILexicalBlock(scope: !533, file: !183, line: 113, column: 20)
!539 = !DILocation(line: 118, column: 3, scope: !538)
!540 = !DILocation(line: 117, column: 5, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !183, line: 120, column: 5)
!542 = distinct !DILexicalBlock(scope: !543, file: !183, line: 119, column: 5)
!543 = distinct !DILexicalBlock(scope: !533, file: !183, line: 118, column: 10)
!544 = !DILocation(line: 120, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !405, file: !183, line: 120, column: 7)
!546 = !DILocation(line: 120, column: 20, scope: !545)
!547 = !DILocation(line: 120, column: 25, scope: !545)
!548 = !DILocation(line: 120, column: 7, scope: !405)
!549 = !DILocation(line: 121, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !183, line: 122, column: 5)
!551 = distinct !DILexicalBlock(scope: !552, file: !183, line: 121, column: 5)
!552 = distinct !DILexicalBlock(scope: !545, file: !183, line: 120, column: 32)
!553 = !DILocation(line: 124, column: 3, scope: !552)
!554 = !DILocation(line: 123, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !545, file: !183, line: 123, column: 7)
!556 = !DILocation(line: 123, column: 20, scope: !555)
!557 = !DILocation(line: 123, column: 25, scope: !555)
!558 = !DILocation(line: 123, column: 7, scope: !545)
!559 = !DILocation(line: 124, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !183, line: 125, column: 5)
!561 = distinct !DILexicalBlock(scope: !562, file: !183, line: 124, column: 5)
!562 = distinct !DILexicalBlock(scope: !555, file: !183, line: 123, column: 32)
!563 = !DILocation(line: 127, column: 3, scope: !562)
!564 = !DILocation(line: 127, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !183, line: 129, column: 5)
!566 = distinct !DILexicalBlock(scope: !567, file: !183, line: 128, column: 5)
!567 = distinct !DILexicalBlock(scope: !555, file: !183, line: 127, column: 10)
!568 = !DILocation(line: 130, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !405, file: !183, line: 130, column: 7)
!570 = !DILocation(line: 130, column: 20, scope: !569)
!571 = !DILocation(line: 130, column: 7, scope: !569)
!572 = !DILocation(line: 130, column: 7, scope: !405)
!573 = !DILocation(line: 132, column: 19, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !183, line: 132, column: 5)
!575 = distinct !DILexicalBlock(scope: !576, file: !183, line: 131, column: 5)
!576 = distinct !DILexicalBlock(scope: !569, file: !183, line: 130, column: 30)
!577 = !DILocation(line: 132, column: 26, scope: !574)
!578 = !DILocation(line: 132, column: 46, scope: !574)
!579 = !DILocation(line: 132, column: 53, scope: !574)
!580 = !DILocation(line: 132, column: 31, scope: !574)
!581 = !DILocation(line: 132, column: 57, scope: !574)
!582 = !DILocation(line: 131, column: 5, scope: !574)
!583 = !DILocation(line: 135, column: 3, scope: !576)
!584 = !DILocation(line: 136, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !183, line: 137, column: 3)
!586 = distinct !DILexicalBlock(scope: !405, file: !183, line: 136, column: 3)
!587 = !DILocation(line: 138, column: 3, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !183, line: 138, column: 3)
!589 = !DILocation(line: 140, column: 3, scope: !405)
!590 = !DILocation(line: 142, column: 1, scope: !382)
!591 = distinct !DISubprogram(name: "mpeg_packet_check", scope: !154, file: !154, line: 282, type: !371, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!592 = !DILocalVariable(name: "mpeg", arg: 1, scope: !591, file: !154, line: 282, type: !6)
!593 = !DILocation(line: 0, scope: !591)
!594 = !DILocation(line: 284, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !154, line: 284, column: 7)
!596 = distinct !DILexicalBlock(scope: !591, file: !154, line: 286, column: 3)
!597 = !DILocation(line: 284, column: 22, scope: !595)
!598 = !DILocation(line: 284, column: 7, scope: !596)
!599 = !DILocation(line: 284, column: 15, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !154, line: 284, column: 9)
!601 = distinct !DILexicalBlock(scope: !595, file: !154, line: 284, column: 28)
!602 = !DILocation(line: 284, column: 22, scope: !600)
!603 = !DILocation(line: 284, column: 29, scope: !600)
!604 = !DILocation(line: 284, column: 27, scope: !600)
!605 = !DILocation(line: 284, column: 9, scope: !601)
!606 = !DILocation(line: 285, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !600, file: !154, line: 284, column: 45)
!608 = !DILocation(line: 287, column: 3, scope: !601)
!609 = !DILocation(line: 288, column: 30, scope: !610)
!610 = distinct !DILexicalBlock(scope: !596, file: !154, line: 288, column: 7)
!611 = !DILocation(line: 288, column: 37, scope: !610)
!612 = !DILocation(line: 288, column: 13, scope: !610)
!613 = !DILocation(line: 288, column: 7, scope: !610)
!614 = !DILocation(line: 288, column: 42, scope: !610)
!615 = !DILocation(line: 288, column: 7, scope: !596)
!616 = !DILocation(line: 289, column: 5, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !154, line: 288, column: 47)
!618 = !DILocation(line: 292, column: 3, scope: !596)
!619 = !DILocation(line: 0, scope: !596)
!620 = !DILocation(line: 294, column: 1, scope: !591)
!621 = distinct !DISubprogram(name: "mpeg_scan_end", scope: !183, file: !183, line: 149, type: !371, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!622 = !DILocalVariable(name: "mpeg", arg: 1, scope: !621, file: !183, line: 149, type: !6)
!623 = !DILocation(line: 0, scope: !621)
!624 = !DILocalVariable(name: "__cil_tmp3", scope: !621, file: !183, line: 152, type: !23)
!625 = !DILocation(line: 152, column: 9, scope: !621)
!626 = !DILocation(line: 154, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !183, line: 154, column: 3)
!628 = !DILocation(line: 154, column: 12, scope: !627)
!629 = !DILocalVariable(name: "fp___1", scope: !621, file: !183, line: 151, type: !15)
!630 = !DILocation(line: 156, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !183, line: 156, column: 7)
!632 = !DILocation(line: 156, column: 7, scope: !627)
!633 = !DILocation(line: 158, column: 19, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !183, line: 158, column: 5)
!635 = distinct !DILexicalBlock(scope: !636, file: !183, line: 157, column: 5)
!636 = distinct !DILexicalBlock(scope: !631, file: !183, line: 156, column: 21)
!637 = !DILocation(line: 157, column: 5, scope: !634)
!638 = !DILocation(line: 161, column: 3, scope: !636)
!639 = !DILocation(line: 160, column: 3, scope: !627)
!640 = distinct !DISubprogram(name: "mpegd_parse", scope: !304, file: !304, line: 579, type: !371, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!641 = !DILocalVariable(name: "mpeg", arg: 1, scope: !640, file: !304, line: 579, type: !6)
!642 = !DILocation(line: 0, scope: !640)
!643 = !DILocation(line: 583, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !304, line: 592, column: 3)
!645 = distinct !DILexicalBlock(scope: !646, file: !304, line: 591, column: 3)
!646 = distinct !DILexicalBlock(scope: !640, file: !304, line: 590, column: 3)
!647 = !DILocation(line: 583, column: 13, scope: !644)
!648 = !DILocation(line: 584, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !304, line: 587, column: 5)
!650 = distinct !DILexicalBlock(scope: !651, file: !304, line: 586, column: 5)
!651 = distinct !DILexicalBlock(scope: !644, file: !304, line: 583, column: 13)
!652 = !DILocalVariable(name: "tmp", scope: !640, file: !304, line: 582, type: !12)
!653 = !DILocation(line: 584, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !304, line: 584, column: 9)
!655 = !DILocation(line: 584, column: 9, scope: !651)
!656 = !DILocation(line: 585, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !304, line: 584, column: 14)
!658 = !DILocation(line: 588, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !304, line: 588, column: 5)
!660 = distinct !DILexicalBlock(scope: !651, file: !304, line: 587, column: 5)
!661 = !DILocalVariable(name: "tmp___0", scope: !640, file: !304, line: 583, type: !116)
!662 = !DILocation(line: 589, column: 17, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !304, line: 589, column: 9)
!664 = distinct !DILexicalBlock(scope: !651, file: !304, line: 591, column: 5)
!665 = !DILocation(line: 589, column: 9, scope: !664)
!666 = !DILocation(line: 589, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !304, line: 589, column: 27)
!668 = !DILocation(line: 595, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !304, line: 595, column: 9)
!670 = !DILocation(line: 595, column: 9, scope: !664)
!671 = !DILocation(line: 595, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !669, file: !304, line: 595, column: 27)
!673 = !DILocation(line: 611, column: 5, scope: !664)
!674 = !DILocation(line: 590, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !304, line: 614, column: 5)
!676 = distinct !DILexicalBlock(scope: !664, file: !304, line: 613, column: 5)
!677 = !DILocalVariable(name: "tmp___1", scope: !640, file: !304, line: 584, type: !12)
!678 = !DILocation(line: 590, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !664, file: !304, line: 590, column: 9)
!680 = !DILocation(line: 590, column: 9, scope: !664)
!681 = !DILocation(line: 591, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !304, line: 590, column: 18)
!683 = !DILocation(line: 593, column: 5, scope: !664)
!684 = !DILocation(line: 596, column: 12, scope: !664)
!685 = !DILocation(line: 596, column: 21, scope: !664)
!686 = !DILocation(line: 598, column: 17, scope: !664)
!687 = !DILocation(line: 598, column: 21, scope: !664)
!688 = !DILocalVariable(name: "ofs", scope: !640, file: !304, line: 581, type: !80)
!689 = !DILocation(line: 600, column: 31, scope: !690)
!690 = distinct !DILexicalBlock(scope: !664, file: !304, line: 600, column: 9)
!691 = !DILocation(line: 600, column: 9, scope: !690)
!692 = !DILocation(line: 600, column: 40, scope: !690)
!693 = !DILocation(line: 600, column: 9, scope: !664)
!694 = !DILocation(line: 601, column: 26, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !304, line: 602, column: 7)
!696 = distinct !DILexicalBlock(scope: !697, file: !304, line: 601, column: 7)
!697 = distinct !DILexicalBlock(scope: !690, file: !304, line: 600, column: 72)
!698 = !DILocation(line: 601, column: 17, scope: !695)
!699 = !DILocalVariable(name: "tmp___2", scope: !640, file: !304, line: 585, type: !12)
!700 = !DILocation(line: 601, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !304, line: 601, column: 11)
!702 = !DILocation(line: 601, column: 11, scope: !697)
!703 = !DILocation(line: 602, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !304, line: 601, column: 20)
!705 = !DILocation(line: 604, column: 5, scope: !697)
!706 = !DILocation(line: 606, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !304, line: 606, column: 5)
!708 = distinct !DILexicalBlock(scope: !664, file: !304, line: 605, column: 5)
!709 = !DILocalVariable(name: "tmp___3", scope: !640, file: !304, line: 586, type: !12)
!710 = !DILocation(line: 606, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !664, file: !304, line: 606, column: 9)
!712 = !DILocation(line: 606, column: 9, scope: !664)
!713 = !DILocation(line: 607, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !304, line: 606, column: 18)
!715 = !DILocation(line: 609, column: 5, scope: !664)
!716 = !DILocation(line: 612, column: 17, scope: !664)
!717 = !DILocation(line: 612, column: 21, scope: !664)
!718 = !DILocation(line: 614, column: 31, scope: !719)
!719 = distinct !DILexicalBlock(scope: !664, file: !304, line: 614, column: 9)
!720 = !DILocation(line: 614, column: 9, scope: !719)
!721 = !DILocation(line: 614, column: 41, scope: !719)
!722 = !DILocation(line: 614, column: 9, scope: !664)
!723 = !DILocation(line: 615, column: 26, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !304, line: 616, column: 7)
!725 = distinct !DILexicalBlock(scope: !726, file: !304, line: 615, column: 7)
!726 = distinct !DILexicalBlock(scope: !719, file: !304, line: 614, column: 73)
!727 = !DILocation(line: 615, column: 17, scope: !724)
!728 = !DILocalVariable(name: "tmp___4", scope: !640, file: !304, line: 587, type: !12)
!729 = !DILocation(line: 615, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !304, line: 615, column: 11)
!731 = !DILocation(line: 615, column: 11, scope: !726)
!732 = !DILocation(line: 616, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !304, line: 615, column: 20)
!734 = !DILocation(line: 618, column: 5, scope: !726)
!735 = !DILocation(line: 620, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !304, line: 620, column: 5)
!737 = distinct !DILexicalBlock(scope: !664, file: !304, line: 619, column: 5)
!738 = !DILocalVariable(name: "tmp___5", scope: !640, file: !304, line: 588, type: !12)
!739 = !DILocation(line: 620, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !664, file: !304, line: 620, column: 9)
!741 = !DILocation(line: 620, column: 9, scope: !664)
!742 = !DILocation(line: 621, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !304, line: 620, column: 18)
!744 = !DILocation(line: 624, column: 5, scope: !664)
!745 = distinct !{!745, !643, !746}
!746 = !DILocation(line: 627, column: 3, scope: !644)
!747 = !DILocation(line: 629, column: 3, scope: !644)
!748 = !DILocation(line: 628, column: 3, scope: !646)
!749 = !DILocation(line: 0, scope: !651)
!750 = !DILocation(line: 630, column: 1, scope: !640)
!751 = distinct !DISubprogram(name: "mpeg_print_stats", scope: !154, file: !154, line: 295, type: !752, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !6, !15}
!754 = !DILocalVariable(name: "mpeg", arg: 1, scope: !751, file: !154, line: 295, type: !6)
!755 = !DILocation(line: 0, scope: !751)
!756 = !DILocalVariable(name: "fp___1", arg: 2, scope: !751, file: !154, line: 295, type: !15)
!757 = !DILocalVariable(name: "__cil_tmp4", scope: !751, file: !154, line: 298, type: !23)
!758 = !DILocation(line: 298, column: 9, scope: !751)
!759 = !DILocalVariable(name: "__cil_tmp5", scope: !751, file: !154, line: 299, type: !23)
!760 = !DILocation(line: 299, column: 9, scope: !751)
!761 = !DILocalVariable(name: "__cil_tmp6", scope: !751, file: !154, line: 300, type: !23)
!762 = !DILocation(line: 300, column: 9, scope: !751)
!763 = !DILocation(line: 300, column: 17, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !154, line: 304, column: 3)
!765 = distinct !DILexicalBlock(scope: !766, file: !154, line: 303, column: 3)
!766 = distinct !DILexicalBlock(scope: !751, file: !154, line: 302, column: 3)
!767 = !DILocation(line: 300, column: 33, scope: !764)
!768 = !DILocation(line: 300, column: 49, scope: !764)
!769 = !DILocation(line: 300, column: 67, scope: !764)
!770 = !DILocation(line: 300, column: 82, scope: !764)
!771 = !DILocation(line: 299, column: 3, scope: !764)
!772 = !DILocalVariable(name: "i", scope: !751, file: !154, line: 297, type: !73)
!773 = !DILocation(line: 309, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !154, line: 312, column: 3)
!775 = distinct !DILexicalBlock(scope: !766, file: !154, line: 311, column: 3)
!776 = !DILocation(line: 0, scope: !766)
!777 = !DILocation(line: 309, column: 13, scope: !774)
!778 = !DILocation(line: 309, column: 14, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !154, line: 309, column: 9)
!780 = distinct !DILexicalBlock(scope: !774, file: !154, line: 309, column: 13)
!781 = !DILocation(line: 309, column: 9, scope: !780)
!782 = !DILocation(line: 309, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !154, line: 309, column: 23)
!784 = !DILocation(line: 310, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !154, line: 310, column: 9)
!786 = !DILocation(line: 310, column: 9, scope: !785)
!787 = !DILocation(line: 310, column: 26, scope: !785)
!788 = !DILocation(line: 310, column: 37, scope: !785)
!789 = !DILocation(line: 310, column: 9, scope: !780)
!790 = !DILocation(line: 312, column: 24, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !154, line: 312, column: 7)
!792 = distinct !DILexicalBlock(scope: !793, file: !154, line: 311, column: 7)
!793 = distinct !DILexicalBlock(scope: !785, file: !154, line: 310, column: 44)
!794 = !DILocation(line: 312, column: 18, scope: !791)
!795 = !DILocation(line: 312, column: 35, scope: !791)
!796 = !DILocation(line: 312, column: 53, scope: !791)
!797 = !DILocation(line: 312, column: 47, scope: !791)
!798 = !DILocation(line: 312, column: 64, scope: !791)
!799 = !DILocation(line: 311, column: 7, scope: !791)
!800 = !DILocation(line: 315, column: 5, scope: !793)
!801 = !DILocation(line: 309, column: 7, scope: !780)
!802 = distinct !{!802, !773, !803}
!803 = !DILocation(line: 310, column: 3, scope: !774)
!804 = !DILocation(line: 312, column: 3, scope: !774)
!805 = !DILocation(line: 317, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !154, line: 319, column: 3)
!807 = distinct !DILexicalBlock(scope: !766, file: !154, line: 318, column: 3)
!808 = !DILocation(line: 317, column: 13, scope: !806)
!809 = !DILocation(line: 317, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !154, line: 317, column: 9)
!811 = distinct !DILexicalBlock(scope: !806, file: !154, line: 317, column: 13)
!812 = !DILocation(line: 317, column: 9, scope: !811)
!813 = !DILocation(line: 317, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !154, line: 317, column: 23)
!815 = !DILocation(line: 318, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !154, line: 318, column: 9)
!817 = !DILocation(line: 318, column: 9, scope: !816)
!818 = !DILocation(line: 318, column: 29, scope: !816)
!819 = !DILocation(line: 318, column: 40, scope: !816)
!820 = !DILocation(line: 318, column: 9, scope: !811)
!821 = !DILocation(line: 320, column: 24, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !154, line: 320, column: 7)
!823 = distinct !DILexicalBlock(scope: !824, file: !154, line: 319, column: 7)
!824 = distinct !DILexicalBlock(scope: !816, file: !154, line: 318, column: 47)
!825 = !DILocation(line: 320, column: 18, scope: !822)
!826 = !DILocation(line: 320, column: 38, scope: !822)
!827 = !DILocation(line: 320, column: 56, scope: !822)
!828 = !DILocation(line: 320, column: 50, scope: !822)
!829 = !DILocation(line: 320, column: 70, scope: !822)
!830 = !DILocation(line: 319, column: 7, scope: !822)
!831 = !DILocation(line: 323, column: 5, scope: !824)
!832 = !DILocation(line: 317, column: 7, scope: !811)
!833 = distinct !{!833, !805, !834}
!834 = !DILocation(line: 318, column: 3, scope: !806)
!835 = !DILocation(line: 320, column: 3, scope: !806)
!836 = !DILocation(line: 325, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !154, line: 324, column: 3)
!838 = distinct !DILexicalBlock(scope: !766, file: !154, line: 323, column: 3)
!839 = !DILocation(line: 326, column: 3, scope: !766)
!840 = distinct !DISubprogram(name: "mpegd_close", scope: !304, file: !304, line: 81, type: !841, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !6}
!843 = !DILocalVariable(name: "mpeg", arg: 1, scope: !840, file: !304, line: 81, type: !6)
!844 = !DILocation(line: 0, scope: !840)
!845 = !DILocation(line: 83, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !304, line: 83, column: 7)
!847 = distinct !DILexicalBlock(scope: !840, file: !304, line: 85, column: 3)
!848 = !DILocation(line: 83, column: 7, scope: !846)
!849 = !DILocation(line: 83, column: 7, scope: !847)
!850 = !DILocation(line: 84, column: 18, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !304, line: 85, column: 5)
!852 = distinct !DILexicalBlock(scope: !853, file: !304, line: 84, column: 5)
!853 = distinct !DILexicalBlock(scope: !846, file: !304, line: 83, column: 20)
!854 = !DILocation(line: 84, column: 5, scope: !851)
!855 = !DILocation(line: 87, column: 3, scope: !853)
!856 = !DILocation(line: 87, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !847, file: !304, line: 87, column: 7)
!858 = !DILocation(line: 87, column: 7, scope: !857)
!859 = !DILocation(line: 87, column: 7, scope: !847)
!860 = !DILocation(line: 88, column: 10, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !304, line: 89, column: 5)
!862 = distinct !DILexicalBlock(scope: !863, file: !304, line: 88, column: 5)
!863 = distinct !DILexicalBlock(scope: !857, file: !304, line: 87, column: 19)
!864 = !DILocation(line: 88, column: 5, scope: !861)
!865 = !DILocation(line: 91, column: 3, scope: !863)
!866 = !DILocation(line: 90, column: 3, scope: !847)
!867 = distinct !DISubprogram(name: "mpeg_demux", scope: !193, file: !193, line: 234, type: !244, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!868 = !DILocalVariable(name: "inp", arg: 1, scope: !867, file: !193, line: 234, type: !15)
!869 = !DILocation(line: 0, scope: !867)
!870 = !DILocalVariable(name: "out", arg: 2, scope: !867, file: !193, line: 234, type: !15)
!871 = !DILocalVariable(name: "i", scope: !867, file: !193, line: 236, type: !73)
!872 = !DILocation(line: 240, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !193, line: 242, column: 3)
!874 = distinct !DILexicalBlock(scope: !875, file: !193, line: 241, column: 3)
!875 = distinct !DILexicalBlock(scope: !867, file: !193, line: 240, column: 3)
!876 = !DILocation(line: 0, scope: !875)
!877 = !DILocation(line: 240, column: 13, scope: !873)
!878 = !DILocation(line: 240, column: 14, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !193, line: 240, column: 9)
!880 = distinct !DILexicalBlock(scope: !873, file: !193, line: 240, column: 13)
!881 = !DILocation(line: 240, column: 9, scope: !880)
!882 = !DILocation(line: 240, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !193, line: 240, column: 23)
!884 = !DILocation(line: 241, column: 5, scope: !880)
!885 = !DILocation(line: 241, column: 11, scope: !880)
!886 = !DILocation(line: 240, column: 7, scope: !880)
!887 = distinct !{!887, !872, !888}
!888 = !DILocation(line: 241, column: 3, scope: !873)
!889 = !DILocation(line: 243, column: 3, scope: !873)
!890 = !DILocation(line: 244, column: 10, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !193, line: 247, column: 3)
!892 = distinct !DILexicalBlock(scope: !875, file: !193, line: 246, column: 3)
!893 = !DILocalVariable(name: "mpeg", scope: !867, file: !193, line: 238, type: !6)
!894 = !DILocation(line: 245, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !875, file: !193, line: 245, column: 7)
!896 = !DILocation(line: 245, column: 28, scope: !895)
!897 = !DILocation(line: 245, column: 7, scope: !875)
!898 = !DILocation(line: 246, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !193, line: 245, column: 60)
!900 = !DILocation(line: 249, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !875, file: !193, line: 248, column: 3)
!902 = !DILocation(line: 249, column: 28, scope: !901)
!903 = !DILocation(line: 250, column: 9, scope: !901)
!904 = !DILocation(line: 250, column: 19, scope: !901)
!905 = !DILocation(line: 251, column: 9, scope: !901)
!906 = !DILocation(line: 251, column: 21, scope: !901)
!907 = !DILocation(line: 252, column: 9, scope: !901)
!908 = !DILocation(line: 252, column: 27, scope: !901)
!909 = !DILocation(line: 253, column: 9, scope: !901)
!910 = !DILocation(line: 253, column: 18, scope: !901)
!911 = !DILocation(line: 255, column: 15, scope: !901)
!912 = !DILocation(line: 255, column: 9, scope: !901)
!913 = !DILocation(line: 255, column: 13, scope: !901)
!914 = !DILocation(line: 257, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !901, file: !193, line: 256, column: 3)
!916 = !DILocalVariable(name: "r", scope: !867, file: !193, line: 237, type: !12)
!917 = !DILocation(line: 259, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !901, file: !193, line: 259, column: 3)
!919 = !DILocation(line: 261, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !193, line: 264, column: 3)
!921 = distinct !DILexicalBlock(scope: !875, file: !193, line: 263, column: 3)
!922 = !DILocation(line: 261, column: 13, scope: !920)
!923 = !DILocation(line: 261, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !193, line: 261, column: 9)
!925 = distinct !DILexicalBlock(scope: !920, file: !193, line: 261, column: 13)
!926 = !DILocation(line: 261, column: 9, scope: !925)
!927 = !DILocation(line: 261, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !193, line: 261, column: 23)
!929 = !DILocation(line: 262, column: 25, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !193, line: 262, column: 9)
!931 = !DILocation(line: 262, column: 9, scope: !930)
!932 = !DILocation(line: 262, column: 31, scope: !930)
!933 = !DILocation(line: 262, column: 9, scope: !925)
!934 = !DILocation(line: 262, column: 27, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !193, line: 262, column: 11)
!936 = distinct !DILexicalBlock(scope: !930, file: !193, line: 262, column: 63)
!937 = !DILocation(line: 262, column: 11, scope: !935)
!938 = !DILocation(line: 262, column: 36, scope: !935)
!939 = !DILocation(line: 262, column: 33, scope: !935)
!940 = !DILocation(line: 262, column: 11, scope: !936)
!941 = !DILocation(line: 263, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !193, line: 264, column: 9)
!943 = distinct !DILexicalBlock(scope: !944, file: !193, line: 263, column: 9)
!944 = distinct !DILexicalBlock(scope: !935, file: !193, line: 262, column: 57)
!945 = !DILocation(line: 263, column: 9, scope: !942)
!946 = !DILocation(line: 266, column: 7, scope: !944)
!947 = !DILocation(line: 267, column: 5, scope: !936)
!948 = !DILocation(line: 261, column: 7, scope: !925)
!949 = distinct !{!949, !919, !950}
!950 = !DILocation(line: 262, column: 3, scope: !920)
!951 = !DILocation(line: 264, column: 3, scope: !920)
!952 = !DILocation(line: 267, column: 3, scope: !875)
!953 = !DILocation(line: 269, column: 1, scope: !867)
!954 = distinct !DISubprogram(name: "mpeg_demux_system_header", scope: !193, file: !193, line: 140, type: !371, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!955 = !DILocalVariable(name: "mpeg", arg: 1, scope: !954, file: !193, line: 140, type: !6)
!956 = !DILocation(line: 0, scope: !954)
!957 = !DILocation(line: 143, column: 3, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !193, line: 144, column: 3)
!959 = distinct !DISubprogram(name: "mpeg_demux_pack", scope: !193, file: !193, line: 222, type: !371, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!960 = !DILocalVariable(name: "mpeg", arg: 1, scope: !959, file: !193, line: 222, type: !6)
!961 = !DILocation(line: 0, scope: !959)
!962 = !DILocation(line: 225, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !193, line: 226, column: 3)
!964 = distinct !DISubprogram(name: "mpeg_demux_packet", scope: !193, file: !193, line: 146, type: !371, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!965 = !DILocalVariable(name: "mpeg", arg: 1, scope: !964, file: !193, line: 146, type: !6)
!966 = !DILocation(line: 0, scope: !964)
!967 = !DILocalVariable(name: "__cil_tmp11", scope: !964, file: !193, line: 157, type: !23)
!968 = !DILocation(line: 157, column: 9, scope: !964)
!969 = !DILocalVariable(name: "__cil_tmp12", scope: !964, file: !193, line: 158, type: !23)
!970 = !DILocation(line: 158, column: 9, scope: !964)
!971 = !DILocation(line: 154, column: 15, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !193, line: 161, column: 3)
!973 = distinct !DILexicalBlock(scope: !964, file: !193, line: 160, column: 3)
!974 = !DILocation(line: 154, column: 22, scope: !972)
!975 = !DILocalVariable(name: "sid", scope: !964, file: !193, line: 148, type: !73)
!976 = !DILocation(line: 155, column: 16, scope: !972)
!977 = !DILocation(line: 155, column: 23, scope: !972)
!978 = !DILocalVariable(name: "ssid", scope: !964, file: !193, line: 149, type: !73)
!979 = !DILocation(line: 157, column: 26, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !193, line: 156, column: 3)
!981 = !DILocation(line: 157, column: 47, scope: !980)
!982 = !DILocation(line: 157, column: 9, scope: !980)
!983 = !DILocalVariable(name: "tmp", scope: !964, file: !193, line: 153, type: !12)
!984 = !DILocation(line: 157, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !973, file: !193, line: 157, column: 7)
!986 = !DILocation(line: 157, column: 7, scope: !973)
!987 = !DILocation(line: 158, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !193, line: 157, column: 12)
!989 = !DILocation(line: 161, column: 15, scope: !973)
!990 = !DILocation(line: 161, column: 22, scope: !973)
!991 = !DILocalVariable(name: "cnt", scope: !964, file: !193, line: 151, type: !73)
!992 = !DILocalVariable(name: "fpi", scope: !964, file: !193, line: 150, type: !73)
!993 = !DILocation(line: 166, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !973, file: !193, line: 166, column: 7)
!995 = !DILocation(line: 166, column: 7, scope: !973)
!996 = !DILocation(line: 167, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !193, line: 166, column: 20)
!998 = !DILocation(line: 168, column: 9, scope: !997)
!999 = !DILocation(line: 170, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !193, line: 170, column: 9)
!1001 = !DILocation(line: 170, column: 9, scope: !997)
!1002 = !DILocation(line: 171, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !193, line: 170, column: 21)
!1004 = !DILocation(line: 172, column: 5, scope: !1003)
!1005 = !DILocation(line: 0, scope: !997)
!1006 = !DILocation(line: 173, column: 3, scope: !997)
!1007 = !DILocation(line: 0, scope: !973)
!1008 = !DILocation(line: 175, column: 19, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !973, file: !193, line: 175, column: 7)
!1010 = !DILocation(line: 175, column: 26, scope: !1009)
!1011 = !DILocation(line: 175, column: 11, scope: !1009)
!1012 = !DILocation(line: 175, column: 7, scope: !973)
!1013 = !DILocation(line: 176, column: 76, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !193, line: 177, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !193, line: 176, column: 5)
!1016 = distinct !DILexicalBlock(scope: !1009, file: !193, line: 175, column: 32)
!1017 = !DILocation(line: 176, column: 83, scope: !1014)
!1018 = !DILocation(line: 176, column: 5, scope: !1014)
!1019 = !DILocation(line: 180, column: 5, scope: !1016)
!1020 = !DILocation(line: 183, column: 23, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !973, file: !193, line: 183, column: 7)
!1022 = !DILocation(line: 183, column: 7, scope: !1021)
!1023 = !DILocation(line: 183, column: 31, scope: !1021)
!1024 = !DILocation(line: 183, column: 7, scope: !973)
!1025 = !DILocation(line: 184, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !193, line: 185, column: 5)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !193, line: 184, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !193, line: 183, column: 63)
!1029 = !DILocation(line: 184, column: 5, scope: !1026)
!1030 = !DILocation(line: 184, column: 13, scope: !1026)
!1031 = !DILocation(line: 185, column: 25, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !193, line: 185, column: 9)
!1033 = !DILocation(line: 185, column: 9, scope: !1032)
!1034 = !DILocation(line: 185, column: 33, scope: !1032)
!1035 = !DILocation(line: 185, column: 9, scope: !1028)
!1036 = !DILocation(line: 186, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !193, line: 185, column: 65)
!1038 = !DILocation(line: 188, column: 3, scope: !1028)
!1039 = !DILocation(line: 190, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !973, file: !193, line: 190, column: 7)
!1041 = !DILocation(line: 190, column: 7, scope: !973)
!1042 = !DILocation(line: 191, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !193, line: 192, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !193, line: 191, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !193, line: 190, column: 17)
!1046 = !DILocation(line: 194, column: 3, scope: !1045)
!1047 = !DILocation(line: 194, column: 15, scope: !973)
!1048 = !DILocation(line: 194, column: 22, scope: !973)
!1049 = !DILocation(line: 194, column: 27, scope: !973)
!1050 = !DILocation(line: 196, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !973, file: !193, line: 196, column: 7)
!1052 = !DILocation(line: 196, column: 7, scope: !973)
!1053 = !DILocation(line: 196, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !193, line: 196, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !193, line: 196, column: 20)
!1056 = !DILocation(line: 196, column: 9, scope: !1055)
!1057 = !DILocation(line: 197, column: 43, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !193, line: 198, column: 7)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !193, line: 197, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !193, line: 196, column: 21)
!1061 = !DILocation(line: 197, column: 17, scope: !1058)
!1062 = !DILocalVariable(name: "tmp___0", scope: !964, file: !193, line: 154, type: !12)
!1063 = !DILocation(line: 197, column: 7, scope: !1060)
!1064 = !DILocation(line: 199, column: 3, scope: !1055)
!1065 = !DILocalVariable(name: "r", scope: !964, file: !193, line: 152, type: !12)
!1066 = !DILocation(line: 202, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !193, line: 201, column: 3)
!1068 = distinct !DILexicalBlock(scope: !973, file: !193, line: 200, column: 3)
!1069 = !DILocalVariable(name: "tmp___1", scope: !964, file: !193, line: 155, type: !12)
!1070 = !DILocation(line: 202, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !973, file: !193, line: 202, column: 7)
!1072 = !DILocation(line: 202, column: 7, scope: !973)
!1073 = !DILocation(line: 203, column: 77, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !193, line: 204, column: 5)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !193, line: 203, column: 5)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !193, line: 202, column: 16)
!1077 = !DILocation(line: 203, column: 5, scope: !1074)
!1078 = !DILocation(line: 207, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !193, line: 207, column: 9)
!1080 = !DILocation(line: 207, column: 9, scope: !1076)
!1081 = !DILocation(line: 208, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !193, line: 209, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !193, line: 208, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !193, line: 207, column: 19)
!1085 = !DILocation(line: 209, column: 7, scope: !1084)
!1086 = !DILocation(line: 213, column: 3, scope: !1076)
!1087 = !DILocation(line: 215, column: 44, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !193, line: 215, column: 3)
!1089 = distinct !DILexicalBlock(scope: !973, file: !193, line: 214, column: 3)
!1090 = !DILocation(line: 215, column: 13, scope: !1088)
!1091 = !DILocalVariable(name: "tmp___2", scope: !964, file: !193, line: 156, type: !12)
!1092 = !DILocation(line: 215, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !973, file: !193, line: 215, column: 7)
!1094 = !DILocation(line: 215, column: 7, scope: !973)
!1095 = !DILocation(line: 217, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !193, line: 215, column: 16)
!1097 = !DILocation(line: 219, column: 3, scope: !973)
!1098 = !DILocation(line: 221, column: 1, scope: !964)
!1099 = distinct !DISubprogram(name: "mpeg_demux_end", scope: !193, file: !193, line: 228, type: !371, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1100 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1099, file: !193, line: 228, type: !6)
!1101 = !DILocation(line: 0, scope: !1099)
!1102 = !DILocation(line: 231, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !193, line: 232, column: 3)
!1104 = distinct !DISubprogram(name: "mpeg_list", scope: !216, file: !216, line: 186, type: !244, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1105 = !DILocalVariable(name: "inp", arg: 1, scope: !1104, file: !216, line: 186, type: !15)
!1106 = !DILocation(line: 0, scope: !1104)
!1107 = !DILocalVariable(name: "out", arg: 2, scope: !1104, file: !216, line: 186, type: !15)
!1108 = !DILocation(line: 191, column: 10, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !216, line: 193, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !216, line: 192, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !216, line: 191, column: 3)
!1112 = !DILocalVariable(name: "mpeg", scope: !1104, file: !216, line: 189, type: !6)
!1113 = !DILocation(line: 192, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !216, line: 192, column: 7)
!1115 = !DILocation(line: 192, column: 28, scope: !1114)
!1116 = !DILocation(line: 192, column: 7, scope: !1111)
!1117 = !DILocation(line: 193, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !216, line: 192, column: 60)
!1119 = !DILocation(line: 196, column: 12, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !216, line: 195, column: 3)
!1121 = !DILocation(line: 197, column: 12, scope: !1120)
!1122 = !DILocation(line: 199, column: 15, scope: !1120)
!1123 = !DILocation(line: 199, column: 9, scope: !1120)
!1124 = !DILocation(line: 199, column: 13, scope: !1120)
!1125 = !DILocation(line: 201, column: 9, scope: !1120)
!1126 = !DILocation(line: 201, column: 19, scope: !1120)
!1127 = !DILocation(line: 202, column: 9, scope: !1120)
!1128 = !DILocation(line: 202, column: 28, scope: !1120)
!1129 = !DILocation(line: 203, column: 9, scope: !1120)
!1130 = !DILocation(line: 203, column: 19, scope: !1120)
!1131 = !DILocation(line: 204, column: 9, scope: !1120)
!1132 = !DILocation(line: 204, column: 21, scope: !1120)
!1133 = !DILocation(line: 205, column: 9, scope: !1120)
!1134 = !DILocation(line: 205, column: 27, scope: !1120)
!1135 = !DILocation(line: 206, column: 9, scope: !1120)
!1136 = !DILocation(line: 206, column: 18, scope: !1120)
!1137 = !DILocation(line: 208, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1120, file: !216, line: 207, column: 3)
!1139 = !DILocalVariable(name: "r", scope: !1104, file: !216, line: 188, type: !12)
!1140 = !DILocation(line: 210, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1120, file: !216, line: 210, column: 3)
!1142 = !DILocation(line: 212, column: 3, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1120, file: !216, line: 212, column: 3)
!1144 = !DILocation(line: 214, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1120, file: !216, line: 214, column: 3)
!1146 = !DILocation(line: 216, column: 3, scope: !1111)
!1147 = !DILocation(line: 0, scope: !1111)
!1148 = !DILocation(line: 218, column: 1, scope: !1104)
!1149 = distinct !DISubprogram(name: "mpeg_list_skip", scope: !216, file: !216, line: 49, type: !371, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1150 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1149, file: !216, line: 49, type: !6)
!1151 = !DILocation(line: 0, scope: !1149)
!1152 = !DILocation(line: 52, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !216, line: 52, column: 7)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !216, line: 53, column: 3)
!1155 = !DILocation(line: 52, column: 16, scope: !1153)
!1156 = !DILocation(line: 52, column: 7, scope: !1154)
!1157 = !DILocation(line: 53, column: 22, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !216, line: 52, column: 24)
!1159 = !DILocation(line: 53, column: 14, scope: !1158)
!1160 = !DILocation(line: 54, column: 3, scope: !1158)
!1161 = !DILocation(line: 56, column: 12, scope: !1154)
!1162 = !DILocation(line: 58, column: 3, scope: !1154)
!1163 = distinct !DISubprogram(name: "mpeg_list_system_header", scope: !216, file: !216, line: 61, type: !371, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1164 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1163, file: !216, line: 61, type: !6)
!1165 = !DILocation(line: 0, scope: !1163)
!1166 = !DILocalVariable(name: "__cil_tmp3", scope: !1163, file: !216, line: 64, type: !23)
!1167 = !DILocation(line: 64, column: 9, scope: !1163)
!1168 = !DILocation(line: 66, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !216, line: 66, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !216, line: 66, column: 3)
!1171 = !DILocation(line: 66, column: 7, scope: !1170)
!1172 = !DILocation(line: 67, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !216, line: 66, column: 20)
!1174 = !DILocation(line: 70, column: 26, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !216, line: 69, column: 3)
!1176 = !DILocation(line: 70, column: 12, scope: !1175)
!1177 = !DILocalVariable(name: "fp___1", scope: !1163, file: !216, line: 63, type: !15)
!1178 = !DILocation(line: 72, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !216, line: 71, column: 3)
!1180 = !DILocation(line: 75, column: 17, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1175, file: !216, line: 74, column: 3)
!1182 = !DILocation(line: 75, column: 28, scope: !1181)
!1183 = !DILocation(line: 75, column: 37, scope: !1181)
!1184 = !DILocation(line: 75, column: 50, scope: !1181)
!1185 = !DILocation(line: 75, column: 55, scope: !1181)
!1186 = !DILocation(line: 75, column: 67, scope: !1181)
!1187 = !DILocation(line: 75, column: 72, scope: !1181)
!1188 = !DILocation(line: 75, column: 85, scope: !1181)
!1189 = !DILocation(line: 75, column: 90, scope: !1181)
!1190 = !DILocation(line: 74, column: 3, scope: !1181)
!1191 = !DILocation(line: 79, column: 3, scope: !1170)
!1192 = !DILocation(line: 81, column: 1, scope: !1163)
!1193 = distinct !DISubprogram(name: "mpeg_list_pack", scope: !216, file: !216, line: 142, type: !371, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1194 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1193, file: !216, line: 142, type: !6)
!1195 = !DILocation(line: 0, scope: !1193)
!1196 = !DILocalVariable(name: "__cil_tmp3", scope: !1193, file: !216, line: 145, type: !23)
!1197 = !DILocation(line: 145, column: 9, scope: !1193)
!1198 = !DILocation(line: 147, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !216, line: 147, column: 7)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !216, line: 147, column: 3)
!1201 = !DILocation(line: 147, column: 7, scope: !1200)
!1202 = !DILocation(line: 148, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !216, line: 147, column: 20)
!1204 = !DILocation(line: 151, column: 26, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !216, line: 150, column: 3)
!1206 = !DILocation(line: 151, column: 12, scope: !1205)
!1207 = !DILocalVariable(name: "fp___1", scope: !1193, file: !216, line: 144, type: !15)
!1208 = !DILocation(line: 153, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !216, line: 152, column: 3)
!1210 = !DILocation(line: 156, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !216, line: 155, column: 3)
!1212 = !DILocation(line: 156, column: 28, scope: !1211)
!1213 = !DILocation(line: 156, column: 37, scope: !1211)
!1214 = !DILocation(line: 156, column: 50, scope: !1211)
!1215 = !DILocation(line: 156, column: 55, scope: !1211)
!1216 = !DILocation(line: 156, column: 67, scope: !1211)
!1217 = !DILocation(line: 156, column: 72, scope: !1211)
!1218 = !DILocation(line: 156, column: 92, scope: !1211)
!1219 = !DILocation(line: 156, column: 97, scope: !1211)
!1220 = !DILocation(line: 156, column: 77, scope: !1211)
!1221 = !DILocation(line: 156, column: 101, scope: !1211)
!1222 = !DILocation(line: 157, column: 17, scope: !1211)
!1223 = !DILocation(line: 157, column: 22, scope: !1211)
!1224 = !DILocation(line: 157, column: 54, scope: !1211)
!1225 = !DILocation(line: 157, column: 59, scope: !1211)
!1226 = !DILocation(line: 157, column: 39, scope: !1211)
!1227 = !DILocation(line: 157, column: 37, scope: !1211)
!1228 = !DILocation(line: 157, column: 75, scope: !1211)
!1229 = !DILocation(line: 157, column: 80, scope: !1211)
!1230 = !DILocation(line: 155, column: 3, scope: !1211)
!1231 = !DILocation(line: 163, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1205, file: !216, line: 159, column: 3)
!1233 = !DILocation(line: 165, column: 3, scope: !1200)
!1234 = !DILocation(line: 167, column: 1, scope: !1193)
!1235 = distinct !DISubprogram(name: "mpeg_list_packet", scope: !216, file: !216, line: 82, type: !371, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1236 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1235, file: !216, line: 82, type: !6)
!1237 = !DILocation(line: 0, scope: !1235)
!1238 = !DILocalVariable(name: "__cil_tmp6", scope: !1235, file: !216, line: 88, type: !23)
!1239 = !DILocation(line: 88, column: 9, scope: !1235)
!1240 = !DILocalVariable(name: "__cil_tmp7", scope: !1235, file: !216, line: 89, type: !23)
!1241 = !DILocation(line: 89, column: 9, scope: !1235)
!1242 = !DILocalVariable(name: "__cil_tmp8", scope: !1235, file: !216, line: 90, type: !23)
!1243 = !DILocation(line: 90, column: 9, scope: !1235)
!1244 = !DILocalVariable(name: "__cil_tmp9", scope: !1235, file: !216, line: 91, type: !23)
!1245 = !DILocation(line: 91, column: 9, scope: !1235)
!1246 = !DILocalVariable(name: "__cil_tmp10", scope: !1235, file: !216, line: 92, type: !23)
!1247 = !DILocation(line: 92, column: 9, scope: !1235)
!1248 = !DILocalVariable(name: "__cil_tmp11", scope: !1235, file: !216, line: 93, type: !23)
!1249 = !DILocation(line: 93, column: 9, scope: !1235)
!1250 = !DILocalVariable(name: "__cil_tmp12", scope: !1235, file: !216, line: 94, type: !23)
!1251 = !DILocation(line: 94, column: 9, scope: !1235)
!1252 = !DILocalVariable(name: "__cil_tmp13", scope: !1235, file: !216, line: 95, type: !23)
!1253 = !DILocation(line: 95, column: 9, scope: !1235)
!1254 = !DILocalVariable(name: "__cil_tmp14", scope: !1235, file: !216, line: 96, type: !23)
!1255 = !DILocation(line: 96, column: 9, scope: !1235)
!1256 = !DILocalVariable(name: "__cil_tmp15", scope: !1235, file: !216, line: 97, type: !23)
!1257 = !DILocation(line: 97, column: 9, scope: !1235)
!1258 = !DILocation(line: 88, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 88, column: 7)
!1260 = distinct !DILexicalBlock(scope: !1235, file: !216, line: 99, column: 3)
!1261 = !DILocation(line: 88, column: 7, scope: !1260)
!1262 = !DILocation(line: 89, column: 5, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !216, line: 88, column: 22)
!1264 = !DILocation(line: 92, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 91, column: 3)
!1266 = !DILocation(line: 92, column: 22, scope: !1265)
!1267 = !DILocalVariable(name: "sid", scope: !1235, file: !216, line: 85, type: !73)
!1268 = !DILocation(line: 93, column: 16, scope: !1265)
!1269 = !DILocation(line: 93, column: 23, scope: !1265)
!1270 = !DILocalVariable(name: "ssid", scope: !1235, file: !216, line: 86, type: !73)
!1271 = !DILocation(line: 95, column: 26, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !216, line: 94, column: 3)
!1273 = !DILocation(line: 95, column: 47, scope: !1272)
!1274 = !DILocation(line: 95, column: 9, scope: !1272)
!1275 = !DILocalVariable(name: "tmp", scope: !1235, file: !216, line: 87, type: !12)
!1276 = !DILocation(line: 95, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 95, column: 7)
!1278 = !DILocation(line: 95, column: 7, scope: !1260)
!1279 = !DILocation(line: 96, column: 5, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !216, line: 95, column: 12)
!1281 = !DILocation(line: 99, column: 26, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 98, column: 3)
!1283 = !DILocation(line: 99, column: 12, scope: !1282)
!1284 = !DILocalVariable(name: "fp___1", scope: !1235, file: !216, line: 84, type: !15)
!1285 = !DILocation(line: 101, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !216, line: 100, column: 3)
!1287 = !DILocation(line: 104, column: 17, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !216, line: 103, column: 3)
!1289 = !DILocation(line: 104, column: 28, scope: !1288)
!1290 = !DILocation(line: 104, column: 22, scope: !1288)
!1291 = !DILocation(line: 104, column: 41, scope: !1288)
!1292 = !DILocation(line: 104, column: 52, scope: !1288)
!1293 = !DILocation(line: 103, column: 3, scope: !1288)
!1294 = !DILocation(line: 110, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 110, column: 7)
!1296 = !DILocation(line: 110, column: 7, scope: !1260)
!1297 = !DILocation(line: 111, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !216, line: 112, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !216, line: 111, column: 5)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !216, line: 110, column: 20)
!1301 = !DILocation(line: 115, column: 3, scope: !1300)
!1302 = !DILocation(line: 114, column: 5, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !216, line: 117, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !216, line: 116, column: 5)
!1305 = distinct !DILexicalBlock(scope: !1295, file: !216, line: 115, column: 10)
!1306 = !DILocation(line: 117, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 117, column: 7)
!1308 = !DILocation(line: 117, column: 20, scope: !1307)
!1309 = !DILocation(line: 117, column: 25, scope: !1307)
!1310 = !DILocation(line: 117, column: 7, scope: !1260)
!1311 = !DILocation(line: 118, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !216, line: 119, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !216, line: 118, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !216, line: 117, column: 32)
!1315 = !DILocation(line: 121, column: 3, scope: !1314)
!1316 = !DILocation(line: 120, column: 13, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !216, line: 120, column: 7)
!1318 = !DILocation(line: 120, column: 20, scope: !1317)
!1319 = !DILocation(line: 120, column: 25, scope: !1317)
!1320 = !DILocation(line: 120, column: 7, scope: !1307)
!1321 = !DILocation(line: 121, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !216, line: 122, column: 5)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !216, line: 121, column: 5)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !216, line: 120, column: 32)
!1325 = !DILocation(line: 124, column: 3, scope: !1324)
!1326 = !DILocation(line: 124, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !216, line: 126, column: 5)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !216, line: 125, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1317, file: !216, line: 124, column: 10)
!1330 = !DILocation(line: 128, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !216, line: 129, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 128, column: 3)
!1333 = !DILocation(line: 128, column: 24, scope: !1331)
!1334 = !DILocation(line: 127, column: 3, scope: !1331)
!1335 = !DILocation(line: 129, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 129, column: 7)
!1337 = !DILocation(line: 129, column: 20, scope: !1336)
!1338 = !DILocation(line: 129, column: 7, scope: !1336)
!1339 = !DILocation(line: 129, column: 7, scope: !1260)
!1340 = !DILocation(line: 131, column: 19, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !216, line: 131, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !216, line: 130, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !216, line: 129, column: 30)
!1344 = !DILocation(line: 131, column: 26, scope: !1341)
!1345 = !DILocation(line: 131, column: 46, scope: !1341)
!1346 = !DILocation(line: 131, column: 53, scope: !1341)
!1347 = !DILocation(line: 131, column: 31, scope: !1341)
!1348 = !DILocation(line: 131, column: 57, scope: !1341)
!1349 = !DILocation(line: 131, column: 74, scope: !1341)
!1350 = !DILocation(line: 131, column: 81, scope: !1341)
!1351 = !DILocation(line: 132, column: 28, scope: !1341)
!1352 = !DILocation(line: 132, column: 35, scope: !1341)
!1353 = !DILocation(line: 132, column: 13, scope: !1341)
!1354 = !DILocation(line: 132, column: 39, scope: !1341)
!1355 = !DILocation(line: 130, column: 5, scope: !1341)
!1356 = !DILocation(line: 135, column: 3, scope: !1343)
!1357 = !DILocation(line: 129, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1336, file: !216, line: 129, column: 7)
!1359 = !DILocation(line: 129, column: 20, scope: !1358)
!1360 = !DILocation(line: 129, column: 7, scope: !1358)
!1361 = !DILocation(line: 131, column: 19, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !216, line: 131, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !216, line: 130, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !216, line: 129, column: 30)
!1365 = !DILocation(line: 131, column: 26, scope: !1362)
!1366 = !DILocation(line: 131, column: 46, scope: !1362)
!1367 = !DILocation(line: 131, column: 53, scope: !1362)
!1368 = !DILocation(line: 131, column: 31, scope: !1362)
!1369 = !DILocation(line: 131, column: 57, scope: !1362)
!1370 = !DILocation(line: 131, column: 74, scope: !1362)
!1371 = !DILocation(line: 131, column: 81, scope: !1362)
!1372 = !DILocation(line: 132, column: 28, scope: !1362)
!1373 = !DILocation(line: 132, column: 35, scope: !1362)
!1374 = !DILocation(line: 132, column: 13, scope: !1362)
!1375 = !DILocation(line: 132, column: 39, scope: !1362)
!1376 = !DILocation(line: 130, column: 5, scope: !1362)
!1377 = !DILocation(line: 135, column: 3, scope: !1364)
!1378 = !DILocation(line: 137, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !216, line: 137, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1260, file: !216, line: 136, column: 3)
!1381 = !DILocation(line: 139, column: 3, scope: !1260)
!1382 = !DILocation(line: 141, column: 1, scope: !1235)
!1383 = distinct !DISubprogram(name: "mpeg_list_end", scope: !216, file: !216, line: 168, type: !371, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1384 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1383, file: !216, line: 168, type: !6)
!1385 = !DILocation(line: 0, scope: !1383)
!1386 = !DILocalVariable(name: "__cil_tmp3", scope: !1383, file: !216, line: 171, type: !23)
!1387 = !DILocation(line: 171, column: 9, scope: !1383)
!1388 = !DILocation(line: 173, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !216, line: 173, column: 7)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !216, line: 173, column: 3)
!1391 = !DILocation(line: 173, column: 7, scope: !1390)
!1392 = !DILocation(line: 174, column: 5, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !216, line: 173, column: 19)
!1394 = !DILocation(line: 177, column: 26, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !216, line: 176, column: 3)
!1396 = !DILocation(line: 177, column: 12, scope: !1395)
!1397 = !DILocalVariable(name: "fp___1", scope: !1383, file: !216, line: 170, type: !15)
!1398 = !DILocation(line: 179, column: 3, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !216, line: 178, column: 3)
!1400 = !DILocation(line: 182, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !216, line: 181, column: 3)
!1402 = !DILocation(line: 181, column: 3, scope: !1401)
!1403 = !DILocation(line: 183, column: 3, scope: !1390)
!1404 = !DILocation(line: 185, column: 1, scope: !1383)
!1405 = distinct !DISubprogram(name: "mpeg_list_print_skip", scope: !216, file: !216, line: 39, type: !1406, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !15}
!1408 = !DILocalVariable(name: "fp___1", arg: 1, scope: !1405, file: !216, line: 39, type: !15)
!1409 = !DILocation(line: 0, scope: !1405)
!1410 = !DILocalVariable(name: "__cil_tmp2", scope: !1405, file: !216, line: 41, type: !23)
!1411 = !DILocation(line: 41, column: 9, scope: !1405)
!1412 = !DILocation(line: 42, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !216, line: 42, column: 7)
!1414 = distinct !DILexicalBlock(scope: !1405, file: !216, line: 43, column: 3)
!1415 = !DILocation(line: 42, column: 16, scope: !1413)
!1416 = !DILocation(line: 42, column: 7, scope: !1414)
!1417 = !DILocation(line: 44, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !216, line: 44, column: 5)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !216, line: 43, column: 5)
!1420 = distinct !DILexicalBlock(scope: !1413, file: !216, line: 42, column: 23)
!1421 = !DILocation(line: 44, column: 23, scope: !1418)
!1422 = !DILocation(line: 43, column: 5, scope: !1418)
!1423 = !DILocation(line: 45, column: 14, scope: !1419)
!1424 = !DILocation(line: 47, column: 3, scope: !1420)
!1425 = !DILocation(line: 47, column: 3, scope: !1414)
!1426 = distinct !DISubprogram(name: "mpeg_buf_init", scope: !1427, file: !1427, line: 30, type: !1428, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1427 = !DIFile(filename: "/home/wslee/benchmarks/sound/mpegdemux-0.1.3/src/buffer.c", directory: "")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1431 = !DILocalVariable(name: "buf", arg: 1, scope: !1426, file: !1427, line: 30, type: !1430)
!1432 = !DILocation(line: 0, scope: !1426)
!1433 = !DILocation(line: 32, column: 8, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !1427, line: 34, column: 3)
!1435 = !DILocation(line: 32, column: 12, scope: !1434)
!1436 = !DILocation(line: 33, column: 8, scope: !1434)
!1437 = !DILocation(line: 33, column: 12, scope: !1434)
!1438 = !DILocation(line: 34, column: 8, scope: !1434)
!1439 = !DILocation(line: 34, column: 12, scope: !1434)
!1440 = !DILocation(line: 35, column: 3, scope: !1434)
!1441 = distinct !DISubprogram(name: "mpeg_buf_free", scope: !1427, file: !1427, line: 37, type: !1428, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1442 = !DILocalVariable(name: "buf", arg: 1, scope: !1441, file: !1427, line: 37, type: !1430)
!1443 = !DILocation(line: 0, scope: !1441)
!1444 = !DILocation(line: 39, column: 21, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !1427, line: 43, column: 3)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !1427, line: 42, column: 3)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !1427, line: 41, column: 3)
!1448 = !DILocation(line: 39, column: 3, scope: !1445)
!1449 = !DILocation(line: 41, column: 8, scope: !1446)
!1450 = !DILocation(line: 41, column: 12, scope: !1446)
!1451 = !DILocation(line: 42, column: 8, scope: !1446)
!1452 = !DILocation(line: 42, column: 12, scope: !1446)
!1453 = !DILocation(line: 43, column: 8, scope: !1446)
!1454 = !DILocation(line: 43, column: 12, scope: !1446)
!1455 = !DILocation(line: 44, column: 3, scope: !1447)
!1456 = distinct !DISubprogram(name: "mpeg_buf_clear", scope: !1427, file: !1427, line: 46, type: !1428, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1457 = !DILocalVariable(name: "buf", arg: 1, scope: !1456, file: !1427, line: 46, type: !1430)
!1458 = !DILocation(line: 0, scope: !1456)
!1459 = !DILocation(line: 48, column: 8, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !1427, line: 50, column: 3)
!1461 = !DILocation(line: 48, column: 12, scope: !1460)
!1462 = !DILocation(line: 49, column: 3, scope: !1460)
!1463 = distinct !DISubprogram(name: "mpeg_buf_set_max", scope: !1427, file: !1427, line: 51, type: !1464, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!12, !1430, !73}
!1466 = !DILocalVariable(name: "buf", arg: 1, scope: !1463, file: !1427, line: 51, type: !1430)
!1467 = !DILocation(line: 0, scope: !1463)
!1468 = !DILocalVariable(name: "max", arg: 2, scope: !1463, file: !1427, line: 51, type: !73)
!1469 = !DILocation(line: 53, column: 12, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !1427, line: 53, column: 7)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !1427, line: 55, column: 3)
!1472 = !DILocation(line: 53, column: 16, scope: !1470)
!1473 = !DILocation(line: 53, column: 7, scope: !1471)
!1474 = !DILocation(line: 54, column: 5, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !1427, line: 53, column: 24)
!1476 = !DILocation(line: 57, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !1427, line: 57, column: 7)
!1478 = !DILocation(line: 57, column: 7, scope: !1471)
!1479 = !DILocation(line: 58, column: 23, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !1427, line: 59, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !1427, line: 58, column: 5)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !1427, line: 57, column: 18)
!1483 = !DILocation(line: 58, column: 5, scope: !1480)
!1484 = !DILocation(line: 59, column: 10, scope: !1481)
!1485 = !DILocation(line: 59, column: 14, scope: !1481)
!1486 = !DILocation(line: 60, column: 10, scope: !1481)
!1487 = !DILocation(line: 60, column: 14, scope: !1481)
!1488 = !DILocation(line: 61, column: 5, scope: !1482)
!1489 = !DILocation(line: 64, column: 30, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !1427, line: 64, column: 3)
!1491 = distinct !DILexicalBlock(scope: !1471, file: !1427, line: 63, column: 3)
!1492 = !DILocation(line: 64, column: 9, scope: !1490)
!1493 = !DILocalVariable(name: "tmp", scope: !1463, file: !1427, line: 53, type: !66)
!1494 = !DILocation(line: 64, column: 8, scope: !1491)
!1495 = !DILocation(line: 64, column: 12, scope: !1491)
!1496 = !DILocation(line: 65, column: 28, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1471, file: !1427, line: 65, column: 7)
!1498 = !DILocation(line: 65, column: 7, scope: !1497)
!1499 = !DILocation(line: 65, column: 32, scope: !1497)
!1500 = !DILocation(line: 65, column: 7, scope: !1471)
!1501 = !DILocation(line: 66, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !1427, line: 65, column: 64)
!1503 = !DILocation(line: 66, column: 14, scope: !1502)
!1504 = !DILocation(line: 67, column: 10, scope: !1502)
!1505 = !DILocation(line: 67, column: 14, scope: !1502)
!1506 = !DILocation(line: 68, column: 5, scope: !1502)
!1507 = !DILocation(line: 71, column: 8, scope: !1471)
!1508 = !DILocation(line: 71, column: 12, scope: !1471)
!1509 = !DILocation(line: 73, column: 12, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1471, file: !1427, line: 73, column: 7)
!1511 = !DILocation(line: 73, column: 16, scope: !1510)
!1512 = !DILocation(line: 73, column: 7, scope: !1471)
!1513 = !DILocation(line: 74, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !1427, line: 73, column: 23)
!1515 = !DILocation(line: 74, column: 14, scope: !1514)
!1516 = !DILocation(line: 75, column: 3, scope: !1514)
!1517 = !DILocation(line: 77, column: 3, scope: !1471)
!1518 = !DILocation(line: 0, scope: !1471)
!1519 = !DILocation(line: 79, column: 1, scope: !1463)
!1520 = distinct !DISubprogram(name: "mpeg_buf_set_cnt", scope: !1427, file: !1427, line: 80, type: !1464, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1521 = !DILocalVariable(name: "buf", arg: 1, scope: !1520, file: !1427, line: 80, type: !1430)
!1522 = !DILocation(line: 0, scope: !1520)
!1523 = !DILocalVariable(name: "cnt", arg: 2, scope: !1520, file: !1427, line: 80, type: !73)
!1524 = !DILocation(line: 82, column: 18, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !1427, line: 82, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !1427, line: 84, column: 3)
!1527 = !DILocation(line: 82, column: 11, scope: !1525)
!1528 = !DILocation(line: 82, column: 7, scope: !1526)
!1529 = !DILocation(line: 83, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !1427, line: 84, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1427, line: 83, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !1427, line: 82, column: 23)
!1533 = !DILocalVariable(name: "tmp", scope: !1520, file: !1427, line: 82, type: !12)
!1534 = !DILocation(line: 83, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !1427, line: 83, column: 9)
!1536 = !DILocation(line: 83, column: 9, scope: !1532)
!1537 = !DILocation(line: 84, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !1427, line: 83, column: 14)
!1539 = !DILocation(line: 86, column: 3, scope: !1532)
!1540 = !DILocation(line: 88, column: 8, scope: !1526)
!1541 = !DILocation(line: 88, column: 12, scope: !1526)
!1542 = !DILocation(line: 90, column: 3, scope: !1526)
!1543 = !DILocation(line: 0, scope: !1526)
!1544 = !DILocation(line: 92, column: 1, scope: !1520)
!1545 = distinct !DISubprogram(name: "mpeg_buf_read", scope: !1427, file: !1427, line: 93, type: !1546, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!12, !1430, !6, !73}
!1548 = !DILocalVariable(name: "buf", arg: 1, scope: !1545, file: !1427, line: 93, type: !1430)
!1549 = !DILocation(line: 0, scope: !1545)
!1550 = !DILocalVariable(name: "mpeg", arg: 2, scope: !1545, file: !1427, line: 93, type: !6)
!1551 = !DILocalVariable(name: "cnt", arg: 3, scope: !1545, file: !1427, line: 93, type: !73)
!1552 = !DILocation(line: 95, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !1427, line: 99, column: 3)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !1427, line: 98, column: 3)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !1427, line: 97, column: 3)
!1556 = !DILocalVariable(name: "tmp", scope: !1545, file: !1427, line: 95, type: !12)
!1557 = !DILocation(line: 95, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !1427, line: 95, column: 7)
!1559 = !DILocation(line: 95, column: 7, scope: !1555)
!1560 = !DILocation(line: 96, column: 5, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !1427, line: 95, column: 12)
!1562 = !DILocation(line: 99, column: 44, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !1427, line: 99, column: 3)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !1427, line: 98, column: 3)
!1565 = !DILocation(line: 99, column: 14, scope: !1563)
!1566 = !DILocation(line: 99, column: 8, scope: !1563)
!1567 = !DILocation(line: 99, column: 12, scope: !1563)
!1568 = !DILocation(line: 101, column: 12, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1555, file: !1427, line: 101, column: 7)
!1570 = !DILocation(line: 101, column: 16, scope: !1569)
!1571 = !DILocation(line: 101, column: 7, scope: !1555)
!1572 = !DILocation(line: 102, column: 5, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !1427, line: 101, column: 24)
!1574 = !DILocation(line: 105, column: 3, scope: !1555)
!1575 = !DILocation(line: 0, scope: !1555)
!1576 = !DILocation(line: 107, column: 1, scope: !1545)
!1577 = distinct !DISubprogram(name: "mpegd_read", scope: !304, file: !304, line: 236, type: !1578, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!73, !6, !66, !73}
!1580 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1577, file: !304, line: 236, type: !6)
!1581 = !DILocation(line: 0, scope: !1577)
!1582 = !DILocalVariable(name: "buf", arg: 2, scope: !1577, file: !304, line: 236, type: !66)
!1583 = !DILocalVariable(name: "n", arg: 3, scope: !1577, file: !304, line: 236, type: !73)
!1584 = !DILocalVariable(name: "tmp", scope: !1577, file: !304, line: 240, type: !144)
!1585 = !DILocation(line: 244, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !304, line: 244, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1577, file: !304, line: 243, column: 3)
!1588 = !DILocation(line: 244, column: 9, scope: !1586)
!1589 = !DILocation(line: 244, column: 7, scope: !1587)
!1590 = !DILocalVariable(name: "i", scope: !1577, file: !304, line: 239, type: !73)
!1591 = !DILocation(line: 245, column: 3, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !304, line: 244, column: 24)
!1593 = !DILocation(line: 244, column: 15, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !304, line: 245, column: 10)
!1595 = !DILocation(line: 0, scope: !1586)
!1596 = !DILocalVariable(name: "ret", scope: !1577, file: !304, line: 238, type: !73)
!1597 = !DILocation(line: 248, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !304, line: 248, column: 7)
!1599 = !DILocation(line: 248, column: 7, scope: !1587)
!1600 = !DILocation(line: 249, column: 84, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !304, line: 250, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !304, line: 249, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !304, line: 248, column: 15)
!1604 = !DILocation(line: 249, column: 94, scope: !1601)
!1605 = !DILocation(line: 249, column: 78, scope: !1601)
!1606 = !DILocation(line: 249, column: 5, scope: !1601)
!1607 = !DILocation(line: 251, column: 9, scope: !1602)
!1608 = !DILocation(line: 252, column: 11, scope: !1602)
!1609 = !DILocation(line: 252, column: 17, scope: !1602)
!1610 = !DILocation(line: 253, column: 11, scope: !1602)
!1611 = !DILocation(line: 253, column: 17, scope: !1602)
!1612 = !DILocation(line: 254, column: 7, scope: !1602)
!1613 = !DILocation(line: 256, column: 3, scope: !1603)
!1614 = !DILocation(line: 0, scope: !1587)
!1615 = !DILocation(line: 257, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1587, file: !304, line: 257, column: 7)
!1617 = !DILocation(line: 257, column: 7, scope: !1587)
!1618 = !DILocation(line: 258, column: 97, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !304, line: 259, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !304, line: 258, column: 5)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !304, line: 257, column: 15)
!1622 = !DILocation(line: 258, column: 15, scope: !1619)
!1623 = !DILocalVariable(name: "tmp___0", scope: !1577, file: !304, line: 241, type: !71)
!1624 = !DILocation(line: 258, column: 9, scope: !1620)
!1625 = !DILocation(line: 260, column: 3, scope: !1621)
!1626 = !DILocation(line: 261, column: 16, scope: !1587)
!1627 = !DILocation(line: 261, column: 9, scope: !1587)
!1628 = !DILocation(line: 261, column: 13, scope: !1587)
!1629 = !DILocation(line: 263, column: 3, scope: !1587)
!1630 = distinct !DISubprogram(name: "mpeg_buf_write", scope: !1427, file: !1427, line: 108, type: !1631, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!12, !1430, !15}
!1633 = !DILocalVariable(name: "buf", arg: 1, scope: !1630, file: !1427, line: 108, type: !1430)
!1634 = !DILocation(line: 0, scope: !1630)
!1635 = !DILocalVariable(name: "fp___1", arg: 2, scope: !1630, file: !1427, line: 108, type: !15)
!1636 = !DILocation(line: 110, column: 12, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !1427, line: 110, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !1427, line: 112, column: 3)
!1639 = !DILocation(line: 110, column: 16, scope: !1637)
!1640 = !DILocation(line: 110, column: 7, scope: !1638)
!1641 = !DILocation(line: 111, column: 56, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1427, line: 112, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !1427, line: 111, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !1427, line: 110, column: 22)
!1645 = !DILocation(line: 111, column: 78, scope: !1642)
!1646 = !DILocation(line: 111, column: 11, scope: !1642)
!1647 = !DILocalVariable(name: "tmp", scope: !1630, file: !1427, line: 110, type: !71)
!1648 = !DILocation(line: 111, column: 21, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !1427, line: 111, column: 9)
!1650 = !DILocation(line: 111, column: 13, scope: !1649)
!1651 = !DILocation(line: 111, column: 9, scope: !1644)
!1652 = !DILocation(line: 112, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !1427, line: 111, column: 26)
!1654 = !DILocation(line: 114, column: 3, scope: !1644)
!1655 = !DILocation(line: 116, column: 3, scope: !1638)
!1656 = !DILocation(line: 0, scope: !1638)
!1657 = !DILocation(line: 118, column: 1, scope: !1630)
!1658 = distinct !DISubprogram(name: "mpeg_buf_write_clear", scope: !1427, file: !1427, line: 119, type: !1631, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1659 = !DILocalVariable(name: "buf", arg: 1, scope: !1658, file: !1427, line: 119, type: !1430)
!1660 = !DILocation(line: 0, scope: !1658)
!1661 = !DILocalVariable(name: "fp___1", arg: 2, scope: !1658, file: !1427, line: 119, type: !15)
!1662 = !DILocation(line: 121, column: 12, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1427, line: 121, column: 7)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !1427, line: 123, column: 3)
!1665 = !DILocation(line: 121, column: 16, scope: !1663)
!1666 = !DILocation(line: 121, column: 7, scope: !1664)
!1667 = !DILocation(line: 122, column: 56, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1427, line: 123, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1427, line: 122, column: 5)
!1670 = distinct !DILexicalBlock(scope: !1663, file: !1427, line: 121, column: 22)
!1671 = !DILocation(line: 122, column: 78, scope: !1668)
!1672 = !DILocation(line: 122, column: 11, scope: !1668)
!1673 = !DILocalVariable(name: "tmp", scope: !1658, file: !1427, line: 121, type: !71)
!1674 = !DILocation(line: 122, column: 21, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !1427, line: 122, column: 9)
!1676 = !DILocation(line: 122, column: 13, scope: !1675)
!1677 = !DILocation(line: 122, column: 9, scope: !1670)
!1678 = !DILocation(line: 123, column: 12, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !1427, line: 122, column: 26)
!1680 = !DILocation(line: 123, column: 16, scope: !1679)
!1681 = !DILocation(line: 124, column: 7, scope: !1679)
!1682 = !DILocation(line: 126, column: 3, scope: !1670)
!1683 = !DILocation(line: 128, column: 8, scope: !1664)
!1684 = !DILocation(line: 128, column: 12, scope: !1664)
!1685 = !DILocation(line: 130, column: 3, scope: !1664)
!1686 = !DILocation(line: 0, scope: !1664)
!1687 = !DILocation(line: 132, column: 1, scope: !1658)
!1688 = distinct !DISubprogram(name: "mpegd_reset_stats", scope: !304, file: !304, line: 92, type: !841, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1689 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1688, file: !304, line: 92, type: !6)
!1690 = !DILocation(line: 0, scope: !1688)
!1691 = !DILocation(line: 96, column: 9, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !304, line: 96, column: 3)
!1693 = !DILocation(line: 96, column: 18, scope: !1692)
!1694 = !DILocation(line: 97, column: 9, scope: !1692)
!1695 = !DILocation(line: 97, column: 18, scope: !1692)
!1696 = !DILocation(line: 98, column: 9, scope: !1692)
!1697 = !DILocation(line: 98, column: 20, scope: !1692)
!1698 = !DILocation(line: 99, column: 9, scope: !1692)
!1699 = !DILocation(line: 99, column: 17, scope: !1692)
!1700 = !DILocation(line: 100, column: 9, scope: !1692)
!1701 = !DILocation(line: 100, column: 18, scope: !1692)
!1702 = !DILocalVariable(name: "i", scope: !1688, file: !304, line: 94, type: !73)
!1703 = !DILocation(line: 102, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !304, line: 104, column: 3)
!1705 = distinct !DILexicalBlock(scope: !1692, file: !304, line: 103, column: 3)
!1706 = !DILocation(line: 0, scope: !1692)
!1707 = !DILocation(line: 102, column: 13, scope: !1704)
!1708 = !DILocation(line: 102, column: 14, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !304, line: 102, column: 9)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !304, line: 102, column: 13)
!1711 = !DILocation(line: 102, column: 9, scope: !1710)
!1712 = !DILocation(line: 102, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !304, line: 102, column: 23)
!1714 = !DILocation(line: 103, column: 11, scope: !1710)
!1715 = !DILocation(line: 103, column: 5, scope: !1710)
!1716 = !DILocation(line: 103, column: 22, scope: !1710)
!1717 = !DILocation(line: 103, column: 33, scope: !1710)
!1718 = !DILocation(line: 104, column: 11, scope: !1710)
!1719 = !DILocation(line: 104, column: 5, scope: !1710)
!1720 = !DILocation(line: 104, column: 22, scope: !1710)
!1721 = !DILocation(line: 104, column: 27, scope: !1710)
!1722 = !DILocation(line: 105, column: 11, scope: !1710)
!1723 = !DILocation(line: 105, column: 5, scope: !1710)
!1724 = !DILocation(line: 105, column: 25, scope: !1710)
!1725 = !DILocation(line: 105, column: 36, scope: !1710)
!1726 = !DILocation(line: 106, column: 11, scope: !1710)
!1727 = !DILocation(line: 106, column: 5, scope: !1710)
!1728 = !DILocation(line: 106, column: 25, scope: !1710)
!1729 = !DILocation(line: 106, column: 30, scope: !1710)
!1730 = !DILocation(line: 102, column: 7, scope: !1710)
!1731 = distinct !{!1731, !1703, !1732}
!1732 = !DILocation(line: 103, column: 3, scope: !1704)
!1733 = !DILocation(line: 105, column: 3, scope: !1704)
!1734 = !DILocation(line: 108, column: 3, scope: !1692)
!1735 = distinct !DISubprogram(name: "mpegd_open", scope: !304, file: !304, line: 67, type: !1736, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!6, !6, !147}
!1738 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1735, file: !304, line: 67, type: !6)
!1739 = !DILocation(line: 0, scope: !1735)
!1740 = !DILocalVariable(name: "fname", arg: 2, scope: !1735, file: !304, line: 67, type: !147)
!1741 = !DILocalVariable(name: "__cil_tmp4", scope: !1735, file: !304, line: 70, type: !23)
!1742 = !DILocation(line: 70, column: 9, scope: !1735)
!1743 = !DILocation(line: 71, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !304, line: 74, column: 3)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !304, line: 73, column: 3)
!1746 = distinct !DILexicalBlock(scope: !1735, file: !304, line: 72, column: 3)
!1747 = !DILocalVariable(name: "fp___1", scope: !1735, file: !304, line: 69, type: !15)
!1748 = !DILocation(line: 72, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !304, line: 72, column: 7)
!1750 = !DILocation(line: 72, column: 30, scope: !1749)
!1751 = !DILocation(line: 72, column: 7, scope: !1746)
!1752 = !DILocation(line: 73, column: 5, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !304, line: 72, column: 62)
!1754 = !DILocation(line: 76, column: 10, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !304, line: 76, column: 3)
!1756 = distinct !DILexicalBlock(scope: !1746, file: !304, line: 75, column: 3)
!1757 = !DILocation(line: 78, column: 3, scope: !1746)
!1758 = !DILocation(line: 0, scope: !1746)
!1759 = !DILocation(line: 80, column: 1, scope: !1735)
!1760 = distinct !DISubprogram(name: "mpegd_get_bits", scope: !304, file: !304, line: 154, type: !1761, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!116, !6, !73, !73}
!1763 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1760, file: !304, line: 154, type: !6)
!1764 = !DILocation(line: 0, scope: !1760)
!1765 = !DILocalVariable(name: "i", arg: 2, scope: !1760, file: !304, line: 154, type: !73)
!1766 = !DILocalVariable(name: "n", arg: 3, scope: !1760, file: !304, line: 154, type: !73)
!1767 = !DILocation(line: 161, column: 33, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !304, line: 166, column: 3)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !304, line: 165, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1760, file: !304, line: 164, column: 3)
!1771 = !DILocation(line: 161, column: 9, scope: !1768)
!1772 = !DILocalVariable(name: "tmp", scope: !1760, file: !304, line: 162, type: !12)
!1773 = !DILocation(line: 161, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !304, line: 161, column: 7)
!1775 = !DILocation(line: 161, column: 7, scope: !1770)
!1776 = !DILocation(line: 162, column: 5, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !304, line: 161, column: 12)
!1778 = !DILocation(line: 165, column: 15, scope: !1770)
!1779 = !DILocation(line: 165, column: 9, scope: !1770)
!1780 = !DILocation(line: 165, column: 27, scope: !1770)
!1781 = !DILocation(line: 165, column: 19, scope: !1770)
!1782 = !DILocalVariable(name: "buf", scope: !1760, file: !304, line: 161, type: !144)
!1783 = !DILocalVariable(name: "r", scope: !1760, file: !304, line: 156, type: !116)
!1784 = !DILocation(line: 170, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1770, file: !304, line: 170, column: 7)
!1786 = !DILocation(line: 170, column: 16, scope: !1785)
!1787 = !DILocation(line: 170, column: 22, scope: !1785)
!1788 = !DILocation(line: 170, column: 7, scope: !1770)
!1789 = !DILocation(line: 171, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !304, line: 170, column: 29)
!1791 = !DILocation(line: 172, column: 7, scope: !1790)
!1792 = !DILocation(line: 173, column: 5, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !304, line: 174, column: 5)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !304, line: 173, column: 5)
!1795 = !DILocation(line: 0, scope: !1770)
!1796 = !DILocation(line: 0, scope: !1790)
!1797 = !DILocation(line: 173, column: 15, scope: !1793)
!1798 = !DILocation(line: 173, column: 16, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !304, line: 173, column: 11)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !304, line: 173, column: 15)
!1801 = !DILocation(line: 173, column: 11, scope: !1800)
!1802 = !DILocation(line: 173, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !304, line: 173, column: 23)
!1804 = !DILocation(line: 174, column: 14, scope: !1800)
!1805 = !DILocation(line: 174, column: 44, scope: !1800)
!1806 = !DILocation(line: 174, column: 38, scope: !1800)
!1807 = !DILocation(line: 174, column: 22, scope: !1800)
!1808 = !DILocation(line: 174, column: 20, scope: !1800)
!1809 = !DILocation(line: 175, column: 9, scope: !1800)
!1810 = !DILocation(line: 176, column: 9, scope: !1800)
!1811 = distinct !{!1811, !1792, !1812}
!1812 = !DILocation(line: 177, column: 5, scope: !1793)
!1813 = !DILocation(line: 179, column: 5, scope: !1793)
!1814 = !DILocation(line: 178, column: 5, scope: !1790)
!1815 = !DILocation(line: 182, column: 3, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !304, line: 181, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1770, file: !304, line: 180, column: 3)
!1818 = !DILocation(line: 182, column: 13, scope: !1816)
!1819 = !DILocation(line: 182, column: 14, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !304, line: 182, column: 9)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !304, line: 182, column: 13)
!1822 = !DILocation(line: 182, column: 9, scope: !1821)
!1823 = !DILocation(line: 182, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !304, line: 182, column: 21)
!1825 = !DILocation(line: 183, column: 19, scope: !1821)
!1826 = !DILocation(line: 183, column: 14, scope: !1821)
!1827 = !DILocalVariable(name: "b_n", scope: !1760, file: !304, line: 160, type: !73)
!1828 = !DILocation(line: 184, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !304, line: 184, column: 9)
!1830 = !DILocation(line: 184, column: 9, scope: !1821)
!1831 = !DILocation(line: 186, column: 5, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !304, line: 184, column: 18)
!1833 = !DILocation(line: 0, scope: !1821)
!1834 = !DILocation(line: 188, column: 20, scope: !1821)
!1835 = !DILocation(line: 188, column: 15, scope: !1821)
!1836 = !DILocation(line: 188, column: 27, scope: !1821)
!1837 = !DILocalVariable(name: "b_i", scope: !1760, file: !304, line: 159, type: !73)
!1838 = !DILocation(line: 190, column: 29, scope: !1821)
!1839 = !DILocation(line: 190, column: 37, scope: !1821)
!1840 = !DILocation(line: 190, column: 9, scope: !1821)
!1841 = !DILocalVariable(name: "m", scope: !1760, file: !304, line: 158, type: !116)
!1842 = !DILocation(line: 191, column: 43, scope: !1821)
!1843 = !DILocation(line: 191, column: 38, scope: !1821)
!1844 = !DILocation(line: 191, column: 32, scope: !1821)
!1845 = !DILocation(line: 191, column: 26, scope: !1821)
!1846 = !DILocation(line: 191, column: 50, scope: !1821)
!1847 = !DILocation(line: 191, column: 9, scope: !1821)
!1848 = !DILocation(line: 191, column: 58, scope: !1821)
!1849 = !DILocalVariable(name: "v", scope: !1760, file: !304, line: 157, type: !116)
!1850 = !DILocation(line: 193, column: 12, scope: !1821)
!1851 = !DILocation(line: 193, column: 20, scope: !1821)
!1852 = !DILocation(line: 195, column: 7, scope: !1821)
!1853 = !DILocation(line: 196, column: 7, scope: !1821)
!1854 = distinct !{!1854, !1815, !1855}
!1855 = !DILocation(line: 197, column: 3, scope: !1816)
!1856 = !DILocation(line: 199, column: 3, scope: !1816)
!1857 = !DILocation(line: 199, column: 3, scope: !1770)
!1858 = !DILocation(line: 201, column: 1, scope: !1760)
!1859 = distinct !DISubprogram(name: "mpegd_need_bits", scope: !304, file: !304, line: 138, type: !1860, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!12, !6, !73}
!1862 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1859, file: !304, line: 138, type: !6)
!1863 = !DILocation(line: 0, scope: !1859)
!1864 = !DILocalVariable(name: "n", arg: 2, scope: !1859, file: !304, line: 138, type: !73)
!1865 = !DILocation(line: 141, column: 10, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !304, line: 142, column: 3)
!1867 = !DILocation(line: 141, column: 16, scope: !1866)
!1868 = !DILocation(line: 143, column: 17, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !304, line: 143, column: 7)
!1870 = !DILocation(line: 143, column: 9, scope: !1869)
!1871 = !DILocation(line: 143, column: 7, scope: !1866)
!1872 = !DILocation(line: 144, column: 5, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !304, line: 145, column: 5)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !304, line: 144, column: 5)
!1875 = distinct !DILexicalBlock(scope: !1869, file: !304, line: 143, column: 24)
!1876 = !DILocation(line: 147, column: 3, scope: !1875)
!1877 = !DILocation(line: 147, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1866, file: !304, line: 147, column: 7)
!1879 = !DILocation(line: 147, column: 9, scope: !1878)
!1880 = !DILocation(line: 147, column: 7, scope: !1866)
!1881 = !DILocation(line: 148, column: 5, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !304, line: 147, column: 24)
!1883 = !DILocation(line: 151, column: 3, scope: !1866)
!1884 = !DILocation(line: 0, scope: !1866)
!1885 = !DILocation(line: 153, column: 1, scope: !1859)
!1886 = distinct !DISubprogram(name: "mpegd_skip", scope: !304, file: !304, line: 202, type: !1860, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1887 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1886, file: !304, line: 202, type: !6)
!1888 = !DILocation(line: 0, scope: !1886)
!1889 = !DILocalVariable(name: "n", arg: 2, scope: !1886, file: !304, line: 202, type: !73)
!1890 = !DILocation(line: 206, column: 16, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !304, line: 206, column: 3)
!1892 = !DILocation(line: 206, column: 9, scope: !1891)
!1893 = !DILocation(line: 206, column: 13, scope: !1891)
!1894 = !DILocation(line: 208, column: 18, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !304, line: 208, column: 7)
!1896 = !DILocation(line: 208, column: 9, scope: !1895)
!1897 = !DILocation(line: 208, column: 7, scope: !1891)
!1898 = !DILocation(line: 209, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !304, line: 208, column: 25)
!1900 = !DILocation(line: 209, column: 17, scope: !1899)
!1901 = !DILocation(line: 210, column: 11, scope: !1899)
!1902 = !DILocation(line: 210, column: 17, scope: !1899)
!1903 = !DILocation(line: 211, column: 5, scope: !1899)
!1904 = !DILocation(line: 214, column: 14, scope: !1891)
!1905 = !DILocation(line: 214, column: 5, scope: !1891)
!1906 = !DILocation(line: 215, column: 9, scope: !1891)
!1907 = !DILocation(line: 215, column: 15, scope: !1891)
!1908 = !DILocation(line: 216, column: 9, scope: !1891)
!1909 = !DILocation(line: 216, column: 15, scope: !1891)
!1910 = !DILocation(line: 218, column: 3, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !304, line: 218, column: 3)
!1912 = distinct !DILexicalBlock(scope: !1891, file: !304, line: 217, column: 3)
!1913 = !DILocation(line: 0, scope: !1891)
!1914 = !DILocation(line: 218, column: 13, scope: !1911)
!1915 = !DILocation(line: 218, column: 14, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !304, line: 218, column: 9)
!1917 = distinct !DILexicalBlock(scope: !1911, file: !304, line: 218, column: 13)
!1918 = !DILocation(line: 218, column: 9, scope: !1917)
!1919 = !DILocation(line: 218, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !304, line: 218, column: 21)
!1921 = !DILocation(line: 219, column: 11, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !304, line: 219, column: 9)
!1923 = !DILocation(line: 219, column: 9, scope: !1917)
!1924 = !DILocation(line: 220, column: 49, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !304, line: 221, column: 7)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !304, line: 220, column: 7)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !304, line: 219, column: 21)
!1928 = !DILocation(line: 220, column: 42, scope: !1925)
!1929 = !DILocation(line: 220, column: 101, scope: !1925)
!1930 = !DILocation(line: 220, column: 11, scope: !1925)
!1931 = !DILocalVariable(name: "r", scope: !1886, file: !304, line: 204, type: !71)
!1932 = !DILocation(line: 223, column: 5, scope: !1927)
!1933 = !DILocation(line: 223, column: 49, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !304, line: 225, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !304, line: 224, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1922, file: !304, line: 223, column: 12)
!1937 = !DILocation(line: 223, column: 42, scope: !1934)
!1938 = !DILocation(line: 223, column: 113, scope: !1934)
!1939 = !DILocation(line: 223, column: 11, scope: !1934)
!1940 = !DILocation(line: 0, scope: !1922)
!1941 = !DILocation(line: 226, column: 11, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1917, file: !304, line: 226, column: 9)
!1943 = !DILocation(line: 226, column: 9, scope: !1917)
!1944 = !DILocation(line: 227, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !304, line: 226, column: 18)
!1946 = !DILocation(line: 230, column: 7, scope: !1917)
!1947 = distinct !{!1947, !1910, !1948}
!1948 = !DILocation(line: 231, column: 3, scope: !1911)
!1949 = !DILocation(line: 233, column: 3, scope: !1911)
!1950 = !DILocation(line: 233, column: 3, scope: !1891)
!1951 = !DILocation(line: 235, column: 1, scope: !1886)
!1952 = distinct !DISubprogram(name: "mpegd_set_offset", scope: !304, file: !304, line: 266, type: !1953, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!12, !6, !80}
!1955 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1952, file: !304, line: 266, type: !6)
!1956 = !DILocation(line: 0, scope: !1952)
!1957 = !DILocalVariable(name: "ofs", arg: 2, scope: !1952, file: !304, line: 266, type: !80)
!1958 = !DILocation(line: 268, column: 20, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !304, line: 268, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1952, file: !304, line: 270, column: 3)
!1961 = !DILocation(line: 268, column: 11, scope: !1959)
!1962 = !DILocation(line: 268, column: 7, scope: !1960)
!1963 = !DILocation(line: 269, column: 5, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !304, line: 268, column: 25)
!1965 = !DILocation(line: 272, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !304, line: 272, column: 7)
!1967 = !DILocation(line: 272, column: 11, scope: !1966)
!1968 = !DILocation(line: 272, column: 7, scope: !1960)
!1969 = !DILocation(line: 273, column: 73, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !304, line: 274, column: 5)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !304, line: 273, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1966, file: !304, line: 272, column: 24)
!1973 = !DILocation(line: 273, column: 65, scope: !1970)
!1974 = !DILocation(line: 273, column: 28, scope: !1970)
!1975 = !DILocation(line: 273, column: 11, scope: !1970)
!1976 = !DILocalVariable(name: "tmp", scope: !1952, file: !304, line: 268, type: !12)
!1977 = !DILocation(line: 273, column: 5, scope: !1972)
!1978 = !DILocation(line: 276, column: 3, scope: !1960)
!1979 = !DILocation(line: 0, scope: !1960)
!1980 = !DILocation(line: 278, column: 1, scope: !1952)
!1981 = distinct !DISubprogram(name: "mpegd_seek_header", scope: !304, file: !304, line: 279, type: !371, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1982 = !DILocalVariable(name: "mpeg", arg: 1, scope: !1981, file: !304, line: 279, type: !6)
!1983 = !DILocation(line: 0, scope: !1981)
!1984 = !DILocation(line: 284, column: 3, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !304, line: 288, column: 3)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !304, line: 287, column: 3)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !304, line: 286, column: 3)
!1988 = !DILocation(line: 284, column: 13, scope: !1985)
!1989 = !DILocation(line: 284, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !304, line: 288, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !304, line: 287, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !304, line: 284, column: 13)
!1993 = !DILocalVariable(name: "tmp___1", scope: !1981, file: !304, line: 284, type: !116)
!1994 = !DILocation(line: 284, column: 20, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !304, line: 284, column: 9)
!1996 = !DILocation(line: 284, column: 9, scope: !1992)
!1997 = !DILocation(line: 284, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !304, line: 284, column: 29)
!1999 = !DILocation(line: 285, column: 17, scope: !1992)
!2000 = !DILocation(line: 285, column: 21, scope: !1992)
!2001 = !DILocalVariable(name: "ofs", scope: !1981, file: !304, line: 281, type: !80)
!2002 = !DILocation(line: 287, column: 31, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !304, line: 287, column: 9)
!2004 = !DILocation(line: 287, column: 9, scope: !2003)
!2005 = !DILocation(line: 287, column: 41, scope: !2003)
!2006 = !DILocation(line: 287, column: 9, scope: !1992)
!2007 = !DILocation(line: 288, column: 22, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !304, line: 289, column: 7)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !304, line: 288, column: 7)
!2010 = distinct !DILexicalBlock(scope: !2003, file: !304, line: 287, column: 73)
!2011 = !DILocation(line: 288, column: 13, scope: !2008)
!2012 = !DILocalVariable(name: "tmp", scope: !1981, file: !304, line: 282, type: !12)
!2013 = !DILocation(line: 288, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !304, line: 288, column: 11)
!2015 = !DILocation(line: 288, column: 11, scope: !2010)
!2016 = !DILocation(line: 289, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !304, line: 288, column: 16)
!2018 = !DILocation(line: 291, column: 5, scope: !2010)
!2019 = !DILocation(line: 293, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !304, line: 293, column: 5)
!2021 = distinct !DILexicalBlock(scope: !1992, file: !304, line: 292, column: 5)
!2022 = !DILocalVariable(name: "tmp___0", scope: !1981, file: !304, line: 283, type: !12)
!2023 = !DILocation(line: 293, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1992, file: !304, line: 293, column: 9)
!2025 = !DILocation(line: 293, column: 9, scope: !1992)
!2026 = !DILocation(line: 294, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !304, line: 293, column: 18)
!2028 = !DILocation(line: 297, column: 12, scope: !1992)
!2029 = !DILocation(line: 297, column: 22, scope: !1992)
!2030 = distinct !{!2030, !1984, !2031}
!2031 = !DILocation(line: 298, column: 3, scope: !1985)
!2032 = !DILocation(line: 300, column: 3, scope: !1985)
!2033 = !DILocation(line: 300, column: 3, scope: !1987)
!2034 = !DILocation(line: 0, scope: !1987)
!2035 = !DILocation(line: 302, column: 1, scope: !1981)
!2036 = distinct !DISubprogram(name: "mpegd_parse_pack", scope: !304, file: !304, line: 510, type: !371, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2037 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2036, file: !304, line: 510, type: !6)
!2038 = !DILocation(line: 0, scope: !2036)
!2039 = !DILocation(line: 516, column: 13, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !304, line: 531, column: 3)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 530, column: 3)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !304, line: 529, column: 3)
!2043 = !DILocalVariable(name: "tmp___7", scope: !2036, file: !304, line: 522, type: !116)
!2044 = !DILocation(line: 516, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 516, column: 7)
!2046 = !DILocation(line: 516, column: 7, scope: !2042)
!2047 = !DILocation(line: 517, column: 11, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !304, line: 517, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !304, line: 516, column: 23)
!2050 = !DILocation(line: 517, column: 16, scope: !2048)
!2051 = !DILocation(line: 517, column: 21, scope: !2048)
!2052 = !DILocation(line: 518, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !304, line: 518, column: 5)
!2054 = !DILocalVariable(name: "tmp", scope: !2036, file: !304, line: 514, type: !116)
!2055 = !DILocation(line: 518, column: 11, scope: !2048)
!2056 = !DILocation(line: 518, column: 16, scope: !2048)
!2057 = !DILocation(line: 518, column: 20, scope: !2048)
!2058 = !DILocation(line: 519, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2048, file: !304, line: 519, column: 5)
!2060 = !DILocalVariable(name: "tmp___0", scope: !2036, file: !304, line: 515, type: !116)
!2061 = !DILocation(line: 519, column: 29, scope: !2048)
!2062 = !DILocation(line: 519, column: 34, scope: !2048)
!2063 = !DILocation(line: 519, column: 38, scope: !2048)
!2064 = !DILocation(line: 519, column: 45, scope: !2048)
!2065 = !DILocation(line: 519, column: 11, scope: !2048)
!2066 = !DILocation(line: 519, column: 16, scope: !2048)
!2067 = !DILocation(line: 519, column: 20, scope: !2048)
!2068 = !DILocation(line: 520, column: 15, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2048, file: !304, line: 520, column: 5)
!2070 = !DILocalVariable(name: "tmp___1", scope: !2036, file: !304, line: 516, type: !116)
!2071 = !DILocation(line: 520, column: 29, scope: !2048)
!2072 = !DILocation(line: 520, column: 34, scope: !2048)
!2073 = !DILocation(line: 520, column: 38, scope: !2048)
!2074 = !DILocation(line: 520, column: 45, scope: !2048)
!2075 = !DILocation(line: 520, column: 11, scope: !2048)
!2076 = !DILocation(line: 520, column: 16, scope: !2048)
!2077 = !DILocation(line: 520, column: 20, scope: !2048)
!2078 = !DILocation(line: 521, column: 27, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2048, file: !304, line: 521, column: 5)
!2080 = !DILocation(line: 521, column: 11, scope: !2079)
!2081 = !DILocation(line: 521, column: 16, scope: !2079)
!2082 = !DILocation(line: 521, column: 25, scope: !2079)
!2083 = !DILocation(line: 522, column: 11, scope: !2048)
!2084 = !DILocation(line: 522, column: 16, scope: !2048)
!2085 = !DILocation(line: 522, column: 22, scope: !2048)
!2086 = !DILocation(line: 523, column: 11, scope: !2048)
!2087 = !DILocation(line: 523, column: 16, scope: !2048)
!2088 = !DILocation(line: 523, column: 21, scope: !2048)
!2089 = !DILocation(line: 525, column: 3, scope: !2049)
!2090 = !DILocation(line: 525, column: 15, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !304, line: 527, column: 5)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !304, line: 526, column: 5)
!2093 = distinct !DILexicalBlock(scope: !2045, file: !304, line: 525, column: 10)
!2094 = !DILocalVariable(name: "tmp___6", scope: !2036, file: !304, line: 521, type: !116)
!2095 = !DILocation(line: 525, column: 17, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !304, line: 525, column: 9)
!2097 = !DILocation(line: 525, column: 9, scope: !2093)
!2098 = !DILocation(line: 526, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !304, line: 526, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !304, line: 525, column: 25)
!2101 = !DILocation(line: 526, column: 18, scope: !2099)
!2102 = !DILocation(line: 526, column: 23, scope: !2099)
!2103 = !DILocation(line: 527, column: 17, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !304, line: 527, column: 7)
!2105 = !DILocalVariable(name: "tmp___2", scope: !2036, file: !304, line: 517, type: !116)
!2106 = !DILocation(line: 527, column: 13, scope: !2099)
!2107 = !DILocation(line: 527, column: 18, scope: !2099)
!2108 = !DILocation(line: 527, column: 22, scope: !2099)
!2109 = !DILocation(line: 528, column: 17, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2099, file: !304, line: 528, column: 7)
!2111 = !DILocalVariable(name: "tmp___3", scope: !2036, file: !304, line: 518, type: !116)
!2112 = !DILocation(line: 528, column: 31, scope: !2099)
!2113 = !DILocation(line: 528, column: 36, scope: !2099)
!2114 = !DILocation(line: 528, column: 40, scope: !2099)
!2115 = !DILocation(line: 528, column: 47, scope: !2099)
!2116 = !DILocation(line: 528, column: 13, scope: !2099)
!2117 = !DILocation(line: 528, column: 18, scope: !2099)
!2118 = !DILocation(line: 528, column: 22, scope: !2099)
!2119 = !DILocation(line: 529, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2099, file: !304, line: 529, column: 7)
!2121 = !DILocalVariable(name: "tmp___4", scope: !2036, file: !304, line: 519, type: !116)
!2122 = !DILocation(line: 529, column: 31, scope: !2099)
!2123 = !DILocation(line: 529, column: 36, scope: !2099)
!2124 = !DILocation(line: 529, column: 40, scope: !2099)
!2125 = !DILocation(line: 529, column: 47, scope: !2099)
!2126 = !DILocation(line: 529, column: 13, scope: !2099)
!2127 = !DILocation(line: 529, column: 18, scope: !2099)
!2128 = !DILocation(line: 529, column: 22, scope: !2099)
!2129 = !DILocation(line: 530, column: 29, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2099, file: !304, line: 530, column: 7)
!2131 = !DILocation(line: 530, column: 13, scope: !2130)
!2132 = !DILocation(line: 530, column: 18, scope: !2130)
!2133 = !DILocation(line: 530, column: 27, scope: !2130)
!2134 = !DILocation(line: 531, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2099, file: !304, line: 532, column: 7)
!2136 = !DILocalVariable(name: "tmp___5", scope: !2036, file: !304, line: 520, type: !116)
!2137 = !DILocation(line: 531, column: 26, scope: !2099)
!2138 = !DILocation(line: 531, column: 13, scope: !2099)
!2139 = !DILocation(line: 531, column: 18, scope: !2099)
!2140 = !DILocation(line: 531, column: 24, scope: !2099)
!2141 = !DILocation(line: 532, column: 37, scope: !2099)
!2142 = !DILocation(line: 532, column: 42, scope: !2099)
!2143 = !DILocation(line: 532, column: 29, scope: !2099)
!2144 = !DILocation(line: 532, column: 13, scope: !2099)
!2145 = !DILocation(line: 532, column: 18, scope: !2099)
!2146 = !DILocation(line: 532, column: 23, scope: !2099)
!2147 = !DILocation(line: 534, column: 5, scope: !2100)
!2148 = !DILocation(line: 535, column: 13, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2096, file: !304, line: 534, column: 12)
!2150 = !DILocation(line: 535, column: 18, scope: !2149)
!2151 = !DILocation(line: 535, column: 23, scope: !2149)
!2152 = !DILocation(line: 536, column: 13, scope: !2149)
!2153 = !DILocation(line: 536, column: 18, scope: !2149)
!2154 = !DILocation(line: 536, column: 22, scope: !2149)
!2155 = !DILocation(line: 537, column: 13, scope: !2149)
!2156 = !DILocation(line: 537, column: 18, scope: !2149)
!2157 = !DILocation(line: 537, column: 27, scope: !2149)
!2158 = !DILocation(line: 538, column: 13, scope: !2149)
!2159 = !DILocation(line: 538, column: 18, scope: !2149)
!2160 = !DILocation(line: 538, column: 23, scope: !2149)
!2161 = !DILocation(line: 541, column: 15, scope: !2042)
!2162 = !DILocation(line: 541, column: 48, scope: !2042)
!2163 = !DILocation(line: 541, column: 53, scope: !2042)
!2164 = !DILocation(line: 541, column: 21, scope: !2042)
!2165 = !DILocation(line: 541, column: 19, scope: !2042)
!2166 = !DILocalVariable(name: "ofs", scope: !2036, file: !304, line: 513, type: !80)
!2167 = !DILocation(line: 543, column: 10, scope: !2042)
!2168 = !DILocation(line: 543, column: 20, scope: !2042)
!2169 = !DILocation(line: 545, column: 29, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 545, column: 7)
!2171 = !DILocation(line: 545, column: 7, scope: !2170)
!2172 = !DILocation(line: 545, column: 39, scope: !2170)
!2173 = !DILocation(line: 545, column: 7, scope: !2042)
!2174 = !DILocation(line: 546, column: 24, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !304, line: 547, column: 5)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !304, line: 546, column: 5)
!2177 = distinct !DILexicalBlock(scope: !2170, file: !304, line: 545, column: 71)
!2178 = !DILocation(line: 546, column: 15, scope: !2175)
!2179 = !DILocalVariable(name: "tmp___8", scope: !2036, file: !304, line: 523, type: !12)
!2180 = !DILocation(line: 546, column: 9, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !304, line: 546, column: 9)
!2182 = !DILocation(line: 546, column: 9, scope: !2177)
!2183 = !DILocation(line: 547, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !304, line: 546, column: 18)
!2185 = !DILocation(line: 549, column: 3, scope: !2177)
!2186 = !DILocation(line: 551, column: 3, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !304, line: 551, column: 3)
!2188 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 550, column: 3)
!2189 = !DILocation(line: 553, column: 3, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2188, file: !304, line: 553, column: 3)
!2191 = !DILocation(line: 555, column: 14, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !304, line: 555, column: 3)
!2193 = !DILocalVariable(name: "tmp___10", scope: !2036, file: !304, line: 525, type: !116)
!2194 = !DILocation(line: 555, column: 16, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 555, column: 7)
!2196 = !DILocation(line: 555, column: 7, scope: !2042)
!2197 = !DILocation(line: 556, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !304, line: 557, column: 5)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !304, line: 556, column: 5)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !304, line: 555, column: 26)
!2201 = !DILocalVariable(name: "tmp___9", scope: !2036, file: !304, line: 524, type: !12)
!2202 = !DILocation(line: 556, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !304, line: 556, column: 9)
!2204 = !DILocation(line: 556, column: 9, scope: !2200)
!2205 = !DILocation(line: 557, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !304, line: 556, column: 18)
!2207 = !DILocation(line: 560, column: 5, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !304, line: 560, column: 5)
!2209 = distinct !DILexicalBlock(scope: !2200, file: !304, line: 559, column: 5)
!2210 = !DILocation(line: 563, column: 3, scope: !2200)
!2211 = !DILocation(line: 563, column: 3, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !304, line: 565, column: 3)
!2213 = distinct !DILexicalBlock(scope: !2042, file: !304, line: 564, column: 3)
!2214 = !DILocation(line: 563, column: 13, scope: !2212)
!2215 = !DILocation(line: 563, column: 16, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !304, line: 567, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !304, line: 566, column: 5)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !304, line: 563, column: 13)
!2219 = !DILocalVariable(name: "tmp___12", scope: !2036, file: !304, line: 527, type: !116)
!2220 = !DILocation(line: 563, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !304, line: 563, column: 9)
!2222 = !DILocation(line: 563, column: 9, scope: !2218)
!2223 = !DILocation(line: 563, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !304, line: 563, column: 30)
!2225 = !DILocation(line: 564, column: 16, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !304, line: 566, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !304, line: 565, column: 5)
!2228 = !DILocalVariable(name: "tmp___11", scope: !2036, file: !304, line: 526, type: !116)
!2229 = !DILocation(line: 564, column: 11, scope: !2227)
!2230 = !DILocalVariable(name: "sid", scope: !2036, file: !304, line: 512, type: !73)
!2231 = !DILocation(line: 566, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2218, file: !304, line: 566, column: 9)
!2233 = !DILocation(line: 566, column: 9, scope: !2218)
!2234 = !DILocation(line: 567, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !304, line: 566, column: 22)
!2236 = !DILocation(line: 566, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !304, line: 566, column: 9)
!2238 = !DILocation(line: 566, column: 9, scope: !2232)
!2239 = !DILocation(line: 567, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !304, line: 566, column: 22)
!2241 = !DILocation(line: 566, column: 13, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !304, line: 566, column: 9)
!2243 = !DILocation(line: 566, column: 9, scope: !2237)
!2244 = !DILocation(line: 567, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !304, line: 566, column: 22)
!2246 = !DILocation(line: 570, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !304, line: 570, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !304, line: 569, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2242, file: !304, line: 568, column: 12)
!2250 = !DILocation(line: 573, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !304, line: 575, column: 5)
!2252 = distinct !DILexicalBlock(scope: !2218, file: !304, line: 574, column: 5)
!2253 = distinct !{!2253, !2211, !2254}
!2254 = !DILocation(line: 576, column: 3, scope: !2212)
!2255 = !DILocation(line: 578, column: 3, scope: !2212)
!2256 = !DILocation(line: 576, column: 3, scope: !2042)
!2257 = !DILocation(line: 0, scope: !2042)
!2258 = !DILocation(line: 578, column: 1, scope: !2036)
!2259 = distinct !DISubprogram(name: "msg_set_level", scope: !221, file: !221, line: 35, type: !2260, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !73}
!2262 = !DILocalVariable(name: "level", arg: 1, scope: !2259, file: !221, line: 35, type: !73)
!2263 = !DILocation(line: 0, scope: !2259)
!2264 = !DILocation(line: 37, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !221, line: 39, column: 3)
!2266 = !DILocation(line: 38, column: 3, scope: !2265)
!2267 = distinct !DISubprogram(name: "msg_get_level", scope: !221, file: !221, line: 40, type: !2268, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!73}
!2270 = !DILocation(line: 42, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !221, line: 44, column: 3)
!2272 = !DILocation(line: 42, column: 3, scope: !2271)
!2273 = distinct !DISubprogram(name: "prt_msg_va", scope: !221, file: !221, line: 45, type: !2274, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !73, !147, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 44, size: 192, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2277, file: !3, line: 44, baseType: !73, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2277, file: !3, line: 44, baseType: !73, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2277, file: !3, line: 44, baseType: !66, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2277, file: !3, line: 44, baseType: !66, size: 64, offset: 128)
!2283 = !DILocalVariable(name: "level", arg: 1, scope: !2273, file: !221, line: 45, type: !73)
!2284 = !DILocation(line: 0, scope: !2273)
!2285 = !DILocalVariable(name: "msg", arg: 2, scope: !2273, file: !221, line: 45, type: !147)
!2286 = !DILocalVariable(name: "va", arg: 3, scope: !2273, file: !221, line: 45, type: !2276)
!2287 = !DILocation(line: 47, column: 16, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !221, line: 47, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2273, file: !221, line: 49, column: 3)
!2290 = !DILocation(line: 47, column: 13, scope: !2288)
!2291 = !DILocation(line: 47, column: 7, scope: !2289)
!2292 = !DILocation(line: 48, column: 39, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !221, line: 49, column: 5)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !221, line: 48, column: 5)
!2295 = distinct !DILexicalBlock(scope: !2288, file: !221, line: 47, column: 27)
!2296 = !DILocation(line: 48, column: 5, scope: !2293)
!2297 = !DILocation(line: 49, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !221, line: 51, column: 5)
!2299 = !DILocation(line: 49, column: 5, scope: !2298)
!2300 = !DILocation(line: 52, column: 3, scope: !2295)
!2301 = !DILocation(line: 51, column: 3, scope: !2289)
!2302 = distinct !DISubprogram(name: "prt_message", scope: !221, file: !221, line: 53, type: !2303, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !73, !147, null}
!2305 = !DILocalVariable(name: "level", arg: 1, scope: !2302, file: !221, line: 53, type: !73)
!2306 = !DILocation(line: 0, scope: !2302)
!2307 = !DILocalVariable(name: "msg", arg: 2, scope: !2302, file: !221, line: 53, type: !147)
!2308 = !DILocalVariable(name: "va", scope: !2302, file: !221, line: 55, type: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2310, line: 102, baseType: !2311)
!2310 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stdarg.h", directory: "")
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2310, line: 40, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 55, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2277, size: 192, elements: !56)
!2314 = !DILocation(line: 55, column: 11, scope: !2302)
!2315 = !DILocation(line: 57, column: 16, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !221, line: 57, column: 7)
!2317 = distinct !DILexicalBlock(scope: !2302, file: !221, line: 57, column: 3)
!2318 = !DILocation(line: 57, column: 13, scope: !2316)
!2319 = !DILocation(line: 57, column: 7, scope: !2317)
!2320 = !DILocation(line: 58, column: 5, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !221, line: 59, column: 5)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !221, line: 58, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2316, file: !221, line: 57, column: 27)
!2324 = !DILocation(line: 59, column: 28, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !221, line: 60, column: 5)
!2326 = !DILocation(line: 59, column: 5, scope: !2325)
!2327 = !DILocation(line: 60, column: 5, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2322, file: !221, line: 61, column: 5)
!2329 = !DILocation(line: 63, column: 3, scope: !2323)
!2330 = !DILocation(line: 62, column: 3, scope: !2317)
!2331 = distinct !DISubprogram(name: "prt_err", scope: !221, file: !221, line: 64, type: !2332, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !147, null}
!2334 = !DILocalVariable(name: "msg", arg: 1, scope: !2331, file: !221, line: 64, type: !147)
!2335 = !DILocation(line: 0, scope: !2331)
!2336 = !DILocalVariable(name: "va", scope: !2331, file: !221, line: 66, type: !2309)
!2337 = !DILocation(line: 66, column: 11, scope: !2331)
!2338 = !DILocation(line: 68, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !221, line: 68, column: 7)
!2340 = distinct !DILexicalBlock(scope: !2331, file: !221, line: 68, column: 3)
!2341 = !DILocation(line: 68, column: 10, scope: !2339)
!2342 = !DILocation(line: 68, column: 7, scope: !2340)
!2343 = !DILocation(line: 69, column: 5, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !221, line: 70, column: 5)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !221, line: 69, column: 5)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !221, line: 68, column: 24)
!2347 = !DILocation(line: 70, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !221, line: 71, column: 5)
!2349 = !DILocation(line: 70, column: 5, scope: !2348)
!2350 = !DILocation(line: 71, column: 5, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !221, line: 72, column: 5)
!2352 = !DILocation(line: 74, column: 3, scope: !2346)
!2353 = !DILocation(line: 73, column: 3, scope: !2340)
!2354 = distinct !DISubprogram(name: "prt_msg", scope: !221, file: !221, line: 75, type: !2332, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2355 = !DILocalVariable(name: "msg", arg: 1, scope: !2354, file: !221, line: 75, type: !147)
!2356 = !DILocation(line: 0, scope: !2354)
!2357 = !DILocalVariable(name: "va", scope: !2354, file: !221, line: 77, type: !2309)
!2358 = !DILocation(line: 77, column: 11, scope: !2354)
!2359 = !DILocation(line: 79, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !221, line: 79, column: 7)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !221, line: 79, column: 3)
!2362 = !DILocation(line: 79, column: 10, scope: !2360)
!2363 = !DILocation(line: 79, column: 7, scope: !2361)
!2364 = !DILocation(line: 80, column: 5, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !221, line: 81, column: 5)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !221, line: 80, column: 5)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !221, line: 79, column: 24)
!2368 = !DILocation(line: 81, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !221, line: 82, column: 5)
!2370 = !DILocation(line: 81, column: 5, scope: !2369)
!2371 = !DILocation(line: 82, column: 5, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2366, file: !221, line: 83, column: 5)
!2373 = !DILocation(line: 85, column: 3, scope: !2367)
!2374 = !DILocation(line: 84, column: 3, scope: !2361)
!2375 = distinct !DISubprogram(name: "prt_deb", scope: !221, file: !221, line: 86, type: !2332, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2376 = !DILocalVariable(name: "msg", arg: 1, scope: !2375, file: !221, line: 86, type: !147)
!2377 = !DILocation(line: 0, scope: !2375)
!2378 = !DILocalVariable(name: "va", scope: !2375, file: !221, line: 88, type: !2309)
!2379 = !DILocation(line: 88, column: 11, scope: !2375)
!2380 = !DILocation(line: 90, column: 13, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !221, line: 90, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2375, file: !221, line: 90, column: 3)
!2383 = !DILocation(line: 90, column: 10, scope: !2381)
!2384 = !DILocation(line: 90, column: 7, scope: !2382)
!2385 = !DILocation(line: 91, column: 5, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !221, line: 92, column: 5)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !221, line: 91, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !221, line: 90, column: 24)
!2389 = !DILocation(line: 92, column: 25, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !221, line: 93, column: 5)
!2391 = !DILocation(line: 92, column: 5, scope: !2390)
!2392 = !DILocation(line: 93, column: 5, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2387, file: !221, line: 94, column: 5)
!2394 = !DILocation(line: 96, column: 3, scope: !2388)
!2395 = !DILocation(line: 95, column: 3, scope: !2382)
!2396 = distinct !DISubprogram(name: "mpeg_remux", scope: !224, file: !224, line: 198, type: !244, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2397 = !DILocalVariable(name: "inp", arg: 1, scope: !2396, file: !224, line: 198, type: !15)
!2398 = !DILocation(line: 0, scope: !2396)
!2399 = !DILocalVariable(name: "out", arg: 2, scope: !2396, file: !224, line: 198, type: !15)
!2400 = !DILocalVariable(name: "buf", scope: !2396, file: !224, line: 203, type: !2401)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !2402)
!2402 = !{!2403}
!2403 = !DISubrange(count: 4)
!2404 = !DILocation(line: 203, column: 17, scope: !2396)
!2405 = !DILocalVariable(name: "__cil_tmp7", scope: !2396, file: !224, line: 204, type: !66)
!2406 = !DILocation(line: 204, column: 9, scope: !2396)
!2407 = !DILocation(line: 203, column: 10, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !224, line: 208, column: 3)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 207, column: 3)
!2410 = distinct !DILexicalBlock(scope: !2396, file: !224, line: 206, column: 3)
!2411 = !DILocalVariable(name: "mpeg", scope: !2396, file: !224, line: 201, type: !6)
!2412 = !DILocation(line: 204, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 204, column: 7)
!2414 = !DILocation(line: 204, column: 28, scope: !2413)
!2415 = !DILocation(line: 204, column: 7, scope: !2410)
!2416 = !DILocation(line: 205, column: 5, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !224, line: 204, column: 60)
!2418 = !DILocation(line: 208, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 208, column: 7)
!2420 = !DILocation(line: 208, column: 7, scope: !2410)
!2421 = !DILocation(line: 209, column: 11, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !224, line: 209, column: 5)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !224, line: 208, column: 18)
!2424 = !DILocation(line: 209, column: 15, scope: !2422)
!2425 = !DILocation(line: 210, column: 14, scope: !2422)
!2426 = !DILocation(line: 212, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !224, line: 211, column: 5)
!2428 = !DILocalVariable(name: "tmp", scope: !2396, file: !224, line: 202, type: !12)
!2429 = !DILocation(line: 212, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2423, file: !224, line: 212, column: 9)
!2431 = !DILocation(line: 212, column: 9, scope: !2423)
!2432 = !DILocation(line: 213, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !224, line: 212, column: 14)
!2434 = !DILocation(line: 215, column: 3, scope: !2423)
!2435 = !DILocation(line: 217, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2419, file: !224, line: 215, column: 10)
!2437 = !DILocation(line: 217, column: 11, scope: !2436)
!2438 = !DILocation(line: 217, column: 15, scope: !2436)
!2439 = !DILocation(line: 220, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 219, column: 3)
!2441 = !DILocation(line: 220, column: 19, scope: !2440)
!2442 = !DILocation(line: 221, column: 9, scope: !2440)
!2443 = !DILocation(line: 221, column: 28, scope: !2440)
!2444 = !DILocation(line: 222, column: 9, scope: !2440)
!2445 = !DILocation(line: 222, column: 19, scope: !2440)
!2446 = !DILocation(line: 223, column: 9, scope: !2440)
!2447 = !DILocation(line: 223, column: 21, scope: !2440)
!2448 = !DILocation(line: 224, column: 9, scope: !2440)
!2449 = !DILocation(line: 224, column: 27, scope: !2440)
!2450 = !DILocation(line: 225, column: 9, scope: !2440)
!2451 = !DILocation(line: 225, column: 18, scope: !2440)
!2452 = !DILocation(line: 227, column: 3, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2440, file: !224, line: 226, column: 3)
!2454 = !DILocation(line: 228, column: 3, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2440, file: !224, line: 229, column: 3)
!2456 = !DILocation(line: 229, column: 3, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2440, file: !224, line: 230, column: 3)
!2458 = !DILocation(line: 231, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2440, file: !224, line: 231, column: 3)
!2460 = !DILocalVariable(name: "r", scope: !2396, file: !224, line: 200, type: !12)
!2461 = !DILocation(line: 233, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 233, column: 7)
!2463 = !DILocation(line: 233, column: 7, scope: !2410)
!2464 = !DILocation(line: 236, column: 5, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !224, line: 234, column: 5)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !224, line: 233, column: 19)
!2467 = !DILocation(line: 236, column: 12, scope: !2465)
!2468 = !DILocation(line: 237, column: 5, scope: !2465)
!2469 = !DILocation(line: 237, column: 12, scope: !2465)
!2470 = !DILocation(line: 238, column: 5, scope: !2465)
!2471 = !DILocation(line: 238, column: 12, scope: !2465)
!2472 = !DILocation(line: 239, column: 5, scope: !2465)
!2473 = !DILocation(line: 239, column: 12, scope: !2465)
!2474 = !DILocation(line: 241, column: 45, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2465, file: !224, line: 240, column: 5)
!2476 = !DILocation(line: 241, column: 116, scope: !2475)
!2477 = !DILocation(line: 241, column: 102, scope: !2475)
!2478 = !DILocation(line: 241, column: 5, scope: !2475)
!2479 = !DILocation(line: 244, column: 3, scope: !2466)
!2480 = !DILocation(line: 244, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 244, column: 7)
!2482 = !DILocation(line: 244, column: 7, scope: !2410)
!2483 = !DILocation(line: 245, column: 26, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !224, line: 246, column: 5)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !224, line: 245, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !224, line: 244, column: 18)
!2487 = !DILocation(line: 245, column: 12, scope: !2484)
!2488 = !DILocation(line: 245, column: 5, scope: !2484)
!2489 = !DILocation(line: 246, column: 11, scope: !2485)
!2490 = !DILocation(line: 246, column: 15, scope: !2485)
!2491 = !DILocation(line: 248, column: 3, scope: !2486)
!2492 = !DILocation(line: 249, column: 3, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !224, line: 250, column: 3)
!2494 = distinct !DILexicalBlock(scope: !2410, file: !224, line: 249, column: 3)
!2495 = !DILocation(line: 251, column: 3, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2494, file: !224, line: 251, column: 3)
!2497 = !DILocation(line: 252, column: 3, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !224, line: 253, column: 3)
!2499 = !DILocation(line: 253, column: 3, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !224, line: 254, column: 3)
!2501 = !DILocation(line: 255, column: 3, scope: !2410)
!2502 = !DILocation(line: 0, scope: !2410)
!2503 = !DILocation(line: 257, column: 1, scope: !2396)
!2504 = distinct !DISubprogram(name: "mpeg_remux_next_fp", scope: !224, file: !224, line: 47, type: !371, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2505 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2504, file: !224, line: 47, type: !6)
!2506 = !DILocation(line: 0, scope: !2504)
!2507 = !DILocalVariable(name: "__cil_tmp4", scope: !2504, file: !224, line: 51, type: !23)
!2508 = !DILocation(line: 51, column: 9, scope: !2504)
!2509 = !DILocation(line: 53, column: 26, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !224, line: 53, column: 3)
!2511 = !DILocation(line: 53, column: 12, scope: !2510)
!2512 = !DILocalVariable(name: "fp___1", scope: !2504, file: !224, line: 50, type: !15)
!2513 = !DILocation(line: 54, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !224, line: 54, column: 7)
!2515 = !DILocation(line: 54, column: 30, scope: !2514)
!2516 = !DILocation(line: 54, column: 7, scope: !2510)
!2517 = !DILocation(line: 55, column: 5, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !224, line: 56, column: 5)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !224, line: 55, column: 5)
!2520 = distinct !DILexicalBlock(scope: !2514, file: !224, line: 54, column: 62)
!2521 = !DILocation(line: 56, column: 11, scope: !2519)
!2522 = !DILocation(line: 56, column: 15, scope: !2519)
!2523 = !DILocation(line: 58, column: 3, scope: !2520)
!2524 = !DILocation(line: 59, column: 41, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !224, line: 60, column: 3)
!2526 = distinct !DILexicalBlock(scope: !2510, file: !224, line: 59, column: 3)
!2527 = !DILocation(line: 59, column: 57, scope: !2525)
!2528 = !DILocation(line: 59, column: 11, scope: !2525)
!2529 = !DILocalVariable(name: "fname", scope: !2504, file: !224, line: 49, type: !23)
!2530 = !DILocation(line: 60, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2510, file: !224, line: 60, column: 7)
!2532 = !DILocation(line: 60, column: 29, scope: !2531)
!2533 = !DILocation(line: 60, column: 7, scope: !2510)
!2534 = !DILocation(line: 61, column: 5, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !224, line: 60, column: 61)
!2536 = !DILocation(line: 64, column: 12, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2510, file: !224, line: 63, column: 3)
!2538 = !DILocation(line: 66, column: 12, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2537, file: !224, line: 65, column: 3)
!2540 = !DILocation(line: 68, column: 3, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !224, line: 68, column: 3)
!2542 = !DILocation(line: 70, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2510, file: !224, line: 70, column: 7)
!2544 = !DILocation(line: 70, column: 30, scope: !2543)
!2545 = !DILocation(line: 70, column: 7, scope: !2510)
!2546 = !DILocation(line: 71, column: 5, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !224, line: 70, column: 62)
!2548 = !DILocation(line: 74, column: 15, scope: !2510)
!2549 = !DILocation(line: 74, column: 9, scope: !2510)
!2550 = !DILocation(line: 74, column: 13, scope: !2510)
!2551 = !DILocation(line: 76, column: 3, scope: !2510)
!2552 = !DILocation(line: 0, scope: !2510)
!2553 = !DILocation(line: 78, column: 1, scope: !2504)
!2554 = distinct !DISubprogram(name: "mpeg_remux_skip", scope: !224, file: !224, line: 79, type: !371, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2555 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2554, file: !224, line: 79, type: !6)
!2556 = !DILocation(line: 0, scope: !2554)
!2557 = !DILocation(line: 82, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !224, line: 82, column: 7)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !224, line: 83, column: 3)
!2560 = !DILocation(line: 82, column: 25, scope: !2558)
!2561 = !DILocation(line: 82, column: 7, scope: !2559)
!2562 = !DILocation(line: 83, column: 5, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !224, line: 82, column: 31)
!2564 = !DILocation(line: 86, column: 39, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !224, line: 86, column: 3)
!2566 = distinct !DILexicalBlock(scope: !2559, file: !224, line: 85, column: 3)
!2567 = !DILocation(line: 86, column: 25, scope: !2565)
!2568 = !DILocation(line: 86, column: 9, scope: !2565)
!2569 = !DILocalVariable(name: "tmp", scope: !2554, file: !224, line: 81, type: !12)
!2570 = !DILocation(line: 86, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2559, file: !224, line: 86, column: 7)
!2572 = !DILocation(line: 86, column: 7, scope: !2559)
!2573 = !DILocation(line: 87, column: 5, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !224, line: 86, column: 12)
!2575 = !DILocation(line: 90, column: 3, scope: !2559)
!2576 = !DILocation(line: 0, scope: !2559)
!2577 = !DILocation(line: 92, column: 1, scope: !2554)
!2578 = distinct !DISubprogram(name: "mpeg_remux_system_header", scope: !224, file: !224, line: 93, type: !371, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2579 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2578, file: !224, line: 93, type: !6)
!2580 = !DILocation(line: 0, scope: !2578)
!2581 = !DILocation(line: 96, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 96, column: 7)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !224, line: 99, column: 3)
!2584 = !DILocation(line: 96, column: 7, scope: !2583)
!2585 = !DILocation(line: 96, column: 15, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !224, line: 96, column: 9)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !224, line: 96, column: 20)
!2588 = !DILocation(line: 96, column: 24, scope: !2586)
!2589 = !DILocation(line: 96, column: 9, scope: !2587)
!2590 = !DILocation(line: 97, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !224, line: 96, column: 31)
!2592 = !DILocation(line: 99, column: 3, scope: !2587)
!2593 = !DILocation(line: 100, column: 52, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !224, line: 101, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 100, column: 3)
!2596 = !DILocation(line: 100, column: 38, scope: !2594)
!2597 = !DILocation(line: 100, column: 9, scope: !2594)
!2598 = !DILocalVariable(name: "tmp", scope: !2578, file: !224, line: 95, type: !12)
!2599 = !DILocation(line: 100, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 100, column: 7)
!2601 = !DILocation(line: 100, column: 7, scope: !2583)
!2602 = !DILocation(line: 101, column: 5, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !224, line: 100, column: 12)
!2604 = !DILocation(line: 104, column: 47, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !224, line: 104, column: 3)
!2606 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 103, column: 3)
!2607 = !DILocation(line: 104, column: 52, scope: !2605)
!2608 = !DILocation(line: 104, column: 13, scope: !2605)
!2609 = !DILocalVariable(name: "tmp___0", scope: !2578, file: !224, line: 96, type: !12)
!2610 = !DILocation(line: 104, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 104, column: 7)
!2612 = !DILocation(line: 104, column: 7, scope: !2583)
!2613 = !DILocation(line: 105, column: 5, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !224, line: 104, column: 16)
!2615 = !DILocation(line: 108, column: 56, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !224, line: 108, column: 3)
!2617 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 107, column: 3)
!2618 = !DILocation(line: 108, column: 42, scope: !2616)
!2619 = !DILocation(line: 108, column: 13, scope: !2616)
!2620 = !DILocalVariable(name: "tmp___1", scope: !2578, file: !224, line: 97, type: !12)
!2621 = !DILocation(line: 108, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2583, file: !224, line: 108, column: 7)
!2623 = !DILocation(line: 108, column: 7, scope: !2583)
!2624 = !DILocation(line: 109, column: 5, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !224, line: 108, column: 16)
!2626 = !DILocation(line: 112, column: 3, scope: !2583)
!2627 = !DILocation(line: 0, scope: !2583)
!2628 = !DILocation(line: 114, column: 1, scope: !2578)
!2629 = distinct !DISubprogram(name: "mpeg_remux_pack", scope: !224, file: !224, line: 162, type: !371, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2630 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2629, file: !224, line: 162, type: !6)
!2631 = !DILocation(line: 0, scope: !2629)
!2632 = !DILocation(line: 165, column: 43, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !224, line: 169, column: 3)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !224, line: 168, column: 3)
!2635 = distinct !DILexicalBlock(scope: !2629, file: !224, line: 167, column: 3)
!2636 = !DILocation(line: 165, column: 48, scope: !2633)
!2637 = !DILocation(line: 165, column: 9, scope: !2633)
!2638 = !DILocalVariable(name: "tmp", scope: !2629, file: !224, line: 164, type: !12)
!2639 = !DILocation(line: 165, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !224, line: 165, column: 7)
!2641 = !DILocation(line: 165, column: 7, scope: !2635)
!2642 = !DILocation(line: 166, column: 5, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !224, line: 165, column: 12)
!2644 = !DILocation(line: 169, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2635, file: !224, line: 169, column: 7)
!2646 = !DILocation(line: 169, column: 7, scope: !2635)
!2647 = !DILocation(line: 170, column: 58, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !224, line: 171, column: 5)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !224, line: 170, column: 5)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !224, line: 169, column: 23)
!2651 = !DILocation(line: 170, column: 44, scope: !2648)
!2652 = !DILocation(line: 170, column: 15, scope: !2648)
!2653 = !DILocalVariable(name: "tmp___0", scope: !2629, file: !224, line: 165, type: !12)
!2654 = !DILocation(line: 170, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !224, line: 170, column: 9)
!2656 = !DILocation(line: 170, column: 9, scope: !2650)
!2657 = !DILocation(line: 171, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !224, line: 170, column: 18)
!2659 = !DILocation(line: 173, column: 3, scope: !2650)
!2660 = !DILocation(line: 175, column: 3, scope: !2635)
!2661 = !DILocation(line: 0, scope: !2635)
!2662 = !DILocation(line: 177, column: 1, scope: !2629)
!2663 = distinct !DISubprogram(name: "mpeg_remux_packet", scope: !224, file: !224, line: 115, type: !371, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2664 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2663, file: !224, line: 115, type: !6)
!2665 = !DILocation(line: 0, scope: !2663)
!2666 = !DILocalVariable(name: "__cil_tmp9", scope: !2663, file: !224, line: 124, type: !23)
!2667 = !DILocation(line: 124, column: 9, scope: !2663)
!2668 = !DILocation(line: 121, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 127, column: 3)
!2670 = distinct !DILexicalBlock(scope: !2663, file: !224, line: 126, column: 3)
!2671 = !DILocation(line: 121, column: 22, scope: !2669)
!2672 = !DILocalVariable(name: "sid", scope: !2663, file: !224, line: 118, type: !73)
!2673 = !DILocation(line: 122, column: 16, scope: !2669)
!2674 = !DILocation(line: 122, column: 23, scope: !2669)
!2675 = !DILocalVariable(name: "ssid", scope: !2663, file: !224, line: 119, type: !73)
!2676 = !DILocation(line: 124, column: 26, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2669, file: !224, line: 123, column: 3)
!2678 = !DILocation(line: 124, column: 47, scope: !2677)
!2679 = !DILocation(line: 124, column: 9, scope: !2677)
!2680 = !DILocalVariable(name: "tmp", scope: !2663, file: !224, line: 120, type: !12)
!2681 = !DILocation(line: 124, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 124, column: 7)
!2683 = !DILocation(line: 124, column: 7, scope: !2670)
!2684 = !DILocation(line: 125, column: 5, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !224, line: 124, column: 12)
!2686 = !DILocalVariable(name: "r", scope: !2663, file: !224, line: 117, type: !12)
!2687 = !DILocation(line: 130, column: 53, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !224, line: 129, column: 3)
!2689 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 127, column: 3)
!2690 = !DILocation(line: 130, column: 60, scope: !2688)
!2691 = !DILocation(line: 130, column: 13, scope: !2688)
!2692 = !DILocalVariable(name: "tmp___0", scope: !2663, file: !224, line: 121, type: !12)
!2693 = !DILocation(line: 130, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 130, column: 7)
!2695 = !DILocation(line: 130, column: 7, scope: !2670)
!2696 = !DILocation(line: 131, column: 81, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !224, line: 132, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !224, line: 131, column: 5)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !224, line: 130, column: 16)
!2700 = !DILocation(line: 132, column: 19, scope: !2697)
!2701 = !DILocation(line: 132, column: 26, scope: !2697)
!2702 = !DILocation(line: 131, column: 5, scope: !2697)
!2703 = !DILocation(line: 135, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !224, line: 135, column: 9)
!2705 = !DILocation(line: 135, column: 9, scope: !2699)
!2706 = !DILocation(line: 136, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !224, line: 137, column: 7)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !224, line: 136, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !224, line: 135, column: 19)
!2710 = !DILocation(line: 137, column: 7, scope: !2709)
!2711 = !DILocation(line: 141, column: 3, scope: !2699)
!2712 = !DILocation(line: 0, scope: !2670)
!2713 = !DILocation(line: 143, column: 18, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 143, column: 7)
!2715 = !DILocation(line: 143, column: 22, scope: !2714)
!2716 = !DILocation(line: 143, column: 7, scope: !2670)
!2717 = !DILocation(line: 144, column: 29, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !224, line: 143, column: 29)
!2719 = !DILocation(line: 144, column: 18, scope: !2718)
!2720 = !DILocation(line: 144, column: 22, scope: !2718)
!2721 = !DILocation(line: 144, column: 27, scope: !2718)
!2722 = !DILocation(line: 146, column: 13, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !224, line: 146, column: 9)
!2724 = !DILocation(line: 146, column: 9, scope: !2718)
!2725 = !DILocation(line: 146, column: 22, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !224, line: 146, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !224, line: 146, column: 22)
!2728 = !DILocation(line: 146, column: 34, scope: !2726)
!2729 = !DILocation(line: 146, column: 41, scope: !2726)
!2730 = !DILocation(line: 146, column: 26, scope: !2726)
!2731 = !DILocation(line: 146, column: 11, scope: !2727)
!2732 = !DILocation(line: 147, column: 51, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !224, line: 146, column: 49)
!2734 = !DILocation(line: 147, column: 22, scope: !2733)
!2735 = !DILocation(line: 147, column: 34, scope: !2733)
!2736 = !DILocation(line: 147, column: 41, scope: !2733)
!2737 = !DILocation(line: 147, column: 26, scope: !2733)
!2738 = !DILocation(line: 147, column: 49, scope: !2733)
!2739 = !DILocation(line: 148, column: 7, scope: !2733)
!2740 = !DILocation(line: 149, column: 5, scope: !2727)
!2741 = !DILocation(line: 150, column: 3, scope: !2718)
!2742 = !DILocation(line: 151, column: 56, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !224, line: 152, column: 3)
!2744 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 151, column: 3)
!2745 = !DILocation(line: 151, column: 42, scope: !2743)
!2746 = !DILocation(line: 151, column: 13, scope: !2743)
!2747 = !DILocalVariable(name: "tmp___1", scope: !2663, file: !224, line: 122, type: !12)
!2748 = !DILocation(line: 151, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 151, column: 7)
!2750 = !DILocation(line: 151, column: 7, scope: !2670)
!2751 = !DILocation(line: 152, column: 5, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !224, line: 151, column: 16)
!2753 = !DILocation(line: 155, column: 62, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !224, line: 155, column: 3)
!2755 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 154, column: 3)
!2756 = !DILocation(line: 155, column: 48, scope: !2754)
!2757 = !DILocation(line: 155, column: 13, scope: !2754)
!2758 = !DILocalVariable(name: "tmp___2", scope: !2663, file: !224, line: 123, type: !12)
!2759 = !DILocation(line: 155, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2670, file: !224, line: 155, column: 7)
!2761 = !DILocation(line: 155, column: 7, scope: !2670)
!2762 = !DILocation(line: 156, column: 5, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !224, line: 155, column: 16)
!2764 = !DILocation(line: 159, column: 3, scope: !2670)
!2765 = !DILocation(line: 161, column: 1, scope: !2663)
!2766 = distinct !DISubprogram(name: "mpeg_remux_end", scope: !224, file: !224, line: 178, type: !371, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2767 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2766, file: !224, line: 178, type: !6)
!2768 = !DILocation(line: 0, scope: !2766)
!2769 = !DILocation(line: 181, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !224, line: 181, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !224, line: 183, column: 3)
!2772 = !DILocation(line: 181, column: 7, scope: !2771)
!2773 = !DILocation(line: 182, column: 5, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !224, line: 181, column: 19)
!2775 = !DILocation(line: 185, column: 39, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !224, line: 185, column: 3)
!2777 = distinct !DILexicalBlock(scope: !2771, file: !224, line: 184, column: 3)
!2778 = !DILocation(line: 185, column: 25, scope: !2776)
!2779 = !DILocation(line: 185, column: 9, scope: !2776)
!2780 = !DILocalVariable(name: "tmp", scope: !2766, file: !224, line: 180, type: !12)
!2781 = !DILocation(line: 185, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2771, file: !224, line: 185, column: 7)
!2783 = !DILocation(line: 185, column: 7, scope: !2771)
!2784 = !DILocation(line: 186, column: 5, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !224, line: 185, column: 12)
!2786 = !DILocation(line: 189, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2771, file: !224, line: 189, column: 7)
!2788 = !DILocation(line: 189, column: 7, scope: !2771)
!2789 = !DILocation(line: 190, column: 15, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !224, line: 191, column: 5)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !224, line: 190, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2787, file: !224, line: 189, column: 18)
!2793 = !DILocalVariable(name: "tmp___0", scope: !2766, file: !224, line: 181, type: !12)
!2794 = !DILocation(line: 190, column: 9, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !224, line: 190, column: 9)
!2796 = !DILocation(line: 190, column: 9, scope: !2792)
!2797 = !DILocation(line: 191, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !224, line: 190, column: 18)
!2799 = !DILocation(line: 193, column: 3, scope: !2792)
!2800 = !DILocation(line: 195, column: 3, scope: !2771)
!2801 = !DILocation(line: 0, scope: !2771)
!2802 = !DILocation(line: 197, column: 1, scope: !2766)
!2803 = distinct !DISubprogram(name: "mpeg_get_name", scope: !154, file: !154, line: 225, type: !2804, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!23, !147, !73}
!2806 = !DILocalVariable(name: "base", arg: 1, scope: !2803, file: !154, line: 225, type: !147)
!2807 = !DILocation(line: 0, scope: !2803)
!2808 = !DILocalVariable(name: "sid", arg: 2, scope: !2803, file: !154, line: 225, type: !73)
!2809 = !DILocalVariable(name: "__cil_tmp7", scope: !2803, file: !154, line: 231, type: !23)
!2810 = !DILocation(line: 231, column: 9, scope: !2803)
!2811 = !DILocation(line: 231, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !154, line: 231, column: 7)
!2813 = distinct !DILexicalBlock(scope: !2803, file: !154, line: 233, column: 3)
!2814 = !DILocation(line: 231, column: 28, scope: !2812)
!2815 = !DILocation(line: 231, column: 7, scope: !2813)
!2816 = !DILocation(line: 233, column: 3, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !154, line: 231, column: 60)
!2818 = !DILocalVariable(name: "n", scope: !2803, file: !154, line: 227, type: !73)
!2819 = !DILocation(line: 236, column: 3, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !154, line: 237, column: 3)
!2821 = distinct !DILexicalBlock(scope: !2813, file: !154, line: 236, column: 3)
!2822 = !DILocation(line: 0, scope: !2813)
!2823 = !DILocation(line: 236, column: 13, scope: !2820)
!2824 = !DILocation(line: 236, column: 33, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !154, line: 236, column: 9)
!2826 = distinct !DILexicalBlock(scope: !2820, file: !154, line: 236, column: 13)
!2827 = !DILocation(line: 236, column: 26, scope: !2825)
!2828 = !DILocation(line: 236, column: 12, scope: !2825)
!2829 = !DILocation(line: 236, column: 38, scope: !2825)
!2830 = !DILocation(line: 236, column: 9, scope: !2826)
!2831 = !DILocation(line: 236, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2825, file: !154, line: 236, column: 45)
!2833 = !DILocation(line: 237, column: 7, scope: !2826)
!2834 = distinct !{!2834, !2819, !2835}
!2835 = !DILocation(line: 238, column: 3, scope: !2820)
!2836 = !DILocation(line: 240, column: 3, scope: !2820)
!2837 = !DILocation(line: 240, column: 5, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2813, file: !154, line: 243, column: 3)
!2839 = !DILocation(line: 242, column: 9, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2838, file: !154, line: 241, column: 3)
!2841 = !DILocalVariable(name: "tmp", scope: !2803, file: !154, line: 230, type: !66)
!2842 = !DILocalVariable(name: "ret", scope: !2803, file: !154, line: 229, type: !23)
!2843 = !DILocation(line: 243, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2813, file: !154, line: 243, column: 7)
!2845 = !DILocation(line: 243, column: 27, scope: !2844)
!2846 = !DILocation(line: 243, column: 7, scope: !2813)
!2847 = !DILocation(line: 244, column: 5, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !154, line: 243, column: 59)
!2849 = !DILocation(line: 247, column: 3, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !154, line: 247, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2813, file: !154, line: 246, column: 3)
!2852 = !DILocation(line: 247, column: 13, scope: !2850)
!2853 = !DILocation(line: 247, column: 14, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !154, line: 247, column: 9)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !154, line: 247, column: 13)
!2856 = !DILocation(line: 247, column: 9, scope: !2855)
!2857 = !DILocation(line: 247, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !154, line: 247, column: 21)
!2859 = !DILocation(line: 248, column: 7, scope: !2855)
!2860 = !DILocation(line: 249, column: 32, scope: !2855)
!2861 = !DILocation(line: 249, column: 25, scope: !2855)
!2862 = !DILocation(line: 249, column: 11, scope: !2855)
!2863 = !DILocation(line: 249, column: 16, scope: !2855)
!2864 = !DILocation(line: 251, column: 21, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2855, file: !154, line: 251, column: 9)
!2866 = !DILocation(line: 251, column: 15, scope: !2865)
!2867 = !DILocation(line: 251, column: 9, scope: !2865)
!2868 = !DILocation(line: 251, column: 26, scope: !2865)
!2869 = !DILocation(line: 251, column: 9, scope: !2855)
!2870 = !DILocation(line: 252, column: 17, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !154, line: 251, column: 33)
!2872 = !DILocalVariable(name: "dig", scope: !2803, file: !154, line: 228, type: !73)
!2873 = !DILocation(line: 253, column: 11, scope: !2871)
!2874 = !DILocation(line: 254, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !154, line: 254, column: 11)
!2876 = !DILocation(line: 254, column: 11, scope: !2871)
!2877 = !DILocation(line: 255, column: 34, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !154, line: 254, column: 22)
!2879 = !DILocation(line: 255, column: 22, scope: !2878)
!2880 = !DILocation(line: 255, column: 15, scope: !2878)
!2881 = !DILocation(line: 255, column: 20, scope: !2878)
!2882 = !DILocation(line: 256, column: 7, scope: !2878)
!2883 = !DILocation(line: 258, column: 35, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !154, line: 256, column: 14)
!2885 = !DILocation(line: 258, column: 42, scope: !2884)
!2886 = !DILocation(line: 258, column: 22, scope: !2884)
!2887 = !DILocation(line: 258, column: 15, scope: !2884)
!2888 = !DILocation(line: 258, column: 20, scope: !2884)
!2889 = !DILocation(line: 260, column: 5, scope: !2871)
!2890 = distinct !{!2890, !2849, !2891}
!2891 = !DILocation(line: 261, column: 3, scope: !2850)
!2892 = !DILocation(line: 263, column: 3, scope: !2850)
!2893 = !DILocation(line: 263, column: 3, scope: !2813)
!2894 = !DILocation(line: 265, column: 1, scope: !2803)
!2895 = distinct !DISubprogram(name: "mpeg_stream_excl", scope: !154, file: !154, line: 266, type: !2896, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!12, !85, !85}
!2898 = !DILocalVariable(name: "sid", arg: 1, scope: !2895, file: !154, line: 266, type: !85)
!2899 = !DILocation(line: 0, scope: !2895)
!2900 = !DILocalVariable(name: "ssid", arg: 2, scope: !2895, file: !154, line: 266, type: !85)
!2901 = !DILocation(line: 268, column: 14, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !154, line: 268, column: 7)
!2903 = distinct !DILexicalBlock(scope: !2895, file: !154, line: 270, column: 3)
!2904 = !DILocation(line: 268, column: 8, scope: !2902)
!2905 = !DILocation(line: 268, column: 30, scope: !2902)
!2906 = !DILocation(line: 268, column: 35, scope: !2902)
!2907 = !DILocation(line: 268, column: 7, scope: !2903)
!2908 = !DILocation(line: 269, column: 5, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !154, line: 268, column: 41)
!2910 = !DILocation(line: 272, column: 7, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2903, file: !154, line: 272, column: 7)
!2912 = !DILocation(line: 272, column: 17, scope: !2911)
!2913 = !DILocation(line: 272, column: 7, scope: !2903)
!2914 = !DILocation(line: 273, column: 16, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !154, line: 273, column: 9)
!2916 = distinct !DILexicalBlock(scope: !2911, file: !154, line: 272, column: 25)
!2917 = !DILocation(line: 273, column: 10, scope: !2915)
!2918 = !DILocation(line: 273, column: 36, scope: !2915)
!2919 = !DILocation(line: 273, column: 41, scope: !2915)
!2920 = !DILocation(line: 273, column: 9, scope: !2916)
!2921 = !DILocation(line: 274, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !154, line: 273, column: 47)
!2923 = !DILocation(line: 276, column: 3, scope: !2916)
!2924 = !DILocation(line: 278, column: 3, scope: !2903)
!2925 = !DILocation(line: 0, scope: !2903)
!2926 = !DILocation(line: 280, column: 1, scope: !2895)
!2927 = distinct !DISubprogram(name: "mpeg_copy", scope: !154, file: !154, line: 328, type: !2928, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!12, !6, !15, !73}
!2930 = !DILocalVariable(name: "mpeg", arg: 1, scope: !2927, file: !154, line: 328, type: !6)
!2931 = !DILocation(line: 0, scope: !2927)
!2932 = !DILocalVariable(name: "fp___1", arg: 2, scope: !2927, file: !154, line: 328, type: !15)
!2933 = !DILocalVariable(name: "n", arg: 3, scope: !2927, file: !154, line: 328, type: !73)
!2934 = !DILocalVariable(name: "buf", scope: !2927, file: !154, line: 330, type: !84)
!2935 = !DILocation(line: 330, column: 17, scope: !2927)
!2936 = !DILocalVariable(name: "__cil_tmp8", scope: !2927, file: !154, line: 334, type: !66)
!2937 = !DILocation(line: 334, column: 9, scope: !2927)
!2938 = !DILocation(line: 333, column: 3, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !154, line: 338, column: 3)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !154, line: 337, column: 3)
!2941 = distinct !DILexicalBlock(scope: !2927, file: !154, line: 336, column: 3)
!2942 = !DILocation(line: 333, column: 13, scope: !2939)
!2943 = !DILocation(line: 333, column: 14, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !154, line: 333, column: 9)
!2945 = distinct !DILexicalBlock(scope: !2939, file: !154, line: 333, column: 13)
!2946 = !DILocation(line: 333, column: 9, scope: !2945)
!2947 = !DILocation(line: 333, column: 7, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !154, line: 333, column: 21)
!2949 = !DILocation(line: 334, column: 11, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !154, line: 334, column: 9)
!2951 = !DILocation(line: 334, column: 9, scope: !2945)
!2952 = !DILocalVariable(name: "i", scope: !2927, file: !154, line: 331, type: !73)
!2953 = !DILocation(line: 335, column: 5, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !154, line: 334, column: 20)
!2955 = !DILocation(line: 0, scope: !2950)
!2956 = !DILocation(line: 336, column: 34, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !154, line: 337, column: 5)
!2958 = distinct !DILexicalBlock(scope: !2945, file: !154, line: 336, column: 5)
!2959 = !DILocation(line: 336, column: 9, scope: !2957)
!2960 = !DILocalVariable(name: "j", scope: !2927, file: !154, line: 332, type: !73)
!2961 = !DILocation(line: 338, column: 11, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2945, file: !154, line: 338, column: 9)
!2963 = !DILocation(line: 338, column: 9, scope: !2945)
!2964 = !DILocation(line: 339, column: 53, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !154, line: 340, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !154, line: 339, column: 7)
!2967 = distinct !DILexicalBlock(scope: !2962, file: !154, line: 338, column: 17)
!2968 = !DILocation(line: 339, column: 13, scope: !2965)
!2969 = !DILocalVariable(name: "tmp", scope: !2927, file: !154, line: 333, type: !71)
!2970 = !DILocation(line: 339, column: 15, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !154, line: 339, column: 11)
!2972 = !DILocation(line: 339, column: 11, scope: !2967)
!2973 = !DILocation(line: 340, column: 9, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !154, line: 339, column: 21)
!2975 = !DILocation(line: 342, column: 5, scope: !2967)
!2976 = !DILocation(line: 344, column: 11, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2945, file: !154, line: 344, column: 9)
!2978 = !DILocation(line: 344, column: 9, scope: !2945)
!2979 = !DILocation(line: 345, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !154, line: 344, column: 17)
!2981 = !DILocation(line: 348, column: 7, scope: !2945)
!2982 = distinct !{!2982, !2938, !2983}
!2983 = !DILocation(line: 349, column: 3, scope: !2939)
!2984 = !DILocation(line: 351, column: 3, scope: !2939)
!2985 = !DILocation(line: 351, column: 3, scope: !2941)
!2986 = !DILocation(line: 0, scope: !2941)
!2987 = !DILocation(line: 353, column: 1, scope: !2927)
!2988 = distinct !DISubprogram(name: "main", scope: !154, file: !154, line: 354, type: !2989, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!12, !12, !149}
!2991 = !DILocalVariable(name: "argc", arg: 1, scope: !2988, file: !154, line: 354, type: !12)
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !DILocalVariable(name: "argv", arg: 2, scope: !2988, file: !154, line: 354, type: !149)
!2994 = !DILocalVariable(name: "__cil_tmp46", scope: !2988, file: !154, line: 399, type: !23)
!2995 = !DILocation(line: 399, column: 9, scope: !2988)
!2996 = !DILocalVariable(name: "__cil_tmp47", scope: !2988, file: !154, line: 400, type: !23)
!2997 = !DILocation(line: 400, column: 9, scope: !2988)
!2998 = !DILocalVariable(name: "__cil_tmp48", scope: !2988, file: !154, line: 401, type: !23)
!2999 = !DILocation(line: 401, column: 9, scope: !2988)
!3000 = !DILocalVariable(name: "__cil_tmp49", scope: !2988, file: !154, line: 402, type: !23)
!3001 = !DILocation(line: 402, column: 9, scope: !2988)
!3002 = !DILocalVariable(name: "__cil_tmp50", scope: !2988, file: !154, line: 403, type: !23)
!3003 = !DILocation(line: 403, column: 9, scope: !2988)
!3004 = !DILocalVariable(name: "__cil_tmp51", scope: !2988, file: !154, line: 404, type: !23)
!3005 = !DILocation(line: 404, column: 9, scope: !2988)
!3006 = !DILocalVariable(name: "__cil_tmp52", scope: !2988, file: !154, line: 405, type: !23)
!3007 = !DILocation(line: 405, column: 9, scope: !2988)
!3008 = !DILocalVariable(name: "__cil_tmp53", scope: !2988, file: !154, line: 406, type: !23)
!3009 = !DILocation(line: 406, column: 9, scope: !2988)
!3010 = !DILocalVariable(name: "__cil_tmp54", scope: !2988, file: !154, line: 407, type: !23)
!3011 = !DILocation(line: 407, column: 9, scope: !2988)
!3012 = !DILocalVariable(name: "__cil_tmp55", scope: !2988, file: !154, line: 408, type: !23)
!3013 = !DILocation(line: 408, column: 9, scope: !2988)
!3014 = !DILocalVariable(name: "__cil_tmp56", scope: !2988, file: !154, line: 409, type: !23)
!3015 = !DILocation(line: 409, column: 9, scope: !2988)
!3016 = !DILocalVariable(name: "__cil_tmp57", scope: !2988, file: !154, line: 410, type: !23)
!3017 = !DILocation(line: 410, column: 9, scope: !2988)
!3018 = !DILocalVariable(name: "__cil_tmp58", scope: !2988, file: !154, line: 411, type: !23)
!3019 = !DILocation(line: 411, column: 9, scope: !2988)
!3020 = !DILocalVariable(name: "__cil_tmp59", scope: !2988, file: !154, line: 412, type: !23)
!3021 = !DILocation(line: 412, column: 9, scope: !2988)
!3022 = !DILocalVariable(name: "__cil_tmp60", scope: !2988, file: !154, line: 413, type: !23)
!3023 = !DILocation(line: 413, column: 9, scope: !2988)
!3024 = !DILocalVariable(name: "__cil_tmp61", scope: !2988, file: !154, line: 414, type: !23)
!3025 = !DILocation(line: 414, column: 9, scope: !2988)
!3026 = !DILocalVariable(name: "__cil_tmp62", scope: !2988, file: !154, line: 415, type: !23)
!3027 = !DILocation(line: 415, column: 9, scope: !2988)
!3028 = !DILocalVariable(name: "__cil_tmp63", scope: !2988, file: !154, line: 416, type: !23)
!3029 = !DILocation(line: 416, column: 9, scope: !2988)
!3030 = !DILocalVariable(name: "__cil_tmp64", scope: !2988, file: !154, line: 417, type: !23)
!3031 = !DILocation(line: 417, column: 9, scope: !2988)
!3032 = !DILocalVariable(name: "__cil_tmp65", scope: !2988, file: !154, line: 418, type: !23)
!3033 = !DILocation(line: 418, column: 9, scope: !2988)
!3034 = !DILocalVariable(name: "__cil_tmp66", scope: !2988, file: !154, line: 419, type: !23)
!3035 = !DILocation(line: 419, column: 9, scope: !2988)
!3036 = !DILocalVariable(name: "__cil_tmp67", scope: !2988, file: !154, line: 420, type: !23)
!3037 = !DILocation(line: 420, column: 9, scope: !2988)
!3038 = !DILocalVariable(name: "__cil_tmp68", scope: !2988, file: !154, line: 421, type: !23)
!3039 = !DILocation(line: 421, column: 9, scope: !2988)
!3040 = !DILocalVariable(name: "__cil_tmp69", scope: !2988, file: !154, line: 422, type: !23)
!3041 = !DILocation(line: 422, column: 9, scope: !2988)
!3042 = !DILocalVariable(name: "__cil_tmp70", scope: !2988, file: !154, line: 423, type: !23)
!3043 = !DILocation(line: 423, column: 9, scope: !2988)
!3044 = !DILocalVariable(name: "__cil_tmp71", scope: !2988, file: !154, line: 424, type: !23)
!3045 = !DILocation(line: 424, column: 9, scope: !2988)
!3046 = !DILocalVariable(name: "__cil_tmp72", scope: !2988, file: !154, line: 425, type: !23)
!3047 = !DILocation(line: 425, column: 9, scope: !2988)
!3048 = !DILocalVariable(name: "__cil_tmp73", scope: !2988, file: !154, line: 426, type: !23)
!3049 = !DILocation(line: 426, column: 9, scope: !2988)
!3050 = !DILocalVariable(name: "__cil_tmp74", scope: !2988, file: !154, line: 427, type: !23)
!3051 = !DILocation(line: 427, column: 9, scope: !2988)
!3052 = !DILocalVariable(name: "__cil_tmp75", scope: !2988, file: !154, line: 428, type: !23)
!3053 = !DILocation(line: 428, column: 9, scope: !2988)
!3054 = !DILocalVariable(name: "__cil_tmp76", scope: !2988, file: !154, line: 429, type: !23)
!3055 = !DILocation(line: 429, column: 9, scope: !2988)
!3056 = !DILocalVariable(name: "__cil_tmp77", scope: !2988, file: !154, line: 430, type: !23)
!3057 = !DILocation(line: 430, column: 9, scope: !2988)
!3058 = !DILocalVariable(name: "__cil_tmp78", scope: !2988, file: !154, line: 431, type: !23)
!3059 = !DILocation(line: 431, column: 9, scope: !2988)
!3060 = !DILocalVariable(name: "__cil_tmp79", scope: !2988, file: !154, line: 432, type: !23)
!3061 = !DILocation(line: 432, column: 9, scope: !2988)
!3062 = !DILocalVariable(name: "__cil_tmp80", scope: !2988, file: !154, line: 433, type: !23)
!3063 = !DILocation(line: 433, column: 9, scope: !2988)
!3064 = !DILocalVariable(name: "__cil_tmp81", scope: !2988, file: !154, line: 434, type: !23)
!3065 = !DILocation(line: 434, column: 9, scope: !2988)
!3066 = !DILocalVariable(name: "__cil_tmp82", scope: !2988, file: !154, line: 435, type: !23)
!3067 = !DILocation(line: 435, column: 9, scope: !2988)
!3068 = !DILocalVariable(name: "__cil_tmp83", scope: !2988, file: !154, line: 436, type: !23)
!3069 = !DILocation(line: 436, column: 9, scope: !2988)
!3070 = !DILocalVariable(name: "__cil_tmp84", scope: !2988, file: !154, line: 437, type: !23)
!3071 = !DILocation(line: 437, column: 9, scope: !2988)
!3072 = !DILocalVariable(name: "__cil_tmp85", scope: !2988, file: !154, line: 438, type: !23)
!3073 = !DILocation(line: 438, column: 9, scope: !2988)
!3074 = !DILocalVariable(name: "__cil_tmp86", scope: !2988, file: !154, line: 439, type: !23)
!3075 = !DILocation(line: 439, column: 9, scope: !2988)
!3076 = !DILocalVariable(name: "__cil_tmp87", scope: !2988, file: !154, line: 440, type: !23)
!3077 = !DILocation(line: 440, column: 9, scope: !2988)
!3078 = !DILocalVariable(name: "__cil_tmp88", scope: !2988, file: !154, line: 441, type: !23)
!3079 = !DILocation(line: 441, column: 9, scope: !2988)
!3080 = !DILocalVariable(name: "__cil_tmp89", scope: !2988, file: !154, line: 442, type: !23)
!3081 = !DILocation(line: 442, column: 9, scope: !2988)
!3082 = !DILocalVariable(name: "__cil_tmp90", scope: !2988, file: !154, line: 443, type: !23)
!3083 = !DILocation(line: 443, column: 9, scope: !2988)
!3084 = !DILocalVariable(name: "__cil_tmp91", scope: !2988, file: !154, line: 444, type: !23)
!3085 = !DILocation(line: 444, column: 9, scope: !2988)
!3086 = !DILocalVariable(name: "__cil_tmp92", scope: !2988, file: !154, line: 445, type: !23)
!3087 = !DILocation(line: 445, column: 9, scope: !2988)
!3088 = !DILocalVariable(name: "__cil_tmp93", scope: !2988, file: !154, line: 446, type: !23)
!3089 = !DILocation(line: 446, column: 9, scope: !2988)
!3090 = !DILocalVariable(name: "__cil_tmp94", scope: !2988, file: !154, line: 447, type: !23)
!3091 = !DILocation(line: 447, column: 9, scope: !2988)
!3092 = !DILocalVariable(name: "__cil_tmp95", scope: !2988, file: !154, line: 448, type: !23)
!3093 = !DILocation(line: 448, column: 9, scope: !2988)
!3094 = !DILocalVariable(name: "__cil_tmp96", scope: !2988, file: !154, line: 449, type: !23)
!3095 = !DILocation(line: 449, column: 9, scope: !2988)
!3096 = !DILocalVariable(name: "__cil_tmp97", scope: !2988, file: !154, line: 450, type: !23)
!3097 = !DILocation(line: 450, column: 9, scope: !2988)
!3098 = !DILocalVariable(name: "__cil_tmp98", scope: !2988, file: !154, line: 451, type: !23)
!3099 = !DILocation(line: 451, column: 9, scope: !2988)
!3100 = !DILocalVariable(name: "__cil_tmp99", scope: !2988, file: !154, line: 452, type: !23)
!3101 = !DILocation(line: 452, column: 9, scope: !2988)
!3102 = !DILocalVariable(name: "__cil_tmp100", scope: !2988, file: !154, line: 453, type: !23)
!3103 = !DILocation(line: 453, column: 9, scope: !2988)
!3104 = !DILocalVariable(name: "__cil_tmp101", scope: !2988, file: !154, line: 454, type: !23)
!3105 = !DILocation(line: 454, column: 9, scope: !2988)
!3106 = !DILocalVariable(name: "__cil_tmp102", scope: !2988, file: !154, line: 455, type: !23)
!3107 = !DILocation(line: 455, column: 9, scope: !2988)
!3108 = !DILocalVariable(name: "__cil_tmp103", scope: !2988, file: !154, line: 456, type: !23)
!3109 = !DILocation(line: 456, column: 9, scope: !2988)
!3110 = !DILocalVariable(name: "__cil_tmp104", scope: !2988, file: !154, line: 457, type: !23)
!3111 = !DILocation(line: 457, column: 9, scope: !2988)
!3112 = !DILocalVariable(name: "__cil_tmp105", scope: !2988, file: !154, line: 458, type: !23)
!3113 = !DILocation(line: 458, column: 9, scope: !2988)
!3114 = !DILocalVariable(name: "__cil_tmp106", scope: !2988, file: !154, line: 459, type: !23)
!3115 = !DILocation(line: 459, column: 9, scope: !2988)
!3116 = !DILocalVariable(name: "__cil_tmp107", scope: !2988, file: !154, line: 460, type: !23)
!3117 = !DILocation(line: 460, column: 9, scope: !2988)
!3118 = !DILocalVariable(name: "__cil_tmp108", scope: !2988, file: !154, line: 461, type: !23)
!3119 = !DILocation(line: 461, column: 9, scope: !2988)
!3120 = !DILocalVariable(name: "__cil_tmp109", scope: !2988, file: !154, line: 462, type: !23)
!3121 = !DILocation(line: 462, column: 9, scope: !2988)
!3122 = !DILocalVariable(name: "__cil_tmp110", scope: !2988, file: !154, line: 463, type: !23)
!3123 = !DILocation(line: 463, column: 9, scope: !2988)
!3124 = !DILocation(line: 360, column: 12, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 360, column: 7)
!3126 = distinct !DILexicalBlock(scope: !2988, file: !154, line: 465, column: 3)
!3127 = !DILocation(line: 360, column: 7, scope: !3126)
!3128 = !DILocation(line: 361, column: 48, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !154, line: 362, column: 5)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !154, line: 361, column: 5)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !154, line: 360, column: 18)
!3132 = !DILocation(line: 361, column: 41, scope: !3129)
!3133 = !DILocation(line: 361, column: 15, scope: !3129)
!3134 = !DILocalVariable(name: "tmp___0", scope: !2988, file: !154, line: 360, type: !12)
!3135 = !DILocation(line: 361, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3131, file: !154, line: 361, column: 9)
!3137 = !DILocation(line: 361, column: 9, scope: !3131)
!3138 = !DILocation(line: 362, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !154, line: 363, column: 7)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !154, line: 362, column: 7)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !154, line: 361, column: 18)
!3142 = !DILocation(line: 363, column: 7, scope: !3141)
!3143 = !DILocation(line: 365, column: 46, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !154, line: 366, column: 7)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !154, line: 365, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3136, file: !154, line: 364, column: 12)
!3147 = !DILocation(line: 365, column: 39, scope: !3144)
!3148 = !DILocation(line: 365, column: 13, scope: !3144)
!3149 = !DILocalVariable(name: "tmp", scope: !2988, file: !154, line: 359, type: !12)
!3150 = !DILocation(line: 365, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3146, file: !154, line: 365, column: 11)
!3152 = !DILocation(line: 365, column: 11, scope: !3146)
!3153 = !DILocation(line: 366, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !154, line: 367, column: 9)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !154, line: 366, column: 9)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !154, line: 365, column: 16)
!3157 = !DILocation(line: 367, column: 9, scope: !3156)
!3158 = !DILocation(line: 370, column: 3, scope: !3131)
!3159 = !DILocalVariable(name: "i", scope: !2988, file: !154, line: 357, type: !73)
!3160 = !DILocation(line: 371, column: 3, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !154, line: 373, column: 3)
!3162 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 372, column: 3)
!3163 = !DILocation(line: 0, scope: !3126)
!3164 = !DILocation(line: 371, column: 13, scope: !3161)
!3165 = !DILocation(line: 371, column: 14, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !154, line: 371, column: 9)
!3167 = distinct !DILexicalBlock(scope: !3161, file: !154, line: 371, column: 13)
!3168 = !DILocation(line: 371, column: 9, scope: !3167)
!3169 = !DILocation(line: 371, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !154, line: 371, column: 23)
!3171 = !DILocation(line: 372, column: 5, scope: !3167)
!3172 = !DILocation(line: 372, column: 19, scope: !3167)
!3173 = !DILocation(line: 373, column: 5, scope: !3167)
!3174 = !DILocation(line: 373, column: 22, scope: !3167)
!3175 = !DILocation(line: 374, column: 25, scope: !3167)
!3176 = !DILocation(line: 374, column: 5, scope: !3167)
!3177 = !DILocation(line: 374, column: 23, scope: !3167)
!3178 = !DILocation(line: 375, column: 28, scope: !3167)
!3179 = !DILocation(line: 375, column: 5, scope: !3167)
!3180 = !DILocation(line: 375, column: 26, scope: !3167)
!3181 = !DILocation(line: 371, column: 7, scope: !3167)
!3182 = distinct !{!3182, !3160, !3183}
!3183 = !DILocation(line: 372, column: 3, scope: !3161)
!3184 = !DILocation(line: 374, column: 3, scope: !3161)
!3185 = !DILocalVariable(name: "argi", scope: !2988, file: !154, line: 356, type: !12)
!3186 = !DILocation(line: 379, column: 3, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !154, line: 380, column: 3)
!3188 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 379, column: 3)
!3189 = !DILocation(line: 379, column: 13, scope: !3187)
!3190 = !DILocation(line: 379, column: 17, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !154, line: 379, column: 9)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !154, line: 379, column: 13)
!3193 = !DILocation(line: 379, column: 9, scope: !3192)
!3194 = !DILocation(line: 379, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !154, line: 379, column: 26)
!3196 = !DILocation(line: 380, column: 49, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !154, line: 382, column: 5)
!3198 = distinct !DILexicalBlock(scope: !3192, file: !154, line: 381, column: 5)
!3199 = !DILocation(line: 380, column: 42, scope: !3197)
!3200 = !DILocation(line: 380, column: 16, scope: !3197)
!3201 = !DILocalVariable(name: "tmp___33", scope: !2988, file: !154, line: 398, type: !12)
!3202 = !DILocation(line: 380, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3192, file: !154, line: 380, column: 9)
!3204 = !DILocation(line: 380, column: 9, scope: !3192)
!3205 = !DILocation(line: 383, column: 16, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !154, line: 380, column: 19)
!3207 = !DILocalVariable(name: "i___0", scope: !2988, file: !154, line: 361, type: !73)
!3208 = !DILocation(line: 385, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !154, line: 387, column: 7)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !154, line: 386, column: 7)
!3211 = !DILocation(line: 0, scope: !3206)
!3212 = !DILocation(line: 385, column: 17, scope: !3209)
!3213 = !DILocation(line: 385, column: 22, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !154, line: 385, column: 13)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !154, line: 385, column: 17)
!3216 = !DILocation(line: 385, column: 13, scope: !3215)
!3217 = !DILocation(line: 385, column: 11, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3214, file: !154, line: 385, column: 31)
!3219 = !DILocation(line: 386, column: 52, scope: !3215)
!3220 = !DILocation(line: 386, column: 46, scope: !3215)
!3221 = !DILocation(line: 386, column: 70, scope: !3215)
!3222 = !DILocation(line: 386, column: 29, scope: !3215)
!3223 = !DILocation(line: 386, column: 9, scope: !3215)
!3224 = !DILocation(line: 386, column: 27, scope: !3215)
!3225 = !DILocation(line: 387, column: 55, scope: !3215)
!3226 = !DILocation(line: 387, column: 49, scope: !3215)
!3227 = !DILocation(line: 387, column: 76, scope: !3215)
!3228 = !DILocation(line: 387, column: 32, scope: !3215)
!3229 = !DILocation(line: 387, column: 9, scope: !3215)
!3230 = !DILocation(line: 387, column: 30, scope: !3215)
!3231 = !DILocation(line: 385, column: 15, scope: !3215)
!3232 = distinct !{!3232, !3208, !3233}
!3233 = !DILocation(line: 386, column: 7, scope: !3209)
!3234 = !DILocation(line: 388, column: 7, scope: !3209)
!3235 = !DILocation(line: 391, column: 5, scope: !3206)
!3236 = !DILocation(line: 390, column: 51, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !154, line: 393, column: 7)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !154, line: 392, column: 7)
!3239 = distinct !DILexicalBlock(scope: !3203, file: !154, line: 391, column: 12)
!3240 = !DILocation(line: 390, column: 44, scope: !3237)
!3241 = !DILocation(line: 390, column: 18, scope: !3237)
!3242 = !DILocalVariable(name: "tmp___32", scope: !2988, file: !154, line: 397, type: !12)
!3243 = !DILocation(line: 390, column: 11, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !154, line: 390, column: 11)
!3245 = !DILocation(line: 390, column: 11, scope: !3239)
!3246 = !DILocation(line: 391, column: 18, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !154, line: 390, column: 21)
!3248 = !DILocation(line: 392, column: 7, scope: !3247)
!3249 = !DILocation(line: 393, column: 53, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !154, line: 394, column: 9)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !154, line: 393, column: 9)
!3252 = distinct !DILexicalBlock(scope: !3244, file: !154, line: 392, column: 14)
!3253 = !DILocation(line: 393, column: 46, scope: !3250)
!3254 = !DILocation(line: 393, column: 20, scope: !3250)
!3255 = !DILocalVariable(name: "tmp___31", scope: !2988, file: !154, line: 396, type: !12)
!3256 = !DILocation(line: 393, column: 13, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3252, file: !154, line: 393, column: 13)
!3258 = !DILocation(line: 393, column: 13, scope: !3252)
!3259 = !DILocation(line: 394, column: 20, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !154, line: 393, column: 23)
!3261 = !DILocation(line: 395, column: 9, scope: !3260)
!3262 = !DILocation(line: 396, column: 55, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !154, line: 397, column: 11)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !154, line: 396, column: 11)
!3265 = distinct !DILexicalBlock(scope: !3257, file: !154, line: 395, column: 16)
!3266 = !DILocation(line: 396, column: 48, scope: !3263)
!3267 = !DILocation(line: 396, column: 22, scope: !3263)
!3268 = !DILocalVariable(name: "tmp___30", scope: !2988, file: !154, line: 395, type: !12)
!3269 = !DILocation(line: 396, column: 15, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !154, line: 396, column: 15)
!3271 = !DILocation(line: 396, column: 15, scope: !3265)
!3272 = !DILocation(line: 397, column: 22, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !154, line: 396, column: 25)
!3274 = !DILocation(line: 398, column: 11, scope: !3273)
!3275 = !DILocation(line: 399, column: 57, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !154, line: 400, column: 13)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !154, line: 399, column: 13)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !154, line: 398, column: 18)
!3279 = !DILocation(line: 399, column: 50, scope: !3276)
!3280 = !DILocation(line: 399, column: 24, scope: !3276)
!3281 = !DILocalVariable(name: "tmp___29", scope: !2988, file: !154, line: 394, type: !12)
!3282 = !DILocation(line: 399, column: 17, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !154, line: 399, column: 17)
!3284 = !DILocation(line: 399, column: 17, scope: !3278)
!3285 = !DILocation(line: 400, column: 20, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !154, line: 399, column: 27)
!3287 = !DILocation(line: 401, column: 24, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !154, line: 401, column: 19)
!3289 = !DILocation(line: 401, column: 19, scope: !3286)
!3290 = !DILocation(line: 402, column: 59, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !154, line: 403, column: 17)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !154, line: 402, column: 17)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !154, line: 401, column: 33)
!3294 = !DILocation(line: 402, column: 52, scope: !3291)
!3295 = !DILocation(line: 402, column: 17, scope: !3291)
!3296 = !DILocation(line: 403, column: 17, scope: !3293)
!3297 = !DILocation(line: 406, column: 64, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !154, line: 406, column: 15)
!3299 = distinct !DILexicalBlock(scope: !3286, file: !154, line: 405, column: 15)
!3300 = !DILocation(line: 406, column: 57, scope: !3298)
!3301 = !DILocation(line: 406, column: 25, scope: !3298)
!3302 = !DILocalVariable(name: "tmp___1", scope: !2988, file: !154, line: 362, type: !12)
!3303 = !DILocation(line: 406, column: 19, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3286, file: !154, line: 406, column: 19)
!3305 = !DILocation(line: 406, column: 19, scope: !3286)
!3306 = !DILocation(line: 407, column: 60, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !154, line: 408, column: 17)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !154, line: 407, column: 17)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !154, line: 406, column: 28)
!3310 = !DILocation(line: 407, column: 53, scope: !3307)
!3311 = !DILocation(line: 407, column: 73, scope: !3307)
!3312 = !DILocation(line: 407, column: 66, scope: !3307)
!3313 = !DILocation(line: 407, column: 17, scope: !3307)
!3314 = !DILocation(line: 408, column: 17, scope: !3309)
!3315 = !DILocation(line: 410, column: 13, scope: !3286)
!3316 = !DILocation(line: 411, column: 59, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !154, line: 412, column: 15)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !154, line: 411, column: 15)
!3319 = distinct !DILexicalBlock(scope: !3283, file: !154, line: 410, column: 20)
!3320 = !DILocation(line: 411, column: 52, scope: !3317)
!3321 = !DILocation(line: 411, column: 26, scope: !3317)
!3322 = !DILocalVariable(name: "tmp___28", scope: !2988, file: !154, line: 393, type: !12)
!3323 = !DILocation(line: 411, column: 19, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !154, line: 411, column: 19)
!3325 = !DILocation(line: 411, column: 19, scope: !3319)
!3326 = !DILocation(line: 412, column: 22, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !154, line: 411, column: 29)
!3328 = !DILocation(line: 413, column: 26, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3327, file: !154, line: 413, column: 21)
!3330 = !DILocation(line: 413, column: 21, scope: !3327)
!3331 = !DILocation(line: 414, column: 64, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !154, line: 415, column: 19)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !154, line: 414, column: 19)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !154, line: 413, column: 35)
!3335 = !DILocation(line: 414, column: 57, scope: !3332)
!3336 = !DILocation(line: 414, column: 19, scope: !3332)
!3337 = !DILocation(line: 415, column: 19, scope: !3334)
!3338 = !DILocation(line: 418, column: 66, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !154, line: 418, column: 17)
!3340 = distinct !DILexicalBlock(scope: !3327, file: !154, line: 417, column: 17)
!3341 = !DILocation(line: 418, column: 59, scope: !3339)
!3342 = !DILocation(line: 418, column: 27, scope: !3339)
!3343 = !DILocalVariable(name: "tmp___2", scope: !2988, file: !154, line: 363, type: !12)
!3344 = !DILocation(line: 418, column: 21, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3327, file: !154, line: 418, column: 21)
!3346 = !DILocation(line: 418, column: 21, scope: !3327)
!3347 = !DILocation(line: 419, column: 65, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !154, line: 420, column: 19)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !154, line: 419, column: 19)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !154, line: 418, column: 30)
!3351 = !DILocation(line: 419, column: 58, scope: !3348)
!3352 = !DILocation(line: 419, column: 78, scope: !3348)
!3353 = !DILocation(line: 419, column: 71, scope: !3348)
!3354 = !DILocation(line: 419, column: 19, scope: !3348)
!3355 = !DILocation(line: 420, column: 19, scope: !3350)
!3356 = !DILocation(line: 422, column: 15, scope: !3327)
!3357 = !DILocation(line: 423, column: 61, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !154, line: 424, column: 17)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !154, line: 423, column: 17)
!3360 = distinct !DILexicalBlock(scope: !3324, file: !154, line: 422, column: 22)
!3361 = !DILocation(line: 423, column: 54, scope: !3358)
!3362 = !DILocation(line: 423, column: 28, scope: !3358)
!3363 = !DILocalVariable(name: "tmp___27", scope: !2988, file: !154, line: 392, type: !12)
!3364 = !DILocation(line: 423, column: 21, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !154, line: 423, column: 21)
!3366 = !DILocation(line: 423, column: 21, scope: !3360)
!3367 = !DILocation(line: 424, column: 24, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !154, line: 423, column: 31)
!3369 = !DILocation(line: 425, column: 28, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !154, line: 425, column: 23)
!3371 = !DILocation(line: 425, column: 23, scope: !3368)
!3372 = !DILocation(line: 426, column: 71, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !154, line: 427, column: 21)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !154, line: 426, column: 21)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !154, line: 425, column: 37)
!3376 = !DILocation(line: 426, column: 64, scope: !3373)
!3377 = !DILocation(line: 426, column: 21, scope: !3373)
!3378 = !DILocation(line: 427, column: 21, scope: !3375)
!3379 = !DILocation(line: 430, column: 59, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !154, line: 430, column: 19)
!3381 = distinct !DILexicalBlock(scope: !3368, file: !154, line: 429, column: 19)
!3382 = !DILocation(line: 430, column: 52, scope: !3380)
!3383 = !DILocation(line: 430, column: 29, scope: !3380)
!3384 = !DILocalVariable(name: "tmp___4", scope: !2988, file: !154, line: 365, type: !12)
!3385 = !DILocation(line: 430, column: 31, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3368, file: !154, line: 430, column: 23)
!3387 = !DILocation(line: 430, column: 23, scope: !3368)
!3388 = !DILocation(line: 431, column: 21, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !154, line: 433, column: 21)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !154, line: 432, column: 21)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !154, line: 430, column: 37)
!3392 = !DILocation(line: 0, scope: !3391)
!3393 = !DILocation(line: 431, column: 31, scope: !3389)
!3394 = !DILocation(line: 431, column: 32, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !154, line: 431, column: 27)
!3396 = distinct !DILexicalBlock(scope: !3389, file: !154, line: 431, column: 31)
!3397 = !DILocation(line: 431, column: 27, scope: !3396)
!3398 = !DILocation(line: 431, column: 25, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !154, line: 431, column: 41)
!3400 = !DILocation(line: 432, column: 33, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !154, line: 432, column: 27)
!3402 = !DILocation(line: 432, column: 27, scope: !3401)
!3403 = !DILocation(line: 432, column: 47, scope: !3401)
!3404 = !DILocation(line: 432, column: 27, scope: !3396)
!3405 = !DILocation(line: 433, column: 64, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !154, line: 432, column: 52)
!3407 = !DILocation(line: 433, column: 58, scope: !3406)
!3408 = !DILocation(line: 433, column: 78, scope: !3406)
!3409 = !DILocation(line: 433, column: 41, scope: !3406)
!3410 = !DILocation(line: 433, column: 25, scope: !3406)
!3411 = !DILocation(line: 433, column: 39, scope: !3406)
!3412 = !DILocation(line: 434, column: 23, scope: !3406)
!3413 = !DILocation(line: 436, column: 64, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3401, file: !154, line: 434, column: 30)
!3415 = !DILocation(line: 436, column: 58, scope: !3414)
!3416 = !DILocation(line: 436, column: 78, scope: !3414)
!3417 = !DILocation(line: 436, column: 41, scope: !3414)
!3418 = !DILocation(line: 436, column: 25, scope: !3414)
!3419 = !DILocation(line: 436, column: 39, scope: !3414)
!3420 = !DILocation(line: 431, column: 25, scope: !3396)
!3421 = distinct !{!3421, !3388, !3422}
!3422 = !DILocation(line: 432, column: 21, scope: !3389)
!3423 = !DILocation(line: 434, column: 21, scope: !3389)
!3424 = !DILocation(line: 437, column: 19, scope: !3391)
!3425 = !DILocation(line: 441, column: 70, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !154, line: 439, column: 21)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !154, line: 438, column: 21)
!3428 = distinct !DILexicalBlock(scope: !3386, file: !154, line: 437, column: 26)
!3429 = !DILocation(line: 441, column: 63, scope: !3426)
!3430 = !DILocation(line: 441, column: 31, scope: !3426)
!3431 = !DILocalVariable(name: "tmp___3", scope: !2988, file: !154, line: 364, type: !12)
!3432 = !DILocation(line: 441, column: 25, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3428, file: !154, line: 441, column: 25)
!3434 = !DILocation(line: 441, column: 25, scope: !3428)
!3435 = !DILocation(line: 442, column: 66, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !154, line: 443, column: 23)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !154, line: 442, column: 23)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !154, line: 441, column: 34)
!3439 = !DILocation(line: 442, column: 59, scope: !3436)
!3440 = !DILocation(line: 442, column: 79, scope: !3436)
!3441 = !DILocation(line: 442, column: 72, scope: !3436)
!3442 = !DILocation(line: 442, column: 23, scope: !3436)
!3443 = !DILocation(line: 443, column: 23, scope: !3438)
!3444 = !DILocation(line: 446, column: 17, scope: !3368)
!3445 = !DILocation(line: 447, column: 63, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !154, line: 448, column: 19)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !154, line: 447, column: 19)
!3448 = distinct !DILexicalBlock(scope: !3365, file: !154, line: 446, column: 24)
!3449 = !DILocation(line: 447, column: 56, scope: !3446)
!3450 = !DILocation(line: 447, column: 30, scope: !3446)
!3451 = !DILocalVariable(name: "tmp___26", scope: !2988, file: !154, line: 391, type: !12)
!3452 = !DILocation(line: 447, column: 23, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !154, line: 447, column: 23)
!3454 = !DILocation(line: 447, column: 23, scope: !3448)
!3455 = !DILocation(line: 448, column: 26, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !154, line: 447, column: 33)
!3457 = !DILocation(line: 449, column: 30, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !154, line: 449, column: 25)
!3459 = !DILocation(line: 449, column: 25, scope: !3456)
!3460 = !DILocation(line: 450, column: 65, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !154, line: 451, column: 23)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !154, line: 450, column: 23)
!3463 = distinct !DILexicalBlock(scope: !3458, file: !154, line: 449, column: 39)
!3464 = !DILocation(line: 450, column: 58, scope: !3461)
!3465 = !DILocation(line: 450, column: 23, scope: !3461)
!3466 = !DILocation(line: 451, column: 23, scope: !3463)
!3467 = !DILocation(line: 454, column: 41, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3456, file: !154, line: 454, column: 25)
!3469 = !DILocation(line: 454, column: 25, scope: !3468)
!3470 = !DILocation(line: 454, column: 56, scope: !3468)
!3471 = !DILocation(line: 454, column: 25, scope: !3456)
!3472 = !DILocation(line: 455, column: 36, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !154, line: 456, column: 23)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !154, line: 455, column: 23)
!3475 = distinct !DILexicalBlock(scope: !3468, file: !154, line: 454, column: 88)
!3476 = !DILocation(line: 455, column: 23, scope: !3473)
!3477 = !DILocation(line: 458, column: 21, scope: !3475)
!3478 = !DILocation(line: 458, column: 71, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !154, line: 460, column: 21)
!3480 = distinct !DILexicalBlock(scope: !3456, file: !154, line: 459, column: 21)
!3481 = !DILocation(line: 458, column: 64, scope: !3479)
!3482 = !DILocation(line: 458, column: 38, scope: !3479)
!3483 = !DILocation(line: 458, column: 36, scope: !3479)
!3484 = !DILocation(line: 461, column: 19, scope: !3456)
!3485 = !DILocation(line: 460, column: 65, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !154, line: 463, column: 21)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !154, line: 462, column: 21)
!3488 = distinct !DILexicalBlock(scope: !3453, file: !154, line: 461, column: 26)
!3489 = !DILocation(line: 460, column: 58, scope: !3486)
!3490 = !DILocation(line: 460, column: 32, scope: !3486)
!3491 = !DILocalVariable(name: "tmp___25", scope: !2988, file: !154, line: 390, type: !12)
!3492 = !DILocation(line: 460, column: 25, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3488, file: !154, line: 460, column: 25)
!3494 = !DILocation(line: 460, column: 25, scope: !3488)
!3495 = !DILocation(line: 461, column: 28, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !154, line: 460, column: 35)
!3497 = !DILocation(line: 462, column: 32, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !154, line: 462, column: 27)
!3499 = !DILocation(line: 462, column: 27, scope: !3496)
!3500 = !DILocation(line: 463, column: 77, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !154, line: 464, column: 25)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !154, line: 463, column: 25)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !154, line: 462, column: 41)
!3504 = !DILocation(line: 463, column: 70, scope: !3501)
!3505 = !DILocation(line: 463, column: 25, scope: !3501)
!3506 = !DILocation(line: 464, column: 25, scope: !3503)
!3507 = !DILocation(line: 467, column: 81, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !154, line: 467, column: 23)
!3509 = distinct !DILexicalBlock(scope: !3496, file: !154, line: 466, column: 23)
!3510 = !DILocation(line: 467, column: 74, scope: !3508)
!3511 = !DILocation(line: 467, column: 33, scope: !3508)
!3512 = !DILocalVariable(name: "tmp___5", scope: !2988, file: !154, line: 366, type: !116)
!3513 = !DILocation(line: 467, column: 40, scope: !3509)
!3514 = !DILocation(line: 467, column: 38, scope: !3509)
!3515 = !DILocation(line: 469, column: 21, scope: !3496)
!3516 = !DILocation(line: 469, column: 67, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !154, line: 471, column: 23)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !154, line: 470, column: 23)
!3519 = distinct !DILexicalBlock(scope: !3493, file: !154, line: 469, column: 28)
!3520 = !DILocation(line: 469, column: 60, scope: !3517)
!3521 = !DILocation(line: 469, column: 34, scope: !3517)
!3522 = !DILocalVariable(name: "tmp___24", scope: !2988, file: !154, line: 389, type: !12)
!3523 = !DILocation(line: 469, column: 27, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3519, file: !154, line: 469, column: 27)
!3525 = !DILocation(line: 469, column: 27, scope: !3519)
!3526 = !DILocation(line: 472, column: 34, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !154, line: 472, column: 29)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !154, line: 469, column: 37)
!3529 = !DILocation(line: 472, column: 38, scope: !3527)
!3530 = !DILocation(line: 472, column: 29, scope: !3528)
!3531 = !DILocation(line: 473, column: 69, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !154, line: 474, column: 27)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !154, line: 473, column: 27)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !154, line: 472, column: 47)
!3535 = !DILocation(line: 473, column: 62, scope: !3532)
!3536 = !DILocation(line: 473, column: 27, scope: !3532)
!3537 = !DILocation(line: 474, column: 27, scope: !3534)
!3538 = !DILocation(line: 477, column: 91, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !154, line: 477, column: 25)
!3540 = distinct !DILexicalBlock(scope: !3528, file: !154, line: 476, column: 25)
!3541 = !DILocation(line: 477, column: 83, scope: !3539)
!3542 = !DILocation(line: 477, column: 76, scope: !3539)
!3543 = !DILocation(line: 477, column: 35, scope: !3539)
!3544 = !DILocalVariable(name: "tmp___6", scope: !2988, file: !154, line: 369, type: !116)
!3545 = !DILocation(line: 477, column: 31, scope: !3540)
!3546 = !DILocalVariable(name: "id1", scope: !2988, file: !154, line: 367, type: !73)
!3547 = !DILocation(line: 478, column: 91, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3540, file: !154, line: 478, column: 25)
!3549 = !DILocation(line: 478, column: 83, scope: !3548)
!3550 = !DILocation(line: 478, column: 76, scope: !3548)
!3551 = !DILocation(line: 478, column: 35, scope: !3548)
!3552 = !DILocalVariable(name: "tmp___7", scope: !2988, file: !154, line: 370, type: !116)
!3553 = !DILocation(line: 478, column: 31, scope: !3540)
!3554 = !DILocalVariable(name: "id2", scope: !2988, file: !154, line: 368, type: !73)
!3555 = !DILocation(line: 480, column: 75, scope: !3540)
!3556 = !DILocation(line: 480, column: 54, scope: !3540)
!3557 = !DILocation(line: 480, column: 44, scope: !3540)
!3558 = !DILocation(line: 480, column: 25, scope: !3540)
!3559 = !DILocation(line: 480, column: 52, scope: !3540)
!3560 = !DILocation(line: 482, column: 30, scope: !3540)
!3561 = !DILocation(line: 484, column: 23, scope: !3528)
!3562 = !DILocation(line: 484, column: 69, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !154, line: 486, column: 25)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !154, line: 485, column: 25)
!3565 = distinct !DILexicalBlock(scope: !3524, file: !154, line: 484, column: 30)
!3566 = !DILocation(line: 484, column: 62, scope: !3563)
!3567 = !DILocation(line: 484, column: 36, scope: !3563)
!3568 = !DILocalVariable(name: "tmp___23", scope: !2988, file: !154, line: 388, type: !12)
!3569 = !DILocation(line: 484, column: 29, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !154, line: 484, column: 29)
!3571 = !DILocation(line: 484, column: 29, scope: !3565)
!3572 = !DILocation(line: 487, column: 36, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !154, line: 487, column: 31)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !154, line: 484, column: 39)
!3575 = !DILocation(line: 487, column: 40, scope: !3573)
!3576 = !DILocation(line: 487, column: 31, scope: !3574)
!3577 = !DILocation(line: 488, column: 74, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !154, line: 489, column: 29)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !154, line: 488, column: 29)
!3580 = distinct !DILexicalBlock(scope: !3573, file: !154, line: 487, column: 49)
!3581 = !DILocation(line: 488, column: 67, scope: !3578)
!3582 = !DILocation(line: 488, column: 29, scope: !3578)
!3583 = !DILocation(line: 489, column: 29, scope: !3580)
!3584 = !DILocation(line: 492, column: 93, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !154, line: 492, column: 27)
!3586 = distinct !DILexicalBlock(scope: !3574, file: !154, line: 491, column: 27)
!3587 = !DILocation(line: 492, column: 85, scope: !3585)
!3588 = !DILocation(line: 492, column: 78, scope: !3585)
!3589 = !DILocation(line: 492, column: 37, scope: !3585)
!3590 = !DILocalVariable(name: "tmp___8", scope: !2988, file: !154, line: 373, type: !116)
!3591 = !DILocation(line: 492, column: 37, scope: !3586)
!3592 = !DILocalVariable(name: "id1___0", scope: !2988, file: !154, line: 371, type: !73)
!3593 = !DILocation(line: 493, column: 93, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3586, file: !154, line: 493, column: 27)
!3595 = !DILocation(line: 493, column: 85, scope: !3594)
!3596 = !DILocation(line: 493, column: 78, scope: !3594)
!3597 = !DILocation(line: 493, column: 37, scope: !3594)
!3598 = !DILocalVariable(name: "tmp___9", scope: !2988, file: !154, line: 374, type: !116)
!3599 = !DILocation(line: 493, column: 37, scope: !3586)
!3600 = !DILocalVariable(name: "id2___0", scope: !2988, file: !154, line: 372, type: !73)
!3601 = !DILocation(line: 495, column: 88, scope: !3586)
!3602 = !DILocation(line: 495, column: 63, scope: !3586)
!3603 = !DILocation(line: 495, column: 53, scope: !3586)
!3604 = !DILocation(line: 495, column: 27, scope: !3586)
!3605 = !DILocation(line: 495, column: 61, scope: !3586)
!3606 = !DILocation(line: 497, column: 32, scope: !3586)
!3607 = !DILocation(line: 499, column: 25, scope: !3574)
!3608 = !DILocation(line: 499, column: 71, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !154, line: 501, column: 27)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !154, line: 500, column: 27)
!3611 = distinct !DILexicalBlock(scope: !3570, file: !154, line: 499, column: 32)
!3612 = !DILocation(line: 499, column: 64, scope: !3609)
!3613 = !DILocation(line: 499, column: 38, scope: !3609)
!3614 = !DILocalVariable(name: "tmp___22", scope: !2988, file: !154, line: 387, type: !12)
!3615 = !DILocation(line: 499, column: 31, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3611, file: !154, line: 499, column: 31)
!3617 = !DILocation(line: 499, column: 31, scope: !3611)
!3618 = !DILocation(line: 500, column: 39, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !154, line: 499, column: 41)
!3620 = !DILocation(line: 501, column: 27, scope: !3619)
!3621 = !DILocation(line: 502, column: 73, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !154, line: 503, column: 29)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !154, line: 502, column: 29)
!3624 = distinct !DILexicalBlock(scope: !3616, file: !154, line: 501, column: 34)
!3625 = !DILocation(line: 502, column: 66, scope: !3622)
!3626 = !DILocation(line: 502, column: 40, scope: !3622)
!3627 = !DILocalVariable(name: "tmp___21", scope: !2988, file: !154, line: 386, type: !12)
!3628 = !DILocation(line: 502, column: 33, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !154, line: 502, column: 33)
!3630 = !DILocation(line: 502, column: 33, scope: !3624)
!3631 = !DILocation(line: 503, column: 43, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !154, line: 502, column: 43)
!3633 = !DILocation(line: 504, column: 29, scope: !3632)
!3634 = !DILocation(line: 505, column: 75, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !154, line: 506, column: 31)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !154, line: 505, column: 31)
!3637 = distinct !DILexicalBlock(scope: !3629, file: !154, line: 504, column: 36)
!3638 = !DILocation(line: 505, column: 68, scope: !3635)
!3639 = !DILocation(line: 505, column: 42, scope: !3635)
!3640 = !DILocalVariable(name: "tmp___20", scope: !2988, file: !154, line: 385, type: !12)
!3641 = !DILocation(line: 505, column: 35, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !154, line: 505, column: 35)
!3643 = !DILocation(line: 505, column: 35, scope: !3637)
!3644 = !DILocation(line: 506, column: 45, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3642, file: !154, line: 505, column: 45)
!3646 = !DILocation(line: 507, column: 31, scope: !3645)
!3647 = !DILocation(line: 508, column: 77, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !154, line: 509, column: 33)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !154, line: 508, column: 33)
!3650 = distinct !DILexicalBlock(scope: !3642, file: !154, line: 507, column: 38)
!3651 = !DILocation(line: 508, column: 70, scope: !3648)
!3652 = !DILocation(line: 508, column: 44, scope: !3648)
!3653 = !DILocalVariable(name: "tmp___19", scope: !2988, file: !154, line: 384, type: !12)
!3654 = !DILocation(line: 508, column: 37, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3650, file: !154, line: 508, column: 37)
!3656 = !DILocation(line: 508, column: 37, scope: !3650)
!3657 = !DILocation(line: 509, column: 53, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !154, line: 508, column: 47)
!3659 = !DILocation(line: 510, column: 33, scope: !3658)
!3660 = !DILocation(line: 511, column: 79, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !154, line: 512, column: 35)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !154, line: 511, column: 35)
!3663 = distinct !DILexicalBlock(scope: !3655, file: !154, line: 510, column: 40)
!3664 = !DILocation(line: 511, column: 72, scope: !3661)
!3665 = !DILocation(line: 511, column: 46, scope: !3661)
!3666 = !DILocalVariable(name: "tmp___18", scope: !2988, file: !154, line: 383, type: !12)
!3667 = !DILocation(line: 511, column: 39, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3663, file: !154, line: 511, column: 39)
!3669 = !DILocation(line: 511, column: 39, scope: !3663)
!3670 = !DILocation(line: 512, column: 51, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3668, file: !154, line: 511, column: 49)
!3672 = !DILocation(line: 513, column: 35, scope: !3671)
!3673 = !DILocation(line: 514, column: 81, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !154, line: 515, column: 37)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !154, line: 514, column: 37)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !154, line: 513, column: 42)
!3677 = !DILocation(line: 514, column: 74, scope: !3674)
!3678 = !DILocation(line: 514, column: 48, scope: !3674)
!3679 = !DILocalVariable(name: "tmp___17", scope: !2988, file: !154, line: 382, type: !12)
!3680 = !DILocation(line: 514, column: 41, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3676, file: !154, line: 514, column: 41)
!3682 = !DILocation(line: 514, column: 41, scope: !3676)
!3683 = !DILocation(line: 515, column: 50, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3681, file: !154, line: 514, column: 51)
!3685 = !DILocation(line: 516, column: 37, scope: !3684)
!3686 = !DILocation(line: 517, column: 83, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !154, line: 518, column: 39)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !154, line: 517, column: 39)
!3689 = distinct !DILexicalBlock(scope: !3681, file: !154, line: 516, column: 44)
!3690 = !DILocation(line: 517, column: 76, scope: !3687)
!3691 = !DILocation(line: 517, column: 50, scope: !3687)
!3692 = !DILocalVariable(name: "tmp___16", scope: !2988, file: !154, line: 381, type: !12)
!3693 = !DILocation(line: 517, column: 43, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3689, file: !154, line: 517, column: 43)
!3695 = !DILocation(line: 517, column: 43, scope: !3689)
!3696 = !DILocation(line: 518, column: 56, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !154, line: 517, column: 53)
!3698 = !DILocation(line: 519, column: 39, scope: !3697)
!3699 = !DILocation(line: 520, column: 85, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !154, line: 521, column: 41)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !154, line: 520, column: 41)
!3702 = distinct !DILexicalBlock(scope: !3694, file: !154, line: 519, column: 46)
!3703 = !DILocation(line: 520, column: 78, scope: !3700)
!3704 = !DILocation(line: 520, column: 52, scope: !3700)
!3705 = !DILocalVariable(name: "tmp___15", scope: !2988, file: !154, line: 380, type: !12)
!3706 = !DILocation(line: 520, column: 45, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3702, file: !154, line: 520, column: 45)
!3708 = !DILocation(line: 520, column: 45, scope: !3702)
!3709 = !DILocation(line: 521, column: 52, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !154, line: 520, column: 55)
!3711 = !DILocation(line: 522, column: 41, scope: !3710)
!3712 = !DILocation(line: 523, column: 87, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !154, line: 524, column: 43)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !154, line: 523, column: 43)
!3715 = distinct !DILexicalBlock(scope: !3707, file: !154, line: 522, column: 48)
!3716 = !DILocation(line: 523, column: 80, scope: !3713)
!3717 = !DILocation(line: 523, column: 54, scope: !3713)
!3718 = !DILocalVariable(name: "tmp___14", scope: !2988, file: !154, line: 379, type: !12)
!3719 = !DILocation(line: 523, column: 47, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3715, file: !154, line: 523, column: 47)
!3721 = !DILocation(line: 523, column: 47, scope: !3715)
!3722 = !DILocation(line: 524, column: 59, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3720, file: !154, line: 523, column: 57)
!3724 = !DILocation(line: 525, column: 43, scope: !3723)
!3725 = !DILocation(line: 526, column: 89, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !154, line: 527, column: 45)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !154, line: 526, column: 45)
!3728 = distinct !DILexicalBlock(scope: !3720, file: !154, line: 525, column: 50)
!3729 = !DILocation(line: 526, column: 82, scope: !3726)
!3730 = !DILocation(line: 526, column: 56, scope: !3726)
!3731 = !DILocalVariable(name: "tmp___13", scope: !2988, file: !154, line: 378, type: !12)
!3732 = !DILocation(line: 526, column: 49, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3728, file: !154, line: 526, column: 49)
!3734 = !DILocation(line: 526, column: 49, scope: !3728)
!3735 = !DILocation(line: 527, column: 58, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !154, line: 526, column: 59)
!3737 = !DILocation(line: 528, column: 45, scope: !3736)
!3738 = !DILocation(line: 529, column: 91, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !154, line: 530, column: 47)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !154, line: 529, column: 47)
!3741 = distinct !DILexicalBlock(scope: !3733, file: !154, line: 528, column: 52)
!3742 = !DILocation(line: 529, column: 84, scope: !3739)
!3743 = !DILocation(line: 529, column: 58, scope: !3739)
!3744 = !DILocalVariable(name: "tmp___12", scope: !2988, file: !154, line: 377, type: !12)
!3745 = !DILocation(line: 529, column: 51, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3741, file: !154, line: 529, column: 51)
!3747 = !DILocation(line: 529, column: 51, scope: !3741)
!3748 = !DILocation(line: 530, column: 60, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3746, file: !154, line: 529, column: 61)
!3750 = !DILocation(line: 531, column: 47, scope: !3749)
!3751 = !DILocation(line: 532, column: 66, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3746, file: !154, line: 532, column: 51)
!3753 = !DILocation(line: 532, column: 59, scope: !3752)
!3754 = !DILocation(line: 532, column: 74, scope: !3752)
!3755 = !DILocation(line: 532, column: 57, scope: !3752)
!3756 = !DILocation(line: 532, column: 51, scope: !3752)
!3757 = !DILocation(line: 532, column: 79, scope: !3752)
!3758 = !DILocation(line: 532, column: 51, scope: !3746)
!3759 = !DILocation(line: 532, column: 49, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3752, file: !154, line: 532, column: 86)
!3761 = !DILocation(line: 532, column: 66, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3752, file: !154, line: 532, column: 51)
!3763 = !DILocation(line: 532, column: 59, scope: !3762)
!3764 = !DILocation(line: 532, column: 74, scope: !3762)
!3765 = !DILocation(line: 532, column: 57, scope: !3762)
!3766 = !DILocation(line: 532, column: 51, scope: !3762)
!3767 = !DILocation(line: 532, column: 79, scope: !3762)
!3768 = !DILocation(line: 532, column: 85, scope: !3762)
!3769 = !DILocation(line: 533, column: 69, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !154, line: 533, column: 53)
!3771 = distinct !DILexicalBlock(scope: !3762, file: !154, line: 532, column: 85)
!3772 = !DILocation(line: 533, column: 53, scope: !3770)
!3773 = !DILocation(line: 533, column: 77, scope: !3770)
!3774 = !DILocation(line: 533, column: 53, scope: !3771)
!3775 = !DILocation(line: 534, column: 92, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !154, line: 535, column: 51)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !154, line: 534, column: 51)
!3778 = distinct !DILexicalBlock(scope: !3770, file: !154, line: 533, column: 109)
!3779 = !DILocation(line: 534, column: 85, scope: !3776)
!3780 = !DILocation(line: 534, column: 62, scope: !3776)
!3781 = !DILocalVariable(name: "tmp___10", scope: !2988, file: !154, line: 375, type: !12)
!3782 = !DILocation(line: 534, column: 64, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3778, file: !154, line: 534, column: 55)
!3784 = !DILocation(line: 534, column: 55, scope: !3778)
!3785 = !DILocation(line: 535, column: 63, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !154, line: 534, column: 70)
!3787 = !DILocation(line: 535, column: 61, scope: !3786)
!3788 = !DILocation(line: 536, column: 51, scope: !3786)
!3789 = !DILocation(line: 538, column: 109, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !154, line: 538, column: 53)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !154, line: 537, column: 53)
!3792 = distinct !DILexicalBlock(scope: !3783, file: !154, line: 536, column: 58)
!3793 = !DILocation(line: 538, column: 102, scope: !3790)
!3794 = !DILocation(line: 538, column: 63, scope: !3790)
!3795 = !DILocation(line: 538, column: 61, scope: !3790)
!3796 = !DILocation(line: 540, column: 71, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3778, file: !154, line: 540, column: 55)
!3798 = !DILocation(line: 540, column: 55, scope: !3797)
!3799 = !DILocation(line: 540, column: 79, scope: !3797)
!3800 = !DILocation(line: 540, column: 55, scope: !3778)
!3801 = !DILocation(line: 542, column: 68, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !154, line: 542, column: 53)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !154, line: 541, column: 53)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !154, line: 540, column: 111)
!3805 = !DILocation(line: 542, column: 61, scope: !3802)
!3806 = !DILocation(line: 542, column: 81, scope: !3802)
!3807 = !DILocation(line: 542, column: 74, scope: !3802)
!3808 = !DILocation(line: 541, column: 53, scope: !3802)
!3809 = !DILocation(line: 542, column: 53, scope: !3804)
!3810 = !DILocation(line: 544, column: 49, scope: !3778)
!3811 = !DILocation(line: 545, column: 69, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3770, file: !154, line: 545, column: 53)
!3813 = !DILocation(line: 545, column: 53, scope: !3812)
!3814 = !DILocation(line: 545, column: 77, scope: !3812)
!3815 = !DILocation(line: 545, column: 53, scope: !3770)
!3816 = !DILocation(line: 546, column: 92, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !154, line: 547, column: 51)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !154, line: 546, column: 51)
!3819 = distinct !DILexicalBlock(scope: !3812, file: !154, line: 545, column: 109)
!3820 = !DILocation(line: 546, column: 85, scope: !3817)
!3821 = !DILocation(line: 546, column: 62, scope: !3817)
!3822 = !DILocalVariable(name: "tmp___11", scope: !2988, file: !154, line: 376, type: !12)
!3823 = !DILocation(line: 546, column: 64, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3819, file: !154, line: 546, column: 55)
!3825 = !DILocation(line: 546, column: 55, scope: !3819)
!3826 = !DILocation(line: 547, column: 63, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !154, line: 546, column: 70)
!3828 = !DILocation(line: 547, column: 61, scope: !3827)
!3829 = !DILocation(line: 548, column: 51, scope: !3827)
!3830 = !DILocation(line: 550, column: 109, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !154, line: 550, column: 53)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !154, line: 549, column: 53)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !154, line: 548, column: 58)
!3834 = !DILocation(line: 550, column: 102, scope: !3831)
!3835 = !DILocation(line: 550, column: 63, scope: !3831)
!3836 = !DILocation(line: 550, column: 61, scope: !3831)
!3837 = !DILocation(line: 552, column: 71, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3819, file: !154, line: 552, column: 55)
!3839 = !DILocation(line: 552, column: 55, scope: !3838)
!3840 = !DILocation(line: 552, column: 79, scope: !3838)
!3841 = !DILocation(line: 552, column: 55, scope: !3819)
!3842 = !DILocation(line: 554, column: 68, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !154, line: 554, column: 53)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !154, line: 553, column: 53)
!3845 = distinct !DILexicalBlock(scope: !3838, file: !154, line: 552, column: 111)
!3846 = !DILocation(line: 554, column: 61, scope: !3843)
!3847 = !DILocation(line: 554, column: 81, scope: !3843)
!3848 = !DILocation(line: 554, column: 74, scope: !3843)
!3849 = !DILocation(line: 553, column: 53, scope: !3843)
!3850 = !DILocation(line: 554, column: 53, scope: !3845)
!3851 = !DILocation(line: 556, column: 49, scope: !3819)
!3852 = !DILocation(line: 559, column: 66, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !154, line: 558, column: 51)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !154, line: 557, column: 51)
!3855 = distinct !DILexicalBlock(scope: !3812, file: !154, line: 556, column: 56)
!3856 = !DILocation(line: 559, column: 59, scope: !3853)
!3857 = !DILocation(line: 559, column: 79, scope: !3853)
!3858 = !DILocation(line: 559, column: 72, scope: !3853)
!3859 = !DILocation(line: 558, column: 51, scope: !3853)
!3860 = !DILocation(line: 559, column: 51, scope: !3855)
!3861 = !DILocation(line: 561, column: 47, scope: !3771)
!3862 = !DILocation(line: 564, column: 64, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !154, line: 563, column: 49)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !154, line: 562, column: 49)
!3865 = distinct !DILexicalBlock(scope: !3762, file: !154, line: 561, column: 54)
!3866 = !DILocation(line: 564, column: 57, scope: !3863)
!3867 = !DILocation(line: 564, column: 77, scope: !3863)
!3868 = !DILocation(line: 564, column: 70, scope: !3863)
!3869 = !DILocation(line: 563, column: 49, scope: !3863)
!3870 = !DILocation(line: 564, column: 49, scope: !3865)
!3871 = !DILocation(line: 0, scope: !3524)
!3872 = !DILocation(line: 0, scope: !3493)
!3873 = !DILocation(line: 0, scope: !3453)
!3874 = !DILocation(line: 0, scope: !3365)
!3875 = !DILocation(line: 0, scope: !3324)
!3876 = !DILocation(line: 0, scope: !3283)
!3877 = !DILocation(line: 378, column: 8, scope: !3126)
!3878 = !DILocation(line: 567, column: 10, scope: !3192)
!3879 = distinct !{!3879, !3186, !3880}
!3880 = !DILocation(line: 568, column: 3, scope: !3187)
!3881 = !DILocation(line: 570, column: 3, scope: !3187)
!3882 = !DILocation(line: 571, column: 23, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 571, column: 7)
!3884 = !DILocation(line: 571, column: 7, scope: !3883)
!3885 = !DILocation(line: 571, column: 31, scope: !3883)
!3886 = !DILocation(line: 571, column: 7, scope: !3126)
!3887 = !DILocation(line: 572, column: 15, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3883, file: !154, line: 571, column: 63)
!3889 = !DILocation(line: 572, column: 13, scope: !3888)
!3890 = !DILocation(line: 573, column: 3, scope: !3888)
!3891 = !DILocation(line: 575, column: 23, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 575, column: 7)
!3893 = !DILocation(line: 575, column: 7, scope: !3892)
!3894 = !DILocation(line: 575, column: 31, scope: !3892)
!3895 = !DILocation(line: 575, column: 7, scope: !3126)
!3896 = !DILocation(line: 576, column: 15, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3892, file: !154, line: 575, column: 63)
!3898 = !DILocation(line: 576, column: 13, scope: !3897)
!3899 = !DILocation(line: 577, column: 3, scope: !3897)
!3900 = !DILocation(line: 580, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 580, column: 7)
!3902 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 578, column: 3)
!3903 = !DILocation(line: 580, column: 16, scope: !3901)
!3904 = !DILocation(line: 580, column: 7, scope: !3902)
!3905 = !DILocation(line: 580, column: 5, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3901, file: !154, line: 580, column: 23)
!3907 = !DILocation(line: 584, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 584, column: 7)
!3909 = !DILocation(line: 584, column: 16, scope: !3908)
!3910 = !DILocation(line: 584, column: 7, scope: !3902)
!3911 = !DILocation(line: 584, column: 5, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !154, line: 584, column: 23)
!3913 = !DILocation(line: 588, column: 7, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 588, column: 7)
!3915 = !DILocation(line: 588, column: 16, scope: !3914)
!3916 = !DILocation(line: 588, column: 7, scope: !3902)
!3917 = !DILocation(line: 588, column: 5, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !154, line: 588, column: 23)
!3919 = !DILocation(line: 592, column: 7, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 592, column: 7)
!3921 = !DILocation(line: 592, column: 16, scope: !3920)
!3922 = !DILocation(line: 592, column: 7, scope: !3902)
!3923 = !DILocation(line: 592, column: 5, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3920, file: !154, line: 592, column: 23)
!3925 = !DILocation(line: 596, column: 3, scope: !3902)
!3926 = !DILocation(line: 581, column: 17, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !154, line: 599, column: 3)
!3928 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 598, column: 3)
!3929 = !DILocation(line: 581, column: 26, scope: !3927)
!3930 = !DILocation(line: 581, column: 7, scope: !3927)
!3931 = !DILocalVariable(name: "r", scope: !2988, file: !154, line: 358, type: !12)
!3932 = !DILocation(line: 582, column: 3, scope: !3902)
!3933 = !DILocation(line: 585, column: 17, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !154, line: 585, column: 3)
!3935 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 584, column: 3)
!3936 = !DILocation(line: 585, column: 26, scope: !3934)
!3937 = !DILocation(line: 585, column: 7, scope: !3934)
!3938 = !DILocation(line: 586, column: 3, scope: !3902)
!3939 = !DILocation(line: 589, column: 18, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !154, line: 589, column: 3)
!3941 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 588, column: 3)
!3942 = !DILocation(line: 589, column: 27, scope: !3940)
!3943 = !DILocation(line: 589, column: 7, scope: !3940)
!3944 = !DILocation(line: 590, column: 3, scope: !3902)
!3945 = !DILocation(line: 593, column: 18, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !154, line: 593, column: 3)
!3947 = distinct !DILexicalBlock(scope: !3902, file: !154, line: 592, column: 3)
!3948 = !DILocation(line: 593, column: 27, scope: !3946)
!3949 = !DILocation(line: 593, column: 7, scope: !3946)
!3950 = !DILocation(line: 594, column: 3, scope: !3902)
!3951 = !DILocation(line: 598, column: 3, scope: !3902)
!3952 = !DILocation(line: 0, scope: !3902)
!3953 = !DILocation(line: 601, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3126, file: !154, line: 601, column: 7)
!3955 = !DILocation(line: 601, column: 7, scope: !3126)
!3956 = !DILocation(line: 602, column: 5, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !154, line: 601, column: 10)
!3958 = !DILocation(line: 605, column: 3, scope: !3126)
!3959 = !DILocation(line: 607, column: 1, scope: !2988)
!3960 = distinct !DISubprogram(name: "str_isarg", scope: !154, file: !154, line: 123, type: !3961, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!12, !147, !147, !147}
!3963 = !DILocalVariable(name: "str", arg: 1, scope: !3960, file: !154, line: 123, type: !147)
!3964 = !DILocation(line: 0, scope: !3960)
!3965 = !DILocalVariable(name: "arg1", arg: 2, scope: !3960, file: !154, line: 123, type: !147)
!3966 = !DILocalVariable(name: "arg2", arg: 3, scope: !3960, file: !154, line: 123, type: !147)
!3967 = !DILocation(line: 126, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !154, line: 126, column: 7)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !154, line: 128, column: 3)
!3970 = !DILocation(line: 126, column: 28, scope: !3968)
!3971 = !DILocation(line: 126, column: 7, scope: !3969)
!3972 = !DILocation(line: 126, column: 11, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !154, line: 128, column: 5)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !154, line: 127, column: 5)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !154, line: 126, column: 60)
!3976 = !DILocalVariable(name: "tmp", scope: !3960, file: !154, line: 125, type: !12)
!3977 = !DILocation(line: 126, column: 13, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !154, line: 126, column: 9)
!3979 = !DILocation(line: 126, column: 9, scope: !3975)
!3980 = !DILocation(line: 127, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !154, line: 126, column: 19)
!3982 = !DILocation(line: 129, column: 3, scope: !3975)
!3983 = !DILocation(line: 130, column: 7, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3969, file: !154, line: 130, column: 7)
!3985 = !DILocation(line: 130, column: 28, scope: !3984)
!3986 = !DILocation(line: 130, column: 7, scope: !3969)
!3987 = !DILocation(line: 130, column: 15, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !154, line: 132, column: 5)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !154, line: 131, column: 5)
!3990 = distinct !DILexicalBlock(scope: !3984, file: !154, line: 130, column: 60)
!3991 = !DILocalVariable(name: "tmp___0", scope: !3960, file: !154, line: 126, type: !12)
!3992 = !DILocation(line: 130, column: 17, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3990, file: !154, line: 130, column: 9)
!3994 = !DILocation(line: 130, column: 9, scope: !3990)
!3995 = !DILocation(line: 131, column: 7, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !154, line: 130, column: 23)
!3997 = !DILocation(line: 133, column: 3, scope: !3990)
!3998 = !DILocation(line: 134, column: 3, scope: !3969)
!3999 = !DILocation(line: 0, scope: !3969)
!4000 = !DILocation(line: 136, column: 1, scope: !3960)
!4001 = distinct !DISubprogram(name: "prt_version", scope: !154, file: !154, line: 97, type: !4002, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null}
!4004 = !DILocalVariable(name: "__cil_tmp1", scope: !4001, file: !154, line: 99, type: !23)
!4005 = !DILocation(line: 99, column: 9, scope: !4001)
!4006 = !DILocation(line: 101, column: 34, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !154, line: 103, column: 3)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !154, line: 102, column: 3)
!4009 = distinct !DILexicalBlock(scope: !4001, file: !154, line: 101, column: 3)
!4010 = !DILocation(line: 100, column: 3, scope: !4007)
!4011 = !DILocation(line: 106, column: 3, scope: !4009)
!4012 = distinct !DISubprogram(name: "prt_help", scope: !154, file: !154, line: 66, type: !4002, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4013 = !DILocalVariable(name: "__cil_tmp1", scope: !4012, file: !154, line: 68, type: !23)
!4014 = !DILocation(line: 68, column: 9, scope: !4012)
!4015 = !DILocation(line: 70, column: 34, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !154, line: 72, column: 3)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !154, line: 71, column: 3)
!4018 = distinct !DILexicalBlock(scope: !4012, file: !154, line: 70, column: 3)
!4019 = !DILocation(line: 69, column: 3, scope: !4016)
!4020 = !DILocation(line: 95, column: 3, scope: !4018)
!4021 = distinct !DISubprogram(name: "str_get_streams", scope: !154, file: !154, line: 147, type: !4022, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!12, !147, !144, !73}
!4024 = !DILocalVariable(name: "str", arg: 1, scope: !4021, file: !154, line: 147, type: !147)
!4025 = !DILocation(line: 0, scope: !4021)
!4026 = !DILocalVariable(name: "stm", arg: 2, scope: !4021, file: !154, line: 147, type: !144)
!4027 = !DILocalVariable(name: "msk", arg: 3, scope: !4021, file: !154, line: 147, type: !73)
!4028 = !DILocalVariable(name: "tmp", scope: !4021, file: !154, line: 151, type: !23)
!4029 = !DILocation(line: 151, column: 9, scope: !4021)
!4030 = !DILocalVariable(name: "__cil_tmp13", scope: !4021, file: !154, line: 158, type: !23)
!4031 = !DILocation(line: 158, column: 9, scope: !4021)
!4032 = !DILocalVariable(name: "__cil_tmp14", scope: !4021, file: !154, line: 159, type: !23)
!4033 = !DILocation(line: 159, column: 9, scope: !4021)
!4034 = !DILocalVariable(name: "incl", scope: !4021, file: !154, line: 150, type: !12)
!4035 = !DILocation(line: 157, column: 3, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !154, line: 157, column: 3)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !154, line: 156, column: 3)
!4038 = distinct !DILexicalBlock(scope: !4021, file: !154, line: 161, column: 3)
!4039 = !DILocation(line: 157, column: 13, scope: !4036)
!4040 = !DILocation(line: 157, column: 26, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 157, column: 9)
!4042 = distinct !DILexicalBlock(scope: !4036, file: !154, line: 157, column: 13)
!4043 = !DILocation(line: 157, column: 12, scope: !4041)
!4044 = !DILocation(line: 157, column: 31, scope: !4041)
!4045 = !DILocation(line: 157, column: 9, scope: !4042)
!4046 = !DILocation(line: 157, column: 7, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4041, file: !154, line: 157, column: 38)
!4048 = !DILocation(line: 158, column: 11, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !154, line: 160, column: 5)
!4050 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 159, column: 5)
!4051 = !DILocation(line: 160, column: 23, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 160, column: 9)
!4053 = !DILocation(line: 160, column: 9, scope: !4052)
!4054 = !DILocation(line: 160, column: 28, scope: !4052)
!4055 = !DILocation(line: 160, column: 9, scope: !4042)
!4056 = !DILocation(line: 161, column: 11, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4052, file: !154, line: 160, column: 35)
!4058 = !DILocation(line: 163, column: 5, scope: !4057)
!4059 = !DILocation(line: 164, column: 23, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4052, file: !154, line: 164, column: 9)
!4061 = !DILocation(line: 164, column: 9, scope: !4060)
!4062 = !DILocation(line: 164, column: 28, scope: !4060)
!4063 = !DILocation(line: 164, column: 9, scope: !4052)
!4064 = !DILocation(line: 165, column: 11, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !154, line: 164, column: 35)
!4066 = !DILocation(line: 167, column: 5, scope: !4065)
!4067 = !DILocation(line: 0, scope: !4060)
!4068 = !DILocation(line: 0, scope: !4042)
!4069 = !DILocation(line: 0, scope: !4052)
!4070 = !DILocation(line: 172, column: 15, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !154, line: 172, column: 5)
!4072 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 171, column: 5)
!4073 = !DILocalVariable(name: "tmp___3", scope: !4021, file: !154, line: 157, type: !12)
!4074 = !DILocation(line: 172, column: 17, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 172, column: 9)
!4076 = !DILocation(line: 172, column: 9, scope: !4042)
!4077 = !DILocation(line: 173, column: 11, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !154, line: 172, column: 23)
!4079 = !DILocalVariable(name: "stm1", scope: !4021, file: !154, line: 152, type: !73)
!4080 = !DILocalVariable(name: "stm2", scope: !4021, file: !154, line: 153, type: !73)
!4081 = !DILocation(line: 176, column: 5, scope: !4078)
!4082 = !DILocation(line: 177, column: 17, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !154, line: 178, column: 7)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !154, line: 177, column: 7)
!4085 = distinct !DILexicalBlock(scope: !4075, file: !154, line: 176, column: 12)
!4086 = !DILocalVariable(name: "tmp___2", scope: !4021, file: !154, line: 156, type: !12)
!4087 = !DILocation(line: 177, column: 19, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !154, line: 177, column: 11)
!4089 = !DILocation(line: 177, column: 11, scope: !4085)
!4090 = !DILocation(line: 178, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4088, file: !154, line: 177, column: 25)
!4092 = !DILocation(line: 181, column: 16, scope: !4091)
!4093 = !DILocation(line: 182, column: 7, scope: !4091)
!4094 = !DILocation(line: 184, column: 19, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !154, line: 184, column: 9)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !154, line: 183, column: 9)
!4097 = distinct !DILexicalBlock(scope: !4088, file: !154, line: 182, column: 14)
!4098 = !DILocalVariable(name: "tmp___0", scope: !4021, file: !154, line: 154, type: !116)
!4099 = !DILocation(line: 184, column: 16, scope: !4096)
!4100 = !DILocation(line: 185, column: 29, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4097, file: !154, line: 185, column: 13)
!4102 = !DILocation(line: 185, column: 13, scope: !4101)
!4103 = !DILocation(line: 185, column: 36, scope: !4101)
!4104 = !DILocation(line: 185, column: 33, scope: !4101)
!4105 = !DILocation(line: 185, column: 13, scope: !4097)
!4106 = !DILocation(line: 186, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4101, file: !154, line: 185, column: 57)
!4108 = !DILocation(line: 189, column: 31, scope: !4097)
!4109 = !DILocation(line: 191, column: 27, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4097, file: !154, line: 191, column: 13)
!4111 = !DILocation(line: 191, column: 13, scope: !4110)
!4112 = !DILocation(line: 191, column: 32, scope: !4110)
!4113 = !DILocation(line: 191, column: 13, scope: !4097)
!4114 = !DILocation(line: 192, column: 15, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !154, line: 192, column: 11)
!4116 = distinct !DILexicalBlock(scope: !4110, file: !154, line: 191, column: 39)
!4117 = !DILocation(line: 193, column: 21, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4115, file: !154, line: 193, column: 11)
!4119 = !DILocalVariable(name: "tmp___1", scope: !4021, file: !154, line: 155, type: !116)
!4120 = !DILocation(line: 193, column: 18, scope: !4115)
!4121 = !DILocation(line: 194, column: 31, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4116, file: !154, line: 194, column: 15)
!4123 = !DILocation(line: 194, column: 15, scope: !4122)
!4124 = !DILocation(line: 194, column: 38, scope: !4122)
!4125 = !DILocation(line: 194, column: 35, scope: !4122)
!4126 = !DILocation(line: 194, column: 15, scope: !4116)
!4127 = !DILocation(line: 195, column: 13, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4122, file: !154, line: 194, column: 59)
!4129 = !DILocation(line: 197, column: 33, scope: !4116)
!4130 = !DILocation(line: 198, column: 9, scope: !4116)
!4131 = !DILocation(line: 0, scope: !4110)
!4132 = !DILocation(line: 0, scope: !4097)
!4133 = !DILocation(line: 0, scope: !4088)
!4134 = !DILocation(line: 0, scope: !4075)
!4135 = !DILocation(line: 204, column: 9, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 204, column: 9)
!4137 = !DILocation(line: 204, column: 9, scope: !4042)
!4138 = !DILocalVariable(name: "i", scope: !4021, file: !154, line: 149, type: !73)
!4139 = !DILocation(line: 205, column: 7, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !154, line: 207, column: 7)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !154, line: 206, column: 7)
!4142 = distinct !DILexicalBlock(scope: !4136, file: !154, line: 204, column: 15)
!4143 = !DILocation(line: 0, scope: !4142)
!4144 = !DILocation(line: 205, column: 17, scope: !4140)
!4145 = !DILocation(line: 205, column: 18, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !154, line: 205, column: 13)
!4147 = distinct !DILexicalBlock(scope: !4140, file: !154, line: 205, column: 17)
!4148 = !DILocation(line: 205, column: 13, scope: !4147)
!4149 = !DILocation(line: 205, column: 11, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !154, line: 205, column: 28)
!4151 = !DILocation(line: 206, column: 60, scope: !4147)
!4152 = !DILocation(line: 206, column: 54, scope: !4147)
!4153 = !DILocation(line: 206, column: 39, scope: !4147)
!4154 = !DILocation(line: 206, column: 65, scope: !4147)
!4155 = !DILocation(line: 206, column: 22, scope: !4147)
!4156 = !DILocation(line: 206, column: 15, scope: !4147)
!4157 = !DILocation(line: 206, column: 20, scope: !4147)
!4158 = !DILocation(line: 205, column: 11, scope: !4147)
!4159 = distinct !{!4159, !4139, !4160}
!4160 = !DILocation(line: 206, column: 7, scope: !4140)
!4161 = !DILocation(line: 208, column: 7, scope: !4140)
!4162 = !DILocation(line: 211, column: 5, scope: !4142)
!4163 = !DILocation(line: 210, column: 7, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !154, line: 212, column: 7)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !154, line: 211, column: 7)
!4166 = distinct !DILexicalBlock(scope: !4136, file: !154, line: 211, column: 12)
!4167 = !DILocation(line: 0, scope: !4166)
!4168 = !DILocation(line: 210, column: 17, scope: !4164)
!4169 = !DILocation(line: 210, column: 18, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !154, line: 210, column: 13)
!4171 = distinct !DILexicalBlock(scope: !4164, file: !154, line: 210, column: 17)
!4172 = !DILocation(line: 210, column: 13, scope: !4171)
!4173 = !DILocation(line: 210, column: 11, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !154, line: 210, column: 28)
!4175 = !DILocation(line: 211, column: 60, scope: !4171)
!4176 = !DILocation(line: 211, column: 54, scope: !4171)
!4177 = !DILocation(line: 211, column: 39, scope: !4171)
!4178 = !DILocation(line: 211, column: 67, scope: !4171)
!4179 = !DILocation(line: 211, column: 65, scope: !4171)
!4180 = !DILocation(line: 211, column: 22, scope: !4171)
!4181 = !DILocation(line: 211, column: 15, scope: !4171)
!4182 = !DILocation(line: 211, column: 20, scope: !4171)
!4183 = !DILocation(line: 210, column: 11, scope: !4171)
!4184 = distinct !{!4184, !4163, !4185}
!4185 = !DILocation(line: 211, column: 7, scope: !4164)
!4186 = !DILocation(line: 213, column: 7, scope: !4164)
!4187 = !DILocation(line: 215, column: 11, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !154, line: 218, column: 5)
!4189 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 217, column: 5)
!4190 = !DILocation(line: 217, column: 23, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4042, file: !154, line: 217, column: 9)
!4192 = !DILocation(line: 217, column: 9, scope: !4191)
!4193 = !DILocation(line: 217, column: 28, scope: !4191)
!4194 = !DILocation(line: 217, column: 9, scope: !4042)
!4195 = !DILocation(line: 218, column: 11, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4191, file: !154, line: 217, column: 35)
!4197 = !DILocation(line: 219, column: 5, scope: !4196)
!4198 = distinct !{!4198, !4035, !4199}
!4199 = !DILocation(line: 220, column: 3, scope: !4036)
!4200 = !DILocation(line: 222, column: 3, scope: !4036)
!4201 = !DILocation(line: 222, column: 3, scope: !4038)
!4202 = !DILocation(line: 0, scope: !4038)
!4203 = !DILocation(line: 224, column: 1, scope: !4021)
!4204 = distinct !DISubprogram(name: "str_clone", scope: !154, file: !154, line: 108, type: !4205, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!23, !147}
!4207 = !DILocalVariable(name: "str", arg: 1, scope: !4204, file: !154, line: 108, type: !147)
!4208 = !DILocation(line: 0, scope: !4204)
!4209 = !DILocation(line: 113, column: 9, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !154, line: 116, column: 3)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !154, line: 115, column: 3)
!4212 = distinct !DILexicalBlock(scope: !4204, file: !154, line: 114, column: 3)
!4213 = !DILocalVariable(name: "tmp", scope: !4204, file: !154, line: 111, type: !71)
!4214 = !DILocation(line: 113, column: 24, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !154, line: 115, column: 3)
!4216 = !DILocation(line: 113, column: 13, scope: !4215)
!4217 = !DILocalVariable(name: "tmp___0", scope: !4204, file: !154, line: 112, type: !66)
!4218 = !DILocalVariable(name: "ret", scope: !4204, file: !154, line: 110, type: !23)
!4219 = !DILocation(line: 114, column: 7, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4212, file: !154, line: 114, column: 7)
!4221 = !DILocation(line: 114, column: 27, scope: !4220)
!4222 = !DILocation(line: 114, column: 7, scope: !4212)
!4223 = !DILocation(line: 115, column: 5, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4220, file: !154, line: 114, column: 59)
!4225 = !DILocation(line: 118, column: 3, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !154, line: 118, column: 3)
!4227 = distinct !DILexicalBlock(scope: !4212, file: !154, line: 117, column: 3)
!4228 = !DILocation(line: 120, column: 3, scope: !4212)
!4229 = !DILocation(line: 0, scope: !4212)
!4230 = !DILocation(line: 122, column: 1, scope: !4204)
!4231 = distinct !DISubprogram(name: "mpeg_demux_open", scope: !193, file: !193, line: 99, type: !4232, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!15, !6, !73, !73}
!4234 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4231, file: !193, line: 99, type: !6)
!4235 = !DILocation(line: 0, scope: !4231)
!4236 = !DILocalVariable(name: "sid", arg: 2, scope: !4231, file: !193, line: 99, type: !73)
!4237 = !DILocalVariable(name: "ssid", arg: 3, scope: !4231, file: !193, line: 99, type: !73)
!4238 = !DILocalVariable(name: "__cil_tmp7", scope: !4231, file: !193, line: 104, type: !23)
!4239 = !DILocation(line: 104, column: 9, scope: !4231)
!4240 = !DILocalVariable(name: "__cil_tmp8", scope: !4231, file: !193, line: 105, type: !23)
!4241 = !DILocation(line: 105, column: 9, scope: !4231)
!4242 = !DILocalVariable(name: "__cil_tmp9", scope: !4231, file: !193, line: 106, type: !23)
!4243 = !DILocation(line: 106, column: 9, scope: !4231)
!4244 = !DILocation(line: 106, column: 23, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !193, line: 106, column: 7)
!4246 = distinct !DILexicalBlock(scope: !4231, file: !193, line: 108, column: 3)
!4247 = !DILocation(line: 106, column: 7, scope: !4245)
!4248 = !DILocation(line: 106, column: 38, scope: !4245)
!4249 = !DILocation(line: 106, column: 7, scope: !4246)
!4250 = !DILocation(line: 107, column: 28, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4245, file: !193, line: 106, column: 70)
!4252 = !DILocation(line: 107, column: 14, scope: !4251)
!4253 = !DILocalVariable(name: "fp___1", scope: !4231, file: !193, line: 101, type: !15)
!4254 = !DILocation(line: 108, column: 3, scope: !4251)
!4255 = !DILocation(line: 110, column: 13, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !193, line: 110, column: 9)
!4257 = distinct !DILexicalBlock(scope: !4245, file: !193, line: 108, column: 10)
!4258 = !DILocation(line: 110, column: 9, scope: !4257)
!4259 = !DILocation(line: 110, column: 18, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !193, line: 110, column: 22)
!4261 = !DILocation(line: 110, column: 24, scope: !4260)
!4262 = !DILocalVariable(name: "seq", scope: !4231, file: !193, line: 103, type: !73)
!4263 = !DILocation(line: 111, column: 5, scope: !4260)
!4264 = !DILocation(line: 0, scope: !4256)
!4265 = !DILocation(line: 112, column: 42, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !193, line: 113, column: 5)
!4267 = distinct !DILexicalBlock(scope: !4257, file: !193, line: 112, column: 5)
!4268 = !DILocation(line: 112, column: 12, scope: !4266)
!4269 = !DILocalVariable(name: "name", scope: !4231, file: !193, line: 102, type: !23)
!4270 = !DILocation(line: 114, column: 14, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4267, file: !193, line: 114, column: 5)
!4272 = !DILocation(line: 115, column: 9, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4257, file: !193, line: 115, column: 9)
!4274 = !DILocation(line: 115, column: 32, scope: !4273)
!4275 = !DILocation(line: 115, column: 9, scope: !4257)
!4276 = !DILocation(line: 116, column: 7, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !193, line: 117, column: 7)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !193, line: 116, column: 7)
!4279 = distinct !DILexicalBlock(scope: !4273, file: !193, line: 115, column: 64)
!4280 = !DILocation(line: 118, column: 15, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4279, file: !193, line: 118, column: 11)
!4282 = !DILocation(line: 118, column: 11, scope: !4279)
!4283 = !DILocation(line: 119, column: 54, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !193, line: 118, column: 24)
!4285 = !DILocation(line: 119, column: 48, scope: !4284)
!4286 = !DILocation(line: 119, column: 74, scope: !4284)
!4287 = !DILocation(line: 119, column: 31, scope: !4284)
!4288 = !DILocation(line: 119, column: 9, scope: !4284)
!4289 = !DILocation(line: 119, column: 29, scope: !4284)
!4290 = !DILocation(line: 120, column: 7, scope: !4284)
!4291 = !DILocation(line: 122, column: 50, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4281, file: !193, line: 120, column: 14)
!4293 = !DILocation(line: 122, column: 44, scope: !4292)
!4294 = !DILocation(line: 122, column: 66, scope: !4292)
!4295 = !DILocation(line: 122, column: 27, scope: !4292)
!4296 = !DILocation(line: 122, column: 9, scope: !4292)
!4297 = !DILocation(line: 122, column: 25, scope: !4292)
!4298 = !DILocation(line: 125, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !193, line: 125, column: 7)
!4300 = distinct !DILexicalBlock(scope: !4279, file: !193, line: 124, column: 7)
!4301 = !DILocation(line: 127, column: 7, scope: !4279)
!4302 = !DILocation(line: 130, column: 5, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !193, line: 130, column: 5)
!4304 = distinct !DILexicalBlock(scope: !4257, file: !193, line: 129, column: 5)
!4305 = !DILocation(line: 0, scope: !4245)
!4306 = !DILocation(line: 133, column: 11, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4246, file: !193, line: 133, column: 7)
!4308 = !DILocation(line: 133, column: 7, scope: !4246)
!4309 = !DILocation(line: 133, column: 9, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !193, line: 133, column: 9)
!4311 = distinct !DILexicalBlock(scope: !4307, file: !193, line: 133, column: 20)
!4312 = !DILocation(line: 133, column: 9, scope: !4311)
!4313 = !DILocation(line: 134, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !193, line: 135, column: 7)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !193, line: 134, column: 7)
!4316 = distinct !DILexicalBlock(scope: !4310, file: !193, line: 133, column: 21)
!4317 = !DILocation(line: 137, column: 5, scope: !4316)
!4318 = !DILocation(line: 138, column: 3, scope: !4311)
!4319 = !DILocation(line: 137, column: 3, scope: !4246)
!4320 = !DILocation(line: 0, scope: !4246)
!4321 = !DILocation(line: 139, column: 1, scope: !4231)
!4322 = distinct !DISubprogram(name: "mpeg_demux_copy_spu", scope: !193, file: !193, line: 41, type: !2928, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4323 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4322, file: !193, line: 41, type: !6)
!4324 = !DILocation(line: 0, scope: !4322)
!4325 = !DILocalVariable(name: "fp___1", arg: 2, scope: !4322, file: !193, line: 41, type: !15)
!4326 = !DILocalVariable(name: "cnt", arg: 3, scope: !4322, file: !193, line: 41, type: !73)
!4327 = !DILocalVariable(name: "buf", scope: !4322, file: !193, line: 45, type: !4328)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !4329)
!4329 = !{!4330}
!4330 = !DISubrange(count: 8)
!4331 = !DILocation(line: 45, column: 17, scope: !4322)
!4332 = !DILocalVariable(name: "__cil_tmp8", scope: !4322, file: !193, line: 47, type: !66)
!4333 = !DILocation(line: 47, column: 9, scope: !4322)
!4334 = !DILocation(line: 50, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !193, line: 50, column: 7)
!4336 = distinct !DILexicalBlock(scope: !4322, file: !193, line: 49, column: 3)
!4337 = !DILocation(line: 50, column: 7, scope: !4336)
!4338 = !DILocation(line: 51, column: 30, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !193, line: 52, column: 5)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !193, line: 51, column: 5)
!4341 = distinct !DILexicalBlock(scope: !4335, file: !193, line: 50, column: 13)
!4342 = !DILocation(line: 51, column: 5, scope: !4339)
!4343 = !DILocation(line: 52, column: 45, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !193, line: 53, column: 5)
!4345 = !DILocation(line: 52, column: 5, scope: !4344)
!4346 = !DILocation(line: 53, column: 15, scope: !4340)
!4347 = !DILocation(line: 53, column: 22, scope: !4340)
!4348 = !DILocation(line: 53, column: 45, scope: !4340)
!4349 = !DILocation(line: 53, column: 30, scope: !4340)
!4350 = !DILocation(line: 53, column: 28, scope: !4340)
!4351 = !DILocation(line: 53, column: 12, scope: !4340)
!4352 = !DILocation(line: 54, column: 10, scope: !4340)
!4353 = !DILocation(line: 56, column: 12, scope: !4340)
!4354 = !DILocation(line: 57, column: 9, scope: !4340)
!4355 = !DILocation(line: 59, column: 3, scope: !4341)
!4356 = !DILocation(line: 60, column: 3, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !193, line: 61, column: 3)
!4358 = distinct !DILexicalBlock(scope: !4336, file: !193, line: 60, column: 3)
!4359 = !DILocation(line: 0, scope: !4336)
!4360 = !DILocation(line: 60, column: 13, scope: !4357)
!4361 = !DILocation(line: 60, column: 16, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !193, line: 60, column: 9)
!4363 = distinct !DILexicalBlock(scope: !4357, file: !193, line: 60, column: 13)
!4364 = !DILocation(line: 60, column: 9, scope: !4363)
!4365 = !DILocation(line: 60, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4362, file: !193, line: 60, column: 23)
!4367 = !DILocation(line: 61, column: 9, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4363, file: !193, line: 61, column: 9)
!4369 = !DILocation(line: 61, column: 16, scope: !4368)
!4370 = !DILocation(line: 61, column: 9, scope: !4363)
!4371 = !DILocation(line: 62, column: 19, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4368, file: !193, line: 61, column: 23)
!4373 = !DILocation(line: 62, column: 26, scope: !4372)
!4374 = !DILocalVariable(name: "pts", scope: !4322, file: !193, line: 46, type: !80)
!4375 = !DILocalVariable(name: "i", scope: !4322, file: !193, line: 43, type: !73)
!4376 = !DILocation(line: 63, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !193, line: 65, column: 7)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !193, line: 64, column: 7)
!4379 = !DILocation(line: 0, scope: !4372)
!4380 = !DILocation(line: 63, column: 17, scope: !4377)
!4381 = !DILocation(line: 63, column: 18, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !193, line: 63, column: 13)
!4383 = distinct !DILexicalBlock(scope: !4377, file: !193, line: 63, column: 17)
!4384 = !DILocation(line: 63, column: 13, scope: !4383)
!4385 = !DILocation(line: 63, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !193, line: 63, column: 25)
!4387 = !DILocation(line: 64, column: 44, scope: !4383)
!4388 = !DILocation(line: 64, column: 23, scope: !4383)
!4389 = !DILocation(line: 64, column: 16, scope: !4383)
!4390 = !DILocation(line: 64, column: 9, scope: !4383)
!4391 = !DILocation(line: 64, column: 21, scope: !4383)
!4392 = !DILocation(line: 65, column: 13, scope: !4383)
!4393 = !DILocation(line: 63, column: 11, scope: !4383)
!4394 = distinct !{!4394, !4376, !4395}
!4395 = !DILocation(line: 64, column: 7, scope: !4377)
!4396 = !DILocation(line: 66, column: 7, scope: !4377)
!4397 = !DILocation(line: 67, column: 47, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !193, line: 70, column: 7)
!4399 = distinct !DILexicalBlock(scope: !4372, file: !193, line: 69, column: 7)
!4400 = !DILocation(line: 67, column: 7, scope: !4398)
!4401 = !DILocation(line: 69, column: 15, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4372, file: !193, line: 69, column: 11)
!4403 = !DILocation(line: 69, column: 11, scope: !4372)
!4404 = !DILocation(line: 70, column: 34, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !193, line: 71, column: 9)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !193, line: 70, column: 9)
!4407 = distinct !DILexicalBlock(scope: !4402, file: !193, line: 69, column: 22)
!4408 = !DILocation(line: 70, column: 9, scope: !4405)
!4409 = !DILocation(line: 71, column: 49, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !193, line: 72, column: 9)
!4411 = !DILocation(line: 71, column: 9, scope: !4410)
!4412 = !DILocation(line: 72, column: 33, scope: !4406)
!4413 = !DILocation(line: 72, column: 18, scope: !4406)
!4414 = !DILocation(line: 72, column: 16, scope: !4406)
!4415 = !DILocation(line: 73, column: 14, scope: !4406)
!4416 = !DILocation(line: 74, column: 9, scope: !4407)
!4417 = !DILocation(line: 77, column: 32, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !193, line: 77, column: 7)
!4419 = distinct !DILexicalBlock(scope: !4372, file: !193, line: 76, column: 7)
!4420 = !DILocation(line: 77, column: 7, scope: !4418)
!4421 = !DILocation(line: 78, column: 47, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !193, line: 79, column: 7)
!4423 = !DILocation(line: 78, column: 7, scope: !4422)
!4424 = !DILocation(line: 80, column: 39, scope: !4419)
!4425 = !DILocation(line: 80, column: 33, scope: !4419)
!4426 = !DILocation(line: 80, column: 46, scope: !4419)
!4427 = !DILocation(line: 80, column: 60, scope: !4419)
!4428 = !DILocation(line: 80, column: 54, scope: !4419)
!4429 = !DILocation(line: 80, column: 52, scope: !4419)
!4430 = !DILocation(line: 80, column: 14, scope: !4419)
!4431 = !DILocation(line: 81, column: 11, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4372, file: !193, line: 81, column: 11)
!4433 = !DILocation(line: 81, column: 18, scope: !4432)
!4434 = !DILocation(line: 81, column: 11, scope: !4372)
!4435 = !DILocation(line: 82, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4432, file: !193, line: 81, column: 24)
!4437 = !DILocation(line: 85, column: 14, scope: !4372)
!4438 = !DILocation(line: 86, column: 11, scope: !4372)
!4439 = !DILocation(line: 87, column: 5, scope: !4372)
!4440 = !DILocation(line: 89, column: 15, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4363, file: !193, line: 89, column: 9)
!4442 = !DILocation(line: 89, column: 13, scope: !4441)
!4443 = !DILocation(line: 89, column: 9, scope: !4363)
!4444 = !DILocalVariable(name: "n", scope: !4322, file: !193, line: 44, type: !73)
!4445 = !DILocation(line: 90, column: 5, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !193, line: 89, column: 23)
!4447 = !DILocation(line: 89, column: 11, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !193, line: 90, column: 12)
!4449 = !DILocation(line: 0, scope: !4441)
!4450 = !DILocation(line: 91, column: 5, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !193, line: 92, column: 5)
!4452 = distinct !DILexicalBlock(scope: !4363, file: !193, line: 91, column: 5)
!4453 = !DILocation(line: 92, column: 9, scope: !4452)
!4454 = !DILocation(line: 93, column: 12, scope: !4452)
!4455 = distinct !{!4455, !4356, !4456}
!4456 = !DILocation(line: 95, column: 3, scope: !4357)
!4457 = !DILocation(line: 97, column: 3, scope: !4357)
!4458 = !DILocation(line: 96, column: 3, scope: !4336)
!4459 = !DILocation(line: 98, column: 1, scope: !4322)
!4460 = distinct !DISubprogram(name: "mpegd_buffer_fill", scope: !304, file: !304, line: 110, type: !371, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4461 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4460, file: !304, line: 110, type: !6)
!4462 = !DILocation(line: 0, scope: !4460)
!4463 = !DILocation(line: 116, column: 13, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !304, line: 116, column: 7)
!4465 = distinct !DILexicalBlock(scope: !4460, file: !304, line: 116, column: 3)
!4466 = !DILocation(line: 116, column: 19, scope: !4464)
!4467 = !DILocation(line: 116, column: 7, scope: !4465)
!4468 = !DILocation(line: 116, column: 15, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !304, line: 116, column: 9)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !304, line: 116, column: 25)
!4471 = !DILocation(line: 116, column: 21, scope: !4469)
!4472 = !DILocation(line: 116, column: 9, scope: !4470)
!4473 = !DILocalVariable(name: "i", scope: !4460, file: !304, line: 112, type: !73)
!4474 = !DILocation(line: 117, column: 7, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !304, line: 119, column: 7)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !304, line: 118, column: 7)
!4477 = distinct !DILexicalBlock(scope: !4469, file: !304, line: 116, column: 27)
!4478 = !DILocation(line: 0, scope: !4477)
!4479 = !DILocation(line: 117, column: 17, scope: !4475)
!4480 = !DILocation(line: 117, column: 26, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !304, line: 117, column: 13)
!4482 = distinct !DILexicalBlock(scope: !4475, file: !304, line: 117, column: 17)
!4483 = !DILocation(line: 117, column: 18, scope: !4481)
!4484 = !DILocation(line: 117, column: 13, scope: !4482)
!4485 = !DILocation(line: 117, column: 11, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4481, file: !304, line: 117, column: 34)
!4487 = !DILocation(line: 118, column: 30, scope: !4482)
!4488 = !DILocation(line: 118, column: 40, scope: !4482)
!4489 = !DILocation(line: 118, column: 46, scope: !4482)
!4490 = !DILocation(line: 118, column: 24, scope: !4482)
!4491 = !DILocation(line: 118, column: 15, scope: !4482)
!4492 = !DILocation(line: 118, column: 9, scope: !4482)
!4493 = !DILocation(line: 118, column: 22, scope: !4482)
!4494 = !DILocation(line: 117, column: 11, scope: !4482)
!4495 = distinct !{!4495, !4474, !4496}
!4496 = !DILocation(line: 118, column: 7, scope: !4475)
!4497 = !DILocation(line: 120, column: 7, scope: !4475)
!4498 = !DILocation(line: 123, column: 5, scope: !4477)
!4499 = !DILocation(line: 124, column: 3, scope: !4470)
!4500 = !DILocation(line: 122, column: 9, scope: !4465)
!4501 = !DILocation(line: 122, column: 15, scope: !4465)
!4502 = !DILocation(line: 124, column: 21, scope: !4465)
!4503 = !DILocation(line: 124, column: 13, scope: !4465)
!4504 = !DILocalVariable(name: "n", scope: !4460, file: !304, line: 113, type: !73)
!4505 = !DILocation(line: 126, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4465, file: !304, line: 126, column: 7)
!4507 = !DILocation(line: 126, column: 7, scope: !4465)
!4508 = !DILocation(line: 127, column: 47, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !304, line: 128, column: 5)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !304, line: 127, column: 5)
!4511 = distinct !DILexicalBlock(scope: !4506, file: !304, line: 126, column: 15)
!4512 = !DILocation(line: 127, column: 41, scope: !4509)
!4513 = !DILocation(line: 127, column: 59, scope: !4509)
!4514 = !DILocation(line: 127, column: 51, scope: !4509)
!4515 = !DILocation(line: 127, column: 113, scope: !4509)
!4516 = !DILocation(line: 127, column: 9, scope: !4509)
!4517 = !DILocalVariable(name: "r", scope: !4460, file: !304, line: 114, type: !71)
!4518 = !DILocation(line: 128, column: 11, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4511, file: !304, line: 128, column: 9)
!4520 = !DILocation(line: 128, column: 9, scope: !4511)
!4521 = !DILocation(line: 129, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4519, file: !304, line: 128, column: 17)
!4523 = !DILocation(line: 132, column: 11, scope: !4511)
!4524 = !DILocation(line: 132, column: 17, scope: !4511)
!4525 = !DILocation(line: 133, column: 3, scope: !4511)
!4526 = !DILocation(line: 135, column: 3, scope: !4465)
!4527 = !DILocation(line: 0, scope: !4465)
!4528 = !DILocation(line: 137, column: 1, scope: !4460)
!4529 = distinct !DISubprogram(name: "mpegd_parse_system_header", scope: !304, file: !304, line: 303, type: !371, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4530 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4529, file: !304, line: 303, type: !6)
!4531 = !DILocation(line: 0, scope: !4529)
!4532 = !DILocation(line: 308, column: 9, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !304, line: 313, column: 3)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !304, line: 312, column: 3)
!4535 = distinct !DILexicalBlock(scope: !4529, file: !304, line: 311, column: 3)
!4536 = !DILocalVariable(name: "tmp", scope: !4529, file: !304, line: 306, type: !116)
!4537 = !DILocation(line: 308, column: 41, scope: !4534)
!4538 = !DILocation(line: 308, column: 21, scope: !4534)
!4539 = !DILocation(line: 308, column: 9, scope: !4534)
!4540 = !DILocation(line: 308, column: 14, scope: !4534)
!4541 = !DILocation(line: 308, column: 19, scope: !4534)
!4542 = !DILocation(line: 310, column: 13, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4534, file: !304, line: 309, column: 3)
!4544 = !DILocalVariable(name: "tmp___0", scope: !4529, file: !304, line: 307, type: !116)
!4545 = !DILocation(line: 310, column: 22, scope: !4534)
!4546 = !DILocation(line: 310, column: 9, scope: !4534)
!4547 = !DILocation(line: 310, column: 14, scope: !4534)
!4548 = !DILocation(line: 310, column: 20, scope: !4534)
!4549 = !DILocation(line: 311, column: 13, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4534, file: !304, line: 311, column: 3)
!4551 = !DILocalVariable(name: "tmp___1", scope: !4529, file: !304, line: 308, type: !116)
!4552 = !DILocation(line: 311, column: 21, scope: !4534)
!4553 = !DILocation(line: 311, column: 9, scope: !4534)
!4554 = !DILocation(line: 311, column: 14, scope: !4534)
!4555 = !DILocation(line: 311, column: 19, scope: !4534)
!4556 = !DILocation(line: 313, column: 10, scope: !4534)
!4557 = !DILocation(line: 313, column: 20, scope: !4534)
!4558 = !DILocation(line: 315, column: 15, scope: !4534)
!4559 = !DILocation(line: 315, column: 48, scope: !4534)
!4560 = !DILocation(line: 315, column: 53, scope: !4534)
!4561 = !DILocation(line: 315, column: 21, scope: !4534)
!4562 = !DILocation(line: 315, column: 19, scope: !4534)
!4563 = !DILocalVariable(name: "ofs", scope: !4529, file: !304, line: 305, type: !80)
!4564 = !DILocation(line: 317, column: 29, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4535, file: !304, line: 317, column: 7)
!4566 = !DILocation(line: 317, column: 7, scope: !4565)
!4567 = !DILocation(line: 317, column: 48, scope: !4565)
!4568 = !DILocation(line: 317, column: 7, scope: !4535)
!4569 = !DILocation(line: 318, column: 24, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !304, line: 319, column: 5)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !304, line: 318, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4565, file: !304, line: 317, column: 80)
!4573 = !DILocation(line: 318, column: 15, scope: !4570)
!4574 = !DILocalVariable(name: "tmp___2", scope: !4529, file: !304, line: 309, type: !12)
!4575 = !DILocation(line: 318, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4572, file: !304, line: 318, column: 9)
!4577 = !DILocation(line: 318, column: 9, scope: !4572)
!4578 = !DILocation(line: 319, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !304, line: 318, column: 18)
!4580 = !DILocation(line: 321, column: 3, scope: !4572)
!4581 = !DILocation(line: 323, column: 3, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !304, line: 323, column: 3)
!4583 = distinct !DILexicalBlock(scope: !4535, file: !304, line: 322, column: 3)
!4584 = !DILocation(line: 325, column: 3, scope: !4535)
!4585 = !DILocation(line: 0, scope: !4535)
!4586 = !DILocation(line: 327, column: 1, scope: !4529)
!4587 = distinct !DISubprogram(name: "mpegd_parse_packet", scope: !304, file: !304, line: 427, type: !371, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4588 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4587, file: !304, line: 427, type: !6)
!4589 = !DILocation(line: 0, scope: !4587)
!4590 = !DILocation(line: 434, column: 9, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !304, line: 445, column: 3)
!4592 = distinct !DILexicalBlock(scope: !4587, file: !304, line: 444, column: 3)
!4593 = !DILocation(line: 434, column: 16, scope: !4591)
!4594 = !DILocation(line: 434, column: 21, scope: !4591)
!4595 = !DILocation(line: 436, column: 9, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4591, file: !304, line: 435, column: 3)
!4597 = !DILocalVariable(name: "tmp", scope: !4587, file: !304, line: 433, type: !116)
!4598 = !DILocation(line: 436, column: 9, scope: !4591)
!4599 = !DILocalVariable(name: "sid", scope: !4587, file: !304, line: 430, type: !73)
!4600 = !DILocalVariable(name: "ssid", scope: !4587, file: !304, line: 431, type: !73)
!4601 = !DILocation(line: 439, column: 9, scope: !4591)
!4602 = !DILocation(line: 439, column: 16, scope: !4591)
!4603 = !DILocation(line: 439, column: 20, scope: !4591)
!4604 = !DILocation(line: 440, column: 9, scope: !4591)
!4605 = !DILocation(line: 440, column: 16, scope: !4591)
!4606 = !DILocation(line: 440, column: 21, scope: !4591)
!4607 = !DILocation(line: 442, column: 13, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4591, file: !304, line: 441, column: 3)
!4609 = !DILocalVariable(name: "tmp___0", scope: !4587, file: !304, line: 434, type: !116)
!4610 = !DILocation(line: 442, column: 47, scope: !4591)
!4611 = !DILocation(line: 442, column: 23, scope: !4591)
!4612 = !DILocation(line: 442, column: 9, scope: !4591)
!4613 = !DILocation(line: 442, column: 16, scope: !4591)
!4614 = !DILocation(line: 442, column: 21, scope: !4591)
!4615 = !DILocation(line: 443, column: 9, scope: !4591)
!4616 = !DILocation(line: 443, column: 16, scope: !4591)
!4617 = !DILocation(line: 443, column: 23, scope: !4591)
!4618 = !DILocation(line: 445, column: 9, scope: !4591)
!4619 = !DILocation(line: 445, column: 16, scope: !4591)
!4620 = !DILocation(line: 445, column: 25, scope: !4591)
!4621 = !DILocation(line: 446, column: 9, scope: !4591)
!4622 = !DILocation(line: 446, column: 16, scope: !4591)
!4623 = !DILocation(line: 446, column: 20, scope: !4591)
!4624 = !DILocation(line: 448, column: 9, scope: !4591)
!4625 = !DILocation(line: 448, column: 16, scope: !4591)
!4626 = !DILocation(line: 448, column: 25, scope: !4591)
!4627 = !DILocation(line: 449, column: 9, scope: !4591)
!4628 = !DILocation(line: 449, column: 16, scope: !4591)
!4629 = !DILocation(line: 449, column: 20, scope: !4591)
!4630 = !DILocalVariable(name: "i", scope: !4587, file: !304, line: 429, type: !73)
!4631 = !DILocation(line: 453, column: 11, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4592, file: !304, line: 453, column: 7)
!4633 = !DILocation(line: 453, column: 7, scope: !4592)
!4634 = !DILocation(line: 453, column: 13, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !304, line: 453, column: 9)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !304, line: 453, column: 20)
!4637 = !DILocation(line: 453, column: 9, scope: !4636)
!4638 = !DILocation(line: 453, column: 7, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !304, line: 453, column: 21)
!4640 = !DILocation(line: 453, column: 7, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !304, line: 454, column: 12)
!4642 = !DILocation(line: 455, column: 3, scope: !4636)
!4643 = !DILocation(line: 453, column: 11, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4632, file: !304, line: 453, column: 7)
!4645 = !DILocation(line: 453, column: 7, scope: !4632)
!4646 = !DILocation(line: 453, column: 20, scope: !4644)
!4647 = !DILocation(line: 454, column: 5, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !304, line: 456, column: 5)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !304, line: 455, column: 5)
!4650 = distinct !DILexicalBlock(scope: !4644, file: !304, line: 453, column: 20)
!4651 = !DILocation(line: 0, scope: !4592)
!4652 = !DILocation(line: 454, column: 15, scope: !4648)
!4653 = !DILocation(line: 454, column: 17, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !304, line: 458, column: 7)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !304, line: 457, column: 7)
!4656 = distinct !DILexicalBlock(scope: !4648, file: !304, line: 454, column: 15)
!4657 = !DILocalVariable(name: "tmp___1", scope: !4587, file: !304, line: 435, type: !116)
!4658 = !DILocation(line: 454, column: 22, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !304, line: 454, column: 11)
!4660 = !DILocation(line: 454, column: 11, scope: !4656)
!4661 = !DILocation(line: 454, column: 9, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4659, file: !304, line: 454, column: 33)
!4663 = !DILocation(line: 455, column: 13, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4656, file: !304, line: 455, column: 11)
!4665 = !DILocation(line: 455, column: 11, scope: !4656)
!4666 = !DILocation(line: 456, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !304, line: 455, column: 21)
!4668 = !DILocation(line: 458, column: 9, scope: !4656)
!4669 = distinct !{!4669, !4647, !4670}
!4670 = !DILocation(line: 459, column: 5, scope: !4648)
!4671 = !DILocation(line: 461, column: 5, scope: !4648)
!4672 = !DILocation(line: 461, column: 15, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !304, line: 465, column: 5)
!4674 = distinct !DILexicalBlock(scope: !4650, file: !304, line: 464, column: 5)
!4675 = !DILocalVariable(name: "tmp___4", scope: !4587, file: !304, line: 438, type: !116)
!4676 = !DILocation(line: 461, column: 17, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4650, file: !304, line: 461, column: 9)
!4678 = !DILocation(line: 461, column: 9, scope: !4650)
!4679 = !DILocation(line: 462, column: 17, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !304, line: 463, column: 7)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !304, line: 462, column: 7)
!4682 = distinct !DILexicalBlock(scope: !4677, file: !304, line: 461, column: 25)
!4683 = !DILocalVariable(name: "tmp___2", scope: !4587, file: !304, line: 436, type: !12)
!4684 = !DILocation(line: 462, column: 11, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !304, line: 462, column: 11)
!4686 = !DILocation(line: 462, column: 11, scope: !4682)
!4687 = !DILocation(line: 463, column: 9, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4685, file: !304, line: 462, column: 20)
!4689 = !DILocation(line: 465, column: 5, scope: !4682)
!4690 = !DILocation(line: 467, column: 17, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !304, line: 467, column: 7)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !304, line: 466, column: 7)
!4693 = distinct !DILexicalBlock(scope: !4677, file: !304, line: 465, column: 12)
!4694 = !DILocalVariable(name: "tmp___3", scope: !4587, file: !304, line: 437, type: !12)
!4695 = !DILocation(line: 467, column: 11, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !304, line: 467, column: 11)
!4697 = !DILocation(line: 467, column: 11, scope: !4693)
!4698 = !DILocation(line: 468, column: 9, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !304, line: 467, column: 20)
!4700 = !DILocation(line: 471, column: 3, scope: !4650)
!4701 = !DILocation(line: 472, column: 11, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4644, file: !304, line: 472, column: 7)
!4703 = !DILocation(line: 472, column: 7, scope: !4644)
!4704 = !DILocation(line: 473, column: 11, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !304, line: 472, column: 20)
!4706 = !DILocation(line: 473, column: 18, scope: !4705)
!4707 = !DILocation(line: 473, column: 23, scope: !4705)
!4708 = !DILocation(line: 474, column: 3, scope: !4705)
!4709 = !DILocation(line: 476, column: 11, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4592, file: !304, line: 476, column: 7)
!4711 = !DILocation(line: 476, column: 7, scope: !4592)
!4712 = !DILocation(line: 477, column: 47, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !304, line: 478, column: 5)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !304, line: 477, column: 5)
!4715 = distinct !DILexicalBlock(scope: !4710, file: !304, line: 476, column: 20)
!4716 = !DILocation(line: 477, column: 54, scope: !4713)
!4717 = !DILocation(line: 477, column: 39, scope: !4713)
!4718 = !DILocation(line: 477, column: 15, scope: !4713)
!4719 = !DILocalVariable(name: "tmp___5", scope: !4587, file: !304, line: 439, type: !116)
!4720 = !DILocation(line: 477, column: 12, scope: !4714)
!4721 = !DILocation(line: 478, column: 11, scope: !4714)
!4722 = !DILocation(line: 478, column: 18, scope: !4714)
!4723 = !DILocation(line: 478, column: 23, scope: !4714)
!4724 = !DILocation(line: 480, column: 3, scope: !4715)
!4725 = !DILocation(line: 481, column: 29, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4592, file: !304, line: 481, column: 7)
!4727 = !DILocation(line: 481, column: 7, scope: !4726)
!4728 = !DILocation(line: 481, column: 47, scope: !4726)
!4729 = !DILocation(line: 481, column: 7, scope: !4592)
!4730 = !DILocation(line: 481, column: 24, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !304, line: 483, column: 5)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !304, line: 482, column: 5)
!4733 = distinct !DILexicalBlock(scope: !4726, file: !304, line: 481, column: 79)
!4734 = !DILocation(line: 481, column: 15, scope: !4731)
!4735 = !DILocalVariable(name: "tmp___8", scope: !4587, file: !304, line: 442, type: !12)
!4736 = !DILocation(line: 481, column: 9, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !304, line: 481, column: 9)
!4738 = !DILocation(line: 481, column: 9, scope: !4733)
!4739 = !DILocation(line: 482, column: 17, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !304, line: 483, column: 7)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !304, line: 482, column: 7)
!4742 = distinct !DILexicalBlock(scope: !4737, file: !304, line: 481, column: 18)
!4743 = !DILocalVariable(name: "tmp___6", scope: !4587, file: !304, line: 440, type: !12)
!4744 = !DILocation(line: 482, column: 11, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !304, line: 482, column: 11)
!4746 = !DILocation(line: 482, column: 11, scope: !4742)
!4747 = !DILocation(line: 483, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !304, line: 482, column: 20)
!4749 = !DILocation(line: 485, column: 5, scope: !4742)
!4750 = !DILocation(line: 481, column: 7, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4737, file: !304, line: 485, column: 12)
!4752 = !DILocation(line: 483, column: 3, scope: !4733)
!4753 = !DILocation(line: 483, column: 10, scope: !4726)
!4754 = !DILocation(line: 487, column: 12, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4726, file: !304, line: 483, column: 10)
!4756 = !DILocation(line: 487, column: 24, scope: !4755)
!4757 = !DILocation(line: 488, column: 12, scope: !4755)
!4758 = !DILocation(line: 488, column: 6, scope: !4755)
!4759 = !DILocation(line: 488, column: 25, scope: !4755)
!4760 = !DILocation(line: 488, column: 37, scope: !4755)
!4761 = !DILocation(line: 489, column: 60, scope: !4755)
!4762 = !DILocation(line: 489, column: 67, scope: !4755)
!4763 = !DILocation(line: 489, column: 80, scope: !4755)
!4764 = !DILocation(line: 489, column: 87, scope: !4755)
!4765 = !DILocation(line: 489, column: 72, scope: !4755)
!4766 = !DILocation(line: 489, column: 32, scope: !4755)
!4767 = !DILocation(line: 489, column: 11, scope: !4755)
!4768 = !DILocation(line: 489, column: 5, scope: !4755)
!4769 = !DILocation(line: 489, column: 24, scope: !4755)
!4770 = !DILocation(line: 489, column: 29, scope: !4755)
!4771 = !DILocation(line: 491, column: 13, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4755, file: !304, line: 491, column: 9)
!4773 = !DILocation(line: 491, column: 9, scope: !4755)
!4774 = !DILocation(line: 492, column: 14, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4772, file: !304, line: 491, column: 22)
!4776 = !DILocation(line: 492, column: 8, scope: !4775)
!4777 = !DILocation(line: 492, column: 31, scope: !4775)
!4778 = !DILocation(line: 492, column: 43, scope: !4775)
!4779 = !DILocation(line: 493, column: 66, scope: !4775)
!4780 = !DILocation(line: 493, column: 73, scope: !4775)
!4781 = !DILocation(line: 493, column: 86, scope: !4775)
!4782 = !DILocation(line: 493, column: 93, scope: !4775)
!4783 = !DILocation(line: 493, column: 78, scope: !4775)
!4784 = !DILocation(line: 493, column: 38, scope: !4775)
!4785 = !DILocation(line: 493, column: 13, scope: !4775)
!4786 = !DILocation(line: 493, column: 7, scope: !4775)
!4787 = !DILocation(line: 493, column: 30, scope: !4775)
!4788 = !DILocation(line: 493, column: 35, scope: !4775)
!4789 = !DILocation(line: 494, column: 5, scope: !4775)
!4790 = !DILocation(line: 496, column: 17, scope: !4755)
!4791 = !DILocation(line: 496, column: 50, scope: !4755)
!4792 = !DILocation(line: 496, column: 57, scope: !4755)
!4793 = !DILocation(line: 496, column: 23, scope: !4755)
!4794 = !DILocation(line: 496, column: 21, scope: !4755)
!4795 = !DILocalVariable(name: "ofs", scope: !4587, file: !304, line: 432, type: !80)
!4796 = !DILocation(line: 498, column: 31, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4755, file: !304, line: 498, column: 9)
!4798 = !DILocation(line: 498, column: 9, scope: !4797)
!4799 = !DILocation(line: 498, column: 43, scope: !4797)
!4800 = !DILocation(line: 498, column: 9, scope: !4755)
!4801 = !DILocation(line: 499, column: 26, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !304, line: 500, column: 7)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !304, line: 499, column: 7)
!4804 = distinct !DILexicalBlock(scope: !4797, file: !304, line: 498, column: 75)
!4805 = !DILocation(line: 499, column: 17, scope: !4802)
!4806 = !DILocalVariable(name: "tmp___7", scope: !4587, file: !304, line: 441, type: !12)
!4807 = !DILocation(line: 499, column: 11, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !304, line: 499, column: 11)
!4809 = !DILocation(line: 499, column: 11, scope: !4804)
!4810 = !DILocation(line: 500, column: 9, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4808, file: !304, line: 499, column: 20)
!4812 = !DILocation(line: 502, column: 5, scope: !4804)
!4813 = !DILocation(line: 504, column: 5, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !304, line: 504, column: 5)
!4815 = distinct !DILexicalBlock(scope: !4755, file: !304, line: 503, column: 5)
!4816 = !DILocation(line: 507, column: 3, scope: !4592)
!4817 = !DILocation(line: 509, column: 1, scope: !4587)
!4818 = distinct !DISubprogram(name: "mpegd_parse_packet2", scope: !304, file: !304, line: 378, type: !1860, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4819 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4818, file: !304, line: 378, type: !6)
!4820 = !DILocation(line: 0, scope: !4818)
!4821 = !DILocalVariable(name: "i", arg: 2, scope: !4818, file: !304, line: 378, type: !73)
!4822 = !DILocation(line: 385, column: 9, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !304, line: 399, column: 3)
!4824 = distinct !DILexicalBlock(scope: !4818, file: !304, line: 398, column: 3)
!4825 = !DILocation(line: 385, column: 16, scope: !4823)
!4826 = !DILocation(line: 385, column: 21, scope: !4823)
!4827 = !DILocation(line: 387, column: 36, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !304, line: 386, column: 3)
!4829 = !DILocation(line: 387, column: 13, scope: !4828)
!4830 = !DILocalVariable(name: "tmp___0", scope: !4818, file: !304, line: 383, type: !116)
!4831 = !DILocation(line: 387, column: 18, scope: !4823)
!4832 = !DILocalVariable(name: "pts_dts_flag", scope: !4818, file: !304, line: 380, type: !73)
!4833 = !DILocation(line: 388, column: 36, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4823, file: !304, line: 388, column: 3)
!4835 = !DILocation(line: 388, column: 13, scope: !4834)
!4836 = !DILocalVariable(name: "tmp___1", scope: !4818, file: !304, line: 384, type: !116)
!4837 = !DILocation(line: 388, column: 9, scope: !4823)
!4838 = !DILocalVariable(name: "cnt", scope: !4818, file: !304, line: 381, type: !73)
!4839 = !DILocation(line: 390, column: 20, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4824, file: !304, line: 390, column: 7)
!4841 = !DILocation(line: 390, column: 7, scope: !4824)
!4842 = !DILocation(line: 391, column: 38, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !304, line: 392, column: 5)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !304, line: 391, column: 5)
!4845 = distinct !DILexicalBlock(scope: !4840, file: !304, line: 390, column: 27)
!4846 = !DILocation(line: 391, column: 15, scope: !4843)
!4847 = !DILocalVariable(name: "tmp___5", scope: !4818, file: !304, line: 388, type: !116)
!4848 = !DILocation(line: 391, column: 17, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4845, file: !304, line: 391, column: 9)
!4850 = !DILocation(line: 391, column: 9, scope: !4845)
!4851 = !DILocation(line: 392, column: 40, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !304, line: 393, column: 7)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !304, line: 392, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !304, line: 391, column: 25)
!4855 = !DILocation(line: 392, column: 17, scope: !4852)
!4856 = !DILocalVariable(name: "tmp___2", scope: !4818, file: !304, line: 385, type: !116)
!4857 = !DILocalVariable(name: "tmp", scope: !4818, file: !304, line: 382, type: !80)
!4858 = !DILocation(line: 393, column: 40, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4853, file: !304, line: 393, column: 7)
!4860 = !DILocation(line: 393, column: 17, scope: !4859)
!4861 = !DILocalVariable(name: "tmp___3", scope: !4818, file: !304, line: 386, type: !116)
!4862 = !DILocation(line: 393, column: 18, scope: !4853)
!4863 = !DILocation(line: 393, column: 25, scope: !4853)
!4864 = !DILocation(line: 394, column: 40, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4853, file: !304, line: 394, column: 7)
!4866 = !DILocation(line: 394, column: 17, scope: !4865)
!4867 = !DILocalVariable(name: "tmp___4", scope: !4818, file: !304, line: 387, type: !116)
!4868 = !DILocation(line: 394, column: 18, scope: !4853)
!4869 = !DILocation(line: 394, column: 25, scope: !4853)
!4870 = !DILocation(line: 396, column: 13, scope: !4853)
!4871 = !DILocation(line: 396, column: 20, scope: !4853)
!4872 = !DILocation(line: 396, column: 29, scope: !4853)
!4873 = !DILocation(line: 397, column: 13, scope: !4853)
!4874 = !DILocation(line: 397, column: 20, scope: !4853)
!4875 = !DILocation(line: 397, column: 24, scope: !4853)
!4876 = !DILocation(line: 399, column: 5, scope: !4854)
!4877 = !DILocation(line: 400, column: 3, scope: !4845)
!4878 = !DILocation(line: 400, column: 21, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4840, file: !304, line: 400, column: 7)
!4880 = !DILocation(line: 400, column: 27, scope: !4879)
!4881 = !DILocation(line: 400, column: 7, scope: !4840)
!4882 = !DILocation(line: 401, column: 38, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !304, line: 402, column: 5)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !304, line: 401, column: 5)
!4885 = distinct !DILexicalBlock(scope: !4879, file: !304, line: 400, column: 34)
!4886 = !DILocation(line: 401, column: 15, scope: !4883)
!4887 = !DILocalVariable(name: "tmp___9", scope: !4818, file: !304, line: 392, type: !116)
!4888 = !DILocation(line: 401, column: 17, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4885, file: !304, line: 401, column: 9)
!4890 = !DILocation(line: 401, column: 9, scope: !4885)
!4891 = !DILocation(line: 402, column: 40, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !304, line: 403, column: 7)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !304, line: 402, column: 7)
!4894 = distinct !DILexicalBlock(scope: !4889, file: !304, line: 401, column: 25)
!4895 = !DILocation(line: 402, column: 17, scope: !4892)
!4896 = !DILocalVariable(name: "tmp___6", scope: !4818, file: !304, line: 389, type: !116)
!4897 = !DILocation(line: 403, column: 40, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4893, file: !304, line: 403, column: 7)
!4899 = !DILocation(line: 403, column: 17, scope: !4898)
!4900 = !DILocalVariable(name: "tmp___7", scope: !4818, file: !304, line: 390, type: !116)
!4901 = !DILocation(line: 403, column: 18, scope: !4893)
!4902 = !DILocation(line: 403, column: 25, scope: !4893)
!4903 = !DILocation(line: 404, column: 40, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4893, file: !304, line: 404, column: 7)
!4905 = !DILocation(line: 404, column: 17, scope: !4904)
!4906 = !DILocalVariable(name: "tmp___8", scope: !4818, file: !304, line: 391, type: !116)
!4907 = !DILocation(line: 404, column: 18, scope: !4893)
!4908 = !DILocation(line: 404, column: 25, scope: !4893)
!4909 = !DILocation(line: 406, column: 13, scope: !4893)
!4910 = !DILocation(line: 406, column: 20, scope: !4893)
!4911 = !DILocation(line: 406, column: 29, scope: !4893)
!4912 = !DILocation(line: 407, column: 13, scope: !4893)
!4913 = !DILocation(line: 407, column: 20, scope: !4893)
!4914 = !DILocation(line: 407, column: 24, scope: !4893)
!4915 = !DILocation(line: 409, column: 5, scope: !4894)
!4916 = !DILocation(line: 410, column: 39, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !304, line: 411, column: 5)
!4918 = distinct !DILexicalBlock(scope: !4885, file: !304, line: 410, column: 5)
!4919 = !DILocation(line: 410, column: 16, scope: !4917)
!4920 = !DILocalVariable(name: "tmp___13", scope: !4818, file: !304, line: 396, type: !116)
!4921 = !DILocation(line: 410, column: 18, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4885, file: !304, line: 410, column: 9)
!4923 = !DILocation(line: 410, column: 9, scope: !4885)
!4924 = !DILocation(line: 411, column: 41, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !304, line: 412, column: 7)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !304, line: 411, column: 7)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !304, line: 410, column: 26)
!4928 = !DILocation(line: 411, column: 18, scope: !4925)
!4929 = !DILocalVariable(name: "tmp___10", scope: !4818, file: !304, line: 393, type: !116)
!4930 = !DILocation(line: 412, column: 41, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4926, file: !304, line: 412, column: 7)
!4932 = !DILocation(line: 412, column: 18, scope: !4931)
!4933 = !DILocalVariable(name: "tmp___11", scope: !4818, file: !304, line: 394, type: !116)
!4934 = !DILocation(line: 412, column: 18, scope: !4926)
!4935 = !DILocation(line: 412, column: 25, scope: !4926)
!4936 = !DILocation(line: 413, column: 41, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4926, file: !304, line: 413, column: 7)
!4938 = !DILocation(line: 413, column: 18, scope: !4937)
!4939 = !DILocalVariable(name: "tmp___12", scope: !4818, file: !304, line: 395, type: !116)
!4940 = !DILocation(line: 413, column: 18, scope: !4926)
!4941 = !DILocation(line: 413, column: 25, scope: !4926)
!4942 = !DILocation(line: 415, column: 13, scope: !4926)
!4943 = !DILocation(line: 415, column: 20, scope: !4926)
!4944 = !DILocation(line: 415, column: 29, scope: !4926)
!4945 = !DILocation(line: 416, column: 13, scope: !4926)
!4946 = !DILocation(line: 416, column: 20, scope: !4926)
!4947 = !DILocation(line: 416, column: 24, scope: !4926)
!4948 = !DILocation(line: 418, column: 5, scope: !4927)
!4949 = !DILocation(line: 419, column: 3, scope: !4885)
!4950 = !DILocation(line: 420, column: 18, scope: !4824)
!4951 = !DILocation(line: 420, column: 11, scope: !4824)
!4952 = !DILocation(line: 420, column: 5, scope: !4824)
!4953 = !DILocation(line: 422, column: 27, scope: !4824)
!4954 = !DILocation(line: 422, column: 9, scope: !4824)
!4955 = !DILocation(line: 422, column: 16, scope: !4824)
!4956 = !DILocation(line: 422, column: 23, scope: !4824)
!4957 = !DILocation(line: 424, column: 3, scope: !4824)
!4958 = distinct !DISubprogram(name: "mpegd_parse_packet1", scope: !304, file: !304, line: 328, type: !1860, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4959 = !DILocalVariable(name: "mpeg", arg: 1, scope: !4958, file: !304, line: 328, type: !6)
!4960 = !DILocation(line: 0, scope: !4958)
!4961 = !DILocalVariable(name: "i", arg: 2, scope: !4958, file: !304, line: 328, type: !73)
!4962 = !DILocation(line: 334, column: 9, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !304, line: 345, column: 3)
!4964 = distinct !DILexicalBlock(scope: !4958, file: !304, line: 344, column: 3)
!4965 = !DILocation(line: 334, column: 16, scope: !4963)
!4966 = !DILocation(line: 334, column: 21, scope: !4963)
!4967 = !DILocation(line: 336, column: 13, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4963, file: !304, line: 335, column: 3)
!4969 = !DILocalVariable(name: "tmp___0", scope: !4958, file: !304, line: 332, type: !116)
!4970 = !DILocation(line: 336, column: 15, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4964, file: !304, line: 336, column: 7)
!4972 = !DILocation(line: 336, column: 7, scope: !4964)
!4973 = !DILocation(line: 337, column: 7, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !304, line: 336, column: 23)
!4975 = !DILocation(line: 338, column: 3, scope: !4974)
!4976 = !DILocation(line: 340, column: 13, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !304, line: 340, column: 3)
!4978 = distinct !DILexicalBlock(scope: !4964, file: !304, line: 339, column: 3)
!4979 = !DILocalVariable(name: "tmp___1", scope: !4958, file: !304, line: 333, type: !116)
!4980 = !DILocation(line: 340, column: 9, scope: !4978)
!4981 = !DILocalVariable(name: "val", scope: !4958, file: !304, line: 330, type: !73)
!4982 = !DILocation(line: 342, column: 12, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4964, file: !304, line: 342, column: 7)
!4984 = !DILocation(line: 342, column: 20, scope: !4983)
!4985 = !DILocation(line: 342, column: 7, scope: !4964)
!4986 = !DILocation(line: 343, column: 38, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !304, line: 344, column: 5)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !304, line: 343, column: 5)
!4989 = distinct !DILexicalBlock(scope: !4983, file: !304, line: 342, column: 28)
!4990 = !DILocation(line: 343, column: 15, scope: !4987)
!4991 = !DILocalVariable(name: "tmp___2", scope: !4958, file: !304, line: 334, type: !116)
!4992 = !DILocalVariable(name: "tmp", scope: !4958, file: !304, line: 331, type: !80)
!4993 = !DILocation(line: 344, column: 38, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4988, file: !304, line: 344, column: 5)
!4995 = !DILocation(line: 344, column: 15, scope: !4994)
!4996 = !DILocalVariable(name: "tmp___3", scope: !4958, file: !304, line: 335, type: !116)
!4997 = !DILocation(line: 344, column: 16, scope: !4988)
!4998 = !DILocation(line: 344, column: 23, scope: !4988)
!4999 = !DILocation(line: 345, column: 38, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4988, file: !304, line: 345, column: 5)
!5001 = !DILocation(line: 345, column: 15, scope: !5000)
!5002 = !DILocalVariable(name: "tmp___4", scope: !4958, file: !304, line: 336, type: !116)
!5003 = !DILocation(line: 345, column: 16, scope: !4988)
!5004 = !DILocation(line: 345, column: 23, scope: !4988)
!5005 = !DILocation(line: 347, column: 11, scope: !4988)
!5006 = !DILocation(line: 347, column: 18, scope: !4988)
!5007 = !DILocation(line: 347, column: 27, scope: !4988)
!5008 = !DILocation(line: 348, column: 11, scope: !4988)
!5009 = !DILocation(line: 348, column: 18, scope: !4988)
!5010 = !DILocation(line: 348, column: 22, scope: !4988)
!5011 = !DILocation(line: 350, column: 7, scope: !4988)
!5012 = !DILocation(line: 352, column: 3, scope: !4989)
!5013 = !DILocation(line: 352, column: 12, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4983, file: !304, line: 352, column: 7)
!5015 = !DILocation(line: 352, column: 20, scope: !5014)
!5016 = !DILocation(line: 352, column: 7, scope: !4983)
!5017 = !DILocation(line: 353, column: 38, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 354, column: 5)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !304, line: 353, column: 5)
!5020 = distinct !DILexicalBlock(scope: !5014, file: !304, line: 352, column: 28)
!5021 = !DILocation(line: 353, column: 15, scope: !5018)
!5022 = !DILocalVariable(name: "tmp___5", scope: !4958, file: !304, line: 337, type: !116)
!5023 = !DILocation(line: 354, column: 38, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 354, column: 5)
!5025 = !DILocation(line: 354, column: 15, scope: !5024)
!5026 = !DILocalVariable(name: "tmp___6", scope: !4958, file: !304, line: 338, type: !116)
!5027 = !DILocation(line: 354, column: 16, scope: !5019)
!5028 = !DILocation(line: 354, column: 23, scope: !5019)
!5029 = !DILocation(line: 355, column: 38, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 355, column: 5)
!5031 = !DILocation(line: 355, column: 15, scope: !5030)
!5032 = !DILocalVariable(name: "tmp___7", scope: !4958, file: !304, line: 339, type: !116)
!5033 = !DILocation(line: 355, column: 16, scope: !5019)
!5034 = !DILocation(line: 355, column: 23, scope: !5019)
!5035 = !DILocation(line: 357, column: 11, scope: !5019)
!5036 = !DILocation(line: 357, column: 18, scope: !5019)
!5037 = !DILocation(line: 357, column: 27, scope: !5019)
!5038 = !DILocation(line: 358, column: 11, scope: !5019)
!5039 = !DILocation(line: 358, column: 18, scope: !5019)
!5040 = !DILocation(line: 358, column: 22, scope: !5019)
!5041 = !DILocation(line: 360, column: 38, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 359, column: 5)
!5043 = !DILocation(line: 360, column: 15, scope: !5042)
!5044 = !DILocalVariable(name: "tmp___8", scope: !4958, file: !304, line: 340, type: !116)
!5045 = !DILocation(line: 361, column: 38, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 361, column: 5)
!5047 = !DILocation(line: 361, column: 15, scope: !5046)
!5048 = !DILocalVariable(name: "tmp___9", scope: !4958, file: !304, line: 341, type: !116)
!5049 = !DILocation(line: 361, column: 16, scope: !5019)
!5050 = !DILocation(line: 361, column: 23, scope: !5019)
!5051 = !DILocation(line: 362, column: 39, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5019, file: !304, line: 362, column: 5)
!5053 = !DILocation(line: 362, column: 16, scope: !5052)
!5054 = !DILocalVariable(name: "tmp___10", scope: !4958, file: !304, line: 342, type: !116)
!5055 = !DILocation(line: 362, column: 16, scope: !5019)
!5056 = !DILocation(line: 362, column: 23, scope: !5019)
!5057 = !DILocation(line: 364, column: 11, scope: !5019)
!5058 = !DILocation(line: 364, column: 18, scope: !5019)
!5059 = !DILocation(line: 364, column: 27, scope: !5019)
!5060 = !DILocation(line: 365, column: 11, scope: !5019)
!5061 = !DILocation(line: 365, column: 18, scope: !5019)
!5062 = !DILocation(line: 365, column: 22, scope: !5019)
!5063 = !DILocation(line: 367, column: 7, scope: !5019)
!5064 = !DILocation(line: 369, column: 3, scope: !5020)
!5065 = !DILocation(line: 369, column: 11, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5014, file: !304, line: 369, column: 7)
!5067 = !DILocation(line: 369, column: 7, scope: !5014)
!5068 = !DILocation(line: 370, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5066, file: !304, line: 369, column: 19)
!5070 = !DILocation(line: 371, column: 3, scope: !5069)
!5071 = !DILocation(line: 0, scope: !4964)
!5072 = !DILocation(line: 0, scope: !5014)
!5073 = !DILocation(line: 0, scope: !4983)
!5074 = !DILocation(line: 373, column: 27, scope: !4964)
!5075 = !DILocation(line: 373, column: 9, scope: !4964)
!5076 = !DILocation(line: 373, column: 16, scope: !4964)
!5077 = !DILocation(line: 373, column: 23, scope: !4964)
!5078 = !DILocation(line: 375, column: 3, scope: !4964)
!5079 = distinct !DISubprogram(name: "str_skip_white", scope: !154, file: !154, line: 137, type: !5080, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!147, !147}
!5082 = !DILocalVariable(name: "str", arg: 1, scope: !5079, file: !154, line: 137, type: !147)
!5083 = !DILocation(line: 0, scope: !5079)
!5084 = !DILocation(line: 140, column: 3, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !154, line: 143, column: 3)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !154, line: 142, column: 3)
!5087 = distinct !DILexicalBlock(scope: !5079, file: !154, line: 141, column: 3)
!5088 = !DILocation(line: 140, column: 13, scope: !5085)
!5089 = !DILocation(line: 140, column: 26, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !154, line: 140, column: 9)
!5091 = distinct !DILexicalBlock(scope: !5085, file: !154, line: 140, column: 13)
!5092 = !DILocation(line: 140, column: 12, scope: !5090)
!5093 = !DILocation(line: 140, column: 31, scope: !5090)
!5094 = !DILocation(line: 140, column: 9, scope: !5091)
!5095 = !DILocation(line: 140, column: 28, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !154, line: 140, column: 11)
!5097 = distinct !DILexicalBlock(scope: !5090, file: !154, line: 140, column: 39)
!5098 = !DILocation(line: 140, column: 14, scope: !5096)
!5099 = !DILocation(line: 140, column: 33, scope: !5096)
!5100 = !DILocation(line: 140, column: 11, scope: !5097)
!5101 = !DILocation(line: 140, column: 9, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5096, file: !154, line: 140, column: 40)
!5103 = !DILocation(line: 142, column: 5, scope: !5097)
!5104 = !DILocation(line: 141, column: 9, scope: !5091)
!5105 = distinct !{!5105, !5084, !5106}
!5106 = !DILocation(line: 142, column: 3, scope: !5085)
!5107 = !DILocation(line: 144, column: 3, scope: !5085)
!5108 = !DILocation(line: 144, column: 3, scope: !5087)
