; ModuleID = '/tmp/tmp.ll'
source_filename = "c/mcf-spec2000.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.basket = type { %struct.arc*, i64, i64 }
%struct.arc = type { %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, i64, i64, i64, i64 }
%struct.node = type { i64, i8*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, i64, i64, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i32, [44 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }

@perm = internal global [401 x %struct.basket*] zeroinitializer, align 16, !dbg !0
@initialize = internal global i64 1, align 8, !dbg !163
@basket = internal global [401 x %struct.basket] zeroinitializer, align 16, !dbg !111
@nr_group = internal global i64 0, align 8, !dbg !122
@group_pos = internal global i64 0, align 8, !dbg !124
@basket_size = internal global i64 0, align 8, !dbg !108
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"read_min(): not enough memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"artificial arc with nonzero flow, node %ld (%ld)\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@net = common global %struct.network zeroinitializer, align 8, !dbg !126
@.str.15 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"flow value                 : %0.0f\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"not enough memory, exit(-1)\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\0AMCF SPEC version 1.6.%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"by  Andreas Loebel\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Copyright (c) 1998,1999   ZIB Berlin\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"All Rights Reserved.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"read error, exit\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"optimal\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i64 @bea_compute_red_cost(%struct.arc* %arc) #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata %struct.arc* %arc, metadata !176, metadata !DIExpression()), !dbg !177
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc, i32 0, i32 4, !dbg !178
  %0 = load i64, i64* %cost, align 8, !dbg !178
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc, i32 0, i32 0, !dbg !180
  %1 = load %struct.node*, %struct.node** %tail, align 8, !dbg !180
  %potential = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 11, !dbg !181
  %2 = load i64, i64* %potential, align 8, !dbg !181
  %sub = sub nsw i64 %0, %2, !dbg !182
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc, i32 0, i32 1, !dbg !183
  %3 = load %struct.node*, %struct.node** %head, align 8, !dbg !183
  %potential1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 11, !dbg !184
  %4 = load i64, i64* %potential1, align 8, !dbg !184
  %add = add nsw i64 %sub, %4, !dbg !185
  ret i64 %add, !dbg !186
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @bea_is_dual_infeasible(%struct.arc* %arc, i64 %red_cost) #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata %struct.arc* %arc, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 %red_cost, metadata !192, metadata !DIExpression()), !dbg !191
  %cmp = icmp slt i64 %red_cost, 0, !dbg !193
  br i1 %cmp, label %if.then, label %if.else3, !dbg !196

if.then:                                          ; preds = %entry
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc, i32 0, i32 7, !dbg !197
  %0 = load i64, i64* %ident, align 8, !dbg !197
  %cmp1 = icmp eq i64 %0, 1, !dbg !200
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !201

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 1, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end, !dbg !203

if.else:                                          ; preds = %if.then
  br label %_L, !dbg !205

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !207

if.else3:                                         ; preds = %entry
  br label %_L, !dbg !207

_L:                                               ; preds = %if.else3, %if.else
  %cmp4 = icmp sgt i64 %red_cost, 0, !dbg !208
  br i1 %cmp4, label %if.then5, label %if.else11, !dbg !210

if.then5:                                         ; preds = %_L
  %ident6 = getelementptr inbounds %struct.arc, %struct.arc* %arc, i32 0, i32 7, !dbg !211
  %1 = load i64, i64* %ident6, align 8, !dbg !211
  %cmp7 = icmp eq i64 %1, 2, !dbg !214
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !215

if.then8:                                         ; preds = %if.then5
  call void @llvm.dbg.value(metadata i32 1, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end10, !dbg !216

if.else9:                                         ; preds = %if.then5
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  %tmp.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.else9 ], !dbg !218
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end12, !dbg !219

if.else11:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.end10
  %tmp.1 = phi i32 [ %tmp.0, %if.end10 ], [ 0, %if.else11 ], !dbg !220
  call void @llvm.dbg.value(metadata i32 %tmp.1, metadata !202, metadata !DIExpression()), !dbg !191
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %tmp.2 = phi i32 [ 1, %if.end ], [ %tmp.1, %if.end12 ], !dbg !221
  call void @llvm.dbg.value(metadata i32 %tmp.2, metadata !202, metadata !DIExpression()), !dbg !191
  ret i32 %tmp.2, !dbg !222
}

; Function Attrs: noinline nounwind ssp uwtable
define void @sort_basket(i64 %min, i64 %max) #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i64 %min, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %max, metadata !228, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %min, metadata !229, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %max, metadata !230, metadata !DIExpression()), !dbg !227
  %add = add nsw i64 %min, %max, !dbg !231
  %div = sdiv i64 %add, 2, !dbg !233
  %arrayidx = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %div, !dbg !234
  %0 = load %struct.basket*, %struct.basket** %arrayidx, align 8, !dbg !234
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %0, i32 0, i32 2, !dbg !235
  %1 = load i64, i64* %abs_cost, align 8, !dbg !235
  call void @llvm.dbg.value(metadata i64 %1, metadata !236, metadata !DIExpression()), !dbg !227
  br label %while.body, !dbg !237

while.body:                                       ; preds = %if.end26, %entry
  %l.0 = phi i64 [ %min, %entry ], [ %l.2, %if.end26 ], !dbg !240
  %r.0 = phi i64 [ %max, %entry ], [ %r.2, %if.end26 ], !dbg !240
  call void @llvm.dbg.value(metadata i64 %r.0, metadata !230, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %l.0, metadata !229, metadata !DIExpression()), !dbg !227
  br label %while_continue___2, !dbg !241

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !241

while_continue:                                   ; preds = %while_continue___2
  br label %while.body2, !dbg !242

while.body2:                                      ; preds = %if.end, %while_continue
  %l.1 = phi i64 [ %l.0, %while_continue ], [ %inc, %if.end ], !dbg !240
  call void @llvm.dbg.value(metadata i64 %l.1, metadata !229, metadata !DIExpression()), !dbg !227
  br label %while_continue___3, !dbg !246

while_continue___3:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !246

while_continue___0:                               ; preds = %while_continue___3
  %arrayidx3 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %l.1, !dbg !247
  %2 = load %struct.basket*, %struct.basket** %arrayidx3, align 8, !dbg !247
  %abs_cost4 = getelementptr inbounds %struct.basket, %struct.basket* %2, i32 0, i32 2, !dbg !250
  %3 = load i64, i64* %abs_cost4, align 8, !dbg !250
  %cmp = icmp sgt i64 %3, %1, !dbg !251
  br i1 %cmp, label %if.end, label %if.then, !dbg !252

if.then:                                          ; preds = %while_continue___0
  br label %while_break___0, !dbg !253

if.end:                                           ; preds = %while_continue___0
  %inc = add nsw i64 %l.1, 1, !dbg !255
  call void @llvm.dbg.value(metadata i64 %inc, metadata !229, metadata !DIExpression()), !dbg !227
  br label %while.body2, !dbg !242, !llvm.loop !256

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !258

while_break___0:                                  ; preds = %while_break___3, %if.then
  br label %while.body6, !dbg !259

while.body6:                                      ; preds = %if.end11, %while_break___0
  %r.1 = phi i64 [ %r.0, %while_break___0 ], [ %dec, %if.end11 ], !dbg !240
  call void @llvm.dbg.value(metadata i64 %r.1, metadata !230, metadata !DIExpression()), !dbg !227
  br label %while_continue___4, !dbg !262

while_continue___4:                               ; preds = %while.body6
  br label %while_continue___1, !dbg !262

while_continue___1:                               ; preds = %while_continue___4
  %arrayidx7 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %r.1, !dbg !263
  %4 = load %struct.basket*, %struct.basket** %arrayidx7, align 8, !dbg !263
  %abs_cost8 = getelementptr inbounds %struct.basket, %struct.basket* %4, i32 0, i32 2, !dbg !266
  %5 = load i64, i64* %abs_cost8, align 8, !dbg !266
  %cmp9 = icmp sgt i64 %1, %5, !dbg !267
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !268

if.then10:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !269

if.end11:                                         ; preds = %while_continue___1
  %dec = add nsw i64 %r.1, -1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %dec, metadata !230, metadata !DIExpression()), !dbg !227
  br label %while.body6, !dbg !259, !llvm.loop !272

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !274

while_break___1:                                  ; preds = %while_break___4, %if.then10
  %cmp12 = icmp slt i64 %l.1, %r.1, !dbg !275
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !277

if.then13:                                        ; preds = %while_break___1
  %arrayidx14 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %l.1, !dbg !278
  %6 = load %struct.basket*, %struct.basket** %arrayidx14, align 8, !dbg !278
  call void @llvm.dbg.value(metadata %struct.basket* %6, metadata !280, metadata !DIExpression()), !dbg !227
  %arrayidx15 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %r.1, !dbg !281
  %7 = load %struct.basket*, %struct.basket** %arrayidx15, align 8, !dbg !281
  %arrayidx16 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %l.1, !dbg !282
  store %struct.basket* %7, %struct.basket** %arrayidx16, align 8, !dbg !283
  %arrayidx17 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %r.1, !dbg !284
  store %struct.basket* %6, %struct.basket** %arrayidx17, align 8, !dbg !285
  br label %if.end18, !dbg !286

if.end18:                                         ; preds = %if.then13, %while_break___1
  %cmp19 = icmp sle i64 %l.1, %r.1, !dbg !287
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !289

if.then20:                                        ; preds = %if.end18
  %inc21 = add nsw i64 %l.1, 1, !dbg !290
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !229, metadata !DIExpression()), !dbg !227
  %dec22 = add nsw i64 %r.1, -1, !dbg !290
  call void @llvm.dbg.value(metadata i64 %dec22, metadata !230, metadata !DIExpression()), !dbg !227
  br label %if.end23, !dbg !292

if.end23:                                         ; preds = %if.then20, %if.end18
  %l.2 = phi i64 [ %inc21, %if.then20 ], [ %l.1, %if.end18 ], !dbg !240
  %r.2 = phi i64 [ %dec22, %if.then20 ], [ %r.1, %if.end18 ], !dbg !240
  call void @llvm.dbg.value(metadata i64 %r.2, metadata !230, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %l.2, metadata !229, metadata !DIExpression()), !dbg !227
  %cmp24 = icmp sle i64 %l.2, %r.2, !dbg !293
  br i1 %cmp24, label %if.end26, label %if.then25, !dbg !295

if.then25:                                        ; preds = %if.end23
  br label %while_break, !dbg !296

if.end26:                                         ; preds = %if.end23
  br label %while.body, !dbg !237, !llvm.loop !298

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !300

while_break:                                      ; preds = %while_break___2, %if.then25
  %cmp27 = icmp slt i64 %min, %r.2, !dbg !301
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !303

if.then28:                                        ; preds = %while_break
  call void @sort_basket(i64 %min, i64 %r.2), !dbg !304
  br label %if.end29, !dbg !308

if.end29:                                         ; preds = %if.then28, %while_break
  %cmp30 = icmp slt i64 %l.2, %max, !dbg !309
  br i1 %cmp30, label %if.then31, label %if.end35, !dbg !311

if.then31:                                        ; preds = %if.end29
  %cmp32 = icmp sle i64 %l.2, 100, !dbg !312
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !315

if.then33:                                        ; preds = %if.then31
  call void @sort_basket(i64 %l.2, i64 %max), !dbg !316
  br label %if.end34, !dbg !320

if.end34:                                         ; preds = %if.then33, %if.then31
  br label %if.end35, !dbg !321

if.end35:                                         ; preds = %if.end34, %if.end29
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* %red_cost_of_bea) #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i64 %m, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata %struct.arc* %arcs, metadata !329, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata %struct.arc* %stop_arcs, metadata !330, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, metadata !331, metadata !DIExpression()), !dbg !328
  %0 = load i64, i64* @initialize, align 8, !dbg !332
  %tobool = icmp ne i64 %0, 0, !dbg !332
  br i1 %tobool, label %if.then, label %if.else, !dbg !335

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 1, metadata !336, metadata !DIExpression()), !dbg !328
  br label %while.body, !dbg !337

while.body:                                       ; preds = %if.end, %if.then
  %i.0 = phi i64 [ 1, %if.then ], [ %inc, %if.end ], !dbg !341
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !336, metadata !DIExpression()), !dbg !328
  br label %while_continue___2, !dbg !342

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !342

while_continue:                                   ; preds = %while_continue___2
  %cmp = icmp slt i64 %i.0, 401, !dbg !343
  br i1 %cmp, label %if.end, label %if.then1, !dbg !346

if.then1:                                         ; preds = %while_continue
  br label %while_break, !dbg !347

if.end:                                           ; preds = %while_continue
  %arrayidx = getelementptr inbounds [401 x %struct.basket], [401 x %struct.basket]* @basket, i64 0, i64 %i.0, !dbg !349
  %arrayidx2 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %i.0, !dbg !350
  store %struct.basket* %arrayidx, %struct.basket** %arrayidx2, align 8, !dbg !351
  %inc = add nsw i64 %i.0, 1, !dbg !352
  call void @llvm.dbg.value(metadata i64 %inc, metadata !336, metadata !DIExpression()), !dbg !328
  br label %while.body, !dbg !337, !llvm.loop !353

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !355

while_break:                                      ; preds = %while_break___2, %if.then1
  %sub = sub nsw i64 %m, 1, !dbg !356
  %div = sdiv i64 %sub, 300, !dbg !357
  %add = add nsw i64 %div, 1, !dbg !358
  store i64 %add, i64* @nr_group, align 8, !dbg !359
  store i64 0, i64* @group_pos, align 8, !dbg !360
  store i64 0, i64* @basket_size, align 8, !dbg !361
  store i64 0, i64* @initialize, align 8, !dbg !362
  br label %if.end29, !dbg !363

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !336, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 0, metadata !364, metadata !DIExpression()), !dbg !328
  br label %while.body3, !dbg !365

while.body3:                                      ; preds = %if.end27, %if.else
  %i.1 = phi i64 [ 2, %if.else ], [ %inc28, %if.end27 ], !dbg !369
  %next.0 = phi i64 [ 0, %if.else ], [ %next.1, %if.end27 ], !dbg !369
  call void @llvm.dbg.value(metadata i64 %next.0, metadata !364, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !336, metadata !DIExpression()), !dbg !328
  br label %while_continue___3, !dbg !370

while_continue___3:                               ; preds = %while.body3
  br label %while_continue___0, !dbg !370

while_continue___0:                               ; preds = %while_continue___3
  %cmp4 = icmp sle i64 %i.1, 100, !dbg !371
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !374

if.then5:                                         ; preds = %while_continue___0
  %1 = load i64, i64* @basket_size, align 8, !dbg !375
  %cmp6 = icmp sle i64 %i.1, %1, !dbg !378
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !379

if.then7:                                         ; preds = %if.then5
  br label %while_break___0, !dbg !380

if.end8:                                          ; preds = %if.then5
  br label %if.end10, !dbg !382

if.else9:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !383

if.end10:                                         ; preds = %if.end8
  %arrayidx11 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %i.1, !dbg !385
  %2 = load %struct.basket*, %struct.basket** %arrayidx11, align 8, !dbg !385
  %a = getelementptr inbounds %struct.basket, %struct.basket* %2, i32 0, i32 0, !dbg !387
  %3 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !387
  call void @llvm.dbg.value(metadata %struct.arc* %3, metadata !388, metadata !DIExpression()), !dbg !328
  %call = call i64 @bea_compute_red_cost(%struct.arc* %3), !dbg !389
  call void @llvm.dbg.value(metadata i64 %call, metadata !391, metadata !DIExpression()), !dbg !328
  %call12 = call i32 @bea_is_dual_infeasible(%struct.arc* %3, i64 %call), !dbg !392
  call void @llvm.dbg.value(metadata i32 %call12, metadata !394, metadata !DIExpression()), !dbg !328
  %tobool13 = icmp ne i32 %call12, 0, !dbg !395
  br i1 %tobool13, label %if.then14, label %if.end27, !dbg !397

if.then14:                                        ; preds = %if.end10
  %inc15 = add nsw i64 %next.0, 1, !dbg !398
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !364, metadata !DIExpression()), !dbg !328
  %arrayidx16 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %inc15, !dbg !400
  %4 = load %struct.basket*, %struct.basket** %arrayidx16, align 8, !dbg !400
  %a17 = getelementptr inbounds %struct.basket, %struct.basket* %4, i32 0, i32 0, !dbg !401
  store %struct.arc* %3, %struct.arc** %a17, align 8, !dbg !402
  %arrayidx18 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %inc15, !dbg !403
  %5 = load %struct.basket*, %struct.basket** %arrayidx18, align 8, !dbg !403
  %cost = getelementptr inbounds %struct.basket, %struct.basket* %5, i32 0, i32 1, !dbg !404
  store i64 %call, i64* %cost, align 8, !dbg !405
  %cmp19 = icmp sge i64 %call, 0, !dbg !406
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !408

if.then20:                                        ; preds = %if.then14
  %arrayidx21 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %inc15, !dbg !409
  %6 = load %struct.basket*, %struct.basket** %arrayidx21, align 8, !dbg !409
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %6, i32 0, i32 2, !dbg !411
  store i64 %call, i64* %abs_cost, align 8, !dbg !412
  br label %if.end26, !dbg !413

if.else22:                                        ; preds = %if.then14
  %sub23 = sub nsw i64 0, %call, !dbg !414
  %arrayidx24 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %inc15, !dbg !416
  %7 = load %struct.basket*, %struct.basket** %arrayidx24, align 8, !dbg !416
  %abs_cost25 = getelementptr inbounds %struct.basket, %struct.basket* %7, i32 0, i32 2, !dbg !417
  store i64 %sub23, i64* %abs_cost25, align 8, !dbg !418
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then20
  br label %if.end27, !dbg !419

if.end27:                                         ; preds = %if.end26, %if.end10
  %next.1 = phi i64 [ %inc15, %if.end26 ], [ %next.0, %if.end10 ], !dbg !369
  call void @llvm.dbg.value(metadata i64 %next.1, metadata !364, metadata !DIExpression()), !dbg !328
  %inc28 = add nsw i64 %i.1, 1, !dbg !420
  call void @llvm.dbg.value(metadata i64 %inc28, metadata !336, metadata !DIExpression()), !dbg !328
  br label %while.body3, !dbg !365, !llvm.loop !421

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !423

while_break___0:                                  ; preds = %while_break___3, %if.else9, %if.then7
  store i64 %next.0, i64* @basket_size, align 8, !dbg !424
  br label %if.end29

if.end29:                                         ; preds = %while_break___0, %while_break
  %8 = load i64, i64* @group_pos, align 8, !dbg !425
  call void @llvm.dbg.value(metadata i64 %8, metadata !426, metadata !DIExpression()), !dbg !328
  br label %NEXT, !dbg !427

NEXT:                                             ; preds = %if.then64, %if.end29
  %9 = load i64, i64* @group_pos, align 8, !dbg !428
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arcs, i64 %9, !dbg !429
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr, metadata !388, metadata !DIExpression()), !dbg !328
  br label %while.body30, !dbg !430

while.body30:                                     ; preds = %if.end55, %NEXT
  %arc.0 = phi %struct.arc* [ %add.ptr, %NEXT ], [ %add.ptr56, %if.end55 ], !dbg !433
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !388, metadata !DIExpression()), !dbg !328
  br label %while_continue___4, !dbg !434

while_continue___4:                               ; preds = %while.body30
  br label %while_continue___1, !dbg !434

while_continue___1:                               ; preds = %while_continue___4
  %10 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !435
  %11 = ptrtoint %struct.arc* %stop_arcs to i64, !dbg !438
  %cmp31 = icmp ult i64 %10, %11, !dbg !439
  br i1 %cmp31, label %if.end33, label %if.then32, !dbg !440

if.then32:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !441

if.end33:                                         ; preds = %while_continue___1
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !443
  %12 = load i64, i64* %ident, align 8, !dbg !443
  %cmp34 = icmp sgt i64 %12, 0, !dbg !445
  br i1 %cmp34, label %if.then35, label %if.end55, !dbg !446

if.then35:                                        ; preds = %if.end33
  %call36 = call i64 @bea_compute_red_cost(%struct.arc* %arc.0), !dbg !447
  call void @llvm.dbg.value(metadata i64 %call36, metadata !391, metadata !DIExpression()), !dbg !328
  %call37 = call i32 @bea_is_dual_infeasible(%struct.arc* %arc.0, i64 %call36), !dbg !451
  call void @llvm.dbg.value(metadata i32 %call37, metadata !453, metadata !DIExpression()), !dbg !328
  %tobool38 = icmp ne i32 %call37, 0, !dbg !454
  br i1 %tobool38, label %if.then39, label %if.end54, !dbg !456

if.then39:                                        ; preds = %if.then35
  %13 = load i64, i64* @basket_size, align 8, !dbg !457
  %inc40 = add nsw i64 %13, 1, !dbg !457
  store i64 %inc40, i64* @basket_size, align 8, !dbg !457
  %14 = load i64, i64* @basket_size, align 8, !dbg !459
  %arrayidx41 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %14, !dbg !460
  %15 = load %struct.basket*, %struct.basket** %arrayidx41, align 8, !dbg !460
  %a42 = getelementptr inbounds %struct.basket, %struct.basket* %15, i32 0, i32 0, !dbg !461
  store %struct.arc* %arc.0, %struct.arc** %a42, align 8, !dbg !462
  %16 = load i64, i64* @basket_size, align 8, !dbg !463
  %arrayidx43 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %16, !dbg !464
  %17 = load %struct.basket*, %struct.basket** %arrayidx43, align 8, !dbg !464
  %cost44 = getelementptr inbounds %struct.basket, %struct.basket* %17, i32 0, i32 1, !dbg !465
  store i64 %call36, i64* %cost44, align 8, !dbg !466
  %cmp45 = icmp sge i64 %call36, 0, !dbg !467
  br i1 %cmp45, label %if.then46, label %if.else49, !dbg !469

if.then46:                                        ; preds = %if.then39
  %18 = load i64, i64* @basket_size, align 8, !dbg !470
  %arrayidx47 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %18, !dbg !472
  %19 = load %struct.basket*, %struct.basket** %arrayidx47, align 8, !dbg !472
  %abs_cost48 = getelementptr inbounds %struct.basket, %struct.basket* %19, i32 0, i32 2, !dbg !473
  store i64 %call36, i64* %abs_cost48, align 8, !dbg !474
  br label %if.end53, !dbg !475

if.else49:                                        ; preds = %if.then39
  %sub50 = sub nsw i64 0, %call36, !dbg !476
  %20 = load i64, i64* @basket_size, align 8, !dbg !478
  %arrayidx51 = getelementptr inbounds [401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 %20, !dbg !479
  %21 = load %struct.basket*, %struct.basket** %arrayidx51, align 8, !dbg !479
  %abs_cost52 = getelementptr inbounds %struct.basket, %struct.basket* %21, i32 0, i32 2, !dbg !480
  store i64 %sub50, i64* %abs_cost52, align 8, !dbg !481
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then46
  br label %if.end54, !dbg !482

if.end54:                                         ; preds = %if.end53, %if.then35
  br label %if.end55, !dbg !483

if.end55:                                         ; preds = %if.end54, %if.end33
  %22 = load i64, i64* @nr_group, align 8, !dbg !484
  %add.ptr56 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i64 %22, !dbg !440
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr56, metadata !388, metadata !DIExpression()), !dbg !328
  br label %while.body30, !dbg !430, !llvm.loop !485

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !487

while_break___1:                                  ; preds = %while_break___4, %if.then32
  %23 = load i64, i64* @group_pos, align 8, !dbg !488
  %inc57 = add nsw i64 %23, 1, !dbg !488
  store i64 %inc57, i64* @group_pos, align 8, !dbg !488
  %24 = load i64, i64* @group_pos, align 8, !dbg !489
  %25 = load i64, i64* @nr_group, align 8, !dbg !491
  %cmp58 = icmp eq i64 %24, %25, !dbg !492
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !493

if.then59:                                        ; preds = %while_break___1
  store i64 0, i64* @group_pos, align 8, !dbg !494
  br label %if.end60, !dbg !496

if.end60:                                         ; preds = %if.then59, %while_break___1
  %26 = load i64, i64* @basket_size, align 8, !dbg !497
  %cmp61 = icmp slt i64 %26, 100, !dbg !499
  br i1 %cmp61, label %if.then62, label %if.end66, !dbg !500

if.then62:                                        ; preds = %if.end60
  %27 = load i64, i64* @group_pos, align 8, !dbg !501
  %cmp63 = icmp ne i64 %27, %8, !dbg !504
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !505

if.then64:                                        ; preds = %if.then62
  br label %NEXT, !dbg !506

if.end65:                                         ; preds = %if.then62
  br label %if.end66, !dbg !508

if.end66:                                         ; preds = %if.end65, %if.end60
  %28 = load i64, i64* @basket_size, align 8, !dbg !509
  %cmp67 = icmp eq i64 %28, 0, !dbg !511
  br i1 %cmp67, label %if.then68, label %if.end69, !dbg !512

if.then68:                                        ; preds = %if.end66
  store i64 1, i64* @initialize, align 8, !dbg !513
  store i64 0, i64* %red_cost_of_bea, align 8, !dbg !515
  br label %return, !dbg !516

if.end69:                                         ; preds = %if.end66
  %29 = load i64, i64* @basket_size, align 8, !dbg !517
  call void @sort_basket(i64 1, i64 %29), !dbg !520
  %30 = load %struct.basket*, %struct.basket** getelementptr inbounds ([401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 1), align 8, !dbg !521
  %cost70 = getelementptr inbounds %struct.basket, %struct.basket* %30, i32 0, i32 1, !dbg !522
  %31 = load i64, i64* %cost70, align 8, !dbg !522
  store i64 %31, i64* %red_cost_of_bea, align 8, !dbg !523
  %32 = load %struct.basket*, %struct.basket** getelementptr inbounds ([401 x %struct.basket*], [401 x %struct.basket*]* @perm, i64 0, i64 1), align 8, !dbg !524
  %a71 = getelementptr inbounds %struct.basket, %struct.basket* %32, i32 0, i32 0, !dbg !525
  %33 = load %struct.arc*, %struct.arc** %a71, align 8, !dbg !525
  br label %return, !dbg !526

return:                                           ; preds = %if.end69, %if.then68
  %retval.0 = phi %struct.arc* [ null, %if.then68 ], [ %33, %if.end69 ], !dbg !433
  ret %struct.arc* %retval.0, !dbg !527
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @primal_net_simplex(%struct.network* %net___0) #0 !dbg !528 {
entry:
  %delta = alloca i64, align 8
  %xchange = alloca i64, align 8
  %w = alloca %struct.node*, align 8
  %red_cost_of_bea = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i64* %delta, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i64* %xchange, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata %struct.node** %w, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %red_cost_of_bea, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata !4, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i64 0, metadata !545, metadata !DIExpression()), !dbg !534
  %arcs1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !546
  %0 = load %struct.arc*, %struct.arc** %arcs1, align 8, !dbg !546
  call void @llvm.dbg.value(metadata %struct.arc* %0, metadata !548, metadata !DIExpression()), !dbg !534
  %stop_arcs2 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !549
  %1 = load %struct.arc*, %struct.arc** %stop_arcs2, align 8, !dbg !549
  call void @llvm.dbg.value(metadata %struct.arc* %1, metadata !550, metadata !DIExpression()), !dbg !534
  %m3 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !551
  %2 = load i64, i64* %m3, align 8, !dbg !551
  call void @llvm.dbg.value(metadata i64 %2, metadata !552, metadata !DIExpression()), !dbg !534
  %iterations4 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 25, !dbg !553
  call void @llvm.dbg.value(metadata i64* %iterations4, metadata !554, metadata !DIExpression()), !dbg !534
  %bound_exchanges5 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 26, !dbg !556
  call void @llvm.dbg.value(metadata i64* %bound_exchanges5, metadata !557, metadata !DIExpression()), !dbg !534
  %checksum6 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 27, !dbg !558
  call void @llvm.dbg.value(metadata i64* %checksum6, metadata !559, metadata !DIExpression()), !dbg !534
  br label %while.body, !dbg !560

while.body:                                       ; preds = %if.end59, %entry
  %opt.0 = phi i64 [ 0, %entry ], [ %opt.1, %if.end59 ], !dbg !563
  call void @llvm.dbg.value(metadata i64 %opt.0, metadata !545, metadata !DIExpression()), !dbg !534
  br label %while_continue___0, !dbg !564

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !564

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i64 %opt.0, 0, !dbg !565
  br i1 %tobool, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !569

if.end:                                           ; preds = %while_continue
  %call = call %struct.arc* @primal_bea_mpp(i64 %2, %struct.arc* %0, %struct.arc* %1, i64* %red_cost_of_bea), !dbg !571
  call void @llvm.dbg.value(metadata %struct.arc* %call, metadata !574, metadata !DIExpression()), !dbg !534
  %tobool7 = icmp ne %struct.arc* %call, null, !dbg !575
  br i1 %tobool7, label %if.then8, label %if.else58, !dbg !577

if.then8:                                         ; preds = %if.end
  %3 = load i64, i64* %iterations4, align 8, !dbg !578
  %inc = add nsw i64 %3, 1, !dbg !578
  store i64 %inc, i64* %iterations4, align 8, !dbg !578
  %4 = load i64, i64* %red_cost_of_bea, align 8, !dbg !580
  %cmp = icmp sgt i64 %4, 0, !dbg !582
  br i1 %cmp, label %if.then9, label %if.else, !dbg !583

if.then9:                                         ; preds = %if.then8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 1, !dbg !584
  %5 = load %struct.node*, %struct.node** %head, align 8, !dbg !584
  call void @llvm.dbg.value(metadata %struct.node* %5, metadata !586, metadata !DIExpression()), !dbg !534
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 0, !dbg !587
  %6 = load %struct.node*, %struct.node** %tail, align 8, !dbg !587
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !588, metadata !DIExpression()), !dbg !534
  br label %if.end12, !dbg !589

if.else:                                          ; preds = %if.then8
  %tail10 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 0, !dbg !590
  %7 = load %struct.node*, %struct.node** %tail10, align 8, !dbg !590
  call void @llvm.dbg.value(metadata %struct.node* %7, metadata !586, metadata !DIExpression()), !dbg !534
  %head11 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 1, !dbg !592
  %8 = load %struct.node*, %struct.node** %head11, align 8, !dbg !592
  call void @llvm.dbg.value(metadata %struct.node* %8, metadata !588, metadata !DIExpression()), !dbg !534
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %jplus.0 = phi %struct.node* [ %6, %if.then9 ], [ %8, %if.else ], !dbg !593
  %iplus.0 = phi %struct.node* [ %5, %if.then9 ], [ %7, %if.else ], !dbg !593
  call void @llvm.dbg.value(metadata %struct.node* %iplus.0, metadata !586, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata %struct.node* %jplus.0, metadata !588, metadata !DIExpression()), !dbg !534
  store i64 1, i64* %delta, align 8, !dbg !594
  %call13 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node** %w), !dbg !596
  call void @llvm.dbg.value(metadata %struct.node* %call13, metadata !598, metadata !DIExpression()), !dbg !534
  %tobool14 = icmp ne %struct.node* %call13, null, !dbg !599
  br i1 %tobool14, label %if.else26, label %if.then15, !dbg !601

if.then15:                                        ; preds = %if.end12
  %9 = load i64, i64* %bound_exchanges5, align 8, !dbg !602
  %inc16 = add nsw i64 %9, 1, !dbg !602
  store i64 %inc16, i64* %bound_exchanges5, align 8, !dbg !602
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 7, !dbg !604
  %10 = load i64, i64* %ident, align 8, !dbg !604
  %cmp17 = icmp eq i64 %10, 2, !dbg !606
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !607

if.then18:                                        ; preds = %if.then15
  %ident19 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 7, !dbg !608
  store i64 1, i64* %ident19, align 8, !dbg !610
  br label %if.end22, !dbg !611

if.else20:                                        ; preds = %if.then15
  %ident21 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 7, !dbg !612
  store i64 2, i64* %ident21, align 8, !dbg !614
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  %11 = load i64, i64* %delta, align 8, !dbg !615
  %tobool23 = icmp ne i64 %11, 0, !dbg !615
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !617

if.then24:                                        ; preds = %if.end22
  %12 = load %struct.node*, %struct.node** %w, align 8, !dbg !618
  call void @primal_update_flow(%struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node* %12), !dbg !622
  br label %if.end25, !dbg !623

if.end25:                                         ; preds = %if.then24, %if.end22
  br label %if.end57, !dbg !624

if.else26:                                        ; preds = %if.end12
  %13 = load i64, i64* %xchange, align 8, !dbg !625
  %tobool27 = icmp ne i64 %13, 0, !dbg !625
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !628

if.then28:                                        ; preds = %if.else26
  call void @llvm.dbg.value(metadata %struct.node* %jplus.0, metadata !629, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata %struct.node* %iplus.0, metadata !588, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata %struct.node* %jplus.0, metadata !586, metadata !DIExpression()), !dbg !534
  br label %if.end29, !dbg !630

if.end29:                                         ; preds = %if.then28, %if.else26
  %jplus.1 = phi %struct.node* [ %iplus.0, %if.then28 ], [ %jplus.0, %if.else26 ], !dbg !632
  %iplus.1 = phi %struct.node* [ %jplus.0, %if.then28 ], [ %iplus.0, %if.else26 ], !dbg !632
  call void @llvm.dbg.value(metadata %struct.node* %iplus.1, metadata !586, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata %struct.node* %jplus.1, metadata !588, metadata !DIExpression()), !dbg !534
  %pred = getelementptr inbounds %struct.node, %struct.node* %call13, i32 0, i32 2, !dbg !633
  %14 = load %struct.node*, %struct.node** %pred, align 8, !dbg !633
  call void @llvm.dbg.value(metadata %struct.node* %14, metadata !634, metadata !DIExpression()), !dbg !534
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %call13, i32 0, i32 8, !dbg !635
  %15 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !635
  call void @llvm.dbg.value(metadata %struct.arc* %15, metadata !636, metadata !DIExpression()), !dbg !534
  %16 = load i64, i64* %xchange, align 8, !dbg !637
  %orientation = getelementptr inbounds %struct.node, %struct.node* %call13, i32 0, i32 7, !dbg !639
  %17 = load i64, i64* %orientation, align 8, !dbg !639
  %cmp30 = icmp ne i64 %16, %17, !dbg !640
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !641

if.then31:                                        ; preds = %if.end29
  call void @llvm.dbg.value(metadata i64 1, metadata !642, metadata !DIExpression()), !dbg !534
  br label %if.end33, !dbg !643

if.else32:                                        ; preds = %if.end29
  call void @llvm.dbg.value(metadata i64 2, metadata !642, metadata !DIExpression()), !dbg !534
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %new_set.0 = phi i64 [ 1, %if.then31 ], [ 2, %if.else32 ], !dbg !645
  call void @llvm.dbg.value(metadata i64 %new_set.0, metadata !642, metadata !DIExpression()), !dbg !534
  %18 = load i64, i64* %red_cost_of_bea, align 8, !dbg !646
  %cmp34 = icmp sgt i64 %18, 0, !dbg !648
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !649

if.then35:                                        ; preds = %if.end33
  %19 = load i64, i64* %delta, align 8, !dbg !650
  %sub = sub nsw i64 1, %19, !dbg !652
  call void @llvm.dbg.value(metadata i64 %sub, metadata !653, metadata !DIExpression()), !dbg !534
  br label %if.end37, !dbg !654

if.else36:                                        ; preds = %if.end33
  %20 = load i64, i64* %delta, align 8, !dbg !655
  call void @llvm.dbg.value(metadata i64 %20, metadata !653, metadata !DIExpression()), !dbg !534
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  %new_flow.0 = phi i64 [ %sub, %if.then35 ], [ %20, %if.else36 ], !dbg !657
  call void @llvm.dbg.value(metadata i64 %new_flow.0, metadata !653, metadata !DIExpression()), !dbg !534
  %tail38 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 0, !dbg !658
  %21 = load %struct.node*, %struct.node** %tail38, align 8, !dbg !658
  %22 = ptrtoint %struct.node* %21 to i64, !dbg !660
  %23 = ptrtoint %struct.node* %iplus.1 to i64, !dbg !661
  %cmp39 = icmp eq i64 %22, %23, !dbg !662
  br i1 %cmp39, label %if.then40, label %if.else41, !dbg !663

if.then40:                                        ; preds = %if.end37
  call void @llvm.dbg.value(metadata i64 1, metadata !664, metadata !DIExpression()), !dbg !534
  br label %if.end42, !dbg !665

if.else41:                                        ; preds = %if.end37
  call void @llvm.dbg.value(metadata i64 0, metadata !664, metadata !DIExpression()), !dbg !534
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %new_orientation.0 = phi i64 [ 1, %if.then40 ], [ 0, %if.else41 ], !dbg !667
  call void @llvm.dbg.value(metadata i64 %new_orientation.0, metadata !664, metadata !DIExpression()), !dbg !534
  %24 = load i64, i64* %xchange, align 8, !dbg !668
  %tobool43 = icmp ne i64 %24, 0, !dbg !671
  %lnot = xor i1 %tobool43, true, !dbg !671
  %lnot.ext = zext i1 %lnot to i32, !dbg !671
  %conv = sext i32 %lnot.ext to i64, !dbg !672
  %25 = load i64, i64* %delta, align 8, !dbg !673
  %26 = load %struct.node*, %struct.node** %w, align 8, !dbg !674
  %27 = load i64, i64* %red_cost_of_bea, align 8, !dbg !675
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !676
  %28 = load i64, i64* %feas_tol, align 8, !dbg !676
  call void @update_tree(i64 %conv, i64 %new_orientation.0, i64 %25, i64 %new_flow.0, %struct.node* %iplus.1, %struct.node* %jplus.1, %struct.node* %call13, %struct.node* %14, %struct.node* %26, %struct.arc* %call, i64 %27, i64 %28), !dbg !677
  %ident44 = getelementptr inbounds %struct.arc, %struct.arc* %call, i32 0, i32 7, !dbg !678
  store i64 0, i64* %ident44, align 8, !dbg !679
  %ident45 = getelementptr inbounds %struct.arc, %struct.arc* %15, i32 0, i32 7, !dbg !680
  store i64 %new_set.0, i64* %ident45, align 8, !dbg !681
  %29 = load i64, i64* %iterations4, align 8, !dbg !682
  %sub46 = sub nsw i64 %29, 1, !dbg !684
  %rem = srem i64 %sub46, 20, !dbg !685
  %tobool47 = icmp ne i64 %rem, 0, !dbg !685
  br i1 %tobool47, label %if.end56, label %if.then48, !dbg !686

if.then48:                                        ; preds = %if.end42
  %call49 = call i64 @refresh_potential(%struct.network* %net___0), !dbg !687
  call void @llvm.dbg.value(metadata i64 %call49, metadata !691, metadata !DIExpression()), !dbg !534
  %30 = load i64, i64* %checksum6, align 8, !dbg !692
  %add = add nsw i64 %30, %call49, !dbg !692
  store i64 %add, i64* %checksum6, align 8, !dbg !692
  %31 = load i64, i64* %checksum6, align 8, !dbg !693
  %cmp50 = icmp sgt i64 %31, 2000000000, !dbg !695
  br i1 %cmp50, label %if.then52, label %if.end55, !dbg !696

if.then52:                                        ; preds = %if.then48
  %32 = load i64, i64* %checksum6, align 8, !dbg !697
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %32), !dbg !701
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702
  %call54 = call i32 @fflush(%struct._IO_FILE* %33), !dbg !704
  br label %if.end55, !dbg !705

if.end55:                                         ; preds = %if.then52, %if.then48
  br label %if.end56, !dbg !706

if.end56:                                         ; preds = %if.end55, %if.end42
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end25
  br label %if.end59, !dbg !707

if.else58:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 1, metadata !545, metadata !DIExpression()), !dbg !534
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.end57
  %opt.1 = phi i64 [ %opt.0, %if.end57 ], [ 1, %if.else58 ], !dbg !708
  call void @llvm.dbg.value(metadata i64 %opt.1, metadata !545, metadata !DIExpression()), !dbg !534
  br label %while.body, !dbg !560, !llvm.loop !709

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !711

while_break:                                      ; preds = %while_break___0, %if.then
  %call60 = call i64 @refresh_potential(%struct.network* %net___0), !dbg !712
  call void @llvm.dbg.value(metadata i64 %call60, metadata !715, metadata !DIExpression()), !dbg !534
  %34 = load i64, i64* %checksum6, align 8, !dbg !716
  %add61 = add nsw i64 %34, %call60, !dbg !716
  store i64 %add61, i64* %checksum6, align 8, !dbg !716
  %call62 = call i64 @primal_feasible(%struct.network* %net___0), !dbg !717
  %call63 = call i64 @dual_feasible(%struct.network* %net___0), !dbg !719
  ret i64 0, !dbg !721
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 !dbg !722 {
entry:
  call void @llvm.dbg.value(metadata i64* %delta, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i64* %xchange, metadata !730, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %iplus, metadata !731, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !732, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node** %w, metadata !733, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* null, metadata !734, metadata !DIExpression()), !dbg !729
  br label %while.body, !dbg !735

while.body:                                       ; preds = %if.end45, %entry
  %iplus.addr.0 = phi %struct.node* [ %iplus, %entry ], [ %iplus.addr.1, %if.end45 ]
  %jplus.addr.0 = phi %struct.node* [ %jplus, %entry ], [ %jplus.addr.1, %if.end45 ]
  %iminus.0 = phi %struct.node* [ null, %entry ], [ %iminus.9, %if.end45 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.0, metadata !734, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %jplus.addr.0, metadata !732, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %iplus.addr.0, metadata !731, metadata !DIExpression()), !dbg !729
  br label %while_continue___0, !dbg !740

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !740

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.node* %iplus.addr.0 to i64, !dbg !741
  %1 = ptrtoint %struct.node* %jplus.addr.0 to i64, !dbg !744
  %cmp = icmp ne i64 %0, %1, !dbg !745
  br i1 %cmp, label %if.end, label %if.then, !dbg !746

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !747

if.end:                                           ; preds = %while_continue
  %depth = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 6, !dbg !749
  %2 = load i64, i64* %depth, align 8, !dbg !749
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 6, !dbg !751
  %3 = load i64, i64* %depth1, align 8, !dbg !751
  %cmp2 = icmp slt i64 %2, %3, !dbg !752
  br i1 %cmp2, label %if.then3, label %if.else21, !dbg !753

if.then3:                                         ; preds = %if.end
  %orientation = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 7, !dbg !754
  %4 = load i64, i64* %orientation, align 8, !dbg !754
  %tobool = icmp ne i64 %4, 0, !dbg !757
  br i1 %tobool, label %if.then4, label %if.else, !dbg !758

if.then4:                                         ; preds = %if.then3
  %5 = load i64, i64* %delta, align 8, !dbg !759
  %flow = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !762
  %6 = load i64, i64* %flow, align 8, !dbg !762
  %cmp5 = icmp sgt i64 %5, %6, !dbg !763
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !764

if.then6:                                         ; preds = %if.then4
  call void @llvm.dbg.value(metadata %struct.node* %iplus.addr.0, metadata !734, metadata !DIExpression()), !dbg !729
  %flow7 = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !765
  %7 = load i64, i64* %flow7, align 8, !dbg !765
  store i64 %7, i64* %delta, align 8, !dbg !767
  store i64 0, i64* %xchange, align 8, !dbg !768
  br label %if.end8, !dbg !769

if.end8:                                          ; preds = %if.then6, %if.then4
  %iminus.1 = phi %struct.node* [ %iplus.addr.0, %if.then6 ], [ %iminus.0, %if.then4 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.1, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end19, !dbg !770

if.else:                                          ; preds = %if.then3
  %pred = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 2, !dbg !771
  %8 = load %struct.node*, %struct.node** %pred, align 8, !dbg !771
  %pred9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2, !dbg !773
  %9 = load %struct.node*, %struct.node** %pred9, align 8, !dbg !773
  %tobool10 = icmp ne %struct.node* %9, null, !dbg !774
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !775

if.then11:                                        ; preds = %if.else
  %10 = load i64, i64* %delta, align 8, !dbg !776
  %flow12 = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !779
  %11 = load i64, i64* %flow12, align 8, !dbg !779
  %sub = sub nsw i64 1, %11, !dbg !780
  %cmp13 = icmp sgt i64 %10, %sub, !dbg !781
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !782

if.then14:                                        ; preds = %if.then11
  call void @llvm.dbg.value(metadata %struct.node* %iplus.addr.0, metadata !734, metadata !DIExpression()), !dbg !729
  %flow15 = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !783
  %12 = load i64, i64* %flow15, align 8, !dbg !783
  %sub16 = sub nsw i64 1, %12, !dbg !785
  store i64 %sub16, i64* %delta, align 8, !dbg !786
  store i64 0, i64* %xchange, align 8, !dbg !787
  br label %if.end17, !dbg !788

if.end17:                                         ; preds = %if.then14, %if.then11
  %iminus.2 = phi %struct.node* [ %iplus.addr.0, %if.then14 ], [ %iminus.0, %if.then11 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.2, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end18, !dbg !789

if.end18:                                         ; preds = %if.end17, %if.else
  %iminus.3 = phi %struct.node* [ %iminus.2, %if.end17 ], [ %iminus.0, %if.else ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.3, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end8
  %iminus.4 = phi %struct.node* [ %iminus.1, %if.end8 ], [ %iminus.3, %if.end18 ], !dbg !790
  call void @llvm.dbg.value(metadata %struct.node* %iminus.4, metadata !734, metadata !DIExpression()), !dbg !729
  %pred20 = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 2, !dbg !791
  %13 = load %struct.node*, %struct.node** %pred20, align 8, !dbg !791
  call void @llvm.dbg.value(metadata %struct.node* %13, metadata !731, metadata !DIExpression()), !dbg !729
  br label %if.end45, !dbg !792

if.else21:                                        ; preds = %if.end
  %orientation22 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 7, !dbg !793
  %14 = load i64, i64* %orientation22, align 8, !dbg !793
  %tobool23 = icmp ne i64 %14, 0, !dbg !796
  br i1 %tobool23, label %if.else30, label %if.then24, !dbg !797

if.then24:                                        ; preds = %if.else21
  %15 = load i64, i64* %delta, align 8, !dbg !798
  %flow25 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !801
  %16 = load i64, i64* %flow25, align 8, !dbg !801
  %cmp26 = icmp sge i64 %15, %16, !dbg !802
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !803

if.then27:                                        ; preds = %if.then24
  call void @llvm.dbg.value(metadata %struct.node* %jplus.addr.0, metadata !734, metadata !DIExpression()), !dbg !729
  %flow28 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !804
  %17 = load i64, i64* %flow28, align 8, !dbg !804
  store i64 %17, i64* %delta, align 8, !dbg !806
  store i64 1, i64* %xchange, align 8, !dbg !807
  br label %if.end29, !dbg !808

if.end29:                                         ; preds = %if.then27, %if.then24
  %iminus.5 = phi %struct.node* [ %jplus.addr.0, %if.then27 ], [ %iminus.0, %if.then24 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.5, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end43, !dbg !809

if.else30:                                        ; preds = %if.else21
  %pred31 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 2, !dbg !810
  %18 = load %struct.node*, %struct.node** %pred31, align 8, !dbg !810
  %pred32 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2, !dbg !812
  %19 = load %struct.node*, %struct.node** %pred32, align 8, !dbg !812
  %tobool33 = icmp ne %struct.node* %19, null, !dbg !813
  br i1 %tobool33, label %if.then34, label %if.end42, !dbg !814

if.then34:                                        ; preds = %if.else30
  %20 = load i64, i64* %delta, align 8, !dbg !815
  %flow35 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !818
  %21 = load i64, i64* %flow35, align 8, !dbg !818
  %sub36 = sub nsw i64 1, %21, !dbg !819
  %cmp37 = icmp sge i64 %20, %sub36, !dbg !820
  br i1 %cmp37, label %if.then38, label %if.end41, !dbg !821

if.then38:                                        ; preds = %if.then34
  call void @llvm.dbg.value(metadata %struct.node* %jplus.addr.0, metadata !734, metadata !DIExpression()), !dbg !729
  %flow39 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !822
  %22 = load i64, i64* %flow39, align 8, !dbg !822
  %sub40 = sub nsw i64 1, %22, !dbg !824
  store i64 %sub40, i64* %delta, align 8, !dbg !825
  store i64 1, i64* %xchange, align 8, !dbg !826
  br label %if.end41, !dbg !827

if.end41:                                         ; preds = %if.then38, %if.then34
  %iminus.6 = phi %struct.node* [ %jplus.addr.0, %if.then38 ], [ %iminus.0, %if.then34 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.6, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end42, !dbg !828

if.end42:                                         ; preds = %if.end41, %if.else30
  %iminus.7 = phi %struct.node* [ %iminus.6, %if.end41 ], [ %iminus.0, %if.else30 ], !dbg !739
  call void @llvm.dbg.value(metadata %struct.node* %iminus.7, metadata !734, metadata !DIExpression()), !dbg !729
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end29
  %iminus.8 = phi %struct.node* [ %iminus.7, %if.end42 ], [ %iminus.5, %if.end29 ], !dbg !829
  call void @llvm.dbg.value(metadata %struct.node* %iminus.8, metadata !734, metadata !DIExpression()), !dbg !729
  %pred44 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 2, !dbg !830
  %23 = load %struct.node*, %struct.node** %pred44, align 8, !dbg !830
  call void @llvm.dbg.value(metadata %struct.node* %23, metadata !732, metadata !DIExpression()), !dbg !729
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end19
  %iplus.addr.1 = phi %struct.node* [ %13, %if.end19 ], [ %iplus.addr.0, %if.end43 ]
  %jplus.addr.1 = phi %struct.node* [ %jplus.addr.0, %if.end19 ], [ %23, %if.end43 ]
  %iminus.9 = phi %struct.node* [ %iminus.4, %if.end19 ], [ %iminus.8, %if.end43 ], !dbg !831
  call void @llvm.dbg.value(metadata %struct.node* %iminus.9, metadata !734, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %jplus.addr.1, metadata !732, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.node* %iplus.addr.1, metadata !731, metadata !DIExpression()), !dbg !729
  br label %while.body, !dbg !735, !llvm.loop !832

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !834

while_break:                                      ; preds = %while_break___0, %if.then
  store %struct.node* %iplus.addr.0, %struct.node** %w, align 8, !dbg !835
  ret %struct.node* %iminus.0, !dbg !836
}

; Function Attrs: noinline nounwind ssp uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 !dbg !837 {
entry:
  call void @llvm.dbg.value(metadata %struct.node* %iplus, metadata !841, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !843, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata %struct.node* %w, metadata !844, metadata !DIExpression()), !dbg !842
  br label %while.body, !dbg !845

while.body:                                       ; preds = %if.end3, %entry
  %iplus.addr.0 = phi %struct.node* [ %iplus, %entry ], [ %3, %if.end3 ]
  call void @llvm.dbg.value(metadata %struct.node* %iplus.addr.0, metadata !841, metadata !DIExpression()), !dbg !842
  br label %while_continue___1, !dbg !849

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !849

while_continue:                                   ; preds = %while_continue___1
  %0 = ptrtoint %struct.node* %iplus.addr.0 to i64, !dbg !850
  %1 = ptrtoint %struct.node* %w to i64, !dbg !853
  %cmp = icmp ne i64 %0, %1, !dbg !854
  br i1 %cmp, label %if.end, label %if.then, !dbg !855

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !856

if.end:                                           ; preds = %while_continue
  %orientation = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 7, !dbg !858
  %2 = load i64, i64* %orientation, align 8, !dbg !858
  %tobool = icmp ne i64 %2, 0, !dbg !860
  br i1 %tobool, label %if.then1, label %if.else, !dbg !861

if.then1:                                         ; preds = %if.end
  %flow = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !862
  store i64 0, i64* %flow, align 8, !dbg !864
  br label %if.end3, !dbg !865

if.else:                                          ; preds = %if.end
  %flow2 = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 12, !dbg !866
  store i64 1, i64* %flow2, align 8, !dbg !868
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %pred = getelementptr inbounds %struct.node, %struct.node* %iplus.addr.0, i32 0, i32 2, !dbg !869
  %3 = load %struct.node*, %struct.node** %pred, align 8, !dbg !869
  call void @llvm.dbg.value(metadata %struct.node* %3, metadata !841, metadata !DIExpression()), !dbg !842
  br label %while.body, !dbg !845, !llvm.loop !870

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !872

while_break:                                      ; preds = %while_break___1, %if.then
  br label %while.body4, !dbg !873

while.body4:                                      ; preds = %if.end14, %while_break
  %jplus.addr.0 = phi %struct.node* [ %jplus, %while_break ], [ %7, %if.end14 ]
  call void @llvm.dbg.value(metadata %struct.node* %jplus.addr.0, metadata !843, metadata !DIExpression()), !dbg !842
  br label %while_continue___2, !dbg !876

while_continue___2:                               ; preds = %while.body4
  br label %while_continue___0, !dbg !876

while_continue___0:                               ; preds = %while_continue___2
  %4 = ptrtoint %struct.node* %jplus.addr.0 to i64, !dbg !877
  %5 = ptrtoint %struct.node* %w to i64, !dbg !880
  %cmp5 = icmp ne i64 %4, %5, !dbg !881
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !882

if.then6:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !883

if.end7:                                          ; preds = %while_continue___0
  %orientation8 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 7, !dbg !885
  %6 = load i64, i64* %orientation8, align 8, !dbg !885
  %tobool9 = icmp ne i64 %6, 0, !dbg !887
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !888

if.then10:                                        ; preds = %if.end7
  %flow11 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !889
  store i64 1, i64* %flow11, align 8, !dbg !891
  br label %if.end14, !dbg !892

if.else12:                                        ; preds = %if.end7
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 12, !dbg !893
  store i64 0, i64* %flow13, align 8, !dbg !895
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  %pred15 = getelementptr inbounds %struct.node, %struct.node* %jplus.addr.0, i32 0, i32 2, !dbg !896
  %7 = load %struct.node*, %struct.node** %pred15, align 8, !dbg !896
  call void @llvm.dbg.value(metadata %struct.node* %7, metadata !843, metadata !DIExpression()), !dbg !842
  br label %while.body4, !dbg !873, !llvm.loop !897

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !899

while_break___0:                                  ; preds = %while_break___2, %if.then6
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind ssp uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 !dbg !901 {
entry:
  call void @llvm.dbg.value(metadata i64 %cycle_ori, metadata !905, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %new_orientation, metadata !907, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %delta, metadata !908, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %new_flow, metadata !909, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %iplus, metadata !910, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !911, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %iminus, metadata !912, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %jminus, metadata !913, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %w, metadata !914, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.arc* %bea, metadata !915, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %sigma, metadata !916, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %feas_tol, metadata !917, metadata !DIExpression()), !dbg !906
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %bea, i32 0, i32 0, !dbg !918
  %0 = load %struct.node*, %struct.node** %tail, align 8, !dbg !918
  %1 = ptrtoint %struct.node* %0 to i64, !dbg !921
  %2 = ptrtoint %struct.node* %jplus to i64, !dbg !922
  %cmp = icmp eq i64 %1, %2, !dbg !923
  br i1 %cmp, label %if.then, label %if.else3, !dbg !924

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %sigma, 0, !dbg !925
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !928

if.then2:                                         ; preds = %if.then
  br label %_L, !dbg !929

if.else:                                          ; preds = %if.then
  br label %_L___1, !dbg !931

if.else3:                                         ; preds = %entry
  br label %_L___1, !dbg !933

_L___1:                                           ; preds = %if.else3, %if.else
  %tail4 = getelementptr inbounds %struct.arc, %struct.arc* %bea, i32 0, i32 0, !dbg !934
  %3 = load %struct.node*, %struct.node** %tail4, align 8, !dbg !934
  %4 = ptrtoint %struct.node* %3 to i64, !dbg !936
  %5 = ptrtoint %struct.node* %iplus to i64, !dbg !937
  %cmp5 = icmp eq i64 %4, %5, !dbg !938
  br i1 %cmp5, label %if.then6, label %if.else14, !dbg !921

if.then6:                                         ; preds = %_L___1
  %cmp7 = icmp sgt i64 %sigma, 0, !dbg !939
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !942

if.then8:                                         ; preds = %if.then6
  br label %_L, !dbg !943

_L:                                               ; preds = %if.then8, %if.then2
  %cmp9 = icmp sge i64 %sigma, 0, !dbg !944
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !947

if.then10:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i64 %sigma, metadata !916, metadata !DIExpression()), !dbg !906
  br label %if.end, !dbg !948

if.else11:                                        ; preds = %_L
  %sub = sub nsw i64 0, %sigma, !dbg !950
  call void @llvm.dbg.value(metadata i64 %sub, metadata !916, metadata !DIExpression()), !dbg !906
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  %sigma.addr.0 = phi i64 [ %sigma, %if.then10 ], [ %sub, %if.else11 ], !dbg !952
  call void @llvm.dbg.value(metadata i64 %sigma.addr.0, metadata !916, metadata !DIExpression()), !dbg !906
  br label %if.end13, !dbg !953

if.else12:                                        ; preds = %if.then6
  br label %_L___0, !dbg !954

if.end13:                                         ; preds = %if.end
  br label %if.end21, !dbg !956

if.else14:                                        ; preds = %_L___1
  br label %_L___0, !dbg !957

_L___0:                                           ; preds = %if.else14, %if.else12
  %cmp15 = icmp sge i64 %sigma, 0, !dbg !958
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !961

if.then16:                                        ; preds = %_L___0
  call void @llvm.dbg.value(metadata i64 %sigma, metadata !962, metadata !DIExpression()), !dbg !906
  br label %if.end19, !dbg !963

if.else17:                                        ; preds = %_L___0
  %sub18 = sub nsw i64 0, %sigma, !dbg !965
  call void @llvm.dbg.value(metadata i64 %sub18, metadata !962, metadata !DIExpression()), !dbg !906
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  %tmp.0 = phi i64 [ %sigma, %if.then16 ], [ %sub18, %if.else17 ], !dbg !967
  call void @llvm.dbg.value(metadata i64 %tmp.0, metadata !962, metadata !DIExpression()), !dbg !906
  %sub20 = sub nsw i64 0, %tmp.0, !dbg !968
  call void @llvm.dbg.value(metadata i64 %sub20, metadata !916, metadata !DIExpression()), !dbg !906
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end13
  %sigma.addr.1 = phi i64 [ %sigma.addr.0, %if.end13 ], [ %sub20, %if.end19 ], !dbg !969
  call void @llvm.dbg.value(metadata i64 %sigma.addr.1, metadata !916, metadata !DIExpression()), !dbg !906
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  call void @llvm.dbg.value(metadata %struct.node* %iminus, metadata !970, metadata !DIExpression()), !dbg !906
  %potential = getelementptr inbounds %struct.node, %struct.node* %iminus, i32 0, i32 11, !dbg !971
  %6 = load i64, i64* %potential, align 8, !dbg !972
  %add = add nsw i64 %6, %sigma.addr.1, !dbg !972
  store i64 %add, i64* %potential, align 8, !dbg !972
  br label %RECURSION, !dbg !973

RECURSION:                                        ; preds = %ITERATION, %if.end22
  %father.0 = phi %struct.node* [ %iminus, %if.end22 ], [ %temp.0, %ITERATION ], !dbg !974
  call void @llvm.dbg.value(metadata %struct.node* %father.0, metadata !970, metadata !DIExpression()), !dbg !906
  %child = getelementptr inbounds %struct.node, %struct.node* %father.0, i32 0, i32 3, !dbg !975
  %7 = load %struct.node*, %struct.node** %child, align 8, !dbg !975
  call void @llvm.dbg.value(metadata %struct.node* %7, metadata !976, metadata !DIExpression()), !dbg !906
  %tobool = icmp ne %struct.node* %7, null, !dbg !977
  br i1 %tobool, label %if.then23, label %if.end26, !dbg !979

if.then23:                                        ; preds = %RECURSION
  br label %ITERATION, !dbg !980

ITERATION:                                        ; preds = %if.then31, %if.then23
  %temp.0 = phi %struct.node* [ %7, %if.then23 ], [ %11, %if.then31 ], !dbg !974
  call void @llvm.dbg.value(metadata %struct.node* %temp.0, metadata !976, metadata !DIExpression()), !dbg !906
  %potential24 = getelementptr inbounds %struct.node, %struct.node* %temp.0, i32 0, i32 11, !dbg !981
  %8 = load i64, i64* %potential24, align 8, !dbg !983
  %add25 = add nsw i64 %8, %sigma.addr.1, !dbg !983
  store i64 %add25, i64* %potential24, align 8, !dbg !983
  call void @llvm.dbg.value(metadata %struct.node* %temp.0, metadata !970, metadata !DIExpression()), !dbg !906
  br label %RECURSION, !dbg !984

if.end26:                                         ; preds = %RECURSION
  br label %TEST, !dbg !977

TEST:                                             ; preds = %if.end32, %if.end26
  %father.1 = phi %struct.node* [ %father.0, %if.end26 ], [ %12, %if.end32 ], !dbg !974
  call void @llvm.dbg.value(metadata %struct.node* %father.1, metadata !970, metadata !DIExpression()), !dbg !906
  %9 = ptrtoint %struct.node* %father.1 to i64, !dbg !985
  %10 = ptrtoint %struct.node* %iminus to i64, !dbg !987
  %cmp27 = icmp eq i64 %9, %10, !dbg !988
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !989

if.then28:                                        ; preds = %TEST
  br label %CONTINUE, !dbg !990

if.end29:                                         ; preds = %TEST
  %sibling = getelementptr inbounds %struct.node, %struct.node* %father.1, i32 0, i32 4, !dbg !992
  %11 = load %struct.node*, %struct.node** %sibling, align 8, !dbg !992
  call void @llvm.dbg.value(metadata %struct.node* %11, metadata !976, metadata !DIExpression()), !dbg !906
  %tobool30 = icmp ne %struct.node* %11, null, !dbg !993
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !995

if.then31:                                        ; preds = %if.end29
  br label %ITERATION, !dbg !996

if.end32:                                         ; preds = %if.end29
  %pred = getelementptr inbounds %struct.node, %struct.node* %father.1, i32 0, i32 2, !dbg !998
  %12 = load %struct.node*, %struct.node** %pred, align 8, !dbg !998
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !970, metadata !DIExpression()), !dbg !906
  br label %TEST, !dbg !999

CONTINUE:                                         ; preds = %if.then28
  call void @llvm.dbg.value(metadata %struct.node* %iplus, metadata !976, metadata !DIExpression()), !dbg !906
  %pred33 = getelementptr inbounds %struct.node, %struct.node* %iplus, i32 0, i32 2, !dbg !1000
  %13 = load %struct.node*, %struct.node** %pred33, align 8, !dbg !1000
  call void @llvm.dbg.value(metadata %struct.node* %13, metadata !970, metadata !DIExpression()), !dbg !906
  %depth = getelementptr inbounds %struct.node, %struct.node* %iminus, i32 0, i32 6, !dbg !1001
  %14 = load i64, i64* %depth, align 8, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %14, metadata !1002, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %14, metadata !1003, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !1004, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.arc* %bea, metadata !1005, metadata !DIExpression()), !dbg !906
  br label %while.body, !dbg !1006

while.body:                                       ; preds = %if.end72, %CONTINUE
  %new_basic_arc.0 = phi %struct.arc* [ %bea, %CONTINUE ], [ %30, %if.end72 ], !dbg !974
  %father.2 = phi %struct.node* [ %13, %CONTINUE ], [ %32, %if.end72 ], !dbg !974
  %temp.1 = phi %struct.node* [ %iplus, %CONTINUE ], [ %father.2, %if.end72 ], !dbg !974
  %new_pred.0 = phi %struct.node* [ %jplus, %CONTINUE ], [ %temp.1, %if.end72 ], !dbg !974
  %new_depth.0 = phi i64 [ %14, %CONTINUE ], [ %sub78, %if.end72 ], !dbg !974
  %new_flow.addr.0 = phi i64 [ %new_flow, %CONTINUE ], [ %flow_temp.0, %if.end72 ]
  %new_orientation.addr.0 = phi i64 [ %new_orientation, %CONTINUE ], [ %conv, %if.end72 ]
  call void @llvm.dbg.value(metadata i64 %new_orientation.addr.0, metadata !907, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %new_flow.addr.0, metadata !909, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %new_depth.0, metadata !1003, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %new_pred.0, metadata !1004, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %temp.1, metadata !976, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %father.2, metadata !970, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.arc* %new_basic_arc.0, metadata !1005, metadata !DIExpression()), !dbg !906
  br label %while_continue___4, !dbg !1009

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !1009

while_continue:                                   ; preds = %while_continue___4
  %15 = ptrtoint %struct.node* %temp.1 to i64, !dbg !1010
  %16 = ptrtoint %struct.node* %jminus to i64, !dbg !1013
  %cmp34 = icmp ne i64 %15, %16, !dbg !1014
  br i1 %cmp34, label %if.end36, label %if.then35, !dbg !1015

if.then35:                                        ; preds = %while_continue
  br label %while_break, !dbg !1016

if.end36:                                         ; preds = %while_continue
  %sibling37 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1018
  %17 = load %struct.node*, %struct.node** %sibling37, align 8, !dbg !1018
  %tobool38 = icmp ne %struct.node* %17, null, !dbg !1020
  br i1 %tobool38, label %if.then39, label %if.end42, !dbg !1021

if.then39:                                        ; preds = %if.end36
  %sibling_prev = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 5, !dbg !1022
  %18 = load %struct.node*, %struct.node** %sibling_prev, align 8, !dbg !1022
  %sibling40 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1024
  %19 = load %struct.node*, %struct.node** %sibling40, align 8, !dbg !1024
  %sibling_prev41 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 5, !dbg !1025
  store %struct.node* %18, %struct.node** %sibling_prev41, align 8, !dbg !1026
  br label %if.end42, !dbg !1027

if.end42:                                         ; preds = %if.then39, %if.end36
  %sibling_prev43 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 5, !dbg !1028
  %20 = load %struct.node*, %struct.node** %sibling_prev43, align 8, !dbg !1028
  %tobool44 = icmp ne %struct.node* %20, null, !dbg !1030
  br i1 %tobool44, label %if.then45, label %if.else49, !dbg !1031

if.then45:                                        ; preds = %if.end42
  %sibling46 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1032
  %21 = load %struct.node*, %struct.node** %sibling46, align 8, !dbg !1032
  %sibling_prev47 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 5, !dbg !1034
  %22 = load %struct.node*, %struct.node** %sibling_prev47, align 8, !dbg !1034
  %sibling48 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 4, !dbg !1035
  store %struct.node* %21, %struct.node** %sibling48, align 8, !dbg !1036
  br label %if.end52, !dbg !1037

if.else49:                                        ; preds = %if.end42
  %sibling50 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1038
  %23 = load %struct.node*, %struct.node** %sibling50, align 8, !dbg !1038
  %child51 = getelementptr inbounds %struct.node, %struct.node* %father.2, i32 0, i32 3, !dbg !1040
  store %struct.node* %23, %struct.node** %child51, align 8, !dbg !1041
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then45
  %pred53 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 2, !dbg !1042
  store %struct.node* %new_pred.0, %struct.node** %pred53, align 8, !dbg !1043
  %child54 = getelementptr inbounds %struct.node, %struct.node* %new_pred.0, i32 0, i32 3, !dbg !1044
  %24 = load %struct.node*, %struct.node** %child54, align 8, !dbg !1044
  %sibling55 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1045
  store %struct.node* %24, %struct.node** %sibling55, align 8, !dbg !1046
  %sibling56 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1047
  %25 = load %struct.node*, %struct.node** %sibling56, align 8, !dbg !1047
  %tobool57 = icmp ne %struct.node* %25, null, !dbg !1049
  br i1 %tobool57, label %if.then58, label %if.end61, !dbg !1050

if.then58:                                        ; preds = %if.end52
  %sibling59 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 4, !dbg !1051
  %26 = load %struct.node*, %struct.node** %sibling59, align 8, !dbg !1051
  %sibling_prev60 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 5, !dbg !1053
  store %struct.node* %temp.1, %struct.node** %sibling_prev60, align 8, !dbg !1054
  br label %if.end61, !dbg !1055

if.end61:                                         ; preds = %if.then58, %if.end52
  %child62 = getelementptr inbounds %struct.node, %struct.node* %new_pred.0, i32 0, i32 3, !dbg !1056
  store %struct.node* %temp.1, %struct.node** %child62, align 8, !dbg !1057
  %sibling_prev63 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 5, !dbg !1058
  store %struct.node* null, %struct.node** %sibling_prev63, align 8, !dbg !1059
  %orientation = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 7, !dbg !1060
  %27 = load i64, i64* %orientation, align 8, !dbg !1060
  %tobool64 = icmp ne i64 %27, 0, !dbg !1061
  %lnot = xor i1 %tobool64, true, !dbg !1061
  %lnot.ext = zext i1 %lnot to i32, !dbg !1061
  %conv = sext i32 %lnot.ext to i64, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1063, metadata !DIExpression()), !dbg !906
  %cmp65 = icmp eq i64 %conv, %cycle_ori, !dbg !1064
  br i1 %cmp65, label %if.then67, label %if.else69, !dbg !1066

if.then67:                                        ; preds = %if.end61
  %flow = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 12, !dbg !1067
  %28 = load i64, i64* %flow, align 8, !dbg !1067
  %add68 = add nsw i64 %28, %delta, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %add68, metadata !1070, metadata !DIExpression()), !dbg !906
  br label %if.end72, !dbg !1071

if.else69:                                        ; preds = %if.end61
  %flow70 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 12, !dbg !1072
  %29 = load i64, i64* %flow70, align 8, !dbg !1072
  %sub71 = sub nsw i64 %29, %delta, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %sub71, metadata !1070, metadata !DIExpression()), !dbg !906
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then67
  %flow_temp.0 = phi i64 [ %add68, %if.then67 ], [ %sub71, %if.else69 ], !dbg !1075
  call void @llvm.dbg.value(metadata i64 %flow_temp.0, metadata !1070, metadata !DIExpression()), !dbg !906
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 8, !dbg !1076
  %30 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.arc* %30, metadata !1077, metadata !DIExpression()), !dbg !906
  %depth73 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 6, !dbg !1078
  %31 = load i64, i64* %depth73, align 8, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %31, metadata !1079, metadata !DIExpression()), !dbg !906
  %orientation74 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 7, !dbg !1080
  store i64 %new_orientation.addr.0, i64* %orientation74, align 8, !dbg !1081
  %flow75 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 12, !dbg !1082
  store i64 %new_flow.addr.0, i64* %flow75, align 8, !dbg !1083
  %basic_arc76 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 8, !dbg !1084
  store %struct.arc* %new_basic_arc.0, %struct.arc** %basic_arc76, align 8, !dbg !1085
  %depth77 = getelementptr inbounds %struct.node, %struct.node* %temp.1, i32 0, i32 6, !dbg !1086
  store i64 %new_depth.0, i64* %depth77, align 8, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.node* %temp.1, metadata !1004, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %conv, metadata !907, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %flow_temp.0, metadata !909, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.arc* %30, metadata !1005, metadata !DIExpression()), !dbg !906
  %sub78 = sub nsw i64 %14, %31, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %sub78, metadata !1003, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.node* %father.2, metadata !976, metadata !DIExpression()), !dbg !906
  %pred79 = getelementptr inbounds %struct.node, %struct.node* %father.2, i32 0, i32 2, !dbg !1089
  %32 = load %struct.node*, %struct.node** %pred79, align 8, !dbg !1089
  call void @llvm.dbg.value(metadata %struct.node* %32, metadata !970, metadata !DIExpression()), !dbg !906
  br label %while.body, !dbg !1006, !llvm.loop !1090

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !1092

while_break:                                      ; preds = %while_break___4, %if.then35
  %cmp80 = icmp sgt i64 %delta, %feas_tol, !dbg !1093
  br i1 %cmp80, label %if.then82, label %if.else119, !dbg !1095

if.then82:                                        ; preds = %while_break
  call void @llvm.dbg.value(metadata %struct.node* %jminus, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body83, !dbg !1096

while.body83:                                     ; preds = %if.end99, %if.then82
  %temp.2 = phi %struct.node* [ %jminus, %if.then82 ], [ %39, %if.end99 ], !dbg !1100
  call void @llvm.dbg.value(metadata %struct.node* %temp.2, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while_continue___5, !dbg !1101

while_continue___5:                               ; preds = %while.body83
  br label %while_continue___0, !dbg !1101

while_continue___0:                               ; preds = %while_continue___5
  %33 = ptrtoint %struct.node* %temp.2 to i64, !dbg !1102
  %34 = ptrtoint %struct.node* %w to i64, !dbg !1105
  %cmp84 = icmp ne i64 %33, %34, !dbg !1106
  br i1 %cmp84, label %if.end87, label %if.then86, !dbg !1107

if.then86:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1108

if.end87:                                         ; preds = %while_continue___0
  %depth88 = getelementptr inbounds %struct.node, %struct.node* %temp.2, i32 0, i32 6, !dbg !1110
  %35 = load i64, i64* %depth88, align 8, !dbg !1111
  %sub89 = sub nsw i64 %35, %14, !dbg !1111
  store i64 %sub89, i64* %depth88, align 8, !dbg !1111
  %orientation90 = getelementptr inbounds %struct.node, %struct.node* %temp.2, i32 0, i32 7, !dbg !1112
  %36 = load i64, i64* %orientation90, align 8, !dbg !1112
  %cmp91 = icmp ne i64 %36, %cycle_ori, !dbg !1114
  br i1 %cmp91, label %if.then93, label %if.else96, !dbg !1115

if.then93:                                        ; preds = %if.end87
  %flow94 = getelementptr inbounds %struct.node, %struct.node* %temp.2, i32 0, i32 12, !dbg !1116
  %37 = load i64, i64* %flow94, align 8, !dbg !1118
  %add95 = add nsw i64 %37, %delta, !dbg !1118
  store i64 %add95, i64* %flow94, align 8, !dbg !1118
  br label %if.end99, !dbg !1119

if.else96:                                        ; preds = %if.end87
  %flow97 = getelementptr inbounds %struct.node, %struct.node* %temp.2, i32 0, i32 12, !dbg !1120
  %38 = load i64, i64* %flow97, align 8, !dbg !1122
  %sub98 = sub nsw i64 %38, %delta, !dbg !1122
  store i64 %sub98, i64* %flow97, align 8, !dbg !1122
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then93
  %pred100 = getelementptr inbounds %struct.node, %struct.node* %temp.2, i32 0, i32 2, !dbg !1123
  %39 = load %struct.node*, %struct.node** %pred100, align 8, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.node* %39, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body83, !dbg !1096, !llvm.loop !1124

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !1126

while_break___0:                                  ; preds = %while_break___5, %if.then86
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body101, !dbg !1127

while.body101:                                    ; preds = %if.end117, %while_break___0
  %temp.3 = phi %struct.node* [ %jplus, %while_break___0 ], [ %46, %if.end117 ], !dbg !1100
  call void @llvm.dbg.value(metadata %struct.node* %temp.3, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while_continue___6, !dbg !1130

while_continue___6:                               ; preds = %while.body101
  br label %while_continue___1, !dbg !1130

while_continue___1:                               ; preds = %while_continue___6
  %40 = ptrtoint %struct.node* %temp.3 to i64, !dbg !1131
  %41 = ptrtoint %struct.node* %w to i64, !dbg !1134
  %cmp102 = icmp ne i64 %40, %41, !dbg !1135
  br i1 %cmp102, label %if.end105, label %if.then104, !dbg !1136

if.then104:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !1137

if.end105:                                        ; preds = %while_continue___1
  %depth106 = getelementptr inbounds %struct.node, %struct.node* %temp.3, i32 0, i32 6, !dbg !1139
  %42 = load i64, i64* %depth106, align 8, !dbg !1140
  %add107 = add nsw i64 %42, %14, !dbg !1140
  store i64 %add107, i64* %depth106, align 8, !dbg !1140
  %orientation108 = getelementptr inbounds %struct.node, %struct.node* %temp.3, i32 0, i32 7, !dbg !1141
  %43 = load i64, i64* %orientation108, align 8, !dbg !1141
  %cmp109 = icmp eq i64 %43, %cycle_ori, !dbg !1143
  br i1 %cmp109, label %if.then111, label %if.else114, !dbg !1144

if.then111:                                       ; preds = %if.end105
  %flow112 = getelementptr inbounds %struct.node, %struct.node* %temp.3, i32 0, i32 12, !dbg !1145
  %44 = load i64, i64* %flow112, align 8, !dbg !1147
  %add113 = add nsw i64 %44, %delta, !dbg !1147
  store i64 %add113, i64* %flow112, align 8, !dbg !1147
  br label %if.end117, !dbg !1148

if.else114:                                       ; preds = %if.end105
  %flow115 = getelementptr inbounds %struct.node, %struct.node* %temp.3, i32 0, i32 12, !dbg !1149
  %45 = load i64, i64* %flow115, align 8, !dbg !1151
  %sub116 = sub nsw i64 %45, %delta, !dbg !1151
  store i64 %sub116, i64* %flow115, align 8, !dbg !1151
  br label %if.end117

if.end117:                                        ; preds = %if.else114, %if.then111
  %pred118 = getelementptr inbounds %struct.node, %struct.node* %temp.3, i32 0, i32 2, !dbg !1152
  %46 = load %struct.node*, %struct.node** %pred118, align 8, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.node* %46, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body101, !dbg !1127, !llvm.loop !1153

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !1155

while_break___1:                                  ; preds = %while_break___6, %if.then104
  br label %if.end136, !dbg !1156

if.else119:                                       ; preds = %while_break
  call void @llvm.dbg.value(metadata %struct.node* %jminus, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body120, !dbg !1157

while.body120:                                    ; preds = %if.end124, %if.else119
  %temp.4 = phi %struct.node* [ %jminus, %if.else119 ], [ %50, %if.end124 ], !dbg !1161
  call void @llvm.dbg.value(metadata %struct.node* %temp.4, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while_continue___7, !dbg !1162

while_continue___7:                               ; preds = %while.body120
  br label %while_continue___2, !dbg !1162

while_continue___2:                               ; preds = %while_continue___7
  %47 = ptrtoint %struct.node* %temp.4 to i64, !dbg !1163
  %48 = ptrtoint %struct.node* %w to i64, !dbg !1166
  %cmp121 = icmp ne i64 %47, %48, !dbg !1167
  br i1 %cmp121, label %if.end124, label %if.then123, !dbg !1168

if.then123:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !1169

if.end124:                                        ; preds = %while_continue___2
  %depth125 = getelementptr inbounds %struct.node, %struct.node* %temp.4, i32 0, i32 6, !dbg !1171
  %49 = load i64, i64* %depth125, align 8, !dbg !1172
  %sub126 = sub nsw i64 %49, %14, !dbg !1172
  store i64 %sub126, i64* %depth125, align 8, !dbg !1172
  %pred127 = getelementptr inbounds %struct.node, %struct.node* %temp.4, i32 0, i32 2, !dbg !1173
  %50 = load %struct.node*, %struct.node** %pred127, align 8, !dbg !1173
  call void @llvm.dbg.value(metadata %struct.node* %50, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body120, !dbg !1157, !llvm.loop !1174

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !1176

while_break___2:                                  ; preds = %while_break___7, %if.then123
  call void @llvm.dbg.value(metadata %struct.node* %jplus, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body128, !dbg !1177

while.body128:                                    ; preds = %if.end132, %while_break___2
  %temp.5 = phi %struct.node* [ %jplus, %while_break___2 ], [ %54, %if.end132 ], !dbg !1161
  call void @llvm.dbg.value(metadata %struct.node* %temp.5, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while_continue___8, !dbg !1180

while_continue___8:                               ; preds = %while.body128
  br label %while_continue___3, !dbg !1180

while_continue___3:                               ; preds = %while_continue___8
  %51 = ptrtoint %struct.node* %temp.5 to i64, !dbg !1181
  %52 = ptrtoint %struct.node* %w to i64, !dbg !1184
  %cmp129 = icmp ne i64 %51, %52, !dbg !1185
  br i1 %cmp129, label %if.end132, label %if.then131, !dbg !1186

if.then131:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !1187

if.end132:                                        ; preds = %while_continue___3
  %depth133 = getelementptr inbounds %struct.node, %struct.node* %temp.5, i32 0, i32 6, !dbg !1189
  %53 = load i64, i64* %depth133, align 8, !dbg !1190
  %add134 = add nsw i64 %53, %14, !dbg !1190
  store i64 %add134, i64* %depth133, align 8, !dbg !1190
  %pred135 = getelementptr inbounds %struct.node, %struct.node* %temp.5, i32 0, i32 2, !dbg !1191
  %54 = load %struct.node*, %struct.node** %pred135, align 8, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.node* %54, metadata !976, metadata !DIExpression()), !dbg !906
  br label %while.body128, !dbg !1177, !llvm.loop !1192

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !1194

while_break___3:                                  ; preds = %while_break___8, %if.then131
  br label %if.end136

if.end136:                                        ; preds = %while_break___3, %while_break___1
  ret void, !dbg !1195
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @refresh_potential(%struct.network* %net___0) #0 !dbg !1196 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1198, metadata !DIExpression()), !dbg !1199
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1200
  %0 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.node* %0, metadata !1202, metadata !DIExpression()), !dbg !1199
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1203
  %1 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1203
  call void @llvm.dbg.value(metadata %struct.node* %1, metadata !1204, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 0, metadata !1205, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %1, metadata !1206, metadata !DIExpression()), !dbg !1199
  %stop_nodes1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1207
  %2 = load %struct.node*, %struct.node** %stop_nodes1, align 8, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.node* %2, metadata !1202, metadata !DIExpression()), !dbg !1199
  br label %while.body, !dbg !1208

while.body:                                       ; preds = %if.end, %entry
  %node.0 = phi %struct.node* [ %1, %entry ], [ %incdec.ptr, %if.end ], !dbg !1211
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %while_continue___3, !dbg !1212

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !1212

while_continue:                                   ; preds = %while_continue___3
  %3 = ptrtoint %struct.node* %node.0 to i64, !dbg !1213
  %4 = ptrtoint %struct.node* %2 to i64, !dbg !1216
  %cmp = icmp ult i64 %3, %4, !dbg !1217
  br i1 %cmp, label %if.end, label %if.then, !dbg !1218

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1219

if.end:                                           ; preds = %while_continue
  %mark = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 13, !dbg !1221
  store i32 0, i32* %mark, align 8, !dbg !1222
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !1223
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %while.body, !dbg !1208, !llvm.loop !1224

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !1226

while_break:                                      ; preds = %while_break___3, %if.then
  %potential = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 11, !dbg !1227
  store i64 -100000000, i64* %potential, align 8, !dbg !1228
  %child = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 3, !dbg !1229
  %5 = load %struct.node*, %struct.node** %child, align 8, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.node* %5, metadata !1206, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %5, metadata !1230, metadata !DIExpression()), !dbg !1199
  br label %while.body2, !dbg !1231

while.body2:                                      ; preds = %while_break___2, %while_break
  %tmp.0 = phi %struct.node* [ %5, %while_break ], [ %tmp.3, %while_break___2 ], !dbg !1211
  %node.1 = phi %struct.node* [ %5, %while_break ], [ %node.4, %while_break___2 ], !dbg !1211
  %checksum.0 = phi i64 [ 0, %while_break ], [ %checksum.1, %while_break___2 ], !dbg !1234
  call void @llvm.dbg.value(metadata i64 %checksum.0, metadata !1205, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %node.1, metadata !1206, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %tmp.0, metadata !1230, metadata !DIExpression()), !dbg !1199
  br label %while_continue___4, !dbg !1235

while_continue___4:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !1235

while_continue___0:                               ; preds = %while_continue___4
  %6 = ptrtoint %struct.node* %node.1 to i64, !dbg !1236
  %7 = ptrtoint %struct.node* %1 to i64, !dbg !1239
  %cmp3 = icmp ne i64 %6, %7, !dbg !1240
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1241

if.then4:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1242

if.end5:                                          ; preds = %while_continue___0
  br label %while.body7, !dbg !1244

while.body7:                                      ; preds = %if.end19, %if.end5
  %tmp.1 = phi %struct.node* [ %tmp.0, %if.end5 ], [ %node.2, %if.end19 ], !dbg !1211
  %node.2 = phi %struct.node* [ %node.1, %if.end5 ], [ %17, %if.end19 ], !dbg !1211
  %checksum.1 = phi i64 [ %checksum.0, %if.end5 ], [ %checksum.2, %if.end19 ], !dbg !1234
  call void @llvm.dbg.value(metadata i64 %checksum.1, metadata !1205, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %node.2, metadata !1206, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %tmp.1, metadata !1230, metadata !DIExpression()), !dbg !1199
  br label %while_continue___5, !dbg !1247

while_continue___5:                               ; preds = %while.body7
  br label %while_continue___1, !dbg !1247

while_continue___1:                               ; preds = %while_continue___5
  %tobool = icmp ne %struct.node* %node.2, null, !dbg !1248
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1251

if.then8:                                         ; preds = %while_continue___1
  br label %while_break___1, !dbg !1252

if.end9:                                          ; preds = %while_continue___1
  %orientation = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 7, !dbg !1254
  %8 = load i64, i64* %orientation, align 8, !dbg !1254
  %cmp10 = icmp eq i64 %8, 1, !dbg !1256
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !1257

if.then11:                                        ; preds = %if.end9
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 8, !dbg !1258
  %9 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !1258
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %9, i32 0, i32 4, !dbg !1260
  %10 = load i64, i64* %cost, align 8, !dbg !1260
  %pred = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 2, !dbg !1261
  %11 = load %struct.node*, %struct.node** %pred, align 8, !dbg !1261
  %potential12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 11, !dbg !1262
  %12 = load i64, i64* %potential12, align 8, !dbg !1262
  %add = add nsw i64 %10, %12, !dbg !1263
  %potential13 = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 11, !dbg !1264
  store i64 %add, i64* %potential13, align 8, !dbg !1265
  br label %if.end19, !dbg !1266

if.else:                                          ; preds = %if.end9
  %pred14 = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 2, !dbg !1267
  %13 = load %struct.node*, %struct.node** %pred14, align 8, !dbg !1267
  %potential15 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 11, !dbg !1269
  %14 = load i64, i64* %potential15, align 8, !dbg !1269
  %basic_arc16 = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 8, !dbg !1270
  %15 = load %struct.arc*, %struct.arc** %basic_arc16, align 8, !dbg !1270
  %cost17 = getelementptr inbounds %struct.arc, %struct.arc* %15, i32 0, i32 4, !dbg !1271
  %16 = load i64, i64* %cost17, align 8, !dbg !1271
  %sub = sub nsw i64 %14, %16, !dbg !1272
  %potential18 = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 11, !dbg !1273
  store i64 %sub, i64* %potential18, align 8, !dbg !1274
  %inc = add nsw i64 %checksum.1, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1205, metadata !DIExpression()), !dbg !1199
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  %checksum.2 = phi i64 [ %checksum.1, %if.then11 ], [ %inc, %if.else ], !dbg !1211
  call void @llvm.dbg.value(metadata i64 %checksum.2, metadata !1205, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %node.2, metadata !1230, metadata !DIExpression()), !dbg !1199
  %child20 = getelementptr inbounds %struct.node, %struct.node* %node.2, i32 0, i32 3, !dbg !1276
  %17 = load %struct.node*, %struct.node** %child20, align 8, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.node* %17, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %while.body7, !dbg !1244, !llvm.loop !1277

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !1279

while_break___1:                                  ; preds = %while_break___5, %if.then8
  call void @llvm.dbg.value(metadata %struct.node* %tmp.1, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %while.body22, !dbg !1280

while.body22:                                     ; preds = %if.end31, %while_break___1
  %tmp.2 = phi %struct.node* [ %tmp.1, %while_break___1 ], [ %19, %if.end31 ], !dbg !1211
  %node.3 = phi %struct.node* [ %tmp.1, %while_break___1 ], [ %20, %if.end31 ], !dbg !1283
  call void @llvm.dbg.value(metadata %struct.node* %node.3, metadata !1206, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %tmp.2, metadata !1230, metadata !DIExpression()), !dbg !1199
  br label %while_continue___6, !dbg !1284

while_continue___6:                               ; preds = %while.body22
  br label %while_continue___2, !dbg !1284

while_continue___2:                               ; preds = %while_continue___6
  %pred23 = getelementptr inbounds %struct.node, %struct.node* %node.3, i32 0, i32 2, !dbg !1285
  %18 = load %struct.node*, %struct.node** %pred23, align 8, !dbg !1285
  %tobool24 = icmp ne %struct.node* %18, null, !dbg !1288
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1289

if.then25:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !1290

if.end26:                                         ; preds = %while_continue___2
  %sibling = getelementptr inbounds %struct.node, %struct.node* %node.3, i32 0, i32 4, !dbg !1292
  %19 = load %struct.node*, %struct.node** %sibling, align 8, !dbg !1292
  call void @llvm.dbg.value(metadata %struct.node* %19, metadata !1230, metadata !DIExpression()), !dbg !1199
  %tobool27 = icmp ne %struct.node* %19, null, !dbg !1293
  br i1 %tobool27, label %if.then28, label %if.else29, !dbg !1295

if.then28:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %struct.node* %19, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %while_break___2, !dbg !1296

if.else29:                                        ; preds = %if.end26
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %node.3, i32 0, i32 2, !dbg !1298
  %20 = load %struct.node*, %struct.node** %pred30, align 8, !dbg !1298
  call void @llvm.dbg.value(metadata %struct.node* %20, metadata !1206, metadata !DIExpression()), !dbg !1199
  br label %if.end31

if.end31:                                         ; preds = %if.else29
  br label %while.body22, !dbg !1280, !llvm.loop !1300

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !1302

while_break___2:                                  ; preds = %while_break___6, %if.then28, %if.then25
  %tmp.3 = phi %struct.node* [ %19, %if.then28 ], [ %tmp.2, %if.then25 ], [ undef, %while_break___6 ], !dbg !1211
  %node.4 = phi %struct.node* [ %19, %if.then28 ], [ %node.3, %if.then25 ], [ undef, %while_break___6 ], !dbg !1283
  call void @llvm.dbg.value(metadata %struct.node* %node.4, metadata !1206, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %struct.node* %tmp.3, metadata !1230, metadata !DIExpression()), !dbg !1199
  br label %while.body2, !dbg !1231, !llvm.loop !1303

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !1305

while_break___0:                                  ; preds = %while_break___4, %if.then4
  ret i64 %checksum.0, !dbg !1306
}

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @primal_feasible(%struct.network* %net___0) #0 !dbg !1307 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1308, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.declare(metadata !4, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.declare(metadata !4, metadata !1312, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.declare(metadata !4, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata !4, metadata !1316, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.declare(metadata !4, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata !4, metadata !1320, metadata !DIExpression()), !dbg !1321
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !1322
  %0 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8, !dbg !1322
  call void @llvm.dbg.value(metadata %struct.arc* %0, metadata !1324, metadata !DIExpression()), !dbg !1309
  %stop_dummy1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 24, !dbg !1325
  %1 = load %struct.arc*, %struct.arc** %stop_dummy1, align 8, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.arc* %1, metadata !1326, metadata !DIExpression()), !dbg !1309
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1327
  %2 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.node* %2, metadata !1328, metadata !DIExpression()), !dbg !1309
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1329
  %3 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !1329
  %4 = bitcast %struct.node* %3 to i8*, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %4, metadata !1331, metadata !DIExpression()), !dbg !1309
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %2, i32 1, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr, metadata !1328, metadata !DIExpression()), !dbg !1309
  br label %while.body, !dbg !1333

while.body:                                       ; preds = %if.end33, %entry
  %node.0 = phi %struct.node* [ %incdec.ptr, %entry ], [ %incdec.ptr34, %if.end33 ], !dbg !1336
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !1328, metadata !DIExpression()), !dbg !1309
  br label %while_continue___0, !dbg !1337

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1337

while_continue:                                   ; preds = %while_continue___0
  %5 = ptrtoint %struct.node* %node.0 to i64, !dbg !1338
  %6 = bitcast i8* %4 to %struct.node*, !dbg !1341
  %7 = ptrtoint %struct.node* %6 to i64, !dbg !1342
  %cmp = icmp ult i64 %5, %7, !dbg !1343
  br i1 %cmp, label %if.end, label %if.then, !dbg !1344

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1345

if.end:                                           ; preds = %while_continue
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !1347
  %8 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !1347
  call void @llvm.dbg.value(metadata %struct.arc* %8, metadata !1348, metadata !DIExpression()), !dbg !1309
  %flow2 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 12, !dbg !1349
  %9 = load i64, i64* %flow2, align 8, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %9, metadata !1350, metadata !DIExpression()), !dbg !1309
  %10 = ptrtoint %struct.arc* %8 to i64, !dbg !1351
  %11 = ptrtoint %struct.arc* %0 to i64, !dbg !1353
  %cmp3 = icmp uge i64 %10, %11, !dbg !1354
  br i1 %cmp3, label %if.then4, label %if.else16, !dbg !1355

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint %struct.arc* %8 to i64, !dbg !1356
  %13 = ptrtoint %struct.arc* %1 to i64, !dbg !1359
  %cmp5 = icmp ult i64 %12, %13, !dbg !1360
  br i1 %cmp5, label %if.then6, label %if.else14, !dbg !1361

if.then6:                                         ; preds = %if.then4
  %cmp7 = icmp sge i64 %9, 0, !dbg !1362
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1365

if.then8:                                         ; preds = %if.then6
  call void @llvm.dbg.value(metadata i64 %9, metadata !1366, metadata !DIExpression()), !dbg !1309
  br label %if.end9, !dbg !1367

if.else:                                          ; preds = %if.then6
  %sub = sub nsw i64 0, %9, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1366, metadata !DIExpression()), !dbg !1309
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %tmp.0 = phi i64 [ %9, %if.then8 ], [ %sub, %if.else ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %tmp.0, metadata !1366, metadata !DIExpression()), !dbg !1309
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !1372
  %14 = load i64, i64* %feas_tol, align 8, !dbg !1372
  %cmp10 = icmp sgt i64 %tmp.0, %14, !dbg !1374
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1365

if.then11:                                        ; preds = %if.end9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)), !dbg !1375
  %number = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 0, !dbg !1379
  %15 = load i64, i64* %number, align 8, !dbg !1379
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i64 %15, i64 %9), !dbg !1381
  br label %if.end13, !dbg !1382

if.end13:                                         ; preds = %if.then11, %if.end9
  br label %if.end15, !dbg !1383

if.else14:                                        ; preds = %if.then4
  br label %_L, !dbg !1384

if.end15:                                         ; preds = %if.end13
  br label %if.end33, !dbg !1386

if.else16:                                        ; preds = %if.end
  br label %_L, !dbg !1386

_L:                                               ; preds = %if.else16, %if.else14
  %feas_tol17 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !1387
  %16 = load i64, i64* %feas_tol17, align 8, !dbg !1387
  %sub18 = sub nsw i64 0, %16, !dbg !1389
  %cmp19 = icmp slt i64 %9, %sub18, !dbg !1390
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !1391

if.then20:                                        ; preds = %_L
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)), !dbg !1392
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i64 %9), !dbg !1396
  %feasible = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 11, !dbg !1398
  store i64 0, i64* %feasible, align 8, !dbg !1399
  br label %return, !dbg !1400

if.else23:                                        ; preds = %_L
  %sub24 = sub nsw i64 %9, 1, !dbg !1401
  %feas_tol25 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !1403
  %17 = load i64, i64* %feas_tol25, align 8, !dbg !1403
  %cmp26 = icmp sgt i64 %sub24, %17, !dbg !1404
  br i1 %cmp26, label %if.then27, label %if.end31, !dbg !1405

if.then27:                                        ; preds = %if.else23
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)), !dbg !1406
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i64 %9), !dbg !1410
  %feasible30 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 11, !dbg !1412
  store i64 0, i64* %feasible30, align 8, !dbg !1413
  br label %return, !dbg !1414

if.end31:                                         ; preds = %if.else23
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end15
  %incdec.ptr34 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr34, metadata !1328, metadata !DIExpression()), !dbg !1309
  br label %while.body, !dbg !1333, !llvm.loop !1416

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1418

while_break:                                      ; preds = %while_break___0, %if.then
  %feasible35 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 11, !dbg !1419
  store i64 1, i64* %feasible35, align 8, !dbg !1420
  br label %return, !dbg !1421

return:                                           ; preds = %while_break, %if.then27, %if.then20
  %retval.0 = phi i64 [ 1, %if.then20 ], [ 1, %if.then27 ], [ 0, %while_break ], !dbg !1336
  ret i64 %retval.0, !dbg !1422
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @dual_feasible(%struct.network* %net___0) #0 !dbg !1423 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1424, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.declare(metadata !4, metadata !1426, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.declare(metadata !4, metadata !1428, metadata !DIExpression()), !dbg !1429
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !1430
  %0 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.arc* %0, metadata !1432, metadata !DIExpression()), !dbg !1425
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1433
  %1 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.arc* %1, metadata !1434, metadata !DIExpression()), !dbg !1425
  br label %while.body, !dbg !1435

while.body:                                       ; preds = %switch_break, %entry
  %arc.0 = phi %struct.arc* [ %1, %entry ], [ %incdec.ptr, %switch_break ], !dbg !1438
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !1434, metadata !DIExpression()), !dbg !1425
  br label %while_continue___0, !dbg !1439

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1439

while_continue:                                   ; preds = %while_continue___0
  %2 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !1440
  %3 = ptrtoint %struct.arc* %0 to i64, !dbg !1443
  %cmp = icmp ult i64 %2, %3, !dbg !1444
  br i1 %cmp, label %if.end, label %if.then, !dbg !1445

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1446

if.end:                                           ; preds = %while_continue
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 4, !dbg !1448
  %4 = load i64, i64* %cost, align 8, !dbg !1448
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !1449
  %5 = load %struct.node*, %struct.node** %tail, align 8, !dbg !1449
  %potential = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 11, !dbg !1450
  %6 = load i64, i64* %potential, align 8, !dbg !1450
  %sub = sub nsw i64 %4, %6, !dbg !1451
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !1452
  %7 = load %struct.node*, %struct.node** %head, align 8, !dbg !1452
  %potential1 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 11, !dbg !1453
  %8 = load i64, i64* %potential1, align 8, !dbg !1453
  %add = add nsw i64 %sub, %8, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %add, metadata !1455, metadata !DIExpression()), !dbg !1425
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !1456
  %9 = load i64, i64* %ident, align 8, !dbg !1456
  %cmp2 = icmp eq i64 %9, 1, !dbg !1459
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1460

if.then3:                                         ; preds = %if.end
  br label %case_1, !dbg !1461

if.end4:                                          ; preds = %if.end
  %ident5 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !1463
  %10 = load i64, i64* %ident5, align 8, !dbg !1463
  %cmp6 = icmp eq i64 %10, 0, !dbg !1465
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1460

if.then7:                                         ; preds = %if.end4
  br label %case_1, !dbg !1466

if.end8:                                          ; preds = %if.end4
  %ident9 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !1468
  %11 = load i64, i64* %ident9, align 8, !dbg !1468
  %cmp10 = icmp eq i64 %11, 2, !dbg !1470
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1471

if.then11:                                        ; preds = %if.end8
  br label %case_2, !dbg !1472

if.end12:                                         ; preds = %if.end8
  br label %switch_default, !dbg !1474

case_1:                                           ; preds = %if.then7, %if.then3
  br label %case_0, !dbg !1474

case_0:                                           ; preds = %case_1
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !1475
  %12 = load i64, i64* %feas_tol, align 8, !dbg !1475
  %sub13 = sub nsw i64 0, %12, !dbg !1477
  %cmp14 = icmp slt i64 %add, %sub13, !dbg !1478
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1479

if.then15:                                        ; preds = %case_0
  br label %DUAL_INFEAS, !dbg !1480

if.end16:                                         ; preds = %case_0
  br label %switch_break, !dbg !1482

case_2:                                           ; preds = %if.then11
  %feas_tol17 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 14, !dbg !1483
  %13 = load i64, i64* %feas_tol17, align 8, !dbg !1483
  %cmp18 = icmp sgt i64 %add, %13, !dbg !1485
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1486

if.then19:                                        ; preds = %case_2
  br label %DUAL_INFEAS, !dbg !1487

if.end20:                                         ; preds = %case_2
  br label %switch_break, !dbg !1489

switch_default:                                   ; preds = %if.end12
  br label %switch_break, !dbg !1490

switch_break:                                     ; preds = %switch_default, %if.end20, %if.end16
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !1434, metadata !DIExpression()), !dbg !1425
  br label %while.body, !dbg !1435, !llvm.loop !1491

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1493

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !1494

DUAL_INFEAS:                                      ; preds = %if.then19, %if.then15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1495
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)), !dbg !1498
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1499
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)), !dbg !1501
  br label %return, !dbg !1502

return:                                           ; preds = %DUAL_INFEAS, %while_break
  %retval.0 = phi i64 [ 1, %DUAL_INFEAS ], [ 0, %while_break ], !dbg !1438
  ret i64 %retval.0, !dbg !1503
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @write_circulations(i8* %outfile, %struct.network* %net___0) #0 !dbg !1504 {
entry:
  call void @llvm.dbg.value(metadata i8* %outfile, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1510, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata !4, metadata !1511, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.declare(metadata !4, metadata !1513, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.declare(metadata !4, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata !4, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1519, metadata !DIExpression()), !dbg !1509
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !1520
  %0 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !1520
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 7, !dbg !1523
  %1 = load i64, i64* %m_impl, align 8, !dbg !1523
  %idx.neg = sub i64 0, %1, !dbg !1524
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %idx.neg, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr, metadata !1525, metadata !DIExpression()), !dbg !1509
  %call = call %struct._IO_FILE* @fopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !1526
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !1519, metadata !DIExpression()), !dbg !1509
  %2 = ptrtoint %struct._IO_FILE* %call to i64, !dbg !1528
  %cmp = icmp eq i64 %2, 0, !dbg !1530
  br i1 %cmp, label %if.then, label %if.end, !dbg !1531

if.then:                                          ; preds = %entry
  br label %return, !dbg !1532

if.end:                                           ; preds = %entry
  call void @refresh_neighbour_lists(%struct.network* %net___0), !dbg !1534
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1537
  %3 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1537
  %n = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !1538
  %4 = load i64, i64* %n, align 8, !dbg !1538
  %add.ptr1 = getelementptr inbounds %struct.node, %struct.node* %3, i64 %4, !dbg !1539
  %firstout = getelementptr inbounds %struct.node, %struct.node* %add.ptr1, i32 0, i32 9, !dbg !1540
  %5 = load %struct.arc*, %struct.arc** %firstout, align 8, !dbg !1540
  call void @llvm.dbg.value(metadata %struct.arc* %5, metadata !1541, metadata !DIExpression()), !dbg !1509
  br label %while.body, !dbg !1542

while.body:                                       ; preds = %if.end38, %if.end
  %block.0 = phi %struct.arc* [ %5, %if.end ], [ %18, %if.end38 ], !dbg !1545
  call void @llvm.dbg.value(metadata %struct.arc* %block.0, metadata !1541, metadata !DIExpression()), !dbg !1509
  br label %while_continue___2, !dbg !1546

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !1546

while_continue:                                   ; preds = %while_continue___2
  %tobool = icmp ne %struct.arc* %block.0, null, !dbg !1547
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !1550

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !1551

if.end3:                                          ; preds = %while_continue
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %block.0, i32 0, i32 6, !dbg !1553
  %6 = load i64, i64* %flow, align 8, !dbg !1553
  %tobool4 = icmp ne i64 %6, 0, !dbg !1555
  br i1 %tobool4, label %if.then5, label %if.end38, !dbg !1556

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1557
  call void @llvm.dbg.value(metadata %struct.arc* %block.0, metadata !1561, metadata !DIExpression()), !dbg !1509
  br label %while.body8, !dbg !1562

while.body8:                                      ; preds = %if.end37, %if.then5
  %arc.0 = phi %struct.arc* [ %block.0, %if.then5 ], [ %arc.1, %if.end37 ], !dbg !1565
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !1561, metadata !DIExpression()), !dbg !1509
  br label %while_continue___3, !dbg !1566

while_continue___3:                               ; preds = %while.body8
  br label %while_continue___0, !dbg !1566

while_continue___0:                               ; preds = %while_continue___3
  %tobool9 = icmp ne %struct.arc* %arc.0, null, !dbg !1567
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1570

if.then10:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1571

if.end11:                                         ; preds = %while_continue___0
  %7 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !1573
  %8 = ptrtoint %struct.arc* %add.ptr to i64, !dbg !1575
  %cmp12 = icmp uge i64 %7, %8, !dbg !1576
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1577

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !1578
  br label %if.end15, !dbg !1582

if.end15:                                         ; preds = %if.then13, %if.end11
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !1583
  %9 = load %struct.node*, %struct.node** %head, align 8, !dbg !1583
  %number = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0, !dbg !1586
  %10 = load i64, i64* %number, align 8, !dbg !1586
  %sub = sub nsw i64 0, %10, !dbg !1587
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %sub), !dbg !1588
  %head17 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !1589
  %11 = load %struct.node*, %struct.node** %head17, align 8, !dbg !1589
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !1590
  %12 = load i64, i64* %n_trips, align 8, !dbg !1590
  %add.ptr18 = getelementptr inbounds %struct.node, %struct.node* %11, i64 %12, !dbg !1591
  %firstout19 = getelementptr inbounds %struct.node, %struct.node* %add.ptr18, i32 0, i32 9, !dbg !1592
  %13 = load %struct.arc*, %struct.arc** %firstout19, align 8, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.arc* %13, metadata !1593, metadata !DIExpression()), !dbg !1509
  br label %while.body21, !dbg !1594

while.body21:                                     ; preds = %if.end28, %if.end15
  %arc2.0 = phi %struct.arc* [ %13, %if.end15 ], [ %15, %if.end28 ], !dbg !1597
  call void @llvm.dbg.value(metadata %struct.arc* %arc2.0, metadata !1593, metadata !DIExpression()), !dbg !1509
  br label %while_continue___4, !dbg !1598

while_continue___4:                               ; preds = %while.body21
  br label %while_continue___1, !dbg !1598

while_continue___1:                               ; preds = %while_continue___4
  %tobool22 = icmp ne %struct.arc* %arc2.0, null, !dbg !1599
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1602

if.then23:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1603

if.end24:                                         ; preds = %while_continue___1
  %flow25 = getelementptr inbounds %struct.arc, %struct.arc* %arc2.0, i32 0, i32 6, !dbg !1605
  %14 = load i64, i64* %flow25, align 8, !dbg !1605
  %tobool26 = icmp ne i64 %14, 0, !dbg !1607
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1608

if.then27:                                        ; preds = %if.end24
  br label %while_break___1, !dbg !1609

if.end28:                                         ; preds = %if.end24
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %arc2.0, i32 0, i32 2, !dbg !1611
  %15 = load %struct.arc*, %struct.arc** %nextout, align 8, !dbg !1611
  call void @llvm.dbg.value(metadata %struct.arc* %15, metadata !1593, metadata !DIExpression()), !dbg !1509
  br label %while.body21, !dbg !1594, !llvm.loop !1612

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !1614

while_break___1:                                  ; preds = %while_break___4, %if.then27, %if.then23
  %tobool29 = icmp ne %struct.arc* %arc2.0, null, !dbg !1615
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !1617

if.then30:                                        ; preds = %while_break___1
  %call31 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !1618
  br label %return, !dbg !1622

if.end32:                                         ; preds = %while_break___1
  %head33 = getelementptr inbounds %struct.arc, %struct.arc* %arc2.0, i32 0, i32 1, !dbg !1623
  %16 = load %struct.node*, %struct.node** %head33, align 8, !dbg !1623
  %number34 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0, !dbg !1625
  %17 = load i64, i64* %number34, align 8, !dbg !1625
  %tobool35 = icmp ne i64 %17, 0, !dbg !1626
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !1627

if.then36:                                        ; preds = %if.end32
  call void @llvm.dbg.value(metadata %struct.arc* %arc2.0, metadata !1561, metadata !DIExpression()), !dbg !1509
  br label %if.end37, !dbg !1628

if.else:                                          ; preds = %if.end32
  call void @llvm.dbg.value(metadata %struct.arc* null, metadata !1561, metadata !DIExpression()), !dbg !1509
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  %arc.1 = phi %struct.arc* [ %arc2.0, %if.then36 ], [ null, %if.else ], !dbg !1630
  call void @llvm.dbg.value(metadata %struct.arc* %arc.1, metadata !1561, metadata !DIExpression()), !dbg !1509
  br label %while.body8, !dbg !1562, !llvm.loop !1631

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !1633

while_break___0:                                  ; preds = %while_break___3, %if.then10
  br label %if.end38, !dbg !1634

if.end38:                                         ; preds = %while_break___0, %if.end3
  %nextout39 = getelementptr inbounds %struct.arc, %struct.arc* %block.0, i32 0, i32 2, !dbg !1635
  %18 = load %struct.arc*, %struct.arc** %nextout39, align 8, !dbg !1635
  call void @llvm.dbg.value(metadata %struct.arc* %18, metadata !1541, metadata !DIExpression()), !dbg !1509
  br label %while.body, !dbg !1542, !llvm.loop !1636

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !1638

while_break:                                      ; preds = %while_break___2, %if.then2
  %call40 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !1639
  br label %return, !dbg !1642

return:                                           ; preds = %while_break, %if.then30, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then30 ], [ 0, %while_break ], !dbg !1545
  ret i64 %retval.0, !dbg !1643
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @refresh_neighbour_lists(%struct.network* %net___0) #0 !dbg !1644 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1647, metadata !DIExpression()), !dbg !1648
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1649
  %0 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.node* %0, metadata !1651, metadata !DIExpression()), !dbg !1648
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1652
  %1 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !1652
  %2 = bitcast %struct.node* %1 to i8*, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %2, metadata !1654, metadata !DIExpression()), !dbg !1648
  br label %while.body, !dbg !1655

while.body:                                       ; preds = %if.end, %entry
  %node.0 = phi %struct.node* [ %0, %entry ], [ %incdec.ptr, %if.end ], !dbg !1658
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !1651, metadata !DIExpression()), !dbg !1648
  br label %while_continue___1, !dbg !1659

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1659

while_continue:                                   ; preds = %while_continue___1
  %3 = ptrtoint %struct.node* %node.0 to i64, !dbg !1660
  %4 = bitcast i8* %2 to %struct.node*, !dbg !1663
  %5 = ptrtoint %struct.node* %4 to i64, !dbg !1664
  %cmp = icmp ult i64 %3, %5, !dbg !1665
  br i1 %cmp, label %if.end, label %if.then, !dbg !1666

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1667

if.end:                                           ; preds = %while_continue
  %firstin = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 10, !dbg !1669
  store %struct.arc* null, %struct.arc** %firstin, align 8, !dbg !1670
  %firstout = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 9, !dbg !1671
  store %struct.arc* null, %struct.arc** %firstout, align 8, !dbg !1672
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !1673
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr, metadata !1651, metadata !DIExpression()), !dbg !1648
  br label %while.body, !dbg !1655, !llvm.loop !1674

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1676

while_break:                                      ; preds = %while_break___1, %if.then
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1677
  %6 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.arc* %6, metadata !1678, metadata !DIExpression()), !dbg !1648
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !1679
  %7 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !1679
  %8 = bitcast %struct.arc* %7 to i8*, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %8, metadata !1654, metadata !DIExpression()), !dbg !1648
  br label %while.body1, !dbg !1681

while.body1:                                      ; preds = %if.end4, %while_break
  %arc.0 = phi %struct.arc* [ %6, %while_break ], [ %incdec.ptr11, %if.end4 ], !dbg !1658
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !1678, metadata !DIExpression()), !dbg !1648
  br label %while_continue___2, !dbg !1684

while_continue___2:                               ; preds = %while.body1
  br label %while_continue___0, !dbg !1684

while_continue___0:                               ; preds = %while_continue___2
  %9 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !1685
  %10 = bitcast i8* %8 to %struct.arc*, !dbg !1688
  %11 = ptrtoint %struct.arc* %10 to i64, !dbg !1689
  %cmp2 = icmp ult i64 %9, %11, !dbg !1690
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !1691

if.then3:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1692

if.end4:                                          ; preds = %while_continue___0
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !1694
  %12 = load %struct.node*, %struct.node** %tail, align 8, !dbg !1694
  %firstout5 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 9, !dbg !1695
  %13 = load %struct.arc*, %struct.arc** %firstout5, align 8, !dbg !1695
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 2, !dbg !1696
  store %struct.arc* %13, %struct.arc** %nextout, align 8, !dbg !1697
  %tail6 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !1698
  %14 = load %struct.node*, %struct.node** %tail6, align 8, !dbg !1698
  %firstout7 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 9, !dbg !1699
  store %struct.arc* %arc.0, %struct.arc** %firstout7, align 8, !dbg !1700
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !1701
  %15 = load %struct.node*, %struct.node** %head, align 8, !dbg !1701
  %firstin8 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 10, !dbg !1702
  %16 = load %struct.arc*, %struct.arc** %firstin8, align 8, !dbg !1702
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 3, !dbg !1703
  store %struct.arc* %16, %struct.arc** %nextin, align 8, !dbg !1704
  %head9 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !1705
  %17 = load %struct.node*, %struct.node** %head9, align 8, !dbg !1705
  %firstin10 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 10, !dbg !1706
  store %struct.arc* %arc.0, %struct.arc** %firstin10, align 8, !dbg !1707
  %incdec.ptr11 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !1691
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr11, metadata !1678, metadata !DIExpression()), !dbg !1648
  br label %while.body1, !dbg !1681, !llvm.loop !1708

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1710

while_break___0:                                  ; preds = %while_break___2, %if.then3
  ret void, !dbg !1711
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @primal_start_artificial(%struct.network* %net___0) #0 !dbg !1712 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1714, metadata !DIExpression()), !dbg !1715
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1716
  %0 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.node* %0, metadata !1718, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata %struct.node* %0, metadata !1719, metadata !DIExpression()), !dbg !1715
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %0, i32 1, !dbg !1720
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr, metadata !1718, metadata !DIExpression()), !dbg !1715
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 8, !dbg !1721
  store %struct.arc* null, %struct.arc** %basic_arc, align 8, !dbg !1722
  %pred = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 2, !dbg !1723
  store %struct.node* null, %struct.node** %pred, align 8, !dbg !1724
  %child = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 3, !dbg !1725
  store %struct.node* %incdec.ptr, %struct.node** %child, align 8, !dbg !1726
  %sibling = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 4, !dbg !1727
  store %struct.node* null, %struct.node** %sibling, align 8, !dbg !1728
  %sibling_prev = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 5, !dbg !1729
  store %struct.node* null, %struct.node** %sibling_prev, align 8, !dbg !1730
  %n = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !1731
  %1 = load i64, i64* %n, align 8, !dbg !1731
  %add = add nsw i64 %1, 1, !dbg !1732
  %depth = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 6, !dbg !1733
  store i64 %add, i64* %depth, align 8, !dbg !1734
  %orientation = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 7, !dbg !1735
  store i64 0, i64* %orientation, align 8, !dbg !1736
  %potential = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 11, !dbg !1737
  store i64 -100000000, i64* %potential, align 8, !dbg !1738
  %flow = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 12, !dbg !1739
  store i64 0, i64* %flow, align 8, !dbg !1740
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !1741
  %2 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !1741
  %3 = bitcast %struct.arc* %2 to i8*, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %3, metadata !1743, metadata !DIExpression()), !dbg !1715
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1744
  %4 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !1744
  call void @llvm.dbg.value(metadata %struct.arc* %4, metadata !1745, metadata !DIExpression()), !dbg !1715
  br label %while.body, !dbg !1746

while.body:                                       ; preds = %if.end4, %entry
  %arc.0 = phi %struct.arc* [ %4, %entry ], [ %incdec.ptr5, %if.end4 ], !dbg !1749
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !1745, metadata !DIExpression()), !dbg !1715
  br label %while_continue___1, !dbg !1750

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1750

while_continue:                                   ; preds = %while_continue___1
  %5 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !1751
  %6 = bitcast i8* %3 to %struct.arc*, !dbg !1754
  %7 = ptrtoint %struct.arc* %6 to i64, !dbg !1755
  %cmp = icmp ne i64 %5, %7, !dbg !1756
  br i1 %cmp, label %if.end, label %if.then, !dbg !1757

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1758

if.end:                                           ; preds = %while_continue
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !1760
  %8 = load i64, i64* %ident, align 8, !dbg !1760
  %cmp1 = icmp ne i64 %8, -1, !dbg !1762
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1763

if.then2:                                         ; preds = %if.end
  %ident3 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !1764
  store i64 1, i64* %ident3, align 8, !dbg !1766
  br label %if.end4, !dbg !1767

if.end4:                                          ; preds = %if.then2, %if.end
  %incdec.ptr5 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !1757
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr5, metadata !1745, metadata !DIExpression()), !dbg !1715
  br label %while.body, !dbg !1746, !llvm.loop !1768

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1770

while_break:                                      ; preds = %while_break___1, %if.then
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !1771
  %9 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.arc* %9, metadata !1745, metadata !DIExpression()), !dbg !1715
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1772
  %10 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !1772
  %11 = bitcast %struct.node* %10 to i8*, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %11, metadata !1743, metadata !DIExpression()), !dbg !1715
  br label %while.body6, !dbg !1774

while.body6:                                      ; preds = %if.end9, %while_break
  %arc.1 = phi %struct.arc* [ %9, %while_break ], [ %incdec.ptr21, %if.end9 ], !dbg !1749
  %node.0 = phi %struct.node* [ %incdec.ptr, %while_break ], [ %incdec.ptr22, %if.end9 ], !dbg !1749
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !1718, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata %struct.arc* %arc.1, metadata !1745, metadata !DIExpression()), !dbg !1715
  br label %while_continue___2, !dbg !1777

while_continue___2:                               ; preds = %while.body6
  br label %while_continue___0, !dbg !1777

while_continue___0:                               ; preds = %while_continue___2
  %12 = ptrtoint %struct.node* %node.0 to i64, !dbg !1778
  %13 = bitcast i8* %11 to %struct.node*, !dbg !1781
  %14 = ptrtoint %struct.node* %13 to i64, !dbg !1782
  %cmp7 = icmp ne i64 %12, %14, !dbg !1783
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !1784

if.then8:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1785

if.end9:                                          ; preds = %while_continue___0
  %basic_arc10 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !1787
  store %struct.arc* %arc.1, %struct.arc** %basic_arc10, align 8, !dbg !1788
  %pred11 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 2, !dbg !1789
  store %struct.node* %0, %struct.node** %pred11, align 8, !dbg !1790
  %child12 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 3, !dbg !1791
  store %struct.node* null, %struct.node** %child12, align 8, !dbg !1792
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %node.0, i64 1, !dbg !1793
  %sibling13 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 4, !dbg !1794
  store %struct.node* %add.ptr, %struct.node** %sibling13, align 8, !dbg !1795
  %add.ptr14 = getelementptr inbounds %struct.node, %struct.node* %node.0, i64 -1, !dbg !1796
  %sibling_prev15 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 5, !dbg !1797
  store %struct.node* %add.ptr14, %struct.node** %sibling_prev15, align 8, !dbg !1798
  %depth16 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 6, !dbg !1799
  store i64 1, i64* %depth16, align 8, !dbg !1800
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 4, !dbg !1801
  store i64 100000000, i64* %cost, align 8, !dbg !1802
  %ident17 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 7, !dbg !1803
  store i64 0, i64* %ident17, align 8, !dbg !1804
  %orientation18 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 7, !dbg !1805
  store i64 1, i64* %orientation18, align 8, !dbg !1806
  %potential19 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 11, !dbg !1807
  store i64 0, i64* %potential19, align 8, !dbg !1808
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !1809
  store %struct.node* %node.0, %struct.node** %tail, align 8, !dbg !1810
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !1811
  store %struct.node* %0, %struct.node** %head, align 8, !dbg !1812
  %flow20 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 12, !dbg !1813
  store i64 0, i64* %flow20, align 8, !dbg !1814
  %incdec.ptr21 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 1, !dbg !1784
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr21, metadata !1745, metadata !DIExpression()), !dbg !1715
  %incdec.ptr22 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr22, metadata !1718, metadata !DIExpression()), !dbg !1715
  br label %while.body6, !dbg !1774, !llvm.loop !1816

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1818

while_break___0:                                  ; preds = %while_break___2, %if.then8
  %incdec.ptr23 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 -1, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr23, metadata !1718, metadata !DIExpression()), !dbg !1715
  %incdec.ptr24 = getelementptr inbounds %struct.node, %struct.node* %0, i32 1, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr24, metadata !1719, metadata !DIExpression()), !dbg !1715
  %sibling25 = getelementptr inbounds %struct.node, %struct.node* %incdec.ptr23, i32 0, i32 4, !dbg !1820
  store %struct.node* null, %struct.node** %sibling25, align 8, !dbg !1821
  %sibling_prev26 = getelementptr inbounds %struct.node, %struct.node* %incdec.ptr24, i32 0, i32 5, !dbg !1822
  store %struct.node* null, %struct.node** %sibling_prev26, align 8, !dbg !1823
  ret i64 0, !dbg !1824
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @resize_prob(%struct.network* %net___0) #0 !dbg !1825 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !1827, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.declare(metadata !4, metadata !1829, metadata !DIExpression()), !dbg !1830
  %max_m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !1831
  %0 = load i64, i64* %max_m, align 8, !dbg !1834
  %add = add nsw i64 %0, 300000, !dbg !1834
  store i64 %add, i64* %max_m, align 8, !dbg !1834
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1835
  %1 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !1835
  %2 = bitcast %struct.arc* %1 to i8*, !dbg !1837
  %max_m1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !1838
  %3 = load i64, i64* %max_m1, align 8, !dbg !1838
  %mul = mul i64 %3, 64, !dbg !1839
  %conv = trunc i64 %mul to i32, !dbg !1840
  %call = call noalias i8* @realloc(i8* %2, i32 %conv), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %call, metadata !1842, metadata !DIExpression()), !dbg !1828
  %4 = bitcast i8* %call to %struct.arc*, !dbg !1843
  call void @llvm.dbg.value(metadata %struct.arc* %4, metadata !1844, metadata !DIExpression()), !dbg !1828
  %tobool = icmp ne %struct.arc* %4, null, !dbg !1845
  br i1 %tobool, label %if.end, label %if.then, !dbg !1847

if.then:                                          ; preds = %entry
  %inputfile = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 0, !dbg !1848
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %inputfile, i32 0, i32 0, !dbg !1852
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay), !dbg !1853
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1854
  %call3 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !1856
  br label %return, !dbg !1857

if.end:                                           ; preds = %entry
  %6 = ptrtoint %struct.arc* %4 to i64, !dbg !1858
  %arcs4 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1859
  %7 = load %struct.arc*, %struct.arc** %arcs4, align 8, !dbg !1859
  %8 = ptrtoint %struct.arc* %7 to i64, !dbg !1860
  %sub = sub nsw i64 %6, %8, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1862, metadata !DIExpression()), !dbg !1828
  %arcs5 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !1863
  store %struct.arc* %4, %struct.arc** %arcs5, align 8, !dbg !1864
  %m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !1865
  %9 = load i64, i64* %m, align 8, !dbg !1865
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %4, i64 %9, !dbg !1866
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !1867
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs, align 8, !dbg !1868
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !1869
  %10 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.node* %10, metadata !1870, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata %struct.node* %10, metadata !1871, metadata !DIExpression()), !dbg !1828
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, !dbg !1872
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr, metadata !1870, metadata !DIExpression()), !dbg !1828
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !1873
  %11 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !1873
  %12 = bitcast %struct.node* %11 to i8*, !dbg !1874
  %13 = bitcast i8* %12 to %struct.node*, !dbg !1875
  call void @llvm.dbg.value(metadata %struct.node* %13, metadata !1876, metadata !DIExpression()), !dbg !1828
  br label %while.body, !dbg !1877

while.body:                                       ; preds = %if.end14, %if.end
  %node.0 = phi %struct.node* [ %incdec.ptr, %if.end ], [ %incdec.ptr15, %if.end14 ], !dbg !1880
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !1870, metadata !DIExpression()), !dbg !1828
  br label %while_continue___0, !dbg !1881

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1881

while_continue:                                   ; preds = %while_continue___0
  %14 = ptrtoint %struct.node* %node.0 to i64, !dbg !1882
  %15 = ptrtoint %struct.node* %13 to i64, !dbg !1885
  %cmp = icmp ult i64 %14, %15, !dbg !1886
  br i1 %cmp, label %if.end8, label %if.then7, !dbg !1887

if.then7:                                         ; preds = %while_continue
  br label %while_break, !dbg !1888

if.end8:                                          ; preds = %while_continue
  %pred = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 2, !dbg !1890
  %16 = load %struct.node*, %struct.node** %pred, align 8, !dbg !1890
  %17 = ptrtoint %struct.node* %16 to i64, !dbg !1892
  %18 = ptrtoint %struct.node* %10 to i64, !dbg !1893
  %cmp9 = icmp ne i64 %17, %18, !dbg !1894
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !1895

if.then11:                                        ; preds = %if.end8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !1896
  %19 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !1896
  %20 = ptrtoint %struct.arc* %19 to i64, !dbg !1898
  %add12 = add nsw i64 %20, %sub, !dbg !1899
  %21 = inttoptr i64 %add12 to %struct.arc*, !dbg !1900
  %basic_arc13 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !1901
  store %struct.arc* %21, %struct.arc** %basic_arc13, align 8, !dbg !1902
  br label %if.end14, !dbg !1903

if.end14:                                         ; preds = %if.then11, %if.end8
  %incdec.ptr15 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr15, metadata !1870, metadata !DIExpression()), !dbg !1828
  br label %while.body, !dbg !1877, !llvm.loop !1905

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1907

while_break:                                      ; preds = %while_break___0, %if.then7
  br label %return, !dbg !1908

return:                                           ; preds = %while_break, %if.then
  %retval.0 = phi i64 [ 0, %while_break ], [ -1, %if.then ], !dbg !1880
  ret i64 %retval.0, !dbg !1909
}

declare noalias i8* @realloc(i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @compute_red_cost(i64 %cost, %struct.node* %tail, i64 %head_potential) #0 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata i64 %cost, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata %struct.node* %tail, metadata !1915, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %head_potential, metadata !1916, metadata !DIExpression()), !dbg !1914
  %potential = getelementptr inbounds %struct.node, %struct.node* %tail, i32 0, i32 11, !dbg !1917
  %0 = load i64, i64* %potential, align 8, !dbg !1917
  %sub = sub nsw i64 %cost, %0, !dbg !1919
  %add = add nsw i64 %sub, %head_potential, !dbg !1920
  ret i64 %add, !dbg !1921
}

; Function Attrs: noinline nounwind ssp uwtable
define void @insert_new_arc(%struct.arc* %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 !dbg !1922 {
entry:
  call void @llvm.dbg.value(metadata %struct.arc* %new, metadata !1925, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %newpos, metadata !1927, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata %struct.node* %tail, metadata !1928, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata %struct.node* %head, metadata !1929, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %cost, metadata !1930, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %red_cost, metadata !1931, metadata !DIExpression()), !dbg !1926
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %newpos, !dbg !1932
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr, i32 0, i32 0, !dbg !1934
  store %struct.node* %tail, %struct.node** %tail1, align 8, !dbg !1935
  %add.ptr2 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %newpos, !dbg !1936
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr2, i32 0, i32 1, !dbg !1937
  store %struct.node* %head, %struct.node** %head3, align 8, !dbg !1938
  %add.ptr4 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %newpos, !dbg !1939
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr4, i32 0, i32 5, !dbg !1940
  store i64 %cost, i64* %org_cost, align 8, !dbg !1941
  %add.ptr5 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %newpos, !dbg !1942
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr5, i32 0, i32 4, !dbg !1943
  store i64 %cost, i64* %cost6, align 8, !dbg !1944
  %add.ptr7 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %newpos, !dbg !1945
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr7, i32 0, i32 6, !dbg !1946
  store i64 %red_cost, i64* %flow, align 8, !dbg !1947
  %add = add nsw i64 %newpos, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %add, metadata !1949, metadata !DIExpression()), !dbg !1926
  br label %while.body, !dbg !1950

while.body:                                       ; preds = %if.end12, %entry
  %pos.0 = phi i64 [ %add, %entry ], [ %div48, %if.end12 ], !dbg !1953
  call void @llvm.dbg.value(metadata i64 %pos.0, metadata !1949, metadata !DIExpression()), !dbg !1926
  br label %while_continue___0, !dbg !1954

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1954

while_continue:                                   ; preds = %while_continue___0
  %sub = sub nsw i64 %pos.0, 1, !dbg !1955
  %tobool = icmp ne i64 %sub, 0, !dbg !1955
  br i1 %tobool, label %if.then, label %if.else, !dbg !1958

if.then:                                          ; preds = %while_continue
  %div = sdiv i64 %pos.0, 2, !dbg !1959
  %sub8 = sub nsw i64 %div, 1, !dbg !1962
  %add.ptr9 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub8, !dbg !1963
  %flow10 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr9, i32 0, i32 6, !dbg !1964
  %0 = load i64, i64* %flow10, align 8, !dbg !1964
  %cmp = icmp sgt i64 %red_cost, %0, !dbg !1965
  br i1 %cmp, label %if.end, label %if.then11, !dbg !1966

if.then11:                                        ; preds = %if.then
  br label %while_break, !dbg !1967

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !1969

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !1970

if.end12:                                         ; preds = %if.end
  %div13 = sdiv i64 %pos.0, 2, !dbg !1972
  %sub14 = sub nsw i64 %div13, 1, !dbg !1973
  %add.ptr15 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub14, !dbg !1974
  %tail16 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr15, i32 0, i32 0, !dbg !1975
  %1 = load %struct.node*, %struct.node** %tail16, align 8, !dbg !1975
  %sub17 = sub nsw i64 %pos.0, 1, !dbg !1976
  %add.ptr18 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub17, !dbg !1977
  %tail19 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr18, i32 0, i32 0, !dbg !1978
  store %struct.node* %1, %struct.node** %tail19, align 8, !dbg !1979
  %div20 = sdiv i64 %pos.0, 2, !dbg !1980
  %sub21 = sub nsw i64 %div20, 1, !dbg !1981
  %add.ptr22 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub21, !dbg !1982
  %head23 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr22, i32 0, i32 1, !dbg !1983
  %2 = load %struct.node*, %struct.node** %head23, align 8, !dbg !1983
  %sub24 = sub nsw i64 %pos.0, 1, !dbg !1984
  %add.ptr25 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub24, !dbg !1985
  %head26 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr25, i32 0, i32 1, !dbg !1986
  store %struct.node* %2, %struct.node** %head26, align 8, !dbg !1987
  %div27 = sdiv i64 %pos.0, 2, !dbg !1988
  %sub28 = sub nsw i64 %div27, 1, !dbg !1989
  %add.ptr29 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub28, !dbg !1990
  %cost30 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr29, i32 0, i32 4, !dbg !1991
  %3 = load i64, i64* %cost30, align 8, !dbg !1991
  %sub31 = sub nsw i64 %pos.0, 1, !dbg !1992
  %add.ptr32 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub31, !dbg !1993
  %cost33 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr32, i32 0, i32 4, !dbg !1994
  store i64 %3, i64* %cost33, align 8, !dbg !1995
  %div34 = sdiv i64 %pos.0, 2, !dbg !1996
  %sub35 = sub nsw i64 %div34, 1, !dbg !1997
  %add.ptr36 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub35, !dbg !1998
  %cost37 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr36, i32 0, i32 4, !dbg !1999
  %4 = load i64, i64* %cost37, align 8, !dbg !1999
  %sub38 = sub nsw i64 %pos.0, 1, !dbg !2000
  %add.ptr39 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub38, !dbg !2001
  %org_cost40 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr39, i32 0, i32 5, !dbg !2002
  store i64 %4, i64* %org_cost40, align 8, !dbg !2003
  %div41 = sdiv i64 %pos.0, 2, !dbg !2004
  %sub42 = sub nsw i64 %div41, 1, !dbg !2005
  %add.ptr43 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub42, !dbg !2006
  %flow44 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr43, i32 0, i32 6, !dbg !2007
  %5 = load i64, i64* %flow44, align 8, !dbg !2007
  %sub45 = sub nsw i64 %pos.0, 1, !dbg !2008
  %add.ptr46 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub45, !dbg !2009
  %flow47 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr46, i32 0, i32 6, !dbg !2010
  store i64 %5, i64* %flow47, align 8, !dbg !2011
  %div48 = sdiv i64 %pos.0, 2, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %div48, metadata !1949, metadata !DIExpression()), !dbg !1926
  %sub49 = sub nsw i64 %div48, 1, !dbg !2013
  %add.ptr50 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub49, !dbg !2014
  %tail51 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr50, i32 0, i32 0, !dbg !2015
  store %struct.node* %tail, %struct.node** %tail51, align 8, !dbg !2016
  %sub52 = sub nsw i64 %div48, 1, !dbg !2017
  %add.ptr53 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub52, !dbg !2018
  %head54 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr53, i32 0, i32 1, !dbg !2019
  store %struct.node* %head, %struct.node** %head54, align 8, !dbg !2020
  %sub55 = sub nsw i64 %div48, 1, !dbg !2021
  %add.ptr56 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub55, !dbg !2022
  %cost57 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr56, i32 0, i32 4, !dbg !2023
  store i64 %cost, i64* %cost57, align 8, !dbg !2024
  %sub58 = sub nsw i64 %div48, 1, !dbg !2025
  %add.ptr59 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub58, !dbg !2026
  %org_cost60 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr59, i32 0, i32 5, !dbg !2027
  store i64 %cost, i64* %org_cost60, align 8, !dbg !2028
  %sub61 = sub nsw i64 %div48, 1, !dbg !2029
  %add.ptr62 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub61, !dbg !2030
  %flow63 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr62, i32 0, i32 6, !dbg !2031
  store i64 %red_cost, i64* %flow63, align 8, !dbg !2032
  br label %while.body, !dbg !1950, !llvm.loop !2033

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2035

while_break:                                      ; preds = %while_break___0, %if.else, %if.then11
  ret void, !dbg !2036
}

; Function Attrs: noinline nounwind ssp uwtable
define void @replace_weaker_arc(%struct.arc* %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 !dbg !2037 {
entry:
  call void @llvm.dbg.value(metadata %struct.arc* %new, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata %struct.node* %tail, metadata !2042, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata %struct.node* %head, metadata !2043, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %cost, metadata !2044, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %red_cost, metadata !2045, metadata !DIExpression()), !dbg !2041
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 0, !dbg !2046
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr, i32 0, i32 0, !dbg !2048
  store %struct.node* %tail, %struct.node** %tail1, align 8, !dbg !2049
  %add.ptr2 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 0, !dbg !2050
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr2, i32 0, i32 1, !dbg !2051
  store %struct.node* %head, %struct.node** %head3, align 8, !dbg !2052
  %add.ptr4 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 0, !dbg !2053
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr4, i32 0, i32 5, !dbg !2054
  store i64 %cost, i64* %org_cost, align 8, !dbg !2055
  %add.ptr5 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 0, !dbg !2056
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr5, i32 0, i32 4, !dbg !2057
  store i64 %cost, i64* %cost6, align 8, !dbg !2058
  %add.ptr7 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 0, !dbg !2059
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr7, i32 0, i32 6, !dbg !2060
  store i64 %red_cost, i64* %flow, align 8, !dbg !2061
  call void @llvm.dbg.value(metadata i64 1, metadata !2062, metadata !DIExpression()), !dbg !2041
  %add.ptr8 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 1, !dbg !2063
  %flow9 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr8, i32 0, i32 6, !dbg !2065
  %0 = load i64, i64* %flow9, align 8, !dbg !2065
  %add.ptr10 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 2, !dbg !2066
  %flow11 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr10, i32 0, i32 6, !dbg !2067
  %1 = load i64, i64* %flow11, align 8, !dbg !2067
  %cmp12 = icmp sgt i64 %0, %1, !dbg !2068
  br i1 %cmp12, label %if.then, label %if.else, !dbg !2069

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %if.end, !dbg !2071

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 3, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp.0 = phi i64 [ 2, %if.then ], [ 3, %if.else ], !dbg !2073
  call void @llvm.dbg.value(metadata i64 %cmp.0, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %while.body, !dbg !2074

while.body:                                       ; preds = %if.end77, %if.end
  %pos.0 = phi i64 [ 1, %if.end ], [ %cmp.1, %if.end77 ], !dbg !2077
  %cmp.1 = phi i64 [ %cmp.0, %if.end ], [ %cmp.3, %if.end77 ], !dbg !2077
  call void @llvm.dbg.value(metadata i64 %cmp.1, metadata !2070, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %pos.0, metadata !2062, metadata !DIExpression()), !dbg !2041
  br label %while_continue___0, !dbg !2078

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2078

while_continue:                                   ; preds = %while_continue___0
  %cmp13 = icmp sle i64 %cmp.1, 300000, !dbg !2079
  br i1 %cmp13, label %if.then14, label %if.else20, !dbg !2082

if.then14:                                        ; preds = %while_continue
  %sub = sub nsw i64 %cmp.1, 1, !dbg !2083
  %add.ptr15 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub, !dbg !2086
  %flow16 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr15, i32 0, i32 6, !dbg !2087
  %2 = load i64, i64* %flow16, align 8, !dbg !2087
  %cmp17 = icmp slt i64 %red_cost, %2, !dbg !2088
  br i1 %cmp17, label %if.end19, label %if.then18, !dbg !2089

if.then18:                                        ; preds = %if.then14
  br label %while_break, !dbg !2090

if.end19:                                         ; preds = %if.then14
  br label %if.end21, !dbg !2092

if.else20:                                        ; preds = %while_continue
  br label %while_break, !dbg !2093

if.end21:                                         ; preds = %if.end19
  %sub22 = sub nsw i64 %cmp.1, 1, !dbg !2095
  %add.ptr23 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub22, !dbg !2096
  %tail24 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr23, i32 0, i32 0, !dbg !2097
  %3 = load %struct.node*, %struct.node** %tail24, align 8, !dbg !2097
  %sub25 = sub nsw i64 %pos.0, 1, !dbg !2098
  %add.ptr26 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub25, !dbg !2099
  %tail27 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr26, i32 0, i32 0, !dbg !2100
  store %struct.node* %3, %struct.node** %tail27, align 8, !dbg !2101
  %sub28 = sub nsw i64 %cmp.1, 1, !dbg !2102
  %add.ptr29 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub28, !dbg !2103
  %head30 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr29, i32 0, i32 1, !dbg !2104
  %4 = load %struct.node*, %struct.node** %head30, align 8, !dbg !2104
  %sub31 = sub nsw i64 %pos.0, 1, !dbg !2105
  %add.ptr32 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub31, !dbg !2106
  %head33 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr32, i32 0, i32 1, !dbg !2107
  store %struct.node* %4, %struct.node** %head33, align 8, !dbg !2108
  %sub34 = sub nsw i64 %cmp.1, 1, !dbg !2109
  %add.ptr35 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub34, !dbg !2110
  %cost36 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr35, i32 0, i32 4, !dbg !2111
  %5 = load i64, i64* %cost36, align 8, !dbg !2111
  %sub37 = sub nsw i64 %pos.0, 1, !dbg !2112
  %add.ptr38 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub37, !dbg !2113
  %cost39 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr38, i32 0, i32 4, !dbg !2114
  store i64 %5, i64* %cost39, align 8, !dbg !2115
  %sub40 = sub nsw i64 %cmp.1, 1, !dbg !2116
  %add.ptr41 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub40, !dbg !2117
  %cost42 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr41, i32 0, i32 4, !dbg !2118
  %6 = load i64, i64* %cost42, align 8, !dbg !2118
  %sub43 = sub nsw i64 %pos.0, 1, !dbg !2119
  %add.ptr44 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub43, !dbg !2120
  %org_cost45 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr44, i32 0, i32 5, !dbg !2121
  store i64 %6, i64* %org_cost45, align 8, !dbg !2122
  %sub46 = sub nsw i64 %cmp.1, 1, !dbg !2123
  %add.ptr47 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub46, !dbg !2124
  %flow48 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr47, i32 0, i32 6, !dbg !2125
  %7 = load i64, i64* %flow48, align 8, !dbg !2125
  %sub49 = sub nsw i64 %pos.0, 1, !dbg !2126
  %add.ptr50 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub49, !dbg !2127
  %flow51 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr50, i32 0, i32 6, !dbg !2128
  store i64 %7, i64* %flow51, align 8, !dbg !2129
  %sub52 = sub nsw i64 %cmp.1, 1, !dbg !2130
  %add.ptr53 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub52, !dbg !2131
  %tail54 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr53, i32 0, i32 0, !dbg !2132
  store %struct.node* %tail, %struct.node** %tail54, align 8, !dbg !2133
  %sub55 = sub nsw i64 %cmp.1, 1, !dbg !2134
  %add.ptr56 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub55, !dbg !2135
  %head57 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr56, i32 0, i32 1, !dbg !2136
  store %struct.node* %head, %struct.node** %head57, align 8, !dbg !2137
  %sub58 = sub nsw i64 %cmp.1, 1, !dbg !2138
  %add.ptr59 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub58, !dbg !2139
  %cost60 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr59, i32 0, i32 4, !dbg !2140
  store i64 %cost, i64* %cost60, align 8, !dbg !2141
  %sub61 = sub nsw i64 %cmp.1, 1, !dbg !2142
  %add.ptr62 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub61, !dbg !2143
  %org_cost63 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr62, i32 0, i32 5, !dbg !2144
  store i64 %cost, i64* %org_cost63, align 8, !dbg !2145
  %sub64 = sub nsw i64 %cmp.1, 1, !dbg !2146
  %add.ptr65 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub64, !dbg !2147
  %flow66 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr65, i32 0, i32 6, !dbg !2148
  store i64 %red_cost, i64* %flow66, align 8, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %cmp.1, metadata !2062, metadata !DIExpression()), !dbg !2041
  %mul = mul nsw i64 %cmp.1, 2, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2070, metadata !DIExpression()), !dbg !2041
  %add = add nsw i64 %mul, 1, !dbg !2151
  %cmp67 = icmp sle i64 %add, 300000, !dbg !2153
  br i1 %cmp67, label %if.then68, label %if.end77, !dbg !2154

if.then68:                                        ; preds = %if.end21
  %sub69 = sub nsw i64 %mul, 1, !dbg !2155
  %add.ptr70 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %sub69, !dbg !2158
  %flow71 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr70, i32 0, i32 6, !dbg !2159
  %8 = load i64, i64* %flow71, align 8, !dbg !2159
  %add.ptr72 = getelementptr inbounds %struct.arc, %struct.arc* %new, i64 %mul, !dbg !2160
  %flow73 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr72, i32 0, i32 6, !dbg !2161
  %9 = load i64, i64* %flow73, align 8, !dbg !2161
  %cmp74 = icmp slt i64 %8, %9, !dbg !2162
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !2163

if.then75:                                        ; preds = %if.then68
  %inc = add nsw i64 %mul, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %if.end76, !dbg !2166

if.end76:                                         ; preds = %if.then75, %if.then68
  %cmp.2 = phi i64 [ %inc, %if.then75 ], [ %mul, %if.then68 ], !dbg !2167
  call void @llvm.dbg.value(metadata i64 %cmp.2, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %if.end77, !dbg !2168

if.end77:                                         ; preds = %if.end76, %if.end21
  %cmp.3 = phi i64 [ %cmp.2, %if.end76 ], [ %mul, %if.end21 ], !dbg !2167
  call void @llvm.dbg.value(metadata i64 %cmp.3, metadata !2070, metadata !DIExpression()), !dbg !2041
  br label %while.body, !dbg !2074, !llvm.loop !2169

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2171

while_break:                                      ; preds = %while_break___0, %if.else20, %if.then18
  ret void, !dbg !2172
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @price_out_impl(%struct.network* %net___0) #0 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !2174, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !2176, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !2177, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 15, metadata !2178, metadata !DIExpression()), !dbg !2175
  %bigM1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2179
  %0 = load i64, i64* %bigM1, align 8, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %0, metadata !2181, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 30, metadata !2182, metadata !DIExpression()), !dbg !2175
  %sub = sub nsw i64 %0, 15, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2184, metadata !DIExpression()), !dbg !2175
  %m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2185
  %1 = load i64, i64* %m, align 8, !dbg !2185
  %add = add nsw i64 %1, 300000, !dbg !2187
  %max_m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !2188
  %2 = load i64, i64* %max_m, align 8, !dbg !2188
  %cmp = icmp sgt i64 %add, %2, !dbg !2189
  br i1 %cmp, label %if.then, label %if.end10, !dbg !2190

if.then:                                          ; preds = %entry
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2191
  %3 = load i64, i64* %n_trips, align 8, !dbg !2191
  %n_trips2 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2194
  %4 = load i64, i64* %n_trips2, align 8, !dbg !2194
  %mul = mul nsw i64 %3, %4, !dbg !2195
  %div = sdiv i64 %mul, 2, !dbg !2196
  %m3 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2197
  %5 = load i64, i64* %m3, align 8, !dbg !2197
  %add4 = add nsw i64 %div, %5, !dbg !2198
  %max_m5 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !2199
  %6 = load i64, i64* %max_m5, align 8, !dbg !2199
  %cmp6 = icmp sgt i64 %add4, %6, !dbg !2200
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !2201

if.then7:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 1, metadata !2177, metadata !DIExpression()), !dbg !2175
  %call = call i64 @resize_prob(%struct.network* %net___0), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %call, metadata !2206, metadata !DIExpression()), !dbg !2175
  %tobool = icmp ne i64 %call, 0, !dbg !2207
  br i1 %tobool, label %if.then8, label %if.end, !dbg !2209

if.then8:                                         ; preds = %if.then7
  br label %return, !dbg !2210

if.end:                                           ; preds = %if.then7
  call void @refresh_neighbour_lists(%struct.network* %net___0), !dbg !2212
  br label %if.end9, !dbg !2215

if.end9:                                          ; preds = %if.end, %if.then
  %resized.0 = phi i64 [ 1, %if.end ], [ 0, %if.then ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %resized.0, metadata !2177, metadata !DIExpression()), !dbg !2175
  br label %if.end10, !dbg !2217

if.end10:                                         ; preds = %if.end9, %entry
  %resized.1 = phi i64 [ %resized.0, %if.end9 ], [ 0, %entry ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %resized.1, metadata !2177, metadata !DIExpression()), !dbg !2175
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2218
  %7 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.arc* %7, metadata !2219, metadata !DIExpression()), !dbg !2175
  %n_trips11 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2220
  %8 = load i64, i64* %n_trips11, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %8, metadata !2221, metadata !DIExpression()), !dbg !2175
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2222
  %9 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.arc* %9, metadata !2223, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !2224, metadata !DIExpression()), !dbg !2175
  br label %while.body, !dbg !2225

while.body:                                       ; preds = %if.end17, %if.end10
  %arcout.0 = phi %struct.arc* [ %9, %if.end10 ], [ %add.ptr18, %if.end17 ], !dbg !2216
  %i.0 = phi i64 [ 0, %if.end10 ], [ %inc, %if.end17 ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2224, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.arc* %arcout.0, metadata !2223, metadata !DIExpression()), !dbg !2175
  br label %while_continue___4, !dbg !2228

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !2228

while_continue:                                   ; preds = %while_continue___4
  %cmp12 = icmp slt i64 %i.0, %8, !dbg !2229
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !2232

if.then13:                                        ; preds = %while_continue
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arcout.0, i64 1, !dbg !2233
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr, i32 0, i32 7, !dbg !2236
  %10 = load i64, i64* %ident, align 8, !dbg !2236
  %cmp14 = icmp eq i64 %10, -1, !dbg !2237
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !2238

if.then15:                                        ; preds = %if.then13
  br label %while_break, !dbg !2239

if.end16:                                         ; preds = %if.then13
  br label %if.end17, !dbg !2241

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !2242

if.end17:                                         ; preds = %if.end16
  %inc = add nsw i64 %i.0, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2224, metadata !DIExpression()), !dbg !2175
  %add.ptr18 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.0, i64 3, !dbg !2245
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr18, metadata !2223, metadata !DIExpression()), !dbg !2175
  br label %while.body, !dbg !2225, !llvm.loop !2246

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !2248

while_break:                                      ; preds = %while_break___4, %if.else, %if.then15
  call void @llvm.dbg.value(metadata %struct.arc* null, metadata !2249, metadata !DIExpression()), !dbg !2175
  br label %while.body19, !dbg !2250

while.body19:                                     ; preds = %__Cont, %while_break
  %arcout.1 = phi %struct.arc* [ %arcout.0, %while_break ], [ %add.ptr74, %__Cont ], !dbg !2216
  %new_arcs.0 = phi i64 [ 0, %while_break ], [ %new_arcs.4, %__Cont ], !dbg !2253
  %i.1 = phi i64 [ %i.0, %while_break ], [ %inc73, %__Cont ], !dbg !2216
  %first_of_sparse_list.0 = phi %struct.arc* [ null, %while_break ], [ %first_of_sparse_list.1, %__Cont ], !dbg !2216
  call void @llvm.dbg.value(metadata %struct.arc* %first_of_sparse_list.0, metadata !2249, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2224, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %new_arcs.0, metadata !2176, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.arc* %arcout.1, metadata !2223, metadata !DIExpression()), !dbg !2175
  br label %while_continue___5, !dbg !2254

while_continue___5:                               ; preds = %while.body19
  br label %while_continue___0, !dbg !2254

while_continue___0:                               ; preds = %while_continue___5
  %cmp20 = icmp slt i64 %i.1, %8, !dbg !2255
  br i1 %cmp20, label %if.end22, label %if.then21, !dbg !2258

if.then21:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2259

if.end22:                                         ; preds = %while_continue___0
  %add.ptr23 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i64 1, !dbg !2261
  %ident24 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr23, i32 0, i32 7, !dbg !2263
  %11 = load i64, i64* %ident24, align 8, !dbg !2263
  %cmp25 = icmp ne i64 %11, -1, !dbg !2264
  br i1 %cmp25, label %if.then26, label %if.end30, !dbg !2265

if.then26:                                        ; preds = %if.end22
  %12 = ptrtoint %struct.arc* %first_of_sparse_list.0 to i32, !dbg !2266
  %head27 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i32 0, i32 1, !dbg !2268
  %13 = load %struct.node*, %struct.node** %head27, align 8, !dbg !2268
  %firstout = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 9, !dbg !2269
  %14 = load %struct.arc*, %struct.arc** %firstout, align 8, !dbg !2269
  %head28 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 1, !dbg !2270
  %15 = load %struct.node*, %struct.node** %head28, align 8, !dbg !2270
  %mark = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 13, !dbg !2271
  store i32 %12, i32* %mark, align 8, !dbg !2272
  %add.ptr29 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i64 1, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr29, metadata !2249, metadata !DIExpression()), !dbg !2175
  br label %if.end30, !dbg !2274

if.end30:                                         ; preds = %if.then26, %if.end22
  %first_of_sparse_list.1 = phi %struct.arc* [ %add.ptr29, %if.then26 ], [ %first_of_sparse_list.0, %if.end22 ], !dbg !2216
  call void @llvm.dbg.value(metadata %struct.arc* %first_of_sparse_list.1, metadata !2249, metadata !DIExpression()), !dbg !2175
  %ident31 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i32 0, i32 7, !dbg !2275
  %16 = load i64, i64* %ident31, align 8, !dbg !2275
  %cmp32 = icmp eq i64 %16, -1, !dbg !2277
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !2278

if.then33:                                        ; preds = %if.end30
  br label %__Cont, !dbg !2279

if.end34:                                         ; preds = %if.end30
  %head35 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i32 0, i32 1, !dbg !2281
  %17 = load %struct.node*, %struct.node** %head35, align 8, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.node* %17, metadata !2282, metadata !DIExpression()), !dbg !2175
  %time = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 14, !dbg !2283
  %18 = load i64, i64* %time, align 8, !dbg !2283
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i32 0, i32 5, !dbg !2284
  %19 = load i64, i64* %org_cost, align 8, !dbg !2284
  %sub36 = sub nsw i64 %18, %19, !dbg !2285
  %add37 = add nsw i64 %sub36, %sub, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %add37, metadata !2287, metadata !DIExpression()), !dbg !2175
  %potential = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 11, !dbg !2288
  %20 = load i64, i64* %potential, align 8, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %20, metadata !2289, metadata !DIExpression()), !dbg !2175
  %tail38 = getelementptr inbounds %struct.arc, %struct.arc* %first_of_sparse_list.1, i32 0, i32 0, !dbg !2290
  %21 = load %struct.node*, %struct.node** %tail38, align 8, !dbg !2290
  %mark39 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 13, !dbg !2291
  %22 = load i32, i32* %mark39, align 8, !dbg !2291
  %conv = zext i32 %22 to i64, !dbg !2292
  %23 = inttoptr i64 %conv to %struct.arc*, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.arc* %23, metadata !2293, metadata !DIExpression()), !dbg !2175
  br label %while.body41, !dbg !2294

while.body41:                                     ; preds = %if.end70, %if.end34
  %arcin.0 = phi %struct.arc* [ %23, %if.end34 ], [ %31, %if.end70 ], !dbg !2297
  %new_arcs.1 = phi i64 [ %new_arcs.0, %if.end34 ], [ %new_arcs.3, %if.end70 ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %new_arcs.1, metadata !2176, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.arc* %arcin.0, metadata !2293, metadata !DIExpression()), !dbg !2175
  br label %while_continue___6, !dbg !2298

while_continue___6:                               ; preds = %while.body41
  br label %while_continue___1, !dbg !2298

while_continue___1:                               ; preds = %if.then51, %while_continue___6
  %arcin.1 = phi %struct.arc* [ %arcin.0, %while_continue___6 ], [ %28, %if.then51 ], !dbg !2297
  call void @llvm.dbg.value(metadata %struct.arc* %arcin.1, metadata !2293, metadata !DIExpression()), !dbg !2175
  %tobool42 = icmp ne %struct.arc* %arcin.1, null, !dbg !2299
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !2302

if.then43:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2303

if.end44:                                         ; preds = %while_continue___1
  %tail45 = getelementptr inbounds %struct.arc, %struct.arc* %arcin.1, i32 0, i32 0, !dbg !2305
  %24 = load %struct.node*, %struct.node** %tail45, align 8, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.node* %24, metadata !2306, metadata !DIExpression()), !dbg !2175
  %time46 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 14, !dbg !2307
  %25 = load i64, i64* %time46, align 8, !dbg !2307
  %org_cost47 = getelementptr inbounds %struct.arc, %struct.arc* %arcin.1, i32 0, i32 5, !dbg !2309
  %26 = load i64, i64* %org_cost47, align 8, !dbg !2309
  %add48 = add nsw i64 %25, %26, !dbg !2310
  %cmp49 = icmp sgt i64 %add48, %add37, !dbg !2311
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !2312

if.then51:                                        ; preds = %if.end44
  %mark52 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 13, !dbg !2313
  %27 = load i32, i32* %mark52, align 8, !dbg !2313
  %conv53 = zext i32 %27 to i64, !dbg !2315
  %28 = inttoptr i64 %conv53 to %struct.arc*, !dbg !2315
  call void @llvm.dbg.value(metadata %struct.arc* %28, metadata !2293, metadata !DIExpression()), !dbg !2175
  br label %while_continue___1, !dbg !2316

if.end54:                                         ; preds = %if.end44
  %call55 = call i64 @compute_red_cost(i64 30, %struct.node* %24, i64 %20), !dbg !2317
  call void @llvm.dbg.value(metadata i64 %call55, metadata !2320, metadata !DIExpression()), !dbg !2175
  %cmp56 = icmp slt i64 %call55, 0, !dbg !2321
  br i1 %cmp56, label %if.then58, label %if.end70, !dbg !2323

if.then58:                                        ; preds = %if.end54
  %cmp59 = icmp slt i64 %new_arcs.1, 300000, !dbg !2324
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !2327

if.then61:                                        ; preds = %if.then58
  call void @insert_new_arc(%struct.arc* %7, i64 %new_arcs.1, %struct.node* %24, %struct.node* %17, i64 30, i64 %call55), !dbg !2328
  %inc62 = add nsw i64 %new_arcs.1, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !2176, metadata !DIExpression()), !dbg !2175
  br label %if.end69, !dbg !2333

if.else63:                                        ; preds = %if.then58
  %add.ptr64 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 0, !dbg !2334
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr64, i32 0, i32 6, !dbg !2336
  %29 = load i64, i64* %flow, align 8, !dbg !2336
  %cmp65 = icmp sgt i64 %29, %call55, !dbg !2337
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2338

if.then67:                                        ; preds = %if.else63
  call void @replace_weaker_arc(%struct.arc* %7, %struct.node* %24, %struct.node* %17, i64 30, i64 %call55), !dbg !2339
  br label %if.end68, !dbg !2343

if.end68:                                         ; preds = %if.then67, %if.else63
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then61
  %new_arcs.2 = phi i64 [ %inc62, %if.then61 ], [ %new_arcs.1, %if.end68 ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %new_arcs.2, metadata !2176, metadata !DIExpression()), !dbg !2175
  br label %if.end70, !dbg !2344

if.end70:                                         ; preds = %if.end69, %if.end54
  %new_arcs.3 = phi i64 [ %new_arcs.2, %if.end69 ], [ %new_arcs.1, %if.end54 ], !dbg !2216
  call void @llvm.dbg.value(metadata i64 %new_arcs.3, metadata !2176, metadata !DIExpression()), !dbg !2175
  %mark71 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 13, !dbg !2345
  %30 = load i32, i32* %mark71, align 8, !dbg !2345
  %conv72 = zext i32 %30 to i64, !dbg !2346
  %31 = inttoptr i64 %conv72 to %struct.arc*, !dbg !2346
  call void @llvm.dbg.value(metadata %struct.arc* %31, metadata !2293, metadata !DIExpression()), !dbg !2175
  br label %while.body41, !dbg !2294, !llvm.loop !2347

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !2349

while_break___1:                                  ; preds = %while_break___6, %if.then43
  br label %__Cont, !dbg !2350

__Cont:                                           ; preds = %while_break___1, %if.then33
  %new_arcs.4 = phi i64 [ %new_arcs.0, %if.then33 ], [ %new_arcs.1, %while_break___1 ], !dbg !2253
  call void @llvm.dbg.value(metadata i64 %new_arcs.4, metadata !2176, metadata !DIExpression()), !dbg !2175
  %inc73 = add nsw i64 %i.1, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !2224, metadata !DIExpression()), !dbg !2175
  %add.ptr74 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1, i64 3, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr74, metadata !2223, metadata !DIExpression()), !dbg !2175
  br label %while.body19, !dbg !2250, !llvm.loop !2353

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !2355

while_break___0:                                  ; preds = %while_break___5, %if.then21
  %tobool75 = icmp ne i64 %new_arcs.0, 0, !dbg !2356
  br i1 %tobool75, label %if.then76, label %if.end110, !dbg !2358

if.then76:                                        ; preds = %while_break___0
  %stop_arcs77 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2359
  %32 = load %struct.arc*, %struct.arc** %stop_arcs77, align 8, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.arc* %32, metadata !2219, metadata !DIExpression()), !dbg !2175
  %stop_arcs78 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2361
  %33 = load %struct.arc*, %struct.arc** %stop_arcs78, align 8, !dbg !2362
  %add.ptr79 = getelementptr inbounds %struct.arc, %struct.arc* %33, i64 %new_arcs.0, !dbg !2362
  store %struct.arc* %add.ptr79, %struct.arc** %stop_arcs78, align 8, !dbg !2362
  %stop_arcs80 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2363
  %34 = load %struct.arc*, %struct.arc** %stop_arcs80, align 8, !dbg !2363
  %35 = bitcast %struct.arc* %34 to i8*, !dbg !2364
  %36 = bitcast i8* %35 to %struct.arc*, !dbg !2365
  call void @llvm.dbg.value(metadata %struct.arc* %36, metadata !2366, metadata !DIExpression()), !dbg !2175
  %tobool81 = icmp ne i64 %resized.1, 0, !dbg !2367
  br i1 %tobool81, label %if.then82, label %if.else90, !dbg !2369

if.then82:                                        ; preds = %if.then76
  br label %while.body83, !dbg !2370

while.body83:                                     ; preds = %if.end87, %if.then82
  %arcnew.0 = phi %struct.arc* [ %32, %if.then82 ], [ %incdec.ptr, %if.end87 ], !dbg !2374
  call void @llvm.dbg.value(metadata %struct.arc* %arcnew.0, metadata !2219, metadata !DIExpression()), !dbg !2175
  br label %while_continue___7, !dbg !2375

while_continue___7:                               ; preds = %while.body83
  br label %while_continue___2, !dbg !2375

while_continue___2:                               ; preds = %while_continue___7
  %37 = ptrtoint %struct.arc* %arcnew.0 to i64, !dbg !2376
  %38 = ptrtoint %struct.arc* %36 to i64, !dbg !2379
  %cmp84 = icmp ne i64 %37, %38, !dbg !2380
  br i1 %cmp84, label %if.end87, label %if.then86, !dbg !2381

if.then86:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !2382

if.end87:                                         ; preds = %while_continue___2
  %flow88 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0, i32 0, i32 6, !dbg !2384
  store i64 0, i64* %flow88, align 8, !dbg !2385
  %ident89 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0, i32 0, i32 7, !dbg !2386
  store i64 1, i64* %ident89, align 8, !dbg !2387
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0, i32 1, !dbg !2388
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !2219, metadata !DIExpression()), !dbg !2175
  br label %while.body83, !dbg !2370, !llvm.loop !2389

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !2391

while_break___2:                                  ; preds = %while_break___7, %if.then86
  br label %if.end106, !dbg !2392

if.else90:                                        ; preds = %if.then76
  br label %while.body91, !dbg !2393

while.body91:                                     ; preds = %if.end95, %if.else90
  %arcnew.1 = phi %struct.arc* [ %32, %if.else90 ], [ %incdec.ptr105, %if.end95 ], !dbg !2374
  call void @llvm.dbg.value(metadata %struct.arc* %arcnew.1, metadata !2219, metadata !DIExpression()), !dbg !2175
  br label %while_continue___8, !dbg !2397

while_continue___8:                               ; preds = %while.body91
  br label %while_continue___3, !dbg !2397

while_continue___3:                               ; preds = %while_continue___8
  %39 = ptrtoint %struct.arc* %arcnew.1 to i64, !dbg !2398
  %40 = ptrtoint %struct.arc* %36 to i64, !dbg !2401
  %cmp92 = icmp ne i64 %39, %40, !dbg !2402
  br i1 %cmp92, label %if.end95, label %if.then94, !dbg !2403

if.then94:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !2404

if.end95:                                         ; preds = %while_continue___3
  %flow96 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 6, !dbg !2406
  store i64 0, i64* %flow96, align 8, !dbg !2407
  %ident97 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 7, !dbg !2408
  store i64 1, i64* %ident97, align 8, !dbg !2409
  %tail98 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 0, !dbg !2410
  %41 = load %struct.node*, %struct.node** %tail98, align 8, !dbg !2410
  %firstout99 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 9, !dbg !2411
  %42 = load %struct.arc*, %struct.arc** %firstout99, align 8, !dbg !2411
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 2, !dbg !2412
  store %struct.arc* %42, %struct.arc** %nextout, align 8, !dbg !2413
  %tail100 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 0, !dbg !2414
  %43 = load %struct.node*, %struct.node** %tail100, align 8, !dbg !2414
  %firstout101 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 9, !dbg !2415
  store %struct.arc* %arcnew.1, %struct.arc** %firstout101, align 8, !dbg !2416
  %head102 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 1, !dbg !2417
  %44 = load %struct.node*, %struct.node** %head102, align 8, !dbg !2417
  %firstin = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 10, !dbg !2418
  %45 = load %struct.arc*, %struct.arc** %firstin, align 8, !dbg !2418
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 3, !dbg !2419
  store %struct.arc* %45, %struct.arc** %nextin, align 8, !dbg !2420
  %head103 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 0, i32 1, !dbg !2421
  %46 = load %struct.node*, %struct.node** %head103, align 8, !dbg !2421
  %firstin104 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 10, !dbg !2422
  store %struct.arc* %arcnew.1, %struct.arc** %firstin104, align 8, !dbg !2423
  %incdec.ptr105 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1, i32 1, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr105, metadata !2219, metadata !DIExpression()), !dbg !2175
  br label %while.body91, !dbg !2393, !llvm.loop !2425

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !2427

while_break___3:                                  ; preds = %while_break___8, %if.then94
  br label %if.end106

if.end106:                                        ; preds = %while_break___3, %while_break___2
  %m107 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2428
  %47 = load i64, i64* %m107, align 8, !dbg !2429
  %add108 = add nsw i64 %47, %new_arcs.0, !dbg !2429
  store i64 %add108, i64* %m107, align 8, !dbg !2429
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 7, !dbg !2430
  %48 = load i64, i64* %m_impl, align 8, !dbg !2431
  %add109 = add nsw i64 %48, %new_arcs.0, !dbg !2431
  store i64 %add109, i64* %m_impl, align 8, !dbg !2431
  br label %if.end110, !dbg !2432

if.end110:                                        ; preds = %if.end106, %while_break___0
  br label %return, !dbg !2433

return:                                           ; preds = %if.end110, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ %new_arcs.0, %if.end110 ], !dbg !2216
  ret i64 %retval.0, !dbg !2434
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @suspend_impl(%struct.network* %net___0, i64 %threshold, i64 %all) #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %threshold, metadata !2440, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %all, metadata !2441, metadata !DIExpression()), !dbg !2439
  %tobool = icmp ne i64 %all, 0, !dbg !2442
  br i1 %tobool, label %if.then, label %if.else, !dbg !2445

if.then:                                          ; preds = %entry
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 7, !dbg !2446
  %0 = load i64, i64* %m_impl, align 8, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %0, metadata !2448, metadata !DIExpression()), !dbg !2439
  br label %if.end27, !dbg !2449

if.else:                                          ; preds = %entry
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2450
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !2450
  %2 = bitcast %struct.arc* %1 to i8*, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression()), !dbg !2439
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2454
  %3 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !2454
  %m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2455
  %4 = load i64, i64* %m, align 8, !dbg !2455
  %m_impl1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 7, !dbg !2456
  %5 = load i64, i64* %m_impl1, align 8, !dbg !2456
  %sub = sub nsw i64 %4, %5, !dbg !2457
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %3, i64 %sub, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr, metadata !2459, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 0, metadata !2448, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.arc* %add.ptr, metadata !2460, metadata !DIExpression()), !dbg !2439
  br label %while.body, !dbg !2461

while.body:                                       ; preds = %if.end25, %if.else
  %susp.0 = phi i64 [ 0, %if.else ], [ %susp.1, %if.end25 ], !dbg !2464
  %new_arc.0 = phi %struct.arc* [ %add.ptr, %if.else ], [ %new_arc.1, %if.end25 ], !dbg !2465
  %arc.0 = phi %struct.arc* [ %add.ptr, %if.else ], [ %incdec.ptr26, %if.end25 ], !dbg !2464
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !2460, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.arc* %new_arc.0, metadata !2459, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %susp.0, metadata !2448, metadata !DIExpression()), !dbg !2439
  br label %while_continue___0, !dbg !2466

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2466

while_continue:                                   ; preds = %while_continue___0
  %6 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !2467
  %7 = bitcast i8* %2 to %struct.arc*, !dbg !2470
  %8 = ptrtoint %struct.arc* %7 to i64, !dbg !2471
  %cmp = icmp ult i64 %6, %8, !dbg !2472
  br i1 %cmp, label %if.end, label %if.then2, !dbg !2473

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !2474

if.end:                                           ; preds = %while_continue
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !2476
  %9 = load i64, i64* %ident, align 8, !dbg !2476
  %cmp3 = icmp eq i64 %9, 1, !dbg !2478
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !2479

if.then4:                                         ; preds = %if.end
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 4, !dbg !2480
  %10 = load i64, i64* %cost, align 8, !dbg !2480
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2482
  %11 = load %struct.node*, %struct.node** %tail, align 8, !dbg !2482
  %potential = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 11, !dbg !2483
  %12 = load i64, i64* %potential, align 8, !dbg !2483
  %sub5 = sub nsw i64 %10, %12, !dbg !2484
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !2485
  %13 = load %struct.node*, %struct.node** %head, align 8, !dbg !2485
  %potential6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 11, !dbg !2486
  %14 = load i64, i64* %potential6, align 8, !dbg !2486
  %add = add nsw i64 %sub5, %14, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %add, metadata !2488, metadata !DIExpression()), !dbg !2439
  br label %if.end21, !dbg !2489

if.else7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 -2, metadata !2488, metadata !DIExpression()), !dbg !2439
  %ident8 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !2490
  %15 = load i64, i64* %ident8, align 8, !dbg !2490
  %cmp9 = icmp eq i64 %15, 0, !dbg !2493
  br i1 %cmp9, label %if.then10, label %if.end20, !dbg !2494

if.then10:                                        ; preds = %if.else7
  %tail11 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2495
  %16 = load %struct.node*, %struct.node** %tail11, align 8, !dbg !2495
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 8, !dbg !2498
  %17 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !2498
  %18 = ptrtoint %struct.arc* %17 to i64, !dbg !2499
  %19 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !2500
  %cmp12 = icmp eq i64 %18, %19, !dbg !2501
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !2502

if.then13:                                        ; preds = %if.then10
  %tail14 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2503
  %20 = load %struct.node*, %struct.node** %tail14, align 8, !dbg !2503
  %basic_arc15 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 8, !dbg !2505
  store %struct.arc* %new_arc.0, %struct.arc** %basic_arc15, align 8, !dbg !2506
  br label %if.end19, !dbg !2507

if.else16:                                        ; preds = %if.then10
  %head17 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !2508
  %21 = load %struct.node*, %struct.node** %head17, align 8, !dbg !2508
  %basic_arc18 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 8, !dbg !2510
  store %struct.arc* %new_arc.0, %struct.arc** %basic_arc18, align 8, !dbg !2511
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13
  br label %if.end20, !dbg !2512

if.end20:                                         ; preds = %if.end19, %if.else7
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then4
  %red_cost.0 = phi i64 [ %add, %if.then4 ], [ -2, %if.end20 ], !dbg !2513
  call void @llvm.dbg.value(metadata i64 %red_cost.0, metadata !2488, metadata !DIExpression()), !dbg !2439
  %cmp22 = icmp sgt i64 %red_cost.0, %threshold, !dbg !2514
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !2516

if.then23:                                        ; preds = %if.end21
  %inc = add nsw i64 %susp.0, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2448, metadata !DIExpression()), !dbg !2439
  br label %if.end25, !dbg !2519

if.else24:                                        ; preds = %if.end21
  %22 = bitcast %struct.arc* %new_arc.0 to i8*, !dbg !2520
  %23 = bitcast %struct.arc* %arc.0 to i8*, !dbg !2520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 64, i1 false), !dbg !2520
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %new_arc.0, i32 1, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !2459, metadata !DIExpression()), !dbg !2439
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %susp.1 = phi i64 [ %inc, %if.then23 ], [ %susp.0, %if.else24 ], !dbg !2464
  %new_arc.1 = phi %struct.arc* [ %new_arc.0, %if.then23 ], [ %incdec.ptr, %if.else24 ], !dbg !2464
  call void @llvm.dbg.value(metadata %struct.arc* %new_arc.1, metadata !2459, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %susp.1, metadata !2448, metadata !DIExpression()), !dbg !2439
  %incdec.ptr26 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr26, metadata !2460, metadata !DIExpression()), !dbg !2439
  br label %while.body, !dbg !2461, !llvm.loop !2523

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2525

while_break:                                      ; preds = %while_break___0, %if.then2
  br label %if.end27

if.end27:                                         ; preds = %while_break, %if.then
  %susp.2 = phi i64 [ %0, %if.then ], [ %susp.0, %while_break ], !dbg !2526
  call void @llvm.dbg.value(metadata i64 %susp.2, metadata !2448, metadata !DIExpression()), !dbg !2439
  %tobool28 = icmp ne i64 %susp.2, 0, !dbg !2527
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !2529

if.then29:                                        ; preds = %if.end27
  %m30 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2530
  %24 = load i64, i64* %m30, align 8, !dbg !2533
  %sub31 = sub nsw i64 %24, %susp.2, !dbg !2533
  store i64 %sub31, i64* %m30, align 8, !dbg !2533
  %m_impl32 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 7, !dbg !2534
  %25 = load i64, i64* %m_impl32, align 8, !dbg !2535
  %sub33 = sub nsw i64 %25, %susp.2, !dbg !2535
  store i64 %sub33, i64* %m_impl32, align 8, !dbg !2535
  %stop_arcs34 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2536
  %26 = load %struct.arc*, %struct.arc** %stop_arcs34, align 8, !dbg !2537
  %idx.neg = sub i64 0, %susp.2, !dbg !2537
  %add.ptr35 = getelementptr inbounds %struct.arc, %struct.arc* %26, i64 %idx.neg, !dbg !2537
  store %struct.arc* %add.ptr35, %struct.arc** %stop_arcs34, align 8, !dbg !2537
  call void @refresh_neighbour_lists(%struct.network* %net___0), !dbg !2538
  br label %if.end36, !dbg !2540

if.end36:                                         ; preds = %if.then29, %if.end27
  ret i64 %susp.2, !dbg !2541
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind ssp uwtable
define i64 @read_min(%struct.network* %net___0) #0 !dbg !2542 {
entry:
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata [201 x i8]* %instring, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i64* %t, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata i64* %h, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata i64* %c, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.declare(metadata !4, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.declare(metadata !4, metadata !2559, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.declare(metadata !4, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata !4, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.declare(metadata !4, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata !4, metadata !2567, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.declare(metadata !4, metadata !2569, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.declare(metadata !4, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2573, metadata !DIExpression()), !dbg !2545
  %inputfile = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 0, !dbg !2574
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %inputfile, i32 0, i32 0, !dbg !2578
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !2579
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !2573, metadata !DIExpression()), !dbg !2545
  %0 = ptrtoint %struct._IO_FILE* %call to i64, !dbg !2580
  %cmp = icmp eq i64 %0, 0, !dbg !2582
  br i1 %cmp, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %entry
  br label %return, !dbg !2584

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2586
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 200, %struct._IO_FILE* %call), !dbg !2589
  %arraydecay3 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2590
  %call4 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64* %t, i64* %h), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %call4, metadata !2593, metadata !DIExpression()), !dbg !2545
  %cmp5 = icmp ne i32 %call4, 2, !dbg !2594
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2596

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !2597

if.end7:                                          ; preds = %if.end
  %1 = load i64, i64* %t, align 8, !dbg !2599
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2601
  store i64 %1, i64* %n_trips, align 8, !dbg !2602
  %2 = load i64, i64* %h, align 8, !dbg !2603
  %m_org = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 6, !dbg !2604
  store i64 %2, i64* %m_org, align 8, !dbg !2605
  %3 = load i64, i64* %t, align 8, !dbg !2606
  %4 = load i64, i64* %t, align 8, !dbg !2607
  %add = add nsw i64 %3, %4, !dbg !2608
  %add8 = add nsw i64 %add, 1, !dbg !2609
  %n = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2610
  store i64 %add8, i64* %n, align 8, !dbg !2611
  %5 = load i64, i64* %t, align 8, !dbg !2612
  %6 = load i64, i64* %t, align 8, !dbg !2613
  %add9 = add nsw i64 %5, %6, !dbg !2614
  %7 = load i64, i64* %t, align 8, !dbg !2615
  %add10 = add nsw i64 %add9, %7, !dbg !2616
  %8 = load i64, i64* %h, align 8, !dbg !2617
  %add11 = add nsw i64 %add10, %8, !dbg !2618
  %m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2619
  store i64 %add11, i64* %m, align 8, !dbg !2620
  %max_m = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !2621
  store i64 3014656, i64* %max_m, align 8, !dbg !2622
  %n12 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2623
  %9 = load i64, i64* %n12, align 8, !dbg !2623
  %add13 = add nsw i64 %9, 1, !dbg !2625
  %conv = trunc i64 %add13 to i32, !dbg !2626
  %call14 = call noalias i8* @calloc(i32 %conv, i32 120), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %call14, metadata !2628, metadata !DIExpression()), !dbg !2545
  %10 = bitcast i8* %call14 to %struct.node*, !dbg !2629
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !2630
  store %struct.node* %10, %struct.node** %nodes, align 8, !dbg !2631
  %n15 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2632
  %11 = load i64, i64* %n15, align 8, !dbg !2632
  %conv16 = trunc i64 %11 to i32, !dbg !2634
  %call17 = call noalias i8* @calloc(i32 %conv16, i32 64), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %call17, metadata !2636, metadata !DIExpression()), !dbg !2545
  %12 = bitcast i8* %call17 to %struct.arc*, !dbg !2637
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !2638
  store %struct.arc* %12, %struct.arc** %dummy_arcs, align 8, !dbg !2639
  %max_m18 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 4, !dbg !2640
  %13 = load i64, i64* %max_m18, align 8, !dbg !2640
  %conv19 = trunc i64 %13 to i32, !dbg !2642
  %call20 = call noalias i8* @calloc(i32 %conv19, i32 64), !dbg !2643
  call void @llvm.dbg.value(metadata i8* %call20, metadata !2644, metadata !DIExpression()), !dbg !2545
  %14 = bitcast i8* %call20 to %struct.arc*, !dbg !2645
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2646
  store %struct.arc* %14, %struct.arc** %arcs, align 8, !dbg !2647
  %nodes21 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !2648
  %15 = load %struct.node*, %struct.node** %nodes21, align 8, !dbg !2648
  %tobool = icmp ne %struct.node* %15, null, !dbg !2650
  br i1 %tobool, label %if.then22, label %if.else35, !dbg !2651

if.then22:                                        ; preds = %if.end7
  %arcs23 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2652
  %16 = load %struct.arc*, %struct.arc** %arcs23, align 8, !dbg !2652
  %tobool24 = icmp ne %struct.arc* %16, null, !dbg !2655
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !2656

if.then25:                                        ; preds = %if.then22
  %dummy_arcs26 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !2657
  %17 = load %struct.arc*, %struct.arc** %dummy_arcs26, align 8, !dbg !2657
  %tobool27 = icmp ne %struct.arc* %17, null, !dbg !2660
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !2661

if.then28:                                        ; preds = %if.then25
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !2662
  %call30 = call i64 @getfree(%struct.network* %net___0), !dbg !2666
  br label %return, !dbg !2668

if.end31:                                         ; preds = %if.then25
  br label %if.end34, !dbg !2669

if.else:                                          ; preds = %if.then22
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !2670
  %call33 = call i64 @getfree(%struct.network* %net___0), !dbg !2674
  br label %return, !dbg !2676

if.end34:                                         ; preds = %if.end31
  br label %if.end38, !dbg !2677

if.else35:                                        ; preds = %if.end7
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !2678
  %call37 = call i64 @getfree(%struct.network* %net___0), !dbg !2682
  br label %return, !dbg !2684

if.end38:                                         ; preds = %if.end34
  %nodes39 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !2685
  %18 = load %struct.node*, %struct.node** %nodes39, align 8, !dbg !2685
  %n40 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2686
  %19 = load i64, i64* %n40, align 8, !dbg !2686
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %18, i64 %19, !dbg !2687
  %add.ptr41 = getelementptr inbounds %struct.node, %struct.node* %add.ptr, i64 1, !dbg !2688
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !2689
  store %struct.node* %add.ptr41, %struct.node** %stop_nodes, align 8, !dbg !2690
  %arcs42 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2691
  %20 = load %struct.arc*, %struct.arc** %arcs42, align 8, !dbg !2691
  %m43 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2692
  %21 = load i64, i64* %m43, align 8, !dbg !2692
  %add.ptr44 = getelementptr inbounds %struct.arc, %struct.arc* %20, i64 %21, !dbg !2693
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2694
  store %struct.arc* %add.ptr44, %struct.arc** %stop_arcs, align 8, !dbg !2695
  %dummy_arcs45 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !2696
  %22 = load %struct.arc*, %struct.arc** %dummy_arcs45, align 8, !dbg !2696
  %n46 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2697
  %23 = load i64, i64* %n46, align 8, !dbg !2697
  %add.ptr47 = getelementptr inbounds %struct.arc, %struct.arc* %22, i64 %23, !dbg !2698
  %stop_dummy = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 24, !dbg !2699
  store %struct.arc* %add.ptr47, %struct.arc** %stop_dummy, align 8, !dbg !2700
  %nodes48 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !2701
  %24 = load %struct.node*, %struct.node** %nodes48, align 8, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.node* %24, metadata !2702, metadata !DIExpression()), !dbg !2545
  %arcs49 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2703
  %25 = load %struct.arc*, %struct.arc** %arcs49, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.arc* %25, metadata !2704, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 1, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while.body, !dbg !2706

while.body:                                       ; preds = %if.end125, %if.end38
  %arc.0 = phi %struct.arc* [ %25, %if.end38 ], [ %incdec.ptr138, %if.end125 ], !dbg !2709
  %i.0 = phi i64 [ 1, %if.end38 ], [ %inc, %if.end125 ], !dbg !2709
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2705, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !2704, metadata !DIExpression()), !dbg !2545
  br label %while_continue___3, !dbg !2710

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !2710

while_continue:                                   ; preds = %while_continue___3
  %n_trips50 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2711
  %26 = load i64, i64* %n_trips50, align 8, !dbg !2711
  %cmp51 = icmp sle i64 %i.0, %26, !dbg !2714
  br i1 %cmp51, label %if.end54, label %if.then53, !dbg !2715

if.then53:                                        ; preds = %while_continue
  br label %while_break, !dbg !2716

if.end54:                                         ; preds = %while_continue
  %arraydecay55 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2718
  %call56 = call i8* @fgets(i8* %arraydecay55, i32 200, %struct._IO_FILE* %call), !dbg !2721
  %arraydecay57 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2722
  %call58 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64* %t, i64* %h), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %call58, metadata !2725, metadata !DIExpression()), !dbg !2545
  %cmp59 = icmp ne i32 %call58, 2, !dbg !2726
  br i1 %cmp59, label %if.then61, label %if.else62, !dbg !2728

if.then61:                                        ; preds = %if.end54
  br label %return, !dbg !2729

if.else62:                                        ; preds = %if.end54
  %27 = load i64, i64* %t, align 8, !dbg !2731
  %28 = load i64, i64* %h, align 8, !dbg !2733
  %cmp63 = icmp sgt i64 %27, %28, !dbg !2734
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !2735

if.then65:                                        ; preds = %if.else62
  br label %return, !dbg !2736

if.end66:                                         ; preds = %if.else62
  br label %if.end67

if.end67:                                         ; preds = %if.end66
  %sub = sub nsw i64 0, %i.0, !dbg !2738
  %add.ptr68 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %i.0, !dbg !2739
  %number = getelementptr inbounds %struct.node, %struct.node* %add.ptr68, i32 0, i32 0, !dbg !2740
  store i64 %sub, i64* %number, align 8, !dbg !2741
  %add.ptr69 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %i.0, !dbg !2742
  %flow = getelementptr inbounds %struct.node, %struct.node* %add.ptr69, i32 0, i32 12, !dbg !2743
  store i64 -1, i64* %flow, align 8, !dbg !2744
  %n_trips70 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2745
  %29 = load i64, i64* %n_trips70, align 8, !dbg !2745
  %add71 = add nsw i64 %i.0, %29, !dbg !2746
  %add.ptr72 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add71, !dbg !2747
  %number73 = getelementptr inbounds %struct.node, %struct.node* %add.ptr72, i32 0, i32 0, !dbg !2748
  store i64 %i.0, i64* %number73, align 8, !dbg !2749
  %n_trips74 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2750
  %30 = load i64, i64* %n_trips74, align 8, !dbg !2750
  %add75 = add nsw i64 %i.0, %30, !dbg !2751
  %add.ptr76 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add75, !dbg !2752
  %flow77 = getelementptr inbounds %struct.node, %struct.node* %add.ptr76, i32 0, i32 12, !dbg !2753
  store i64 1, i64* %flow77, align 8, !dbg !2754
  %31 = load i64, i64* %t, align 8, !dbg !2755
  %add.ptr78 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %i.0, !dbg !2756
  %time = getelementptr inbounds %struct.node, %struct.node* %add.ptr78, i32 0, i32 14, !dbg !2757
  store i64 %31, i64* %time, align 8, !dbg !2758
  %32 = load i64, i64* %h, align 8, !dbg !2759
  %n_trips79 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2760
  %33 = load i64, i64* %n_trips79, align 8, !dbg !2760
  %add80 = add nsw i64 %i.0, %33, !dbg !2761
  %add.ptr81 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add80, !dbg !2762
  %time82 = getelementptr inbounds %struct.node, %struct.node* %add.ptr81, i32 0, i32 14, !dbg !2763
  store i64 %32, i64* %time82, align 8, !dbg !2764
  %n83 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2765
  %34 = load i64, i64* %n83, align 8, !dbg !2765
  %add.ptr84 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %34, !dbg !2766
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2767
  store %struct.node* %add.ptr84, %struct.node** %tail, align 8, !dbg !2768
  %add.ptr85 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %i.0, !dbg !2769
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !2770
  store %struct.node* %add.ptr85, %struct.node** %head, align 8, !dbg !2771
  %bigM = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2772
  %35 = load i64, i64* %bigM, align 8, !dbg !2772
  %add86 = add nsw i64 %35, 15, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %add86, metadata !2774, metadata !DIExpression()), !dbg !2545
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 4, !dbg !2775
  store i64 %add86, i64* %cost, align 8, !dbg !2776
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 5, !dbg !2775
  store i64 %add86, i64* %org_cost, align 8, !dbg !2777
  %tail87 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2778
  %36 = load %struct.node*, %struct.node** %tail87, align 8, !dbg !2778
  %firstout = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 9, !dbg !2779
  %37 = load %struct.arc*, %struct.arc** %firstout, align 8, !dbg !2779
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 2, !dbg !2780
  store %struct.arc* %37, %struct.arc** %nextout, align 8, !dbg !2781
  %tail88 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 0, !dbg !2782
  %38 = load %struct.node*, %struct.node** %tail88, align 8, !dbg !2782
  %firstout89 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 9, !dbg !2783
  store %struct.arc* %arc.0, %struct.arc** %firstout89, align 8, !dbg !2784
  %head90 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !2785
  %39 = load %struct.node*, %struct.node** %head90, align 8, !dbg !2785
  %firstin = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 10, !dbg !2786
  %40 = load %struct.arc*, %struct.arc** %firstin, align 8, !dbg !2786
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 3, !dbg !2787
  store %struct.arc* %40, %struct.arc** %nextin, align 8, !dbg !2788
  %head91 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 1, !dbg !2789
  %41 = load %struct.node*, %struct.node** %head91, align 8, !dbg !2789
  %firstin92 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 10, !dbg !2790
  store %struct.arc* %arc.0, %struct.arc** %firstin92, align 8, !dbg !2791
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !2704, metadata !DIExpression()), !dbg !2545
  %n_trips93 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2793
  %42 = load i64, i64* %n_trips93, align 8, !dbg !2793
  %add94 = add nsw i64 %i.0, %42, !dbg !2794
  %add.ptr95 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add94, !dbg !2795
  %tail96 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 0, !dbg !2796
  store %struct.node* %add.ptr95, %struct.node** %tail96, align 8, !dbg !2797
  %n97 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 2, !dbg !2798
  %43 = load i64, i64* %n97, align 8, !dbg !2798
  %add.ptr98 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %43, !dbg !2799
  %head99 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 1, !dbg !2800
  store %struct.node* %add.ptr98, %struct.node** %head99, align 8, !dbg !2801
  call void @llvm.dbg.value(metadata i64 15, metadata !2802, metadata !DIExpression()), !dbg !2545
  %cost100 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 4, !dbg !2803
  store i64 15, i64* %cost100, align 8, !dbg !2804
  %org_cost101 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 5, !dbg !2803
  store i64 15, i64* %org_cost101, align 8, !dbg !2805
  %tail102 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 0, !dbg !2806
  %44 = load %struct.node*, %struct.node** %tail102, align 8, !dbg !2806
  %firstout103 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 9, !dbg !2807
  %45 = load %struct.arc*, %struct.arc** %firstout103, align 8, !dbg !2807
  %nextout104 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 2, !dbg !2808
  store %struct.arc* %45, %struct.arc** %nextout104, align 8, !dbg !2809
  %tail105 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 0, !dbg !2810
  %46 = load %struct.node*, %struct.node** %tail105, align 8, !dbg !2810
  %firstout106 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 9, !dbg !2811
  store %struct.arc* %incdec.ptr, %struct.arc** %firstout106, align 8, !dbg !2812
  %head107 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 1, !dbg !2813
  %47 = load %struct.node*, %struct.node** %head107, align 8, !dbg !2813
  %firstin108 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10, !dbg !2814
  %48 = load %struct.arc*, %struct.arc** %firstin108, align 8, !dbg !2814
  %nextin109 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 3, !dbg !2815
  store %struct.arc* %48, %struct.arc** %nextin109, align 8, !dbg !2816
  %head110 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 0, i32 1, !dbg !2817
  %49 = load %struct.node*, %struct.node** %head110, align 8, !dbg !2817
  %firstin111 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 10, !dbg !2818
  store %struct.arc* %incdec.ptr, %struct.arc** %firstin111, align 8, !dbg !2819
  %incdec.ptr112 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr, i32 1, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr112, metadata !2704, metadata !DIExpression()), !dbg !2545
  %add.ptr113 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %i.0, !dbg !2821
  %tail114 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 0, !dbg !2822
  store %struct.node* %add.ptr113, %struct.node** %tail114, align 8, !dbg !2823
  %n_trips115 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2824
  %50 = load i64, i64* %n_trips115, align 8, !dbg !2824
  %add116 = add nsw i64 %i.0, %50, !dbg !2825
  %add.ptr117 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add116, !dbg !2826
  %head118 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 1, !dbg !2827
  store %struct.node* %add.ptr117, %struct.node** %head118, align 8, !dbg !2828
  %bigM119 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2829
  %51 = load i64, i64* %bigM119, align 8, !dbg !2829
  %cmp120 = icmp sgt i64 %51, 10000000, !dbg !2831
  br i1 %cmp120, label %if.then122, label %if.else124, !dbg !2832

if.then122:                                       ; preds = %if.end67
  %bigM123 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2833
  %52 = load i64, i64* %bigM123, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %52, metadata !2835, metadata !DIExpression()), !dbg !2545
  br label %if.end125, !dbg !2836

if.else124:                                       ; preds = %if.end67
  call void @llvm.dbg.value(metadata i64 10000000, metadata !2835, metadata !DIExpression()), !dbg !2545
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.then122
  %tmp___7.0 = phi i64 [ %52, %if.then122 ], [ 10000000, %if.else124 ], !dbg !2837
  call void @llvm.dbg.value(metadata i64 %tmp___7.0, metadata !2835, metadata !DIExpression()), !dbg !2545
  %mul = mul nsw i64 2, %tmp___7.0, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2839, metadata !DIExpression()), !dbg !2545
  %cost126 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 4, !dbg !2840
  store i64 %mul, i64* %cost126, align 8, !dbg !2841
  %org_cost127 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 5, !dbg !2840
  store i64 %mul, i64* %org_cost127, align 8, !dbg !2842
  %tail128 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 0, !dbg !2843
  %53 = load %struct.node*, %struct.node** %tail128, align 8, !dbg !2843
  %firstout129 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 9, !dbg !2844
  %54 = load %struct.arc*, %struct.arc** %firstout129, align 8, !dbg !2844
  %nextout130 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 2, !dbg !2845
  store %struct.arc* %54, %struct.arc** %nextout130, align 8, !dbg !2846
  %tail131 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 0, !dbg !2847
  %55 = load %struct.node*, %struct.node** %tail131, align 8, !dbg !2847
  %firstout132 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 9, !dbg !2848
  store %struct.arc* %incdec.ptr112, %struct.arc** %firstout132, align 8, !dbg !2849
  %head133 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 1, !dbg !2850
  %56 = load %struct.node*, %struct.node** %head133, align 8, !dbg !2850
  %firstin134 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 10, !dbg !2851
  %57 = load %struct.arc*, %struct.arc** %firstin134, align 8, !dbg !2851
  %nextin135 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 3, !dbg !2852
  store %struct.arc* %57, %struct.arc** %nextin135, align 8, !dbg !2853
  %head136 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 0, i32 1, !dbg !2854
  %58 = load %struct.node*, %struct.node** %head136, align 8, !dbg !2854
  %firstin137 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 10, !dbg !2855
  store %struct.arc* %incdec.ptr112, %struct.arc** %firstin137, align 8, !dbg !2856
  %incdec.ptr138 = getelementptr inbounds %struct.arc, %struct.arc* %incdec.ptr112, i32 1, !dbg !2857
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr138, metadata !2704, metadata !DIExpression()), !dbg !2545
  %inc = add nsw i64 %i.0, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while.body, !dbg !2706, !llvm.loop !2859

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !2861

while_break:                                      ; preds = %while_break___3, %if.then53
  %n_trips139 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2862
  %59 = load i64, i64* %n_trips139, align 8, !dbg !2862
  %add140 = add nsw i64 %59, 1, !dbg !2864
  %cmp141 = icmp ne i64 %i.0, %add140, !dbg !2865
  br i1 %cmp141, label %if.then143, label %if.end144, !dbg !2866

if.then143:                                       ; preds = %while_break
  br label %return, !dbg !2867

if.end144:                                        ; preds = %while_break
  call void @llvm.dbg.value(metadata i64 0, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while.body145, !dbg !2869

while.body145:                                    ; preds = %if.end158, %if.end144
  %arc.1 = phi %struct.arc* [ %arc.0, %if.end144 ], [ %incdec.ptr178, %if.end158 ], !dbg !2709
  %i.1 = phi i64 [ 0, %if.end144 ], [ %inc177, %if.end158 ], !dbg !2709
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2705, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.arc* %arc.1, metadata !2704, metadata !DIExpression()), !dbg !2545
  br label %while_continue___4, !dbg !2872

while_continue___4:                               ; preds = %while.body145
  br label %while_continue___0, !dbg !2872

while_continue___0:                               ; preds = %while_continue___4
  %m_org146 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 6, !dbg !2873
  %60 = load i64, i64* %m_org146, align 8, !dbg !2873
  %cmp147 = icmp slt i64 %i.1, %60, !dbg !2876
  br i1 %cmp147, label %if.end150, label %if.then149, !dbg !2877

if.then149:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !2878

if.end150:                                        ; preds = %while_continue___0
  %arraydecay151 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2880
  %call152 = call i8* @fgets(i8* %arraydecay151, i32 200, %struct._IO_FILE* %call), !dbg !2883
  %arraydecay153 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0, !dbg !2884
  %call154 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64* %t, i64* %h, i64* %c), !dbg !2886
  call void @llvm.dbg.value(metadata i32 %call154, metadata !2887, metadata !DIExpression()), !dbg !2545
  %cmp155 = icmp ne i32 %call154, 3, !dbg !2888
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !2890

if.then157:                                       ; preds = %if.end150
  br label %return, !dbg !2891

if.end158:                                        ; preds = %if.end150
  %61 = load i64, i64* %t, align 8, !dbg !2893
  %n_trips159 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2894
  %62 = load i64, i64* %n_trips159, align 8, !dbg !2894
  %add160 = add nsw i64 %61, %62, !dbg !2895
  %add.ptr161 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %add160, !dbg !2896
  %tail162 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !2897
  store %struct.node* %add.ptr161, %struct.node** %tail162, align 8, !dbg !2898
  %63 = load i64, i64* %h, align 8, !dbg !2899
  %add.ptr163 = getelementptr inbounds %struct.node, %struct.node* %24, i64 %63, !dbg !2900
  %head164 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !2901
  store %struct.node* %add.ptr163, %struct.node** %head164, align 8, !dbg !2902
  %64 = load i64, i64* %c, align 8, !dbg !2903
  %org_cost165 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 5, !dbg !2904
  store i64 %64, i64* %org_cost165, align 8, !dbg !2905
  %65 = load i64, i64* %c, align 8, !dbg !2906
  %cost166 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 4, !dbg !2907
  store i64 %65, i64* %cost166, align 8, !dbg !2908
  %tail167 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !2909
  %66 = load %struct.node*, %struct.node** %tail167, align 8, !dbg !2909
  %firstout168 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 9, !dbg !2910
  %67 = load %struct.arc*, %struct.arc** %firstout168, align 8, !dbg !2910
  %nextout169 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 2, !dbg !2911
  store %struct.arc* %67, %struct.arc** %nextout169, align 8, !dbg !2912
  %tail170 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !2913
  %68 = load %struct.node*, %struct.node** %tail170, align 8, !dbg !2913
  %firstout171 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 9, !dbg !2914
  store %struct.arc* %arc.1, %struct.arc** %firstout171, align 8, !dbg !2915
  %head172 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !2916
  %69 = load %struct.node*, %struct.node** %head172, align 8, !dbg !2916
  %firstin173 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 10, !dbg !2917
  %70 = load %struct.arc*, %struct.arc** %firstin173, align 8, !dbg !2917
  %nextin174 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 3, !dbg !2918
  store %struct.arc* %70, %struct.arc** %nextin174, align 8, !dbg !2919
  %head175 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !2920
  %71 = load %struct.node*, %struct.node** %head175, align 8, !dbg !2920
  %firstin176 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 10, !dbg !2921
  store %struct.arc* %arc.1, %struct.arc** %firstin176, align 8, !dbg !2922
  %inc177 = add nsw i64 %i.1, 1, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %inc177, metadata !2705, metadata !DIExpression()), !dbg !2545
  %incdec.ptr178 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 1, !dbg !2877
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr178, metadata !2704, metadata !DIExpression()), !dbg !2545
  br label %while.body145, !dbg !2869, !llvm.loop !2924

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !2926

while_break___0:                                  ; preds = %while_break___4, %if.then149
  %stop_arcs179 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2927
  %72 = load %struct.arc*, %struct.arc** %stop_arcs179, align 8, !dbg !2927
  %73 = ptrtoint %struct.arc* %72 to i64, !dbg !2929
  %74 = ptrtoint %struct.arc* %arc.1 to i64, !dbg !2930
  %cmp180 = icmp ne i64 %73, %74, !dbg !2931
  br i1 %cmp180, label %if.then182, label %if.end197, !dbg !2932

if.then182:                                       ; preds = %while_break___0
  %stop_arcs183 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2933
  store %struct.arc* %arc.1, %struct.arc** %stop_arcs183, align 8, !dbg !2935
  %arcs184 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2936
  %75 = load %struct.arc*, %struct.arc** %arcs184, align 8, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.arc* %75, metadata !2704, metadata !DIExpression()), !dbg !2545
  %m185 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2937
  store i64 0, i64* %m185, align 8, !dbg !2938
  br label %while.body186, !dbg !2939

while.body186:                                    ; preds = %if.end191, %if.then182
  %arc.2 = phi %struct.arc* [ %75, %if.then182 ], [ %incdec.ptr194, %if.end191 ], !dbg !2942
  call void @llvm.dbg.value(metadata %struct.arc* %arc.2, metadata !2704, metadata !DIExpression()), !dbg !2545
  br label %while_continue___5, !dbg !2943

while_continue___5:                               ; preds = %while.body186
  br label %while_continue___1, !dbg !2943

while_continue___1:                               ; preds = %while_continue___5
  %76 = ptrtoint %struct.arc* %arc.2 to i64, !dbg !2944
  %stop_arcs187 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !2947
  %77 = load %struct.arc*, %struct.arc** %stop_arcs187, align 8, !dbg !2947
  %78 = ptrtoint %struct.arc* %77 to i64, !dbg !2948
  %cmp188 = icmp ult i64 %76, %78, !dbg !2949
  br i1 %cmp188, label %if.end191, label %if.then190, !dbg !2950

if.then190:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !2951

if.end191:                                        ; preds = %while_continue___1
  %m192 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2953
  %79 = load i64, i64* %m192, align 8, !dbg !2954
  %inc193 = add nsw i64 %79, 1, !dbg !2954
  store i64 %inc193, i64* %m192, align 8, !dbg !2954
  %incdec.ptr194 = getelementptr inbounds %struct.arc, %struct.arc* %arc.2, i32 1, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr194, metadata !2704, metadata !DIExpression()), !dbg !2545
  br label %while.body186, !dbg !2939, !llvm.loop !2955

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !2957

while_break___1:                                  ; preds = %while_break___5, %if.then190
  %m195 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 5, !dbg !2958
  %80 = load i64, i64* %m195, align 8, !dbg !2958
  %m_org196 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 6, !dbg !2959
  store i64 %80, i64* %m_org196, align 8, !dbg !2960
  br label %if.end197, !dbg !2961

if.end197:                                        ; preds = %while_break___1, %while_break___0
  %call198 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !2962
  %clustfile = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 1, !dbg !2965
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %clustfile, i64 0, i64 0, !dbg !2966
  store i8 0, i8* %arrayidx, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata i64 1, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while.body199, !dbg !2968

while.body199:                                    ; preds = %if.end224, %if.end197
  %i.2 = phi i64 [ 1, %if.end197 ], [ %inc231, %if.end224 ], !dbg !2709
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while_continue___6, !dbg !2971

while_continue___6:                               ; preds = %while.body199
  br label %while_continue___2, !dbg !2971

while_continue___2:                               ; preds = %while_continue___6
  %n_trips200 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 3, !dbg !2972
  %81 = load i64, i64* %n_trips200, align 8, !dbg !2972
  %cmp201 = icmp sle i64 %i.2, %81, !dbg !2975
  br i1 %cmp201, label %if.end204, label %if.then203, !dbg !2976

if.then203:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !2977

if.end204:                                        ; preds = %while_continue___2
  %bigM205 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2979
  %82 = load i64, i64* %bigM205, align 8, !dbg !2979
  %cmp206 = icmp sgt i64 %82, 10000000, !dbg !2981
  br i1 %cmp206, label %if.then208, label %if.else210, !dbg !2982

if.then208:                                       ; preds = %if.end204
  %bigM209 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2983
  %83 = load i64, i64* %bigM209, align 8, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %83, metadata !2985, metadata !DIExpression()), !dbg !2545
  br label %if.end211, !dbg !2986

if.else210:                                       ; preds = %if.end204
  call void @llvm.dbg.value(metadata i64 10000000, metadata !2985, metadata !DIExpression()), !dbg !2545
  br label %if.end211

if.end211:                                        ; preds = %if.else210, %if.then208
  %tmp___9.0 = phi i64 [ %83, %if.then208 ], [ 10000000, %if.else210 ], !dbg !2987
  call void @llvm.dbg.value(metadata i64 %tmp___9.0, metadata !2985, metadata !DIExpression()), !dbg !2545
  %mul212 = mul nsw i64 -2, %tmp___9.0, !dbg !2988
  %arcs213 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !2989
  %84 = load %struct.arc*, %struct.arc** %arcs213, align 8, !dbg !2989
  %mul214 = mul nsw i64 3, %i.2, !dbg !2990
  %sub215 = sub nsw i64 %mul214, 1, !dbg !2991
  %add.ptr216 = getelementptr inbounds %struct.arc, %struct.arc* %84, i64 %sub215, !dbg !2992
  %cost217 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr216, i32 0, i32 4, !dbg !2993
  store i64 %mul212, i64* %cost217, align 8, !dbg !2994
  %bigM218 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2995
  %85 = load i64, i64* %bigM218, align 8, !dbg !2995
  %cmp219 = icmp sgt i64 %85, 10000000, !dbg !2997
  br i1 %cmp219, label %if.then221, label %if.else223, !dbg !2998

if.then221:                                       ; preds = %if.end211
  %bigM222 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !2999
  %86 = load i64, i64* %bigM222, align 8, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %86, metadata !3001, metadata !DIExpression()), !dbg !2545
  br label %if.end224, !dbg !3002

if.else223:                                       ; preds = %if.end211
  call void @llvm.dbg.value(metadata i64 10000000, metadata !3001, metadata !DIExpression()), !dbg !2545
  br label %if.end224

if.end224:                                        ; preds = %if.else223, %if.then221
  %tmp___10.0 = phi i64 [ %86, %if.then221 ], [ 10000000, %if.else223 ], !dbg !3003
  call void @llvm.dbg.value(metadata i64 %tmp___10.0, metadata !3001, metadata !DIExpression()), !dbg !2545
  %mul225 = mul nsw i64 -2, %tmp___10.0, !dbg !3004
  %arcs226 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3005
  %87 = load %struct.arc*, %struct.arc** %arcs226, align 8, !dbg !3005
  %mul227 = mul nsw i64 3, %i.2, !dbg !3006
  %sub228 = sub nsw i64 %mul227, 1, !dbg !3007
  %add.ptr229 = getelementptr inbounds %struct.arc, %struct.arc* %87, i64 %sub228, !dbg !3008
  %org_cost230 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr229, i32 0, i32 5, !dbg !3009
  store i64 %mul225, i64* %org_cost230, align 8, !dbg !3010
  %inc231 = add nsw i64 %i.2, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %inc231, metadata !2705, metadata !DIExpression()), !dbg !2545
  br label %while.body199, !dbg !2968, !llvm.loop !3012

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !3014

while_break___2:                                  ; preds = %while_break___6, %if.then203
  br label %return, !dbg !3015

return:                                           ; preds = %while_break___2, %if.then157, %if.then143, %if.then65, %if.then61, %if.else35, %if.else, %if.then28, %if.then6, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.then6 ], [ -1, %if.then61 ], [ -1, %if.then65 ], [ -1, %if.then143 ], [ -1, %if.then157 ], [ 0, %while_break___2 ], [ -1, %if.then28 ], [ -1, %if.else ], [ -1, %if.else35 ], !dbg !2709
  ret i64 %retval.0, !dbg !3016
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @sscanf(i8*, i8*, ...) #2

declare noalias i8* @calloc(i32, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @getfree(%struct.network* %net___0) #0 !dbg !3017 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !3018, metadata !DIExpression()), !dbg !3019
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !3020
  %0 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !3020
  %tobool = icmp ne %struct.node* %0, null, !dbg !3023
  br i1 %tobool, label %if.then, label %if.end, !dbg !3024

if.then:                                          ; preds = %entry
  %nodes1 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !3025
  %1 = load %struct.node*, %struct.node** %nodes1, align 8, !dbg !3025
  %2 = bitcast %struct.node* %1 to i8*, !dbg !3029
  call void @free(i8* %2), !dbg !3030
  br label %if.end, !dbg !3031

if.end:                                           ; preds = %if.then, %entry
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3032
  %3 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !3032
  %tobool2 = icmp ne %struct.arc* %3, null, !dbg !3034
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3035

if.then3:                                         ; preds = %if.end
  %arcs4 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3036
  %4 = load %struct.arc*, %struct.arc** %arcs4, align 8, !dbg !3036
  %5 = bitcast %struct.arc* %4 to i8*, !dbg !3040
  call void @free(i8* %5), !dbg !3041
  br label %if.end5, !dbg !3042

if.end5:                                          ; preds = %if.then3, %if.end
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !3043
  %6 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8, !dbg !3043
  %tobool6 = icmp ne %struct.arc* %6, null, !dbg !3045
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3046

if.then7:                                         ; preds = %if.end5
  %dummy_arcs8 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !3047
  %7 = load %struct.arc*, %struct.arc** %dummy_arcs8, align 8, !dbg !3047
  %8 = bitcast %struct.arc* %7 to i8*, !dbg !3051
  call void @free(i8* %8), !dbg !3052
  br label %if.end9, !dbg !3053

if.end9:                                          ; preds = %if.then7, %if.end5
  call void @llvm.dbg.value(metadata %struct.node* null, metadata !3054, metadata !DIExpression()), !dbg !3019
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !3055
  store %struct.node* null, %struct.node** %stop_nodes, align 8, !dbg !3056
  %nodes10 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !3055
  store %struct.node* null, %struct.node** %nodes10, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.arc* null, metadata !3058, metadata !DIExpression()), !dbg !3019
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !3059
  store %struct.arc* null, %struct.arc** %stop_arcs, align 8, !dbg !3060
  %arcs11 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3059
  store %struct.arc* null, %struct.arc** %arcs11, align 8, !dbg !3061
  call void @llvm.dbg.value(metadata %struct.arc* null, metadata !3062, metadata !DIExpression()), !dbg !3019
  %stop_dummy = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 24, !dbg !3063
  store %struct.arc* null, %struct.arc** %stop_dummy, align 8, !dbg !3064
  %dummy_arcs12 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 23, !dbg !3063
  store %struct.arc* null, %struct.arc** %dummy_arcs12, align 8, !dbg !3064
  ret i64 0, !dbg !3065
}

; Function Attrs: noinline nounwind ssp uwtable
define double @flow_cost(%struct.network* %net___0) #0 !dbg !3066 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 0, metadata !3072, metadata !DIExpression()), !dbg !3070
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !3073
  %0 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !3073
  %1 = bitcast %struct.arc* %0 to i8*, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %1, metadata !3076, metadata !DIExpression()), !dbg !3070
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3077
  %2 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !3077
  call void @llvm.dbg.value(metadata %struct.arc* %2, metadata !3078, metadata !DIExpression()), !dbg !3070
  br label %while.body, !dbg !3079

while.body:                                       ; preds = %if.end4, %entry
  %arc.0 = phi %struct.arc* [ %2, %entry ], [ %incdec.ptr, %if.end4 ], !dbg !3082
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !3078, metadata !DIExpression()), !dbg !3070
  br label %while_continue___2, !dbg !3083

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !3083

while_continue:                                   ; preds = %while_continue___2
  %3 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !3084
  %4 = bitcast i8* %1 to %struct.arc*, !dbg !3087
  %5 = ptrtoint %struct.arc* %4 to i64, !dbg !3088
  %cmp = icmp ne i64 %3, %5, !dbg !3089
  br i1 %cmp, label %if.end, label %if.then, !dbg !3090

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3091

if.end:                                           ; preds = %while_continue
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !3093
  %6 = load i64, i64* %ident, align 8, !dbg !3093
  %cmp1 = icmp eq i64 %6, 2, !dbg !3095
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3096

if.then2:                                         ; preds = %if.end
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 6, !dbg !3097
  store i64 1, i64* %flow, align 8, !dbg !3099
  br label %if.end4, !dbg !3100

if.else:                                          ; preds = %if.end
  %flow3 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 6, !dbg !3101
  store i64 0, i64* %flow3, align 8, !dbg !3103
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !3090
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !3078, metadata !DIExpression()), !dbg !3070
  br label %while.body, !dbg !3079, !llvm.loop !3104

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !3106

while_break:                                      ; preds = %while_break___2, %if.then
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !3107
  %7 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !3107
  %8 = bitcast %struct.node* %7 to i8*, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %8, metadata !3076, metadata !DIExpression()), !dbg !3070
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !3109
  %9 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.node* %9, metadata !3110, metadata !DIExpression()), !dbg !3070
  %incdec.ptr5 = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, !dbg !3111
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr5, metadata !3110, metadata !DIExpression()), !dbg !3070
  br label %while.body6, !dbg !3112

while.body6:                                      ; preds = %if.end9, %while_break
  %node.0 = phi %struct.node* [ %incdec.ptr5, %while_break ], [ %incdec.ptr12, %if.end9 ], !dbg !3082
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !3110, metadata !DIExpression()), !dbg !3070
  br label %while_continue___3, !dbg !3115

while_continue___3:                               ; preds = %while.body6
  br label %while_continue___0, !dbg !3115

while_continue___0:                               ; preds = %while_continue___3
  %10 = ptrtoint %struct.node* %node.0 to i64, !dbg !3116
  %11 = bitcast i8* %8 to %struct.node*, !dbg !3119
  %12 = ptrtoint %struct.node* %11 to i64, !dbg !3120
  %cmp7 = icmp ne i64 %10, %12, !dbg !3121
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !3122

if.then8:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !3123

if.end9:                                          ; preds = %while_continue___0
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 12, !dbg !3125
  %13 = load i64, i64* %flow10, align 8, !dbg !3125
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !3126
  %14 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !3126
  %flow11 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 6, !dbg !3127
  store i64 %13, i64* %flow11, align 8, !dbg !3128
  %incdec.ptr12 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !3129
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr12, metadata !3110, metadata !DIExpression()), !dbg !3070
  br label %while.body6, !dbg !3112, !llvm.loop !3130

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !3132

while_break___0:                                  ; preds = %while_break___3, %if.then8
  %stop_arcs13 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !3133
  %15 = load %struct.arc*, %struct.arc** %stop_arcs13, align 8, !dbg !3133
  %16 = bitcast %struct.arc* %15 to i8*, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %16, metadata !3076, metadata !DIExpression()), !dbg !3070
  %arcs14 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3135
  %17 = load %struct.arc*, %struct.arc** %arcs14, align 8, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.arc* %17, metadata !3078, metadata !DIExpression()), !dbg !3070
  br label %while.body15, !dbg !3136

while.body15:                                     ; preds = %if.end37, %while_break___0
  %fleet.0 = phi i64 [ 0, %while_break___0 ], [ %fleet.3, %if.end37 ], !dbg !3139
  %arc.1 = phi %struct.arc* [ %17, %while_break___0 ], [ %incdec.ptr38, %if.end37 ], !dbg !3082
  %operational_cost.0 = phi i64 [ 0, %while_break___0 ], [ %operational_cost.3, %if.end37 ], !dbg !3140
  call void @llvm.dbg.value(metadata i64 %operational_cost.0, metadata !3072, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.arc* %arc.1, metadata !3078, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %fleet.0, metadata !3071, metadata !DIExpression()), !dbg !3070
  br label %while_continue___4, !dbg !3141

while_continue___4:                               ; preds = %while.body15
  br label %while_continue___1, !dbg !3141

while_continue___1:                               ; preds = %while_continue___4
  %18 = ptrtoint %struct.arc* %arc.1 to i64, !dbg !3142
  %19 = bitcast i8* %16 to %struct.arc*, !dbg !3145
  %20 = ptrtoint %struct.arc* %19 to i64, !dbg !3146
  %cmp16 = icmp ne i64 %18, %20, !dbg !3147
  br i1 %cmp16, label %if.end18, label %if.then17, !dbg !3148

if.then17:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !3149

if.end18:                                         ; preds = %while_continue___1
  %flow19 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 6, !dbg !3151
  %21 = load i64, i64* %flow19, align 8, !dbg !3151
  %tobool = icmp ne i64 %21, 0, !dbg !3153
  br i1 %tobool, label %if.then20, label %if.end37, !dbg !3154

if.then20:                                        ; preds = %if.end18
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !3155
  %22 = load %struct.node*, %struct.node** %tail, align 8, !dbg !3155
  %number = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0, !dbg !3158
  %23 = load i64, i64* %number, align 8, !dbg !3158
  %cmp21 = icmp slt i64 %23, 0, !dbg !3159
  br i1 %cmp21, label %if.then22, label %if.else27, !dbg !3160

if.then22:                                        ; preds = %if.then20
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !3161
  %24 = load %struct.node*, %struct.node** %head, align 8, !dbg !3161
  %number23 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0, !dbg !3164
  %25 = load i64, i64* %number23, align 8, !dbg !3164
  %cmp24 = icmp sgt i64 %25, 0, !dbg !3165
  br i1 %cmp24, label %if.end26, label %if.then25, !dbg !3166

if.then25:                                        ; preds = %if.then22
  br label %_L, !dbg !3167

if.end26:                                         ; preds = %if.then22
  br label %if.end36, !dbg !3169

if.else27:                                        ; preds = %if.then20
  br label %_L, !dbg !3169

_L:                                               ; preds = %if.else27, %if.then25
  %tail28 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !3170
  %26 = load %struct.node*, %struct.node** %tail28, align 8, !dbg !3170
  %number29 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0, !dbg !3172
  %27 = load i64, i64* %number29, align 8, !dbg !3172
  %tobool30 = icmp ne i64 %27, 0, !dbg !3173
  br i1 %tobool30, label %if.else32, label %if.then31, !dbg !3174

if.then31:                                        ; preds = %_L
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 4, !dbg !3175
  %28 = load i64, i64* %cost, align 8, !dbg !3175
  %bigM = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !3177
  %29 = load i64, i64* %bigM, align 8, !dbg !3177
  %sub = sub nsw i64 %28, %29, !dbg !3178
  %add = add nsw i64 %operational_cost.0, %sub, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %add, metadata !3072, metadata !DIExpression()), !dbg !3070
  %inc = add nsw i64 %fleet.0, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3071, metadata !DIExpression()), !dbg !3070
  br label %if.end35, !dbg !3181

if.else32:                                        ; preds = %_L
  %cost33 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 4, !dbg !3182
  %30 = load i64, i64* %cost33, align 8, !dbg !3182
  %add34 = add nsw i64 %operational_cost.0, %30, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %add34, metadata !3072, metadata !DIExpression()), !dbg !3070
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then31
  %fleet.1 = phi i64 [ %fleet.0, %if.else32 ], [ %inc, %if.then31 ], !dbg !3082
  %operational_cost.1 = phi i64 [ %add34, %if.else32 ], [ %add, %if.then31 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %operational_cost.1, metadata !3072, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %fleet.1, metadata !3071, metadata !DIExpression()), !dbg !3070
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end26
  %fleet.2 = phi i64 [ %fleet.0, %if.end26 ], [ %fleet.1, %if.end35 ], !dbg !3139
  %operational_cost.2 = phi i64 [ %operational_cost.0, %if.end26 ], [ %operational_cost.1, %if.end35 ], !dbg !3082
  call void @llvm.dbg.value(metadata i64 %operational_cost.2, metadata !3072, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %fleet.2, metadata !3071, metadata !DIExpression()), !dbg !3070
  br label %if.end37, !dbg !3186

if.end37:                                         ; preds = %if.end36, %if.end18
  %fleet.3 = phi i64 [ %fleet.2, %if.end36 ], [ %fleet.0, %if.end18 ], !dbg !3139
  %operational_cost.3 = phi i64 [ %operational_cost.2, %if.end36 ], [ %operational_cost.0, %if.end18 ], !dbg !3140
  call void @llvm.dbg.value(metadata i64 %operational_cost.3, metadata !3072, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %fleet.3, metadata !3071, metadata !DIExpression()), !dbg !3070
  %incdec.ptr38 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 1, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr38, metadata !3078, metadata !DIExpression()), !dbg !3070
  br label %while.body15, !dbg !3136, !llvm.loop !3187

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !3189

while_break___1:                                  ; preds = %while_break___4, %if.then17
  %conv = sitofp i64 %fleet.0 to double, !dbg !3190
  %bigM39 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !3191
  %31 = load i64, i64* %bigM39, align 8, !dbg !3191
  %conv40 = sitofp i64 %31 to double, !dbg !3192
  %mul = fmul double %conv, %conv40, !dbg !3193
  %conv41 = sitofp i64 %operational_cost.0 to double, !dbg !3194
  %add42 = fadd double %mul, %conv41, !dbg !3195
  ret double %add42, !dbg !3196
}

; Function Attrs: noinline nounwind ssp uwtable
define double @flow_org_cost(%struct.network* %net___0) #0 !dbg !3197 {
entry:
  call void @llvm.dbg.value(metadata %struct.network* %net___0, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 0, metadata !3201, metadata !DIExpression()), !dbg !3199
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !3202
  %0 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !dbg !3202
  %1 = bitcast %struct.arc* %0 to i8*, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3199
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3206
  %2 = load %struct.arc*, %struct.arc** %arcs, align 8, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.arc* %2, metadata !3207, metadata !DIExpression()), !dbg !3199
  br label %while.body, !dbg !3208

while.body:                                       ; preds = %if.end4, %entry
  %arc.0 = phi %struct.arc* [ %2, %entry ], [ %incdec.ptr, %if.end4 ], !dbg !3211
  call void @llvm.dbg.value(metadata %struct.arc* %arc.0, metadata !3207, metadata !DIExpression()), !dbg !3199
  br label %while_continue___2, !dbg !3212

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !3212

while_continue:                                   ; preds = %while_continue___2
  %3 = ptrtoint %struct.arc* %arc.0 to i64, !dbg !3213
  %4 = bitcast i8* %1 to %struct.arc*, !dbg !3216
  %5 = ptrtoint %struct.arc* %4 to i64, !dbg !3217
  %cmp = icmp ne i64 %3, %5, !dbg !3218
  br i1 %cmp, label %if.end, label %if.then, !dbg !3219

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3220

if.end:                                           ; preds = %while_continue
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 7, !dbg !3222
  %6 = load i64, i64* %ident, align 8, !dbg !3222
  %cmp1 = icmp eq i64 %6, 2, !dbg !3224
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3225

if.then2:                                         ; preds = %if.end
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 6, !dbg !3226
  store i64 1, i64* %flow, align 8, !dbg !3228
  br label %if.end4, !dbg !3229

if.else:                                          ; preds = %if.end
  %flow3 = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 0, i32 6, !dbg !3230
  store i64 0, i64* %flow3, align 8, !dbg !3232
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arc.0, i32 1, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr, metadata !3207, metadata !DIExpression()), !dbg !3199
  br label %while.body, !dbg !3208, !llvm.loop !3233

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !3235

while_break:                                      ; preds = %while_break___2, %if.then
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 20, !dbg !3236
  %7 = load %struct.node*, %struct.node** %stop_nodes, align 8, !dbg !3236
  %8 = bitcast %struct.node* %7 to i8*, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %8, metadata !3205, metadata !DIExpression()), !dbg !3199
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 19, !dbg !3238
  %9 = load %struct.node*, %struct.node** %nodes, align 8, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.node* %9, metadata !3239, metadata !DIExpression()), !dbg !3199
  %incdec.ptr5 = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, !dbg !3240
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr5, metadata !3239, metadata !DIExpression()), !dbg !3199
  br label %while.body6, !dbg !3241

while.body6:                                      ; preds = %if.end9, %while_break
  %node.0 = phi %struct.node* [ %incdec.ptr5, %while_break ], [ %incdec.ptr12, %if.end9 ], !dbg !3211
  call void @llvm.dbg.value(metadata %struct.node* %node.0, metadata !3239, metadata !DIExpression()), !dbg !3199
  br label %while_continue___3, !dbg !3244

while_continue___3:                               ; preds = %while.body6
  br label %while_continue___0, !dbg !3244

while_continue___0:                               ; preds = %while_continue___3
  %10 = ptrtoint %struct.node* %node.0 to i64, !dbg !3245
  %11 = bitcast i8* %8 to %struct.node*, !dbg !3248
  %12 = ptrtoint %struct.node* %11 to i64, !dbg !3249
  %cmp7 = icmp ne i64 %10, %12, !dbg !3250
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !3251

if.then8:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !3252

if.end9:                                          ; preds = %while_continue___0
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 12, !dbg !3254
  %13 = load i64, i64* %flow10, align 8, !dbg !3254
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 0, i32 8, !dbg !3255
  %14 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !dbg !3255
  %flow11 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 6, !dbg !3256
  store i64 %13, i64* %flow11, align 8, !dbg !3257
  %incdec.ptr12 = getelementptr inbounds %struct.node, %struct.node* %node.0, i32 1, !dbg !3258
  call void @llvm.dbg.value(metadata %struct.node* %incdec.ptr12, metadata !3239, metadata !DIExpression()), !dbg !3199
  br label %while.body6, !dbg !3241, !llvm.loop !3259

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !3261

while_break___0:                                  ; preds = %while_break___3, %if.then8
  %stop_arcs13 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 22, !dbg !3262
  %15 = load %struct.arc*, %struct.arc** %stop_arcs13, align 8, !dbg !3262
  %16 = bitcast %struct.arc* %15 to i8*, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %16, metadata !3205, metadata !DIExpression()), !dbg !3199
  %arcs14 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 21, !dbg !3264
  %17 = load %struct.arc*, %struct.arc** %arcs14, align 8, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.arc* %17, metadata !3207, metadata !DIExpression()), !dbg !3199
  br label %while.body15, !dbg !3265

while.body15:                                     ; preds = %if.end37, %while_break___0
  %fleet.0 = phi i64 [ 0, %while_break___0 ], [ %fleet.3, %if.end37 ], !dbg !3268
  %arc.1 = phi %struct.arc* [ %17, %while_break___0 ], [ %incdec.ptr38, %if.end37 ], !dbg !3211
  %operational_cost.0 = phi i64 [ 0, %while_break___0 ], [ %operational_cost.3, %if.end37 ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %operational_cost.0, metadata !3201, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata %struct.arc* %arc.1, metadata !3207, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %fleet.0, metadata !3200, metadata !DIExpression()), !dbg !3199
  br label %while_continue___4, !dbg !3270

while_continue___4:                               ; preds = %while.body15
  br label %while_continue___1, !dbg !3270

while_continue___1:                               ; preds = %while_continue___4
  %18 = ptrtoint %struct.arc* %arc.1 to i64, !dbg !3271
  %19 = bitcast i8* %16 to %struct.arc*, !dbg !3274
  %20 = ptrtoint %struct.arc* %19 to i64, !dbg !3275
  %cmp16 = icmp ne i64 %18, %20, !dbg !3276
  br i1 %cmp16, label %if.end18, label %if.then17, !dbg !3277

if.then17:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !3278

if.end18:                                         ; preds = %while_continue___1
  %flow19 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 6, !dbg !3280
  %21 = load i64, i64* %flow19, align 8, !dbg !3280
  %tobool = icmp ne i64 %21, 0, !dbg !3282
  br i1 %tobool, label %if.then20, label %if.end37, !dbg !3283

if.then20:                                        ; preds = %if.end18
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !3284
  %22 = load %struct.node*, %struct.node** %tail, align 8, !dbg !3284
  %number = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0, !dbg !3287
  %23 = load i64, i64* %number, align 8, !dbg !3287
  %cmp21 = icmp slt i64 %23, 0, !dbg !3288
  br i1 %cmp21, label %if.then22, label %if.else27, !dbg !3289

if.then22:                                        ; preds = %if.then20
  %head = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 1, !dbg !3290
  %24 = load %struct.node*, %struct.node** %head, align 8, !dbg !3290
  %number23 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0, !dbg !3293
  %25 = load i64, i64* %number23, align 8, !dbg !3293
  %cmp24 = icmp sgt i64 %25, 0, !dbg !3294
  br i1 %cmp24, label %if.end26, label %if.then25, !dbg !3295

if.then25:                                        ; preds = %if.then22
  br label %_L, !dbg !3296

if.end26:                                         ; preds = %if.then22
  br label %if.end36, !dbg !3298

if.else27:                                        ; preds = %if.then20
  br label %_L, !dbg !3298

_L:                                               ; preds = %if.else27, %if.then25
  %tail28 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 0, !dbg !3299
  %26 = load %struct.node*, %struct.node** %tail28, align 8, !dbg !3299
  %number29 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0, !dbg !3301
  %27 = load i64, i64* %number29, align 8, !dbg !3301
  %tobool30 = icmp ne i64 %27, 0, !dbg !3302
  br i1 %tobool30, label %if.else32, label %if.then31, !dbg !3303

if.then31:                                        ; preds = %_L
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 5, !dbg !3304
  %28 = load i64, i64* %org_cost, align 8, !dbg !3304
  %bigM = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !3306
  %29 = load i64, i64* %bigM, align 8, !dbg !3306
  %sub = sub nsw i64 %28, %29, !dbg !3307
  %add = add nsw i64 %operational_cost.0, %sub, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %add, metadata !3201, metadata !DIExpression()), !dbg !3199
  %inc = add nsw i64 %fleet.0, 1, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3200, metadata !DIExpression()), !dbg !3199
  br label %if.end35, !dbg !3310

if.else32:                                        ; preds = %_L
  %org_cost33 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 0, i32 5, !dbg !3311
  %30 = load i64, i64* %org_cost33, align 8, !dbg !3311
  %add34 = add nsw i64 %operational_cost.0, %30, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %add34, metadata !3201, metadata !DIExpression()), !dbg !3199
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then31
  %fleet.1 = phi i64 [ %fleet.0, %if.else32 ], [ %inc, %if.then31 ], !dbg !3211
  %operational_cost.1 = phi i64 [ %add34, %if.else32 ], [ %add, %if.then31 ], !dbg !3314
  call void @llvm.dbg.value(metadata i64 %operational_cost.1, metadata !3201, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %fleet.1, metadata !3200, metadata !DIExpression()), !dbg !3199
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end26
  %fleet.2 = phi i64 [ %fleet.0, %if.end26 ], [ %fleet.1, %if.end35 ], !dbg !3268
  %operational_cost.2 = phi i64 [ %operational_cost.0, %if.end26 ], [ %operational_cost.1, %if.end35 ], !dbg !3211
  call void @llvm.dbg.value(metadata i64 %operational_cost.2, metadata !3201, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %fleet.2, metadata !3200, metadata !DIExpression()), !dbg !3199
  br label %if.end37, !dbg !3315

if.end37:                                         ; preds = %if.end36, %if.end18
  %fleet.3 = phi i64 [ %fleet.2, %if.end36 ], [ %fleet.0, %if.end18 ], !dbg !3268
  %operational_cost.3 = phi i64 [ %operational_cost.2, %if.end36 ], [ %operational_cost.0, %if.end18 ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %operational_cost.3, metadata !3201, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %fleet.3, metadata !3200, metadata !DIExpression()), !dbg !3199
  %incdec.ptr38 = getelementptr inbounds %struct.arc, %struct.arc* %arc.1, i32 1, !dbg !3277
  call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr38, metadata !3207, metadata !DIExpression()), !dbg !3199
  br label %while.body15, !dbg !3265, !llvm.loop !3316

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !3318

while_break___1:                                  ; preds = %while_break___4, %if.then17
  %conv = sitofp i64 %fleet.0 to double, !dbg !3319
  %bigM39 = getelementptr inbounds %struct.network, %struct.network* %net___0, i32 0, i32 16, !dbg !3320
  %31 = load i64, i64* %bigM39, align 8, !dbg !3320
  %conv40 = sitofp i64 %31 to double, !dbg !3321
  %mul = fmul double %conv, %conv40, !dbg !3322
  %conv41 = sitofp i64 %operational_cost.0 to double, !dbg !3323
  %add42 = fadd double %mul, %conv41, !dbg !3324
  ret double %add42, !dbg !3325
}

declare void @free(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @global_opt() #0 !dbg !3326 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !3329, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.declare(metadata !4, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.declare(metadata !4, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.declare(metadata !4, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.declare(metadata !4, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata !4, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 -1, metadata !3341, metadata !DIExpression()), !dbg !3342
  br label %while.body, !dbg !3343

while.body:                                       ; preds = %if.end12, %entry
  %new_arcs.0 = phi i64 [ -1, %entry ], [ %call5, %if.end12 ], !dbg !3347
  call void @llvm.dbg.value(metadata i64 %new_arcs.0, metadata !3341, metadata !DIExpression()), !dbg !3342
  br label %while_continue___0, !dbg !3348

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3348

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i64 %new_arcs.0, 0, !dbg !3349
  br i1 %tobool, label %if.end, label %if.then, !dbg !3352

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3353

if.end:                                           ; preds = %while_continue
  %0 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 5), align 8, !dbg !3355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i64 %0), !dbg !3358
  %call1 = call i64 @primal_net_simplex(%struct.network* @net), !dbg !3359
  %1 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 25), align 8, !dbg !3361
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i64 %1), !dbg !3363
  %call3 = call double @flow_cost(%struct.network* @net), !dbg !3364
  call void @llvm.dbg.value(metadata double %call3, metadata !3366, metadata !DIExpression()), !dbg !3342
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), double %call3), !dbg !3367
  %call5 = call i64 @price_out_impl(%struct.network* @net), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %call5, metadata !3341, metadata !DIExpression()), !dbg !3342
  %tobool6 = icmp ne i64 %call5, 0, !dbg !3371
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3373

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i64 %call5), !dbg !3374
  br label %if.end9, !dbg !3378

if.end9:                                          ; preds = %if.then7, %if.end
  %cmp = icmp slt i64 %call5, 0, !dbg !3379
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !3381

if.then10:                                        ; preds = %if.end9
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0)), !dbg !3382
  call void @exit(i32 -1) #5, !dbg !3386
  unreachable, !dbg !3386

if.end12:                                         ; preds = %if.end9
  br label %while.body, !dbg !3343, !llvm.loop !3388

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3390

while_break:                                      ; preds = %while_break___0, %if.then
  %2 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 27), align 8, !dbg !3391
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i64 %2), !dbg !3394
  ret i64 0, !dbg !3395
}

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !3396 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8** %argv, metadata !3402, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata !4, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.declare(metadata !4, metadata !3405, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.declare(metadata !4, metadata !3407, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.declare(metadata !4, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.declare(metadata !4, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.declare(metadata !4, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.declare(metadata !4, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.declare(metadata !4, metadata !3417, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.declare(metadata !4, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata !4, metadata !3421, metadata !DIExpression()), !dbg !3422
  %cmp = icmp slt i32 %argc, 2, !dbg !3423
  br i1 %cmp, label %if.then, label %if.end, !dbg !3426

if.then:                                          ; preds = %entry
  br label %return, !dbg !3427

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !3429
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)), !dbg !3432
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0)), !dbg !3434
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0)), !dbg !3436
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)), !dbg !3438
  %call5 = call i8* @memset(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i32 0, i32 608), !dbg !3440
  store i64 10000000, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 16), align 8, !dbg !3442
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !3443
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !3445
  %call6 = call i8* @strcpy(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i8* %0), !dbg !3446
  %call7 = call i64 @read_min(%struct.network* @net), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %call7, metadata !3449, metadata !DIExpression()), !dbg !3401
  %tobool = icmp ne i64 %call7, 0, !dbg !3450
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !3452

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)), !dbg !3453
  %call10 = call i64 @getfree(%struct.network* @net), !dbg !3457
  br label %return, !dbg !3459

if.end11:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 3), align 8, !dbg !3460
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i64 %1), !dbg !3463
  %call13 = call i64 @primal_start_artificial(%struct.network* @net), !dbg !3464
  %call14 = call i64 @global_opt(), !dbg !3466
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)), !dbg !3468
  %call16 = call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.network* @net), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %call16, metadata !3472, metadata !DIExpression()), !dbg !3401
  %tobool17 = icmp ne i64 %call16, 0, !dbg !3473
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !3475

if.then18:                                        ; preds = %if.end11
  %call19 = call i64 @getfree(%struct.network* @net), !dbg !3476
  br label %return, !dbg !3480

if.end20:                                         ; preds = %if.end11
  %call21 = call i64 @getfree(%struct.network* @net), !dbg !3481
  br label %return, !dbg !3484

return:                                           ; preds = %if.end20, %if.then18, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then8 ], [ -1, %if.then18 ], [ 0, %if.end20 ], !dbg !3485
  ret i32 %retval.0, !dbg !3486
}

declare i8* @memset(i8*, i32, i32) #2

declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!167, !168, !169, !170, !171}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!172}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "perm", scope: !2, file: !110, line: 77, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !107, nameTableKind: GNU)
!3 = !DIFile(filename: "c/mcf-spec2000.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !10, !49, !36, !9, !50, !15, !24, !52, !31, !38, !21, !22, !106}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !8, line: 60, baseType: !9)
!8 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/defines.h", directory: "")
!9 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !8, line: 108, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !8, line: 108, size: 512, elements: !13)
!13 = !{!14, !42, !43, !44, !45, !46, !47, !48}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !12, file: !8, line: 109, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !8, line: 91, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !8, line: 91, size: 960, elements: !18)
!18 = !{!19, !20, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !41}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !17, file: !8, line: 92, baseType: !9, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !17, file: !8, line: 93, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !17, file: !8, line: 94, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !17, file: !8, line: 95, baseType: !24, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !17, file: !8, line: 96, baseType: !24, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !17, file: !8, line: 97, baseType: !24, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !17, file: !8, line: 98, baseType: !9, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !17, file: !8, line: 99, baseType: !9, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !17, file: !8, line: 100, baseType: !31, size: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !17, file: !8, line: 101, baseType: !31, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !17, file: !8, line: 102, baseType: !31, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !17, file: !8, line: 103, baseType: !7, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !17, file: !8, line: 104, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !8, line: 59, baseType: !9)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !17, file: !8, line: 105, baseType: !38, size: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 213, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/gcc-lib/i486-linux/3.3.5/include/stddef.h", directory: "")
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !17, file: !8, line: 106, baseType: !9, size: 64, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !12, file: !8, line: 110, baseType: !15, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !12, file: !8, line: 111, baseType: !31, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !12, file: !8, line: 112, baseType: !31, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !12, file: !8, line: 113, baseType: !7, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !12, file: !8, line: 114, baseType: !7, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !12, file: !8, line: 115, baseType: !36, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !12, file: !8, line: 116, baseType: !9, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 264, size: 1728, elements: !57)
!56 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!57 = !{!58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !79, !80, !81, !82, !85, !87, !89, !93, !96, !99, !100, !101, !102}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 265, baseType: !59, size: 32)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 266, baseType: !21, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 267, baseType: !21, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 268, baseType: !21, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 269, baseType: !21, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 270, baseType: !21, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 271, baseType: !21, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 272, baseType: !21, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 273, baseType: !21, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 274, baseType: !21, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 275, baseType: !21, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 276, baseType: !21, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 277, baseType: !72, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 179, size: 192, elements: !74)
!74 = !{!75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !73, file: !56, line: 180, baseType: !72, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !73, file: !56, line: 181, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !73, file: !56, line: 182, baseType: !59, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 278, baseType: !77, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 279, baseType: !59, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 280, baseType: !59, size: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 281, baseType: !83, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !84, line: 143, baseType: !9)
!84 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 282, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 283, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 284, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 285, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 173, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 286, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !84, line: 144, baseType: !98)
!98 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !55, file: !56, line: 287, baseType: !49, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !55, file: !56, line: 288, baseType: !49, size: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 289, baseType: !59, size: 32, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 290, baseType: !103, size: 352, offset: 1376)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 352, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 44)
!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!107 = !{!108, !111, !0, !122, !124, !126, !163}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "basket_size", scope: !2, file: !110, line: 75, type: !9, isLocal: true, isDefinition: true)
!110 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/pbeampp.c", directory: "")
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "basket", scope: !2, file: !110, line: 76, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 76992, elements: !120)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "BASKET", file: !110, line: 68, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basket", file: !110, line: 68, size: 192, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !115, file: !110, line: 69, baseType: !10, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !115, file: !110, line: 70, baseType: !7, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "abs_cost", scope: !115, file: !110, line: 71, baseType: !7, size: 64, offset: 128)
!120 = !{!121}
!121 = !DISubrange(count: 401)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "nr_group", scope: !2, file: !110, line: 128, type: !9, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "group_pos", scope: !2, file: !110, line: 129, type: !9, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "net", scope: !2, file: !128, line: 22, type: !129, isLocal: false, isDefinition: true)
!128 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/mcf.c", directory: "")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !8, line: 119, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !8, line: 119, size: 4864, elements: !131)
!131 = !{!132, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !130, file: !8, line: 120, baseType: !133, size: 1600)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1600, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 200)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !130, file: !8, line: 121, baseType: !133, size: 1600, offset: 1600)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !130, file: !8, line: 122, baseType: !9, size: 64, offset: 3200)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !130, file: !8, line: 123, baseType: !9, size: 64, offset: 3264)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !130, file: !8, line: 124, baseType: !9, size: 64, offset: 3328)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !130, file: !8, line: 125, baseType: !9, size: 64, offset: 3392)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !130, file: !8, line: 126, baseType: !9, size: 64, offset: 3456)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !130, file: !8, line: 127, baseType: !9, size: 64, offset: 3520)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !130, file: !8, line: 128, baseType: !9, size: 64, offset: 3584)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !130, file: !8, line: 129, baseType: !9, size: 64, offset: 3648)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !130, file: !8, line: 130, baseType: !9, size: 64, offset: 3712)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !130, file: !8, line: 131, baseType: !9, size: 64, offset: 3776)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !130, file: !8, line: 132, baseType: !9, size: 64, offset: 3840)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !130, file: !8, line: 133, baseType: !9, size: 64, offset: 3904)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !130, file: !8, line: 134, baseType: !9, size: 64, offset: 3968)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !130, file: !8, line: 135, baseType: !9, size: 64, offset: 4032)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !130, file: !8, line: 136, baseType: !9, size: 64, offset: 4096)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !130, file: !8, line: 137, baseType: !106, size: 64, offset: 4160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !130, file: !8, line: 138, baseType: !7, size: 64, offset: 4224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !130, file: !8, line: 139, baseType: !15, size: 64, offset: 4288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !130, file: !8, line: 140, baseType: !15, size: 64, offset: 4352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !130, file: !8, line: 141, baseType: !10, size: 64, offset: 4416)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !130, file: !8, line: 142, baseType: !10, size: 64, offset: 4480)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !130, file: !8, line: 143, baseType: !10, size: 64, offset: 4544)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !130, file: !8, line: 144, baseType: !10, size: 64, offset: 4608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !130, file: !8, line: 145, baseType: !9, size: 64, offset: 4672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !130, file: !8, line: 146, baseType: !9, size: 64, offset: 4736)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !130, file: !8, line: 147, baseType: !9, size: 64, offset: 4800)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "initialize", scope: !2, file: !110, line: 132, type: !9, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 25664, elements: !120)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!167 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!168 = !{i32 2, !"Dwarf Version", i32 4}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 7, !"PIC Level", i32 2}
!172 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!173 = distinct !DISubprogram(name: "bea_compute_red_cost", scope: !110, file: !110, line: 35, type: !174, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!174 = !DISubroutineType(types: !175)
!175 = !{!7, !10}
!176 = !DILocalVariable(name: "arc", arg: 1, scope: !173, file: !110, line: 35, type: !10)
!177 = !DILocation(line: 0, scope: !173)
!178 = !DILocation(line: 41, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !110, line: 39, column: 3)
!180 = !DILocation(line: 41, column: 30, scope: !179)
!181 = !DILocation(line: 41, column: 37, scope: !179)
!182 = !DILocation(line: 41, column: 22, scope: !179)
!183 = !DILocation(line: 41, column: 56, scope: !179)
!184 = !DILocation(line: 41, column: 63, scope: !179)
!185 = !DILocation(line: 41, column: 48, scope: !179)
!186 = !DILocation(line: 41, column: 3, scope: !179)
!187 = distinct !DISubprogram(name: "bea_is_dual_infeasible", scope: !110, file: !110, line: 51, type: !188, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!188 = !DISubroutineType(types: !189)
!189 = !{!59, !10, !7}
!190 = !DILocalVariable(name: "arc", arg: 1, scope: !187, file: !110, line: 51, type: !10)
!191 = !DILocation(line: 0, scope: !187)
!192 = !DILocalVariable(name: "red_cost", arg: 2, scope: !187, file: !110, line: 51, type: !7)
!193 = !DILocation(line: 58, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !110, line: 58, column: 7)
!195 = distinct !DILexicalBlock(scope: !187, file: !110, line: 55, column: 3)
!196 = !DILocation(line: 58, column: 7, scope: !195)
!197 = !DILocation(line: 58, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !110, line: 58, column: 9)
!199 = distinct !DILexicalBlock(scope: !194, file: !110, line: 58, column: 22)
!200 = !DILocation(line: 58, column: 20, scope: !198)
!201 = !DILocation(line: 58, column: 9, scope: !199)
!202 = !DILocalVariable(name: "tmp", scope: !187, file: !110, line: 53, type: !59)
!203 = !DILocation(line: 59, column: 5, scope: !204)
!204 = distinct !DILexicalBlock(scope: !198, file: !110, line: 58, column: 27)
!205 = !DILocation(line: 58, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !198, file: !110, line: 59, column: 12)
!207 = !DILocation(line: 60, column: 3, scope: !199)
!208 = !DILocation(line: 58, column: 16, scope: !209)
!209 = distinct !DILexicalBlock(scope: !194, file: !110, line: 58, column: 7)
!210 = !DILocation(line: 58, column: 7, scope: !194)
!211 = !DILocation(line: 58, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !110, line: 58, column: 9)
!213 = distinct !DILexicalBlock(scope: !209, file: !110, line: 58, column: 22)
!214 = !DILocation(line: 58, column: 20, scope: !212)
!215 = !DILocation(line: 58, column: 9, scope: !213)
!216 = !DILocation(line: 59, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !110, line: 58, column: 27)
!218 = !DILocation(line: 0, scope: !212)
!219 = !DILocation(line: 60, column: 3, scope: !213)
!220 = !DILocation(line: 0, scope: !209)
!221 = !DILocation(line: 0, scope: !194)
!222 = !DILocation(line: 58, column: 3, scope: !195)
!223 = distinct !DISubprogram(name: "sort_basket", scope: !110, file: !110, line: 82, type: !224, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !9, !9}
!226 = !DILocalVariable(name: "min", arg: 1, scope: !223, file: !110, line: 82, type: !9)
!227 = !DILocation(line: 0, scope: !223)
!228 = !DILocalVariable(name: "max", arg: 2, scope: !223, file: !110, line: 82, type: !9)
!229 = !DILocalVariable(name: "l", scope: !223, file: !110, line: 84, type: !9)
!230 = !DILocalVariable(name: "r", scope: !223, file: !110, line: 85, type: !9)
!231 = !DILocation(line: 94, column: 18, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !110, line: 89, column: 3)
!233 = !DILocation(line: 94, column: 23, scope: !232)
!234 = !DILocation(line: 94, column: 10, scope: !232)
!235 = !DILocation(line: 94, column: 31, scope: !232)
!236 = !DILocalVariable(name: "cut", scope: !223, file: !110, line: 86, type: !7)
!237 = !DILocation(line: 96, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !110, line: 96, column: 3)
!239 = distinct !DILexicalBlock(scope: !232, file: !110, line: 95, column: 3)
!240 = !DILocation(line: 0, scope: !232)
!241 = !DILocation(line: 96, column: 13, scope: !238)
!242 = !DILocation(line: 98, column: 5, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !110, line: 100, column: 5)
!244 = distinct !DILexicalBlock(scope: !245, file: !110, line: 99, column: 5)
!245 = distinct !DILexicalBlock(scope: !238, file: !110, line: 96, column: 13)
!246 = !DILocation(line: 98, column: 15, scope: !243)
!247 = !DILocation(line: 98, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !110, line: 98, column: 11)
!249 = distinct !DILexicalBlock(scope: !243, file: !110, line: 98, column: 15)
!250 = !DILocation(line: 98, column: 25, scope: !248)
!251 = !DILocation(line: 98, column: 34, scope: !248)
!252 = !DILocation(line: 98, column: 11, scope: !249)
!253 = !DILocation(line: 98, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !110, line: 98, column: 42)
!255 = !DILocation(line: 99, column: 9, scope: !249)
!256 = distinct !{!256, !242, !257}
!257 = !DILocation(line: 100, column: 5, scope: !243)
!258 = !DILocation(line: 102, column: 5, scope: !243)
!259 = !DILocation(line: 100, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !110, line: 106, column: 5)
!261 = distinct !DILexicalBlock(scope: !245, file: !110, line: 105, column: 5)
!262 = !DILocation(line: 100, column: 15, scope: !260)
!263 = !DILocation(line: 100, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !110, line: 100, column: 11)
!265 = distinct !DILexicalBlock(scope: !260, file: !110, line: 100, column: 15)
!266 = !DILocation(line: 100, column: 31, scope: !264)
!267 = !DILocation(line: 100, column: 18, scope: !264)
!268 = !DILocation(line: 100, column: 11, scope: !265)
!269 = !DILocation(line: 100, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !110, line: 100, column: 42)
!271 = !DILocation(line: 101, column: 9, scope: !265)
!272 = distinct !{!272, !259, !273}
!273 = !DILocation(line: 102, column: 5, scope: !260)
!274 = !DILocation(line: 104, column: 5, scope: !260)
!275 = !DILocation(line: 103, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !245, file: !110, line: 103, column: 9)
!277 = !DILocation(line: 103, column: 9, scope: !245)
!278 = !DILocation(line: 105, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !110, line: 103, column: 16)
!280 = !DILocalVariable(name: "xchange", scope: !223, file: !110, line: 87, type: !166)
!281 = !DILocation(line: 106, column: 17, scope: !279)
!282 = !DILocation(line: 106, column: 7, scope: !279)
!283 = !DILocation(line: 106, column: 15, scope: !279)
!284 = !DILocation(line: 107, column: 7, scope: !279)
!285 = !DILocation(line: 107, column: 15, scope: !279)
!286 = !DILocation(line: 108, column: 5, scope: !279)
!287 = !DILocation(line: 109, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !245, file: !110, line: 109, column: 9)
!289 = !DILocation(line: 109, column: 9, scope: !245)
!290 = !DILocation(line: 111, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !110, line: 109, column: 17)
!292 = !DILocation(line: 112, column: 5, scope: !291)
!293 = !DILocation(line: 96, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !245, file: !110, line: 96, column: 9)
!295 = !DILocation(line: 96, column: 9, scope: !245)
!296 = !DILocation(line: 96, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !110, line: 96, column: 21)
!298 = distinct !{!298, !237, !299}
!299 = !DILocation(line: 98, column: 3, scope: !238)
!300 = !DILocation(line: 100, column: 3, scope: !238)
!301 = !DILocation(line: 117, column: 11, scope: !302)
!302 = distinct !DILexicalBlock(scope: !232, file: !110, line: 117, column: 7)
!303 = !DILocation(line: 117, column: 7, scope: !232)
!304 = !DILocation(line: 118, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !110, line: 119, column: 5)
!306 = distinct !DILexicalBlock(scope: !307, file: !110, line: 118, column: 5)
!307 = distinct !DILexicalBlock(scope: !302, file: !110, line: 117, column: 16)
!308 = !DILocation(line: 121, column: 3, scope: !307)
!309 = !DILocation(line: 119, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !232, file: !110, line: 119, column: 7)
!311 = !DILocation(line: 119, column: 7, scope: !232)
!312 = !DILocation(line: 119, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !110, line: 119, column: 9)
!314 = distinct !DILexicalBlock(scope: !310, file: !110, line: 119, column: 16)
!315 = !DILocation(line: 119, column: 9, scope: !314)
!316 = !DILocation(line: 120, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !110, line: 121, column: 7)
!318 = distinct !DILexicalBlock(scope: !319, file: !110, line: 120, column: 7)
!319 = distinct !DILexicalBlock(scope: !313, file: !110, line: 119, column: 20)
!320 = !DILocation(line: 123, column: 5, scope: !319)
!321 = !DILocation(line: 124, column: 3, scope: !314)
!322 = !DILocation(line: 121, column: 3, scope: !232)
!323 = distinct !DISubprogram(name: "primal_bea_mpp", scope: !110, file: !110, line: 136, type: !324, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{!10, !9, !10, !10, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!327 = !DILocalVariable(name: "m", arg: 1, scope: !323, file: !110, line: 136, type: !9)
!328 = !DILocation(line: 0, scope: !323)
!329 = !DILocalVariable(name: "arcs", arg: 2, scope: !323, file: !110, line: 136, type: !10)
!330 = !DILocalVariable(name: "stop_arcs", arg: 3, scope: !323, file: !110, line: 136, type: !10)
!331 = !DILocalVariable(name: "red_cost_of_bea", arg: 4, scope: !323, file: !110, line: 136, type: !326)
!332 = !DILocation(line: 150, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !110, line: 150, column: 7)
!334 = distinct !DILexicalBlock(scope: !323, file: !110, line: 146, column: 3)
!335 = !DILocation(line: 150, column: 7, scope: !334)
!336 = !DILocalVariable(name: "i", scope: !323, file: !110, line: 138, type: !9)
!337 = !DILocation(line: 152, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !110, line: 154, column: 5)
!339 = distinct !DILexicalBlock(scope: !340, file: !110, line: 153, column: 5)
!340 = distinct !DILexicalBlock(scope: !333, file: !110, line: 150, column: 19)
!341 = !DILocation(line: 0, scope: !340)
!342 = !DILocation(line: 152, column: 15, scope: !338)
!343 = !DILocation(line: 152, column: 16, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !110, line: 152, column: 11)
!345 = distinct !DILexicalBlock(scope: !338, file: !110, line: 152, column: 15)
!346 = !DILocation(line: 152, column: 11, scope: !345)
!347 = !DILocation(line: 152, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !110, line: 152, column: 25)
!349 = !DILocation(line: 153, column: 19, scope: !345)
!350 = !DILocation(line: 153, column: 7, scope: !345)
!351 = !DILocation(line: 153, column: 15, scope: !345)
!352 = !DILocation(line: 152, column: 9, scope: !345)
!353 = distinct !{!353, !337, !354}
!354 = !DILocation(line: 153, column: 5, scope: !338)
!355 = !DILocation(line: 155, column: 5, scope: !338)
!356 = !DILocation(line: 154, column: 19, scope: !340)
!357 = !DILocation(line: 154, column: 25, scope: !340)
!358 = !DILocation(line: 154, column: 32, scope: !340)
!359 = !DILocation(line: 154, column: 14, scope: !340)
!360 = !DILocation(line: 155, column: 15, scope: !340)
!361 = !DILocation(line: 156, column: 17, scope: !340)
!362 = !DILocation(line: 157, column: 16, scope: !340)
!363 = !DILocation(line: 158, column: 3, scope: !340)
!364 = !DILocalVariable(name: "next", scope: !323, file: !110, line: 139, type: !9)
!365 = !DILocation(line: 161, column: 5, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !110, line: 163, column: 5)
!367 = distinct !DILexicalBlock(scope: !368, file: !110, line: 162, column: 5)
!368 = distinct !DILexicalBlock(scope: !333, file: !110, line: 158, column: 10)
!369 = !DILocation(line: 0, scope: !368)
!370 = !DILocation(line: 161, column: 15, scope: !366)
!371 = !DILocation(line: 161, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !110, line: 161, column: 11)
!373 = distinct !DILexicalBlock(scope: !366, file: !110, line: 161, column: 15)
!374 = !DILocation(line: 161, column: 11, scope: !373)
!375 = !DILocation(line: 161, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !110, line: 161, column: 13)
!377 = distinct !DILexicalBlock(scope: !372, file: !110, line: 161, column: 22)
!378 = !DILocation(line: 161, column: 18, scope: !376)
!379 = !DILocation(line: 161, column: 13, scope: !377)
!380 = !DILocation(line: 161, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !110, line: 161, column: 35)
!382 = !DILocation(line: 163, column: 7, scope: !377)
!383 = !DILocation(line: 161, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !372, file: !110, line: 163, column: 14)
!385 = !DILocation(line: 163, column: 14, scope: !386)
!386 = distinct !DILexicalBlock(scope: !373, file: !110, line: 163, column: 7)
!387 = !DILocation(line: 163, column: 24, scope: !386)
!388 = !DILocalVariable(name: "arc", scope: !323, file: !110, line: 141, type: !10)
!389 = !DILocation(line: 164, column: 18, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !110, line: 164, column: 7)
!391 = !DILocalVariable(name: "red_cost", scope: !323, file: !110, line: 142, type: !7)
!392 = !DILocation(line: 165, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !110, line: 166, column: 7)
!394 = !DILocalVariable(name: "tmp", scope: !323, file: !110, line: 143, type: !59)
!395 = !DILocation(line: 165, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !373, file: !110, line: 165, column: 11)
!397 = !DILocation(line: 165, column: 11, scope: !373)
!398 = !DILocation(line: 167, column: 14, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !110, line: 165, column: 16)
!400 = !DILocation(line: 168, column: 10, scope: !399)
!401 = !DILocation(line: 168, column: 23, scope: !399)
!402 = !DILocation(line: 168, column: 25, scope: !399)
!403 = !DILocation(line: 169, column: 10, scope: !399)
!404 = !DILocation(line: 169, column: 23, scope: !399)
!405 = !DILocation(line: 169, column: 28, scope: !399)
!406 = !DILocation(line: 170, column: 22, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !110, line: 170, column: 13)
!408 = !DILocation(line: 170, column: 13, scope: !399)
!409 = !DILocation(line: 170, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !110, line: 170, column: 29)
!411 = !DILocation(line: 170, column: 25, scope: !410)
!412 = !DILocation(line: 170, column: 34, scope: !410)
!413 = !DILocation(line: 171, column: 9, scope: !410)
!414 = !DILocation(line: 170, column: 36, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !110, line: 171, column: 16)
!416 = !DILocation(line: 170, column: 12, scope: !415)
!417 = !DILocation(line: 170, column: 25, scope: !415)
!418 = !DILocation(line: 170, column: 34, scope: !415)
!419 = !DILocation(line: 172, column: 7, scope: !399)
!420 = !DILocation(line: 161, column: 9, scope: !373)
!421 = distinct !{!421, !365, !422}
!422 = !DILocation(line: 162, column: 5, scope: !366)
!423 = !DILocation(line: 164, column: 5, scope: !366)
!424 = !DILocation(line: 173, column: 17, scope: !368)
!425 = !DILocation(line: 176, column: 19, scope: !334)
!426 = !DILocalVariable(name: "old_group_pos", scope: !323, file: !110, line: 140, type: !9)
!427 = !DILocation(line: 176, column: 3, scope: !334)
!428 = !DILocation(line: 180, column: 16, scope: !334)
!429 = !DILocation(line: 180, column: 14, scope: !334)
!430 = !DILocation(line: 181, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !110, line: 182, column: 3)
!432 = distinct !DILexicalBlock(scope: !334, file: !110, line: 181, column: 3)
!433 = !DILocation(line: 0, scope: !334)
!434 = !DILocation(line: 181, column: 13, scope: !431)
!435 = !DILocation(line: 181, column: 12, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !110, line: 181, column: 9)
!437 = distinct !DILexicalBlock(scope: !431, file: !110, line: 181, column: 13)
!438 = !DILocation(line: 181, column: 34, scope: !436)
!439 = !DILocation(line: 181, column: 32, scope: !436)
!440 = !DILocation(line: 181, column: 9, scope: !437)
!441 = !DILocation(line: 181, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !436, file: !110, line: 181, column: 62)
!443 = !DILocation(line: 183, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !110, line: 183, column: 9)
!445 = !DILocation(line: 183, column: 20, scope: !444)
!446 = !DILocation(line: 183, column: 9, scope: !437)
!447 = !DILocation(line: 185, column: 18, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !110, line: 185, column: 7)
!449 = distinct !DILexicalBlock(scope: !450, file: !110, line: 184, column: 7)
!450 = distinct !DILexicalBlock(scope: !444, file: !110, line: 183, column: 26)
!451 = !DILocation(line: 186, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !110, line: 187, column: 7)
!453 = !DILocalVariable(name: "tmp___0", scope: !323, file: !110, line: 144, type: !59)
!454 = !DILocation(line: 186, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !110, line: 186, column: 11)
!456 = !DILocation(line: 186, column: 11, scope: !450)
!457 = !DILocation(line: 188, column: 21, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !110, line: 186, column: 20)
!459 = !DILocation(line: 189, column: 15, scope: !458)
!460 = !DILocation(line: 189, column: 10, scope: !458)
!461 = !DILocation(line: 189, column: 30, scope: !458)
!462 = !DILocation(line: 189, column: 32, scope: !458)
!463 = !DILocation(line: 190, column: 15, scope: !458)
!464 = !DILocation(line: 190, column: 10, scope: !458)
!465 = !DILocation(line: 190, column: 30, scope: !458)
!466 = !DILocation(line: 190, column: 35, scope: !458)
!467 = !DILocation(line: 191, column: 22, scope: !468)
!468 = distinct !DILexicalBlock(scope: !458, file: !110, line: 191, column: 13)
!469 = !DILocation(line: 191, column: 13, scope: !458)
!470 = !DILocation(line: 191, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !110, line: 191, column: 29)
!472 = !DILocation(line: 191, column: 12, scope: !471)
!473 = !DILocation(line: 191, column: 32, scope: !471)
!474 = !DILocation(line: 191, column: 41, scope: !471)
!475 = !DILocation(line: 192, column: 9, scope: !471)
!476 = !DILocation(line: 191, column: 43, scope: !477)
!477 = distinct !DILexicalBlock(scope: !468, file: !110, line: 192, column: 16)
!478 = !DILocation(line: 191, column: 17, scope: !477)
!479 = !DILocation(line: 191, column: 12, scope: !477)
!480 = !DILocation(line: 191, column: 32, scope: !477)
!481 = !DILocation(line: 191, column: 41, scope: !477)
!482 = !DILocation(line: 193, column: 7, scope: !458)
!483 = !DILocation(line: 194, column: 5, scope: !450)
!484 = !DILocation(line: 181, column: 12, scope: !437)
!485 = distinct !{!485, !430, !486}
!486 = !DILocation(line: 182, column: 3, scope: !431)
!487 = !DILocation(line: 184, column: 3, scope: !431)
!488 = !DILocation(line: 197, column: 13, scope: !334)
!489 = !DILocation(line: 197, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !334, file: !110, line: 197, column: 7)
!491 = !DILocation(line: 197, column: 20, scope: !490)
!492 = !DILocation(line: 197, column: 17, scope: !490)
!493 = !DILocation(line: 197, column: 7, scope: !334)
!494 = !DILocation(line: 198, column: 15, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !110, line: 197, column: 30)
!496 = !DILocation(line: 199, column: 3, scope: !495)
!497 = !DILocation(line: 200, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !334, file: !110, line: 200, column: 7)
!499 = !DILocation(line: 200, column: 19, scope: !498)
!500 = !DILocation(line: 200, column: 7, scope: !334)
!501 = !DILocation(line: 200, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !110, line: 200, column: 9)
!503 = distinct !DILexicalBlock(scope: !498, file: !110, line: 200, column: 27)
!504 = !DILocation(line: 200, column: 19, scope: !502)
!505 = !DILocation(line: 200, column: 9, scope: !503)
!506 = !DILocation(line: 201, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !110, line: 200, column: 37)
!508 = !DILocation(line: 203, column: 3, scope: !503)
!509 = !DILocation(line: 203, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !334, file: !110, line: 203, column: 7)
!511 = !DILocation(line: 203, column: 19, scope: !510)
!512 = !DILocation(line: 203, column: 7, scope: !334)
!513 = !DILocation(line: 205, column: 16, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !110, line: 203, column: 26)
!515 = !DILocation(line: 206, column: 22, scope: !514)
!516 = !DILocation(line: 207, column: 5, scope: !514)
!517 = !DILocation(line: 210, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !110, line: 210, column: 3)
!519 = distinct !DILexicalBlock(scope: !334, file: !110, line: 209, column: 3)
!520 = !DILocation(line: 210, column: 3, scope: !518)
!521 = !DILocation(line: 212, column: 23, scope: !519)
!522 = !DILocation(line: 212, column: 33, scope: !519)
!523 = !DILocation(line: 212, column: 20, scope: !519)
!524 = !DILocation(line: 213, column: 12, scope: !334)
!525 = !DILocation(line: 213, column: 22, scope: !334)
!526 = !DILocation(line: 213, column: 3, scope: !334)
!527 = !DILocation(line: 215, column: 1, scope: !323)
!528 = distinct !DISubprogram(name: "primal_net_simplex", scope: !529, file: !529, line: 21, type: !530, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!529 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/psimplex.c", directory: "")
!530 = !DISubroutineType(types: !531)
!531 = !{!9, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!533 = !DILocalVariable(name: "net___0", arg: 1, scope: !528, file: !529, line: 21, type: !532)
!534 = !DILocation(line: 0, scope: !528)
!535 = !DILocalVariable(name: "delta", scope: !528, file: !529, line: 23, type: !36)
!536 = !DILocation(line: 23, column: 10, scope: !528)
!537 = !DILocalVariable(name: "xchange", scope: !528, file: !529, line: 26, type: !9)
!538 = !DILocation(line: 26, column: 8, scope: !528)
!539 = !DILocalVariable(name: "w", scope: !528, file: !529, line: 32, type: !15)
!540 = !DILocation(line: 32, column: 11, scope: !528)
!541 = !DILocalVariable(name: "red_cost_of_bea", scope: !528, file: !529, line: 40, type: !7)
!542 = !DILocation(line: 40, column: 10, scope: !528)
!543 = !DILocalVariable(name: "__cil_tmp25", scope: !528, file: !529, line: 46, type: !21)
!544 = !DILocation(line: 46, column: 9, scope: !528)
!545 = !DILocalVariable(name: "opt", scope: !528, file: !529, line: 25, type: !9)
!546 = !DILocation(line: 39, column: 19, scope: !547)
!547 = distinct !DILexicalBlock(scope: !528, file: !529, line: 48, column: 3)
!548 = !DILocalVariable(name: "arcs", scope: !528, file: !529, line: 35, type: !10)
!549 = !DILocation(line: 40, column: 24, scope: !547)
!550 = !DILocalVariable(name: "stop_arcs", scope: !528, file: !529, line: 36, type: !10)
!551 = !DILocation(line: 42, column: 16, scope: !547)
!552 = !DILocalVariable(name: "m", scope: !528, file: !529, line: 38, type: !9)
!553 = !DILocation(line: 45, column: 27, scope: !547)
!554 = !DILocalVariable(name: "iterations", scope: !528, file: !529, line: 41, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!556 = !DILocation(line: 46, column: 32, scope: !547)
!557 = !DILocalVariable(name: "bound_exchanges", scope: !528, file: !529, line: 42, type: !555)
!558 = !DILocation(line: 47, column: 25, scope: !547)
!559 = !DILocalVariable(name: "checksum", scope: !528, file: !529, line: 43, type: !555)
!560 = !DILocation(line: 50, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !529, line: 49, column: 3)
!562 = distinct !DILexicalBlock(scope: !547, file: !529, line: 48, column: 3)
!563 = !DILocation(line: 29, column: 7, scope: !547)
!564 = !DILocation(line: 50, column: 13, scope: !561)
!565 = !DILocation(line: 50, column: 14, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !529, line: 50, column: 9)
!567 = distinct !DILexicalBlock(scope: !561, file: !529, line: 50, column: 13)
!568 = !DILocation(line: 50, column: 9, scope: !567)
!569 = !DILocation(line: 50, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !529, line: 50, column: 20)
!571 = !DILocation(line: 52, column: 11, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !529, line: 53, column: 5)
!573 = distinct !DILexicalBlock(scope: !567, file: !529, line: 52, column: 5)
!574 = !DILocalVariable(name: "bea", scope: !528, file: !529, line: 33, type: !10)
!575 = !DILocation(line: 52, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !567, file: !529, line: 52, column: 9)
!577 = !DILocation(line: 52, column: 9, scope: !567)
!578 = !DILocation(line: 54, column: 21, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !529, line: 52, column: 14)
!580 = !DILocation(line: 62, column: 11, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !529, line: 62, column: 11)
!582 = !DILocation(line: 62, column: 27, scope: !581)
!583 = !DILocation(line: 62, column: 11, scope: !579)
!584 = !DILocation(line: 64, column: 22, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !529, line: 62, column: 33)
!586 = !DILocalVariable(name: "iplus", scope: !528, file: !529, line: 28, type: !15)
!587 = !DILocation(line: 65, column: 22, scope: !585)
!588 = !DILocalVariable(name: "jplus", scope: !528, file: !529, line: 29, type: !15)
!589 = !DILocation(line: 66, column: 7, scope: !585)
!590 = !DILocation(line: 69, column: 22, scope: !591)
!591 = distinct !DILexicalBlock(scope: !581, file: !529, line: 66, column: 14)
!592 = !DILocation(line: 70, column: 22, scope: !591)
!593 = !DILocation(line: 0, scope: !581)
!594 = !DILocation(line: 73, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !579, file: !529, line: 72, column: 7)
!596 = !DILocation(line: 74, column: 16, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !529, line: 74, column: 7)
!598 = !DILocalVariable(name: "iminus", scope: !528, file: !529, line: 30, type: !15)
!599 = !DILocation(line: 77, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !579, file: !529, line: 77, column: 11)
!601 = !DILocation(line: 77, column: 11, scope: !579)
!602 = !DILocation(line: 79, column: 28, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !529, line: 77, column: 21)
!604 = !DILocation(line: 81, column: 18, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !529, line: 81, column: 13)
!606 = !DILocation(line: 81, column: 24, scope: !605)
!607 = !DILocation(line: 81, column: 13, scope: !603)
!608 = !DILocation(line: 82, column: 16, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !529, line: 81, column: 31)
!610 = !DILocation(line: 82, column: 22, scope: !609)
!611 = !DILocation(line: 83, column: 9, scope: !609)
!612 = !DILocation(line: 84, column: 16, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !529, line: 83, column: 16)
!614 = !DILocation(line: 84, column: 22, scope: !613)
!615 = !DILocation(line: 86, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !603, file: !529, line: 86, column: 13)
!617 = !DILocation(line: 86, column: 13, scope: !603)
!618 = !DILocation(line: 87, column: 44, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !529, line: 88, column: 11)
!620 = distinct !DILexicalBlock(scope: !621, file: !529, line: 87, column: 11)
!621 = distinct !DILexicalBlock(scope: !616, file: !529, line: 86, column: 20)
!622 = !DILocation(line: 87, column: 11, scope: !619)
!623 = !DILocation(line: 90, column: 9, scope: !621)
!624 = !DILocation(line: 91, column: 7, scope: !603)
!625 = !DILocation(line: 91, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !529, line: 91, column: 13)
!627 = distinct !DILexicalBlock(scope: !600, file: !529, line: 91, column: 14)
!628 = !DILocation(line: 91, column: 13, scope: !627)
!629 = !DILocalVariable(name: "temp", scope: !528, file: !529, line: 37, type: !15)
!630 = !DILocation(line: 96, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !529, line: 91, column: 22)
!632 = !DILocation(line: 0, scope: !579)
!633 = !DILocation(line: 98, column: 26, scope: !627)
!634 = !DILocalVariable(name: "jminus", scope: !528, file: !529, line: 31, type: !15)
!635 = !DILocation(line: 100, column: 23, scope: !627)
!636 = !DILocalVariable(name: "bla", scope: !528, file: !529, line: 34, type: !10)
!637 = !DILocation(line: 102, column: 13, scope: !638)
!638 = distinct !DILexicalBlock(scope: !627, file: !529, line: 102, column: 13)
!639 = !DILocation(line: 102, column: 32, scope: !638)
!640 = !DILocation(line: 102, column: 21, scope: !638)
!641 = !DILocation(line: 102, column: 13, scope: !627)
!642 = !DILocalVariable(name: "new_set", scope: !528, file: !529, line: 39, type: !9)
!643 = !DILocation(line: 104, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !638, file: !529, line: 102, column: 45)
!645 = !DILocation(line: 0, scope: !638)
!646 = !DILocation(line: 107, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !627, file: !529, line: 107, column: 13)
!648 = !DILocation(line: 107, column: 29, scope: !647)
!649 = !DILocation(line: 107, column: 13, scope: !627)
!650 = !DILocation(line: 108, column: 27, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !529, line: 107, column: 35)
!652 = !DILocation(line: 108, column: 25, scope: !651)
!653 = !DILocalVariable(name: "new_flow", scope: !528, file: !529, line: 24, type: !36)
!654 = !DILocation(line: 109, column: 9, scope: !651)
!655 = !DILocation(line: 110, column: 22, scope: !656)
!656 = distinct !DILexicalBlock(scope: !647, file: !529, line: 109, column: 16)
!657 = !DILocation(line: 0, scope: !647)
!658 = !DILocation(line: 112, column: 34, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !529, line: 112, column: 13)
!660 = !DILocation(line: 112, column: 13, scope: !659)
!661 = !DILocation(line: 112, column: 42, scope: !659)
!662 = !DILocation(line: 112, column: 39, scope: !659)
!663 = !DILocation(line: 112, column: 13, scope: !627)
!664 = !DILocalVariable(name: "new_orientation", scope: !528, file: !529, line: 27, type: !9)
!665 = !DILocation(line: 114, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !659, file: !529, line: 112, column: 65)
!667 = !DILocation(line: 0, scope: !659)
!668 = !DILocation(line: 117, column: 31, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !529, line: 118, column: 9)
!670 = distinct !DILexicalBlock(scope: !627, file: !529, line: 117, column: 9)
!671 = !DILocation(line: 117, column: 29, scope: !669)
!672 = !DILocation(line: 117, column: 21, scope: !669)
!673 = !DILocation(line: 117, column: 58, scope: !669)
!674 = !DILocation(line: 118, column: 37, scope: !669)
!675 = !DILocation(line: 118, column: 45, scope: !669)
!676 = !DILocation(line: 118, column: 71, scope: !669)
!677 = !DILocation(line: 117, column: 9, scope: !669)
!678 = !DILocation(line: 122, column: 14, scope: !670)
!679 = !DILocation(line: 122, column: 20, scope: !670)
!680 = !DILocation(line: 123, column: 14, scope: !670)
!681 = !DILocation(line: 123, column: 20, scope: !670)
!682 = !DILocation(line: 125, column: 17, scope: !683)
!683 = distinct !DILexicalBlock(scope: !627, file: !529, line: 125, column: 13)
!684 = !DILocation(line: 125, column: 29, scope: !683)
!685 = !DILocation(line: 125, column: 35, scope: !683)
!686 = !DILocation(line: 125, column: 13, scope: !627)
!687 = !DILocation(line: 127, column: 17, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !529, line: 127, column: 11)
!689 = distinct !DILexicalBlock(scope: !690, file: !529, line: 126, column: 11)
!690 = distinct !DILexicalBlock(scope: !683, file: !529, line: 125, column: 43)
!691 = !DILocalVariable(name: "tmp", scope: !528, file: !529, line: 44, type: !9)
!692 = !DILocation(line: 127, column: 21, scope: !689)
!693 = !DILocation(line: 128, column: 15, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !529, line: 128, column: 15)
!695 = !DILocation(line: 128, column: 25, scope: !694)
!696 = !DILocation(line: 128, column: 15, scope: !690)
!697 = !DILocation(line: 130, column: 62, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !529, line: 130, column: 13)
!699 = distinct !DILexicalBlock(scope: !700, file: !529, line: 129, column: 13)
!700 = distinct !DILexicalBlock(scope: !694, file: !529, line: 128, column: 40)
!701 = !DILocation(line: 130, column: 13, scope: !698)
!702 = !DILocation(line: 131, column: 20, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !529, line: 132, column: 13)
!704 = !DILocation(line: 131, column: 13, scope: !703)
!705 = !DILocation(line: 134, column: 11, scope: !700)
!706 = !DILocation(line: 135, column: 9, scope: !690)
!707 = !DILocation(line: 137, column: 5, scope: !579)
!708 = !DILocation(line: 0, scope: !547)
!709 = distinct !{!709, !560, !710}
!710 = !DILocation(line: 139, column: 3, scope: !561)
!711 = !DILocation(line: 141, column: 3, scope: !561)
!712 = !DILocation(line: 141, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !529, line: 145, column: 3)
!714 = distinct !DILexicalBlock(scope: !547, file: !529, line: 144, column: 3)
!715 = !DILocalVariable(name: "tmp___0", scope: !528, file: !529, line: 45, type: !9)
!716 = !DILocation(line: 141, column: 13, scope: !714)
!717 = !DILocation(line: 142, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !529, line: 142, column: 3)
!719 = !DILocation(line: 143, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !529, line: 144, column: 3)
!721 = !DILocation(line: 145, column: 3, scope: !547)
!722 = distinct !DISubprogram(name: "primal_iminus", scope: !723, file: !723, line: 33, type: !724, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!723 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/pbla.c", directory: "")
!724 = !DISubroutineType(types: !725)
!725 = !{!15, !726, !555, !15, !15, !727}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!728 = !DILocalVariable(name: "delta", arg: 1, scope: !722, file: !723, line: 33, type: !726)
!729 = !DILocation(line: 0, scope: !722)
!730 = !DILocalVariable(name: "xchange", arg: 2, scope: !722, file: !723, line: 33, type: !555)
!731 = !DILocalVariable(name: "iplus", arg: 3, scope: !722, file: !723, line: 33, type: !15)
!732 = !DILocalVariable(name: "jplus", arg: 4, scope: !722, file: !723, line: 33, type: !15)
!733 = !DILocalVariable(name: "w", arg: 5, scope: !722, file: !723, line: 34, type: !727)
!734 = !DILocalVariable(name: "iminus", scope: !722, file: !723, line: 36, type: !15)
!735 = !DILocation(line: 52, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !723, line: 51, column: 3)
!737 = distinct !DILexicalBlock(scope: !738, file: !723, line: 50, column: 3)
!738 = distinct !DILexicalBlock(scope: !722, file: !723, line: 38, column: 3)
!739 = !DILocation(line: 0, scope: !738)
!740 = !DILocation(line: 52, column: 13, scope: !736)
!741 = !DILocation(line: 52, column: 12, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !723, line: 52, column: 9)
!743 = distinct !DILexicalBlock(scope: !736, file: !723, line: 52, column: 13)
!744 = !DILocation(line: 52, column: 37, scope: !742)
!745 = !DILocation(line: 52, column: 34, scope: !742)
!746 = !DILocation(line: 52, column: 9, scope: !743)
!747 = !DILocation(line: 52, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !723, line: 52, column: 61)
!749 = !DILocation(line: 54, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !743, file: !723, line: 54, column: 9)
!751 = !DILocation(line: 54, column: 31, scope: !750)
!752 = !DILocation(line: 54, column: 22, scope: !750)
!753 = !DILocation(line: 54, column: 9, scope: !743)
!754 = !DILocation(line: 56, column: 18, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !723, line: 56, column: 11)
!756 = distinct !DILexicalBlock(scope: !750, file: !723, line: 54, column: 38)
!757 = !DILocation(line: 56, column: 11, scope: !755)
!758 = !DILocation(line: 56, column: 11, scope: !756)
!759 = !DILocation(line: 57, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !723, line: 57, column: 13)
!761 = distinct !DILexicalBlock(scope: !755, file: !723, line: 56, column: 31)
!762 = !DILocation(line: 57, column: 29, scope: !760)
!763 = !DILocation(line: 57, column: 20, scope: !760)
!764 = !DILocation(line: 57, column: 13, scope: !761)
!765 = !DILocation(line: 57, column: 27, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !723, line: 57, column: 35)
!767 = !DILocation(line: 57, column: 18, scope: !766)
!768 = !DILocation(line: 57, column: 20, scope: !766)
!769 = !DILocation(line: 58, column: 9, scope: !766)
!770 = !DILocation(line: 59, column: 7, scope: !761)
!771 = !DILocation(line: 58, column: 19, scope: !772)
!772 = distinct !DILexicalBlock(scope: !755, file: !723, line: 58, column: 11)
!773 = !DILocation(line: 58, column: 26, scope: !772)
!774 = !DILocation(line: 58, column: 11, scope: !772)
!775 = !DILocation(line: 58, column: 11, scope: !755)
!776 = !DILocation(line: 59, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !723, line: 59, column: 13)
!778 = distinct !DILexicalBlock(scope: !772, file: !723, line: 58, column: 32)
!779 = !DILocation(line: 59, column: 34, scope: !777)
!780 = !DILocation(line: 59, column: 25, scope: !777)
!781 = !DILocation(line: 59, column: 20, scope: !777)
!782 = !DILocation(line: 59, column: 13, scope: !778)
!783 = !DILocation(line: 59, column: 32, scope: !784)
!784 = distinct !DILexicalBlock(scope: !777, file: !723, line: 59, column: 40)
!785 = !DILocation(line: 59, column: 23, scope: !784)
!786 = !DILocation(line: 59, column: 18, scope: !784)
!787 = !DILocation(line: 59, column: 20, scope: !784)
!788 = !DILocation(line: 60, column: 9, scope: !784)
!789 = !DILocation(line: 61, column: 7, scope: !778)
!790 = !DILocation(line: 0, scope: !755)
!791 = !DILocation(line: 60, column: 22, scope: !756)
!792 = !DILocation(line: 61, column: 5, scope: !756)
!793 = !DILocation(line: 64, column: 20, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !723, line: 64, column: 11)
!795 = distinct !DILexicalBlock(scope: !750, file: !723, line: 61, column: 12)
!796 = !DILocation(line: 64, column: 13, scope: !794)
!797 = !DILocation(line: 64, column: 11, scope: !795)
!798 = !DILocation(line: 65, column: 13, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !723, line: 65, column: 13)
!800 = distinct !DILexicalBlock(scope: !794, file: !723, line: 64, column: 33)
!801 = !DILocation(line: 65, column: 30, scope: !799)
!802 = !DILocation(line: 65, column: 20, scope: !799)
!803 = !DILocation(line: 65, column: 13, scope: !800)
!804 = !DILocation(line: 65, column: 27, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !723, line: 65, column: 36)
!806 = !DILocation(line: 65, column: 18, scope: !805)
!807 = !DILocation(line: 65, column: 20, scope: !805)
!808 = !DILocation(line: 66, column: 9, scope: !805)
!809 = !DILocation(line: 67, column: 7, scope: !800)
!810 = !DILocation(line: 66, column: 19, scope: !811)
!811 = distinct !DILexicalBlock(scope: !794, file: !723, line: 66, column: 11)
!812 = !DILocation(line: 66, column: 26, scope: !811)
!813 = !DILocation(line: 66, column: 11, scope: !811)
!814 = !DILocation(line: 66, column: 11, scope: !794)
!815 = !DILocation(line: 67, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !723, line: 67, column: 13)
!817 = distinct !DILexicalBlock(scope: !811, file: !723, line: 66, column: 32)
!818 = !DILocation(line: 67, column: 35, scope: !816)
!819 = !DILocation(line: 67, column: 26, scope: !816)
!820 = !DILocation(line: 67, column: 20, scope: !816)
!821 = !DILocation(line: 67, column: 13, scope: !817)
!822 = !DILocation(line: 67, column: 32, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !723, line: 67, column: 41)
!824 = !DILocation(line: 67, column: 23, scope: !823)
!825 = !DILocation(line: 67, column: 18, scope: !823)
!826 = !DILocation(line: 67, column: 20, scope: !823)
!827 = !DILocation(line: 68, column: 9, scope: !823)
!828 = !DILocation(line: 69, column: 7, scope: !817)
!829 = !DILocation(line: 0, scope: !794)
!830 = !DILocation(line: 68, column: 22, scope: !795)
!831 = !DILocation(line: 0, scope: !750)
!832 = distinct !{!832, !735, !833}
!833 = !DILocation(line: 70, column: 3, scope: !736)
!834 = !DILocation(line: 72, column: 3, scope: !736)
!835 = !DILocation(line: 72, column: 6, scope: !738)
!836 = !DILocation(line: 74, column: 3, scope: !738)
!837 = distinct !DISubprogram(name: "primal_update_flow", scope: !838, file: !838, line: 21, type: !839, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!838 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/pflowup.c", directory: "")
!839 = !DISubroutineType(types: !840)
!840 = !{null, !15, !15, !15}
!841 = !DILocalVariable(name: "iplus", arg: 1, scope: !837, file: !838, line: 21, type: !15)
!842 = !DILocation(line: 0, scope: !837)
!843 = !DILocalVariable(name: "jplus", arg: 2, scope: !837, file: !838, line: 21, type: !15)
!844 = !DILocalVariable(name: "w", arg: 3, scope: !837, file: !838, line: 21, type: !15)
!845 = !DILocation(line: 32, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !838, line: 27, column: 3)
!847 = distinct !DILexicalBlock(scope: !848, file: !838, line: 26, column: 3)
!848 = distinct !DILexicalBlock(scope: !837, file: !838, line: 25, column: 3)
!849 = !DILocation(line: 32, column: 13, scope: !846)
!850 = !DILocation(line: 32, column: 12, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !838, line: 32, column: 9)
!852 = distinct !DILexicalBlock(scope: !846, file: !838, line: 32, column: 13)
!853 = !DILocation(line: 32, column: 37, scope: !851)
!854 = !DILocation(line: 32, column: 34, scope: !851)
!855 = !DILocation(line: 32, column: 9, scope: !852)
!856 = !DILocation(line: 32, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !838, line: 32, column: 57)
!858 = !DILocation(line: 34, column: 16, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !838, line: 34, column: 9)
!860 = !DILocation(line: 34, column: 9, scope: !859)
!861 = !DILocation(line: 34, column: 9, scope: !852)
!862 = !DILocation(line: 35, column: 14, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !838, line: 34, column: 29)
!864 = !DILocation(line: 35, column: 19, scope: !863)
!865 = !DILocation(line: 36, column: 5, scope: !863)
!866 = !DILocation(line: 37, column: 14, scope: !867)
!867 = distinct !DILexicalBlock(scope: !859, file: !838, line: 36, column: 12)
!868 = !DILocation(line: 37, column: 19, scope: !867)
!869 = !DILocation(line: 32, column: 20, scope: !852)
!870 = distinct !{!870, !845, !871}
!871 = !DILocation(line: 33, column: 3, scope: !846)
!872 = !DILocation(line: 35, column: 3, scope: !846)
!873 = !DILocation(line: 40, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !838, line: 39, column: 3)
!875 = distinct !DILexicalBlock(scope: !848, file: !838, line: 38, column: 3)
!876 = !DILocation(line: 40, column: 13, scope: !874)
!877 = !DILocation(line: 40, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !838, line: 40, column: 9)
!879 = distinct !DILexicalBlock(scope: !874, file: !838, line: 40, column: 13)
!880 = !DILocation(line: 40, column: 37, scope: !878)
!881 = !DILocation(line: 40, column: 34, scope: !878)
!882 = !DILocation(line: 40, column: 9, scope: !879)
!883 = !DILocation(line: 40, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !878, file: !838, line: 40, column: 57)
!885 = !DILocation(line: 42, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !879, file: !838, line: 42, column: 9)
!887 = !DILocation(line: 42, column: 9, scope: !886)
!888 = !DILocation(line: 42, column: 9, scope: !879)
!889 = !DILocation(line: 43, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !838, line: 42, column: 29)
!891 = !DILocation(line: 43, column: 19, scope: !890)
!892 = !DILocation(line: 44, column: 5, scope: !890)
!893 = !DILocation(line: 45, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !886, file: !838, line: 44, column: 12)
!895 = !DILocation(line: 45, column: 19, scope: !894)
!896 = !DILocation(line: 40, column: 20, scope: !879)
!897 = distinct !{!897, !873, !898}
!898 = !DILocation(line: 41, column: 3, scope: !874)
!899 = !DILocation(line: 43, column: 3, scope: !874)
!900 = !DILocation(line: 47, column: 3, scope: !848)
!901 = distinct !DISubprogram(name: "update_tree", scope: !902, file: !902, line: 22, type: !903, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!902 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/treeup.c", directory: "")
!903 = !DISubroutineType(types: !904)
!904 = !{null, !9, !9, !36, !36, !15, !15, !15, !15, !15, !10, !7, !36}
!905 = !DILocalVariable(name: "cycle_ori", arg: 1, scope: !901, file: !902, line: 22, type: !9)
!906 = !DILocation(line: 0, scope: !901)
!907 = !DILocalVariable(name: "new_orientation", arg: 2, scope: !901, file: !902, line: 22, type: !9)
!908 = !DILocalVariable(name: "delta", arg: 3, scope: !901, file: !902, line: 22, type: !36)
!909 = !DILocalVariable(name: "new_flow", arg: 4, scope: !901, file: !902, line: 22, type: !36)
!910 = !DILocalVariable(name: "iplus", arg: 5, scope: !901, file: !902, line: 23, type: !15)
!911 = !DILocalVariable(name: "jplus", arg: 6, scope: !901, file: !902, line: 23, type: !15)
!912 = !DILocalVariable(name: "iminus", arg: 7, scope: !901, file: !902, line: 23, type: !15)
!913 = !DILocalVariable(name: "jminus", arg: 8, scope: !901, file: !902, line: 23, type: !15)
!914 = !DILocalVariable(name: "w", arg: 9, scope: !901, file: !902, line: 24, type: !15)
!915 = !DILocalVariable(name: "bea", arg: 10, scope: !901, file: !902, line: 24, type: !10)
!916 = !DILocalVariable(name: "sigma", arg: 11, scope: !901, file: !902, line: 24, type: !7)
!917 = !DILocalVariable(name: "feas_tol", arg: 12, scope: !901, file: !902, line: 24, type: !36)
!918 = !DILocation(line: 64, column: 28, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !902, line: 64, column: 7)
!920 = distinct !DILexicalBlock(scope: !901, file: !902, line: 38, column: 3)
!921 = !DILocation(line: 64, column: 7, scope: !919)
!922 = !DILocation(line: 64, column: 36, scope: !919)
!923 = !DILocation(line: 64, column: 33, scope: !919)
!924 = !DILocation(line: 64, column: 7, scope: !920)
!925 = !DILocation(line: 64, column: 15, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !902, line: 64, column: 9)
!927 = distinct !DILexicalBlock(scope: !919, file: !902, line: 64, column: 59)
!928 = !DILocation(line: 64, column: 9, scope: !927)
!929 = !DILocation(line: 64, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !902, line: 64, column: 21)
!931 = !DILocation(line: 64, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !902, line: 65, column: 12)
!933 = !DILocation(line: 66, column: 3, scope: !927)
!934 = !DILocation(line: 64, column: 28, scope: !935)
!935 = distinct !DILexicalBlock(scope: !919, file: !902, line: 64, column: 7)
!936 = !DILocation(line: 64, column: 7, scope: !935)
!937 = !DILocation(line: 64, column: 36, scope: !935)
!938 = !DILocation(line: 64, column: 33, scope: !935)
!939 = !DILocation(line: 64, column: 15, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !902, line: 64, column: 9)
!941 = distinct !DILexicalBlock(scope: !935, file: !902, line: 64, column: 59)
!942 = !DILocation(line: 64, column: 9, scope: !941)
!943 = !DILocation(line: 64, column: 21, scope: !940)
!944 = !DILocation(line: 66, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !902, line: 66, column: 11)
!946 = distinct !DILexicalBlock(scope: !940, file: !902, line: 64, column: 21)
!947 = !DILocation(line: 66, column: 11, scope: !946)
!948 = !DILocation(line: 67, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !902, line: 66, column: 24)
!950 = !DILocation(line: 66, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !945, file: !902, line: 67, column: 14)
!952 = !DILocation(line: 0, scope: !945)
!953 = !DILocation(line: 68, column: 5, scope: !946)
!954 = !DILocation(line: 64, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !940, file: !902, line: 68, column: 12)
!956 = !DILocation(line: 66, column: 3, scope: !941)
!957 = !DILocation(line: 66, column: 10, scope: !935)
!958 = !DILocation(line: 68, column: 15, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !902, line: 68, column: 9)
!960 = distinct !DILexicalBlock(scope: !935, file: !902, line: 66, column: 10)
!961 = !DILocation(line: 68, column: 9, scope: !960)
!962 = !DILocalVariable(name: "tmp", scope: !901, file: !902, line: 36, type: !7)
!963 = !DILocation(line: 69, column: 5, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !902, line: 68, column: 22)
!965 = !DILocation(line: 68, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !902, line: 69, column: 12)
!967 = !DILocation(line: 0, scope: !959)
!968 = !DILocation(line: 68, column: 13, scope: !960)
!969 = !DILocation(line: 0, scope: !935)
!970 = !DILocalVariable(name: "father", scope: !901, file: !902, line: 28, type: !15)
!971 = !DILocation(line: 71, column: 11, scope: !920)
!972 = !DILocation(line: 71, column: 21, scope: !920)
!973 = !DILocation(line: 71, column: 3, scope: !920)
!974 = !DILocation(line: 0, scope: !920)
!975 = !DILocation(line: 73, column: 18, scope: !920)
!976 = !DILocalVariable(name: "temp", scope: !901, file: !902, line: 29, type: !15)
!977 = !DILocation(line: 74, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !920, file: !902, line: 74, column: 7)
!979 = !DILocation(line: 74, column: 7, scope: !920)
!980 = !DILocation(line: 74, column: 13, scope: !978)
!981 = !DILocation(line: 77, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !902, line: 74, column: 13)
!983 = !DILocation(line: 77, column: 21, scope: !982)
!984 = !DILocation(line: 79, column: 5, scope: !982)
!985 = !DILocation(line: 82, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !920, file: !902, line: 82, column: 7)
!987 = !DILocation(line: 82, column: 33, scope: !986)
!988 = !DILocation(line: 82, column: 30, scope: !986)
!989 = !DILocation(line: 82, column: 7, scope: !920)
!990 = !DILocation(line: 83, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !902, line: 82, column: 57)
!992 = !DILocation(line: 84, column: 18, scope: !920)
!993 = !DILocation(line: 85, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !920, file: !902, line: 85, column: 7)
!995 = !DILocation(line: 85, column: 7, scope: !920)
!996 = !DILocation(line: 86, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !902, line: 85, column: 13)
!998 = !DILocation(line: 87, column: 20, scope: !920)
!999 = !DILocation(line: 88, column: 3, scope: !920)
!1000 = !DILocation(line: 95, column: 18, scope: !920)
!1001 = !DILocation(line: 96, column: 26, scope: !920)
!1002 = !DILocalVariable(name: "depth_iminus", scope: !901, file: !902, line: 33, type: !9)
!1003 = !DILocalVariable(name: "new_depth", scope: !901, file: !902, line: 34, type: !9)
!1004 = !DILocalVariable(name: "new_pred", scope: !901, file: !902, line: 30, type: !15)
!1005 = !DILocalVariable(name: "new_basic_arc", scope: !901, file: !902, line: 27, type: !10)
!1006 = !DILocation(line: 99, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !902, line: 100, column: 3)
!1008 = distinct !DILexicalBlock(scope: !920, file: !902, line: 99, column: 3)
!1009 = !DILocation(line: 99, column: 13, scope: !1007)
!1010 = !DILocation(line: 99, column: 12, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !902, line: 99, column: 9)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !902, line: 99, column: 13)
!1013 = !DILocation(line: 99, column: 36, scope: !1011)
!1014 = !DILocation(line: 99, column: 33, scope: !1011)
!1015 = !DILocation(line: 99, column: 9, scope: !1012)
!1016 = !DILocation(line: 99, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !902, line: 99, column: 61)
!1018 = !DILocation(line: 101, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !902, line: 101, column: 9)
!1020 = !DILocation(line: 101, column: 9, scope: !1019)
!1021 = !DILocation(line: 101, column: 9, scope: !1012)
!1022 = !DILocation(line: 102, column: 45, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !902, line: 101, column: 24)
!1024 = !DILocation(line: 102, column: 14, scope: !1023)
!1025 = !DILocation(line: 102, column: 24, scope: !1023)
!1026 = !DILocation(line: 102, column: 37, scope: !1023)
!1027 = !DILocation(line: 103, column: 5, scope: !1023)
!1028 = !DILocation(line: 103, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1012, file: !902, line: 103, column: 9)
!1030 = !DILocation(line: 103, column: 9, scope: !1029)
!1031 = !DILocation(line: 103, column: 9, scope: !1012)
!1032 = !DILocation(line: 104, column: 45, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !902, line: 103, column: 29)
!1034 = !DILocation(line: 104, column: 14, scope: !1033)
!1035 = !DILocation(line: 104, column: 29, scope: !1033)
!1036 = !DILocation(line: 104, column: 37, scope: !1033)
!1037 = !DILocation(line: 105, column: 5, scope: !1033)
!1038 = !DILocation(line: 105, column: 29, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !902, line: 105, column: 12)
!1040 = !DILocation(line: 105, column: 15, scope: !1039)
!1041 = !DILocation(line: 105, column: 21, scope: !1039)
!1042 = !DILocation(line: 108, column: 11, scope: !1012)
!1043 = !DILocation(line: 108, column: 16, scope: !1012)
!1044 = !DILocation(line: 109, column: 31, scope: !1012)
!1045 = !DILocation(line: 109, column: 11, scope: !1012)
!1046 = !DILocation(line: 109, column: 19, scope: !1012)
!1047 = !DILocation(line: 110, column: 15, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1012, file: !902, line: 110, column: 9)
!1049 = !DILocation(line: 110, column: 9, scope: !1048)
!1050 = !DILocation(line: 110, column: 9, scope: !1012)
!1051 = !DILocation(line: 111, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !902, line: 110, column: 24)
!1053 = !DILocation(line: 111, column: 24, scope: !1052)
!1054 = !DILocation(line: 111, column: 37, scope: !1052)
!1055 = !DILocation(line: 112, column: 5, scope: !1052)
!1056 = !DILocation(line: 112, column: 15, scope: !1012)
!1057 = !DILocation(line: 112, column: 21, scope: !1012)
!1058 = !DILocation(line: 113, column: 11, scope: !1012)
!1059 = !DILocation(line: 113, column: 24, scope: !1012)
!1060 = !DILocation(line: 115, column: 40, scope: !1012)
!1061 = !DILocation(line: 115, column: 32, scope: !1012)
!1062 = !DILocation(line: 115, column: 24, scope: !1012)
!1063 = !DILocalVariable(name: "orientation_temp", scope: !901, file: !902, line: 31, type: !9)
!1064 = !DILocation(line: 116, column: 26, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1012, file: !902, line: 116, column: 9)
!1066 = !DILocation(line: 116, column: 9, scope: !1012)
!1067 = !DILocation(line: 117, column: 25, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !902, line: 116, column: 40)
!1069 = !DILocation(line: 117, column: 30, scope: !1068)
!1070 = !DILocalVariable(name: "flow_temp", scope: !901, file: !902, line: 35, type: !36)
!1071 = !DILocation(line: 118, column: 5, scope: !1068)
!1072 = !DILocation(line: 119, column: 25, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !902, line: 118, column: 12)
!1074 = !DILocation(line: 119, column: 30, scope: !1073)
!1075 = !DILocation(line: 0, scope: !1065)
!1076 = !DILocation(line: 120, column: 28, scope: !1012)
!1077 = !DILocalVariable(name: "basic_arc_temp", scope: !901, file: !902, line: 26, type: !10)
!1078 = !DILocation(line: 121, column: 24, scope: !1012)
!1079 = !DILocalVariable(name: "depth_temp", scope: !901, file: !902, line: 32, type: !9)
!1080 = !DILocation(line: 123, column: 11, scope: !1012)
!1081 = !DILocation(line: 123, column: 23, scope: !1012)
!1082 = !DILocation(line: 124, column: 11, scope: !1012)
!1083 = !DILocation(line: 124, column: 16, scope: !1012)
!1084 = !DILocation(line: 125, column: 11, scope: !1012)
!1085 = !DILocation(line: 125, column: 21, scope: !1012)
!1086 = !DILocation(line: 126, column: 11, scope: !1012)
!1087 = !DILocation(line: 126, column: 17, scope: !1012)
!1088 = !DILocation(line: 132, column: 30, scope: !1012)
!1089 = !DILocation(line: 134, column: 20, scope: !1012)
!1090 = distinct !{!1090, !1006, !1091}
!1091 = !DILocation(line: 135, column: 3, scope: !1007)
!1092 = !DILocation(line: 137, column: 3, scope: !1007)
!1093 = !DILocation(line: 137, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !920, file: !902, line: 137, column: 7)
!1095 = !DILocation(line: 137, column: 7, scope: !920)
!1096 = !DILocation(line: 139, column: 5, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !902, line: 141, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !902, line: 140, column: 5)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !902, line: 137, column: 25)
!1100 = !DILocation(line: 0, scope: !1099)
!1101 = !DILocation(line: 139, column: 15, scope: !1097)
!1102 = !DILocation(line: 139, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !902, line: 139, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1097, file: !902, line: 139, column: 15)
!1105 = !DILocation(line: 139, column: 38, scope: !1103)
!1106 = !DILocation(line: 139, column: 35, scope: !1103)
!1107 = !DILocation(line: 139, column: 11, scope: !1104)
!1108 = !DILocation(line: 139, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !902, line: 139, column: 58)
!1110 = !DILocation(line: 141, column: 13, scope: !1104)
!1111 = !DILocation(line: 141, column: 19, scope: !1104)
!1112 = !DILocation(line: 142, column: 17, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !902, line: 142, column: 11)
!1114 = !DILocation(line: 142, column: 29, scope: !1113)
!1115 = !DILocation(line: 142, column: 11, scope: !1104)
!1116 = !DILocation(line: 143, column: 15, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !902, line: 142, column: 43)
!1118 = !DILocation(line: 143, column: 20, scope: !1117)
!1119 = !DILocation(line: 144, column: 7, scope: !1117)
!1120 = !DILocation(line: 145, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !902, line: 144, column: 14)
!1122 = !DILocation(line: 145, column: 20, scope: !1121)
!1123 = !DILocation(line: 139, column: 20, scope: !1104)
!1124 = distinct !{!1124, !1096, !1125}
!1125 = !DILocation(line: 140, column: 5, scope: !1097)
!1126 = !DILocation(line: 142, column: 5, scope: !1097)
!1127 = !DILocation(line: 147, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !902, line: 149, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1099, file: !902, line: 148, column: 5)
!1130 = !DILocation(line: 147, column: 15, scope: !1128)
!1131 = !DILocation(line: 147, column: 14, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !902, line: 147, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !902, line: 147, column: 15)
!1134 = !DILocation(line: 147, column: 38, scope: !1132)
!1135 = !DILocation(line: 147, column: 35, scope: !1132)
!1136 = !DILocation(line: 147, column: 11, scope: !1133)
!1137 = !DILocation(line: 147, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !902, line: 147, column: 58)
!1139 = !DILocation(line: 149, column: 13, scope: !1133)
!1140 = !DILocation(line: 149, column: 19, scope: !1133)
!1141 = !DILocation(line: 150, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1133, file: !902, line: 150, column: 11)
!1143 = !DILocation(line: 150, column: 29, scope: !1142)
!1144 = !DILocation(line: 150, column: 11, scope: !1133)
!1145 = !DILocation(line: 151, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !902, line: 150, column: 43)
!1147 = !DILocation(line: 151, column: 20, scope: !1146)
!1148 = !DILocation(line: 152, column: 7, scope: !1146)
!1149 = !DILocation(line: 153, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !902, line: 152, column: 14)
!1151 = !DILocation(line: 153, column: 20, scope: !1150)
!1152 = !DILocation(line: 147, column: 20, scope: !1133)
!1153 = distinct !{!1153, !1127, !1154}
!1154 = !DILocation(line: 148, column: 5, scope: !1128)
!1155 = !DILocation(line: 150, column: 5, scope: !1128)
!1156 = !DILocation(line: 153, column: 3, scope: !1099)
!1157 = !DILocation(line: 158, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !902, line: 160, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !902, line: 159, column: 5)
!1160 = distinct !DILexicalBlock(scope: !1094, file: !902, line: 153, column: 10)
!1161 = !DILocation(line: 0, scope: !1160)
!1162 = !DILocation(line: 158, column: 15, scope: !1158)
!1163 = !DILocation(line: 158, column: 14, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !902, line: 158, column: 11)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !902, line: 158, column: 15)
!1166 = !DILocation(line: 158, column: 38, scope: !1164)
!1167 = !DILocation(line: 158, column: 35, scope: !1164)
!1168 = !DILocation(line: 158, column: 11, scope: !1165)
!1169 = !DILocation(line: 158, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !902, line: 158, column: 58)
!1171 = !DILocation(line: 159, column: 13, scope: !1165)
!1172 = !DILocation(line: 159, column: 19, scope: !1165)
!1173 = !DILocation(line: 158, column: 20, scope: !1165)
!1174 = distinct !{!1174, !1157, !1175}
!1175 = !DILocation(line: 159, column: 5, scope: !1158)
!1176 = !DILocation(line: 161, column: 5, scope: !1158)
!1177 = !DILocation(line: 160, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !902, line: 162, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1160, file: !902, line: 161, column: 5)
!1180 = !DILocation(line: 160, column: 15, scope: !1178)
!1181 = !DILocation(line: 160, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !902, line: 160, column: 11)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !902, line: 160, column: 15)
!1184 = !DILocation(line: 160, column: 38, scope: !1182)
!1185 = !DILocation(line: 160, column: 35, scope: !1182)
!1186 = !DILocation(line: 160, column: 11, scope: !1183)
!1187 = !DILocation(line: 160, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !902, line: 160, column: 58)
!1189 = !DILocation(line: 161, column: 13, scope: !1183)
!1190 = !DILocation(line: 161, column: 19, scope: !1183)
!1191 = !DILocation(line: 160, column: 20, scope: !1183)
!1192 = distinct !{!1192, !1177, !1193}
!1193 = !DILocation(line: 161, column: 5, scope: !1178)
!1194 = !DILocation(line: 163, column: 5, scope: !1178)
!1195 = !DILocation(line: 164, column: 3, scope: !920)
!1196 = distinct !DISubprogram(name: "refresh_potential", scope: !1197, file: !1197, line: 64, type: !530, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1197 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/mcfutil.c", directory: "")
!1198 = !DILocalVariable(name: "net___0", arg: 1, scope: !1196, file: !1197, line: 64, type: !532)
!1199 = !DILocation(line: 0, scope: !1196)
!1200 = !DILocation(line: 70, column: 19, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !1197, line: 72, column: 3)
!1202 = !DILocalVariable(name: "stop", scope: !1196, file: !1197, line: 66, type: !15)
!1203 = !DILocation(line: 72, column: 19, scope: !1201)
!1204 = !DILocalVariable(name: "root", scope: !1196, file: !1197, line: 69, type: !15)
!1205 = !DILocalVariable(name: "checksum", scope: !1196, file: !1197, line: 70, type: !9)
!1206 = !DILocalVariable(name: "node", scope: !1196, file: !1197, line: 67, type: !15)
!1207 = !DILocation(line: 75, column: 19, scope: !1201)
!1208 = !DILocation(line: 75, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !1197, line: 77, column: 3)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !1197, line: 76, column: 3)
!1211 = !DILocation(line: 0, scope: !1201)
!1212 = !DILocation(line: 75, column: 13, scope: !1209)
!1213 = !DILocation(line: 75, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1197, line: 75, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !1197, line: 75, column: 13)
!1216 = !DILocation(line: 75, column: 35, scope: !1214)
!1217 = !DILocation(line: 75, column: 33, scope: !1214)
!1218 = !DILocation(line: 75, column: 9, scope: !1215)
!1219 = !DILocation(line: 75, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !1197, line: 75, column: 58)
!1221 = !DILocation(line: 76, column: 11, scope: !1215)
!1222 = !DILocation(line: 76, column: 16, scope: !1215)
!1223 = !DILocation(line: 75, column: 10, scope: !1215)
!1224 = distinct !{!1224, !1208, !1225}
!1225 = !DILocation(line: 76, column: 3, scope: !1209)
!1226 = !DILocation(line: 78, column: 3, scope: !1209)
!1227 = !DILocation(line: 78, column: 9, scope: !1201)
!1228 = !DILocation(line: 78, column: 19, scope: !1201)
!1229 = !DILocation(line: 79, column: 16, scope: !1201)
!1230 = !DILocalVariable(name: "tmp", scope: !1196, file: !1197, line: 68, type: !15)
!1231 = !DILocation(line: 80, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !1197, line: 81, column: 3)
!1233 = distinct !DILexicalBlock(scope: !1201, file: !1197, line: 80, column: 3)
!1234 = !DILocation(line: 73, column: 12, scope: !1201)
!1235 = !DILocation(line: 80, column: 13, scope: !1232)
!1236 = !DILocation(line: 80, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1197, line: 80, column: 9)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !1197, line: 80, column: 13)
!1239 = !DILocation(line: 80, column: 36, scope: !1237)
!1240 = !DILocation(line: 80, column: 33, scope: !1237)
!1241 = !DILocation(line: 80, column: 9, scope: !1238)
!1242 = !DILocation(line: 80, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !1197, line: 80, column: 59)
!1244 = !DILocation(line: 82, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !1197, line: 83, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !1197, line: 82, column: 5)
!1247 = !DILocation(line: 82, column: 15, scope: !1245)
!1248 = !DILocation(line: 82, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1197, line: 82, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !1197, line: 82, column: 15)
!1251 = !DILocation(line: 82, column: 11, scope: !1250)
!1252 = !DILocation(line: 82, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !1197, line: 82, column: 19)
!1254 = !DILocation(line: 84, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !1197, line: 84, column: 11)
!1256 = !DILocation(line: 84, column: 29, scope: !1255)
!1257 = !DILocation(line: 84, column: 11, scope: !1250)
!1258 = !DILocation(line: 85, column: 34, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !1197, line: 84, column: 36)
!1260 = !DILocation(line: 85, column: 46, scope: !1259)
!1261 = !DILocation(line: 85, column: 60, scope: !1259)
!1262 = !DILocation(line: 85, column: 67, scope: !1259)
!1263 = !DILocation(line: 85, column: 51, scope: !1259)
!1264 = !DILocation(line: 85, column: 15, scope: !1259)
!1265 = !DILocation(line: 85, column: 25, scope: !1259)
!1266 = !DILocation(line: 86, column: 7, scope: !1259)
!1267 = !DILocation(line: 88, column: 34, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1255, file: !1197, line: 86, column: 14)
!1269 = !DILocation(line: 88, column: 41, scope: !1268)
!1270 = !DILocation(line: 88, column: 60, scope: !1268)
!1271 = !DILocation(line: 88, column: 72, scope: !1268)
!1272 = !DILocation(line: 88, column: 51, scope: !1268)
!1273 = !DILocation(line: 88, column: 15, scope: !1268)
!1274 = !DILocation(line: 88, column: 25, scope: !1268)
!1275 = !DILocation(line: 89, column: 18, scope: !1268)
!1276 = !DILocation(line: 93, column: 20, scope: !1250)
!1277 = distinct !{!1277, !1244, !1278}
!1278 = !DILocation(line: 94, column: 5, scope: !1245)
!1279 = !DILocation(line: 96, column: 5, scope: !1245)
!1280 = !DILocation(line: 98, column: 5, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1197, line: 98, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1238, file: !1197, line: 97, column: 5)
!1283 = !DILocation(line: 0, scope: !1238)
!1284 = !DILocation(line: 98, column: 15, scope: !1281)
!1285 = !DILocation(line: 98, column: 19, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !1197, line: 98, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !1197, line: 98, column: 15)
!1288 = !DILocation(line: 98, column: 13, scope: !1286)
!1289 = !DILocation(line: 98, column: 11, scope: !1287)
!1290 = !DILocation(line: 98, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !1197, line: 98, column: 25)
!1292 = !DILocation(line: 100, column: 19, scope: !1287)
!1293 = !DILocation(line: 101, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1287, file: !1197, line: 101, column: 11)
!1295 = !DILocation(line: 101, column: 11, scope: !1287)
!1296 = !DILocation(line: 104, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1197, line: 101, column: 16)
!1298 = !DILocation(line: 107, column: 22, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !1197, line: 105, column: 14)
!1300 = distinct !{!1300, !1280, !1301}
!1301 = !DILocation(line: 109, column: 5, scope: !1281)
!1302 = !DILocation(line: 111, column: 5, scope: !1281)
!1303 = distinct !{!1303, !1231, !1304}
!1304 = !DILocation(line: 114, column: 3, scope: !1232)
!1305 = !DILocation(line: 116, column: 3, scope: !1232)
!1306 = !DILocation(line: 111, column: 3, scope: !1201)
!1307 = distinct !DISubprogram(name: "primal_feasible", scope: !1197, file: !1197, line: 240, type: !530, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1308 = !DILocalVariable(name: "net___0", arg: 1, scope: !1307, file: !1197, line: 240, type: !532)
!1309 = !DILocation(line: 0, scope: !1307)
!1310 = !DILocalVariable(name: "__cil_tmp9", scope: !1307, file: !1197, line: 249, type: !21)
!1311 = !DILocation(line: 249, column: 9, scope: !1307)
!1312 = !DILocalVariable(name: "__cil_tmp10", scope: !1307, file: !1197, line: 250, type: !21)
!1313 = !DILocation(line: 250, column: 9, scope: !1307)
!1314 = !DILocalVariable(name: "__cil_tmp11", scope: !1307, file: !1197, line: 251, type: !21)
!1315 = !DILocation(line: 251, column: 9, scope: !1307)
!1316 = !DILocalVariable(name: "__cil_tmp12", scope: !1307, file: !1197, line: 252, type: !21)
!1317 = !DILocation(line: 252, column: 9, scope: !1307)
!1318 = !DILocalVariable(name: "__cil_tmp13", scope: !1307, file: !1197, line: 253, type: !21)
!1319 = !DILocation(line: 253, column: 9, scope: !1307)
!1320 = !DILocalVariable(name: "__cil_tmp14", scope: !1307, file: !1197, line: 254, type: !21)
!1321 = !DILocation(line: 254, column: 9, scope: !1307)
!1322 = !DILocation(line: 248, column: 20, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1307, file: !1197, line: 256, column: 3)
!1324 = !DILocalVariable(name: "dummy", scope: !1307, file: !1197, line: 244, type: !10)
!1325 = !DILocation(line: 249, column: 25, scope: !1323)
!1326 = !DILocalVariable(name: "stop_dummy", scope: !1307, file: !1197, line: 245, type: !10)
!1327 = !DILocation(line: 254, column: 19, scope: !1323)
!1328 = !DILocalVariable(name: "node", scope: !1307, file: !1197, line: 243, type: !15)
!1329 = !DILocation(line: 255, column: 27, scope: !1323)
!1330 = !DILocation(line: 255, column: 10, scope: !1323)
!1331 = !DILocalVariable(name: "stop", scope: !1307, file: !1197, line: 242, type: !49)
!1332 = !DILocation(line: 257, column: 8, scope: !1323)
!1333 = !DILocation(line: 257, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !1197, line: 259, column: 3)
!1335 = distinct !DILexicalBlock(scope: !1323, file: !1197, line: 258, column: 3)
!1336 = !DILocation(line: 0, scope: !1323)
!1337 = !DILocation(line: 257, column: 13, scope: !1334)
!1338 = !DILocation(line: 257, column: 12, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1197, line: 257, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !1197, line: 257, column: 13)
!1341 = !DILocation(line: 257, column: 52, scope: !1339)
!1342 = !DILocation(line: 257, column: 35, scope: !1339)
!1343 = !DILocation(line: 257, column: 33, scope: !1339)
!1344 = !DILocation(line: 257, column: 9, scope: !1340)
!1345 = !DILocation(line: 257, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !1197, line: 257, column: 70)
!1347 = !DILocation(line: 259, column: 17, scope: !1340)
!1348 = !DILocalVariable(name: "arc", scope: !1307, file: !1197, line: 246, type: !10)
!1349 = !DILocation(line: 260, column: 18, scope: !1340)
!1350 = !DILocalVariable(name: "flow", scope: !1307, file: !1197, line: 247, type: !36)
!1351 = !DILocation(line: 261, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1340, file: !1197, line: 261, column: 9)
!1353 = !DILocation(line: 261, column: 32, scope: !1352)
!1354 = !DILocation(line: 261, column: 29, scope: !1352)
!1355 = !DILocation(line: 261, column: 9, scope: !1340)
!1356 = !DILocation(line: 261, column: 11, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !1197, line: 261, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !1197, line: 261, column: 55)
!1359 = !DILocation(line: 261, column: 33, scope: !1357)
!1360 = !DILocation(line: 261, column: 31, scope: !1357)
!1361 = !DILocation(line: 261, column: 11, scope: !1358)
!1362 = !DILocation(line: 263, column: 18, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1197, line: 263, column: 13)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !1197, line: 261, column: 61)
!1365 = !DILocation(line: 263, column: 13, scope: !1364)
!1366 = !DILocalVariable(name: "tmp", scope: !1307, file: !1197, line: 248, type: !36)
!1367 = !DILocation(line: 264, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !1197, line: 263, column: 25)
!1369 = !DILocation(line: 263, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1363, file: !1197, line: 264, column: 16)
!1371 = !DILocation(line: 0, scope: !1363)
!1372 = !DILocation(line: 263, column: 28, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !1197, line: 263, column: 13)
!1374 = !DILocation(line: 263, column: 17, scope: !1373)
!1375 = !DILocation(line: 265, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1197, line: 265, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !1197, line: 264, column: 11)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !1197, line: 263, column: 38)
!1379 = !DILocation(line: 267, column: 24, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !1197, line: 267, column: 11)
!1381 = !DILocation(line: 266, column: 11, scope: !1380)
!1382 = !DILocation(line: 270, column: 9, scope: !1378)
!1383 = !DILocation(line: 271, column: 7, scope: !1364)
!1384 = !DILocation(line: 261, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1357, file: !1197, line: 271, column: 14)
!1386 = !DILocation(line: 263, column: 5, scope: !1358)
!1387 = !DILocation(line: 272, column: 27, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1352, file: !1197, line: 272, column: 9)
!1389 = !DILocation(line: 272, column: 16, scope: !1388)
!1390 = !DILocation(line: 272, column: 14, scope: !1388)
!1391 = !DILocation(line: 272, column: 9, scope: !1352)
!1392 = !DILocation(line: 275, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1197, line: 274, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !1197, line: 273, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1388, file: !1197, line: 272, column: 37)
!1396 = !DILocation(line: 276, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !1197, line: 277, column: 7)
!1398 = !DILocation(line: 277, column: 16, scope: !1394)
!1399 = !DILocation(line: 277, column: 25, scope: !1394)
!1400 = !DILocation(line: 278, column: 7, scope: !1395)
!1401 = !DILocation(line: 272, column: 14, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !1197, line: 272, column: 9)
!1403 = !DILocation(line: 272, column: 30, scope: !1402)
!1404 = !DILocation(line: 272, column: 19, scope: !1402)
!1405 = !DILocation(line: 272, column: 9, scope: !1388)
!1406 = !DILocation(line: 275, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !1197, line: 274, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1197, line: 273, column: 7)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !1197, line: 272, column: 40)
!1410 = !DILocation(line: 276, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !1197, line: 277, column: 7)
!1412 = !DILocation(line: 277, column: 16, scope: !1408)
!1413 = !DILocation(line: 277, column: 25, scope: !1408)
!1414 = !DILocation(line: 278, column: 7, scope: !1409)
!1415 = !DILocation(line: 257, column: 10, scope: !1340)
!1416 = distinct !{!1416, !1333, !1417}
!1417 = !DILocation(line: 258, column: 3, scope: !1334)
!1418 = !DILocation(line: 260, column: 3, scope: !1334)
!1419 = !DILocation(line: 283, column: 12, scope: !1323)
!1420 = !DILocation(line: 283, column: 21, scope: !1323)
!1421 = !DILocation(line: 285, column: 3, scope: !1323)
!1422 = !DILocation(line: 287, column: 1, scope: !1307)
!1423 = distinct !DISubprogram(name: "dual_feasible", scope: !1197, file: !1197, line: 298, type: !530, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1424 = !DILocalVariable(name: "net___0", arg: 1, scope: !1423, file: !1197, line: 298, type: !532)
!1425 = !DILocation(line: 0, scope: !1423)
!1426 = !DILocalVariable(name: "__cil_tmp5", scope: !1423, file: !1197, line: 303, type: !21)
!1427 = !DILocation(line: 303, column: 9, scope: !1423)
!1428 = !DILocalVariable(name: "__cil_tmp6", scope: !1423, file: !1197, line: 304, type: !21)
!1429 = !DILocation(line: 304, column: 9, scope: !1423)
!1430 = !DILocation(line: 305, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !1197, line: 306, column: 3)
!1432 = !DILocalVariable(name: "stop", scope: !1423, file: !1197, line: 301, type: !10)
!1433 = !DILocation(line: 310, column: 18, scope: !1431)
!1434 = !DILocalVariable(name: "arc", scope: !1423, file: !1197, line: 300, type: !10)
!1435 = !DILocation(line: 310, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !1197, line: 312, column: 3)
!1437 = distinct !DILexicalBlock(scope: !1431, file: !1197, line: 311, column: 3)
!1438 = !DILocation(line: 0, scope: !1431)
!1439 = !DILocation(line: 310, column: 13, scope: !1436)
!1440 = !DILocation(line: 310, column: 12, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1197, line: 310, column: 9)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !1197, line: 310, column: 13)
!1443 = !DILocation(line: 310, column: 34, scope: !1441)
!1444 = !DILocation(line: 310, column: 32, scope: !1441)
!1445 = !DILocation(line: 310, column: 9, scope: !1442)
!1446 = !DILocation(line: 310, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !1197, line: 310, column: 57)
!1448 = !DILocation(line: 312, column: 22, scope: !1442)
!1449 = !DILocation(line: 312, column: 35, scope: !1442)
!1450 = !DILocation(line: 312, column: 42, scope: !1442)
!1451 = !DILocation(line: 312, column: 27, scope: !1442)
!1452 = !DILocation(line: 312, column: 61, scope: !1442)
!1453 = !DILocation(line: 312, column: 68, scope: !1442)
!1454 = !DILocation(line: 312, column: 53, scope: !1442)
!1455 = !DILocalVariable(name: "red_cost", scope: !1423, file: !1197, line: 302, type: !7)
!1456 = !DILocation(line: 329, column: 14, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !1197, line: 329, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1442, file: !1197, line: 313, column: 5)
!1459 = !DILocation(line: 329, column: 20, scope: !1457)
!1460 = !DILocation(line: 329, column: 9, scope: !1458)
!1461 = !DILocation(line: 329, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !1197, line: 329, column: 27)
!1463 = !DILocation(line: 329, column: 14, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !1197, line: 329, column: 9)
!1465 = !DILocation(line: 329, column: 20, scope: !1464)
!1466 = !DILocation(line: 329, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !1197, line: 329, column: 27)
!1468 = !DILocation(line: 339, column: 14, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1458, file: !1197, line: 339, column: 9)
!1470 = !DILocation(line: 339, column: 20, scope: !1469)
!1471 = !DILocation(line: 339, column: 9, scope: !1458)
!1472 = !DILocation(line: 339, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !1197, line: 339, column: 27)
!1474 = !DILocation(line: 350, column: 5, scope: !1458)
!1475 = !DILocation(line: 330, column: 31, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1458, file: !1197, line: 330, column: 9)
!1477 = !DILocation(line: 330, column: 20, scope: !1476)
!1478 = !DILocation(line: 330, column: 18, scope: !1476)
!1479 = !DILocation(line: 330, column: 9, scope: !1458)
!1480 = !DILocation(line: 335, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !1197, line: 330, column: 41)
!1482 = !DILocation(line: 338, column: 5, scope: !1458)
!1483 = !DILocation(line: 340, column: 29, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1458, file: !1197, line: 340, column: 9)
!1485 = !DILocation(line: 340, column: 18, scope: !1484)
!1486 = !DILocation(line: 340, column: 9, scope: !1458)
!1487 = !DILocation(line: 345, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !1197, line: 340, column: 39)
!1489 = !DILocation(line: 348, column: 5, scope: !1458)
!1490 = !DILocation(line: 351, column: 5, scope: !1458)
!1491 = distinct !{!1491, !1435, !1492}
!1492 = !DILocation(line: 311, column: 3, scope: !1436)
!1493 = !DILocation(line: 313, column: 3, scope: !1436)
!1494 = !DILocation(line: 355, column: 3, scope: !1431)
!1495 = !DILocation(line: 358, column: 36, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !1197, line: 358, column: 3)
!1497 = distinct !DILexicalBlock(scope: !1431, file: !1197, line: 357, column: 3)
!1498 = !DILocation(line: 358, column: 3, scope: !1496)
!1499 = !DILocation(line: 359, column: 36, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !1197, line: 360, column: 3)
!1501 = !DILocation(line: 359, column: 3, scope: !1500)
!1502 = !DILocation(line: 360, column: 3, scope: !1431)
!1503 = !DILocation(line: 362, column: 1, scope: !1423)
!1504 = distinct !DISubprogram(name: "write_circulations", scope: !1505, file: !1505, line: 23, type: !1506, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1505 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/output.c", directory: "")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!9, !21, !532}
!1508 = !DILocalVariable(name: "outfile", arg: 1, scope: !1504, file: !1505, line: 23, type: !21)
!1509 = !DILocation(line: 0, scope: !1504)
!1510 = !DILocalVariable(name: "net___0", arg: 2, scope: !1504, file: !1505, line: 23, type: !532)
!1511 = !DILocalVariable(name: "__cil_tmp8", scope: !1504, file: !1505, line: 30, type: !21)
!1512 = !DILocation(line: 30, column: 9, scope: !1504)
!1513 = !DILocalVariable(name: "__cil_tmp9", scope: !1504, file: !1505, line: 31, type: !21)
!1514 = !DILocation(line: 31, column: 9, scope: !1504)
!1515 = !DILocalVariable(name: "__cil_tmp10", scope: !1504, file: !1505, line: 32, type: !21)
!1516 = !DILocation(line: 32, column: 9, scope: !1504)
!1517 = !DILocalVariable(name: "__cil_tmp11", scope: !1504, file: !1505, line: 33, type: !21)
!1518 = !DILocation(line: 33, column: 9, scope: !1504)
!1519 = !DILocalVariable(name: "out", scope: !1504, file: !1505, line: 25, type: !52)
!1520 = !DILocation(line: 38, column: 25, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1505, line: 36, column: 3)
!1522 = distinct !DILexicalBlock(scope: !1504, file: !1505, line: 35, column: 3)
!1523 = !DILocation(line: 38, column: 46, scope: !1521)
!1524 = !DILocation(line: 38, column: 35, scope: !1521)
!1525 = !DILocalVariable(name: "first_impl", scope: !1504, file: !1505, line: 29, type: !10)
!1526 = !DILocation(line: 40, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !1505, line: 39, column: 3)
!1528 = !DILocation(line: 40, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !1505, line: 40, column: 7)
!1530 = !DILocation(line: 40, column: 27, scope: !1529)
!1531 = !DILocation(line: 40, column: 7, scope: !1522)
!1532 = !DILocation(line: 41, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !1505, line: 40, column: 59)
!1534 = !DILocation(line: 43, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1505, line: 44, column: 3)
!1536 = distinct !DILexicalBlock(scope: !1522, file: !1505, line: 43, column: 3)
!1537 = !DILocation(line: 45, column: 21, scope: !1536)
!1538 = !DILocation(line: 45, column: 38, scope: !1536)
!1539 = !DILocation(line: 45, column: 27, scope: !1536)
!1540 = !DILocation(line: 45, column: 42, scope: !1536)
!1541 = !DILocalVariable(name: "block", scope: !1504, file: !1505, line: 26, type: !10)
!1542 = !DILocation(line: 45, column: 3, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !1505, line: 48, column: 3)
!1544 = distinct !DILexicalBlock(scope: !1522, file: !1505, line: 47, column: 3)
!1545 = !DILocation(line: 0, scope: !1522)
!1546 = !DILocation(line: 45, column: 13, scope: !1543)
!1547 = !DILocation(line: 45, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !1505, line: 45, column: 9)
!1549 = distinct !DILexicalBlock(scope: !1543, file: !1505, line: 45, column: 13)
!1550 = !DILocation(line: 45, column: 9, scope: !1549)
!1551 = !DILocation(line: 45, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !1505, line: 45, column: 18)
!1553 = !DILocation(line: 47, column: 16, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !1505, line: 47, column: 9)
!1555 = !DILocation(line: 47, column: 9, scope: !1554)
!1556 = !DILocation(line: 47, column: 9, scope: !1549)
!1557 = !DILocation(line: 49, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1505, line: 49, column: 7)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1505, line: 48, column: 7)
!1560 = distinct !DILexicalBlock(scope: !1554, file: !1505, line: 47, column: 22)
!1561 = !DILocalVariable(name: "arc", scope: !1504, file: !1505, line: 27, type: !10)
!1562 = !DILocation(line: 52, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !1505, line: 54, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !1505, line: 53, column: 7)
!1565 = !DILocation(line: 0, scope: !1560)
!1566 = !DILocation(line: 52, column: 17, scope: !1563)
!1567 = !DILocation(line: 52, column: 15, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 52, column: 13)
!1569 = distinct !DILexicalBlock(scope: !1563, file: !1505, line: 52, column: 17)
!1570 = !DILocation(line: 52, column: 13, scope: !1569)
!1571 = !DILocation(line: 52, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !1505, line: 52, column: 20)
!1573 = !DILocation(line: 54, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 54, column: 13)
!1575 = !DILocation(line: 54, column: 36, scope: !1574)
!1576 = !DILocation(line: 54, column: 33, scope: !1574)
!1577 = !DILocation(line: 54, column: 13, scope: !1569)
!1578 = !DILocation(line: 55, column: 11, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !1505, line: 56, column: 11)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !1505, line: 55, column: 11)
!1581 = distinct !DILexicalBlock(scope: !1574, file: !1505, line: 54, column: 64)
!1582 = !DILocation(line: 58, column: 9, scope: !1581)
!1583 = !DILocation(line: 58, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1505, line: 60, column: 9)
!1585 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 59, column: 9)
!1586 = !DILocation(line: 58, column: 32, scope: !1584)
!1587 = !DILocation(line: 58, column: 17, scope: !1584)
!1588 = !DILocation(line: 57, column: 9, scope: !1584)
!1589 = !DILocation(line: 58, column: 22, scope: !1585)
!1590 = !DILocation(line: 58, column: 38, scope: !1585)
!1591 = !DILocation(line: 58, column: 27, scope: !1585)
!1592 = !DILocation(line: 58, column: 48, scope: !1585)
!1593 = !DILocalVariable(name: "arc2", scope: !1504, file: !1505, line: 28, type: !10)
!1594 = !DILocation(line: 59, column: 9, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !1505, line: 61, column: 9)
!1596 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 60, column: 9)
!1597 = !DILocation(line: 0, scope: !1569)
!1598 = !DILocation(line: 59, column: 19, scope: !1595)
!1599 = !DILocation(line: 59, column: 17, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1505, line: 59, column: 15)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !1505, line: 59, column: 19)
!1602 = !DILocation(line: 59, column: 15, scope: !1601)
!1603 = !DILocation(line: 59, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !1505, line: 59, column: 23)
!1605 = !DILocation(line: 60, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !1505, line: 60, column: 15)
!1607 = !DILocation(line: 60, column: 15, scope: !1606)
!1608 = !DILocation(line: 60, column: 15, scope: !1601)
!1609 = !DILocation(line: 61, column: 13, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !1505, line: 60, column: 27)
!1611 = !DILocation(line: 59, column: 24, scope: !1601)
!1612 = distinct !{!1612, !1594, !1613}
!1613 = !DILocation(line: 60, column: 9, scope: !1595)
!1614 = !DILocation(line: 62, column: 9, scope: !1595)
!1615 = !DILocation(line: 62, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 62, column: 13)
!1617 = !DILocation(line: 62, column: 13, scope: !1569)
!1618 = !DILocation(line: 64, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !1505, line: 64, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1505, line: 63, column: 11)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !1505, line: 62, column: 21)
!1622 = !DILocation(line: 65, column: 11, scope: !1621)
!1623 = !DILocation(line: 68, column: 20, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1569, file: !1505, line: 68, column: 13)
!1625 = !DILocation(line: 68, column: 27, scope: !1624)
!1626 = !DILocation(line: 68, column: 13, scope: !1624)
!1627 = !DILocation(line: 68, column: 13, scope: !1569)
!1628 = !DILocation(line: 70, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !1505, line: 68, column: 35)
!1630 = !DILocation(line: 0, scope: !1624)
!1631 = distinct !{!1631, !1562, !1632}
!1632 = !DILocation(line: 73, column: 7, scope: !1563)
!1633 = !DILocation(line: 75, column: 7, scope: !1563)
!1634 = !DILocation(line: 78, column: 5, scope: !1560)
!1635 = !DILocation(line: 45, column: 20, scope: !1549)
!1636 = distinct !{!1636, !1542, !1637}
!1637 = !DILocation(line: 46, column: 3, scope: !1543)
!1638 = !DILocation(line: 48, column: 3, scope: !1543)
!1639 = !DILocation(line: 78, column: 3, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !1505, line: 52, column: 3)
!1641 = distinct !DILexicalBlock(scope: !1522, file: !1505, line: 51, column: 3)
!1642 = !DILocation(line: 80, column: 3, scope: !1522)
!1643 = !DILocation(line: 82, column: 1, scope: !1504)
!1644 = distinct !DISubprogram(name: "refresh_neighbour_lists", scope: !1197, file: !1197, line: 23, type: !1645, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !532}
!1647 = !DILocalVariable(name: "net___0", arg: 1, scope: !1644, file: !1197, line: 23, type: !532)
!1648 = !DILocation(line: 0, scope: !1644)
!1649 = !DILocation(line: 35, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !1197, line: 29, column: 3)
!1651 = !DILocalVariable(name: "node", scope: !1644, file: !1197, line: 25, type: !15)
!1652 = !DILocation(line: 36, column: 27, scope: !1650)
!1653 = !DILocation(line: 36, column: 10, scope: !1650)
!1654 = !DILocalVariable(name: "stop", scope: !1644, file: !1197, line: 27, type: !49)
!1655 = !DILocation(line: 36, column: 3, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !1197, line: 38, column: 3)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !1197, line: 37, column: 3)
!1658 = !DILocation(line: 0, scope: !1650)
!1659 = !DILocation(line: 36, column: 13, scope: !1656)
!1660 = !DILocation(line: 36, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !1197, line: 36, column: 9)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !1197, line: 36, column: 13)
!1663 = !DILocation(line: 36, column: 52, scope: !1661)
!1664 = !DILocation(line: 36, column: 35, scope: !1661)
!1665 = !DILocation(line: 36, column: 33, scope: !1661)
!1666 = !DILocation(line: 36, column: 9, scope: !1662)
!1667 = !DILocation(line: 36, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1661, file: !1197, line: 36, column: 70)
!1669 = !DILocation(line: 38, column: 11, scope: !1662)
!1670 = !DILocation(line: 38, column: 19, scope: !1662)
!1671 = !DILocation(line: 39, column: 11, scope: !1662)
!1672 = !DILocation(line: 39, column: 20, scope: !1662)
!1673 = !DILocation(line: 36, column: 10, scope: !1662)
!1674 = distinct !{!1674, !1655, !1675}
!1675 = !DILocation(line: 37, column: 3, scope: !1656)
!1676 = !DILocation(line: 39, column: 3, scope: !1656)
!1677 = !DILocation(line: 42, column: 18, scope: !1650)
!1678 = !DILocalVariable(name: "arc", scope: !1644, file: !1197, line: 26, type: !10)
!1679 = !DILocation(line: 43, column: 27, scope: !1650)
!1680 = !DILocation(line: 43, column: 10, scope: !1650)
!1681 = !DILocation(line: 43, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1197, line: 45, column: 3)
!1683 = distinct !DILexicalBlock(scope: !1650, file: !1197, line: 44, column: 3)
!1684 = !DILocation(line: 43, column: 13, scope: !1682)
!1685 = !DILocation(line: 43, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1197, line: 43, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !1197, line: 43, column: 13)
!1688 = !DILocation(line: 43, column: 51, scope: !1686)
!1689 = !DILocation(line: 43, column: 34, scope: !1686)
!1690 = !DILocation(line: 43, column: 32, scope: !1686)
!1691 = !DILocation(line: 43, column: 9, scope: !1687)
!1692 = !DILocation(line: 43, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1686, file: !1197, line: 43, column: 68)
!1694 = !DILocation(line: 45, column: 26, scope: !1687)
!1695 = !DILocation(line: 45, column: 33, scope: !1687)
!1696 = !DILocation(line: 45, column: 10, scope: !1687)
!1697 = !DILocation(line: 45, column: 18, scope: !1687)
!1698 = !DILocation(line: 46, column: 11, scope: !1687)
!1699 = !DILocation(line: 46, column: 18, scope: !1687)
!1700 = !DILocation(line: 46, column: 27, scope: !1687)
!1701 = !DILocation(line: 47, column: 25, scope: !1687)
!1702 = !DILocation(line: 47, column: 32, scope: !1687)
!1703 = !DILocation(line: 47, column: 10, scope: !1687)
!1704 = !DILocation(line: 47, column: 17, scope: !1687)
!1705 = !DILocation(line: 48, column: 11, scope: !1687)
!1706 = !DILocation(line: 48, column: 18, scope: !1687)
!1707 = !DILocation(line: 48, column: 26, scope: !1687)
!1708 = distinct !{!1708, !1681, !1709}
!1709 = !DILocation(line: 44, column: 3, scope: !1682)
!1710 = !DILocation(line: 46, column: 3, scope: !1682)
!1711 = !DILocation(line: 51, column: 3, scope: !1650)
!1712 = distinct !DISubprogram(name: "primal_start_artificial", scope: !1713, file: !1713, line: 22, type: !530, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1713 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/pstart.c", directory: "")
!1714 = !DILocalVariable(name: "net___0", arg: 1, scope: !1712, file: !1713, line: 22, type: !532)
!1715 = !DILocation(line: 0, scope: !1712)
!1716 = !DILocation(line: 33, column: 19, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !1713, line: 29, column: 3)
!1718 = !DILocalVariable(name: "node", scope: !1712, file: !1713, line: 24, type: !15)
!1719 = !DILocalVariable(name: "root", scope: !1712, file: !1713, line: 25, type: !15)
!1720 = !DILocation(line: 33, column: 8, scope: !1717)
!1721 = !DILocation(line: 34, column: 9, scope: !1717)
!1722 = !DILocation(line: 34, column: 19, scope: !1717)
!1723 = !DILocation(line: 35, column: 9, scope: !1717)
!1724 = !DILocation(line: 35, column: 14, scope: !1717)
!1725 = !DILocation(line: 36, column: 9, scope: !1717)
!1726 = !DILocation(line: 36, column: 15, scope: !1717)
!1727 = !DILocation(line: 37, column: 9, scope: !1717)
!1728 = !DILocation(line: 37, column: 17, scope: !1717)
!1729 = !DILocation(line: 38, column: 9, scope: !1717)
!1730 = !DILocation(line: 38, column: 22, scope: !1717)
!1731 = !DILocation(line: 39, column: 26, scope: !1717)
!1732 = !DILocation(line: 39, column: 28, scope: !1717)
!1733 = !DILocation(line: 39, column: 9, scope: !1717)
!1734 = !DILocation(line: 39, column: 15, scope: !1717)
!1735 = !DILocation(line: 40, column: 9, scope: !1717)
!1736 = !DILocation(line: 40, column: 21, scope: !1717)
!1737 = !DILocation(line: 41, column: 9, scope: !1717)
!1738 = !DILocation(line: 41, column: 19, scope: !1717)
!1739 = !DILocation(line: 42, column: 9, scope: !1717)
!1740 = !DILocation(line: 42, column: 14, scope: !1717)
!1741 = !DILocation(line: 44, column: 27, scope: !1717)
!1742 = !DILocation(line: 44, column: 10, scope: !1717)
!1743 = !DILocalVariable(name: "stop", scope: !1712, file: !1713, line: 27, type: !49)
!1744 = !DILocation(line: 45, column: 18, scope: !1717)
!1745 = !DILocalVariable(name: "arc", scope: !1712, file: !1713, line: 26, type: !10)
!1746 = !DILocation(line: 45, column: 3, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !1713, line: 47, column: 3)
!1748 = distinct !DILexicalBlock(scope: !1717, file: !1713, line: 46, column: 3)
!1749 = !DILocation(line: 0, scope: !1717)
!1750 = !DILocation(line: 45, column: 13, scope: !1747)
!1751 = !DILocation(line: 45, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1713, line: 45, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1747, file: !1713, line: 45, column: 13)
!1754 = !DILocation(line: 45, column: 52, scope: !1752)
!1755 = !DILocation(line: 45, column: 35, scope: !1752)
!1756 = !DILocation(line: 45, column: 32, scope: !1752)
!1757 = !DILocation(line: 45, column: 9, scope: !1753)
!1758 = !DILocation(line: 45, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1752, file: !1713, line: 45, column: 69)
!1760 = !DILocation(line: 46, column: 14, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1753, file: !1713, line: 46, column: 9)
!1762 = !DILocation(line: 46, column: 20, scope: !1761)
!1763 = !DILocation(line: 46, column: 9, scope: !1753)
!1764 = !DILocation(line: 47, column: 12, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !1713, line: 46, column: 28)
!1766 = !DILocation(line: 47, column: 18, scope: !1765)
!1767 = !DILocation(line: 48, column: 5, scope: !1765)
!1768 = distinct !{!1768, !1746, !1769}
!1769 = !DILocation(line: 46, column: 3, scope: !1747)
!1770 = !DILocation(line: 48, column: 3, scope: !1747)
!1771 = !DILocation(line: 49, column: 18, scope: !1717)
!1772 = !DILocation(line: 50, column: 27, scope: !1717)
!1773 = !DILocation(line: 50, column: 10, scope: !1717)
!1774 = !DILocation(line: 50, column: 3, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1713, line: 52, column: 3)
!1776 = distinct !DILexicalBlock(scope: !1717, file: !1713, line: 51, column: 3)
!1777 = !DILocation(line: 50, column: 13, scope: !1775)
!1778 = !DILocation(line: 50, column: 12, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !1713, line: 50, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !1713, line: 50, column: 13)
!1781 = !DILocation(line: 50, column: 53, scope: !1779)
!1782 = !DILocation(line: 50, column: 36, scope: !1779)
!1783 = !DILocation(line: 50, column: 33, scope: !1779)
!1784 = !DILocation(line: 50, column: 9, scope: !1780)
!1785 = !DILocation(line: 50, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1779, file: !1713, line: 50, column: 71)
!1787 = !DILocation(line: 52, column: 11, scope: !1780)
!1788 = !DILocation(line: 52, column: 21, scope: !1780)
!1789 = !DILocation(line: 53, column: 11, scope: !1780)
!1790 = !DILocation(line: 53, column: 16, scope: !1780)
!1791 = !DILocation(line: 54, column: 11, scope: !1780)
!1792 = !DILocation(line: 54, column: 17, scope: !1780)
!1793 = !DILocation(line: 55, column: 26, scope: !1780)
!1794 = !DILocation(line: 55, column: 11, scope: !1780)
!1795 = !DILocation(line: 55, column: 19, scope: !1780)
!1796 = !DILocation(line: 56, column: 31, scope: !1780)
!1797 = !DILocation(line: 56, column: 11, scope: !1780)
!1798 = !DILocation(line: 56, column: 24, scope: !1780)
!1799 = !DILocation(line: 57, column: 11, scope: !1780)
!1800 = !DILocation(line: 57, column: 17, scope: !1780)
!1801 = !DILocation(line: 59, column: 10, scope: !1780)
!1802 = !DILocation(line: 59, column: 15, scope: !1780)
!1803 = !DILocation(line: 60, column: 10, scope: !1780)
!1804 = !DILocation(line: 60, column: 16, scope: !1780)
!1805 = !DILocation(line: 62, column: 11, scope: !1780)
!1806 = !DILocation(line: 62, column: 23, scope: !1780)
!1807 = !DILocation(line: 63, column: 11, scope: !1780)
!1808 = !DILocation(line: 63, column: 21, scope: !1780)
!1809 = !DILocation(line: 64, column: 10, scope: !1780)
!1810 = !DILocation(line: 64, column: 15, scope: !1780)
!1811 = !DILocation(line: 65, column: 10, scope: !1780)
!1812 = !DILocation(line: 65, column: 15, scope: !1780)
!1813 = !DILocation(line: 66, column: 11, scope: !1780)
!1814 = !DILocation(line: 66, column: 16, scope: !1780)
!1815 = !DILocation(line: 50, column: 10, scope: !1780)
!1816 = distinct !{!1816, !1774, !1817}
!1817 = !DILocation(line: 51, column: 3, scope: !1775)
!1818 = !DILocation(line: 53, column: 3, scope: !1775)
!1819 = !DILocation(line: 69, column: 8, scope: !1717)
!1820 = !DILocation(line: 70, column: 9, scope: !1717)
!1821 = !DILocation(line: 70, column: 17, scope: !1717)
!1822 = !DILocation(line: 71, column: 9, scope: !1717)
!1823 = !DILocation(line: 71, column: 22, scope: !1717)
!1824 = !DILocation(line: 73, column: 3, scope: !1717)
!1825 = distinct !DISubprogram(name: "resize_prob", scope: !1826, file: !1826, line: 24, type: !530, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1826 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/implicit.c", directory: "")
!1827 = !DILocalVariable(name: "net___0", arg: 1, scope: !1825, file: !1826, line: 24, type: !532)
!1828 = !DILocation(line: 0, scope: !1825)
!1829 = !DILocalVariable(name: "__cil_tmp8", scope: !1825, file: !1826, line: 32, type: !21)
!1830 = !DILocation(line: 32, column: 9, scope: !1825)
!1831 = !DILocation(line: 38, column: 12, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !1826, line: 35, column: 3)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !1826, line: 34, column: 3)
!1834 = !DILocation(line: 38, column: 18, scope: !1832)
!1835 = !DILocation(line: 48, column: 34, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !1826, line: 39, column: 3)
!1837 = !DILocation(line: 48, column: 17, scope: !1836)
!1838 = !DILocation(line: 48, column: 75, scope: !1836)
!1839 = !DILocation(line: 48, column: 81, scope: !1836)
!1840 = !DILocation(line: 48, column: 40, scope: !1836)
!1841 = !DILocation(line: 48, column: 9, scope: !1836)
!1842 = !DILocalVariable(name: "tmp", scope: !1825, file: !1826, line: 31, type: !49)
!1843 = !DILocation(line: 48, column: 9, scope: !1832)
!1844 = !DILocalVariable(name: "arc", scope: !1825, file: !1826, line: 26, type: !10)
!1845 = !DILocation(line: 49, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1833, file: !1826, line: 49, column: 7)
!1847 = !DILocation(line: 49, column: 7, scope: !1833)
!1848 = !DILocation(line: 51, column: 89, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !1826, line: 51, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1826, line: 50, column: 5)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !1826, line: 49, column: 14)
!1852 = !DILocation(line: 51, column: 80, scope: !1849)
!1853 = !DILocation(line: 51, column: 5, scope: !1849)
!1854 = !DILocation(line: 52, column: 12, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !1826, line: 53, column: 5)
!1856 = !DILocation(line: 52, column: 5, scope: !1855)
!1857 = !DILocation(line: 53, column: 5, scope: !1851)
!1858 = !DILocation(line: 59, column: 9, scope: !1833)
!1859 = !DILocation(line: 59, column: 38, scope: !1833)
!1860 = !DILocation(line: 59, column: 22, scope: !1833)
!1861 = !DILocation(line: 59, column: 20, scope: !1833)
!1862 = !DILocalVariable(name: "off", scope: !1825, file: !1826, line: 30, type: !9)
!1863 = !DILocation(line: 62, column: 12, scope: !1833)
!1864 = !DILocation(line: 62, column: 17, scope: !1833)
!1865 = !DILocation(line: 63, column: 39, scope: !1833)
!1866 = !DILocation(line: 63, column: 28, scope: !1833)
!1867 = !DILocation(line: 63, column: 12, scope: !1833)
!1868 = !DILocation(line: 63, column: 22, scope: !1833)
!1869 = !DILocation(line: 65, column: 19, scope: !1833)
!1870 = !DILocalVariable(name: "node", scope: !1825, file: !1826, line: 27, type: !15)
!1871 = !DILocalVariable(name: "root", scope: !1825, file: !1826, line: 29, type: !15)
!1872 = !DILocation(line: 66, column: 8, scope: !1833)
!1873 = !DILocation(line: 66, column: 38, scope: !1833)
!1874 = !DILocation(line: 66, column: 21, scope: !1833)
!1875 = !DILocation(line: 66, column: 10, scope: !1833)
!1876 = !DILocalVariable(name: "stop", scope: !1825, file: !1826, line: 28, type: !15)
!1877 = !DILocation(line: 66, column: 3, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !1826, line: 68, column: 3)
!1879 = distinct !DILexicalBlock(scope: !1833, file: !1826, line: 67, column: 3)
!1880 = !DILocation(line: 0, scope: !1833)
!1881 = !DILocation(line: 66, column: 13, scope: !1878)
!1882 = !DILocation(line: 66, column: 12, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !1826, line: 66, column: 9)
!1884 = distinct !DILexicalBlock(scope: !1878, file: !1826, line: 66, column: 13)
!1885 = !DILocation(line: 66, column: 35, scope: !1883)
!1886 = !DILocation(line: 66, column: 33, scope: !1883)
!1887 = !DILocation(line: 66, column: 9, scope: !1884)
!1888 = !DILocation(line: 66, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1883, file: !1826, line: 66, column: 58)
!1890 = !DILocation(line: 67, column: 31, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !1826, line: 67, column: 9)
!1892 = !DILocation(line: 67, column: 9, scope: !1891)
!1893 = !DILocation(line: 67, column: 39, scope: !1891)
!1894 = !DILocation(line: 67, column: 36, scope: !1891)
!1895 = !DILocation(line: 67, column: 9, scope: !1884)
!1896 = !DILocation(line: 71, column: 48, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !1826, line: 67, column: 61)
!1898 = !DILocation(line: 71, column: 35, scope: !1897)
!1899 = !DILocation(line: 71, column: 58, scope: !1897)
!1900 = !DILocation(line: 71, column: 25, scope: !1897)
!1901 = !DILocation(line: 71, column: 13, scope: !1897)
!1902 = !DILocation(line: 71, column: 23, scope: !1897)
!1903 = !DILocation(line: 72, column: 5, scope: !1897)
!1904 = !DILocation(line: 66, column: 10, scope: !1884)
!1905 = distinct !{!1905, !1877, !1906}
!1906 = !DILocation(line: 67, column: 3, scope: !1878)
!1907 = !DILocation(line: 69, column: 3, scope: !1878)
!1908 = !DILocation(line: 73, column: 3, scope: !1833)
!1909 = !DILocation(line: 75, column: 1, scope: !1825)
!1910 = distinct !DISubprogram(name: "compute_red_cost", scope: !1826, file: !1826, line: 83, type: !1911, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!7, !7, !15, !7}
!1913 = !DILocalVariable(name: "cost", arg: 1, scope: !1910, file: !1826, line: 83, type: !7)
!1914 = !DILocation(line: 0, scope: !1910)
!1915 = !DILocalVariable(name: "tail", arg: 2, scope: !1910, file: !1826, line: 83, type: !15)
!1916 = !DILocalVariable(name: "head_potential", arg: 3, scope: !1910, file: !1826, line: 83, type: !7)
!1917 = !DILocation(line: 91, column: 25, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1910, file: !1826, line: 87, column: 3)
!1919 = !DILocation(line: 91, column: 17, scope: !1918)
!1920 = !DILocation(line: 91, column: 36, scope: !1918)
!1921 = !DILocation(line: 91, column: 3, scope: !1918)
!1922 = distinct !DISubprogram(name: "insert_new_arc", scope: !1826, file: !1826, line: 101, type: !1923, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !10, !9, !15, !15, !7, !7}
!1925 = !DILocalVariable(name: "new", arg: 1, scope: !1922, file: !1826, line: 101, type: !10)
!1926 = !DILocation(line: 0, scope: !1922)
!1927 = !DILocalVariable(name: "newpos", arg: 2, scope: !1922, file: !1826, line: 101, type: !9)
!1928 = !DILocalVariable(name: "tail", arg: 3, scope: !1922, file: !1826, line: 101, type: !15)
!1929 = !DILocalVariable(name: "head", arg: 4, scope: !1922, file: !1826, line: 101, type: !15)
!1930 = !DILocalVariable(name: "cost", arg: 5, scope: !1922, file: !1826, line: 101, type: !7)
!1931 = !DILocalVariable(name: "red_cost", arg: 6, scope: !1922, file: !1826, line: 102, type: !7)
!1932 = !DILocation(line: 115, column: 8, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1922, file: !1826, line: 106, column: 3)
!1934 = !DILocation(line: 115, column: 19, scope: !1933)
!1935 = !DILocation(line: 115, column: 24, scope: !1933)
!1936 = !DILocation(line: 116, column: 8, scope: !1933)
!1937 = !DILocation(line: 116, column: 19, scope: !1933)
!1938 = !DILocation(line: 116, column: 24, scope: !1933)
!1939 = !DILocation(line: 117, column: 8, scope: !1933)
!1940 = !DILocation(line: 117, column: 19, scope: !1933)
!1941 = !DILocation(line: 117, column: 28, scope: !1933)
!1942 = !DILocation(line: 118, column: 8, scope: !1933)
!1943 = !DILocation(line: 118, column: 19, scope: !1933)
!1944 = !DILocation(line: 118, column: 24, scope: !1933)
!1945 = !DILocation(line: 119, column: 8, scope: !1933)
!1946 = !DILocation(line: 119, column: 19, scope: !1933)
!1947 = !DILocation(line: 119, column: 24, scope: !1933)
!1948 = !DILocation(line: 121, column: 16, scope: !1933)
!1949 = !DILocalVariable(name: "pos", scope: !1922, file: !1826, line: 104, type: !9)
!1950 = !DILocation(line: 122, column: 3, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1826, line: 123, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1933, file: !1826, line: 122, column: 3)
!1953 = !DILocation(line: 0, scope: !1933)
!1954 = !DILocation(line: 122, column: 13, scope: !1951)
!1955 = !DILocation(line: 122, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !1826, line: 122, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !1826, line: 122, column: 13)
!1958 = !DILocation(line: 122, column: 9, scope: !1957)
!1959 = !DILocation(line: 122, column: 37, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !1826, line: 122, column: 11)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !1826, line: 122, column: 19)
!1962 = !DILocation(line: 122, column: 42, scope: !1960)
!1963 = !DILocation(line: 122, column: 30, scope: !1960)
!1964 = !DILocation(line: 122, column: 50, scope: !1960)
!1965 = !DILocation(line: 122, column: 23, scope: !1960)
!1966 = !DILocation(line: 122, column: 11, scope: !1961)
!1967 = !DILocation(line: 122, column: 9, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1960, file: !1826, line: 122, column: 57)
!1969 = !DILocation(line: 124, column: 5, scope: !1961)
!1970 = !DILocation(line: 122, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1956, file: !1826, line: 124, column: 12)
!1972 = !DILocation(line: 124, column: 44, scope: !1957)
!1973 = !DILocation(line: 124, column: 49, scope: !1957)
!1974 = !DILocation(line: 124, column: 37, scope: !1957)
!1975 = !DILocation(line: 124, column: 57, scope: !1957)
!1976 = !DILocation(line: 124, column: 17, scope: !1957)
!1977 = !DILocation(line: 124, column: 10, scope: !1957)
!1978 = !DILocation(line: 124, column: 25, scope: !1957)
!1979 = !DILocation(line: 124, column: 30, scope: !1957)
!1980 = !DILocation(line: 125, column: 44, scope: !1957)
!1981 = !DILocation(line: 125, column: 49, scope: !1957)
!1982 = !DILocation(line: 125, column: 37, scope: !1957)
!1983 = !DILocation(line: 125, column: 57, scope: !1957)
!1984 = !DILocation(line: 125, column: 17, scope: !1957)
!1985 = !DILocation(line: 125, column: 10, scope: !1957)
!1986 = !DILocation(line: 125, column: 25, scope: !1957)
!1987 = !DILocation(line: 125, column: 30, scope: !1957)
!1988 = !DILocation(line: 126, column: 44, scope: !1957)
!1989 = !DILocation(line: 126, column: 49, scope: !1957)
!1990 = !DILocation(line: 126, column: 37, scope: !1957)
!1991 = !DILocation(line: 126, column: 57, scope: !1957)
!1992 = !DILocation(line: 126, column: 17, scope: !1957)
!1993 = !DILocation(line: 126, column: 10, scope: !1957)
!1994 = !DILocation(line: 126, column: 25, scope: !1957)
!1995 = !DILocation(line: 126, column: 30, scope: !1957)
!1996 = !DILocation(line: 127, column: 48, scope: !1957)
!1997 = !DILocation(line: 127, column: 53, scope: !1957)
!1998 = !DILocation(line: 127, column: 41, scope: !1957)
!1999 = !DILocation(line: 127, column: 61, scope: !1957)
!2000 = !DILocation(line: 127, column: 17, scope: !1957)
!2001 = !DILocation(line: 127, column: 10, scope: !1957)
!2002 = !DILocation(line: 127, column: 25, scope: !1957)
!2003 = !DILocation(line: 127, column: 34, scope: !1957)
!2004 = !DILocation(line: 128, column: 44, scope: !1957)
!2005 = !DILocation(line: 128, column: 49, scope: !1957)
!2006 = !DILocation(line: 128, column: 37, scope: !1957)
!2007 = !DILocation(line: 128, column: 57, scope: !1957)
!2008 = !DILocation(line: 128, column: 17, scope: !1957)
!2009 = !DILocation(line: 128, column: 10, scope: !1957)
!2010 = !DILocation(line: 128, column: 25, scope: !1957)
!2011 = !DILocation(line: 128, column: 30, scope: !1957)
!2012 = !DILocation(line: 130, column: 9, scope: !1957)
!2013 = !DILocation(line: 131, column: 17, scope: !1957)
!2014 = !DILocation(line: 131, column: 10, scope: !1957)
!2015 = !DILocation(line: 131, column: 25, scope: !1957)
!2016 = !DILocation(line: 131, column: 30, scope: !1957)
!2017 = !DILocation(line: 132, column: 17, scope: !1957)
!2018 = !DILocation(line: 132, column: 10, scope: !1957)
!2019 = !DILocation(line: 132, column: 25, scope: !1957)
!2020 = !DILocation(line: 132, column: 30, scope: !1957)
!2021 = !DILocation(line: 133, column: 17, scope: !1957)
!2022 = !DILocation(line: 133, column: 10, scope: !1957)
!2023 = !DILocation(line: 133, column: 25, scope: !1957)
!2024 = !DILocation(line: 133, column: 30, scope: !1957)
!2025 = !DILocation(line: 134, column: 17, scope: !1957)
!2026 = !DILocation(line: 134, column: 10, scope: !1957)
!2027 = !DILocation(line: 134, column: 25, scope: !1957)
!2028 = !DILocation(line: 134, column: 34, scope: !1957)
!2029 = !DILocation(line: 135, column: 17, scope: !1957)
!2030 = !DILocation(line: 135, column: 10, scope: !1957)
!2031 = !DILocation(line: 135, column: 25, scope: !1957)
!2032 = !DILocation(line: 135, column: 30, scope: !1957)
!2033 = distinct !{!2033, !1950, !2034}
!2034 = !DILocation(line: 136, column: 3, scope: !1951)
!2035 = !DILocation(line: 138, column: 3, scope: !1951)
!2036 = !DILocation(line: 138, column: 3, scope: !1933)
!2037 = distinct !DISubprogram(name: "replace_weaker_arc", scope: !1826, file: !1826, line: 147, type: !2038, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !10, !15, !15, !7, !7}
!2040 = !DILocalVariable(name: "new", arg: 1, scope: !2037, file: !1826, line: 147, type: !10)
!2041 = !DILocation(line: 0, scope: !2037)
!2042 = !DILocalVariable(name: "tail", arg: 2, scope: !2037, file: !1826, line: 147, type: !15)
!2043 = !DILocalVariable(name: "head", arg: 3, scope: !2037, file: !1826, line: 147, type: !15)
!2044 = !DILocalVariable(name: "cost", arg: 4, scope: !2037, file: !1826, line: 147, type: !7)
!2045 = !DILocalVariable(name: "red_cost", arg: 5, scope: !2037, file: !1826, line: 147, type: !7)
!2046 = !DILocation(line: 161, column: 8, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !1826, line: 152, column: 3)
!2048 = !DILocation(line: 161, column: 14, scope: !2047)
!2049 = !DILocation(line: 161, column: 19, scope: !2047)
!2050 = !DILocation(line: 162, column: 8, scope: !2047)
!2051 = !DILocation(line: 162, column: 14, scope: !2047)
!2052 = !DILocation(line: 162, column: 19, scope: !2047)
!2053 = !DILocation(line: 163, column: 8, scope: !2047)
!2054 = !DILocation(line: 163, column: 14, scope: !2047)
!2055 = !DILocation(line: 163, column: 23, scope: !2047)
!2056 = !DILocation(line: 164, column: 8, scope: !2047)
!2057 = !DILocation(line: 164, column: 14, scope: !2047)
!2058 = !DILocation(line: 164, column: 19, scope: !2047)
!2059 = !DILocation(line: 165, column: 8, scope: !2047)
!2060 = !DILocation(line: 165, column: 14, scope: !2047)
!2061 = !DILocation(line: 165, column: 19, scope: !2047)
!2062 = !DILocalVariable(name: "pos", scope: !2037, file: !1826, line: 149, type: !9)
!2063 = !DILocation(line: 168, column: 12, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2047, file: !1826, line: 168, column: 7)
!2065 = !DILocation(line: 168, column: 18, scope: !2064)
!2066 = !DILocation(line: 168, column: 30, scope: !2064)
!2067 = !DILocation(line: 168, column: 36, scope: !2064)
!2068 = !DILocation(line: 168, column: 23, scope: !2064)
!2069 = !DILocation(line: 168, column: 7, scope: !2047)
!2070 = !DILocalVariable(name: "cmp", scope: !2037, file: !1826, line: 150, type: !9)
!2071 = !DILocation(line: 169, column: 3, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !1826, line: 168, column: 42)
!2073 = !DILocation(line: 0, scope: !2064)
!2074 = !DILocation(line: 169, column: 3, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !1826, line: 171, column: 3)
!2076 = distinct !DILexicalBlock(scope: !2047, file: !1826, line: 170, column: 3)
!2077 = !DILocation(line: 0, scope: !2047)
!2078 = !DILocation(line: 169, column: 13, scope: !2075)
!2079 = !DILocation(line: 169, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1826, line: 169, column: 9)
!2081 = distinct !DILexicalBlock(scope: !2075, file: !1826, line: 169, column: 13)
!2082 = !DILocation(line: 169, column: 9, scope: !2081)
!2083 = !DILocation(line: 169, column: 37, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !1826, line: 169, column: 11)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !1826, line: 169, column: 25)
!2086 = !DILocation(line: 169, column: 30, scope: !2084)
!2087 = !DILocation(line: 169, column: 45, scope: !2084)
!2088 = !DILocation(line: 169, column: 23, scope: !2084)
!2089 = !DILocation(line: 169, column: 11, scope: !2085)
!2090 = !DILocation(line: 169, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !1826, line: 169, column: 52)
!2092 = !DILocation(line: 171, column: 5, scope: !2085)
!2093 = !DILocation(line: 169, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2080, file: !1826, line: 171, column: 12)
!2095 = !DILocation(line: 171, column: 44, scope: !2081)
!2096 = !DILocation(line: 171, column: 37, scope: !2081)
!2097 = !DILocation(line: 171, column: 52, scope: !2081)
!2098 = !DILocation(line: 171, column: 17, scope: !2081)
!2099 = !DILocation(line: 171, column: 10, scope: !2081)
!2100 = !DILocation(line: 171, column: 25, scope: !2081)
!2101 = !DILocation(line: 171, column: 30, scope: !2081)
!2102 = !DILocation(line: 172, column: 44, scope: !2081)
!2103 = !DILocation(line: 172, column: 37, scope: !2081)
!2104 = !DILocation(line: 172, column: 52, scope: !2081)
!2105 = !DILocation(line: 172, column: 17, scope: !2081)
!2106 = !DILocation(line: 172, column: 10, scope: !2081)
!2107 = !DILocation(line: 172, column: 25, scope: !2081)
!2108 = !DILocation(line: 172, column: 30, scope: !2081)
!2109 = !DILocation(line: 173, column: 44, scope: !2081)
!2110 = !DILocation(line: 173, column: 37, scope: !2081)
!2111 = !DILocation(line: 173, column: 52, scope: !2081)
!2112 = !DILocation(line: 173, column: 17, scope: !2081)
!2113 = !DILocation(line: 173, column: 10, scope: !2081)
!2114 = !DILocation(line: 173, column: 25, scope: !2081)
!2115 = !DILocation(line: 173, column: 30, scope: !2081)
!2116 = !DILocation(line: 174, column: 48, scope: !2081)
!2117 = !DILocation(line: 174, column: 41, scope: !2081)
!2118 = !DILocation(line: 174, column: 56, scope: !2081)
!2119 = !DILocation(line: 174, column: 17, scope: !2081)
!2120 = !DILocation(line: 174, column: 10, scope: !2081)
!2121 = !DILocation(line: 174, column: 25, scope: !2081)
!2122 = !DILocation(line: 174, column: 34, scope: !2081)
!2123 = !DILocation(line: 175, column: 44, scope: !2081)
!2124 = !DILocation(line: 175, column: 37, scope: !2081)
!2125 = !DILocation(line: 175, column: 52, scope: !2081)
!2126 = !DILocation(line: 175, column: 17, scope: !2081)
!2127 = !DILocation(line: 175, column: 10, scope: !2081)
!2128 = !DILocation(line: 175, column: 25, scope: !2081)
!2129 = !DILocation(line: 175, column: 30, scope: !2081)
!2130 = !DILocation(line: 177, column: 17, scope: !2081)
!2131 = !DILocation(line: 177, column: 10, scope: !2081)
!2132 = !DILocation(line: 177, column: 25, scope: !2081)
!2133 = !DILocation(line: 177, column: 30, scope: !2081)
!2134 = !DILocation(line: 178, column: 17, scope: !2081)
!2135 = !DILocation(line: 178, column: 10, scope: !2081)
!2136 = !DILocation(line: 178, column: 25, scope: !2081)
!2137 = !DILocation(line: 178, column: 30, scope: !2081)
!2138 = !DILocation(line: 179, column: 17, scope: !2081)
!2139 = !DILocation(line: 179, column: 10, scope: !2081)
!2140 = !DILocation(line: 179, column: 25, scope: !2081)
!2141 = !DILocation(line: 179, column: 30, scope: !2081)
!2142 = !DILocation(line: 180, column: 17, scope: !2081)
!2143 = !DILocation(line: 180, column: 10, scope: !2081)
!2144 = !DILocation(line: 180, column: 25, scope: !2081)
!2145 = !DILocation(line: 180, column: 34, scope: !2081)
!2146 = !DILocation(line: 181, column: 17, scope: !2081)
!2147 = !DILocation(line: 181, column: 10, scope: !2081)
!2148 = !DILocation(line: 181, column: 25, scope: !2081)
!2149 = !DILocation(line: 181, column: 30, scope: !2081)
!2150 = !DILocation(line: 183, column: 9, scope: !2081)
!2151 = !DILocation(line: 184, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2081, file: !1826, line: 184, column: 9)
!2153 = !DILocation(line: 184, column: 18, scope: !2152)
!2154 = !DILocation(line: 184, column: 9, scope: !2081)
!2155 = !DILocation(line: 185, column: 23, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1826, line: 185, column: 11)
!2157 = distinct !DILexicalBlock(scope: !2152, file: !1826, line: 184, column: 30)
!2158 = !DILocation(line: 185, column: 16, scope: !2156)
!2159 = !DILocation(line: 185, column: 31, scope: !2156)
!2160 = !DILocation(line: 185, column: 43, scope: !2156)
!2161 = !DILocation(line: 185, column: 51, scope: !2156)
!2162 = !DILocation(line: 185, column: 36, scope: !2156)
!2163 = !DILocation(line: 185, column: 11, scope: !2157)
!2164 = !DILocation(line: 186, column: 13, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2156, file: !1826, line: 185, column: 57)
!2166 = !DILocation(line: 187, column: 7, scope: !2165)
!2167 = !DILocation(line: 0, scope: !2081)
!2168 = !DILocation(line: 188, column: 5, scope: !2157)
!2169 = distinct !{!2169, !2074, !2170}
!2170 = !DILocation(line: 189, column: 3, scope: !2075)
!2171 = !DILocation(line: 191, column: 3, scope: !2075)
!2172 = !DILocation(line: 189, column: 3, scope: !2047)
!2173 = distinct !DISubprogram(name: "price_out_impl", scope: !1826, file: !1826, line: 198, type: !530, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2174 = !DILocalVariable(name: "net___0", arg: 1, scope: !2173, file: !1826, line: 198, type: !532)
!2175 = !DILocation(line: 0, scope: !2173)
!2176 = !DILocalVariable(name: "new_arcs", scope: !2173, file: !1826, line: 202, type: !9)
!2177 = !DILocalVariable(name: "resized", scope: !2173, file: !1826, line: 203, type: !9)
!2178 = !DILocalVariable(name: "min_impl_duration", scope: !2173, file: !1826, line: 205, type: !9)
!2179 = !DILocation(line: 211, column: 19, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !1826, line: 220, column: 3)
!2181 = !DILocalVariable(name: "bigM", scope: !2173, file: !1826, line: 206, type: !7)
!2182 = !DILocalVariable(name: "arc_cost", scope: !2173, file: !1826, line: 208, type: !7)
!2183 = !DILocation(line: 221, column: 39, scope: !2180)
!2184 = !DILocalVariable(name: "bigM_minus_min_impl_duration", scope: !2173, file: !1826, line: 210, type: !7)
!2185 = !DILocation(line: 223, column: 16, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !1826, line: 223, column: 7)
!2187 = !DILocation(line: 223, column: 18, scope: !2186)
!2188 = !DILocation(line: 223, column: 39, scope: !2186)
!2189 = !DILocation(line: 223, column: 28, scope: !2186)
!2190 = !DILocation(line: 223, column: 7, scope: !2180)
!2191 = !DILocation(line: 223, column: 19, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !1826, line: 223, column: 9)
!2193 = distinct !DILexicalBlock(scope: !2186, file: !1826, line: 223, column: 46)
!2194 = !DILocation(line: 223, column: 38, scope: !2192)
!2195 = !DILocation(line: 223, column: 27, scope: !2192)
!2196 = !DILocation(line: 223, column: 47, scope: !2192)
!2197 = !DILocation(line: 223, column: 63, scope: !2192)
!2198 = !DILocation(line: 223, column: 52, scope: !2192)
!2199 = !DILocation(line: 223, column: 76, scope: !2192)
!2200 = !DILocation(line: 223, column: 65, scope: !2192)
!2201 = !DILocation(line: 223, column: 9, scope: !2193)
!2202 = !DILocation(line: 227, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !1826, line: 227, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !1826, line: 224, column: 7)
!2205 = distinct !DILexicalBlock(scope: !2192, file: !1826, line: 223, column: 83)
!2206 = !DILocalVariable(name: "tmp", scope: !2173, file: !1826, line: 218, type: !9)
!2207 = !DILocation(line: 227, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !1826, line: 227, column: 11)
!2209 = !DILocation(line: 227, column: 11, scope: !2205)
!2210 = !DILocation(line: 228, column: 9, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !1826, line: 227, column: 16)
!2212 = !DILocation(line: 230, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !1826, line: 231, column: 7)
!2214 = distinct !DILexicalBlock(scope: !2205, file: !1826, line: 230, column: 7)
!2215 = !DILocation(line: 233, column: 5, scope: !2205)
!2216 = !DILocation(line: 0, scope: !2180)
!2217 = !DILocation(line: 234, column: 3, scope: !2193)
!2218 = !DILocation(line: 233, column: 21, scope: !2180)
!2219 = !DILocalVariable(name: "arcnew", scope: !2173, file: !1826, line: 213, type: !10)
!2220 = !DILocation(line: 234, column: 20, scope: !2180)
!2221 = !DILocalVariable(name: "trips", scope: !2173, file: !1826, line: 201, type: !9)
!2222 = !DILocation(line: 236, column: 21, scope: !2180)
!2223 = !DILocalVariable(name: "arcout", scope: !2173, file: !1826, line: 211, type: !10)
!2224 = !DILocalVariable(name: "i", scope: !2173, file: !1826, line: 200, type: !9)
!2225 = !DILocation(line: 237, column: 3, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !1826, line: 239, column: 3)
!2227 = distinct !DILexicalBlock(scope: !2180, file: !1826, line: 238, column: 3)
!2228 = !DILocation(line: 237, column: 13, scope: !2226)
!2229 = !DILocation(line: 237, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !1826, line: 237, column: 9)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !1826, line: 237, column: 13)
!2232 = !DILocation(line: 237, column: 9, scope: !2231)
!2233 = !DILocation(line: 237, column: 22, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !1826, line: 237, column: 11)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !1826, line: 237, column: 20)
!2236 = !DILocation(line: 237, column: 28, scope: !2234)
!2237 = !DILocation(line: 237, column: 34, scope: !2234)
!2238 = !DILocation(line: 237, column: 11, scope: !2235)
!2239 = !DILocation(line: 237, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2234, file: !1826, line: 237, column: 43)
!2241 = !DILocation(line: 239, column: 5, scope: !2235)
!2242 = !DILocation(line: 237, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2230, file: !1826, line: 239, column: 12)
!2244 = !DILocation(line: 237, column: 7, scope: !2231)
!2245 = !DILocation(line: 237, column: 12, scope: !2231)
!2246 = distinct !{!2246, !2225, !2247}
!2247 = !DILocation(line: 238, column: 3, scope: !2226)
!2248 = !DILocation(line: 240, column: 3, scope: !2226)
!2249 = !DILocalVariable(name: "first_of_sparse_list", scope: !2173, file: !1826, line: 215, type: !10)
!2250 = !DILocation(line: 239, column: 3, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !1826, line: 240, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2180, file: !1826, line: 239, column: 3)
!2253 = !DILocation(line: 206, column: 12, scope: !2180)
!2254 = !DILocation(line: 239, column: 13, scope: !2251)
!2255 = !DILocation(line: 239, column: 14, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !1826, line: 239, column: 9)
!2257 = distinct !DILexicalBlock(scope: !2251, file: !1826, line: 239, column: 13)
!2258 = !DILocation(line: 239, column: 9, scope: !2257)
!2259 = !DILocation(line: 239, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !1826, line: 239, column: 24)
!2261 = !DILocation(line: 241, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !1826, line: 241, column: 9)
!2263 = !DILocation(line: 241, column: 23, scope: !2262)
!2264 = !DILocation(line: 241, column: 29, scope: !2262)
!2265 = !DILocation(line: 241, column: 9, scope: !2257)
!2266 = !DILocation(line: 243, column: 50, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !1826, line: 241, column: 37)
!2268 = !DILocation(line: 243, column: 18, scope: !2267)
!2269 = !DILocation(line: 243, column: 25, scope: !2267)
!2270 = !DILocation(line: 243, column: 36, scope: !2267)
!2271 = !DILocation(line: 243, column: 43, scope: !2267)
!2272 = !DILocation(line: 243, column: 48, scope: !2267)
!2273 = !DILocation(line: 244, column: 37, scope: !2267)
!2274 = !DILocation(line: 245, column: 5, scope: !2267)
!2275 = !DILocation(line: 247, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2257, file: !1826, line: 247, column: 9)
!2277 = !DILocation(line: 247, column: 23, scope: !2276)
!2278 = !DILocation(line: 247, column: 9, scope: !2257)
!2279 = !DILocation(line: 248, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !1826, line: 247, column: 31)
!2281 = !DILocation(line: 250, column: 20, scope: !2257)
!2282 = !DILocalVariable(name: "head", scope: !2173, file: !1826, line: 217, type: !15)
!2283 = !DILocation(line: 251, column: 21, scope: !2257)
!2284 = !DILocation(line: 251, column: 36, scope: !2257)
!2285 = !DILocation(line: 251, column: 26, scope: !2257)
!2286 = !DILocation(line: 251, column: 46, scope: !2257)
!2287 = !DILocalVariable(name: "latest", scope: !2173, file: !1826, line: 204, type: !9)
!2288 = !DILocation(line: 254, column: 28, scope: !2257)
!2289 = !DILocalVariable(name: "head_potential", scope: !2173, file: !1826, line: 207, type: !7)
!2290 = !DILocation(line: 256, column: 45, scope: !2257)
!2291 = !DILocation(line: 256, column: 52, scope: !2257)
!2292 = !DILocation(line: 256, column: 13, scope: !2257)
!2293 = !DILocalVariable(name: "arcin", scope: !2173, file: !1826, line: 212, type: !10)
!2294 = !DILocation(line: 257, column: 5, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !1826, line: 258, column: 5)
!2296 = distinct !DILexicalBlock(scope: !2257, file: !1826, line: 257, column: 5)
!2297 = !DILocation(line: 0, scope: !2257)
!2298 = !DILocation(line: 257, column: 15, scope: !2295)
!2299 = !DILocation(line: 257, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !1826, line: 257, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2295, file: !1826, line: 257, column: 15)
!2302 = !DILocation(line: 257, column: 11, scope: !2301)
!2303 = !DILocation(line: 257, column: 9, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !1826, line: 257, column: 20)
!2305 = !DILocation(line: 259, column: 21, scope: !2301)
!2306 = !DILocalVariable(name: "tail", scope: !2173, file: !1826, line: 216, type: !15)
!2307 = !DILocation(line: 261, column: 17, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2301, file: !1826, line: 261, column: 11)
!2309 = !DILocation(line: 261, column: 31, scope: !2308)
!2310 = !DILocation(line: 261, column: 22, scope: !2308)
!2311 = !DILocation(line: 261, column: 40, scope: !2308)
!2312 = !DILocation(line: 261, column: 11, scope: !2301)
!2313 = !DILocation(line: 263, column: 32, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2308, file: !1826, line: 261, column: 50)
!2315 = !DILocation(line: 263, column: 17, scope: !2314)
!2316 = !DILocation(line: 264, column: 9, scope: !2314)
!2317 = !DILocation(line: 267, column: 18, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !1826, line: 267, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2301, file: !1826, line: 266, column: 7)
!2320 = !DILocalVariable(name: "red_cost", scope: !2173, file: !1826, line: 209, type: !7)
!2321 = !DILocation(line: 269, column: 20, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2301, file: !1826, line: 269, column: 11)
!2323 = !DILocation(line: 269, column: 11, scope: !2301)
!2324 = !DILocation(line: 271, column: 22, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !1826, line: 271, column: 13)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !1826, line: 269, column: 26)
!2327 = !DILocation(line: 271, column: 13, scope: !2326)
!2328 = !DILocation(line: 273, column: 11, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1826, line: 273, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1826, line: 272, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !1826, line: 271, column: 33)
!2332 = !DILocation(line: 275, column: 20, scope: !2330)
!2333 = !DILocation(line: 277, column: 9, scope: !2331)
!2334 = !DILocation(line: 277, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2325, file: !1826, line: 277, column: 13)
!2336 = !DILocation(line: 277, column: 27, scope: !2335)
!2337 = !DILocation(line: 277, column: 32, scope: !2335)
!2338 = !DILocation(line: 277, column: 13, scope: !2325)
!2339 = !DILocation(line: 278, column: 11, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !1826, line: 279, column: 11)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !1826, line: 278, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !1826, line: 277, column: 44)
!2343 = !DILocation(line: 281, column: 9, scope: !2342)
!2344 = !DILocation(line: 282, column: 7, scope: !2326)
!2345 = !DILocation(line: 282, column: 30, scope: !2301)
!2346 = !DILocation(line: 282, column: 15, scope: !2301)
!2347 = distinct !{!2347, !2294, !2348}
!2348 = !DILocation(line: 283, column: 5, scope: !2295)
!2349 = !DILocation(line: 285, column: 5, scope: !2295)
!2350 = !DILocation(line: 287, column: 5, scope: !2296)
!2351 = !DILocation(line: 239, column: 7, scope: !2257)
!2352 = !DILocation(line: 239, column: 12, scope: !2257)
!2353 = distinct !{!2353, !2250, !2354}
!2354 = !DILocation(line: 240, column: 3, scope: !2251)
!2355 = !DILocation(line: 242, column: 3, scope: !2251)
!2356 = !DILocation(line: 286, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2180, file: !1826, line: 286, column: 7)
!2358 = !DILocation(line: 286, column: 7, scope: !2180)
!2359 = !DILocation(line: 288, column: 23, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !1826, line: 286, column: 17)
!2361 = !DILocation(line: 289, column: 14, scope: !2360)
!2362 = !DILocation(line: 289, column: 24, scope: !2360)
!2363 = !DILocation(line: 290, column: 39, scope: !2360)
!2364 = !DILocation(line: 290, column: 22, scope: !2360)
!2365 = !DILocation(line: 290, column: 12, scope: !2360)
!2366 = !DILocalVariable(name: "stop", scope: !2173, file: !1826, line: 214, type: !10)
!2367 = !DILocation(line: 291, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2360, file: !1826, line: 291, column: 9)
!2369 = !DILocation(line: 291, column: 9, scope: !2360)
!2370 = !DILocation(line: 293, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !1826, line: 293, column: 7)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !1826, line: 292, column: 7)
!2373 = distinct !DILexicalBlock(scope: !2368, file: !1826, line: 291, column: 18)
!2374 = !DILocation(line: 0, scope: !2360)
!2375 = !DILocation(line: 293, column: 17, scope: !2371)
!2376 = !DILocation(line: 293, column: 16, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !1826, line: 293, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2371, file: !1826, line: 293, column: 17)
!2379 = !DILocation(line: 293, column: 42, scope: !2377)
!2380 = !DILocation(line: 293, column: 39, scope: !2377)
!2381 = !DILocation(line: 293, column: 13, scope: !2378)
!2382 = !DILocation(line: 293, column: 11, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !1826, line: 293, column: 65)
!2384 = !DILocation(line: 295, column: 17, scope: !2378)
!2385 = !DILocation(line: 295, column: 22, scope: !2378)
!2386 = !DILocation(line: 296, column: 17, scope: !2378)
!2387 = !DILocation(line: 296, column: 23, scope: !2378)
!2388 = !DILocation(line: 293, column: 16, scope: !2378)
!2389 = distinct !{!2389, !2370, !2390}
!2390 = !DILocation(line: 294, column: 7, scope: !2371)
!2391 = !DILocation(line: 296, column: 7, scope: !2371)
!2392 = !DILocation(line: 299, column: 5, scope: !2373)
!2393 = !DILocation(line: 301, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !1826, line: 301, column: 7)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !1826, line: 300, column: 7)
!2396 = distinct !DILexicalBlock(scope: !2368, file: !1826, line: 299, column: 12)
!2397 = !DILocation(line: 301, column: 17, scope: !2394)
!2398 = !DILocation(line: 301, column: 16, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !1826, line: 301, column: 13)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !1826, line: 301, column: 17)
!2401 = !DILocation(line: 301, column: 42, scope: !2399)
!2402 = !DILocation(line: 301, column: 39, scope: !2399)
!2403 = !DILocation(line: 301, column: 13, scope: !2400)
!2404 = !DILocation(line: 301, column: 11, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !1826, line: 301, column: 65)
!2406 = !DILocation(line: 303, column: 17, scope: !2400)
!2407 = !DILocation(line: 303, column: 22, scope: !2400)
!2408 = !DILocation(line: 304, column: 17, scope: !2400)
!2409 = !DILocation(line: 304, column: 23, scope: !2400)
!2410 = !DILocation(line: 305, column: 36, scope: !2400)
!2411 = !DILocation(line: 305, column: 43, scope: !2400)
!2412 = !DILocation(line: 305, column: 17, scope: !2400)
!2413 = !DILocation(line: 305, column: 25, scope: !2400)
!2414 = !DILocation(line: 306, column: 18, scope: !2400)
!2415 = !DILocation(line: 306, column: 25, scope: !2400)
!2416 = !DILocation(line: 306, column: 34, scope: !2400)
!2417 = !DILocation(line: 307, column: 35, scope: !2400)
!2418 = !DILocation(line: 307, column: 42, scope: !2400)
!2419 = !DILocation(line: 307, column: 17, scope: !2400)
!2420 = !DILocation(line: 307, column: 24, scope: !2400)
!2421 = !DILocation(line: 308, column: 18, scope: !2400)
!2422 = !DILocation(line: 308, column: 25, scope: !2400)
!2423 = !DILocation(line: 308, column: 33, scope: !2400)
!2424 = !DILocation(line: 301, column: 16, scope: !2400)
!2425 = distinct !{!2425, !2393, !2426}
!2426 = !DILocation(line: 302, column: 7, scope: !2394)
!2427 = !DILocation(line: 304, column: 7, scope: !2394)
!2428 = !DILocation(line: 312, column: 14, scope: !2360)
!2429 = !DILocation(line: 312, column: 16, scope: !2360)
!2430 = !DILocation(line: 313, column: 14, scope: !2360)
!2431 = !DILocation(line: 313, column: 21, scope: !2360)
!2432 = !DILocation(line: 314, column: 3, scope: !2360)
!2433 = !DILocation(line: 317, column: 3, scope: !2180)
!2434 = !DILocation(line: 319, column: 1, scope: !2173)
!2435 = distinct !DISubprogram(name: "suspend_impl", scope: !1826, file: !1826, line: 326, type: !2436, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!9, !532, !7, !9}
!2438 = !DILocalVariable(name: "net___0", arg: 1, scope: !2435, file: !1826, line: 326, type: !532)
!2439 = !DILocation(line: 0, scope: !2435)
!2440 = !DILocalVariable(name: "threshold", arg: 2, scope: !2435, file: !1826, line: 326, type: !7)
!2441 = !DILocalVariable(name: "all", arg: 3, scope: !2435, file: !1826, line: 326, type: !9)
!2442 = !DILocation(line: 342, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !1826, line: 342, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2435, file: !1826, line: 334, column: 3)
!2445 = !DILocation(line: 342, column: 7, scope: !2444)
!2446 = !DILocation(line: 343, column: 21, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !1826, line: 342, column: 12)
!2448 = !DILocalVariable(name: "susp", scope: !2435, file: !1826, line: 328, type: !9)
!2449 = !DILocation(line: 344, column: 3, scope: !2447)
!2450 = !DILocation(line: 346, column: 29, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2443, file: !1826, line: 344, column: 10)
!2452 = !DILocation(line: 346, column: 12, scope: !2451)
!2453 = !DILocalVariable(name: "stop", scope: !2435, file: !1826, line: 332, type: !49)
!2454 = !DILocation(line: 347, column: 24, scope: !2451)
!2455 = !DILocation(line: 347, column: 41, scope: !2451)
!2456 = !DILocation(line: 347, column: 54, scope: !2451)
!2457 = !DILocation(line: 347, column: 43, scope: !2451)
!2458 = !DILocation(line: 347, column: 29, scope: !2451)
!2459 = !DILocalVariable(name: "new_arc", scope: !2435, file: !1826, line: 330, type: !10)
!2460 = !DILocalVariable(name: "arc", scope: !2435, file: !1826, line: 331, type: !10)
!2461 = !DILocation(line: 348, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !1826, line: 350, column: 5)
!2463 = distinct !DILexicalBlock(scope: !2451, file: !1826, line: 349, column: 5)
!2464 = !DILocation(line: 0, scope: !2451)
!2465 = !DILocation(line: 347, column: 13, scope: !2451)
!2466 = !DILocation(line: 348, column: 15, scope: !2462)
!2467 = !DILocation(line: 348, column: 14, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !1826, line: 348, column: 11)
!2469 = distinct !DILexicalBlock(scope: !2462, file: !1826, line: 348, column: 15)
!2470 = !DILocation(line: 348, column: 53, scope: !2468)
!2471 = !DILocation(line: 348, column: 36, scope: !2468)
!2472 = !DILocation(line: 348, column: 34, scope: !2468)
!2473 = !DILocation(line: 348, column: 11, scope: !2469)
!2474 = !DILocation(line: 348, column: 9, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2468, file: !1826, line: 348, column: 70)
!2476 = !DILocation(line: 350, column: 16, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2469, file: !1826, line: 350, column: 11)
!2478 = !DILocation(line: 350, column: 22, scope: !2477)
!2479 = !DILocation(line: 350, column: 11, scope: !2469)
!2480 = !DILocation(line: 351, column: 26, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !1826, line: 350, column: 29)
!2482 = !DILocation(line: 351, column: 39, scope: !2481)
!2483 = !DILocation(line: 351, column: 46, scope: !2481)
!2484 = !DILocation(line: 351, column: 31, scope: !2481)
!2485 = !DILocation(line: 351, column: 65, scope: !2481)
!2486 = !DILocation(line: 351, column: 72, scope: !2481)
!2487 = !DILocation(line: 351, column: 57, scope: !2481)
!2488 = !DILocalVariable(name: "red_cost", scope: !2435, file: !1826, line: 329, type: !7)
!2489 = !DILocation(line: 352, column: 7, scope: !2481)
!2490 = !DILocation(line: 357, column: 18, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !1826, line: 357, column: 13)
!2492 = distinct !DILexicalBlock(scope: !2477, file: !1826, line: 352, column: 14)
!2493 = !DILocation(line: 357, column: 24, scope: !2491)
!2494 = !DILocation(line: 357, column: 13, scope: !2492)
!2495 = !DILocation(line: 359, column: 37, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !1826, line: 359, column: 15)
!2497 = distinct !DILexicalBlock(scope: !2491, file: !1826, line: 357, column: 31)
!2498 = !DILocation(line: 359, column: 44, scope: !2496)
!2499 = !DILocation(line: 359, column: 15, scope: !2496)
!2500 = !DILocation(line: 359, column: 57, scope: !2496)
!2501 = !DILocation(line: 359, column: 54, scope: !2496)
!2502 = !DILocation(line: 359, column: 15, scope: !2497)
!2503 = !DILocation(line: 360, column: 19, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !1826, line: 359, column: 78)
!2505 = !DILocation(line: 360, column: 26, scope: !2504)
!2506 = !DILocation(line: 360, column: 36, scope: !2504)
!2507 = !DILocation(line: 361, column: 11, scope: !2504)
!2508 = !DILocation(line: 362, column: 19, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2496, file: !1826, line: 361, column: 18)
!2510 = !DILocation(line: 362, column: 26, scope: !2509)
!2511 = !DILocation(line: 362, column: 36, scope: !2509)
!2512 = !DILocation(line: 364, column: 9, scope: !2497)
!2513 = !DILocation(line: 0, scope: !2477)
!2514 = !DILocation(line: 366, column: 20, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2469, file: !1826, line: 366, column: 11)
!2516 = !DILocation(line: 366, column: 11, scope: !2469)
!2517 = !DILocation(line: 367, column: 14, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !1826, line: 366, column: 33)
!2519 = !DILocation(line: 368, column: 7, scope: !2518)
!2520 = !DILocation(line: 370, column: 20, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !1826, line: 368, column: 14)
!2522 = !DILocation(line: 371, column: 17, scope: !2521)
!2523 = distinct !{!2523, !2461, !2524}
!2524 = !DILocation(line: 349, column: 5, scope: !2462)
!2525 = !DILocation(line: 351, column: 5, scope: !2462)
!2526 = !DILocation(line: 0, scope: !2443)
!2527 = !DILocation(line: 377, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2444, file: !1826, line: 377, column: 7)
!2529 = !DILocation(line: 377, column: 7, scope: !2444)
!2530 = !DILocation(line: 379, column: 14, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !1826, line: 378, column: 5)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !1826, line: 377, column: 13)
!2533 = !DILocation(line: 379, column: 16, scope: !2531)
!2534 = !DILocation(line: 380, column: 14, scope: !2531)
!2535 = !DILocation(line: 380, column: 21, scope: !2531)
!2536 = !DILocation(line: 381, column: 14, scope: !2531)
!2537 = !DILocation(line: 381, column: 24, scope: !2531)
!2538 = !DILocation(line: 383, column: 5, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2531, file: !1826, line: 382, column: 5)
!2540 = !DILocation(line: 386, column: 3, scope: !2532)
!2541 = !DILocation(line: 386, column: 3, scope: !2444)
!2542 = distinct !DISubprogram(name: "read_min", scope: !2543, file: !2543, line: 24, type: !530, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2543 = !DIFile(filename: "/local/sparrow_test/test/SPEC2000/CINT2000/181.mcf/src/readmin.c", directory: "")
!2544 = !DILocalVariable(name: "net___0", arg: 1, scope: !2542, file: !2543, line: 24, type: !532)
!2545 = !DILocation(line: 0, scope: !2542)
!2546 = !DILocalVariable(name: "instring", scope: !2542, file: !2543, line: 27, type: !2547)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1608, elements: !2548)
!2548 = !{!2549}
!2549 = !DISubrange(count: 201)
!2550 = !DILocation(line: 27, column: 8, scope: !2542)
!2551 = !DILocalVariable(name: "t", scope: !2542, file: !2543, line: 28, type: !9)
!2552 = !DILocation(line: 28, column: 8, scope: !2542)
!2553 = !DILocalVariable(name: "h", scope: !2542, file: !2543, line: 29, type: !9)
!2554 = !DILocation(line: 29, column: 8, scope: !2542)
!2555 = !DILocalVariable(name: "c", scope: !2542, file: !2543, line: 30, type: !9)
!2556 = !DILocation(line: 30, column: 8, scope: !2542)
!2557 = !DILocalVariable(name: "__cil_tmp22", scope: !2542, file: !2543, line: 46, type: !49)
!2558 = !DILocation(line: 46, column: 9, scope: !2542)
!2559 = !DILocalVariable(name: "__cil_tmp23", scope: !2542, file: !2543, line: 47, type: !21)
!2560 = !DILocation(line: 47, column: 9, scope: !2542)
!2561 = !DILocalVariable(name: "__cil_tmp24", scope: !2542, file: !2543, line: 48, type: !21)
!2562 = !DILocation(line: 48, column: 9, scope: !2542)
!2563 = !DILocalVariable(name: "__cil_tmp25", scope: !2542, file: !2543, line: 49, type: !21)
!2564 = !DILocation(line: 49, column: 9, scope: !2542)
!2565 = !DILocalVariable(name: "__cil_tmp26", scope: !2542, file: !2543, line: 50, type: !21)
!2566 = !DILocation(line: 50, column: 9, scope: !2542)
!2567 = !DILocalVariable(name: "__cil_tmp27", scope: !2542, file: !2543, line: 51, type: !21)
!2568 = !DILocation(line: 51, column: 9, scope: !2542)
!2569 = !DILocalVariable(name: "__cil_tmp28", scope: !2542, file: !2543, line: 52, type: !21)
!2570 = !DILocation(line: 52, column: 9, scope: !2542)
!2571 = !DILocalVariable(name: "__cil_tmp29", scope: !2542, file: !2543, line: 53, type: !21)
!2572 = !DILocation(line: 53, column: 9, scope: !2542)
!2573 = !DILocalVariable(name: "in", scope: !2542, file: !2543, line: 26, type: !52)
!2574 = !DILocation(line: 38, column: 57, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !2543, line: 31, column: 3)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 56, column: 3)
!2577 = distinct !DILexicalBlock(scope: !2542, file: !2543, line: 55, column: 3)
!2578 = !DILocation(line: 38, column: 47, scope: !2575)
!2579 = !DILocation(line: 38, column: 8, scope: !2575)
!2580 = !DILocation(line: 38, column: 7, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 38, column: 7)
!2582 = !DILocation(line: 38, column: 26, scope: !2581)
!2583 = !DILocation(line: 38, column: 7, scope: !2577)
!2584 = !DILocation(line: 39, column: 5, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !2543, line: 38, column: 58)
!2586 = !DILocation(line: 41, column: 34, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !2543, line: 42, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 41, column: 3)
!2589 = !DILocation(line: 41, column: 3, scope: !2587)
!2590 = !DILocation(line: 42, column: 49, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !2543, line: 43, column: 3)
!2592 = !DILocation(line: 42, column: 9, scope: !2591)
!2593 = !DILocalVariable(name: "tmp", scope: !2542, file: !2543, line: 34, type: !59)
!2594 = !DILocation(line: 42, column: 11, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 42, column: 7)
!2596 = !DILocation(line: 42, column: 7, scope: !2577)
!2597 = !DILocation(line: 43, column: 5, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !2543, line: 42, column: 17)
!2599 = !DILocation(line: 46, column: 22, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 45, column: 3)
!2601 = !DILocation(line: 46, column: 12, scope: !2600)
!2602 = !DILocation(line: 46, column: 20, scope: !2600)
!2603 = !DILocation(line: 47, column: 20, scope: !2600)
!2604 = !DILocation(line: 47, column: 12, scope: !2600)
!2605 = !DILocation(line: 47, column: 18, scope: !2600)
!2606 = !DILocation(line: 48, column: 17, scope: !2600)
!2607 = !DILocation(line: 48, column: 21, scope: !2600)
!2608 = !DILocation(line: 48, column: 19, scope: !2600)
!2609 = !DILocation(line: 48, column: 24, scope: !2600)
!2610 = !DILocation(line: 48, column: 12, scope: !2600)
!2611 = !DILocation(line: 48, column: 14, scope: !2600)
!2612 = !DILocation(line: 49, column: 18, scope: !2600)
!2613 = !DILocation(line: 49, column: 22, scope: !2600)
!2614 = !DILocation(line: 49, column: 20, scope: !2600)
!2615 = !DILocation(line: 49, column: 27, scope: !2600)
!2616 = !DILocation(line: 49, column: 25, scope: !2600)
!2617 = !DILocation(line: 49, column: 32, scope: !2600)
!2618 = !DILocation(line: 49, column: 30, scope: !2600)
!2619 = !DILocation(line: 49, column: 12, scope: !2600)
!2620 = !DILocation(line: 49, column: 14, scope: !2600)
!2621 = !DILocation(line: 51, column: 12, scope: !2600)
!2622 = !DILocation(line: 51, column: 18, scope: !2600)
!2623 = !DILocation(line: 57, column: 39, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2600, file: !2543, line: 52, column: 3)
!2625 = !DILocation(line: 57, column: 41, scope: !2624)
!2626 = !DILocation(line: 57, column: 20, scope: !2624)
!2627 = !DILocation(line: 57, column: 13, scope: !2624)
!2628 = !DILocalVariable(name: "tmp___0", scope: !2542, file: !2543, line: 35, type: !49)
!2629 = !DILocation(line: 57, column: 20, scope: !2600)
!2630 = !DILocation(line: 57, column: 12, scope: !2600)
!2631 = !DILocation(line: 57, column: 18, scope: !2600)
!2632 = !DILocation(line: 58, column: 38, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2600, file: !2543, line: 58, column: 3)
!2634 = !DILocation(line: 58, column: 20, scope: !2633)
!2635 = !DILocation(line: 58, column: 13, scope: !2633)
!2636 = !DILocalVariable(name: "tmp___1", scope: !2542, file: !2543, line: 36, type: !49)
!2637 = !DILocation(line: 58, column: 25, scope: !2600)
!2638 = !DILocation(line: 58, column: 12, scope: !2600)
!2639 = !DILocation(line: 58, column: 23, scope: !2600)
!2640 = !DILocation(line: 59, column: 38, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2600, file: !2543, line: 59, column: 3)
!2642 = !DILocation(line: 59, column: 20, scope: !2641)
!2643 = !DILocation(line: 59, column: 13, scope: !2641)
!2644 = !DILocalVariable(name: "tmp___2", scope: !2542, file: !2543, line: 37, type: !49)
!2645 = !DILocation(line: 59, column: 19, scope: !2600)
!2646 = !DILocation(line: 59, column: 12, scope: !2600)
!2647 = !DILocation(line: 59, column: 17, scope: !2600)
!2648 = !DILocation(line: 61, column: 16, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 61, column: 7)
!2650 = !DILocation(line: 61, column: 7, scope: !2649)
!2651 = !DILocation(line: 61, column: 7, scope: !2577)
!2652 = !DILocation(line: 61, column: 18, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !2543, line: 61, column: 9)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !2543, line: 61, column: 23)
!2655 = !DILocation(line: 61, column: 9, scope: !2653)
!2656 = !DILocation(line: 61, column: 9, scope: !2654)
!2657 = !DILocation(line: 61, column: 22, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !2543, line: 61, column: 11)
!2659 = distinct !DILexicalBlock(scope: !2653, file: !2543, line: 61, column: 24)
!2660 = !DILocation(line: 61, column: 13, scope: !2658)
!2661 = !DILocation(line: 61, column: 11, scope: !2659)
!2662 = !DILocation(line: 63, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !2543, line: 63, column: 9)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !2543, line: 62, column: 9)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !2543, line: 61, column: 34)
!2666 = !DILocation(line: 64, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !2543, line: 65, column: 9)
!2668 = !DILocation(line: 65, column: 9, scope: !2665)
!2669 = !DILocation(line: 67, column: 5, scope: !2659)
!2670 = !DILocation(line: 63, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !2543, line: 69, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !2543, line: 68, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2653, file: !2543, line: 67, column: 12)
!2674 = !DILocation(line: 64, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !2543, line: 65, column: 7)
!2676 = !DILocation(line: 65, column: 7, scope: !2673)
!2677 = !DILocation(line: 67, column: 3, scope: !2654)
!2678 = !DILocation(line: 63, column: 5, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !2543, line: 69, column: 5)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !2543, line: 68, column: 5)
!2681 = distinct !DILexicalBlock(scope: !2649, file: !2543, line: 67, column: 10)
!2682 = !DILocation(line: 64, column: 5, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !2543, line: 65, column: 5)
!2684 = !DILocation(line: 65, column: 5, scope: !2681)
!2685 = !DILocation(line: 84, column: 35, scope: !2577)
!2686 = !DILocation(line: 84, column: 52, scope: !2577)
!2687 = !DILocation(line: 84, column: 41, scope: !2577)
!2688 = !DILocation(line: 84, column: 55, scope: !2577)
!2689 = !DILocation(line: 84, column: 12, scope: !2577)
!2690 = !DILocation(line: 84, column: 23, scope: !2577)
!2691 = !DILocation(line: 85, column: 33, scope: !2577)
!2692 = !DILocation(line: 85, column: 49, scope: !2577)
!2693 = !DILocation(line: 85, column: 38, scope: !2577)
!2694 = !DILocation(line: 85, column: 12, scope: !2577)
!2695 = !DILocation(line: 85, column: 22, scope: !2577)
!2696 = !DILocation(line: 86, column: 34, scope: !2577)
!2697 = !DILocation(line: 86, column: 56, scope: !2577)
!2698 = !DILocation(line: 86, column: 45, scope: !2577)
!2699 = !DILocation(line: 86, column: 12, scope: !2577)
!2700 = !DILocation(line: 86, column: 23, scope: !2577)
!2701 = !DILocation(line: 89, column: 19, scope: !2577)
!2702 = !DILocalVariable(name: "node", scope: !2542, file: !2543, line: 33, type: !15)
!2703 = !DILocation(line: 90, column: 18, scope: !2577)
!2704 = !DILocalVariable(name: "arc", scope: !2542, file: !2543, line: 32, type: !10)
!2705 = !DILocalVariable(name: "i", scope: !2542, file: !2543, line: 31, type: !9)
!2706 = !DILocation(line: 92, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !2543, line: 94, column: 3)
!2708 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 93, column: 3)
!2709 = !DILocation(line: 0, scope: !2577)
!2710 = !DILocation(line: 92, column: 13, scope: !2707)
!2711 = !DILocation(line: 92, column: 26, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !2543, line: 92, column: 9)
!2713 = distinct !DILexicalBlock(scope: !2707, file: !2543, line: 92, column: 13)
!2714 = !DILocation(line: 92, column: 14, scope: !2712)
!2715 = !DILocation(line: 92, column: 9, scope: !2713)
!2716 = !DILocation(line: 92, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !2543, line: 92, column: 36)
!2718 = !DILocation(line: 94, column: 36, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !2543, line: 95, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2713, file: !2543, line: 94, column: 5)
!2721 = !DILocation(line: 94, column: 5, scope: !2719)
!2722 = !DILocation(line: 96, column: 55, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !2543, line: 96, column: 5)
!2724 = !DILocation(line: 96, column: 15, scope: !2723)
!2725 = !DILocalVariable(name: "tmp___3", scope: !2542, file: !2543, line: 38, type: !59)
!2726 = !DILocation(line: 96, column: 17, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2713, file: !2543, line: 96, column: 9)
!2728 = !DILocation(line: 96, column: 9, scope: !2713)
!2729 = !DILocation(line: 97, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !2543, line: 96, column: 23)
!2731 = !DILocation(line: 96, column: 9, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !2543, line: 96, column: 9)
!2733 = !DILocation(line: 96, column: 13, scope: !2732)
!2734 = !DILocation(line: 96, column: 11, scope: !2732)
!2735 = !DILocation(line: 96, column: 9, scope: !2727)
!2736 = !DILocation(line: 97, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !2543, line: 96, column: 16)
!2738 = !DILocation(line: 99, column: 26, scope: !2713)
!2739 = !DILocation(line: 99, column: 11, scope: !2713)
!2740 = !DILocation(line: 99, column: 17, scope: !2713)
!2741 = !DILocation(line: 99, column: 24, scope: !2713)
!2742 = !DILocation(line: 100, column: 11, scope: !2713)
!2743 = !DILocation(line: 100, column: 17, scope: !2713)
!2744 = !DILocation(line: 100, column: 22, scope: !2713)
!2745 = !DILocation(line: 102, column: 27, scope: !2713)
!2746 = !DILocation(line: 102, column: 16, scope: !2713)
!2747 = !DILocation(line: 102, column: 11, scope: !2713)
!2748 = !DILocation(line: 102, column: 38, scope: !2713)
!2749 = !DILocation(line: 102, column: 45, scope: !2713)
!2750 = !DILocation(line: 103, column: 27, scope: !2713)
!2751 = !DILocation(line: 103, column: 16, scope: !2713)
!2752 = !DILocation(line: 103, column: 11, scope: !2713)
!2753 = !DILocation(line: 103, column: 38, scope: !2713)
!2754 = !DILocation(line: 103, column: 43, scope: !2713)
!2755 = !DILocation(line: 105, column: 24, scope: !2713)
!2756 = !DILocation(line: 105, column: 11, scope: !2713)
!2757 = !DILocation(line: 105, column: 17, scope: !2713)
!2758 = !DILocation(line: 105, column: 22, scope: !2713)
!2759 = !DILocation(line: 106, column: 45, scope: !2713)
!2760 = !DILocation(line: 106, column: 27, scope: !2713)
!2761 = !DILocation(line: 106, column: 16, scope: !2713)
!2762 = !DILocation(line: 106, column: 11, scope: !2713)
!2763 = !DILocation(line: 106, column: 38, scope: !2713)
!2764 = !DILocation(line: 106, column: 43, scope: !2713)
!2765 = !DILocation(line: 108, column: 33, scope: !2713)
!2766 = !DILocation(line: 108, column: 22, scope: !2713)
!2767 = !DILocation(line: 108, column: 10, scope: !2713)
!2768 = !DILocation(line: 108, column: 15, scope: !2713)
!2769 = !DILocation(line: 109, column: 22, scope: !2713)
!2770 = !DILocation(line: 109, column: 10, scope: !2713)
!2771 = !DILocation(line: 109, column: 15, scope: !2713)
!2772 = !DILocation(line: 110, column: 24, scope: !2713)
!2773 = !DILocation(line: 110, column: 29, scope: !2713)
!2774 = !DILocalVariable(name: "tmp___4", scope: !2542, file: !2543, line: 39, type: !7)
!2775 = !DILocation(line: 110, column: 10, scope: !2713)
!2776 = !DILocation(line: 110, column: 15, scope: !2713)
!2777 = !DILocation(line: 110, column: 19, scope: !2713)
!2778 = !DILocation(line: 111, column: 26, scope: !2713)
!2779 = !DILocation(line: 111, column: 33, scope: !2713)
!2780 = !DILocation(line: 111, column: 10, scope: !2713)
!2781 = !DILocation(line: 111, column: 18, scope: !2713)
!2782 = !DILocation(line: 112, column: 11, scope: !2713)
!2783 = !DILocation(line: 112, column: 18, scope: !2713)
!2784 = !DILocation(line: 112, column: 27, scope: !2713)
!2785 = !DILocation(line: 113, column: 25, scope: !2713)
!2786 = !DILocation(line: 113, column: 32, scope: !2713)
!2787 = !DILocation(line: 113, column: 10, scope: !2713)
!2788 = !DILocation(line: 113, column: 17, scope: !2713)
!2789 = !DILocation(line: 114, column: 11, scope: !2713)
!2790 = !DILocation(line: 114, column: 18, scope: !2713)
!2791 = !DILocation(line: 114, column: 26, scope: !2713)
!2792 = !DILocation(line: 115, column: 9, scope: !2713)
!2793 = !DILocation(line: 117, column: 38, scope: !2713)
!2794 = !DILocation(line: 117, column: 27, scope: !2713)
!2795 = !DILocation(line: 117, column: 22, scope: !2713)
!2796 = !DILocation(line: 117, column: 10, scope: !2713)
!2797 = !DILocation(line: 117, column: 15, scope: !2713)
!2798 = !DILocation(line: 118, column: 33, scope: !2713)
!2799 = !DILocation(line: 118, column: 22, scope: !2713)
!2800 = !DILocation(line: 118, column: 10, scope: !2713)
!2801 = !DILocation(line: 118, column: 15, scope: !2713)
!2802 = !DILocalVariable(name: "tmp___5", scope: !2542, file: !2543, line: 40, type: !7)
!2803 = !DILocation(line: 119, column: 10, scope: !2713)
!2804 = !DILocation(line: 119, column: 15, scope: !2713)
!2805 = !DILocation(line: 119, column: 19, scope: !2713)
!2806 = !DILocation(line: 120, column: 26, scope: !2713)
!2807 = !DILocation(line: 120, column: 33, scope: !2713)
!2808 = !DILocation(line: 120, column: 10, scope: !2713)
!2809 = !DILocation(line: 120, column: 18, scope: !2713)
!2810 = !DILocation(line: 121, column: 11, scope: !2713)
!2811 = !DILocation(line: 121, column: 18, scope: !2713)
!2812 = !DILocation(line: 121, column: 27, scope: !2713)
!2813 = !DILocation(line: 122, column: 25, scope: !2713)
!2814 = !DILocation(line: 122, column: 32, scope: !2713)
!2815 = !DILocation(line: 122, column: 10, scope: !2713)
!2816 = !DILocation(line: 122, column: 17, scope: !2713)
!2817 = !DILocation(line: 123, column: 11, scope: !2713)
!2818 = !DILocation(line: 123, column: 18, scope: !2713)
!2819 = !DILocation(line: 123, column: 26, scope: !2713)
!2820 = !DILocation(line: 124, column: 9, scope: !2713)
!2821 = !DILocation(line: 126, column: 22, scope: !2713)
!2822 = !DILocation(line: 126, column: 10, scope: !2713)
!2823 = !DILocation(line: 126, column: 15, scope: !2713)
!2824 = !DILocation(line: 127, column: 38, scope: !2713)
!2825 = !DILocation(line: 127, column: 27, scope: !2713)
!2826 = !DILocation(line: 127, column: 22, scope: !2713)
!2827 = !DILocation(line: 127, column: 10, scope: !2713)
!2828 = !DILocation(line: 127, column: 15, scope: !2713)
!2829 = !DILocation(line: 128, column: 18, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2713, file: !2543, line: 128, column: 9)
!2831 = !DILocation(line: 128, column: 23, scope: !2830)
!2832 = !DILocation(line: 128, column: 9, scope: !2713)
!2833 = !DILocation(line: 128, column: 26, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2830, file: !2543, line: 128, column: 39)
!2835 = !DILocalVariable(name: "tmp___7", scope: !2542, file: !2543, line: 42, type: !9)
!2836 = !DILocation(line: 129, column: 5, scope: !2834)
!2837 = !DILocation(line: 0, scope: !2830)
!2838 = !DILocation(line: 128, column: 18, scope: !2713)
!2839 = !DILocalVariable(name: "tmp___6", scope: !2542, file: !2543, line: 41, type: !7)
!2840 = !DILocation(line: 128, column: 10, scope: !2713)
!2841 = !DILocation(line: 128, column: 15, scope: !2713)
!2842 = !DILocation(line: 128, column: 19, scope: !2713)
!2843 = !DILocation(line: 129, column: 26, scope: !2713)
!2844 = !DILocation(line: 129, column: 33, scope: !2713)
!2845 = !DILocation(line: 129, column: 10, scope: !2713)
!2846 = !DILocation(line: 129, column: 18, scope: !2713)
!2847 = !DILocation(line: 130, column: 11, scope: !2713)
!2848 = !DILocation(line: 130, column: 18, scope: !2713)
!2849 = !DILocation(line: 130, column: 27, scope: !2713)
!2850 = !DILocation(line: 131, column: 25, scope: !2713)
!2851 = !DILocation(line: 131, column: 32, scope: !2713)
!2852 = !DILocation(line: 131, column: 10, scope: !2713)
!2853 = !DILocation(line: 131, column: 17, scope: !2713)
!2854 = !DILocation(line: 132, column: 11, scope: !2713)
!2855 = !DILocation(line: 132, column: 18, scope: !2713)
!2856 = !DILocation(line: 132, column: 26, scope: !2713)
!2857 = !DILocation(line: 133, column: 9, scope: !2713)
!2858 = !DILocation(line: 92, column: 7, scope: !2713)
!2859 = distinct !{!2859, !2706, !2860}
!2860 = !DILocation(line: 93, column: 3, scope: !2707)
!2861 = !DILocation(line: 95, column: 3, scope: !2707)
!2862 = !DILocation(line: 137, column: 21, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 137, column: 7)
!2864 = !DILocation(line: 137, column: 29, scope: !2863)
!2865 = !DILocation(line: 137, column: 9, scope: !2863)
!2866 = !DILocation(line: 137, column: 7, scope: !2577)
!2867 = !DILocation(line: 138, column: 5, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !2543, line: 137, column: 35)
!2869 = !DILocation(line: 141, column: 3, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !2543, line: 143, column: 3)
!2871 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 142, column: 3)
!2872 = !DILocation(line: 141, column: 13, scope: !2870)
!2873 = !DILocation(line: 141, column: 25, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !2543, line: 141, column: 9)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !2543, line: 141, column: 13)
!2876 = !DILocation(line: 141, column: 14, scope: !2874)
!2877 = !DILocation(line: 141, column: 9, scope: !2875)
!2878 = !DILocation(line: 141, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2874, file: !2543, line: 141, column: 33)
!2880 = !DILocation(line: 143, column: 36, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !2543, line: 144, column: 5)
!2882 = distinct !DILexicalBlock(scope: !2875, file: !2543, line: 143, column: 5)
!2883 = !DILocation(line: 143, column: 5, scope: !2881)
!2884 = !DILocation(line: 145, column: 55, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !2543, line: 145, column: 5)
!2886 = !DILocation(line: 145, column: 15, scope: !2885)
!2887 = !DILocalVariable(name: "tmp___8", scope: !2542, file: !2543, line: 43, type: !59)
!2888 = !DILocation(line: 145, column: 17, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2875, file: !2543, line: 145, column: 9)
!2890 = !DILocation(line: 145, column: 9, scope: !2875)
!2891 = !DILocation(line: 146, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !2543, line: 145, column: 23)
!2893 = !DILocation(line: 148, column: 25, scope: !2875)
!2894 = !DILocation(line: 148, column: 38, scope: !2875)
!2895 = !DILocation(line: 148, column: 27, scope: !2875)
!2896 = !DILocation(line: 148, column: 22, scope: !2875)
!2897 = !DILocation(line: 148, column: 10, scope: !2875)
!2898 = !DILocation(line: 148, column: 15, scope: !2875)
!2899 = !DILocation(line: 149, column: 24, scope: !2875)
!2900 = !DILocation(line: 149, column: 22, scope: !2875)
!2901 = !DILocation(line: 149, column: 10, scope: !2875)
!2902 = !DILocation(line: 149, column: 15, scope: !2875)
!2903 = !DILocation(line: 150, column: 21, scope: !2875)
!2904 = !DILocation(line: 150, column: 10, scope: !2875)
!2905 = !DILocation(line: 150, column: 19, scope: !2875)
!2906 = !DILocation(line: 151, column: 17, scope: !2875)
!2907 = !DILocation(line: 151, column: 10, scope: !2875)
!2908 = !DILocation(line: 151, column: 15, scope: !2875)
!2909 = !DILocation(line: 152, column: 26, scope: !2875)
!2910 = !DILocation(line: 152, column: 33, scope: !2875)
!2911 = !DILocation(line: 152, column: 10, scope: !2875)
!2912 = !DILocation(line: 152, column: 18, scope: !2875)
!2913 = !DILocation(line: 153, column: 11, scope: !2875)
!2914 = !DILocation(line: 153, column: 18, scope: !2875)
!2915 = !DILocation(line: 153, column: 27, scope: !2875)
!2916 = !DILocation(line: 154, column: 25, scope: !2875)
!2917 = !DILocation(line: 154, column: 32, scope: !2875)
!2918 = !DILocation(line: 154, column: 10, scope: !2875)
!2919 = !DILocation(line: 154, column: 17, scope: !2875)
!2920 = !DILocation(line: 155, column: 11, scope: !2875)
!2921 = !DILocation(line: 155, column: 18, scope: !2875)
!2922 = !DILocation(line: 155, column: 26, scope: !2875)
!2923 = !DILocation(line: 141, column: 7, scope: !2875)
!2924 = distinct !{!2924, !2869, !2925}
!2925 = !DILocation(line: 142, column: 3, scope: !2870)
!2926 = !DILocation(line: 144, column: 3, scope: !2870)
!2927 = !DILocation(line: 159, column: 32, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 159, column: 7)
!2929 = !DILocation(line: 159, column: 7, scope: !2928)
!2930 = !DILocation(line: 159, column: 45, scope: !2928)
!2931 = !DILocation(line: 159, column: 42, scope: !2928)
!2932 = !DILocation(line: 159, column: 7, scope: !2577)
!2933 = !DILocation(line: 161, column: 14, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2928, file: !2543, line: 159, column: 66)
!2935 = !DILocation(line: 161, column: 24, scope: !2934)
!2936 = !DILocation(line: 162, column: 20, scope: !2934)
!2937 = !DILocation(line: 163, column: 14, scope: !2934)
!2938 = !DILocation(line: 163, column: 16, scope: !2934)
!2939 = !DILocation(line: 163, column: 5, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !2543, line: 165, column: 5)
!2941 = distinct !DILexicalBlock(scope: !2934, file: !2543, line: 164, column: 5)
!2942 = !DILocation(line: 0, scope: !2934)
!2943 = !DILocation(line: 163, column: 15, scope: !2940)
!2944 = !DILocation(line: 163, column: 14, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !2543, line: 163, column: 11)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !2543, line: 163, column: 15)
!2947 = !DILocation(line: 163, column: 61, scope: !2945)
!2948 = !DILocation(line: 163, column: 36, scope: !2945)
!2949 = !DILocation(line: 163, column: 34, scope: !2945)
!2950 = !DILocation(line: 163, column: 11, scope: !2946)
!2951 = !DILocation(line: 163, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2945, file: !2543, line: 163, column: 73)
!2953 = !DILocation(line: 164, column: 17, scope: !2946)
!2954 = !DILocation(line: 164, column: 20, scope: !2946)
!2955 = distinct !{!2955, !2939, !2956}
!2956 = !DILocation(line: 164, column: 5, scope: !2940)
!2957 = !DILocation(line: 166, column: 5, scope: !2940)
!2958 = !DILocation(line: 165, column: 31, scope: !2934)
!2959 = !DILocation(line: 165, column: 14, scope: !2934)
!2960 = !DILocation(line: 165, column: 20, scope: !2934)
!2961 = !DILocation(line: 166, column: 3, scope: !2934)
!2962 = !DILocation(line: 168, column: 3, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !2543, line: 168, column: 3)
!2964 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 167, column: 3)
!2965 = !DILocation(line: 171, column: 12, scope: !2964)
!2966 = !DILocation(line: 171, column: 3, scope: !2964)
!2967 = !DILocation(line: 171, column: 25, scope: !2964)
!2968 = !DILocation(line: 173, column: 3, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2543, line: 176, column: 3)
!2970 = distinct !DILexicalBlock(scope: !2577, file: !2543, line: 175, column: 3)
!2971 = !DILocation(line: 173, column: 13, scope: !2969)
!2972 = !DILocation(line: 173, column: 26, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !2543, line: 173, column: 9)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !2543, line: 173, column: 13)
!2975 = !DILocation(line: 173, column: 14, scope: !2973)
!2976 = !DILocation(line: 173, column: 9, scope: !2974)
!2977 = !DILocation(line: 173, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2973, file: !2543, line: 173, column: 36)
!2979 = !DILocation(line: 175, column: 18, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2974, file: !2543, line: 175, column: 9)
!2981 = !DILocation(line: 175, column: 23, scope: !2980)
!2982 = !DILocation(line: 175, column: 9, scope: !2974)
!2983 = !DILocation(line: 175, column: 26, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !2543, line: 175, column: 39)
!2985 = !DILocalVariable(name: "tmp___9", scope: !2542, file: !2543, line: 44, type: !9)
!2986 = !DILocation(line: 176, column: 5, scope: !2984)
!2987 = !DILocation(line: 0, scope: !2980)
!2988 = !DILocation(line: 175, column: 49, scope: !2974)
!2989 = !DILocation(line: 175, column: 15, scope: !2974)
!2990 = !DILocation(line: 175, column: 26, scope: !2974)
!2991 = !DILocation(line: 175, column: 30, scope: !2974)
!2992 = !DILocation(line: 175, column: 20, scope: !2974)
!2993 = !DILocation(line: 175, column: 38, scope: !2974)
!2994 = !DILocation(line: 175, column: 43, scope: !2974)
!2995 = !DILocation(line: 177, column: 18, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2974, file: !2543, line: 177, column: 9)
!2997 = !DILocation(line: 177, column: 23, scope: !2996)
!2998 = !DILocation(line: 177, column: 9, scope: !2974)
!2999 = !DILocation(line: 177, column: 27, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !2543, line: 177, column: 39)
!3001 = !DILocalVariable(name: "tmp___10", scope: !2542, file: !2543, line: 45, type: !9)
!3002 = !DILocation(line: 178, column: 5, scope: !3000)
!3003 = !DILocation(line: 0, scope: !2996)
!3004 = !DILocation(line: 177, column: 53, scope: !2974)
!3005 = !DILocation(line: 177, column: 15, scope: !2974)
!3006 = !DILocation(line: 177, column: 26, scope: !2974)
!3007 = !DILocation(line: 177, column: 30, scope: !2974)
!3008 = !DILocation(line: 177, column: 20, scope: !2974)
!3009 = !DILocation(line: 177, column: 38, scope: !2974)
!3010 = !DILocation(line: 177, column: 47, scope: !2974)
!3011 = !DILocation(line: 173, column: 7, scope: !2974)
!3012 = distinct !{!3012, !2968, !3013}
!3013 = !DILocation(line: 174, column: 3, scope: !2969)
!3014 = !DILocation(line: 176, column: 3, scope: !2969)
!3015 = !DILocation(line: 182, column: 3, scope: !2577)
!3016 = !DILocation(line: 184, column: 1, scope: !2542)
!3017 = distinct !DISubprogram(name: "getfree", scope: !1197, file: !1197, line: 370, type: !530, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3018 = !DILocalVariable(name: "net___0", arg: 1, scope: !3017, file: !1197, line: 370, type: !532)
!3019 = !DILocation(line: 0, scope: !3017)
!3020 = !DILocation(line: 378, column: 16, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !1197, line: 378, column: 7)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !1197, line: 376, column: 3)
!3023 = !DILocation(line: 378, column: 7, scope: !3021)
!3024 = !DILocation(line: 378, column: 7, scope: !3022)
!3025 = !DILocation(line: 378, column: 27, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !1197, line: 380, column: 5)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !1197, line: 379, column: 5)
!3028 = distinct !DILexicalBlock(scope: !3021, file: !1197, line: 378, column: 23)
!3029 = !DILocation(line: 378, column: 10, scope: !3026)
!3030 = !DILocation(line: 378, column: 5, scope: !3026)
!3031 = !DILocation(line: 381, column: 3, scope: !3028)
!3032 = !DILocation(line: 379, column: 16, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3022, file: !1197, line: 379, column: 7)
!3034 = !DILocation(line: 379, column: 7, scope: !3033)
!3035 = !DILocation(line: 379, column: 7, scope: !3022)
!3036 = !DILocation(line: 379, column: 27, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !1197, line: 381, column: 5)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !1197, line: 380, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3033, file: !1197, line: 379, column: 22)
!3040 = !DILocation(line: 379, column: 10, scope: !3037)
!3041 = !DILocation(line: 379, column: 5, scope: !3037)
!3042 = !DILocation(line: 382, column: 3, scope: !3039)
!3043 = !DILocation(line: 380, column: 16, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3022, file: !1197, line: 380, column: 7)
!3045 = !DILocation(line: 380, column: 7, scope: !3044)
!3046 = !DILocation(line: 380, column: 7, scope: !3022)
!3047 = !DILocation(line: 380, column: 27, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !1197, line: 382, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !1197, line: 381, column: 5)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !1197, line: 380, column: 28)
!3051 = !DILocation(line: 380, column: 10, scope: !3048)
!3052 = !DILocation(line: 380, column: 5, scope: !3048)
!3053 = !DILocation(line: 383, column: 3, scope: !3050)
!3054 = !DILocalVariable(name: "tmp", scope: !3017, file: !1197, line: 372, type: !15)
!3055 = !DILocation(line: 381, column: 12, scope: !3022)
!3056 = !DILocation(line: 381, column: 23, scope: !3022)
!3057 = !DILocation(line: 381, column: 18, scope: !3022)
!3058 = !DILocalVariable(name: "tmp___0", scope: !3017, file: !1197, line: 373, type: !10)
!3059 = !DILocation(line: 382, column: 12, scope: !3022)
!3060 = !DILocation(line: 382, column: 22, scope: !3022)
!3061 = !DILocation(line: 382, column: 17, scope: !3022)
!3062 = !DILocalVariable(name: "tmp___1", scope: !3017, file: !1197, line: 374, type: !10)
!3063 = !DILocation(line: 383, column: 12, scope: !3022)
!3064 = !DILocation(line: 383, column: 23, scope: !3022)
!3065 = !DILocation(line: 385, column: 3, scope: !3022)
!3066 = distinct !DISubprogram(name: "flow_cost", scope: !1197, file: !1197, line: 121, type: !3067, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!106, !532}
!3069 = !DILocalVariable(name: "net___0", arg: 1, scope: !3066, file: !1197, line: 121, type: !532)
!3070 = !DILocation(line: 0, scope: !3066)
!3071 = !DILocalVariable(name: "fleet", scope: !3066, file: !1197, line: 126, type: !9)
!3072 = !DILocalVariable(name: "operational_cost", scope: !3066, file: !1197, line: 127, type: !7)
!3073 = !DILocation(line: 136, column: 27, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3066, file: !1197, line: 129, column: 3)
!3075 = !DILocation(line: 136, column: 10, scope: !3074)
!3076 = !DILocalVariable(name: "stop", scope: !3066, file: !1197, line: 125, type: !49)
!3077 = !DILocation(line: 137, column: 18, scope: !3074)
!3078 = !DILocalVariable(name: "arc", scope: !3066, file: !1197, line: 123, type: !10)
!3079 = !DILocation(line: 137, column: 3, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !1197, line: 139, column: 3)
!3081 = distinct !DILexicalBlock(scope: !3074, file: !1197, line: 138, column: 3)
!3082 = !DILocation(line: 0, scope: !3074)
!3083 = !DILocation(line: 137, column: 13, scope: !3080)
!3084 = !DILocation(line: 137, column: 12, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !1197, line: 137, column: 9)
!3086 = distinct !DILexicalBlock(scope: !3080, file: !1197, line: 137, column: 13)
!3087 = !DILocation(line: 137, column: 52, scope: !3085)
!3088 = !DILocation(line: 137, column: 35, scope: !3085)
!3089 = !DILocation(line: 137, column: 32, scope: !3085)
!3090 = !DILocation(line: 137, column: 9, scope: !3086)
!3091 = !DILocation(line: 137, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !1197, line: 137, column: 69)
!3093 = !DILocation(line: 139, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3086, file: !1197, line: 139, column: 9)
!3095 = !DILocation(line: 139, column: 20, scope: !3094)
!3096 = !DILocation(line: 139, column: 9, scope: !3086)
!3097 = !DILocation(line: 140, column: 12, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !1197, line: 139, column: 27)
!3099 = !DILocation(line: 140, column: 17, scope: !3098)
!3100 = !DILocation(line: 141, column: 5, scope: !3098)
!3101 = !DILocation(line: 142, column: 12, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3094, file: !1197, line: 141, column: 12)
!3103 = !DILocation(line: 142, column: 17, scope: !3102)
!3104 = distinct !{!3104, !3079, !3105}
!3105 = !DILocation(line: 138, column: 3, scope: !3080)
!3106 = !DILocation(line: 140, column: 3, scope: !3080)
!3107 = !DILocation(line: 145, column: 27, scope: !3074)
!3108 = !DILocation(line: 145, column: 10, scope: !3074)
!3109 = !DILocation(line: 146, column: 19, scope: !3074)
!3110 = !DILocalVariable(name: "node", scope: !3066, file: !1197, line: 124, type: !15)
!3111 = !DILocation(line: 146, column: 8, scope: !3074)
!3112 = !DILocation(line: 146, column: 3, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !1197, line: 148, column: 3)
!3114 = distinct !DILexicalBlock(scope: !3074, file: !1197, line: 147, column: 3)
!3115 = !DILocation(line: 146, column: 13, scope: !3113)
!3116 = !DILocation(line: 146, column: 12, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !1197, line: 146, column: 9)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !1197, line: 146, column: 13)
!3119 = !DILocation(line: 146, column: 53, scope: !3117)
!3120 = !DILocation(line: 146, column: 36, scope: !3117)
!3121 = !DILocation(line: 146, column: 33, scope: !3117)
!3122 = !DILocation(line: 146, column: 9, scope: !3118)
!3123 = !DILocation(line: 146, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3117, file: !1197, line: 146, column: 71)
!3125 = !DILocation(line: 147, column: 37, scope: !3118)
!3126 = !DILocation(line: 147, column: 12, scope: !3118)
!3127 = !DILocation(line: 147, column: 24, scope: !3118)
!3128 = !DILocation(line: 147, column: 29, scope: !3118)
!3129 = !DILocation(line: 146, column: 10, scope: !3118)
!3130 = distinct !{!3130, !3112, !3131}
!3131 = !DILocation(line: 147, column: 3, scope: !3113)
!3132 = !DILocation(line: 149, column: 3, scope: !3113)
!3133 = !DILocation(line: 149, column: 27, scope: !3074)
!3134 = !DILocation(line: 149, column: 10, scope: !3074)
!3135 = !DILocation(line: 150, column: 18, scope: !3074)
!3136 = !DILocation(line: 150, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !1197, line: 152, column: 3)
!3138 = distinct !DILexicalBlock(scope: !3074, file: !1197, line: 151, column: 3)
!3139 = !DILocation(line: 132, column: 9, scope: !3074)
!3140 = !DILocation(line: 133, column: 20, scope: !3074)
!3141 = !DILocation(line: 150, column: 13, scope: !3137)
!3142 = !DILocation(line: 150, column: 12, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !1197, line: 150, column: 9)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !1197, line: 150, column: 13)
!3145 = !DILocation(line: 150, column: 52, scope: !3143)
!3146 = !DILocation(line: 150, column: 35, scope: !3143)
!3147 = !DILocation(line: 150, column: 32, scope: !3143)
!3148 = !DILocation(line: 150, column: 9, scope: !3144)
!3149 = !DILocation(line: 150, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3143, file: !1197, line: 150, column: 69)
!3151 = !DILocation(line: 152, column: 14, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !1197, line: 152, column: 9)
!3153 = !DILocation(line: 152, column: 9, scope: !3152)
!3154 = !DILocation(line: 152, column: 9, scope: !3144)
!3155 = !DILocation(line: 154, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !1197, line: 154, column: 11)
!3157 = distinct !DILexicalBlock(scope: !3152, file: !1197, line: 152, column: 20)
!3158 = !DILocation(line: 154, column: 24, scope: !3156)
!3159 = !DILocation(line: 154, column: 31, scope: !3156)
!3160 = !DILocation(line: 154, column: 11, scope: !3157)
!3161 = !DILocation(line: 154, column: 22, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !1197, line: 154, column: 13)
!3163 = distinct !DILexicalBlock(scope: !3156, file: !1197, line: 154, column: 37)
!3164 = !DILocation(line: 154, column: 29, scope: !3162)
!3165 = !DILocation(line: 154, column: 36, scope: !3162)
!3166 = !DILocation(line: 154, column: 13, scope: !3163)
!3167 = !DILocation(line: 154, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3162, file: !1197, line: 154, column: 43)
!3169 = !DILocation(line: 156, column: 7, scope: !3163)
!3170 = !DILocation(line: 156, column: 19, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3156, file: !1197, line: 156, column: 11)
!3172 = !DILocation(line: 156, column: 26, scope: !3171)
!3173 = !DILocation(line: 156, column: 13, scope: !3171)
!3174 = !DILocation(line: 156, column: 11, scope: !3156)
!3175 = !DILocation(line: 158, column: 34, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !1197, line: 156, column: 34)
!3177 = !DILocation(line: 158, column: 50, scope: !3176)
!3178 = !DILocation(line: 158, column: 39, scope: !3176)
!3179 = !DILocation(line: 158, column: 26, scope: !3176)
!3180 = !DILocation(line: 159, column: 15, scope: !3176)
!3181 = !DILocation(line: 160, column: 7, scope: !3176)
!3182 = !DILocation(line: 162, column: 34, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3171, file: !1197, line: 160, column: 14)
!3184 = !DILocation(line: 162, column: 26, scope: !3183)
!3185 = !DILocation(line: 0, scope: !3171)
!3186 = !DILocation(line: 164, column: 5, scope: !3157)
!3187 = distinct !{!3187, !3136, !3188}
!3188 = !DILocation(line: 151, column: 3, scope: !3137)
!3189 = !DILocation(line: 153, column: 3, scope: !3137)
!3190 = !DILocation(line: 168, column: 11, scope: !3074)
!3191 = !DILocation(line: 168, column: 46, scope: !3074)
!3192 = !DILocation(line: 168, column: 28, scope: !3074)
!3193 = !DILocation(line: 168, column: 26, scope: !3074)
!3194 = !DILocation(line: 168, column: 53, scope: !3074)
!3195 = !DILocation(line: 168, column: 51, scope: !3074)
!3196 = !DILocation(line: 168, column: 3, scope: !3074)
!3197 = distinct !DISubprogram(name: "flow_org_cost", scope: !1197, file: !1197, line: 181, type: !3067, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3198 = !DILocalVariable(name: "net___0", arg: 1, scope: !3197, file: !1197, line: 181, type: !532)
!3199 = !DILocation(line: 0, scope: !3197)
!3200 = !DILocalVariable(name: "fleet", scope: !3197, file: !1197, line: 186, type: !9)
!3201 = !DILocalVariable(name: "operational_cost", scope: !3197, file: !1197, line: 187, type: !7)
!3202 = !DILocation(line: 196, column: 27, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !1197, line: 189, column: 3)
!3204 = !DILocation(line: 196, column: 10, scope: !3203)
!3205 = !DILocalVariable(name: "stop", scope: !3197, file: !1197, line: 185, type: !49)
!3206 = !DILocation(line: 197, column: 18, scope: !3203)
!3207 = !DILocalVariable(name: "arc", scope: !3197, file: !1197, line: 183, type: !10)
!3208 = !DILocation(line: 197, column: 3, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !1197, line: 199, column: 3)
!3210 = distinct !DILexicalBlock(scope: !3203, file: !1197, line: 198, column: 3)
!3211 = !DILocation(line: 0, scope: !3203)
!3212 = !DILocation(line: 197, column: 13, scope: !3209)
!3213 = !DILocation(line: 197, column: 12, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !1197, line: 197, column: 9)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !1197, line: 197, column: 13)
!3216 = !DILocation(line: 197, column: 52, scope: !3214)
!3217 = !DILocation(line: 197, column: 35, scope: !3214)
!3218 = !DILocation(line: 197, column: 32, scope: !3214)
!3219 = !DILocation(line: 197, column: 9, scope: !3215)
!3220 = !DILocation(line: 197, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3214, file: !1197, line: 197, column: 69)
!3222 = !DILocation(line: 199, column: 14, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3215, file: !1197, line: 199, column: 9)
!3224 = !DILocation(line: 199, column: 20, scope: !3223)
!3225 = !DILocation(line: 199, column: 9, scope: !3215)
!3226 = !DILocation(line: 200, column: 12, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !1197, line: 199, column: 27)
!3228 = !DILocation(line: 200, column: 17, scope: !3227)
!3229 = !DILocation(line: 201, column: 5, scope: !3227)
!3230 = !DILocation(line: 202, column: 12, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3223, file: !1197, line: 201, column: 12)
!3232 = !DILocation(line: 202, column: 17, scope: !3231)
!3233 = distinct !{!3233, !3208, !3234}
!3234 = !DILocation(line: 198, column: 3, scope: !3209)
!3235 = !DILocation(line: 200, column: 3, scope: !3209)
!3236 = !DILocation(line: 205, column: 27, scope: !3203)
!3237 = !DILocation(line: 205, column: 10, scope: !3203)
!3238 = !DILocation(line: 206, column: 19, scope: !3203)
!3239 = !DILocalVariable(name: "node", scope: !3197, file: !1197, line: 184, type: !15)
!3240 = !DILocation(line: 206, column: 8, scope: !3203)
!3241 = !DILocation(line: 206, column: 3, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !1197, line: 208, column: 3)
!3243 = distinct !DILexicalBlock(scope: !3203, file: !1197, line: 207, column: 3)
!3244 = !DILocation(line: 206, column: 13, scope: !3242)
!3245 = !DILocation(line: 206, column: 12, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !1197, line: 206, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !1197, line: 206, column: 13)
!3248 = !DILocation(line: 206, column: 53, scope: !3246)
!3249 = !DILocation(line: 206, column: 36, scope: !3246)
!3250 = !DILocation(line: 206, column: 33, scope: !3246)
!3251 = !DILocation(line: 206, column: 9, scope: !3247)
!3252 = !DILocation(line: 206, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3246, file: !1197, line: 206, column: 71)
!3254 = !DILocation(line: 207, column: 37, scope: !3247)
!3255 = !DILocation(line: 207, column: 12, scope: !3247)
!3256 = !DILocation(line: 207, column: 24, scope: !3247)
!3257 = !DILocation(line: 207, column: 29, scope: !3247)
!3258 = !DILocation(line: 206, column: 10, scope: !3247)
!3259 = distinct !{!3259, !3241, !3260}
!3260 = !DILocation(line: 207, column: 3, scope: !3242)
!3261 = !DILocation(line: 209, column: 3, scope: !3242)
!3262 = !DILocation(line: 209, column: 27, scope: !3203)
!3263 = !DILocation(line: 209, column: 10, scope: !3203)
!3264 = !DILocation(line: 210, column: 18, scope: !3203)
!3265 = !DILocation(line: 210, column: 3, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !1197, line: 212, column: 3)
!3267 = distinct !DILexicalBlock(scope: !3203, file: !1197, line: 211, column: 3)
!3268 = !DILocation(line: 192, column: 9, scope: !3203)
!3269 = !DILocation(line: 193, column: 20, scope: !3203)
!3270 = !DILocation(line: 210, column: 13, scope: !3266)
!3271 = !DILocation(line: 210, column: 12, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !1197, line: 210, column: 9)
!3273 = distinct !DILexicalBlock(scope: !3266, file: !1197, line: 210, column: 13)
!3274 = !DILocation(line: 210, column: 52, scope: !3272)
!3275 = !DILocation(line: 210, column: 35, scope: !3272)
!3276 = !DILocation(line: 210, column: 32, scope: !3272)
!3277 = !DILocation(line: 210, column: 9, scope: !3273)
!3278 = !DILocation(line: 210, column: 7, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3272, file: !1197, line: 210, column: 69)
!3280 = !DILocation(line: 212, column: 14, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !1197, line: 212, column: 9)
!3282 = !DILocation(line: 212, column: 9, scope: !3281)
!3283 = !DILocation(line: 212, column: 9, scope: !3273)
!3284 = !DILocation(line: 214, column: 17, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !1197, line: 214, column: 11)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !1197, line: 212, column: 20)
!3287 = !DILocation(line: 214, column: 24, scope: !3285)
!3288 = !DILocation(line: 214, column: 31, scope: !3285)
!3289 = !DILocation(line: 214, column: 11, scope: !3286)
!3290 = !DILocation(line: 214, column: 22, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !1197, line: 214, column: 13)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !1197, line: 214, column: 37)
!3293 = !DILocation(line: 214, column: 29, scope: !3291)
!3294 = !DILocation(line: 214, column: 36, scope: !3291)
!3295 = !DILocation(line: 214, column: 13, scope: !3292)
!3296 = !DILocation(line: 214, column: 11, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3291, file: !1197, line: 214, column: 43)
!3298 = !DILocation(line: 216, column: 7, scope: !3292)
!3299 = !DILocation(line: 216, column: 19, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3285, file: !1197, line: 216, column: 11)
!3301 = !DILocation(line: 216, column: 26, scope: !3300)
!3302 = !DILocation(line: 216, column: 13, scope: !3300)
!3303 = !DILocation(line: 216, column: 11, scope: !3285)
!3304 = !DILocation(line: 218, column: 34, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !1197, line: 216, column: 34)
!3306 = !DILocation(line: 218, column: 54, scope: !3305)
!3307 = !DILocation(line: 218, column: 43, scope: !3305)
!3308 = !DILocation(line: 218, column: 26, scope: !3305)
!3309 = !DILocation(line: 219, column: 15, scope: !3305)
!3310 = !DILocation(line: 220, column: 7, scope: !3305)
!3311 = !DILocation(line: 222, column: 34, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3300, file: !1197, line: 220, column: 14)
!3313 = !DILocation(line: 222, column: 26, scope: !3312)
!3314 = !DILocation(line: 0, scope: !3300)
!3315 = !DILocation(line: 224, column: 5, scope: !3286)
!3316 = distinct !{!3316, !3265, !3317}
!3317 = !DILocation(line: 211, column: 3, scope: !3266)
!3318 = !DILocation(line: 213, column: 3, scope: !3266)
!3319 = !DILocation(line: 227, column: 11, scope: !3203)
!3320 = !DILocation(line: 227, column: 46, scope: !3203)
!3321 = !DILocation(line: 227, column: 28, scope: !3203)
!3322 = !DILocation(line: 227, column: 26, scope: !3203)
!3323 = !DILocation(line: 227, column: 53, scope: !3203)
!3324 = !DILocation(line: 227, column: 51, scope: !3203)
!3325 = !DILocation(line: 227, column: 3, scope: !3203)
!3326 = distinct !DISubprogram(name: "global_opt", scope: !128, file: !128, line: 29, type: !3327, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!9}
!3329 = !DILocalVariable(name: "__cil_tmp3", scope: !3326, file: !128, line: 33, type: !21)
!3330 = !DILocation(line: 33, column: 9, scope: !3326)
!3331 = !DILocalVariable(name: "__cil_tmp4", scope: !3326, file: !128, line: 34, type: !21)
!3332 = !DILocation(line: 34, column: 9, scope: !3326)
!3333 = !DILocalVariable(name: "__cil_tmp5", scope: !3326, file: !128, line: 35, type: !21)
!3334 = !DILocation(line: 35, column: 9, scope: !3326)
!3335 = !DILocalVariable(name: "__cil_tmp6", scope: !3326, file: !128, line: 36, type: !21)
!3336 = !DILocation(line: 36, column: 9, scope: !3326)
!3337 = !DILocalVariable(name: "__cil_tmp7", scope: !3326, file: !128, line: 37, type: !21)
!3338 = !DILocation(line: 37, column: 9, scope: !3326)
!3339 = !DILocalVariable(name: "__cil_tmp8", scope: !3326, file: !128, line: 38, type: !21)
!3340 = !DILocation(line: 38, column: 9, scope: !3326)
!3341 = !DILocalVariable(name: "new_arcs", scope: !3326, file: !128, line: 31, type: !9)
!3342 = !DILocation(line: 0, scope: !3326)
!3343 = !DILocation(line: 39, column: 3, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !128, line: 38, column: 3)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !128, line: 37, column: 3)
!3346 = distinct !DILexicalBlock(scope: !3326, file: !128, line: 40, column: 3)
!3347 = !DILocation(line: 0, scope: !3346)
!3348 = !DILocation(line: 39, column: 13, scope: !3344)
!3349 = !DILocation(line: 39, column: 11, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !128, line: 39, column: 9)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !128, line: 39, column: 13)
!3352 = !DILocation(line: 39, column: 9, scope: !3351)
!3353 = !DILocation(line: 39, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !128, line: 39, column: 21)
!3355 = !DILocation(line: 43, column: 16, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 42, column: 5)
!3357 = distinct !DILexicalBlock(scope: !3351, file: !128, line: 41, column: 5)
!3358 = !DILocation(line: 42, column: 5, scope: !3356)
!3359 = !DILocation(line: 45, column: 5, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 45, column: 5)
!3361 = !DILocation(line: 50, column: 16, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 47, column: 5)
!3363 = !DILocation(line: 49, column: 5, scope: !3362)
!3364 = !DILocation(line: 50, column: 11, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 52, column: 5)
!3366 = !DILocalVariable(name: "tmp", scope: !3326, file: !128, line: 32, type: !106)
!3367 = !DILocation(line: 50, column: 5, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 52, column: 5)
!3369 = !DILocation(line: 54, column: 16, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3357, file: !128, line: 53, column: 5)
!3371 = !DILocation(line: 57, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3351, file: !128, line: 57, column: 9)
!3373 = !DILocation(line: 57, column: 9, scope: !3351)
!3374 = !DILocation(line: 58, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !128, line: 59, column: 7)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !128, line: 58, column: 7)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !128, line: 57, column: 19)
!3378 = !DILocation(line: 62, column: 5, scope: !3377)
!3379 = !DILocation(line: 61, column: 18, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3351, file: !128, line: 61, column: 9)
!3381 = !DILocation(line: 61, column: 9, scope: !3351)
!3382 = !DILocation(line: 64, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !128, line: 63, column: 7)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !128, line: 62, column: 7)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !128, line: 61, column: 24)
!3386 = !DILocation(line: 67, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !128, line: 66, column: 7)
!3388 = distinct !{!3388, !3343, !3389}
!3389 = !DILocation(line: 71, column: 3, scope: !3344)
!3390 = !DILocation(line: 73, column: 3, scope: !3344)
!3391 = !DILocation(line: 76, column: 85, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !128, line: 77, column: 3)
!3393 = distinct !DILexicalBlock(scope: !3346, file: !128, line: 76, column: 3)
!3394 = !DILocation(line: 76, column: 3, scope: !3392)
!3395 = !DILocation(line: 78, column: 3, scope: !3346)
!3396 = distinct !DISubprogram(name: "main", scope: !128, file: !128, line: 87, type: !3397, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!59, !59, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!3400 = !DILocalVariable(name: "argc", arg: 1, scope: !3396, file: !128, line: 87, type: !59)
!3401 = !DILocation(line: 0, scope: !3396)
!3402 = !DILocalVariable(name: "argv", arg: 2, scope: !3396, file: !128, line: 87, type: !3399)
!3403 = !DILocalVariable(name: "__cil_tmp5", scope: !3396, file: !128, line: 91, type: !21)
!3404 = !DILocation(line: 91, column: 9, scope: !3396)
!3405 = !DILocalVariable(name: "__cil_tmp6", scope: !3396, file: !128, line: 92, type: !21)
!3406 = !DILocation(line: 92, column: 9, scope: !3396)
!3407 = !DILocalVariable(name: "__cil_tmp7", scope: !3396, file: !128, line: 93, type: !21)
!3408 = !DILocation(line: 93, column: 9, scope: !3396)
!3409 = !DILocalVariable(name: "__cil_tmp8", scope: !3396, file: !128, line: 94, type: !21)
!3410 = !DILocation(line: 94, column: 9, scope: !3396)
!3411 = !DILocalVariable(name: "__cil_tmp9", scope: !3396, file: !128, line: 95, type: !21)
!3412 = !DILocation(line: 95, column: 9, scope: !3396)
!3413 = !DILocalVariable(name: "__cil_tmp10", scope: !3396, file: !128, line: 96, type: !21)
!3414 = !DILocation(line: 96, column: 9, scope: !3396)
!3415 = !DILocalVariable(name: "__cil_tmp11", scope: !3396, file: !128, line: 97, type: !21)
!3416 = !DILocation(line: 97, column: 9, scope: !3396)
!3417 = !DILocalVariable(name: "__cil_tmp12", scope: !3396, file: !128, line: 98, type: !21)
!3418 = !DILocation(line: 98, column: 9, scope: !3396)
!3419 = !DILocalVariable(name: "__cil_tmp13", scope: !3396, file: !128, line: 99, type: !21)
!3420 = !DILocation(line: 99, column: 9, scope: !3396)
!3421 = !DILocalVariable(name: "__cil_tmp14", scope: !3396, file: !128, line: 100, type: !21)
!3422 = !DILocation(line: 100, column: 9, scope: !3396)
!3423 = !DILocation(line: 94, column: 12, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 94, column: 7)
!3425 = distinct !DILexicalBlock(scope: !3396, file: !128, line: 102, column: 3)
!3426 = !DILocation(line: 94, column: 7, scope: !3425)
!3427 = !DILocation(line: 95, column: 5, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !128, line: 94, column: 17)
!3429 = !DILocation(line: 98, column: 3, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 98, column: 3)
!3431 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 97, column: 3)
!3432 = !DILocation(line: 99, column: 3, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 100, column: 3)
!3434 = !DILocation(line: 100, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 101, column: 3)
!3436 = !DILocation(line: 101, column: 3, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 102, column: 3)
!3438 = !DILocation(line: 102, column: 3, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 103, column: 3)
!3440 = !DILocation(line: 105, column: 3, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 104, column: 3)
!3442 = !DILocation(line: 106, column: 12, scope: !3431)
!3443 = !DILocation(line: 108, column: 92, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 107, column: 3)
!3445 = !DILocation(line: 108, column: 85, scope: !3444)
!3446 = !DILocation(line: 108, column: 3, scope: !3444)
!3447 = !DILocation(line: 110, column: 9, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3431, file: !128, line: 110, column: 3)
!3449 = !DILocalVariable(name: "tmp", scope: !3396, file: !128, line: 89, type: !9)
!3450 = !DILocation(line: 110, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 110, column: 7)
!3452 = !DILocation(line: 110, column: 7, scope: !3425)
!3453 = !DILocation(line: 112, column: 5, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !128, line: 112, column: 5)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !128, line: 111, column: 5)
!3456 = distinct !DILexicalBlock(scope: !3451, file: !128, line: 110, column: 12)
!3457 = !DILocation(line: 113, column: 5, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !128, line: 114, column: 5)
!3459 = !DILocation(line: 114, column: 5, scope: !3456)
!3460 = !DILocation(line: 119, column: 85, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !128, line: 117, column: 3)
!3462 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 116, column: 3)
!3463 = !DILocation(line: 119, column: 3, scope: !3461)
!3464 = !DILocation(line: 123, column: 3, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !128, line: 121, column: 3)
!3466 = !DILocation(line: 124, column: 3, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3462, file: !128, line: 125, column: 3)
!3468 = !DILocation(line: 131, column: 3, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3462, file: !128, line: 126, column: 3)
!3470 = !DILocation(line: 136, column: 13, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3462, file: !128, line: 133, column: 3)
!3472 = !DILocalVariable(name: "tmp___0", scope: !3396, file: !128, line: 90, type: !9)
!3473 = !DILocation(line: 136, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 136, column: 7)
!3475 = !DILocation(line: 136, column: 7, scope: !3425)
!3476 = !DILocation(line: 138, column: 5, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !128, line: 138, column: 5)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !128, line: 137, column: 5)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !128, line: 136, column: 16)
!3480 = !DILocation(line: 139, column: 5, scope: !3479)
!3481 = !DILocation(line: 143, column: 3, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !128, line: 142, column: 3)
!3483 = distinct !DILexicalBlock(scope: !3425, file: !128, line: 141, column: 3)
!3484 = !DILocation(line: 144, column: 3, scope: !3425)
!3485 = !DILocation(line: 0, scope: !3425)
!3486 = !DILocation(line: 146, column: 1, scope: !3396)
