; ModuleID = '/tmp/tmp.ll'
source_filename = "c/vtprint-2.0.2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.alist = type { i32, i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[5i\00", align 1
@ptr_on = global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), align 8, !dbg !0
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[4i\00", align 1
@ptr_off = global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), align 8, !dbg !98
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@termname = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), align 8, !dbg !101
@.str.4 = private unnamed_addr constant [16 x i8] c"/etc/vtprintcap\00", align 1
@libtermname = global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), align 8, !dbg !103
@.str.5 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@devname = global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), align 8, !dbg !105
@vtbasename = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), align 8, !dbg !107
@quiet = global i32 0, align 4, !dbg !109
@binary = global i32 0, align 4, !dbg !111
@ffeed = global i32 1, align 4, !dbg !113
@device = global i32 0, align 4, !dbg !115
@stripcr = global i32 0, align 4, !dbg !117
@addcr = global i32 0, align 4, !dbg !119
@builtin = global i32 0, align 4, !dbg !121
@forcenv = global i32 0, align 4, !dbg !123
@dowork = global i32 1, align 4, !dbg !125
@state_saved = global i32 0, align 4, !dbg !127
@outfile = common global %struct._IO_FILE* null, align 8, !dbg !135
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@oldstate = common global %struct.termios zeroinitializer, align 4, !dbg !129
@.str.7 = private unnamed_addr constant [7 x i8] c"hangup\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"terminate\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"keyboard stop\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\0ACaught %s signal!  Exiting vtprint.\0A\00", align 1
@optind = external global i32, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"hwlvdDbBcCeEfFnNqQT:tL:V:\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@optarg = external global i8*, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"vtprton\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"vtprtoff\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [100 x i8] c"Usage: %s [ -bBcCdDeEfFhlnNqQtvW ] [ -L vtprintcap ] [ -T termtype ] [ -V device ] [ filename... ]\0A\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"Usage: %s [ -dDeEhlqQNtvw ] [ -L vtprintcap ] [ -T termtype ] [ -V device ]\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\0APlease see the %s(%s) manual page for more\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"information about the meaning of these options.\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"\0A*** %s (v%s) ***\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"2.0.2\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Copyright 1993-1994, Garrett D'Amore\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Last revised %s.\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"October-25-1994\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"NO WARRANTY!  Use \22%s -w\22 for info.\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"Freely redistributable.  Use \22%s -l\22 for info.\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"%s: This program is provided entirely without\0A\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"%s: warranty!  The user agrees to indemnify the\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"%s: author from any claim of damage or loss that\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"%s: may result from the use of or inability to\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"%s: use this program.\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"%s: This program is copyrighted material.  The user\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"%s: is given the non-exclusive right to use, modify\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"%s: and redistribute this program or any derived\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"%s: work, subject to the following limitation:\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"%s: All copyright notices and warranty disclaimers\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"%s: must be left intact!  The user may not claim \0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"%s: credit for code written by the author.\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@on = internal global [1025 x i8] zeroinitializer, align 16, !dbg !137
@off = internal global [1025 x i8] zeroinitializer, align 16, !dbg !142
@.str.44 = private unnamed_addr constant [8 x i8] c"VTPRINT\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"%s: Out of memory!\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"%s: Parse error in %s, using builtin codes.\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"%s: Parse error in %s!\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"%s: Can't open %s, using builtin codes.\0A\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"%s: Can't open %s!\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"%s: Using %s control codes.\0A\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"%s: Terminal %s unknown, using builtin codes.\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"%s: Terminal %s unknown!\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"%s: INTERNAL ERROR!!\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"%s: Failed to open %s for writing!\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"%s: Using %s for output.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.57 = private unnamed_addr constant [32 x i8] c"%s: Using <stdout> for output.\0A\00", align 1
@newstate = common global %struct.termios zeroinitializer, align 4, !dbg !133
@.str.58 = private unnamed_addr constant [19 x i8] c"%s: Output flags: \00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"builtin \00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"binary \00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"formfeed \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"noCR \00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"addCR \00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.65 = private unnamed_addr constant [35 x i8] c"%s: Couldn't open %s for reading.\0A\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"%s: Printed <stdin>.\0A\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"%s: Printed %s.\0A\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"%s: Successfully printed %d file%s (%d specified).\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @save_termstate(i32 %fd, %struct.termios* %state) #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata %struct.termios* %state, metadata !157, metadata !DIExpression()), !dbg !156
  %call = call i32 @isatty(i32 %fd) #7, !dbg !158
  call void @llvm.dbg.value(metadata i32 %call, metadata !162, metadata !DIExpression()), !dbg !156
  %tobool = icmp ne i32 %call, 0, !dbg !163
  br i1 %tobool, label %if.end, label %if.then, !dbg !165

if.then:                                          ; preds = %entry
  br label %return, !dbg !166

if.end:                                           ; preds = %entry
  %call1 = call i32 @tcgetattr(i32 %fd, %struct.termios* %state) #7, !dbg !168
  call void @llvm.dbg.value(metadata i32 %call1, metadata !171, metadata !DIExpression()), !dbg !156
  br label %return, !dbg !172

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ 25, %if.then ], !dbg !173
  ret i32 %retval.0, !dbg !174
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @restore_termstate(i32 %fd, %struct.termios* %state) #0 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata %struct.termios* %state, metadata !178, metadata !DIExpression()), !dbg !177
  %call = call i32 @isatty(i32 %fd) #7, !dbg !179
  call void @llvm.dbg.value(metadata i32 %call, metadata !183, metadata !DIExpression()), !dbg !177
  %tobool = icmp ne i32 %call, 0, !dbg !184
  br i1 %tobool, label %if.end, label %if.then, !dbg !186

if.then:                                          ; preds = %entry
  br label %return, !dbg !187

if.end:                                           ; preds = %entry
  %call1 = call i32 @tcsetattr(i32 %fd, i32 1, %struct.termios* %state) #7, !dbg !189
  call void @llvm.dbg.value(metadata i32 %call1, metadata !192, metadata !DIExpression()), !dbg !177
  br label %return, !dbg !193

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ 25, %if.then ], !dbg !194
  ret i32 %retval.0, !dbg !195
}

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @raw_termstate(%struct.termios* %state) #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata %struct.termios* %state, metadata !199, metadata !DIExpression()), !dbg !200
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %state, i32 0, i32 1, !dbg !201
  %0 = load i32, i32* %c_oflag, align 4, !dbg !203
  %or = or i32 %0, 1, !dbg !203
  store i32 %or, i32* %c_oflag, align 4, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @string2arglist(i8* %string, %struct.alist* %args) #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i8* %string, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct.alist* %args, metadata !219, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata !4, metadata !220, metadata !DIExpression()), !dbg !221
  %argv = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !222
  %0 = load i8**, i8*** %argv, align 8, !dbg !222
  %tobool = icmp ne i8** %0, null, !dbg !225
  br i1 %tobool, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %argv1 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !227
  %1 = load i8**, i8*** %argv1, align 8, !dbg !227
  %2 = bitcast i8** %1 to i8*, !dbg !231
  call void @free(i8* %2) #7, !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then, %entry
  %argc = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !234
  store i32 1, i32* %argc, align 4, !dbg !235
  %alloc = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 0, !dbg !236
  store i32 0, i32* %alloc, align 8, !dbg !237
  call void @llvm.dbg.value(metadata i8* %string, metadata !238, metadata !DIExpression()), !dbg !218
  br label %while.body, !dbg !239

while.body:                                       ; preds = %if.end28, %if.end
  %st.0 = phi i8* [ %string, %if.end ], [ null, %if.end28 ], !dbg !242
  call void @llvm.dbg.value(metadata i8* %st.0, metadata !238, metadata !DIExpression()), !dbg !218
  br label %while_continue___0, !dbg !243

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !243

while_continue:                                   ; preds = %while_continue___0
  %argc2 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !244
  %3 = load i32, i32* %argc2, align 4, !dbg !244
  %alloc3 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 0, !dbg !247
  %4 = load i32, i32* %alloc3, align 8, !dbg !247
  %cmp = icmp sge i32 %3, %4, !dbg !248
  br i1 %cmp, label %if.then4, label %if.end22, !dbg !249

if.then4:                                         ; preds = %while_continue
  %argv5 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !250
  %5 = load i8**, i8*** %argv5, align 8, !dbg !250
  %tobool6 = icmp ne i8** %5, null, !dbg !253
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !254

if.then7:                                         ; preds = %if.then4
  %call = call noalias i8* @malloc(i32 320) #7, !dbg !255
  call void @llvm.dbg.value(metadata i8* %call, metadata !259, metadata !DIExpression()), !dbg !218
  %6 = bitcast i8* %call to i8**, !dbg !260
  %argv8 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !261
  store i8** %6, i8*** %argv8, align 8, !dbg !262
  br label %if.end14, !dbg !263

if.else:                                          ; preds = %if.then4
  %argv9 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !264
  %7 = load i8**, i8*** %argv9, align 8, !dbg !264
  %8 = bitcast i8** %7 to i8*, !dbg !268
  %alloc10 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 0, !dbg !269
  %9 = load i32, i32* %alloc10, align 8, !dbg !269
  %add = add nsw i32 %9, 40, !dbg !270
  %conv = sext i32 %add to i64, !dbg !271
  %mul = mul i64 %conv, 8, !dbg !272
  %conv11 = trunc i64 %mul to i32, !dbg !273
  %call12 = call i8* @realloc(i8* %8, i32 %conv11) #7, !dbg !274
  call void @llvm.dbg.value(metadata i8* %call12, metadata !275, metadata !DIExpression()), !dbg !218
  %10 = bitcast i8* %call12 to i8**, !dbg !276
  %argv13 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !277
  store i8** %10, i8*** %argv13, align 8, !dbg !278
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %argv15 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !279
  %11 = load i8**, i8*** %argv15, align 8, !dbg !279
  %12 = ptrtoint i8** %11 to i64, !dbg !281
  %cmp16 = icmp eq i64 %12, 0, !dbg !282
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !283

if.then18:                                        ; preds = %if.end14
  br label %return, !dbg !284

if.end19:                                         ; preds = %if.end14
  %alloc20 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 0, !dbg !286
  %13 = load i32, i32* %alloc20, align 8, !dbg !287
  %add21 = add nsw i32 %13, 40, !dbg !287
  store i32 %add21, i32* %alloc20, align 8, !dbg !287
  br label %if.end22, !dbg !288

if.end22:                                         ; preds = %if.end19, %while_continue
  %call23 = call i8* @strtok(i8* %st.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7, !dbg !289
  call void @llvm.dbg.value(metadata i8* %call23, metadata !292, metadata !DIExpression()), !dbg !218
  %argv24 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !293
  %14 = load i8**, i8*** %argv24, align 8, !dbg !293
  %argc25 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !294
  %15 = load i32, i32* %argc25, align 4, !dbg !294
  %idx.ext = sext i32 %15 to i64, !dbg !295
  %add.ptr = getelementptr inbounds i8*, i8** %14, i64 %idx.ext, !dbg !295
  store i8* %call23, i8** %add.ptr, align 8, !dbg !296
  %tobool26 = icmp ne i8* %call23, null, !dbg !297
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !299

if.then27:                                        ; preds = %if.end22
  br label %while_break, !dbg !300

if.end28:                                         ; preds = %if.end22
  call void @llvm.dbg.value(metadata i8* null, metadata !238, metadata !DIExpression()), !dbg !218
  %argc29 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !302
  %16 = load i32, i32* %argc29, align 4, !dbg !303
  %inc = add nsw i32 %16, 1, !dbg !303
  store i32 %inc, i32* %argc29, align 4, !dbg !303
  br label %while.body, !dbg !239, !llvm.loop !304

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !306

while_break:                                      ; preds = %while_break___0, %if.then27
  br label %return, !dbg !307

return:                                           ; preds = %while_break, %if.then18
  %retval.0 = phi i32 [ 12, %if.then18 ], [ 0, %while_break ], !dbg !242
  ret i32 %retval.0, !dbg !308
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @argv2arglist(i32 %argc, i8** %argv, %struct.alist* %args) #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i8** %argv, metadata !314, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata %struct.alist* %args, metadata !315, metadata !DIExpression()), !dbg !313
  %argv1 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !316
  %0 = load i8**, i8*** %argv1, align 8, !dbg !316
  %tobool = icmp ne i8** %0, null, !dbg !319
  br i1 %tobool, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %argv2 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !321
  %1 = load i8**, i8*** %argv2, align 8, !dbg !321
  %2 = bitcast i8** %1 to i8*, !dbg !325
  call void @free(i8* %2) #7, !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  %add = add nsw i32 %argc, 1, !dbg !328
  %conv = sext i32 %add to i64, !dbg !331
  %mul = mul i64 %conv, 8, !dbg !332
  %conv3 = trunc i64 %mul to i32, !dbg !333
  %call = call noalias i8* @malloc(i32 %conv3) #7, !dbg !334
  call void @llvm.dbg.value(metadata i8* %call, metadata !335, metadata !DIExpression()), !dbg !313
  %3 = bitcast i8* %call to i8**, !dbg !336
  %argv4 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !337
  store i8** %3, i8*** %argv4, align 8, !dbg !338
  %argv5 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !339
  %4 = load i8**, i8*** %argv5, align 8, !dbg !339
  %tobool6 = icmp ne i8** %4, null, !dbg !341
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !342

if.then7:                                         ; preds = %if.end
  br label %return, !dbg !343

if.end8:                                          ; preds = %if.end
  %alloc = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 0, !dbg !345
  store i32 %argc, i32* %alloc, align 8, !dbg !346
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()), !dbg !313
  br label %while.body, !dbg !348

while.body:                                       ; preds = %if.end11, %if.end8
  %i.0 = phi i32 [ 0, %if.end8 ], [ %inc, %if.end11 ], !dbg !351
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !347, metadata !DIExpression()), !dbg !313
  br label %while_continue___0, !dbg !352

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !352

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %argc, !dbg !353
  br i1 %cmp, label %if.end11, label %if.then10, !dbg !356

if.then10:                                        ; preds = %while_continue
  br label %while_break, !dbg !357

if.end11:                                         ; preds = %while_continue
  %add12 = add nsw i32 %i.0, 1, !dbg !359
  %idx.ext = sext i32 %add12 to i64, !dbg !360
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !360
  %5 = load i8*, i8** %add.ptr, align 8, !dbg !361
  %argv13 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !362
  %6 = load i8**, i8*** %argv13, align 8, !dbg !362
  %add14 = add nsw i32 %i.0, 1, !dbg !363
  %idx.ext15 = sext i32 %add14 to i64, !dbg !364
  %add.ptr16 = getelementptr inbounds i8*, i8** %6, i64 %idx.ext15, !dbg !364
  store i8* %5, i8** %add.ptr16, align 8, !dbg !365
  %inc = add nsw i32 %i.0, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %inc, metadata !347, metadata !DIExpression()), !dbg !313
  br label %while.body, !dbg !348, !llvm.loop !367

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !369

while_break:                                      ; preds = %while_break___0, %if.then10
  %argc17 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !370
  store i32 %argc, i32* %argc17, align 4, !dbg !371
  br label %return, !dbg !372

return:                                           ; preds = %while_break, %if.then7
  %retval.0 = phi i32 [ 0, %while_break ], [ 12, %if.then7 ], !dbg !351
  ret i32 %retval.0, !dbg !373
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @escape(i8* %source) #0 !dbg !374 {
entry:
  %probe = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %source, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i8** %probe, metadata !380, metadata !DIExpression()), !dbg !381
  %tobool = icmp ne i8* %source, null, !dbg !382
  br i1 %tobool, label %if.end, label %if.then, !dbg !385

if.then:                                          ; preds = %entry
  br label %return, !dbg !386

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %source, metadata !388, metadata !DIExpression()), !dbg !379
  store i8* %source, i8** %probe, align 8, !dbg !389
  br label %while.body, !dbg !390

while.body:                                       ; preds = %__Cont, %if.end
  %dest.0 = phi i8* [ %source, %if.end ], [ %dest.2, %__Cont ], !dbg !393
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !388, metadata !DIExpression()), !dbg !379
  br label %while_continue___0, !dbg !394

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !394

while_continue:                                   ; preds = %while_continue___0
  %0 = load i8*, i8** %probe, align 8, !dbg !395
  %1 = load i8, i8* %0, align 1, !dbg !398
  %tobool1 = icmp ne i8 %1, 0, !dbg !398
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !399

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !400

if.end3:                                          ; preds = %while_continue
  %2 = load i8*, i8** %probe, align 8, !dbg !402
  %3 = load i8, i8* %2, align 1, !dbg !404
  %conv = sext i8 %3 to i32, !dbg !405
  %cmp = icmp eq i32 %conv, 34, !dbg !406
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !407

if.then5:                                         ; preds = %if.end3
  br label %__Cont, !dbg !408

if.end6:                                          ; preds = %if.end3
  %4 = load i8*, i8** %probe, align 8, !dbg !410
  %5 = load i8, i8* %4, align 1, !dbg !412
  %conv7 = sext i8 %5 to i32, !dbg !413
  %cmp8 = icmp ne i32 %conv7, 92, !dbg !414
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !415

if.then10:                                        ; preds = %if.end6
  %6 = load i8*, i8** %probe, align 8, !dbg !416
  %7 = load i8, i8* %6, align 1, !dbg !418
  store i8 %7, i8* %dest.0, align 1, !dbg !419
  %incdec.ptr = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !420
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !388, metadata !DIExpression()), !dbg !379
  br label %__Cont, !dbg !421

if.end11:                                         ; preds = %if.end6
  %8 = load i8*, i8** %probe, align 8, !dbg !422
  %incdec.ptr12 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !422
  store i8* %incdec.ptr12, i8** %probe, align 8, !dbg !422
  %9 = load i8*, i8** %probe, align 8, !dbg !423
  %10 = load i8, i8* %9, align 1, !dbg !426
  %conv13 = sext i8 %10 to i32, !dbg !427
  %cmp14 = icmp eq i32 %conv13, 97, !dbg !428
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !429

if.then16:                                        ; preds = %if.end11
  br label %case_97, !dbg !430

if.end17:                                         ; preds = %if.end11
  %11 = load i8*, i8** %probe, align 8, !dbg !432
  %12 = load i8, i8* %11, align 1, !dbg !434
  %conv18 = sext i8 %12 to i32, !dbg !435
  %cmp19 = icmp eq i32 %conv18, 98, !dbg !436
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !437

if.then21:                                        ; preds = %if.end17
  br label %case_98, !dbg !438

if.end22:                                         ; preds = %if.end17
  %13 = load i8*, i8** %probe, align 8, !dbg !440
  %14 = load i8, i8* %13, align 1, !dbg !442
  %conv23 = sext i8 %14 to i32, !dbg !443
  %cmp24 = icmp eq i32 %conv23, 102, !dbg !444
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !445

if.then26:                                        ; preds = %if.end22
  br label %case_102, !dbg !446

if.end27:                                         ; preds = %if.end22
  %15 = load i8*, i8** %probe, align 8, !dbg !448
  %16 = load i8, i8* %15, align 1, !dbg !450
  %conv28 = sext i8 %16 to i32, !dbg !451
  %cmp29 = icmp eq i32 %conv28, 110, !dbg !452
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !453

if.then31:                                        ; preds = %if.end27
  br label %case_110, !dbg !454

if.end32:                                         ; preds = %if.end27
  %17 = load i8*, i8** %probe, align 8, !dbg !456
  %18 = load i8, i8* %17, align 1, !dbg !458
  %conv33 = sext i8 %18 to i32, !dbg !459
  %cmp34 = icmp eq i32 %conv33, 114, !dbg !460
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !461

if.then36:                                        ; preds = %if.end32
  br label %case_114, !dbg !462

if.end37:                                         ; preds = %if.end32
  %19 = load i8*, i8** %probe, align 8, !dbg !464
  %20 = load i8, i8* %19, align 1, !dbg !466
  %conv38 = sext i8 %20 to i32, !dbg !467
  %cmp39 = icmp eq i32 %conv38, 116, !dbg !468
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !469

if.then41:                                        ; preds = %if.end37
  br label %case_116, !dbg !470

if.end42:                                         ; preds = %if.end37
  %21 = load i8*, i8** %probe, align 8, !dbg !472
  %22 = load i8, i8* %21, align 1, !dbg !474
  %conv43 = sext i8 %22 to i32, !dbg !475
  %cmp44 = icmp eq i32 %conv43, 118, !dbg !476
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !477

if.then46:                                        ; preds = %if.end42
  br label %case_118, !dbg !478

if.end47:                                         ; preds = %if.end42
  %23 = load i8*, i8** %probe, align 8, !dbg !480
  %24 = load i8, i8* %23, align 1, !dbg !482
  %conv48 = sext i8 %24 to i32, !dbg !483
  %cmp49 = icmp eq i32 %conv48, 63, !dbg !484
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !485

if.then51:                                        ; preds = %if.end47
  br label %case_63, !dbg !486

if.end52:                                         ; preds = %if.end47
  %25 = load i8*, i8** %probe, align 8, !dbg !488
  %26 = load i8, i8* %25, align 1, !dbg !490
  %conv53 = sext i8 %26 to i32, !dbg !491
  %cmp54 = icmp eq i32 %conv53, 34, !dbg !492
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !485

if.then56:                                        ; preds = %if.end52
  br label %case_63, !dbg !493

if.end57:                                         ; preds = %if.end52
  %27 = load i8*, i8** %probe, align 8, !dbg !495
  %28 = load i8, i8* %27, align 1, !dbg !497
  %conv58 = sext i8 %28 to i32, !dbg !498
  %cmp59 = icmp eq i32 %conv58, 39, !dbg !499
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !485

if.then61:                                        ; preds = %if.end57
  br label %case_63, !dbg !500

if.end62:                                         ; preds = %if.end57
  %29 = load i8*, i8** %probe, align 8, !dbg !502
  %30 = load i8, i8* %29, align 1, !dbg !504
  %conv63 = sext i8 %30 to i32, !dbg !505
  %cmp64 = icmp eq i32 %conv63, 92, !dbg !506
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !485

if.then66:                                        ; preds = %if.end62
  br label %case_63, !dbg !507

if.end67:                                         ; preds = %if.end62
  %31 = load i8*, i8** %probe, align 8, !dbg !509
  %32 = load i8, i8* %31, align 1, !dbg !511
  %conv68 = sext i8 %32 to i32, !dbg !512
  %cmp69 = icmp eq i32 %conv68, 48, !dbg !513
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !514

if.then71:                                        ; preds = %if.end67
  br label %case_48, !dbg !515

if.end72:                                         ; preds = %if.end67
  %33 = load i8*, i8** %probe, align 8, !dbg !517
  %34 = load i8, i8* %33, align 1, !dbg !519
  %conv73 = sext i8 %34 to i32, !dbg !520
  %cmp74 = icmp eq i32 %conv73, 57, !dbg !521
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !522

if.then76:                                        ; preds = %if.end72
  br label %case_57, !dbg !523

if.end77:                                         ; preds = %if.end72
  %35 = load i8*, i8** %probe, align 8, !dbg !525
  %36 = load i8, i8* %35, align 1, !dbg !527
  %conv78 = sext i8 %36 to i32, !dbg !528
  %cmp79 = icmp eq i32 %conv78, 56, !dbg !529
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !522

if.then81:                                        ; preds = %if.end77
  br label %case_57, !dbg !530

if.end82:                                         ; preds = %if.end77
  %37 = load i8*, i8** %probe, align 8, !dbg !532
  %38 = load i8, i8* %37, align 1, !dbg !534
  %conv83 = sext i8 %38 to i32, !dbg !535
  %cmp84 = icmp eq i32 %conv83, 55, !dbg !536
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !522

if.then86:                                        ; preds = %if.end82
  br label %case_57, !dbg !537

if.end87:                                         ; preds = %if.end82
  %39 = load i8*, i8** %probe, align 8, !dbg !539
  %40 = load i8, i8* %39, align 1, !dbg !541
  %conv88 = sext i8 %40 to i32, !dbg !542
  %cmp89 = icmp eq i32 %conv88, 54, !dbg !543
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !522

if.then91:                                        ; preds = %if.end87
  br label %case_57, !dbg !544

if.end92:                                         ; preds = %if.end87
  %41 = load i8*, i8** %probe, align 8, !dbg !546
  %42 = load i8, i8* %41, align 1, !dbg !548
  %conv93 = sext i8 %42 to i32, !dbg !549
  %cmp94 = icmp eq i32 %conv93, 53, !dbg !550
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !522

if.then96:                                        ; preds = %if.end92
  br label %case_57, !dbg !551

if.end97:                                         ; preds = %if.end92
  %43 = load i8*, i8** %probe, align 8, !dbg !553
  %44 = load i8, i8* %43, align 1, !dbg !555
  %conv98 = sext i8 %44 to i32, !dbg !556
  %cmp99 = icmp eq i32 %conv98, 52, !dbg !557
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !522

if.then101:                                       ; preds = %if.end97
  br label %case_57, !dbg !558

if.end102:                                        ; preds = %if.end97
  %45 = load i8*, i8** %probe, align 8, !dbg !560
  %46 = load i8, i8* %45, align 1, !dbg !562
  %conv103 = sext i8 %46 to i32, !dbg !563
  %cmp104 = icmp eq i32 %conv103, 51, !dbg !564
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !522

if.then106:                                       ; preds = %if.end102
  br label %case_57, !dbg !565

if.end107:                                        ; preds = %if.end102
  %47 = load i8*, i8** %probe, align 8, !dbg !567
  %48 = load i8, i8* %47, align 1, !dbg !569
  %conv108 = sext i8 %48 to i32, !dbg !570
  %cmp109 = icmp eq i32 %conv108, 50, !dbg !571
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !522

if.then111:                                       ; preds = %if.end107
  br label %case_57, !dbg !572

if.end112:                                        ; preds = %if.end107
  %49 = load i8*, i8** %probe, align 8, !dbg !574
  %50 = load i8, i8* %49, align 1, !dbg !576
  %conv113 = sext i8 %50 to i32, !dbg !577
  %cmp114 = icmp eq i32 %conv113, 49, !dbg !578
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !522

if.then116:                                       ; preds = %if.end112
  br label %case_57, !dbg !579

if.end117:                                        ; preds = %if.end112
  %51 = load i8*, i8** %probe, align 8, !dbg !581
  %52 = load i8, i8* %51, align 1, !dbg !583
  %conv118 = sext i8 %52 to i32, !dbg !584
  %cmp119 = icmp eq i32 %conv118, 120, !dbg !585
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !586

if.then121:                                       ; preds = %if.end117
  br label %case_120, !dbg !587

if.end122:                                        ; preds = %if.end117
  %53 = load i8*, i8** %probe, align 8, !dbg !589
  %54 = load i8, i8* %53, align 1, !dbg !591
  %conv123 = sext i8 %54 to i32, !dbg !592
  %cmp124 = icmp eq i32 %conv123, 88, !dbg !593
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !586

if.then126:                                       ; preds = %if.end122
  br label %case_120, !dbg !594

if.end127:                                        ; preds = %if.end122
  br label %switch_default, !dbg !596

case_97:                                          ; preds = %if.then16
  store i8 7, i8* %dest.0, align 1, !dbg !597
  %incdec.ptr128 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !598
  call void @llvm.dbg.value(metadata i8* %incdec.ptr128, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !599

case_98:                                          ; preds = %if.then21
  store i8 8, i8* %dest.0, align 1, !dbg !600
  %incdec.ptr129 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !601
  call void @llvm.dbg.value(metadata i8* %incdec.ptr129, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !602

case_102:                                         ; preds = %if.then26
  store i8 12, i8* %dest.0, align 1, !dbg !603
  %incdec.ptr130 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !604
  call void @llvm.dbg.value(metadata i8* %incdec.ptr130, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !605

case_110:                                         ; preds = %if.then31
  store i8 10, i8* %dest.0, align 1, !dbg !606
  %incdec.ptr131 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !607
  call void @llvm.dbg.value(metadata i8* %incdec.ptr131, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !608

case_114:                                         ; preds = %if.then36
  store i8 13, i8* %dest.0, align 1, !dbg !609
  %incdec.ptr132 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !610
  call void @llvm.dbg.value(metadata i8* %incdec.ptr132, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !611

case_116:                                         ; preds = %if.then41
  store i8 9, i8* %dest.0, align 1, !dbg !612
  %incdec.ptr133 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !613
  call void @llvm.dbg.value(metadata i8* %incdec.ptr133, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !614

case_118:                                         ; preds = %if.then46
  store i8 11, i8* %dest.0, align 1, !dbg !615
  %incdec.ptr134 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !616
  call void @llvm.dbg.value(metadata i8* %incdec.ptr134, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !617

case_63:                                          ; preds = %if.then66, %if.then61, %if.then56, %if.then51
  br label %case_34, !dbg !617

case_34:                                          ; preds = %case_63
  br label %case_39, !dbg !617

case_39:                                          ; preds = %case_34
  br label %case_92, !dbg !617

case_92:                                          ; preds = %case_39
  %55 = load i8*, i8** %probe, align 8, !dbg !618
  %56 = load i8, i8* %55, align 1, !dbg !619
  store i8 %56, i8* %dest.0, align 1, !dbg !620
  %incdec.ptr135 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !621
  call void @llvm.dbg.value(metadata i8* %incdec.ptr135, metadata !388, metadata !DIExpression()), !dbg !379
  br label %switch_break, !dbg !622

case_48:                                          ; preds = %if.then71
  %57 = load i8*, i8** %probe, align 8, !dbg !623
  %call = call i64 @strtol(i8* %57, i8** %probe, i32 8) #7, !dbg !626
  call void @llvm.dbg.value(metadata i64 %call, metadata !627, metadata !DIExpression()), !dbg !379
  %conv136 = trunc i64 %call to i8, !dbg !628
  store i8 %conv136, i8* %dest.0, align 1, !dbg !629
  %incdec.ptr137 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !630
  call void @llvm.dbg.value(metadata i8* %incdec.ptr137, metadata !388, metadata !DIExpression()), !dbg !379
  %58 = load i8*, i8** %probe, align 8, !dbg !631
  %incdec.ptr138 = getelementptr inbounds i8, i8* %58, i32 -1, !dbg !631
  store i8* %incdec.ptr138, i8** %probe, align 8, !dbg !631
  br label %switch_break, !dbg !632

case_57:                                          ; preds = %if.then116, %if.then111, %if.then106, %if.then101, %if.then96, %if.then91, %if.then86, %if.then81, %if.then76
  br label %case_56, !dbg !632

case_56:                                          ; preds = %case_57
  br label %case_55, !dbg !632

case_55:                                          ; preds = %case_56
  br label %case_54, !dbg !632

case_54:                                          ; preds = %case_55
  br label %case_53, !dbg !632

case_53:                                          ; preds = %case_54
  br label %case_52, !dbg !632

case_52:                                          ; preds = %case_53
  br label %case_51, !dbg !632

case_51:                                          ; preds = %case_52
  br label %case_50, !dbg !632

case_50:                                          ; preds = %case_51
  br label %case_49, !dbg !632

case_49:                                          ; preds = %case_50
  %59 = load i8*, i8** %probe, align 8, !dbg !633
  %call139 = call i64 @strtol(i8* %59, i8** %probe, i32 10) #7, !dbg !636
  call void @llvm.dbg.value(metadata i64 %call139, metadata !627, metadata !DIExpression()), !dbg !379
  %conv140 = trunc i64 %call139 to i8, !dbg !637
  store i8 %conv140, i8* %dest.0, align 1, !dbg !638
  %incdec.ptr141 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !639
  call void @llvm.dbg.value(metadata i8* %incdec.ptr141, metadata !388, metadata !DIExpression()), !dbg !379
  %60 = load i8*, i8** %probe, align 8, !dbg !640
  %incdec.ptr142 = getelementptr inbounds i8, i8* %60, i32 -1, !dbg !640
  store i8* %incdec.ptr142, i8** %probe, align 8, !dbg !640
  br label %switch_break, !dbg !641

case_120:                                         ; preds = %if.then126, %if.then121
  br label %case_88, !dbg !641

case_88:                                          ; preds = %case_120
  %call143 = call i16** @__ctype_b_loc() #8, !dbg !642
  call void @llvm.dbg.value(metadata i16** %call143, metadata !645, metadata !DIExpression()), !dbg !379
  %61 = load i16*, i16** %call143, align 8, !dbg !649
  %62 = load i8*, i8** %probe, align 8, !dbg !651
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 1, !dbg !652
  %63 = load i8, i8* %add.ptr, align 1, !dbg !653
  %conv144 = sext i8 %63 to i32, !dbg !654
  %idx.ext = sext i32 %conv144 to i64, !dbg !655
  %add.ptr145 = getelementptr inbounds i16, i16* %61, i64 %idx.ext, !dbg !655
  %64 = load i16, i16* %add.ptr145, align 2, !dbg !656
  %conv146 = zext i16 %64 to i32, !dbg !657
  %and = and i32 %conv146, 2048, !dbg !658
  %tobool147 = icmp ne i32 %and, 0, !dbg !658
  br i1 %tobool147, label %if.end163, label %if.then148, !dbg !659

if.then148:                                       ; preds = %case_88
  %65 = load i8*, i8** %probe, align 8, !dbg !660
  %add.ptr149 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !664
  %66 = load i8, i8* %add.ptr149, align 1, !dbg !665
  %conv150 = sext i8 %66 to i32, !dbg !666
  %call151 = call i32 @toupper(i32 %conv150) #9, !dbg !667
  call void @llvm.dbg.value(metadata i32 %call151, metadata !668, metadata !DIExpression()), !dbg !379
  %cmp152 = icmp sgt i32 %call151, 70, !dbg !669
  br i1 %cmp152, label %if.then154, label %if.else, !dbg !671

if.then154:                                       ; preds = %if.then148
  br label %return, !dbg !672

if.else:                                          ; preds = %if.then148
  %67 = load i8*, i8** %probe, align 8, !dbg !674
  %add.ptr155 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !678
  %68 = load i8, i8* %add.ptr155, align 1, !dbg !679
  %conv156 = sext i8 %68 to i32, !dbg !680
  %call157 = call i32 @toupper(i32 %conv156) #9, !dbg !681
  call void @llvm.dbg.value(metadata i32 %call157, metadata !682, metadata !DIExpression()), !dbg !379
  %cmp158 = icmp slt i32 %call157, 65, !dbg !683
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !685

if.then160:                                       ; preds = %if.else
  br label %return, !dbg !686

if.end161:                                        ; preds = %if.else
  br label %if.end162

if.end162:                                        ; preds = %if.end161
  br label %if.end163, !dbg !688

if.end163:                                        ; preds = %if.end162, %case_88
  %69 = load i8*, i8** %probe, align 8, !dbg !689
  %call164 = call i64 @strtol(i8* %69, i8** %probe, i32 16) #7, !dbg !692
  call void @llvm.dbg.value(metadata i64 %call164, metadata !627, metadata !DIExpression()), !dbg !379
  %conv165 = trunc i64 %call164 to i8, !dbg !693
  store i8 %conv165, i8* %dest.0, align 1, !dbg !694
  %incdec.ptr166 = getelementptr inbounds i8, i8* %dest.0, i32 1, !dbg !695
  call void @llvm.dbg.value(metadata i8* %incdec.ptr166, metadata !388, metadata !DIExpression()), !dbg !379
  %70 = load i8*, i8** %probe, align 8, !dbg !696
  %incdec.ptr167 = getelementptr inbounds i8, i8* %70, i32 -1, !dbg !696
  store i8* %incdec.ptr167, i8** %probe, align 8, !dbg !696
  br label %switch_break, !dbg !697

switch_default:                                   ; preds = %if.end127
  br label %return, !dbg !596

switch_break:                                     ; preds = %if.end163, %case_49, %case_48, %case_92, %case_118, %case_116, %case_114, %case_110, %case_102, %case_98, %case_97
  %dest.1 = phi i8* [ %incdec.ptr128, %case_97 ], [ %incdec.ptr129, %case_98 ], [ %incdec.ptr130, %case_102 ], [ %incdec.ptr131, %case_110 ], [ %incdec.ptr132, %case_114 ], [ %incdec.ptr133, %case_116 ], [ %incdec.ptr134, %case_118 ], [ %incdec.ptr135, %case_92 ], [ %incdec.ptr137, %case_48 ], [ %incdec.ptr141, %case_49 ], [ %incdec.ptr166, %if.end163 ], !dbg !698
  call void @llvm.dbg.value(metadata i8* %dest.1, metadata !388, metadata !DIExpression()), !dbg !379
  br label %__Cont, !dbg !699

__Cont:                                           ; preds = %switch_break, %if.then10, %if.then5
  %dest.2 = phi i8* [ %dest.0, %if.then5 ], [ %incdec.ptr, %if.then10 ], [ %dest.1, %switch_break ], !dbg !700
  call void @llvm.dbg.value(metadata i8* %dest.2, metadata !388, metadata !DIExpression()), !dbg !379
  %71 = load i8*, i8** %probe, align 8, !dbg !701
  %incdec.ptr168 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !701
  store i8* %incdec.ptr168, i8** %probe, align 8, !dbg !701
  br label %while.body, !dbg !390, !llvm.loop !702

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !704

while_break:                                      ; preds = %while_break___0, %if.then2
  store i8 0, i8* %dest.0, align 1, !dbg !705
  br label %return, !dbg !706

return:                                           ; preds = %while_break, %switch_default, %if.then160, %if.then154, %if.then
  %retval.0 = phi i8* [ null, %if.then154 ], [ null, %if.then160 ], [ null, %switch_default ], [ %source, %while_break ], [ null, %if.then ], !dbg !700
  ret i8* %retval.0, !dbg !707
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @sighandler(i32 %signum) #0 !dbg !708 {
entry:
  call void @llvm.dbg.value(metadata i32 %signum, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata !4, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata !4, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata !4, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata !4, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata !4, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata !4, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata !4, metadata !725, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.declare(metadata !4, metadata !727, metadata !DIExpression()), !dbg !728
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !729
  %1 = load i8*, i8** @ptr_off, align 8, !dbg !733
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %1), !dbg !734
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !735
  %call1 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !737
  %3 = load i32, i32* @state_saved, align 4, !dbg !738
  %tobool = icmp ne i32 %3, 0, !dbg !738
  br i1 %tobool, label %if.then, label %if.end, !dbg !740

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !741
  %call2 = call i32 @fileno(%struct._IO_FILE* %4) #7, !dbg !745
  call void @llvm.dbg.value(metadata i32 %call2, metadata !746, metadata !DIExpression()), !dbg !712
  %call3 = call i32 @restore_termstate(i32 %call2, %struct.termios* @oldstate), !dbg !747
  br label %if.end, !dbg !749

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @quiet, align 4, !dbg !750
  %tobool4 = icmp ne i32 %5, 0, !dbg !750
  br i1 %tobool4, label %if.end21, label %if.then5, !dbg !752

if.then5:                                         ; preds = %if.end
  %cmp = icmp eq i32 %signum, 1, !dbg !753
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !757

if.then6:                                         ; preds = %if.then5
  br label %case_1, !dbg !758

if.end7:                                          ; preds = %if.then5
  %cmp8 = icmp eq i32 %signum, 2, !dbg !760
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !762

if.then9:                                         ; preds = %if.end7
  br label %case_2, !dbg !763

if.end10:                                         ; preds = %if.end7
  %cmp11 = icmp eq i32 %signum, 3, !dbg !765
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !767

if.then12:                                        ; preds = %if.end10
  br label %case_3, !dbg !768

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq i32 %signum, 15, !dbg !770
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !772

if.then15:                                        ; preds = %if.end13
  br label %case_15, !dbg !773

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %signum, 20, !dbg !775
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !777

if.then18:                                        ; preds = %if.end16
  br label %case_20, !dbg !778

if.end19:                                         ; preds = %if.end16
  br label %switch_default, !dbg !780

case_1:                                           ; preds = %if.then6
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !782

case_2:                                           ; preds = %if.then9
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !783

case_3:                                           ; preds = %if.then12
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !784

case_15:                                          ; preds = %if.then15
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !785

case_20:                                          ; preds = %if.then18
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !786

switch_default:                                   ; preds = %if.end19
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), metadata !781, metadata !DIExpression()), !dbg !712
  br label %switch_break, !dbg !780

switch_break:                                     ; preds = %switch_default, %case_20, %case_15, %case_3, %case_2, %case_1
  %signame.0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %case_1 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %case_2 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %case_3 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %case_15 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), %case_20 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %switch_default ], !dbg !787
  call void @llvm.dbg.value(metadata i8* %signame.0, metadata !781, metadata !DIExpression()), !dbg !712
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !788
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %signame.0), !dbg !791
  br label %if.end21, !dbg !792

if.end21:                                         ; preds = %switch_break, %if.end
  call void @exit(i32 1) #10, !dbg !793
  unreachable, !dbg !793

return:                                           ; No predecessors!
  ret void, !dbg !796
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

declare i32 @fflush(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind ssp uwtable
define i32 @process_opts(%struct.alist* %args) #0 !dbg !797 {
entry:
  call void @llvm.dbg.value(metadata %struct.alist* %args, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata !4, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata !4, metadata !804, metadata !DIExpression()), !dbg !805
  store i32 1, i32* @optind, align 4, !dbg !806
  %0 = load i8*, i8** @vtbasename, align 8, !dbg !808
  %argv = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !809
  %1 = load i8**, i8*** %argv, align 8, !dbg !809
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !810
  store i8* %0, i8** %add.ptr, align 8, !dbg !811
  br label %while.body, !dbg !812

while.body:                                       ; preds = %if.end71, %entry
  br label %while_continue___0, !dbg !815

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !815

while_continue:                                   ; preds = %while_continue___0
  %argc = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 1, !dbg !816
  %2 = load i32, i32* %argc, align 4, !dbg !816
  %argv1 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !820
  %3 = load i8**, i8*** %argv1, align 8, !dbg !820
  %call = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %2, i8** %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)), !dbg !821
  call void @llvm.dbg.value(metadata i32 %call, metadata !822, metadata !DIExpression()), !dbg !801
  %cmp = icmp eq i32 %call, 104, !dbg !823
  br i1 %cmp, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %while_continue
  br label %case_104, !dbg !827

if.end:                                           ; preds = %while_continue
  %cmp2 = icmp eq i32 %call, 119, !dbg !829
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !831

if.then3:                                         ; preds = %if.end
  br label %case_119, !dbg !832

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %call, 108, !dbg !834
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !836

if.then6:                                         ; preds = %if.end4
  br label %case_108, !dbg !837

if.end7:                                          ; preds = %if.end4
  %cmp8 = icmp eq i32 %call, 118, !dbg !839
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !841

if.then9:                                         ; preds = %if.end7
  br label %case_118, !dbg !842

if.end10:                                         ; preds = %if.end7
  %cmp11 = icmp eq i32 %call, 100, !dbg !844
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !846

if.then12:                                        ; preds = %if.end10
  br label %case_100, !dbg !847

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq i32 %call, 68, !dbg !849
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !851

if.then15:                                        ; preds = %if.end13
  br label %case_68, !dbg !852

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %call, 98, !dbg !854
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !856

if.then18:                                        ; preds = %if.end16
  br label %case_98, !dbg !857

if.end19:                                         ; preds = %if.end16
  %cmp20 = icmp eq i32 %call, 66, !dbg !859
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !861

if.then21:                                        ; preds = %if.end19
  br label %case_66, !dbg !862

if.end22:                                         ; preds = %if.end19
  %cmp23 = icmp eq i32 %call, 99, !dbg !864
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !866

if.then24:                                        ; preds = %if.end22
  br label %case_99, !dbg !867

if.end25:                                         ; preds = %if.end22
  %cmp26 = icmp eq i32 %call, 67, !dbg !869
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !871

if.then27:                                        ; preds = %if.end25
  br label %case_67, !dbg !872

if.end28:                                         ; preds = %if.end25
  %cmp29 = icmp eq i32 %call, 101, !dbg !874
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !876

if.then30:                                        ; preds = %if.end28
  br label %case_101, !dbg !877

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq i32 %call, 69, !dbg !879
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !881

if.then33:                                        ; preds = %if.end31
  br label %case_69, !dbg !882

if.end34:                                         ; preds = %if.end31
  %cmp35 = icmp eq i32 %call, 102, !dbg !884
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !886

if.then36:                                        ; preds = %if.end34
  br label %case_102, !dbg !887

if.end37:                                         ; preds = %if.end34
  %cmp38 = icmp eq i32 %call, 70, !dbg !889
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !891

if.then39:                                        ; preds = %if.end37
  br label %case_70, !dbg !892

if.end40:                                         ; preds = %if.end37
  %cmp41 = icmp eq i32 %call, 110, !dbg !894
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !896

if.then42:                                        ; preds = %if.end40
  br label %case_110, !dbg !897

if.end43:                                         ; preds = %if.end40
  %cmp44 = icmp eq i32 %call, 78, !dbg !899
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !901

if.then45:                                        ; preds = %if.end43
  br label %case_78, !dbg !902

if.end46:                                         ; preds = %if.end43
  %cmp47 = icmp eq i32 %call, 113, !dbg !904
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !906

if.then48:                                        ; preds = %if.end46
  br label %case_113, !dbg !907

if.end49:                                         ; preds = %if.end46
  %cmp50 = icmp eq i32 %call, 81, !dbg !909
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !911

if.then51:                                        ; preds = %if.end49
  br label %case_81, !dbg !912

if.end52:                                         ; preds = %if.end49
  %cmp53 = icmp eq i32 %call, 116, !dbg !914
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !916

if.then54:                                        ; preds = %if.end52
  br label %case_116, !dbg !917

if.end55:                                         ; preds = %if.end52
  %cmp56 = icmp eq i32 %call, 84, !dbg !919
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !921

if.then57:                                        ; preds = %if.end55
  br label %case_84, !dbg !922

if.end58:                                         ; preds = %if.end55
  %cmp59 = icmp eq i32 %call, 76, !dbg !924
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !926

if.then60:                                        ; preds = %if.end58
  br label %case_76, !dbg !927

if.end61:                                         ; preds = %if.end58
  %cmp62 = icmp eq i32 %call, 86, !dbg !929
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !931

if.then63:                                        ; preds = %if.end61
  br label %case_86, !dbg !932

if.end64:                                         ; preds = %if.end61
  %cmp65 = icmp eq i32 %call, 63, !dbg !934
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !936

if.then66:                                        ; preds = %if.end64
  br label %case_63, !dbg !937

if.end67:                                         ; preds = %if.end64
  br label %switch_break, !dbg !939

case_104:                                         ; preds = %if.then
  call void @help(), !dbg !940
  store i32 0, i32* @dowork, align 4, !dbg !943
  br label %switch_break, !dbg !944

case_119:                                         ; preds = %if.then3
  call void @warranty(), !dbg !945
  store i32 0, i32* @dowork, align 4, !dbg !948
  br label %switch_break, !dbg !949

case_108:                                         ; preds = %if.then6
  call void @license(), !dbg !950
  store i32 0, i32* @dowork, align 4, !dbg !953
  br label %switch_break, !dbg !954

case_118:                                         ; preds = %if.then9
  call void @intro(), !dbg !955
  store i32 0, i32* @dowork, align 4, !dbg !958
  br label %switch_break, !dbg !959

case_100:                                         ; preds = %if.then12
  store i32 1, i32* @device, align 4, !dbg !960
  br label %switch_break, !dbg !961

case_68:                                          ; preds = %if.then15
  store i32 0, i32* @device, align 4, !dbg !962
  br label %switch_break, !dbg !963

case_98:                                          ; preds = %if.then18
  store i32 1, i32* @binary, align 4, !dbg !964
  br label %switch_break, !dbg !965

case_66:                                          ; preds = %if.then21
  store i32 0, i32* @binary, align 4, !dbg !966
  br label %switch_break, !dbg !967

case_99:                                          ; preds = %if.then24
  store i32 0, i32* @stripcr, align 4, !dbg !968
  store i32 1, i32* @addcr, align 4, !dbg !969
  br label %switch_break, !dbg !970

case_67:                                          ; preds = %if.then27
  store i32 0, i32* @stripcr, align 4, !dbg !971
  store i32 0, i32* @addcr, align 4, !dbg !972
  br label %switch_break, !dbg !973

case_101:                                         ; preds = %if.then30
  store i32 1, i32* @builtin, align 4, !dbg !974
  store i32 0, i32* @forcenv, align 4, !dbg !974
  br label %switch_break, !dbg !975

case_69:                                          ; preds = %if.then33
  store i32 0, i32* @builtin, align 4, !dbg !976
  store i32 0, i32* @forcenv, align 4, !dbg !976
  br label %switch_break, !dbg !977

case_102:                                         ; preds = %if.then36
  store i32 0, i32* @ffeed, align 4, !dbg !978
  br label %switch_break, !dbg !979

case_70:                                          ; preds = %if.then39
  store i32 1, i32* @ffeed, align 4, !dbg !980
  br label %switch_break, !dbg !981

case_110:                                         ; preds = %if.then42
  store i32 0, i32* @addcr, align 4, !dbg !982
  store i32 1, i32* @stripcr, align 4, !dbg !983
  br label %switch_break, !dbg !984

case_78:                                          ; preds = %if.then45
  store i32 0, i32* @addcr, align 4, !dbg !985
  store i32 0, i32* @stripcr, align 4, !dbg !986
  br label %switch_break, !dbg !987

case_113:                                         ; preds = %if.then48
  store i32 1, i32* @quiet, align 4, !dbg !988
  br label %switch_break, !dbg !989

case_81:                                          ; preds = %if.then51
  store i32 0, i32* @quiet, align 4, !dbg !990
  br label %switch_break, !dbg !991

case_116:                                         ; preds = %if.then54
  store i32 1, i32* @forcenv, align 4, !dbg !992
  %call68 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !994
  store i8* %call68, i8** @termname, align 8, !dbg !996
  br label %switch_break, !dbg !997

case_84:                                          ; preds = %if.then57
  %4 = load i8*, i8** @optarg, align 8, !dbg !998
  store i8* %4, i8** @termname, align 8, !dbg !999
  br label %switch_break, !dbg !1000

case_76:                                          ; preds = %if.then60
  %5 = load i8*, i8** @optarg, align 8, !dbg !1001
  store i8* %5, i8** @libtermname, align 8, !dbg !1002
  br label %switch_break, !dbg !1003

case_86:                                          ; preds = %if.then63
  %6 = load i8*, i8** @optarg, align 8, !dbg !1004
  store i8* %6, i8** @devname, align 8, !dbg !1005
  store i32 1, i32* @device, align 4, !dbg !1006
  br label %switch_break, !dbg !1007

case_63:                                          ; preds = %if.then66
  call void @help(), !dbg !1008
  call void @exit(i32 1) #10, !dbg !1011
  unreachable, !dbg !1011

switch_break:                                     ; preds = %case_86, %case_76, %case_84, %case_116, %case_81, %case_113, %case_78, %case_110, %case_70, %case_102, %case_69, %case_101, %case_67, %case_99, %case_66, %case_98, %case_68, %case_100, %case_118, %case_108, %case_119, %case_104, %if.end67
  %cmp69 = icmp ne i32 %call, -1, !dbg !1013
  br i1 %cmp69, label %if.end71, label %if.then70, !dbg !1015

if.then70:                                        ; preds = %switch_break
  br label %while_break, !dbg !1016

if.end71:                                         ; preds = %switch_break
  br label %while.body, !dbg !812, !llvm.loop !1018

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1020

while_break:                                      ; preds = %while_break___0, %if.then70
  %7 = load i32, i32* @optind, align 4, !dbg !1021
  ret i32 %7, !dbg !1022
}

declare i32 @getopt(...) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @help() #0 !dbg !1023 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata !4, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata !4, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata !4, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata !4, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata !4, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata !4, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.declare(metadata !4, metadata !1040, metadata !DIExpression()), !dbg !1041
  %0 = load i8*, i8** @vtbasename, align 8, !dbg !1042
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %call, metadata !1047, metadata !DIExpression()), !dbg !1048
  %tobool = icmp ne i32 %call, 0, !dbg !1049
  br i1 %tobool, label %if.then, label %if.else6, !dbg !1051

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @vtbasename, align 8, !dbg !1052
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !1056
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1057, metadata !DIExpression()), !dbg !1048
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1058
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1060

if.then3:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1061
  %3 = load i8*, i8** @vtbasename, align 8, !dbg !1065
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.18, i32 0, i32 0), i8* %3), !dbg !1066
  br label %if.end, !dbg !1067

if.else:                                          ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1068
  %5 = load i8*, i8** @vtbasename, align 8, !dbg !1072
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i32 0, i32 0), i8* %5), !dbg !1073
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end8, !dbg !1074

if.else6:                                         ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1075
  %7 = load i8*, i8** @vtbasename, align 8, !dbg !1079
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i32 0, i32 0), i8* %7), !dbg !1080
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1081
  %9 = load i8*, i8** @vtbasename, align 8, !dbg !1084
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0), i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !1085
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1086
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0)), !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: noinline nounwind ssp uwtable
define void @warranty() #0 !dbg !1090 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1091, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.declare(metadata !4, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.declare(metadata !4, metadata !1095, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.declare(metadata !4, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.declare(metadata !4, metadata !1099, metadata !DIExpression()), !dbg !1100
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1101
  %1 = load i8*, i8** @vtbasename, align 8, !dbg !1105
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0), i8* %1), !dbg !1106
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1107
  %3 = load i8*, i8** @vtbasename, align 8, !dbg !1109
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0), i8* %3), !dbg !1110
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1111
  %5 = load i8*, i8** @vtbasename, align 8, !dbg !1113
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0), i8* %5), !dbg !1114
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1115
  %7 = load i8*, i8** @vtbasename, align 8, !dbg !1117
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0), i8* %7), !dbg !1118
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1119
  %9 = load i8*, i8** @vtbasename, align 8, !dbg !1121
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* %9), !dbg !1122
  ret void, !dbg !1123
}

; Function Attrs: noinline nounwind ssp uwtable
define void @license() #0 !dbg !1124 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.declare(metadata !4, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.declare(metadata !4, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata !4, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata !4, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata !4, metadata !1135, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.declare(metadata !4, metadata !1137, metadata !DIExpression()), !dbg !1138
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1139
  %1 = load i8*, i8** @vtbasename, align 8, !dbg !1143
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i32 0, i32 0), i8* %1), !dbg !1144
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145
  %3 = load i8*, i8** @vtbasename, align 8, !dbg !1147
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0), i8* %3), !dbg !1148
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1149
  %5 = load i8*, i8** @vtbasename, align 8, !dbg !1151
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0), i8* %5), !dbg !1152
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1153
  %7 = load i8*, i8** @vtbasename, align 8, !dbg !1155
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0), i8* %7), !dbg !1156
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1157
  %9 = load i8*, i8** @vtbasename, align 8, !dbg !1159
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8* %9), !dbg !1160
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1161
  %11 = load i8*, i8** @vtbasename, align 8, !dbg !1163
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0), i8* %11), !dbg !1164
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1165
  %13 = load i8*, i8** @vtbasename, align 8, !dbg !1167
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0), i8* %13), !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: noinline nounwind ssp uwtable
define void @intro() #0 !dbg !1170 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata !4, metadata !1173, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.declare(metadata !4, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.declare(metadata !4, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata !4, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata !4, metadata !1181, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata !4, metadata !1183, metadata !DIExpression()), !dbg !1184
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1185
  %1 = load i8*, i8** @vtbasename, align 8, !dbg !1189
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1190
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1191
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0)), !dbg !1193
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1194
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)), !dbg !1196
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197
  %5 = load i8*, i8** @vtbasename, align 8, !dbg !1199
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0), i8* %5), !dbg !1200
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1201
  %7 = load i8*, i8** @vtbasename, align 8, !dbg !1203
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i32 0, i32 0), i8* %7), !dbg !1204
  ret void, !dbg !1205
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @vtprintcap() #0 !dbg !1206 {
entry:
  %buffer = alloca [1025 x i8], align 16
  call void @llvm.dbg.declare(metadata [1025 x i8]* %buffer, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata !4, metadata !1211, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata !4, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata !4, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata !4, metadata !1217, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.declare(metadata !4, metadata !1219, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.declare(metadata !4, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* null, metadata !1223, metadata !DIExpression()), !dbg !1224
  %0 = load i8*, i8** @termname, align 8, !dbg !1225
  %tobool = icmp ne i8* %0, null, !dbg !1225
  br i1 %tobool, label %if.else, label %if.then, !dbg !1228

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !1229
  store i8* %call, i8** @termname, align 8, !dbg !1233
  br label %if.end4, !dbg !1234

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** @termname, align 8, !dbg !1235
  %2 = load i8, i8* %1, align 1, !dbg !1237
  %tobool1 = icmp ne i8 %2, 0, !dbg !1237
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1238

if.then2:                                         ; preds = %if.else
  %call3 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !1239
  store i8* %call3, i8** @termname, align 8, !dbg !1243
  br label %if.end, !dbg !1244

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %3 = load i8*, i8** @libtermname, align 8, !dbg !1245
  %call5 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)), !dbg !1248
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call5, metadata !1249, metadata !DIExpression()), !dbg !1224
  %tobool6 = icmp ne %struct._IO_FILE* %call5, null, !dbg !1250
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1252

if.then7:                                         ; preds = %if.end4
  br label %return, !dbg !1253

if.end8:                                          ; preds = %if.end4
  br label %while.body, !dbg !1255

while.body:                                       ; preds = %if.end36, %if.end8
  %temp.0 = phi i8* [ null, %if.end8 ], [ %temp.1, %if.end36 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8* %temp.0, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while_continue___3, !dbg !1259

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !1259

while_continue:                                   ; preds = %while_continue___3
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buffer, i32 0, i32 0, !dbg !1260
  %call9 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %call5), !dbg !1264
  call void @llvm.dbg.value(metadata i8* %call9, metadata !1265, metadata !DIExpression()), !dbg !1224
  %tobool10 = icmp ne i8* %call9, null, !dbg !1266
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1268

if.then11:                                        ; preds = %while_continue
  br label %while_break, !dbg !1269

if.end12:                                         ; preds = %while_continue
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %buffer, i64 0, i64 0, !dbg !1271
  %4 = load i8, i8* %arrayidx, align 16, !dbg !1271
  %conv = sext i8 %4 to i32, !dbg !1273
  %cmp = icmp eq i32 %conv, 35, !dbg !1274
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !1275

if.then14:                                        ; preds = %if.end12
  %arrayidx15 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buffer, i64 0, i64 0, !dbg !1276
  store i8 0, i8* %arrayidx15, align 16, !dbg !1278
  br label %if.end16, !dbg !1279

if.end16:                                         ; preds = %if.then14, %if.end12
  %arraydecay17 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buffer, i32 0, i32 0, !dbg !1280
  %call18 = call i8* @strchr(i8* %arraydecay17, i32 10) #9, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %call18, metadata !1223, metadata !DIExpression()), !dbg !1224
  %tobool19 = icmp ne i8* %call18, null, !dbg !1284
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1286

if.then20:                                        ; preds = %if.end16
  store i8 0, i8* %call18, align 1, !dbg !1287
  br label %if.end21, !dbg !1289

if.end21:                                         ; preds = %if.then20, %if.end16
  %arraydecay22 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buffer, i32 0, i32 0, !dbg !1290
  %call23 = call i8* @strtok(i8* %arraydecay22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %call23, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body25, !dbg !1294

while.body25:                                     ; preds = %if.end32, %if.end21
  %temp.1 = phi i8* [ %call23, %if.end21 ], [ %call33, %if.end32 ], !dbg !1297
  call void @llvm.dbg.value(metadata i8* %temp.1, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while_continue___4, !dbg !1298

while_continue___4:                               ; preds = %while.body25
  br label %while_continue___0, !dbg !1298

while_continue___0:                               ; preds = %while_continue___4
  %tobool26 = icmp ne i8* %temp.1, null, !dbg !1299
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1302

if.then27:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1303

if.end28:                                         ; preds = %while_continue___0
  %5 = load i8*, i8** @termname, align 8, !dbg !1305
  %call29 = call i32 @strcmp(i8* %temp.1, i8* %5) #9, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %call29, metadata !1309, metadata !DIExpression()), !dbg !1224
  %tobool30 = icmp ne i32 %call29, 0, !dbg !1310
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1312

if.then31:                                        ; preds = %if.end28
  br label %while_break___0, !dbg !1313

if.end32:                                         ; preds = %if.end28
  %call33 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %call33, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body25, !dbg !1294, !llvm.loop !1318

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !1320

while_break___0:                                  ; preds = %while_break___4, %if.then31, %if.then27
  %tobool34 = icmp ne i8* %temp.1, null, !dbg !1321
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1323

if.then35:                                        ; preds = %while_break___0
  br label %while_break, !dbg !1324

if.end36:                                         ; preds = %while_break___0
  br label %while.body, !dbg !1255, !llvm.loop !1326

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !1328

while_break:                                      ; preds = %while_break___3, %if.then35, %if.then11
  %temp.2 = phi i8* [ %temp.1, %if.then35 ], [ %temp.0, %if.then11 ], [ undef, %while_break___3 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8* %temp.2, metadata !1223, metadata !DIExpression()), !dbg !1224
  %tobool37 = icmp ne i8* %temp.2, null, !dbg !1329
  br i1 %tobool37, label %if.then38, label %if.end111, !dbg !1331

if.then38:                                        ; preds = %while_break
  %call39 = call i8* @fgets(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0), i32 1025, %struct._IO_FILE* %call5), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %call39, metadata !1336, metadata !DIExpression()), !dbg !1224
  %tobool40 = icmp ne i8* %call39, null, !dbg !1337
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !1339

if.then41:                                        ; preds = %if.then38
  %call42 = call i32 @fclose(%struct._IO_FILE* %call5), !dbg !1340
  br label %return, !dbg !1344

if.end43:                                         ; preds = %if.then38
  %call44 = call i8* @fgets(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0), i32 1025, %struct._IO_FILE* %call5), !dbg !1345
  call void @llvm.dbg.value(metadata i8* %call44, metadata !1348, metadata !DIExpression()), !dbg !1224
  %tobool45 = icmp ne i8* %call44, null, !dbg !1349
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !1351

if.then46:                                        ; preds = %if.end43
  %call47 = call i32 @fclose(%struct._IO_FILE* %call5), !dbg !1352
  br label %return, !dbg !1356

if.end48:                                         ; preds = %if.end43
  %call49 = call i32 @fclose(%struct._IO_FILE* %call5), !dbg !1357
  %call50 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0)) #9, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %call50, metadata !1362, metadata !DIExpression()), !dbg !1224
  %sub = sub i32 %call50, 1, !dbg !1363
  %idxprom = zext i32 %sub to i64, !dbg !1365
  %arrayidx51 = getelementptr inbounds [1025 x i8], [1025 x i8]* @on, i64 0, i64 %idxprom, !dbg !1365
  %6 = load i8, i8* %arrayidx51, align 1, !dbg !1365
  %conv52 = sext i8 %6 to i32, !dbg !1366
  %cmp53 = icmp eq i32 %conv52, 10, !dbg !1367
  br i1 %cmp53, label %if.then55, label %if.end60, !dbg !1368

if.then55:                                        ; preds = %if.end48
  %call56 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0)) #9, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %call56, metadata !1373, metadata !DIExpression()), !dbg !1224
  %sub57 = sub i32 %call56, 1, !dbg !1374
  %idxprom58 = zext i32 %sub57 to i64, !dbg !1375
  %arrayidx59 = getelementptr inbounds [1025 x i8], [1025 x i8]* @on, i64 0, i64 %idxprom58, !dbg !1375
  store i8 0, i8* %arrayidx59, align 1, !dbg !1376
  br label %if.end60, !dbg !1377

if.end60:                                         ; preds = %if.then55, %if.end48
  %call61 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0)) #9, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1381, metadata !DIExpression()), !dbg !1224
  %sub62 = sub i32 %call61, 1, !dbg !1382
  %idxprom63 = zext i32 %sub62 to i64, !dbg !1384
  %arrayidx64 = getelementptr inbounds [1025 x i8], [1025 x i8]* @off, i64 0, i64 %idxprom63, !dbg !1384
  %7 = load i8, i8* %arrayidx64, align 1, !dbg !1384
  %conv65 = sext i8 %7 to i32, !dbg !1385
  %cmp66 = icmp eq i32 %conv65, 10, !dbg !1386
  br i1 %cmp66, label %if.then68, label %if.end73, !dbg !1387

if.then68:                                        ; preds = %if.end60
  %call69 = call i32 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0)) #9, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %call69, metadata !1392, metadata !DIExpression()), !dbg !1224
  %sub70 = sub i32 %call69, 1, !dbg !1393
  %idxprom71 = zext i32 %sub70 to i64, !dbg !1394
  %arrayidx72 = getelementptr inbounds [1025 x i8], [1025 x i8]* @off, i64 0, i64 %idxprom71, !dbg !1394
  store i8 0, i8* %arrayidx72, align 1, !dbg !1395
  br label %if.end73, !dbg !1396

if.end73:                                         ; preds = %if.then68, %if.end60
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0), metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body74, !dbg !1397

while.body74:                                     ; preds = %if.end87, %if.end73
  %temp.3 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0), %if.end73 ], [ %temp.4, %if.end87 ], !dbg !1400
  call void @llvm.dbg.value(metadata i8* %temp.3, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while_continue___5, !dbg !1401

while_continue___5:                               ; preds = %while.body74
  br label %while_continue___1, !dbg !1401

while_continue___1:                               ; preds = %while_continue___5
  %tobool75 = icmp ne i8* %temp.3, null, !dbg !1402
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !1405

if.then76:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1406

if.end77:                                         ; preds = %while_continue___1
  %call78 = call i8* @strchr(i8* %temp.3, i32 37) #9, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %call78, metadata !1223, metadata !DIExpression()), !dbg !1224
  %tobool79 = icmp ne i8* %call78, null, !dbg !1411
  br i1 %tobool79, label %if.then80, label %if.end87, !dbg !1413

if.then80:                                        ; preds = %if.end77
  %add.ptr = getelementptr inbounds i8, i8* %call78, i64 1, !dbg !1414
  %8 = load i8, i8* %add.ptr, align 1, !dbg !1417
  %conv81 = sext i8 %8 to i32, !dbg !1418
  %cmp82 = icmp ne i32 %conv81, 37, !dbg !1419
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !1420

if.then84:                                        ; preds = %if.then80
  br label %return, !dbg !1421

if.end85:                                         ; preds = %if.then80
  %add.ptr86 = getelementptr inbounds i8, i8* %call78, i64 2, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %add.ptr86, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %if.end87, !dbg !1424

if.end87:                                         ; preds = %if.end85, %if.end77
  %temp.4 = phi i8* [ %add.ptr86, %if.end85 ], [ %call78, %if.end77 ], !dbg !1425
  call void @llvm.dbg.value(metadata i8* %temp.4, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body74, !dbg !1397, !llvm.loop !1426

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !1428

while_break___1:                                  ; preds = %while_break___5, %if.then76
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0), metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body88, !dbg !1429

while.body88:                                     ; preds = %if.end102, %while_break___1
  %temp.5 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0), %while_break___1 ], [ %temp.6, %if.end102 ], !dbg !1400
  call void @llvm.dbg.value(metadata i8* %temp.5, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while_continue___6, !dbg !1432

while_continue___6:                               ; preds = %while.body88
  br label %while_continue___2, !dbg !1432

while_continue___2:                               ; preds = %while_continue___6
  %tobool89 = icmp ne i8* %temp.5, null, !dbg !1433
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !1436

if.then90:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1437

if.end91:                                         ; preds = %while_continue___2
  %call92 = call i8* @strchr(i8* %temp.5, i32 37) #9, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %call92, metadata !1223, metadata !DIExpression()), !dbg !1224
  %tobool93 = icmp ne i8* %call92, null, !dbg !1442
  br i1 %tobool93, label %if.then94, label %if.end102, !dbg !1444

if.then94:                                        ; preds = %if.end91
  %add.ptr95 = getelementptr inbounds i8, i8* %call92, i64 1, !dbg !1445
  %9 = load i8, i8* %add.ptr95, align 1, !dbg !1448
  %conv96 = sext i8 %9 to i32, !dbg !1449
  %cmp97 = icmp ne i32 %conv96, 37, !dbg !1450
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !1451

if.then99:                                        ; preds = %if.then94
  br label %return, !dbg !1452

if.end100:                                        ; preds = %if.then94
  %add.ptr101 = getelementptr inbounds i8, i8* %call92, i64 2, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %add.ptr101, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %if.end102, !dbg !1455

if.end102:                                        ; preds = %if.end100, %if.end91
  %temp.6 = phi i8* [ %add.ptr101, %if.end100 ], [ %call92, %if.end91 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8* %temp.6, metadata !1223, metadata !DIExpression()), !dbg !1224
  br label %while.body88, !dbg !1429, !llvm.loop !1457

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !1459

while_break___2:                                  ; preds = %while_break___6, %if.then90
  %call103 = call i8* @escape(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0)), !dbg !1460
  %10 = ptrtoint i8* %call103 to i32, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %10, metadata !1464, metadata !DIExpression()), !dbg !1224
  %tobool104 = icmp ne i32 %10, 0, !dbg !1465
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !1467

if.then105:                                       ; preds = %while_break___2
  br label %return, !dbg !1468

if.end106:                                        ; preds = %while_break___2
  %call107 = call i8* @escape(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0)), !dbg !1470
  %11 = ptrtoint i8* %call107 to i32, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %11, metadata !1474, metadata !DIExpression()), !dbg !1224
  %tobool108 = icmp ne i32 %11, 0, !dbg !1475
  br i1 %tobool108, label %if.end110, label %if.then109, !dbg !1477

if.then109:                                       ; preds = %if.end106
  br label %return, !dbg !1478

if.end110:                                        ; preds = %if.end106
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @on, i32 0, i32 0), i8** @ptr_on, align 8, !dbg !1480
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @off, i32 0, i32 0), i8** @ptr_off, align 8, !dbg !1481
  br label %return, !dbg !1482

if.end111:                                        ; preds = %while_break
  %call112 = call i32 @fclose(%struct._IO_FILE* %call5), !dbg !1483
  br label %return, !dbg !1486

return:                                           ; preds = %if.end111, %if.end110, %if.then109, %if.then105, %if.then99, %if.then84, %if.then46, %if.then41, %if.then7
  %retval.0 = phi i32 [ -2, %if.then84 ], [ -2, %if.then99 ], [ 0, %if.end110 ], [ -2, %if.then109 ], [ -2, %if.then105 ], [ -2, %if.then46 ], [ -2, %if.then41 ], [ 1, %if.end111 ], [ -1, %if.then7 ], !dbg !1258
  ret i32 %retval.0, !dbg !1487
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1488 {
entry:
  %args = alloca %struct.alist, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1493, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.alist* %args, metadata !1494, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.declare(metadata !4, metadata !1496, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata !4, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata !4, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata !4, metadata !1502, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.declare(metadata !4, metadata !1504, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.declare(metadata !4, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.declare(metadata !4, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata !4, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.declare(metadata !4, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.declare(metadata !4, metadata !1514, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.declare(metadata !4, metadata !1516, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.declare(metadata !4, metadata !1518, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata !4, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.declare(metadata !4, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata !4, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata !4, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata !4, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.declare(metadata !4, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata !4, metadata !1532, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.declare(metadata !4, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata !4, metadata !1536, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.declare(metadata !4, metadata !1538, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.declare(metadata !4, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata !4, metadata !1542, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.declare(metadata !4, metadata !1544, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.declare(metadata !4, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.declare(metadata !4, metadata !1548, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.declare(metadata !4, metadata !1550, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata !4, metadata !1552, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.declare(metadata !4, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.declare(metadata !4, metadata !1556, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32 0, metadata !1558, metadata !DIExpression()), !dbg !1492
  %argv1 = getelementptr inbounds %struct.alist, %struct.alist* %args, i32 0, i32 2, !dbg !1559
  store i8** null, i8*** %argv1, align 8, !dbg !1562
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1563
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !1565
  %call = call i8* @strrchr(i8* %0, i32 47) #9, !dbg !1566
  store i8* %call, i8** @vtbasename, align 8, !dbg !1567
  %1 = load i8*, i8** @vtbasename, align 8, !dbg !1568
  %tobool = icmp ne i8* %1, null, !dbg !1568
  br i1 %tobool, label %if.then, label %if.else, !dbg !1570

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @vtbasename, align 8, !dbg !1571
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1571
  store i8* %incdec.ptr, i8** @vtbasename, align 8, !dbg !1571
  br label %if.end, !dbg !1573

if.else:                                          ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1574
  %3 = load i8*, i8** %add.ptr2, align 8, !dbg !1576
  store i8* %3, i8** @vtbasename, align 8, !dbg !1577
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** @vtbasename, align 8, !dbg !1578
  %call3 = call i8* @getenv(i8* %4) #7, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %call3, metadata !1582, metadata !DIExpression()), !dbg !1492
  %tobool4 = icmp ne i8* %call3, null, !dbg !1583
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1585

if.then5:                                         ; preds = %if.end
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %call6, metadata !1582, metadata !DIExpression()), !dbg !1492
  br label %if.end7, !dbg !1590

if.end7:                                          ; preds = %if.then5, %if.end
  %tmp.0 = phi i8* [ %call3, %if.end ], [ %call6, %if.then5 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !1582, metadata !DIExpression()), !dbg !1492
  %tobool8 = icmp ne i8* %tmp.0, null, !dbg !1592
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1594

if.then9:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), metadata !1582, metadata !DIExpression()), !dbg !1492
  br label %if.end10, !dbg !1595

if.end10:                                         ; preds = %if.then9, %if.end7
  %tmp.1 = phi i8* [ %tmp.0, %if.end7 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %if.then9 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8* %tmp.1, metadata !1582, metadata !DIExpression()), !dbg !1492
  %call11 = call i32 @strlen(i8* %tmp.1) #9, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1600, metadata !DIExpression()), !dbg !1492
  %add = add i32 %call11, 1, !dbg !1601
  %call12 = call noalias i8* @malloc(i32 %add) #7, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %call12, metadata !1604, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8* %call12, metadata !1605, metadata !DIExpression()), !dbg !1492
  %tobool13 = icmp ne i8* %call12, null, !dbg !1606
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !1608

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1609
  %6 = load i8*, i8** @vtbasename, align 8, !dbg !1613
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %6), !dbg !1614
  call void @exit(i32 1) #10, !dbg !1615
  unreachable, !dbg !1615

if.end16:                                         ; preds = %if.end10
  %call17 = call i8* @strcpy(i8* %call12, i8* %tmp.1) #7, !dbg !1617
  %tobool18 = icmp ne i8* %call12, null, !dbg !1620
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !1622

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 @string2arglist(i8* %call12, %struct.alist* %args), !dbg !1623
  %call21 = call i32 @process_opts(%struct.alist* %args), !dbg !1627
  br label %if.end22, !dbg !1629

if.end22:                                         ; preds = %if.then19, %if.end16
  %call23 = call i32 @argv2arglist(i32 %argc, i8** %argv, %struct.alist* %args), !dbg !1630
  %call24 = call i32 @process_opts(%struct.alist* %args), !dbg !1633
  %7 = load i32, i32* @dowork, align 4, !dbg !1635
  %tobool25 = icmp ne i32 %7, 0, !dbg !1635
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1637

if.then26:                                        ; preds = %if.end22
  call void @exit(i32 0) #10, !dbg !1638
  unreachable, !dbg !1638

if.end27:                                         ; preds = %if.end22
  %8 = load i32, i32* @quiet, align 4, !dbg !1642
  %tobool28 = icmp ne i32 %8, 0, !dbg !1642
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1644

if.then29:                                        ; preds = %if.end27
  call void @intro(), !dbg !1645
  br label %if.end30, !dbg !1649

if.end30:                                         ; preds = %if.then29, %if.end27
  %9 = load i32, i32* @builtin, align 4, !dbg !1650
  %tobool31 = icmp ne i32 %9, 0, !dbg !1650
  br i1 %tobool31, label %if.end89, label %if.then32, !dbg !1652

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @vtprintcap(), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %call33, metadata !1657, metadata !DIExpression()), !dbg !1492
  %cmp = icmp eq i32 %call33, -2, !dbg !1658
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !1661

if.then34:                                        ; preds = %if.then32
  br label %case_neg_2, !dbg !1662

if.end35:                                         ; preds = %if.then32
  %cmp36 = icmp eq i32 %call33, -1, !dbg !1664
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1666

if.then37:                                        ; preds = %if.end35
  br label %case_neg_1, !dbg !1667

if.end38:                                         ; preds = %if.end35
  %cmp39 = icmp eq i32 %call33, 0, !dbg !1669
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1671

if.then40:                                        ; preds = %if.end38
  br label %case_0, !dbg !1672

if.end41:                                         ; preds = %if.end38
  %cmp42 = icmp eq i32 %call33, 1, !dbg !1674
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1676

if.then43:                                        ; preds = %if.end41
  br label %case_1, !dbg !1677

if.end44:                                         ; preds = %if.end41
  br label %switch_default, !dbg !1679

case_neg_2:                                       ; preds = %if.then34
  %10 = load i32, i32* @quiet, align 4, !dbg !1680
  %tobool45 = icmp ne i32 %10, 0, !dbg !1680
  br i1 %tobool45, label %if.else52, label %if.then46, !dbg !1682

if.then46:                                        ; preds = %case_neg_2
  %11 = load i32, i32* @forcenv, align 4, !dbg !1683
  %tobool47 = icmp ne i32 %11, 0, !dbg !1683
  br i1 %tobool47, label %if.else50, label %if.then48, !dbg !1686

if.then48:                                        ; preds = %if.then46
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1687
  %13 = load i8*, i8** @vtbasename, align 8, !dbg !1691
  %14 = load i8*, i8** @libtermname, align 8, !dbg !1692
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0), i8* %13, i8* %14), !dbg !1693
  br label %if.end51, !dbg !1694

if.else50:                                        ; preds = %if.then46
  br label %_L, !dbg !1695

if.end51:                                         ; preds = %if.then48
  br label %if.end57, !dbg !1697

if.else52:                                        ; preds = %case_neg_2
  br label %_L, !dbg !1697

_L:                                               ; preds = %if.else52, %if.else50
  %15 = load i32, i32* @forcenv, align 4, !dbg !1698
  %tobool53 = icmp ne i32 %15, 0, !dbg !1698
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !1700

if.then54:                                        ; preds = %_L
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1701
  %17 = load i8*, i8** @vtbasename, align 8, !dbg !1705
  %18 = load i8*, i8** @libtermname, align 8, !dbg !1706
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0), i8* %17, i8* %18), !dbg !1707
  call void @exit(i32 1) #10, !dbg !1708
  unreachable, !dbg !1708

if.end56:                                         ; preds = %_L
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end51
  br label %switch_break, !dbg !1710

case_neg_1:                                       ; preds = %if.then37
  %19 = load i32, i32* @quiet, align 4, !dbg !1711
  %tobool58 = icmp ne i32 %19, 0, !dbg !1711
  br i1 %tobool58, label %if.else65, label %if.then59, !dbg !1713

if.then59:                                        ; preds = %case_neg_1
  %20 = load i32, i32* @forcenv, align 4, !dbg !1714
  %tobool60 = icmp ne i32 %20, 0, !dbg !1714
  br i1 %tobool60, label %if.else63, label %if.then61, !dbg !1717

if.then61:                                        ; preds = %if.then59
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1718
  %22 = load i8*, i8** @vtbasename, align 8, !dbg !1722
  %23 = load i8*, i8** @libtermname, align 8, !dbg !1723
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i8* %22, i8* %23), !dbg !1724
  br label %if.end64, !dbg !1725

if.else63:                                        ; preds = %if.then59
  br label %_L___0, !dbg !1726

if.end64:                                         ; preds = %if.then61
  br label %if.end70, !dbg !1728

if.else65:                                        ; preds = %case_neg_1
  br label %_L___0, !dbg !1728

_L___0:                                           ; preds = %if.else65, %if.else63
  %24 = load i32, i32* @forcenv, align 4, !dbg !1729
  %tobool66 = icmp ne i32 %24, 0, !dbg !1729
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !1731

if.then67:                                        ; preds = %_L___0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1732
  %26 = load i8*, i8** @vtbasename, align 8, !dbg !1736
  %27 = load i8*, i8** @libtermname, align 8, !dbg !1737
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* %26, i8* %27), !dbg !1738
  call void @exit(i32 1) #10, !dbg !1739
  unreachable, !dbg !1739

if.end69:                                         ; preds = %_L___0
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end64
  br label %switch_break, !dbg !1741

case_0:                                           ; preds = %if.then40
  %28 = load i32, i32* @quiet, align 4, !dbg !1742
  %tobool71 = icmp ne i32 %28, 0, !dbg !1742
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !1744

if.then72:                                        ; preds = %case_0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1745
  %30 = load i8*, i8** @vtbasename, align 8, !dbg !1749
  %31 = load i8*, i8** @termname, align 8, !dbg !1750
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %30, i8* %31), !dbg !1751
  br label %if.end74, !dbg !1752

if.end74:                                         ; preds = %if.then72, %case_0
  br label %switch_break, !dbg !1753

case_1:                                           ; preds = %if.then43
  %32 = load i32, i32* @quiet, align 4, !dbg !1754
  %tobool75 = icmp ne i32 %32, 0, !dbg !1754
  br i1 %tobool75, label %if.else82, label %if.then76, !dbg !1756

if.then76:                                        ; preds = %case_1
  %33 = load i32, i32* @forcenv, align 4, !dbg !1757
  %tobool77 = icmp ne i32 %33, 0, !dbg !1757
  br i1 %tobool77, label %if.else80, label %if.then78, !dbg !1760

if.then78:                                        ; preds = %if.then76
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1761
  %35 = load i8*, i8** @vtbasename, align 8, !dbg !1765
  %36 = load i8*, i8** @termname, align 8, !dbg !1766
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i32 0, i32 0), i8* %35, i8* %36), !dbg !1767
  br label %if.end81, !dbg !1768

if.else80:                                        ; preds = %if.then76
  br label %_L___1, !dbg !1769

if.end81:                                         ; preds = %if.then78
  br label %if.end87, !dbg !1771

if.else82:                                        ; preds = %case_1
  br label %_L___1, !dbg !1771

_L___1:                                           ; preds = %if.else82, %if.else80
  %37 = load i32, i32* @forcenv, align 4, !dbg !1772
  %tobool83 = icmp ne i32 %37, 0, !dbg !1772
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !1774

if.then84:                                        ; preds = %_L___1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1775
  %39 = load i8*, i8** @vtbasename, align 8, !dbg !1779
  %40 = load i8*, i8** @termname, align 8, !dbg !1780
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* %39, i8* %40), !dbg !1781
  call void @exit(i32 1) #10, !dbg !1782
  unreachable, !dbg !1782

if.end86:                                         ; preds = %_L___1
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end81
  br label %switch_break, !dbg !1784

switch_default:                                   ; preds = %if.end44
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1785
  %42 = load i8*, i8** @vtbasename, align 8, !dbg !1788
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* %42), !dbg !1789
  call void @abort() #10, !dbg !1790
  unreachable, !dbg !1790

switch_break:                                     ; preds = %if.end87, %if.end74, %if.end70, %if.end57
  br label %if.end89, !dbg !1792

if.end89:                                         ; preds = %switch_break, %if.end30
  %43 = load i32, i32* @device, align 4, !dbg !1793
  %tobool90 = icmp ne i32 %43, 0, !dbg !1793
  br i1 %tobool90, label %if.then91, label %if.else101, !dbg !1795

if.then91:                                        ; preds = %if.end89
  %44 = load i8*, i8** @devname, align 8, !dbg !1796
  %call92 = call %struct._IO_FILE* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0)), !dbg !1800
  store %struct._IO_FILE* %call92, %struct._IO_FILE** @outfile, align 8, !dbg !1801
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1802
  %tobool93 = icmp ne %struct._IO_FILE* %45, null, !dbg !1802
  br i1 %tobool93, label %if.end96, label %if.then94, !dbg !1804

if.then94:                                        ; preds = %if.then91
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1805
  %47 = load i8*, i8** @vtbasename, align 8, !dbg !1809
  %48 = load i8*, i8** @devname, align 8, !dbg !1810
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i8* %47, i8* %48), !dbg !1811
  call void @exit(i32 1) #10, !dbg !1812
  unreachable, !dbg !1812

if.end96:                                         ; preds = %if.then91
  %49 = load i32, i32* @quiet, align 4, !dbg !1814
  %tobool97 = icmp ne i32 %49, 0, !dbg !1814
  br i1 %tobool97, label %if.end100, label %if.then98, !dbg !1816

if.then98:                                        ; preds = %if.end96
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1817
  %51 = load i8*, i8** @vtbasename, align 8, !dbg !1821
  %52 = load i8*, i8** @devname, align 8, !dbg !1822
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), i8* %51, i8* %52), !dbg !1823
  br label %if.end100, !dbg !1824

if.end100:                                        ; preds = %if.then98, %if.end96
  br label %if.end106, !dbg !1825

if.else101:                                       ; preds = %if.end89
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1826
  store %struct._IO_FILE* %53, %struct._IO_FILE** @outfile, align 8, !dbg !1828
  %54 = load i32, i32* @quiet, align 4, !dbg !1829
  %tobool102 = icmp ne i32 %54, 0, !dbg !1829
  br i1 %tobool102, label %if.end105, label %if.then103, !dbg !1831

if.then103:                                       ; preds = %if.else101
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1832
  %56 = load i8*, i8** @vtbasename, align 8, !dbg !1836
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i8* %56), !dbg !1837
  br label %if.end105, !dbg !1838

if.end105:                                        ; preds = %if.then103, %if.else101
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end100
  %57 = load i8*, i8** @vtbasename, align 8, !dbg !1839
  %call107 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %call107, metadata !1843, metadata !DIExpression()), !dbg !1492
  %tobool108 = icmp ne i32 %call107, 0, !dbg !1844
  br i1 %tobool108, label %if.end113, label %if.then109, !dbg !1846

if.then109:                                       ; preds = %if.end106
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1847
  %call110 = call i32 @fflush(%struct._IO_FILE* %58), !dbg !1851
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1852
  %60 = load i8*, i8** @ptr_on, align 8, !dbg !1854
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* %60), !dbg !1855
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1856
  %call112 = call i32 @fflush(%struct._IO_FILE* %61), !dbg !1858
  call void @exit(i32 0) #10, !dbg !1859
  unreachable, !dbg !1859

if.end113:                                        ; preds = %if.end106
  %62 = load i8*, i8** @vtbasename, align 8, !dbg !1861
  %call114 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %call114, metadata !1865, metadata !DIExpression()), !dbg !1492
  %tobool115 = icmp ne i32 %call114, 0, !dbg !1866
  br i1 %tobool115, label %if.end120, label %if.then116, !dbg !1868

if.then116:                                       ; preds = %if.end113
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1869
  %call117 = call i32 @fflush(%struct._IO_FILE* %63), !dbg !1873
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1874
  %65 = load i8*, i8** @ptr_off, align 8, !dbg !1876
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* %65), !dbg !1877
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1878
  %call119 = call i32 @fflush(%struct._IO_FILE* %66), !dbg !1880
  call void @exit(i32 0) #10, !dbg !1881
  unreachable, !dbg !1881

if.end120:                                        ; preds = %if.end113
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1883
  %call121 = call i32 @fileno(%struct._IO_FILE* %67) #7, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %call121, metadata !1887, metadata !DIExpression()), !dbg !1492
  %call122 = call i32 @isatty(i32 %call121) #7, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %call122, metadata !1890, metadata !DIExpression()), !dbg !1492
  %tobool123 = icmp ne i32 %call122, 0, !dbg !1891
  br i1 %tobool123, label %if.then124, label %if.else133, !dbg !1893

if.then124:                                       ; preds = %if.end120
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1894
  %call125 = call i32 @fileno(%struct._IO_FILE* %68) #7, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %call125, metadata !1899, metadata !DIExpression()), !dbg !1492
  %call126 = call i32 @save_termstate(i32 %call125, %struct.termios* @oldstate), !dbg !1900
  store i32 1, i32* @state_saved, align 4, !dbg !1902
  %call127 = call i8* @memcpy(i8* bitcast (%struct.termios* @newstate to i8*), i8* bitcast (%struct.termios* @oldstate to i8*), i32 60) #7, !dbg !1903
  %69 = load i32, i32* @binary, align 4, !dbg !1905
  %tobool128 = icmp ne i32 %69, 0, !dbg !1905
  br i1 %tobool128, label %if.then129, label %if.end132, !dbg !1907

if.then129:                                       ; preds = %if.then124
  call void @raw_termstate(%struct.termios* @newstate), !dbg !1908
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1912
  %call130 = call i32 @fileno(%struct._IO_FILE* %70) #7, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %call130, metadata !1915, metadata !DIExpression()), !dbg !1492
  %call131 = call i32 @restore_termstate(i32 %call130, %struct.termios* @newstate), !dbg !1916
  br label %if.end132, !dbg !1918

if.end132:                                        ; preds = %if.then129, %if.then124
  br label %if.end134, !dbg !1919

if.else133:                                       ; preds = %if.end120
  store i32 0, i32* @binary, align 4, !dbg !1920
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %if.end132
  %71 = load i32, i32* @quiet, align 4, !dbg !1922
  %tobool135 = icmp ne i32 %71, 0, !dbg !1922
  br i1 %tobool135, label %if.end160, label %if.then136, !dbg !1924

if.then136:                                       ; preds = %if.end134
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1925
  %73 = load i8*, i8** @vtbasename, align 8, !dbg !1929
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* %73), !dbg !1930
  %74 = load i32, i32* @builtin, align 4, !dbg !1931
  %tobool138 = icmp ne i32 %74, 0, !dbg !1931
  br i1 %tobool138, label %if.then139, label %if.end141, !dbg !1933

if.then139:                                       ; preds = %if.then136
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1934
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0)), !dbg !1938
  br label %if.end141, !dbg !1939

if.end141:                                        ; preds = %if.then139, %if.then136
  %76 = load i32, i32* @binary, align 4, !dbg !1940
  %tobool142 = icmp ne i32 %76, 0, !dbg !1940
  br i1 %tobool142, label %if.then143, label %if.end145, !dbg !1942

if.then143:                                       ; preds = %if.end141
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1943
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)), !dbg !1947
  br label %if.end145, !dbg !1948

if.end145:                                        ; preds = %if.then143, %if.end141
  %78 = load i32, i32* @ffeed, align 4, !dbg !1949
  %tobool146 = icmp ne i32 %78, 0, !dbg !1949
  br i1 %tobool146, label %if.then147, label %if.end149, !dbg !1951

if.then147:                                       ; preds = %if.end145
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1952
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)), !dbg !1956
  br label %if.end149, !dbg !1957

if.end149:                                        ; preds = %if.then147, %if.end145
  %80 = load i32, i32* @stripcr, align 4, !dbg !1958
  %tobool150 = icmp ne i32 %80, 0, !dbg !1958
  br i1 %tobool150, label %if.then151, label %if.end153, !dbg !1960

if.then151:                                       ; preds = %if.end149
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1961
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)), !dbg !1965
  br label %if.end153, !dbg !1966

if.end153:                                        ; preds = %if.then151, %if.end149
  %82 = load i32, i32* @addcr, align 4, !dbg !1967
  %tobool154 = icmp ne i32 %82, 0, !dbg !1967
  br i1 %tobool154, label %if.then155, label %if.end157, !dbg !1969

if.then155:                                       ; preds = %if.end153
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1970
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0)), !dbg !1974
  br label %if.end157, !dbg !1975

if.end157:                                        ; preds = %if.then155, %if.end153
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1976
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)), !dbg !1979
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1980
  %call159 = call i32 @fflush(%struct._IO_FILE* %85), !dbg !1982
  br label %if.end160, !dbg !1983

if.end160:                                        ; preds = %if.end157, %if.end134
  %call161 = call void (i32)* @signal(i32 1, void (i32)* @sighandler) #7, !dbg !1984
  %call162 = call void (i32)* @signal(i32 3, void (i32)* @sighandler) #7, !dbg !1987
  %call163 = call void (i32)* @signal(i32 20, void (i32)* @sighandler) #7, !dbg !1989
  %call164 = call void (i32)* @signal(i32 2, void (i32)* @sighandler) #7, !dbg !1991
  %call165 = call void (i32)* @signal(i32 15, void (i32)* @sighandler) #7, !dbg !1993
  %86 = load i32, i32* @optind, align 4, !dbg !1995
  %sub = sub nsw i32 %argc, %86, !dbg !1996
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1997, metadata !DIExpression()), !dbg !1492
  br label %while.body, !dbg !1998

while.body:                                       ; preds = %if.end235, %if.end160
  %cnt.0 = phi i32 [ 0, %if.end160 ], [ %cnt.1, %if.end235 ], !dbg !1591
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !1558, metadata !DIExpression()), !dbg !1492
  br label %while_continue___1, !dbg !2001

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !2001

while_continue:                                   ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i32 0, metadata !2002, metadata !DIExpression()), !dbg !1492
  %87 = load i32, i32* @optind, align 4, !dbg !2003
  %cmp166 = icmp eq i32 %87, %argc, !dbg !2006
  br i1 %cmp166, label %if.then167, label %if.else168, !dbg !2007

if.then167:                                       ; preds = %while_continue
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %88, metadata !2010, metadata !DIExpression()), !dbg !1492
  br label %if.end171, !dbg !2011

if.else168:                                       ; preds = %while_continue
  %89 = load i32, i32* @optind, align 4, !dbg !2012
  %idx.ext = sext i32 %89 to i64, !dbg !2016
  %add.ptr169 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !2016
  %90 = load i8*, i8** %add.ptr169, align 8, !dbg !2017
  %call170 = call %struct._IO_FILE* @fopen(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)), !dbg !2018
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call170, metadata !2010, metadata !DIExpression()), !dbg !1492
  br label %if.end171

if.end171:                                        ; preds = %if.else168, %if.then167
  %infile.0 = phi %struct._IO_FILE* [ %88, %if.then167 ], [ %call170, %if.else168 ], !dbg !2019
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %infile.0, metadata !2010, metadata !DIExpression()), !dbg !1492
  %tobool172 = icmp ne %struct._IO_FILE* %infile.0, null, !dbg !2020
  br i1 %tobool172, label %if.end177, label %if.then173, !dbg !2022

if.then173:                                       ; preds = %if.end171
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2023
  %92 = load i8*, i8** @vtbasename, align 8, !dbg !2027
  %93 = load i32, i32* @optind, align 4, !dbg !2028
  %idx.ext174 = sext i32 %93 to i64, !dbg !2029
  %add.ptr175 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext174, !dbg !2029
  %94 = load i8*, i8** %add.ptr175, align 8, !dbg !2030
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i32 0, i32 0), i8* %92, i8* %94), !dbg !2031
  %95 = load i32, i32* @optind, align 4, !dbg !2032
  %inc = add nsw i32 %95, 1, !dbg !2032
  store i32 %inc, i32* @optind, align 4, !dbg !2032
  br label %__Cont, !dbg !2033

if.end177:                                        ; preds = %if.end171
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2034
  %call178 = call i32 @fflush(%struct._IO_FILE* %96), !dbg !2037
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2038
  %98 = load i8*, i8** @ptr_on, align 8, !dbg !2040
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* %98), !dbg !2041
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2042
  %call180 = call i32 @fflush(%struct._IO_FILE* %99), !dbg !2044
  br label %while.body182, !dbg !2045

while.body182:                                    ; preds = %switch_break___0, %if.end177
  %lastch.0 = phi i32 [ 0, %if.end177 ], [ %call183, %switch_break___0 ], !dbg !2048
  call void @llvm.dbg.value(metadata i32 %lastch.0, metadata !2002, metadata !DIExpression()), !dbg !1492
  br label %while_continue___2, !dbg !2049

while_continue___2:                               ; preds = %while.body182
  br label %while_continue___0, !dbg !2049

while_continue___0:                               ; preds = %while_continue___2
  %call183 = call i32 @fgetc(%struct._IO_FILE* %infile.0), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %call183, metadata !2054, metadata !DIExpression()), !dbg !1492
  %cmp184 = icmp ne i32 %call183, -1, !dbg !2055
  br i1 %cmp184, label %if.end186, label %if.then185, !dbg !2057

if.then185:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !2058

if.end186:                                        ; preds = %while_continue___0
  %cmp187 = icmp eq i32 %call183, 13, !dbg !2060
  br i1 %cmp187, label %if.then188, label %if.end189, !dbg !2063

if.then188:                                       ; preds = %if.end186
  br label %case_13, !dbg !2064

if.end189:                                        ; preds = %if.end186
  %cmp190 = icmp eq i32 %call183, 10, !dbg !2066
  br i1 %cmp190, label %if.then191, label %if.end192, !dbg !2068

if.then191:                                       ; preds = %if.end189
  br label %case_10, !dbg !2069

if.end192:                                        ; preds = %if.end189
  br label %switch_default___0, !dbg !2071

case_13:                                          ; preds = %if.then188
  %100 = load i32, i32* @stripcr, align 4, !dbg !2072
  %tobool193 = icmp ne i32 %100, 0, !dbg !2072
  br i1 %tobool193, label %if.end196, label %if.then194, !dbg !2074

if.then194:                                       ; preds = %case_13
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2075
  %call195 = call i32 @fputc(i32 %call183, %struct._IO_FILE* %101), !dbg !2079
  br label %if.end196, !dbg !2080

if.end196:                                        ; preds = %if.then194, %case_13
  br label %switch_break___0, !dbg !2081

case_10:                                          ; preds = %if.then191
  %cmp197 = icmp ne i32 %lastch.0, 13, !dbg !2082
  br i1 %cmp197, label %if.then198, label %if.end203, !dbg !2084

if.then198:                                       ; preds = %case_10
  %102 = load i32, i32* @addcr, align 4, !dbg !2085
  %tobool199 = icmp ne i32 %102, 0, !dbg !2085
  br i1 %tobool199, label %if.then200, label %if.end202, !dbg !2088

if.then200:                                       ; preds = %if.then198
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2089
  %call201 = call i32 @fputc(i32 13, %struct._IO_FILE* %103), !dbg !2093
  br label %if.end202, !dbg !2094

if.end202:                                        ; preds = %if.then200, %if.then198
  br label %if.end203, !dbg !2095

if.end203:                                        ; preds = %if.end202, %case_10
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2096
  %call204 = call i32 @fputc(i32 %call183, %struct._IO_FILE* %104), !dbg !2099
  br label %switch_break___0, !dbg !2100

switch_default___0:                               ; preds = %if.end192
  %cmp205 = icmp eq i32 %lastch.0, 13, !dbg !2101
  br i1 %cmp205, label %if.then206, label %if.end211, !dbg !2103

if.then206:                                       ; preds = %switch_default___0
  %105 = load i32, i32* @stripcr, align 4, !dbg !2104
  %tobool207 = icmp ne i32 %105, 0, !dbg !2104
  br i1 %tobool207, label %if.then208, label %if.end210, !dbg !2107

if.then208:                                       ; preds = %if.then206
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2108
  %call209 = call i32 @fputc(i32 13, %struct._IO_FILE* %106), !dbg !2112
  br label %if.end210, !dbg !2113

if.end210:                                        ; preds = %if.then208, %if.then206
  br label %if.end211, !dbg !2114

if.end211:                                        ; preds = %if.end210, %switch_default___0
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2115
  %call212 = call i32 @fputc(i32 %call183, %struct._IO_FILE* %107), !dbg !2118
  br label %switch_break___0, !dbg !2119

switch_break___0:                                 ; preds = %if.end211, %if.end203, %if.end196
  call void @llvm.dbg.value(metadata i32 %call183, metadata !2002, metadata !DIExpression()), !dbg !1492
  br label %while.body182, !dbg !2045, !llvm.loop !2120

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !2122

while_break___0:                                  ; preds = %while_break___2, %if.then185
  %call213 = call i32 @fclose(%struct._IO_FILE* %infile.0), !dbg !2123
  %108 = load i32, i32* @ffeed, align 4, !dbg !2126
  %tobool214 = icmp ne i32 %108, 0, !dbg !2126
  br i1 %tobool214, label %if.then215, label %if.end217, !dbg !2128

if.then215:                                       ; preds = %while_break___0
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2129
  %call216 = call i32 @fputc(i32 12, %struct._IO_FILE* %109), !dbg !2133
  br label %if.end217, !dbg !2134

if.end217:                                        ; preds = %if.then215, %while_break___0
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2135
  %111 = load i8*, i8** @ptr_off, align 8, !dbg !2138
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* %111), !dbg !2139
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2140
  %call219 = call i32 @fflush(%struct._IO_FILE* %112), !dbg !2142
  %inc220 = add nsw i32 %cnt.0, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %inc220, metadata !1558, metadata !DIExpression()), !dbg !1492
  %113 = load i32, i32* @quiet, align 4, !dbg !2144
  %tobool221 = icmp ne i32 %113, 0, !dbg !2144
  br i1 %tobool221, label %if.end231, label %if.then222, !dbg !2146

if.then222:                                       ; preds = %if.end217
  %114 = load i32, i32* @optind, align 4, !dbg !2147
  %cmp223 = icmp eq i32 %argc, %114, !dbg !2150
  br i1 %cmp223, label %if.then224, label %if.else226, !dbg !2151

if.then224:                                       ; preds = %if.then222
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2152
  %116 = load i8*, i8** @vtbasename, align 8, !dbg !2156
  %call225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* %116), !dbg !2157
  br label %if.end230, !dbg !2158

if.else226:                                       ; preds = %if.then222
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2159
  %118 = load i8*, i8** @vtbasename, align 8, !dbg !2163
  %119 = load i32, i32* @optind, align 4, !dbg !2164
  %idx.ext227 = sext i32 %119 to i64, !dbg !2165
  %add.ptr228 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext227, !dbg !2165
  %120 = load i8*, i8** %add.ptr228, align 8, !dbg !2166
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0), i8* %118, i8* %120), !dbg !2167
  br label %if.end230

if.end230:                                        ; preds = %if.else226, %if.then224
  br label %if.end231, !dbg !2168

if.end231:                                        ; preds = %if.end230, %if.end217
  %121 = load i32, i32* @optind, align 4, !dbg !2169
  %inc232 = add nsw i32 %121, 1, !dbg !2169
  store i32 %inc232, i32* @optind, align 4, !dbg !2169
  br label %__Cont, !dbg !2170

__Cont:                                           ; preds = %if.end231, %if.then173
  %cnt.1 = phi i32 [ %inc220, %if.end231 ], [ %cnt.0, %if.then173 ], !dbg !1591
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !1558, metadata !DIExpression()), !dbg !1492
  %122 = load i32, i32* @optind, align 4, !dbg !2171
  %cmp233 = icmp slt i32 %122, %argc, !dbg !2173
  br i1 %cmp233, label %if.end235, label %if.then234, !dbg !2174

if.then234:                                       ; preds = %__Cont
  br label %while_break, !dbg !2175

if.end235:                                        ; preds = %__Cont
  br label %while.body, !dbg !1998, !llvm.loop !2177

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !2179

while_break:                                      ; preds = %while_break___1, %if.then234
  %123 = load i32, i32* @state_saved, align 4, !dbg !2180
  %tobool236 = icmp ne i32 %123, 0, !dbg !2180
  br i1 %tobool236, label %if.then237, label %if.end240, !dbg !2182

if.then237:                                       ; preds = %while_break
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2183
  %call238 = call i32 @fileno(%struct._IO_FILE* %124) #7, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %call238, metadata !2188, metadata !DIExpression()), !dbg !1492
  %call239 = call i32 @restore_termstate(i32 %call238, %struct.termios* @oldstate), !dbg !2189
  br label %if.end240, !dbg !2191

if.end240:                                        ; preds = %if.then237, %while_break
  %125 = load i32, i32* @quiet, align 4, !dbg !2192
  %tobool241 = icmp ne i32 %125, 0, !dbg !2192
  br i1 %tobool241, label %if.end248, label %if.then242, !dbg !2194

if.then242:                                       ; preds = %if.end240
  %cmp243 = icmp eq i32 %cnt.1, 1, !dbg !2195
  br i1 %cmp243, label %if.then244, label %if.else245, !dbg !2198

if.then244:                                       ; preds = %if.then242
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), metadata !2199, metadata !DIExpression()), !dbg !1492
  br label %if.end246, !dbg !2200

if.else245:                                       ; preds = %if.then242
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), metadata !2199, metadata !DIExpression()), !dbg !1492
  br label %if.end246

if.end246:                                        ; preds = %if.else245, %if.then244
  %tmp___9.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %if.then244 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), %if.else245 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8* %tmp___9.0, metadata !2199, metadata !DIExpression()), !dbg !1492
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2203
  %127 = load i8*, i8** @vtbasename, align 8, !dbg !2206
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i8* %127, i32 %cnt.1, i8* %tmp___9.0, i32 %sub), !dbg !2207
  br label %if.end248, !dbg !2208

if.end248:                                        ; preds = %if.end246, %if.end240
  ret i32 0, !dbg !2209
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

declare i32 @fgetc(%struct._IO_FILE*) #5

declare i32 @fputc(i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!144, !145, !146, !147, !148}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptr_on", scope: !2, file: !100, line: 87, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !97, nameTableKind: GNU)
!3 = !DIFile(filename: "c/vtprint-2.0.2.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !27, !28, !30, !33, !31, !34, !36, !32, !37, !95}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !9, line: 30, size: 480, elements: !10)
!9 = !DIFile(filename: "/usr/include/bits/termios.h", directory: "")
!10 = !{!11, !14, !15, !16, !17, !20, !24, !26}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !8, file: !9, line: 31, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !9, line: 27, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !8, file: !9, line: 32, baseType: !12, size: 32, offset: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !8, file: !9, line: 33, baseType: !12, size: 32, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !8, file: !9, line: 34, baseType: !12, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !8, file: !9, line: 35, baseType: !18, size: 8, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !9, line: 25, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !8, file: !9, line: 36, baseType: !21, size: 256, offset: 136)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !8, file: !9, line: 37, baseType: !25, size: 32, offset: 416)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !9, line: 26, baseType: !13)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !8, file: !9, line: 38, baseType: !25, size: 32, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 211, baseType: !13)
!29 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 49, baseType: !40)
!39 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 271, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !63, !64, !65, !66, !70, !72, !74, !78, !81, !85, !86, !87, !88, !89, !90, !91}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 272, baseType: !36, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 273, baseType: !31, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 274, baseType: !31, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 275, baseType: !31, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 276, baseType: !31, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 277, baseType: !31, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 278, baseType: !31, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 279, baseType: !31, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 280, baseType: !31, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 281, baseType: !31, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 282, baseType: !31, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 283, baseType: !31, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 284, baseType: !56, size: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 186, size: 192, elements: !58)
!58 = !{!59, !60, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !57, file: !41, line: 187, baseType: !56, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !57, file: !41, line: 188, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !57, file: !41, line: 189, baseType: !36, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 285, baseType: !61, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 286, baseType: !36, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 287, baseType: !36, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 288, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 141, baseType: !69)
!68 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 289, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 290, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 291, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 292, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 180, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 293, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 142, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !68, line: 56, baseType: !84)
!84 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !40, file: !41, line: 294, baseType: !27, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !40, file: !41, line: 295, baseType: !27, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !40, file: !41, line: 296, baseType: !27, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !40, file: !41, line: 297, baseType: !27, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 298, baseType: !28, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 299, baseType: !36, size: 32, offset: 1504)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 300, baseType: !92, size: 192, offset: 1536)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 24)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!97 = !{!0, !98, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !133, !135, !137, !142}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "ptr_off", scope: !2, file: !100, line: 88, type: !31, isLocal: false, isDefinition: true)
!100 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/vtprint.c", directory: "")
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "termname", scope: !2, file: !100, line: 91, type: !31, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "libtermname", scope: !2, file: !100, line: 92, type: !31, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "devname", scope: !2, file: !100, line: 93, type: !31, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "vtbasename", scope: !2, file: !100, line: 94, type: !31, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !100, line: 97, type: !36, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "binary", scope: !2, file: !100, line: 98, type: !36, isLocal: false, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "ffeed", scope: !2, file: !100, line: 99, type: !36, isLocal: false, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "device", scope: !2, file: !100, line: 100, type: !36, isLocal: false, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "stripcr", scope: !2, file: !100, line: 101, type: !36, isLocal: false, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "addcr", scope: !2, file: !100, line: 102, type: !36, isLocal: false, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "builtin", scope: !2, file: !100, line: 103, type: !36, isLocal: false, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "forcenv", scope: !2, file: !100, line: 104, type: !36, isLocal: false, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "dowork", scope: !2, file: !100, line: 105, type: !36, isLocal: false, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "state_saved", scope: !2, file: !100, line: 108, type: !36, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "oldstate", scope: !2, file: !100, line: 109, type: !131, isLocal: false, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "termstate", file: !132, line: 57, baseType: !8)
!132 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/termstate.h", directory: "")
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "newstate", scope: !2, file: !100, line: 110, type: !131, isLocal: false, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "outfile", scope: !2, file: !100, line: 113, type: !37, isLocal: false, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "on", scope: !2, file: !100, line: 337, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8200, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1025)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "off", scope: !2, file: !100, line: 338, type: !139, isLocal: true, isDefinition: true)
!144 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{i32 7, !"PIC Level", i32 2}
!149 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!150 = distinct !DISubprogram(name: "save_termstate", scope: !151, file: !151, line: 73, type: !152, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!151 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/termstate.c", directory: "")
!152 = !DISubroutineType(types: !153)
!153 = !{!36, !36, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!155 = !DILocalVariable(name: "fd", arg: 1, scope: !150, file: !151, line: 73, type: !36)
!156 = !DILocation(line: 0, scope: !150)
!157 = !DILocalVariable(name: "state", arg: 2, scope: !150, file: !151, line: 73, type: !154)
!158 = !DILocation(line: 75, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !151, line: 80, column: 3)
!160 = distinct !DILexicalBlock(scope: !161, file: !151, line: 79, column: 3)
!161 = distinct !DILexicalBlock(scope: !150, file: !151, line: 78, column: 3)
!162 = !DILocalVariable(name: "tmp", scope: !150, file: !151, line: 75, type: !36)
!163 = !DILocation(line: 75, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !151, line: 75, column: 7)
!165 = !DILocation(line: 75, column: 7, scope: !161)
!166 = !DILocation(line: 75, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !151, line: 75, column: 14)
!168 = !DILocation(line: 82, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !151, line: 78, column: 3)
!170 = distinct !DILexicalBlock(scope: !161, file: !151, line: 77, column: 3)
!171 = !DILocalVariable(name: "tmp___0", scope: !150, file: !151, line: 76, type: !36)
!172 = !DILocation(line: 82, column: 3, scope: !161)
!173 = !DILocation(line: 0, scope: !161)
!174 = !DILocation(line: 84, column: 1, scope: !150)
!175 = distinct !DISubprogram(name: "restore_termstate", scope: !151, file: !151, line: 102, type: !152, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DILocalVariable(name: "fd", arg: 1, scope: !175, file: !151, line: 102, type: !36)
!177 = !DILocation(line: 0, scope: !175)
!178 = !DILocalVariable(name: "state", arg: 2, scope: !175, file: !151, line: 102, type: !154)
!179 = !DILocation(line: 104, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !151, line: 109, column: 3)
!181 = distinct !DILexicalBlock(scope: !182, file: !151, line: 108, column: 3)
!182 = distinct !DILexicalBlock(scope: !175, file: !151, line: 107, column: 3)
!183 = !DILocalVariable(name: "tmp", scope: !175, file: !151, line: 104, type: !36)
!184 = !DILocation(line: 104, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !151, line: 104, column: 7)
!186 = !DILocation(line: 104, column: 7, scope: !182)
!187 = !DILocation(line: 104, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !151, line: 104, column: 14)
!189 = !DILocation(line: 111, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !151, line: 107, column: 3)
!191 = distinct !DILexicalBlock(scope: !182, file: !151, line: 106, column: 3)
!192 = !DILocalVariable(name: "tmp___0", scope: !175, file: !151, line: 105, type: !36)
!193 = !DILocation(line: 111, column: 3, scope: !182)
!194 = !DILocation(line: 0, scope: !182)
!195 = !DILocation(line: 113, column: 1, scope: !175)
!196 = distinct !DISubprogram(name: "raw_termstate", scope: !151, file: !151, line: 129, type: !197, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !154}
!199 = !DILocalVariable(name: "state", arg: 1, scope: !196, file: !151, line: 129, type: !154)
!200 = !DILocation(line: 0, scope: !196)
!201 = !DILocation(line: 135, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !151, line: 133, column: 3)
!203 = !DILocation(line: 135, column: 18, scope: !202)
!204 = !DILocation(line: 138, column: 3, scope: !202)
!205 = distinct !DISubprogram(name: "string2arglist", scope: !206, file: !206, line: 67, type: !207, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/arglist.c", directory: "")
!207 = !DISubroutineType(types: !208)
!208 = !{!36, !31, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arglist", file: !211, line: 52, baseType: !212)
!211 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/arglist.h", directory: "")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alist", file: !211, line: 52, size: 128, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !212, file: !211, line: 53, baseType: !36, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !212, file: !211, line: 54, baseType: !36, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !212, file: !211, line: 55, baseType: !30, size: 64, offset: 64)
!217 = !DILocalVariable(name: "string", arg: 1, scope: !205, file: !206, line: 67, type: !31)
!218 = !DILocation(line: 0, scope: !205)
!219 = !DILocalVariable(name: "args", arg: 2, scope: !205, file: !206, line: 67, type: !209)
!220 = !DILocalVariable(name: "__cil_tmp7", scope: !205, file: !206, line: 73, type: !31)
!221 = !DILocation(line: 73, column: 9, scope: !205)
!222 = !DILocation(line: 72, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !206, line: 72, column: 7)
!224 = distinct !DILexicalBlock(scope: !205, file: !206, line: 75, column: 3)
!225 = !DILocation(line: 72, column: 7, scope: !223)
!226 = !DILocation(line: 72, column: 7, scope: !224)
!227 = !DILocation(line: 72, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !206, line: 74, column: 5)
!229 = distinct !DILexicalBlock(scope: !230, file: !206, line: 73, column: 5)
!230 = distinct !DILexicalBlock(scope: !223, file: !206, line: 72, column: 19)
!231 = !DILocation(line: 72, column: 10, scope: !228)
!232 = !DILocation(line: 72, column: 5, scope: !228)
!233 = !DILocation(line: 75, column: 3, scope: !230)
!234 = !DILocation(line: 73, column: 9, scope: !224)
!235 = !DILocation(line: 73, column: 14, scope: !224)
!236 = !DILocation(line: 74, column: 9, scope: !224)
!237 = !DILocation(line: 74, column: 15, scope: !224)
!238 = !DILocalVariable(name: "st", scope: !205, file: !206, line: 69, type: !31)
!239 = !DILocation(line: 78, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !206, line: 78, column: 3)
!241 = distinct !DILexicalBlock(scope: !224, file: !206, line: 77, column: 3)
!242 = !DILocation(line: 0, scope: !224)
!243 = !DILocation(line: 78, column: 13, scope: !240)
!244 = !DILocation(line: 81, column: 15, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !206, line: 81, column: 9)
!246 = distinct !DILexicalBlock(scope: !240, file: !206, line: 78, column: 13)
!247 = !DILocation(line: 81, column: 29, scope: !245)
!248 = !DILocation(line: 81, column: 20, scope: !245)
!249 = !DILocation(line: 81, column: 9, scope: !246)
!250 = !DILocation(line: 83, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !206, line: 83, column: 11)
!252 = distinct !DILexicalBlock(scope: !245, file: !206, line: 81, column: 36)
!253 = !DILocation(line: 83, column: 13, scope: !251)
!254 = !DILocation(line: 83, column: 11, scope: !252)
!255 = !DILocation(line: 84, column: 15, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !206, line: 85, column: 9)
!257 = distinct !DILexicalBlock(scope: !258, file: !206, line: 84, column: 9)
!258 = distinct !DILexicalBlock(scope: !251, file: !206, line: 83, column: 25)
!259 = !DILocalVariable(name: "tmp", scope: !205, file: !206, line: 70, type: !27)
!260 = !DILocation(line: 84, column: 22, scope: !257)
!261 = !DILocation(line: 84, column: 15, scope: !257)
!262 = !DILocation(line: 84, column: 20, scope: !257)
!263 = !DILocation(line: 86, column: 7, scope: !258)
!264 = !DILocation(line: 86, column: 41, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !206, line: 88, column: 9)
!266 = distinct !DILexicalBlock(scope: !267, file: !206, line: 87, column: 9)
!267 = distinct !DILexicalBlock(scope: !251, file: !206, line: 86, column: 14)
!268 = !DILocation(line: 86, column: 27, scope: !265)
!269 = !DILocation(line: 86, column: 80, scope: !265)
!270 = !DILocation(line: 86, column: 86, scope: !265)
!271 = !DILocation(line: 86, column: 57, scope: !265)
!272 = !DILocation(line: 86, column: 92, scope: !265)
!273 = !DILocation(line: 86, column: 47, scope: !265)
!274 = !DILocation(line: 86, column: 19, scope: !265)
!275 = !DILocalVariable(name: "tmp___0", scope: !205, file: !206, line: 71, type: !27)
!276 = !DILocation(line: 86, column: 22, scope: !266)
!277 = !DILocation(line: 86, column: 15, scope: !266)
!278 = !DILocation(line: 86, column: 20, scope: !266)
!279 = !DILocation(line: 88, column: 33, scope: !280)
!280 = distinct !DILexicalBlock(scope: !252, file: !206, line: 88, column: 11)
!281 = !DILocation(line: 88, column: 11, scope: !280)
!282 = !DILocation(line: 88, column: 38, scope: !280)
!283 = !DILocation(line: 88, column: 11, scope: !252)
!284 = !DILocation(line: 88, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !206, line: 88, column: 70)
!286 = !DILocation(line: 89, column: 13, scope: !252)
!287 = !DILocation(line: 89, column: 19, scope: !252)
!288 = !DILocation(line: 90, column: 5, scope: !252)
!289 = !DILocation(line: 93, column: 15, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !206, line: 92, column: 5)
!291 = distinct !DILexicalBlock(scope: !246, file: !206, line: 91, column: 5)
!292 = !DILocalVariable(name: "tmp___1", scope: !205, file: !206, line: 72, type: !31)
!293 = !DILocation(line: 93, column: 13, scope: !291)
!294 = !DILocation(line: 93, column: 26, scope: !291)
!295 = !DILocation(line: 93, column: 18, scope: !291)
!296 = !DILocation(line: 93, column: 32, scope: !291)
!297 = !DILocation(line: 93, column: 11, scope: !298)
!298 = distinct !DILexicalBlock(scope: !246, file: !206, line: 93, column: 9)
!299 = !DILocation(line: 93, column: 9, scope: !246)
!300 = !DILocation(line: 93, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !206, line: 93, column: 20)
!302 = !DILocation(line: 98, column: 12, scope: !246)
!303 = !DILocation(line: 98, column: 18, scope: !246)
!304 = distinct !{!304, !239, !305}
!305 = !DILocation(line: 99, column: 3, scope: !240)
!306 = !DILocation(line: 101, column: 3, scope: !240)
!307 = !DILocation(line: 100, column: 3, scope: !224)
!308 = !DILocation(line: 102, column: 1, scope: !205)
!309 = distinct !DISubprogram(name: "argv2arglist", scope: !206, file: !206, line: 117, type: !310, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!310 = !DISubroutineType(types: !311)
!311 = !{!36, !36, !30, !209}
!312 = !DILocalVariable(name: "argc", arg: 1, scope: !309, file: !206, line: 117, type: !36)
!313 = !DILocation(line: 0, scope: !309)
!314 = !DILocalVariable(name: "argv", arg: 2, scope: !309, file: !206, line: 117, type: !30)
!315 = !DILocalVariable(name: "args", arg: 3, scope: !309, file: !206, line: 117, type: !209)
!316 = !DILocation(line: 122, column: 13, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !206, line: 122, column: 7)
!318 = distinct !DILexicalBlock(scope: !309, file: !206, line: 122, column: 3)
!319 = !DILocation(line: 122, column: 7, scope: !317)
!320 = !DILocation(line: 122, column: 7, scope: !318)
!321 = !DILocation(line: 122, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !206, line: 124, column: 5)
!323 = distinct !DILexicalBlock(scope: !324, file: !206, line: 123, column: 5)
!324 = distinct !DILexicalBlock(scope: !317, file: !206, line: 122, column: 19)
!325 = !DILocation(line: 122, column: 10, scope: !322)
!326 = !DILocation(line: 122, column: 5, scope: !322)
!327 = !DILocation(line: 125, column: 3, scope: !324)
!328 = !DILocation(line: 124, column: 48, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !206, line: 127, column: 3)
!330 = distinct !DILexicalBlock(scope: !318, file: !206, line: 126, column: 3)
!331 = !DILocation(line: 124, column: 26, scope: !329)
!332 = !DILocation(line: 124, column: 53, scope: !329)
!333 = !DILocation(line: 124, column: 16, scope: !329)
!334 = !DILocation(line: 124, column: 9, scope: !329)
!335 = !DILocalVariable(name: "tmp", scope: !309, file: !206, line: 120, type: !27)
!336 = !DILocation(line: 124, column: 16, scope: !330)
!337 = !DILocation(line: 124, column: 9, scope: !330)
!338 = !DILocation(line: 124, column: 14, scope: !330)
!339 = !DILocation(line: 125, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !318, file: !206, line: 125, column: 7)
!341 = !DILocation(line: 125, column: 9, scope: !340)
!342 = !DILocation(line: 125, column: 7, scope: !318)
!343 = !DILocation(line: 125, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !206, line: 125, column: 21)
!345 = !DILocation(line: 127, column: 9, scope: !318)
!346 = !DILocation(line: 127, column: 15, scope: !318)
!347 = !DILocalVariable(name: "i", scope: !309, file: !206, line: 119, type: !36)
!348 = !DILocation(line: 129, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !206, line: 131, column: 3)
!350 = distinct !DILexicalBlock(scope: !318, file: !206, line: 130, column: 3)
!351 = !DILocation(line: 0, scope: !318)
!352 = !DILocation(line: 129, column: 13, scope: !349)
!353 = !DILocation(line: 129, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !206, line: 129, column: 9)
!355 = distinct !DILexicalBlock(scope: !349, file: !206, line: 129, column: 13)
!356 = !DILocation(line: 129, column: 9, scope: !355)
!357 = !DILocation(line: 129, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !206, line: 129, column: 23)
!359 = !DILocation(line: 131, column: 43, scope: !355)
!360 = !DILocation(line: 131, column: 38, scope: !355)
!361 = !DILocation(line: 131, column: 31, scope: !355)
!362 = !DILocation(line: 131, column: 13, scope: !355)
!363 = !DILocation(line: 131, column: 23, scope: !355)
!364 = !DILocation(line: 131, column: 18, scope: !355)
!365 = !DILocation(line: 131, column: 29, scope: !355)
!366 = !DILocation(line: 129, column: 7, scope: !355)
!367 = distinct !{!367, !348, !368}
!368 = !DILocation(line: 130, column: 3, scope: !349)
!369 = !DILocation(line: 132, column: 3, scope: !349)
!370 = !DILocation(line: 133, column: 9, scope: !318)
!371 = !DILocation(line: 133, column: 14, scope: !318)
!372 = !DILocation(line: 135, column: 3, scope: !318)
!373 = !DILocation(line: 137, column: 1, scope: !309)
!374 = distinct !DISubprogram(name: "escape", scope: !375, file: !375, line: 63, type: !376, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!375 = !DIFile(filename: "/home/wslee/benchmarks/textformat/vtprint-2.0.2/escape.c", directory: "")
!376 = !DISubroutineType(types: !377)
!377 = !{!31, !31}
!378 = !DILocalVariable(name: "source", arg: 1, scope: !374, file: !375, line: 63, type: !31)
!379 = !DILocation(line: 0, scope: !374)
!380 = !DILocalVariable(name: "probe", scope: !374, file: !375, line: 66, type: !31)
!381 = !DILocation(line: 66, column: 9, scope: !374)
!382 = !DILocation(line: 69, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !375, line: 69, column: 7)
!384 = distinct !DILexicalBlock(scope: !374, file: !375, line: 72, column: 3)
!385 = !DILocation(line: 69, column: 7, scope: !384)
!386 = !DILocation(line: 69, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !375, line: 69, column: 17)
!388 = !DILocalVariable(name: "dest", scope: !374, file: !375, line: 65, type: !31)
!389 = !DILocation(line: 72, column: 9, scope: !384)
!390 = !DILocation(line: 72, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !375, line: 74, column: 3)
!392 = distinct !DILexicalBlock(scope: !384, file: !375, line: 73, column: 3)
!393 = !DILocation(line: 70, column: 8, scope: !384)
!394 = !DILocation(line: 72, column: 13, scope: !391)
!395 = !DILocation(line: 72, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !375, line: 72, column: 9)
!397 = distinct !DILexicalBlock(scope: !391, file: !375, line: 72, column: 13)
!398 = !DILocation(line: 72, column: 11, scope: !396)
!399 = !DILocation(line: 72, column: 9, scope: !397)
!400 = !DILocation(line: 72, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !375, line: 72, column: 19)
!402 = !DILocation(line: 75, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !375, line: 75, column: 9)
!404 = !DILocation(line: 75, column: 15, scope: !403)
!405 = !DILocation(line: 75, column: 9, scope: !403)
!406 = !DILocation(line: 75, column: 22, scope: !403)
!407 = !DILocation(line: 75, column: 9, scope: !397)
!408 = !DILocation(line: 75, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !375, line: 75, column: 29)
!410 = !DILocation(line: 77, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !397, file: !375, line: 77, column: 9)
!412 = !DILocation(line: 77, column: 15, scope: !411)
!413 = !DILocation(line: 77, column: 9, scope: !411)
!414 = !DILocation(line: 77, column: 22, scope: !411)
!415 = !DILocation(line: 77, column: 9, scope: !397)
!416 = !DILocation(line: 79, column: 16, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !375, line: 77, column: 29)
!418 = !DILocation(line: 79, column: 15, scope: !417)
!419 = !DILocation(line: 79, column: 13, scope: !417)
!420 = !DILocation(line: 80, column: 12, scope: !417)
!421 = !DILocation(line: 81, column: 7, scope: !417)
!422 = !DILocation(line: 84, column: 11, scope: !397)
!423 = !DILocation(line: 87, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !375, line: 87, column: 9)
!425 = distinct !DILexicalBlock(scope: !397, file: !375, line: 85, column: 5)
!426 = !DILocation(line: 87, column: 15, scope: !424)
!427 = !DILocation(line: 87, column: 9, scope: !424)
!428 = !DILocation(line: 87, column: 22, scope: !424)
!429 = !DILocation(line: 87, column: 9, scope: !425)
!430 = !DILocation(line: 87, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !375, line: 87, column: 29)
!432 = !DILocation(line: 88, column: 16, scope: !433)
!433 = distinct !DILexicalBlock(scope: !425, file: !375, line: 88, column: 9)
!434 = !DILocation(line: 88, column: 15, scope: !433)
!435 = !DILocation(line: 88, column: 9, scope: !433)
!436 = !DILocation(line: 88, column: 22, scope: !433)
!437 = !DILocation(line: 88, column: 9, scope: !425)
!438 = !DILocation(line: 88, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !433, file: !375, line: 88, column: 29)
!440 = !DILocation(line: 89, column: 16, scope: !441)
!441 = distinct !DILexicalBlock(scope: !425, file: !375, line: 89, column: 9)
!442 = !DILocation(line: 89, column: 15, scope: !441)
!443 = !DILocation(line: 89, column: 9, scope: !441)
!444 = !DILocation(line: 89, column: 22, scope: !441)
!445 = !DILocation(line: 89, column: 9, scope: !425)
!446 = !DILocation(line: 89, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !375, line: 89, column: 30)
!448 = !DILocation(line: 90, column: 16, scope: !449)
!449 = distinct !DILexicalBlock(scope: !425, file: !375, line: 90, column: 9)
!450 = !DILocation(line: 90, column: 15, scope: !449)
!451 = !DILocation(line: 90, column: 9, scope: !449)
!452 = !DILocation(line: 90, column: 22, scope: !449)
!453 = !DILocation(line: 90, column: 9, scope: !425)
!454 = !DILocation(line: 90, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !375, line: 90, column: 30)
!456 = !DILocation(line: 91, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !425, file: !375, line: 91, column: 9)
!458 = !DILocation(line: 91, column: 15, scope: !457)
!459 = !DILocation(line: 91, column: 9, scope: !457)
!460 = !DILocation(line: 91, column: 22, scope: !457)
!461 = !DILocation(line: 91, column: 9, scope: !425)
!462 = !DILocation(line: 91, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !375, line: 91, column: 30)
!464 = !DILocation(line: 92, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !425, file: !375, line: 92, column: 9)
!466 = !DILocation(line: 92, column: 15, scope: !465)
!467 = !DILocation(line: 92, column: 9, scope: !465)
!468 = !DILocation(line: 92, column: 22, scope: !465)
!469 = !DILocation(line: 92, column: 9, scope: !425)
!470 = !DILocation(line: 92, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !375, line: 92, column: 30)
!472 = !DILocation(line: 93, column: 16, scope: !473)
!473 = distinct !DILexicalBlock(scope: !425, file: !375, line: 93, column: 9)
!474 = !DILocation(line: 93, column: 15, scope: !473)
!475 = !DILocation(line: 93, column: 9, scope: !473)
!476 = !DILocation(line: 93, column: 22, scope: !473)
!477 = !DILocation(line: 93, column: 9, scope: !425)
!478 = !DILocation(line: 93, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !375, line: 93, column: 30)
!480 = !DILocation(line: 97, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !425, file: !375, line: 97, column: 9)
!482 = !DILocation(line: 97, column: 15, scope: !481)
!483 = !DILocation(line: 97, column: 9, scope: !481)
!484 = !DILocation(line: 97, column: 22, scope: !481)
!485 = !DILocation(line: 97, column: 9, scope: !425)
!486 = !DILocation(line: 97, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !375, line: 97, column: 29)
!488 = !DILocation(line: 97, column: 16, scope: !489)
!489 = distinct !DILexicalBlock(scope: !425, file: !375, line: 97, column: 9)
!490 = !DILocation(line: 97, column: 15, scope: !489)
!491 = !DILocation(line: 97, column: 9, scope: !489)
!492 = !DILocation(line: 97, column: 22, scope: !489)
!493 = !DILocation(line: 97, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !375, line: 97, column: 29)
!495 = !DILocation(line: 97, column: 16, scope: !496)
!496 = distinct !DILexicalBlock(scope: !425, file: !375, line: 97, column: 9)
!497 = !DILocation(line: 97, column: 15, scope: !496)
!498 = !DILocation(line: 97, column: 9, scope: !496)
!499 = !DILocation(line: 97, column: 22, scope: !496)
!500 = !DILocation(line: 97, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !375, line: 97, column: 29)
!502 = !DILocation(line: 97, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !425, file: !375, line: 97, column: 9)
!504 = !DILocation(line: 97, column: 15, scope: !503)
!505 = !DILocation(line: 97, column: 9, scope: !503)
!506 = !DILocation(line: 97, column: 22, scope: !503)
!507 = !DILocation(line: 97, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !375, line: 97, column: 29)
!509 = !DILocation(line: 98, column: 16, scope: !510)
!510 = distinct !DILexicalBlock(scope: !425, file: !375, line: 98, column: 9)
!511 = !DILocation(line: 98, column: 15, scope: !510)
!512 = !DILocation(line: 98, column: 9, scope: !510)
!513 = !DILocation(line: 98, column: 22, scope: !510)
!514 = !DILocation(line: 98, column: 9, scope: !425)
!515 = !DILocation(line: 98, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !375, line: 98, column: 29)
!517 = !DILocation(line: 113, column: 16, scope: !518)
!518 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!519 = !DILocation(line: 113, column: 15, scope: !518)
!520 = !DILocation(line: 113, column: 9, scope: !518)
!521 = !DILocation(line: 113, column: 22, scope: !518)
!522 = !DILocation(line: 113, column: 9, scope: !425)
!523 = !DILocation(line: 113, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !375, line: 113, column: 29)
!525 = !DILocation(line: 113, column: 16, scope: !526)
!526 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!527 = !DILocation(line: 113, column: 15, scope: !526)
!528 = !DILocation(line: 113, column: 9, scope: !526)
!529 = !DILocation(line: 113, column: 22, scope: !526)
!530 = !DILocation(line: 113, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !375, line: 113, column: 29)
!532 = !DILocation(line: 113, column: 16, scope: !533)
!533 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!534 = !DILocation(line: 113, column: 15, scope: !533)
!535 = !DILocation(line: 113, column: 9, scope: !533)
!536 = !DILocation(line: 113, column: 22, scope: !533)
!537 = !DILocation(line: 113, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !375, line: 113, column: 29)
!539 = !DILocation(line: 113, column: 16, scope: !540)
!540 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!541 = !DILocation(line: 113, column: 15, scope: !540)
!542 = !DILocation(line: 113, column: 9, scope: !540)
!543 = !DILocation(line: 113, column: 22, scope: !540)
!544 = !DILocation(line: 113, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !375, line: 113, column: 29)
!546 = !DILocation(line: 113, column: 16, scope: !547)
!547 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!548 = !DILocation(line: 113, column: 15, scope: !547)
!549 = !DILocation(line: 113, column: 9, scope: !547)
!550 = !DILocation(line: 113, column: 22, scope: !547)
!551 = !DILocation(line: 113, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !375, line: 113, column: 29)
!553 = !DILocation(line: 113, column: 16, scope: !554)
!554 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!555 = !DILocation(line: 113, column: 15, scope: !554)
!556 = !DILocation(line: 113, column: 9, scope: !554)
!557 = !DILocation(line: 113, column: 22, scope: !554)
!558 = !DILocation(line: 113, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !554, file: !375, line: 113, column: 29)
!560 = !DILocation(line: 113, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!562 = !DILocation(line: 113, column: 15, scope: !561)
!563 = !DILocation(line: 113, column: 9, scope: !561)
!564 = !DILocation(line: 113, column: 22, scope: !561)
!565 = !DILocation(line: 113, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !375, line: 113, column: 29)
!567 = !DILocation(line: 113, column: 16, scope: !568)
!568 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!569 = !DILocation(line: 113, column: 15, scope: !568)
!570 = !DILocation(line: 113, column: 9, scope: !568)
!571 = !DILocation(line: 113, column: 22, scope: !568)
!572 = !DILocation(line: 113, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !375, line: 113, column: 29)
!574 = !DILocation(line: 113, column: 16, scope: !575)
!575 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 9)
!576 = !DILocation(line: 113, column: 15, scope: !575)
!577 = !DILocation(line: 113, column: 9, scope: !575)
!578 = !DILocation(line: 113, column: 22, scope: !575)
!579 = !DILocation(line: 113, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !375, line: 113, column: 29)
!581 = !DILocation(line: 121, column: 16, scope: !582)
!582 = distinct !DILexicalBlock(scope: !425, file: !375, line: 121, column: 9)
!583 = !DILocation(line: 121, column: 15, scope: !582)
!584 = !DILocation(line: 121, column: 9, scope: !582)
!585 = !DILocation(line: 121, column: 22, scope: !582)
!586 = !DILocation(line: 121, column: 9, scope: !425)
!587 = !DILocation(line: 121, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !375, line: 121, column: 30)
!589 = !DILocation(line: 121, column: 16, scope: !590)
!590 = distinct !DILexicalBlock(scope: !425, file: !375, line: 121, column: 9)
!591 = !DILocation(line: 121, column: 15, scope: !590)
!592 = !DILocation(line: 121, column: 9, scope: !590)
!593 = !DILocation(line: 121, column: 22, scope: !590)
!594 = !DILocation(line: 121, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !375, line: 121, column: 29)
!596 = !DILocation(line: 133, column: 5, scope: !425)
!597 = !DILocation(line: 87, column: 11, scope: !425)
!598 = !DILocation(line: 87, column: 10, scope: !425)
!599 = !DILocation(line: 87, column: 5, scope: !425)
!600 = !DILocation(line: 88, column: 11, scope: !425)
!601 = !DILocation(line: 88, column: 10, scope: !425)
!602 = !DILocation(line: 88, column: 5, scope: !425)
!603 = !DILocation(line: 89, column: 11, scope: !425)
!604 = !DILocation(line: 89, column: 10, scope: !425)
!605 = !DILocation(line: 89, column: 5, scope: !425)
!606 = !DILocation(line: 90, column: 11, scope: !425)
!607 = !DILocation(line: 90, column: 10, scope: !425)
!608 = !DILocation(line: 90, column: 5, scope: !425)
!609 = !DILocation(line: 91, column: 11, scope: !425)
!610 = !DILocation(line: 91, column: 10, scope: !425)
!611 = !DILocation(line: 91, column: 5, scope: !425)
!612 = !DILocation(line: 92, column: 11, scope: !425)
!613 = !DILocation(line: 92, column: 10, scope: !425)
!614 = !DILocation(line: 92, column: 5, scope: !425)
!615 = !DILocation(line: 93, column: 11, scope: !425)
!616 = !DILocation(line: 93, column: 10, scope: !425)
!617 = !DILocation(line: 93, column: 5, scope: !425)
!618 = !DILocation(line: 97, column: 14, scope: !425)
!619 = !DILocation(line: 97, column: 13, scope: !425)
!620 = !DILocation(line: 97, column: 11, scope: !425)
!621 = !DILocation(line: 97, column: 10, scope: !425)
!622 = !DILocation(line: 97, column: 5, scope: !425)
!623 = !DILocation(line: 99, column: 49, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !375, line: 100, column: 5)
!625 = distinct !DILexicalBlock(scope: !425, file: !375, line: 99, column: 5)
!626 = !DILocation(line: 99, column: 9, scope: !624)
!627 = !DILocalVariable(name: "l", scope: !374, file: !375, line: 67, type: !69)
!628 = !DILocation(line: 100, column: 13, scope: !625)
!629 = !DILocation(line: 100, column: 11, scope: !625)
!630 = !DILocation(line: 101, column: 10, scope: !625)
!631 = !DILocation(line: 102, column: 11, scope: !625)
!632 = !DILocation(line: 103, column: 5, scope: !425)
!633 = !DILocation(line: 114, column: 49, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !375, line: 114, column: 5)
!635 = distinct !DILexicalBlock(scope: !425, file: !375, line: 113, column: 5)
!636 = !DILocation(line: 114, column: 9, scope: !634)
!637 = !DILocation(line: 115, column: 13, scope: !635)
!638 = !DILocation(line: 115, column: 11, scope: !635)
!639 = !DILocation(line: 116, column: 10, scope: !635)
!640 = !DILocation(line: 117, column: 11, scope: !635)
!641 = !DILocation(line: 118, column: 5, scope: !425)
!642 = !DILocation(line: 123, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !375, line: 122, column: 5)
!644 = distinct !DILexicalBlock(scope: !425, file: !375, line: 121, column: 5)
!645 = !DILocalVariable(name: "tmp", scope: !374, file: !375, line: 68, type: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!649 = !DILocation(line: 123, column: 28, scope: !650)
!650 = distinct !DILexicalBlock(scope: !425, file: !375, line: 123, column: 9)
!651 = !DILocation(line: 123, column: 43, scope: !650)
!652 = !DILocation(line: 123, column: 49, scope: !650)
!653 = !DILocation(line: 123, column: 41, scope: !650)
!654 = !DILocation(line: 123, column: 35, scope: !650)
!655 = !DILocation(line: 123, column: 33, scope: !650)
!656 = !DILocation(line: 123, column: 26, scope: !650)
!657 = !DILocation(line: 123, column: 12, scope: !650)
!658 = !DILocation(line: 123, column: 55, scope: !650)
!659 = !DILocation(line: 123, column: 9, scope: !425)
!660 = !DILocation(line: 123, column: 33, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !375, line: 125, column: 7)
!662 = distinct !DILexicalBlock(scope: !663, file: !375, line: 124, column: 7)
!663 = distinct !DILexicalBlock(scope: !650, file: !375, line: 123, column: 64)
!664 = !DILocation(line: 123, column: 39, scope: !661)
!665 = !DILocation(line: 123, column: 31, scope: !661)
!666 = !DILocation(line: 123, column: 25, scope: !661)
!667 = !DILocation(line: 123, column: 17, scope: !661)
!668 = !DILocalVariable(name: "tmp___0", scope: !374, file: !375, line: 69, type: !36)
!669 = !DILocation(line: 123, column: 19, scope: !670)
!670 = distinct !DILexicalBlock(scope: !663, file: !375, line: 123, column: 11)
!671 = !DILocation(line: 123, column: 11, scope: !663)
!672 = !DILocation(line: 126, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !375, line: 123, column: 25)
!674 = !DILocation(line: 123, column: 35, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !375, line: 129, column: 9)
!676 = distinct !DILexicalBlock(scope: !677, file: !375, line: 128, column: 9)
!677 = distinct !DILexicalBlock(scope: !670, file: !375, line: 127, column: 14)
!678 = !DILocation(line: 123, column: 41, scope: !675)
!679 = !DILocation(line: 123, column: 33, scope: !675)
!680 = !DILocation(line: 123, column: 27, scope: !675)
!681 = !DILocation(line: 123, column: 19, scope: !675)
!682 = !DILocalVariable(name: "tmp___1", scope: !374, file: !375, line: 70, type: !36)
!683 = !DILocation(line: 123, column: 21, scope: !684)
!684 = distinct !DILexicalBlock(scope: !677, file: !375, line: 123, column: 13)
!685 = !DILocation(line: 123, column: 13, scope: !677)
!686 = !DILocation(line: 126, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !375, line: 123, column: 27)
!688 = !DILocation(line: 129, column: 5, scope: !663)
!689 = !DILocation(line: 127, column: 49, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !375, line: 131, column: 5)
!691 = distinct !DILexicalBlock(scope: !425, file: !375, line: 130, column: 5)
!692 = !DILocation(line: 127, column: 9, scope: !690)
!693 = !DILocation(line: 128, column: 13, scope: !691)
!694 = !DILocation(line: 128, column: 11, scope: !691)
!695 = !DILocation(line: 129, column: 10, scope: !691)
!696 = !DILocation(line: 130, column: 11, scope: !691)
!697 = !DILocation(line: 131, column: 5, scope: !425)
!698 = !DILocation(line: 0, scope: !425)
!699 = !DILocation(line: 135, column: 5, scope: !425)
!700 = !DILocation(line: 0, scope: !384)
!701 = !DILocation(line: 72, column: 11, scope: !397)
!702 = distinct !{!702, !390, !703}
!703 = !DILocation(line: 73, column: 3, scope: !391)
!704 = !DILocation(line: 75, column: 3, scope: !391)
!705 = !DILocation(line: 136, column: 9, scope: !384)
!706 = !DILocation(line: 137, column: 3, scope: !384)
!707 = !DILocation(line: 139, column: 1, scope: !374)
!708 = distinct !DISubprogram(name: "sighandler", scope: !100, file: !100, line: 140, type: !709, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !36}
!711 = !DILocalVariable(name: "signum", arg: 1, scope: !708, file: !100, line: 140, type: !36)
!712 = !DILocation(line: 0, scope: !708)
!713 = !DILocalVariable(name: "__cil_tmp4", scope: !708, file: !100, line: 144, type: !31)
!714 = !DILocation(line: 144, column: 9, scope: !708)
!715 = !DILocalVariable(name: "__cil_tmp5", scope: !708, file: !100, line: 145, type: !31)
!716 = !DILocation(line: 145, column: 9, scope: !708)
!717 = !DILocalVariable(name: "__cil_tmp6", scope: !708, file: !100, line: 146, type: !31)
!718 = !DILocation(line: 146, column: 9, scope: !708)
!719 = !DILocalVariable(name: "__cil_tmp7", scope: !708, file: !100, line: 147, type: !31)
!720 = !DILocation(line: 147, column: 9, scope: !708)
!721 = !DILocalVariable(name: "__cil_tmp8", scope: !708, file: !100, line: 148, type: !31)
!722 = !DILocation(line: 148, column: 9, scope: !708)
!723 = !DILocalVariable(name: "__cil_tmp9", scope: !708, file: !100, line: 149, type: !31)
!724 = !DILocation(line: 149, column: 9, scope: !708)
!725 = !DILocalVariable(name: "__cil_tmp10", scope: !708, file: !100, line: 150, type: !31)
!726 = !DILocation(line: 150, column: 9, scope: !708)
!727 = !DILocalVariable(name: "__cil_tmp11", scope: !708, file: !100, line: 151, type: !31)
!728 = !DILocation(line: 151, column: 9, scope: !708)
!729 = !DILocation(line: 144, column: 36, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !100, line: 155, column: 3)
!731 = distinct !DILexicalBlock(scope: !732, file: !100, line: 154, column: 3)
!732 = distinct !DILexicalBlock(scope: !708, file: !100, line: 153, column: 3)
!733 = !DILocation(line: 145, column: 11, scope: !730)
!734 = !DILocation(line: 144, column: 3, scope: !730)
!735 = !DILocation(line: 145, column: 10, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !100, line: 147, column: 3)
!737 = !DILocation(line: 145, column: 3, scope: !736)
!738 = !DILocation(line: 146, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !732, file: !100, line: 146, column: 7)
!740 = !DILocation(line: 146, column: 7, scope: !732)
!741 = !DILocation(line: 146, column: 18, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !100, line: 148, column: 5)
!743 = distinct !DILexicalBlock(scope: !744, file: !100, line: 147, column: 5)
!744 = distinct !DILexicalBlock(scope: !739, file: !100, line: 146, column: 20)
!745 = !DILocation(line: 146, column: 11, scope: !742)
!746 = !DILocalVariable(name: "tmp", scope: !708, file: !100, line: 143, type: !36)
!747 = !DILocation(line: 146, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !100, line: 148, column: 5)
!749 = !DILocation(line: 149, column: 3, scope: !744)
!750 = !DILocation(line: 148, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !732, file: !100, line: 148, column: 7)
!752 = !DILocation(line: 148, column: 7, scope: !732)
!753 = !DILocation(line: 152, column: 16, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !100, line: 152, column: 9)
!755 = distinct !DILexicalBlock(scope: !756, file: !100, line: 149, column: 5)
!756 = distinct !DILexicalBlock(scope: !751, file: !100, line: 148, column: 16)
!757 = !DILocation(line: 152, column: 9, scope: !755)
!758 = !DILocation(line: 152, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !100, line: 152, column: 22)
!760 = !DILocation(line: 153, column: 16, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !100, line: 153, column: 9)
!762 = !DILocation(line: 153, column: 9, scope: !755)
!763 = !DILocation(line: 153, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !100, line: 153, column: 22)
!765 = !DILocation(line: 154, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !755, file: !100, line: 154, column: 9)
!767 = !DILocation(line: 154, column: 9, scope: !755)
!768 = !DILocation(line: 154, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !100, line: 154, column: 22)
!770 = !DILocation(line: 155, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !755, file: !100, line: 155, column: 9)
!772 = !DILocation(line: 155, column: 9, scope: !755)
!773 = !DILocation(line: 155, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !771, file: !100, line: 155, column: 23)
!775 = !DILocation(line: 156, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !755, file: !100, line: 156, column: 9)
!777 = !DILocation(line: 156, column: 9, scope: !755)
!778 = !DILocation(line: 156, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !100, line: 156, column: 23)
!780 = !DILocation(line: 157, column: 5, scope: !755)
!781 = !DILocalVariable(name: "signame", scope: !708, file: !100, line: 142, type: !31)
!782 = !DILocation(line: 152, column: 5, scope: !755)
!783 = !DILocation(line: 153, column: 5, scope: !755)
!784 = !DILocation(line: 154, column: 5, scope: !755)
!785 = !DILocation(line: 155, column: 5, scope: !755)
!786 = !DILocation(line: 156, column: 5, scope: !755)
!787 = !DILocation(line: 0, scope: !755)
!788 = !DILocation(line: 159, column: 38, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !100, line: 161, column: 5)
!790 = distinct !DILexicalBlock(scope: !756, file: !100, line: 160, column: 5)
!791 = !DILocation(line: 159, column: 5, scope: !789)
!792 = !DILocation(line: 163, column: 3, scope: !756)
!793 = !DILocation(line: 161, column: 3, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !100, line: 165, column: 3)
!795 = distinct !DILexicalBlock(scope: !732, file: !100, line: 164, column: 3)
!796 = !DILocation(line: 165, column: 1, scope: !708)
!797 = distinct !DISubprogram(name: "process_opts", scope: !100, file: !100, line: 178, type: !798, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!798 = !DISubroutineType(types: !799)
!799 = !{!36, !209}
!800 = !DILocalVariable(name: "args", arg: 1, scope: !797, file: !100, line: 178, type: !209)
!801 = !DILocation(line: 0, scope: !797)
!802 = !DILocalVariable(name: "__cil_tmp3", scope: !797, file: !100, line: 181, type: !31)
!803 = !DILocation(line: 181, column: 9, scope: !797)
!804 = !DILocalVariable(name: "__cil_tmp4", scope: !797, file: !100, line: 182, type: !31)
!805 = !DILocation(line: 182, column: 9, scope: !797)
!806 = !DILocation(line: 182, column: 10, scope: !807)
!807 = distinct !DILexicalBlock(scope: !797, file: !100, line: 184, column: 3)
!808 = !DILocation(line: 184, column: 23, scope: !807)
!809 = !DILocation(line: 184, column: 11, scope: !807)
!810 = !DILocation(line: 184, column: 16, scope: !807)
!811 = !DILocation(line: 184, column: 21, scope: !807)
!812 = !DILocation(line: 186, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !100, line: 186, column: 3)
!814 = distinct !DILexicalBlock(scope: !807, file: !100, line: 185, column: 3)
!815 = !DILocation(line: 186, column: 13, scope: !813)
!816 = !DILocation(line: 188, column: 22, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !100, line: 190, column: 5)
!818 = distinct !DILexicalBlock(scope: !819, file: !100, line: 189, column: 5)
!819 = distinct !DILexicalBlock(scope: !813, file: !100, line: 186, column: 13)
!820 = !DILocation(line: 188, column: 34, scope: !817)
!821 = !DILocation(line: 188, column: 9, scope: !817)
!822 = !DILocalVariable(name: "c", scope: !797, file: !100, line: 180, type: !36)
!823 = !DILocation(line: 191, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !100, line: 191, column: 9)
!825 = distinct !DILexicalBlock(scope: !819, file: !100, line: 191, column: 5)
!826 = !DILocation(line: 191, column: 9, scope: !825)
!827 = !DILocation(line: 191, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !100, line: 191, column: 19)
!829 = !DILocation(line: 192, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !100, line: 192, column: 9)
!831 = !DILocation(line: 192, column: 9, scope: !825)
!832 = !DILocation(line: 192, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !100, line: 192, column: 19)
!834 = !DILocation(line: 193, column: 11, scope: !835)
!835 = distinct !DILexicalBlock(scope: !825, file: !100, line: 193, column: 9)
!836 = !DILocation(line: 193, column: 9, scope: !825)
!837 = !DILocation(line: 193, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !100, line: 193, column: 19)
!839 = !DILocation(line: 194, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !825, file: !100, line: 194, column: 9)
!841 = !DILocation(line: 194, column: 9, scope: !825)
!842 = !DILocation(line: 194, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !100, line: 194, column: 19)
!844 = !DILocation(line: 196, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !825, file: !100, line: 196, column: 9)
!846 = !DILocation(line: 196, column: 9, scope: !825)
!847 = !DILocation(line: 196, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !100, line: 196, column: 19)
!849 = !DILocation(line: 197, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !825, file: !100, line: 197, column: 9)
!851 = !DILocation(line: 197, column: 9, scope: !825)
!852 = !DILocation(line: 197, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !100, line: 197, column: 18)
!854 = !DILocation(line: 198, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !825, file: !100, line: 198, column: 9)
!856 = !DILocation(line: 198, column: 9, scope: !825)
!857 = !DILocation(line: 198, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !100, line: 198, column: 18)
!859 = !DILocation(line: 199, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !825, file: !100, line: 199, column: 9)
!861 = !DILocation(line: 199, column: 9, scope: !825)
!862 = !DILocation(line: 199, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !100, line: 199, column: 18)
!864 = !DILocation(line: 200, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !825, file: !100, line: 200, column: 9)
!866 = !DILocation(line: 200, column: 9, scope: !825)
!867 = !DILocation(line: 200, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !100, line: 200, column: 18)
!869 = !DILocation(line: 201, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !825, file: !100, line: 201, column: 9)
!871 = !DILocation(line: 201, column: 9, scope: !825)
!872 = !DILocation(line: 201, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !100, line: 201, column: 18)
!874 = !DILocation(line: 202, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !825, file: !100, line: 202, column: 9)
!876 = !DILocation(line: 202, column: 9, scope: !825)
!877 = !DILocation(line: 202, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !100, line: 202, column: 19)
!879 = !DILocation(line: 203, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !825, file: !100, line: 203, column: 9)
!881 = !DILocation(line: 203, column: 9, scope: !825)
!882 = !DILocation(line: 203, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !100, line: 203, column: 18)
!884 = !DILocation(line: 204, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !825, file: !100, line: 204, column: 9)
!886 = !DILocation(line: 204, column: 9, scope: !825)
!887 = !DILocation(line: 204, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !100, line: 204, column: 19)
!889 = !DILocation(line: 205, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !825, file: !100, line: 205, column: 9)
!891 = !DILocation(line: 205, column: 9, scope: !825)
!892 = !DILocation(line: 205, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !100, line: 205, column: 18)
!894 = !DILocation(line: 206, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !825, file: !100, line: 206, column: 9)
!896 = !DILocation(line: 206, column: 9, scope: !825)
!897 = !DILocation(line: 206, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !100, line: 206, column: 19)
!899 = !DILocation(line: 207, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !825, file: !100, line: 207, column: 9)
!901 = !DILocation(line: 207, column: 9, scope: !825)
!902 = !DILocation(line: 207, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !100, line: 207, column: 18)
!904 = !DILocation(line: 208, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !825, file: !100, line: 208, column: 9)
!906 = !DILocation(line: 208, column: 9, scope: !825)
!907 = !DILocation(line: 208, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !100, line: 208, column: 19)
!909 = !DILocation(line: 209, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !825, file: !100, line: 209, column: 9)
!911 = !DILocation(line: 209, column: 9, scope: !825)
!912 = !DILocation(line: 209, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !100, line: 209, column: 18)
!914 = !DILocation(line: 210, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !825, file: !100, line: 210, column: 9)
!916 = !DILocation(line: 210, column: 9, scope: !825)
!917 = !DILocation(line: 210, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !100, line: 210, column: 19)
!919 = !DILocation(line: 215, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !825, file: !100, line: 215, column: 9)
!921 = !DILocation(line: 215, column: 9, scope: !825)
!922 = !DILocation(line: 215, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !100, line: 215, column: 18)
!924 = !DILocation(line: 219, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !825, file: !100, line: 219, column: 9)
!926 = !DILocation(line: 219, column: 9, scope: !825)
!927 = !DILocation(line: 219, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !100, line: 219, column: 18)
!929 = !DILocation(line: 223, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !825, file: !100, line: 223, column: 9)
!931 = !DILocation(line: 223, column: 9, scope: !825)
!932 = !DILocation(line: 223, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !100, line: 223, column: 18)
!934 = !DILocation(line: 228, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !825, file: !100, line: 228, column: 9)
!936 = !DILocation(line: 228, column: 9, scope: !825)
!937 = !DILocation(line: 228, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !100, line: 228, column: 18)
!939 = !DILocation(line: 189, column: 5, scope: !825)
!940 = !DILocation(line: 191, column: 5, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !100, line: 192, column: 5)
!942 = distinct !DILexicalBlock(scope: !825, file: !100, line: 191, column: 5)
!943 = !DILocation(line: 191, column: 12, scope: !942)
!944 = !DILocation(line: 191, column: 5, scope: !825)
!945 = !DILocation(line: 192, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !100, line: 194, column: 5)
!947 = distinct !DILexicalBlock(scope: !825, file: !100, line: 193, column: 5)
!948 = !DILocation(line: 192, column: 12, scope: !947)
!949 = !DILocation(line: 192, column: 5, scope: !825)
!950 = !DILocation(line: 193, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !100, line: 195, column: 5)
!952 = distinct !DILexicalBlock(scope: !825, file: !100, line: 194, column: 5)
!953 = !DILocation(line: 193, column: 12, scope: !952)
!954 = !DILocation(line: 193, column: 5, scope: !825)
!955 = !DILocation(line: 194, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !100, line: 196, column: 5)
!957 = distinct !DILexicalBlock(scope: !825, file: !100, line: 195, column: 5)
!958 = !DILocation(line: 194, column: 12, scope: !957)
!959 = !DILocation(line: 194, column: 5, scope: !825)
!960 = !DILocation(line: 196, column: 12, scope: !825)
!961 = !DILocation(line: 196, column: 5, scope: !825)
!962 = !DILocation(line: 197, column: 12, scope: !825)
!963 = !DILocation(line: 197, column: 5, scope: !825)
!964 = !DILocation(line: 198, column: 12, scope: !825)
!965 = !DILocation(line: 198, column: 5, scope: !825)
!966 = !DILocation(line: 199, column: 12, scope: !825)
!967 = !DILocation(line: 199, column: 5, scope: !825)
!968 = !DILocation(line: 200, column: 13, scope: !825)
!969 = !DILocation(line: 200, column: 11, scope: !825)
!970 = !DILocation(line: 200, column: 5, scope: !825)
!971 = !DILocation(line: 201, column: 13, scope: !825)
!972 = !DILocation(line: 201, column: 11, scope: !825)
!973 = !DILocation(line: 201, column: 5, scope: !825)
!974 = !DILocation(line: 202, column: 13, scope: !825)
!975 = !DILocation(line: 202, column: 5, scope: !825)
!976 = !DILocation(line: 203, column: 13, scope: !825)
!977 = !DILocation(line: 203, column: 5, scope: !825)
!978 = !DILocation(line: 204, column: 11, scope: !825)
!979 = !DILocation(line: 204, column: 5, scope: !825)
!980 = !DILocation(line: 205, column: 11, scope: !825)
!981 = !DILocation(line: 205, column: 5, scope: !825)
!982 = !DILocation(line: 206, column: 11, scope: !825)
!983 = !DILocation(line: 206, column: 13, scope: !825)
!984 = !DILocation(line: 206, column: 5, scope: !825)
!985 = !DILocation(line: 207, column: 11, scope: !825)
!986 = !DILocation(line: 207, column: 13, scope: !825)
!987 = !DILocation(line: 207, column: 5, scope: !825)
!988 = !DILocation(line: 208, column: 11, scope: !825)
!989 = !DILocation(line: 208, column: 5, scope: !825)
!990 = !DILocation(line: 209, column: 11, scope: !825)
!991 = !DILocation(line: 209, column: 5, scope: !825)
!992 = !DILocation(line: 211, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !825, file: !100, line: 211, column: 5)
!994 = !DILocation(line: 212, column: 16, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !100, line: 212, column: 5)
!996 = !DILocation(line: 212, column: 14, scope: !995)
!997 = !DILocation(line: 213, column: 5, scope: !825)
!998 = !DILocation(line: 216, column: 16, scope: !825)
!999 = !DILocation(line: 216, column: 14, scope: !825)
!1000 = !DILocation(line: 217, column: 5, scope: !825)
!1001 = !DILocation(line: 220, column: 19, scope: !825)
!1002 = !DILocation(line: 220, column: 17, scope: !825)
!1003 = !DILocation(line: 221, column: 5, scope: !825)
!1004 = !DILocation(line: 224, column: 15, scope: !825)
!1005 = !DILocation(line: 224, column: 13, scope: !825)
!1006 = !DILocation(line: 225, column: 12, scope: !825)
!1007 = !DILocation(line: 226, column: 5, scope: !825)
!1008 = !DILocation(line: 228, column: 5, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 229, column: 5)
!1010 = distinct !DILexicalBlock(scope: !825, file: !100, line: 228, column: 5)
!1011 = !DILocation(line: 228, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 230, column: 5)
!1013 = !DILocation(line: 186, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !819, file: !100, line: 186, column: 9)
!1015 = !DILocation(line: 186, column: 9, scope: !819)
!1016 = !DILocation(line: 186, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !100, line: 186, column: 22)
!1018 = distinct !{!1018, !812, !1019}
!1019 = !DILocation(line: 188, column: 3, scope: !813)
!1020 = !DILocation(line: 190, column: 3, scope: !813)
!1021 = !DILocation(line: 231, column: 11, scope: !807)
!1022 = !DILocation(line: 231, column: 3, scope: !807)
!1023 = distinct !DISubprogram(name: "help", scope: !100, file: !100, line: 246, type: !1024, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null}
!1026 = !DILocalVariable(name: "__cil_tmp3", scope: !1023, file: !100, line: 250, type: !31)
!1027 = !DILocation(line: 250, column: 9, scope: !1023)
!1028 = !DILocalVariable(name: "__cil_tmp4", scope: !1023, file: !100, line: 251, type: !31)
!1029 = !DILocation(line: 251, column: 9, scope: !1023)
!1030 = !DILocalVariable(name: "__cil_tmp5", scope: !1023, file: !100, line: 252, type: !31)
!1031 = !DILocation(line: 252, column: 9, scope: !1023)
!1032 = !DILocalVariable(name: "__cil_tmp6", scope: !1023, file: !100, line: 253, type: !31)
!1033 = !DILocation(line: 253, column: 9, scope: !1023)
!1034 = !DILocalVariable(name: "__cil_tmp7", scope: !1023, file: !100, line: 254, type: !31)
!1035 = !DILocation(line: 254, column: 9, scope: !1023)
!1036 = !DILocalVariable(name: "__cil_tmp8", scope: !1023, file: !100, line: 255, type: !31)
!1037 = !DILocation(line: 255, column: 9, scope: !1023)
!1038 = !DILocalVariable(name: "__cil_tmp9", scope: !1023, file: !100, line: 256, type: !31)
!1039 = !DILocation(line: 256, column: 9, scope: !1023)
!1040 = !DILocalVariable(name: "__cil_tmp10", scope: !1023, file: !100, line: 257, type: !31)
!1041 = !DILocation(line: 257, column: 9, scope: !1023)
!1042 = !DILocation(line: 248, column: 32, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !100, line: 261, column: 3)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 260, column: 3)
!1045 = distinct !DILexicalBlock(scope: !1023, file: !100, line: 259, column: 3)
!1046 = !DILocation(line: 248, column: 9, scope: !1043)
!1047 = !DILocalVariable(name: "tmp", scope: !1023, file: !100, line: 248, type: !36)
!1048 = !DILocation(line: 0, scope: !1023)
!1049 = !DILocation(line: 248, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 248, column: 7)
!1051 = !DILocation(line: 248, column: 7, scope: !1045)
!1052 = !DILocation(line: 248, column: 38, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !100, line: 250, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !100, line: 249, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 248, column: 12)
!1056 = !DILocation(line: 248, column: 15, scope: !1053)
!1057 = !DILocalVariable(name: "tmp___0", scope: !1023, file: !100, line: 249, type: !36)
!1058 = !DILocation(line: 248, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !100, line: 248, column: 9)
!1060 = !DILocation(line: 248, column: 9, scope: !1055)
!1061 = !DILocation(line: 252, column: 40, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !100, line: 250, column: 7)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !100, line: 249, column: 7)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 248, column: 18)
!1065 = !DILocation(line: 253, column: 15, scope: !1062)
!1066 = !DILocation(line: 252, column: 7, scope: !1062)
!1067 = !DILocation(line: 256, column: 5, scope: !1064)
!1068 = !DILocation(line: 249, column: 40, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 258, column: 7)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !100, line: 257, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 256, column: 12)
!1072 = !DILocation(line: 250, column: 15, scope: !1069)
!1073 = !DILocation(line: 249, column: 7, scope: !1069)
!1074 = !DILocation(line: 254, column: 3, scope: !1055)
!1075 = !DILocation(line: 249, column: 38, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !100, line: 256, column: 5)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !100, line: 255, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 254, column: 10)
!1079 = !DILocation(line: 250, column: 13, scope: !1076)
!1080 = !DILocation(line: 249, column: 5, scope: !1076)
!1081 = !DILocation(line: 256, column: 36, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 255, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 254, column: 3)
!1084 = !DILocation(line: 257, column: 11, scope: !1082)
!1085 = !DILocation(line: 256, column: 3, scope: !1082)
!1086 = !DILocation(line: 259, column: 36, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 259, column: 3)
!1088 = !DILocation(line: 259, column: 3, scope: !1087)
!1089 = !DILocation(line: 260, column: 3, scope: !1045)
!1090 = distinct !DISubprogram(name: "warranty", scope: !100, file: !100, line: 287, type: !1024, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1091 = !DILocalVariable(name: "__cil_tmp1", scope: !1090, file: !100, line: 289, type: !31)
!1092 = !DILocation(line: 289, column: 9, scope: !1090)
!1093 = !DILocalVariable(name: "__cil_tmp2", scope: !1090, file: !100, line: 290, type: !31)
!1094 = !DILocation(line: 290, column: 9, scope: !1090)
!1095 = !DILocalVariable(name: "__cil_tmp3", scope: !1090, file: !100, line: 291, type: !31)
!1096 = !DILocation(line: 291, column: 9, scope: !1090)
!1097 = !DILocalVariable(name: "__cil_tmp4", scope: !1090, file: !100, line: 292, type: !31)
!1098 = !DILocation(line: 292, column: 9, scope: !1090)
!1099 = !DILocalVariable(name: "__cil_tmp5", scope: !1090, file: !100, line: 293, type: !31)
!1100 = !DILocation(line: 293, column: 9, scope: !1090)
!1101 = !DILocation(line: 289, column: 36, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 297, column: 3)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !100, line: 296, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1090, file: !100, line: 295, column: 3)
!1105 = !DILocation(line: 290, column: 11, scope: !1102)
!1106 = !DILocation(line: 289, column: 3, scope: !1102)
!1107 = !DILocation(line: 291, column: 36, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 292, column: 3)
!1109 = !DILocation(line: 292, column: 11, scope: !1108)
!1110 = !DILocation(line: 291, column: 3, scope: !1108)
!1111 = !DILocation(line: 293, column: 36, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 294, column: 3)
!1113 = !DILocation(line: 294, column: 11, scope: !1112)
!1114 = !DILocation(line: 293, column: 3, scope: !1112)
!1115 = !DILocation(line: 295, column: 36, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 296, column: 3)
!1117 = !DILocation(line: 296, column: 11, scope: !1116)
!1118 = !DILocation(line: 295, column: 3, scope: !1116)
!1119 = !DILocation(line: 297, column: 36, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 298, column: 3)
!1121 = !DILocation(line: 298, column: 11, scope: !1120)
!1122 = !DILocation(line: 297, column: 3, scope: !1120)
!1123 = !DILocation(line: 298, column: 3, scope: !1104)
!1124 = distinct !DISubprogram(name: "license", scope: !100, file: !100, line: 300, type: !1024, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1125 = !DILocalVariable(name: "__cil_tmp1", scope: !1124, file: !100, line: 302, type: !31)
!1126 = !DILocation(line: 302, column: 9, scope: !1124)
!1127 = !DILocalVariable(name: "__cil_tmp2", scope: !1124, file: !100, line: 303, type: !31)
!1128 = !DILocation(line: 303, column: 9, scope: !1124)
!1129 = !DILocalVariable(name: "__cil_tmp3", scope: !1124, file: !100, line: 304, type: !31)
!1130 = !DILocation(line: 304, column: 9, scope: !1124)
!1131 = !DILocalVariable(name: "__cil_tmp4", scope: !1124, file: !100, line: 305, type: !31)
!1132 = !DILocation(line: 305, column: 9, scope: !1124)
!1133 = !DILocalVariable(name: "__cil_tmp5", scope: !1124, file: !100, line: 306, type: !31)
!1134 = !DILocation(line: 306, column: 9, scope: !1124)
!1135 = !DILocalVariable(name: "__cil_tmp6", scope: !1124, file: !100, line: 307, type: !31)
!1136 = !DILocation(line: 307, column: 9, scope: !1124)
!1137 = !DILocalVariable(name: "__cil_tmp7", scope: !1124, file: !100, line: 308, type: !31)
!1138 = !DILocation(line: 308, column: 9, scope: !1124)
!1139 = !DILocation(line: 302, column: 36, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 312, column: 3)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !100, line: 311, column: 3)
!1142 = distinct !DILexicalBlock(scope: !1124, file: !100, line: 310, column: 3)
!1143 = !DILocation(line: 303, column: 11, scope: !1140)
!1144 = !DILocation(line: 302, column: 3, scope: !1140)
!1145 = !DILocation(line: 304, column: 36, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 305, column: 3)
!1147 = !DILocation(line: 305, column: 11, scope: !1146)
!1148 = !DILocation(line: 304, column: 3, scope: !1146)
!1149 = !DILocation(line: 306, column: 36, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 307, column: 3)
!1151 = !DILocation(line: 307, column: 11, scope: !1150)
!1152 = !DILocation(line: 306, column: 3, scope: !1150)
!1153 = !DILocation(line: 308, column: 36, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 309, column: 3)
!1155 = !DILocation(line: 309, column: 11, scope: !1154)
!1156 = !DILocation(line: 308, column: 3, scope: !1154)
!1157 = !DILocation(line: 310, column: 36, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 311, column: 3)
!1159 = !DILocation(line: 311, column: 11, scope: !1158)
!1160 = !DILocation(line: 310, column: 3, scope: !1158)
!1161 = !DILocation(line: 312, column: 36, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 313, column: 3)
!1163 = !DILocation(line: 313, column: 11, scope: !1162)
!1164 = !DILocation(line: 312, column: 3, scope: !1162)
!1165 = !DILocation(line: 314, column: 36, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 315, column: 3)
!1167 = !DILocation(line: 315, column: 11, scope: !1166)
!1168 = !DILocation(line: 314, column: 3, scope: !1166)
!1169 = !DILocation(line: 316, column: 3, scope: !1142)
!1170 = distinct !DISubprogram(name: "intro", scope: !100, file: !100, line: 274, type: !1024, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1171 = !DILocalVariable(name: "__cil_tmp1", scope: !1170, file: !100, line: 276, type: !31)
!1172 = !DILocation(line: 276, column: 9, scope: !1170)
!1173 = !DILocalVariable(name: "__cil_tmp2", scope: !1170, file: !100, line: 277, type: !31)
!1174 = !DILocation(line: 277, column: 9, scope: !1170)
!1175 = !DILocalVariable(name: "__cil_tmp3", scope: !1170, file: !100, line: 278, type: !31)
!1176 = !DILocation(line: 278, column: 9, scope: !1170)
!1177 = !DILocalVariable(name: "__cil_tmp4", scope: !1170, file: !100, line: 279, type: !31)
!1178 = !DILocation(line: 279, column: 9, scope: !1170)
!1179 = !DILocalVariable(name: "__cil_tmp5", scope: !1170, file: !100, line: 280, type: !31)
!1180 = !DILocation(line: 280, column: 9, scope: !1170)
!1181 = !DILocalVariable(name: "__cil_tmp6", scope: !1170, file: !100, line: 281, type: !31)
!1182 = !DILocation(line: 281, column: 9, scope: !1170)
!1183 = !DILocalVariable(name: "__cil_tmp7", scope: !1170, file: !100, line: 282, type: !31)
!1184 = !DILocation(line: 282, column: 9, scope: !1170)
!1185 = !DILocation(line: 276, column: 36, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 286, column: 3)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !100, line: 285, column: 3)
!1188 = distinct !DILexicalBlock(scope: !1170, file: !100, line: 284, column: 3)
!1189 = !DILocation(line: 277, column: 11, scope: !1186)
!1190 = !DILocation(line: 276, column: 3, scope: !1186)
!1191 = !DILocation(line: 277, column: 36, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 279, column: 3)
!1193 = !DILocation(line: 277, column: 3, scope: !1192)
!1194 = !DILocation(line: 278, column: 36, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 279, column: 3)
!1196 = !DILocation(line: 278, column: 3, scope: !1195)
!1197 = !DILocation(line: 279, column: 36, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 281, column: 3)
!1199 = !DILocation(line: 280, column: 11, scope: !1198)
!1200 = !DILocation(line: 279, column: 3, scope: !1198)
!1201 = !DILocation(line: 281, column: 36, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 282, column: 3)
!1203 = !DILocation(line: 282, column: 11, scope: !1202)
!1204 = !DILocation(line: 281, column: 3, scope: !1202)
!1205 = !DILocation(line: 284, column: 3, scope: !1188)
!1206 = distinct !DISubprogram(name: "vtprintcap", scope: !100, file: !100, line: 333, type: !1207, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!36}
!1209 = !DILocalVariable(name: "buffer", scope: !1206, file: !100, line: 336, type: !139)
!1210 = !DILocation(line: 336, column: 8, scope: !1206)
!1211 = !DILocalVariable(name: "__cil_tmp14", scope: !1206, file: !100, line: 348, type: !27)
!1212 = !DILocation(line: 348, column: 9, scope: !1206)
!1213 = !DILocalVariable(name: "__cil_tmp15", scope: !1206, file: !100, line: 349, type: !31)
!1214 = !DILocation(line: 349, column: 9, scope: !1206)
!1215 = !DILocalVariable(name: "__cil_tmp16", scope: !1206, file: !100, line: 350, type: !31)
!1216 = !DILocation(line: 350, column: 9, scope: !1206)
!1217 = !DILocalVariable(name: "__cil_tmp17", scope: !1206, file: !100, line: 351, type: !31)
!1218 = !DILocation(line: 351, column: 9, scope: !1206)
!1219 = !DILocalVariable(name: "__cil_tmp18", scope: !1206, file: !100, line: 352, type: !31)
!1220 = !DILocation(line: 352, column: 9, scope: !1206)
!1221 = !DILocalVariable(name: "__cil_tmp19", scope: !1206, file: !100, line: 353, type: !31)
!1222 = !DILocation(line: 353, column: 9, scope: !1206)
!1223 = !DILocalVariable(name: "temp", scope: !1206, file: !100, line: 337, type: !31)
!1224 = !DILocation(line: 0, scope: !1206)
!1225 = !DILocation(line: 341, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 341, column: 7)
!1227 = distinct !DILexicalBlock(scope: !1206, file: !100, line: 355, column: 3)
!1228 = !DILocation(line: 341, column: 7, scope: !1227)
!1229 = !DILocation(line: 341, column: 16, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !100, line: 343, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !100, line: 342, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 341, column: 19)
!1233 = !DILocation(line: 341, column: 14, scope: !1230)
!1234 = !DILocation(line: 344, column: 3, scope: !1232)
!1235 = !DILocation(line: 341, column: 10, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 341, column: 7)
!1237 = !DILocation(line: 341, column: 9, scope: !1236)
!1238 = !DILocation(line: 341, column: 7, scope: !1226)
!1239 = !DILocation(line: 341, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !100, line: 343, column: 5)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 342, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !100, line: 341, column: 20)
!1243 = !DILocation(line: 341, column: 14, scope: !1240)
!1244 = !DILocation(line: 344, column: 3, scope: !1242)
!1245 = !DILocation(line: 343, column: 52, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 346, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 345, column: 3)
!1248 = !DILocation(line: 343, column: 13, scope: !1246)
!1249 = !DILocalVariable(name: "libfile", scope: !1206, file: !100, line: 335, type: !37)
!1250 = !DILocation(line: 344, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 344, column: 7)
!1252 = !DILocation(line: 344, column: 7, scope: !1227)
!1253 = !DILocation(line: 344, column: 5, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !100, line: 344, column: 18)
!1255 = !DILocation(line: 346, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !100, line: 347, column: 3)
!1257 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 346, column: 3)
!1258 = !DILocation(line: 0, scope: !1227)
!1259 = !DILocation(line: 346, column: 13, scope: !1256)
!1260 = !DILocation(line: 346, column: 46, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !100, line: 350, column: 5)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 349, column: 5)
!1263 = distinct !DILexicalBlock(scope: !1256, file: !100, line: 346, column: 13)
!1264 = !DILocation(line: 346, column: 15, scope: !1261)
!1265 = !DILocalVariable(name: "tmp___0", scope: !1206, file: !100, line: 339, type: !31)
!1266 = !DILocation(line: 346, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 346, column: 9)
!1268 = !DILocation(line: 346, column: 9, scope: !1263)
!1269 = !DILocation(line: 346, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !100, line: 346, column: 20)
!1271 = !DILocation(line: 348, column: 15, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 348, column: 9)
!1273 = !DILocation(line: 348, column: 9, scope: !1272)
!1274 = !DILocation(line: 348, column: 25, scope: !1272)
!1275 = !DILocation(line: 348, column: 9, scope: !1263)
!1276 = !DILocation(line: 348, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !100, line: 348, column: 32)
!1278 = !DILocation(line: 348, column: 17, scope: !1277)
!1279 = !DILocation(line: 349, column: 5, scope: !1277)
!1280 = !DILocation(line: 349, column: 35, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !100, line: 351, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 350, column: 5)
!1283 = !DILocation(line: 349, column: 12, scope: !1281)
!1284 = !DILocation(line: 350, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 350, column: 9)
!1286 = !DILocation(line: 350, column: 9, scope: !1263)
!1287 = !DILocation(line: 350, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !100, line: 350, column: 15)
!1289 = !DILocation(line: 351, column: 5, scope: !1288)
!1290 = !DILocation(line: 352, column: 44, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !100, line: 353, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 352, column: 5)
!1293 = !DILocation(line: 352, column: 12, scope: !1291)
!1294 = !DILocation(line: 353, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 356, column: 5)
!1296 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 355, column: 5)
!1297 = !DILocation(line: 0, scope: !1263)
!1298 = !DILocation(line: 353, column: 15, scope: !1295)
!1299 = !DILocation(line: 353, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 353, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 353, column: 15)
!1302 = !DILocation(line: 353, column: 11, scope: !1301)
!1303 = !DILocation(line: 353, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !100, line: 353, column: 19)
!1305 = !DILocation(line: 355, column: 58, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !100, line: 356, column: 7)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 355, column: 7)
!1308 = !DILocation(line: 355, column: 13, scope: !1306)
!1309 = !DILocalVariable(name: "tmp", scope: !1206, file: !100, line: 338, type: !36)
!1310 = !DILocation(line: 355, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 355, column: 11)
!1312 = !DILocation(line: 355, column: 11, scope: !1301)
!1313 = !DILocation(line: 355, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !100, line: 355, column: 18)
!1315 = !DILocation(line: 356, column: 14, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !100, line: 358, column: 7)
!1317 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 357, column: 7)
!1318 = distinct !{!1318, !1294, !1319}
!1319 = !DILocation(line: 359, column: 5, scope: !1295)
!1320 = !DILocation(line: 361, column: 5, scope: !1295)
!1321 = !DILocation(line: 358, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1263, file: !100, line: 358, column: 9)
!1323 = !DILocation(line: 358, column: 9, scope: !1263)
!1324 = !DILocation(line: 358, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 358, column: 15)
!1326 = distinct !{!1326, !1255, !1327}
!1327 = !DILocation(line: 360, column: 3, scope: !1256)
!1328 = !DILocation(line: 362, column: 3, scope: !1256)
!1329 = !DILocation(line: 360, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 360, column: 7)
!1331 = !DILocation(line: 360, column: 7, scope: !1227)
!1332 = !DILocation(line: 362, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !100, line: 362, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 361, column: 5)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 360, column: 13)
!1336 = !DILocalVariable(name: "tmp___1", scope: !1206, file: !100, line: 340, type: !31)
!1337 = !DILocation(line: 362, column: 11, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 362, column: 9)
!1339 = !DILocation(line: 362, column: 9, scope: !1335)
!1340 = !DILocation(line: 364, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !100, line: 364, column: 7)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !100, line: 363, column: 7)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !100, line: 362, column: 20)
!1344 = !DILocation(line: 365, column: 7, scope: !1343)
!1345 = !DILocation(line: 367, column: 15, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !100, line: 368, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 367, column: 5)
!1348 = !DILocalVariable(name: "tmp___2", scope: !1206, file: !100, line: 341, type: !31)
!1349 = !DILocation(line: 367, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 367, column: 9)
!1351 = !DILocation(line: 367, column: 9, scope: !1335)
!1352 = !DILocation(line: 369, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !100, line: 369, column: 7)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !100, line: 368, column: 7)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !100, line: 367, column: 20)
!1356 = !DILocation(line: 370, column: 7, scope: !1355)
!1357 = !DILocation(line: 373, column: 5, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !100, line: 373, column: 5)
!1359 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 372, column: 5)
!1360 = !DILocation(line: 377, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !100, line: 375, column: 5)
!1362 = !DILocalVariable(name: "tmp___4", scope: !1206, file: !100, line: 343, type: !28)
!1363 = !DILocation(line: 377, column: 26, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 377, column: 9)
!1365 = !DILocation(line: 377, column: 15, scope: !1364)
!1366 = !DILocation(line: 377, column: 9, scope: !1364)
!1367 = !DILocation(line: 377, column: 32, scope: !1364)
!1368 = !DILocation(line: 377, column: 9, scope: !1335)
!1369 = !DILocation(line: 377, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !100, line: 379, column: 7)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !100, line: 378, column: 7)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 377, column: 39)
!1373 = !DILocalVariable(name: "tmp___3", scope: !1206, file: !100, line: 342, type: !28)
!1374 = !DILocation(line: 377, column: 18, scope: !1371)
!1375 = !DILocation(line: 377, column: 7, scope: !1371)
!1376 = !DILocation(line: 377, column: 24, scope: !1371)
!1377 = !DILocation(line: 379, column: 5, scope: !1372)
!1378 = !DILocation(line: 378, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !100, line: 381, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 380, column: 5)
!1381 = !DILocalVariable(name: "tmp___6", scope: !1206, file: !100, line: 345, type: !28)
!1382 = !DILocation(line: 378, column: 27, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 378, column: 9)
!1384 = !DILocation(line: 378, column: 15, scope: !1383)
!1385 = !DILocation(line: 378, column: 9, scope: !1383)
!1386 = !DILocation(line: 378, column: 33, scope: !1383)
!1387 = !DILocation(line: 378, column: 9, scope: !1335)
!1388 = !DILocation(line: 378, column: 17, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !100, line: 380, column: 7)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 379, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !100, line: 378, column: 40)
!1392 = !DILocalVariable(name: "tmp___5", scope: !1206, file: !100, line: 344, type: !28)
!1393 = !DILocation(line: 378, column: 19, scope: !1390)
!1394 = !DILocation(line: 378, column: 7, scope: !1390)
!1395 = !DILocation(line: 378, column: 25, scope: !1390)
!1396 = !DILocation(line: 380, column: 5, scope: !1391)
!1397 = !DILocation(line: 381, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !100, line: 382, column: 5)
!1399 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 381, column: 5)
!1400 = !DILocation(line: 0, scope: !1335)
!1401 = !DILocation(line: 381, column: 15, scope: !1398)
!1402 = !DILocation(line: 381, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 381, column: 11)
!1404 = distinct !DILexicalBlock(scope: !1398, file: !100, line: 381, column: 15)
!1405 = !DILocation(line: 381, column: 11, scope: !1404)
!1406 = !DILocation(line: 381, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !100, line: 381, column: 19)
!1408 = !DILocation(line: 383, column: 14, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !100, line: 384, column: 7)
!1410 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 383, column: 7)
!1411 = !DILocation(line: 384, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 384, column: 11)
!1413 = !DILocation(line: 384, column: 11, scope: !1404)
!1414 = !DILocation(line: 386, column: 26, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !100, line: 386, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !100, line: 384, column: 17)
!1417 = !DILocation(line: 386, column: 19, scope: !1415)
!1418 = !DILocation(line: 386, column: 13, scope: !1415)
!1419 = !DILocation(line: 386, column: 31, scope: !1415)
!1420 = !DILocation(line: 386, column: 13, scope: !1416)
!1421 = !DILocation(line: 386, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !100, line: 386, column: 38)
!1423 = !DILocation(line: 387, column: 14, scope: !1416)
!1424 = !DILocation(line: 388, column: 7, scope: !1416)
!1425 = !DILocation(line: 0, scope: !1404)
!1426 = distinct !{!1426, !1397, !1427}
!1427 = !DILocation(line: 389, column: 5, scope: !1398)
!1428 = !DILocation(line: 391, column: 5, scope: !1398)
!1429 = !DILocation(line: 391, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !100, line: 392, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 391, column: 5)
!1432 = !DILocation(line: 391, column: 15, scope: !1430)
!1433 = !DILocation(line: 391, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 391, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !100, line: 391, column: 15)
!1436 = !DILocation(line: 391, column: 11, scope: !1435)
!1437 = !DILocation(line: 391, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !100, line: 391, column: 19)
!1439 = !DILocation(line: 393, column: 14, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !100, line: 394, column: 7)
!1441 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 393, column: 7)
!1442 = !DILocation(line: 394, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 394, column: 11)
!1444 = !DILocation(line: 394, column: 11, scope: !1435)
!1445 = !DILocation(line: 396, column: 26, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 396, column: 13)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !100, line: 394, column: 17)
!1448 = !DILocation(line: 396, column: 19, scope: !1446)
!1449 = !DILocation(line: 396, column: 13, scope: !1446)
!1450 = !DILocation(line: 396, column: 31, scope: !1446)
!1451 = !DILocation(line: 396, column: 13, scope: !1447)
!1452 = !DILocation(line: 396, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !100, line: 396, column: 38)
!1454 = !DILocation(line: 397, column: 14, scope: !1447)
!1455 = !DILocation(line: 398, column: 7, scope: !1447)
!1456 = !DILocation(line: 0, scope: !1435)
!1457 = distinct !{!1457, !1429, !1458}
!1458 = !DILocation(line: 399, column: 5, scope: !1430)
!1459 = !DILocation(line: 401, column: 5, scope: !1430)
!1460 = !DILocation(line: 401, column: 21, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !100, line: 405, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 404, column: 5)
!1463 = !DILocation(line: 401, column: 15, scope: !1461)
!1464 = !DILocalVariable(name: "tmp___7", scope: !1206, file: !100, line: 346, type: !36)
!1465 = !DILocation(line: 401, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 401, column: 9)
!1467 = !DILocation(line: 401, column: 9, scope: !1335)
!1468 = !DILocation(line: 401, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 401, column: 20)
!1470 = !DILocation(line: 402, column: 21, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !100, line: 404, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 403, column: 5)
!1473 = !DILocation(line: 402, column: 15, scope: !1471)
!1474 = !DILocalVariable(name: "tmp___8", scope: !1206, file: !100, line: 347, type: !36)
!1475 = !DILocation(line: 402, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 402, column: 9)
!1477 = !DILocation(line: 402, column: 9, scope: !1335)
!1478 = !DILocation(line: 402, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !100, line: 402, column: 20)
!1480 = !DILocation(line: 404, column: 12, scope: !1335)
!1481 = !DILocation(line: 405, column: 13, scope: !1335)
!1482 = !DILocation(line: 406, column: 5, scope: !1335)
!1483 = !DILocation(line: 408, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !100, line: 409, column: 3)
!1485 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 408, column: 3)
!1486 = !DILocation(line: 409, column: 3, scope: !1227)
!1487 = !DILocation(line: 411, column: 1, scope: !1206)
!1488 = distinct !DISubprogram(name: "main", scope: !100, file: !100, line: 414, type: !1489, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!36, !36, !30}
!1491 = !DILocalVariable(name: "argc", arg: 1, scope: !1488, file: !100, line: 414, type: !36)
!1492 = !DILocation(line: 0, scope: !1488)
!1493 = !DILocalVariable(name: "argv", arg: 2, scope: !1488, file: !100, line: 414, type: !30)
!1494 = !DILocalVariable(name: "args", scope: !1488, file: !100, line: 421, type: !210)
!1495 = !DILocation(line: 421, column: 11, scope: !1488)
!1496 = !DILocalVariable(name: "__cil_tmp22", scope: !1488, file: !100, line: 435, type: !31)
!1497 = !DILocation(line: 435, column: 9, scope: !1488)
!1498 = !DILocalVariable(name: "__cil_tmp23", scope: !1488, file: !100, line: 436, type: !31)
!1499 = !DILocation(line: 436, column: 9, scope: !1488)
!1500 = !DILocalVariable(name: "__cil_tmp24", scope: !1488, file: !100, line: 437, type: !31)
!1501 = !DILocation(line: 437, column: 9, scope: !1488)
!1502 = !DILocalVariable(name: "__cil_tmp25", scope: !1488, file: !100, line: 438, type: !31)
!1503 = !DILocation(line: 438, column: 9, scope: !1488)
!1504 = !DILocalVariable(name: "__cil_tmp26", scope: !1488, file: !100, line: 439, type: !31)
!1505 = !DILocation(line: 439, column: 9, scope: !1488)
!1506 = !DILocalVariable(name: "__cil_tmp27", scope: !1488, file: !100, line: 440, type: !31)
!1507 = !DILocation(line: 440, column: 9, scope: !1488)
!1508 = !DILocalVariable(name: "__cil_tmp28", scope: !1488, file: !100, line: 441, type: !31)
!1509 = !DILocation(line: 441, column: 9, scope: !1488)
!1510 = !DILocalVariable(name: "__cil_tmp29", scope: !1488, file: !100, line: 442, type: !31)
!1511 = !DILocation(line: 442, column: 9, scope: !1488)
!1512 = !DILocalVariable(name: "__cil_tmp30", scope: !1488, file: !100, line: 443, type: !31)
!1513 = !DILocation(line: 443, column: 9, scope: !1488)
!1514 = !DILocalVariable(name: "__cil_tmp31", scope: !1488, file: !100, line: 444, type: !31)
!1515 = !DILocation(line: 444, column: 9, scope: !1488)
!1516 = !DILocalVariable(name: "__cil_tmp32", scope: !1488, file: !100, line: 445, type: !31)
!1517 = !DILocation(line: 445, column: 9, scope: !1488)
!1518 = !DILocalVariable(name: "__cil_tmp33", scope: !1488, file: !100, line: 446, type: !31)
!1519 = !DILocation(line: 446, column: 9, scope: !1488)
!1520 = !DILocalVariable(name: "__cil_tmp34", scope: !1488, file: !100, line: 447, type: !31)
!1521 = !DILocation(line: 447, column: 9, scope: !1488)
!1522 = !DILocalVariable(name: "__cil_tmp35", scope: !1488, file: !100, line: 448, type: !31)
!1523 = !DILocation(line: 448, column: 9, scope: !1488)
!1524 = !DILocalVariable(name: "__cil_tmp36", scope: !1488, file: !100, line: 449, type: !31)
!1525 = !DILocation(line: 449, column: 9, scope: !1488)
!1526 = !DILocalVariable(name: "__cil_tmp37", scope: !1488, file: !100, line: 450, type: !31)
!1527 = !DILocation(line: 450, column: 9, scope: !1488)
!1528 = !DILocalVariable(name: "__cil_tmp38", scope: !1488, file: !100, line: 451, type: !31)
!1529 = !DILocation(line: 451, column: 9, scope: !1488)
!1530 = !DILocalVariable(name: "__cil_tmp39", scope: !1488, file: !100, line: 452, type: !31)
!1531 = !DILocation(line: 452, column: 9, scope: !1488)
!1532 = !DILocalVariable(name: "__cil_tmp40", scope: !1488, file: !100, line: 453, type: !31)
!1533 = !DILocation(line: 453, column: 9, scope: !1488)
!1534 = !DILocalVariable(name: "__cil_tmp41", scope: !1488, file: !100, line: 454, type: !31)
!1535 = !DILocation(line: 454, column: 9, scope: !1488)
!1536 = !DILocalVariable(name: "__cil_tmp42", scope: !1488, file: !100, line: 455, type: !31)
!1537 = !DILocation(line: 455, column: 9, scope: !1488)
!1538 = !DILocalVariable(name: "__cil_tmp43", scope: !1488, file: !100, line: 456, type: !31)
!1539 = !DILocation(line: 456, column: 9, scope: !1488)
!1540 = !DILocalVariable(name: "__cil_tmp44", scope: !1488, file: !100, line: 457, type: !31)
!1541 = !DILocation(line: 457, column: 9, scope: !1488)
!1542 = !DILocalVariable(name: "__cil_tmp45", scope: !1488, file: !100, line: 458, type: !31)
!1543 = !DILocation(line: 458, column: 9, scope: !1488)
!1544 = !DILocalVariable(name: "__cil_tmp46", scope: !1488, file: !100, line: 459, type: !31)
!1545 = !DILocation(line: 459, column: 9, scope: !1488)
!1546 = !DILocalVariable(name: "__cil_tmp47", scope: !1488, file: !100, line: 460, type: !31)
!1547 = !DILocation(line: 460, column: 9, scope: !1488)
!1548 = !DILocalVariable(name: "__cil_tmp48", scope: !1488, file: !100, line: 461, type: !31)
!1549 = !DILocation(line: 461, column: 9, scope: !1488)
!1550 = !DILocalVariable(name: "__cil_tmp49", scope: !1488, file: !100, line: 462, type: !31)
!1551 = !DILocation(line: 462, column: 9, scope: !1488)
!1552 = !DILocalVariable(name: "__cil_tmp50", scope: !1488, file: !100, line: 463, type: !31)
!1553 = !DILocation(line: 463, column: 9, scope: !1488)
!1554 = !DILocalVariable(name: "__cil_tmp51", scope: !1488, file: !100, line: 464, type: !31)
!1555 = !DILocation(line: 464, column: 9, scope: !1488)
!1556 = !DILocalVariable(name: "__cil_tmp52", scope: !1488, file: !100, line: 465, type: !31)
!1557 = !DILocation(line: 465, column: 9, scope: !1488)
!1558 = !DILocalVariable(name: "cnt", scope: !1488, file: !100, line: 419, type: !36)
!1559 = !DILocation(line: 423, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 468, column: 3)
!1561 = distinct !DILexicalBlock(scope: !1488, file: !100, line: 467, column: 3)
!1562 = !DILocation(line: 423, column: 13, scope: !1560)
!1563 = !DILocation(line: 426, column: 47, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !100, line: 424, column: 3)
!1565 = !DILocation(line: 426, column: 40, scope: !1564)
!1566 = !DILocation(line: 426, column: 16, scope: !1564)
!1567 = !DILocation(line: 426, column: 14, scope: !1564)
!1568 = !DILocation(line: 427, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 427, column: 7)
!1570 = !DILocation(line: 427, column: 7, scope: !1561)
!1571 = !DILocation(line: 427, column: 16, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 427, column: 19)
!1573 = !DILocation(line: 428, column: 3, scope: !1572)
!1574 = !DILocation(line: 427, column: 25, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 428, column: 10)
!1576 = !DILocation(line: 427, column: 18, scope: !1575)
!1577 = !DILocation(line: 427, column: 16, scope: !1575)
!1578 = !DILocation(line: 430, column: 32, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 430, column: 3)
!1580 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 429, column: 3)
!1581 = !DILocation(line: 430, column: 9, scope: !1579)
!1582 = !DILocalVariable(name: "tmp", scope: !1488, file: !100, line: 416, type: !31)
!1583 = !DILocation(line: 431, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 431, column: 7)
!1585 = !DILocation(line: 431, column: 7, scope: !1561)
!1586 = !DILocation(line: 431, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !100, line: 433, column: 5)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !100, line: 432, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !100, line: 431, column: 14)
!1590 = !DILocation(line: 434, column: 3, scope: !1589)
!1591 = !DILocation(line: 0, scope: !1561)
!1592 = !DILocation(line: 432, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 432, column: 7)
!1594 = !DILocation(line: 432, column: 7, scope: !1561)
!1595 = !DILocation(line: 433, column: 3, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !100, line: 432, column: 14)
!1597 = !DILocation(line: 434, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !100, line: 435, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 434, column: 3)
!1600 = !DILocalVariable(name: "tmp___0", scope: !1488, file: !100, line: 422, type: !28)
!1601 = !DILocation(line: 434, column: 28, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !100, line: 436, column: 3)
!1603 = !DILocation(line: 434, column: 13, scope: !1602)
!1604 = !DILocalVariable(name: "tmp___1", scope: !1488, file: !100, line: 423, type: !27)
!1605 = !DILocalVariable(name: "env", scope: !1488, file: !100, line: 417, type: !31)
!1606 = !DILocation(line: 435, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 435, column: 7)
!1608 = !DILocation(line: 435, column: 7, scope: !1561)
!1609 = !DILocation(line: 437, column: 38, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !100, line: 437, column: 5)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !100, line: 436, column: 5)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !100, line: 435, column: 14)
!1613 = !DILocation(line: 438, column: 13, scope: !1610)
!1614 = !DILocation(line: 437, column: 5, scope: !1610)
!1615 = !DILocation(line: 438, column: 5, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !100, line: 440, column: 5)
!1617 = !DILocation(line: 441, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !100, line: 443, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 442, column: 3)
!1620 = !DILocation(line: 447, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 447, column: 7)
!1622 = !DILocation(line: 447, column: 7, scope: !1561)
!1623 = !DILocation(line: 449, column: 5, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !100, line: 449, column: 5)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !100, line: 448, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !100, line: 447, column: 12)
!1627 = !DILocation(line: 450, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !100, line: 451, column: 5)
!1629 = !DILocation(line: 453, column: 3, scope: !1626)
!1630 = !DILocation(line: 454, column: 3, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !100, line: 455, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 454, column: 3)
!1633 = !DILocation(line: 455, column: 3, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1632, file: !100, line: 456, column: 3)
!1635 = !DILocation(line: 457, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 457, column: 7)
!1637 = !DILocation(line: 457, column: 7, scope: !1561)
!1638 = !DILocation(line: 457, column: 5, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !100, line: 459, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !100, line: 458, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !100, line: 457, column: 17)
!1642 = !DILocation(line: 460, column: 9, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 460, column: 7)
!1644 = !DILocation(line: 460, column: 7, scope: !1561)
!1645 = !DILocation(line: 460, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !100, line: 462, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !100, line: 461, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !100, line: 460, column: 16)
!1649 = !DILocation(line: 463, column: 3, scope: !1648)
!1650 = !DILocation(line: 463, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 463, column: 7)
!1652 = !DILocation(line: 463, column: 7, scope: !1561)
!1653 = !DILocation(line: 465, column: 14, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !100, line: 465, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !100, line: 464, column: 5)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !100, line: 463, column: 18)
!1657 = !DILocalVariable(name: "result", scope: !1488, file: !100, line: 418, type: !36)
!1658 = !DILocation(line: 468, column: 16, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 468, column: 9)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !100, line: 468, column: 5)
!1661 = !DILocation(line: 468, column: 9, scope: !1660)
!1662 = !DILocation(line: 468, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !100, line: 468, column: 23)
!1664 = !DILocation(line: 483, column: 16, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 483, column: 9)
!1666 = !DILocation(line: 483, column: 9, scope: !1660)
!1667 = !DILocation(line: 483, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !100, line: 483, column: 23)
!1669 = !DILocation(line: 498, column: 16, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 498, column: 9)
!1671 = !DILocation(line: 498, column: 9, scope: !1660)
!1672 = !DILocation(line: 498, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !100, line: 498, column: 22)
!1674 = !DILocation(line: 506, column: 16, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 506, column: 9)
!1676 = !DILocation(line: 506, column: 9, scope: !1660)
!1677 = !DILocation(line: 506, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !100, line: 506, column: 22)
!1679 = !DILocation(line: 521, column: 5, scope: !1660)
!1680 = !DILocation(line: 469, column: 11, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 469, column: 9)
!1682 = !DILocation(line: 469, column: 9, scope: !1660)
!1683 = !DILocation(line: 469, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !100, line: 469, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !100, line: 469, column: 18)
!1686 = !DILocation(line: 469, column: 11, scope: !1685)
!1687 = !DILocation(line: 471, column: 42, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !100, line: 471, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 470, column: 9)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 469, column: 22)
!1691 = !DILocation(line: 472, column: 17, scope: !1688)
!1692 = !DILocation(line: 472, column: 29, scope: !1688)
!1693 = !DILocation(line: 471, column: 9, scope: !1688)
!1694 = !DILocation(line: 475, column: 7, scope: !1690)
!1695 = !DILocation(line: 469, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1684, file: !100, line: 475, column: 14)
!1697 = !DILocation(line: 471, column: 5, scope: !1685)
!1698 = !DILocation(line: 475, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1681, file: !100, line: 475, column: 9)
!1700 = !DILocation(line: 475, column: 9, scope: !1681)
!1701 = !DILocation(line: 477, column: 40, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !100, line: 477, column: 7)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !100, line: 476, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !100, line: 475, column: 18)
!1705 = !DILocation(line: 478, column: 15, scope: !1702)
!1706 = !DILocation(line: 478, column: 27, scope: !1702)
!1707 = !DILocation(line: 477, column: 7, scope: !1702)
!1708 = !DILocation(line: 479, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1703, file: !100, line: 480, column: 7)
!1710 = !DILocation(line: 481, column: 5, scope: !1660)
!1711 = !DILocation(line: 484, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 484, column: 9)
!1713 = !DILocation(line: 484, column: 9, scope: !1660)
!1714 = !DILocation(line: 484, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !100, line: 484, column: 11)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !100, line: 484, column: 18)
!1717 = !DILocation(line: 484, column: 11, scope: !1716)
!1718 = !DILocation(line: 486, column: 42, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !100, line: 486, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !100, line: 485, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1715, file: !100, line: 484, column: 22)
!1722 = !DILocation(line: 487, column: 17, scope: !1719)
!1723 = !DILocation(line: 487, column: 29, scope: !1719)
!1724 = !DILocation(line: 486, column: 9, scope: !1719)
!1725 = !DILocation(line: 490, column: 7, scope: !1721)
!1726 = !DILocation(line: 484, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1715, file: !100, line: 490, column: 14)
!1728 = !DILocation(line: 486, column: 5, scope: !1716)
!1729 = !DILocation(line: 490, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1712, file: !100, line: 490, column: 9)
!1731 = !DILocation(line: 490, column: 9, scope: !1712)
!1732 = !DILocation(line: 492, column: 40, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !100, line: 492, column: 7)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !100, line: 491, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !100, line: 490, column: 18)
!1736 = !DILocation(line: 493, column: 15, scope: !1733)
!1737 = !DILocation(line: 493, column: 27, scope: !1733)
!1738 = !DILocation(line: 492, column: 7, scope: !1733)
!1739 = !DILocation(line: 494, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !100, line: 495, column: 7)
!1741 = !DILocation(line: 496, column: 5, scope: !1660)
!1742 = !DILocation(line: 499, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 499, column: 9)
!1744 = !DILocation(line: 499, column: 9, scope: !1660)
!1745 = !DILocation(line: 501, column: 40, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !100, line: 501, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !100, line: 500, column: 7)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !100, line: 499, column: 18)
!1749 = !DILocation(line: 502, column: 15, scope: !1746)
!1750 = !DILocation(line: 502, column: 27, scope: !1746)
!1751 = !DILocation(line: 501, column: 7, scope: !1746)
!1752 = !DILocation(line: 505, column: 5, scope: !1748)
!1753 = !DILocation(line: 504, column: 5, scope: !1660)
!1754 = !DILocation(line: 507, column: 11, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 507, column: 9)
!1756 = !DILocation(line: 507, column: 9, scope: !1660)
!1757 = !DILocation(line: 507, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !100, line: 507, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !100, line: 507, column: 18)
!1760 = !DILocation(line: 507, column: 11, scope: !1759)
!1761 = !DILocation(line: 509, column: 42, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !100, line: 509, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !100, line: 508, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !100, line: 507, column: 22)
!1765 = !DILocation(line: 510, column: 17, scope: !1762)
!1766 = !DILocation(line: 510, column: 29, scope: !1762)
!1767 = !DILocation(line: 509, column: 9, scope: !1762)
!1768 = !DILocation(line: 513, column: 7, scope: !1764)
!1769 = !DILocation(line: 507, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1758, file: !100, line: 513, column: 14)
!1771 = !DILocation(line: 509, column: 5, scope: !1759)
!1772 = !DILocation(line: 513, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1755, file: !100, line: 513, column: 9)
!1774 = !DILocation(line: 513, column: 9, scope: !1755)
!1775 = !DILocation(line: 515, column: 40, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !100, line: 515, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !100, line: 514, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !100, line: 513, column: 18)
!1779 = !DILocation(line: 516, column: 15, scope: !1776)
!1780 = !DILocation(line: 516, column: 27, scope: !1776)
!1781 = !DILocation(line: 515, column: 7, scope: !1776)
!1782 = !DILocation(line: 517, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1777, file: !100, line: 518, column: 7)
!1784 = !DILocation(line: 519, column: 5, scope: !1660)
!1785 = !DILocation(line: 522, column: 38, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !100, line: 522, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 521, column: 5)
!1788 = !DILocation(line: 523, column: 13, scope: !1786)
!1789 = !DILocation(line: 522, column: 5, scope: !1786)
!1790 = !DILocation(line: 523, column: 5, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !100, line: 525, column: 5)
!1792 = !DILocation(line: 528, column: 3, scope: !1656)
!1793 = !DILocation(line: 529, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 529, column: 7)
!1795 = !DILocation(line: 529, column: 7, scope: !1561)
!1796 = !DILocation(line: 531, column: 54, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !100, line: 531, column: 5)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !100, line: 530, column: 5)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 529, column: 15)
!1800 = !DILocation(line: 531, column: 15, scope: !1797)
!1801 = !DILocation(line: 531, column: 13, scope: !1797)
!1802 = !DILocation(line: 532, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !100, line: 532, column: 9)
!1804 = !DILocation(line: 532, column: 9, scope: !1799)
!1805 = !DILocation(line: 534, column: 40, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !100, line: 534, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !100, line: 533, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !100, line: 532, column: 20)
!1809 = !DILocation(line: 535, column: 15, scope: !1806)
!1810 = !DILocation(line: 535, column: 27, scope: !1806)
!1811 = !DILocation(line: 534, column: 7, scope: !1806)
!1812 = !DILocation(line: 536, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1807, file: !100, line: 537, column: 7)
!1814 = !DILocation(line: 538, column: 11, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1799, file: !100, line: 538, column: 9)
!1816 = !DILocation(line: 538, column: 9, scope: !1799)
!1817 = !DILocation(line: 539, column: 40, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !100, line: 540, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !100, line: 539, column: 7)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !100, line: 538, column: 18)
!1821 = !DILocation(line: 540, column: 15, scope: !1818)
!1822 = !DILocation(line: 540, column: 27, scope: !1818)
!1823 = !DILocation(line: 539, column: 7, scope: !1818)
!1824 = !DILocation(line: 543, column: 5, scope: !1820)
!1825 = !DILocation(line: 544, column: 3, scope: !1799)
!1826 = !DILocation(line: 543, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 544, column: 10)
!1828 = !DILocation(line: 543, column: 13, scope: !1827)
!1829 = !DILocation(line: 544, column: 11, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !100, line: 544, column: 9)
!1831 = !DILocation(line: 544, column: 9, scope: !1827)
!1832 = !DILocation(line: 545, column: 40, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !100, line: 546, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !100, line: 545, column: 7)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !100, line: 544, column: 18)
!1836 = !DILocation(line: 546, column: 15, scope: !1833)
!1837 = !DILocation(line: 545, column: 7, scope: !1833)
!1838 = !DILocation(line: 549, column: 5, scope: !1835)
!1839 = !DILocation(line: 549, column: 36, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !100, line: 552, column: 3)
!1841 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 551, column: 3)
!1842 = !DILocation(line: 549, column: 13, scope: !1840)
!1843 = !DILocalVariable(name: "tmp___2", scope: !1488, file: !100, line: 424, type: !36)
!1844 = !DILocation(line: 549, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 549, column: 7)
!1846 = !DILocation(line: 549, column: 7, scope: !1561)
!1847 = !DILocation(line: 551, column: 12, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 551, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !100, line: 550, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !100, line: 549, column: 18)
!1851 = !DILocation(line: 551, column: 5, scope: !1848)
!1852 = !DILocation(line: 552, column: 38, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 553, column: 5)
!1854 = !DILocation(line: 552, column: 80, scope: !1853)
!1855 = !DILocation(line: 552, column: 5, scope: !1853)
!1856 = !DILocation(line: 553, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 554, column: 5)
!1858 = !DILocation(line: 553, column: 5, scope: !1857)
!1859 = !DILocation(line: 554, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 555, column: 5)
!1861 = !DILocation(line: 556, column: 36, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !100, line: 559, column: 3)
!1863 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 558, column: 3)
!1864 = !DILocation(line: 556, column: 13, scope: !1862)
!1865 = !DILocalVariable(name: "tmp___3", scope: !1488, file: !100, line: 425, type: !36)
!1866 = !DILocation(line: 556, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 556, column: 7)
!1868 = !DILocation(line: 556, column: 7, scope: !1561)
!1869 = !DILocation(line: 558, column: 12, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !100, line: 558, column: 5)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !100, line: 557, column: 5)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !100, line: 556, column: 18)
!1873 = !DILocation(line: 558, column: 5, scope: !1870)
!1874 = !DILocation(line: 559, column: 38, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !100, line: 560, column: 5)
!1876 = !DILocation(line: 559, column: 80, scope: !1875)
!1877 = !DILocation(line: 559, column: 5, scope: !1875)
!1878 = !DILocation(line: 560, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !100, line: 561, column: 5)
!1880 = !DILocation(line: 560, column: 5, scope: !1879)
!1881 = !DILocation(line: 561, column: 5, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !100, line: 562, column: 5)
!1883 = !DILocation(line: 566, column: 20, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !100, line: 566, column: 3)
!1885 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 565, column: 3)
!1886 = !DILocation(line: 566, column: 13, scope: !1884)
!1887 = !DILocalVariable(name: "tmp___6", scope: !1488, file: !100, line: 428, type: !36)
!1888 = !DILocation(line: 566, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !100, line: 568, column: 3)
!1890 = !DILocalVariable(name: "tmp___7", scope: !1488, file: !100, line: 429, type: !36)
!1891 = !DILocation(line: 566, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 566, column: 7)
!1893 = !DILocation(line: 566, column: 7, scope: !1561)
!1894 = !DILocation(line: 568, column: 22, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !100, line: 568, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !100, line: 567, column: 5)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !100, line: 566, column: 16)
!1898 = !DILocation(line: 568, column: 15, scope: !1895)
!1899 = !DILocalVariable(name: "tmp___4", scope: !1488, file: !100, line: 426, type: !36)
!1900 = !DILocation(line: 568, column: 5, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !100, line: 570, column: 5)
!1902 = !DILocation(line: 569, column: 17, scope: !1896)
!1903 = !DILocation(line: 570, column: 5, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1896, file: !100, line: 570, column: 5)
!1905 = !DILocation(line: 571, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !100, line: 571, column: 9)
!1907 = !DILocation(line: 571, column: 9, scope: !1897)
!1908 = !DILocation(line: 573, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !100, line: 573, column: 7)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !100, line: 572, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !100, line: 571, column: 17)
!1912 = !DILocation(line: 574, column: 24, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !100, line: 575, column: 7)
!1914 = !DILocation(line: 574, column: 17, scope: !1913)
!1915 = !DILocalVariable(name: "tmp___5", scope: !1488, file: !100, line: 427, type: !36)
!1916 = !DILocation(line: 574, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1910, file: !100, line: 576, column: 7)
!1918 = !DILocation(line: 577, column: 5, scope: !1911)
!1919 = !DILocation(line: 578, column: 3, scope: !1897)
!1920 = !DILocation(line: 579, column: 12, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1892, file: !100, line: 578, column: 10)
!1922 = !DILocation(line: 582, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 582, column: 7)
!1924 = !DILocation(line: 582, column: 7, scope: !1561)
!1925 = !DILocation(line: 584, column: 38, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !100, line: 584, column: 5)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 583, column: 5)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !100, line: 582, column: 16)
!1929 = !DILocation(line: 585, column: 13, scope: !1926)
!1930 = !DILocation(line: 584, column: 5, scope: !1926)
!1931 = !DILocation(line: 585, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 585, column: 9)
!1933 = !DILocation(line: 585, column: 9, scope: !1928)
!1934 = !DILocation(line: 585, column: 40, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !100, line: 587, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !100, line: 586, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !100, line: 585, column: 18)
!1938 = !DILocation(line: 585, column: 7, scope: !1935)
!1939 = !DILocation(line: 588, column: 5, scope: !1937)
!1940 = !DILocation(line: 586, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 586, column: 9)
!1942 = !DILocation(line: 586, column: 9, scope: !1928)
!1943 = !DILocation(line: 586, column: 40, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !100, line: 588, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !100, line: 587, column: 7)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !100, line: 586, column: 17)
!1947 = !DILocation(line: 586, column: 7, scope: !1944)
!1948 = !DILocation(line: 589, column: 5, scope: !1946)
!1949 = !DILocation(line: 587, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 587, column: 9)
!1951 = !DILocation(line: 587, column: 9, scope: !1928)
!1952 = !DILocation(line: 587, column: 40, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !100, line: 589, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !100, line: 588, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !100, line: 587, column: 16)
!1956 = !DILocation(line: 587, column: 7, scope: !1953)
!1957 = !DILocation(line: 590, column: 5, scope: !1955)
!1958 = !DILocation(line: 588, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 588, column: 9)
!1960 = !DILocation(line: 588, column: 9, scope: !1928)
!1961 = !DILocation(line: 588, column: 40, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !100, line: 590, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !100, line: 589, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !100, line: 588, column: 18)
!1965 = !DILocation(line: 588, column: 7, scope: !1962)
!1966 = !DILocation(line: 591, column: 5, scope: !1964)
!1967 = !DILocation(line: 589, column: 9, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 589, column: 9)
!1969 = !DILocation(line: 589, column: 9, scope: !1928)
!1970 = !DILocation(line: 589, column: 40, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !100, line: 591, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !100, line: 590, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !100, line: 589, column: 16)
!1974 = !DILocation(line: 589, column: 7, scope: !1971)
!1975 = !DILocation(line: 592, column: 5, scope: !1973)
!1976 = !DILocation(line: 590, column: 38, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !100, line: 594, column: 5)
!1978 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 593, column: 5)
!1979 = !DILocation(line: 590, column: 5, scope: !1977)
!1980 = !DILocation(line: 591, column: 12, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !100, line: 592, column: 5)
!1982 = !DILocation(line: 591, column: 5, scope: !1981)
!1983 = !DILocation(line: 594, column: 3, scope: !1928)
!1984 = !DILocation(line: 595, column: 3, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 596, column: 3)
!1986 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 595, column: 3)
!1987 = !DILocation(line: 596, column: 3, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 597, column: 3)
!1989 = !DILocation(line: 597, column: 3, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 598, column: 3)
!1991 = !DILocation(line: 598, column: 3, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 599, column: 3)
!1993 = !DILocation(line: 599, column: 3, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 600, column: 3)
!1995 = !DILocation(line: 601, column: 18, scope: !1986)
!1996 = !DILocation(line: 601, column: 16, scope: !1986)
!1997 = !DILocalVariable(name: "total", scope: !1488, file: !100, line: 420, type: !36)
!1998 = !DILocation(line: 604, column: 3, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !100, line: 604, column: 3)
!2000 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 603, column: 3)
!2001 = !DILocation(line: 604, column: 13, scope: !1999)
!2002 = !DILocalVariable(name: "lastch", scope: !1488, file: !100, line: 431, type: !36)
!2003 = !DILocation(line: 610, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 610, column: 9)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !100, line: 604, column: 13)
!2006 = !DILocation(line: 610, column: 16, scope: !2004)
!2007 = !DILocation(line: 610, column: 9, scope: !2005)
!2008 = !DILocation(line: 611, column: 16, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !100, line: 610, column: 25)
!2010 = !DILocalVariable(name: "infile", scope: !1488, file: !100, line: 432, type: !37)
!2011 = !DILocation(line: 612, column: 5, scope: !2009)
!2012 = !DILocation(line: 612, column: 64, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !100, line: 614, column: 7)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !100, line: 613, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !100, line: 612, column: 12)
!2016 = !DILocation(line: 612, column: 62, scope: !2013)
!2017 = !DILocation(line: 612, column: 55, scope: !2013)
!2018 = !DILocation(line: 612, column: 16, scope: !2013)
!2019 = !DILocation(line: 0, scope: !2004)
!2020 = !DILocation(line: 614, column: 11, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 614, column: 9)
!2022 = !DILocation(line: 614, column: 9, scope: !2005)
!2023 = !DILocation(line: 616, column: 40, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !100, line: 616, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !100, line: 615, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !100, line: 614, column: 19)
!2027 = !DILocation(line: 617, column: 15, scope: !2024)
!2028 = !DILocation(line: 617, column: 36, scope: !2024)
!2029 = !DILocation(line: 617, column: 34, scope: !2024)
!2030 = !DILocation(line: 617, column: 27, scope: !2024)
!2031 = !DILocation(line: 616, column: 7, scope: !2024)
!2032 = !DILocation(line: 618, column: 14, scope: !2025)
!2033 = !DILocation(line: 619, column: 7, scope: !2026)
!2034 = !DILocation(line: 622, column: 12, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !100, line: 622, column: 5)
!2036 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 621, column: 5)
!2037 = !DILocation(line: 622, column: 5, scope: !2035)
!2038 = !DILocation(line: 623, column: 38, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !100, line: 624, column: 5)
!2040 = !DILocation(line: 623, column: 80, scope: !2039)
!2041 = !DILocation(line: 623, column: 5, scope: !2039)
!2042 = !DILocation(line: 624, column: 12, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !100, line: 625, column: 5)
!2044 = !DILocation(line: 624, column: 5, scope: !2043)
!2045 = !DILocation(line: 626, column: 5, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !100, line: 628, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 627, column: 5)
!2048 = !DILocation(line: 0, scope: !2005)
!2049 = !DILocation(line: 626, column: 15, scope: !2046)
!2050 = !DILocation(line: 626, column: 12, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !100, line: 630, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !100, line: 629, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !100, line: 626, column: 15)
!2054 = !DILocalVariable(name: "ch", scope: !1488, file: !100, line: 430, type: !36)
!2055 = !DILocation(line: 626, column: 17, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !100, line: 626, column: 11)
!2057 = !DILocation(line: 626, column: 11, scope: !2053)
!2058 = !DILocation(line: 626, column: 9, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !100, line: 626, column: 25)
!2060 = !DILocation(line: 630, column: 14, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 630, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2053, file: !100, line: 628, column: 7)
!2063 = !DILocation(line: 630, column: 11, scope: !2062)
!2064 = !DILocation(line: 630, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !100, line: 630, column: 21)
!2066 = !DILocation(line: 634, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 634, column: 11)
!2068 = !DILocation(line: 634, column: 11, scope: !2062)
!2069 = !DILocation(line: 634, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !100, line: 634, column: 21)
!2071 = !DILocation(line: 640, column: 7, scope: !2062)
!2072 = !DILocation(line: 631, column: 13, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 631, column: 11)
!2074 = !DILocation(line: 631, column: 11, scope: !2062)
!2075 = !DILocation(line: 631, column: 19, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !100, line: 633, column: 9)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !100, line: 632, column: 9)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !100, line: 631, column: 22)
!2079 = !DILocation(line: 631, column: 9, scope: !2076)
!2080 = !DILocation(line: 634, column: 7, scope: !2078)
!2081 = !DILocation(line: 632, column: 7, scope: !2062)
!2082 = !DILocation(line: 635, column: 18, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 635, column: 11)
!2084 = !DILocation(line: 635, column: 11, scope: !2062)
!2085 = !DILocation(line: 635, column: 13, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !100, line: 635, column: 13)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !100, line: 635, column: 25)
!2088 = !DILocation(line: 635, column: 13, scope: !2087)
!2089 = !DILocation(line: 636, column: 23, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !100, line: 637, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !100, line: 636, column: 11)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !100, line: 635, column: 20)
!2093 = !DILocation(line: 636, column: 11, scope: !2090)
!2094 = !DILocation(line: 639, column: 9, scope: !2092)
!2095 = !DILocation(line: 640, column: 7, scope: !2087)
!2096 = !DILocation(line: 637, column: 17, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !100, line: 642, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 641, column: 7)
!2099 = !DILocation(line: 637, column: 7, scope: !2097)
!2100 = !DILocation(line: 638, column: 7, scope: !2062)
!2101 = !DILocation(line: 641, column: 18, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 641, column: 11)
!2103 = !DILocation(line: 641, column: 11, scope: !2062)
!2104 = !DILocation(line: 641, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !100, line: 641, column: 13)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !100, line: 641, column: 25)
!2107 = !DILocation(line: 641, column: 13, scope: !2106)
!2108 = !DILocation(line: 642, column: 23, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !100, line: 643, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !100, line: 642, column: 11)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !100, line: 641, column: 22)
!2112 = !DILocation(line: 642, column: 11, scope: !2109)
!2113 = !DILocation(line: 645, column: 9, scope: !2111)
!2114 = !DILocation(line: 646, column: 7, scope: !2106)
!2115 = !DILocation(line: 643, column: 17, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !100, line: 648, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2062, file: !100, line: 647, column: 7)
!2118 = !DILocation(line: 643, column: 7, scope: !2116)
!2119 = !DILocation(line: 644, column: 7, scope: !2062)
!2120 = distinct !{!2120, !2045, !2121}
!2121 = !DILocation(line: 648, column: 5, scope: !2046)
!2122 = !DILocation(line: 650, column: 5, scope: !2046)
!2123 = !DILocation(line: 650, column: 5, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !100, line: 654, column: 5)
!2125 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 653, column: 5)
!2126 = !DILocation(line: 651, column: 9, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 651, column: 9)
!2128 = !DILocation(line: 651, column: 9, scope: !2005)
!2129 = !DILocation(line: 651, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !100, line: 653, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !100, line: 652, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !100, line: 651, column: 16)
!2133 = !DILocation(line: 651, column: 7, scope: !2130)
!2134 = !DILocation(line: 654, column: 5, scope: !2132)
!2135 = !DILocation(line: 652, column: 38, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !100, line: 656, column: 5)
!2137 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 655, column: 5)
!2138 = !DILocation(line: 652, column: 80, scope: !2136)
!2139 = !DILocation(line: 652, column: 5, scope: !2136)
!2140 = !DILocation(line: 653, column: 12, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !100, line: 654, column: 5)
!2142 = !DILocation(line: 653, column: 5, scope: !2141)
!2143 = !DILocation(line: 655, column: 9, scope: !2137)
!2144 = !DILocation(line: 657, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 657, column: 9)
!2146 = !DILocation(line: 657, column: 9, scope: !2005)
!2147 = !DILocation(line: 659, column: 19, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !100, line: 659, column: 11)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !100, line: 657, column: 18)
!2150 = !DILocation(line: 659, column: 16, scope: !2148)
!2151 = !DILocation(line: 659, column: 11, scope: !2149)
!2152 = !DILocation(line: 660, column: 42, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !100, line: 661, column: 9)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !100, line: 660, column: 9)
!2155 = distinct !DILexicalBlock(scope: !2148, file: !100, line: 659, column: 27)
!2156 = !DILocation(line: 661, column: 17, scope: !2153)
!2157 = !DILocation(line: 660, column: 9, scope: !2153)
!2158 = !DILocation(line: 664, column: 7, scope: !2155)
!2159 = !DILocation(line: 662, column: 42, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !100, line: 666, column: 9)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !100, line: 665, column: 9)
!2162 = distinct !DILexicalBlock(scope: !2148, file: !100, line: 664, column: 14)
!2163 = !DILocation(line: 663, column: 17, scope: !2160)
!2164 = !DILocation(line: 663, column: 38, scope: !2160)
!2165 = !DILocation(line: 663, column: 36, scope: !2160)
!2166 = !DILocation(line: 663, column: 29, scope: !2160)
!2167 = !DILocation(line: 662, column: 9, scope: !2160)
!2168 = !DILocation(line: 667, column: 5, scope: !2149)
!2169 = !DILocation(line: 665, column: 12, scope: !2005)
!2170 = !DILocation(line: 665, column: 5, scope: !2005)
!2171 = !DILocation(line: 604, column: 12, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2005, file: !100, line: 604, column: 9)
!2173 = !DILocation(line: 604, column: 19, scope: !2172)
!2174 = !DILocation(line: 604, column: 9, scope: !2005)
!2175 = !DILocation(line: 604, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !100, line: 604, column: 28)
!2177 = distinct !{!2177, !1998, !2178}
!2178 = !DILocation(line: 606, column: 3, scope: !1999)
!2179 = !DILocation(line: 608, column: 3, scope: !1999)
!2180 = !DILocation(line: 669, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 669, column: 7)
!2182 = !DILocation(line: 669, column: 7, scope: !1561)
!2183 = !DILocation(line: 669, column: 22, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !100, line: 671, column: 5)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !100, line: 670, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2181, file: !100, line: 669, column: 20)
!2187 = !DILocation(line: 669, column: 15, scope: !2184)
!2188 = !DILocalVariable(name: "tmp___8", scope: !1488, file: !100, line: 433, type: !36)
!2189 = !DILocation(line: 669, column: 5, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !100, line: 671, column: 5)
!2191 = !DILocation(line: 672, column: 3, scope: !2186)
!2192 = !DILocation(line: 671, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 671, column: 7)
!2194 = !DILocation(line: 671, column: 7, scope: !1561)
!2195 = !DILocation(line: 671, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !100, line: 671, column: 9)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !100, line: 671, column: 16)
!2198 = !DILocation(line: 671, column: 9, scope: !2197)
!2199 = !DILocalVariable(name: "tmp___9", scope: !1488, file: !100, line: 434, type: !34)
!2200 = !DILocation(line: 672, column: 5, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !100, line: 671, column: 19)
!2202 = !DILocation(line: 0, scope: !2196)
!2203 = !DILocation(line: 671, column: 38, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !100, line: 674, column: 5)
!2205 = distinct !DILexicalBlock(scope: !2197, file: !100, line: 673, column: 5)
!2206 = !DILocation(line: 672, column: 13, scope: !2204)
!2207 = !DILocation(line: 671, column: 5, scope: !2204)
!2208 = !DILocation(line: 675, column: 3, scope: !2197)
!2209 = !DILocation(line: 675, column: 3, scope: !1561)
