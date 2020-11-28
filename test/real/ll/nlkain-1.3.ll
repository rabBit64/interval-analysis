; ModuleID = '/tmp/tmp.ll'
source_filename = "c/nlkain-1.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.__anonstruct_SYSTEM_24 = type { i32, i32, double, double, double, double*, double*, double*, double*, %struct.nka_state* }
%struct.nka_state = type { i32, i32, i32, i32, double, double**, double**, double**, i32, i32, i32, i32*, i32*, double (i32, double*, double*)* }

@.str = private unnamed_addr constant [21 x i8] c"\0AACCELERATED SOLVE\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0AUNACCELERATED SOLVE\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Iter Residual Norm    Reduction    Rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%3d:%14.6E\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%3d:%14.6E%13.3E%8.3f\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !43 {
entry:
  %sys = alloca %struct.__anonstruct_SYSTEM_24, align 8
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_SYSTEM_24* %sys, metadata !47, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 50, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata double 2.000000e-02, metadata !64, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 2, metadata !65, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata double 1.400000e+00, metadata !66, metadata !DIExpression()), !dbg !63
  %a = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 2, !dbg !67
  store double 2.000000e-02, double* %a, align 8, !dbg !70
  %nx = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !71
  store i32 50, i32* %nx, align 8, !dbg !72
  %ny = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !73
  store i32 50, i32* %ny, align 4, !dbg !74
  %nx1 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !75
  %0 = load i32, i32* %nx1, align 8, !dbg !75
  %conv = sitofp i32 %0 to double, !dbg !76
  %div = fdiv double 1.000000e+00, %conv, !dbg !77
  %hx = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 3, !dbg !78
  store double %div, double* %hx, align 8, !dbg !79
  %ny2 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !80
  %1 = load i32, i32* %ny2, align 4, !dbg !80
  %conv3 = sitofp i32 %1 to double, !dbg !81
  %div4 = fdiv double 1.000000e+00, %conv3, !dbg !82
  %hy = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 4, !dbg !83
  store double %div4, double* %hy, align 8, !dbg !84
  %ny5 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !85
  %2 = load i32, i32* %ny5, align 4, !dbg !85
  %nx6 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !87
  %3 = load i32, i32* %nx6, align 8, !dbg !87
  %add = add nsw i32 %3, 1, !dbg !88
  %mul = mul nsw i32 %2, %add, !dbg !89
  %conv7 = sext i32 %mul to i64, !dbg !90
  %mul8 = mul i64 %conv7, 8, !dbg !91
  %call = call noalias i8* @malloc(i64 %mul8) #4, !dbg !92
  call void @llvm.dbg.value(metadata i8* %call, metadata !93, metadata !DIExpression()), !dbg !63
  %4 = bitcast i8* %call to double*, !dbg !94
  %ax = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !95
  store double* %4, double** %ax, align 8, !dbg !96
  %nx9 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !97
  %5 = load i32, i32* %nx9, align 8, !dbg !97
  %ny10 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !99
  %6 = load i32, i32* %ny10, align 4, !dbg !99
  %add11 = add nsw i32 %6, 1, !dbg !100
  %mul12 = mul nsw i32 %5, %add11, !dbg !101
  %conv13 = sext i32 %mul12 to i64, !dbg !102
  %mul14 = mul i64 %conv13, 8, !dbg !103
  %call15 = call noalias i8* @malloc(i64 %mul14) #4, !dbg !104
  call void @llvm.dbg.value(metadata i8* %call15, metadata !105, metadata !DIExpression()), !dbg !63
  %7 = bitcast i8* %call15 to double*, !dbg !106
  %ay = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !107
  store double* %7, double** %ay, align 8, !dbg !108
  %nx16 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !109
  %8 = load i32, i32* %nx16, align 8, !dbg !109
  %ny17 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !111
  %9 = load i32, i32* %ny17, align 4, !dbg !111
  %mul18 = mul nsw i32 %8, %9, !dbg !112
  %conv19 = sext i32 %mul18 to i64, !dbg !113
  %mul20 = mul i64 %conv19, 8, !dbg !114
  %call21 = call noalias i8* @malloc(i64 %mul20) #4, !dbg !115
  call void @llvm.dbg.value(metadata i8* %call21, metadata !116, metadata !DIExpression()), !dbg !63
  %10 = bitcast i8* %call21 to double*, !dbg !117
  %ac = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 7, !dbg !118
  store double* %10, double** %ac, align 8, !dbg !119
  %nx22 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !120
  %11 = load i32, i32* %nx22, align 8, !dbg !120
  %ny23 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !122
  %12 = load i32, i32* %ny23, align 4, !dbg !122
  %mul24 = mul nsw i32 %11, %12, !dbg !123
  %conv25 = sext i32 %mul24 to i64, !dbg !124
  %mul26 = mul i64 %conv25, 8, !dbg !125
  %call27 = call noalias i8* @malloc(i64 %mul26) #4, !dbg !126
  call void @llvm.dbg.value(metadata i8* %call27, metadata !127, metadata !DIExpression()), !dbg !63
  %13 = bitcast i8* %call27 to double*, !dbg !128
  %q = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 8, !dbg !129
  store double* %13, double** %q, align 8, !dbg !130
  %nx28 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !131
  %14 = load i32, i32* %nx28, align 8, !dbg !131
  %ny29 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !133
  %15 = load i32, i32* %ny29, align 4, !dbg !133
  %mul30 = mul nsw i32 %14, %15, !dbg !134
  %call31 = call %struct.nka_state* @nka_create(i32 %mul30, i32 5, double 1.000000e-02, double (i32, double*, double*)* null), !dbg !135
  %nka = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 9, !dbg !136
  store %struct.nka_state* %call31, %struct.nka_state** %nka, align 8, !dbg !137
  call void @llvm.dbg.value(metadata i32 0, metadata !138, metadata !DIExpression()), !dbg !63
  br label %while.body, !dbg !139

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !142
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !138, metadata !DIExpression()), !dbg !63
  br label %while_continue___0, !dbg !143

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !143

while_continue:                                   ; preds = %while_continue___0
  %nx32 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !144
  %16 = load i32, i32* %nx32, align 8, !dbg !144
  %ny33 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !147
  %17 = load i32, i32* %ny33, align 4, !dbg !147
  %mul34 = mul nsw i32 %16, %17, !dbg !148
  %cmp = icmp slt i32 %i.0, %mul34, !dbg !149
  br i1 %cmp, label %if.end, label %if.then, !dbg !150

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !151

if.end:                                           ; preds = %while_continue
  %hx36 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 3, !dbg !153
  %18 = load double, double* %hx36, align 8, !dbg !153
  %hy37 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 4, !dbg !154
  %19 = load double, double* %hy37, align 8, !dbg !154
  %mul38 = fmul double %18, %19, !dbg !155
  %q39 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 8, !dbg !156
  %20 = load double*, double** %q39, align 8, !dbg !156
  %idx.ext = sext i32 %i.0 to i64, !dbg !157
  %add.ptr = getelementptr inbounds double, double* %20, i64 %idx.ext, !dbg !157
  store double %mul38, double* %add.ptr, align 8, !dbg !158
  %inc = add nsw i32 %i.0, 1, !dbg !159
  call void @llvm.dbg.value(metadata i32 %inc, metadata !138, metadata !DIExpression()), !dbg !63
  br label %while.body, !dbg !139, !llvm.loop !160

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !162

while_break:                                      ; preds = %while_break___0, %if.then
  %nx40 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !163
  %21 = load i32, i32* %nx40, align 8, !dbg !163
  %ny41 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !166
  %22 = load i32, i32* %ny41, align 4, !dbg !166
  %mul42 = mul nsw i32 %21, %22, !dbg !167
  %conv43 = sext i32 %mul42 to i64, !dbg !168
  %mul44 = mul i64 %conv43, 8, !dbg !169
  %call45 = call noalias i8* @malloc(i64 %mul44) #4, !dbg !170
  call void @llvm.dbg.value(metadata i8* %call45, metadata !171, metadata !DIExpression()), !dbg !63
  %23 = bitcast i8* %call45 to double*, !dbg !172
  call void @llvm.dbg.value(metadata double* %23, metadata !173, metadata !DIExpression()), !dbg !63
  call void @solve(%struct.__anonstruct_SYSTEM_24* %sys, i32 2, double 1.400000e+00, i32 1, double* %23), !dbg !174
  call void @solve(%struct.__anonstruct_SYSTEM_24* %sys, i32 2, double 1.400000e+00, i32 0, double* %23), !dbg !176
  %nka46 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 9, !dbg !178
  %24 = load %struct.nka_state*, %struct.nka_state** %nka46, align 8, !dbg !178
  call void @nka_destroy(%struct.nka_state* %24), !dbg !180
  ret i32 0, !dbg !181
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind ssp uwtable
define %struct.nka_state* @nka_create(i32 %vsize, i32 %maxv, double %vtol, double (i32, double*, double*)* %dp) #0 !dbg !182 {
entry:
  call void @llvm.dbg.value(metadata i32 %vsize, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %maxv, metadata !187, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %vtol, metadata !188, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double (i32, double*, double*)* %dp, metadata !189, metadata !DIExpression()), !dbg !186
  %call = call noalias i8* @malloc(i64 88) #4, !dbg !190
  call void @llvm.dbg.value(metadata i8* %call, metadata !194, metadata !DIExpression()), !dbg !186
  %0 = bitcast i8* %call to %struct.nka_state*, !dbg !195
  call void @llvm.dbg.value(metadata %struct.nka_state* %0, metadata !196, metadata !DIExpression()), !dbg !186
  %vsize1 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 2, !dbg !197
  store i32 %vsize, i32* %vsize1, align 8, !dbg !198
  %mvec = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 3, !dbg !199
  store i32 %maxv, i32* %mvec, align 4, !dbg !200
  %vtol2 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 4, !dbg !201
  store double %vtol, double* %vtol2, align 8, !dbg !202
  %1 = ptrtoint double (i32, double*, double*)* %dp to i64, !dbg !203
  %cmp = icmp eq i64 %1, 0, !dbg !205
  br i1 %cmp, label %if.then, label %if.else, !dbg !206

if.then:                                          ; preds = %entry
  %dp3 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 13, !dbg !207
  store double (i32, double*, double*)* @dot_product, double (i32, double*, double*)** %dp3, align 8, !dbg !209
  br label %if.end, !dbg !210

if.else:                                          ; preds = %entry
  %dp4 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 13, !dbg !211
  store double (i32, double*, double*)* %dp, double (i32, double*, double*)** %dp4, align 8, !dbg !213
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add = add nsw i32 %maxv, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %add, metadata !216, metadata !DIExpression()), !dbg !186
  %conv = sext i32 %add to i64, !dbg !217
  %mul = mul i64 %conv, 8, !dbg !219
  %call5 = call noalias i8* @malloc(i64 %mul) #4, !dbg !220
  call void @llvm.dbg.value(metadata i8* %call5, metadata !221, metadata !DIExpression()), !dbg !186
  %2 = bitcast i8* %call5 to double**, !dbg !222
  %v = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 5, !dbg !223
  store double** %2, double*** %v, align 8, !dbg !224
  %mul6 = mul nsw i32 %add, %vsize, !dbg !225
  %conv7 = sext i32 %mul6 to i64, !dbg !227
  %mul8 = mul i64 %conv7, 8, !dbg !228
  %call9 = call noalias i8* @malloc(i64 %mul8) #4, !dbg !229
  call void @llvm.dbg.value(metadata i8* %call9, metadata !230, metadata !DIExpression()), !dbg !186
  %3 = bitcast i8* %call9 to double*, !dbg !231
  %v10 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 5, !dbg !232
  %4 = load double**, double*** %v10, align 8, !dbg !232
  %add.ptr = getelementptr inbounds double*, double** %4, i64 0, !dbg !233
  store double* %3, double** %add.ptr, align 8, !dbg !234
  call void @llvm.dbg.value(metadata i32 1, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body, !dbg !236

while.body:                                       ; preds = %if.end14, %if.end
  %j.0 = phi i32 [ 1, %if.end ], [ %inc, %if.end14 ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while_continue___2, !dbg !240

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !240

while_continue:                                   ; preds = %while_continue___2
  %cmp11 = icmp slt i32 %j.0, %add, !dbg !241
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !244

if.then13:                                        ; preds = %while_continue
  br label %while_break, !dbg !245

if.end14:                                         ; preds = %while_continue
  %v15 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 5, !dbg !247
  %5 = load double**, double*** %v15, align 8, !dbg !247
  %sub = sub nsw i32 %j.0, 1, !dbg !248
  %idx.ext = sext i32 %sub to i64, !dbg !249
  %add.ptr16 = getelementptr inbounds double*, double** %5, i64 %idx.ext, !dbg !249
  %6 = load double*, double** %add.ptr16, align 8, !dbg !250
  %idx.ext17 = sext i32 %vsize to i64, !dbg !251
  %add.ptr18 = getelementptr inbounds double, double* %6, i64 %idx.ext17, !dbg !251
  %v19 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 5, !dbg !252
  %7 = load double**, double*** %v19, align 8, !dbg !252
  %idx.ext20 = sext i32 %j.0 to i64, !dbg !253
  %add.ptr21 = getelementptr inbounds double*, double** %7, i64 %idx.ext20, !dbg !253
  store double* %add.ptr18, double** %add.ptr21, align 8, !dbg !254
  %inc = add nsw i32 %j.0, 1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %inc, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body, !dbg !236, !llvm.loop !256

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !258

while_break:                                      ; preds = %while_break___2, %if.then13
  %conv22 = sext i32 %add to i64, !dbg !259
  %mul23 = mul i64 %conv22, 8, !dbg !262
  %call24 = call noalias i8* @malloc(i64 %mul23) #4, !dbg !263
  call void @llvm.dbg.value(metadata i8* %call24, metadata !264, metadata !DIExpression()), !dbg !186
  %8 = bitcast i8* %call24 to double**, !dbg !265
  %w = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 6, !dbg !266
  store double** %8, double*** %w, align 8, !dbg !267
  %mul25 = mul nsw i32 %add, %vsize, !dbg !268
  %conv26 = sext i32 %mul25 to i64, !dbg !270
  %mul27 = mul i64 %conv26, 8, !dbg !271
  %call28 = call noalias i8* @malloc(i64 %mul27) #4, !dbg !272
  call void @llvm.dbg.value(metadata i8* %call28, metadata !273, metadata !DIExpression()), !dbg !186
  %9 = bitcast i8* %call28 to double*, !dbg !274
  %w29 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 6, !dbg !275
  %10 = load double**, double*** %w29, align 8, !dbg !275
  %add.ptr30 = getelementptr inbounds double*, double** %10, i64 0, !dbg !276
  store double* %9, double** %add.ptr30, align 8, !dbg !277
  call void @llvm.dbg.value(metadata i32 1, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body31, !dbg !278

while.body31:                                     ; preds = %if.end35, %while_break
  %j.1 = phi i32 [ 1, %while_break ], [ %inc45, %if.end35 ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while_continue___3, !dbg !281

while_continue___3:                               ; preds = %while.body31
  br label %while_continue___0, !dbg !281

while_continue___0:                               ; preds = %while_continue___3
  %cmp32 = icmp slt i32 %j.1, %add, !dbg !282
  br i1 %cmp32, label %if.end35, label %if.then34, !dbg !285

if.then34:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !286

if.end35:                                         ; preds = %while_continue___0
  %w36 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 6, !dbg !288
  %11 = load double**, double*** %w36, align 8, !dbg !288
  %sub37 = sub nsw i32 %j.1, 1, !dbg !289
  %idx.ext38 = sext i32 %sub37 to i64, !dbg !290
  %add.ptr39 = getelementptr inbounds double*, double** %11, i64 %idx.ext38, !dbg !290
  %12 = load double*, double** %add.ptr39, align 8, !dbg !291
  %idx.ext40 = sext i32 %vsize to i64, !dbg !292
  %add.ptr41 = getelementptr inbounds double, double* %12, i64 %idx.ext40, !dbg !292
  %w42 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 6, !dbg !293
  %13 = load double**, double*** %w42, align 8, !dbg !293
  %idx.ext43 = sext i32 %j.1 to i64, !dbg !294
  %add.ptr44 = getelementptr inbounds double*, double** %13, i64 %idx.ext43, !dbg !294
  store double* %add.ptr41, double** %add.ptr44, align 8, !dbg !295
  %inc45 = add nsw i32 %j.1, 1, !dbg !296
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body31, !dbg !278, !llvm.loop !297

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !299

while_break___0:                                  ; preds = %while_break___3, %if.then34
  %conv46 = sext i32 %add to i64, !dbg !300
  %mul47 = mul i64 %conv46, 8, !dbg !303
  %call48 = call noalias i8* @malloc(i64 %mul47) #4, !dbg !304
  call void @llvm.dbg.value(metadata i8* %call48, metadata !305, metadata !DIExpression()), !dbg !186
  %14 = bitcast i8* %call48 to double**, !dbg !306
  %h = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 7, !dbg !307
  store double** %14, double*** %h, align 8, !dbg !308
  %mul49 = mul nsw i32 %add, %add, !dbg !309
  %conv50 = sext i32 %mul49 to i64, !dbg !311
  %mul51 = mul i64 %conv50, 8, !dbg !312
  %call52 = call noalias i8* @malloc(i64 %mul51) #4, !dbg !313
  call void @llvm.dbg.value(metadata i8* %call52, metadata !314, metadata !DIExpression()), !dbg !186
  %15 = bitcast i8* %call52 to double*, !dbg !315
  %h53 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 7, !dbg !316
  %16 = load double**, double*** %h53, align 8, !dbg !316
  %add.ptr54 = getelementptr inbounds double*, double** %16, i64 0, !dbg !317
  store double* %15, double** %add.ptr54, align 8, !dbg !318
  call void @llvm.dbg.value(metadata i32 1, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body55, !dbg !319

while.body55:                                     ; preds = %if.end59, %while_break___0
  %j.2 = phi i32 [ 1, %while_break___0 ], [ %inc69, %if.end59 ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while_continue___4, !dbg !322

while_continue___4:                               ; preds = %while.body55
  br label %while_continue___1, !dbg !322

while_continue___1:                               ; preds = %while_continue___4
  %cmp56 = icmp slt i32 %j.2, %add, !dbg !323
  br i1 %cmp56, label %if.end59, label %if.then58, !dbg !326

if.then58:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !327

if.end59:                                         ; preds = %while_continue___1
  %h60 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 7, !dbg !329
  %17 = load double**, double*** %h60, align 8, !dbg !329
  %sub61 = sub nsw i32 %j.2, 1, !dbg !330
  %idx.ext62 = sext i32 %sub61 to i64, !dbg !331
  %add.ptr63 = getelementptr inbounds double*, double** %17, i64 %idx.ext62, !dbg !331
  %18 = load double*, double** %add.ptr63, align 8, !dbg !332
  %idx.ext64 = sext i32 %add to i64, !dbg !333
  %add.ptr65 = getelementptr inbounds double, double* %18, i64 %idx.ext64, !dbg !333
  %h66 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 7, !dbg !334
  %19 = load double**, double*** %h66, align 8, !dbg !334
  %idx.ext67 = sext i32 %j.2 to i64, !dbg !335
  %add.ptr68 = getelementptr inbounds double*, double** %19, i64 %idx.ext67, !dbg !335
  store double* %add.ptr65, double** %add.ptr68, align 8, !dbg !336
  %inc69 = add nsw i32 %j.2, 1, !dbg !337
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !235, metadata !DIExpression()), !dbg !186
  br label %while.body55, !dbg !319, !llvm.loop !338

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !340

while_break___1:                                  ; preds = %while_break___4, %if.then58
  %conv70 = sext i32 %add to i64, !dbg !341
  %mul71 = mul i64 %conv70, 4, !dbg !344
  %call72 = call noalias i8* @malloc(i64 %mul71) #4, !dbg !345
  call void @llvm.dbg.value(metadata i8* %call72, metadata !346, metadata !DIExpression()), !dbg !186
  %20 = bitcast i8* %call72 to i32*, !dbg !347
  %next = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 11, !dbg !348
  store i32* %20, i32** %next, align 8, !dbg !349
  %conv73 = sext i32 %add to i64, !dbg !350
  %mul74 = mul i64 %conv73, 4, !dbg !352
  %call75 = call noalias i8* @malloc(i64 %mul74) #4, !dbg !353
  call void @llvm.dbg.value(metadata i8* %call75, metadata !354, metadata !DIExpression()), !dbg !186
  %21 = bitcast i8* %call75 to i32*, !dbg !355
  %prev = getelementptr inbounds %struct.nka_state, %struct.nka_state* %0, i32 0, i32 12, !dbg !356
  store i32* %21, i32** %prev, align 8, !dbg !357
  call void @nka_restart(%struct.nka_state* %0), !dbg !358
  ret %struct.nka_state* %0, !dbg !360
}

; Function Attrs: noinline nounwind ssp uwtable
define void @solve(%struct.__anonstruct_SYSTEM_24* %sys, i32 %nsweep, double %omega, i32 %use_nka, double* %sol) #0 !dbg !361 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_SYSTEM_24* %sys, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %nsweep, metadata !367, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double %omega, metadata !368, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %use_nka, metadata !369, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double* %sol, metadata !370, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata !7, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata !7, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata !7, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata !7, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata !7, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 999, metadata !382, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double 0x3EB0C6F7A0B5ED8D, metadata !383, metadata !DIExpression()), !dbg !366
  %tobool = icmp ne i32 %use_nka, 0, !dbg !384
  br i1 %tobool, label %if.then, label %if.else, !dbg !387

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !388
  br label %if.end, !dbg !392

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)), !dbg !393
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)), !dbg !397
  %nx3 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !400
  %0 = load i32, i32* %nx3, align 8, !dbg !400
  call void @llvm.dbg.value(metadata i32 %0, metadata !401, metadata !DIExpression()), !dbg !366
  %ny4 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !402
  %1 = load i32, i32* %ny4, align 4, !dbg !402
  call void @llvm.dbg.value(metadata i32 %1, metadata !403, metadata !DIExpression()), !dbg !366
  %add = add nsw i32 %0, 2, !dbg !404
  %add5 = add nsw i32 %1, 2, !dbg !405
  %mul = mul nsw i32 %add, %add5, !dbg !406
  call void @llvm.dbg.value(metadata i32 %mul, metadata !407, metadata !DIExpression()), !dbg !366
  %conv = sext i32 %mul to i64, !dbg !408
  %mul6 = mul i64 %conv, 8, !dbg !410
  %call7 = call noalias i8* @malloc(i64 %mul6) #4, !dbg !411
  call void @llvm.dbg.value(metadata i8* %call7, metadata !412, metadata !DIExpression()), !dbg !366
  %2 = bitcast i8* %call7 to double*, !dbg !413
  call void @llvm.dbg.value(metadata double* %2, metadata !414, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !366
  br label %while.body, !dbg !416

while.body:                                       ; preds = %if.end10, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end10 ], !dbg !419
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !415, metadata !DIExpression()), !dbg !366
  br label %while_continue___5, !dbg !420

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !420

while_continue:                                   ; preds = %while_continue___5
  %cmp = icmp slt i32 %i.0, %mul, !dbg !421
  br i1 %cmp, label %if.end10, label %if.then9, !dbg !424

if.then9:                                         ; preds = %while_continue
  br label %while_break, !dbg !425

if.end10:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !427
  %add.ptr = getelementptr inbounds double, double* %2, i64 %idx.ext, !dbg !427
  store double 0.000000e+00, double* %add.ptr, align 8, !dbg !428
  %inc = add nsw i32 %i.0, 1, !dbg !429
  call void @llvm.dbg.value(metadata i32 %inc, metadata !415, metadata !DIExpression()), !dbg !366
  br label %while.body, !dbg !416, !llvm.loop !430

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !432

while_break:                                      ; preds = %while_break___5, %if.then9
  %mul11 = mul nsw i32 %0, %1, !dbg !433
  %conv12 = sext i32 %mul11 to i64, !dbg !436
  %mul13 = mul i64 %conv12, 8, !dbg !437
  %call14 = call noalias i8* @malloc(i64 %mul13) #4, !dbg !438
  call void @llvm.dbg.value(metadata i8* %call14, metadata !439, metadata !DIExpression()), !dbg !366
  %3 = bitcast i8* %call14 to double*, !dbg !440
  call void @llvm.dbg.value(metadata double* %3, metadata !441, metadata !DIExpression()), !dbg !366
  call void @residual(%struct.__anonstruct_SYSTEM_24* %sys, double* %2, double* %3), !dbg !442
  %mul15 = mul nsw i32 %0, %1, !dbg !444
  %call16 = call double @l2norm(double* %3, i32 %mul15), !dbg !446
  call void @llvm.dbg.value(metadata double %call16, metadata !447, metadata !DIExpression()), !dbg !366
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, double %call16), !dbg !448
  call void @llvm.dbg.value(metadata i32 1, metadata !450, metadata !DIExpression()), !dbg !366
  br label %while.body18, !dbg !451

while.body18:                                     ; preds = %if.end55, %while_break
  %itr.0 = phi i32 [ 1, %while_break ], [ %inc56, %if.end55 ], !dbg !419
  call void @llvm.dbg.value(metadata i32 %itr.0, metadata !450, metadata !DIExpression()), !dbg !366
  br label %while_continue___6, !dbg !454

while_continue___6:                               ; preds = %while.body18
  br label %while_continue___0, !dbg !454

while_continue___0:                               ; preds = %while_continue___6
  %cmp19 = icmp sle i32 %itr.0, 999, !dbg !455
  br i1 %cmp19, label %if.end22, label %if.then21, !dbg !458

if.then21:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !459

if.end22:                                         ; preds = %while_continue___0
  call void @ssor_pc(%struct.__anonstruct_SYSTEM_24* %sys, i32 %nsweep, double %omega, double* %3), !dbg !461
  %tobool23 = icmp ne i32 %use_nka, 0, !dbg !464
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !466

if.then24:                                        ; preds = %if.end22
  %nka = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 9, !dbg !467
  %4 = load %struct.nka_state*, %struct.nka_state** %nka, align 8, !dbg !467
  call void @nka_correction(%struct.nka_state* %4, double* %3), !dbg !471
  br label %if.end25, !dbg !472

if.end25:                                         ; preds = %if.then24, %if.end22
  call void @llvm.dbg.value(metadata double* %3, metadata !473, metadata !DIExpression()), !dbg !366
  %add26 = add nsw i32 %0, 2, !dbg !474
  %idx.ext27 = sext i32 %add26 to i64, !dbg !475
  %add.ptr28 = getelementptr inbounds double, double* %2, i64 %idx.ext27, !dbg !475
  call void @llvm.dbg.value(metadata double* %add.ptr28, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !366
  br label %while.body30, !dbg !478

while.body30:                                     ; preds = %while_break___2, %if.end25
  %k.0 = phi i32 [ 0, %if.end25 ], [ %inc45, %while_break___2 ], !dbg !481
  %u.0 = phi double* [ %add.ptr28, %if.end25 ], [ %incdec.ptr44, %while_break___2 ], !dbg !481
  %t.0 = phi double* [ %3, %if.end25 ], [ %t.1, %while_break___2 ], !dbg !482
  call void @llvm.dbg.value(metadata double* %t.0, metadata !473, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double* %u.0, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !477, metadata !DIExpression()), !dbg !366
  br label %while_continue___7, !dbg !483

while_continue___7:                               ; preds = %while.body30
  br label %while_continue___1, !dbg !483

while_continue___1:                               ; preds = %while_continue___7
  %cmp31 = icmp slt i32 %k.0, %1, !dbg !484
  br i1 %cmp31, label %if.end34, label %if.then33, !dbg !487

if.then33:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !488

if.end34:                                         ; preds = %while_continue___1
  %incdec.ptr = getelementptr inbounds double, double* %u.0, i32 1, !dbg !490
  call void @llvm.dbg.value(metadata double* %incdec.ptr, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while.body36, !dbg !492

while.body36:                                     ; preds = %if.end40, %if.end34
  %j.0 = phi i32 [ 0, %if.end34 ], [ %inc43, %if.end40 ], !dbg !495
  %u.1 = phi double* [ %incdec.ptr, %if.end34 ], [ %incdec.ptr41, %if.end40 ], !dbg !495
  %t.1 = phi double* [ %t.0, %if.end34 ], [ %incdec.ptr42, %if.end40 ], !dbg !481
  call void @llvm.dbg.value(metadata double* %t.1, metadata !473, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double* %u.1, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while_continue___8, !dbg !496

while_continue___8:                               ; preds = %while.body36
  br label %while_continue___2, !dbg !496

while_continue___2:                               ; preds = %while_continue___8
  %cmp37 = icmp slt i32 %j.0, %0, !dbg !497
  br i1 %cmp37, label %if.end40, label %if.then39, !dbg !500

if.then39:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !501

if.end40:                                         ; preds = %while_continue___2
  %5 = load double, double* %t.1, align 8, !dbg !503
  %6 = load double, double* %u.1, align 8, !dbg !504
  %sub = fsub double %6, %5, !dbg !504
  store double %sub, double* %u.1, align 8, !dbg !504
  %incdec.ptr41 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !505
  call void @llvm.dbg.value(metadata double* %incdec.ptr41, metadata !476, metadata !DIExpression()), !dbg !366
  %incdec.ptr42 = getelementptr inbounds double, double* %t.1, i32 1, !dbg !506
  call void @llvm.dbg.value(metadata double* %incdec.ptr42, metadata !473, metadata !DIExpression()), !dbg !366
  %inc43 = add nsw i32 %j.0, 1, !dbg !507
  call void @llvm.dbg.value(metadata i32 %inc43, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while.body36, !dbg !492, !llvm.loop !508

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !510

while_break___2:                                  ; preds = %while_break___8, %if.then39
  %incdec.ptr44 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !511
  call void @llvm.dbg.value(metadata double* %incdec.ptr44, metadata !476, metadata !DIExpression()), !dbg !366
  %inc45 = add nsw i32 %k.0, 1, !dbg !512
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !477, metadata !DIExpression()), !dbg !366
  br label %while.body30, !dbg !478, !llvm.loop !513

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !515

while_break___1:                                  ; preds = %while_break___7, %if.then33
  call void @residual(%struct.__anonstruct_SYSTEM_24* %sys, double* %2, double* %3), !dbg !516
  %mul46 = mul nsw i32 %0, %1, !dbg !519
  %call47 = call double @l2norm(double* %3, i32 %mul46), !dbg !521
  call void @llvm.dbg.value(metadata double %call47, metadata !522, metadata !DIExpression()), !dbg !366
  %div = fdiv double %call47, %call16, !dbg !523
  call void @llvm.dbg.value(metadata double %div, metadata !524, metadata !DIExpression()), !dbg !366
  %conv48 = sitofp i32 %itr.0 to double, !dbg !525
  %div49 = fdiv double 1.000000e+00, %conv48, !dbg !527
  %7 = call double @llvm.pow.f64(double %div, double %div49), !dbg !528
  call void @llvm.dbg.value(metadata double %7, metadata !529, metadata !DIExpression()), !dbg !366
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %itr.0, double %call47, double %div, double %7), !dbg !530
  %mul51 = fmul double 0x3EB0C6F7A0B5ED8D, %call16, !dbg !532
  %cmp52 = fcmp olt double %call47, %mul51, !dbg !534
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !535

if.then54:                                        ; preds = %while_break___1
  br label %while_break___0, !dbg !536

if.end55:                                         ; preds = %while_break___1
  %inc56 = add nsw i32 %itr.0, 1, !dbg !458
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !450, metadata !DIExpression()), !dbg !366
  br label %while.body18, !dbg !451, !llvm.loop !538

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !540

while_break___0:                                  ; preds = %while_break___6, %if.then54, %if.then21
  %add57 = add nsw i32 %0, 2, !dbg !541
  %idx.ext58 = sext i32 %add57 to i64, !dbg !542
  %add.ptr59 = getelementptr inbounds double, double* %2, i64 %idx.ext58, !dbg !542
  call void @llvm.dbg.value(metadata double* %add.ptr59, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !366
  br label %while.body60, !dbg !543

while.body60:                                     ; preds = %while_break___4, %while_break___0
  %sol.addr.0 = phi double* [ %sol, %while_break___0 ], [ %sol.addr.1, %while_break___4 ]
  %k.1 = phi i32 [ 0, %while_break___0 ], [ %inc76, %while_break___4 ], !dbg !419
  %u.2 = phi double* [ %add.ptr59, %while_break___0 ], [ %incdec.ptr75, %while_break___4 ], !dbg !419
  call void @llvm.dbg.value(metadata double* %u.2, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !477, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double* %sol.addr.0, metadata !370, metadata !DIExpression()), !dbg !366
  br label %while_continue___9, !dbg !546

while_continue___9:                               ; preds = %while.body60
  br label %while_continue___3, !dbg !546

while_continue___3:                               ; preds = %while_continue___9
  %cmp61 = icmp slt i32 %k.1, %1, !dbg !547
  br i1 %cmp61, label %if.end64, label %if.then63, !dbg !550

if.then63:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !551

if.end64:                                         ; preds = %while_continue___3
  %incdec.ptr65 = getelementptr inbounds double, double* %u.2, i32 1, !dbg !553
  call void @llvm.dbg.value(metadata double* %incdec.ptr65, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while.body67, !dbg !554

while.body67:                                     ; preds = %if.end71, %if.end64
  %j.1 = phi i32 [ 0, %if.end64 ], [ %inc74, %if.end71 ], !dbg !557
  %sol.addr.1 = phi double* [ %sol.addr.0, %if.end64 ], [ %incdec.ptr73, %if.end71 ]
  %u.3 = phi double* [ %incdec.ptr65, %if.end64 ], [ %incdec.ptr72, %if.end71 ], !dbg !557
  call void @llvm.dbg.value(metadata double* %u.3, metadata !476, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata double* %sol.addr.1, metadata !370, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while_continue___10, !dbg !558

while_continue___10:                              ; preds = %while.body67
  br label %while_continue___4, !dbg !558

while_continue___4:                               ; preds = %while_continue___10
  %cmp68 = icmp slt i32 %j.1, %0, !dbg !559
  br i1 %cmp68, label %if.end71, label %if.then70, !dbg !562

if.then70:                                        ; preds = %while_continue___4
  br label %while_break___4, !dbg !563

if.end71:                                         ; preds = %while_continue___4
  %8 = load double, double* %u.3, align 8, !dbg !565
  store double %8, double* %sol.addr.1, align 8, !dbg !566
  %incdec.ptr72 = getelementptr inbounds double, double* %u.3, i32 1, !dbg !567
  call void @llvm.dbg.value(metadata double* %incdec.ptr72, metadata !476, metadata !DIExpression()), !dbg !366
  %incdec.ptr73 = getelementptr inbounds double, double* %sol.addr.1, i32 1, !dbg !568
  call void @llvm.dbg.value(metadata double* %incdec.ptr73, metadata !370, metadata !DIExpression()), !dbg !366
  %inc74 = add nsw i32 %j.1, 1, !dbg !569
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !491, metadata !DIExpression()), !dbg !366
  br label %while.body67, !dbg !554, !llvm.loop !570

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !572

while_break___4:                                  ; preds = %while_break___10, %if.then70
  %incdec.ptr75 = getelementptr inbounds double, double* %u.3, i32 1, !dbg !573
  call void @llvm.dbg.value(metadata double* %incdec.ptr75, metadata !476, metadata !DIExpression()), !dbg !366
  %inc76 = add nsw i32 %k.1, 1, !dbg !574
  call void @llvm.dbg.value(metadata i32 %inc76, metadata !477, metadata !DIExpression()), !dbg !366
  br label %while.body60, !dbg !543, !llvm.loop !575

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !577

while_break___3:                                  ; preds = %while_break___9, %if.then63
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind ssp uwtable
define void @nka_destroy(%struct.nka_state* %state) #0 !dbg !579 {
entry:
  call void @llvm.dbg.value(metadata %struct.nka_state* %state, metadata !582, metadata !DIExpression()), !dbg !583
  %v = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !584
  %0 = load double**, double*** %v, align 8, !dbg !584
  %tobool = icmp ne double** %0, null, !dbg !587
  br i1 %tobool, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %v1 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !589
  %1 = load double**, double*** %v1, align 8, !dbg !589
  %add.ptr = getelementptr inbounds double*, double** %1, i64 0, !dbg !593
  %2 = load double*, double** %add.ptr, align 8, !dbg !594
  %3 = bitcast double* %2 to i8*, !dbg !595
  call void @free(i8* %3) #4, !dbg !596
  %v2 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !597
  %4 = load double**, double*** %v2, align 8, !dbg !597
  %5 = bitcast double** %4 to i8*, !dbg !599
  call void @free(i8* %5) #4, !dbg !600
  br label %if.end, !dbg !601

if.end:                                           ; preds = %if.then, %entry
  %w = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !602
  %6 = load double**, double*** %w, align 8, !dbg !602
  %tobool3 = icmp ne double** %6, null, !dbg !604
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !605

if.then4:                                         ; preds = %if.end
  %w5 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !606
  %7 = load double**, double*** %w5, align 8, !dbg !606
  %add.ptr6 = getelementptr inbounds double*, double** %7, i64 0, !dbg !610
  %8 = load double*, double** %add.ptr6, align 8, !dbg !611
  %9 = bitcast double* %8 to i8*, !dbg !612
  call void @free(i8* %9) #4, !dbg !613
  %w7 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !614
  %10 = load double**, double*** %w7, align 8, !dbg !614
  %11 = bitcast double** %10 to i8*, !dbg !616
  call void @free(i8* %11) #4, !dbg !617
  br label %if.end8, !dbg !618

if.end8:                                          ; preds = %if.then4, %if.end
  %h = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !619
  %12 = load double**, double*** %h, align 8, !dbg !619
  %tobool9 = icmp ne double** %12, null, !dbg !621
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !622

if.then10:                                        ; preds = %if.end8
  %h11 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !623
  %13 = load double**, double*** %h11, align 8, !dbg !623
  %add.ptr12 = getelementptr inbounds double*, double** %13, i64 0, !dbg !627
  %14 = load double*, double** %add.ptr12, align 8, !dbg !628
  %15 = bitcast double* %14 to i8*, !dbg !629
  call void @free(i8* %15) #4, !dbg !630
  %h13 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !631
  %16 = load double**, double*** %h13, align 8, !dbg !631
  %17 = bitcast double** %16 to i8*, !dbg !633
  call void @free(i8* %17) #4, !dbg !634
  br label %if.end14, !dbg !635

if.end14:                                         ; preds = %if.then10, %if.end8
  %next = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !636
  %18 = load i32*, i32** %next, align 8, !dbg !636
  %19 = bitcast i32* %18 to i8*, !dbg !639
  call void @free(i8* %19) #4, !dbg !640
  %prev = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !641
  %20 = load i32*, i32** %prev, align 8, !dbg !641
  %21 = bitcast i32* %20 to i8*, !dbg !643
  call void @free(i8* %21) #4, !dbg !644
  %22 = bitcast %struct.nka_state* %state to i8*, !dbg !645
  call void @free(i8* %22) #4, !dbg !647
  ret void, !dbg !648
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @residual(%struct.__anonstruct_SYSTEM_24* %sys, double* %upad, double* %r) #0 !dbg !649 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_SYSTEM_24* %sys, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %upad, metadata !654, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %r, metadata !655, metadata !DIExpression()), !dbg !653
  call void @update_system(%struct.__anonstruct_SYSTEM_24* %sys, double* %upad), !dbg !656
  %nx1 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !660
  %0 = load i32, i32* %nx1, align 8, !dbg !660
  call void @llvm.dbg.value(metadata i32 %0, metadata !661, metadata !DIExpression()), !dbg !653
  %ny2 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !662
  %1 = load i32, i32* %ny2, align 4, !dbg !662
  call void @llvm.dbg.value(metadata i32 %1, metadata !663, metadata !DIExpression()), !dbg !653
  %ac3 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 7, !dbg !664
  %2 = load double*, double** %ac3, align 8, !dbg !664
  call void @llvm.dbg.value(metadata double* %2, metadata !665, metadata !DIExpression()), !dbg !653
  %ax4 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !666
  %3 = load double*, double** %ax4, align 8, !dbg !666
  call void @llvm.dbg.value(metadata double* %3, metadata !667, metadata !DIExpression()), !dbg !653
  %ay5 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !668
  %4 = load double*, double** %ay5, align 8, !dbg !668
  call void @llvm.dbg.value(metadata double* %4, metadata !669, metadata !DIExpression()), !dbg !653
  %q6 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 8, !dbg !670
  %5 = load double*, double** %q6, align 8, !dbg !670
  call void @llvm.dbg.value(metadata double* %5, metadata !671, metadata !DIExpression()), !dbg !653
  %add = add nsw i32 %0, 2, !dbg !672
  %idx.ext = sext i32 %add to i64, !dbg !673
  %add.ptr = getelementptr inbounds double, double* %upad, i64 %idx.ext, !dbg !673
  call void @llvm.dbg.value(metadata double* %add.ptr, metadata !674, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !653
  br label %while.body, !dbg !676

while.body:                                       ; preds = %while_break___0, %entry
  %u.0 = phi double* [ %add.ptr, %entry ], [ %incdec.ptr44, %while_break___0 ], !dbg !679
  %ac.0 = phi double* [ %2, %entry ], [ %ac.1, %while_break___0 ], !dbg !680
  %ax.0 = phi double* [ %3, %entry ], [ %incdec.ptr45, %while_break___0 ], !dbg !679
  %k.0 = phi i32 [ 0, %entry ], [ %inc46, %while_break___0 ], !dbg !679
  %r.addr.0 = phi double* [ %r, %entry ], [ %r.addr.1, %while_break___0 ]
  %ay.0 = phi double* [ %4, %entry ], [ %ay.1, %while_break___0 ], !dbg !681
  %q.0 = phi double* [ %5, %entry ], [ %q.1, %while_break___0 ], !dbg !682
  call void @llvm.dbg.value(metadata double* %q.0, metadata !671, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ay.0, metadata !669, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %r.addr.0, metadata !655, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !675, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ax.0, metadata !667, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ac.0, metadata !665, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %u.0, metadata !674, metadata !DIExpression()), !dbg !653
  br label %while_continue___1, !dbg !683

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !683

while_continue:                                   ; preds = %while_continue___1
  %cmp = icmp slt i32 %k.0, %1, !dbg !684
  br i1 %cmp, label %if.end, label %if.then, !dbg !687

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !688

if.end:                                           ; preds = %while_continue
  %incdec.ptr = getelementptr inbounds double, double* %u.0, i32 1, !dbg !690
  call void @llvm.dbg.value(metadata double* %incdec.ptr, metadata !674, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 0, metadata !691, metadata !DIExpression()), !dbg !653
  br label %while.body8, !dbg !692

while.body8:                                      ; preds = %if.end11, %if.end
  %u.1 = phi double* [ %incdec.ptr, %if.end ], [ %incdec.ptr39, %if.end11 ], !dbg !695
  %ac.1 = phi double* [ %ac.0, %if.end ], [ %incdec.ptr41, %if.end11 ], !dbg !679
  %ax.1 = phi double* [ %ax.0, %if.end ], [ %incdec.ptr42, %if.end11 ], !dbg !679
  %j.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end11 ], !dbg !695
  %r.addr.1 = phi double* [ %r.addr.0, %if.end ], [ %incdec.ptr38, %if.end11 ]
  %ay.1 = phi double* [ %ay.0, %if.end ], [ %incdec.ptr43, %if.end11 ], !dbg !679
  %q.1 = phi double* [ %q.0, %if.end ], [ %incdec.ptr40, %if.end11 ], !dbg !679
  call void @llvm.dbg.value(metadata double* %q.1, metadata !671, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ay.1, metadata !669, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %r.addr.1, metadata !655, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !691, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ax.1, metadata !667, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %ac.1, metadata !665, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double* %u.1, metadata !674, metadata !DIExpression()), !dbg !653
  br label %while_continue___2, !dbg !696

while_continue___2:                               ; preds = %while.body8
  br label %while_continue___0, !dbg !696

while_continue___0:                               ; preds = %while_continue___2
  %cmp9 = icmp slt i32 %j.0, %0, !dbg !697
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !700

if.then10:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !701

if.end11:                                         ; preds = %while_continue___0
  %add.ptr12 = getelementptr inbounds double, double* %ac.1, i64 0, !dbg !703
  %6 = load double, double* %add.ptr12, align 8, !dbg !704
  %add.ptr13 = getelementptr inbounds double, double* %u.1, i64 0, !dbg !705
  %7 = load double, double* %add.ptr13, align 8, !dbg !706
  %mul = fmul double %6, %7, !dbg !707
  %add.ptr14 = getelementptr inbounds double, double* %ax.1, i64 0, !dbg !708
  %8 = load double, double* %add.ptr14, align 8, !dbg !709
  %add.ptr15 = getelementptr inbounds double, double* %u.1, i64 -1, !dbg !710
  %9 = load double, double* %add.ptr15, align 8, !dbg !711
  %mul16 = fmul double %8, %9, !dbg !712
  %sub = fsub double %mul, %mul16, !dbg !713
  %add.ptr17 = getelementptr inbounds double, double* %ax.1, i64 1, !dbg !714
  %10 = load double, double* %add.ptr17, align 8, !dbg !715
  %add.ptr18 = getelementptr inbounds double, double* %u.1, i64 1, !dbg !716
  %11 = load double, double* %add.ptr18, align 8, !dbg !717
  %mul19 = fmul double %10, %11, !dbg !718
  %sub20 = fsub double %sub, %mul19, !dbg !719
  %add.ptr21 = getelementptr inbounds double, double* %ay.1, i64 0, !dbg !720
  %12 = load double, double* %add.ptr21, align 8, !dbg !721
  %sub22 = sub nsw i32 0, %0, !dbg !722
  %sub23 = sub nsw i32 %sub22, 2, !dbg !723
  %idx.ext24 = sext i32 %sub23 to i64, !dbg !724
  %add.ptr25 = getelementptr inbounds double, double* %u.1, i64 %idx.ext24, !dbg !724
  %13 = load double, double* %add.ptr25, align 8, !dbg !725
  %mul26 = fmul double %12, %13, !dbg !726
  %sub27 = fsub double %sub20, %mul26, !dbg !727
  %idx.ext28 = sext i32 %0 to i64, !dbg !728
  %add.ptr29 = getelementptr inbounds double, double* %ay.1, i64 %idx.ext28, !dbg !728
  %14 = load double, double* %add.ptr29, align 8, !dbg !729
  %add30 = add nsw i32 %0, 2, !dbg !730
  %idx.ext31 = sext i32 %add30 to i64, !dbg !731
  %add.ptr32 = getelementptr inbounds double, double* %u.1, i64 %idx.ext31, !dbg !731
  %15 = load double, double* %add.ptr32, align 8, !dbg !732
  %mul33 = fmul double %14, %15, !dbg !733
  %sub34 = fsub double %sub27, %mul33, !dbg !734
  %add.ptr35 = getelementptr inbounds double, double* %q.1, i64 0, !dbg !735
  %16 = load double, double* %add.ptr35, align 8, !dbg !736
  %sub36 = fsub double %sub34, %16, !dbg !737
  %add.ptr37 = getelementptr inbounds double, double* %r.addr.1, i64 0, !dbg !738
  store double %sub36, double* %add.ptr37, align 8, !dbg !739
  %incdec.ptr38 = getelementptr inbounds double, double* %r.addr.1, i32 1, !dbg !740
  call void @llvm.dbg.value(metadata double* %incdec.ptr38, metadata !655, metadata !DIExpression()), !dbg !653
  %incdec.ptr39 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !741
  call void @llvm.dbg.value(metadata double* %incdec.ptr39, metadata !674, metadata !DIExpression()), !dbg !653
  %incdec.ptr40 = getelementptr inbounds double, double* %q.1, i32 1, !dbg !742
  call void @llvm.dbg.value(metadata double* %incdec.ptr40, metadata !671, metadata !DIExpression()), !dbg !653
  %incdec.ptr41 = getelementptr inbounds double, double* %ac.1, i32 1, !dbg !743
  call void @llvm.dbg.value(metadata double* %incdec.ptr41, metadata !665, metadata !DIExpression()), !dbg !653
  %incdec.ptr42 = getelementptr inbounds double, double* %ax.1, i32 1, !dbg !744
  call void @llvm.dbg.value(metadata double* %incdec.ptr42, metadata !667, metadata !DIExpression()), !dbg !653
  %incdec.ptr43 = getelementptr inbounds double, double* %ay.1, i32 1, !dbg !745
  call void @llvm.dbg.value(metadata double* %incdec.ptr43, metadata !669, metadata !DIExpression()), !dbg !653
  %inc = add nsw i32 %j.0, 1, !dbg !746
  call void @llvm.dbg.value(metadata i32 %inc, metadata !691, metadata !DIExpression()), !dbg !653
  br label %while.body8, !dbg !692, !llvm.loop !747

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !749

while_break___0:                                  ; preds = %while_break___2, %if.then10
  %incdec.ptr44 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !750
  call void @llvm.dbg.value(metadata double* %incdec.ptr44, metadata !674, metadata !DIExpression()), !dbg !653
  %incdec.ptr45 = getelementptr inbounds double, double* %ax.1, i32 1, !dbg !751
  call void @llvm.dbg.value(metadata double* %incdec.ptr45, metadata !667, metadata !DIExpression()), !dbg !653
  %inc46 = add nsw i32 %k.0, 1, !dbg !752
  call void @llvm.dbg.value(metadata i32 %inc46, metadata !675, metadata !DIExpression()), !dbg !653
  br label %while.body, !dbg !676, !llvm.loop !753

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !755

while_break:                                      ; preds = %while_break___1, %if.then
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind ssp uwtable
define double @l2norm(double* %x, i32 %len) #0 !dbg !757 {
entry:
  call void @llvm.dbg.value(metadata double* %x, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %len, metadata !762, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !763, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !761
  br label %while.body, !dbg !765

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !769
  %a.0 = phi double [ 0.000000e+00, %entry ], [ %add, %if.end ], !dbg !769
  call void @llvm.dbg.value(metadata double %a.0, metadata !763, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !764, metadata !DIExpression()), !dbg !761
  br label %while_continue___0, !dbg !770

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !770

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %len, !dbg !771
  br i1 %cmp, label %if.end, label %if.then, !dbg !774

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !775

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !777
  %add.ptr = getelementptr inbounds double, double* %x, i64 %idx.ext, !dbg !777
  %0 = load double, double* %add.ptr, align 8, !dbg !778
  %idx.ext1 = sext i32 %i.0 to i64, !dbg !779
  %add.ptr2 = getelementptr inbounds double, double* %x, i64 %idx.ext1, !dbg !779
  %1 = load double, double* %add.ptr2, align 8, !dbg !780
  %mul = fmul double %0, %1, !dbg !781
  %add = fadd double %a.0, %mul, !dbg !782
  call void @llvm.dbg.value(metadata double %add, metadata !763, metadata !DIExpression()), !dbg !761
  %inc = add nsw i32 %i.0, 1, !dbg !783
  call void @llvm.dbg.value(metadata i32 %inc, metadata !764, metadata !DIExpression()), !dbg !761
  br label %while.body, !dbg !765, !llvm.loop !784

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !786

while_break:                                      ; preds = %while_break___0, %if.then
  %2 = call double @llvm.sqrt.f64(double %a.0), !dbg !787
  call void @llvm.dbg.value(metadata double %2, metadata !790, metadata !DIExpression()), !dbg !761
  ret double %2, !dbg !791
}

; Function Attrs: noinline nounwind ssp uwtable
define void @ssor_pc(%struct.__anonstruct_SYSTEM_24* %sys, i32 %nsweep, double %omega, double* %r) #0 !dbg !792 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_SYSTEM_24* %sys, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %nsweep, metadata !797, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double %omega, metadata !798, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r, metadata !799, metadata !DIExpression()), !dbg !796
  %nx1 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !800
  %0 = load i32, i32* %nx1, align 8, !dbg !800
  call void @llvm.dbg.value(metadata i32 %0, metadata !803, metadata !DIExpression()), !dbg !796
  %ny2 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !804
  %1 = load i32, i32* %ny2, align 4, !dbg !804
  call void @llvm.dbg.value(metadata i32 %1, metadata !805, metadata !DIExpression()), !dbg !796
  %add = add nsw i32 %0, 2, !dbg !806
  %add3 = add nsw i32 %1, 2, !dbg !807
  %mul = mul nsw i32 %add, %add3, !dbg !808
  call void @llvm.dbg.value(metadata i32 %mul, metadata !809, metadata !DIExpression()), !dbg !796
  %conv = sext i32 %mul to i64, !dbg !810
  %mul4 = mul i64 %conv, 8, !dbg !812
  %call = call noalias i8* @malloc(i64 %mul4) #4, !dbg !813
  call void @llvm.dbg.value(metadata i8* %call, metadata !814, metadata !DIExpression()), !dbg !796
  %2 = bitcast i8* %call to double*, !dbg !815
  call void @llvm.dbg.value(metadata double* %2, metadata !816, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !796
  br label %while.body, !dbg !818

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !821
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !817, metadata !DIExpression()), !dbg !796
  br label %while_continue___7, !dbg !822

while_continue___7:                               ; preds = %while.body
  br label %while_continue, !dbg !822

while_continue:                                   ; preds = %while_continue___7
  %cmp = icmp slt i32 %i.0, %mul, !dbg !823
  br i1 %cmp, label %if.end, label %if.then, !dbg !826

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !827

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !829
  %add.ptr = getelementptr inbounds double, double* %2, i64 %idx.ext, !dbg !829
  store double 0.000000e+00, double* %add.ptr, align 8, !dbg !830
  %inc = add nsw i32 %i.0, 1, !dbg !831
  call void @llvm.dbg.value(metadata i32 %inc, metadata !817, metadata !DIExpression()), !dbg !796
  br label %while.body, !dbg !818, !llvm.loop !832

while_break___7:                                  ; No predecessors!
  br label %while_break, !dbg !834

while_break:                                      ; preds = %while_break___7, %if.then
  %ac6 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 7, !dbg !835
  %3 = load double*, double** %ac6, align 8, !dbg !835
  call void @llvm.dbg.value(metadata double* %3, metadata !836, metadata !DIExpression()), !dbg !796
  %ax7 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !837
  %4 = load double*, double** %ax7, align 8, !dbg !837
  call void @llvm.dbg.value(metadata double* %4, metadata !838, metadata !DIExpression()), !dbg !796
  %ay8 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !839
  %5 = load double*, double** %ay8, align 8, !dbg !839
  call void @llvm.dbg.value(metadata double* %5, metadata !840, metadata !DIExpression()), !dbg !796
  %add9 = add nsw i32 %0, 2, !dbg !841
  %idx.ext10 = sext i32 %add9 to i64, !dbg !842
  %add.ptr11 = getelementptr inbounds double, double* %2, i64 %idx.ext10, !dbg !842
  call void @llvm.dbg.value(metadata double* %add.ptr11, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !796
  br label %while.body12, !dbg !844

while.body12:                                     ; preds = %while_break___3, %while_break
  %ac.0 = phi double* [ %3, %while_break ], [ %ac.3, %while_break___3 ], !dbg !847
  %i.1 = phi i32 [ 0, %while_break ], [ %inc120, %while_break___3 ], !dbg !821
  %r.addr.0 = phi double* [ %r, %while_break ], [ %r.addr.3, %while_break___3 ]
  %ax.0 = phi double* [ %4, %while_break ], [ %ax.3, %while_break___3 ], !dbg !848
  %ay.0 = phi double* [ %5, %while_break ], [ %ay.3, %while_break___3 ], !dbg !849
  %z.0 = phi double* [ %add.ptr11, %while_break ], [ %z.3, %while_break___3 ], !dbg !850
  call void @llvm.dbg.value(metadata double* %z.0, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ay.0, metadata !840, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ax.0, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.0, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !817, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ac.0, metadata !836, metadata !DIExpression()), !dbg !796
  br label %while_continue___8, !dbg !851

while_continue___8:                               ; preds = %while.body12
  br label %while_continue___0, !dbg !851

while_continue___0:                               ; preds = %while_continue___8
  %cmp13 = icmp slt i32 %i.1, %nsweep, !dbg !852
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !855

if.then15:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !856

if.end16:                                         ; preds = %while_continue___0
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body18, !dbg !859

while.body18:                                     ; preds = %while_break___2, %if.end16
  %ac.1 = phi double* [ %ac.0, %if.end16 ], [ %ac.2, %while_break___2 ], !dbg !847
  %k.0 = phi i32 [ 0, %if.end16 ], [ %inc66, %while_break___2 ], !dbg !862
  %r.addr.1 = phi double* [ %r.addr.0, %if.end16 ], [ %r.addr.2, %while_break___2 ]
  %ax.1 = phi double* [ %ax.0, %if.end16 ], [ %incdec.ptr65, %while_break___2 ], !dbg !821
  %ay.1 = phi double* [ %ay.0, %if.end16 ], [ %ay.2, %while_break___2 ], !dbg !849
  %z.1 = phi double* [ %z.0, %if.end16 ], [ %incdec.ptr64, %while_break___2 ], !dbg !821
  call void @llvm.dbg.value(metadata double* %z.1, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ay.1, metadata !840, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ax.1, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.1, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !858, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ac.1, metadata !836, metadata !DIExpression()), !dbg !796
  br label %while_continue___9, !dbg !863

while_continue___9:                               ; preds = %while.body18
  br label %while_continue___1, !dbg !863

while_continue___1:                               ; preds = %while_continue___9
  %cmp19 = icmp slt i32 %k.0, %1, !dbg !864
  br i1 %cmp19, label %if.end22, label %if.then21, !dbg !867

if.then21:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !868

if.end22:                                         ; preds = %while_continue___1
  %incdec.ptr = getelementptr inbounds double, double* %z.1, i32 1, !dbg !870
  call void @llvm.dbg.value(metadata double* %incdec.ptr, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body24, !dbg !872

while.body24:                                     ; preds = %if.end28, %if.end22
  %ac.2 = phi double* [ %ac.1, %if.end22 ], [ %incdec.ptr60, %if.end28 ], !dbg !821
  %j.0 = phi i32 [ 0, %if.end22 ], [ %inc63, %if.end28 ], !dbg !875
  %r.addr.2 = phi double* [ %r.addr.1, %if.end22 ], [ %incdec.ptr59, %if.end28 ]
  %ax.2 = phi double* [ %ax.1, %if.end22 ], [ %incdec.ptr61, %if.end28 ], !dbg !821
  %ay.2 = phi double* [ %ay.1, %if.end22 ], [ %incdec.ptr62, %if.end28 ], !dbg !821
  %z.2 = phi double* [ %incdec.ptr, %if.end22 ], [ %incdec.ptr58, %if.end28 ], !dbg !875
  call void @llvm.dbg.value(metadata double* %z.2, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ay.2, metadata !840, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ax.2, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.2, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !871, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ac.2, metadata !836, metadata !DIExpression()), !dbg !796
  br label %while_continue___10, !dbg !876

while_continue___10:                              ; preds = %while.body24
  br label %while_continue___2, !dbg !876

while_continue___2:                               ; preds = %while_continue___10
  %cmp25 = icmp slt i32 %j.0, %0, !dbg !877
  br i1 %cmp25, label %if.end28, label %if.then27, !dbg !880

if.then27:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !881

if.end28:                                         ; preds = %while_continue___2
  %sub = fsub double 1.000000e+00, %omega, !dbg !883
  %add.ptr29 = getelementptr inbounds double, double* %z.2, i64 0, !dbg !884
  %6 = load double, double* %add.ptr29, align 8, !dbg !885
  %mul30 = fmul double %sub, %6, !dbg !886
  %add.ptr31 = getelementptr inbounds double, double* %r.addr.2, i64 0, !dbg !887
  %7 = load double, double* %add.ptr31, align 8, !dbg !888
  %add.ptr32 = getelementptr inbounds double, double* %ax.2, i64 0, !dbg !889
  %8 = load double, double* %add.ptr32, align 8, !dbg !890
  %add.ptr33 = getelementptr inbounds double, double* %z.2, i64 -1, !dbg !891
  %9 = load double, double* %add.ptr33, align 8, !dbg !892
  %mul34 = fmul double %8, %9, !dbg !893
  %add35 = fadd double %7, %mul34, !dbg !894
  %add.ptr36 = getelementptr inbounds double, double* %ax.2, i64 1, !dbg !895
  %10 = load double, double* %add.ptr36, align 8, !dbg !896
  %add.ptr37 = getelementptr inbounds double, double* %z.2, i64 1, !dbg !897
  %11 = load double, double* %add.ptr37, align 8, !dbg !898
  %mul38 = fmul double %10, %11, !dbg !899
  %add39 = fadd double %add35, %mul38, !dbg !900
  %add.ptr40 = getelementptr inbounds double, double* %ay.2, i64 0, !dbg !901
  %12 = load double, double* %add.ptr40, align 8, !dbg !902
  %sub41 = sub nsw i32 0, %0, !dbg !903
  %sub42 = sub nsw i32 %sub41, 2, !dbg !904
  %idx.ext43 = sext i32 %sub42 to i64, !dbg !905
  %add.ptr44 = getelementptr inbounds double, double* %z.2, i64 %idx.ext43, !dbg !905
  %13 = load double, double* %add.ptr44, align 8, !dbg !906
  %mul45 = fmul double %12, %13, !dbg !907
  %add46 = fadd double %add39, %mul45, !dbg !908
  %idx.ext47 = sext i32 %0 to i64, !dbg !909
  %add.ptr48 = getelementptr inbounds double, double* %ay.2, i64 %idx.ext47, !dbg !909
  %14 = load double, double* %add.ptr48, align 8, !dbg !910
  %add49 = add nsw i32 %0, 2, !dbg !911
  %idx.ext50 = sext i32 %add49 to i64, !dbg !912
  %add.ptr51 = getelementptr inbounds double, double* %z.2, i64 %idx.ext50, !dbg !912
  %15 = load double, double* %add.ptr51, align 8, !dbg !913
  %mul52 = fmul double %14, %15, !dbg !914
  %add53 = fadd double %add46, %mul52, !dbg !915
  %mul54 = fmul double %omega, %add53, !dbg !916
  %add.ptr55 = getelementptr inbounds double, double* %ac.2, i64 0, !dbg !917
  %16 = load double, double* %add.ptr55, align 8, !dbg !918
  %div = fdiv double %mul54, %16, !dbg !919
  %add56 = fadd double %mul30, %div, !dbg !920
  %add.ptr57 = getelementptr inbounds double, double* %z.2, i64 0, !dbg !921
  store double %add56, double* %add.ptr57, align 8, !dbg !922
  %incdec.ptr58 = getelementptr inbounds double, double* %z.2, i32 1, !dbg !923
  call void @llvm.dbg.value(metadata double* %incdec.ptr58, metadata !843, metadata !DIExpression()), !dbg !796
  %incdec.ptr59 = getelementptr inbounds double, double* %r.addr.2, i32 1, !dbg !924
  call void @llvm.dbg.value(metadata double* %incdec.ptr59, metadata !799, metadata !DIExpression()), !dbg !796
  %incdec.ptr60 = getelementptr inbounds double, double* %ac.2, i32 1, !dbg !925
  call void @llvm.dbg.value(metadata double* %incdec.ptr60, metadata !836, metadata !DIExpression()), !dbg !796
  %incdec.ptr61 = getelementptr inbounds double, double* %ax.2, i32 1, !dbg !926
  call void @llvm.dbg.value(metadata double* %incdec.ptr61, metadata !838, metadata !DIExpression()), !dbg !796
  %incdec.ptr62 = getelementptr inbounds double, double* %ay.2, i32 1, !dbg !927
  call void @llvm.dbg.value(metadata double* %incdec.ptr62, metadata !840, metadata !DIExpression()), !dbg !796
  %inc63 = add nsw i32 %j.0, 1, !dbg !928
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body24, !dbg !872, !llvm.loop !929

while_break___10:                                 ; No predecessors!
  br label %while_break___2, !dbg !931

while_break___2:                                  ; preds = %while_break___10, %if.then27
  %incdec.ptr64 = getelementptr inbounds double, double* %z.2, i32 1, !dbg !932
  call void @llvm.dbg.value(metadata double* %incdec.ptr64, metadata !843, metadata !DIExpression()), !dbg !796
  %incdec.ptr65 = getelementptr inbounds double, double* %ax.2, i32 1, !dbg !933
  call void @llvm.dbg.value(metadata double* %incdec.ptr65, metadata !838, metadata !DIExpression()), !dbg !796
  %inc66 = add nsw i32 %k.0, 1, !dbg !934
  call void @llvm.dbg.value(metadata i32 %inc66, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body18, !dbg !859, !llvm.loop !935

while_break___9:                                  ; No predecessors!
  br label %while_break___1, !dbg !937

while_break___1:                                  ; preds = %while_break___9, %if.then21
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body68, !dbg !938

while.body68:                                     ; preds = %while_break___4, %while_break___1
  %ac.3 = phi double* [ %ac.1, %while_break___1 ], [ %ac.4, %while_break___4 ], !dbg !847
  %k.1 = phi i32 [ 0, %while_break___1 ], [ %inc119, %while_break___4 ], !dbg !862
  %r.addr.3 = phi double* [ %r.addr.1, %while_break___1 ], [ %r.addr.4, %while_break___4 ]
  %ax.3 = phi double* [ %ax.1, %while_break___1 ], [ %ax.4, %while_break___4 ], !dbg !821
  %ay.3 = phi double* [ %ay.1, %while_break___1 ], [ %ay.4, %while_break___4 ], !dbg !849
  %z.3 = phi double* [ %z.1, %while_break___1 ], [ %incdec.ptr118, %while_break___4 ], !dbg !821
  call void @llvm.dbg.value(metadata double* %z.3, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ay.3, metadata !840, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ax.3, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.3, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !858, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ac.3, metadata !836, metadata !DIExpression()), !dbg !796
  br label %while_continue___11, !dbg !941

while_continue___11:                              ; preds = %while.body68
  br label %while_continue___3, !dbg !941

while_continue___3:                               ; preds = %while_continue___11
  %cmp69 = icmp slt i32 %k.1, %1, !dbg !942
  br i1 %cmp69, label %if.end72, label %if.then71, !dbg !945

if.then71:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !946

if.end72:                                         ; preds = %while_continue___3
  %incdec.ptr73 = getelementptr inbounds double, double* %z.3, i32 -1, !dbg !948
  call void @llvm.dbg.value(metadata double* %incdec.ptr73, metadata !843, metadata !DIExpression()), !dbg !796
  %incdec.ptr74 = getelementptr inbounds double, double* %ax.3, i32 -1, !dbg !949
  call void @llvm.dbg.value(metadata double* %incdec.ptr74, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body76, !dbg !950

while.body76:                                     ; preds = %if.end80, %if.end72
  %ac.4 = phi double* [ %ac.3, %if.end72 ], [ %incdec.ptr83, %if.end80 ], !dbg !821
  %j.1 = phi i32 [ 0, %if.end72 ], [ %inc117, %if.end80 ], !dbg !953
  %r.addr.4 = phi double* [ %r.addr.3, %if.end72 ], [ %incdec.ptr82, %if.end80 ]
  %ax.4 = phi double* [ %incdec.ptr74, %if.end72 ], [ %incdec.ptr84, %if.end80 ], !dbg !953
  %ay.4 = phi double* [ %ay.3, %if.end72 ], [ %incdec.ptr85, %if.end80 ], !dbg !821
  %z.4 = phi double* [ %incdec.ptr73, %if.end72 ], [ %incdec.ptr81, %if.end80 ], !dbg !953
  call void @llvm.dbg.value(metadata double* %z.4, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ay.4, metadata !840, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ax.4, metadata !838, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.4, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !871, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %ac.4, metadata !836, metadata !DIExpression()), !dbg !796
  br label %while_continue___12, !dbg !954

while_continue___12:                              ; preds = %while.body76
  br label %while_continue___4, !dbg !954

while_continue___4:                               ; preds = %while_continue___12
  %cmp77 = icmp slt i32 %j.1, %0, !dbg !955
  br i1 %cmp77, label %if.end80, label %if.then79, !dbg !958

if.then79:                                        ; preds = %while_continue___4
  br label %while_break___4, !dbg !959

if.end80:                                         ; preds = %while_continue___4
  %incdec.ptr81 = getelementptr inbounds double, double* %z.4, i32 -1, !dbg !961
  call void @llvm.dbg.value(metadata double* %incdec.ptr81, metadata !843, metadata !DIExpression()), !dbg !796
  %incdec.ptr82 = getelementptr inbounds double, double* %r.addr.4, i32 -1, !dbg !962
  call void @llvm.dbg.value(metadata double* %incdec.ptr82, metadata !799, metadata !DIExpression()), !dbg !796
  %incdec.ptr83 = getelementptr inbounds double, double* %ac.4, i32 -1, !dbg !963
  call void @llvm.dbg.value(metadata double* %incdec.ptr83, metadata !836, metadata !DIExpression()), !dbg !796
  %incdec.ptr84 = getelementptr inbounds double, double* %ax.4, i32 -1, !dbg !964
  call void @llvm.dbg.value(metadata double* %incdec.ptr84, metadata !838, metadata !DIExpression()), !dbg !796
  %incdec.ptr85 = getelementptr inbounds double, double* %ay.4, i32 -1, !dbg !965
  call void @llvm.dbg.value(metadata double* %incdec.ptr85, metadata !840, metadata !DIExpression()), !dbg !796
  %sub86 = fsub double 1.000000e+00, %omega, !dbg !966
  %add.ptr87 = getelementptr inbounds double, double* %incdec.ptr81, i64 0, !dbg !967
  %17 = load double, double* %add.ptr87, align 8, !dbg !968
  %mul88 = fmul double %sub86, %17, !dbg !969
  %add.ptr89 = getelementptr inbounds double, double* %incdec.ptr82, i64 0, !dbg !970
  %18 = load double, double* %add.ptr89, align 8, !dbg !971
  %add.ptr90 = getelementptr inbounds double, double* %incdec.ptr84, i64 0, !dbg !972
  %19 = load double, double* %add.ptr90, align 8, !dbg !973
  %add.ptr91 = getelementptr inbounds double, double* %incdec.ptr81, i64 -1, !dbg !974
  %20 = load double, double* %add.ptr91, align 8, !dbg !975
  %mul92 = fmul double %19, %20, !dbg !976
  %add93 = fadd double %18, %mul92, !dbg !977
  %add.ptr94 = getelementptr inbounds double, double* %incdec.ptr84, i64 1, !dbg !978
  %21 = load double, double* %add.ptr94, align 8, !dbg !979
  %add.ptr95 = getelementptr inbounds double, double* %incdec.ptr81, i64 1, !dbg !980
  %22 = load double, double* %add.ptr95, align 8, !dbg !981
  %mul96 = fmul double %21, %22, !dbg !982
  %add97 = fadd double %add93, %mul96, !dbg !983
  %add.ptr98 = getelementptr inbounds double, double* %incdec.ptr85, i64 0, !dbg !984
  %23 = load double, double* %add.ptr98, align 8, !dbg !985
  %sub99 = sub nsw i32 0, %0, !dbg !986
  %sub100 = sub nsw i32 %sub99, 2, !dbg !987
  %idx.ext101 = sext i32 %sub100 to i64, !dbg !988
  %add.ptr102 = getelementptr inbounds double, double* %incdec.ptr81, i64 %idx.ext101, !dbg !988
  %24 = load double, double* %add.ptr102, align 8, !dbg !989
  %mul103 = fmul double %23, %24, !dbg !990
  %add104 = fadd double %add97, %mul103, !dbg !991
  %idx.ext105 = sext i32 %0 to i64, !dbg !992
  %add.ptr106 = getelementptr inbounds double, double* %incdec.ptr85, i64 %idx.ext105, !dbg !992
  %25 = load double, double* %add.ptr106, align 8, !dbg !993
  %add107 = add nsw i32 %0, 2, !dbg !994
  %idx.ext108 = sext i32 %add107 to i64, !dbg !995
  %add.ptr109 = getelementptr inbounds double, double* %incdec.ptr81, i64 %idx.ext108, !dbg !995
  %26 = load double, double* %add.ptr109, align 8, !dbg !996
  %mul110 = fmul double %25, %26, !dbg !997
  %add111 = fadd double %add104, %mul110, !dbg !998
  %mul112 = fmul double %omega, %add111, !dbg !999
  %add.ptr113 = getelementptr inbounds double, double* %incdec.ptr83, i64 0, !dbg !1000
  %27 = load double, double* %add.ptr113, align 8, !dbg !1001
  %div114 = fdiv double %mul112, %27, !dbg !1002
  %add115 = fadd double %mul88, %div114, !dbg !1003
  %add.ptr116 = getelementptr inbounds double, double* %incdec.ptr81, i64 0, !dbg !1004
  store double %add115, double* %add.ptr116, align 8, !dbg !1005
  %inc117 = add nsw i32 %j.1, 1, !dbg !1006
  call void @llvm.dbg.value(metadata i32 %inc117, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body76, !dbg !950, !llvm.loop !1007

while_break___12:                                 ; No predecessors!
  br label %while_break___4, !dbg !1009

while_break___4:                                  ; preds = %while_break___12, %if.then79
  %incdec.ptr118 = getelementptr inbounds double, double* %z.4, i32 -1, !dbg !1010
  call void @llvm.dbg.value(metadata double* %incdec.ptr118, metadata !843, metadata !DIExpression()), !dbg !796
  %inc119 = add nsw i32 %k.1, 1, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %inc119, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body68, !dbg !938, !llvm.loop !1012

while_break___11:                                 ; No predecessors!
  br label %while_break___3, !dbg !1014

while_break___3:                                  ; preds = %while_break___11, %if.then71
  %inc120 = add nsw i32 %i.1, 1, !dbg !1015
  call void @llvm.dbg.value(metadata i32 %inc120, metadata !817, metadata !DIExpression()), !dbg !796
  br label %while.body12, !dbg !844, !llvm.loop !1016

while_break___8:                                  ; No predecessors!
  br label %while_break___0, !dbg !1018

while_break___0:                                  ; preds = %while_break___8, %if.then15
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body121, !dbg !1019

while.body121:                                    ; preds = %while_break___6, %while_break___0
  %k.2 = phi i32 [ 0, %while_break___0 ], [ %inc137, %while_break___6 ], !dbg !821
  %r.addr.5 = phi double* [ %r.addr.0, %while_break___0 ], [ %r.addr.6, %while_break___6 ]
  %z.5 = phi double* [ %z.0, %while_break___0 ], [ %incdec.ptr136, %while_break___6 ], !dbg !821
  call void @llvm.dbg.value(metadata double* %z.5, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.5, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %k.2, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while_continue___13, !dbg !1022

while_continue___13:                              ; preds = %while.body121
  br label %while_continue___5, !dbg !1022

while_continue___5:                               ; preds = %while_continue___13
  %cmp122 = icmp slt i32 %k.2, %1, !dbg !1023
  br i1 %cmp122, label %if.end125, label %if.then124, !dbg !1026

if.then124:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !1027

if.end125:                                        ; preds = %while_continue___5
  %incdec.ptr126 = getelementptr inbounds double, double* %z.5, i32 1, !dbg !1029
  call void @llvm.dbg.value(metadata double* %incdec.ptr126, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body128, !dbg !1030

while.body128:                                    ; preds = %if.end132, %if.end125
  %j.2 = phi i32 [ 0, %if.end125 ], [ %inc135, %if.end132 ], !dbg !1033
  %r.addr.6 = phi double* [ %r.addr.5, %if.end125 ], [ %incdec.ptr133, %if.end132 ]
  %z.6 = phi double* [ %incdec.ptr126, %if.end125 ], [ %incdec.ptr134, %if.end132 ], !dbg !1033
  call void @llvm.dbg.value(metadata double* %z.6, metadata !843, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata double* %r.addr.6, metadata !799, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while_continue___14, !dbg !1034

while_continue___14:                              ; preds = %while.body128
  br label %while_continue___6, !dbg !1034

while_continue___6:                               ; preds = %while_continue___14
  %cmp129 = icmp slt i32 %j.2, %0, !dbg !1035
  br i1 %cmp129, label %if.end132, label %if.then131, !dbg !1038

if.then131:                                       ; preds = %while_continue___6
  br label %while_break___6, !dbg !1039

if.end132:                                        ; preds = %while_continue___6
  %28 = load double, double* %z.6, align 8, !dbg !1041
  store double %28, double* %r.addr.6, align 8, !dbg !1042
  %incdec.ptr133 = getelementptr inbounds double, double* %r.addr.6, i32 1, !dbg !1043
  call void @llvm.dbg.value(metadata double* %incdec.ptr133, metadata !799, metadata !DIExpression()), !dbg !796
  %incdec.ptr134 = getelementptr inbounds double, double* %z.6, i32 1, !dbg !1044
  call void @llvm.dbg.value(metadata double* %incdec.ptr134, metadata !843, metadata !DIExpression()), !dbg !796
  %inc135 = add nsw i32 %j.2, 1, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %inc135, metadata !871, metadata !DIExpression()), !dbg !796
  br label %while.body128, !dbg !1030, !llvm.loop !1046

while_break___14:                                 ; No predecessors!
  br label %while_break___6, !dbg !1048

while_break___6:                                  ; preds = %while_break___14, %if.then131
  %incdec.ptr136 = getelementptr inbounds double, double* %z.6, i32 1, !dbg !1049
  call void @llvm.dbg.value(metadata double* %incdec.ptr136, metadata !843, metadata !DIExpression()), !dbg !796
  %inc137 = add nsw i32 %k.2, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !858, metadata !DIExpression()), !dbg !796
  br label %while.body121, !dbg !1019, !llvm.loop !1051

while_break___13:                                 ; No predecessors!
  br label %while_break___5, !dbg !1053

while_break___5:                                  ; preds = %while_break___13, %if.then124
  %29 = bitcast double* %2 to i8*, !dbg !1054
  call void @free(i8* %29) #4, !dbg !1057
  ret void, !dbg !1058
}

; Function Attrs: noinline nounwind ssp uwtable
define void @nka_correction(%struct.nka_state* %state, double* %f) #0 !dbg !1059 {
entry:
  call void @llvm.dbg.value(metadata %struct.nka_state* %state, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double* %f, metadata !1064, metadata !DIExpression()), !dbg !1063
  %pending = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1065
  %0 = load i32, i32* %pending, align 4, !dbg !1065
  %tobool = icmp ne i32 %0, 0, !dbg !1068
  br i1 %tobool, label %if.then, label %if.end11, !dbg !1069

if.then:                                          ; preds = %entry
  %w1 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !1070
  %1 = load double**, double*** %w1, align 8, !dbg !1070
  %first = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1072
  %2 = load i32, i32* %first, align 8, !dbg !1072
  %idx.ext = sext i32 %2 to i64, !dbg !1073
  %add.ptr = getelementptr inbounds double*, double** %1, i64 %idx.ext, !dbg !1073
  %3 = load double*, double** %add.ptr, align 8, !dbg !1074
  call void @llvm.dbg.value(metadata double* %3, metadata !1075, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body, !dbg !1077

while.body:                                       ; preds = %if.end, %if.then
  %j.0 = phi i32 [ 0, %if.then ], [ %inc, %if.end ], !dbg !1080
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___13, !dbg !1081

while_continue___13:                              ; preds = %while.body
  br label %while_continue, !dbg !1081

while_continue:                                   ; preds = %while_continue___13
  %vsize = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1082
  %4 = load i32, i32* %vsize, align 8, !dbg !1082
  %cmp = icmp slt i32 %j.0, %4, !dbg !1085
  br i1 %cmp, label %if.end, label %if.then2, !dbg !1086

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !1087

if.end:                                           ; preds = %while_continue
  %idx.ext3 = sext i32 %j.0 to i64, !dbg !1089
  %add.ptr4 = getelementptr inbounds double, double* %f, i64 %idx.ext3, !dbg !1089
  %5 = load double, double* %add.ptr4, align 8, !dbg !1090
  %idx.ext5 = sext i32 %j.0 to i64, !dbg !1091
  %add.ptr6 = getelementptr inbounds double, double* %3, i64 %idx.ext5, !dbg !1091
  %6 = load double, double* %add.ptr6, align 8, !dbg !1092
  %sub = fsub double %6, %5, !dbg !1092
  store double %sub, double* %add.ptr6, align 8, !dbg !1092
  %inc = add nsw i32 %j.0, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body, !dbg !1077, !llvm.loop !1094

while_break___13:                                 ; No predecessors!
  br label %while_break, !dbg !1096

while_break:                                      ; preds = %while_break___13, %if.then2
  %dp = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 13, !dbg !1097
  %7 = load double (i32, double*, double*)*, double (i32, double*, double*)** %dp, align 8, !dbg !1097
  %vsize7 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1100
  %8 = load i32, i32* %vsize7, align 8, !dbg !1100
  %call = call double %7(i32 %8, double* %3, double* %3), !dbg !1101
  call void @llvm.dbg.value(metadata double %call, metadata !1102, metadata !DIExpression()), !dbg !1063
  %9 = call double @llvm.sqrt.f64(double %call), !dbg !1103
  call void @llvm.dbg.value(metadata double %9, metadata !1105, metadata !DIExpression()), !dbg !1063
  %cmp8 = fcmp oeq double %9, 0.000000e+00, !dbg !1106
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1108

if.then9:                                         ; preds = %while_break
  call void @nka_relax(%struct.nka_state* %state), !dbg !1109
  br label %if.end10, !dbg !1113

if.end10:                                         ; preds = %if.then9, %while_break
  br label %if.end11, !dbg !1114

if.end11:                                         ; preds = %if.end10, %entry
  %s.0 = phi double [ %9, %if.end10 ], [ undef, %entry ]
  %w.0 = phi double* [ %3, %if.end10 ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata double* %w.0, metadata !1075, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double %s.0, metadata !1105, metadata !DIExpression()), !dbg !1063
  %pending12 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1115
  %10 = load i32, i32* %pending12, align 4, !dbg !1115
  %tobool13 = icmp ne i32 %10, 0, !dbg !1117
  br i1 %tobool13, label %if.then14, label %if.end164, !dbg !1118

if.then14:                                        ; preds = %if.end11
  %v15 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !1119
  %11 = load double**, double*** %v15, align 8, !dbg !1119
  %first16 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1121
  %12 = load i32, i32* %first16, align 8, !dbg !1121
  %idx.ext17 = sext i32 %12 to i64, !dbg !1122
  %add.ptr18 = getelementptr inbounds double*, double** %11, i64 %idx.ext17, !dbg !1122
  %13 = load double*, double** %add.ptr18, align 8, !dbg !1123
  call void @llvm.dbg.value(metadata double* %13, metadata !1124, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body19, !dbg !1125

while.body19:                                     ; preds = %if.end23, %if.then14
  %j.1 = phi i32 [ 0, %if.then14 ], [ %inc29, %if.end23 ], !dbg !1128
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___14, !dbg !1129

while_continue___14:                              ; preds = %while.body19
  br label %while_continue___0, !dbg !1129

while_continue___0:                               ; preds = %while_continue___14
  %vsize20 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1130
  %14 = load i32, i32* %vsize20, align 8, !dbg !1130
  %cmp21 = icmp slt i32 %j.1, %14, !dbg !1133
  br i1 %cmp21, label %if.end23, label %if.then22, !dbg !1134

if.then22:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1135

if.end23:                                         ; preds = %while_continue___0
  %idx.ext24 = sext i32 %j.1 to i64, !dbg !1137
  %add.ptr25 = getelementptr inbounds double, double* %13, i64 %idx.ext24, !dbg !1137
  %15 = load double, double* %add.ptr25, align 8, !dbg !1138
  %div = fdiv double %15, %s.0, !dbg !1138
  store double %div, double* %add.ptr25, align 8, !dbg !1138
  %idx.ext26 = sext i32 %j.1 to i64, !dbg !1139
  %add.ptr27 = getelementptr inbounds double, double* %w.0, i64 %idx.ext26, !dbg !1139
  %16 = load double, double* %add.ptr27, align 8, !dbg !1140
  %div28 = fdiv double %16, %s.0, !dbg !1140
  store double %div28, double* %add.ptr27, align 8, !dbg !1140
  %inc29 = add nsw i32 %j.1, 1, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body19, !dbg !1125, !llvm.loop !1142

while_break___14:                                 ; No predecessors!
  br label %while_break___0, !dbg !1144

while_break___0:                                  ; preds = %while_break___14, %if.then22
  %next = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1145
  %17 = load i32*, i32** %next, align 8, !dbg !1145
  %first30 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1146
  %18 = load i32, i32* %first30, align 8, !dbg !1146
  %idx.ext31 = sext i32 %18 to i64, !dbg !1147
  %add.ptr32 = getelementptr inbounds i32, i32* %17, i64 %idx.ext31, !dbg !1147
  %19 = load i32, i32* %add.ptr32, align 4, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %19, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body33, !dbg !1150

while.body33:                                     ; preds = %if.end36, %while_break___0
  %k.0 = phi i32 [ %19, %while_break___0 ], [ %28, %if.end36 ], !dbg !1128
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while_continue___15, !dbg !1153

while_continue___15:                              ; preds = %while.body33
  br label %while_continue___1, !dbg !1153

while_continue___1:                               ; preds = %while_continue___15
  %cmp34 = icmp ne i32 %k.0, -1, !dbg !1154
  br i1 %cmp34, label %if.end36, label %if.then35, !dbg !1157

if.then35:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1158

if.end36:                                         ; preds = %while_continue___1
  %dp37 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 13, !dbg !1160
  %20 = load double (i32, double*, double*)*, double (i32, double*, double*)** %dp37, align 8, !dbg !1160
  %vsize38 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1163
  %21 = load i32, i32* %vsize38, align 8, !dbg !1163
  %w39 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !1164
  %22 = load double**, double*** %w39, align 8, !dbg !1164
  %idx.ext40 = sext i32 %k.0 to i64, !dbg !1165
  %add.ptr41 = getelementptr inbounds double*, double** %22, i64 %idx.ext40, !dbg !1165
  %23 = load double*, double** %add.ptr41, align 8, !dbg !1166
  %call42 = call double %20(i32 %21, double* %w.0, double* %23), !dbg !1167
  %h = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1168
  %24 = load double**, double*** %h, align 8, !dbg !1168
  %first43 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1169
  %25 = load i32, i32* %first43, align 8, !dbg !1169
  %idx.ext44 = sext i32 %25 to i64, !dbg !1170
  %add.ptr45 = getelementptr inbounds double*, double** %24, i64 %idx.ext44, !dbg !1170
  %26 = load double*, double** %add.ptr45, align 8, !dbg !1171
  %idx.ext46 = sext i32 %k.0 to i64, !dbg !1172
  %add.ptr47 = getelementptr inbounds double, double* %26, i64 %idx.ext46, !dbg !1172
  store double %call42, double* %add.ptr47, align 8, !dbg !1173
  %next48 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1174
  %27 = load i32*, i32** %next48, align 8, !dbg !1174
  %idx.ext49 = sext i32 %k.0 to i64, !dbg !1175
  %add.ptr50 = getelementptr inbounds i32, i32* %27, i64 %idx.ext49, !dbg !1175
  %28 = load i32, i32* %add.ptr50, align 4, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %28, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body33, !dbg !1150, !llvm.loop !1177

while_break___15:                                 ; No predecessors!
  br label %while_break___1, !dbg !1179

while_break___1:                                  ; preds = %while_break___15, %if.then35
  call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()), !dbg !1063
  %h51 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1181
  %29 = load double**, double*** %h51, align 8, !dbg !1181
  %first52 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1182
  %30 = load i32, i32* %first52, align 8, !dbg !1182
  %idx.ext53 = sext i32 %30 to i64, !dbg !1183
  %add.ptr54 = getelementptr inbounds double*, double** %29, i64 %idx.ext53, !dbg !1183
  %31 = load double*, double** %add.ptr54, align 8, !dbg !1184
  %first55 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1185
  %32 = load i32, i32* %first55, align 8, !dbg !1185
  %idx.ext56 = sext i32 %32 to i64, !dbg !1186
  %add.ptr57 = getelementptr inbounds double, double* %31, i64 %idx.ext56, !dbg !1186
  store double 1.000000e+00, double* %add.ptr57, align 8, !dbg !1187
  %next58 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1188
  %33 = load i32*, i32** %next58, align 8, !dbg !1188
  %first59 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1189
  %34 = load i32, i32* %first59, align 8, !dbg !1189
  %idx.ext60 = sext i32 %34 to i64, !dbg !1190
  %add.ptr61 = getelementptr inbounds i32, i32* %33, i64 %idx.ext60, !dbg !1190
  %35 = load i32, i32* %add.ptr61, align 4, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %35, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body62, !dbg !1192

while.body62:                                     ; preds = %if.end160, %while_break___1
  %nvec.0 = phi i32 [ 1, %while_break___1 ], [ %nvec.1, %if.end160 ], !dbg !1128
  %k.1 = phi i32 [ %35, %while_break___1 ], [ %80, %if.end160 ], !dbg !1128
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !1149, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %nvec.0, metadata !1180, metadata !DIExpression()), !dbg !1063
  br label %while_continue___16, !dbg !1195

while_continue___16:                              ; preds = %while.body62
  br label %while_continue___2, !dbg !1195

while_continue___2:                               ; preds = %while_continue___16
  %cmp63 = icmp ne i32 %k.1, -1, !dbg !1196
  br i1 %cmp63, label %if.end65, label %if.then64, !dbg !1199

if.then64:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1200

if.end65:                                         ; preds = %while_continue___2
  %inc66 = add nsw i32 %nvec.0, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %inc66, metadata !1180, metadata !DIExpression()), !dbg !1063
  %mvec = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 3, !dbg !1203
  %36 = load i32, i32* %mvec, align 4, !dbg !1203
  %cmp67 = icmp sgt i32 %inc66, %36, !dbg !1205
  br i1 %cmp67, label %if.then68, label %if.end80, !dbg !1206

if.then68:                                        ; preds = %if.end65
  %free = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1207
  %37 = load i32, i32* %free, align 8, !dbg !1207
  %next69 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1209
  %38 = load i32*, i32** %next69, align 8, !dbg !1209
  %last = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1210
  %39 = load i32, i32* %last, align 4, !dbg !1210
  %idx.ext70 = sext i32 %39 to i64, !dbg !1211
  %add.ptr71 = getelementptr inbounds i32, i32* %38, i64 %idx.ext70, !dbg !1211
  store i32 %37, i32* %add.ptr71, align 4, !dbg !1212
  %free72 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1213
  store i32 %k.1, i32* %free72, align 8, !dbg !1214
  %prev = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1215
  %40 = load i32*, i32** %prev, align 8, !dbg !1215
  %idx.ext73 = sext i32 %k.1 to i64, !dbg !1216
  %add.ptr74 = getelementptr inbounds i32, i32* %40, i64 %idx.ext73, !dbg !1216
  %41 = load i32, i32* %add.ptr74, align 4, !dbg !1217
  %last75 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1218
  store i32 %41, i32* %last75, align 4, !dbg !1219
  %next76 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1220
  %42 = load i32*, i32** %next76, align 8, !dbg !1220
  %last77 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1221
  %43 = load i32, i32* %last77, align 4, !dbg !1221
  %idx.ext78 = sext i32 %43 to i64, !dbg !1222
  %add.ptr79 = getelementptr inbounds i32, i32* %42, i64 %idx.ext78, !dbg !1222
  store i32 -1, i32* %add.ptr79, align 4, !dbg !1223
  br label %while_break___2, !dbg !1224

if.end80:                                         ; preds = %if.end65
  %h81 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1225
  %44 = load double**, double*** %h81, align 8, !dbg !1225
  %idx.ext82 = sext i32 %k.1 to i64, !dbg !1226
  %add.ptr83 = getelementptr inbounds double*, double** %44, i64 %idx.ext82, !dbg !1226
  %45 = load double*, double** %add.ptr83, align 8, !dbg !1227
  call void @llvm.dbg.value(metadata double* %45, metadata !1228, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1229, metadata !DIExpression()), !dbg !1063
  %first84 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1230
  %46 = load i32, i32* %first84, align 8, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %46, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body86, !dbg !1231

while.body86:                                     ; preds = %while_break___4, %if.end80
  %hkk.0 = phi double [ 1.000000e+00, %if.end80 ], [ %sub115, %while_break___4 ], !dbg !1234
  %j.2 = phi i32 [ %46, %if.end80 ], [ %57, %while_break___4 ], !dbg !1234
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !1076, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double %hkk.0, metadata !1229, metadata !DIExpression()), !dbg !1063
  br label %while_continue___17, !dbg !1235

while_continue___17:                              ; preds = %while.body86
  br label %while_continue___3, !dbg !1235

while_continue___3:                               ; preds = %while_continue___17
  %cmp87 = icmp ne i32 %j.2, %k.1, !dbg !1236
  br i1 %cmp87, label %if.end89, label %if.then88, !dbg !1239

if.then88:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !1240

if.end89:                                         ; preds = %while_continue___3
  %h90 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1242
  %47 = load double**, double*** %h90, align 8, !dbg !1242
  %idx.ext91 = sext i32 %j.2 to i64, !dbg !1243
  %add.ptr92 = getelementptr inbounds double*, double** %47, i64 %idx.ext91, !dbg !1243
  %48 = load double*, double** %add.ptr92, align 8, !dbg !1244
  call void @llvm.dbg.value(metadata double* %48, metadata !1245, metadata !DIExpression()), !dbg !1063
  %idx.ext93 = sext i32 %k.1 to i64, !dbg !1246
  %add.ptr94 = getelementptr inbounds double, double* %48, i64 %idx.ext93, !dbg !1246
  %49 = load double, double* %add.ptr94, align 8, !dbg !1247
  call void @llvm.dbg.value(metadata double %49, metadata !1248, metadata !DIExpression()), !dbg !1063
  %first95 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1249
  %50 = load i32, i32* %first95, align 8, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %50, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body97, !dbg !1251

while.body97:                                     ; preds = %if.end100, %if.end89
  %hkj.0 = phi double [ %49, %if.end89 ], [ %sub105, %if.end100 ], !dbg !1254
  %i.0 = phi i32 [ %50, %if.end89 ], [ %54, %if.end100 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1250, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double %hkj.0, metadata !1248, metadata !DIExpression()), !dbg !1063
  br label %while_continue___18, !dbg !1255

while_continue___18:                              ; preds = %while.body97
  br label %while_continue___4, !dbg !1255

while_continue___4:                               ; preds = %while_continue___18
  %cmp98 = icmp ne i32 %i.0, %j.2, !dbg !1256
  br i1 %cmp98, label %if.end100, label %if.then99, !dbg !1259

if.then99:                                        ; preds = %while_continue___4
  br label %while_break___4, !dbg !1260

if.end100:                                        ; preds = %while_continue___4
  %idx.ext101 = sext i32 %i.0 to i64, !dbg !1262
  %add.ptr102 = getelementptr inbounds double, double* %45, i64 %idx.ext101, !dbg !1262
  %51 = load double, double* %add.ptr102, align 8, !dbg !1263
  %idx.ext103 = sext i32 %i.0 to i64, !dbg !1264
  %add.ptr104 = getelementptr inbounds double, double* %48, i64 %idx.ext103, !dbg !1264
  %52 = load double, double* %add.ptr104, align 8, !dbg !1265
  %mul = fmul double %51, %52, !dbg !1266
  %sub105 = fsub double %hkj.0, %mul, !dbg !1267
  call void @llvm.dbg.value(metadata double %sub105, metadata !1248, metadata !DIExpression()), !dbg !1063
  %next106 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1268
  %53 = load i32*, i32** %next106, align 8, !dbg !1268
  %idx.ext107 = sext i32 %i.0 to i64, !dbg !1269
  %add.ptr108 = getelementptr inbounds i32, i32* %53, i64 %idx.ext107, !dbg !1269
  %54 = load i32, i32* %add.ptr108, align 4, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %54, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body97, !dbg !1251, !llvm.loop !1270

while_break___18:                                 ; No predecessors!
  br label %while_break___4, !dbg !1272

while_break___4:                                  ; preds = %while_break___18, %if.then99
  %idx.ext109 = sext i32 %j.2 to i64, !dbg !1273
  %add.ptr110 = getelementptr inbounds double, double* %48, i64 %idx.ext109, !dbg !1273
  %55 = load double, double* %add.ptr110, align 8, !dbg !1274
  %div111 = fdiv double %hkj.0, %55, !dbg !1275
  call void @llvm.dbg.value(metadata double %div111, metadata !1248, metadata !DIExpression()), !dbg !1063
  %idx.ext112 = sext i32 %j.2 to i64, !dbg !1276
  %add.ptr113 = getelementptr inbounds double, double* %45, i64 %idx.ext112, !dbg !1276
  store double %div111, double* %add.ptr113, align 8, !dbg !1277
  %mul114 = fmul double %div111, %div111, !dbg !1278
  %sub115 = fsub double %hkk.0, %mul114, !dbg !1279
  call void @llvm.dbg.value(metadata double %sub115, metadata !1229, metadata !DIExpression()), !dbg !1063
  %next116 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1280
  %56 = load i32*, i32** %next116, align 8, !dbg !1280
  %idx.ext117 = sext i32 %j.2 to i64, !dbg !1281
  %add.ptr118 = getelementptr inbounds i32, i32* %56, i64 %idx.ext117, !dbg !1281
  %57 = load i32, i32* %add.ptr118, align 4, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %57, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body86, !dbg !1231, !llvm.loop !1282

while_break___17:                                 ; No predecessors!
  br label %while_break___3, !dbg !1284

while_break___3:                                  ; preds = %while_break___17, %if.then88
  %vtol = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 4, !dbg !1285
  %58 = load double, double* %vtol, align 8, !dbg !1285
  %59 = call double @llvm.pow.f64(double %58, double 2.000000e+00), !dbg !1288
  call void @llvm.dbg.value(metadata double %59, metadata !1289, metadata !DIExpression()), !dbg !1063
  %cmp119 = fcmp ogt double %hkk.0, %59, !dbg !1290
  br i1 %cmp119, label %if.then120, label %if.else, !dbg !1292

if.then120:                                       ; preds = %while_break___3
  %60 = call double @llvm.sqrt.f64(double %hkk.0), !dbg !1293
  %idx.ext121 = sext i32 %k.1 to i64, !dbg !1297
  %add.ptr122 = getelementptr inbounds double, double* %45, i64 %idx.ext121, !dbg !1297
  store double %60, double* %add.ptr122, align 8, !dbg !1298
  br label %if.end160, !dbg !1299

if.else:                                          ; preds = %while_break___3
  %next123 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1300
  %61 = load i32*, i32** %next123, align 8, !dbg !1300
  %idx.ext124 = sext i32 %k.1 to i64, !dbg !1302
  %add.ptr125 = getelementptr inbounds i32, i32* %61, i64 %idx.ext124, !dbg !1302
  %62 = load i32, i32* %add.ptr125, align 4, !dbg !1303
  %next126 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1304
  %63 = load i32*, i32** %next126, align 8, !dbg !1304
  %prev127 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1305
  %64 = load i32*, i32** %prev127, align 8, !dbg !1305
  %idx.ext128 = sext i32 %k.1 to i64, !dbg !1306
  %add.ptr129 = getelementptr inbounds i32, i32* %64, i64 %idx.ext128, !dbg !1306
  %65 = load i32, i32* %add.ptr129, align 4, !dbg !1307
  %idx.ext130 = sext i32 %65 to i64, !dbg !1308
  %add.ptr131 = getelementptr inbounds i32, i32* %63, i64 %idx.ext130, !dbg !1308
  store i32 %62, i32* %add.ptr131, align 4, !dbg !1309
  %next132 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1310
  %66 = load i32*, i32** %next132, align 8, !dbg !1310
  %idx.ext133 = sext i32 %k.1 to i64, !dbg !1312
  %add.ptr134 = getelementptr inbounds i32, i32* %66, i64 %idx.ext133, !dbg !1312
  %67 = load i32, i32* %add.ptr134, align 4, !dbg !1313
  %cmp135 = icmp eq i32 %67, -1, !dbg !1314
  br i1 %cmp135, label %if.then136, label %if.else141, !dbg !1315

if.then136:                                       ; preds = %if.else
  %prev137 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1316
  %68 = load i32*, i32** %prev137, align 8, !dbg !1316
  %idx.ext138 = sext i32 %k.1 to i64, !dbg !1318
  %add.ptr139 = getelementptr inbounds i32, i32* %68, i64 %idx.ext138, !dbg !1318
  %69 = load i32, i32* %add.ptr139, align 4, !dbg !1319
  %last140 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1320
  store i32 %69, i32* %last140, align 4, !dbg !1321
  br label %if.end151, !dbg !1322

if.else141:                                       ; preds = %if.else
  %prev142 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1323
  %70 = load i32*, i32** %prev142, align 8, !dbg !1323
  %idx.ext143 = sext i32 %k.1 to i64, !dbg !1325
  %add.ptr144 = getelementptr inbounds i32, i32* %70, i64 %idx.ext143, !dbg !1325
  %71 = load i32, i32* %add.ptr144, align 4, !dbg !1326
  %prev145 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1327
  %72 = load i32*, i32** %prev145, align 8, !dbg !1327
  %next146 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1328
  %73 = load i32*, i32** %next146, align 8, !dbg !1328
  %idx.ext147 = sext i32 %k.1 to i64, !dbg !1329
  %add.ptr148 = getelementptr inbounds i32, i32* %73, i64 %idx.ext147, !dbg !1329
  %74 = load i32, i32* %add.ptr148, align 4, !dbg !1330
  %idx.ext149 = sext i32 %74 to i64, !dbg !1331
  %add.ptr150 = getelementptr inbounds i32, i32* %72, i64 %idx.ext149, !dbg !1331
  store i32 %71, i32* %add.ptr150, align 4, !dbg !1332
  br label %if.end151

if.end151:                                        ; preds = %if.else141, %if.then136
  %free152 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1333
  %75 = load i32, i32* %free152, align 8, !dbg !1333
  %next153 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1334
  %76 = load i32*, i32** %next153, align 8, !dbg !1334
  %idx.ext154 = sext i32 %k.1 to i64, !dbg !1335
  %add.ptr155 = getelementptr inbounds i32, i32* %76, i64 %idx.ext154, !dbg !1335
  store i32 %75, i32* %add.ptr155, align 4, !dbg !1336
  %free156 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1337
  store i32 %k.1, i32* %free156, align 8, !dbg !1338
  %prev157 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1339
  %77 = load i32*, i32** %prev157, align 8, !dbg !1339
  %idx.ext158 = sext i32 %k.1 to i64, !dbg !1340
  %add.ptr159 = getelementptr inbounds i32, i32* %77, i64 %idx.ext158, !dbg !1340
  %78 = load i32, i32* %add.ptr159, align 4, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %78, metadata !1149, metadata !DIExpression()), !dbg !1063
  %dec = add nsw i32 %inc66, -1, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1180, metadata !DIExpression()), !dbg !1063
  br label %if.end160

if.end160:                                        ; preds = %if.end151, %if.then120
  %nvec.1 = phi i32 [ %inc66, %if.then120 ], [ %dec, %if.end151 ], !dbg !1234
  %k.2 = phi i32 [ %k.1, %if.then120 ], [ %78, %if.end151 ], !dbg !1128
  call void @llvm.dbg.value(metadata i32 %k.2, metadata !1149, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %nvec.1, metadata !1180, metadata !DIExpression()), !dbg !1063
  %next161 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1343
  %79 = load i32*, i32** %next161, align 8, !dbg !1343
  %idx.ext162 = sext i32 %k.2 to i64, !dbg !1344
  %add.ptr163 = getelementptr inbounds i32, i32* %79, i64 %idx.ext162, !dbg !1344
  %80 = load i32, i32* %add.ptr163, align 4, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %80, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body62, !dbg !1192, !llvm.loop !1345

while_break___16:                                 ; No predecessors!
  br label %while_break___2, !dbg !1347

while_break___2:                                  ; preds = %while_break___16, %if.then68, %if.then64
  %subspace = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 0, !dbg !1348
  store i32 1, i32* %subspace, align 8, !dbg !1349
  br label %if.end164, !dbg !1350

if.end164:                                        ; preds = %while_break___2, %if.end11
  %free165 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1351
  %81 = load i32, i32* %free165, align 8, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %81, metadata !1352, metadata !DIExpression()), !dbg !1063
  %next166 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1353
  %82 = load i32*, i32** %next166, align 8, !dbg !1353
  %free167 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1354
  %83 = load i32, i32* %free167, align 8, !dbg !1354
  %idx.ext168 = sext i32 %83 to i64, !dbg !1355
  %add.ptr169 = getelementptr inbounds i32, i32* %82, i64 %idx.ext168, !dbg !1355
  %84 = load i32, i32* %add.ptr169, align 4, !dbg !1356
  %free170 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1357
  store i32 %84, i32* %free170, align 8, !dbg !1358
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body171, !dbg !1359

while.body171:                                    ; preds = %if.end175, %if.end164
  %j.3 = phi i32 [ 0, %if.end164 ], [ %inc183, %if.end175 ], !dbg !1362
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___19, !dbg !1363

while_continue___19:                              ; preds = %while.body171
  br label %while_continue___5, !dbg !1363

while_continue___5:                               ; preds = %while_continue___19
  %vsize172 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1364
  %85 = load i32, i32* %vsize172, align 8, !dbg !1364
  %cmp173 = icmp slt i32 %j.3, %85, !dbg !1367
  br i1 %cmp173, label %if.end175, label %if.then174, !dbg !1368

if.then174:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !1369

if.end175:                                        ; preds = %while_continue___5
  %idx.ext176 = sext i32 %j.3 to i64, !dbg !1371
  %add.ptr177 = getelementptr inbounds double, double* %f, i64 %idx.ext176, !dbg !1371
  %86 = load double, double* %add.ptr177, align 8, !dbg !1372
  %w178 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !1373
  %87 = load double**, double*** %w178, align 8, !dbg !1373
  %idx.ext179 = sext i32 %81 to i64, !dbg !1374
  %add.ptr180 = getelementptr inbounds double*, double** %87, i64 %idx.ext179, !dbg !1374
  %88 = load double*, double** %add.ptr180, align 8, !dbg !1375
  %idx.ext181 = sext i32 %j.3 to i64, !dbg !1376
  %add.ptr182 = getelementptr inbounds double, double* %88, i64 %idx.ext181, !dbg !1376
  store double %86, double* %add.ptr182, align 8, !dbg !1377
  %inc183 = add nsw i32 %j.3, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %inc183, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body171, !dbg !1359, !llvm.loop !1379

while_break___19:                                 ; No predecessors!
  br label %while_break___5, !dbg !1381

while_break___5:                                  ; preds = %while_break___19, %if.then174
  %subspace184 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 0, !dbg !1382
  %89 = load i32, i32* %subspace184, align 8, !dbg !1382
  %tobool185 = icmp ne i32 %89, 0, !dbg !1384
  br i1 %tobool185, label %if.then186, label %if.end304, !dbg !1385

if.then186:                                       ; preds = %while_break___5
  %mvec187 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 3, !dbg !1386
  %90 = load i32, i32* %mvec187, align 4, !dbg !1386
  %add = add nsw i32 %90, 1, !dbg !1390
  %conv = sext i32 %add to i64, !dbg !1391
  %mul188 = mul i64 %conv, 8, !dbg !1392
  %call189 = call noalias i8* @malloc(i64 %mul188) #4, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %call189, metadata !1394, metadata !DIExpression()), !dbg !1063
  %91 = bitcast i8* %call189 to double*, !dbg !1395
  call void @llvm.dbg.value(metadata double* %91, metadata !1396, metadata !DIExpression()), !dbg !1063
  %first190 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1397
  %92 = load i32, i32* %first190, align 8, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %92, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body191, !dbg !1398

while.body191:                                    ; preds = %while_break___7, %if.then186
  %j.4 = phi i32 [ %92, %if.then186 ], [ %108, %while_break___7 ], !dbg !1401
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___20, !dbg !1402

while_continue___20:                              ; preds = %while.body191
  br label %while_continue___6, !dbg !1402

while_continue___6:                               ; preds = %while_continue___20
  %cmp192 = icmp ne i32 %j.4, -1, !dbg !1403
  br i1 %cmp192, label %if.end195, label %if.then194, !dbg !1406

if.then194:                                       ; preds = %while_continue___6
  br label %while_break___6, !dbg !1407

if.end195:                                        ; preds = %while_continue___6
  %dp196 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 13, !dbg !1409
  %93 = load double (i32, double*, double*)*, double (i32, double*, double*)** %dp196, align 8, !dbg !1409
  %vsize197 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1412
  %94 = load i32, i32* %vsize197, align 8, !dbg !1412
  %w198 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !1413
  %95 = load double**, double*** %w198, align 8, !dbg !1413
  %idx.ext199 = sext i32 %j.4 to i64, !dbg !1414
  %add.ptr200 = getelementptr inbounds double*, double** %95, i64 %idx.ext199, !dbg !1414
  %96 = load double*, double** %add.ptr200, align 8, !dbg !1415
  %call201 = call double %93(i32 %94, double* %f, double* %96), !dbg !1416
  call void @llvm.dbg.value(metadata double %call201, metadata !1417, metadata !DIExpression()), !dbg !1063
  %first202 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1418
  %97 = load i32, i32* %first202, align 8, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %97, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body204, !dbg !1419

while.body204:                                    ; preds = %if.end208, %if.end195
  %cj.0 = phi double [ %call201, %if.end195 ], [ %sub217, %if.end208 ], !dbg !1422
  %i.1 = phi i32 [ %97, %if.end195 ], [ %103, %if.end208 ], !dbg !1422
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1250, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double %cj.0, metadata !1417, metadata !DIExpression()), !dbg !1063
  br label %while_continue___21, !dbg !1423

while_continue___21:                              ; preds = %while.body204
  br label %while_continue___7, !dbg !1423

while_continue___7:                               ; preds = %while_continue___21
  %cmp205 = icmp ne i32 %i.1, %j.4, !dbg !1424
  br i1 %cmp205, label %if.end208, label %if.then207, !dbg !1427

if.then207:                                       ; preds = %while_continue___7
  br label %while_break___7, !dbg !1428

if.end208:                                        ; preds = %while_continue___7
  %h209 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1430
  %98 = load double**, double*** %h209, align 8, !dbg !1430
  %idx.ext210 = sext i32 %j.4 to i64, !dbg !1431
  %add.ptr211 = getelementptr inbounds double*, double** %98, i64 %idx.ext210, !dbg !1431
  %99 = load double*, double** %add.ptr211, align 8, !dbg !1432
  %idx.ext212 = sext i32 %i.1 to i64, !dbg !1433
  %add.ptr213 = getelementptr inbounds double, double* %99, i64 %idx.ext212, !dbg !1433
  %100 = load double, double* %add.ptr213, align 8, !dbg !1434
  %idx.ext214 = sext i32 %i.1 to i64, !dbg !1435
  %add.ptr215 = getelementptr inbounds double, double* %91, i64 %idx.ext214, !dbg !1435
  %101 = load double, double* %add.ptr215, align 8, !dbg !1436
  %mul216 = fmul double %100, %101, !dbg !1437
  %sub217 = fsub double %cj.0, %mul216, !dbg !1438
  call void @llvm.dbg.value(metadata double %sub217, metadata !1417, metadata !DIExpression()), !dbg !1063
  %next218 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1439
  %102 = load i32*, i32** %next218, align 8, !dbg !1439
  %idx.ext219 = sext i32 %i.1 to i64, !dbg !1440
  %add.ptr220 = getelementptr inbounds i32, i32* %102, i64 %idx.ext219, !dbg !1440
  %103 = load i32, i32* %add.ptr220, align 4, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %103, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body204, !dbg !1419, !llvm.loop !1441

while_break___21:                                 ; No predecessors!
  br label %while_break___7, !dbg !1443

while_break___7:                                  ; preds = %while_break___21, %if.then207
  %h221 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1444
  %104 = load double**, double*** %h221, align 8, !dbg !1444
  %idx.ext222 = sext i32 %j.4 to i64, !dbg !1445
  %add.ptr223 = getelementptr inbounds double*, double** %104, i64 %idx.ext222, !dbg !1445
  %105 = load double*, double** %add.ptr223, align 8, !dbg !1446
  %idx.ext224 = sext i32 %j.4 to i64, !dbg !1447
  %add.ptr225 = getelementptr inbounds double, double* %105, i64 %idx.ext224, !dbg !1447
  %106 = load double, double* %add.ptr225, align 8, !dbg !1448
  %div226 = fdiv double %cj.0, %106, !dbg !1449
  %idx.ext227 = sext i32 %j.4 to i64, !dbg !1450
  %add.ptr228 = getelementptr inbounds double, double* %91, i64 %idx.ext227, !dbg !1450
  store double %div226, double* %add.ptr228, align 8, !dbg !1451
  %next229 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1452
  %107 = load i32*, i32** %next229, align 8, !dbg !1452
  %idx.ext230 = sext i32 %j.4 to i64, !dbg !1453
  %add.ptr231 = getelementptr inbounds i32, i32* %107, i64 %idx.ext230, !dbg !1453
  %108 = load i32, i32* %add.ptr231, align 4, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %108, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body191, !dbg !1398, !llvm.loop !1454

while_break___20:                                 ; No predecessors!
  br label %while_break___6, !dbg !1456

while_break___6:                                  ; preds = %while_break___20, %if.then194
  %last232 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1457
  %109 = load i32, i32* %last232, align 4, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %109, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body233, !dbg !1458

while.body233:                                    ; preds = %while_break___9, %while_break___6
  %j.5 = phi i32 [ %109, %while_break___6 ], [ %122, %while_break___9 ], !dbg !1401
  call void @llvm.dbg.value(metadata i32 %j.5, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___22, !dbg !1461

while_continue___22:                              ; preds = %while.body233
  br label %while_continue___8, !dbg !1461

while_continue___8:                               ; preds = %while_continue___22
  %cmp234 = icmp ne i32 %j.5, -1, !dbg !1462
  br i1 %cmp234, label %if.end237, label %if.then236, !dbg !1465

if.then236:                                       ; preds = %while_continue___8
  br label %while_break___8, !dbg !1466

if.end237:                                        ; preds = %while_continue___8
  %idx.ext238 = sext i32 %j.5 to i64, !dbg !1468
  %add.ptr239 = getelementptr inbounds double, double* %91, i64 %idx.ext238, !dbg !1468
  %110 = load double, double* %add.ptr239, align 8, !dbg !1469
  call void @llvm.dbg.value(metadata double %110, metadata !1417, metadata !DIExpression()), !dbg !1063
  %last240 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1470
  %111 = load i32, i32* %last240, align 4, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %111, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body242, !dbg !1471

while.body242:                                    ; preds = %if.end246, %if.end237
  %cj.1 = phi double [ %110, %if.end237 ], [ %sub255, %if.end246 ], !dbg !1474
  %i.2 = phi i32 [ %111, %if.end237 ], [ %117, %if.end246 ], !dbg !1474
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !1250, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata double %cj.1, metadata !1417, metadata !DIExpression()), !dbg !1063
  br label %while_continue___23, !dbg !1475

while_continue___23:                              ; preds = %while.body242
  br label %while_continue___9, !dbg !1475

while_continue___9:                               ; preds = %while_continue___23
  %cmp243 = icmp ne i32 %i.2, %j.5, !dbg !1476
  br i1 %cmp243, label %if.end246, label %if.then245, !dbg !1479

if.then245:                                       ; preds = %while_continue___9
  br label %while_break___9, !dbg !1480

if.end246:                                        ; preds = %while_continue___9
  %h247 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1482
  %112 = load double**, double*** %h247, align 8, !dbg !1482
  %idx.ext248 = sext i32 %i.2 to i64, !dbg !1483
  %add.ptr249 = getelementptr inbounds double*, double** %112, i64 %idx.ext248, !dbg !1483
  %113 = load double*, double** %add.ptr249, align 8, !dbg !1484
  %idx.ext250 = sext i32 %j.5 to i64, !dbg !1485
  %add.ptr251 = getelementptr inbounds double, double* %113, i64 %idx.ext250, !dbg !1485
  %114 = load double, double* %add.ptr251, align 8, !dbg !1486
  %idx.ext252 = sext i32 %i.2 to i64, !dbg !1487
  %add.ptr253 = getelementptr inbounds double, double* %91, i64 %idx.ext252, !dbg !1487
  %115 = load double, double* %add.ptr253, align 8, !dbg !1488
  %mul254 = fmul double %114, %115, !dbg !1489
  %sub255 = fsub double %cj.1, %mul254, !dbg !1490
  call void @llvm.dbg.value(metadata double %sub255, metadata !1417, metadata !DIExpression()), !dbg !1063
  %prev256 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1491
  %116 = load i32*, i32** %prev256, align 8, !dbg !1491
  %idx.ext257 = sext i32 %i.2 to i64, !dbg !1492
  %add.ptr258 = getelementptr inbounds i32, i32* %116, i64 %idx.ext257, !dbg !1492
  %117 = load i32, i32* %add.ptr258, align 4, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %117, metadata !1250, metadata !DIExpression()), !dbg !1063
  br label %while.body242, !dbg !1471, !llvm.loop !1493

while_break___23:                                 ; No predecessors!
  br label %while_break___9, !dbg !1495

while_break___9:                                  ; preds = %while_break___23, %if.then245
  %h259 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 7, !dbg !1496
  %118 = load double**, double*** %h259, align 8, !dbg !1496
  %idx.ext260 = sext i32 %j.5 to i64, !dbg !1497
  %add.ptr261 = getelementptr inbounds double*, double** %118, i64 %idx.ext260, !dbg !1497
  %119 = load double*, double** %add.ptr261, align 8, !dbg !1498
  %idx.ext262 = sext i32 %j.5 to i64, !dbg !1499
  %add.ptr263 = getelementptr inbounds double, double* %119, i64 %idx.ext262, !dbg !1499
  %120 = load double, double* %add.ptr263, align 8, !dbg !1500
  %div264 = fdiv double %cj.1, %120, !dbg !1501
  %idx.ext265 = sext i32 %j.5 to i64, !dbg !1502
  %add.ptr266 = getelementptr inbounds double, double* %91, i64 %idx.ext265, !dbg !1502
  store double %div264, double* %add.ptr266, align 8, !dbg !1503
  %prev267 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1504
  %121 = load i32*, i32** %prev267, align 8, !dbg !1504
  %idx.ext268 = sext i32 %j.5 to i64, !dbg !1505
  %add.ptr269 = getelementptr inbounds i32, i32* %121, i64 %idx.ext268, !dbg !1505
  %122 = load i32, i32* %add.ptr269, align 4, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %122, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body233, !dbg !1458, !llvm.loop !1506

while_break___22:                                 ; No predecessors!
  br label %while_break___8, !dbg !1508

while_break___8:                                  ; preds = %while_break___22, %if.then236
  %first270 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1509
  %123 = load i32, i32* %first270, align 8, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %123, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body271, !dbg !1510

while.body271:                                    ; preds = %while_break___11, %while_break___8
  %k.3 = phi i32 [ %123, %while_break___8 ], [ %134, %while_break___11 ], !dbg !1401
  call void @llvm.dbg.value(metadata i32 %k.3, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while_continue___24, !dbg !1513

while_continue___24:                              ; preds = %while.body271
  br label %while_continue___10, !dbg !1513

while_continue___10:                              ; preds = %while_continue___24
  %cmp272 = icmp ne i32 %k.3, -1, !dbg !1514
  br i1 %cmp272, label %if.end275, label %if.then274, !dbg !1517

if.then274:                                       ; preds = %while_continue___10
  br label %while_break___10, !dbg !1518

if.end275:                                        ; preds = %while_continue___10
  %w276 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 6, !dbg !1520
  %124 = load double**, double*** %w276, align 8, !dbg !1520
  %idx.ext277 = sext i32 %k.3 to i64, !dbg !1521
  %add.ptr278 = getelementptr inbounds double*, double** %124, i64 %idx.ext277, !dbg !1521
  %125 = load double*, double** %add.ptr278, align 8, !dbg !1522
  call void @llvm.dbg.value(metadata double* %125, metadata !1075, metadata !DIExpression()), !dbg !1063
  %v279 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !1523
  %126 = load double**, double*** %v279, align 8, !dbg !1523
  %idx.ext280 = sext i32 %k.3 to i64, !dbg !1524
  %add.ptr281 = getelementptr inbounds double*, double** %126, i64 %idx.ext280, !dbg !1524
  %127 = load double*, double** %add.ptr281, align 8, !dbg !1525
  call void @llvm.dbg.value(metadata double* %127, metadata !1124, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body283, !dbg !1526

while.body283:                                    ; preds = %if.end288, %if.end275
  %j.6 = phi i32 [ 0, %if.end275 ], [ %inc300, %if.end288 ], !dbg !1529
  call void @llvm.dbg.value(metadata i32 %j.6, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___25, !dbg !1530

while_continue___25:                              ; preds = %while.body283
  br label %while_continue___11, !dbg !1530

while_continue___11:                              ; preds = %while_continue___25
  %vsize284 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1531
  %128 = load i32, i32* %vsize284, align 8, !dbg !1531
  %cmp285 = icmp slt i32 %j.6, %128, !dbg !1534
  br i1 %cmp285, label %if.end288, label %if.then287, !dbg !1535

if.then287:                                       ; preds = %while_continue___11
  br label %while_break___11, !dbg !1536

if.end288:                                        ; preds = %while_continue___11
  %idx.ext289 = sext i32 %k.3 to i64, !dbg !1538
  %add.ptr290 = getelementptr inbounds double, double* %91, i64 %idx.ext289, !dbg !1538
  %129 = load double, double* %add.ptr290, align 8, !dbg !1539
  %idx.ext291 = sext i32 %j.6 to i64, !dbg !1540
  %add.ptr292 = getelementptr inbounds double, double* %127, i64 %idx.ext291, !dbg !1540
  %130 = load double, double* %add.ptr292, align 8, !dbg !1541
  %idx.ext293 = sext i32 %j.6 to i64, !dbg !1542
  %add.ptr294 = getelementptr inbounds double, double* %125, i64 %idx.ext293, !dbg !1542
  %131 = load double, double* %add.ptr294, align 8, !dbg !1543
  %sub295 = fsub double %130, %131, !dbg !1544
  %mul296 = fmul double %129, %sub295, !dbg !1545
  %idx.ext297 = sext i32 %j.6 to i64, !dbg !1546
  %add.ptr298 = getelementptr inbounds double, double* %f, i64 %idx.ext297, !dbg !1546
  %132 = load double, double* %add.ptr298, align 8, !dbg !1547
  %add299 = fadd double %132, %mul296, !dbg !1547
  store double %add299, double* %add.ptr298, align 8, !dbg !1547
  %inc300 = add nsw i32 %j.6, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %inc300, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body283, !dbg !1526, !llvm.loop !1549

while_break___25:                                 ; No predecessors!
  br label %while_break___11, !dbg !1551

while_break___11:                                 ; preds = %while_break___25, %if.then287
  %next301 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1552
  %133 = load i32*, i32** %next301, align 8, !dbg !1552
  %idx.ext302 = sext i32 %k.3 to i64, !dbg !1553
  %add.ptr303 = getelementptr inbounds i32, i32* %133, i64 %idx.ext302, !dbg !1553
  %134 = load i32, i32* %add.ptr303, align 4, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %134, metadata !1149, metadata !DIExpression()), !dbg !1063
  br label %while.body271, !dbg !1510, !llvm.loop !1554

while_break___24:                                 ; No predecessors!
  br label %while_break___10, !dbg !1556

while_break___10:                                 ; preds = %while_break___24, %if.then274
  %135 = bitcast double* %91 to i8*, !dbg !1557
  call void @free(i8* %135) #4, !dbg !1560
  br label %if.end304, !dbg !1561

if.end304:                                        ; preds = %while_break___10, %while_break___5
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body305, !dbg !1562

while.body305:                                    ; preds = %if.end310, %if.end304
  %j.7 = phi i32 [ 0, %if.end304 ], [ %inc318, %if.end310 ], !dbg !1362
  call void @llvm.dbg.value(metadata i32 %j.7, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while_continue___26, !dbg !1565

while_continue___26:                              ; preds = %while.body305
  br label %while_continue___12, !dbg !1565

while_continue___12:                              ; preds = %while_continue___26
  %vsize306 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 2, !dbg !1566
  %136 = load i32, i32* %vsize306, align 8, !dbg !1566
  %cmp307 = icmp slt i32 %j.7, %136, !dbg !1569
  br i1 %cmp307, label %if.end310, label %if.then309, !dbg !1570

if.then309:                                       ; preds = %while_continue___12
  br label %while_break___12, !dbg !1571

if.end310:                                        ; preds = %while_continue___12
  %idx.ext311 = sext i32 %j.7 to i64, !dbg !1573
  %add.ptr312 = getelementptr inbounds double, double* %f, i64 %idx.ext311, !dbg !1573
  %137 = load double, double* %add.ptr312, align 8, !dbg !1574
  %v313 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 5, !dbg !1575
  %138 = load double**, double*** %v313, align 8, !dbg !1575
  %idx.ext314 = sext i32 %81 to i64, !dbg !1576
  %add.ptr315 = getelementptr inbounds double*, double** %138, i64 %idx.ext314, !dbg !1576
  %139 = load double*, double** %add.ptr315, align 8, !dbg !1577
  %idx.ext316 = sext i32 %j.7 to i64, !dbg !1578
  %add.ptr317 = getelementptr inbounds double, double* %139, i64 %idx.ext316, !dbg !1578
  store double %137, double* %add.ptr317, align 8, !dbg !1579
  %inc318 = add nsw i32 %j.7, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %inc318, metadata !1076, metadata !DIExpression()), !dbg !1063
  br label %while.body305, !dbg !1562, !llvm.loop !1581

while_break___26:                                 ; No predecessors!
  br label %while_break___12, !dbg !1583

while_break___12:                                 ; preds = %while_break___26, %if.then309
  %prev319 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1584
  %140 = load i32*, i32** %prev319, align 8, !dbg !1584
  %idx.ext320 = sext i32 %81 to i64, !dbg !1585
  %add.ptr321 = getelementptr inbounds i32, i32* %140, i64 %idx.ext320, !dbg !1585
  store i32 -1, i32* %add.ptr321, align 4, !dbg !1586
  %first322 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1587
  %141 = load i32, i32* %first322, align 8, !dbg !1587
  %next323 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1588
  %142 = load i32*, i32** %next323, align 8, !dbg !1588
  %idx.ext324 = sext i32 %81 to i64, !dbg !1589
  %add.ptr325 = getelementptr inbounds i32, i32* %142, i64 %idx.ext324, !dbg !1589
  store i32 %141, i32* %add.ptr325, align 4, !dbg !1590
  %first326 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1591
  %143 = load i32, i32* %first326, align 8, !dbg !1591
  %cmp327 = icmp eq i32 %143, -1, !dbg !1593
  br i1 %cmp327, label %if.then329, label %if.else331, !dbg !1594

if.then329:                                       ; preds = %while_break___12
  %last330 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1595
  store i32 %81, i32* %last330, align 4, !dbg !1597
  br label %if.end336, !dbg !1598

if.else331:                                       ; preds = %while_break___12
  %prev332 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1599
  %144 = load i32*, i32** %prev332, align 8, !dbg !1599
  %first333 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1601
  %145 = load i32, i32* %first333, align 8, !dbg !1601
  %idx.ext334 = sext i32 %145 to i64, !dbg !1602
  %add.ptr335 = getelementptr inbounds i32, i32* %144, i64 %idx.ext334, !dbg !1602
  store i32 %81, i32* %add.ptr335, align 4, !dbg !1603
  br label %if.end336

if.end336:                                        ; preds = %if.else331, %if.then329
  %first337 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1604
  store i32 %81, i32* %first337, align 8, !dbg !1605
  %pending338 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1606
  store i32 1, i32* %pending338, align 4, !dbg !1607
  ret void, !dbg !1608
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: noinline nounwind ssp uwtable
define void @update_system(%struct.__anonstruct_SYSTEM_24* %sys, double* %upad) #0 !dbg !1609 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_SYSTEM_24* %sys, metadata !1612, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %upad, metadata !1614, metadata !DIExpression()), !dbg !1613
  %nx1 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 0, !dbg !1615
  %0 = load i32, i32* %nx1, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %0, metadata !1617, metadata !DIExpression()), !dbg !1613
  %ny2 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 1, !dbg !1618
  %1 = load i32, i32* %ny2, align 4, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %1, metadata !1619, metadata !DIExpression()), !dbg !1613
  %hx = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 3, !dbg !1620
  %2 = load double, double* %hx, align 8, !dbg !1620
  %hy = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 4, !dbg !1621
  %3 = load double, double* %hy, align 8, !dbg !1621
  %div = fdiv double %2, %3, !dbg !1622
  call void @llvm.dbg.value(metadata double %div, metadata !1623, metadata !DIExpression()), !dbg !1613
  %hy3 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 4, !dbg !1624
  %4 = load double, double* %hy3, align 8, !dbg !1624
  %hx4 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 3, !dbg !1625
  %5 = load double, double* %hx4, align 8, !dbg !1625
  %div5 = fdiv double %4, %5, !dbg !1626
  call void @llvm.dbg.value(metadata double %div5, metadata !1627, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 0, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body, !dbg !1629

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while_continue___7, !dbg !1633

while_continue___7:                               ; preds = %while.body
  br label %while_continue, !dbg !1633

while_continue:                                   ; preds = %while_continue___7
  %add = add nsw i32 %0, 1, !dbg !1634
  %mul = mul nsw i32 %1, %add, !dbg !1637
  %cmp = icmp slt i32 %i.0, %mul, !dbg !1638
  br i1 %cmp, label %if.end, label %if.then, !dbg !1639

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1640

if.end:                                           ; preds = %while_continue
  %ax6 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !1642
  %6 = load double*, double** %ax6, align 8, !dbg !1642
  %idx.ext = sext i32 %i.0 to i64, !dbg !1643
  %add.ptr = getelementptr inbounds double, double* %6, i64 %idx.ext, !dbg !1643
  store double 0.000000e+00, double* %add.ptr, align 8, !dbg !1644
  %inc = add nsw i32 %i.0, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body, !dbg !1629, !llvm.loop !1646

while_break___7:                                  ; No predecessors!
  br label %while_break, !dbg !1648

while_break:                                      ; preds = %while_break___7, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body7, !dbg !1649

while.body7:                                      ; preds = %if.end12, %while_break
  %i.1 = phi i32 [ 0, %while_break ], [ %inc16, %if.end12 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while_continue___8, !dbg !1652

while_continue___8:                               ; preds = %while.body7
  br label %while_continue___0, !dbg !1652

while_continue___0:                               ; preds = %while_continue___8
  %add8 = add nsw i32 %1, 1, !dbg !1653
  %mul9 = mul nsw i32 %0, %add8, !dbg !1656
  %cmp10 = icmp slt i32 %i.1, %mul9, !dbg !1657
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !1658

if.then11:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1659

if.end12:                                         ; preds = %while_continue___0
  %ay13 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !1661
  %7 = load double*, double** %ay13, align 8, !dbg !1661
  %idx.ext14 = sext i32 %i.1 to i64, !dbg !1662
  %add.ptr15 = getelementptr inbounds double, double* %7, i64 %idx.ext14, !dbg !1662
  store double 0.000000e+00, double* %add.ptr15, align 8, !dbg !1663
  %inc16 = add nsw i32 %i.1, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body7, !dbg !1649, !llvm.loop !1665

while_break___8:                                  ; No predecessors!
  br label %while_break___0, !dbg !1667

while_break___0:                                  ; preds = %while_break___8, %if.then11
  %ax17 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !1668
  %8 = load double*, double** %ax17, align 8, !dbg !1668
  call void @llvm.dbg.value(metadata double* %8, metadata !1669, metadata !DIExpression()), !dbg !1613
  %ay18 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !1670
  %9 = load double*, double** %ay18, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata double* %9, metadata !1671, metadata !DIExpression()), !dbg !1613
  %add19 = add nsw i32 %0, 2, !dbg !1672
  %idx.ext20 = sext i32 %add19 to i64, !dbg !1673
  %add.ptr21 = getelementptr inbounds double, double* %upad, i64 %idx.ext20, !dbg !1673
  call void @llvm.dbg.value(metadata double* %add.ptr21, metadata !1674, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()), !dbg !1613
  br label %while.body22, !dbg !1676

while.body22:                                     ; preds = %while_break___2, %while_break___0
  %u.0 = phi double* [ %add.ptr21, %while_break___0 ], [ %incdec.ptr51, %while_break___2 ], !dbg !1632
  %ax.0 = phi double* [ %8, %while_break___0 ], [ %incdec.ptr52, %while_break___2 ], !dbg !1632
  %k.0 = phi i32 [ 0, %while_break___0 ], [ %inc53, %while_break___2 ], !dbg !1632
  %ay.0 = phi double* [ %9, %while_break___0 ], [ %ay.1, %while_break___2 ], !dbg !1679
  call void @llvm.dbg.value(metadata double* %ay.0, metadata !1671, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1675, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ax.0, metadata !1669, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %u.0, metadata !1674, metadata !DIExpression()), !dbg !1613
  br label %while_continue___9, !dbg !1680

while_continue___9:                               ; preds = %while.body22
  br label %while_continue___1, !dbg !1680

while_continue___1:                               ; preds = %while_continue___9
  %cmp23 = icmp slt i32 %k.0, %1, !dbg !1681
  br i1 %cmp23, label %if.end25, label %if.then24, !dbg !1684

if.then24:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1685

if.end25:                                         ; preds = %while_continue___1
  %incdec.ptr = getelementptr inbounds double, double* %u.0, i32 1, !dbg !1687
  call void @llvm.dbg.value(metadata double* %incdec.ptr, metadata !1674, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1613
  br label %while.body27, !dbg !1689

while.body27:                                     ; preds = %if.end30, %if.end25
  %u.1 = phi double* [ %incdec.ptr, %if.end25 ], [ %incdec.ptr49, %if.end30 ], !dbg !1692
  %ax.1 = phi double* [ %ax.0, %if.end25 ], [ %incdec.ptr47, %if.end30 ], !dbg !1632
  %j.0 = phi i32 [ 0, %if.end25 ], [ %inc50, %if.end30 ], !dbg !1692
  %ay.1 = phi double* [ %ay.0, %if.end25 ], [ %incdec.ptr48, %if.end30 ], !dbg !1632
  call void @llvm.dbg.value(metadata double* %ay.1, metadata !1671, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1688, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ax.1, metadata !1669, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %u.1, metadata !1674, metadata !DIExpression()), !dbg !1613
  br label %while_continue___10, !dbg !1693

while_continue___10:                              ; preds = %while.body27
  br label %while_continue___2, !dbg !1693

while_continue___2:                               ; preds = %while_continue___10
  %cmp28 = icmp slt i32 %j.0, %0, !dbg !1694
  br i1 %cmp28, label %if.end30, label %if.then29, !dbg !1697

if.then29:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1698

if.end30:                                         ; preds = %while_continue___2
  %a = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 2, !dbg !1700
  %10 = load double, double* %a, align 8, !dbg !1700
  %add.ptr31 = getelementptr inbounds double, double* %u.1, i64 0, !dbg !1701
  %11 = load double, double* %add.ptr31, align 8, !dbg !1702
  %add32 = fadd double %10, %11, !dbg !1703
  %div33 = fdiv double 1.000000e+00, %add32, !dbg !1704
  call void @llvm.dbg.value(metadata double %div33, metadata !1705, metadata !DIExpression()), !dbg !1613
  %mul34 = fmul double %div, %div33, !dbg !1706
  %add.ptr35 = getelementptr inbounds double, double* %ax.1, i64 0, !dbg !1707
  %12 = load double, double* %add.ptr35, align 8, !dbg !1708
  %add36 = fadd double %12, %mul34, !dbg !1708
  store double %add36, double* %add.ptr35, align 8, !dbg !1708
  %mul37 = fmul double %div, %div33, !dbg !1709
  %add.ptr38 = getelementptr inbounds double, double* %ax.1, i64 1, !dbg !1710
  %13 = load double, double* %add.ptr38, align 8, !dbg !1711
  %add39 = fadd double %13, %mul37, !dbg !1711
  store double %add39, double* %add.ptr38, align 8, !dbg !1711
  %mul40 = fmul double %div5, %div33, !dbg !1712
  %add.ptr41 = getelementptr inbounds double, double* %ay.1, i64 0, !dbg !1713
  %14 = load double, double* %add.ptr41, align 8, !dbg !1714
  %add42 = fadd double %14, %mul40, !dbg !1714
  store double %add42, double* %add.ptr41, align 8, !dbg !1714
  %mul43 = fmul double %div5, %div33, !dbg !1715
  %idx.ext44 = sext i32 %0 to i64, !dbg !1716
  %add.ptr45 = getelementptr inbounds double, double* %ay.1, i64 %idx.ext44, !dbg !1716
  %15 = load double, double* %add.ptr45, align 8, !dbg !1717
  %add46 = fadd double %15, %mul43, !dbg !1717
  store double %add46, double* %add.ptr45, align 8, !dbg !1717
  %incdec.ptr47 = getelementptr inbounds double, double* %ax.1, i32 1, !dbg !1718
  call void @llvm.dbg.value(metadata double* %incdec.ptr47, metadata !1669, metadata !DIExpression()), !dbg !1613
  %incdec.ptr48 = getelementptr inbounds double, double* %ay.1, i32 1, !dbg !1719
  call void @llvm.dbg.value(metadata double* %incdec.ptr48, metadata !1671, metadata !DIExpression()), !dbg !1613
  %incdec.ptr49 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !1720
  call void @llvm.dbg.value(metadata double* %incdec.ptr49, metadata !1674, metadata !DIExpression()), !dbg !1613
  %inc50 = add nsw i32 %j.0, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !1688, metadata !DIExpression()), !dbg !1613
  br label %while.body27, !dbg !1689, !llvm.loop !1722

while_break___10:                                 ; No predecessors!
  br label %while_break___2, !dbg !1724

while_break___2:                                  ; preds = %while_break___10, %if.then29
  %incdec.ptr51 = getelementptr inbounds double, double* %u.1, i32 1, !dbg !1725
  call void @llvm.dbg.value(metadata double* %incdec.ptr51, metadata !1674, metadata !DIExpression()), !dbg !1613
  %incdec.ptr52 = getelementptr inbounds double, double* %ax.1, i32 1, !dbg !1726
  call void @llvm.dbg.value(metadata double* %incdec.ptr52, metadata !1669, metadata !DIExpression()), !dbg !1613
  %inc53 = add nsw i32 %k.0, 1, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !1675, metadata !DIExpression()), !dbg !1613
  br label %while.body22, !dbg !1676, !llvm.loop !1728

while_break___9:                                  ; No predecessors!
  br label %while_break___1, !dbg !1730

while_break___1:                                  ; preds = %while_break___9, %if.then24
  call void @llvm.dbg.value(metadata i32 0, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body54, !dbg !1731

while.body54:                                     ; preds = %if.end59, %while_break___1
  %i.2 = phi i32 [ 0, %while_break___1 ], [ %inc67, %if.end59 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while_continue___11, !dbg !1734

while_continue___11:                              ; preds = %while.body54
  br label %while_continue___3, !dbg !1734

while_continue___3:                               ; preds = %while_continue___11
  %add55 = add nsw i32 %0, 1, !dbg !1735
  %mul56 = mul nsw i32 %1, %add55, !dbg !1738
  %cmp57 = icmp slt i32 %i.2, %mul56, !dbg !1739
  br i1 %cmp57, label %if.end59, label %if.then58, !dbg !1740

if.then58:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !1741

if.end59:                                         ; preds = %while_continue___3
  %ax60 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !1743
  %16 = load double*, double** %ax60, align 8, !dbg !1743
  %idx.ext61 = sext i32 %i.2 to i64, !dbg !1744
  %add.ptr62 = getelementptr inbounds double, double* %16, i64 %idx.ext61, !dbg !1744
  %17 = load double, double* %add.ptr62, align 8, !dbg !1745
  %div63 = fdiv double 2.000000e+00, %17, !dbg !1746
  %ax64 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !1747
  %18 = load double*, double** %ax64, align 8, !dbg !1747
  %idx.ext65 = sext i32 %i.2 to i64, !dbg !1748
  %add.ptr66 = getelementptr inbounds double, double* %18, i64 %idx.ext65, !dbg !1748
  store double %div63, double* %add.ptr66, align 8, !dbg !1749
  %inc67 = add nsw i32 %i.2, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %inc67, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body54, !dbg !1731, !llvm.loop !1751

while_break___11:                                 ; No predecessors!
  br label %while_break___3, !dbg !1753

while_break___3:                                  ; preds = %while_break___11, %if.then58
  call void @llvm.dbg.value(metadata i32 0, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body68, !dbg !1754

while.body68:                                     ; preds = %if.end73, %while_break___3
  %i.3 = phi i32 [ 0, %while_break___3 ], [ %inc81, %if.end73 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while_continue___12, !dbg !1757

while_continue___12:                              ; preds = %while.body68
  br label %while_continue___4, !dbg !1757

while_continue___4:                               ; preds = %while_continue___12
  %add69 = add nsw i32 %1, 1, !dbg !1758
  %mul70 = mul nsw i32 %0, %add69, !dbg !1761
  %cmp71 = icmp slt i32 %i.3, %mul70, !dbg !1762
  br i1 %cmp71, label %if.end73, label %if.then72, !dbg !1763

if.then72:                                        ; preds = %while_continue___4
  br label %while_break___4, !dbg !1764

if.end73:                                         ; preds = %while_continue___4
  %ay74 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !1766
  %19 = load double*, double** %ay74, align 8, !dbg !1766
  %idx.ext75 = sext i32 %i.3 to i64, !dbg !1767
  %add.ptr76 = getelementptr inbounds double, double* %19, i64 %idx.ext75, !dbg !1767
  %20 = load double, double* %add.ptr76, align 8, !dbg !1768
  %div77 = fdiv double 2.000000e+00, %20, !dbg !1769
  %ay78 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !1770
  %21 = load double*, double** %ay78, align 8, !dbg !1770
  %idx.ext79 = sext i32 %i.3 to i64, !dbg !1771
  %add.ptr80 = getelementptr inbounds double, double* %21, i64 %idx.ext79, !dbg !1771
  store double %div77, double* %add.ptr80, align 8, !dbg !1772
  %inc81 = add nsw i32 %i.3, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %inc81, metadata !1628, metadata !DIExpression()), !dbg !1613
  br label %while.body68, !dbg !1754, !llvm.loop !1774

while_break___12:                                 ; No predecessors!
  br label %while_break___4, !dbg !1776

while_break___4:                                  ; preds = %while_break___12, %if.then72
  %ac82 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 7, !dbg !1777
  %22 = load double*, double** %ac82, align 8, !dbg !1777
  call void @llvm.dbg.value(metadata double* %22, metadata !1778, metadata !DIExpression()), !dbg !1613
  %ax83 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 5, !dbg !1779
  %23 = load double*, double** %ax83, align 8, !dbg !1779
  call void @llvm.dbg.value(metadata double* %23, metadata !1669, metadata !DIExpression()), !dbg !1613
  %ay84 = getelementptr inbounds %struct.__anonstruct_SYSTEM_24, %struct.__anonstruct_SYSTEM_24* %sys, i32 0, i32 6, !dbg !1780
  %24 = load double*, double** %ay84, align 8, !dbg !1780
  call void @llvm.dbg.value(metadata double* %24, metadata !1671, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()), !dbg !1613
  br label %while.body85, !dbg !1781

while.body85:                                     ; preds = %while_break___6, %while_break___4
  %ax.2 = phi double* [ %23, %while_break___4 ], [ %incdec.ptr107, %while_break___6 ], !dbg !1632
  %k.1 = phi i32 [ 0, %while_break___4 ], [ %inc108, %while_break___6 ], !dbg !1632
  %ay.2 = phi double* [ %24, %while_break___4 ], [ %ay.3, %while_break___6 ], !dbg !1784
  %ac.0 = phi double* [ %22, %while_break___4 ], [ %ac.1, %while_break___6 ], !dbg !1785
  call void @llvm.dbg.value(metadata double* %ac.0, metadata !1778, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ay.2, metadata !1671, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !1675, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ax.2, metadata !1669, metadata !DIExpression()), !dbg !1613
  br label %while_continue___13, !dbg !1786

while_continue___13:                              ; preds = %while.body85
  br label %while_continue___5, !dbg !1786

while_continue___5:                               ; preds = %while_continue___13
  %cmp86 = icmp slt i32 %k.1, %1, !dbg !1787
  br i1 %cmp86, label %if.end88, label %if.then87, !dbg !1790

if.then87:                                        ; preds = %while_continue___5
  br label %while_break___5, !dbg !1791

if.end88:                                         ; preds = %while_continue___5
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1613
  br label %while.body90, !dbg !1793

while.body90:                                     ; preds = %if.end93, %if.end88
  %ax.3 = phi double* [ %ax.2, %if.end88 ], [ %incdec.ptr104, %if.end93 ], !dbg !1632
  %j.1 = phi i32 [ 0, %if.end88 ], [ %inc106, %if.end93 ], !dbg !1796
  %ay.3 = phi double* [ %ay.2, %if.end88 ], [ %incdec.ptr105, %if.end93 ], !dbg !1632
  %ac.1 = phi double* [ %ac.0, %if.end88 ], [ %incdec.ptr103, %if.end93 ], !dbg !1632
  call void @llvm.dbg.value(metadata double* %ac.1, metadata !1778, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ay.3, metadata !1671, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !1688, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata double* %ax.3, metadata !1669, metadata !DIExpression()), !dbg !1613
  br label %while_continue___14, !dbg !1797

while_continue___14:                              ; preds = %while.body90
  br label %while_continue___6, !dbg !1797

while_continue___6:                               ; preds = %while_continue___14
  %cmp91 = icmp slt i32 %j.1, %0, !dbg !1798
  br i1 %cmp91, label %if.end93, label %if.then92, !dbg !1801

if.then92:                                        ; preds = %while_continue___6
  br label %while_break___6, !dbg !1802

if.end93:                                         ; preds = %while_continue___6
  %add.ptr94 = getelementptr inbounds double, double* %ax.3, i64 0, !dbg !1804
  %25 = load double, double* %add.ptr94, align 8, !dbg !1805
  %add.ptr95 = getelementptr inbounds double, double* %ax.3, i64 1, !dbg !1806
  %26 = load double, double* %add.ptr95, align 8, !dbg !1807
  %add96 = fadd double %25, %26, !dbg !1808
  %add.ptr97 = getelementptr inbounds double, double* %ay.3, i64 0, !dbg !1809
  %27 = load double, double* %add.ptr97, align 8, !dbg !1810
  %add98 = fadd double %add96, %27, !dbg !1811
  %idx.ext99 = sext i32 %0 to i64, !dbg !1812
  %add.ptr100 = getelementptr inbounds double, double* %ay.3, i64 %idx.ext99, !dbg !1812
  %28 = load double, double* %add.ptr100, align 8, !dbg !1813
  %add101 = fadd double %add98, %28, !dbg !1814
  %add.ptr102 = getelementptr inbounds double, double* %ac.1, i64 0, !dbg !1815
  store double %add101, double* %add.ptr102, align 8, !dbg !1816
  %incdec.ptr103 = getelementptr inbounds double, double* %ac.1, i32 1, !dbg !1817
  call void @llvm.dbg.value(metadata double* %incdec.ptr103, metadata !1778, metadata !DIExpression()), !dbg !1613
  %incdec.ptr104 = getelementptr inbounds double, double* %ax.3, i32 1, !dbg !1818
  call void @llvm.dbg.value(metadata double* %incdec.ptr104, metadata !1669, metadata !DIExpression()), !dbg !1613
  %incdec.ptr105 = getelementptr inbounds double, double* %ay.3, i32 1, !dbg !1819
  call void @llvm.dbg.value(metadata double* %incdec.ptr105, metadata !1671, metadata !DIExpression()), !dbg !1613
  %inc106 = add nsw i32 %j.1, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !1688, metadata !DIExpression()), !dbg !1613
  br label %while.body90, !dbg !1793, !llvm.loop !1821

while_break___14:                                 ; No predecessors!
  br label %while_break___6, !dbg !1823

while_break___6:                                  ; preds = %while_break___14, %if.then92
  %incdec.ptr107 = getelementptr inbounds double, double* %ax.3, i32 1, !dbg !1824
  call void @llvm.dbg.value(metadata double* %incdec.ptr107, metadata !1669, metadata !DIExpression()), !dbg !1613
  %inc108 = add nsw i32 %k.1, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %inc108, metadata !1675, metadata !DIExpression()), !dbg !1613
  br label %while.body85, !dbg !1781, !llvm.loop !1826

while_break___13:                                 ; No predecessors!
  br label %while_break___5, !dbg !1828

while_break___5:                                  ; preds = %while_break___13, %if.then87
  ret void, !dbg !1829
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: noinline nounwind ssp uwtable
define double @dot_product(i32 %len, double* %a, double* %b) #0 !dbg !1830 {
entry:
  call void @llvm.dbg.value(metadata i32 %len, metadata !1831, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata double* %a, metadata !1833, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata double* %b, metadata !1834, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1835, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 0, metadata !1836, metadata !DIExpression()), !dbg !1832
  br label %while.body, !dbg !1837

while.body:                                       ; preds = %if.end, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1841
  %s.0 = phi double [ 0.000000e+00, %entry ], [ %add, %if.end ], !dbg !1841
  call void @llvm.dbg.value(metadata double %s.0, metadata !1835, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1836, metadata !DIExpression()), !dbg !1832
  br label %while_continue___0, !dbg !1842

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1842

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %j.0, %len, !dbg !1843
  br i1 %cmp, label %if.end, label %if.then, !dbg !1846

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1847

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %j.0 to i64, !dbg !1849
  %add.ptr = getelementptr inbounds double, double* %a, i64 %idx.ext, !dbg !1849
  %0 = load double, double* %add.ptr, align 8, !dbg !1850
  %idx.ext1 = sext i32 %j.0 to i64, !dbg !1851
  %add.ptr2 = getelementptr inbounds double, double* %b, i64 %idx.ext1, !dbg !1851
  %1 = load double, double* %add.ptr2, align 8, !dbg !1852
  %mul = fmul double %0, %1, !dbg !1853
  %add = fadd double %s.0, %mul, !dbg !1854
  call void @llvm.dbg.value(metadata double %add, metadata !1835, metadata !DIExpression()), !dbg !1832
  %inc = add nsw i32 %j.0, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1836, metadata !DIExpression()), !dbg !1832
  br label %while.body, !dbg !1837, !llvm.loop !1856

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1858

while_break:                                      ; preds = %while_break___0, %if.then
  ret double %s.0, !dbg !1859
}

; Function Attrs: noinline nounwind ssp uwtable
define void @nka_restart(%struct.nka_state* %state) #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata %struct.nka_state* %state, metadata !1861, metadata !DIExpression()), !dbg !1862
  %first = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1863
  store i32 -1, i32* %first, align 8, !dbg !1865
  %last = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1866
  store i32 -1, i32* %last, align 4, !dbg !1867
  %subspace = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 0, !dbg !1868
  store i32 0, i32* %subspace, align 8, !dbg !1869
  %pending = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1870
  store i32 0, i32* %pending, align 4, !dbg !1871
  %free = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1872
  store i32 0, i32* %free, align 8, !dbg !1873
  call void @llvm.dbg.value(metadata i32 0, metadata !1874, metadata !DIExpression()), !dbg !1862
  br label %while.body, !dbg !1875

while.body:                                       ; preds = %if.end, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1878
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1874, metadata !DIExpression()), !dbg !1862
  br label %while_continue___0, !dbg !1879

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1879

while_continue:                                   ; preds = %while_continue___0
  %mvec = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 3, !dbg !1880
  %0 = load i32, i32* %mvec, align 4, !dbg !1880
  %cmp = icmp slt i32 %k.0, %0, !dbg !1883
  br i1 %cmp, label %if.end, label %if.then, !dbg !1884

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1885

if.end:                                           ; preds = %while_continue
  %add = add nsw i32 %k.0, 1, !dbg !1887
  %next = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1888
  %1 = load i32*, i32** %next, align 8, !dbg !1888
  %idx.ext = sext i32 %k.0 to i64, !dbg !1889
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext, !dbg !1889
  store i32 %add, i32* %add.ptr, align 4, !dbg !1890
  %inc = add nsw i32 %k.0, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1874, metadata !DIExpression()), !dbg !1862
  br label %while.body, !dbg !1875, !llvm.loop !1892

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1894

while_break:                                      ; preds = %while_break___0, %if.then
  %next1 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1895
  %2 = load i32*, i32** %next1, align 8, !dbg !1895
  %mvec2 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 3, !dbg !1896
  %3 = load i32, i32* %mvec2, align 4, !dbg !1896
  %idx.ext3 = sext i32 %3 to i64, !dbg !1897
  %add.ptr4 = getelementptr inbounds i32, i32* %2, i64 %idx.ext3, !dbg !1897
  store i32 -1, i32* %add.ptr4, align 4, !dbg !1898
  ret void, !dbg !1899
}

; Function Attrs: noinline nounwind ssp uwtable
define void @nka_relax(%struct.nka_state* %state) #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct.nka_state* %state, metadata !1901, metadata !DIExpression()), !dbg !1902
  %pending = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1903
  %0 = load i32, i32* %pending, align 4, !dbg !1903
  %tobool = icmp ne i32 %0, 0, !dbg !1906
  br i1 %tobool, label %if.then, label %if.end13, !dbg !1907

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1908
  %1 = load i32, i32* %first, align 8, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %1, metadata !1910, metadata !DIExpression()), !dbg !1902
  %next = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1911
  %2 = load i32*, i32** %next, align 8, !dbg !1911
  %first1 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1912
  %3 = load i32, i32* %first1, align 8, !dbg !1912
  %idx.ext = sext i32 %3 to i64, !dbg !1913
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext, !dbg !1913
  %4 = load i32, i32* %add.ptr, align 4, !dbg !1914
  %first2 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1915
  store i32 %4, i32* %first2, align 8, !dbg !1916
  %first3 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1917
  %5 = load i32, i32* %first3, align 8, !dbg !1917
  %cmp = icmp eq i32 %5, -1, !dbg !1919
  br i1 %cmp, label %if.then4, label %if.else, !dbg !1920

if.then4:                                         ; preds = %if.then
  %last = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 9, !dbg !1921
  store i32 -1, i32* %last, align 4, !dbg !1923
  br label %if.end, !dbg !1924

if.else:                                          ; preds = %if.then
  %prev = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 12, !dbg !1925
  %6 = load i32*, i32** %prev, align 8, !dbg !1925
  %first5 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 8, !dbg !1927
  %7 = load i32, i32* %first5, align 8, !dbg !1927
  %idx.ext6 = sext i32 %7 to i64, !dbg !1928
  %add.ptr7 = getelementptr inbounds i32, i32* %6, i64 %idx.ext6, !dbg !1928
  store i32 -1, i32* %add.ptr7, align 4, !dbg !1929
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %free = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1930
  %8 = load i32, i32* %free, align 8, !dbg !1930
  %next8 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 11, !dbg !1931
  %9 = load i32*, i32** %next8, align 8, !dbg !1931
  %idx.ext9 = sext i32 %1 to i64, !dbg !1932
  %add.ptr10 = getelementptr inbounds i32, i32* %9, i64 %idx.ext9, !dbg !1932
  store i32 %8, i32* %add.ptr10, align 4, !dbg !1933
  %free11 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 10, !dbg !1934
  store i32 %1, i32* %free11, align 8, !dbg !1935
  %pending12 = getelementptr inbounds %struct.nka_state, %struct.nka_state* %state, i32 0, i32 1, !dbg !1936
  store i32 0, i32* %pending12, align 4, !dbg !1937
  br label %if.end13, !dbg !1938

if.end13:                                         ; preds = %if.end, %entry
  ret void, !dbg !1939
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!llvm.ident = !{!42}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, nameTableKind: GNU)
!6 = !DIFile(filename: "c/nlkain-1.3.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!7 = !{}
!8 = !{!9, !10, !11, !12, !16, !17, !20, !32, !39}
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{!9, !15, !11, !11}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "NKA", file: !21, line: 3, baseType: !22)
!21 = !DIFile(filename: "/home/wslee/projects/uav/test/nlkain-1.3/src-C/nonlinear_krylov_accelerator.h", directory: "")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nka_state", file: !24, line: 167, size: 704, elements: !25)
!24 = !DIFile(filename: "/home/wslee/projects/uav/test/nlkain-1.3/src-C/nonlinear_krylov_accelerator.c", directory: "")
!25 = !{!26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "subspace", scope: !23, file: !24, line: 168, baseType: !15, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !23, file: !24, line: 169, baseType: !15, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "vsize", scope: !23, file: !24, line: 170, baseType: !15, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mvec", scope: !23, file: !24, line: 171, baseType: !15, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "vtol", scope: !23, file: !24, line: 172, baseType: !9, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !23, file: !24, line: 173, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !23, file: !24, line: 174, baseType: !32, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !23, file: !24, line: 175, baseType: !32, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !23, file: !24, line: 176, baseType: !15, size: 32, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !23, file: !24, line: 177, baseType: !15, size: 32, offset: 416)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !23, file: !24, line: 178, baseType: !15, size: 32, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !24, line: 179, baseType: !39, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !23, file: !24, line: 180, baseType: !39, size: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !23, file: !24, line: 181, baseType: !12, size: 64, offset: 640)
!42 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!43 = distinct !DISubprogram(name: "main", scope: !44, file: !44, line: 77, type: !45, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!44 = !DIFile(filename: "/home/wslee/projects/uav/test/nlkain-1.3/src-C/nka_c_test.c", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!15}
!47 = !DILocalVariable(name: "sys", scope: !43, file: !44, line: 84, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSTEM", file: !44, line: 63, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SYSTEM_24", file: !44, line: 63, size: 576, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nx", scope: !49, file: !44, line: 64, baseType: !15, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ny", scope: !49, file: !44, line: 65, baseType: !15, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !49, file: !44, line: 66, baseType: !9, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "hx", scope: !49, file: !44, line: 67, baseType: !9, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hy", scope: !49, file: !44, line: 68, baseType: !9, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !49, file: !44, line: 69, baseType: !11, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ay", scope: !49, file: !44, line: 70, baseType: !11, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !49, file: !44, line: 71, baseType: !11, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !49, file: !44, line: 72, baseType: !11, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nka", scope: !49, file: !44, line: 73, baseType: !20, size: 64, offset: 512)
!61 = !DILocation(line: 84, column: 10, scope: !43)
!62 = !DILocalVariable(name: "N", scope: !43, file: !44, line: 79, type: !15)
!63 = !DILocation(line: 0, scope: !43)
!64 = !DILocalVariable(name: "A", scope: !43, file: !44, line: 80, type: !9)
!65 = !DILocalVariable(name: "nsweep", scope: !43, file: !44, line: 82, type: !15)
!66 = !DILocalVariable(name: "omega", scope: !43, file: !44, line: 83, type: !9)
!67 = !DILocation(line: 87, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !44, line: 93, column: 3)
!69 = distinct !DILexicalBlock(scope: !43, file: !44, line: 92, column: 3)
!70 = !DILocation(line: 87, column: 9, scope: !68)
!71 = !DILocation(line: 88, column: 7, scope: !68)
!72 = !DILocation(line: 88, column: 10, scope: !68)
!73 = !DILocation(line: 89, column: 7, scope: !68)
!74 = !DILocation(line: 89, column: 10, scope: !68)
!75 = !DILocation(line: 90, column: 31, scope: !68)
!76 = !DILocation(line: 90, column: 18, scope: !68)
!77 = !DILocation(line: 90, column: 16, scope: !68)
!78 = !DILocation(line: 90, column: 7, scope: !68)
!79 = !DILocation(line: 90, column: 10, scope: !68)
!80 = !DILocation(line: 91, column: 31, scope: !68)
!81 = !DILocation(line: 91, column: 18, scope: !68)
!82 = !DILocation(line: 91, column: 16, scope: !68)
!83 = !DILocation(line: 91, column: 7, scope: !68)
!84 = !DILocation(line: 91, column: 10, scope: !68)
!85 = !DILocation(line: 92, column: 37, scope: !86)
!86 = distinct !DILexicalBlock(scope: !68, file: !44, line: 92, column: 3)
!87 = !DILocation(line: 92, column: 47, scope: !86)
!88 = !DILocation(line: 92, column: 50, scope: !86)
!89 = !DILocation(line: 92, column: 40, scope: !86)
!90 = !DILocation(line: 92, column: 16, scope: !86)
!91 = !DILocation(line: 92, column: 56, scope: !86)
!92 = !DILocation(line: 92, column: 9, scope: !86)
!93 = !DILocalVariable(name: "tmp", scope: !43, file: !44, line: 86, type: !16)
!94 = !DILocation(line: 92, column: 12, scope: !68)
!95 = !DILocation(line: 92, column: 7, scope: !68)
!96 = !DILocation(line: 92, column: 10, scope: !68)
!97 = !DILocation(line: 93, column: 41, scope: !98)
!98 = distinct !DILexicalBlock(scope: !68, file: !44, line: 93, column: 3)
!99 = !DILocation(line: 93, column: 51, scope: !98)
!100 = !DILocation(line: 93, column: 54, scope: !98)
!101 = !DILocation(line: 93, column: 44, scope: !98)
!102 = !DILocation(line: 93, column: 20, scope: !98)
!103 = !DILocation(line: 93, column: 60, scope: !98)
!104 = !DILocation(line: 93, column: 13, scope: !98)
!105 = !DILocalVariable(name: "tmp___0", scope: !43, file: !44, line: 87, type: !16)
!106 = !DILocation(line: 93, column: 12, scope: !68)
!107 = !DILocation(line: 93, column: 7, scope: !68)
!108 = !DILocation(line: 93, column: 10, scope: !68)
!109 = !DILocation(line: 94, column: 41, scope: !110)
!110 = distinct !DILexicalBlock(scope: !68, file: !44, line: 94, column: 3)
!111 = !DILocation(line: 94, column: 50, scope: !110)
!112 = !DILocation(line: 94, column: 44, scope: !110)
!113 = !DILocation(line: 94, column: 20, scope: !110)
!114 = !DILocation(line: 94, column: 54, scope: !110)
!115 = !DILocation(line: 94, column: 13, scope: !110)
!116 = !DILocalVariable(name: "tmp___1", scope: !43, file: !44, line: 88, type: !16)
!117 = !DILocation(line: 94, column: 12, scope: !68)
!118 = !DILocation(line: 94, column: 7, scope: !68)
!119 = !DILocation(line: 94, column: 10, scope: !68)
!120 = !DILocation(line: 95, column: 41, scope: !121)
!121 = distinct !DILexicalBlock(scope: !68, file: !44, line: 95, column: 3)
!122 = !DILocation(line: 95, column: 50, scope: !121)
!123 = !DILocation(line: 95, column: 44, scope: !121)
!124 = !DILocation(line: 95, column: 20, scope: !121)
!125 = !DILocation(line: 95, column: 54, scope: !121)
!126 = !DILocation(line: 95, column: 13, scope: !121)
!127 = !DILocalVariable(name: "tmp___2", scope: !43, file: !44, line: 89, type: !16)
!128 = !DILocation(line: 95, column: 11, scope: !68)
!129 = !DILocation(line: 95, column: 7, scope: !68)
!130 = !DILocation(line: 95, column: 9, scope: !68)
!131 = !DILocation(line: 96, column: 28, scope: !132)
!132 = distinct !DILexicalBlock(scope: !68, file: !44, line: 96, column: 3)
!133 = !DILocation(line: 96, column: 37, scope: !132)
!134 = !DILocation(line: 96, column: 31, scope: !132)
!135 = !DILocation(line: 96, column: 13, scope: !132)
!136 = !DILocation(line: 96, column: 7, scope: !132)
!137 = !DILocation(line: 96, column: 11, scope: !132)
!138 = !DILocalVariable(name: "i", scope: !43, file: !44, line: 81, type: !15)
!139 = !DILocation(line: 98, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !44, line: 101, column: 3)
!141 = distinct !DILexicalBlock(scope: !69, file: !44, line: 100, column: 3)
!142 = !DILocation(line: 0, scope: !69)
!143 = !DILocation(line: 98, column: 13, scope: !140)
!144 = !DILocation(line: 98, column: 20, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !44, line: 98, column: 9)
!146 = distinct !DILexicalBlock(scope: !140, file: !44, line: 98, column: 13)
!147 = !DILocation(line: 98, column: 29, scope: !145)
!148 = !DILocation(line: 98, column: 23, scope: !145)
!149 = !DILocation(line: 98, column: 14, scope: !145)
!150 = !DILocation(line: 98, column: 9, scope: !146)
!151 = !DILocation(line: 98, column: 7, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !44, line: 98, column: 34)
!153 = !DILocation(line: 98, column: 24, scope: !146)
!154 = !DILocation(line: 98, column: 33, scope: !146)
!155 = !DILocation(line: 98, column: 27, scope: !146)
!156 = !DILocation(line: 98, column: 11, scope: !146)
!157 = !DILocation(line: 98, column: 13, scope: !146)
!158 = !DILocation(line: 98, column: 18, scope: !146)
!159 = !DILocation(line: 98, column: 7, scope: !146)
!160 = distinct !{!160, !139, !161}
!161 = !DILocation(line: 99, column: 3, scope: !140)
!162 = !DILocation(line: 101, column: 3, scope: !140)
!163 = !DILocation(line: 101, column: 41, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !44, line: 105, column: 3)
!165 = distinct !DILexicalBlock(scope: !69, file: !44, line: 104, column: 3)
!166 = !DILocation(line: 101, column: 50, scope: !164)
!167 = !DILocation(line: 101, column: 44, scope: !164)
!168 = !DILocation(line: 101, column: 20, scope: !164)
!169 = !DILocation(line: 101, column: 54, scope: !164)
!170 = !DILocation(line: 101, column: 13, scope: !164)
!171 = !DILocalVariable(name: "tmp___3", scope: !43, file: !44, line: 90, type: !16)
!172 = !DILocation(line: 101, column: 7, scope: !165)
!173 = !DILocalVariable(name: "u", scope: !43, file: !44, line: 85, type: !11)
!174 = !DILocation(line: 102, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !44, line: 102, column: 3)
!176 = !DILocation(line: 103, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !44, line: 104, column: 3)
!178 = !DILocation(line: 104, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !44, line: 105, column: 3)
!180 = !DILocation(line: 104, column: 3, scope: !179)
!181 = !DILocation(line: 106, column: 3, scope: !69)
!182 = distinct !DISubprogram(name: "nka_create", scope: !24, file: !24, line: 199, type: !183, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!183 = !DISubroutineType(types: !184)
!184 = !{!20, !15, !15, !9, !12}
!185 = !DILocalVariable(name: "vsize", arg: 1, scope: !182, file: !24, line: 199, type: !15)
!186 = !DILocation(line: 0, scope: !182)
!187 = !DILocalVariable(name: "maxv", arg: 2, scope: !182, file: !24, line: 199, type: !15)
!188 = !DILocalVariable(name: "vtol", arg: 3, scope: !182, file: !24, line: 199, type: !9)
!189 = !DILocalVariable(name: "dp", arg: 4, scope: !182, file: !24, line: 199, type: !12)
!190 = !DILocation(line: 209, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !24, line: 217, column: 3)
!192 = distinct !DILexicalBlock(scope: !193, file: !24, line: 216, column: 3)
!193 = distinct !DILexicalBlock(scope: !182, file: !24, line: 215, column: 3)
!194 = !DILocalVariable(name: "tmp", scope: !182, file: !24, line: 205, type: !16)
!195 = !DILocation(line: 209, column: 11, scope: !192)
!196 = !DILocalVariable(name: "state", scope: !182, file: !24, line: 204, type: !20)
!197 = !DILocation(line: 211, column: 10, scope: !192)
!198 = !DILocation(line: 211, column: 16, scope: !192)
!199 = !DILocation(line: 212, column: 10, scope: !192)
!200 = !DILocation(line: 212, column: 15, scope: !192)
!201 = !DILocation(line: 213, column: 10, scope: !192)
!202 = !DILocation(line: 213, column: 15, scope: !192)
!203 = !DILocation(line: 215, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !193, file: !24, line: 215, column: 7)
!205 = !DILocation(line: 215, column: 26, scope: !204)
!206 = !DILocation(line: 215, column: 7, scope: !193)
!207 = !DILocation(line: 216, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !24, line: 215, column: 58)
!209 = !DILocation(line: 216, column: 15, scope: !208)
!210 = !DILocation(line: 217, column: 3, scope: !208)
!211 = !DILocation(line: 218, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !24, line: 217, column: 10)
!213 = !DILocation(line: 218, column: 15, scope: !212)
!214 = !DILocation(line: 221, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !193, file: !24, line: 220, column: 3)
!216 = !DILocalVariable(name: "n", scope: !182, file: !24, line: 203, type: !15)
!217 = !DILocation(line: 222, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !24, line: 222, column: 3)
!219 = !DILocation(line: 222, column: 38, scope: !218)
!220 = !DILocation(line: 222, column: 13, scope: !218)
!221 = !DILocalVariable(name: "tmp___0", scope: !182, file: !24, line: 206, type: !16)
!222 = !DILocation(line: 222, column: 14, scope: !215)
!223 = !DILocation(line: 222, column: 10, scope: !215)
!224 = !DILocation(line: 222, column: 12, scope: !215)
!225 = !DILocation(line: 223, column: 39, scope: !226)
!226 = distinct !DILexicalBlock(scope: !215, file: !24, line: 223, column: 3)
!227 = !DILocation(line: 223, column: 20, scope: !226)
!228 = !DILocation(line: 223, column: 48, scope: !226)
!229 = !DILocation(line: 223, column: 13, scope: !226)
!230 = !DILocalVariable(name: "tmp___1", scope: !182, file: !24, line: 207, type: !16)
!231 = !DILocation(line: 223, column: 21, scope: !215)
!232 = !DILocation(line: 223, column: 12, scope: !215)
!233 = !DILocation(line: 223, column: 14, scope: !215)
!234 = !DILocation(line: 223, column: 19, scope: !215)
!235 = !DILocalVariable(name: "j", scope: !182, file: !24, line: 202, type: !15)
!236 = !DILocation(line: 224, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !24, line: 227, column: 3)
!238 = distinct !DILexicalBlock(scope: !193, file: !24, line: 226, column: 3)
!239 = !DILocation(line: 0, scope: !193)
!240 = !DILocation(line: 224, column: 13, scope: !237)
!241 = !DILocation(line: 224, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !24, line: 224, column: 9)
!243 = distinct !DILexicalBlock(scope: !237, file: !24, line: 224, column: 13)
!244 = !DILocation(line: 224, column: 9, scope: !243)
!245 = !DILocation(line: 224, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !24, line: 224, column: 20)
!247 = !DILocation(line: 225, column: 32, scope: !243)
!248 = !DILocation(line: 225, column: 39, scope: !243)
!249 = !DILocation(line: 225, column: 34, scope: !243)
!250 = !DILocation(line: 225, column: 23, scope: !243)
!251 = !DILocation(line: 225, column: 45, scope: !243)
!252 = !DILocation(line: 225, column: 14, scope: !243)
!253 = !DILocation(line: 225, column: 16, scope: !243)
!254 = !DILocation(line: 225, column: 21, scope: !243)
!255 = !DILocation(line: 224, column: 7, scope: !243)
!256 = distinct !{!256, !236, !257}
!257 = !DILocation(line: 225, column: 3, scope: !237)
!258 = !DILocation(line: 227, column: 3, scope: !237)
!259 = !DILocation(line: 228, column: 20, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !24, line: 231, column: 3)
!261 = distinct !DILexicalBlock(scope: !193, file: !24, line: 230, column: 3)
!262 = !DILocation(line: 228, column: 38, scope: !260)
!263 = !DILocation(line: 228, column: 13, scope: !260)
!264 = !DILocalVariable(name: "tmp___2", scope: !182, file: !24, line: 208, type: !16)
!265 = !DILocation(line: 228, column: 14, scope: !261)
!266 = !DILocation(line: 228, column: 10, scope: !261)
!267 = !DILocation(line: 228, column: 12, scope: !261)
!268 = !DILocation(line: 229, column: 39, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !24, line: 229, column: 3)
!270 = !DILocation(line: 229, column: 20, scope: !269)
!271 = !DILocation(line: 229, column: 48, scope: !269)
!272 = !DILocation(line: 229, column: 13, scope: !269)
!273 = !DILocalVariable(name: "tmp___3", scope: !182, file: !24, line: 209, type: !16)
!274 = !DILocation(line: 229, column: 21, scope: !261)
!275 = !DILocation(line: 229, column: 12, scope: !261)
!276 = !DILocation(line: 229, column: 14, scope: !261)
!277 = !DILocation(line: 229, column: 19, scope: !261)
!278 = !DILocation(line: 230, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !24, line: 233, column: 3)
!280 = distinct !DILexicalBlock(scope: !193, file: !24, line: 232, column: 3)
!281 = !DILocation(line: 230, column: 13, scope: !279)
!282 = !DILocation(line: 230, column: 14, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !24, line: 230, column: 9)
!284 = distinct !DILexicalBlock(scope: !279, file: !24, line: 230, column: 13)
!285 = !DILocation(line: 230, column: 9, scope: !284)
!286 = !DILocation(line: 230, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !24, line: 230, column: 20)
!288 = !DILocation(line: 231, column: 32, scope: !284)
!289 = !DILocation(line: 231, column: 39, scope: !284)
!290 = !DILocation(line: 231, column: 34, scope: !284)
!291 = !DILocation(line: 231, column: 23, scope: !284)
!292 = !DILocation(line: 231, column: 45, scope: !284)
!293 = !DILocation(line: 231, column: 14, scope: !284)
!294 = !DILocation(line: 231, column: 16, scope: !284)
!295 = !DILocation(line: 231, column: 21, scope: !284)
!296 = !DILocation(line: 230, column: 7, scope: !284)
!297 = distinct !{!297, !278, !298}
!298 = !DILocation(line: 231, column: 3, scope: !279)
!299 = !DILocation(line: 233, column: 3, scope: !279)
!300 = !DILocation(line: 234, column: 20, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !24, line: 237, column: 3)
!302 = distinct !DILexicalBlock(scope: !193, file: !24, line: 236, column: 3)
!303 = !DILocation(line: 234, column: 38, scope: !301)
!304 = !DILocation(line: 234, column: 13, scope: !301)
!305 = !DILocalVariable(name: "tmp___4", scope: !182, file: !24, line: 210, type: !16)
!306 = !DILocation(line: 234, column: 14, scope: !302)
!307 = !DILocation(line: 234, column: 10, scope: !302)
!308 = !DILocation(line: 234, column: 12, scope: !302)
!309 = !DILocation(line: 235, column: 39, scope: !310)
!310 = distinct !DILexicalBlock(scope: !302, file: !24, line: 235, column: 3)
!311 = !DILocation(line: 235, column: 20, scope: !310)
!312 = !DILocation(line: 235, column: 44, scope: !310)
!313 = !DILocation(line: 235, column: 13, scope: !310)
!314 = !DILocalVariable(name: "tmp___5", scope: !182, file: !24, line: 211, type: !16)
!315 = !DILocation(line: 235, column: 21, scope: !302)
!316 = !DILocation(line: 235, column: 12, scope: !302)
!317 = !DILocation(line: 235, column: 14, scope: !302)
!318 = !DILocation(line: 235, column: 19, scope: !302)
!319 = !DILocation(line: 236, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !24, line: 239, column: 3)
!321 = distinct !DILexicalBlock(scope: !193, file: !24, line: 238, column: 3)
!322 = !DILocation(line: 236, column: 13, scope: !320)
!323 = !DILocation(line: 236, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !24, line: 236, column: 9)
!325 = distinct !DILexicalBlock(scope: !320, file: !24, line: 236, column: 13)
!326 = !DILocation(line: 236, column: 9, scope: !325)
!327 = !DILocation(line: 236, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !24, line: 236, column: 20)
!329 = !DILocation(line: 237, column: 32, scope: !325)
!330 = !DILocation(line: 237, column: 39, scope: !325)
!331 = !DILocation(line: 237, column: 34, scope: !325)
!332 = !DILocation(line: 237, column: 23, scope: !325)
!333 = !DILocation(line: 237, column: 45, scope: !325)
!334 = !DILocation(line: 237, column: 14, scope: !325)
!335 = !DILocation(line: 237, column: 16, scope: !325)
!336 = !DILocation(line: 237, column: 21, scope: !325)
!337 = !DILocation(line: 236, column: 7, scope: !325)
!338 = distinct !{!338, !319, !339}
!339 = !DILocation(line: 237, column: 3, scope: !320)
!340 = !DILocation(line: 239, column: 3, scope: !320)
!341 = !DILocation(line: 240, column: 20, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !24, line: 243, column: 3)
!343 = distinct !DILexicalBlock(scope: !193, file: !24, line: 242, column: 3)
!344 = !DILocation(line: 240, column: 38, scope: !342)
!345 = !DILocation(line: 240, column: 13, scope: !342)
!346 = !DILocalVariable(name: "tmp___6", scope: !182, file: !24, line: 212, type: !16)
!347 = !DILocation(line: 240, column: 17, scope: !343)
!348 = !DILocation(line: 240, column: 10, scope: !343)
!349 = !DILocation(line: 240, column: 15, scope: !343)
!350 = !DILocation(line: 241, column: 20, scope: !351)
!351 = distinct !DILexicalBlock(scope: !343, file: !24, line: 241, column: 3)
!352 = !DILocation(line: 241, column: 38, scope: !351)
!353 = !DILocation(line: 241, column: 13, scope: !351)
!354 = !DILocalVariable(name: "tmp___7", scope: !182, file: !24, line: 213, type: !16)
!355 = !DILocation(line: 241, column: 17, scope: !343)
!356 = !DILocation(line: 241, column: 10, scope: !343)
!357 = !DILocation(line: 241, column: 15, scope: !343)
!358 = !DILocation(line: 243, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !343, file: !24, line: 242, column: 3)
!360 = !DILocation(line: 245, column: 3, scope: !193)
!361 = distinct !DISubprogram(name: "solve", scope: !44, file: !44, line: 110, type: !362, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364, !15, !9, !15, !11}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!365 = !DILocalVariable(name: "sys", arg: 1, scope: !361, file: !44, line: 110, type: !364)
!366 = !DILocation(line: 0, scope: !361)
!367 = !DILocalVariable(name: "nsweep", arg: 2, scope: !361, file: !44, line: 110, type: !15)
!368 = !DILocalVariable(name: "omega", arg: 3, scope: !361, file: !44, line: 110, type: !9)
!369 = !DILocalVariable(name: "use_nka", arg: 4, scope: !361, file: !44, line: 110, type: !15)
!370 = !DILocalVariable(name: "sol", arg: 5, scope: !361, file: !44, line: 110, type: !11)
!371 = !DILocalVariable(name: "__cil_tmp25", scope: !361, file: !44, line: 131, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!373 = !DILocation(line: 131, column: 9, scope: !361)
!374 = !DILocalVariable(name: "__cil_tmp26", scope: !361, file: !44, line: 132, type: !372)
!375 = !DILocation(line: 132, column: 9, scope: !361)
!376 = !DILocalVariable(name: "__cil_tmp27", scope: !361, file: !44, line: 133, type: !372)
!377 = !DILocation(line: 133, column: 9, scope: !361)
!378 = !DILocalVariable(name: "__cil_tmp28", scope: !361, file: !44, line: 134, type: !372)
!379 = !DILocation(line: 134, column: 9, scope: !361)
!380 = !DILocalVariable(name: "__cil_tmp29", scope: !361, file: !44, line: 135, type: !372)
!381 = !DILocation(line: 135, column: 9, scope: !361)
!382 = !DILocalVariable(name: "MAXITR", scope: !361, file: !44, line: 127, type: !15)
!383 = !DILocalVariable(name: "TOL", scope: !361, file: !44, line: 128, type: !9)
!384 = !DILocation(line: 118, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !44, line: 118, column: 7)
!386 = distinct !DILexicalBlock(scope: !361, file: !44, line: 137, column: 3)
!387 = !DILocation(line: 118, column: 7, scope: !386)
!388 = !DILocation(line: 119, column: 5, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !44, line: 120, column: 5)
!390 = distinct !DILexicalBlock(scope: !391, file: !44, line: 119, column: 5)
!391 = distinct !DILexicalBlock(scope: !385, file: !44, line: 118, column: 16)
!392 = !DILocation(line: 122, column: 3, scope: !391)
!393 = !DILocation(line: 121, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !44, line: 124, column: 5)
!395 = distinct !DILexicalBlock(scope: !396, file: !44, line: 123, column: 5)
!396 = distinct !DILexicalBlock(scope: !385, file: !44, line: 122, column: 10)
!397 = !DILocation(line: 123, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !44, line: 126, column: 3)
!399 = distinct !DILexicalBlock(scope: !386, file: !44, line: 125, column: 3)
!400 = !DILocation(line: 125, column: 13, scope: !399)
!401 = !DILocalVariable(name: "nx", scope: !361, file: !44, line: 116, type: !15)
!402 = !DILocation(line: 126, column: 13, scope: !399)
!403 = !DILocalVariable(name: "ny", scope: !361, file: !44, line: 117, type: !15)
!404 = !DILocation(line: 128, column: 11, scope: !399)
!405 = !DILocation(line: 128, column: 22, scope: !399)
!406 = !DILocation(line: 128, column: 16, scope: !399)
!407 = !DILocalVariable(name: "n", scope: !361, file: !44, line: 115, type: !15)
!408 = !DILocation(line: 129, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !399, file: !44, line: 129, column: 3)
!410 = !DILocation(line: 129, column: 34, scope: !409)
!411 = !DILocation(line: 129, column: 9, scope: !409)
!412 = !DILocalVariable(name: "tmp", scope: !361, file: !44, line: 129, type: !16)
!413 = !DILocation(line: 129, column: 10, scope: !399)
!414 = !DILocalVariable(name: "upad", scope: !361, file: !44, line: 119, type: !11)
!415 = !DILocalVariable(name: "i", scope: !361, file: !44, line: 112, type: !15)
!416 = !DILocation(line: 130, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !44, line: 133, column: 3)
!418 = distinct !DILexicalBlock(scope: !386, file: !44, line: 132, column: 3)
!419 = !DILocation(line: 0, scope: !386)
!420 = !DILocation(line: 130, column: 13, scope: !417)
!421 = !DILocation(line: 130, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !44, line: 130, column: 9)
!423 = distinct !DILexicalBlock(scope: !417, file: !44, line: 130, column: 13)
!424 = !DILocation(line: 130, column: 9, scope: !423)
!425 = !DILocation(line: 130, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !44, line: 130, column: 20)
!427 = !DILocation(line: 130, column: 12, scope: !423)
!428 = !DILocation(line: 130, column: 17, scope: !423)
!429 = !DILocation(line: 130, column: 7, scope: !423)
!430 = distinct !{!430, !416, !431}
!431 = !DILocation(line: 131, column: 3, scope: !417)
!432 = !DILocation(line: 133, column: 3, scope: !417)
!433 = !DILocation(line: 132, column: 40, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !44, line: 137, column: 3)
!435 = distinct !DILexicalBlock(scope: !386, file: !44, line: 136, column: 3)
!436 = !DILocation(line: 132, column: 20, scope: !434)
!437 = !DILocation(line: 132, column: 46, scope: !434)
!438 = !DILocation(line: 132, column: 13, scope: !434)
!439 = !DILocalVariable(name: "tmp___0", scope: !361, file: !44, line: 130, type: !16)
!440 = !DILocation(line: 132, column: 7, scope: !435)
!441 = !DILocalVariable(name: "r", scope: !361, file: !44, line: 121, type: !11)
!442 = !DILocation(line: 134, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !44, line: 133, column: 3)
!444 = !DILocation(line: 135, column: 25, scope: !445)
!445 = distinct !DILexicalBlock(scope: !435, file: !44, line: 136, column: 3)
!446 = !DILocation(line: 135, column: 12, scope: !445)
!447 = !DILocalVariable(name: "rnorm0", scope: !361, file: !44, line: 123, type: !9)
!448 = !DILocation(line: 136, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !435, file: !44, line: 137, column: 3)
!450 = !DILocalVariable(name: "itr", scope: !361, file: !44, line: 118, type: !15)
!451 = !DILocation(line: 138, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !44, line: 141, column: 3)
!453 = distinct !DILexicalBlock(scope: !386, file: !44, line: 140, column: 3)
!454 = !DILocation(line: 138, column: 13, scope: !452)
!455 = !DILocation(line: 138, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !44, line: 138, column: 9)
!457 = distinct !DILexicalBlock(scope: !452, file: !44, line: 138, column: 13)
!458 = !DILocation(line: 138, column: 9, scope: !457)
!459 = !DILocation(line: 138, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !44, line: 138, column: 28)
!461 = !DILocation(line: 139, column: 5, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !44, line: 141, column: 5)
!463 = distinct !DILexicalBlock(scope: !457, file: !44, line: 140, column: 5)
!464 = !DILocation(line: 140, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !44, line: 140, column: 9)
!466 = !DILocation(line: 140, column: 9, scope: !457)
!467 = !DILocation(line: 140, column: 27, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !44, line: 142, column: 7)
!469 = distinct !DILexicalBlock(scope: !470, file: !44, line: 141, column: 7)
!470 = distinct !DILexicalBlock(scope: !465, file: !44, line: 140, column: 18)
!471 = !DILocation(line: 140, column: 7, scope: !468)
!472 = !DILocation(line: 143, column: 5, scope: !470)
!473 = !DILocalVariable(name: "t", scope: !361, file: !44, line: 122, type: !11)
!474 = !DILocation(line: 144, column: 20, scope: !457)
!475 = !DILocation(line: 144, column: 14, scope: !457)
!476 = !DILocalVariable(name: "u", scope: !361, file: !44, line: 120, type: !11)
!477 = !DILocalVariable(name: "k", scope: !361, file: !44, line: 114, type: !15)
!478 = !DILocation(line: 145, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !44, line: 147, column: 5)
!480 = distinct !DILexicalBlock(scope: !457, file: !44, line: 146, column: 5)
!481 = !DILocation(line: 0, scope: !457)
!482 = !DILocation(line: 143, column: 7, scope: !457)
!483 = !DILocation(line: 145, column: 15, scope: !479)
!484 = !DILocation(line: 145, column: 16, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !44, line: 145, column: 11)
!486 = distinct !DILexicalBlock(scope: !479, file: !44, line: 145, column: 15)
!487 = !DILocation(line: 145, column: 11, scope: !486)
!488 = !DILocation(line: 145, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !44, line: 145, column: 23)
!490 = !DILocation(line: 146, column: 9, scope: !486)
!491 = !DILocalVariable(name: "j", scope: !361, file: !44, line: 113, type: !15)
!492 = !DILocation(line: 147, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !44, line: 149, column: 7)
!494 = distinct !DILexicalBlock(scope: !486, file: !44, line: 148, column: 7)
!495 = !DILocation(line: 0, scope: !486)
!496 = !DILocation(line: 147, column: 17, scope: !493)
!497 = !DILocation(line: 147, column: 18, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !44, line: 147, column: 13)
!499 = distinct !DILexicalBlock(scope: !493, file: !44, line: 147, column: 17)
!500 = !DILocation(line: 147, column: 13, scope: !499)
!501 = !DILocation(line: 147, column: 11, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !44, line: 147, column: 25)
!503 = !DILocation(line: 148, column: 15, scope: !499)
!504 = !DILocation(line: 148, column: 12, scope: !499)
!505 = !DILocation(line: 149, column: 11, scope: !499)
!506 = !DILocation(line: 150, column: 11, scope: !499)
!507 = !DILocation(line: 147, column: 11, scope: !499)
!508 = distinct !{!508, !492, !509}
!509 = !DILocation(line: 148, column: 7, scope: !493)
!510 = !DILocation(line: 150, column: 7, scope: !493)
!511 = !DILocation(line: 152, column: 9, scope: !486)
!512 = !DILocation(line: 145, column: 9, scope: !486)
!513 = distinct !{!513, !478, !514}
!514 = !DILocation(line: 146, column: 5, scope: !479)
!515 = !DILocation(line: 148, column: 5, scope: !479)
!516 = !DILocation(line: 155, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !44, line: 152, column: 5)
!518 = distinct !DILexicalBlock(scope: !457, file: !44, line: 151, column: 5)
!519 = !DILocation(line: 156, column: 26, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !44, line: 157, column: 5)
!521 = !DILocation(line: 156, column: 13, scope: !520)
!522 = !DILocalVariable(name: "rnorm", scope: !361, file: !44, line: 124, type: !9)
!523 = !DILocation(line: 157, column: 17, scope: !518)
!524 = !DILocalVariable(name: "red", scope: !361, file: !44, line: 125, type: !9)
!525 = !DILocation(line: 158, column: 27, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !44, line: 158, column: 5)
!527 = !DILocation(line: 158, column: 25, scope: !526)
!528 = !DILocation(line: 158, column: 12, scope: !526)
!529 = !DILocalVariable(name: "rate", scope: !361, file: !44, line: 126, type: !9)
!530 = !DILocation(line: 159, column: 5, scope: !531)
!531 = distinct !DILexicalBlock(scope: !518, file: !44, line: 160, column: 5)
!532 = !DILocation(line: 160, column: 21, scope: !533)
!533 = distinct !DILexicalBlock(scope: !457, file: !44, line: 160, column: 9)
!534 = !DILocation(line: 160, column: 15, scope: !533)
!535 = !DILocation(line: 160, column: 9, scope: !457)
!536 = !DILocation(line: 160, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !44, line: 160, column: 31)
!538 = distinct !{!538, !451, !539}
!539 = !DILocation(line: 139, column: 3, scope: !452)
!540 = !DILocation(line: 141, column: 3, scope: !452)
!541 = !DILocation(line: 164, column: 18, scope: !386)
!542 = !DILocation(line: 164, column: 12, scope: !386)
!543 = !DILocation(line: 165, column: 3, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !44, line: 167, column: 3)
!545 = distinct !DILexicalBlock(scope: !386, file: !44, line: 166, column: 3)
!546 = !DILocation(line: 165, column: 13, scope: !544)
!547 = !DILocation(line: 165, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !44, line: 165, column: 9)
!549 = distinct !DILexicalBlock(scope: !544, file: !44, line: 165, column: 13)
!550 = !DILocation(line: 165, column: 9, scope: !549)
!551 = !DILocation(line: 165, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !44, line: 165, column: 21)
!553 = !DILocation(line: 166, column: 7, scope: !549)
!554 = !DILocation(line: 167, column: 5, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !44, line: 169, column: 5)
!556 = distinct !DILexicalBlock(scope: !549, file: !44, line: 168, column: 5)
!557 = !DILocation(line: 0, scope: !549)
!558 = !DILocation(line: 167, column: 15, scope: !555)
!559 = !DILocation(line: 167, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !44, line: 167, column: 11)
!561 = distinct !DILexicalBlock(scope: !555, file: !44, line: 167, column: 15)
!562 = !DILocation(line: 167, column: 11, scope: !561)
!563 = !DILocation(line: 167, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !44, line: 167, column: 23)
!565 = !DILocation(line: 168, column: 14, scope: !561)
!566 = !DILocation(line: 168, column: 12, scope: !561)
!567 = !DILocation(line: 169, column: 9, scope: !561)
!568 = !DILocation(line: 170, column: 11, scope: !561)
!569 = !DILocation(line: 167, column: 9, scope: !561)
!570 = distinct !{!570, !554, !571}
!571 = !DILocation(line: 168, column: 5, scope: !555)
!572 = !DILocation(line: 170, column: 5, scope: !555)
!573 = !DILocation(line: 172, column: 7, scope: !549)
!574 = !DILocation(line: 165, column: 7, scope: !549)
!575 = distinct !{!575, !543, !576}
!576 = !DILocation(line: 166, column: 3, scope: !544)
!577 = !DILocation(line: 168, column: 3, scope: !544)
!578 = !DILocation(line: 174, column: 3, scope: !386)
!579 = distinct !DISubprogram(name: "nka_destroy", scope: !24, file: !24, line: 249, type: !580, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !20}
!582 = !DILocalVariable(name: "state", arg: 1, scope: !579, file: !24, line: 249, type: !20)
!583 = !DILocation(line: 0, scope: !579)
!584 = !DILocation(line: 251, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !24, line: 251, column: 7)
!586 = distinct !DILexicalBlock(scope: !579, file: !24, line: 253, column: 3)
!587 = !DILocation(line: 251, column: 7, scope: !585)
!588 = !DILocation(line: 251, column: 7, scope: !586)
!589 = !DILocation(line: 252, column: 27, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !24, line: 253, column: 5)
!591 = distinct !DILexicalBlock(scope: !592, file: !24, line: 252, column: 5)
!592 = distinct !DILexicalBlock(scope: !585, file: !24, line: 251, column: 17)
!593 = !DILocation(line: 252, column: 29, scope: !590)
!594 = !DILocation(line: 252, column: 18, scope: !590)
!595 = !DILocation(line: 252, column: 10, scope: !590)
!596 = !DILocation(line: 252, column: 5, scope: !590)
!597 = !DILocation(line: 253, column: 25, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !24, line: 254, column: 5)
!599 = !DILocation(line: 253, column: 10, scope: !598)
!600 = !DILocation(line: 253, column: 5, scope: !598)
!601 = !DILocation(line: 256, column: 3, scope: !592)
!602 = !DILocation(line: 256, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !586, file: !24, line: 256, column: 7)
!604 = !DILocation(line: 256, column: 7, scope: !603)
!605 = !DILocation(line: 256, column: 7, scope: !586)
!606 = !DILocation(line: 257, column: 27, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !24, line: 258, column: 5)
!608 = distinct !DILexicalBlock(scope: !609, file: !24, line: 257, column: 5)
!609 = distinct !DILexicalBlock(scope: !603, file: !24, line: 256, column: 17)
!610 = !DILocation(line: 257, column: 29, scope: !607)
!611 = !DILocation(line: 257, column: 18, scope: !607)
!612 = !DILocation(line: 257, column: 10, scope: !607)
!613 = !DILocation(line: 257, column: 5, scope: !607)
!614 = !DILocation(line: 258, column: 25, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !24, line: 259, column: 5)
!616 = !DILocation(line: 258, column: 10, scope: !615)
!617 = !DILocation(line: 258, column: 5, scope: !615)
!618 = !DILocation(line: 261, column: 3, scope: !609)
!619 = !DILocation(line: 261, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !586, file: !24, line: 261, column: 7)
!621 = !DILocation(line: 261, column: 7, scope: !620)
!622 = !DILocation(line: 261, column: 7, scope: !586)
!623 = !DILocation(line: 262, column: 27, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !24, line: 263, column: 5)
!625 = distinct !DILexicalBlock(scope: !626, file: !24, line: 262, column: 5)
!626 = distinct !DILexicalBlock(scope: !620, file: !24, line: 261, column: 17)
!627 = !DILocation(line: 262, column: 29, scope: !624)
!628 = !DILocation(line: 262, column: 18, scope: !624)
!629 = !DILocation(line: 262, column: 10, scope: !624)
!630 = !DILocation(line: 262, column: 5, scope: !624)
!631 = !DILocation(line: 263, column: 25, scope: !632)
!632 = distinct !DILexicalBlock(scope: !625, file: !24, line: 264, column: 5)
!633 = !DILocation(line: 263, column: 10, scope: !632)
!634 = !DILocation(line: 263, column: 5, scope: !632)
!635 = !DILocation(line: 266, column: 3, scope: !626)
!636 = !DILocation(line: 266, column: 23, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !24, line: 268, column: 3)
!638 = distinct !DILexicalBlock(scope: !586, file: !24, line: 267, column: 3)
!639 = !DILocation(line: 266, column: 8, scope: !637)
!640 = !DILocation(line: 266, column: 3, scope: !637)
!641 = !DILocation(line: 267, column: 23, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !24, line: 268, column: 3)
!643 = !DILocation(line: 267, column: 8, scope: !642)
!644 = !DILocation(line: 267, column: 3, scope: !642)
!645 = !DILocation(line: 269, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !24, line: 269, column: 3)
!647 = !DILocation(line: 269, column: 3, scope: !646)
!648 = !DILocation(line: 270, column: 3, scope: !586)
!649 = distinct !DISubprogram(name: "residual", scope: !44, file: !44, line: 177, type: !650, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !364, !11, !11}
!652 = !DILocalVariable(name: "sys", arg: 1, scope: !649, file: !44, line: 177, type: !364)
!653 = !DILocation(line: 0, scope: !649)
!654 = !DILocalVariable(name: "upad", arg: 2, scope: !649, file: !44, line: 177, type: !11)
!655 = !DILocalVariable(name: "r", arg: 3, scope: !649, file: !44, line: 177, type: !11)
!656 = !DILocation(line: 182, column: 3, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !44, line: 191, column: 3)
!658 = distinct !DILexicalBlock(scope: !659, file: !44, line: 190, column: 3)
!659 = distinct !DILexicalBlock(scope: !649, file: !44, line: 189, column: 3)
!660 = !DILocation(line: 184, column: 13, scope: !658)
!661 = !DILocalVariable(name: "nx", scope: !649, file: !44, line: 181, type: !15)
!662 = !DILocation(line: 185, column: 13, scope: !658)
!663 = !DILocalVariable(name: "ny", scope: !649, file: !44, line: 182, type: !15)
!664 = !DILocation(line: 187, column: 13, scope: !658)
!665 = !DILocalVariable(name: "ac", scope: !649, file: !44, line: 184, type: !11)
!666 = !DILocation(line: 188, column: 13, scope: !658)
!667 = !DILocalVariable(name: "ax", scope: !649, file: !44, line: 185, type: !11)
!668 = !DILocation(line: 189, column: 13, scope: !658)
!669 = !DILocalVariable(name: "ay", scope: !649, file: !44, line: 186, type: !11)
!670 = !DILocation(line: 190, column: 12, scope: !658)
!671 = !DILocalVariable(name: "q", scope: !649, file: !44, line: 187, type: !11)
!672 = !DILocation(line: 191, column: 18, scope: !658)
!673 = !DILocation(line: 191, column: 12, scope: !658)
!674 = !DILocalVariable(name: "u", scope: !649, file: !44, line: 183, type: !11)
!675 = !DILocalVariable(name: "k", scope: !649, file: !44, line: 180, type: !15)
!676 = !DILocation(line: 192, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !44, line: 195, column: 3)
!678 = distinct !DILexicalBlock(scope: !659, file: !44, line: 194, column: 3)
!679 = !DILocation(line: 0, scope: !659)
!680 = !DILocation(line: 187, column: 6, scope: !658)
!681 = !DILocation(line: 189, column: 6, scope: !658)
!682 = !DILocation(line: 190, column: 5, scope: !658)
!683 = !DILocation(line: 192, column: 13, scope: !677)
!684 = !DILocation(line: 192, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !44, line: 192, column: 9)
!686 = distinct !DILexicalBlock(scope: !677, file: !44, line: 192, column: 13)
!687 = !DILocation(line: 192, column: 9, scope: !686)
!688 = !DILocation(line: 192, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !44, line: 192, column: 21)
!690 = !DILocation(line: 193, column: 7, scope: !686)
!691 = !DILocalVariable(name: "j", scope: !649, file: !44, line: 179, type: !15)
!692 = !DILocation(line: 194, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !44, line: 196, column: 5)
!694 = distinct !DILexicalBlock(scope: !686, file: !44, line: 195, column: 5)
!695 = !DILocation(line: 0, scope: !686)
!696 = !DILocation(line: 194, column: 15, scope: !693)
!697 = !DILocation(line: 194, column: 16, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !44, line: 194, column: 11)
!699 = distinct !DILexicalBlock(scope: !693, file: !44, line: 194, column: 15)
!700 = !DILocation(line: 194, column: 11, scope: !699)
!701 = !DILocation(line: 194, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !44, line: 194, column: 23)
!703 = !DILocation(line: 195, column: 27, scope: !699)
!704 = !DILocation(line: 195, column: 22, scope: !699)
!705 = !DILocation(line: 195, column: 38, scope: !699)
!706 = !DILocation(line: 195, column: 34, scope: !699)
!707 = !DILocation(line: 195, column: 32, scope: !699)
!708 = !DILocation(line: 195, column: 50, scope: !699)
!709 = !DILocation(line: 195, column: 45, scope: !699)
!710 = !DILocation(line: 195, column: 61, scope: !699)
!711 = !DILocation(line: 195, column: 57, scope: !699)
!712 = !DILocation(line: 195, column: 55, scope: !699)
!713 = !DILocation(line: 195, column: 43, scope: !699)
!714 = !DILocation(line: 195, column: 75, scope: !699)
!715 = !DILocation(line: 195, column: 70, scope: !699)
!716 = !DILocation(line: 195, column: 86, scope: !699)
!717 = !DILocation(line: 195, column: 82, scope: !699)
!718 = !DILocation(line: 195, column: 80, scope: !699)
!719 = !DILocation(line: 195, column: 68, scope: !699)
!720 = !DILocation(line: 195, column: 99, scope: !699)
!721 = !DILocation(line: 195, column: 94, scope: !699)
!722 = !DILocation(line: 195, column: 113, scope: !699)
!723 = !DILocation(line: 195, column: 118, scope: !699)
!724 = !DILocation(line: 195, column: 110, scope: !699)
!725 = !DILocation(line: 195, column: 106, scope: !699)
!726 = !DILocation(line: 195, column: 104, scope: !699)
!727 = !DILocation(line: 195, column: 92, scope: !699)
!728 = !DILocation(line: 195, column: 132, scope: !699)
!729 = !DILocation(line: 195, column: 127, scope: !699)
!730 = !DILocation(line: 195, column: 150, scope: !699)
!731 = !DILocation(line: 195, column: 144, scope: !699)
!732 = !DILocation(line: 195, column: 140, scope: !699)
!733 = !DILocation(line: 195, column: 138, scope: !699)
!734 = !DILocation(line: 195, column: 125, scope: !699)
!735 = !DILocation(line: 195, column: 163, scope: !699)
!736 = !DILocation(line: 195, column: 159, scope: !699)
!737 = !DILocation(line: 195, column: 157, scope: !699)
!738 = !DILocation(line: 195, column: 11, scope: !699)
!739 = !DILocation(line: 195, column: 16, scope: !699)
!740 = !DILocation(line: 196, column: 9, scope: !699)
!741 = !DILocation(line: 197, column: 9, scope: !699)
!742 = !DILocation(line: 198, column: 9, scope: !699)
!743 = !DILocation(line: 199, column: 10, scope: !699)
!744 = !DILocation(line: 200, column: 10, scope: !699)
!745 = !DILocation(line: 201, column: 10, scope: !699)
!746 = !DILocation(line: 194, column: 9, scope: !699)
!747 = distinct !{!747, !692, !748}
!748 = !DILocation(line: 195, column: 5, scope: !693)
!749 = !DILocation(line: 197, column: 5, scope: !693)
!750 = !DILocation(line: 203, column: 7, scope: !686)
!751 = !DILocation(line: 204, column: 8, scope: !686)
!752 = !DILocation(line: 192, column: 7, scope: !686)
!753 = distinct !{!753, !676, !754}
!754 = !DILocation(line: 193, column: 3, scope: !677)
!755 = !DILocation(line: 195, column: 3, scope: !677)
!756 = !DILocation(line: 207, column: 3, scope: !659)
!757 = distinct !DISubprogram(name: "l2norm", scope: !44, file: !44, line: 337, type: !758, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!758 = !DISubroutineType(types: !759)
!759 = !{!9, !11, !15}
!760 = !DILocalVariable(name: "x", arg: 1, scope: !757, file: !44, line: 337, type: !11)
!761 = !DILocation(line: 0, scope: !757)
!762 = !DILocalVariable(name: "len", arg: 2, scope: !757, file: !44, line: 337, type: !15)
!763 = !DILocalVariable(name: "a", scope: !757, file: !44, line: 340, type: !9)
!764 = !DILocalVariable(name: "i", scope: !757, file: !44, line: 339, type: !15)
!765 = !DILocation(line: 342, column: 3, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !44, line: 344, column: 3)
!767 = distinct !DILexicalBlock(scope: !768, file: !44, line: 343, column: 3)
!768 = distinct !DILexicalBlock(scope: !757, file: !44, line: 343, column: 3)
!769 = !DILocation(line: 0, scope: !768)
!770 = !DILocation(line: 342, column: 13, scope: !766)
!771 = !DILocation(line: 342, column: 14, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !44, line: 342, column: 9)
!773 = distinct !DILexicalBlock(scope: !766, file: !44, line: 342, column: 13)
!774 = !DILocation(line: 342, column: 9, scope: !773)
!775 = !DILocation(line: 342, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !44, line: 342, column: 22)
!777 = !DILocation(line: 343, column: 14, scope: !773)
!778 = !DILocation(line: 343, column: 10, scope: !773)
!779 = !DILocation(line: 343, column: 25, scope: !773)
!780 = !DILocation(line: 343, column: 21, scope: !773)
!781 = !DILocation(line: 343, column: 19, scope: !773)
!782 = !DILocation(line: 343, column: 7, scope: !773)
!783 = !DILocation(line: 342, column: 7, scope: !773)
!784 = distinct !{!784, !765, !785}
!785 = !DILocation(line: 343, column: 3, scope: !766)
!786 = !DILocation(line: 345, column: 3, scope: !766)
!787 = !DILocation(line: 345, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !44, line: 349, column: 3)
!789 = distinct !DILexicalBlock(scope: !768, file: !44, line: 348, column: 3)
!790 = !DILocalVariable(name: "tmp", scope: !757, file: !44, line: 341, type: !9)
!791 = !DILocation(line: 345, column: 3, scope: !768)
!792 = distinct !DISubprogram(name: "ssor_pc", scope: !44, file: !44, line: 271, type: !793, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !364, !15, !9, !11}
!795 = !DILocalVariable(name: "sys", arg: 1, scope: !792, file: !44, line: 271, type: !364)
!796 = !DILocation(line: 0, scope: !792)
!797 = !DILocalVariable(name: "nsweep", arg: 2, scope: !792, file: !44, line: 271, type: !15)
!798 = !DILocalVariable(name: "omega", arg: 3, scope: !792, file: !44, line: 271, type: !9)
!799 = !DILocalVariable(name: "r", arg: 4, scope: !792, file: !44, line: 271, type: !11)
!800 = !DILocation(line: 276, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !44, line: 287, column: 3)
!802 = distinct !DILexicalBlock(scope: !792, file: !44, line: 286, column: 3)
!803 = !DILocalVariable(name: "nx", scope: !792, file: !44, line: 277, type: !15)
!804 = !DILocation(line: 277, column: 13, scope: !801)
!805 = !DILocalVariable(name: "ny", scope: !792, file: !44, line: 278, type: !15)
!806 = !DILocation(line: 279, column: 11, scope: !801)
!807 = !DILocation(line: 279, column: 22, scope: !801)
!808 = !DILocation(line: 279, column: 16, scope: !801)
!809 = !DILocalVariable(name: "n", scope: !792, file: !44, line: 276, type: !15)
!810 = !DILocation(line: 280, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !801, file: !44, line: 280, column: 3)
!812 = !DILocation(line: 280, column: 34, scope: !811)
!813 = !DILocation(line: 280, column: 9, scope: !811)
!814 = !DILocalVariable(name: "tmp", scope: !792, file: !44, line: 284, type: !16)
!815 = !DILocation(line: 280, column: 10, scope: !801)
!816 = !DILocalVariable(name: "zpad", scope: !792, file: !44, line: 282, type: !11)
!817 = !DILocalVariable(name: "i", scope: !792, file: !44, line: 273, type: !15)
!818 = !DILocation(line: 281, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !44, line: 284, column: 3)
!820 = distinct !DILexicalBlock(scope: !802, file: !44, line: 283, column: 3)
!821 = !DILocation(line: 0, scope: !802)
!822 = !DILocation(line: 281, column: 13, scope: !819)
!823 = !DILocation(line: 281, column: 14, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !44, line: 281, column: 9)
!825 = distinct !DILexicalBlock(scope: !819, file: !44, line: 281, column: 13)
!826 = !DILocation(line: 281, column: 9, scope: !825)
!827 = !DILocation(line: 281, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !44, line: 281, column: 20)
!829 = !DILocation(line: 281, column: 12, scope: !825)
!830 = !DILocation(line: 281, column: 17, scope: !825)
!831 = !DILocation(line: 281, column: 7, scope: !825)
!832 = distinct !{!832, !818, !833}
!833 = !DILocation(line: 282, column: 3, scope: !819)
!834 = !DILocation(line: 284, column: 3, scope: !819)
!835 = !DILocation(line: 283, column: 13, scope: !802)
!836 = !DILocalVariable(name: "ac", scope: !792, file: !44, line: 279, type: !11)
!837 = !DILocation(line: 284, column: 13, scope: !802)
!838 = !DILocalVariable(name: "ax", scope: !792, file: !44, line: 280, type: !11)
!839 = !DILocation(line: 285, column: 13, scope: !802)
!840 = !DILocalVariable(name: "ay", scope: !792, file: !44, line: 281, type: !11)
!841 = !DILocation(line: 286, column: 18, scope: !802)
!842 = !DILocation(line: 286, column: 12, scope: !802)
!843 = !DILocalVariable(name: "z", scope: !792, file: !44, line: 283, type: !11)
!844 = !DILocation(line: 288, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !44, line: 290, column: 3)
!846 = distinct !DILexicalBlock(scope: !802, file: !44, line: 289, column: 3)
!847 = !DILocation(line: 283, column: 6, scope: !802)
!848 = !DILocation(line: 284, column: 6, scope: !802)
!849 = !DILocation(line: 285, column: 6, scope: !802)
!850 = !DILocation(line: 286, column: 5, scope: !802)
!851 = !DILocation(line: 288, column: 13, scope: !845)
!852 = !DILocation(line: 288, column: 14, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !44, line: 288, column: 9)
!854 = distinct !DILexicalBlock(scope: !845, file: !44, line: 288, column: 13)
!855 = !DILocation(line: 288, column: 9, scope: !854)
!856 = !DILocation(line: 288, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !44, line: 288, column: 25)
!858 = !DILocalVariable(name: "k", scope: !792, file: !44, line: 275, type: !15)
!859 = !DILocation(line: 290, column: 5, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !44, line: 292, column: 5)
!861 = distinct !DILexicalBlock(scope: !854, file: !44, line: 291, column: 5)
!862 = !DILocation(line: 0, scope: !854)
!863 = !DILocation(line: 290, column: 15, scope: !860)
!864 = !DILocation(line: 290, column: 16, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !44, line: 290, column: 11)
!866 = distinct !DILexicalBlock(scope: !860, file: !44, line: 290, column: 15)
!867 = !DILocation(line: 290, column: 11, scope: !866)
!868 = !DILocation(line: 290, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !44, line: 290, column: 23)
!870 = !DILocation(line: 291, column: 9, scope: !866)
!871 = !DILocalVariable(name: "j", scope: !792, file: !44, line: 274, type: !15)
!872 = !DILocation(line: 292, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !44, line: 294, column: 7)
!874 = distinct !DILexicalBlock(scope: !866, file: !44, line: 293, column: 7)
!875 = !DILocation(line: 0, scope: !866)
!876 = !DILocation(line: 292, column: 17, scope: !873)
!877 = !DILocation(line: 292, column: 18, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !44, line: 292, column: 13)
!879 = distinct !DILexicalBlock(scope: !873, file: !44, line: 292, column: 17)
!880 = !DILocation(line: 292, column: 13, scope: !879)
!881 = !DILocation(line: 292, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !44, line: 292, column: 25)
!883 = !DILocation(line: 293, column: 25, scope: !879)
!884 = !DILocation(line: 293, column: 40, scope: !879)
!885 = !DILocation(line: 293, column: 36, scope: !879)
!886 = !DILocation(line: 293, column: 34, scope: !879)
!887 = !DILocation(line: 293, column: 64, scope: !879)
!888 = !DILocation(line: 293, column: 60, scope: !879)
!889 = !DILocation(line: 293, column: 76, scope: !879)
!890 = !DILocation(line: 293, column: 71, scope: !879)
!891 = !DILocation(line: 293, column: 87, scope: !879)
!892 = !DILocation(line: 293, column: 83, scope: !879)
!893 = !DILocation(line: 293, column: 81, scope: !879)
!894 = !DILocation(line: 293, column: 69, scope: !879)
!895 = !DILocation(line: 293, column: 101, scope: !879)
!896 = !DILocation(line: 293, column: 96, scope: !879)
!897 = !DILocation(line: 293, column: 112, scope: !879)
!898 = !DILocation(line: 293, column: 108, scope: !879)
!899 = !DILocation(line: 293, column: 106, scope: !879)
!900 = !DILocation(line: 293, column: 94, scope: !879)
!901 = !DILocation(line: 293, column: 125, scope: !879)
!902 = !DILocation(line: 293, column: 120, scope: !879)
!903 = !DILocation(line: 293, column: 139, scope: !879)
!904 = !DILocation(line: 293, column: 144, scope: !879)
!905 = !DILocation(line: 293, column: 136, scope: !879)
!906 = !DILocation(line: 293, column: 132, scope: !879)
!907 = !DILocation(line: 293, column: 130, scope: !879)
!908 = !DILocation(line: 293, column: 118, scope: !879)
!909 = !DILocation(line: 293, column: 158, scope: !879)
!910 = !DILocation(line: 293, column: 153, scope: !879)
!911 = !DILocation(line: 293, column: 176, scope: !879)
!912 = !DILocation(line: 293, column: 170, scope: !879)
!913 = !DILocation(line: 293, column: 166, scope: !879)
!914 = !DILocation(line: 293, column: 164, scope: !879)
!915 = !DILocation(line: 293, column: 151, scope: !879)
!916 = !DILocation(line: 293, column: 54, scope: !879)
!917 = !DILocation(line: 293, column: 191, scope: !879)
!918 = !DILocation(line: 293, column: 186, scope: !879)
!919 = !DILocation(line: 293, column: 184, scope: !879)
!920 = !DILocation(line: 293, column: 45, scope: !879)
!921 = !DILocation(line: 293, column: 13, scope: !879)
!922 = !DILocation(line: 293, column: 18, scope: !879)
!923 = !DILocation(line: 296, column: 11, scope: !879)
!924 = !DILocation(line: 297, column: 11, scope: !879)
!925 = !DILocation(line: 298, column: 12, scope: !879)
!926 = !DILocation(line: 299, column: 12, scope: !879)
!927 = !DILocation(line: 300, column: 12, scope: !879)
!928 = !DILocation(line: 292, column: 11, scope: !879)
!929 = distinct !{!929, !872, !930}
!930 = !DILocation(line: 293, column: 7, scope: !873)
!931 = !DILocation(line: 295, column: 7, scope: !873)
!932 = !DILocation(line: 302, column: 9, scope: !866)
!933 = !DILocation(line: 303, column: 10, scope: !866)
!934 = !DILocation(line: 290, column: 9, scope: !866)
!935 = distinct !{!935, !859, !936}
!936 = !DILocation(line: 291, column: 5, scope: !860)
!937 = !DILocation(line: 293, column: 5, scope: !860)
!938 = !DILocation(line: 306, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !44, line: 308, column: 5)
!940 = distinct !DILexicalBlock(scope: !854, file: !44, line: 307, column: 5)
!941 = !DILocation(line: 306, column: 15, scope: !939)
!942 = !DILocation(line: 306, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !44, line: 306, column: 11)
!944 = distinct !DILexicalBlock(scope: !939, file: !44, line: 306, column: 15)
!945 = !DILocation(line: 306, column: 11, scope: !944)
!946 = !DILocation(line: 306, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !44, line: 306, column: 23)
!948 = !DILocation(line: 307, column: 9, scope: !944)
!949 = !DILocation(line: 308, column: 10, scope: !944)
!950 = !DILocation(line: 309, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !44, line: 311, column: 7)
!952 = distinct !DILexicalBlock(scope: !944, file: !44, line: 310, column: 7)
!953 = !DILocation(line: 0, scope: !944)
!954 = !DILocation(line: 309, column: 17, scope: !951)
!955 = !DILocation(line: 309, column: 18, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !44, line: 309, column: 13)
!957 = distinct !DILexicalBlock(scope: !951, file: !44, line: 309, column: 17)
!958 = !DILocation(line: 309, column: 13, scope: !957)
!959 = !DILocation(line: 309, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !44, line: 309, column: 25)
!961 = !DILocation(line: 310, column: 11, scope: !957)
!962 = !DILocation(line: 311, column: 11, scope: !957)
!963 = !DILocation(line: 312, column: 12, scope: !957)
!964 = !DILocation(line: 313, column: 12, scope: !957)
!965 = !DILocation(line: 314, column: 12, scope: !957)
!966 = !DILocation(line: 315, column: 25, scope: !957)
!967 = !DILocation(line: 315, column: 40, scope: !957)
!968 = !DILocation(line: 315, column: 36, scope: !957)
!969 = !DILocation(line: 315, column: 34, scope: !957)
!970 = !DILocation(line: 315, column: 64, scope: !957)
!971 = !DILocation(line: 315, column: 60, scope: !957)
!972 = !DILocation(line: 315, column: 76, scope: !957)
!973 = !DILocation(line: 315, column: 71, scope: !957)
!974 = !DILocation(line: 315, column: 87, scope: !957)
!975 = !DILocation(line: 315, column: 83, scope: !957)
!976 = !DILocation(line: 315, column: 81, scope: !957)
!977 = !DILocation(line: 315, column: 69, scope: !957)
!978 = !DILocation(line: 315, column: 101, scope: !957)
!979 = !DILocation(line: 315, column: 96, scope: !957)
!980 = !DILocation(line: 315, column: 112, scope: !957)
!981 = !DILocation(line: 315, column: 108, scope: !957)
!982 = !DILocation(line: 315, column: 106, scope: !957)
!983 = !DILocation(line: 315, column: 94, scope: !957)
!984 = !DILocation(line: 315, column: 125, scope: !957)
!985 = !DILocation(line: 315, column: 120, scope: !957)
!986 = !DILocation(line: 315, column: 139, scope: !957)
!987 = !DILocation(line: 315, column: 144, scope: !957)
!988 = !DILocation(line: 315, column: 136, scope: !957)
!989 = !DILocation(line: 315, column: 132, scope: !957)
!990 = !DILocation(line: 315, column: 130, scope: !957)
!991 = !DILocation(line: 315, column: 118, scope: !957)
!992 = !DILocation(line: 315, column: 158, scope: !957)
!993 = !DILocation(line: 315, column: 153, scope: !957)
!994 = !DILocation(line: 315, column: 176, scope: !957)
!995 = !DILocation(line: 315, column: 170, scope: !957)
!996 = !DILocation(line: 315, column: 166, scope: !957)
!997 = !DILocation(line: 315, column: 164, scope: !957)
!998 = !DILocation(line: 315, column: 151, scope: !957)
!999 = !DILocation(line: 315, column: 54, scope: !957)
!1000 = !DILocation(line: 315, column: 191, scope: !957)
!1001 = !DILocation(line: 315, column: 186, scope: !957)
!1002 = !DILocation(line: 315, column: 184, scope: !957)
!1003 = !DILocation(line: 315, column: 45, scope: !957)
!1004 = !DILocation(line: 315, column: 13, scope: !957)
!1005 = !DILocation(line: 315, column: 18, scope: !957)
!1006 = !DILocation(line: 309, column: 11, scope: !957)
!1007 = distinct !{!1007, !950, !1008}
!1008 = !DILocation(line: 310, column: 7, scope: !951)
!1009 = !DILocation(line: 312, column: 7, scope: !951)
!1010 = !DILocation(line: 319, column: 9, scope: !944)
!1011 = !DILocation(line: 306, column: 9, scope: !944)
!1012 = distinct !{!1012, !938, !1013}
!1013 = !DILocation(line: 307, column: 5, scope: !939)
!1014 = !DILocation(line: 309, column: 5, scope: !939)
!1015 = !DILocation(line: 288, column: 7, scope: !854)
!1016 = distinct !{!1016, !844, !1017}
!1017 = !DILocation(line: 289, column: 3, scope: !845)
!1018 = !DILocation(line: 291, column: 3, scope: !845)
!1019 = !DILocation(line: 324, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !44, line: 326, column: 3)
!1021 = distinct !DILexicalBlock(scope: !802, file: !44, line: 325, column: 3)
!1022 = !DILocation(line: 324, column: 13, scope: !1020)
!1023 = !DILocation(line: 324, column: 14, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !44, line: 324, column: 9)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !44, line: 324, column: 13)
!1026 = !DILocation(line: 324, column: 9, scope: !1025)
!1027 = !DILocation(line: 324, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !44, line: 324, column: 21)
!1029 = !DILocation(line: 325, column: 7, scope: !1025)
!1030 = !DILocation(line: 326, column: 5, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !44, line: 328, column: 5)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !44, line: 327, column: 5)
!1033 = !DILocation(line: 0, scope: !1025)
!1034 = !DILocation(line: 326, column: 15, scope: !1031)
!1035 = !DILocation(line: 326, column: 16, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !44, line: 326, column: 11)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !44, line: 326, column: 15)
!1038 = !DILocation(line: 326, column: 11, scope: !1037)
!1039 = !DILocation(line: 326, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !44, line: 326, column: 23)
!1041 = !DILocation(line: 327, column: 12, scope: !1037)
!1042 = !DILocation(line: 327, column: 10, scope: !1037)
!1043 = !DILocation(line: 328, column: 9, scope: !1037)
!1044 = !DILocation(line: 329, column: 9, scope: !1037)
!1045 = !DILocation(line: 326, column: 9, scope: !1037)
!1046 = distinct !{!1046, !1030, !1047}
!1047 = !DILocation(line: 327, column: 5, scope: !1031)
!1048 = !DILocation(line: 329, column: 5, scope: !1031)
!1049 = !DILocation(line: 331, column: 7, scope: !1025)
!1050 = !DILocation(line: 324, column: 7, scope: !1025)
!1051 = distinct !{!1051, !1019, !1052}
!1052 = !DILocation(line: 325, column: 3, scope: !1020)
!1053 = !DILocation(line: 327, column: 3, scope: !1020)
!1054 = !DILocation(line: 333, column: 8, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !44, line: 331, column: 3)
!1056 = distinct !DILexicalBlock(scope: !802, file: !44, line: 330, column: 3)
!1057 = !DILocation(line: 333, column: 3, scope: !1055)
!1058 = !DILocation(line: 334, column: 3, scope: !802)
!1059 = distinct !DISubprogram(name: "nka_correction", scope: !24, file: !24, line: 273, type: !1060, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !20, !11}
!1062 = !DILocalVariable(name: "state", arg: 1, scope: !1059, file: !24, line: 273, type: !20)
!1063 = !DILocation(line: 0, scope: !1059)
!1064 = !DILocalVariable(name: "f", arg: 2, scope: !1059, file: !24, line: 273, type: !11)
!1065 = !DILocation(line: 279, column: 14, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 279, column: 7)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !24, line: 293, column: 3)
!1068 = !DILocation(line: 279, column: 7, scope: !1066)
!1069 = !DILocation(line: 279, column: 7, scope: !1067)
!1070 = !DILocation(line: 280, column: 18, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !24, line: 279, column: 23)
!1072 = !DILocation(line: 280, column: 29, scope: !1071)
!1073 = !DILocation(line: 280, column: 20, scope: !1071)
!1074 = !DILocation(line: 280, column: 9, scope: !1071)
!1075 = !DILocalVariable(name: "w", scope: !1059, file: !24, line: 285, type: !11)
!1076 = !DILocalVariable(name: "j", scope: !1059, file: !24, line: 276, type: !15)
!1077 = !DILocation(line: 281, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !24, line: 283, column: 5)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !24, line: 282, column: 5)
!1080 = !DILocation(line: 0, scope: !1071)
!1081 = !DILocation(line: 281, column: 15, scope: !1078)
!1082 = !DILocation(line: 281, column: 25, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !24, line: 281, column: 11)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !24, line: 281, column: 15)
!1085 = !DILocation(line: 281, column: 16, scope: !1083)
!1086 = !DILocation(line: 281, column: 11, scope: !1084)
!1087 = !DILocation(line: 281, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !24, line: 281, column: 33)
!1089 = !DILocation(line: 282, column: 23, scope: !1084)
!1090 = !DILocation(line: 282, column: 19, scope: !1084)
!1091 = !DILocation(line: 282, column: 11, scope: !1084)
!1092 = !DILocation(line: 282, column: 16, scope: !1084)
!1093 = !DILocation(line: 281, column: 9, scope: !1084)
!1094 = distinct !{!1094, !1077, !1095}
!1095 = !DILocation(line: 282, column: 5, scope: !1078)
!1096 = !DILocation(line: 284, column: 5, scope: !1078)
!1097 = !DILocation(line: 283, column: 21, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !24, line: 288, column: 5)
!1099 = distinct !DILexicalBlock(scope: !1071, file: !24, line: 287, column: 5)
!1100 = !DILocation(line: 283, column: 33, scope: !1098)
!1101 = !DILocation(line: 283, column: 11, scope: !1098)
!1102 = !DILocalVariable(name: "tmp", scope: !1059, file: !24, line: 289, type: !9)
!1103 = !DILocation(line: 283, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !24, line: 285, column: 5)
!1105 = !DILocalVariable(name: "s", scope: !1059, file: !24, line: 280, type: !9)
!1106 = !DILocation(line: 284, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1071, file: !24, line: 284, column: 9)
!1108 = !DILocation(line: 284, column: 9, scope: !1071)
!1109 = !DILocation(line: 284, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !24, line: 286, column: 7)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !24, line: 285, column: 7)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !24, line: 284, column: 19)
!1113 = !DILocation(line: 287, column: 5, scope: !1112)
!1114 = !DILocation(line: 288, column: 3, scope: !1071)
!1115 = !DILocation(line: 288, column: 14, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 288, column: 7)
!1117 = !DILocation(line: 288, column: 7, scope: !1116)
!1118 = !DILocation(line: 288, column: 7, scope: !1067)
!1119 = !DILocation(line: 291, column: 18, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !24, line: 288, column: 23)
!1121 = !DILocation(line: 291, column: 29, scope: !1120)
!1122 = !DILocation(line: 291, column: 20, scope: !1120)
!1123 = !DILocation(line: 291, column: 9, scope: !1120)
!1124 = !DILocalVariable(name: "v", scope: !1059, file: !24, line: 284, type: !11)
!1125 = !DILocation(line: 292, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !24, line: 294, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !24, line: 293, column: 5)
!1128 = !DILocation(line: 0, scope: !1120)
!1129 = !DILocation(line: 292, column: 15, scope: !1126)
!1130 = !DILocation(line: 292, column: 25, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !24, line: 292, column: 11)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !24, line: 292, column: 15)
!1133 = !DILocation(line: 292, column: 16, scope: !1131)
!1134 = !DILocation(line: 292, column: 11, scope: !1132)
!1135 = !DILocation(line: 292, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !24, line: 292, column: 33)
!1137 = !DILocation(line: 293, column: 11, scope: !1132)
!1138 = !DILocation(line: 293, column: 16, scope: !1132)
!1139 = !DILocation(line: 294, column: 11, scope: !1132)
!1140 = !DILocation(line: 294, column: 16, scope: !1132)
!1141 = !DILocation(line: 292, column: 9, scope: !1132)
!1142 = distinct !{!1142, !1125, !1143}
!1143 = !DILocation(line: 293, column: 5, scope: !1126)
!1144 = !DILocation(line: 295, column: 5, scope: !1126)
!1145 = !DILocation(line: 298, column: 18, scope: !1120)
!1146 = !DILocation(line: 298, column: 32, scope: !1120)
!1147 = !DILocation(line: 298, column: 23, scope: !1120)
!1148 = !DILocation(line: 298, column: 9, scope: !1120)
!1149 = !DILocalVariable(name: "k", scope: !1059, file: !24, line: 277, type: !15)
!1150 = !DILocation(line: 298, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !24, line: 300, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1120, file: !24, line: 299, column: 5)
!1153 = !DILocation(line: 298, column: 15, scope: !1151)
!1154 = !DILocation(line: 298, column: 16, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !24, line: 298, column: 11)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 298, column: 15)
!1157 = !DILocation(line: 298, column: 11, scope: !1156)
!1158 = !DILocation(line: 298, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !24, line: 298, column: 24)
!1160 = !DILocation(line: 299, column: 53, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !24, line: 301, column: 7)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !24, line: 300, column: 7)
!1163 = !DILocation(line: 299, column: 65, scope: !1161)
!1164 = !DILocation(line: 299, column: 84, scope: !1161)
!1165 = !DILocation(line: 299, column: 86, scope: !1161)
!1166 = !DILocation(line: 299, column: 75, scope: !1161)
!1167 = !DILocation(line: 299, column: 43, scope: !1161)
!1168 = !DILocation(line: 299, column: 18, scope: !1161)
!1169 = !DILocation(line: 299, column: 29, scope: !1161)
!1170 = !DILocation(line: 299, column: 20, scope: !1161)
!1171 = !DILocation(line: 299, column: 9, scope: !1161)
!1172 = !DILocation(line: 299, column: 36, scope: !1161)
!1173 = !DILocation(line: 299, column: 41, scope: !1161)
!1174 = !DILocation(line: 298, column: 20, scope: !1162)
!1175 = !DILocation(line: 298, column: 25, scope: !1162)
!1176 = !DILocation(line: 298, column: 11, scope: !1162)
!1177 = distinct !{!1177, !1150, !1178}
!1178 = !DILocation(line: 300, column: 5, scope: !1151)
!1179 = !DILocation(line: 302, column: 5, scope: !1151)
!1180 = !DILocalVariable(name: "nvec", scope: !1059, file: !24, line: 278, type: !15)
!1181 = !DILocation(line: 322, column: 16, scope: !1120)
!1182 = !DILocation(line: 322, column: 27, scope: !1120)
!1183 = !DILocation(line: 322, column: 18, scope: !1120)
!1184 = !DILocation(line: 322, column: 7, scope: !1120)
!1185 = !DILocation(line: 322, column: 43, scope: !1120)
!1186 = !DILocation(line: 322, column: 34, scope: !1120)
!1187 = !DILocation(line: 322, column: 50, scope: !1120)
!1188 = !DILocation(line: 324, column: 18, scope: !1120)
!1189 = !DILocation(line: 324, column: 32, scope: !1120)
!1190 = !DILocation(line: 324, column: 23, scope: !1120)
!1191 = !DILocation(line: 324, column: 9, scope: !1120)
!1192 = !DILocation(line: 324, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !24, line: 326, column: 5)
!1194 = distinct !DILexicalBlock(scope: !1120, file: !24, line: 325, column: 5)
!1195 = !DILocation(line: 324, column: 15, scope: !1193)
!1196 = !DILocation(line: 324, column: 16, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !24, line: 324, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !24, line: 324, column: 15)
!1199 = !DILocation(line: 324, column: 11, scope: !1198)
!1200 = !DILocation(line: 324, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !24, line: 324, column: 24)
!1202 = !DILocation(line: 327, column: 12, scope: !1198)
!1203 = !DILocation(line: 327, column: 25, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !24, line: 327, column: 11)
!1205 = !DILocation(line: 327, column: 16, scope: !1204)
!1206 = !DILocation(line: 327, column: 11, scope: !1198)
!1207 = !DILocation(line: 330, column: 47, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !24, line: 327, column: 31)
!1209 = !DILocation(line: 330, column: 18, scope: !1208)
!1210 = !DILocation(line: 330, column: 32, scope: !1208)
!1211 = !DILocation(line: 330, column: 23, scope: !1208)
!1212 = !DILocation(line: 330, column: 38, scope: !1208)
!1213 = !DILocation(line: 331, column: 16, scope: !1208)
!1214 = !DILocation(line: 331, column: 21, scope: !1208)
!1215 = !DILocation(line: 332, column: 32, scope: !1208)
!1216 = !DILocation(line: 332, column: 37, scope: !1208)
!1217 = !DILocation(line: 332, column: 23, scope: !1208)
!1218 = !DILocation(line: 332, column: 16, scope: !1208)
!1219 = !DILocation(line: 332, column: 21, scope: !1208)
!1220 = !DILocation(line: 333, column: 18, scope: !1208)
!1221 = !DILocation(line: 333, column: 32, scope: !1208)
!1222 = !DILocation(line: 333, column: 23, scope: !1208)
!1223 = !DILocation(line: 333, column: 38, scope: !1208)
!1224 = !DILocation(line: 334, column: 9, scope: !1208)
!1225 = !DILocation(line: 338, column: 21, scope: !1198)
!1226 = !DILocation(line: 338, column: 23, scope: !1198)
!1227 = !DILocation(line: 338, column: 12, scope: !1198)
!1228 = !DILocalVariable(name: "hk", scope: !1059, file: !24, line: 286, type: !11)
!1229 = !DILocalVariable(name: "hkk", scope: !1059, file: !24, line: 281, type: !9)
!1230 = !DILocation(line: 340, column: 18, scope: !1198)
!1231 = !DILocation(line: 340, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !24, line: 342, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1198, file: !24, line: 341, column: 7)
!1234 = !DILocation(line: 0, scope: !1198)
!1235 = !DILocation(line: 340, column: 17, scope: !1232)
!1236 = !DILocation(line: 340, column: 18, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !24, line: 340, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !24, line: 340, column: 17)
!1239 = !DILocation(line: 340, column: 13, scope: !1238)
!1240 = !DILocation(line: 340, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !24, line: 340, column: 25)
!1242 = !DILocation(line: 341, column: 23, scope: !1238)
!1243 = !DILocation(line: 341, column: 25, scope: !1238)
!1244 = !DILocation(line: 341, column: 14, scope: !1238)
!1245 = !DILocalVariable(name: "hj", scope: !1059, file: !24, line: 287, type: !11)
!1246 = !DILocation(line: 342, column: 20, scope: !1238)
!1247 = !DILocation(line: 342, column: 15, scope: !1238)
!1248 = !DILocalVariable(name: "hkj", scope: !1059, file: !24, line: 282, type: !9)
!1249 = !DILocation(line: 343, column: 20, scope: !1238)
!1250 = !DILocalVariable(name: "i", scope: !1059, file: !24, line: 275, type: !15)
!1251 = !DILocation(line: 343, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !24, line: 345, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1238, file: !24, line: 344, column: 9)
!1254 = !DILocation(line: 0, scope: !1238)
!1255 = !DILocation(line: 343, column: 19, scope: !1252)
!1256 = !DILocation(line: 343, column: 20, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !24, line: 343, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !24, line: 343, column: 19)
!1259 = !DILocation(line: 343, column: 15, scope: !1258)
!1260 = !DILocation(line: 343, column: 13, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !24, line: 343, column: 27)
!1262 = !DILocation(line: 344, column: 23, scope: !1258)
!1263 = !DILocation(line: 344, column: 18, scope: !1258)
!1264 = !DILocation(line: 344, column: 35, scope: !1258)
!1265 = !DILocation(line: 344, column: 30, scope: !1258)
!1266 = !DILocation(line: 344, column: 28, scope: !1258)
!1267 = !DILocation(line: 344, column: 15, scope: !1258)
!1268 = !DILocation(line: 343, column: 24, scope: !1258)
!1269 = !DILocation(line: 343, column: 29, scope: !1258)
!1270 = distinct !{!1270, !1251, !1271}
!1271 = !DILocation(line: 344, column: 9, scope: !1252)
!1272 = !DILocation(line: 346, column: 9, scope: !1252)
!1273 = !DILocation(line: 345, column: 21, scope: !1238)
!1274 = !DILocation(line: 345, column: 16, scope: !1238)
!1275 = !DILocation(line: 345, column: 13, scope: !1238)
!1276 = !DILocation(line: 346, column: 14, scope: !1238)
!1277 = !DILocation(line: 346, column: 19, scope: !1238)
!1278 = !DILocation(line: 347, column: 20, scope: !1238)
!1279 = !DILocation(line: 347, column: 13, scope: !1238)
!1280 = !DILocation(line: 340, column: 22, scope: !1238)
!1281 = !DILocation(line: 340, column: 27, scope: !1238)
!1282 = distinct !{!1282, !1231, !1283}
!1283 = !DILocation(line: 341, column: 7, scope: !1232)
!1284 = !DILocation(line: 343, column: 7, scope: !1232)
!1285 = !DILocation(line: 350, column: 28, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !24, line: 347, column: 7)
!1287 = distinct !DILexicalBlock(scope: !1198, file: !24, line: 346, column: 7)
!1288 = !DILocation(line: 350, column: 17, scope: !1286)
!1289 = !DILocalVariable(name: "tmp___0", scope: !1059, file: !24, line: 290, type: !9)
!1290 = !DILocation(line: 350, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1198, file: !24, line: 350, column: 11)
!1292 = !DILocation(line: 350, column: 11, scope: !1198)
!1293 = !DILocation(line: 351, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !24, line: 352, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !24, line: 351, column: 9)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !24, line: 350, column: 26)
!1297 = !DILocation(line: 351, column: 14, scope: !1294)
!1298 = !DILocation(line: 351, column: 19, scope: !1294)
!1299 = !DILocation(line: 354, column: 7, scope: !1296)
!1300 = !DILocation(line: 356, column: 56, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !24, line: 354, column: 14)
!1302 = !DILocation(line: 356, column: 61, scope: !1301)
!1303 = !DILocation(line: 356, column: 47, scope: !1301)
!1304 = !DILocation(line: 356, column: 18, scope: !1301)
!1305 = !DILocation(line: 356, column: 34, scope: !1301)
!1306 = !DILocation(line: 356, column: 39, scope: !1301)
!1307 = !DILocation(line: 356, column: 25, scope: !1301)
!1308 = !DILocation(line: 356, column: 23, scope: !1301)
!1309 = !DILocation(line: 356, column: 45, scope: !1301)
!1310 = !DILocation(line: 357, column: 22, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !24, line: 357, column: 13)
!1312 = !DILocation(line: 357, column: 27, scope: !1311)
!1313 = !DILocation(line: 357, column: 13, scope: !1311)
!1314 = !DILocation(line: 357, column: 32, scope: !1311)
!1315 = !DILocation(line: 357, column: 13, scope: !1301)
!1316 = !DILocation(line: 358, column: 34, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !24, line: 357, column: 39)
!1318 = !DILocation(line: 358, column: 39, scope: !1317)
!1319 = !DILocation(line: 358, column: 25, scope: !1317)
!1320 = !DILocation(line: 358, column: 18, scope: !1317)
!1321 = !DILocation(line: 358, column: 23, scope: !1317)
!1322 = !DILocation(line: 359, column: 9, scope: !1317)
!1323 = !DILocation(line: 360, column: 58, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1311, file: !24, line: 359, column: 16)
!1325 = !DILocation(line: 360, column: 63, scope: !1324)
!1326 = !DILocation(line: 360, column: 49, scope: !1324)
!1327 = !DILocation(line: 360, column: 20, scope: !1324)
!1328 = !DILocation(line: 360, column: 36, scope: !1324)
!1329 = !DILocation(line: 360, column: 41, scope: !1324)
!1330 = !DILocation(line: 360, column: 27, scope: !1324)
!1331 = !DILocation(line: 360, column: 25, scope: !1324)
!1332 = !DILocation(line: 360, column: 47, scope: !1324)
!1333 = !DILocation(line: 362, column: 37, scope: !1301)
!1334 = !DILocation(line: 362, column: 18, scope: !1301)
!1335 = !DILocation(line: 362, column: 23, scope: !1301)
!1336 = !DILocation(line: 362, column: 28, scope: !1301)
!1337 = !DILocation(line: 363, column: 16, scope: !1301)
!1338 = !DILocation(line: 363, column: 21, scope: !1301)
!1339 = !DILocation(line: 365, column: 22, scope: !1301)
!1340 = !DILocation(line: 365, column: 27, scope: !1301)
!1341 = !DILocation(line: 365, column: 13, scope: !1301)
!1342 = !DILocation(line: 366, column: 14, scope: !1301)
!1343 = !DILocation(line: 324, column: 20, scope: !1198)
!1344 = !DILocation(line: 324, column: 25, scope: !1198)
!1345 = distinct !{!1345, !1192, !1346}
!1346 = !DILocation(line: 325, column: 5, scope: !1193)
!1347 = !DILocation(line: 327, column: 5, scope: !1193)
!1348 = !DILocation(line: 371, column: 12, scope: !1120)
!1349 = !DILocation(line: 371, column: 21, scope: !1120)
!1350 = !DILocation(line: 372, column: 3, scope: !1120)
!1351 = !DILocation(line: 381, column: 16, scope: !1067)
!1352 = !DILocalVariable(name: "new", scope: !1059, file: !24, line: 279, type: !15)
!1353 = !DILocation(line: 382, column: 26, scope: !1067)
!1354 = !DILocation(line: 382, column: 40, scope: !1067)
!1355 = !DILocation(line: 382, column: 31, scope: !1067)
!1356 = !DILocation(line: 382, column: 17, scope: !1067)
!1357 = !DILocation(line: 382, column: 10, scope: !1067)
!1358 = !DILocation(line: 382, column: 15, scope: !1067)
!1359 = !DILocation(line: 385, column: 3, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !24, line: 387, column: 3)
!1361 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 386, column: 3)
!1362 = !DILocation(line: 0, scope: !1067)
!1363 = !DILocation(line: 385, column: 13, scope: !1360)
!1364 = !DILocation(line: 385, column: 23, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !24, line: 385, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !24, line: 385, column: 13)
!1367 = !DILocation(line: 385, column: 14, scope: !1365)
!1368 = !DILocation(line: 385, column: 9, scope: !1366)
!1369 = !DILocation(line: 385, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !24, line: 385, column: 31)
!1371 = !DILocation(line: 386, column: 36, scope: !1366)
!1372 = !DILocation(line: 386, column: 32, scope: !1366)
!1373 = !DILocation(line: 386, column: 16, scope: !1366)
!1374 = !DILocation(line: 386, column: 18, scope: !1366)
!1375 = !DILocation(line: 386, column: 7, scope: !1366)
!1376 = !DILocation(line: 386, column: 25, scope: !1366)
!1377 = !DILocation(line: 386, column: 30, scope: !1366)
!1378 = !DILocation(line: 385, column: 7, scope: !1366)
!1379 = distinct !{!1379, !1359, !1380}
!1380 = !DILocation(line: 386, column: 3, scope: !1360)
!1381 = !DILocation(line: 388, column: 3, scope: !1360)
!1382 = !DILocation(line: 388, column: 14, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 388, column: 7)
!1384 = !DILocation(line: 388, column: 7, scope: !1383)
!1385 = !DILocation(line: 388, column: 7, scope: !1067)
!1386 = !DILocation(line: 389, column: 46, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !24, line: 390, column: 5)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !24, line: 389, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1383, file: !24, line: 388, column: 24)
!1390 = !DILocation(line: 389, column: 51, scope: !1387)
!1391 = !DILocation(line: 389, column: 22, scope: !1387)
!1392 = !DILocation(line: 389, column: 56, scope: !1387)
!1393 = !DILocation(line: 389, column: 15, scope: !1387)
!1394 = !DILocalVariable(name: "tmp___1", scope: !1059, file: !24, line: 291, type: !16)
!1395 = !DILocation(line: 389, column: 9, scope: !1388)
!1396 = !DILocalVariable(name: "c", scope: !1059, file: !24, line: 288, type: !11)
!1397 = !DILocation(line: 393, column: 16, scope: !1388)
!1398 = !DILocation(line: 393, column: 5, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !24, line: 396, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1389, file: !24, line: 395, column: 5)
!1401 = !DILocation(line: 0, scope: !1389)
!1402 = !DILocation(line: 393, column: 15, scope: !1399)
!1403 = !DILocation(line: 393, column: 16, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !24, line: 393, column: 11)
!1405 = distinct !DILexicalBlock(scope: !1399, file: !24, line: 393, column: 15)
!1406 = !DILocation(line: 393, column: 11, scope: !1405)
!1407 = !DILocation(line: 393, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !24, line: 393, column: 24)
!1409 = !DILocation(line: 394, column: 22, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !24, line: 396, column: 7)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !24, line: 395, column: 7)
!1412 = !DILocation(line: 394, column: 34, scope: !1410)
!1413 = !DILocation(line: 394, column: 53, scope: !1410)
!1414 = !DILocation(line: 394, column: 55, scope: !1410)
!1415 = !DILocation(line: 394, column: 44, scope: !1410)
!1416 = !DILocation(line: 394, column: 12, scope: !1410)
!1417 = !DILocalVariable(name: "cj", scope: !1059, file: !24, line: 283, type: !9)
!1418 = !DILocation(line: 395, column: 18, scope: !1411)
!1419 = !DILocation(line: 395, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !24, line: 398, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1405, file: !24, line: 397, column: 7)
!1422 = !DILocation(line: 0, scope: !1405)
!1423 = !DILocation(line: 395, column: 17, scope: !1420)
!1424 = !DILocation(line: 395, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !24, line: 395, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 395, column: 17)
!1427 = !DILocation(line: 395, column: 13, scope: !1426)
!1428 = !DILocation(line: 395, column: 11, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !24, line: 395, column: 25)
!1430 = !DILocation(line: 396, column: 26, scope: !1426)
!1431 = !DILocation(line: 396, column: 28, scope: !1426)
!1432 = !DILocation(line: 396, column: 17, scope: !1426)
!1433 = !DILocation(line: 396, column: 33, scope: !1426)
!1434 = !DILocation(line: 396, column: 15, scope: !1426)
!1435 = !DILocation(line: 396, column: 44, scope: !1426)
!1436 = !DILocation(line: 396, column: 40, scope: !1426)
!1437 = !DILocation(line: 396, column: 38, scope: !1426)
!1438 = !DILocation(line: 396, column: 12, scope: !1426)
!1439 = !DILocation(line: 395, column: 22, scope: !1426)
!1440 = !DILocation(line: 395, column: 27, scope: !1426)
!1441 = distinct !{!1441, !1419, !1442}
!1442 = !DILocation(line: 396, column: 7, scope: !1420)
!1443 = !DILocation(line: 398, column: 7, scope: !1420)
!1444 = !DILocation(line: 397, column: 34, scope: !1405)
!1445 = !DILocation(line: 397, column: 36, scope: !1405)
!1446 = !DILocation(line: 397, column: 25, scope: !1405)
!1447 = !DILocation(line: 397, column: 41, scope: !1405)
!1448 = !DILocation(line: 397, column: 23, scope: !1405)
!1449 = !DILocation(line: 397, column: 21, scope: !1405)
!1450 = !DILocation(line: 397, column: 11, scope: !1405)
!1451 = !DILocation(line: 397, column: 16, scope: !1405)
!1452 = !DILocation(line: 393, column: 20, scope: !1405)
!1453 = !DILocation(line: 393, column: 25, scope: !1405)
!1454 = distinct !{!1454, !1398, !1455}
!1455 = !DILocation(line: 394, column: 5, scope: !1399)
!1456 = !DILocation(line: 396, column: 5, scope: !1399)
!1457 = !DILocation(line: 400, column: 16, scope: !1389)
!1458 = !DILocation(line: 400, column: 5, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !24, line: 402, column: 5)
!1460 = distinct !DILexicalBlock(scope: !1389, file: !24, line: 401, column: 5)
!1461 = !DILocation(line: 400, column: 15, scope: !1459)
!1462 = !DILocation(line: 400, column: 16, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !24, line: 400, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !24, line: 400, column: 15)
!1465 = !DILocation(line: 400, column: 11, scope: !1464)
!1466 = !DILocation(line: 400, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !24, line: 400, column: 24)
!1468 = !DILocation(line: 401, column: 16, scope: !1464)
!1469 = !DILocation(line: 401, column: 12, scope: !1464)
!1470 = !DILocation(line: 402, column: 18, scope: !1464)
!1471 = !DILocation(line: 402, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 404, column: 7)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !24, line: 403, column: 7)
!1474 = !DILocation(line: 0, scope: !1464)
!1475 = !DILocation(line: 402, column: 17, scope: !1472)
!1476 = !DILocation(line: 402, column: 18, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !24, line: 402, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !24, line: 402, column: 17)
!1479 = !DILocation(line: 402, column: 13, scope: !1478)
!1480 = !DILocation(line: 402, column: 11, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !24, line: 402, column: 25)
!1482 = !DILocation(line: 403, column: 26, scope: !1478)
!1483 = !DILocation(line: 403, column: 28, scope: !1478)
!1484 = !DILocation(line: 403, column: 17, scope: !1478)
!1485 = !DILocation(line: 403, column: 33, scope: !1478)
!1486 = !DILocation(line: 403, column: 15, scope: !1478)
!1487 = !DILocation(line: 403, column: 44, scope: !1478)
!1488 = !DILocation(line: 403, column: 40, scope: !1478)
!1489 = !DILocation(line: 403, column: 38, scope: !1478)
!1490 = !DILocation(line: 403, column: 12, scope: !1478)
!1491 = !DILocation(line: 402, column: 22, scope: !1478)
!1492 = !DILocation(line: 402, column: 27, scope: !1478)
!1493 = distinct !{!1493, !1471, !1494}
!1494 = !DILocation(line: 403, column: 7, scope: !1472)
!1495 = !DILocation(line: 405, column: 7, scope: !1472)
!1496 = !DILocation(line: 404, column: 34, scope: !1464)
!1497 = !DILocation(line: 404, column: 36, scope: !1464)
!1498 = !DILocation(line: 404, column: 25, scope: !1464)
!1499 = !DILocation(line: 404, column: 41, scope: !1464)
!1500 = !DILocation(line: 404, column: 23, scope: !1464)
!1501 = !DILocation(line: 404, column: 21, scope: !1464)
!1502 = !DILocation(line: 404, column: 11, scope: !1464)
!1503 = !DILocation(line: 404, column: 16, scope: !1464)
!1504 = !DILocation(line: 400, column: 20, scope: !1464)
!1505 = !DILocation(line: 400, column: 25, scope: !1464)
!1506 = distinct !{!1506, !1458, !1507}
!1507 = !DILocation(line: 401, column: 5, scope: !1459)
!1508 = !DILocation(line: 403, column: 5, scope: !1459)
!1509 = !DILocation(line: 407, column: 16, scope: !1389)
!1510 = !DILocation(line: 407, column: 5, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !24, line: 409, column: 5)
!1512 = distinct !DILexicalBlock(scope: !1389, file: !24, line: 408, column: 5)
!1513 = !DILocation(line: 407, column: 15, scope: !1511)
!1514 = !DILocation(line: 407, column: 16, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !24, line: 407, column: 11)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !24, line: 407, column: 15)
!1517 = !DILocation(line: 407, column: 11, scope: !1516)
!1518 = !DILocation(line: 407, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !24, line: 407, column: 24)
!1520 = !DILocation(line: 408, column: 20, scope: !1516)
!1521 = !DILocation(line: 408, column: 22, scope: !1516)
!1522 = !DILocation(line: 408, column: 11, scope: !1516)
!1523 = !DILocation(line: 409, column: 20, scope: !1516)
!1524 = !DILocation(line: 409, column: 22, scope: !1516)
!1525 = !DILocation(line: 409, column: 11, scope: !1516)
!1526 = !DILocation(line: 410, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !24, line: 412, column: 7)
!1528 = distinct !DILexicalBlock(scope: !1516, file: !24, line: 411, column: 7)
!1529 = !DILocation(line: 0, scope: !1516)
!1530 = !DILocation(line: 410, column: 17, scope: !1527)
!1531 = !DILocation(line: 410, column: 27, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !24, line: 410, column: 13)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !24, line: 410, column: 17)
!1534 = !DILocation(line: 410, column: 18, scope: !1532)
!1535 = !DILocation(line: 410, column: 13, scope: !1533)
!1536 = !DILocation(line: 410, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !24, line: 410, column: 35)
!1538 = !DILocation(line: 411, column: 25, scope: !1533)
!1539 = !DILocation(line: 411, column: 21, scope: !1533)
!1540 = !DILocation(line: 411, column: 37, scope: !1533)
!1541 = !DILocation(line: 411, column: 33, scope: !1533)
!1542 = !DILocation(line: 411, column: 48, scope: !1533)
!1543 = !DILocation(line: 411, column: 44, scope: !1533)
!1544 = !DILocation(line: 411, column: 42, scope: !1533)
!1545 = !DILocation(line: 411, column: 30, scope: !1533)
!1546 = !DILocation(line: 411, column: 13, scope: !1533)
!1547 = !DILocation(line: 411, column: 18, scope: !1533)
!1548 = !DILocation(line: 410, column: 11, scope: !1533)
!1549 = distinct !{!1549, !1526, !1550}
!1550 = !DILocation(line: 411, column: 7, scope: !1527)
!1551 = !DILocation(line: 413, column: 7, scope: !1527)
!1552 = !DILocation(line: 407, column: 20, scope: !1516)
!1553 = !DILocation(line: 407, column: 25, scope: !1516)
!1554 = distinct !{!1554, !1510, !1555}
!1555 = !DILocation(line: 408, column: 5, scope: !1511)
!1556 = !DILocation(line: 410, column: 5, scope: !1511)
!1557 = !DILocation(line: 413, column: 10, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !24, line: 414, column: 5)
!1559 = distinct !DILexicalBlock(scope: !1389, file: !24, line: 413, column: 5)
!1560 = !DILocation(line: 413, column: 5, scope: !1558)
!1561 = !DILocation(line: 416, column: 3, scope: !1389)
!1562 = !DILocation(line: 417, column: 3, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !24, line: 419, column: 3)
!1564 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 418, column: 3)
!1565 = !DILocation(line: 417, column: 13, scope: !1563)
!1566 = !DILocation(line: 417, column: 23, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !24, line: 417, column: 9)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !24, line: 417, column: 13)
!1569 = !DILocation(line: 417, column: 14, scope: !1567)
!1570 = !DILocation(line: 417, column: 9, scope: !1568)
!1571 = !DILocation(line: 417, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !24, line: 417, column: 31)
!1573 = !DILocation(line: 418, column: 36, scope: !1568)
!1574 = !DILocation(line: 418, column: 32, scope: !1568)
!1575 = !DILocation(line: 418, column: 16, scope: !1568)
!1576 = !DILocation(line: 418, column: 18, scope: !1568)
!1577 = !DILocation(line: 418, column: 7, scope: !1568)
!1578 = !DILocation(line: 418, column: 25, scope: !1568)
!1579 = !DILocation(line: 418, column: 30, scope: !1568)
!1580 = !DILocation(line: 417, column: 7, scope: !1568)
!1581 = distinct !{!1581, !1562, !1582}
!1582 = !DILocation(line: 418, column: 3, scope: !1563)
!1583 = !DILocation(line: 420, column: 3, scope: !1563)
!1584 = !DILocation(line: 421, column: 12, scope: !1067)
!1585 = !DILocation(line: 421, column: 17, scope: !1067)
!1586 = !DILocation(line: 421, column: 24, scope: !1067)
!1587 = !DILocation(line: 422, column: 33, scope: !1067)
!1588 = !DILocation(line: 422, column: 12, scope: !1067)
!1589 = !DILocation(line: 422, column: 17, scope: !1067)
!1590 = !DILocation(line: 422, column: 24, scope: !1067)
!1591 = !DILocation(line: 423, column: 14, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1067, file: !24, line: 423, column: 7)
!1593 = !DILocation(line: 423, column: 20, scope: !1592)
!1594 = !DILocation(line: 423, column: 7, scope: !1067)
!1595 = !DILocation(line: 424, column: 12, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !24, line: 423, column: 27)
!1597 = !DILocation(line: 424, column: 17, scope: !1596)
!1598 = !DILocation(line: 425, column: 3, scope: !1596)
!1599 = !DILocation(line: 426, column: 14, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !24, line: 425, column: 10)
!1601 = !DILocation(line: 426, column: 28, scope: !1600)
!1602 = !DILocation(line: 426, column: 19, scope: !1600)
!1603 = !DILocation(line: 426, column: 35, scope: !1600)
!1604 = !DILocation(line: 428, column: 10, scope: !1067)
!1605 = !DILocation(line: 428, column: 16, scope: !1067)
!1606 = !DILocation(line: 431, column: 10, scope: !1067)
!1607 = !DILocation(line: 431, column: 18, scope: !1067)
!1608 = !DILocation(line: 432, column: 3, scope: !1067)
!1609 = distinct !DISubprogram(name: "update_system", scope: !44, file: !44, line: 210, type: !1610, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !364, !11}
!1612 = !DILocalVariable(name: "sys", arg: 1, scope: !1609, file: !44, line: 210, type: !364)
!1613 = !DILocation(line: 0, scope: !1609)
!1614 = !DILocalVariable(name: "upad", arg: 2, scope: !1609, file: !44, line: 210, type: !11)
!1615 = !DILocation(line: 216, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !44, line: 225, column: 3)
!1617 = !DILocalVariable(name: "nx", scope: !1609, file: !44, line: 215, type: !15)
!1618 = !DILocation(line: 217, column: 13, scope: !1616)
!1619 = !DILocalVariable(name: "ny", scope: !1609, file: !44, line: 216, type: !15)
!1620 = !DILocation(line: 219, column: 13, scope: !1616)
!1621 = !DILocation(line: 219, column: 23, scope: !1616)
!1622 = !DILocation(line: 219, column: 16, scope: !1616)
!1623 = !DILocalVariable(name: "rx", scope: !1609, file: !44, line: 217, type: !9)
!1624 = !DILocation(line: 220, column: 13, scope: !1616)
!1625 = !DILocation(line: 220, column: 23, scope: !1616)
!1626 = !DILocation(line: 220, column: 16, scope: !1616)
!1627 = !DILocalVariable(name: "ry", scope: !1609, file: !44, line: 218, type: !9)
!1628 = !DILocalVariable(name: "i", scope: !1609, file: !44, line: 212, type: !15)
!1629 = !DILocation(line: 222, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !44, line: 224, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 223, column: 3)
!1632 = !DILocation(line: 0, scope: !1616)
!1633 = !DILocation(line: 222, column: 13, scope: !1630)
!1634 = !DILocation(line: 222, column: 25, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !44, line: 222, column: 9)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !44, line: 222, column: 13)
!1637 = !DILocation(line: 222, column: 19, scope: !1635)
!1638 = !DILocation(line: 222, column: 14, scope: !1635)
!1639 = !DILocation(line: 222, column: 9, scope: !1636)
!1640 = !DILocation(line: 222, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !44, line: 222, column: 32)
!1642 = !DILocation(line: 223, column: 12, scope: !1636)
!1643 = !DILocation(line: 223, column: 15, scope: !1636)
!1644 = !DILocation(line: 223, column: 20, scope: !1636)
!1645 = !DILocation(line: 222, column: 7, scope: !1636)
!1646 = distinct !{!1646, !1629, !1647}
!1647 = !DILocation(line: 223, column: 3, scope: !1630)
!1648 = !DILocation(line: 225, column: 3, scope: !1630)
!1649 = !DILocation(line: 225, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !44, line: 227, column: 3)
!1651 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 226, column: 3)
!1652 = !DILocation(line: 225, column: 13, scope: !1650)
!1653 = !DILocation(line: 225, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !44, line: 225, column: 9)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !44, line: 225, column: 13)
!1656 = !DILocation(line: 225, column: 19, scope: !1654)
!1657 = !DILocation(line: 225, column: 14, scope: !1654)
!1658 = !DILocation(line: 225, column: 9, scope: !1655)
!1659 = !DILocation(line: 225, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1654, file: !44, line: 225, column: 32)
!1661 = !DILocation(line: 226, column: 12, scope: !1655)
!1662 = !DILocation(line: 226, column: 15, scope: !1655)
!1663 = !DILocation(line: 226, column: 20, scope: !1655)
!1664 = !DILocation(line: 225, column: 7, scope: !1655)
!1665 = distinct !{!1665, !1649, !1666}
!1666 = !DILocation(line: 226, column: 3, scope: !1650)
!1667 = !DILocation(line: 228, column: 3, scope: !1650)
!1668 = !DILocation(line: 229, column: 13, scope: !1616)
!1669 = !DILocalVariable(name: "ax", scope: !1609, file: !44, line: 221, type: !11)
!1670 = !DILocation(line: 230, column: 13, scope: !1616)
!1671 = !DILocalVariable(name: "ay", scope: !1609, file: !44, line: 222, type: !11)
!1672 = !DILocation(line: 231, column: 18, scope: !1616)
!1673 = !DILocation(line: 231, column: 12, scope: !1616)
!1674 = !DILocalVariable(name: "u", scope: !1609, file: !44, line: 220, type: !11)
!1675 = !DILocalVariable(name: "k", scope: !1609, file: !44, line: 214, type: !15)
!1676 = !DILocation(line: 232, column: 3, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !44, line: 234, column: 3)
!1678 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 233, column: 3)
!1679 = !DILocation(line: 230, column: 6, scope: !1616)
!1680 = !DILocation(line: 232, column: 13, scope: !1677)
!1681 = !DILocation(line: 232, column: 14, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !44, line: 232, column: 9)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !44, line: 232, column: 13)
!1684 = !DILocation(line: 232, column: 9, scope: !1683)
!1685 = !DILocation(line: 232, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !44, line: 232, column: 21)
!1687 = !DILocation(line: 233, column: 7, scope: !1683)
!1688 = !DILocalVariable(name: "j", scope: !1609, file: !44, line: 213, type: !15)
!1689 = !DILocation(line: 234, column: 5, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !44, line: 236, column: 5)
!1691 = distinct !DILexicalBlock(scope: !1683, file: !44, line: 235, column: 5)
!1692 = !DILocation(line: 0, scope: !1683)
!1693 = !DILocation(line: 234, column: 15, scope: !1690)
!1694 = !DILocation(line: 234, column: 16, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !44, line: 234, column: 11)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !44, line: 234, column: 15)
!1697 = !DILocation(line: 234, column: 11, scope: !1696)
!1698 = !DILocation(line: 234, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !44, line: 234, column: 23)
!1700 = !DILocation(line: 235, column: 23, scope: !1696)
!1701 = !DILocation(line: 235, column: 31, scope: !1696)
!1702 = !DILocation(line: 235, column: 27, scope: !1696)
!1703 = !DILocation(line: 235, column: 25, scope: !1696)
!1704 = !DILocation(line: 235, column: 15, scope: !1696)
!1705 = !DILocalVariable(name: "t", scope: !1609, file: !44, line: 219, type: !9)
!1706 = !DILocation(line: 236, column: 23, scope: !1696)
!1707 = !DILocation(line: 236, column: 12, scope: !1696)
!1708 = !DILocation(line: 236, column: 17, scope: !1696)
!1709 = !DILocation(line: 237, column: 23, scope: !1696)
!1710 = !DILocation(line: 237, column: 12, scope: !1696)
!1711 = !DILocation(line: 237, column: 17, scope: !1696)
!1712 = !DILocation(line: 238, column: 23, scope: !1696)
!1713 = !DILocation(line: 238, column: 12, scope: !1696)
!1714 = !DILocation(line: 238, column: 17, scope: !1696)
!1715 = !DILocation(line: 239, column: 24, scope: !1696)
!1716 = !DILocation(line: 239, column: 12, scope: !1696)
!1717 = !DILocation(line: 239, column: 18, scope: !1696)
!1718 = !DILocation(line: 240, column: 10, scope: !1696)
!1719 = !DILocation(line: 241, column: 10, scope: !1696)
!1720 = !DILocation(line: 242, column: 9, scope: !1696)
!1721 = !DILocation(line: 234, column: 9, scope: !1696)
!1722 = distinct !{!1722, !1689, !1723}
!1723 = !DILocation(line: 235, column: 5, scope: !1690)
!1724 = !DILocation(line: 237, column: 5, scope: !1690)
!1725 = !DILocation(line: 244, column: 7, scope: !1683)
!1726 = !DILocation(line: 245, column: 8, scope: !1683)
!1727 = !DILocation(line: 232, column: 7, scope: !1683)
!1728 = distinct !{!1728, !1676, !1729}
!1729 = !DILocation(line: 233, column: 3, scope: !1677)
!1730 = !DILocation(line: 235, column: 3, scope: !1677)
!1731 = !DILocation(line: 248, column: 3, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !44, line: 250, column: 3)
!1733 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 249, column: 3)
!1734 = !DILocation(line: 248, column: 13, scope: !1732)
!1735 = !DILocation(line: 248, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !44, line: 248, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !44, line: 248, column: 13)
!1738 = !DILocation(line: 248, column: 19, scope: !1736)
!1739 = !DILocation(line: 248, column: 14, scope: !1736)
!1740 = !DILocation(line: 248, column: 9, scope: !1737)
!1741 = !DILocation(line: 248, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !44, line: 248, column: 32)
!1743 = !DILocation(line: 249, column: 35, scope: !1737)
!1744 = !DILocation(line: 249, column: 38, scope: !1737)
!1745 = !DILocation(line: 249, column: 28, scope: !1737)
!1746 = !DILocation(line: 249, column: 26, scope: !1737)
!1747 = !DILocation(line: 249, column: 12, scope: !1737)
!1748 = !DILocation(line: 249, column: 15, scope: !1737)
!1749 = !DILocation(line: 249, column: 20, scope: !1737)
!1750 = !DILocation(line: 248, column: 7, scope: !1737)
!1751 = distinct !{!1751, !1731, !1752}
!1752 = !DILocation(line: 249, column: 3, scope: !1732)
!1753 = !DILocation(line: 251, column: 3, scope: !1732)
!1754 = !DILocation(line: 252, column: 3, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !44, line: 254, column: 3)
!1756 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 253, column: 3)
!1757 = !DILocation(line: 252, column: 13, scope: !1755)
!1758 = !DILocation(line: 252, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !44, line: 252, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !44, line: 252, column: 13)
!1761 = !DILocation(line: 252, column: 19, scope: !1759)
!1762 = !DILocation(line: 252, column: 14, scope: !1759)
!1763 = !DILocation(line: 252, column: 9, scope: !1760)
!1764 = !DILocation(line: 252, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !44, line: 252, column: 32)
!1766 = !DILocation(line: 253, column: 35, scope: !1760)
!1767 = !DILocation(line: 253, column: 38, scope: !1760)
!1768 = !DILocation(line: 253, column: 28, scope: !1760)
!1769 = !DILocation(line: 253, column: 26, scope: !1760)
!1770 = !DILocation(line: 253, column: 12, scope: !1760)
!1771 = !DILocation(line: 253, column: 15, scope: !1760)
!1772 = !DILocation(line: 253, column: 20, scope: !1760)
!1773 = !DILocation(line: 252, column: 7, scope: !1760)
!1774 = distinct !{!1774, !1754, !1775}
!1775 = !DILocation(line: 253, column: 3, scope: !1755)
!1776 = !DILocation(line: 255, column: 3, scope: !1755)
!1777 = !DILocation(line: 256, column: 13, scope: !1616)
!1778 = !DILocalVariable(name: "ac", scope: !1609, file: !44, line: 223, type: !11)
!1779 = !DILocation(line: 257, column: 13, scope: !1616)
!1780 = !DILocation(line: 258, column: 13, scope: !1616)
!1781 = !DILocation(line: 259, column: 3, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !44, line: 261, column: 3)
!1783 = distinct !DILexicalBlock(scope: !1616, file: !44, line: 260, column: 3)
!1784 = !DILocation(line: 258, column: 6, scope: !1616)
!1785 = !DILocation(line: 256, column: 6, scope: !1616)
!1786 = !DILocation(line: 259, column: 13, scope: !1782)
!1787 = !DILocation(line: 259, column: 14, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !44, line: 259, column: 9)
!1789 = distinct !DILexicalBlock(scope: !1782, file: !44, line: 259, column: 13)
!1790 = !DILocation(line: 259, column: 9, scope: !1789)
!1791 = !DILocation(line: 259, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !44, line: 259, column: 21)
!1793 = !DILocation(line: 260, column: 5, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !44, line: 262, column: 5)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !44, line: 261, column: 5)
!1796 = !DILocation(line: 0, scope: !1789)
!1797 = !DILocation(line: 260, column: 15, scope: !1794)
!1798 = !DILocation(line: 260, column: 16, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !44, line: 260, column: 11)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !44, line: 260, column: 15)
!1801 = !DILocation(line: 260, column: 11, scope: !1800)
!1802 = !DILocation(line: 260, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !44, line: 260, column: 23)
!1804 = !DILocation(line: 261, column: 26, scope: !1800)
!1805 = !DILocation(line: 261, column: 21, scope: !1800)
!1806 = !DILocation(line: 261, column: 38, scope: !1800)
!1807 = !DILocation(line: 261, column: 33, scope: !1800)
!1808 = !DILocation(line: 261, column: 31, scope: !1800)
!1809 = !DILocation(line: 261, column: 51, scope: !1800)
!1810 = !DILocation(line: 261, column: 46, scope: !1800)
!1811 = !DILocation(line: 261, column: 44, scope: !1800)
!1812 = !DILocation(line: 261, column: 64, scope: !1800)
!1813 = !DILocation(line: 261, column: 59, scope: !1800)
!1814 = !DILocation(line: 261, column: 57, scope: !1800)
!1815 = !DILocation(line: 261, column: 12, scope: !1800)
!1816 = !DILocation(line: 261, column: 17, scope: !1800)
!1817 = !DILocation(line: 262, column: 10, scope: !1800)
!1818 = !DILocation(line: 263, column: 10, scope: !1800)
!1819 = !DILocation(line: 264, column: 10, scope: !1800)
!1820 = !DILocation(line: 260, column: 9, scope: !1800)
!1821 = distinct !{!1821, !1793, !1822}
!1822 = !DILocation(line: 261, column: 5, scope: !1794)
!1823 = !DILocation(line: 263, column: 5, scope: !1794)
!1824 = !DILocation(line: 266, column: 8, scope: !1789)
!1825 = !DILocation(line: 259, column: 7, scope: !1789)
!1826 = distinct !{!1826, !1781, !1827}
!1827 = !DILocation(line: 260, column: 3, scope: !1782)
!1828 = !DILocation(line: 262, column: 3, scope: !1782)
!1829 = !DILocation(line: 268, column: 3, scope: !1616)
!1830 = distinct !DISubprogram(name: "dot_product", scope: !24, file: !24, line: 188, type: !13, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!1831 = !DILocalVariable(name: "len", arg: 1, scope: !1830, file: !24, line: 188, type: !15)
!1832 = !DILocation(line: 0, scope: !1830)
!1833 = !DILocalVariable(name: "a", arg: 2, scope: !1830, file: !24, line: 188, type: !11)
!1834 = !DILocalVariable(name: "b", arg: 3, scope: !1830, file: !24, line: 188, type: !11)
!1835 = !DILocalVariable(name: "s", scope: !1830, file: !24, line: 191, type: !9)
!1836 = !DILocalVariable(name: "j", scope: !1830, file: !24, line: 190, type: !15)
!1837 = !DILocation(line: 193, column: 3, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !24, line: 195, column: 3)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !24, line: 194, column: 3)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !24, line: 193, column: 3)
!1841 = !DILocation(line: 0, scope: !1840)
!1842 = !DILocation(line: 193, column: 13, scope: !1838)
!1843 = !DILocation(line: 193, column: 14, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !24, line: 193, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !24, line: 193, column: 13)
!1846 = !DILocation(line: 193, column: 9, scope: !1845)
!1847 = !DILocation(line: 193, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !24, line: 193, column: 22)
!1849 = !DILocation(line: 194, column: 14, scope: !1845)
!1850 = !DILocation(line: 194, column: 10, scope: !1845)
!1851 = !DILocation(line: 194, column: 25, scope: !1845)
!1852 = !DILocation(line: 194, column: 21, scope: !1845)
!1853 = !DILocation(line: 194, column: 19, scope: !1845)
!1854 = !DILocation(line: 194, column: 7, scope: !1845)
!1855 = !DILocation(line: 193, column: 7, scope: !1845)
!1856 = distinct !{!1856, !1837, !1857}
!1857 = !DILocation(line: 194, column: 3, scope: !1838)
!1858 = !DILocation(line: 196, column: 3, scope: !1838)
!1859 = !DILocation(line: 195, column: 3, scope: !1840)
!1860 = distinct !DISubprogram(name: "nka_restart", scope: !24, file: !24, line: 435, type: !580, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!1861 = !DILocalVariable(name: "state", arg: 1, scope: !1860, file: !24, line: 435, type: !20)
!1862 = !DILocation(line: 0, scope: !1860)
!1863 = !DILocation(line: 440, column: 10, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !24, line: 439, column: 3)
!1865 = !DILocation(line: 440, column: 16, scope: !1864)
!1866 = !DILocation(line: 441, column: 10, scope: !1864)
!1867 = !DILocation(line: 441, column: 15, scope: !1864)
!1868 = !DILocation(line: 442, column: 10, scope: !1864)
!1869 = !DILocation(line: 442, column: 19, scope: !1864)
!1870 = !DILocation(line: 443, column: 10, scope: !1864)
!1871 = !DILocation(line: 443, column: 18, scope: !1864)
!1872 = !DILocation(line: 446, column: 10, scope: !1864)
!1873 = !DILocation(line: 446, column: 15, scope: !1864)
!1874 = !DILocalVariable(name: "k", scope: !1860, file: !24, line: 437, type: !15)
!1875 = !DILocation(line: 447, column: 3, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !24, line: 449, column: 3)
!1877 = distinct !DILexicalBlock(scope: !1864, file: !24, line: 448, column: 3)
!1878 = !DILocation(line: 0, scope: !1864)
!1879 = !DILocation(line: 447, column: 13, scope: !1876)
!1880 = !DILocation(line: 447, column: 23, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !24, line: 447, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !24, line: 447, column: 13)
!1883 = !DILocation(line: 447, column: 14, scope: !1881)
!1884 = !DILocation(line: 447, column: 9, scope: !1882)
!1885 = !DILocation(line: 447, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !24, line: 447, column: 30)
!1887 = !DILocation(line: 448, column: 28, scope: !1882)
!1888 = !DILocation(line: 448, column: 14, scope: !1882)
!1889 = !DILocation(line: 448, column: 19, scope: !1882)
!1890 = !DILocation(line: 448, column: 24, scope: !1882)
!1891 = !DILocation(line: 447, column: 7, scope: !1882)
!1892 = distinct !{!1892, !1875, !1893}
!1893 = !DILocation(line: 448, column: 3, scope: !1876)
!1894 = !DILocation(line: 450, column: 3, scope: !1876)
!1895 = !DILocation(line: 450, column: 12, scope: !1864)
!1896 = !DILocation(line: 450, column: 26, scope: !1864)
!1897 = !DILocation(line: 450, column: 17, scope: !1864)
!1898 = !DILocation(line: 450, column: 32, scope: !1864)
!1899 = !DILocation(line: 451, column: 3, scope: !1864)
!1900 = distinct !DISubprogram(name: "nka_relax", scope: !24, file: !24, line: 454, type: !580, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!1901 = !DILocalVariable(name: "state", arg: 1, scope: !1900, file: !24, line: 454, type: !20)
!1902 = !DILocation(line: 0, scope: !1900)
!1903 = !DILocation(line: 458, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !24, line: 458, column: 7)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !24, line: 458, column: 3)
!1906 = !DILocation(line: 458, column: 7, scope: !1904)
!1907 = !DILocation(line: 458, column: 7, scope: !1905)
!1908 = !DILocation(line: 461, column: 18, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !24, line: 458, column: 23)
!1910 = !DILocalVariable(name: "new", scope: !1900, file: !24, line: 456, type: !15)
!1911 = !DILocation(line: 462, column: 29, scope: !1909)
!1912 = !DILocation(line: 462, column: 43, scope: !1909)
!1913 = !DILocation(line: 462, column: 34, scope: !1909)
!1914 = !DILocation(line: 462, column: 20, scope: !1909)
!1915 = !DILocation(line: 462, column: 12, scope: !1909)
!1916 = !DILocation(line: 462, column: 18, scope: !1909)
!1917 = !DILocation(line: 463, column: 16, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !24, line: 463, column: 9)
!1919 = !DILocation(line: 463, column: 22, scope: !1918)
!1920 = !DILocation(line: 463, column: 9, scope: !1909)
!1921 = !DILocation(line: 464, column: 14, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !24, line: 463, column: 29)
!1923 = !DILocation(line: 464, column: 19, scope: !1922)
!1924 = !DILocation(line: 465, column: 5, scope: !1922)
!1925 = !DILocation(line: 466, column: 16, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1918, file: !24, line: 465, column: 12)
!1927 = !DILocation(line: 466, column: 30, scope: !1926)
!1928 = !DILocation(line: 466, column: 21, scope: !1926)
!1929 = !DILocation(line: 466, column: 37, scope: !1926)
!1930 = !DILocation(line: 469, column: 35, scope: !1909)
!1931 = !DILocation(line: 469, column: 14, scope: !1909)
!1932 = !DILocation(line: 469, column: 19, scope: !1909)
!1933 = !DILocation(line: 469, column: 26, scope: !1909)
!1934 = !DILocation(line: 470, column: 12, scope: !1909)
!1935 = !DILocation(line: 470, column: 17, scope: !1909)
!1936 = !DILocation(line: 471, column: 12, scope: !1909)
!1937 = !DILocation(line: 471, column: 20, scope: !1909)
!1938 = !DILocation(line: 472, column: 3, scope: !1909)
!1939 = !DILocation(line: 473, column: 3, scope: !1905)
