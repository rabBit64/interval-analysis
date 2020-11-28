; ModuleID = '/tmp/tmp.ll'
source_filename = "c/brutefir-1.0f.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"-nodefault\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-daemon\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [83 x i8] c"\0ABruteFIR v1.0f (August 2005)                                  (c) Anders Torger\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Usage: %s [-quiet] [-nodefault] [-daemon] [configuration file]\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fork failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"setsid failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"chdir failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Could not start filtering.\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !79 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8** %argv, metadata !86, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata !7, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata !7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata !7, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata !7, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata !7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata !7, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata !7, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata !7, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata !7, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata !7, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata !7, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata !7, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata !7, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* null, metadata !113, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 0, metadata !114, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 1, metadata !119, metadata !DIExpression()), !dbg !85
  br label %while.body, !dbg !120

while.body:                                       ; preds = %if.end22, %entry
  %nodefault.0 = phi i32 [ 0, %entry ], [ %nodefault.2, %if.end22 ], !dbg !124
  %quiet.0 = phi i32 [ 0, %entry ], [ %quiet.1, %if.end22 ], !dbg !125
  %config_filename.0 = phi i8* [ null, %entry ], [ %config_filename.3, %if.end22 ], !dbg !126
  %run_as_daemon.0 = phi i32 [ 0, %entry ], [ %run_as_daemon.3, %if.end22 ], !dbg !127
  %n.0 = phi i32 [ 1, %entry ], [ %inc, %if.end22 ], !dbg !125
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !119, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %run_as_daemon.0, metadata !118, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* %config_filename.0, metadata !113, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %quiet.0, metadata !114, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %nodefault.0, metadata !117, metadata !DIExpression()), !dbg !85
  br label %while_continue___0, !dbg !128

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !128

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %n.0, %argc, !dbg !129
  br i1 %cmp, label %if.end, label %if.then, !dbg !132

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !133

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %n.0 to i64, !dbg !135
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !135
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !138
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #7, !dbg !139
  call void @llvm.dbg.value(metadata i32 %call, metadata !140, metadata !DIExpression()), !dbg !85
  %cmp1 = icmp eq i32 %call, 0, !dbg !141
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !143

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !114, metadata !DIExpression()), !dbg !85
  br label %if.end22, !dbg !144

if.else:                                          ; preds = %if.end
  %idx.ext3 = sext i32 %n.0 to i64, !dbg !146
  %add.ptr4 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext3, !dbg !146
  %1 = load i8*, i8** %add.ptr4, align 8, !dbg !150
  %call5 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !151
  call void @llvm.dbg.value(metadata i32 %call5, metadata !152, metadata !DIExpression()), !dbg !85
  %cmp6 = icmp eq i32 %call5, 0, !dbg !153
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !155

if.then7:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !117, metadata !DIExpression()), !dbg !85
  br label %if.end21, !dbg !156

if.else8:                                         ; preds = %if.else
  %idx.ext9 = sext i32 %n.0 to i64, !dbg !158
  %add.ptr10 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext9, !dbg !158
  %2 = load i8*, i8** %add.ptr10, align 8, !dbg !162
  %call11 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !163
  call void @llvm.dbg.value(metadata i32 %call11, metadata !164, metadata !DIExpression()), !dbg !85
  %cmp12 = icmp eq i32 %call11, 0, !dbg !165
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !167

if.then13:                                        ; preds = %if.else8
  call void @llvm.dbg.value(metadata i32 1, metadata !118, metadata !DIExpression()), !dbg !85
  br label %if.end20, !dbg !168

if.else14:                                        ; preds = %if.else8
  %3 = ptrtoint i8* %config_filename.0 to i64, !dbg !170
  %cmp15 = icmp ne i64 %3, 0, !dbg !173
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !174

if.then16:                                        ; preds = %if.else14
  br label %while_break, !dbg !175

if.end17:                                         ; preds = %if.else14
  %idx.ext18 = sext i32 %n.0 to i64, !dbg !177
  %add.ptr19 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext18, !dbg !177
  %4 = load i8*, i8** %add.ptr19, align 8, !dbg !178
  call void @llvm.dbg.value(metadata i8* %4, metadata !113, metadata !DIExpression()), !dbg !85
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.then13
  %config_filename.1 = phi i8* [ %config_filename.0, %if.then13 ], [ %4, %if.end17 ], !dbg !125
  %run_as_daemon.1 = phi i32 [ 1, %if.then13 ], [ %run_as_daemon.0, %if.end17 ], !dbg !125
  call void @llvm.dbg.value(metadata i32 %run_as_daemon.1, metadata !118, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* %config_filename.1, metadata !113, metadata !DIExpression()), !dbg !85
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then7
  %nodefault.1 = phi i32 [ 1, %if.then7 ], [ %nodefault.0, %if.end20 ], !dbg !125
  %config_filename.2 = phi i8* [ %config_filename.0, %if.then7 ], [ %config_filename.1, %if.end20 ], !dbg !126
  %run_as_daemon.2 = phi i32 [ %run_as_daemon.0, %if.then7 ], [ %run_as_daemon.1, %if.end20 ], !dbg !125
  call void @llvm.dbg.value(metadata i32 %run_as_daemon.2, metadata !118, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* %config_filename.2, metadata !113, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %nodefault.1, metadata !117, metadata !DIExpression()), !dbg !85
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then2
  %nodefault.2 = phi i32 [ %nodefault.0, %if.then2 ], [ %nodefault.1, %if.end21 ], !dbg !125
  %quiet.1 = phi i32 [ 1, %if.then2 ], [ %quiet.0, %if.end21 ], !dbg !125
  %config_filename.3 = phi i8* [ %config_filename.0, %if.then2 ], [ %config_filename.2, %if.end21 ], !dbg !126
  %run_as_daemon.3 = phi i32 [ %run_as_daemon.0, %if.then2 ], [ %run_as_daemon.2, %if.end21 ], !dbg !127
  call void @llvm.dbg.value(metadata i32 %run_as_daemon.3, metadata !118, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* %config_filename.3, metadata !113, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %quiet.1, metadata !114, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %nodefault.2, metadata !117, metadata !DIExpression()), !dbg !85
  %inc = add nsw i32 %n.0, 1, !dbg !179
  call void @llvm.dbg.value(metadata i32 %inc, metadata !119, metadata !DIExpression()), !dbg !85
  br label %while.body, !dbg !120, !llvm.loop !180

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !182

while_break:                                      ; preds = %while_break___0, %if.then16, %if.then
  %cmp23 = icmp ne i32 %n.0, %argc, !dbg !183
  br i1 %cmp23, label %if.then24, label %if.end28, !dbg !185

if.then24:                                        ; preds = %while_break
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !186
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i32 0, i32 0)), !dbg !190
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !191
  %add.ptr26 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !193
  %7 = load i8*, i8** %add.ptr26, align 8, !dbg !194
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i8* %7), !dbg !195
  br label %return, !dbg !196

if.end28:                                         ; preds = %while_break
  %tobool = icmp ne i32 %quiet.0, 0, !dbg !197
  br i1 %tobool, label %if.end31, label %if.then29, !dbg !199

if.then29:                                        ; preds = %if.end28
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !200
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i32 0, i32 0)), !dbg !204
  br label %if.end31, !dbg !205

if.end31:                                         ; preds = %if.then29, %if.end28
  call void @emalloc_set_exit_function(void (i32)* @bf_exit, i32 3), !dbg !206
  call void @bfconf_init(i8* %config_filename.0, i32 %quiet.0, i32 %nodefault.0), !dbg !209
  %tobool32 = icmp ne i32 %run_as_daemon.0, 0, !dbg !211
  br i1 %tobool32, label %if.then33, label %if.end59, !dbg !213

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @fork() #8, !dbg !214
  call void @llvm.dbg.value(metadata i32 %call34, metadata !218, metadata !DIExpression()), !dbg !85
  %cmp35 = icmp eq i32 %call34, 0, !dbg !220
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !223

if.then36:                                        ; preds = %if.then33
  br label %case_0, !dbg !224

if.end37:                                         ; preds = %if.then33
  %cmp38 = icmp eq i32 %call34, -1, !dbg !226
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !228

if.then39:                                        ; preds = %if.end37
  br label %case_neg_1, !dbg !229

if.end40:                                         ; preds = %if.end37
  br label %switch_default, !dbg !231

case_0:                                           ; preds = %if.then36
  br label %switch_break, !dbg !232

case_neg_1:                                       ; preds = %if.then39
  %call41 = call i32* @__errno_location() #9, !dbg !233
  call void @llvm.dbg.value(metadata i32* %call41, metadata !236, metadata !DIExpression()), !dbg !85
  %9 = load i32, i32* %call41, align 4, !dbg !238
  %call42 = call i8* @strerror(i32 %9) #8, !dbg !240
  call void @llvm.dbg.value(metadata i8* %call42, metadata !241, metadata !DIExpression()), !dbg !85
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* %call42), !dbg !244
  call void @exit(i32 1) #10, !dbg !245
  unreachable, !dbg !245

switch_default:                                   ; preds = %if.end40
  call void @exit(i32 0) #10, !dbg !247
  unreachable, !dbg !247

switch_break:                                     ; preds = %case_0
  %call44 = call i32 @setsid() #8, !dbg !250
  call void @llvm.dbg.value(metadata i32 %call44, metadata !253, metadata !DIExpression()), !dbg !85
  %cmp45 = icmp eq i32 %call44, -1, !dbg !254
  br i1 %cmp45, label %if.then46, label %if.end50, !dbg !256

if.then46:                                        ; preds = %switch_break
  %call47 = call i32* @__errno_location() #9, !dbg !257
  call void @llvm.dbg.value(metadata i32* %call47, metadata !261, metadata !DIExpression()), !dbg !85
  %11 = load i32, i32* %call47, align 4, !dbg !262
  %call48 = call i8* @strerror(i32 %11) #8, !dbg !264
  call void @llvm.dbg.value(metadata i8* %call48, metadata !265, metadata !DIExpression()), !dbg !85
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !266
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %call48), !dbg !268
  call void @exit(i32 1) #10, !dbg !269
  unreachable, !dbg !269

if.end50:                                         ; preds = %switch_break
  %call51 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !271
  call void @llvm.dbg.value(metadata i32 %call51, metadata !274, metadata !DIExpression()), !dbg !85
  %cmp52 = icmp eq i32 %call51, -1, !dbg !275
  br i1 %cmp52, label %if.then53, label %if.end57, !dbg !277

if.then53:                                        ; preds = %if.end50
  %call54 = call i32* @__errno_location() #9, !dbg !278
  call void @llvm.dbg.value(metadata i32* %call54, metadata !282, metadata !DIExpression()), !dbg !85
  %13 = load i32, i32* %call54, align 4, !dbg !283
  %call55 = call i8* @strerror(i32 %13) #8, !dbg !285
  call void @llvm.dbg.value(metadata i8* %call55, metadata !286, metadata !DIExpression()), !dbg !85
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !287
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* %call55), !dbg !289
  call void @exit(i32 1) #10, !dbg !290
  unreachable, !dbg !290

if.end57:                                         ; preds = %if.end50
  %call58 = call i32 @umask(i32 0) #8, !dbg !292
  br label %if.end59, !dbg !295

if.end59:                                         ; preds = %if.end57, %if.end31
  call void @bfrun(), !dbg !296
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !299
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)), !dbg !301
  call void @bf_exit(i32 1), !dbg !302
  br label %return, !dbg !304

return:                                           ; preds = %if.end59, %if.then24
  %retval.0 = phi i32 [ 2, %if.then24 ], [ 1, %if.end59 ], !dbg !125
  ret i32 %retval.0, !dbg !305
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @emalloc_set_exit_function(void (i32)*, i32) #3

declare void @bf_exit(i32) #3

declare void @bfconf_init(i8*, i32, i32) #3

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i32 @umask(i32) #4

declare void @bfrun() #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!78}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, nameTableKind: GNU)
!6 = !DIFile(filename: "c/brutefir-1.0f.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{}
!8 = !{!9, !11, !12, !14, !15, !77}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 271, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!20 = !{!21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !42, !43, !44, !45, !49, !51, !53, !57, !60, !64, !65, !66, !67, !68, !72, !73}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 272, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 273, baseType: !9, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 274, baseType: !9, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 275, baseType: !9, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 276, baseType: !9, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 277, baseType: !9, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 278, baseType: !9, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 279, baseType: !9, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 280, baseType: !9, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 281, baseType: !9, size: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 282, baseType: !9, size: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 283, baseType: !9, size: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 284, baseType: !35, size: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 186, size: 192, elements: !37)
!37 = !{!38, !39, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !36, file: !19, line: 187, baseType: !35, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !36, file: !19, line: 188, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !36, file: !19, line: 189, baseType: !22, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 285, baseType: !40, size: 64, offset: 832)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 286, baseType: !22, size: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 287, baseType: !22, size: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 288, baseType: !46, size: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 141, baseType: !48)
!47 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 289, baseType: !50, size: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 290, baseType: !52, size: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 291, baseType: !54, size: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 292, baseType: !58, size: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 180, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 293, baseType: !61, size: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 142, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !47, line: 56, baseType: !63)
!63 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !18, file: !19, line: 294, baseType: !11, size: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !18, file: !19, line: 295, baseType: !11, size: 64, offset: 1280)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !18, file: !19, line: 296, baseType: !11, size: 64, offset: 1344)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !18, file: !19, line: 297, baseType: !11, size: 64, offset: 1408)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 298, baseType: !69, size: 32, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 211, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!71 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 299, baseType: !22, size: 32, offset: 1504)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 300, baseType: !74, size: 192, offset: 1536)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 24)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !47, line: 139, baseType: !71)
!78 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!79 = distinct !DISubprogram(name: "main", scope: !80, file: !80, line: 29, type: !81, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!80 = !DIFile(filename: "/home/wslee/benchmarks/sound/brutefir-1.0f/brutefir.c", directory: "")
!81 = !DISubroutineType(types: !82)
!82 = !{!22, !22, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!84 = !DILocalVariable(name: "argc", arg: 1, scope: !79, file: !80, line: 29, type: !22)
!85 = !DILocation(line: 0, scope: !79)
!86 = !DILocalVariable(name: "argv", arg: 2, scope: !79, file: !80, line: 29, type: !83)
!87 = !DILocalVariable(name: "__cil_tmp20", scope: !79, file: !80, line: 48, type: !9)
!88 = !DILocation(line: 48, column: 9, scope: !79)
!89 = !DILocalVariable(name: "__cil_tmp21", scope: !79, file: !80, line: 49, type: !9)
!90 = !DILocation(line: 49, column: 9, scope: !79)
!91 = !DILocalVariable(name: "__cil_tmp22", scope: !79, file: !80, line: 50, type: !9)
!92 = !DILocation(line: 50, column: 9, scope: !79)
!93 = !DILocalVariable(name: "__cil_tmp23", scope: !79, file: !80, line: 51, type: !9)
!94 = !DILocation(line: 51, column: 9, scope: !79)
!95 = !DILocalVariable(name: "__cil_tmp24", scope: !79, file: !80, line: 52, type: !9)
!96 = !DILocation(line: 52, column: 9, scope: !79)
!97 = !DILocalVariable(name: "__cil_tmp25", scope: !79, file: !80, line: 53, type: !9)
!98 = !DILocation(line: 53, column: 9, scope: !79)
!99 = !DILocalVariable(name: "__cil_tmp26", scope: !79, file: !80, line: 54, type: !9)
!100 = !DILocation(line: 54, column: 9, scope: !79)
!101 = !DILocalVariable(name: "__cil_tmp27", scope: !79, file: !80, line: 55, type: !9)
!102 = !DILocation(line: 55, column: 9, scope: !79)
!103 = !DILocalVariable(name: "__cil_tmp28", scope: !79, file: !80, line: 56, type: !9)
!104 = !DILocation(line: 56, column: 9, scope: !79)
!105 = !DILocalVariable(name: "__cil_tmp29", scope: !79, file: !80, line: 57, type: !9)
!106 = !DILocation(line: 57, column: 9, scope: !79)
!107 = !DILocalVariable(name: "__cil_tmp30", scope: !79, file: !80, line: 58, type: !9)
!108 = !DILocation(line: 58, column: 9, scope: !79)
!109 = !DILocalVariable(name: "__cil_tmp31", scope: !79, file: !80, line: 59, type: !9)
!110 = !DILocation(line: 59, column: 9, scope: !79)
!111 = !DILocalVariable(name: "__cil_tmp32", scope: !79, file: !80, line: 60, type: !9)
!112 = !DILocation(line: 60, column: 9, scope: !79)
!113 = !DILocalVariable(name: "config_filename", scope: !79, file: !80, line: 31, type: !9)
!114 = !DILocalVariable(name: "quiet", scope: !79, file: !80, line: 32, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !116, line: 14, baseType: !22)
!116 = !DIFile(filename: "/home/wslee/benchmarks/sound/brutefir-1.0f/defs.h", directory: "")
!117 = !DILocalVariable(name: "nodefault", scope: !79, file: !80, line: 33, type: !115)
!118 = !DILocalVariable(name: "run_as_daemon", scope: !79, file: !80, line: 34, type: !115)
!119 = !DILocalVariable(name: "n", scope: !79, file: !80, line: 35, type: !22)
!120 = !DILocation(line: 48, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !80, line: 50, column: 3)
!122 = distinct !DILexicalBlock(scope: !123, file: !80, line: 49, column: 3)
!123 = distinct !DILexicalBlock(scope: !79, file: !80, line: 62, column: 3)
!124 = !DILocation(line: 35, column: 13, scope: !123)
!125 = !DILocation(line: 0, scope: !123)
!126 = !DILocation(line: 33, column: 19, scope: !123)
!127 = !DILocation(line: 36, column: 17, scope: !123)
!128 = !DILocation(line: 48, column: 13, scope: !121)
!129 = !DILocation(line: 48, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !80, line: 48, column: 9)
!131 = distinct !DILexicalBlock(scope: !121, file: !80, line: 48, column: 13)
!132 = !DILocation(line: 48, column: 9, scope: !131)
!133 = !DILocation(line: 48, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !80, line: 48, column: 23)
!135 = !DILocation(line: 49, column: 45, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !80, line: 51, column: 5)
!137 = distinct !DILexicalBlock(scope: !131, file: !80, line: 50, column: 5)
!138 = !DILocation(line: 49, column: 38, scope: !136)
!139 = !DILocation(line: 49, column: 15, scope: !136)
!140 = !DILocalVariable(name: "tmp___1", scope: !79, file: !80, line: 38, type: !22)
!141 = !DILocation(line: 49, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !80, line: 49, column: 9)
!143 = !DILocation(line: 49, column: 9, scope: !131)
!144 = !DILocation(line: 51, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !80, line: 49, column: 23)
!146 = !DILocation(line: 51, column: 47, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !80, line: 53, column: 7)
!148 = distinct !DILexicalBlock(scope: !149, file: !80, line: 52, column: 7)
!149 = distinct !DILexicalBlock(scope: !142, file: !80, line: 51, column: 12)
!150 = !DILocation(line: 51, column: 40, scope: !147)
!151 = !DILocation(line: 51, column: 17, scope: !147)
!152 = !DILocalVariable(name: "tmp___0", scope: !79, file: !80, line: 37, type: !22)
!153 = !DILocation(line: 51, column: 19, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !80, line: 51, column: 11)
!155 = !DILocation(line: 51, column: 11, scope: !149)
!156 = !DILocation(line: 53, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !80, line: 51, column: 25)
!158 = !DILocation(line: 53, column: 45, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !80, line: 55, column: 9)
!160 = distinct !DILexicalBlock(scope: !161, file: !80, line: 54, column: 9)
!161 = distinct !DILexicalBlock(scope: !154, file: !80, line: 53, column: 14)
!162 = !DILocation(line: 53, column: 38, scope: !159)
!163 = !DILocation(line: 53, column: 15, scope: !159)
!164 = !DILocalVariable(name: "tmp", scope: !79, file: !80, line: 36, type: !22)
!165 = !DILocation(line: 53, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !80, line: 53, column: 13)
!167 = !DILocation(line: 53, column: 13, scope: !161)
!168 = !DILocation(line: 55, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !80, line: 53, column: 23)
!170 = !DILocation(line: 56, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !80, line: 56, column: 15)
!172 = distinct !DILexicalBlock(scope: !166, file: !80, line: 55, column: 16)
!173 = !DILocation(line: 56, column: 47, scope: !171)
!174 = !DILocation(line: 56, column: 15, scope: !172)
!175 = !DILocation(line: 57, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !80, line: 56, column: 79)
!177 = !DILocation(line: 59, column: 36, scope: !172)
!178 = !DILocation(line: 59, column: 29, scope: !172)
!179 = !DILocation(line: 48, column: 7, scope: !131)
!180 = distinct !{!180, !120, !181}
!181 = !DILocation(line: 49, column: 3, scope: !121)
!182 = !DILocation(line: 51, column: 3, scope: !121)
!183 = !DILocation(line: 62, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !123, file: !80, line: 62, column: 7)
!185 = !DILocation(line: 62, column: 7, scope: !123)
!186 = !DILocation(line: 63, column: 38, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !80, line: 64, column: 5)
!188 = distinct !DILexicalBlock(scope: !189, file: !80, line: 63, column: 5)
!189 = distinct !DILexicalBlock(scope: !184, file: !80, line: 62, column: 18)
!190 = !DILocation(line: 63, column: 5, scope: !187)
!191 = !DILocation(line: 64, column: 38, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !80, line: 65, column: 5)
!193 = !DILocation(line: 65, column: 20, scope: !192)
!194 = !DILocation(line: 65, column: 13, scope: !192)
!195 = !DILocation(line: 64, column: 5, scope: !192)
!196 = !DILocation(line: 65, column: 5, scope: !189)
!197 = !DILocation(line: 68, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !123, file: !80, line: 68, column: 7)
!199 = !DILocation(line: 68, column: 7, scope: !123)
!200 = !DILocation(line: 69, column: 38, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !80, line: 70, column: 5)
!202 = distinct !DILexicalBlock(scope: !203, file: !80, line: 69, column: 5)
!203 = distinct !DILexicalBlock(scope: !198, file: !80, line: 68, column: 16)
!204 = !DILocation(line: 69, column: 5, scope: !201)
!205 = !DILocation(line: 72, column: 3, scope: !203)
!206 = !DILocation(line: 72, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !80, line: 74, column: 3)
!208 = distinct !DILexicalBlock(scope: !123, file: !80, line: 73, column: 3)
!209 = !DILocation(line: 74, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !208, file: !80, line: 74, column: 3)
!211 = !DILocation(line: 76, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !123, file: !80, line: 76, column: 7)
!213 = !DILocation(line: 76, column: 7, scope: !123)
!214 = !DILocation(line: 77, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !80, line: 78, column: 5)
!216 = distinct !DILexicalBlock(scope: !217, file: !80, line: 77, column: 5)
!217 = distinct !DILexicalBlock(scope: !212, file: !80, line: 76, column: 22)
!218 = !DILocalVariable(name: "tmp___2", scope: !79, file: !80, line: 39, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !47, line: 143, baseType: !22)
!220 = !DILocation(line: 78, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !80, line: 78, column: 9)
!222 = distinct !DILexicalBlock(scope: !217, file: !80, line: 80, column: 5)
!223 = !DILocation(line: 78, column: 9, scope: !222)
!224 = !DILocation(line: 78, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !80, line: 78, column: 23)
!226 = !DILocation(line: 80, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !80, line: 80, column: 9)
!228 = !DILocation(line: 80, column: 9, scope: !222)
!229 = !DILocation(line: 80, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !80, line: 80, column: 24)
!231 = !DILocation(line: 83, column: 5, scope: !222)
!232 = !DILocation(line: 79, column: 5, scope: !222)
!233 = !DILocation(line: 81, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !80, line: 82, column: 5)
!235 = distinct !DILexicalBlock(scope: !222, file: !80, line: 81, column: 5)
!236 = !DILocalVariable(name: "tmp___3", scope: !79, file: !80, line: 40, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!238 = !DILocation(line: 81, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !80, line: 83, column: 5)
!240 = !DILocation(line: 81, column: 15, scope: !239)
!241 = !DILocalVariable(name: "tmp___4", scope: !79, file: !80, line: 41, type: !9)
!242 = !DILocation(line: 81, column: 38, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !80, line: 83, column: 5)
!244 = !DILocation(line: 81, column: 5, scope: !243)
!245 = !DILocation(line: 82, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !235, file: !80, line: 84, column: 5)
!247 = !DILocation(line: 84, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !80, line: 87, column: 5)
!249 = distinct !DILexicalBlock(scope: !222, file: !80, line: 86, column: 5)
!250 = !DILocation(line: 86, column: 15, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !80, line: 90, column: 5)
!252 = distinct !DILexicalBlock(scope: !217, file: !80, line: 89, column: 5)
!253 = !DILocalVariable(name: "tmp___7", scope: !79, file: !80, line: 44, type: !219)
!254 = !DILocation(line: 86, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !217, file: !80, line: 86, column: 9)
!256 = !DILocation(line: 86, column: 9, scope: !217)
!257 = !DILocation(line: 87, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !80, line: 88, column: 7)
!259 = distinct !DILexicalBlock(scope: !260, file: !80, line: 87, column: 7)
!260 = distinct !DILexicalBlock(scope: !255, file: !80, line: 86, column: 24)
!261 = !DILocalVariable(name: "tmp___5", scope: !79, file: !80, line: 42, type: !237)
!262 = !DILocation(line: 87, column: 26, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !80, line: 89, column: 7)
!264 = !DILocation(line: 87, column: 17, scope: !263)
!265 = !DILocalVariable(name: "tmp___6", scope: !79, file: !80, line: 43, type: !9)
!266 = !DILocation(line: 87, column: 40, scope: !267)
!267 = distinct !DILexicalBlock(scope: !259, file: !80, line: 89, column: 7)
!268 = !DILocation(line: 87, column: 7, scope: !267)
!269 = !DILocation(line: 88, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !259, file: !80, line: 90, column: 7)
!271 = !DILocation(line: 90, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !80, line: 93, column: 5)
!273 = distinct !DILexicalBlock(scope: !217, file: !80, line: 92, column: 5)
!274 = !DILocalVariable(name: "tmp___10", scope: !79, file: !80, line: 47, type: !22)
!275 = !DILocation(line: 90, column: 18, scope: !276)
!276 = distinct !DILexicalBlock(scope: !217, file: !80, line: 90, column: 9)
!277 = !DILocation(line: 90, column: 9, scope: !217)
!278 = !DILocation(line: 91, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !80, line: 92, column: 7)
!280 = distinct !DILexicalBlock(scope: !281, file: !80, line: 91, column: 7)
!281 = distinct !DILexicalBlock(scope: !276, file: !80, line: 90, column: 25)
!282 = !DILocalVariable(name: "tmp___8", scope: !79, file: !80, line: 45, type: !237)
!283 = !DILocation(line: 91, column: 26, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !80, line: 93, column: 7)
!285 = !DILocation(line: 91, column: 17, scope: !284)
!286 = !DILocalVariable(name: "tmp___9", scope: !79, file: !80, line: 46, type: !9)
!287 = !DILocation(line: 91, column: 40, scope: !288)
!288 = distinct !DILexicalBlock(scope: !280, file: !80, line: 93, column: 7)
!289 = !DILocation(line: 91, column: 7, scope: !288)
!290 = !DILocation(line: 92, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !280, file: !80, line: 94, column: 7)
!292 = !DILocation(line: 94, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !80, line: 97, column: 5)
!294 = distinct !DILexicalBlock(scope: !217, file: !80, line: 96, column: 5)
!295 = !DILocation(line: 97, column: 3, scope: !217)
!296 = !DILocation(line: 98, column: 3, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !80, line: 99, column: 3)
!298 = distinct !DILexicalBlock(scope: !123, file: !80, line: 98, column: 3)
!299 = !DILocation(line: 100, column: 36, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !80, line: 100, column: 3)
!301 = !DILocation(line: 100, column: 3, scope: !300)
!302 = !DILocation(line: 101, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !80, line: 102, column: 3)
!304 = !DILocation(line: 102, column: 3, scope: !123)
!305 = !DILocation(line: 104, column: 1, scope: !79)
