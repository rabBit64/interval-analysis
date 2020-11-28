; ModuleID = '/tmp/tmp.ll'
source_filename = "c/spell-1.0.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i32, [44 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.str = type { i8*, i32, i32 }
%struct.stat = type { i64, i16, i64, i32, i32, i32, i32, i64, i16, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.pipe = type { i32, i32, i32, i32, i32, i32, %struct.__anonstruct_fd_set_13 }
%struct.__anonstruct_fd_set_13 = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@version = constant [12 x i8] c"version 1.0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"all-chains\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"british\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dictionary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ispell\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ispell-version\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"print-file-name\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"print-stems\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"stop-list\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@long_options = constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option zeroinitializer], align 16, !dbg !145
@program_name = global i8* null, align 8, !dbg !159
@ispell_prog = global i8* null, align 8, !dbg !161
@dictionary = global i8* null, align 8, !dbg !163
@show_ispell_version = global i32 0, align 4, !dbg !165
@read_stdin = global i32 0, align 4, !dbg !167
@british = global i32 0, align 4, !dbg !169
@verbose = global i32 0, align 4, !dbg !171
@number_lines = global i32 0, align 4, !dbg !173
@print_file_names = global i32 0, align 4, !dbg !175
@interactive = global i32 0, align 4, !dbg !177
@.str.13 = private unnamed_addr constant [13 x i8] c"IVbdhilnosvx\00", align 1
@optarg = external global i8*, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"option argument not given\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.17 = private unnamed_addr constant [687 x i8] c"This is GNU Spell, a Unix spell emulator.\0A\0A  -I, --ispell-version\09\09Print Ispell's version.\0A  -V, --version\09\09\09Print the version number.\0A  -b, --british\09\09\09Use the British dictionary.\0A  -d, --dictionary=FILE\09\09Use FILE to look up words.\0A  -h, --help\09\09\09Print a summary of the options.\0A  -i, --ispell=PROGRAM\09\09Calls PROGRAM as Ispell.\0A  -l, --all-chains\09\09Ignored; for compatibility.\0A  -n, --number\09\09\09Print line numbers before lines.\0A  -o, --print-file-name\09\09Print file names before lines.\0A  -s, --stop-list=FILE\09\09Ignored; for compatibility.\0A  -v, --verbose\09\09\09Print words not literally found.\0A  -x, --print-stems\09\09Ignored; for compatibility.\0A\0APlease use Info to read more (type `info spell').\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"error forking to run Ispell\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"unable to locate Ispell\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%s: error reading line\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"error writing to Ispell\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"%s: close error\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"unrecognized Ispell line `%s'\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"premature EOF from Ispell's stderr\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Can't open \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"%s: cannot open\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"error creating SIGPIPE handler\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"error creating SIGCHLD handler\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"error creating pipe to Ispell\00", align 1
@optind = external global i32, align 4
@.str.34 = private unnamed_addr constant [35 x i8] c"premature EOF from Ispell's stdout\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"%s: Ispell version %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"%s: stat error\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"%s: is a directory\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"%s: open error\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"error duping to stdin\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"error duping to stdout\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"error duping to stderr\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"error executing %s\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"broken pipe\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Ispell died\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define %struct.str* @str_make(%struct.str* %str) #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata %struct.str* %str, metadata !193, metadata !DIExpression()), !dbg !194
  %tobool = icmp ne %struct.str* %str, null, !dbg !195
  br i1 %tobool, label %if.else, label %if.then, !dbg !198

if.then:                                          ; preds = %entry
  %call = call i8* @xmalloc(i32 16), !dbg !199
  call void @llvm.dbg.value(metadata i8* %call, metadata !202, metadata !DIExpression()), !dbg !194
  %0 = bitcast i8* %call to %struct.str*, !dbg !199
  call void @llvm.dbg.value(metadata %struct.str* %0, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 64, metadata !203, metadata !DIExpression()), !dbg !194
  %mem = getelementptr inbounds %struct.str, %struct.str* %0, i32 0, i32 2, !dbg !204
  store i32 64, i32* %mem, align 4, !dbg !205
  %call1 = call i8* @xmalloc(i32 64), !dbg !206
  call void @llvm.dbg.value(metadata i8* %call1, metadata !207, metadata !DIExpression()), !dbg !194
  %str2 = getelementptr inbounds %struct.str, %struct.str* %0, i32 0, i32 0, !dbg !204
  store i8* %call1, i8** %str2, align 8, !dbg !205
  br label %if.end, !dbg !208

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 64, metadata !209, metadata !DIExpression()), !dbg !194
  %mem3 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 2, !dbg !210
  store i32 64, i32* %mem3, align 4, !dbg !213
  %str4 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !214
  %1 = load i8*, i8** %str4, align 8, !dbg !214
  %call5 = call i8* @xrealloc(i8* %1, i32 64), !dbg !215
  call void @llvm.dbg.value(metadata i8* %call5, metadata !216, metadata !DIExpression()), !dbg !194
  %str6 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !210
  store i8* %call5, i8** %str6, align 8, !dbg !213
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %str.addr.0 = phi %struct.str* [ %str, %if.else ], [ %0, %if.then ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.0, metadata !193, metadata !DIExpression()), !dbg !194
  %len = getelementptr inbounds %struct.str, %struct.str* %str.addr.0, i32 0, i32 1, !dbg !217
  store i32 0, i32* %len, align 8, !dbg !218
  ret %struct.str* %str.addr.0, !dbg !219
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @xmalloc(i32 %size) #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !223, metadata !DIExpression()), !dbg !224
  %call = call noalias i8* @malloc(i32 %size), !dbg !225
  call void @llvm.dbg.value(metadata i8* %call, metadata !228, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i8* %call, metadata !229, metadata !DIExpression()), !dbg !224
  %tobool = icmp ne i8* %call, null, !dbg !230
  br i1 %tobool, label %if.end, label %if.then, !dbg !232

if.then:                                          ; preds = %entry
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !233
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !237
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @xrealloc(i8* %ptr, i32 %size) #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %size, metadata !243, metadata !DIExpression()), !dbg !242
  %tobool = icmp ne i8* %ptr, null, !dbg !244
  br i1 %tobool, label %if.end, label %if.then, !dbg !247

if.then:                                          ; preds = %entry
  %call = call i8* @xmalloc(i32 %size), !dbg !248
  call void @llvm.dbg.value(metadata i8* %call, metadata !251, metadata !DIExpression()), !dbg !242
  br label %return, !dbg !252

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @realloc(i8* %ptr, i32 %size), !dbg !253
  call void @llvm.dbg.value(metadata i8* %call1, metadata !241, metadata !DIExpression()), !dbg !242
  %tobool2 = icmp ne i8* %call1, null, !dbg !255
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !257

if.then3:                                         ; preds = %if.end
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !258
  br label %if.end4, !dbg !261

if.end4:                                          ; preds = %if.then3, %if.end
  br label %return, !dbg !262

return:                                           ; preds = %if.end4, %if.then
  %retval.0 = phi i8* [ %call1, %if.end4 ], [ %call, %if.then ], !dbg !263
  ret i8* %retval.0, !dbg !264
}

; Function Attrs: noinline nounwind ssp uwtable
define void @str_add_char(%struct.str* %str, i8 signext %c) #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata %struct.str* %str, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i8 %c, metadata !270, metadata !DIExpression()), !dbg !269
  %tobool = icmp ne %struct.str* %str, null, !dbg !271
  br i1 %tobool, label %if.else, label %if.then, !dbg !274

if.then:                                          ; preds = %entry
  %call = call %struct.str* @str_make(%struct.str* %str), !dbg !275
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !268, metadata !DIExpression()), !dbg !269
  br label %if.end5, !dbg !278

if.else:                                          ; preds = %entry
  %str1 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !279
  %0 = load i8*, i8** %str1, align 8, !dbg !279
  %tobool2 = icmp ne i8* %0, null, !dbg !281
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !282

if.then3:                                         ; preds = %if.else
  %call4 = call %struct.str* @str_make(%struct.str* %str), !dbg !283
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !268, metadata !DIExpression()), !dbg !269
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then3, %if.else
  %str.addr.0 = phi %struct.str* [ %str, %if.else ], [ %call4, %if.then3 ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.0, metadata !268, metadata !DIExpression()), !dbg !269
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %str.addr.1 = phi %struct.str* [ %str.addr.0, %if.end ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.1, metadata !268, metadata !DIExpression()), !dbg !269
  %len = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 1, !dbg !287
  %1 = load i32, i32* %len, align 8, !dbg !288
  %inc = add nsw i32 %1, 1, !dbg !288
  store i32 %inc, i32* %len, align 8, !dbg !288
  %len6 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 1, !dbg !289
  %2 = load i32, i32* %len6, align 8, !dbg !289
  %mem = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 2, !dbg !291
  %3 = load i32, i32* %mem, align 4, !dbg !291
  %cmp = icmp ugt i32 %2, %3, !dbg !292
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !293

if.then7:                                         ; preds = %if.end5
  %mem8 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 2, !dbg !294
  %4 = load i32, i32* %mem8, align 4, !dbg !294
  %add = add i32 %4, 64, !dbg !297
  call void @llvm.dbg.value(metadata i32 %add, metadata !298, metadata !DIExpression()), !dbg !269
  %mem9 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 2, !dbg !299
  store i32 %add, i32* %mem9, align 4, !dbg !300
  %str10 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 0, !dbg !301
  %5 = load i8*, i8** %str10, align 8, !dbg !301
  %call11 = call i8* @xrealloc(i8* %5, i32 %add), !dbg !302
  call void @llvm.dbg.value(metadata i8* %call11, metadata !303, metadata !DIExpression()), !dbg !269
  %str12 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 0, !dbg !299
  store i8* %call11, i8** %str12, align 8, !dbg !300
  br label %if.end13, !dbg !304

if.end13:                                         ; preds = %if.then7, %if.end5
  %str14 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 0, !dbg !305
  %6 = load i8*, i8** %str14, align 8, !dbg !305
  %len15 = getelementptr inbounds %struct.str, %struct.str* %str.addr.1, i32 0, i32 1, !dbg !306
  %7 = load i32, i32* %len15, align 8, !dbg !306
  %sub = sub nsw i32 %7, 1, !dbg !307
  %idx.ext = sext i32 %sub to i64, !dbg !308
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext, !dbg !308
  store i8 %c, i8* %add.ptr, align 1, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind ssp uwtable
define void @str_add_str(%struct.str* %str1, %struct.str* %str2) #0 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata %struct.str* %str1, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata %struct.str* %str2, metadata !316, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !315
  %tobool = icmp ne %struct.str* %str2, null, !dbg !318
  br i1 %tobool, label %if.else, label %if.then, !dbg !321

if.then:                                          ; preds = %entry
  br label %return, !dbg !322

if.else:                                          ; preds = %entry
  %str = getelementptr inbounds %struct.str, %struct.str* %str2, i32 0, i32 0, !dbg !324
  %0 = load i8*, i8** %str, align 8, !dbg !324
  %tobool1 = icmp ne i8* %0, null, !dbg !326
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !327

if.then2:                                         ; preds = %if.else
  br label %return, !dbg !328

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4 = icmp ne %struct.str* %str1, null, !dbg !330
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !332

if.then5:                                         ; preds = %if.end3
  %call = call %struct.str* @str_make(%struct.str* %str1), !dbg !333
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !314, metadata !DIExpression()), !dbg !315
  br label %if.end12, !dbg !336

if.else6:                                         ; preds = %if.end3
  %str7 = getelementptr inbounds %struct.str, %struct.str* %str1, i32 0, i32 0, !dbg !337
  %1 = load i8*, i8** %str7, align 8, !dbg !337
  %tobool8 = icmp ne i8* %1, null, !dbg !339
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !340

if.then9:                                         ; preds = %if.else6
  %call10 = call %struct.str* @str_make(%struct.str* %str1), !dbg !341
  call void @llvm.dbg.value(metadata %struct.str* %call10, metadata !314, metadata !DIExpression()), !dbg !315
  br label %if.end11, !dbg !344

if.end11:                                         ; preds = %if.then9, %if.else6
  %str1.addr.0 = phi %struct.str* [ %str1, %if.else6 ], [ %call10, %if.then9 ]
  call void @llvm.dbg.value(metadata %struct.str* %str1.addr.0, metadata !314, metadata !DIExpression()), !dbg !315
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then5
  %str1.addr.1 = phi %struct.str* [ %str1.addr.0, %if.end11 ], [ %call, %if.then5 ]
  call void @llvm.dbg.value(metadata %struct.str* %str1.addr.1, metadata !314, metadata !DIExpression()), !dbg !315
  br label %while.body, !dbg !345

while.body:                                       ; preds = %if.end14, %if.end12
  %pos.0 = phi i32 [ 0, %if.end12 ], [ %inc, %if.end14 ], !dbg !347
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !317, metadata !DIExpression()), !dbg !315
  br label %while_continue, !dbg !348

while_continue:                                   ; preds = %while.body
  %len = getelementptr inbounds %struct.str, %struct.str* %str2, i32 0, i32 1, !dbg !349
  %2 = load i32, i32* %len, align 8, !dbg !349
  %cmp = icmp slt i32 %pos.0, %2, !dbg !352
  br i1 %cmp, label %if.end14, label %if.then13, !dbg !353

if.then13:                                        ; preds = %while_continue
  br label %while_break, !dbg !354

if.end14:                                         ; preds = %while_continue
  %str15 = getelementptr inbounds %struct.str, %struct.str* %str2, i32 0, i32 0, !dbg !356
  %3 = load i8*, i8** %str15, align 8, !dbg !356
  %idx.ext = sext i32 %pos.0 to i64, !dbg !358
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !dbg !358
  %4 = load i8, i8* %add.ptr, align 1, !dbg !359
  call void @str_add_char(%struct.str* %str1.addr.1, i8 signext %4), !dbg !360
  %inc = add nsw i32 %pos.0, 1, !dbg !361
  call void @llvm.dbg.value(metadata i32 %inc, metadata !317, metadata !DIExpression()), !dbg !315
  br label %while.body, !dbg !345, !llvm.loop !362

while_break:                                      ; preds = %if.then13
  br label %return, !dbg !364

return:                                           ; preds = %while_break, %if.then2, %if.then
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @str_add_line(%struct.str* %str, %struct._IO_FILE* %stream) #0 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata %struct.str* %str, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !371, metadata !DIExpression()), !dbg !370
  %tobool = icmp ne %struct.str* %str, null, !dbg !372
  br i1 %tobool, label %if.else, label %if.then, !dbg !375

if.then:                                          ; preds = %entry
  %call = call %struct.str* @str_make(%struct.str* %str), !dbg !376
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !369, metadata !DIExpression()), !dbg !370
  br label %if.end5, !dbg !379

if.else:                                          ; preds = %entry
  %str1 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !380
  %0 = load i8*, i8** %str1, align 8, !dbg !380
  %tobool2 = icmp ne i8* %0, null, !dbg !382
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !383

if.then3:                                         ; preds = %if.else
  %call4 = call %struct.str* @str_make(%struct.str* %str), !dbg !384
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !369, metadata !DIExpression()), !dbg !370
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then3, %if.else
  %str.addr.0 = phi %struct.str* [ %str, %if.else ], [ %call4, %if.then3 ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.0, metadata !369, metadata !DIExpression()), !dbg !370
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %str.addr.1 = phi %struct.str* [ %str.addr.0, %if.end ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.1, metadata !369, metadata !DIExpression()), !dbg !370
  %tobool6 = icmp ne %struct._IO_FILE* %stream, null, !dbg !388
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !390

if.then7:                                         ; preds = %if.end5
  br label %return, !dbg !391

if.end8:                                          ; preds = %if.end5
  br label %while.body, !dbg !393

while.body:                                       ; preds = %if.end23, %if.end8
  br label %while_continue, !dbg !395

while_continue:                                   ; preds = %while.body
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %stream), !dbg !396
  call void @llvm.dbg.value(metadata i32 %call9, metadata !399, metadata !DIExpression()), !dbg !370
  %conv = trunc i32 %call9 to i8, !dbg !400
  call void @llvm.dbg.value(metadata i8 %conv, metadata !401, metadata !DIExpression()), !dbg !370
  %conv10 = sext i8 %conv to i32, !dbg !402
  %cmp = icmp eq i32 %conv10, -1, !dbg !404
  br i1 %cmp, label %if.then12, label %if.else13, !dbg !405

if.then12:                                        ; preds = %while_continue
  br label %return, !dbg !406

if.else13:                                        ; preds = %while_continue
  %call14 = call i32 @ferror(%struct._IO_FILE* %stream), !dbg !408
  call void @llvm.dbg.value(metadata i32 %call14, metadata !411, metadata !DIExpression()), !dbg !370
  %tobool15 = icmp ne i32 %call14, 0, !dbg !412
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !414

if.then16:                                        ; preds = %if.else13
  br label %return, !dbg !415

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  call void @str_add_char(%struct.str* %str.addr.1, i8 signext %conv), !dbg !417
  %conv19 = sext i8 %conv to i32, !dbg !419
  %cmp20 = icmp eq i32 %conv19, 10, !dbg !421
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !422

if.then22:                                        ; preds = %if.end18
  br label %while_break, !dbg !423

if.end23:                                         ; preds = %if.end18
  br label %while.body, !dbg !393, !llvm.loop !425

while_break:                                      ; preds = %if.then22
  br label %return, !dbg !427

return:                                           ; preds = %while_break, %if.then16, %if.then12, %if.then7
  %retval.0 = phi i32 [ 2, %if.then12 ], [ 2, %if.then16 ], [ 0, %while_break ], [ 1, %if.then7 ], !dbg !428
  ret i32 %retval.0, !dbg !429
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @str_add_line_from_desc(%struct.str* %str, i32 %file_desc) #0 !dbg !430 {
entry:
  %c = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.str* %str, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 %file_desc, metadata !435, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata i8* %c, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !434
  store i8 0, i8* %c, align 1, !dbg !439
  %tobool = icmp ne %struct.str* %str, null, !dbg !441
  br i1 %tobool, label %if.else, label %if.then, !dbg !443

if.then:                                          ; preds = %entry
  %call = call %struct.str* @str_make(%struct.str* %str), !dbg !444
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !433, metadata !DIExpression()), !dbg !434
  br label %if.end5, !dbg !447

if.else:                                          ; preds = %entry
  %str1 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !448
  %0 = load i8*, i8** %str1, align 8, !dbg !448
  %tobool2 = icmp ne i8* %0, null, !dbg !450
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !451

if.then3:                                         ; preds = %if.else
  %call4 = call %struct.str* @str_make(%struct.str* %str), !dbg !452
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !433, metadata !DIExpression()), !dbg !434
  br label %if.end, !dbg !455

if.end:                                           ; preds = %if.then3, %if.else
  %str.addr.0 = phi %struct.str* [ %str, %if.else ], [ %call4, %if.then3 ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.0, metadata !433, metadata !DIExpression()), !dbg !434
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %str.addr.1 = phi %struct.str* [ %str.addr.0, %if.end ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata %struct.str* %str.addr.1, metadata !433, metadata !DIExpression()), !dbg !434
  br label %while.body, !dbg !456

while.body:                                       ; preds = %if.end15, %if.end5
  br label %while_continue, !dbg !458

while_continue:                                   ; preds = %while.body
  %call6 = call i32 @safe_read(i32 %file_desc, i8* %c, i32 1), !dbg !459
  call void @llvm.dbg.value(metadata i32 %call6, metadata !438, metadata !DIExpression()), !dbg !434
  %tobool7 = icmp ne i32 %call6, 0, !dbg !462
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !464

if.then8:                                         ; preds = %while_continue
  br label %return, !dbg !465

if.end9:                                          ; preds = %while_continue
  %cmp = icmp slt i32 %call6, 0, !dbg !467
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !469

if.then10:                                        ; preds = %if.end9
  br label %return, !dbg !470

if.end11:                                         ; preds = %if.end9
  %1 = load i8, i8* %c, align 1, !dbg !472
  call void @str_add_char(%struct.str* %str.addr.1, i8 signext %1), !dbg !474
  %2 = load i8, i8* %c, align 1, !dbg !475
  %conv = sext i8 %2 to i32, !dbg !477
  %cmp12 = icmp eq i32 %conv, 10, !dbg !478
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !479

if.then14:                                        ; preds = %if.end11
  br label %while_break, !dbg !480

if.end15:                                         ; preds = %if.end11
  br label %while.body, !dbg !456, !llvm.loop !482

while_break:                                      ; preds = %if.then14
  br label %return, !dbg !484

return:                                           ; preds = %while_break, %if.then10, %if.then8
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %while_break ], [ 2, %if.then8 ], !dbg !485
  ret i32 %retval.0, !dbg !486
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @safe_read(i32 %desc, i8* %ptr, i32 %len) #0 !dbg !487 {
entry:
  call void @llvm.dbg.value(metadata i32 %desc, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !492, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i32 %len, metadata !493, metadata !DIExpression()), !dbg !491
  %cmp = icmp sle i32 %len, 0, !dbg !494
  br i1 %cmp, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  br label %return, !dbg !498

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !500

while.body:                                       ; preds = %if.end7, %if.end
  br label %while_continue, !dbg !502

while_continue:                                   ; preds = %while.body
  %call = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i32, ...)*)(i32 %desc, i8* %ptr, i32 %len), !dbg !503
  call void @llvm.dbg.value(metadata i32 %call, metadata !506, metadata !DIExpression()), !dbg !491
  %cmp1 = icmp slt i32 %call, 0, !dbg !507
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !509

if.then2:                                         ; preds = %while_continue
  %call3 = call i32* @__errno_location() #7, !dbg !510
  call void @llvm.dbg.value(metadata i32* %call3, metadata !513, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %call3, align 4, !dbg !514
  %cmp4 = icmp eq i32 %0, 4, !dbg !516
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !517

if.then5:                                         ; preds = %if.then2
  br label %while_break, !dbg !518

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !520

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !521

if.end7:                                          ; preds = %if.end6
  br label %while.body, !dbg !500, !llvm.loop !523

while_break:                                      ; preds = %if.else, %if.then5
  br label %return, !dbg !525

return:                                           ; preds = %while_break, %if.then
  %retval.0 = phi i32 [ %len, %if.then ], [ %call, %while_break ], !dbg !526
  ret i32 %retval.0, !dbg !527
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.str* @nstr_to_str(i8* %nstr) #0 !dbg !528 {
entry:
  call void @llvm.dbg.value(metadata i8* %nstr, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.str* null, metadata !533, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !532
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !535
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !533, metadata !DIExpression()), !dbg !532
  %tobool = icmp ne i8* %nstr, null, !dbg !538
  br i1 %tobool, label %if.end, label %if.then, !dbg !540

if.then:                                          ; preds = %entry
  br label %return, !dbg !541

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !543

while.body:                                       ; preds = %if.end3, %if.end
  %pos.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end3 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !534, metadata !DIExpression()), !dbg !532
  br label %while_continue, !dbg !546

while_continue:                                   ; preds = %while.body
  %idx.ext = sext i32 %pos.0 to i64, !dbg !547
  %add.ptr = getelementptr inbounds i8, i8* %nstr, i64 %idx.ext, !dbg !547
  %0 = load i8, i8* %add.ptr, align 1, !dbg !550
  %tobool1 = icmp ne i8 %0, 0, !dbg !550
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !551

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !552

if.end3:                                          ; preds = %while_continue
  %idx.ext4 = sext i32 %pos.0 to i64, !dbg !554
  %add.ptr5 = getelementptr inbounds i8, i8* %nstr, i64 %idx.ext4, !dbg !554
  %1 = load i8, i8* %add.ptr5, align 1, !dbg !556
  call void @str_add_char(%struct.str* %call, i8 signext %1), !dbg !557
  %inc = add nsw i32 %pos.0, 1, !dbg !558
  call void @llvm.dbg.value(metadata i32 %inc, metadata !534, metadata !DIExpression()), !dbg !532
  br label %while.body, !dbg !543, !llvm.loop !559

while_break:                                      ; preds = %if.then2
  br label %return, !dbg !561

return:                                           ; preds = %while_break, %if.then
  ret %struct.str* %call, !dbg !562
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @str_to_nstr(%struct.str* %str) #0 !dbg !563 {
entry:
  call void @llvm.dbg.value(metadata %struct.str* %str, metadata !566, metadata !DIExpression()), !dbg !567
  %len = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 1, !dbg !568
  %0 = load i32, i32* %len, align 8, !dbg !568
  %add = add nsw i32 %0, 1, !dbg !571
  %call = call i8* @xmalloc(i32 %add), !dbg !572
  call void @llvm.dbg.value(metadata i8* %call, metadata !573, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %call, metadata !574, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 0, metadata !575, metadata !DIExpression()), !dbg !567
  %tobool = icmp ne %struct.str* %str, null, !dbg !576
  br i1 %tobool, label %if.else, label %if.then, !dbg !578

if.then:                                          ; preds = %entry
  br label %return, !dbg !579

if.else:                                          ; preds = %entry
  %str1 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !581
  %1 = load i8*, i8** %str1, align 8, !dbg !581
  %tobool2 = icmp ne i8* %1, null, !dbg !583
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !584

if.then3:                                         ; preds = %if.else
  br label %return, !dbg !585

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %while.body, !dbg !587

while.body:                                       ; preds = %if.end14, %if.end4
  %pos.0 = phi i32 [ 0, %if.end4 ], [ %inc, %if.end14 ], !dbg !589
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !575, metadata !DIExpression()), !dbg !567
  br label %while_continue, !dbg !590

while_continue:                                   ; preds = %while.body
  %len5 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 1, !dbg !591
  %2 = load i32, i32* %len5, align 8, !dbg !591
  %cmp = icmp slt i32 %pos.0, %2, !dbg !594
  br i1 %cmp, label %if.end7, label %if.then6, !dbg !595

if.then6:                                         ; preds = %while_continue
  br label %while_break, !dbg !596

if.end7:                                          ; preds = %while_continue
  %str8 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !598
  %3 = load i8*, i8** %str8, align 8, !dbg !598
  %idx.ext = sext i32 %pos.0 to i64, !dbg !600
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !dbg !600
  %4 = load i8, i8* %add.ptr, align 1, !dbg !601
  %tobool9 = icmp ne i8 %4, 0, !dbg !601
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !602

if.then10:                                        ; preds = %if.end7
  %str11 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !603
  %5 = load i8*, i8** %str11, align 8, !dbg !603
  %idx.ext12 = sext i32 %pos.0 to i64, !dbg !605
  %add.ptr13 = getelementptr inbounds i8, i8* %5, i64 %idx.ext12, !dbg !605
  store i8 32, i8* %add.ptr13, align 1, !dbg !606
  br label %if.end14, !dbg !607

if.end14:                                         ; preds = %if.then10, %if.end7
  %str15 = getelementptr inbounds %struct.str, %struct.str* %str, i32 0, i32 0, !dbg !608
  %6 = load i8*, i8** %str15, align 8, !dbg !608
  %idx.ext16 = sext i32 %pos.0 to i64, !dbg !609
  %add.ptr17 = getelementptr inbounds i8, i8* %6, i64 %idx.ext16, !dbg !609
  %7 = load i8, i8* %add.ptr17, align 1, !dbg !610
  %idx.ext18 = sext i32 %pos.0 to i64, !dbg !611
  %add.ptr19 = getelementptr inbounds i8, i8* %call, i64 %idx.ext18, !dbg !611
  store i8 %7, i8* %add.ptr19, align 1, !dbg !612
  %inc = add nsw i32 %pos.0, 1, !dbg !595
  call void @llvm.dbg.value(metadata i32 %inc, metadata !575, metadata !DIExpression()), !dbg !567
  br label %while.body, !dbg !587, !llvm.loop !613

while_break:                                      ; preds = %if.then6
  %add20 = add nsw i32 %pos.0, 1, !dbg !615
  %idx.ext21 = sext i32 %add20 to i64, !dbg !616
  %add.ptr22 = getelementptr inbounds i8, i8* %call, i64 %idx.ext21, !dbg !616
  store i8 0, i8* %add.ptr22, align 1, !dbg !617
  br label %return, !dbg !618

return:                                           ; preds = %while_break, %if.then3, %if.then
  ret i8* %call, !dbg !619
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.str* @int_to_str(i32 %num) #0 !dbg !620 {
entry:
  %c = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %num, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata [2 x i8]* %c, metadata !625, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !630, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()), !dbg !624
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !632
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !635, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !636, metadata !DIExpression()), !dbg !624
  %call1 = call %struct.str* @str_make(%struct.str* null), !dbg !637
  call void @llvm.dbg.value(metadata %struct.str* %call1, metadata !638, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata %struct.str* %call1, metadata !639, metadata !DIExpression()), !dbg !624
  br label %while.body, !dbg !640

while.body:                                       ; preds = %if.end, %entry
  %num.addr.0 = phi i32 [ %num, %entry ], [ %div, %if.end ]
  call void @llvm.dbg.value(metadata i32 %num.addr.0, metadata !623, metadata !DIExpression()), !dbg !624
  br label %while_continue, !dbg !642

while_continue:                                   ; preds = %while.body
  %cmp = icmp sgt i32 %num.addr.0, 0, !dbg !643
  br i1 %cmp, label %if.end, label %if.then, !dbg !646

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !647

if.end:                                           ; preds = %while_continue
  %rem2 = srem i32 %num.addr.0, 10, !dbg !649
  call void @llvm.dbg.value(metadata i32 %rem2, metadata !631, metadata !DIExpression()), !dbg !624
  %div = sdiv i32 %num.addr.0, 10, !dbg !651
  call void @llvm.dbg.value(metadata i32 %div, metadata !623, metadata !DIExpression()), !dbg !624
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %c, i32 0, i32 0, !dbg !652
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %rem2), !dbg !653
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %c, i64 0, i64 0, !dbg !654
  %0 = load i8, i8* %arrayidx, align 1, !dbg !654
  call void @str_add_char(%struct.str* %call, i8 signext %0), !dbg !655
  br label %while.body, !dbg !640, !llvm.loop !656

while_break:                                      ; preds = %if.then
  %len = getelementptr inbounds %struct.str, %struct.str* %call, i32 0, i32 1, !dbg !658
  %1 = load i32, i32* %len, align 8, !dbg !658
  %sub = sub nsw i32 %1, 1, !dbg !659
  call void @llvm.dbg.value(metadata i32 %sub, metadata !630, metadata !DIExpression()), !dbg !624
  br label %while.body4, !dbg !660

while.body4:                                      ; preds = %if.end7, %while_break
  %pos.0 = phi i32 [ %sub, %while_break ], [ %dec, %if.end7 ], !dbg !662
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !630, metadata !DIExpression()), !dbg !624
  br label %while_continue___0, !dbg !663

while_continue___0:                               ; preds = %while.body4
  %cmp5 = icmp sge i32 %pos.0, 0, !dbg !664
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !667

if.then6:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !668

if.end7:                                          ; preds = %while_continue___0
  %str8 = getelementptr inbounds %struct.str, %struct.str* %call, i32 0, i32 0, !dbg !670
  %2 = load i8*, i8** %str8, align 8, !dbg !670
  %idx.ext = sext i32 %pos.0 to i64, !dbg !672
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext, !dbg !672
  %3 = load i8, i8* %add.ptr, align 1, !dbg !673
  call void @str_add_char(%struct.str* %call1, i8 signext %3), !dbg !674
  %dec = add nsw i32 %pos.0, -1, !dbg !675
  call void @llvm.dbg.value(metadata i32 %dec, metadata !630, metadata !DIExpression()), !dbg !624
  br label %while.body4, !dbg !660, !llvm.loop !676

while_break___0:                                  ; preds = %if.then6
  ret %struct.str* %call1, !dbg !678
}

declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @stat(i8* noalias %__path, %struct.stat* noalias %__statbuf) #0 !dbg !679 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !687, metadata !DIExpression()), !dbg !686
  %call = call i32 @__xstat(i32 3, i8* %__path, %struct.stat* %__statbuf), !dbg !688
  call void @llvm.dbg.value(metadata i32 %call, metadata !691, metadata !DIExpression()), !dbg !686
  ret i32 %call, !dbg !692
}

declare i32 @__xstat(i32, i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @lstat(i8* noalias %__path, %struct.stat* noalias %__statbuf) #0 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !696, metadata !DIExpression()), !dbg !695
  %call = call i32 @__lxstat(i32 3, i8* %__path, %struct.stat* %__statbuf), !dbg !697
  call void @llvm.dbg.value(metadata i32 %call, metadata !700, metadata !DIExpression()), !dbg !695
  ret i32 %call, !dbg !701
}

declare i32 @__lxstat(i32, i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) #0 !dbg !702 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !707, metadata !DIExpression()), !dbg !706
  %call = call i32 @__fxstat(i32 3, i32 %__fd, %struct.stat* %__statbuf), !dbg !708
  call void @llvm.dbg.value(metadata i32 %call, metadata !711, metadata !DIExpression()), !dbg !706
  ret i32 %call, !dbg !712
}

declare i32 @__fxstat(i32, i32, %struct.stat*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) #0 !dbg !713 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !718, metadata !DIExpression()), !dbg !717
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__dev.addr, metadata !719, metadata !DIExpression()), !dbg !720
  %call = call i32 @__xmknod(i32 1, i8* %__path, i32 %__mode, i64* %__dev.addr), !dbg !721
  call void @llvm.dbg.value(metadata i32 %call, metadata !724, metadata !DIExpression()), !dbg !717
  ret i32 %call, !dbg !725
}

declare i32 @__xmknod(i32, i8*, i32, i64*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !726 {
entry:
  %ispell_pipe = alloca %struct.pipe, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8** %argv, metadata !732, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata %struct.pipe* %ispell_pipe, metadata !733, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8 0, metadata !745, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !747, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !748, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !749, metadata !DIExpression()), !dbg !731
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !753
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !755
  store i8* %0, i8** @program_name, align 8, !dbg !756
  br label %while.body, !dbg !757

while.body:                                       ; preds = %switch_break, %entry
  %opt_error.0 = phi i32 [ 0, %entry ], [ %opt_error.1, %switch_break ], !dbg !759
  %show_help.0 = phi i32 [ 0, %entry ], [ %show_help.1, %switch_break ], !dbg !760
  %show_version.0 = phi i32 [ 0, %entry ], [ %show_version.1, %switch_break ], !dbg !761
  call void @llvm.dbg.value(metadata i32 %show_version.0, metadata !748, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %show_help.0, metadata !747, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %opt_error.0, metadata !746, metadata !DIExpression()), !dbg !731
  br label %while_continue, !dbg !762

while_continue:                                   ; preds = %while.body
  %call = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i32 0, i32 0), i32* null), !dbg !763
  call void @llvm.dbg.value(metadata i32 %call, metadata !766, metadata !DIExpression()), !dbg !731
  %conv = trunc i32 %call to i8, !dbg !763
  call void @llvm.dbg.value(metadata i8 %conv, metadata !745, metadata !DIExpression()), !dbg !731
  %conv1 = sext i8 %conv to i32, !dbg !767
  %cmp = icmp eq i32 %conv1, -1, !dbg !769
  br i1 %cmp, label %if.then, label %if.end, !dbg !770

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !771

if.end:                                           ; preds = %while_continue
  %conv3 = sext i8 %conv to i32, !dbg !773
  %cmp4 = icmp eq i32 %conv3, 73, !dbg !776
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !777

if.then6:                                         ; preds = %if.end
  br label %case_73, !dbg !778

if.end7:                                          ; preds = %if.end
  %conv8 = sext i8 %conv to i32, !dbg !780
  %cmp9 = icmp eq i32 %conv8, 86, !dbg !782
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !783

if.then11:                                        ; preds = %if.end7
  br label %case_86, !dbg !784

if.end12:                                         ; preds = %if.end7
  %conv13 = sext i8 %conv to i32, !dbg !786
  %cmp14 = icmp eq i32 %conv13, 98, !dbg !788
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !789

if.then16:                                        ; preds = %if.end12
  br label %case_98, !dbg !790

if.end17:                                         ; preds = %if.end12
  %conv18 = sext i8 %conv to i32, !dbg !792
  %cmp19 = icmp eq i32 %conv18, 100, !dbg !794
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !795

if.then21:                                        ; preds = %if.end17
  br label %case_100, !dbg !796

if.end22:                                         ; preds = %if.end17
  %conv23 = sext i8 %conv to i32, !dbg !798
  %cmp24 = icmp eq i32 %conv23, 104, !dbg !800
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !801

if.then26:                                        ; preds = %if.end22
  br label %case_104, !dbg !802

if.end27:                                         ; preds = %if.end22
  %conv28 = sext i8 %conv to i32, !dbg !804
  %cmp29 = icmp eq i32 %conv28, 105, !dbg !806
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !807

if.then31:                                        ; preds = %if.end27
  br label %case_105, !dbg !808

if.end32:                                         ; preds = %if.end27
  %conv33 = sext i8 %conv to i32, !dbg !810
  %cmp34 = icmp eq i32 %conv33, 108, !dbg !812
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !813

if.then36:                                        ; preds = %if.end32
  br label %case_108, !dbg !814

if.end37:                                         ; preds = %if.end32
  %conv38 = sext i8 %conv to i32, !dbg !816
  %cmp39 = icmp eq i32 %conv38, 110, !dbg !818
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !819

if.then41:                                        ; preds = %if.end37
  br label %case_110, !dbg !820

if.end42:                                         ; preds = %if.end37
  %conv43 = sext i8 %conv to i32, !dbg !822
  %cmp44 = icmp eq i32 %conv43, 111, !dbg !824
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !825

if.then46:                                        ; preds = %if.end42
  br label %case_111, !dbg !826

if.end47:                                         ; preds = %if.end42
  %conv48 = sext i8 %conv to i32, !dbg !828
  %cmp49 = icmp eq i32 %conv48, 115, !dbg !830
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !831

if.then51:                                        ; preds = %if.end47
  br label %case_115, !dbg !832

if.end52:                                         ; preds = %if.end47
  %conv53 = sext i8 %conv to i32, !dbg !834
  %cmp54 = icmp eq i32 %conv53, 118, !dbg !836
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !837

if.then56:                                        ; preds = %if.end52
  br label %case_118, !dbg !838

if.end57:                                         ; preds = %if.end52
  %conv58 = sext i8 %conv to i32, !dbg !840
  %cmp59 = icmp eq i32 %conv58, 120, !dbg !842
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !843

if.then61:                                        ; preds = %if.end57
  br label %case_120, !dbg !844

if.end62:                                         ; preds = %if.end57
  br label %switch_default, !dbg !846

case_73:                                          ; preds = %if.then6
  store i32 1, i32* @show_ispell_version, align 4, !dbg !847
  br label %switch_break, !dbg !848

case_86:                                          ; preds = %if.then11
  call void @llvm.dbg.value(metadata i32 1, metadata !748, metadata !DIExpression()), !dbg !731
  br label %switch_break, !dbg !849

case_98:                                          ; preds = %if.then16
  store i32 1, i32* @british, align 4, !dbg !850
  br label %switch_break, !dbg !851

case_100:                                         ; preds = %if.then21
  %1 = load i8*, i8** @optarg, align 8, !dbg !852
  %2 = ptrtoint i8* %1 to i64, !dbg !854
  %cmp63 = icmp ne i64 %2, 0, !dbg !855
  br i1 %cmp63, label %if.then65, label %if.else, !dbg !856

if.then65:                                        ; preds = %case_100
  %3 = load i8*, i8** @optarg, align 8, !dbg !857
  %call66 = call i8* @xstrdup(i8* %3), !dbg !860
  store i8* %call66, i8** @dictionary, align 8, !dbg !861
  br label %if.end67, !dbg !862

if.else:                                          ; preds = %case_100
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)), !dbg !863
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then65
  br label %switch_break, !dbg !866

case_104:                                         ; preds = %if.then26
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !731
  br label %switch_break, !dbg !867

case_105:                                         ; preds = %if.then31
  %4 = load i8*, i8** @optarg, align 8, !dbg !868
  %5 = ptrtoint i8* %4 to i64, !dbg !870
  %cmp68 = icmp ne i64 %5, 0, !dbg !871
  br i1 %cmp68, label %if.then70, label %if.else72, !dbg !872

if.then70:                                        ; preds = %case_105
  %6 = load i8*, i8** @optarg, align 8, !dbg !873
  %call71 = call i8* @xstrdup(i8* %6), !dbg !876
  store i8* %call71, i8** @ispell_prog, align 8, !dbg !877
  br label %if.end73, !dbg !878

if.else72:                                        ; preds = %case_105
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)), !dbg !879
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then70
  br label %switch_break, !dbg !882

case_108:                                         ; preds = %if.then36
  br label %switch_break, !dbg !883

case_110:                                         ; preds = %if.then41
  store i32 1, i32* @number_lines, align 4, !dbg !884
  br label %switch_break, !dbg !885

case_111:                                         ; preds = %if.then46
  store i32 1, i32* @print_file_names, align 4, !dbg !886
  br label %switch_break, !dbg !887

case_115:                                         ; preds = %if.then51
  br label %switch_break, !dbg !888

case_118:                                         ; preds = %if.then56
  store i32 1, i32* @verbose, align 4, !dbg !889
  br label %switch_break, !dbg !890

case_120:                                         ; preds = %if.then61
  br label %switch_break, !dbg !891

switch_default:                                   ; preds = %if.end62
  call void @llvm.dbg.value(metadata i32 1, metadata !746, metadata !DIExpression()), !dbg !731
  br label %switch_break, !dbg !892

switch_break:                                     ; preds = %switch_default, %case_120, %case_118, %case_115, %case_111, %case_110, %case_108, %if.end73, %case_104, %if.end67, %case_98, %case_86, %case_73
  %opt_error.1 = phi i32 [ %opt_error.0, %case_73 ], [ %opt_error.0, %case_86 ], [ %opt_error.0, %case_98 ], [ %opt_error.0, %if.end67 ], [ %opt_error.0, %case_104 ], [ %opt_error.0, %if.end73 ], [ %opt_error.0, %case_108 ], [ %opt_error.0, %case_110 ], [ %opt_error.0, %case_111 ], [ %opt_error.0, %case_115 ], [ %opt_error.0, %case_118 ], [ %opt_error.0, %case_120 ], [ 1, %switch_default ], !dbg !893
  %show_help.1 = phi i32 [ %show_help.0, %case_73 ], [ %show_help.0, %case_86 ], [ %show_help.0, %case_98 ], [ %show_help.0, %if.end67 ], [ 1, %case_104 ], [ %show_help.0, %if.end73 ], [ %show_help.0, %case_108 ], [ %show_help.0, %case_110 ], [ %show_help.0, %case_111 ], [ %show_help.0, %case_115 ], [ %show_help.0, %case_118 ], [ %show_help.0, %case_120 ], [ %show_help.0, %switch_default ], !dbg !893
  %show_version.1 = phi i32 [ %show_version.0, %case_73 ], [ 1, %case_86 ], [ %show_version.0, %case_98 ], [ %show_version.0, %if.end67 ], [ %show_version.0, %case_104 ], [ %show_version.0, %if.end73 ], [ %show_version.0, %case_108 ], [ %show_version.0, %case_110 ], [ %show_version.0, %case_111 ], [ %show_version.0, %case_115 ], [ %show_version.0, %case_118 ], [ %show_version.0, %case_120 ], [ %show_version.0, %switch_default ], !dbg !893
  call void @llvm.dbg.value(metadata i32 %show_version.1, metadata !748, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %show_help.1, metadata !747, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %opt_error.1, metadata !746, metadata !DIExpression()), !dbg !731
  br label %while.body, !dbg !757, !llvm.loop !894

while_break:                                      ; preds = %if.then
  %tobool = icmp ne i32 %opt_error.0, 0, !dbg !896
  br i1 %tobool, label %if.then74, label %if.end76, !dbg !898

if.then74:                                        ; preds = %while_break
  %7 = load i8*, i8** @program_name, align 8, !dbg !899
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* %7), !dbg !902
  call void @exit(i32 1) #8, !dbg !903
  unreachable, !dbg !903

if.end76:                                         ; preds = %while_break
  %tobool77 = icmp ne i32 %show_version.0, 0, !dbg !904
  br i1 %tobool77, label %if.then78, label %if.end82, !dbg !906

if.then78:                                        ; preds = %if.end76
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @version, i32 0, i32 0)), !dbg !907
  %tobool79 = icmp ne i32 %show_help.0, 0, !dbg !910
  br i1 %tobool79, label %if.end81, label %if.then80, !dbg !912

if.then80:                                        ; preds = %if.then78
  call void @exit(i32 0) #8, !dbg !913
  unreachable, !dbg !913

if.end81:                                         ; preds = %if.then78
  br label %if.end82, !dbg !916

if.end82:                                         ; preds = %if.end81, %if.end76
  %tobool83 = icmp ne i32 %show_help.0, 0, !dbg !917
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !919

if.then84:                                        ; preds = %if.end82
  %8 = load i8*, i8** @program_name, align 8, !dbg !920
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* %8), !dbg !923
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924
  %call86 = call i32 @fputs(i8* getelementptr inbounds ([687 x i8], [687 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !925
  call void @exit(i32 0) #8, !dbg !926
  unreachable, !dbg !926

if.end87:                                         ; preds = %if.end82
  %10 = load i8*, i8** @ispell_prog, align 8, !dbg !927
  %tobool88 = icmp ne i8* %10, null, !dbg !927
  br i1 %tobool88, label %if.end91, label %if.then89, !dbg !929

if.then89:                                        ; preds = %if.end87
  %call90 = call i8* @find_ispell(), !dbg !930
  store i8* %call90, i8** @ispell_prog, align 8, !dbg !933
  br label %if.end91, !dbg !934

if.end91:                                         ; preds = %if.then89, %if.end87
  call void @new_pipe(%struct.pipe* %ispell_pipe), !dbg !935
  %call92 = call i32 @fork(), !dbg !937
  call void @llvm.dbg.value(metadata i32 %call92, metadata !749, metadata !DIExpression()), !dbg !731
  %cmp93 = icmp slt i32 %call92, 0, !dbg !938
  br i1 %cmp93, label %if.then95, label %if.else97, !dbg !940

if.then95:                                        ; preds = %if.end91
  %call96 = call i32* @__errno_location() #7, !dbg !941
  call void @llvm.dbg.value(metadata i32* %call96, metadata !944, metadata !DIExpression()), !dbg !731
  %11 = load i32, i32* %call96, align 4, !dbg !945
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)), !dbg !946
  br label %if.end103, !dbg !947

if.else97:                                        ; preds = %if.end91
  %cmp98 = icmp sgt i32 %call92, 0, !dbg !948
  br i1 %cmp98, label %if.then100, label %if.else101, !dbg !950

if.then100:                                       ; preds = %if.else97
  call void @parent(%struct.pipe* %ispell_pipe, i32 %argc, i8** %argv), !dbg !951
  br label %if.end102, !dbg !954

if.else101:                                       ; preds = %if.else97
  call void @run_ispell_in_child(%struct.pipe* %ispell_pipe), !dbg !955
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then100
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then95
  call void @exit(i32 0) #8, !dbg !958
  unreachable, !dbg !958

return:                                           ; No predecessors!
  ret i32 0, !dbg !960
}

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @xstrdup(i8* %str) #0 !dbg !961 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !964, metadata !DIExpression()), !dbg !965
  %call = call i32 @strlen(i8* %str) #9, !dbg !966
  call void @llvm.dbg.value(metadata i32 %call, metadata !969, metadata !DIExpression()), !dbg !965
  %add = add i32 %call, 1, !dbg !970
  call void @llvm.dbg.value(metadata i32 %add, metadata !971, metadata !DIExpression()), !dbg !965
  %call1 = call i8* @xmalloc___0(i32 %add), !dbg !972
  call void @llvm.dbg.value(metadata i8* %call1, metadata !973, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8* %call1, metadata !974, metadata !DIExpression()), !dbg !965
  %call2 = call i8* @memcpy(i8* %call1, i8* %str, i32 %add), !dbg !975
  ret i8* %call1, !dbg !976
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @error___0(i32 %status, i32 %errnum, i8* %message, ...) #0 !dbg !977 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %status, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !982, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %message, metadata !983, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !984, metadata !DIExpression()), !dbg !996
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !997
  %call = call i32 @fflush(%struct._IO_FILE* %0), !dbg !1000
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1001
  %2 = load i8*, i8** @program_name, align 8, !dbg !1002
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %2), !dbg !1003
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1004
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1004
  call void @llvm.va_start(i8* %arraydecay2), !dbg !1004
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1005
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1006
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %3, i8* %message, %struct.__va_list_tag* %arraydecay3), !dbg !1007
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1008
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*, !dbg !1008
  call void @llvm.va_end(i8* %arraydecay56), !dbg !1008
  %tobool = icmp ne i32 %errnum, 0, !dbg !1009
  br i1 %tobool, label %if.then, label %if.end, !dbg !1011

if.then:                                          ; preds = %entry
  %call7 = call i8* @strerror(i32 %errnum), !dbg !1012
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1015, metadata !DIExpression()), !dbg !981
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1016
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* %call7), !dbg !1017
  br label %if.end, !dbg !1018

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1019
  %call9 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5), !dbg !1021
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022
  %call10 = call i32 @fflush(%struct._IO_FILE* %6), !dbg !1023
  %tobool11 = icmp ne i32 %status, 0, !dbg !1024
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1026

if.then12:                                        ; preds = %if.end
  call void @exit(i32 %status) #8, !dbg !1027
  unreachable, !dbg !1027

if.end13:                                         ; preds = %if.end
  ret void, !dbg !1030
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i8* @find_ispell() #0 !dbg !1031 {
entry:
  %stat_buf = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %stat_buf, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* null, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* null, metadata !1038, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1040, metadata !DIExpression()), !dbg !1037
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !1041
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1044, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1045, metadata !DIExpression()), !dbg !1037
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1047, metadata !DIExpression()), !dbg !1037
  %call2 = call i8* @xstrdup(i8* %call1), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1038, metadata !DIExpression()), !dbg !1037
  %call3 = call i32 @strlen(i8* %call2) #9, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1050, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1039, metadata !DIExpression()), !dbg !1037
  br label %while.body, !dbg !1051

while.body:                                       ; preds = %if.end44, %entry
  %pos.0 = phi i32 [ 0, %entry ], [ %inc45, %if.end44 ], !dbg !1053
  %file.0 = phi %struct.str* [ %call, %entry ], [ %call4, %if.end44 ], !dbg !1053
  call void @llvm.dbg.value(metadata %struct.str* %file.0, metadata !1045, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !1040, metadata !DIExpression()), !dbg !1037
  br label %while_continue, !dbg !1054

while_continue:                                   ; preds = %while.body
  %call4 = call %struct.str* @str_make(%struct.str* %file.0), !dbg !1055
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !1045, metadata !DIExpression()), !dbg !1037
  %tobool = icmp ne i32 %pos.0, 0, !dbg !1058
  br i1 %tobool, label %if.else7, label %if.then, !dbg !1060

if.then:                                          ; preds = %while_continue
  %idx.ext = sext i32 %pos.0 to i64, !dbg !1061
  %add.ptr = getelementptr inbounds i8, i8* %call2, i64 %idx.ext, !dbg !1061
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1064
  %conv = sext i8 %0 to i32, !dbg !1065
  %cmp = icmp eq i32 %conv, 58, !dbg !1066
  br i1 %cmp, label %if.then6, label %if.else, !dbg !1067

if.then6:                                         ; preds = %if.then
  call void @str_add_char(%struct.str* %call4, i8 signext 46), !dbg !1068
  br label %if.end, !dbg !1071

if.else:                                          ; preds = %if.then
  br label %_L, !dbg !1072

if.end:                                           ; preds = %if.then6
  br label %if.end24, !dbg !1074

if.else7:                                         ; preds = %while_continue
  br label %_L, !dbg !1075

_L:                                               ; preds = %if.else7, %if.else
  br label %while.body9, !dbg !1076

while.body9:                                      ; preds = %if.end21, %_L
  %pos.1 = phi i32 [ %pos.0, %_L ], [ %inc, %if.end21 ], !dbg !1053
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !1040, metadata !DIExpression()), !dbg !1037
  br label %while_continue___0, !dbg !1079

while_continue___0:                               ; preds = %while.body9
  %cmp10 = icmp slt i32 %pos.1, %call3, !dbg !1080
  br i1 %cmp10, label %if.then12, label %if.else20, !dbg !1083

if.then12:                                        ; preds = %while_continue___0
  %idx.ext13 = sext i32 %pos.1 to i64, !dbg !1084
  %add.ptr14 = getelementptr inbounds i8, i8* %call2, i64 %idx.ext13, !dbg !1084
  %1 = load i8, i8* %add.ptr14, align 1, !dbg !1087
  %conv15 = sext i8 %1 to i32, !dbg !1088
  %cmp16 = icmp ne i32 %conv15, 58, !dbg !1089
  br i1 %cmp16, label %if.end19, label %if.then18, !dbg !1090

if.then18:                                        ; preds = %if.then12
  br label %while_break___0, !dbg !1091

if.end19:                                         ; preds = %if.then12
  br label %if.end21, !dbg !1093

if.else20:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1094

if.end21:                                         ; preds = %if.end19
  %idx.ext22 = sext i32 %pos.1 to i64, !dbg !1096
  %add.ptr23 = getelementptr inbounds i8, i8* %call2, i64 %idx.ext22, !dbg !1096
  %2 = load i8, i8* %add.ptr23, align 1, !dbg !1098
  call void @str_add_char(%struct.str* %call4, i8 signext %2), !dbg !1099
  %inc = add nsw i32 %pos.1, 1, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1040, metadata !DIExpression()), !dbg !1037
  br label %while.body9, !dbg !1076, !llvm.loop !1101

while_break___0:                                  ; preds = %if.else20, %if.then18
  br label %if.end24

if.end24:                                         ; preds = %while_break___0, %if.end
  %pos.2 = phi i32 [ %pos.1, %while_break___0 ], [ %pos.0, %if.end ], !dbg !1103
  call void @llvm.dbg.value(metadata i32 %pos.2, metadata !1040, metadata !DIExpression()), !dbg !1037
  %str = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 0, !dbg !1104
  %3 = load i8*, i8** %str, align 8, !dbg !1104
  %len = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 1, !dbg !1106
  %4 = load i32, i32* %len, align 8, !dbg !1106
  %sub = sub nsw i32 %4, 1, !dbg !1107
  %idx.ext25 = sext i32 %sub to i64, !dbg !1108
  %add.ptr26 = getelementptr inbounds i8, i8* %3, i64 %idx.ext25, !dbg !1108
  %5 = load i8, i8* %add.ptr26, align 1, !dbg !1109
  %conv27 = sext i8 %5 to i32, !dbg !1110
  %cmp28 = icmp ne i32 %conv27, 47, !dbg !1111
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1112

if.then30:                                        ; preds = %if.end24
  call void @str_add_char(%struct.str* %call4, i8 signext 47), !dbg !1113
  br label %if.end31, !dbg !1116

if.end31:                                         ; preds = %if.then30, %if.end24
  %call32 = call %struct.str* @nstr_to_str(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1117
  call void @llvm.dbg.value(metadata %struct.str* %call32, metadata !1119, metadata !DIExpression()), !dbg !1037
  call void @str_add_str(%struct.str* %call4, %struct.str* %call32), !dbg !1120
  %call33 = call i8* @str_to_nstr(%struct.str* %call4), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %call33, metadata !1122, metadata !DIExpression()), !dbg !1037
  %call34 = call i32 @stat(i8* %call33, %struct.stat* %stat_buf), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %call34, metadata !1123, metadata !DIExpression()), !dbg !1037
  %cmp35 = icmp ne i32 %call34, -1, !dbg !1124
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !1126

if.then37:                                        ; preds = %if.end31
  %call38 = call i8* @str_to_nstr(%struct.str* %call4), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %call38, metadata !1130, metadata !DIExpression()), !dbg !1037
  %call39 = call i8* @xstrdup(i8* %call38), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %call39, metadata !1131, metadata !DIExpression()), !dbg !1037
  ret i8* %call39, !dbg !1132

if.end40:                                         ; preds = %if.end31
  %cmp41 = icmp sge i32 %pos.2, %call3, !dbg !1133
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1135

if.then43:                                        ; preds = %if.end40
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1136
  br label %if.end44, !dbg !1139

if.end44:                                         ; preds = %if.then43, %if.end40
  %inc45 = add nsw i32 %pos.2, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !1040, metadata !DIExpression()), !dbg !1037
  br label %while.body, !dbg !1051, !llvm.loop !1141

while_break:                                      ; No predecessors!
  call void @abort() #8, !dbg !1143
  unreachable, !dbg !1143
}

; Function Attrs: noinline nounwind ssp uwtable
define void @new_pipe(%struct.pipe* %the_pipe) #0 !dbg !1145 {
entry:
  %ifd = alloca [2 x i32], align 4
  %ofd = alloca [2 x i32], align 4
  %efd = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.pipe* %the_pipe, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata [2 x i32]* %ifd, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata [2 x i32]* %ofd, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata [2 x i32]* %efd, metadata !1156, metadata !DIExpression()), !dbg !1157
  %call = call void (i32)* @signal(i32 13, void (i32)* @sig_pipe), !dbg !1158
  call void @llvm.dbg.value(metadata void (i32)* %call, metadata !1161, metadata !DIExpression()), !dbg !1150
  %0 = ptrtoint void (i32)* %call to i64, !dbg !1164
  %cmp = icmp eq i64 %0, -1, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7, !dbg !1168
  call void @llvm.dbg.value(metadata i32* %call1, metadata !1171, metadata !DIExpression()), !dbg !1150
  %1 = load i32, i32* %call1, align 4, !dbg !1172
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0)), !dbg !1173
  br label %if.end, !dbg !1174

if.end:                                           ; preds = %if.then, %entry
  %call2 = call void (i32)* @signal(i32 17, void (i32)* @sig_chld), !dbg !1175
  call void @llvm.dbg.value(metadata void (i32)* %call2, metadata !1177, metadata !DIExpression()), !dbg !1150
  %2 = ptrtoint void (i32)* %call2 to i64, !dbg !1178
  %cmp3 = icmp eq i64 %2, -1, !dbg !1180
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1181

if.then4:                                         ; preds = %if.end
  %call5 = call i32* @__errno_location() #7, !dbg !1182
  call void @llvm.dbg.value(metadata i32* %call5, metadata !1185, metadata !DIExpression()), !dbg !1150
  %3 = load i32, i32* %call5, align 4, !dbg !1186
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0)), !dbg !1187
  br label %if.end6, !dbg !1188

if.end6:                                          ; preds = %if.then4, %if.end
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %ifd, i32 0, i32 0, !dbg !1189
  %call7 = call i32 @pipe(i32* %arraydecay), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %call7, metadata !1192, metadata !DIExpression()), !dbg !1150
  %cmp8 = icmp slt i32 %call7, 0, !dbg !1193
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !1195

if.then9:                                         ; preds = %if.end6
  %call10 = call i32* @__errno_location() #7, !dbg !1196
  call void @llvm.dbg.value(metadata i32* %call10, metadata !1199, metadata !DIExpression()), !dbg !1150
  %4 = load i32, i32* %call10, align 4, !dbg !1200
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)), !dbg !1201
  br label %if.end11, !dbg !1202

if.end11:                                         ; preds = %if.then9, %if.end6
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ifd, i64 0, i64 0, !dbg !1203
  %5 = load i32, i32* %arrayidx, align 4, !dbg !1203
  %pin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 0, !dbg !1205
  store i32 %5, i32* %pin, align 8, !dbg !1206
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %ifd, i64 0, i64 1, !dbg !1207
  %6 = load i32, i32* %arrayidx12, align 4, !dbg !1207
  %cout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 4, !dbg !1208
  store i32 %6, i32* %cout, align 8, !dbg !1209
  %arraydecay13 = getelementptr inbounds [2 x i32], [2 x i32]* %ofd, i32 0, i32 0, !dbg !1210
  %call14 = call i32 @pipe(i32* %arraydecay13), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1212, metadata !DIExpression()), !dbg !1150
  %cmp15 = icmp slt i32 %call14, 0, !dbg !1213
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !1215

if.then16:                                        ; preds = %if.end11
  %call17 = call i32* @__errno_location() #7, !dbg !1216
  call void @llvm.dbg.value(metadata i32* %call17, metadata !1219, metadata !DIExpression()), !dbg !1150
  %7 = load i32, i32* %call17, align 4, !dbg !1220
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)), !dbg !1221
  br label %if.end18, !dbg !1222

if.end18:                                         ; preds = %if.then16, %if.end11
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %ofd, i64 0, i64 0, !dbg !1223
  %8 = load i32, i32* %arrayidx19, align 4, !dbg !1223
  %cin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 3, !dbg !1225
  store i32 %8, i32* %cin, align 4, !dbg !1226
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %ofd, i64 0, i64 1, !dbg !1227
  %9 = load i32, i32* %arrayidx20, align 4, !dbg !1227
  %pout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 1, !dbg !1228
  store i32 %9, i32* %pout, align 4, !dbg !1229
  %arraydecay21 = getelementptr inbounds [2 x i32], [2 x i32]* %efd, i32 0, i32 0, !dbg !1230
  %call22 = call i32 @pipe(i32* %arraydecay21), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1232, metadata !DIExpression()), !dbg !1150
  %cmp23 = icmp slt i32 %call22, 0, !dbg !1233
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1235

if.then24:                                        ; preds = %if.end18
  %call25 = call i32* @__errno_location() #7, !dbg !1236
  call void @llvm.dbg.value(metadata i32* %call25, metadata !1239, metadata !DIExpression()), !dbg !1150
  %10 = load i32, i32* %call25, align 4, !dbg !1240
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)), !dbg !1241
  br label %if.end26, !dbg !1242

if.end26:                                         ; preds = %if.then24, %if.end18
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %efd, i64 0, i64 0, !dbg !1243
  %11 = load i32, i32* %arrayidx27, align 4, !dbg !1243
  %perr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 2, !dbg !1244
  store i32 %11, i32* %perr, align 8, !dbg !1245
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %efd, i64 0, i64 1, !dbg !1246
  %12 = load i32, i32* %arrayidx28, align 4, !dbg !1246
  %cerr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 5, !dbg !1247
  store i32 %12, i32* %cerr, align 4, !dbg !1248
  ret void, !dbg !1249
}

declare i32 @fork() #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noinline nounwind ssp uwtable
define void @parent(%struct.pipe* %the_pipe, i32 %argc, i8** %argv) #0 !dbg !1250 {
entry:
  %stat_buf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata %struct.pipe* %the_pipe, metadata !1253, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1255, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1256, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata %struct.stat* %stat_buf, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8* null, metadata !1259, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 0, metadata !1260, metadata !DIExpression()), !dbg !1254
  %0 = load i32, i32* @optind, align 4, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %0, metadata !1264, metadata !DIExpression()), !dbg !1254
  %cin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 3, !dbg !1265
  %1 = load i32, i32* %cin, align 4, !dbg !1265
  %call = call i32 @close(i32 %1), !dbg !1266
  %cout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 4, !dbg !1267
  %2 = load i32, i32* %cout, align 8, !dbg !1267
  %call1 = call i32 @close(i32 %2), !dbg !1268
  %cerr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 5, !dbg !1269
  %3 = load i32, i32* %cerr, align 4, !dbg !1269
  %call2 = call i32 @close(i32 %3), !dbg !1270
  call void @read_ispell_errors(%struct.pipe* %the_pipe), !dbg !1271
  call void @llvm.dbg.value(metadata i32 0, metadata !1272, metadata !DIExpression()), !dbg !1254
  %call3 = call %struct.str* @str_make(%struct.str* null), !dbg !1273
  call void @llvm.dbg.value(metadata %struct.str* %call3, metadata !1274, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %struct.str* %call3, metadata !1275, metadata !DIExpression()), !dbg !1254
  %call4 = call %struct.str* @str_make(%struct.str* null), !dbg !1276
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !1277, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %struct.str* %call4, metadata !1278, metadata !DIExpression()), !dbg !1254
  %pin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 0, !dbg !1279
  %4 = load i32, i32* %pin, align 8, !dbg !1279
  %call5 = call i32 @str_add_line_from_desc(%struct.str* %call4, i32 %4), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1281, metadata !DIExpression()), !dbg !1254
  %cmp = icmp eq i32 %call5, 2, !dbg !1282
  br i1 %cmp, label %if.then, label %if.end, !dbg !1284

if.then:                                          ; preds = %entry
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0)), !dbg !1285
  br label %if.end, !dbg !1288

if.end:                                           ; preds = %if.then, %entry
  br label %while.body, !dbg !1289

while.body:                                       ; preds = %if.end16, %if.end
  %pos.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end16 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !1272, metadata !DIExpression()), !dbg !1254
  br label %while_continue, !dbg !1292

while_continue:                                   ; preds = %while.body
  %call6 = call i16** @__ctype_b_loc() #7, !dbg !1293
  call void @llvm.dbg.value(metadata i16** %call6, metadata !1296, metadata !DIExpression()), !dbg !1254
  %5 = load i16*, i16** %call6, align 8, !dbg !1300
  %str7 = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 0, !dbg !1302
  %6 = load i8*, i8** %str7, align 8, !dbg !1302
  %idx.ext = sext i32 %pos.0 to i64, !dbg !1303
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext, !dbg !1303
  %7 = load i8, i8* %add.ptr, align 1, !dbg !1304
  %conv = sext i8 %7 to i32, !dbg !1305
  %idx.ext8 = sext i32 %conv to i64, !dbg !1306
  %add.ptr9 = getelementptr inbounds i16, i16* %5, i64 %idx.ext8, !dbg !1306
  %8 = load i16, i16* %add.ptr9, align 2, !dbg !1307
  %conv10 = zext i16 %8 to i32, !dbg !1308
  %and = and i32 %conv10, 2048, !dbg !1309
  %tobool = icmp ne i32 %and, 0, !dbg !1309
  br i1 %tobool, label %if.then11, label %if.else, !dbg !1310

if.then11:                                        ; preds = %while_continue
  br label %while_break, !dbg !1311

if.else:                                          ; preds = %while_continue
  %len = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 1, !dbg !1313
  %9 = load i32, i32* %len, align 8, !dbg !1313
  %cmp12 = icmp sle i32 %pos.0, %9, !dbg !1315
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !1308

if.then14:                                        ; preds = %if.else
  br label %while_break, !dbg !1316

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %inc = add nsw i32 %pos.0, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1272, metadata !DIExpression()), !dbg !1254
  br label %while.body, !dbg !1289, !llvm.loop !1318

while_break:                                      ; preds = %if.then14, %if.then11
  br label %while.body17, !dbg !1320

while.body17:                                     ; preds = %if.end31, %while_break
  %pos.1 = phi i32 [ %pos.0, %while_break ], [ %inc35, %if.end31 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !1272, metadata !DIExpression()), !dbg !1254
  br label %while_continue___0, !dbg !1322

while_continue___0:                               ; preds = %while.body17
  %str18 = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 0, !dbg !1323
  %10 = load i8*, i8** %str18, align 8, !dbg !1323
  %idx.ext19 = sext i32 %pos.1 to i64, !dbg !1326
  %add.ptr20 = getelementptr inbounds i8, i8* %10, i64 %idx.ext19, !dbg !1326
  %11 = load i8, i8* %add.ptr20, align 1, !dbg !1327
  %conv21 = sext i8 %11 to i32, !dbg !1328
  %cmp22 = icmp ne i32 %conv21, 32, !dbg !1329
  br i1 %cmp22, label %if.then24, label %if.else30, !dbg !1330

if.then24:                                        ; preds = %while_continue___0
  %len25 = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 1, !dbg !1331
  %12 = load i32, i32* %len25, align 8, !dbg !1331
  %cmp26 = icmp sle i32 %pos.1, %12, !dbg !1334
  br i1 %cmp26, label %if.end29, label %if.then28, !dbg !1335

if.then28:                                        ; preds = %if.then24
  br label %while_break___0, !dbg !1336

if.end29:                                         ; preds = %if.then24
  br label %if.end31, !dbg !1338

if.else30:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1339

if.end31:                                         ; preds = %if.end29
  %str32 = getelementptr inbounds %struct.str, %struct.str* %call4, i32 0, i32 0, !dbg !1341
  %13 = load i8*, i8** %str32, align 8, !dbg !1341
  %idx.ext33 = sext i32 %pos.1 to i64, !dbg !1343
  %add.ptr34 = getelementptr inbounds i8, i8* %13, i64 %idx.ext33, !dbg !1343
  %14 = load i8, i8* %add.ptr34, align 1, !dbg !1344
  call void @str_add_char(%struct.str* %call3, i8 signext %14), !dbg !1345
  %inc35 = add nsw i32 %pos.1, 1, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %inc35, metadata !1272, metadata !DIExpression()), !dbg !1254
  br label %while.body17, !dbg !1320, !llvm.loop !1347

while_break___0:                                  ; preds = %if.else30, %if.then28
  %15 = load i32, i32* @show_ispell_version, align 4, !dbg !1349
  %tobool36 = icmp ne i32 %15, 0, !dbg !1349
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !1351

if.then37:                                        ; preds = %while_break___0
  %call38 = call i8* @str_to_nstr(%struct.str* %call3), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %call38, metadata !1355, metadata !DIExpression()), !dbg !1254
  %16 = load i8*, i8** @program_name, align 8, !dbg !1356
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* %16, i8* %call38), !dbg !1357
  call void @exit(i32 0) #8, !dbg !1358
  unreachable, !dbg !1358

if.end40:                                         ; preds = %while_break___0
  %call41 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %call41, metadata !1259, metadata !DIExpression()), !dbg !1254
  %cmp42 = icmp eq i32 %argc, 1, !dbg !1361
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1363

if.then44:                                        ; preds = %if.end40
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1364
  call void @read_file(%struct.pipe* %the_pipe, %struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)), !dbg !1367
  br label %if.end45, !dbg !1368

if.end45:                                         ; preds = %if.then44, %if.end40
  br label %while.body46, !dbg !1369

while.body46:                                     ; preds = %if.end90, %if.end45
  %stream.0 = phi %struct._IO_FILE* [ undef, %if.end45 ], [ %stream.2, %if.end90 ]
  %arg_index.0 = phi i32 [ %0, %if.end45 ], [ %inc91, %if.end90 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %arg_index.0, metadata !1264, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream.0, metadata !1371, metadata !DIExpression()), !dbg !1254
  br label %while_continue___1, !dbg !1372

while_continue___1:                               ; preds = %if.then79, %if.then72, %while.body46
  %arg_index.1 = phi i32 [ %arg_index.0, %while.body46 ], [ %inc74, %if.then72 ], [ %inc80, %if.then79 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %arg_index.1, metadata !1264, metadata !DIExpression()), !dbg !1254
  %cmp47 = icmp slt i32 %arg_index.1, %argc, !dbg !1373
  br i1 %cmp47, label %if.end50, label %if.then49, !dbg !1376

if.then49:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1377

if.end50:                                         ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i32 0, metadata !1260, metadata !DIExpression()), !dbg !1254
  %idx.ext51 = sext i32 %arg_index.1 to i64, !dbg !1379
  %add.ptr52 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext51, !dbg !1379
  %18 = load i8*, i8** %add.ptr52, align 8, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %18, metadata !1259, metadata !DIExpression()), !dbg !1254
  %add.ptr53 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !1381
  %19 = load i8, i8* %add.ptr53, align 1, !dbg !1383
  %conv54 = sext i8 %19 to i32, !dbg !1384
  %cmp55 = icmp eq i32 %conv54, 45, !dbg !1385
  br i1 %cmp55, label %if.then57, label %if.else68, !dbg !1386

if.then57:                                        ; preds = %if.end50
  %add.ptr58 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1387
  %20 = load i8, i8* %add.ptr58, align 1, !dbg !1390
  %conv59 = sext i8 %20 to i32, !dbg !1391
  %cmp60 = icmp eq i32 %conv59, 0, !dbg !1392
  br i1 %cmp60, label %if.then62, label %if.else66, !dbg !1393

if.then62:                                        ; preds = %if.then57
  %21 = load i32, i32* @read_stdin, align 4, !dbg !1394
  %tobool63 = icmp ne i32 %21, 0, !dbg !1394
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !1397

if.then64:                                        ; preds = %if.then62
  store i32 1, i32* @read_stdin, align 4, !dbg !1398
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1400
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1371, metadata !DIExpression()), !dbg !1254
  br label %if.end65, !dbg !1401

if.end65:                                         ; preds = %if.then64, %if.then62
  %stream.1 = phi %struct._IO_FILE* [ %stream.0, %if.then62 ], [ %22, %if.then64 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream.1, metadata !1371, metadata !DIExpression()), !dbg !1254
  br label %if.end67, !dbg !1402

if.else66:                                        ; preds = %if.then57
  br label %_L, !dbg !1403

if.end67:                                         ; preds = %if.end65
  br label %if.end87, !dbg !1405

if.else68:                                        ; preds = %if.end50
  br label %_L, !dbg !1406

_L:                                               ; preds = %if.else68, %if.else66
  %call69 = call i32 @stat(i8* %18, %struct.stat* %stat_buf), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %call69, metadata !1410, metadata !DIExpression()), !dbg !1254
  %cmp70 = icmp eq i32 %call69, -1, !dbg !1411
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !1413

if.then72:                                        ; preds = %_L
  %call73 = call i32* @__errno_location() #7, !dbg !1414
  call void @llvm.dbg.value(metadata i32* %call73, metadata !1417, metadata !DIExpression()), !dbg !1254
  %23 = load i32, i32* %call73, align 4, !dbg !1418
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8* %18), !dbg !1419
  %inc74 = add nsw i32 %arg_index.1, 1, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !1264, metadata !DIExpression()), !dbg !1254
  br label %while_continue___1, !dbg !1421

if.end75:                                         ; preds = %_L
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %stat_buf, i32 0, i32 3, !dbg !1422
  %24 = load i32, i32* %st_mode, align 8, !dbg !1422
  %and76 = and i32 %24, 61440, !dbg !1424
  %cmp77 = icmp eq i32 %and76, 16384, !dbg !1425
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !1426

if.then79:                                        ; preds = %if.end75
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* %18), !dbg !1427
  %inc80 = add nsw i32 %arg_index.1, 1, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %inc80, metadata !1264, metadata !DIExpression()), !dbg !1254
  br label %while_continue___1, !dbg !1431

if.end81:                                         ; preds = %if.end75
  %call82 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !1432
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call82, metadata !1371, metadata !DIExpression()), !dbg !1254
  %tobool83 = icmp ne %struct._IO_FILE* %call82, null, !dbg !1434
  br i1 %tobool83, label %if.end86, label %if.then84, !dbg !1436

if.then84:                                        ; preds = %if.end81
  %call85 = call i32* @__errno_location() #7, !dbg !1437
  call void @llvm.dbg.value(metadata i32* %call85, metadata !1440, metadata !DIExpression()), !dbg !1254
  %25 = load i32, i32* %call85, align 4, !dbg !1441
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* %18), !dbg !1442
  call void @llvm.dbg.value(metadata i32 1, metadata !1260, metadata !DIExpression()), !dbg !1254
  br label %if.end86, !dbg !1443

if.end86:                                         ; preds = %if.then84, %if.end81
  %arg_error.0 = phi i32 [ 0, %if.end81 ], [ 1, %if.then84 ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %arg_error.0, metadata !1260, metadata !DIExpression()), !dbg !1254
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end67
  %stream.2 = phi %struct._IO_FILE* [ %stream.1, %if.end67 ], [ %call82, %if.end86 ]
  %arg_error.1 = phi i32 [ 0, %if.end67 ], [ %arg_error.0, %if.end86 ], !dbg !1445
  call void @llvm.dbg.value(metadata i32 %arg_error.1, metadata !1260, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream.2, metadata !1371, metadata !DIExpression()), !dbg !1254
  %tobool88 = icmp ne i32 %arg_error.1, 0, !dbg !1446
  br i1 %tobool88, label %if.end90, label %if.then89, !dbg !1448

if.then89:                                        ; preds = %if.end87
  call void @read_file(%struct.pipe* %the_pipe, %struct._IO_FILE* %stream.2, i8* %18), !dbg !1449
  br label %if.end90, !dbg !1452

if.end90:                                         ; preds = %if.then89, %if.end87
  %inc91 = add nsw i32 %arg_index.1, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %inc91, metadata !1264, metadata !DIExpression()), !dbg !1254
  br label %while.body46, !dbg !1369, !llvm.loop !1454

while_break___1:                                  ; preds = %if.then49
  ret void, !dbg !1456
}

; Function Attrs: noinline nounwind ssp uwtable
define void @run_ispell_in_child(%struct.pipe* %the_pipe) #0 !dbg !1457 {
entry:
  call void @llvm.dbg.value(metadata %struct.pipe* %the_pipe, metadata !1458, metadata !DIExpression()), !dbg !1459
  %pin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 0, !dbg !1460
  %0 = load i32, i32* %pin, align 8, !dbg !1460
  %call = call i32 @close(i32 %0), !dbg !1463
  %pout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 1, !dbg !1464
  %1 = load i32, i32* %pout, align 4, !dbg !1464
  %call1 = call i32 @close(i32 %1), !dbg !1465
  %perr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 2, !dbg !1466
  %2 = load i32, i32* %perr, align 8, !dbg !1466
  %call2 = call i32 @close(i32 %2), !dbg !1467
  %cin = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 3, !dbg !1468
  %3 = load i32, i32* %cin, align 4, !dbg !1468
  %cmp = icmp ne i32 %3, 0, !dbg !1470
  br i1 %cmp, label %if.then, label %if.end8, !dbg !1471

if.then:                                          ; preds = %entry
  %cin3 = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 3, !dbg !1472
  %4 = load i32, i32* %cin3, align 4, !dbg !1472
  %call4 = call i32 @dup2(i32 %4, i32 0), !dbg !1475
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1476, metadata !DIExpression()), !dbg !1459
  %cmp5 = icmp ne i32 %call4, 0, !dbg !1477
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1479

if.then6:                                         ; preds = %if.then
  %call7 = call i32* @__errno_location() #7, !dbg !1480
  call void @llvm.dbg.value(metadata i32* %call7, metadata !1483, metadata !DIExpression()), !dbg !1459
  %5 = load i32, i32* %call7, align 4, !dbg !1484
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0)), !dbg !1485
  br label %if.end, !dbg !1486

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8, !dbg !1487

if.end8:                                          ; preds = %if.end, %entry
  %cout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 4, !dbg !1488
  %6 = load i32, i32* %cout, align 8, !dbg !1488
  %cmp9 = icmp ne i32 %6, 1, !dbg !1490
  br i1 %cmp9, label %if.then10, label %if.end17, !dbg !1491

if.then10:                                        ; preds = %if.end8
  %cout11 = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 4, !dbg !1492
  %7 = load i32, i32* %cout11, align 8, !dbg !1492
  %call12 = call i32 @dup2(i32 %7, i32 1), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1496, metadata !DIExpression()), !dbg !1459
  %cmp13 = icmp ne i32 %call12, 1, !dbg !1497
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !1499

if.then14:                                        ; preds = %if.then10
  %call15 = call i32* @__errno_location() #7, !dbg !1500
  call void @llvm.dbg.value(metadata i32* %call15, metadata !1503, metadata !DIExpression()), !dbg !1459
  %8 = load i32, i32* %call15, align 4, !dbg !1504
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0)), !dbg !1505
  br label %if.end16, !dbg !1506

if.end16:                                         ; preds = %if.then14, %if.then10
  br label %if.end17, !dbg !1507

if.end17:                                         ; preds = %if.end16, %if.end8
  %cerr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 5, !dbg !1508
  %9 = load i32, i32* %cerr, align 4, !dbg !1508
  %cmp18 = icmp ne i32 %9, 2, !dbg !1510
  br i1 %cmp18, label %if.then19, label %if.end26, !dbg !1511

if.then19:                                        ; preds = %if.end17
  %cerr20 = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 5, !dbg !1512
  %10 = load i32, i32* %cerr20, align 4, !dbg !1512
  %call21 = call i32 @dup2(i32 %10, i32 2), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %call21, metadata !1516, metadata !DIExpression()), !dbg !1459
  %cmp22 = icmp ne i32 %call21, 2, !dbg !1517
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !1519

if.then23:                                        ; preds = %if.then19
  %call24 = call i32* @__errno_location() #7, !dbg !1520
  call void @llvm.dbg.value(metadata i32* %call24, metadata !1523, metadata !DIExpression()), !dbg !1459
  %11 = load i32, i32* %call24, align 4, !dbg !1524
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0)), !dbg !1525
  br label %if.end25, !dbg !1526

if.end25:                                         ; preds = %if.then23, %if.then19
  br label %if.end26, !dbg !1527

if.end26:                                         ; preds = %if.end25, %if.end17
  %12 = load i8*, i8** @dictionary, align 8, !dbg !1528
  %13 = ptrtoint i8* %12 to i64, !dbg !1530
  %cmp27 = icmp ne i64 %13, 0, !dbg !1531
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !1532

if.then28:                                        ; preds = %if.end26
  %14 = load i8*, i8** @ispell_prog, align 8, !dbg !1533
  %15 = load i8*, i8** @dictionary, align 8, !dbg !1536
  %call29 = call i32 (i8*, i8*, ...) @execl(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* %15, i8* null), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %call29, metadata !1538, metadata !DIExpression()), !dbg !1459
  %cmp30 = icmp slt i32 %call29, 0, !dbg !1539
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !1541

if.then31:                                        ; preds = %if.then28
  %call32 = call i32* @__errno_location() #7, !dbg !1542
  call void @llvm.dbg.value(metadata i32* %call32, metadata !1545, metadata !DIExpression()), !dbg !1459
  %16 = load i32, i32* %call32, align 4, !dbg !1546
  %17 = load i8*, i8** @ispell_prog, align 8, !dbg !1547
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* %17), !dbg !1548
  br label %if.end33, !dbg !1549

if.end33:                                         ; preds = %if.then31, %if.then28
  br label %if.end34, !dbg !1550

if.end34:                                         ; preds = %if.end33, %if.end26
  %18 = load i32, i32* @british, align 4, !dbg !1551
  %tobool = icmp ne i32 %18, 0, !dbg !1551
  br i1 %tobool, label %if.then35, label %if.end41, !dbg !1553

if.then35:                                        ; preds = %if.end34
  %19 = load i8*, i8** @ispell_prog, align 8, !dbg !1554
  %call36 = call i32 (i8*, i8*, ...) @execl(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null), !dbg !1557
  call void @llvm.dbg.value(metadata i32 %call36, metadata !1558, metadata !DIExpression()), !dbg !1459
  %cmp37 = icmp slt i32 %call36, 0, !dbg !1559
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !1561

if.then38:                                        ; preds = %if.then35
  %call39 = call i32* @__errno_location() #7, !dbg !1562
  call void @llvm.dbg.value(metadata i32* %call39, metadata !1565, metadata !DIExpression()), !dbg !1459
  %20 = load i32, i32* %call39, align 4, !dbg !1566
  %21 = load i8*, i8** @ispell_prog, align 8, !dbg !1567
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* %21), !dbg !1568
  br label %if.end40, !dbg !1569

if.end40:                                         ; preds = %if.then38, %if.then35
  br label %if.end41, !dbg !1570

if.end41:                                         ; preds = %if.end40, %if.end34
  %22 = load i8*, i8** @ispell_prog, align 8, !dbg !1571
  %call42 = call i32 (i8*, i8*, ...) @execl(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* null), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %call42, metadata !1574, metadata !DIExpression()), !dbg !1459
  %cmp43 = icmp slt i32 %call42, 0, !dbg !1575
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !1577

if.then44:                                        ; preds = %if.end41
  %call45 = call i32* @__errno_location() #7, !dbg !1578
  call void @llvm.dbg.value(metadata i32* %call45, metadata !1581, metadata !DIExpression()), !dbg !1459
  %23 = load i32, i32* %call45, align 4, !dbg !1582
  %24 = load i8*, i8** @ispell_prog, align 8, !dbg !1583
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* %24), !dbg !1584
  br label %if.end46, !dbg !1585

if.end46:                                         ; preds = %if.then44, %if.end41
  ret void, !dbg !1586
}

declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: noreturn
declare void @abort() #3

; Function Attrs: noinline nounwind ssp uwtable
define void @read_file(%struct.pipe* %the_pipe, %struct._IO_FILE* %stream, i8* %file) #0 !dbg !1587 {
entry:
  call void @llvm.dbg.value(metadata %struct.pipe* %the_pipe, metadata !1590, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !1592, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %file, metadata !1593, metadata !DIExpression()), !dbg !1591
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !1594
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1597, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1598, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 0, metadata !1599, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 0, metadata !1600, metadata !DIExpression()), !dbg !1591
  br label %while.body, !dbg !1601

while.body:                                       ; preds = %if.end27, %entry
  %str.0 = phi %struct.str* [ %call, %entry ], [ %call1, %if.end27 ], !dbg !1603
  %line.0 = phi i32 [ 0, %entry ], [ %inc, %if.end27 ], !dbg !1603
  call void @llvm.dbg.value(metadata i32 %line.0, metadata !1600, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata %struct.str* %str.0, metadata !1598, metadata !DIExpression()), !dbg !1591
  br label %while_continue, !dbg !1604

while_continue:                                   ; preds = %while.body
  %call1 = call %struct.str* @str_make(%struct.str* %str.0), !dbg !1605
  call void @llvm.dbg.value(metadata %struct.str* %call1, metadata !1598, metadata !DIExpression()), !dbg !1591
  call void @str_add_char(%struct.str* %call1, i8 signext 94), !dbg !1608
  %call2 = call i32 @str_add_line(%struct.str* %call1, %struct._IO_FILE* %stream), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1610, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1599, metadata !DIExpression()), !dbg !1591
  %inc = add nsw i32 %line.0, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1600, metadata !DIExpression()), !dbg !1591
  %cmp = icmp eq i32 %call2, 1, !dbg !1612
  br i1 %cmp, label %if.then, label %if.end, !dbg !1614

if.then:                                          ; preds = %while_continue
  %call3 = call i32* @__errno_location() #7, !dbg !1615
  call void @llvm.dbg.value(metadata i32* %call3, metadata !1618, metadata !DIExpression()), !dbg !1591
  %0 = load i32, i32* %call3, align 4, !dbg !1619
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* %file), !dbg !1620
  br label %if.end, !dbg !1621

if.end:                                           ; preds = %if.then, %while_continue
  %cmp4 = icmp eq i32 %call2, 2, !dbg !1622
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !1624

if.then5:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 1, !dbg !1625
  %1 = load i32, i32* %len, align 8, !dbg !1625
  %tobool = icmp ne i32 %1, 0, !dbg !1628
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !1629

if.then6:                                         ; preds = %if.then5
  br label %if.end33, !dbg !1630

if.end7:                                          ; preds = %if.then5
  br label %if.end8, !dbg !1632

if.end8:                                          ; preds = %if.end7, %if.end
  %str9 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1633
  %2 = load i8*, i8** %str9, align 8, !dbg !1633
  %len10 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 1, !dbg !1635
  %3 = load i32, i32* %len10, align 8, !dbg !1635
  %sub = sub nsw i32 %3, 1, !dbg !1636
  %idx.ext = sext i32 %sub to i64, !dbg !1637
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext, !dbg !1637
  %4 = load i8, i8* %add.ptr, align 1, !dbg !1638
  %conv = sext i8 %4 to i32, !dbg !1639
  %cmp11 = icmp ne i32 %conv, 10, !dbg !1640
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1641

if.then13:                                        ; preds = %if.end8
  call void @str_add_char(%struct.str* %call1, i8 signext 10), !dbg !1642
  br label %if.end14, !dbg !1645

if.end14:                                         ; preds = %if.then13, %if.end8
  %call15 = call i8* @str_to_nstr(%struct.str* %call1), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %call15, metadata !1648, metadata !DIExpression()), !dbg !1591
  %pout = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 1, !dbg !1649
  %5 = load i32, i32* %pout, align 4, !dbg !1649
  %len16 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 1, !dbg !1650
  %6 = load i32, i32* %len16, align 8, !dbg !1650
  %call17 = call i32 @write(i32 %5, i8* %call15, i32 %6), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %call17, metadata !1651, metadata !DIExpression()), !dbg !1591
  %len18 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 1, !dbg !1654
  %7 = load i32, i32* %len18, align 8, !dbg !1654
  %cmp19 = icmp ne i32 %call17, %7, !dbg !1656
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1657

if.then21:                                        ; preds = %if.end14
  %call22 = call i32* @__errno_location() #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* %call22, metadata !1661, metadata !DIExpression()), !dbg !1591
  %8 = load i32, i32* %call22, align 4, !dbg !1662
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0)), !dbg !1663
  br label %if.end23, !dbg !1664

if.end23:                                         ; preds = %if.then21, %if.end14
  call void @read_ispell_errors(%struct.pipe* %the_pipe), !dbg !1665
  call void @read_ispell(%struct.pipe* %the_pipe, i8* %file, i32 %inc), !dbg !1667
  call void @read_ispell_errors(%struct.pipe* %the_pipe), !dbg !1668
  %cmp24 = icmp eq i32 %call2, 2, !dbg !1669
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1671

if.then26:                                        ; preds = %if.end23
  br label %if.end33, !dbg !1672

if.end27:                                         ; preds = %if.end23
  br label %while.body, !dbg !1601, !llvm.loop !1674

while_break:                                      ; No predecessors!
  %call28 = call i32 @fclose(%struct._IO_FILE* %stream), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %call28, metadata !1678, metadata !DIExpression()), !dbg !1591
  %cmp29 = icmp eq i32 %call28, -1, !dbg !1679
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !1681

if.then31:                                        ; preds = %while_break
  %call32 = call i32* @__errno_location() #7, !dbg !1682
  call void @llvm.dbg.value(metadata i32* %call32, metadata !1685, metadata !DIExpression()), !dbg !1591
  %9 = load i32, i32* %call32, align 4, !dbg !1686
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %file), !dbg !1687
  br label %if.end33, !dbg !1688

if.end33:                                         ; preds = %if.then31, %while_break, %if.then26, %if.then6
  ret void, !dbg !1689
}

declare i32 @write(i32, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @read_ispell_errors(%struct.pipe* %the_pipe) #0 !dbg !1690 {
entry:
  %time_out = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata %struct.pipe* %the_pipe, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.declare(metadata %struct.timeval* %time_out, metadata !1693, metadata !DIExpression()), !dbg !1694
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !1695
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1698, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1699, metadata !DIExpression()), !dbg !1692
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_out, i32 0, i32 1, !dbg !1700
  store i64 0, i64* %tv_usec, align 8, !dbg !1701
  %tv_usec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %time_out, i32 0, i32 1, !dbg !1702
  %0 = load i64, i64* %tv_usec1, align 8, !dbg !1702
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_out, i32 0, i32 0, !dbg !1700
  store i64 %0, i64* %tv_sec, align 8, !dbg !1703
  br label %while.body, !dbg !1704

while.body:                                       ; preds = %if.end19, %entry
  %str.0 = phi %struct.str* [ %call, %entry ], [ %call3, %if.end19 ], !dbg !1706
  call void @llvm.dbg.value(metadata %struct.str* %str.0, metadata !1699, metadata !DIExpression()), !dbg !1692
  br label %while_continue, !dbg !1707

while_continue:                                   ; preds = %while.body
  %error_set = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 6, !dbg !1708
  %call2 = call i32 @select(i32 1024, %struct.__anonstruct_fd_set_13* %error_set, %struct.__anonstruct_fd_set_13* null, %struct.__anonstruct_fd_set_13* null, %struct.timeval* %time_out), !dbg !1711
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1712, metadata !DIExpression()), !dbg !1692
  %cmp = icmp eq i32 %call2, 1, !dbg !1713
  br i1 %cmp, label %if.end, label %if.then, !dbg !1715

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1716

if.end:                                           ; preds = %while_continue
  %call3 = call %struct.str* @str_make(%struct.str* %str.0), !dbg !1718
  call void @llvm.dbg.value(metadata %struct.str* %call3, metadata !1699, metadata !DIExpression()), !dbg !1692
  %perr = getelementptr inbounds %struct.pipe, %struct.pipe* %the_pipe, i32 0, i32 2, !dbg !1720
  %1 = load i32, i32* %perr, align 8, !dbg !1720
  %call4 = call i32 @str_add_line_from_desc(%struct.str* %call3, i32 %1), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1722, metadata !DIExpression()), !dbg !1692
  %cmp5 = icmp eq i32 %call4, 2, !dbg !1723
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1725

if.then6:                                         ; preds = %if.end
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0)), !dbg !1726
  br label %if.end7, !dbg !1729

if.end7:                                          ; preds = %if.then6, %if.end
  %len = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 1, !dbg !1730
  %2 = load i32, i32* %len, align 8, !dbg !1732
  %sub = sub nsw i32 %2, 2, !dbg !1732
  store i32 %sub, i32* %len, align 8, !dbg !1732
  %str8 = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 0, !dbg !1733
  %3 = load i8*, i8** %str8, align 8, !dbg !1733
  %len9 = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 1, !dbg !1734
  %4 = load i32, i32* %len9, align 8, !dbg !1734
  %sub10 = sub nsw i32 %4, 1, !dbg !1735
  %idx.ext = sext i32 %sub10 to i64, !dbg !1736
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !dbg !1736
  store i8 0, i8* %add.ptr, align 1, !dbg !1737
  %call11 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1739, metadata !DIExpression()), !dbg !1692
  %str12 = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 0, !dbg !1740
  %5 = load i8*, i8** %str12, align 8, !dbg !1740
  %call13 = call i32 @memcmp(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %call11) #9, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %call13, metadata !1741, metadata !DIExpression()), !dbg !1692
  %tobool = icmp ne i32 %call13, 0, !dbg !1742
  br i1 %tobool, label %if.end19, label %if.then14, !dbg !1744

if.then14:                                        ; preds = %if.end7
  %call15 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %call15, metadata !1748, metadata !DIExpression()), !dbg !1692
  %str16 = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 0, !dbg !1749
  %6 = load i8*, i8** %str16, align 8, !dbg !1749
  %idx.ext17 = zext i32 %call15 to i64, !dbg !1750
  %add.ptr18 = getelementptr inbounds i8, i8* %6, i64 %idx.ext17, !dbg !1750
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* %add.ptr18), !dbg !1751
  br label %if.end19, !dbg !1752

if.end19:                                         ; preds = %if.then14, %if.end7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1753
  %8 = load i8*, i8** @ispell_prog, align 8, !dbg !1755
  %str20 = getelementptr inbounds %struct.str, %struct.str* %call3, i32 0, i32 0, !dbg !1756
  %9 = load i8*, i8** %str20, align 8, !dbg !1756
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* %8, i8* %9), !dbg !1757
  br label %while.body, !dbg !1704, !llvm.loop !1758

while_break:                                      ; preds = %if.then
  ret void, !dbg !1760
}

; Function Attrs: noinline nounwind ssp uwtable
define void @read_ispell(%struct.pipe* %ispell_pipe, i8* %file, i32 %line) #0 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata %struct.pipe* %ispell_pipe, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %file, metadata !1766, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %line, metadata !1767, metadata !DIExpression()), !dbg !1765
  %call = call %struct.str* @str_make(%struct.str* null), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1771, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata %struct.str* %call, metadata !1772, metadata !DIExpression()), !dbg !1765
  br label %while.body, !dbg !1773

while.body:                                       ; preds = %if.end94, %entry
  %str.0 = phi %struct.str* [ %call, %entry ], [ %call1, %if.end94 ], !dbg !1775
  call void @llvm.dbg.value(metadata %struct.str* %str.0, metadata !1772, metadata !DIExpression()), !dbg !1765
  br label %while_continue, !dbg !1776

while_continue:                                   ; preds = %if.then92, %while_break___0, %if.then29, %if.then22, %if.then16, %while.body
  %str.1 = phi %struct.str* [ %str.0, %while.body ], [ %call1, %if.then16 ], [ %call1, %if.then22 ], [ %call1, %if.then29 ], [ %call1, %while_break___0 ], [ %call1, %if.then92 ], !dbg !1775
  call void @llvm.dbg.value(metadata %struct.str* %str.1, metadata !1772, metadata !DIExpression()), !dbg !1765
  %call1 = call %struct.str* @str_make(%struct.str* %str.1), !dbg !1777
  call void @llvm.dbg.value(metadata %struct.str* %call1, metadata !1772, metadata !DIExpression()), !dbg !1765
  %pin = getelementptr inbounds %struct.pipe, %struct.pipe* %ispell_pipe, i32 0, i32 0, !dbg !1780
  %0 = load i32, i32* %pin, align 8, !dbg !1780
  %call2 = call i32 @str_add_line_from_desc(%struct.str* %call1, i32 %0), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1782, metadata !DIExpression()), !dbg !1765
  %cmp = icmp eq i32 %call2, 2, !dbg !1783
  br i1 %cmp, label %if.then, label %if.end, !dbg !1785

if.then:                                          ; preds = %while_continue
  call void @exit(i32 0) #8, !dbg !1786
  unreachable, !dbg !1786

if.end:                                           ; preds = %while_continue
  %len = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 1, !dbg !1789
  %1 = load i32, i32* %len, align 8, !dbg !1789
  %cmp3 = icmp eq i32 %1, 1, !dbg !1791
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !1792

if.then4:                                         ; preds = %if.end
  %str5 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1793
  %2 = load i8*, i8** %str5, align 8, !dbg !1793
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1796
  %3 = load i8, i8* %add.ptr, align 1, !dbg !1797
  %conv = sext i8 %3 to i32, !dbg !1798
  %cmp6 = icmp eq i32 %conv, 10, !dbg !1799
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1800

if.then8:                                         ; preds = %if.then4
  br label %while_break, !dbg !1801

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !1803

if.end10:                                         ; preds = %if.end9, %if.end
  %str11 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1804
  %4 = load i8*, i8** %str11, align 8, !dbg !1804
  %add.ptr12 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1806
  %5 = load i8, i8* %add.ptr12, align 1, !dbg !1807
  %conv13 = sext i8 %5 to i32, !dbg !1808
  %cmp14 = icmp eq i32 %conv13, 42, !dbg !1809
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !1810

if.then16:                                        ; preds = %if.end10
  br label %while_continue, !dbg !1811

if.else:                                          ; preds = %if.end10
  %str17 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1813
  %6 = load i8*, i8** %str17, align 8, !dbg !1813
  %add.ptr18 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1815
  %7 = load i8, i8* %add.ptr18, align 1, !dbg !1816
  %conv19 = sext i8 %7 to i32, !dbg !1817
  %cmp20 = icmp eq i32 %conv19, 43, !dbg !1818
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !1808

if.then22:                                        ; preds = %if.else
  br label %while_continue, !dbg !1819

if.else23:                                        ; preds = %if.else
  %str24 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1821
  %8 = load i8*, i8** %str24, align 8, !dbg !1821
  %add.ptr25 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !1823
  %9 = load i8, i8* %add.ptr25, align 1, !dbg !1824
  %conv26 = sext i8 %9 to i32, !dbg !1825
  %cmp27 = icmp eq i32 %conv26, 45, !dbg !1826
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1817

if.then29:                                        ; preds = %if.else23
  br label %while_continue, !dbg !1827

if.end30:                                         ; preds = %if.else23
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %str33 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1829
  %10 = load i8*, i8** %str33, align 8, !dbg !1829
  %add.ptr34 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1831
  %11 = load i8, i8* %add.ptr34, align 1, !dbg !1832
  %conv35 = sext i8 %11 to i32, !dbg !1833
  %cmp36 = icmp eq i32 %conv35, 38, !dbg !1834
  br i1 %cmp36, label %if.then38, label %if.else39, !dbg !1835

if.then38:                                        ; preds = %if.end32
  br label %_L, !dbg !1836

if.else39:                                        ; preds = %if.end32
  %str40 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1838
  %12 = load i8*, i8** %str40, align 8, !dbg !1838
  %add.ptr41 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !1840
  %13 = load i8, i8* %add.ptr41, align 1, !dbg !1841
  %conv42 = sext i8 %13 to i32, !dbg !1842
  %cmp43 = icmp eq i32 %conv42, 35, !dbg !1843
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !1833

if.then45:                                        ; preds = %if.else39
  br label %_L, !dbg !1844

if.else46:                                        ; preds = %if.else39
  %str47 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1846
  %14 = load i8*, i8** %str47, align 8, !dbg !1846
  %add.ptr48 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !1848
  %15 = load i8, i8* %add.ptr48, align 1, !dbg !1849
  %conv49 = sext i8 %15 to i32, !dbg !1850
  %cmp50 = icmp eq i32 %conv49, 63, !dbg !1851
  br i1 %cmp50, label %if.then52, label %if.end82, !dbg !1842

if.then52:                                        ; preds = %if.else46
  %16 = load i32, i32* @verbose, align 4, !dbg !1852
  %tobool = icmp ne i32 %16, 0, !dbg !1852
  br i1 %tobool, label %if.then53, label %if.end81, !dbg !1855

if.then53:                                        ; preds = %if.then52
  br label %_L, !dbg !1856

_L:                                               ; preds = %if.then53, %if.then45, %if.then38
  %17 = load i32, i32* @print_file_names, align 4, !dbg !1857
  %tobool54 = icmp ne i32 %17, 0, !dbg !1857
  br i1 %tobool54, label %if.then55, label %if.end61, !dbg !1860

if.then55:                                        ; preds = %_L
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %file), !dbg !1861
  %18 = load i32, i32* @number_lines, align 4, !dbg !1864
  %tobool57 = icmp ne i32 %18, 0, !dbg !1864
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !1866

if.then58:                                        ; preds = %if.then55
  %call59 = call i32 @putchar(i32 32), !dbg !1867
  br label %if.end60, !dbg !1870

if.end60:                                         ; preds = %if.then58, %if.then55
  br label %if.end61, !dbg !1871

if.end61:                                         ; preds = %if.end60, %_L
  %19 = load i32, i32* @number_lines, align 4, !dbg !1872
  %tobool62 = icmp ne i32 %19, 0, !dbg !1872
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !1874

if.then63:                                        ; preds = %if.end61
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %line), !dbg !1875
  br label %if.end65, !dbg !1878

if.end65:                                         ; preds = %if.then63, %if.end61
  call void @llvm.dbg.value(metadata i32 2, metadata !1879, metadata !DIExpression()), !dbg !1765
  br label %while.body67, !dbg !1880

while.body67:                                     ; preds = %if.end74, %if.end65
  %pos.0 = phi i32 [ 2, %if.end65 ], [ %inc, %if.end74 ], !dbg !1882
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !1879, metadata !DIExpression()), !dbg !1765
  br label %while_continue___0, !dbg !1883

while_continue___0:                               ; preds = %while.body67
  %str68 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1884
  %20 = load i8*, i8** %str68, align 8, !dbg !1884
  %idx.ext = sext i32 %pos.0 to i64, !dbg !1887
  %add.ptr69 = getelementptr inbounds i8, i8* %20, i64 %idx.ext, !dbg !1887
  %21 = load i8, i8* %add.ptr69, align 1, !dbg !1888
  %conv70 = sext i8 %21 to i32, !dbg !1889
  %cmp71 = icmp ne i32 %conv70, 32, !dbg !1890
  br i1 %cmp71, label %if.end74, label %if.then73, !dbg !1891

if.then73:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1892

if.end74:                                         ; preds = %while_continue___0
  %str75 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1894
  %22 = load i8*, i8** %str75, align 8, !dbg !1894
  %idx.ext76 = sext i32 %pos.0 to i64, !dbg !1896
  %add.ptr77 = getelementptr inbounds i8, i8* %22, i64 %idx.ext76, !dbg !1896
  %23 = load i8, i8* %add.ptr77, align 1, !dbg !1897
  %conv78 = sext i8 %23 to i32, !dbg !1898
  %call79 = call i32 @putchar(i32 %conv78), !dbg !1899
  %inc = add nsw i32 %pos.0, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1879, metadata !DIExpression()), !dbg !1765
  br label %while.body67, !dbg !1880, !llvm.loop !1901

while_break___0:                                  ; preds = %if.then73
  %call80 = call i32 @putchar(i32 10), !dbg !1903
  br label %while_continue, !dbg !1905

if.end81:                                         ; preds = %if.then52
  br label %if.end82, !dbg !1906

if.end82:                                         ; preds = %if.end81, %if.else46
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  br label %if.end84

if.end84:                                         ; preds = %if.end83
  %str85 = getelementptr inbounds %struct.str, %struct.str* %call1, i32 0, i32 0, !dbg !1907
  %24 = load i8*, i8** %str85, align 8, !dbg !1907
  %add.ptr86 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !1909
  %25 = load i8, i8* %add.ptr86, align 1, !dbg !1910
  %conv87 = sext i8 %25 to i32, !dbg !1911
  %cmp88 = icmp eq i32 %conv87, 63, !dbg !1912
  br i1 %cmp88, label %if.then90, label %if.end94, !dbg !1913

if.then90:                                        ; preds = %if.end84
  %26 = load i32, i32* @verbose, align 4, !dbg !1914
  %tobool91 = icmp ne i32 %26, 0, !dbg !1914
  br i1 %tobool91, label %if.end93, label %if.then92, !dbg !1917

if.then92:                                        ; preds = %if.then90
  br label %while_continue, !dbg !1918

if.end93:                                         ; preds = %if.then90
  br label %if.end94, !dbg !1920

if.end94:                                         ; preds = %if.end93, %if.end84
  %call95 = call i8* @str_to_nstr(%struct.str* %call1), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %call95, metadata !1923, metadata !DIExpression()), !dbg !1765
  call void (i32, i32, i8*, ...) @error___0(i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %call95), !dbg !1924
  br label %while.body, !dbg !1773, !llvm.loop !1925

while_break:                                      ; preds = %if.then8
  ret void, !dbg !1927
}

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @putchar(i32) #2

declare i32 @select(i32, %struct.__anonstruct_fd_set_13*, %struct.__anonstruct_fd_set_13*, %struct.__anonstruct_fd_set_13*, %struct.timeval*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i32) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @sig_pipe(i32 %signo) #0 !dbg !1928 {
entry:
  call void @llvm.dbg.value(metadata i32 %signo, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0)), !dbg !1931
  ret void, !dbg !1934
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @sig_chld(i32 %signo) #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i32 %signo, metadata !1936, metadata !DIExpression()), !dbg !1937
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)), !dbg !1938
  ret void, !dbg !1941
}

declare i32 @pipe(i32*) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @dup2(i32, i32) #2

declare i32 @execl(i8*, i8*, ...) #2

declare noalias i8* @malloc(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @error(i32 %status, i32 %errnum, i8* %message, ...) #0 !dbg !1942 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %status, metadata !1943, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !1945, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %message, metadata !1946, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load i32, i32* @interactive, align 4, !dbg !1949
  %tobool = icmp ne i32 %0, 0, !dbg !1949
  br i1 %tobool, label %if.end, label %if.then, !dbg !1952

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1953
  %call = call i32 @fflush(%struct._IO_FILE* %1), !dbg !1956
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1957
  %3 = load i8*, i8** @program_name, align 8, !dbg !1958
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %3), !dbg !1959
  br label %if.end, !dbg !1960

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1961
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1961
  call void @llvm.va_start(i8* %arraydecay2), !dbg !1961
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1963
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1964
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %4, i8* %message, %struct.__va_list_tag* %arraydecay3), !dbg !1965
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0, !dbg !1966
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*, !dbg !1966
  call void @llvm.va_end(i8* %arraydecay56), !dbg !1966
  %tobool7 = icmp ne i32 %errnum, 0, !dbg !1967
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !1969

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @strerror(i32 %errnum), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %call9, metadata !1973, metadata !DIExpression()), !dbg !1944
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1974
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* %call9), !dbg !1975
  br label %if.end11, !dbg !1976

if.end11:                                         ; preds = %if.then8, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1977
  %call12 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6), !dbg !1979
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1980
  %call13 = call i32 @fflush(%struct._IO_FILE* %7), !dbg !1981
  %tobool14 = icmp ne i32 %status, 0, !dbg !1982
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1984

if.then15:                                        ; preds = %if.end11
  call void @exit(i32 %status) #8, !dbg !1985
  unreachable, !dbg !1985

if.end16:                                         ; preds = %if.end11
  ret void, !dbg !1988
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @strerror(i32) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare noalias i8* @realloc(i8*, i32) #2

declare i32 @read(...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @xmalloc___0(i32 %size) #0 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !1990, metadata !DIExpression()), !dbg !1991
  %call = call noalias i8* @malloc(i32 %size), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %call, metadata !1995, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %call, metadata !1996, metadata !DIExpression()), !dbg !1991
  %tobool = icmp ne i8* %call, null, !dbg !1997
  br i1 %tobool, label %if.end, label %if.then, !dbg !1999

if.then:                                          ; preds = %entry
  call void (i32, i32, i8*, ...) @error___0(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !2000
  br label %if.end, !dbg !2003

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !2004
}

declare i8* @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!182, !183, !184, !185, !186}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!187}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "version", scope: !2, file: !147, line: 107, type: !179, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !144, nameTableKind: GNU)
!3 = !DIFile(filename: "c/spell-1.0.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "add_line_return", file: !6, line: 29, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/abs/pronto/test-suite/spell-1.0/str.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ADD_LINE_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ADD_LINE_ERR", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ADD_LINE_EOF", value: 2, isUnsigned: true)
!12 = !{!13, !15, !20, !25, !21, !23, !26, !28, !69, !71, !40, !72, !5, !7, !122, !124, !125, !135, !141}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 213, baseType: !7)
!14 = !DIFile(filename: "/usr/lib/gcc-lib/i486-linux/3.3.5/include/stddef.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "str_t", file: !6, line: 42, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "str", file: !6, line: 36, size: 128, elements: !18)
!18 = !{!19, !22, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !17, file: !6, line: 37, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !17, file: !6, line: 38, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !17, file: !6, line: 39, baseType: !13, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !30, line: 36, size: 1152, elements: !31)
!30 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!31 = !{!32, !36, !38, !41, !43, !45, !47, !49, !50, !51, !54, !56, !58, !65, !66, !67, !68}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !29, file: !30, line: 37, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 136, baseType: !35)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !29, file: !30, line: 38, baseType: !37, size: 16, offset: 64)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !29, file: !30, line: 39, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 139, baseType: !40)
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !29, file: !30, line: 40, baseType: !42, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 141, baseType: !7)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !29, file: !30, line: 41, baseType: !44, size: 32, offset: 224)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 142, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !29, file: !30, line: 42, baseType: !46, size: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 137, baseType: !7)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !29, file: !30, line: 43, baseType: !48, size: 32, offset: 288)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 138, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !29, file: !30, line: 44, baseType: !33, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !29, file: !30, line: 45, baseType: !37, size: 16, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !29, file: !30, line: 46, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 143, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !29, file: !30, line: 47, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 166, baseType: !53)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !29, file: !30, line: 48, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 171, baseType: !53)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !29, file: !30, line: 49, baseType: !59, size: 128, offset: 640)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !60, line: 118, size: 128, elements: !61)
!60 = !DIFile(filename: "/usr/include/time.h", directory: "")
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !59, file: !60, line: 119, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 151, baseType: !53)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !59, file: !60, line: 120, baseType: !53, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !29, file: !30, line: 50, baseType: !59, size: 128, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !29, file: !30, line: 51, baseType: !59, size: 128, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__unused4", scope: !29, file: !30, line: 52, baseType: !40, size: 64, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__unused5", scope: !29, file: !30, line: 53, baseType: !40, size: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 264, size: 1728, elements: !77)
!76 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !102, !103, !105, !109, !112, !115, !116, !117, !118}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 265, baseType: !23, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 266, baseType: !20, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 267, baseType: !20, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 268, baseType: !20, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 269, baseType: !20, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 270, baseType: !20, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 271, baseType: !20, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 272, baseType: !20, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 273, baseType: !20, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 274, baseType: !20, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 275, baseType: !20, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 276, baseType: !20, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 277, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 179, size: 192, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !76, line: 180, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !76, line: 181, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !76, line: 182, baseType: !23, size: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 278, baseType: !96, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 279, baseType: !23, size: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 280, baseType: !23, size: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 281, baseType: !52, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 282, baseType: !37, size: 16, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 283, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 284, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 285, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 173, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 286, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 144, baseType: !114)
!114 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !75, file: !76, line: 287, baseType: !25, size: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !75, file: !76, line: 288, baseType: !25, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 289, baseType: !23, size: 32, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 290, baseType: !119, size: 352, offset: 1376)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 352, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 44)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !34, line: 153, baseType: !53)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !127, line: 67, baseType: !128)
!127 = !DIFile(filename: "/usr/include/sys/select.h", directory: "")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_fd_set_13", file: !127, line: 67, size: 1024, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !128, file: !127, line: 68, baseType: !131, size: 1024)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1024, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !127, line: 55, baseType: !53)
!133 = !{!134}
!134 = !DISubrange(count: 16)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !137, line: 69, size: 128, elements: !138)
!137 = !DIFile(filename: "/usr/include/bits/time.h", directory: "")
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !136, file: !137, line: 70, baseType: !63, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !136, file: !137, line: 71, baseType: !124, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !23}
!144 = !{!0, !145, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !147, line: 110, type: !148, isLocal: false, isDefinition: true)
!147 = !DIFile(filename: "/abs/pronto/test-suite/spell-1.0/spell.c", directory: "")
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 3328, elements: !157)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !151, line: 78, size: 256, elements: !152)
!151 = !DIFile(filename: "/abs/pronto/test-suite/spell-1.0/getopt.h", directory: "")
!152 = !{!153, !154, !155, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 79, baseType: !26, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !150, file: !151, line: 80, baseType: !23, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !150, file: !151, line: 81, baseType: !71, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !151, line: 82, baseType: !23, size: 32, offset: 192)
!157 = !{!158}
!158 = !DISubrange(count: 13)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "program_name", scope: !2, file: !147, line: 128, type: !20, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "ispell_prog", scope: !2, file: !147, line: 131, type: !20, isLocal: false, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "dictionary", scope: !2, file: !147, line: 134, type: !20, isLocal: false, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "show_ispell_version", scope: !2, file: !147, line: 137, type: !23, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "read_stdin", scope: !2, file: !147, line: 140, type: !23, isLocal: false, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "british", scope: !2, file: !147, line: 143, type: !23, isLocal: false, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !147, line: 147, type: !23, isLocal: false, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "number_lines", scope: !2, file: !147, line: 150, type: !23, isLocal: false, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "print_file_names", scope: !2, file: !147, line: 154, type: !23, isLocal: false, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "interactive", scope: !2, file: !147, line: 157, type: !23, isLocal: false, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 96, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 12)
!182 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!183 = !{i32 2, !"Dwarf Version", i32 4}
!184 = !{i32 2, !"Debug Info Version", i32 3}
!185 = !{i32 1, !"wchar_size", i32 4}
!186 = !{i32 7, !"PIC Level", i32 2}
!187 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!188 = distinct !DISubprogram(name: "str_make", scope: !189, file: !189, line: 77, type: !190, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!189 = !DIFile(filename: "/abs/pronto/test-suite/spell-1.0/str.c", directory: "")
!190 = !DISubroutineType(types: !191)
!191 = !{!15, !15}
!192 = !{}
!193 = !DILocalVariable(name: "str", arg: 1, scope: !188, file: !189, line: 77, type: !15)
!194 = !DILocation(line: 0, scope: !188)
!195 = !DILocation(line: 80, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !189, line: 80, column: 7)
!197 = distinct !DILexicalBlock(scope: !188, file: !189, line: 85, column: 3)
!198 = !DILocation(line: 80, column: 7, scope: !197)
!199 = !DILocation(line: 82, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !189, line: 81, column: 5)
!201 = distinct !DILexicalBlock(scope: !196, file: !189, line: 80, column: 14)
!202 = !DILocalVariable(name: "tmp", scope: !188, file: !189, line: 79, type: !25)
!203 = !DILocalVariable(name: "tmp___0", scope: !188, file: !189, line: 80, type: !13)
!204 = !DILocation(line: 83, column: 10, scope: !200)
!205 = !DILocation(line: 83, column: 14, scope: !200)
!206 = !DILocation(line: 83, column: 15, scope: !200)
!207 = !DILocalVariable(name: "tmp___1", scope: !188, file: !189, line: 81, type: !25)
!208 = !DILocation(line: 85, column: 3, scope: !201)
!209 = !DILocalVariable(name: "tmp___2", scope: !188, file: !189, line: 82, type: !13)
!210 = !DILocation(line: 86, column: 10, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !189, line: 86, column: 5)
!212 = distinct !DILexicalBlock(scope: !196, file: !189, line: 85, column: 10)
!213 = !DILocation(line: 86, column: 14, scope: !211)
!214 = !DILocation(line: 86, column: 37, scope: !211)
!215 = !DILocation(line: 86, column: 15, scope: !211)
!216 = !DILocalVariable(name: "tmp___3", scope: !188, file: !189, line: 83, type: !25)
!217 = !DILocation(line: 87, column: 8, scope: !197)
!218 = !DILocation(line: 87, column: 12, scope: !197)
!219 = !DILocation(line: 89, column: 3, scope: !197)
!220 = distinct !DISubprogram(name: "xmalloc", scope: !189, file: !189, line: 310, type: !221, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!221 = !DISubroutineType(types: !222)
!222 = !{!25, !13}
!223 = !DILocalVariable(name: "size", arg: 1, scope: !220, file: !189, line: 310, type: !13)
!224 = !DILocation(line: 0, scope: !220)
!225 = !DILocation(line: 313, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !189, line: 316, column: 3)
!227 = distinct !DILexicalBlock(scope: !220, file: !189, line: 315, column: 3)
!228 = !DILocalVariable(name: "tmp", scope: !220, file: !189, line: 313, type: !25)
!229 = !DILocalVariable(name: "ptr", scope: !220, file: !189, line: 312, type: !25)
!230 = !DILocation(line: 315, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !189, line: 315, column: 7)
!232 = !DILocation(line: 315, column: 7, scope: !227)
!233 = !DILocation(line: 316, column: 5, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !189, line: 316, column: 5)
!235 = distinct !DILexicalBlock(scope: !231, file: !189, line: 315, column: 14)
!236 = !DILocation(line: 318, column: 3, scope: !235)
!237 = !DILocation(line: 317, column: 3, scope: !227)
!238 = distinct !DISubprogram(name: "xrealloc", scope: !189, file: !189, line: 324, type: !239, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!239 = !DISubroutineType(types: !240)
!240 = !{!25, !25, !13}
!241 = !DILocalVariable(name: "ptr", arg: 1, scope: !238, file: !189, line: 324, type: !25)
!242 = !DILocation(line: 0, scope: !238)
!243 = !DILocalVariable(name: "size", arg: 2, scope: !238, file: !189, line: 324, type: !13)
!244 = !DILocation(line: 327, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !189, line: 327, column: 7)
!246 = distinct !DILexicalBlock(scope: !238, file: !189, line: 327, column: 3)
!247 = !DILocation(line: 327, column: 7, scope: !246)
!248 = !DILocation(line: 328, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !189, line: 328, column: 5)
!250 = distinct !DILexicalBlock(scope: !245, file: !189, line: 327, column: 14)
!251 = !DILocalVariable(name: "tmp", scope: !238, file: !189, line: 326, type: !25)
!252 = !DILocation(line: 328, column: 5, scope: !250)
!253 = !DILocation(line: 329, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !189, line: 330, column: 3)
!255 = !DILocation(line: 330, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !189, line: 330, column: 7)
!257 = !DILocation(line: 330, column: 7, scope: !246)
!258 = !DILocation(line: 331, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !189, line: 331, column: 5)
!260 = distinct !DILexicalBlock(scope: !256, file: !189, line: 330, column: 14)
!261 = !DILocation(line: 333, column: 3, scope: !260)
!262 = !DILocation(line: 332, column: 3, scope: !246)
!263 = !DILocation(line: 0, scope: !246)
!264 = !DILocation(line: 334, column: 1, scope: !238)
!265 = distinct !DISubprogram(name: "str_add_char", scope: !189, file: !189, line: 95, type: !266, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !15, !21}
!268 = !DILocalVariable(name: "str", arg: 1, scope: !265, file: !189, line: 95, type: !15)
!269 = !DILocation(line: 0, scope: !265)
!270 = !DILocalVariable(name: "c", arg: 2, scope: !265, file: !189, line: 95, type: !21)
!271 = !DILocation(line: 98, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !189, line: 98, column: 7)
!273 = distinct !DILexicalBlock(scope: !265, file: !189, line: 100, column: 3)
!274 = !DILocation(line: 98, column: 7, scope: !273)
!275 = !DILocation(line: 99, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !189, line: 99, column: 5)
!277 = distinct !DILexicalBlock(scope: !272, file: !189, line: 98, column: 14)
!278 = !DILocation(line: 101, column: 3, scope: !277)
!279 = !DILocation(line: 98, column: 14, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !189, line: 98, column: 7)
!281 = !DILocation(line: 98, column: 9, scope: !280)
!282 = !DILocation(line: 98, column: 7, scope: !272)
!283 = !DILocation(line: 99, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !189, line: 99, column: 5)
!285 = distinct !DILexicalBlock(scope: !280, file: !189, line: 98, column: 19)
!286 = !DILocation(line: 101, column: 3, scope: !285)
!287 = !DILocation(line: 101, column: 9, scope: !273)
!288 = !DILocation(line: 101, column: 14, scope: !273)
!289 = !DILocation(line: 101, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !273, file: !189, line: 101, column: 7)
!291 = !DILocation(line: 101, column: 32, scope: !290)
!292 = !DILocation(line: 101, column: 25, scope: !290)
!293 = !DILocation(line: 101, column: 7, scope: !273)
!294 = !DILocation(line: 102, column: 16, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !189, line: 102, column: 5)
!296 = distinct !DILexicalBlock(scope: !290, file: !189, line: 101, column: 37)
!297 = !DILocation(line: 102, column: 20, scope: !295)
!298 = !DILocalVariable(name: "tmp", scope: !265, file: !189, line: 97, type: !13)
!299 = !DILocation(line: 102, column: 10, scope: !295)
!300 = !DILocation(line: 102, column: 14, scope: !295)
!301 = !DILocation(line: 102, column: 37, scope: !295)
!302 = !DILocation(line: 102, column: 15, scope: !295)
!303 = !DILocalVariable(name: "tmp___0", scope: !265, file: !189, line: 98, type: !25)
!304 = !DILocation(line: 104, column: 3, scope: !296)
!305 = !DILocation(line: 104, column: 10, scope: !273)
!306 = !DILocation(line: 104, column: 22, scope: !273)
!307 = !DILocation(line: 104, column: 26, scope: !273)
!308 = !DILocation(line: 104, column: 14, scope: !273)
!309 = !DILocation(line: 104, column: 32, scope: !273)
!310 = !DILocation(line: 105, column: 3, scope: !273)
!311 = distinct !DISubprogram(name: "str_add_str", scope: !189, file: !189, line: 110, type: !312, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !15, !15}
!314 = !DILocalVariable(name: "str1", arg: 1, scope: !311, file: !189, line: 110, type: !15)
!315 = !DILocation(line: 0, scope: !311)
!316 = !DILocalVariable(name: "str2", arg: 2, scope: !311, file: !189, line: 110, type: !15)
!317 = !DILocalVariable(name: "pos", scope: !311, file: !189, line: 112, type: !23)
!318 = !DILocation(line: 115, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !189, line: 115, column: 7)
!320 = distinct !DILexicalBlock(scope: !311, file: !189, line: 114, column: 3)
!321 = !DILocation(line: 115, column: 7, scope: !320)
!322 = !DILocation(line: 116, column: 5, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !189, line: 115, column: 15)
!324 = !DILocation(line: 115, column: 15, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !189, line: 115, column: 7)
!326 = !DILocation(line: 115, column: 9, scope: !325)
!327 = !DILocation(line: 115, column: 7, scope: !319)
!328 = !DILocation(line: 116, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !189, line: 115, column: 20)
!330 = !DILocation(line: 117, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !320, file: !189, line: 117, column: 7)
!332 = !DILocation(line: 117, column: 7, scope: !320)
!333 = !DILocation(line: 118, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !189, line: 118, column: 5)
!335 = distinct !DILexicalBlock(scope: !331, file: !189, line: 117, column: 15)
!336 = !DILocation(line: 120, column: 3, scope: !335)
!337 = !DILocation(line: 117, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !189, line: 117, column: 7)
!339 = !DILocation(line: 117, column: 9, scope: !338)
!340 = !DILocation(line: 117, column: 7, scope: !331)
!341 = !DILocation(line: 118, column: 12, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !189, line: 118, column: 5)
!343 = distinct !DILexicalBlock(scope: !338, file: !189, line: 117, column: 20)
!344 = !DILocation(line: 120, column: 3, scope: !343)
!345 = !DILocation(line: 120, column: 3, scope: !346)
!346 = distinct !DILexicalBlock(scope: !320, file: !189, line: 121, column: 3)
!347 = !DILocation(line: 0, scope: !320)
!348 = !DILocation(line: 120, column: 13, scope: !346)
!349 = !DILocation(line: 120, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !189, line: 120, column: 9)
!351 = distinct !DILexicalBlock(scope: !346, file: !189, line: 120, column: 13)
!352 = !DILocation(line: 120, column: 16, scope: !350)
!353 = !DILocation(line: 120, column: 9, scope: !351)
!354 = !DILocation(line: 120, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !189, line: 120, column: 30)
!356 = !DILocation(line: 121, column: 32, scope: !357)
!357 = distinct !DILexicalBlock(scope: !351, file: !189, line: 122, column: 5)
!358 = !DILocation(line: 121, column: 36, scope: !357)
!359 = !DILocation(line: 121, column: 24, scope: !357)
!360 = !DILocation(line: 121, column: 5, scope: !357)
!361 = !DILocation(line: 120, column: 9, scope: !357)
!362 = distinct !{!362, !345, !363}
!363 = !DILocation(line: 122, column: 3, scope: !346)
!364 = !DILocation(line: 122, column: 3, scope: !320)
!365 = !DILocation(line: 124, column: 1, scope: !311)
!366 = distinct !DISubprogram(name: "str_add_line", scope: !189, file: !189, line: 129, type: !367, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!367 = !DISubroutineType(types: !368)
!368 = !{!23, !15, !72}
!369 = !DILocalVariable(name: "str", arg: 1, scope: !366, file: !189, line: 129, type: !15)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocalVariable(name: "stream", arg: 2, scope: !366, file: !189, line: 129, type: !72)
!372 = !DILocation(line: 132, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !189, line: 132, column: 7)
!374 = distinct !DILexicalBlock(scope: !366, file: !189, line: 135, column: 3)
!375 = !DILocation(line: 132, column: 7, scope: !374)
!376 = !DILocation(line: 133, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !189, line: 133, column: 5)
!378 = distinct !DILexicalBlock(scope: !373, file: !189, line: 132, column: 14)
!379 = !DILocation(line: 135, column: 3, scope: !378)
!380 = !DILocation(line: 132, column: 14, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !189, line: 132, column: 7)
!382 = !DILocation(line: 132, column: 9, scope: !381)
!383 = !DILocation(line: 132, column: 7, scope: !373)
!384 = !DILocation(line: 133, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !189, line: 133, column: 5)
!386 = distinct !DILexicalBlock(scope: !381, file: !189, line: 132, column: 19)
!387 = !DILocation(line: 135, column: 3, scope: !386)
!388 = !DILocation(line: 134, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !374, file: !189, line: 134, column: 7)
!390 = !DILocation(line: 134, column: 7, scope: !374)
!391 = !DILocation(line: 135, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !189, line: 134, column: 17)
!393 = !DILocation(line: 137, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !374, file: !189, line: 137, column: 3)
!395 = !DILocation(line: 137, column: 13, scope: !394)
!396 = !DILocation(line: 139, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !189, line: 139, column: 5)
!398 = distinct !DILexicalBlock(scope: !394, file: !189, line: 137, column: 13)
!399 = !DILocalVariable(name: "tmp", scope: !366, file: !189, line: 132, type: !23)
!400 = !DILocation(line: 139, column: 9, scope: !397)
!401 = !DILocalVariable(name: "c", scope: !366, file: !189, line: 131, type: !21)
!402 = !DILocation(line: 141, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !189, line: 141, column: 9)
!404 = !DILocation(line: 141, column: 17, scope: !403)
!405 = !DILocation(line: 141, column: 9, scope: !398)
!406 = !DILocation(line: 142, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !189, line: 141, column: 24)
!408 = !DILocation(line: 141, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !189, line: 144, column: 7)
!410 = distinct !DILexicalBlock(scope: !403, file: !189, line: 143, column: 12)
!411 = !DILocalVariable(name: "tmp___0", scope: !366, file: !189, line: 133, type: !23)
!412 = !DILocation(line: 141, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !189, line: 141, column: 11)
!414 = !DILocation(line: 141, column: 11, scope: !410)
!415 = !DILocation(line: 142, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !189, line: 141, column: 20)
!417 = !DILocation(line: 143, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !398, file: !189, line: 145, column: 5)
!419 = !DILocation(line: 144, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !398, file: !189, line: 144, column: 9)
!421 = !DILocation(line: 144, column: 17, scope: !420)
!422 = !DILocation(line: 144, column: 9, scope: !398)
!423 = !DILocation(line: 145, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !189, line: 144, column: 24)
!425 = distinct !{!425, !393, !426}
!426 = !DILocation(line: 147, column: 3, scope: !394)
!427 = !DILocation(line: 148, column: 3, scope: !374)
!428 = !DILocation(line: 0, scope: !374)
!429 = !DILocation(line: 150, column: 1, scope: !366)
!430 = distinct !DISubprogram(name: "str_add_line_from_desc", scope: !189, file: !189, line: 157, type: !431, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!431 = !DISubroutineType(types: !432)
!432 = !{!23, !15, !23}
!433 = !DILocalVariable(name: "str", arg: 1, scope: !430, file: !189, line: 157, type: !15)
!434 = !DILocation(line: 0, scope: !430)
!435 = !DILocalVariable(name: "file_desc", arg: 2, scope: !430, file: !189, line: 157, type: !23)
!436 = !DILocalVariable(name: "c", scope: !430, file: !189, line: 160, type: !21)
!437 = !DILocation(line: 160, column: 8, scope: !430)
!438 = !DILocalVariable(name: "nchars", scope: !430, file: !189, line: 159, type: !23)
!439 = !DILocation(line: 161, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !430, file: !189, line: 162, column: 3)
!441 = !DILocation(line: 163, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !189, line: 163, column: 7)
!443 = !DILocation(line: 163, column: 7, scope: !440)
!444 = !DILocation(line: 164, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !189, line: 164, column: 5)
!446 = distinct !DILexicalBlock(scope: !442, file: !189, line: 163, column: 14)
!447 = !DILocation(line: 166, column: 3, scope: !446)
!448 = !DILocation(line: 163, column: 14, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !189, line: 163, column: 7)
!450 = !DILocation(line: 163, column: 9, scope: !449)
!451 = !DILocation(line: 163, column: 7, scope: !442)
!452 = !DILocation(line: 164, column: 11, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !189, line: 164, column: 5)
!454 = distinct !DILexicalBlock(scope: !449, file: !189, line: 163, column: 19)
!455 = !DILocation(line: 166, column: 3, scope: !454)
!456 = !DILocation(line: 166, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !440, file: !189, line: 167, column: 3)
!458 = !DILocation(line: 166, column: 13, scope: !457)
!459 = !DILocation(line: 168, column: 14, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !189, line: 168, column: 5)
!461 = distinct !DILexicalBlock(scope: !457, file: !189, line: 166, column: 13)
!462 = !DILocation(line: 170, column: 11, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !189, line: 170, column: 9)
!464 = !DILocation(line: 170, column: 9, scope: !461)
!465 = !DILocation(line: 171, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !189, line: 170, column: 19)
!467 = !DILocation(line: 172, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !189, line: 172, column: 9)
!469 = !DILocation(line: 172, column: 9, scope: !461)
!470 = !DILocation(line: 173, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !189, line: 172, column: 21)
!472 = !DILocation(line: 175, column: 23, scope: !473)
!473 = distinct !DILexicalBlock(scope: !461, file: !189, line: 175, column: 5)
!474 = !DILocation(line: 175, column: 5, scope: !473)
!475 = !DILocation(line: 176, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !461, file: !189, line: 176, column: 9)
!477 = !DILocation(line: 176, column: 9, scope: !476)
!478 = !DILocation(line: 176, column: 17, scope: !476)
!479 = !DILocation(line: 176, column: 9, scope: !461)
!480 = !DILocation(line: 177, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !189, line: 176, column: 24)
!482 = distinct !{!482, !456, !483}
!483 = !DILocation(line: 179, column: 3, scope: !457)
!484 = !DILocation(line: 180, column: 3, scope: !440)
!485 = !DILocation(line: 0, scope: !440)
!486 = !DILocation(line: 182, column: 1, scope: !430)
!487 = distinct !DISubprogram(name: "safe_read", scope: !189, file: !189, line: 339, type: !488, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!488 = !DISubroutineType(types: !489)
!489 = !{!23, !23, !20, !23}
!490 = !DILocalVariable(name: "desc", arg: 1, scope: !487, file: !189, line: 339, type: !23)
!491 = !DILocation(line: 0, scope: !487)
!492 = !DILocalVariable(name: "ptr", arg: 2, scope: !487, file: !189, line: 339, type: !20)
!493 = !DILocalVariable(name: "len", arg: 3, scope: !487, file: !189, line: 339, type: !23)
!494 = !DILocation(line: 344, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !189, line: 344, column: 7)
!496 = distinct !DILexicalBlock(scope: !487, file: !189, line: 344, column: 3)
!497 = !DILocation(line: 344, column: 7, scope: !496)
!498 = !DILocation(line: 345, column: 5, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !189, line: 344, column: 17)
!500 = !DILocation(line: 348, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !189, line: 347, column: 3)
!502 = !DILocation(line: 348, column: 13, scope: !501)
!503 = !DILocation(line: 350, column: 15, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !189, line: 350, column: 5)
!505 = distinct !DILexicalBlock(scope: !501, file: !189, line: 348, column: 13)
!506 = !DILocalVariable(name: "n_chars", scope: !487, file: !189, line: 341, type: !23)
!507 = !DILocation(line: 348, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !189, line: 348, column: 9)
!509 = !DILocation(line: 348, column: 9, scope: !505)
!510 = !DILocation(line: 348, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !189, line: 349, column: 7)
!512 = distinct !DILexicalBlock(scope: !508, file: !189, line: 348, column: 22)
!513 = !DILocalVariable(name: "tmp", scope: !487, file: !189, line: 342, type: !71)
!514 = !DILocation(line: 348, column: 14, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !189, line: 348, column: 11)
!516 = !DILocation(line: 348, column: 19, scope: !515)
!517 = !DILocation(line: 348, column: 11, scope: !512)
!518 = !DILocation(line: 348, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !189, line: 348, column: 26)
!520 = !DILocation(line: 350, column: 5, scope: !512)
!521 = !DILocation(line: 348, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !508, file: !189, line: 350, column: 12)
!523 = distinct !{!523, !500, !524}
!524 = !DILocation(line: 350, column: 3, scope: !501)
!525 = !DILocation(line: 357, column: 3, scope: !496)
!526 = !DILocation(line: 0, scope: !496)
!527 = !DILocation(line: 359, column: 1, scope: !487)
!528 = distinct !DISubprogram(name: "nstr_to_str", scope: !189, file: !189, line: 186, type: !529, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!529 = !DISubroutineType(types: !530)
!530 = !{!15, !20}
!531 = !DILocalVariable(name: "nstr", arg: 1, scope: !528, file: !189, line: 186, type: !20)
!532 = !DILocation(line: 0, scope: !528)
!533 = !DILocalVariable(name: "str", scope: !528, file: !189, line: 188, type: !15)
!534 = !DILocalVariable(name: "pos", scope: !528, file: !189, line: 189, type: !23)
!535 = !DILocation(line: 192, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !189, line: 192, column: 3)
!537 = distinct !DILexicalBlock(scope: !528, file: !189, line: 191, column: 3)
!538 = !DILocation(line: 194, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !189, line: 194, column: 7)
!540 = !DILocation(line: 194, column: 7, scope: !537)
!541 = !DILocation(line: 195, column: 5, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !189, line: 194, column: 15)
!543 = !DILocation(line: 196, column: 3, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !189, line: 197, column: 3)
!545 = !DILocation(line: 0, scope: !537)
!546 = !DILocation(line: 196, column: 13, scope: !544)
!547 = !DILocation(line: 196, column: 18, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !189, line: 196, column: 9)
!549 = distinct !DILexicalBlock(scope: !544, file: !189, line: 196, column: 13)
!550 = !DILocation(line: 196, column: 11, scope: !548)
!551 = !DILocation(line: 196, column: 9, scope: !549)
!552 = !DILocation(line: 196, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !189, line: 196, column: 26)
!554 = !DILocation(line: 197, column: 30, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !189, line: 198, column: 5)
!556 = !DILocation(line: 197, column: 23, scope: !555)
!557 = !DILocation(line: 197, column: 5, scope: !555)
!558 = !DILocation(line: 196, column: 9, scope: !555)
!559 = distinct !{!559, !543, !560}
!560 = !DILocation(line: 198, column: 3, scope: !544)
!561 = !DILocation(line: 199, column: 3, scope: !537)
!562 = !DILocation(line: 201, column: 1, scope: !528)
!563 = distinct !DISubprogram(name: "str_to_nstr", scope: !189, file: !189, line: 205, type: !564, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!564 = !DISubroutineType(types: !565)
!565 = !{!20, !15}
!566 = !DILocalVariable(name: "str", arg: 1, scope: !563, file: !189, line: 205, type: !15)
!567 = !DILocation(line: 0, scope: !563)
!568 = !DILocation(line: 208, column: 32, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !189, line: 212, column: 3)
!570 = distinct !DILexicalBlock(scope: !563, file: !189, line: 211, column: 3)
!571 = !DILocation(line: 208, column: 36, scope: !569)
!572 = !DILocation(line: 208, column: 9, scope: !569)
!573 = !DILocalVariable(name: "tmp", scope: !563, file: !189, line: 208, type: !25)
!574 = !DILocalVariable(name: "nstr", scope: !563, file: !189, line: 207, type: !20)
!575 = !DILocalVariable(name: "pos", scope: !563, file: !189, line: 209, type: !23)
!576 = !DILocation(line: 211, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !570, file: !189, line: 211, column: 7)
!578 = !DILocation(line: 211, column: 7, scope: !570)
!579 = !DILocation(line: 212, column: 5, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !189, line: 211, column: 14)
!581 = !DILocation(line: 211, column: 14, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !189, line: 211, column: 7)
!583 = !DILocation(line: 211, column: 9, scope: !582)
!584 = !DILocation(line: 211, column: 7, scope: !577)
!585 = !DILocation(line: 212, column: 5, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !189, line: 211, column: 19)
!587 = !DILocation(line: 214, column: 3, scope: !588)
!588 = distinct !DILexicalBlock(scope: !570, file: !189, line: 214, column: 3)
!589 = !DILocation(line: 0, scope: !570)
!590 = !DILocation(line: 214, column: 13, scope: !588)
!591 = !DILocation(line: 214, column: 23, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !189, line: 214, column: 9)
!593 = distinct !DILexicalBlock(scope: !588, file: !189, line: 214, column: 13)
!594 = !DILocation(line: 214, column: 16, scope: !592)
!595 = !DILocation(line: 214, column: 9, scope: !593)
!596 = !DILocation(line: 214, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !189, line: 214, column: 29)
!598 = !DILocation(line: 216, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !593, file: !189, line: 216, column: 9)
!600 = !DILocation(line: 216, column: 22, scope: !599)
!601 = !DILocation(line: 216, column: 11, scope: !599)
!602 = !DILocation(line: 216, column: 9, scope: !593)
!603 = !DILocation(line: 220, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !189, line: 216, column: 30)
!605 = !DILocation(line: 220, column: 18, scope: !604)
!606 = !DILocation(line: 220, column: 25, scope: !604)
!607 = !DILocation(line: 221, column: 5, scope: !604)
!608 = !DILocation(line: 222, column: 28, scope: !593)
!609 = !DILocation(line: 222, column: 32, scope: !593)
!610 = !DILocation(line: 222, column: 21, scope: !593)
!611 = !DILocation(line: 222, column: 12, scope: !593)
!612 = !DILocation(line: 222, column: 19, scope: !593)
!613 = distinct !{!613, !587, !614}
!614 = !DILocation(line: 215, column: 3, scope: !588)
!615 = !DILocation(line: 225, column: 17, scope: !570)
!616 = !DILocation(line: 225, column: 10, scope: !570)
!617 = !DILocation(line: 225, column: 23, scope: !570)
!618 = !DILocation(line: 226, column: 3, scope: !570)
!619 = !DILocation(line: 228, column: 1, scope: !563)
!620 = distinct !DISubprogram(name: "int_to_str", scope: !189, file: !189, line: 236, type: !621, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!621 = !DISubroutineType(types: !622)
!622 = !{!15, !23}
!623 = !DILocalVariable(name: "num", arg: 1, scope: !620, file: !189, line: 236, type: !23)
!624 = !DILocation(line: 0, scope: !620)
!625 = !DILocalVariable(name: "c", scope: !620, file: !189, line: 238, type: !626)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 2)
!629 = !DILocation(line: 238, column: 8, scope: !620)
!630 = !DILocalVariable(name: "pos", scope: !620, file: !189, line: 239, type: !23)
!631 = !DILocalVariable(name: "rem", scope: !620, file: !189, line: 240, type: !23)
!632 = !DILocation(line: 242, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !189, line: 247, column: 3)
!634 = distinct !DILexicalBlock(scope: !620, file: !189, line: 246, column: 3)
!635 = !DILocalVariable(name: "tmp", scope: !620, file: !189, line: 242, type: !15)
!636 = !DILocalVariable(name: "rstr", scope: !620, file: !189, line: 241, type: !15)
!637 = !DILocation(line: 243, column: 13, scope: !633)
!638 = !DILocalVariable(name: "tmp___0", scope: !620, file: !189, line: 244, type: !15)
!639 = !DILocalVariable(name: "str", scope: !620, file: !189, line: 243, type: !15)
!640 = !DILocation(line: 247, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !634, file: !189, line: 245, column: 3)
!642 = !DILocation(line: 247, column: 13, scope: !641)
!643 = !DILocation(line: 247, column: 16, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !189, line: 247, column: 9)
!645 = distinct !DILexicalBlock(scope: !641, file: !189, line: 247, column: 13)
!646 = !DILocation(line: 247, column: 9, scope: !645)
!647 = !DILocation(line: 247, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !189, line: 247, column: 22)
!649 = !DILocation(line: 249, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !189, line: 249, column: 5)
!651 = !DILocation(line: 250, column: 9, scope: !650)
!652 = !DILocation(line: 251, column: 38, scope: !650)
!653 = !DILocation(line: 251, column: 5, scope: !650)
!654 = !DILocation(line: 252, column: 24, scope: !650)
!655 = !DILocation(line: 252, column: 5, scope: !650)
!656 = distinct !{!656, !640, !657}
!657 = !DILocation(line: 254, column: 3, scope: !641)
!658 = !DILocation(line: 256, column: 15, scope: !634)
!659 = !DILocation(line: 256, column: 19, scope: !634)
!660 = !DILocation(line: 256, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !634, file: !189, line: 257, column: 3)
!662 = !DILocation(line: 0, scope: !634)
!663 = !DILocation(line: 256, column: 13, scope: !661)
!664 = !DILocation(line: 256, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !189, line: 256, column: 9)
!666 = distinct !DILexicalBlock(scope: !661, file: !189, line: 256, column: 13)
!667 = !DILocation(line: 256, column: 9, scope: !666)
!668 = !DILocation(line: 256, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !189, line: 256, column: 23)
!670 = !DILocation(line: 257, column: 31, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !189, line: 258, column: 5)
!672 = !DILocation(line: 257, column: 35, scope: !671)
!673 = !DILocation(line: 257, column: 23, scope: !671)
!674 = !DILocation(line: 257, column: 5, scope: !671)
!675 = !DILocation(line: 256, column: 9, scope: !671)
!676 = distinct !{!676, !660, !677}
!677 = !DILocation(line: 258, column: 3, scope: !661)
!678 = !DILocation(line: 259, column: 3, scope: !634)
!679 = distinct !DISubprogram(name: "stat", scope: !680, file: !680, line: 356, type: !681, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!680 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!681 = !DISubroutineType(types: !682)
!682 = !{!23, !683, !684}
!683 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!685 = !DILocalVariable(name: "__path", arg: 1, scope: !679, file: !680, line: 356, type: !683)
!686 = !DILocation(line: 0, scope: !679)
!687 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !679, file: !680, line: 356, type: !684)
!688 = !DILocation(line: 359, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !680, line: 361, column: 3)
!690 = distinct !DILexicalBlock(scope: !679, file: !680, line: 360, column: 3)
!691 = !DILocalVariable(name: "tmp", scope: !679, file: !680, line: 358, type: !23)
!692 = !DILocation(line: 359, column: 3, scope: !690)
!693 = distinct !DISubprogram(name: "lstat", scope: !680, file: !680, line: 363, type: !681, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!694 = !DILocalVariable(name: "__path", arg: 1, scope: !693, file: !680, line: 363, type: !683)
!695 = !DILocation(line: 0, scope: !693)
!696 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !693, file: !680, line: 363, type: !684)
!697 = !DILocation(line: 366, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !680, line: 368, column: 3)
!699 = distinct !DILexicalBlock(scope: !693, file: !680, line: 367, column: 3)
!700 = !DILocalVariable(name: "tmp", scope: !693, file: !680, line: 365, type: !23)
!701 = !DILocation(line: 366, column: 3, scope: !699)
!702 = distinct !DISubprogram(name: "fstat", scope: !680, file: !680, line: 370, type: !703, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!703 = !DISubroutineType(types: !704)
!704 = !{!23, !23, !28}
!705 = !DILocalVariable(name: "__fd", arg: 1, scope: !702, file: !680, line: 370, type: !23)
!706 = !DILocation(line: 0, scope: !702)
!707 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !702, file: !680, line: 370, type: !28)
!708 = !DILocation(line: 372, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !680, line: 375, column: 3)
!710 = distinct !DILexicalBlock(scope: !702, file: !680, line: 374, column: 3)
!711 = !DILocalVariable(name: "tmp", scope: !702, file: !680, line: 372, type: !23)
!712 = !DILocation(line: 372, column: 3, scope: !710)
!713 = distinct !DISubprogram(name: "mknod", scope: !680, file: !680, line: 376, type: !714, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!714 = !DISubroutineType(types: !715)
!715 = !{!23, !26, !42, !33}
!716 = !DILocalVariable(name: "__path", arg: 1, scope: !713, file: !680, line: 376, type: !26)
!717 = !DILocation(line: 0, scope: !713)
!718 = !DILocalVariable(name: "__mode", arg: 2, scope: !713, file: !680, line: 376, type: !42)
!719 = !DILocalVariable(name: "__dev", arg: 3, scope: !713, file: !680, line: 376, type: !33)
!720 = !DILocation(line: 376, column: 76, scope: !713)
!721 = !DILocation(line: 379, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !680, line: 381, column: 3)
!723 = distinct !DILexicalBlock(scope: !713, file: !680, line: 380, column: 3)
!724 = !DILocalVariable(name: "tmp", scope: !713, file: !680, line: 378, type: !23)
!725 = !DILocation(line: 379, column: 3, scope: !723)
!726 = distinct !DISubprogram(name: "main", scope: !147, file: !147, line: 159, type: !727, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!727 = !DISubroutineType(types: !728)
!728 = !{!23, !23, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!730 = !DILocalVariable(name: "argc", arg: 1, scope: !726, file: !147, line: 159, type: !23)
!731 = !DILocation(line: 0, scope: !726)
!732 = !DILocalVariable(name: "argv", arg: 2, scope: !726, file: !147, line: 159, type: !729)
!733 = !DILocalVariable(name: "ispell_pipe", scope: !726, file: !147, line: 166, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "pipe_t", file: !147, line: 86, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipe", file: !147, line: 71, size: 1216, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !735, file: !147, line: 72, baseType: !23, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pout", scope: !735, file: !147, line: 73, baseType: !23, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "perr", scope: !735, file: !147, line: 74, baseType: !23, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "cin", scope: !735, file: !147, line: 75, baseType: !23, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cout", scope: !735, file: !147, line: 76, baseType: !23, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cerr", scope: !735, file: !147, line: 77, baseType: !23, size: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "error_set", scope: !735, file: !147, line: 78, baseType: !126, size: 1024, offset: 192)
!744 = !DILocation(line: 166, column: 10, scope: !726)
!745 = !DILocalVariable(name: "opt", scope: !726, file: !147, line: 161, type: !21)
!746 = !DILocalVariable(name: "opt_error", scope: !726, file: !147, line: 162, type: !23)
!747 = !DILocalVariable(name: "show_help", scope: !726, file: !147, line: 163, type: !23)
!748 = !DILocalVariable(name: "show_version", scope: !726, file: !147, line: 164, type: !23)
!749 = !DILocalVariable(name: "pid", scope: !726, file: !147, line: 165, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !751, line: 100, baseType: !752)
!751 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !34, line: 145, baseType: !23)
!753 = !DILocation(line: 169, column: 25, scope: !754)
!754 = distinct !DILexicalBlock(scope: !726, file: !147, line: 170, column: 3)
!755 = !DILocation(line: 169, column: 18, scope: !754)
!756 = !DILocation(line: 169, column: 16, scope: !754)
!757 = !DILocation(line: 172, column: 3, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !147, line: 170, column: 3)
!759 = !DILocation(line: 163, column: 13, scope: !754)
!760 = !DILocation(line: 164, column: 13, scope: !754)
!761 = !DILocation(line: 165, column: 16, scope: !754)
!762 = !DILocation(line: 172, column: 13, scope: !758)
!763 = !DILocation(line: 174, column: 11, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !147, line: 174, column: 5)
!765 = distinct !DILexicalBlock(scope: !758, file: !147, line: 172, column: 13)
!766 = !DILocalVariable(name: "tmp", scope: !726, file: !147, line: 167, type: !23)
!767 = !DILocation(line: 177, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !147, line: 177, column: 9)
!769 = !DILocation(line: 177, column: 19, scope: !768)
!770 = !DILocation(line: 177, column: 9, scope: !765)
!771 = !DILocation(line: 178, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !147, line: 177, column: 26)
!773 = !DILocation(line: 182, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !147, line: 182, column: 9)
!775 = distinct !DILexicalBlock(scope: !765, file: !147, line: 180, column: 5)
!776 = !DILocation(line: 182, column: 19, scope: !774)
!777 = !DILocation(line: 182, column: 9, scope: !775)
!778 = !DILocation(line: 182, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !147, line: 182, column: 26)
!780 = !DILocation(line: 185, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !775, file: !147, line: 185, column: 9)
!782 = !DILocation(line: 185, column: 19, scope: !781)
!783 = !DILocation(line: 185, column: 9, scope: !775)
!784 = !DILocation(line: 185, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !147, line: 185, column: 26)
!786 = !DILocation(line: 188, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !775, file: !147, line: 188, column: 9)
!788 = !DILocation(line: 188, column: 19, scope: !787)
!789 = !DILocation(line: 188, column: 9, scope: !775)
!790 = !DILocation(line: 188, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !147, line: 188, column: 26)
!792 = !DILocation(line: 191, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !775, file: !147, line: 191, column: 9)
!794 = !DILocation(line: 191, column: 19, scope: !793)
!795 = !DILocation(line: 191, column: 9, scope: !775)
!796 = !DILocation(line: 191, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !147, line: 191, column: 27)
!798 = !DILocation(line: 197, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !775, file: !147, line: 197, column: 9)
!800 = !DILocation(line: 197, column: 19, scope: !799)
!801 = !DILocation(line: 197, column: 9, scope: !775)
!802 = !DILocation(line: 197, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !147, line: 197, column: 27)
!804 = !DILocation(line: 200, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !775, file: !147, line: 200, column: 9)
!806 = !DILocation(line: 200, column: 19, scope: !805)
!807 = !DILocation(line: 200, column: 9, scope: !775)
!808 = !DILocation(line: 200, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !147, line: 200, column: 27)
!810 = !DILocation(line: 206, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !775, file: !147, line: 206, column: 9)
!812 = !DILocation(line: 206, column: 19, scope: !811)
!813 = !DILocation(line: 206, column: 9, scope: !775)
!814 = !DILocation(line: 206, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !147, line: 206, column: 27)
!816 = !DILocation(line: 208, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !775, file: !147, line: 208, column: 9)
!818 = !DILocation(line: 208, column: 19, scope: !817)
!819 = !DILocation(line: 208, column: 9, scope: !775)
!820 = !DILocation(line: 208, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !147, line: 208, column: 27)
!822 = !DILocation(line: 211, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !775, file: !147, line: 211, column: 9)
!824 = !DILocation(line: 211, column: 19, scope: !823)
!825 = !DILocation(line: 211, column: 9, scope: !775)
!826 = !DILocation(line: 211, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !147, line: 211, column: 27)
!828 = !DILocation(line: 214, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !775, file: !147, line: 214, column: 9)
!830 = !DILocation(line: 214, column: 19, scope: !829)
!831 = !DILocation(line: 214, column: 9, scope: !775)
!832 = !DILocation(line: 214, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !147, line: 214, column: 27)
!834 = !DILocation(line: 216, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !775, file: !147, line: 216, column: 9)
!836 = !DILocation(line: 216, column: 19, scope: !835)
!837 = !DILocation(line: 216, column: 9, scope: !775)
!838 = !DILocation(line: 216, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !147, line: 216, column: 27)
!840 = !DILocation(line: 219, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !775, file: !147, line: 219, column: 9)
!842 = !DILocation(line: 219, column: 19, scope: !841)
!843 = !DILocation(line: 219, column: 9, scope: !775)
!844 = !DILocation(line: 219, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !147, line: 219, column: 27)
!846 = !DILocation(line: 221, column: 5, scope: !775)
!847 = !DILocation(line: 183, column: 25, scope: !775)
!848 = !DILocation(line: 184, column: 5, scope: !775)
!849 = !DILocation(line: 187, column: 5, scope: !775)
!850 = !DILocation(line: 189, column: 13, scope: !775)
!851 = !DILocation(line: 190, column: 5, scope: !775)
!852 = !DILocation(line: 192, column: 25, scope: !853)
!853 = distinct !DILexicalBlock(scope: !775, file: !147, line: 192, column: 9)
!854 = !DILocation(line: 192, column: 9, scope: !853)
!855 = !DILocation(line: 192, column: 32, scope: !853)
!856 = !DILocation(line: 192, column: 9, scope: !775)
!857 = !DILocation(line: 193, column: 44, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !147, line: 193, column: 7)
!859 = distinct !DILexicalBlock(scope: !853, file: !147, line: 192, column: 64)
!860 = !DILocation(line: 193, column: 20, scope: !858)
!861 = !DILocation(line: 193, column: 18, scope: !858)
!862 = !DILocation(line: 195, column: 5, scope: !859)
!863 = !DILocation(line: 195, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !147, line: 196, column: 7)
!865 = distinct !DILexicalBlock(scope: !853, file: !147, line: 195, column: 12)
!866 = !DILocation(line: 196, column: 5, scope: !775)
!867 = !DILocation(line: 199, column: 5, scope: !775)
!868 = !DILocation(line: 201, column: 25, scope: !869)
!869 = distinct !DILexicalBlock(scope: !775, file: !147, line: 201, column: 9)
!870 = !DILocation(line: 201, column: 9, scope: !869)
!871 = !DILocation(line: 201, column: 32, scope: !869)
!872 = !DILocation(line: 201, column: 9, scope: !775)
!873 = !DILocation(line: 202, column: 45, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !147, line: 202, column: 7)
!875 = distinct !DILexicalBlock(scope: !869, file: !147, line: 201, column: 64)
!876 = !DILocation(line: 202, column: 21, scope: !874)
!877 = !DILocation(line: 202, column: 19, scope: !874)
!878 = !DILocation(line: 204, column: 5, scope: !875)
!879 = !DILocation(line: 204, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !147, line: 205, column: 7)
!881 = distinct !DILexicalBlock(scope: !869, file: !147, line: 204, column: 12)
!882 = !DILocation(line: 205, column: 5, scope: !775)
!883 = !DILocation(line: 207, column: 5, scope: !775)
!884 = !DILocation(line: 209, column: 18, scope: !775)
!885 = !DILocation(line: 210, column: 5, scope: !775)
!886 = !DILocation(line: 212, column: 22, scope: !775)
!887 = !DILocation(line: 213, column: 5, scope: !775)
!888 = !DILocation(line: 215, column: 5, scope: !775)
!889 = !DILocation(line: 217, column: 13, scope: !775)
!890 = !DILocation(line: 218, column: 5, scope: !775)
!891 = !DILocation(line: 220, column: 5, scope: !775)
!892 = !DILocation(line: 223, column: 5, scope: !775)
!893 = !DILocation(line: 0, scope: !754)
!894 = distinct !{!894, !757, !895}
!895 = !DILocation(line: 226, column: 3, scope: !758)
!896 = !DILocation(line: 227, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !754, file: !147, line: 227, column: 7)
!898 = !DILocation(line: 227, column: 7, scope: !754)
!899 = !DILocation(line: 230, column: 12, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !147, line: 228, column: 5)
!901 = distinct !DILexicalBlock(scope: !897, file: !147, line: 227, column: 18)
!902 = !DILocation(line: 229, column: 5, scope: !900)
!903 = !DILocation(line: 230, column: 5, scope: !900)
!904 = !DILocation(line: 233, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !754, file: !147, line: 233, column: 7)
!906 = !DILocation(line: 233, column: 7, scope: !754)
!907 = !DILocation(line: 235, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !147, line: 234, column: 5)
!909 = distinct !DILexicalBlock(scope: !905, file: !147, line: 233, column: 21)
!910 = !DILocation(line: 237, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !909, file: !147, line: 237, column: 9)
!912 = !DILocation(line: 237, column: 9, scope: !909)
!913 = !DILocation(line: 238, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !147, line: 238, column: 7)
!915 = distinct !DILexicalBlock(scope: !911, file: !147, line: 237, column: 22)
!916 = !DILocation(line: 241, column: 3, scope: !909)
!917 = !DILocation(line: 241, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !754, file: !147, line: 241, column: 7)
!919 = !DILocation(line: 241, column: 7, scope: !754)
!920 = !DILocation(line: 243, column: 82, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !147, line: 242, column: 5)
!922 = distinct !DILexicalBlock(scope: !918, file: !147, line: 241, column: 18)
!923 = !DILocation(line: 243, column: 5, scope: !921)
!924 = !DILocation(line: 245, column: 36, scope: !921)
!925 = !DILocation(line: 244, column: 5, scope: !921)
!926 = !DILocation(line: 258, column: 5, scope: !921)
!927 = !DILocation(line: 261, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !754, file: !147, line: 261, column: 7)
!929 = !DILocation(line: 261, column: 7, scope: !754)
!930 = !DILocation(line: 262, column: 19, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !147, line: 262, column: 5)
!932 = distinct !DILexicalBlock(scope: !928, file: !147, line: 261, column: 22)
!933 = !DILocation(line: 262, column: 17, scope: !931)
!934 = !DILocation(line: 264, column: 3, scope: !932)
!935 = !DILocation(line: 264, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !754, file: !147, line: 265, column: 3)
!937 = !DILocation(line: 266, column: 9, scope: !936)
!938 = !DILocation(line: 270, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !754, file: !147, line: 270, column: 7)
!940 = !DILocation(line: 270, column: 7, scope: !754)
!941 = !DILocation(line: 271, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !147, line: 271, column: 5)
!943 = distinct !DILexicalBlock(scope: !939, file: !147, line: 270, column: 16)
!944 = !DILocalVariable(name: "tmp___0", scope: !726, file: !147, line: 168, type: !71)
!945 = !DILocation(line: 271, column: 18, scope: !942)
!946 = !DILocation(line: 271, column: 5, scope: !942)
!947 = !DILocation(line: 273, column: 3, scope: !943)
!948 = !DILocation(line: 272, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !939, file: !147, line: 272, column: 7)
!950 = !DILocation(line: 272, column: 7, scope: !939)
!951 = !DILocation(line: 273, column: 5, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !147, line: 273, column: 5)
!953 = distinct !DILexicalBlock(scope: !949, file: !147, line: 272, column: 16)
!954 = !DILocation(line: 275, column: 3, scope: !953)
!955 = !DILocation(line: 275, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !147, line: 276, column: 5)
!957 = distinct !DILexicalBlock(scope: !949, file: !147, line: 275, column: 10)
!958 = !DILocation(line: 277, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !754, file: !147, line: 278, column: 3)
!960 = !DILocation(line: 280, column: 1, scope: !726)
!961 = distinct !DISubprogram(name: "xstrdup", scope: !147, file: !147, line: 716, type: !962, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!962 = !DISubroutineType(types: !963)
!963 = !{!20, !26}
!964 = !DILocalVariable(name: "str", arg: 1, scope: !961, file: !147, line: 716, type: !26)
!965 = !DILocation(line: 0, scope: !961)
!966 = !DILocation(line: 719, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !147, line: 724, column: 3)
!968 = distinct !DILexicalBlock(scope: !961, file: !147, line: 723, column: 3)
!969 = !DILocalVariable(name: "tmp", scope: !961, file: !147, line: 719, type: !13)
!970 = !DILocation(line: 719, column: 13, scope: !967)
!971 = !DILocalVariable(name: "len", scope: !961, file: !147, line: 718, type: !13)
!972 = !DILocation(line: 720, column: 13, scope: !967)
!973 = !DILocalVariable(name: "tmp___0", scope: !961, file: !147, line: 721, type: !25)
!974 = !DILocalVariable(name: "new", scope: !961, file: !147, line: 720, type: !25)
!975 = !DILocation(line: 722, column: 3, scope: !967)
!976 = !DILocation(line: 724, column: 3, scope: !968)
!977 = distinct !DISubprogram(name: "error___0", scope: !147, file: !147, line: 664, type: !978, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !23, !23, !26, null}
!980 = !DILocalVariable(name: "status", arg: 1, scope: !977, file: !147, line: 664, type: !23)
!981 = !DILocation(line: 0, scope: !977)
!982 = !DILocalVariable(name: "errnum", arg: 2, scope: !977, file: !147, line: 664, type: !23)
!983 = !DILocalVariable(name: "message", arg: 3, scope: !977, file: !147, line: 664, type: !26)
!984 = !DILocalVariable(name: "args", scope: !977, file: !147, line: 666, type: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !986, line: 105, baseType: !987)
!986 = !DIFile(filename: "/usr/lib/gcc-lib/i486-linux/3.3.5/include/stdarg.h", directory: "")
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !986, line: 43, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 286, baseType: !989)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 192, elements: !107)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 286, size: 192, elements: !991)
!991 = !{!992, !993, !994, !995}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !990, file: !3, line: 286, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !990, file: !3, line: 286, baseType: !7, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !990, file: !3, line: 286, baseType: !25, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !990, file: !3, line: 286, baseType: !25, size: 64, offset: 128)
!996 = !DILocation(line: 666, column: 11, scope: !977)
!997 = !DILocation(line: 669, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !147, line: 670, column: 3)
!999 = distinct !DILexicalBlock(scope: !977, file: !147, line: 669, column: 3)
!1000 = !DILocation(line: 669, column: 3, scope: !998)
!1001 = !DILocation(line: 670, column: 36, scope: !998)
!1002 = !DILocation(line: 671, column: 11, scope: !998)
!1003 = !DILocation(line: 670, column: 3, scope: !998)
!1004 = !DILocation(line: 672, column: 3, scope: !998)
!1005 = !DILocation(line: 673, column: 37, scope: !998)
!1006 = !DILocation(line: 674, column: 12, scope: !998)
!1007 = !DILocation(line: 673, column: 3, scope: !998)
!1008 = !DILocation(line: 674, column: 3, scope: !998)
!1009 = !DILocation(line: 676, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !999, file: !147, line: 676, column: 7)
!1011 = !DILocation(line: 676, column: 7, scope: !999)
!1012 = !DILocation(line: 677, column: 11, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !147, line: 677, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !147, line: 676, column: 15)
!1015 = !DILocalVariable(name: "tmp", scope: !977, file: !147, line: 667, type: !20)
!1016 = !DILocation(line: 677, column: 38, scope: !1013)
!1017 = !DILocation(line: 677, column: 5, scope: !1013)
!1018 = !DILocation(line: 680, column: 3, scope: !1014)
!1019 = !DILocation(line: 678, column: 18, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !999, file: !147, line: 681, column: 3)
!1021 = !DILocation(line: 678, column: 3, scope: !1020)
!1022 = !DILocation(line: 679, column: 10, scope: !1020)
!1023 = !DILocation(line: 679, column: 3, scope: !1020)
!1024 = !DILocation(line: 680, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !999, file: !147, line: 680, column: 7)
!1026 = !DILocation(line: 680, column: 7, scope: !999)
!1027 = !DILocation(line: 681, column: 5, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !147, line: 681, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !147, line: 680, column: 15)
!1030 = !DILocation(line: 682, column: 3, scope: !999)
!1031 = distinct !DISubprogram(name: "find_ispell", scope: !147, file: !147, line: 284, type: !1032, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!20}
!1034 = !DILocalVariable(name: "stat_buf", scope: !1031, file: !147, line: 292, type: !29)
!1035 = !DILocation(line: 292, column: 15, scope: !1031)
!1036 = !DILocalVariable(name: "ispell", scope: !1031, file: !147, line: 286, type: !20)
!1037 = !DILocation(line: 0, scope: !1031)
!1038 = !DILocalVariable(name: "path", scope: !1031, file: !147, line: 287, type: !20)
!1039 = !DILocalVariable(name: "path_len", scope: !1031, file: !147, line: 288, type: !23)
!1040 = !DILocalVariable(name: "pos", scope: !1031, file: !147, line: 289, type: !23)
!1041 = !DILocation(line: 291, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !147, line: 302, column: 3)
!1043 = distinct !DILexicalBlock(scope: !1031, file: !147, line: 301, column: 3)
!1044 = !DILocalVariable(name: "tmp", scope: !1031, file: !147, line: 291, type: !15)
!1045 = !DILocalVariable(name: "file", scope: !1031, file: !147, line: 290, type: !15)
!1046 = !DILocation(line: 294, column: 13, scope: !1042)
!1047 = !DILocalVariable(name: "tmp___0", scope: !1031, file: !147, line: 293, type: !20)
!1048 = !DILocation(line: 294, column: 10, scope: !1042)
!1049 = !DILocation(line: 295, column: 13, scope: !1042)
!1050 = !DILocalVariable(name: "tmp___1", scope: !1031, file: !147, line: 294, type: !13)
!1051 = !DILocation(line: 296, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !147, line: 297, column: 3)
!1053 = !DILocation(line: 0, scope: !1043)
!1054 = !DILocation(line: 296, column: 13, scope: !1052)
!1055 = !DILocation(line: 298, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 298, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !147, line: 296, column: 13)
!1058 = !DILocation(line: 300, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 300, column: 9)
!1060 = !DILocation(line: 300, column: 9, scope: !1057)
!1061 = !DILocation(line: 300, column: 24, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !147, line: 300, column: 11)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !147, line: 300, column: 16)
!1064 = !DILocation(line: 300, column: 17, scope: !1062)
!1065 = !DILocation(line: 300, column: 11, scope: !1062)
!1066 = !DILocation(line: 300, column: 31, scope: !1062)
!1067 = !DILocation(line: 300, column: 11, scope: !1063)
!1068 = !DILocation(line: 303, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !147, line: 301, column: 9)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !147, line: 300, column: 38)
!1071 = !DILocation(line: 305, column: 7, scope: !1070)
!1072 = !DILocation(line: 300, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1062, file: !147, line: 305, column: 14)
!1074 = !DILocation(line: 302, column: 5, scope: !1063)
!1075 = !DILocation(line: 302, column: 12, scope: !1059)
!1076 = !DILocation(line: 305, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !147, line: 304, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1059, file: !147, line: 302, column: 12)
!1079 = !DILocation(line: 305, column: 17, scope: !1077)
!1080 = !DILocation(line: 305, column: 17, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !147, line: 305, column: 13)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !147, line: 305, column: 17)
!1083 = !DILocation(line: 305, column: 13, scope: !1082)
!1084 = !DILocation(line: 305, column: 31, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !147, line: 305, column: 15)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !147, line: 305, column: 29)
!1087 = !DILocation(line: 305, column: 24, scope: !1085)
!1088 = !DILocation(line: 305, column: 18, scope: !1085)
!1089 = !DILocation(line: 305, column: 38, scope: !1085)
!1090 = !DILocation(line: 305, column: 15, scope: !1086)
!1091 = !DILocation(line: 305, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1085, file: !147, line: 305, column: 46)
!1093 = !DILocation(line: 307, column: 9, scope: !1086)
!1094 = !DILocation(line: 305, column: 11, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1081, file: !147, line: 307, column: 16)
!1096 = !DILocation(line: 306, column: 35, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1082, file: !147, line: 307, column: 9)
!1098 = !DILocation(line: 306, column: 28, scope: !1097)
!1099 = !DILocation(line: 306, column: 9, scope: !1097)
!1100 = !DILocation(line: 305, column: 13, scope: !1097)
!1101 = distinct !{!1101, !1076, !1102}
!1102 = !DILocation(line: 307, column: 7, scope: !1077)
!1103 = !DILocation(line: 290, column: 7, scope: !1042)
!1104 = !DILocation(line: 308, column: 23, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 308, column: 9)
!1106 = !DILocation(line: 308, column: 36, scope: !1105)
!1107 = !DILocation(line: 308, column: 40, scope: !1105)
!1108 = !DILocation(line: 308, column: 27, scope: !1105)
!1109 = !DILocation(line: 308, column: 15, scope: !1105)
!1110 = !DILocation(line: 308, column: 9, scope: !1105)
!1111 = !DILocation(line: 308, column: 46, scope: !1105)
!1112 = !DILocation(line: 308, column: 9, scope: !1057)
!1113 = !DILocation(line: 309, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !147, line: 309, column: 7)
!1115 = distinct !DILexicalBlock(scope: !1105, file: !147, line: 308, column: 53)
!1116 = !DILocation(line: 311, column: 5, scope: !1115)
!1117 = !DILocation(line: 310, column: 15, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 312, column: 5)
!1119 = !DILocalVariable(name: "tmp___2", scope: !1031, file: !147, line: 295, type: !15)
!1120 = !DILocation(line: 310, column: 5, scope: !1118)
!1121 = !DILocation(line: 312, column: 15, scope: !1118)
!1122 = !DILocalVariable(name: "tmp___5", scope: !1031, file: !147, line: 298, type: !20)
!1123 = !DILocalVariable(name: "tmp___6", scope: !1031, file: !147, line: 299, type: !23)
!1124 = !DILocation(line: 312, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 312, column: 9)
!1126 = !DILocation(line: 312, column: 9, scope: !1057)
!1127 = !DILocation(line: 313, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !147, line: 313, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !147, line: 312, column: 24)
!1130 = !DILocalVariable(name: "tmp___3", scope: !1031, file: !147, line: 296, type: !20)
!1131 = !DILocalVariable(name: "tmp___4", scope: !1031, file: !147, line: 297, type: !20)
!1132 = !DILocation(line: 313, column: 7, scope: !1129)
!1133 = !DILocation(line: 315, column: 13, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1057, file: !147, line: 315, column: 9)
!1135 = !DILocation(line: 315, column: 9, scope: !1057)
!1136 = !DILocation(line: 316, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !147, line: 316, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !147, line: 315, column: 26)
!1139 = !DILocation(line: 318, column: 5, scope: !1138)
!1140 = !DILocation(line: 317, column: 9, scope: !1057)
!1141 = distinct !{!1141, !1051, !1142}
!1142 = !DILocation(line: 318, column: 3, scope: !1052)
!1143 = !DILocation(line: 321, column: 3, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1043, file: !147, line: 321, column: 3)
!1145 = distinct !DISubprogram(name: "new_pipe", scope: !147, file: !147, line: 460, type: !1146, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1149 = !DILocalVariable(name: "the_pipe", arg: 1, scope: !1145, file: !147, line: 460, type: !1148)
!1150 = !DILocation(line: 0, scope: !1145)
!1151 = !DILocalVariable(name: "ifd", scope: !1145, file: !147, line: 462, type: !1152)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !627)
!1153 = !DILocation(line: 462, column: 7, scope: !1145)
!1154 = !DILocalVariable(name: "ofd", scope: !1145, file: !147, line: 463, type: !1152)
!1155 = !DILocation(line: 463, column: 7, scope: !1145)
!1156 = !DILocalVariable(name: "efd", scope: !1145, file: !147, line: 464, type: !1152)
!1157 = !DILocation(line: 464, column: 7, scope: !1145)
!1158 = !DILocation(line: 467, column: 13, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 477, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1145, file: !147, line: 476, column: 3)
!1161 = !DILocalVariable(name: "tmp___0", scope: !1145, file: !147, line: 466, type: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1163, line: 73, baseType: !141)
!1163 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!1164 = !DILocation(line: 467, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 467, column: 7)
!1166 = !DILocation(line: 467, column: 31, scope: !1165)
!1167 = !DILocation(line: 467, column: 7, scope: !1160)
!1168 = !DILocation(line: 468, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !147, line: 468, column: 5)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !147, line: 467, column: 73)
!1171 = !DILocalVariable(name: "tmp", scope: !1145, file: !147, line: 465, type: !71)
!1172 = !DILocation(line: 468, column: 18, scope: !1169)
!1173 = !DILocation(line: 468, column: 5, scope: !1169)
!1174 = !DILocation(line: 470, column: 3, scope: !1170)
!1175 = !DILocation(line: 469, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 471, column: 3)
!1177 = !DILocalVariable(name: "tmp___2", scope: !1145, file: !147, line: 468, type: !1162)
!1178 = !DILocation(line: 469, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 469, column: 7)
!1180 = !DILocation(line: 469, column: 31, scope: !1179)
!1181 = !DILocation(line: 469, column: 7, scope: !1160)
!1182 = !DILocation(line: 470, column: 15, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !147, line: 470, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !147, line: 469, column: 73)
!1185 = !DILocalVariable(name: "tmp___1", scope: !1145, file: !147, line: 467, type: !71)
!1186 = !DILocation(line: 470, column: 18, scope: !1183)
!1187 = !DILocation(line: 470, column: 5, scope: !1183)
!1188 = !DILocation(line: 472, column: 3, scope: !1184)
!1189 = !DILocation(line: 472, column: 25, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 473, column: 3)
!1191 = !DILocation(line: 472, column: 13, scope: !1190)
!1192 = !DILocalVariable(name: "tmp___4", scope: !1145, file: !147, line: 470, type: !23)
!1193 = !DILocation(line: 472, column: 15, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 472, column: 7)
!1195 = !DILocation(line: 472, column: 7, scope: !1160)
!1196 = !DILocation(line: 473, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 473, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !147, line: 472, column: 20)
!1199 = !DILocalVariable(name: "tmp___3", scope: !1145, file: !147, line: 469, type: !71)
!1200 = !DILocation(line: 473, column: 18, scope: !1197)
!1201 = !DILocation(line: 473, column: 5, scope: !1197)
!1202 = !DILocation(line: 475, column: 3, scope: !1198)
!1203 = !DILocation(line: 474, column: 19, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 476, column: 3)
!1205 = !DILocation(line: 474, column: 13, scope: !1204)
!1206 = !DILocation(line: 474, column: 17, scope: !1204)
!1207 = !DILocation(line: 475, column: 20, scope: !1204)
!1208 = !DILocation(line: 475, column: 13, scope: !1204)
!1209 = !DILocation(line: 475, column: 18, scope: !1204)
!1210 = !DILocation(line: 477, column: 25, scope: !1204)
!1211 = !DILocation(line: 477, column: 13, scope: !1204)
!1212 = !DILocalVariable(name: "tmp___6", scope: !1145, file: !147, line: 472, type: !23)
!1213 = !DILocation(line: 477, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 477, column: 7)
!1215 = !DILocation(line: 477, column: 7, scope: !1160)
!1216 = !DILocation(line: 478, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !147, line: 478, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !147, line: 477, column: 20)
!1219 = !DILocalVariable(name: "tmp___5", scope: !1145, file: !147, line: 471, type: !71)
!1220 = !DILocation(line: 478, column: 18, scope: !1217)
!1221 = !DILocation(line: 478, column: 5, scope: !1217)
!1222 = !DILocation(line: 480, column: 3, scope: !1218)
!1223 = !DILocation(line: 479, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 481, column: 3)
!1225 = !DILocation(line: 479, column: 13, scope: !1224)
!1226 = !DILocation(line: 479, column: 17, scope: !1224)
!1227 = !DILocation(line: 480, column: 20, scope: !1224)
!1228 = !DILocation(line: 480, column: 13, scope: !1224)
!1229 = !DILocation(line: 480, column: 18, scope: !1224)
!1230 = !DILocation(line: 482, column: 25, scope: !1224)
!1231 = !DILocation(line: 482, column: 13, scope: !1224)
!1232 = !DILocalVariable(name: "tmp___8", scope: !1145, file: !147, line: 474, type: !23)
!1233 = !DILocation(line: 482, column: 15, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1160, file: !147, line: 482, column: 7)
!1235 = !DILocation(line: 482, column: 7, scope: !1160)
!1236 = !DILocation(line: 483, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !147, line: 483, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !147, line: 482, column: 20)
!1239 = !DILocalVariable(name: "tmp___7", scope: !1145, file: !147, line: 473, type: !71)
!1240 = !DILocation(line: 483, column: 18, scope: !1237)
!1241 = !DILocation(line: 483, column: 5, scope: !1237)
!1242 = !DILocation(line: 485, column: 3, scope: !1238)
!1243 = !DILocation(line: 484, column: 20, scope: !1160)
!1244 = !DILocation(line: 484, column: 13, scope: !1160)
!1245 = !DILocation(line: 484, column: 18, scope: !1160)
!1246 = !DILocation(line: 485, column: 20, scope: !1160)
!1247 = !DILocation(line: 485, column: 13, scope: !1160)
!1248 = !DILocation(line: 485, column: 18, scope: !1160)
!1249 = !DILocation(line: 490, column: 3, scope: !1160)
!1250 = distinct !DISubprogram(name: "parent", scope: !147, file: !147, line: 514, type: !1251, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1148, !23, !729}
!1253 = !DILocalVariable(name: "the_pipe", arg: 1, scope: !1250, file: !147, line: 514, type: !1148)
!1254 = !DILocation(line: 0, scope: !1250)
!1255 = !DILocalVariable(name: "argc", arg: 2, scope: !1250, file: !147, line: 514, type: !23)
!1256 = !DILocalVariable(name: "argv", arg: 3, scope: !1250, file: !147, line: 514, type: !729)
!1257 = !DILocalVariable(name: "stat_buf", scope: !1250, file: !147, line: 528, type: !29)
!1258 = !DILocation(line: 528, column: 15, scope: !1250)
!1259 = !DILocalVariable(name: "file", scope: !1250, file: !147, line: 517, type: !20)
!1260 = !DILocalVariable(name: "arg_error", scope: !1250, file: !147, line: 518, type: !23)
!1261 = !DILocation(line: 520, column: 15, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 534, column: 3)
!1263 = distinct !DILexicalBlock(scope: !1250, file: !147, line: 533, column: 3)
!1264 = !DILocalVariable(name: "arg_index", scope: !1250, file: !147, line: 519, type: !23)
!1265 = !DILocation(line: 524, column: 19, scope: !1262)
!1266 = !DILocation(line: 524, column: 3, scope: !1262)
!1267 = !DILocation(line: 525, column: 19, scope: !1262)
!1268 = !DILocation(line: 525, column: 3, scope: !1262)
!1269 = !DILocation(line: 526, column: 19, scope: !1262)
!1270 = !DILocation(line: 526, column: 3, scope: !1262)
!1271 = !DILocation(line: 528, column: 3, scope: !1262)
!1272 = !DILocalVariable(name: "pos", scope: !1250, file: !147, line: 520, type: !23)
!1273 = !DILocation(line: 537, column: 9, scope: !1262)
!1274 = !DILocalVariable(name: "tmp", scope: !1250, file: !147, line: 522, type: !15)
!1275 = !DILocalVariable(name: "ispell_version", scope: !1250, file: !147, line: 521, type: !15)
!1276 = !DILocation(line: 538, column: 13, scope: !1262)
!1277 = !DILocalVariable(name: "tmp___0", scope: !1250, file: !147, line: 524, type: !15)
!1278 = !DILocalVariable(name: "str", scope: !1250, file: !147, line: 523, type: !15)
!1279 = !DILocation(line: 540, column: 51, scope: !1262)
!1280 = !DILocation(line: 540, column: 13, scope: !1262)
!1281 = !DILocalVariable(name: "tmp___1", scope: !1250, file: !147, line: 525, type: !23)
!1282 = !DILocation(line: 540, column: 15, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 540, column: 7)
!1284 = !DILocation(line: 540, column: 7, scope: !1263)
!1285 = !DILocation(line: 541, column: 5, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !147, line: 541, column: 5)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !147, line: 540, column: 21)
!1288 = !DILocation(line: 543, column: 3, scope: !1287)
!1289 = !DILocation(line: 543, column: 3, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 544, column: 3)
!1291 = !DILocation(line: 0, scope: !1263)
!1292 = !DILocation(line: 543, column: 13, scope: !1290)
!1293 = !DILocation(line: 543, column: 15, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !147, line: 545, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !147, line: 543, column: 13)
!1296 = !DILocalVariable(name: "tmp___2", scope: !1250, file: !147, line: 526, type: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1300 = !DILocation(line: 543, column: 25, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !147, line: 543, column: 9)
!1302 = !DILocation(line: 543, column: 49, scope: !1301)
!1303 = !DILocation(line: 543, column: 53, scope: !1301)
!1304 = !DILocation(line: 543, column: 42, scope: !1301)
!1305 = !DILocation(line: 543, column: 36, scope: !1301)
!1306 = !DILocation(line: 543, column: 34, scope: !1301)
!1307 = !DILocation(line: 543, column: 23, scope: !1301)
!1308 = !DILocation(line: 543, column: 9, scope: !1301)
!1309 = !DILocation(line: 543, column: 61, scope: !1301)
!1310 = !DILocation(line: 543, column: 9, scope: !1295)
!1311 = !DILocation(line: 543, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1301, file: !147, line: 543, column: 69)
!1313 = !DILocation(line: 543, column: 24, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1301, file: !147, line: 543, column: 9)
!1315 = !DILocation(line: 543, column: 16, scope: !1314)
!1316 = !DILocation(line: 543, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !147, line: 543, column: 30)
!1318 = distinct !{!1318, !1289, !1319}
!1319 = !DILocation(line: 544, column: 3, scope: !1290)
!1320 = !DILocation(line: 544, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 547, column: 3)
!1322 = !DILocation(line: 544, column: 13, scope: !1321)
!1323 = !DILocation(line: 544, column: 22, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !147, line: 544, column: 9)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !147, line: 544, column: 13)
!1326 = !DILocation(line: 544, column: 26, scope: !1324)
!1327 = !DILocation(line: 544, column: 15, scope: !1324)
!1328 = !DILocation(line: 544, column: 9, scope: !1324)
!1329 = !DILocation(line: 544, column: 33, scope: !1324)
!1330 = !DILocation(line: 544, column: 9, scope: !1325)
!1331 = !DILocation(line: 544, column: 26, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !147, line: 544, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !147, line: 544, column: 40)
!1334 = !DILocation(line: 544, column: 18, scope: !1332)
!1335 = !DILocation(line: 544, column: 11, scope: !1333)
!1336 = !DILocation(line: 544, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !147, line: 544, column: 32)
!1338 = !DILocation(line: 546, column: 5, scope: !1333)
!1339 = !DILocation(line: 544, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1324, file: !147, line: 546, column: 12)
!1341 = !DILocation(line: 545, column: 41, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1325, file: !147, line: 546, column: 5)
!1343 = !DILocation(line: 545, column: 45, scope: !1342)
!1344 = !DILocation(line: 545, column: 34, scope: !1342)
!1345 = !DILocation(line: 545, column: 5, scope: !1342)
!1346 = !DILocation(line: 544, column: 9, scope: !1342)
!1347 = distinct !{!1347, !1320, !1348}
!1348 = !DILocation(line: 546, column: 3, scope: !1321)
!1349 = !DILocation(line: 547, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 547, column: 7)
!1351 = !DILocation(line: 547, column: 7, scope: !1263)
!1352 = !DILocation(line: 549, column: 15, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !147, line: 548, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !147, line: 547, column: 28)
!1355 = !DILocalVariable(name: "tmp___3", scope: !1250, file: !147, line: 527, type: !20)
!1356 = !DILocation(line: 549, column: 72, scope: !1353)
!1357 = !DILocation(line: 549, column: 5, scope: !1353)
!1358 = !DILocation(line: 551, column: 5, scope: !1353)
!1359 = !DILocation(line: 555, column: 10, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 554, column: 3)
!1361 = !DILocation(line: 557, column: 12, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 557, column: 7)
!1363 = !DILocation(line: 557, column: 7, scope: !1263)
!1364 = !DILocation(line: 558, column: 25, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !147, line: 558, column: 5)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !147, line: 557, column: 18)
!1367 = !DILocation(line: 558, column: 5, scope: !1365)
!1368 = !DILocation(line: 560, column: 3, scope: !1366)
!1369 = !DILocation(line: 560, column: 3, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 561, column: 3)
!1371 = !DILocalVariable(name: "stream", scope: !1250, file: !147, line: 516, type: !72)
!1372 = !DILocation(line: 560, column: 13, scope: !1370)
!1373 = !DILocation(line: 560, column: 22, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !147, line: 560, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !147, line: 560, column: 13)
!1376 = !DILocation(line: 560, column: 9, scope: !1375)
!1377 = !DILocation(line: 560, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !147, line: 560, column: 31)
!1379 = !DILocation(line: 564, column: 19, scope: !1375)
!1380 = !DILocation(line: 564, column: 12, scope: !1375)
!1381 = !DILocation(line: 566, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !147, line: 566, column: 9)
!1383 = !DILocation(line: 566, column: 15, scope: !1382)
!1384 = !DILocation(line: 566, column: 9, scope: !1382)
!1385 = !DILocation(line: 566, column: 27, scope: !1382)
!1386 = !DILocation(line: 566, column: 9, scope: !1375)
!1387 = !DILocation(line: 566, column: 24, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !147, line: 566, column: 11)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !147, line: 566, column: 34)
!1390 = !DILocation(line: 566, column: 17, scope: !1388)
!1391 = !DILocation(line: 566, column: 11, scope: !1388)
!1392 = !DILocation(line: 566, column: 29, scope: !1388)
!1393 = !DILocation(line: 566, column: 11, scope: !1389)
!1394 = !DILocation(line: 568, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !147, line: 568, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !147, line: 566, column: 35)
!1397 = !DILocation(line: 568, column: 13, scope: !1396)
!1398 = !DILocation(line: 570, column: 22, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !147, line: 568, column: 27)
!1400 = !DILocation(line: 571, column: 20, scope: !1399)
!1401 = !DILocation(line: 572, column: 9, scope: !1399)
!1402 = !DILocation(line: 573, column: 7, scope: !1396)
!1403 = !DILocation(line: 566, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1388, file: !147, line: 573, column: 14)
!1405 = !DILocation(line: 568, column: 5, scope: !1389)
!1406 = !DILocation(line: 568, column: 12, scope: !1382)
!1407 = !DILocation(line: 578, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !147, line: 570, column: 7)
!1409 = distinct !DILexicalBlock(scope: !1382, file: !147, line: 568, column: 12)
!1410 = !DILocalVariable(name: "tmp___5", scope: !1250, file: !147, line: 530, type: !23)
!1411 = !DILocation(line: 578, column: 19, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !147, line: 578, column: 11)
!1413 = !DILocation(line: 578, column: 11, scope: !1409)
!1414 = !DILocation(line: 580, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !147, line: 579, column: 9)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !147, line: 578, column: 26)
!1417 = !DILocalVariable(name: "tmp___4", scope: !1250, file: !147, line: 529, type: !71)
!1418 = !DILocation(line: 580, column: 22, scope: !1415)
!1419 = !DILocation(line: 580, column: 9, scope: !1415)
!1420 = !DILocation(line: 581, column: 19, scope: !1415)
!1421 = !DILocation(line: 582, column: 9, scope: !1416)
!1422 = !DILocation(line: 584, column: 21, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1409, file: !147, line: 584, column: 11)
!1424 = !DILocation(line: 584, column: 29, scope: !1423)
!1425 = !DILocation(line: 584, column: 39, scope: !1423)
!1426 = !DILocation(line: 584, column: 11, scope: !1409)
!1427 = !DILocation(line: 586, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !147, line: 585, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !147, line: 584, column: 50)
!1430 = !DILocation(line: 587, column: 19, scope: !1428)
!1431 = !DILocation(line: 588, column: 9, scope: !1429)
!1432 = !DILocation(line: 591, column: 16, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1409, file: !147, line: 590, column: 7)
!1434 = !DILocation(line: 592, column: 13, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1409, file: !147, line: 592, column: 11)
!1436 = !DILocation(line: 592, column: 11, scope: !1409)
!1437 = !DILocation(line: 594, column: 19, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !147, line: 593, column: 9)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !147, line: 592, column: 21)
!1440 = !DILocalVariable(name: "tmp___6", scope: !1250, file: !147, line: 531, type: !71)
!1441 = !DILocation(line: 594, column: 22, scope: !1438)
!1442 = !DILocation(line: 594, column: 9, scope: !1438)
!1443 = !DILocation(line: 597, column: 7, scope: !1439)
!1444 = !DILocation(line: 0, scope: !1375)
!1445 = !DILocation(line: 562, column: 15, scope: !1375)
!1446 = !DILocation(line: 599, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1375, file: !147, line: 599, column: 9)
!1448 = !DILocation(line: 599, column: 9, scope: !1375)
!1449 = !DILocation(line: 600, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !147, line: 600, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !147, line: 599, column: 22)
!1452 = !DILocation(line: 602, column: 5, scope: !1451)
!1453 = !DILocation(line: 602, column: 15, scope: !1375)
!1454 = distinct !{!1454, !1369, !1455}
!1455 = !DILocation(line: 603, column: 3, scope: !1370)
!1456 = !DILocation(line: 604, column: 3, scope: !1263)
!1457 = distinct !DISubprogram(name: "run_ispell_in_child", scope: !147, file: !147, line: 610, type: !1146, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1458 = !DILocalVariable(name: "the_pipe", arg: 1, scope: !1457, file: !147, line: 610, type: !1148)
!1459 = !DILocation(line: 0, scope: !1457)
!1460 = !DILocation(line: 614, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 626, column: 3)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !147, line: 625, column: 3)
!1463 = !DILocation(line: 614, column: 3, scope: !1461)
!1464 = !DILocation(line: 615, column: 19, scope: !1461)
!1465 = !DILocation(line: 615, column: 3, scope: !1461)
!1466 = !DILocation(line: 616, column: 19, scope: !1461)
!1467 = !DILocation(line: 616, column: 3, scope: !1461)
!1468 = !DILocation(line: 618, column: 17, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 618, column: 7)
!1470 = !DILocation(line: 618, column: 21, scope: !1469)
!1471 = !DILocation(line: 618, column: 7, scope: !1462)
!1472 = !DILocation(line: 619, column: 30, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !147, line: 619, column: 5)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !147, line: 618, column: 27)
!1475 = !DILocation(line: 619, column: 15, scope: !1473)
!1476 = !DILocalVariable(name: "tmp___0", scope: !1457, file: !147, line: 613, type: !23)
!1477 = !DILocation(line: 619, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !147, line: 619, column: 9)
!1479 = !DILocation(line: 619, column: 9, scope: !1474)
!1480 = !DILocation(line: 620, column: 13, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !147, line: 620, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !147, line: 619, column: 23)
!1483 = !DILocalVariable(name: "tmp", scope: !1457, file: !147, line: 612, type: !71)
!1484 = !DILocation(line: 620, column: 20, scope: !1481)
!1485 = !DILocation(line: 620, column: 7, scope: !1481)
!1486 = !DILocation(line: 622, column: 5, scope: !1482)
!1487 = !DILocation(line: 623, column: 3, scope: !1474)
!1488 = !DILocation(line: 622, column: 17, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 622, column: 7)
!1490 = !DILocation(line: 622, column: 22, scope: !1489)
!1491 = !DILocation(line: 622, column: 7, scope: !1462)
!1492 = !DILocation(line: 623, column: 30, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !147, line: 623, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !147, line: 622, column: 28)
!1495 = !DILocation(line: 623, column: 15, scope: !1493)
!1496 = !DILocalVariable(name: "tmp___2", scope: !1457, file: !147, line: 615, type: !23)
!1497 = !DILocation(line: 623, column: 17, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !147, line: 623, column: 9)
!1499 = !DILocation(line: 623, column: 9, scope: !1494)
!1500 = !DILocation(line: 624, column: 17, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !147, line: 624, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !147, line: 623, column: 23)
!1503 = !DILocalVariable(name: "tmp___1", scope: !1457, file: !147, line: 614, type: !71)
!1504 = !DILocation(line: 624, column: 20, scope: !1501)
!1505 = !DILocation(line: 624, column: 7, scope: !1501)
!1506 = !DILocation(line: 626, column: 5, scope: !1502)
!1507 = !DILocation(line: 627, column: 3, scope: !1494)
!1508 = !DILocation(line: 626, column: 17, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 626, column: 7)
!1510 = !DILocation(line: 626, column: 22, scope: !1509)
!1511 = !DILocation(line: 626, column: 7, scope: !1462)
!1512 = !DILocation(line: 627, column: 30, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !147, line: 627, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !147, line: 626, column: 28)
!1515 = !DILocation(line: 627, column: 15, scope: !1513)
!1516 = !DILocalVariable(name: "tmp___4", scope: !1457, file: !147, line: 617, type: !23)
!1517 = !DILocation(line: 627, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !147, line: 627, column: 9)
!1519 = !DILocation(line: 627, column: 9, scope: !1514)
!1520 = !DILocation(line: 628, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !147, line: 628, column: 7)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !147, line: 627, column: 23)
!1523 = !DILocalVariable(name: "tmp___3", scope: !1457, file: !147, line: 616, type: !71)
!1524 = !DILocation(line: 628, column: 20, scope: !1521)
!1525 = !DILocation(line: 628, column: 7, scope: !1521)
!1526 = !DILocation(line: 630, column: 5, scope: !1522)
!1527 = !DILocation(line: 631, column: 3, scope: !1514)
!1528 = !DILocation(line: 630, column: 23, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 630, column: 7)
!1530 = !DILocation(line: 630, column: 7, scope: !1529)
!1531 = !DILocation(line: 630, column: 34, scope: !1529)
!1532 = !DILocation(line: 630, column: 7, scope: !1462)
!1533 = !DILocation(line: 631, column: 37, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 631, column: 5)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !147, line: 630, column: 66)
!1536 = !DILocation(line: 631, column: 72, scope: !1534)
!1537 = !DILocation(line: 631, column: 15, scope: !1534)
!1538 = !DILocalVariable(name: "tmp___6", scope: !1457, file: !147, line: 619, type: !23)
!1539 = !DILocation(line: 631, column: 17, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 631, column: 9)
!1541 = !DILocation(line: 631, column: 9, scope: !1535)
!1542 = !DILocation(line: 633, column: 17, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !147, line: 632, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !147, line: 631, column: 22)
!1545 = !DILocalVariable(name: "tmp___5", scope: !1457, file: !147, line: 618, type: !71)
!1546 = !DILocation(line: 633, column: 20, scope: !1543)
!1547 = !DILocation(line: 633, column: 52, scope: !1543)
!1548 = !DILocation(line: 633, column: 7, scope: !1543)
!1549 = !DILocation(line: 635, column: 5, scope: !1544)
!1550 = !DILocation(line: 636, column: 3, scope: !1535)
!1551 = !DILocation(line: 635, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 635, column: 7)
!1553 = !DILocation(line: 635, column: 7, scope: !1462)
!1554 = !DILocation(line: 636, column: 37, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !147, line: 636, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !147, line: 635, column: 16)
!1557 = !DILocation(line: 636, column: 15, scope: !1555)
!1558 = !DILocalVariable(name: "tmp___8", scope: !1457, file: !147, line: 621, type: !23)
!1559 = !DILocation(line: 636, column: 17, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !147, line: 636, column: 9)
!1561 = !DILocation(line: 636, column: 9, scope: !1556)
!1562 = !DILocation(line: 638, column: 17, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !147, line: 637, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !147, line: 636, column: 22)
!1565 = !DILocalVariable(name: "tmp___7", scope: !1457, file: !147, line: 620, type: !71)
!1566 = !DILocation(line: 638, column: 20, scope: !1563)
!1567 = !DILocation(line: 638, column: 52, scope: !1563)
!1568 = !DILocation(line: 638, column: 7, scope: !1563)
!1569 = !DILocation(line: 640, column: 5, scope: !1564)
!1570 = !DILocation(line: 641, column: 3, scope: !1556)
!1571 = !DILocation(line: 640, column: 36, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 642, column: 3)
!1573 = !DILocation(line: 640, column: 14, scope: !1572)
!1574 = !DILocalVariable(name: "tmp___10", scope: !1457, file: !147, line: 623, type: !23)
!1575 = !DILocation(line: 640, column: 16, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1462, file: !147, line: 640, column: 7)
!1577 = !DILocation(line: 640, column: 7, scope: !1462)
!1578 = !DILocation(line: 641, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !147, line: 641, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !147, line: 640, column: 21)
!1581 = !DILocalVariable(name: "tmp___9", scope: !1457, file: !147, line: 622, type: !71)
!1582 = !DILocation(line: 641, column: 18, scope: !1579)
!1583 = !DILocation(line: 641, column: 50, scope: !1579)
!1584 = !DILocation(line: 641, column: 5, scope: !1579)
!1585 = !DILocation(line: 643, column: 3, scope: !1580)
!1586 = !DILocation(line: 642, column: 3, scope: !1462)
!1587 = distinct !DISubprogram(name: "read_file", scope: !147, file: !147, line: 327, type: !1588, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1148, !72, !20}
!1590 = !DILocalVariable(name: "the_pipe", arg: 1, scope: !1587, file: !147, line: 327, type: !1148)
!1591 = !DILocation(line: 0, scope: !1587)
!1592 = !DILocalVariable(name: "stream", arg: 2, scope: !1587, file: !147, line: 327, type: !72)
!1593 = !DILocalVariable(name: "file", arg: 3, scope: !1587, file: !147, line: 327, type: !20)
!1594 = !DILocation(line: 330, column: 9, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !147, line: 342, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !147, line: 341, column: 3)
!1597 = !DILocalVariable(name: "tmp", scope: !1587, file: !147, line: 330, type: !15)
!1598 = !DILocalVariable(name: "str", scope: !1587, file: !147, line: 329, type: !15)
!1599 = !DILocalVariable(name: "add_line_ret", scope: !1587, file: !147, line: 331, type: !5)
!1600 = !DILocalVariable(name: "line", scope: !1587, file: !147, line: 332, type: !23)
!1601 = !DILocation(line: 334, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !147, line: 334, column: 3)
!1603 = !DILocation(line: 0, scope: !1596)
!1604 = !DILocation(line: 334, column: 13, scope: !1602)
!1605 = !DILocation(line: 336, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 336, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !147, line: 334, column: 13)
!1608 = !DILocation(line: 338, column: 5, scope: !1606)
!1609 = !DILocation(line: 339, column: 15, scope: !1606)
!1610 = !DILocalVariable(name: "tmp___0", scope: !1587, file: !147, line: 333, type: !23)
!1611 = !DILocation(line: 340, column: 10, scope: !1606)
!1612 = !DILocation(line: 342, column: 37, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 342, column: 9)
!1614 = !DILocation(line: 342, column: 9, scope: !1607)
!1615 = !DILocation(line: 343, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !147, line: 343, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !147, line: 342, column: 44)
!1618 = !DILocalVariable(name: "tmp___1", scope: !1587, file: !147, line: 334, type: !71)
!1619 = !DILocation(line: 343, column: 20, scope: !1616)
!1620 = !DILocation(line: 343, column: 7, scope: !1616)
!1621 = !DILocation(line: 345, column: 5, scope: !1617)
!1622 = !DILocation(line: 344, column: 37, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 344, column: 9)
!1624 = !DILocation(line: 344, column: 9, scope: !1607)
!1625 = !DILocation(line: 344, column: 18, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !147, line: 344, column: 11)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !147, line: 344, column: 44)
!1628 = !DILocation(line: 344, column: 13, scope: !1626)
!1629 = !DILocation(line: 344, column: 11, scope: !1627)
!1630 = !DILocation(line: 345, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !147, line: 344, column: 23)
!1632 = !DILocation(line: 347, column: 5, scope: !1627)
!1633 = !DILocation(line: 348, column: 22, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 348, column: 9)
!1635 = !DILocation(line: 348, column: 34, scope: !1634)
!1636 = !DILocation(line: 348, column: 38, scope: !1634)
!1637 = !DILocation(line: 348, column: 26, scope: !1634)
!1638 = !DILocation(line: 348, column: 15, scope: !1634)
!1639 = !DILocation(line: 348, column: 9, scope: !1634)
!1640 = !DILocation(line: 348, column: 44, scope: !1634)
!1641 = !DILocation(line: 348, column: 9, scope: !1607)
!1642 = !DILocation(line: 349, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !147, line: 349, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1634, file: !147, line: 348, column: 51)
!1645 = !DILocation(line: 351, column: 5, scope: !1644)
!1646 = !DILocation(line: 351, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 352, column: 5)
!1648 = !DILocalVariable(name: "tmp___3", scope: !1587, file: !147, line: 336, type: !20)
!1649 = !DILocation(line: 351, column: 31, scope: !1647)
!1650 = !DILocation(line: 351, column: 76, scope: !1647)
!1651 = !DILocalVariable(name: "tmp___4", scope: !1587, file: !147, line: 337, type: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !751, line: 110, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !34, line: 182, baseType: !23)
!1654 = !DILocation(line: 351, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 351, column: 9)
!1656 = !DILocation(line: 351, column: 17, scope: !1655)
!1657 = !DILocation(line: 351, column: 9, scope: !1607)
!1658 = !DILocation(line: 352, column: 17, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !147, line: 352, column: 7)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !147, line: 351, column: 30)
!1661 = !DILocalVariable(name: "tmp___2", scope: !1587, file: !147, line: 335, type: !71)
!1662 = !DILocation(line: 352, column: 20, scope: !1659)
!1663 = !DILocation(line: 352, column: 7, scope: !1659)
!1664 = !DILocation(line: 354, column: 5, scope: !1660)
!1665 = !DILocation(line: 354, column: 5, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 355, column: 5)
!1667 = !DILocation(line: 355, column: 5, scope: !1666)
!1668 = !DILocation(line: 356, column: 5, scope: !1666)
!1669 = !DILocation(line: 358, column: 37, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1607, file: !147, line: 358, column: 9)
!1671 = !DILocation(line: 358, column: 9, scope: !1607)
!1672 = !DILocation(line: 359, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !147, line: 358, column: 44)
!1674 = distinct !{!1674, !1601, !1675}
!1675 = !DILocation(line: 361, column: 3, scope: !1602)
!1676 = !DILocation(line: 362, column: 13, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1596, file: !147, line: 364, column: 3)
!1678 = !DILocalVariable(name: "tmp___6", scope: !1587, file: !147, line: 339, type: !23)
!1679 = !DILocation(line: 362, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1596, file: !147, line: 362, column: 7)
!1681 = !DILocation(line: 362, column: 7, scope: !1596)
!1682 = !DILocation(line: 363, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !147, line: 363, column: 5)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !147, line: 362, column: 22)
!1685 = !DILocalVariable(name: "tmp___5", scope: !1587, file: !147, line: 338, type: !71)
!1686 = !DILocation(line: 363, column: 18, scope: !1683)
!1687 = !DILocation(line: 363, column: 5, scope: !1683)
!1688 = !DILocation(line: 365, column: 3, scope: !1684)
!1689 = !DILocation(line: 367, column: 1, scope: !1587)
!1690 = distinct !DISubprogram(name: "read_ispell_errors", scope: !147, file: !147, line: 428, type: !1146, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1691 = !DILocalVariable(name: "the_pipe", arg: 1, scope: !1690, file: !147, line: 428, type: !1148)
!1692 = !DILocation(line: 0, scope: !1690)
!1693 = !DILocalVariable(name: "time_out", scope: !1690, file: !147, line: 430, type: !136)
!1694 = !DILocation(line: 430, column: 18, scope: !1690)
!1695 = !DILocation(line: 432, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !147, line: 440, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !147, line: 439, column: 3)
!1698 = !DILocalVariable(name: "tmp", scope: !1690, file: !147, line: 432, type: !15)
!1699 = !DILocalVariable(name: "str", scope: !1690, file: !147, line: 431, type: !15)
!1700 = !DILocation(line: 434, column: 12, scope: !1696)
!1701 = !DILocation(line: 434, column: 20, scope: !1696)
!1702 = !DILocation(line: 434, column: 30, scope: !1696)
!1703 = !DILocation(line: 434, column: 19, scope: !1696)
!1704 = !DILocation(line: 436, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1697, file: !147, line: 436, column: 3)
!1706 = !DILocation(line: 0, scope: !1697)
!1707 = !DILocation(line: 436, column: 13, scope: !1705)
!1708 = !DILocation(line: 436, column: 68, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 438, column: 5)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !147, line: 436, column: 13)
!1711 = !DILocation(line: 436, column: 15, scope: !1709)
!1712 = !DILocalVariable(name: "tmp___4", scope: !1690, file: !147, line: 437, type: !23)
!1713 = !DILocation(line: 436, column: 20, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 436, column: 9)
!1715 = !DILocation(line: 436, column: 9, scope: !1710)
!1716 = !DILocation(line: 436, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !147, line: 436, column: 27)
!1718 = !DILocation(line: 439, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 438, column: 5)
!1720 = !DILocation(line: 441, column: 53, scope: !1719)
!1721 = !DILocation(line: 441, column: 15, scope: !1719)
!1722 = !DILocalVariable(name: "tmp___0", scope: !1690, file: !147, line: 433, type: !23)
!1723 = !DILocation(line: 441, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 441, column: 9)
!1725 = !DILocation(line: 441, column: 9, scope: !1710)
!1726 = !DILocation(line: 443, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !147, line: 442, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !147, line: 441, column: 23)
!1729 = !DILocation(line: 445, column: 5, scope: !1728)
!1730 = !DILocation(line: 446, column: 10, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 446, column: 5)
!1732 = !DILocation(line: 446, column: 14, scope: !1731)
!1733 = !DILocation(line: 447, column: 12, scope: !1731)
!1734 = !DILocation(line: 447, column: 24, scope: !1731)
!1735 = !DILocation(line: 447, column: 28, scope: !1731)
!1736 = !DILocation(line: 447, column: 16, scope: !1731)
!1737 = !DILocation(line: 447, column: 34, scope: !1731)
!1738 = !DILocation(line: 449, column: 15, scope: !1731)
!1739 = !DILocalVariable(name: "tmp___2", scope: !1690, file: !147, line: 435, type: !13)
!1740 = !DILocation(line: 449, column: 43, scope: !1731)
!1741 = !DILocalVariable(name: "tmp___3", scope: !1690, file: !147, line: 436, type: !23)
!1742 = !DILocation(line: 449, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 449, column: 9)
!1744 = !DILocation(line: 449, column: 9, scope: !1710)
!1745 = !DILocation(line: 450, column: 17, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !147, line: 450, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !147, line: 449, column: 20)
!1748 = !DILocalVariable(name: "tmp___1", scope: !1690, file: !147, line: 434, type: !13)
!1749 = !DILocation(line: 450, column: 47, scope: !1746)
!1750 = !DILocation(line: 450, column: 51, scope: !1746)
!1751 = !DILocation(line: 450, column: 7, scope: !1746)
!1752 = !DILocation(line: 452, column: 5, scope: !1747)
!1753 = !DILocation(line: 453, column: 38, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1710, file: !147, line: 453, column: 5)
!1755 = !DILocation(line: 454, column: 13, scope: !1754)
!1756 = !DILocation(line: 454, column: 31, scope: !1754)
!1757 = !DILocation(line: 453, column: 5, scope: !1754)
!1758 = distinct !{!1758, !1704, !1759}
!1759 = !DILocation(line: 456, column: 3, scope: !1705)
!1760 = !DILocation(line: 455, column: 3, scope: !1697)
!1761 = distinct !DISubprogram(name: "read_ispell", scope: !147, file: !147, line: 372, type: !1762, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1148, !20, !23}
!1764 = !DILocalVariable(name: "ispell_pipe", arg: 1, scope: !1761, file: !147, line: 372, type: !1148)
!1765 = !DILocation(line: 0, scope: !1761)
!1766 = !DILocalVariable(name: "file", arg: 2, scope: !1761, file: !147, line: 372, type: !20)
!1767 = !DILocalVariable(name: "line", arg: 3, scope: !1761, file: !147, line: 372, type: !23)
!1768 = !DILocation(line: 375, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !147, line: 381, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !147, line: 380, column: 3)
!1771 = !DILocalVariable(name: "tmp", scope: !1761, file: !147, line: 375, type: !15)
!1772 = !DILocalVariable(name: "str", scope: !1761, file: !147, line: 374, type: !15)
!1773 = !DILocation(line: 377, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !147, line: 377, column: 3)
!1775 = !DILocation(line: 0, scope: !1770)
!1776 = !DILocation(line: 377, column: 13, scope: !1774)
!1777 = !DILocation(line: 379, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 379, column: 5)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !147, line: 377, column: 13)
!1780 = !DILocation(line: 381, column: 56, scope: !1778)
!1781 = !DILocation(line: 381, column: 15, scope: !1778)
!1782 = !DILocalVariable(name: "tmp___0", scope: !1761, file: !147, line: 376, type: !23)
!1783 = !DILocation(line: 381, column: 17, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 381, column: 9)
!1785 = !DILocation(line: 381, column: 9, scope: !1779)
!1786 = !DILocation(line: 382, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !147, line: 382, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !147, line: 381, column: 23)
!1789 = !DILocation(line: 386, column: 14, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 386, column: 9)
!1791 = !DILocation(line: 386, column: 18, scope: !1790)
!1792 = !DILocation(line: 386, column: 9, scope: !1779)
!1793 = !DILocation(line: 386, column: 24, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !147, line: 386, column: 11)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !147, line: 386, column: 24)
!1796 = !DILocation(line: 386, column: 28, scope: !1794)
!1797 = !DILocation(line: 386, column: 17, scope: !1794)
!1798 = !DILocation(line: 386, column: 11, scope: !1794)
!1799 = !DILocation(line: 386, column: 33, scope: !1794)
!1800 = !DILocation(line: 386, column: 11, scope: !1795)
!1801 = !DILocation(line: 387, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1794, file: !147, line: 386, column: 40)
!1803 = !DILocation(line: 389, column: 5, scope: !1795)
!1804 = !DILocation(line: 390, column: 22, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 390, column: 9)
!1806 = !DILocation(line: 390, column: 26, scope: !1805)
!1807 = !DILocation(line: 390, column: 15, scope: !1805)
!1808 = !DILocation(line: 390, column: 9, scope: !1805)
!1809 = !DILocation(line: 390, column: 31, scope: !1805)
!1810 = !DILocation(line: 390, column: 9, scope: !1779)
!1811 = !DILocation(line: 392, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1805, file: !147, line: 390, column: 38)
!1813 = !DILocation(line: 390, column: 22, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !147, line: 390, column: 9)
!1815 = !DILocation(line: 390, column: 26, scope: !1814)
!1816 = !DILocation(line: 390, column: 15, scope: !1814)
!1817 = !DILocation(line: 390, column: 9, scope: !1814)
!1818 = !DILocation(line: 390, column: 31, scope: !1814)
!1819 = !DILocation(line: 392, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !147, line: 390, column: 38)
!1821 = !DILocation(line: 390, column: 22, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1814, file: !147, line: 390, column: 9)
!1823 = !DILocation(line: 390, column: 26, scope: !1822)
!1824 = !DILocation(line: 390, column: 15, scope: !1822)
!1825 = !DILocation(line: 390, column: 9, scope: !1822)
!1826 = !DILocation(line: 390, column: 31, scope: !1822)
!1827 = !DILocation(line: 392, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !147, line: 390, column: 38)
!1829 = !DILocation(line: 395, column: 22, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 395, column: 9)
!1831 = !DILocation(line: 395, column: 26, scope: !1830)
!1832 = !DILocation(line: 395, column: 15, scope: !1830)
!1833 = !DILocation(line: 395, column: 9, scope: !1830)
!1834 = !DILocation(line: 395, column: 31, scope: !1830)
!1835 = !DILocation(line: 395, column: 9, scope: !1779)
!1836 = !DILocation(line: 395, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !147, line: 395, column: 38)
!1838 = !DILocation(line: 395, column: 22, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1830, file: !147, line: 395, column: 9)
!1840 = !DILocation(line: 395, column: 26, scope: !1839)
!1841 = !DILocation(line: 395, column: 15, scope: !1839)
!1842 = !DILocation(line: 395, column: 9, scope: !1839)
!1843 = !DILocation(line: 395, column: 31, scope: !1839)
!1844 = !DILocation(line: 395, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !147, line: 395, column: 38)
!1846 = !DILocation(line: 395, column: 22, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !147, line: 395, column: 9)
!1848 = !DILocation(line: 395, column: 26, scope: !1847)
!1849 = !DILocation(line: 395, column: 15, scope: !1847)
!1850 = !DILocation(line: 395, column: 9, scope: !1847)
!1851 = !DILocation(line: 395, column: 31, scope: !1847)
!1852 = !DILocation(line: 395, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !147, line: 395, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !147, line: 395, column: 38)
!1855 = !DILocation(line: 395, column: 11, scope: !1854)
!1856 = !DILocation(line: 395, column: 20, scope: !1853)
!1857 = !DILocation(line: 400, column: 13, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !147, line: 400, column: 13)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !147, line: 395, column: 20)
!1860 = !DILocation(line: 400, column: 13, scope: !1859)
!1861 = !DILocation(line: 402, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !147, line: 401, column: 11)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !147, line: 400, column: 31)
!1864 = !DILocation(line: 403, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !147, line: 403, column: 15)
!1866 = !DILocation(line: 403, column: 15, scope: !1863)
!1867 = !DILocation(line: 404, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !147, line: 404, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !147, line: 403, column: 31)
!1870 = !DILocation(line: 406, column: 11, scope: !1869)
!1871 = !DILocation(line: 407, column: 9, scope: !1863)
!1872 = !DILocation(line: 406, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1859, file: !147, line: 406, column: 13)
!1874 = !DILocation(line: 406, column: 13, scope: !1859)
!1875 = !DILocation(line: 407, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !147, line: 407, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !147, line: 406, column: 27)
!1878 = !DILocation(line: 409, column: 9, scope: !1877)
!1879 = !DILocalVariable(name: "pos", scope: !1761, file: !147, line: 377, type: !23)
!1880 = !DILocation(line: 409, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1859, file: !147, line: 410, column: 9)
!1882 = !DILocation(line: 0, scope: !1859)
!1883 = !DILocation(line: 409, column: 19, scope: !1881)
!1884 = !DILocation(line: 409, column: 31, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !147, line: 409, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !147, line: 409, column: 19)
!1887 = !DILocation(line: 409, column: 35, scope: !1885)
!1888 = !DILocation(line: 409, column: 24, scope: !1885)
!1889 = !DILocation(line: 409, column: 18, scope: !1885)
!1890 = !DILocation(line: 409, column: 42, scope: !1885)
!1891 = !DILocation(line: 409, column: 15, scope: !1886)
!1892 = !DILocation(line: 409, column: 13, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1885, file: !147, line: 409, column: 50)
!1894 = !DILocation(line: 410, column: 32, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1886, file: !147, line: 411, column: 11)
!1896 = !DILocation(line: 410, column: 36, scope: !1895)
!1897 = !DILocation(line: 410, column: 25, scope: !1895)
!1898 = !DILocation(line: 410, column: 19, scope: !1895)
!1899 = !DILocation(line: 410, column: 11, scope: !1895)
!1900 = !DILocation(line: 409, column: 15, scope: !1895)
!1901 = distinct !{!1901, !1880, !1902}
!1902 = !DILocation(line: 411, column: 9, scope: !1881)
!1903 = !DILocation(line: 411, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1859, file: !147, line: 414, column: 9)
!1905 = !DILocation(line: 413, column: 9, scope: !1859)
!1906 = !DILocation(line: 415, column: 5, scope: !1854)
!1907 = !DILocation(line: 416, column: 22, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 416, column: 9)
!1909 = !DILocation(line: 416, column: 26, scope: !1908)
!1910 = !DILocation(line: 416, column: 15, scope: !1908)
!1911 = !DILocation(line: 416, column: 9, scope: !1908)
!1912 = !DILocation(line: 416, column: 31, scope: !1908)
!1913 = !DILocation(line: 416, column: 9, scope: !1779)
!1914 = !DILocation(line: 416, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !147, line: 416, column: 11)
!1916 = distinct !DILexicalBlock(scope: !1908, file: !147, line: 416, column: 38)
!1917 = !DILocation(line: 416, column: 11, scope: !1916)
!1918 = !DILocation(line: 417, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !147, line: 416, column: 22)
!1920 = !DILocation(line: 419, column: 5, scope: !1916)
!1921 = !DILocation(line: 419, column: 15, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1779, file: !147, line: 420, column: 5)
!1923 = !DILocalVariable(name: "tmp___1", scope: !1761, file: !147, line: 378, type: !20)
!1924 = !DILocation(line: 419, column: 5, scope: !1922)
!1925 = distinct !{!1925, !1773, !1926}
!1926 = !DILocation(line: 421, column: 3, scope: !1774)
!1927 = !DILocation(line: 425, column: 1, scope: !1761)
!1928 = distinct !DISubprogram(name: "sig_pipe", scope: !147, file: !147, line: 494, type: !142, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1929 = !DILocalVariable(name: "signo", arg: 1, scope: !1928, file: !147, line: 494, type: !23)
!1930 = !DILocation(line: 0, scope: !1928)
!1931 = !DILocation(line: 497, column: 3, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !147, line: 499, column: 3)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !147, line: 498, column: 3)
!1934 = !DILocation(line: 498, column: 3, scope: !1933)
!1935 = distinct !DISubprogram(name: "sig_chld", scope: !147, file: !147, line: 502, type: !142, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1936 = !DILocalVariable(name: "signo", arg: 1, scope: !1935, file: !147, line: 502, type: !23)
!1937 = !DILocation(line: 0, scope: !1935)
!1938 = !DILocation(line: 505, column: 3, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !147, line: 507, column: 3)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !147, line: 506, column: 3)
!1941 = !DILocation(line: 506, column: 3, scope: !1940)
!1942 = distinct !DISubprogram(name: "error", scope: !189, file: !189, line: 284, type: !978, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1943 = !DILocalVariable(name: "status", arg: 1, scope: !1942, file: !189, line: 284, type: !23)
!1944 = !DILocation(line: 0, scope: !1942)
!1945 = !DILocalVariable(name: "errnum", arg: 2, scope: !1942, file: !189, line: 284, type: !23)
!1946 = !DILocalVariable(name: "message", arg: 3, scope: !1942, file: !189, line: 284, type: !26)
!1947 = !DILocalVariable(name: "args", scope: !1942, file: !189, line: 286, type: !985)
!1948 = !DILocation(line: 286, column: 11, scope: !1942)
!1949 = !DILocation(line: 289, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !189, line: 289, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !189, line: 289, column: 3)
!1952 = !DILocation(line: 289, column: 7, scope: !1951)
!1953 = !DILocation(line: 291, column: 12, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !189, line: 290, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !189, line: 289, column: 22)
!1956 = !DILocation(line: 291, column: 5, scope: !1954)
!1957 = !DILocation(line: 292, column: 38, scope: !1954)
!1958 = !DILocation(line: 293, column: 13, scope: !1954)
!1959 = !DILocation(line: 292, column: 5, scope: !1954)
!1960 = !DILocation(line: 295, column: 3, scope: !1955)
!1961 = !DILocation(line: 295, column: 3, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !189, line: 296, column: 3)
!1963 = !DILocation(line: 296, column: 37, scope: !1962)
!1964 = !DILocation(line: 297, column: 12, scope: !1962)
!1965 = !DILocation(line: 296, column: 3, scope: !1962)
!1966 = !DILocation(line: 297, column: 3, scope: !1962)
!1967 = !DILocation(line: 299, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1951, file: !189, line: 299, column: 7)
!1969 = !DILocation(line: 299, column: 7, scope: !1951)
!1970 = !DILocation(line: 300, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !189, line: 300, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !189, line: 299, column: 15)
!1973 = !DILocalVariable(name: "tmp", scope: !1942, file: !189, line: 287, type: !20)
!1974 = !DILocation(line: 300, column: 38, scope: !1971)
!1975 = !DILocation(line: 300, column: 5, scope: !1971)
!1976 = !DILocation(line: 303, column: 3, scope: !1972)
!1977 = !DILocation(line: 301, column: 18, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1951, file: !189, line: 304, column: 3)
!1979 = !DILocation(line: 301, column: 3, scope: !1978)
!1980 = !DILocation(line: 302, column: 10, scope: !1978)
!1981 = !DILocation(line: 302, column: 3, scope: !1978)
!1982 = !DILocation(line: 303, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1951, file: !189, line: 303, column: 7)
!1984 = !DILocation(line: 303, column: 7, scope: !1951)
!1985 = !DILocation(line: 304, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !189, line: 304, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !189, line: 303, column: 15)
!1988 = !DILocation(line: 305, column: 3, scope: !1951)
!1989 = distinct !DISubprogram(name: "xmalloc___0", scope: !147, file: !147, line: 687, type: !221, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !192)
!1990 = !DILocalVariable(name: "size", arg: 1, scope: !1989, file: !147, line: 687, type: !13)
!1991 = !DILocation(line: 0, scope: !1989)
!1992 = !DILocation(line: 690, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !147, line: 693, column: 3)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !147, line: 692, column: 3)
!1995 = !DILocalVariable(name: "tmp", scope: !1989, file: !147, line: 690, type: !25)
!1996 = !DILocalVariable(name: "ptr", scope: !1989, file: !147, line: 689, type: !25)
!1997 = !DILocation(line: 692, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !147, line: 692, column: 7)
!1999 = !DILocation(line: 692, column: 7, scope: !1994)
!2000 = !DILocation(line: 693, column: 5, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !147, line: 693, column: 5)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !147, line: 692, column: 14)
!2003 = !DILocation(line: 695, column: 3, scope: !2002)
!2004 = !DILocation(line: 694, column: 3, scope: !1994)
