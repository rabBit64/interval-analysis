; ModuleID = '/tmp/tmp.ll'
source_filename = "c/xfpt-0.07.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.dirstr = type { i8*, i32, void (i8*)*, i32, i32 }
%struct.macrodef = type { %struct.macrodef*, %struct.argstr*, %struct.argstr*, i8*, i32 }
%struct.argstr = type { %struct.argstr*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.macroexe = type { %struct.macroexe*, %struct.macrodef*, %struct.argstr*, %struct.argstr* }
%struct.istackstr = type { %struct.istackstr*, i32, %struct._IO_FILE*, [256 x i8] }
%struct.pushstr = type { %struct.pushstr*, i32, [1 x i8] }
%struct.__anonstruct_error_struct_27 = type { i8, i8* }
%struct.tree_node = type { %struct.tree_node*, %struct.tree_node*, i8*, i8, [1 x i8] }
%struct.flagstr = type { %struct.flagstr*, i32, i8*, i8*, i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@thisdir = internal global i8* null, align 8, !dbg !0
@cmdcount = internal global i32 17, align 4, !dbg !207
@dirs = internal global [17 x %struct.dirstr] [%struct.dirstr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 4, void (i8*)* @do_arg, i32 1, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 8, void (i8*)* @do_eacharg, i32 1, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 5, void (i8*)* @do_echo, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 7, void (i8*)* @do_endarg, i32 0, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 8, void (i8*)* @do_endeach, i32 1, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 13, void (i8*)* @do_endinliteral, i32 0, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 5, void (i8*)* @do_flag, i32 0, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 8, void (i8*)* @do_include, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 10, void (i8*)* @do_inliteral, i32 1, i32 1 }, %struct.dirstr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 8, void (i8*)* @do_literal, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 6, void (i8*)* @do_macro, i32 0, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 5, void (i8*)* @do_nest, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 5, void (i8*)* @do_nonl, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 4, void (i8*)* @do_pop, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 5, void (i8*)* @do_push, i32 0, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 9, void (i8*)* @do_revision, i32 1, i32 0 }, %struct.dirstr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 4, void (i8*)* @do_set, i32 0, i32 0 }], align 16, !dbg !210
@spaces = internal global i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i32 0, i32 0), align 8, !dbg !232
@circumflexes = internal global i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i32 0, i32 0), align 8, !dbg !234
@para_inline_macro = global i32 0, align 4, !dbg !184
@macrolist = global %struct.macrodef* null, align 8, !dbg !176
@literal_state = global i32 0, align 4, !dbg !168
@outfile = global %struct._IO_FILE* null, align 8, !dbg !182
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@macrocurrent = global %struct.macroexe* null, align 8, !dbg !174
@from_type_ptr = global i32 0, align 4, !dbg !162
@from_type = common global [20 x i32] zeroinitializer, align 16, !dbg !196
@inbuffer = global i8* null, align 8, !dbg !164
@parabuffer = global i8* null, align 8, !dbg !186
@istack = global %struct.istackstr* null, align 8, !dbg !166
@xfpt_filename = internal global i8* null, align 8, !dbg !236
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@out_filename = internal global i8* null, align 8, !dbg !239
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@nest_level = global i32 0, align 4, !dbg !170
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"para&xfpt.rev;\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@nest_literal_stack = common global [4 x i32] zeroinitializer, align 16, !dbg !202
@.str.9 = private unnamed_addr constant [9 x i8] c"</para>\0A\00", align 1
@pushed = global %struct.pushstr* null, align 8, !dbg !190
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@return_code = global i32 0, align 4, !dbg !192
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"** Unknown error number %d\0A\00", align 1
@error_data = internal global [29 x %struct.__anonstruct_error_struct_27] [%struct.__anonstruct_error_struct_27 { i8 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.78, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.81, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.85, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.87, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.91, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.94, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.95, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.97, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.98, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.102, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.103, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i32 0, i32 0) }, %struct.__anonstruct_error_struct_27 { i8 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0) }], align 16, !dbg !241
@suppress_warnings = internal global i32 0, align 4, !dbg !252
@.str.12 = private unnamed_addr constant [13 x i8] c"** Warning: \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"** Error: \00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"   Processing macro %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"   Detected near line %d of %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   Detected near end of file\0A\00", align 1
@warning_count = internal global i32 0, align 4, !dbg !254
@.str.17 = private unnamed_addr constant [51 x i8] c"** Too many warnings - subsequent ones suppressed\0A\00", align 1
@error_count = internal global i32 0, align 4, !dbg !256
@.str.18 = private unnamed_addr constant [20 x i8] c"** Too many errors\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"** xfpt abandoned\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"/usr/local/share/xfpt\00", align 1
@xfpt_share = global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), align 8, !dbg !153
@.str.21 = private unnamed_addr constant [18 x i8] c"0.07 22-July-2009\00", align 1
@xfpt_version = global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), align 8, !dbg !156
@entities = global %struct.tree_node* null, align 8, !dbg !158
@flaglist = global %struct.flagstr* null, align 8, !dbg !160
@next_line = global i8* null, align 8, !dbg !172
@macro_argbase = global %struct.argstr* null, align 8, !dbg !178
@macro_starteach = global %struct.argstr* null, align 8, !dbg !180
@popto = global i32 -1, align 4, !dbg !188
@revision = global i8* null, align 8, !dbg !194
@.str.22 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"&#x2018;\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"&#x2019;\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"xfpt.rev\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c" revisionflag=\22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"&%.*s;\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"&%.*s\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"$=\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c".literal \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c".nest \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c".arg\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c".eacharg\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c".echo\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c".endarg\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c".endeach\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c".endinliteral\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c".flag\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c".include\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c".inliteral\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c".literal\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c".macro\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c".nest\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c".nonl\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c".pop\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c".push\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c".revision\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c".set\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"eacharg\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"inliteral\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c".endmacro\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c".macro \00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c". Dummy line\0A\00", align 1
@nonlbuffer = internal global [1024 x i8] zeroinitializer, align 16, !dbg !227
@.str.66 = private unnamed_addr constant [74 x i8] c"                                                                         \00", align 1
@.str.67 = private unnamed_addr constant [74 x i8] c"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"xpft version %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"xfpt: unknown option \22%s\22\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str.76 = private unnamed_addr constant [129 x i8] c"Usage: xfpt [-help]\0A            [-o <output-file>]\0A            [-S <share-directory>]\0A            [-v]\0A            [input-file]\0A\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"malloc failed: requested %d bytes\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"unknown directive line: %s\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"missing semicolon after \22&%.*s\22\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"unexpected character \22%c\22 after \22&#\22\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"\22layout\22, \22text\22, \22xml\22, or \22off\22 expected, but \22%s\22 found\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"unknown flag \22&%c\22\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"missing closing flag %s\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"flag nesting error: \22%s\22 expected before \22%s\22\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"a flag must begin with \22&\22\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"a flag must contain more than just \22&\22\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"malformed directive\0A   %s\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"line stack is empty\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"missing %s at end of file\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"a macro must be given a name\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"%s is permitted only inside a macro\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"unexpected %s\00", align 1
@.str.94 = private unnamed_addr constant [51 x i8] c"bad macro argument substitution: \22%c\22 follows \22%s\22\00", align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"relative macro argument not in \22eacharg\22 section\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"extra characters at end of directive\0A   %s %s\0A   %.*s%.*s\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"string too long for internal buffer (%d > %d)\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"entity \22%s\22 has already been defined\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"\22%s\22 is not permitted in an inline macro call\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"unknown macro \22%.*s\22 in inline macro call\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"missing closing parenthesis in inline macro call:\0A   %s\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"ampersand found at end of line or string - ignored\00", align 1
@.str.103 = private unnamed_addr constant [42 x i8] c"\22begin\22 or \22end\22 expected, but \22%s\22 found\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"\22.nest begin\22 too deeply nested\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"\22.nest end\22 incorrectly nested\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"<literal\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"</literal\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c",)\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @dot_process(i8* %p) #0 !dbg !264 {
entry:
  %length = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  %alength = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %length, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %alength, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata !4, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata !4, metadata !275, metadata !DIExpression()), !dbg !276
  store i8* %p, i8** @thisdir, align 8, !dbg !277
  call void @misc_detrail(i8* %p), !dbg !280
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !282
  %0 = load i8, i8* %add.ptr, align 1, !dbg !284
  %conv = zext i8 %0 to i32, !dbg !285
  %cmp = icmp eq i32 %conv, 0, !dbg !286
  br i1 %cmp, label %if.then, label %if.else, !dbg !287

if.then:                                          ; preds = %entry
  br label %return, !dbg !288

if.else:                                          ; preds = %entry
  %call = call i16** @__ctype_b_loc() #8, !dbg !290
  call void @llvm.dbg.value(metadata i16** %call, metadata !294, metadata !DIExpression()), !dbg !266
  %1 = load i16*, i16** %call, align 8, !dbg !298
  %add.ptr2 = getelementptr inbounds i8, i8* %p, i64 1, !dbg !300
  %2 = load i8, i8* %add.ptr2, align 1, !dbg !301
  %conv3 = zext i8 %2 to i32, !dbg !302
  %idx.ext = sext i32 %conv3 to i64, !dbg !303
  %add.ptr4 = getelementptr inbounds i16, i16* %1, i64 %idx.ext, !dbg !303
  %3 = load i16, i16* %add.ptr4, align 2, !dbg !304
  %conv5 = zext i16 %3 to i32, !dbg !305
  %and = and i32 %conv5, 8192, !dbg !306
  %tobool = icmp ne i32 %and, 0, !dbg !306
  br i1 %tobool, label %if.then6, label %if.end, !dbg !307

if.then6:                                         ; preds = %if.else
  br label %return, !dbg !308

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !266
  %4 = load i32, i32* @cmdcount, align 4, !dbg !311
  call void @llvm.dbg.value(metadata i32 %4, metadata !312, metadata !DIExpression()), !dbg !266
  br label %while.body, !dbg !313

while.body:                                       ; preds = %if.end83, %if.end7
  %top.0 = phi i32 [ %4, %if.end7 ], [ %top.1, %if.end83 ], !dbg !316
  %bot.0 = phi i32 [ 0, %if.end7 ], [ %bot.1, %if.end83 ], !dbg !317
  call void @llvm.dbg.value(metadata i32 %bot.0, metadata !310, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 %top.0, metadata !312, metadata !DIExpression()), !dbg !266
  br label %while_continue___4, !dbg !318

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !318

while_continue:                                   ; preds = %while_continue___4
  %cmp8 = icmp sgt i32 %top.0, %bot.0, !dbg !319
  br i1 %cmp8, label %if.end11, label %if.then10, !dbg !322

if.then10:                                        ; preds = %while_continue
  br label %while_break, !dbg !323

if.end11:                                         ; preds = %while_continue
  %add = add nsw i32 %top.0, %bot.0, !dbg !325
  %div = sdiv i32 %add, 2, !dbg !327
  call void @llvm.dbg.value(metadata i32 %div, metadata !328, metadata !DIExpression()), !dbg !266
  %idx.ext12 = sext i32 %div to i64, !dbg !329
  %add.ptr13 = getelementptr inbounds %struct.dirstr, %struct.dirstr* getelementptr inbounds ([17 x %struct.dirstr], [17 x %struct.dirstr]* @dirs, i32 0, i32 0), i64 %idx.ext12, !dbg !329
  call void @llvm.dbg.value(metadata %struct.dirstr* %add.ptr13, metadata !330, metadata !DIExpression()), !dbg !266
  %length14 = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 1, !dbg !332
  %5 = load i32, i32* %length14, align 8, !dbg !332
  store i32 %5, i32* %length, align 4, !dbg !333
  %name = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 0, !dbg !334
  %6 = load i8*, i8** %name, align 8, !dbg !334
  %7 = load i32, i32* %length, align 4, !dbg !336
  %call15 = call i32 @strncmp(i8* %p, i8* %6, i32 %7) #9, !dbg !337
  call void @llvm.dbg.value(metadata i32 %call15, metadata !338, metadata !DIExpression()), !dbg !266
  %cmp16 = icmp eq i32 %call15, 0, !dbg !339
  br i1 %cmp16, label %if.then18, label %if.end77, !dbg !341

if.then18:                                        ; preds = %if.end11
  %8 = load i32, i32* %length, align 4, !dbg !342
  %idx.ext19 = sext i32 %8 to i64, !dbg !345
  %add.ptr20 = getelementptr inbounds i8, i8* %p, i64 %idx.ext19, !dbg !345
  %9 = load i8, i8* %add.ptr20, align 1, !dbg !346
  %conv21 = zext i8 %9 to i32, !dbg !347
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !348
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !349

if.then24:                                        ; preds = %if.then18
  br label %_L, !dbg !350

if.else25:                                        ; preds = %if.then18
  %call26 = call i16** @__ctype_b_loc() #8, !dbg !352
  call void @llvm.dbg.value(metadata i16** %call26, metadata !356, metadata !DIExpression()), !dbg !266
  %10 = load i16*, i16** %call26, align 8, !dbg !357
  %11 = load i32, i32* %length, align 4, !dbg !359
  %idx.ext27 = sext i32 %11 to i64, !dbg !360
  %add.ptr28 = getelementptr inbounds i8, i8* %p, i64 %idx.ext27, !dbg !360
  %12 = load i8, i8* %add.ptr28, align 1, !dbg !361
  %conv29 = zext i8 %12 to i32, !dbg !362
  %idx.ext30 = sext i32 %conv29 to i64, !dbg !363
  %add.ptr31 = getelementptr inbounds i16, i16* %10, i64 %idx.ext30, !dbg !363
  %13 = load i16, i16* %add.ptr31, align 2, !dbg !364
  %conv32 = zext i16 %13 to i32, !dbg !365
  %and33 = and i32 %conv32, 8192, !dbg !366
  %tobool34 = icmp ne i32 %and33, 0, !dbg !366
  br i1 %tobool34, label %if.then35, label %if.end75, !dbg !367

if.then35:                                        ; preds = %if.else25
  br label %_L, !dbg !368

_L:                                               ; preds = %if.then35, %if.then24
  %14 = load i32, i32* %length, align 4, !dbg !369
  %idx.ext36 = sext i32 %14 to i64, !dbg !371
  %add.ptr37 = getelementptr inbounds i8, i8* %p, i64 %idx.ext36, !dbg !371
  call void @llvm.dbg.value(metadata i8* %add.ptr37, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while.body39, !dbg !372

while.body39:                                     ; preds = %if.end48, %_L
  %p.addr.0 = phi i8* [ %add.ptr37, %_L ], [ %incdec.ptr, %if.end48 ], !dbg !375
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while_continue___5, !dbg !376

while_continue___5:                               ; preds = %while.body39
  br label %while_continue___0, !dbg !376

while_continue___0:                               ; preds = %while_continue___5
  %call40 = call i16** @__ctype_b_loc() #8, !dbg !377
  call void @llvm.dbg.value(metadata i16** %call40, metadata !381, metadata !DIExpression()), !dbg !266
  %15 = load i16*, i16** %call40, align 8, !dbg !382
  %16 = load i8, i8* %p.addr.0, align 1, !dbg !384
  %conv41 = zext i8 %16 to i32, !dbg !385
  %idx.ext42 = sext i32 %conv41 to i64, !dbg !386
  %add.ptr43 = getelementptr inbounds i16, i16* %15, i64 %idx.ext42, !dbg !386
  %17 = load i16, i16* %add.ptr43, align 2, !dbg !387
  %conv44 = zext i16 %17 to i32, !dbg !388
  %and45 = and i32 %conv44, 8192, !dbg !389
  %tobool46 = icmp ne i32 %and45, 0, !dbg !389
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !390

if.then47:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !391

if.end48:                                         ; preds = %while_continue___0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !393
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while.body39, !dbg !372, !llvm.loop !394

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !396

while_break___0:                                  ; preds = %while_break___5, %if.then47
  %onearg = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 3, !dbg !397
  %18 = load i32, i32* %onearg, align 8, !dbg !397
  %tobool49 = icmp ne i32 %18, 0, !dbg !399
  br i1 %tobool49, label %if.then50, label %if.end63, !dbg !400

if.then50:                                        ; preds = %while_break___0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !401
  %call51 = call i8* @misc_readitem(i8* %p.addr.0, i8* null, i32* %alength, i8* %arraydecay, i32 1024), !dbg !405
  call void @llvm.dbg.value(metadata i8* %call51, metadata !406, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %call51, metadata !407, metadata !DIExpression()), !dbg !266
  %19 = load i32, i32* %alength, align 4, !dbg !408
  %idx.ext52 = sext i32 %19 to i64, !dbg !410
  %add.ptr53 = getelementptr inbounds i8, i8* %p.addr.0, i64 %idx.ext52, !dbg !410
  %20 = load i8, i8* %add.ptr53, align 1, !dbg !411
  %conv54 = zext i8 %20 to i32, !dbg !412
  %cmp55 = icmp ne i32 %conv54, 0, !dbg !413
  br i1 %cmp55, label %if.then57, label %if.end62, !dbg !414

if.then57:                                        ; preds = %if.then50
  %call58 = call i32 @strlen(i8* %p.addr.0) #9, !dbg !415
  call void @llvm.dbg.value(metadata i32 %call58, metadata !419, metadata !DIExpression()), !dbg !266
  %name59 = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 0, !dbg !420
  %21 = load i8*, i8** %name59, align 8, !dbg !420
  %22 = load i32, i32* %alength, align 4, !dbg !422
  %23 = load i32, i32* %length, align 4, !dbg !423
  %add60 = add nsw i32 %22, %23, !dbg !424
  %add61 = add nsw i32 %add60, 1, !dbg !425
  %24 = load i8*, i8** @spaces, align 8, !dbg !426
  %25 = load i32, i32* %alength, align 4, !dbg !427
  %sub = sub nsw i32 %call58, %25, !dbg !428
  %26 = load i8*, i8** @circumflexes, align 8, !dbg !429
  call void (i32, ...) @error(i32 19, i8* %21, i8* %p.addr.0, i32 %add61, i8* %24, i32 %sub, i8* %26), !dbg !430
  br label %if.end62, !dbg !431

if.end62:                                         ; preds = %if.then57, %if.then50
  call void @llvm.dbg.value(metadata i8* %call51, metadata !265, metadata !DIExpression()), !dbg !266
  br label %if.end63, !dbg !432

if.end63:                                         ; preds = %if.end62, %while_break___0
  %p.addr.1 = phi i8* [ %call51, %if.end62 ], [ %p.addr.0, %while_break___0 ], !dbg !375
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !265, metadata !DIExpression()), !dbg !266
  %27 = load i32, i32* @para_inline_macro, align 4, !dbg !433
  %cmp64 = icmp eq i32 %27, 0, !dbg !435
  br i1 %cmp64, label %if.then66, label %if.else67, !dbg !436

if.then66:                                        ; preds = %if.end63
  %function = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 2, !dbg !437
  %28 = load void (i8*)*, void (i8*)** %function, align 8, !dbg !437
  call void %28(i8* %p.addr.1), !dbg !441
  br label %if.end74, !dbg !442

if.else67:                                        ; preds = %if.end63
  %okinline = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 4, !dbg !443
  %29 = load i32, i32* %okinline, align 4, !dbg !443
  %tobool68 = icmp ne i32 %29, 0, !dbg !445
  br i1 %tobool68, label %if.then69, label %if.else71, !dbg !433

if.then69:                                        ; preds = %if.else67
  %function70 = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 2, !dbg !446
  %30 = load void (i8*)*, void (i8*)** %function70, align 8, !dbg !446
  call void %30(i8* %p.addr.1), !dbg !450
  br label %if.end73, !dbg !451

if.else71:                                        ; preds = %if.else67
  %name72 = getelementptr inbounds %struct.dirstr, %struct.dirstr* %add.ptr13, i32 0, i32 0, !dbg !452
  %31 = load i8*, i8** %name72, align 8, !dbg !452
  call void (i32, ...) @error(i32 22, i8* %31), !dbg !456
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then66
  br label %return, !dbg !457

if.end75:                                         ; preds = %if.else25
  br label %if.end76

if.end76:                                         ; preds = %if.end75
  br label %if.end77, !dbg !458

if.end77:                                         ; preds = %if.end76, %if.end11
  %cmp78 = icmp slt i32 %call15, 0, !dbg !459
  br i1 %cmp78, label %if.then80, label %if.else81, !dbg !461

if.then80:                                        ; preds = %if.end77
  call void @llvm.dbg.value(metadata i32 %div, metadata !312, metadata !DIExpression()), !dbg !266
  br label %if.end83, !dbg !462

if.else81:                                        ; preds = %if.end77
  %add82 = add nsw i32 %div, 1, !dbg !464
  call void @llvm.dbg.value(metadata i32 %add82, metadata !310, metadata !DIExpression()), !dbg !266
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then80
  %top.1 = phi i32 [ %div, %if.then80 ], [ %top.0, %if.else81 ], !dbg !316
  %bot.1 = phi i32 [ %bot.0, %if.then80 ], [ %add82, %if.else81 ], !dbg !316
  call void @llvm.dbg.value(metadata i32 %bot.1, metadata !310, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 %top.1, metadata !312, metadata !DIExpression()), !dbg !266
  br label %while.body, !dbg !313, !llvm.loop !466

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !468

while_break:                                      ; preds = %while_break___4, %if.then10
  %32 = load i32, i32* @para_inline_macro, align 4, !dbg !469
  %cmp84 = icmp sgt i32 %32, 0, !dbg !471
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !472

if.then86:                                        ; preds = %while_break
  call void (i32, ...) @error(i32 22, i8* %p), !dbg !473
  br label %return, !dbg !477

if.end87:                                         ; preds = %while_break
  %33 = load %struct.macrodef*, %struct.macrodef** @macrolist, align 8, !dbg !478
  call void @llvm.dbg.value(metadata %struct.macrodef* %33, metadata !479, metadata !DIExpression()), !dbg !266
  br label %while.body88, !dbg !480

while.body88:                                     ; preds = %if.end126, %if.end87
  %md.0 = phi %struct.macrodef* [ %33, %if.end87 ], [ %46, %if.end126 ], !dbg !316
  call void @llvm.dbg.value(metadata %struct.macrodef* %md.0, metadata !479, metadata !DIExpression()), !dbg !266
  br label %while_continue___6, !dbg !483

while_continue___6:                               ; preds = %while.body88
  br label %while_continue___1, !dbg !483

while_continue___1:                               ; preds = %while_continue___6
  %34 = ptrtoint %struct.macrodef* %md.0 to i64, !dbg !484
  %cmp89 = icmp ne i64 %34, 0, !dbg !487
  br i1 %cmp89, label %if.end92, label %if.then91, !dbg !488

if.then91:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !489

if.end92:                                         ; preds = %while_continue___1
  %namelength = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 4, !dbg !491
  %35 = load i32, i32* %namelength, align 8, !dbg !491
  store i32 %35, i32* %length, align 4, !dbg !493
  %add.ptr93 = getelementptr inbounds i8, i8* %p, i64 1, !dbg !494
  %name94 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 3, !dbg !496
  %36 = load i8*, i8** %name94, align 8, !dbg !496
  %37 = load i32, i32* %length, align 4, !dbg !497
  %call95 = call i32 @strncmp(i8* %add.ptr93, i8* %36, i32 %37) #9, !dbg !498
  call void @llvm.dbg.value(metadata i32 %call95, metadata !499, metadata !DIExpression()), !dbg !266
  %cmp96 = icmp eq i32 %call95, 0, !dbg !500
  br i1 %cmp96, label %if.then98, label %if.end126, !dbg !502

if.then98:                                        ; preds = %if.end92
  %38 = load i32, i32* %length, align 4, !dbg !503
  %add99 = add nsw i32 %38, 1, !dbg !506
  %idx.ext100 = sext i32 %add99 to i64, !dbg !507
  %add.ptr101 = getelementptr inbounds i8, i8* %p, i64 %idx.ext100, !dbg !507
  %39 = load i8, i8* %add.ptr101, align 1, !dbg !508
  %conv102 = zext i8 %39 to i32, !dbg !509
  %cmp103 = icmp eq i32 %conv102, 0, !dbg !510
  br i1 %cmp103, label %if.then105, label %if.else109, !dbg !511

if.then105:                                       ; preds = %if.then98
  %40 = load i32, i32* %length, align 4, !dbg !512
  %add106 = add nsw i32 %40, 1, !dbg !514
  %idx.ext107 = sext i32 %add106 to i64, !dbg !515
  %add.ptr108 = getelementptr inbounds i8, i8* %p, i64 %idx.ext107, !dbg !515
  call void @llvm.dbg.value(metadata i8* %add.ptr108, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while_break___1, !dbg !516

if.else109:                                       ; preds = %if.then98
  %call110 = call i16** @__ctype_b_loc() #8, !dbg !517
  call void @llvm.dbg.value(metadata i16** %call110, metadata !521, metadata !DIExpression()), !dbg !266
  %41 = load i16*, i16** %call110, align 8, !dbg !522
  %42 = load i32, i32* %length, align 4, !dbg !524
  %add111 = add nsw i32 %42, 1, !dbg !525
  %idx.ext112 = sext i32 %add111 to i64, !dbg !526
  %add.ptr113 = getelementptr inbounds i8, i8* %p, i64 %idx.ext112, !dbg !526
  %43 = load i8, i8* %add.ptr113, align 1, !dbg !527
  %conv114 = zext i8 %43 to i32, !dbg !528
  %idx.ext115 = sext i32 %conv114 to i64, !dbg !529
  %add.ptr116 = getelementptr inbounds i16, i16* %41, i64 %idx.ext115, !dbg !529
  %44 = load i16, i16* %add.ptr116, align 2, !dbg !530
  %conv117 = zext i16 %44 to i32, !dbg !531
  %and118 = and i32 %conv117, 8192, !dbg !532
  %tobool119 = icmp ne i32 %and118, 0, !dbg !532
  br i1 %tobool119, label %if.then120, label %if.end124, !dbg !533

if.then120:                                       ; preds = %if.else109
  %45 = load i32, i32* %length, align 4, !dbg !534
  %add121 = add nsw i32 %45, 1, !dbg !536
  %idx.ext122 = sext i32 %add121 to i64, !dbg !537
  %add.ptr123 = getelementptr inbounds i8, i8* %p, i64 %idx.ext122, !dbg !537
  call void @llvm.dbg.value(metadata i8* %add.ptr123, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while_break___1, !dbg !538

if.end124:                                        ; preds = %if.else109
  br label %if.end125

if.end125:                                        ; preds = %if.end124
  br label %if.end126, !dbg !539

if.end126:                                        ; preds = %if.end125, %if.end92
  %next = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 0, !dbg !540
  %46 = load %struct.macrodef*, %struct.macrodef** %next, align 8, !dbg !540
  call void @llvm.dbg.value(metadata %struct.macrodef* %46, metadata !479, metadata !DIExpression()), !dbg !266
  br label %while.body88, !dbg !480, !llvm.loop !541

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !543

while_break___1:                                  ; preds = %while_break___6, %if.then120, %if.then105, %if.then91
  %p.addr.2 = phi i8* [ %add.ptr108, %if.then105 ], [ %add.ptr123, %if.then120 ], [ %p, %if.then91 ], [ undef, %while_break___6 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !265, metadata !DIExpression()), !dbg !266
  %47 = ptrtoint %struct.macrodef* %md.0 to i64, !dbg !544
  %cmp127 = icmp eq i64 %47, 0, !dbg !546
  br i1 %cmp127, label %if.then129, label %if.end139, !dbg !547

if.then129:                                       ; preds = %while_break___1
  %48 = load i32, i32* @literal_state, align 4, !dbg !548
  %cmp130 = icmp eq i32 %48, 3, !dbg !552
  br i1 %cmp130, label %if.then132, label %if.end133, !dbg !553

if.then132:                                       ; preds = %if.then129
  br label %case_3, !dbg !554

if.end133:                                        ; preds = %if.then129
  %49 = load i32, i32* @literal_state, align 4, !dbg !556
  %cmp134 = icmp eq i32 %49, 2, !dbg !558
  br i1 %cmp134, label %if.then136, label %if.end137, !dbg !553

if.then136:                                       ; preds = %if.end133
  br label %case_3, !dbg !559

if.end137:                                        ; preds = %if.end133
  br label %switch_default, !dbg !561

case_3:                                           ; preds = %if.then136, %if.then132
  br label %case_2, !dbg !561

case_2:                                           ; preds = %case_3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !562
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %p.addr.2), !dbg !565
  br label %switch_break, !dbg !566

switch_default:                                   ; preds = %if.end137
  call void (i32, ...) @error(i32 2, i8* %p.addr.2), !dbg !567
  br label %switch_break, !dbg !570

switch_break:                                     ; preds = %switch_default, %case_2
  br label %return, !dbg !571

if.end139:                                        ; preds = %while_break___1
  %call140 = call i8* @misc_malloc(i32 32), !dbg !572
  call void @llvm.dbg.value(metadata i8* %call140, metadata !575, metadata !DIExpression()), !dbg !266
  %51 = bitcast i8* %call140 to %struct.macroexe*, !dbg !576
  call void @llvm.dbg.value(metadata %struct.macroexe* %51, metadata !577, metadata !DIExpression()), !dbg !266
  %52 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !578
  %prev = getelementptr inbounds %struct.macroexe, %struct.macroexe* %51, i32 0, i32 0, !dbg !579
  store %struct.macroexe* %52, %struct.macroexe** %prev, align 8, !dbg !580
  store %struct.macroexe* %51, %struct.macroexe** @macrocurrent, align 8, !dbg !581
  %macro = getelementptr inbounds %struct.macroexe, %struct.macroexe* %51, i32 0, i32 1, !dbg !582
  store %struct.macrodef* %md.0, %struct.macrodef** %macro, align 8, !dbg !583
  %lines = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 1, !dbg !584
  %53 = load %struct.argstr*, %struct.argstr** %lines, align 8, !dbg !584
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %51, i32 0, i32 3, !dbg !585
  store %struct.argstr* %53, %struct.argstr** %nextline, align 8, !dbg !586
  %54 = load i32, i32* @from_type_ptr, align 4, !dbg !587
  %inc = add nsw i32 %54, 1, !dbg !587
  store i32 %inc, i32* @from_type_ptr, align 4, !dbg !587
  %55 = load i32, i32* @from_type_ptr, align 4, !dbg !588
  %idxprom = sext i32 %55 to i64, !dbg !589
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !589
  store i32 1, i32* %arrayidx, align 4, !dbg !590
  %args = getelementptr inbounds %struct.macroexe, %struct.macroexe* %51, i32 0, i32 2, !dbg !591
  store %struct.argstr* null, %struct.argstr** %args, align 8, !dbg !592
  %args141 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %51, i32 0, i32 2, !dbg !593
  call void @llvm.dbg.value(metadata %struct.argstr** %args141, metadata !594, metadata !DIExpression()), !dbg !266
  br label %while.body142, !dbg !596

while.body142:                                    ; preds = %if.end151, %if.end139
  %p.addr.3 = phi i8* [ %p.addr.2, %if.end139 ], [ %incdec.ptr152, %if.end151 ], !dbg !316
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while_continue___7, !dbg !599

while_continue___7:                               ; preds = %while.body142
  br label %while_continue___2, !dbg !599

while_continue___2:                               ; preds = %while_continue___7
  %call143 = call i16** @__ctype_b_loc() #8, !dbg !600
  call void @llvm.dbg.value(metadata i16** %call143, metadata !604, metadata !DIExpression()), !dbg !266
  %56 = load i16*, i16** %call143, align 8, !dbg !605
  %57 = load i8, i8* %p.addr.3, align 1, !dbg !607
  %conv144 = zext i8 %57 to i32, !dbg !608
  %idx.ext145 = sext i32 %conv144 to i64, !dbg !609
  %add.ptr146 = getelementptr inbounds i16, i16* %56, i64 %idx.ext145, !dbg !609
  %58 = load i16, i16* %add.ptr146, align 2, !dbg !610
  %conv147 = zext i16 %58 to i32, !dbg !611
  %and148 = and i32 %conv147, 8192, !dbg !612
  %tobool149 = icmp ne i32 %and148, 0, !dbg !612
  br i1 %tobool149, label %if.end151, label %if.then150, !dbg !613

if.then150:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !614

if.end151:                                        ; preds = %while_continue___2
  %incdec.ptr152 = getelementptr inbounds i8, i8* %p.addr.3, i32 1, !dbg !616
  call void @llvm.dbg.value(metadata i8* %incdec.ptr152, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while.body142, !dbg !596, !llvm.loop !617

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !619

while_break___2:                                  ; preds = %while_break___7, %if.then150
  br label %while.body153, !dbg !620

while.body153:                                    ; preds = %if.end158, %while_break___2
  %pp.0 = phi %struct.argstr** [ %args141, %while_break___2 ], [ %next161, %if.end158 ], !dbg !316
  %p.addr.4 = phi i8* [ %p.addr.3, %while_break___2 ], [ %add.ptr164, %if.end158 ], !dbg !316
  call void @llvm.dbg.value(metadata i8* %p.addr.4, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata %struct.argstr** %pp.0, metadata !594, metadata !DIExpression()), !dbg !266
  br label %while_continue___8, !dbg !623

while_continue___8:                               ; preds = %while.body153
  br label %while_continue___3, !dbg !623

while_continue___3:                               ; preds = %while_continue___8
  %59 = load i8, i8* %p.addr.4, align 1, !dbg !624
  %conv154 = zext i8 %59 to i32, !dbg !627
  %cmp155 = icmp ne i32 %conv154, 0, !dbg !628
  br i1 %cmp155, label %if.end158, label %if.then157, !dbg !629

if.then157:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !630

if.end158:                                        ; preds = %while_continue___3
  %call159 = call i8* @misc_malloc(i32 16), !dbg !632
  call void @llvm.dbg.value(metadata i8* %call159, metadata !635, metadata !DIExpression()), !dbg !266
  %60 = bitcast i8* %call159 to %struct.argstr*, !dbg !636
  call void @llvm.dbg.value(metadata %struct.argstr* %60, metadata !637, metadata !DIExpression()), !dbg !266
  %next160 = getelementptr inbounds %struct.argstr, %struct.argstr* %60, i32 0, i32 0, !dbg !638
  store %struct.argstr* null, %struct.argstr** %next160, align 8, !dbg !639
  store %struct.argstr* %60, %struct.argstr** %pp.0, align 8, !dbg !640
  %next161 = getelementptr inbounds %struct.argstr, %struct.argstr* %60, i32 0, i32 0, !dbg !641
  call void @llvm.dbg.value(metadata %struct.argstr** %next161, metadata !594, metadata !DIExpression()), !dbg !266
  %call162 = call i8* @misc_readitem(i8* %p.addr.4, i8* null, i32* %length, i8* null, i32 0), !dbg !642
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %60, i32 0, i32 1, !dbg !644
  store i8* %call162, i8** %string, align 8, !dbg !645
  %61 = load i32, i32* %length, align 4, !dbg !646
  %idx.ext163 = sext i32 %61 to i64, !dbg !647
  %add.ptr164 = getelementptr inbounds i8, i8* %p.addr.4, i64 %idx.ext163, !dbg !647
  call void @llvm.dbg.value(metadata i8* %add.ptr164, metadata !265, metadata !DIExpression()), !dbg !266
  br label %while.body153, !dbg !620, !llvm.loop !648

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !650

while_break___3:                                  ; preds = %while_break___8, %if.then157
  br label %return, !dbg !651

return:                                           ; preds = %while_break___3, %switch_break, %if.then86, %if.end74, %if.then6, %if.then
  ret void, !dbg !652
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define void @misc_detrail(i8* %p) #0 !dbg !653 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !655, metadata !DIExpression()), !dbg !656
  %call = call i32 @strlen(i8* %p) #9, !dbg !657
  call void @llvm.dbg.value(metadata i32 %call, metadata !661, metadata !DIExpression()), !dbg !656
  %idx.ext = sext i32 %call to i64, !dbg !662
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.ext, !dbg !662
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !663, metadata !DIExpression()), !dbg !656
  br label %while.body, !dbg !664

while.body:                                       ; preds = %if.end7, %entry
  %q.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %if.end7 ], !dbg !667
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !663, metadata !DIExpression()), !dbg !656
  br label %while_continue___0, !dbg !668

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !668

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint i8* %q.0 to i64, !dbg !669
  %1 = ptrtoint i8* %p to i64, !dbg !672
  %cmp = icmp ugt i64 %0, %1, !dbg !673
  br i1 %cmp, label %if.then, label %if.else, !dbg !674

if.then:                                          ; preds = %while_continue
  %call1 = call i16** @__ctype_b_loc() #8, !dbg !675
  call void @llvm.dbg.value(metadata i16** %call1, metadata !679, metadata !DIExpression()), !dbg !656
  %2 = load i16*, i16** %call1, align 8, !dbg !680
  %add.ptr2 = getelementptr inbounds i8, i8* %q.0, i64 -1, !dbg !682
  %3 = load i8, i8* %add.ptr2, align 1, !dbg !683
  %conv = zext i8 %3 to i32, !dbg !684
  %idx.ext3 = sext i32 %conv to i64, !dbg !685
  %add.ptr4 = getelementptr inbounds i16, i16* %2, i64 %idx.ext3, !dbg !685
  %4 = load i16, i16* %add.ptr4, align 2, !dbg !686
  %conv5 = zext i16 %4 to i32, !dbg !687
  %and = and i32 %conv5, 8192, !dbg !688
  %tobool = icmp ne i32 %and, 0, !dbg !688
  br i1 %tobool, label %if.end, label %if.then6, !dbg !689

if.then6:                                         ; preds = %if.then
  br label %while_break, !dbg !690

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !692

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !693

if.end7:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %q.0, i32 -1, !dbg !695
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !663, metadata !DIExpression()), !dbg !656
  br label %while.body, !dbg !664, !llvm.loop !696

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !698

while_break:                                      ; preds = %while_break___0, %if.else, %if.then6
  store i8 0, i8* %q.0, align 1, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i8* @misc_readitem(i8* %p, i8* %term, i32* %lptr, i8* %buffer, i32 %blength) #0 !dbg !701 {
entry:
  %length = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %term, metadata !706, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32* %lptr, metadata !707, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !708, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %blength, metadata !709, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata i32* %length, metadata !710, metadata !DIExpression()), !dbg !711
  %0 = load i8, i8* %p, align 1, !dbg !712
  %conv = zext i8 %0 to i32, !dbg !715
  %cmp = icmp eq i32 %conv, 34, !dbg !716
  br i1 %cmp, label %if.then, label %if.else, !dbg !717

if.then:                                          ; preds = %entry
  %call = call i8* @misc_readstring(i8* %p, i32* %length, i8* %buffer, i32 %blength), !dbg !718
  call void @llvm.dbg.value(metadata i8* %call, metadata !722, metadata !DIExpression()), !dbg !705
  %1 = load i32, i32* %length, align 4, !dbg !723
  %idx.ext = sext i32 %1 to i64, !dbg !724
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.ext, !dbg !724
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !704, metadata !DIExpression()), !dbg !705
  br label %if.end52, !dbg !725

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !726
  %conv2 = zext i8 %2 to i32, !dbg !728
  %cmp3 = icmp eq i32 %conv2, 39, !dbg !729
  br i1 %cmp3, label %if.then5, label %if.else9, !dbg !715

if.then5:                                         ; preds = %if.else
  %call6 = call i8* @misc_readstring(i8* %p, i32* %length, i8* %buffer, i32 %blength), !dbg !730
  call void @llvm.dbg.value(metadata i8* %call6, metadata !722, metadata !DIExpression()), !dbg !705
  %3 = load i32, i32* %length, align 4, !dbg !734
  %idx.ext7 = sext i32 %3 to i64, !dbg !735
  %add.ptr8 = getelementptr inbounds i8, i8* %p, i64 %idx.ext7, !dbg !735
  call void @llvm.dbg.value(metadata i8* %add.ptr8, metadata !704, metadata !DIExpression()), !dbg !705
  br label %if.end51, !dbg !736

if.else9:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %p, metadata !737, metadata !DIExpression()), !dbg !705
  %4 = ptrtoint i8* %term to i64, !dbg !738
  %cmp10 = icmp eq i64 %4, 0, !dbg !741
  br i1 %cmp10, label %if.then12, label %if.else25, !dbg !742

if.then12:                                        ; preds = %if.else9
  br label %while.body, !dbg !743

while.body:                                       ; preds = %if.end24, %if.then12
  %p.addr.0 = phi i8* [ %p, %if.then12 ], [ %incdec.ptr, %if.end24 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !704, metadata !DIExpression()), !dbg !705
  br label %while_continue___2, !dbg !747

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !747

while_continue:                                   ; preds = %while_continue___2
  %5 = load i8, i8* %p.addr.0, align 1, !dbg !748
  %conv13 = zext i8 %5 to i32, !dbg !751
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !752
  br i1 %cmp14, label %if.then16, label %if.else23, !dbg !753

if.then16:                                        ; preds = %while_continue
  %call17 = call i16** @__ctype_b_loc() #8, !dbg !754
  call void @llvm.dbg.value(metadata i16** %call17, metadata !758, metadata !DIExpression()), !dbg !705
  %6 = load i16*, i16** %call17, align 8, !dbg !759
  %7 = load i8, i8* %p.addr.0, align 1, !dbg !761
  %conv18 = zext i8 %7 to i32, !dbg !762
  %idx.ext19 = sext i32 %conv18 to i64, !dbg !763
  %add.ptr20 = getelementptr inbounds i16, i16* %6, i64 %idx.ext19, !dbg !763
  %8 = load i16, i16* %add.ptr20, align 2, !dbg !764
  %conv21 = zext i16 %8 to i32, !dbg !765
  %and = and i32 %conv21, 8192, !dbg !766
  %tobool = icmp ne i32 %and, 0, !dbg !766
  br i1 %tobool, label %if.then22, label %if.end, !dbg !767

if.then22:                                        ; preds = %if.then16
  br label %while_break, !dbg !768

if.end:                                           ; preds = %if.then16
  br label %if.end24, !dbg !770

if.else23:                                        ; preds = %while_continue
  br label %while_break, !dbg !771

if.end24:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !773
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !704, metadata !DIExpression()), !dbg !705
  br label %while.body, !dbg !743, !llvm.loop !774

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !776

while_break:                                      ; preds = %while_break___2, %if.else23, %if.then22
  br label %if.end34, !dbg !777

if.else25:                                        ; preds = %if.else9
  br label %while.body26, !dbg !778

while.body26:                                     ; preds = %if.end32, %if.else25
  %p.addr.1 = phi i8* [ %p, %if.else25 ], [ %incdec.ptr33, %if.end32 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !704, metadata !DIExpression()), !dbg !705
  br label %while_continue___3, !dbg !782

while_continue___3:                               ; preds = %while.body26
  br label %while_continue___0, !dbg !782

while_continue___0:                               ; preds = %while_continue___3
  %9 = load i8, i8* %p.addr.1, align 1, !dbg !783
  %conv27 = zext i8 %9 to i32, !dbg !787
  %call28 = call i8* @strchr(i8* %term, i32 %conv27) #9, !dbg !788
  call void @llvm.dbg.value(metadata i8* %call28, metadata !789, metadata !DIExpression()), !dbg !705
  %10 = ptrtoint i8* %call28 to i64, !dbg !790
  %cmp29 = icmp eq i64 %10, 0, !dbg !792
  br i1 %cmp29, label %if.end32, label %if.then31, !dbg !793

if.then31:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !794

if.end32:                                         ; preds = %while_continue___0
  %incdec.ptr33 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !796
  call void @llvm.dbg.value(metadata i8* %incdec.ptr33, metadata !704, metadata !DIExpression()), !dbg !705
  br label %while.body26, !dbg !778, !llvm.loop !797

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !799

while_break___0:                                  ; preds = %while_break___3, %if.then31
  br label %if.end34

if.end34:                                         ; preds = %while_break___0, %while_break
  %p.addr.2 = phi i8* [ %p.addr.0, %while_break ], [ %p.addr.1, %while_break___0 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !704, metadata !DIExpression()), !dbg !705
  %sub.ptr.lhs.cast = ptrtoint i8* %p.addr.2 to i64, !dbg !800
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64, !dbg !800
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !800
  %conv35 = trunc i64 %sub.ptr.sub to i32, !dbg !801
  store i32 %conv35, i32* %length, align 4, !dbg !802
  %11 = ptrtoint i8* %buffer to i64, !dbg !803
  %cmp36 = icmp eq i64 %11, 0, !dbg !805
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !806

if.then38:                                        ; preds = %if.end34
  %12 = load i32, i32* %length, align 4, !dbg !807
  %add = add nsw i32 %12, 1, !dbg !811
  %call39 = call i8* @misc_malloc(i32 %add), !dbg !812
  call void @llvm.dbg.value(metadata i8* %call39, metadata !813, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %call39, metadata !722, metadata !DIExpression()), !dbg !705
  br label %if.end47, !dbg !814

if.else40:                                        ; preds = %if.end34
  %13 = load i32, i32* %length, align 4, !dbg !815
  %add41 = add nsw i32 %13, 1, !dbg !818
  %cmp42 = icmp sgt i32 %add41, %blength, !dbg !819
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !820

if.then44:                                        ; preds = %if.else40
  %14 = load i32, i32* %length, align 4, !dbg !821
  %add45 = add nsw i32 %14, 1, !dbg !825
  call void (i32, ...) @error(i32 20, i32 %add45, i32 %blength), !dbg !826
  br label %if.end46, !dbg !827

if.end46:                                         ; preds = %if.then44, %if.else40
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !722, metadata !DIExpression()), !dbg !705
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then38
  %yield.0 = phi i8* [ %call39, %if.then38 ], [ %buffer, %if.end46 ], !dbg !828
  call void @llvm.dbg.value(metadata i8* %yield.0, metadata !722, metadata !DIExpression()), !dbg !705
  %15 = load i32, i32* %length, align 4, !dbg !829
  %call48 = call i8* @memcpy(i8* %yield.0, i8* %p, i32 %15) #6, !dbg !832
  %16 = load i32, i32* %length, align 4, !dbg !833
  %idx.ext49 = sext i32 %16 to i64, !dbg !834
  %add.ptr50 = getelementptr inbounds i8, i8* %yield.0, i64 %idx.ext49, !dbg !834
  store i8 0, i8* %add.ptr50, align 1, !dbg !835
  br label %if.end51

if.end51:                                         ; preds = %if.end47, %if.then5
  %yield.1 = phi i8* [ %call6, %if.then5 ], [ %yield.0, %if.end47 ], !dbg !836
  %p.addr.3 = phi i8* [ %add.ptr8, %if.then5 ], [ %p.addr.2, %if.end47 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %yield.1, metadata !722, metadata !DIExpression()), !dbg !705
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  %yield.2 = phi i8* [ %call, %if.then ], [ %yield.1, %if.end51 ], !dbg !837
  %p.addr.4 = phi i8* [ %add.ptr, %if.then ], [ %p.addr.3, %if.end51 ], !dbg !837
  call void @llvm.dbg.value(metadata i8* %p.addr.4, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %yield.2, metadata !722, metadata !DIExpression()), !dbg !705
  br label %while.body53, !dbg !838

while.body53:                                     ; preds = %if.end62, %if.end52
  %p.addr.5 = phi i8* [ %p.addr.4, %if.end52 ], [ %incdec.ptr63, %if.end62 ], !dbg !841
  call void @llvm.dbg.value(metadata i8* %p.addr.5, metadata !704, metadata !DIExpression()), !dbg !705
  br label %while_continue___4, !dbg !842

while_continue___4:                               ; preds = %while.body53
  br label %while_continue___1, !dbg !842

while_continue___1:                               ; preds = %while_continue___4
  %call54 = call i16** @__ctype_b_loc() #8, !dbg !843
  call void @llvm.dbg.value(metadata i16** %call54, metadata !847, metadata !DIExpression()), !dbg !705
  %17 = load i16*, i16** %call54, align 8, !dbg !848
  %18 = load i8, i8* %p.addr.5, align 1, !dbg !850
  %conv55 = zext i8 %18 to i32, !dbg !851
  %idx.ext56 = sext i32 %conv55 to i64, !dbg !852
  %add.ptr57 = getelementptr inbounds i16, i16* %17, i64 %idx.ext56, !dbg !852
  %19 = load i16, i16* %add.ptr57, align 2, !dbg !853
  %conv58 = zext i16 %19 to i32, !dbg !854
  %and59 = and i32 %conv58, 8192, !dbg !855
  %tobool60 = icmp ne i32 %and59, 0, !dbg !855
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !856

if.then61:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !857

if.end62:                                         ; preds = %while_continue___1
  %incdec.ptr63 = getelementptr inbounds i8, i8* %p.addr.5, i32 1, !dbg !859
  call void @llvm.dbg.value(metadata i8* %incdec.ptr63, metadata !704, metadata !DIExpression()), !dbg !705
  %20 = load i32, i32* %length, align 4, !dbg !860
  %inc = add nsw i32 %20, 1, !dbg !860
  store i32 %inc, i32* %length, align 4, !dbg !860
  br label %while.body53, !dbg !838, !llvm.loop !861

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !863

while_break___1:                                  ; preds = %while_break___4, %if.then61
  %21 = ptrtoint i32* %lptr to i64, !dbg !864
  %cmp64 = icmp ne i64 %21, 0, !dbg !866
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !867

if.then66:                                        ; preds = %while_break___1
  %22 = load i32, i32* %length, align 4, !dbg !868
  store i32 %22, i32* %lptr, align 4, !dbg !870
  br label %if.end67, !dbg !871

if.end67:                                         ; preds = %if.then66, %while_break___1
  ret i8* %yield.2, !dbg !872
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @error(i32 %n, ...) #0 !dbg !873 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %n, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !878, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.declare(metadata !4, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata !4, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata !4, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata !4, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata !4, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata !4, metadata !901, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.declare(metadata !4, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata !4, metadata !905, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.declare(metadata !4, metadata !907, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.declare(metadata !4, metadata !909, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata !4, metadata !911, metadata !DIExpression()), !dbg !912
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0, !dbg !913
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !913
  call void @llvm.va_start(i8* %arraydecay1), !dbg !913
  %cmp = icmp sgt i32 %n, 28, !dbg !917
  br i1 %cmp, label %if.then, label %if.else, !dbg !919

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !920
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i32 %n), !dbg !924
  call void @llvm.dbg.value(metadata i32 4, metadata !925, metadata !DIExpression()), !dbg !877
  br label %if.end20, !dbg !926

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %n to i64, !dbg !927
  %arrayidx = getelementptr inbounds [29 x %struct.__anonstruct_error_struct_27], [29 x %struct.__anonstruct_error_struct_27]* @error_data, i64 0, i64 %idxprom, !dbg !927
  %ec2 = getelementptr inbounds %struct.__anonstruct_error_struct_27, %struct.__anonstruct_error_struct_27* %arrayidx, i32 0, i32 0, !dbg !929
  %1 = load i8, i8* %ec2, align 16, !dbg !929
  %conv = sext i8 %1 to i32, !dbg !930
  call void @llvm.dbg.value(metadata i32 %conv, metadata !925, metadata !DIExpression()), !dbg !877
  %cmp3 = icmp eq i32 %conv, 1, !dbg !931
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !933

if.then5:                                         ; preds = %if.else
  %2 = load i32, i32* @suppress_warnings, align 4, !dbg !934
  %tobool = icmp ne i32 %2, 0, !dbg !934
  br i1 %tobool, label %if.then6, label %if.end, !dbg !937

if.then6:                                         ; preds = %if.then5
  br label %return, !dbg !938

if.end:                                           ; preds = %if.then5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !940
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !943
  br label %if.end14, !dbg !944

if.else8:                                         ; preds = %if.else
  %cmp9 = icmp sgt i32 %conv, 1, !dbg !945
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !947

if.then11:                                        ; preds = %if.else8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)), !dbg !952
  br label %if.end13, !dbg !953

if.end13:                                         ; preds = %if.then11, %if.else8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !954
  %idxprom15 = sext i32 %n to i64, !dbg !957
  %arrayidx16 = getelementptr inbounds [29 x %struct.__anonstruct_error_struct_27], [29 x %struct.__anonstruct_error_struct_27]* @error_data, i64 0, i64 %idxprom15, !dbg !957
  %text = getelementptr inbounds %struct.__anonstruct_error_struct_27, %struct.__anonstruct_error_struct_27* %arrayidx16, i32 0, i32 1, !dbg !958
  %6 = load i8*, i8** %text, align 8, !dbg !958
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0, !dbg !959
  %call18 = call i32 @vfprintf(%struct._IO_FILE* %5, i8* %6, %struct.__va_list_tag* %arraydecay17), !dbg !960
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !961
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !963
  br label %if.end20

if.end20:                                         ; preds = %if.end14, %if.then
  %ec.0 = phi i32 [ 4, %if.then ], [ %conv, %if.end14 ], !dbg !964
  call void @llvm.dbg.value(metadata i32 %ec.0, metadata !925, metadata !DIExpression()), !dbg !877
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0, !dbg !965
  %arraydecay2122 = bitcast %struct.__va_list_tag* %arraydecay21 to i8*, !dbg !965
  call void @llvm.va_end(i8* %arraydecay2122), !dbg !965
  %8 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !968
  call void @llvm.dbg.value(metadata %struct.macroexe* %8, metadata !969, metadata !DIExpression()), !dbg !877
  %9 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !970
  call void @llvm.dbg.value(metadata %struct.istackstr* %9, metadata !971, metadata !DIExpression()), !dbg !877
  %10 = load i32, i32* @from_type_ptr, align 4, !dbg !972
  call void @llvm.dbg.value(metadata i32 %10, metadata !973, metadata !DIExpression()), !dbg !877
  br label %while.body, !dbg !974

while.body:                                       ; preds = %if.end43, %if.end20
  %me.0 = phi %struct.macroexe* [ %8, %if.end20 ], [ %me.1, %if.end43 ], !dbg !977
  %i.0 = phi i32 [ %10, %if.end20 ], [ %dec, %if.end43 ], !dbg !977
  %fe.0 = phi %struct.istackstr* [ %9, %if.end20 ], [ %fe.2, %if.end43 ], !dbg !978
  call void @llvm.dbg.value(metadata %struct.istackstr* %fe.0, metadata !971, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !973, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata %struct.macroexe* %me.0, metadata !969, metadata !DIExpression()), !dbg !877
  br label %while_continue___0, !dbg !979

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !979

while_continue:                                   ; preds = %while_continue___0
  %cmp23 = icmp sge i32 %i.0, 0, !dbg !980
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !983

if.then25:                                        ; preds = %while_continue
  br label %while_break, !dbg !984

if.end26:                                         ; preds = %while_continue
  %idxprom27 = sext i32 %i.0 to i64, !dbg !986
  %arrayidx28 = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom27, !dbg !986
  %11 = load i32, i32* %arrayidx28, align 4, !dbg !986
  %cmp29 = icmp eq i32 %11, 1, !dbg !988
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !989

if.then31:                                        ; preds = %if.end26
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990
  %macro = getelementptr inbounds %struct.macroexe, %struct.macroexe* %me.0, i32 0, i32 1, !dbg !994
  %13 = load %struct.macrodef*, %struct.macrodef** %macro, align 8, !dbg !994
  %name = getelementptr inbounds %struct.macrodef, %struct.macrodef* %13, i32 0, i32 3, !dbg !995
  %14 = load i8*, i8** %name, align 8, !dbg !995
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %14), !dbg !996
  %prev = getelementptr inbounds %struct.macroexe, %struct.macroexe* %me.0, i32 0, i32 0, !dbg !997
  %15 = load %struct.macroexe*, %struct.macroexe** %prev, align 8, !dbg !997
  call void @llvm.dbg.value(metadata %struct.macroexe* %15, metadata !969, metadata !DIExpression()), !dbg !877
  br label %if.end43, !dbg !998

if.else33:                                        ; preds = %if.end26
  %16 = ptrtoint %struct.istackstr* %fe.0 to i64, !dbg !999
  %cmp34 = icmp ne i64 %16, 0, !dbg !1001
  br i1 %cmp34, label %if.then36, label %if.else40, !dbg !1002

if.then36:                                        ; preds = %if.else33
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1003
  %linenumber = getelementptr inbounds %struct.istackstr, %struct.istackstr* %fe.0, i32 0, i32 1, !dbg !1007
  %18 = load i32, i32* %linenumber, align 8, !dbg !1007
  %filename = getelementptr inbounds %struct.istackstr, %struct.istackstr* %fe.0, i32 0, i32 3, !dbg !1008
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %filename, i32 0, i32 0, !dbg !1009
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* %arraydecay37), !dbg !1010
  %prev39 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %fe.0, i32 0, i32 0, !dbg !1011
  %19 = load %struct.istackstr*, %struct.istackstr** %prev39, align 8, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.istackstr* %19, metadata !971, metadata !DIExpression()), !dbg !877
  br label %if.end42, !dbg !1012

if.else40:                                        ; preds = %if.else33
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1013
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)), !dbg !1017
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then36
  %fe.1 = phi %struct.istackstr* [ %19, %if.then36 ], [ %fe.0, %if.else40 ], !dbg !977
  call void @llvm.dbg.value(metadata %struct.istackstr* %fe.1, metadata !971, metadata !DIExpression()), !dbg !877
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then31
  %me.1 = phi %struct.macroexe* [ %15, %if.then31 ], [ %me.0, %if.end42 ], !dbg !977
  %fe.2 = phi %struct.istackstr* [ %fe.0, %if.then31 ], [ %fe.1, %if.end42 ], !dbg !977
  call void @llvm.dbg.value(metadata %struct.istackstr* %fe.2, metadata !971, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata %struct.macroexe* %me.1, metadata !969, metadata !DIExpression()), !dbg !877
  %dec = add nsw i32 %i.0, -1, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %dec, metadata !973, metadata !DIExpression()), !dbg !877
  br label %while.body, !dbg !974, !llvm.loop !1019

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1021

while_break:                                      ; preds = %while_break___0, %if.then25
  %cmp44 = icmp eq i32 %ec.0, 1, !dbg !1022
  br i1 %cmp44, label %if.then46, label %if.else52, !dbg !1024

if.then46:                                        ; preds = %while_break
  %21 = load i32, i32* @warning_count, align 4, !dbg !1025
  %inc = add nsw i32 %21, 1, !dbg !1025
  store i32 %inc, i32* @warning_count, align 4, !dbg !1025
  %22 = load i32, i32* @warning_count, align 4, !dbg !1027
  %cmp47 = icmp sgt i32 %22, 40, !dbg !1029
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !1030

if.then49:                                        ; preds = %if.then46
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1031
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0)), !dbg !1035
  store i32 1, i32* @suppress_warnings, align 4, !dbg !1036
  br label %if.end51, !dbg !1037

if.end51:                                         ; preds = %if.then49, %if.then46
  br label %if.end63, !dbg !1038

if.else52:                                        ; preds = %while_break
  %cmp53 = icmp sgt i32 %ec.0, 1, !dbg !1039
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !1041

if.then55:                                        ; preds = %if.else52
  store i32 1, i32* @return_code, align 4, !dbg !1042
  %24 = load i32, i32* @error_count, align 4, !dbg !1044
  %inc56 = add nsw i32 %24, 1, !dbg !1044
  store i32 %inc56, i32* @error_count, align 4, !dbg !1044
  %25 = load i32, i32* @error_count, align 4, !dbg !1045
  %cmp57 = icmp sgt i32 %25, 40, !dbg !1047
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !1048

if.then59:                                        ; preds = %if.then55
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1049
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)), !dbg !1053
  call void @llvm.dbg.value(metadata i32 3, metadata !925, metadata !DIExpression()), !dbg !877
  br label %if.end61, !dbg !1054

if.end61:                                         ; preds = %if.then59, %if.then55
  %ec.1 = phi i32 [ 3, %if.then59 ], [ %ec.0, %if.then55 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %ec.1, metadata !925, metadata !DIExpression()), !dbg !877
  br label %if.end62, !dbg !1055

if.end62:                                         ; preds = %if.end61, %if.else52
  %ec.2 = phi i32 [ %ec.1, %if.end61 ], [ %ec.0, %if.else52 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %ec.2, metadata !925, metadata !DIExpression()), !dbg !877
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end51
  %ec.3 = phi i32 [ %ec.0, %if.end51 ], [ %ec.2, %if.end62 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %ec.3, metadata !925, metadata !DIExpression()), !dbg !877
  %cmp64 = icmp sge i32 %ec.3, 3, !dbg !1056
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1058

if.then66:                                        ; preds = %if.end63
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1059
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !1063
  call void @exit(i32 1) #10, !dbg !1064
  unreachable, !dbg !1064

if.end68:                                         ; preds = %if.end63
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1066
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !1069
  br label %return, !dbg !1070

return:                                           ; preds = %if.end68, %if.then6
  ret void, !dbg !1071
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind ssp uwtable
define i8* @misc_malloc(i32 %size) #0 !dbg !1072 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !1075, metadata !DIExpression()), !dbg !1076
  %call = call noalias i8* @malloc(i32 %size) #6, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %call, metadata !1081, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %call, metadata !1082, metadata !DIExpression()), !dbg !1076
  %0 = ptrtoint i8* %call to i64, !dbg !1083
  %cmp = icmp eq i64 %0, 0, !dbg !1085
  br i1 %cmp, label %if.then, label %if.end, !dbg !1086

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 1, i32 %size), !dbg !1087
  br label %if.end, !dbg !1091

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !1092
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1093 {
entry:
  %para_unfinished = alloca [4 x i32], align 16
  %nest_info = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1099, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.declare(metadata [4 x i32]* %para_unfinished, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %nest_info, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata !4, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata !4, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata !4, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata !4, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata !4, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.declare(metadata !4, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata !4, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata !4, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata !4, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata !4, metadata !1123, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata !4, metadata !1125, metadata !DIExpression()), !dbg !1126
  %call = call i32 @xfpt_decode_arg(i32 %argc, i8** %argv), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %call, metadata !1131, metadata !DIExpression()), !dbg !1098
  %tobool = icmp ne i32 %call, 0, !dbg !1132
  br i1 %tobool, label %if.end, label %if.then, !dbg !1134

if.then:                                          ; preds = %entry
  br label %return, !dbg !1135

if.end:                                           ; preds = %entry
  %call1 = call i8* @misc_malloc(i32 1024), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1140, metadata !DIExpression()), !dbg !1098
  store i8* %call1, i8** @inbuffer, align 8, !dbg !1141
  %call2 = call i8* @misc_malloc(i32 10000), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1144, metadata !DIExpression()), !dbg !1098
  store i8* %call2, i8** @parabuffer, align 8, !dbg !1145
  %call3 = call i8* @misc_malloc(i32 280), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %call3, metadata !1148, metadata !DIExpression()), !dbg !1098
  %0 = bitcast i8* %call3 to %struct.istackstr*, !dbg !1149
  store %struct.istackstr* %0, %struct.istackstr** @istack, align 8, !dbg !1150
  %1 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1151
  %prev = getelementptr inbounds %struct.istackstr, %struct.istackstr* %1, i32 0, i32 0, !dbg !1152
  store %struct.istackstr* null, %struct.istackstr** %prev, align 8, !dbg !1153
  %2 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1154
  %linenumber = getelementptr inbounds %struct.istackstr, %struct.istackstr* %2, i32 0, i32 1, !dbg !1155
  store i32 0, i32* %linenumber, align 8, !dbg !1156
  store i32 0, i32* @from_type_ptr, align 4, !dbg !1157
  %3 = load i32, i32* @from_type_ptr, align 4, !dbg !1158
  %idxprom = sext i32 %3 to i64, !dbg !1159
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !1159
  store i32 0, i32* %arrayidx, align 4, !dbg !1160
  %4 = load i8*, i8** @xfpt_filename, align 8, !dbg !1161
  %5 = ptrtoint i8* %4 to i64, !dbg !1163
  %cmp = icmp eq i64 %5, 0, !dbg !1164
  br i1 %cmp, label %if.then4, label %if.else, !dbg !1165

if.then4:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1166
  %7 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1169
  %file = getelementptr inbounds %struct.istackstr, %struct.istackstr* %7, i32 0, i32 2, !dbg !1170
  store %struct._IO_FILE* %6, %struct._IO_FILE** %file, align 8, !dbg !1171
  %8 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1172
  %filename = getelementptr inbounds %struct.istackstr, %struct.istackstr* %8, i32 0, i32 3, !dbg !1174
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %filename, i32 0, i32 0, !dbg !1175
  %call5 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !1176
  br label %if.end19, !dbg !1177

if.else:                                          ; preds = %if.end
  %9 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1178
  %filename6 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %9, i32 0, i32 3, !dbg !1182
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %filename6, i32 0, i32 0, !dbg !1183
  %10 = load i8*, i8** @xfpt_filename, align 8, !dbg !1184
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* %10) #6, !dbg !1185
  %11 = load i8*, i8** @xfpt_filename, align 8, !dbg !1186
  %call9 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !1188
  %12 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1189
  %file10 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %12, i32 0, i32 2, !dbg !1190
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %file10, align 8, !dbg !1191
  %13 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1192
  %file11 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %13, i32 0, i32 2, !dbg !1194
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file11, align 8, !dbg !1194
  %15 = ptrtoint %struct._IO_FILE* %14 to i64, !dbg !1195
  %cmp12 = icmp eq i64 %15, 0, !dbg !1196
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !1197

if.then13:                                        ; preds = %if.else
  %call14 = call i32* @__errno_location() #8, !dbg !1198
  call void @llvm.dbg.value(metadata i32* %call14, metadata !1202, metadata !DIExpression()), !dbg !1098
  %16 = load i32, i32* %call14, align 4, !dbg !1203
  %call15 = call i8* @strerror(i32 %16) #6, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %call15, metadata !1206, metadata !DIExpression()), !dbg !1098
  %17 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1207
  %filename16 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %17, i32 0, i32 3, !dbg !1209
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %filename16, i32 0, i32 0, !dbg !1207
  call void (i32, ...) @error(i32 0, i8* %arraydecay17, i8* %call15), !dbg !1210
  br label %if.end18, !dbg !1211

if.end18:                                         ; preds = %if.then13, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then4
  %18 = load i8*, i8** @out_filename, align 8, !dbg !1212
  %19 = ptrtoint i8* %18 to i64, !dbg !1214
  %cmp20 = icmp eq i64 %19, 0, !dbg !1215
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !1216

if.then21:                                        ; preds = %if.end19
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1217
  store %struct._IO_FILE* %20, %struct._IO_FILE** @outfile, align 8, !dbg !1219
  br label %if.end34, !dbg !1220

if.else22:                                        ; preds = %if.end19
  %21 = load i8*, i8** @out_filename, align 8, !dbg !1221
  %call23 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1226, metadata !DIExpression()), !dbg !1098
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1227
  br i1 %cmp24, label %if.then25, label %if.else26, !dbg !1229

if.then25:                                        ; preds = %if.else22
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230
  store %struct._IO_FILE* %22, %struct._IO_FILE** @outfile, align 8, !dbg !1232
  br label %if.end33, !dbg !1233

if.else26:                                        ; preds = %if.else22
  %23 = load i8*, i8** @out_filename, align 8, !dbg !1234
  %call27 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)), !dbg !1238
  store %struct._IO_FILE* %call27, %struct._IO_FILE** @outfile, align 8, !dbg !1239
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1240
  %25 = ptrtoint %struct._IO_FILE* %24 to i64, !dbg !1242
  %cmp28 = icmp eq i64 %25, 0, !dbg !1243
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !1244

if.then29:                                        ; preds = %if.else26
  %call30 = call i32* @__errno_location() #8, !dbg !1245
  call void @llvm.dbg.value(metadata i32* %call30, metadata !1249, metadata !DIExpression()), !dbg !1098
  %26 = load i32, i32* %call30, align 4, !dbg !1250
  %call31 = call i8* @strerror(i32 %26) #6, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %call31, metadata !1253, metadata !DIExpression()), !dbg !1098
  %27 = load i8*, i8** @out_filename, align 8, !dbg !1254
  call void (i32, ...) @error(i32 0, i8* %27, i8* %call31), !dbg !1256
  br label %if.end32, !dbg !1257

if.end32:                                         ; preds = %if.then29, %if.else26
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then21
  store i32 0, i32* @nest_level, align 4, !dbg !1258
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %para_unfinished, i64 0, i64 0, !dbg !1259
  store i32 0, i32* %arrayidx35, align 16, !dbg !1260
  br label %while.body, !dbg !1261

while.body:                                       ; preds = %if.end106, %if.end34
  br label %while_continue___2, !dbg !1264

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !1264

while_continue:                                   ; preds = %while_continue___2
  %call36 = call i8* @read_nextline(), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %call36, metadata !1269, metadata !DIExpression()), !dbg !1098
  %28 = ptrtoint i8* %call36 to i64, !dbg !1270
  %cmp37 = icmp ne i64 %28, 0, !dbg !1272
  br i1 %cmp37, label %if.end39, label %if.then38, !dbg !1273

if.then38:                                        ; preds = %while_continue
  br label %while_break, !dbg !1274

if.end39:                                         ; preds = %while_continue
  %29 = load i8, i8* %call36, align 1, !dbg !1276
  %conv = zext i8 %29 to i32, !dbg !1278
  %cmp40 = icmp eq i32 %conv, 46, !dbg !1279
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !1280

if.then42:                                        ; preds = %if.end39
  call void @dot_process(i8* %call36), !dbg !1281
  br label %if.end106, !dbg !1285

if.else43:                                        ; preds = %if.end39
  %30 = load i32, i32* @literal_state, align 4, !dbg !1286
  %cmp44 = icmp eq i32 %30, 1, !dbg !1290
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1291

if.then46:                                        ; preds = %if.else43
  br label %case_1, !dbg !1292

if.end47:                                         ; preds = %if.else43
  %31 = load i32, i32* @literal_state, align 4, !dbg !1294
  %cmp48 = icmp eq i32 %31, 2, !dbg !1296
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1297

if.then50:                                        ; preds = %if.end47
  br label %case_2, !dbg !1298

if.end51:                                         ; preds = %if.end47
  %32 = load i32, i32* @literal_state, align 4, !dbg !1300
  %cmp52 = icmp eq i32 %32, 3, !dbg !1302
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !1303

if.then54:                                        ; preds = %if.end51
  br label %case_3, !dbg !1304

if.end55:                                         ; preds = %if.end51
  br label %switch_default, !dbg !1306

case_1:                                           ; preds = %if.then46
  call void @para_process(i8* %call36), !dbg !1307
  br label %switch_break, !dbg !1310

case_2:                                           ; preds = %if.then50
  call void @literal_process(i8* %call36), !dbg !1311
  br label %switch_break, !dbg !1314

case_3:                                           ; preds = %if.then54
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1315
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %call36), !dbg !1318
  br label %switch_break, !dbg !1319

switch_default:                                   ; preds = %if.end55
  call void @llvm.dbg.value(metadata i8* %call36, metadata !1320, metadata !DIExpression()), !dbg !1098
  br label %while.body58, !dbg !1321

while.body58:                                     ; preds = %if.end64, %switch_default
  %q.0 = phi i8* [ %call36, %switch_default ], [ %incdec.ptr, %if.end64 ], !dbg !1324
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !1320, metadata !DIExpression()), !dbg !1098
  br label %while_continue___3, !dbg !1325

while_continue___3:                               ; preds = %while.body58
  br label %while_continue___0, !dbg !1325

while_continue___0:                               ; preds = %while_continue___3
  %call59 = call i16** @__ctype_b_loc() #8, !dbg !1326
  call void @llvm.dbg.value(metadata i16** %call59, metadata !1330, metadata !DIExpression()), !dbg !1098
  %34 = load i16*, i16** %call59, align 8, !dbg !1331
  %35 = load i8, i8* %q.0, align 1, !dbg !1333
  %conv60 = zext i8 %35 to i32, !dbg !1334
  %idx.ext = sext i32 %conv60 to i64, !dbg !1335
  %add.ptr = getelementptr inbounds i16, i16* %34, i64 %idx.ext, !dbg !1335
  %36 = load i16, i16* %add.ptr, align 2, !dbg !1336
  %conv61 = zext i16 %36 to i32, !dbg !1337
  %and = and i32 %conv61, 8192, !dbg !1338
  %tobool62 = icmp ne i32 %and, 0, !dbg !1338
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1339

if.then63:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1340

if.end64:                                         ; preds = %while_continue___0
  %incdec.ptr = getelementptr inbounds i8, i8* %q.0, i32 1, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1320, metadata !DIExpression()), !dbg !1098
  br label %while.body58, !dbg !1321, !llvm.loop !1343

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !1345

while_break___0:                                  ; preds = %while_break___3, %if.then63
  %37 = load i8, i8* %q.0, align 1, !dbg !1346
  %conv65 = zext i8 %37 to i32, !dbg !1348
  %cmp66 = icmp ne i32 %conv65, 0, !dbg !1349
  br i1 %cmp66, label %if.then68, label %if.end105, !dbg !1350

if.then68:                                        ; preds = %while_break___0
  %call69 = call i8* @read_paragraph(i8* %call36, i32* %nest_info), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %call69, metadata !1269, metadata !DIExpression()), !dbg !1098
  %38 = load i32, i32* @nest_level, align 4, !dbg !1355
  %idxprom70 = sext i32 %38 to i64, !dbg !1357
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %para_unfinished, i64 0, i64 %idxprom70, !dbg !1357
  %39 = load i32, i32* %arrayidx71, align 4, !dbg !1357
  %tobool72 = icmp ne i32 %39, 0, !dbg !1357
  br i1 %tobool72, label %if.end76, label %if.then73, !dbg !1358

if.then73:                                        ; preds = %if.then68
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1359
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !1363
  call void @para_process(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !1364
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1366
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)), !dbg !1368
  br label %if.end76, !dbg !1369

if.end76:                                         ; preds = %if.then73, %if.then68
  call void @para_process(i8* %call69), !dbg !1370
  %42 = load i32, i32* %nest_info, align 4, !dbg !1373
  %cmp77 = icmp eq i32 %42, 1, !dbg !1375
  br i1 %cmp77, label %if.then79, label %if.else89, !dbg !1376

if.then79:                                        ; preds = %if.end76
  %43 = load i32, i32* @nest_level, align 4, !dbg !1377
  %cmp80 = icmp sge i32 %43, 3, !dbg !1380
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !1381

if.then82:                                        ; preds = %if.then79
  call void (i32, ...) @error(i32 27), !dbg !1382
  br label %if.end88, !dbg !1386

if.else83:                                        ; preds = %if.then79
  %44 = load i32, i32* @literal_state, align 4, !dbg !1387
  %45 = load i32, i32* @nest_level, align 4, !dbg !1389
  %idxprom84 = sext i32 %45 to i64, !dbg !1390
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* @nest_literal_stack, i64 0, i64 %idxprom84, !dbg !1390
  store i32 %44, i32* %arrayidx85, align 4, !dbg !1391
  %46 = load i32, i32* @nest_level, align 4, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %46, metadata !1393, metadata !DIExpression()), !dbg !1098
  %47 = load i32, i32* @nest_level, align 4, !dbg !1394
  %inc = add nsw i32 %47, 1, !dbg !1394
  store i32 %inc, i32* @nest_level, align 4, !dbg !1394
  %idxprom86 = sext i32 %46 to i64, !dbg !1395
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %para_unfinished, i64 0, i64 %idxprom86, !dbg !1395
  store i32 1, i32* %arrayidx87, align 4, !dbg !1396
  br label %if.end88

if.end88:                                         ; preds = %if.else83, %if.then82
  br label %if.end91, !dbg !1397

if.else89:                                        ; preds = %if.end76
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1398
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)), !dbg !1402
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.end88
  %49 = load i32, i32* @nest_level, align 4, !dbg !1403
  %idxprom92 = sext i32 %49 to i64, !dbg !1404
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %para_unfinished, i64 0, i64 %idxprom92, !dbg !1404
  store i32 0, i32* %arrayidx93, align 4, !dbg !1405
  %50 = load i32, i32* %nest_info, align 4, !dbg !1406
  %cmp94 = icmp eq i32 %50, 2, !dbg !1408
  br i1 %cmp94, label %if.then96, label %if.end104, !dbg !1409

if.then96:                                        ; preds = %if.end91
  %51 = load i32, i32* @nest_level, align 4, !dbg !1410
  %cmp97 = icmp sle i32 %51, 0, !dbg !1413
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !1414

if.then99:                                        ; preds = %if.then96
  call void (i32, ...) @error(i32 28), !dbg !1415
  br label %if.end103, !dbg !1419

if.else100:                                       ; preds = %if.then96
  %52 = load i32, i32* @nest_level, align 4, !dbg !1420
  %dec = add nsw i32 %52, -1, !dbg !1420
  store i32 %dec, i32* @nest_level, align 4, !dbg !1420
  %53 = load i32, i32* @nest_level, align 4, !dbg !1422
  %idxprom101 = sext i32 %53 to i64, !dbg !1423
  %arrayidx102 = getelementptr inbounds [4 x i32], [4 x i32]* @nest_literal_stack, i64 0, i64 %idxprom101, !dbg !1423
  %54 = load i32, i32* %arrayidx102, align 4, !dbg !1423
  store i32 %54, i32* @literal_state, align 4, !dbg !1424
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then99
  br label %if.end104, !dbg !1425

if.end104:                                        ; preds = %if.end103, %if.end91
  br label %if.end105, !dbg !1426

if.end105:                                        ; preds = %if.end104, %while_break___0
  br label %switch_break, !dbg !1427

switch_break:                                     ; preds = %if.end105, %case_3, %case_2, %case_1
  br label %if.end106

if.end106:                                        ; preds = %switch_break, %if.then42
  br label %while.body, !dbg !1261, !llvm.loop !1428

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !1430

while_break:                                      ; preds = %while_break___2, %if.then38
  br label %while.body107, !dbg !1431

while.body107:                                    ; preds = %if.end111, %while_break
  br label %while_continue___4, !dbg !1434

while_continue___4:                               ; preds = %while.body107
  br label %while_continue___1, !dbg !1434

while_continue___1:                               ; preds = %while_continue___4
  %55 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !1435
  %56 = ptrtoint %struct.pushstr* %55 to i64, !dbg !1438
  %cmp108 = icmp ne i64 %56, 0, !dbg !1439
  br i1 %cmp108, label %if.end111, label %if.then110, !dbg !1440

if.then110:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !1441

if.end111:                                        ; preds = %while_continue___1
  %57 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !1443
  %string = getelementptr inbounds %struct.pushstr, %struct.pushstr* %57, i32 0, i32 2, !dbg !1446
  %arraydecay112 = getelementptr inbounds [1 x i8], [1 x i8]* %string, i32 0, i32 0, !dbg !1443
  call void @para_process(i8* %arraydecay112), !dbg !1447
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1448
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !1450
  %59 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !1451
  %next = getelementptr inbounds %struct.pushstr, %struct.pushstr* %59, i32 0, i32 0, !dbg !1452
  %60 = load %struct.pushstr*, %struct.pushstr** %next, align 8, !dbg !1452
  store %struct.pushstr* %60, %struct.pushstr** @pushed, align 8, !dbg !1453
  br label %while.body107, !dbg !1431, !llvm.loop !1454

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !1456

while_break___1:                                  ; preds = %while_break___4, %if.then110
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !1457
  %call114 = call i32 @fclose(%struct._IO_FILE* %61), !dbg !1460
  %62 = load i32, i32* @return_code, align 4, !dbg !1461
  br label %return, !dbg !1462

return:                                           ; preds = %while_break___1, %if.then
  %retval.0 = phi i32 [ %62, %while_break___1 ], [ 1, %if.then ], !dbg !1463
  ret i32 %retval.0, !dbg !1464
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @xfpt_decode_arg(i32 %argc, i8** %argv) #0 !dbg !1465 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1468, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1470, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.declare(metadata !4, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.declare(metadata !4, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata !4, metadata !1475, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.declare(metadata !4, metadata !1477, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.declare(metadata !4, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.declare(metadata !4, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.declare(metadata !4, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata !4, metadata !1485, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !1469
  br label %while.body, !dbg !1488

while.body:                                       ; preds = %if.end44, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc45, %if.end44 ], !dbg !1492
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1487, metadata !DIExpression()), !dbg !1469
  br label %while_continue___0, !dbg !1493

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1493

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %argc, !dbg !1494
  br i1 %cmp, label %if.end, label %if.then, !dbg !1497

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1498

if.end:                                           ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !1500
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !1500
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %0, metadata !1502, metadata !DIExpression()), !dbg !1469
  %1 = load i8, i8* %0, align 1, !dbg !1503
  %conv = zext i8 %1 to i32, !dbg !1505
  %cmp1 = icmp ne i32 %conv, 45, !dbg !1506
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1507

if.then3:                                         ; preds = %if.end
  br label %while_break, !dbg !1508

if.end4:                                          ; preds = %if.end
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #9, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %call, metadata !1513, metadata !DIExpression()), !dbg !1469
  %cmp5 = icmp eq i32 %call, 0, !dbg !1514
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !1516

if.then7:                                         ; preds = %if.end4
  %inc = add nsw i32 %i.0, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1487, metadata !DIExpression()), !dbg !1469
  %idx.ext8 = sext i32 %inc to i64, !dbg !1519
  %add.ptr9 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext8, !dbg !1519
  %2 = load i8*, i8** %add.ptr9, align 8, !dbg !1520
  store i8* %2, i8** @out_filename, align 8, !dbg !1521
  %3 = load i8*, i8** @out_filename, align 8, !dbg !1522
  %4 = ptrtoint i8* %3 to i64, !dbg !1524
  %cmp10 = icmp eq i64 %4, 0, !dbg !1525
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1526

if.then12:                                        ; preds = %if.then7
  call void @usage(), !dbg !1527
  br label %return, !dbg !1531

if.end13:                                         ; preds = %if.then7
  br label %if.end44, !dbg !1532

if.else:                                          ; preds = %if.end4
  %call14 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !1533
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1537, metadata !DIExpression()), !dbg !1469
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1538
  br i1 %cmp15, label %if.then17, label %if.else25, !dbg !1540

if.then17:                                        ; preds = %if.else
  %inc18 = add nsw i32 %i.0, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %inc18, metadata !1487, metadata !DIExpression()), !dbg !1469
  %idx.ext19 = sext i32 %inc18 to i64, !dbg !1543
  %add.ptr20 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext19, !dbg !1543
  %5 = load i8*, i8** %add.ptr20, align 8, !dbg !1544
  store i8* %5, i8** @xfpt_share, align 8, !dbg !1545
  %6 = load i8*, i8** @xfpt_share, align 8, !dbg !1546
  %7 = ptrtoint i8* %6 to i64, !dbg !1548
  %cmp21 = icmp eq i64 %7, 0, !dbg !1549
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1550

if.then23:                                        ; preds = %if.then17
  call void @usage(), !dbg !1551
  br label %return, !dbg !1555

if.end24:                                         ; preds = %if.then17
  br label %if.end43, !dbg !1556

if.else25:                                        ; preds = %if.else
  %call26 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #9, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1561, metadata !DIExpression()), !dbg !1469
  %cmp27 = icmp eq i32 %call26, 0, !dbg !1562
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !1564

if.then29:                                        ; preds = %if.else25
  call void @usage(), !dbg !1565
  br label %return, !dbg !1569

if.else30:                                        ; preds = %if.else25
  %call31 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)) #9, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %call31, metadata !1574, metadata !DIExpression()), !dbg !1469
  %cmp32 = icmp eq i32 %call31, 0, !dbg !1575
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !1577

if.then34:                                        ; preds = %if.else30
  call void @usage(), !dbg !1578
  br label %return, !dbg !1582

if.else35:                                        ; preds = %if.else30
  %call36 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)) #9, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %call36, metadata !1587, metadata !DIExpression()), !dbg !1469
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1588
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !1590

if.then39:                                        ; preds = %if.else35
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1591
  %9 = load i8*, i8** @xfpt_version, align 8, !dbg !1595
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* %9), !dbg !1596
  call void @exit(i32 0) #10, !dbg !1597
  unreachable, !dbg !1597

if.else41:                                        ; preds = %if.else35
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1599
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0), i8* %0), !dbg !1603
  call void @usage(), !dbg !1604
  br label %return, !dbg !1606

if.end43:                                         ; preds = %if.end24
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end13
  %i.1 = phi i32 [ %inc, %if.end13 ], [ %inc18, %if.end43 ], !dbg !1607
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1487, metadata !DIExpression()), !dbg !1469
  %inc45 = add nsw i32 %i.1, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !1487, metadata !DIExpression()), !dbg !1469
  br label %while.body, !dbg !1488, !llvm.loop !1609

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1611

while_break:                                      ; preds = %while_break___0, %if.then3, %if.then
  %add = add nsw i32 %i.0, 1, !dbg !1612
  %cmp46 = icmp sgt i32 %argc, %add, !dbg !1614
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1615

if.then48:                                        ; preds = %while_break
  call void @usage(), !dbg !1616
  br label %return, !dbg !1620

if.end49:                                         ; preds = %while_break
  %idx.ext50 = sext i32 %i.0 to i64, !dbg !1621
  %add.ptr51 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext50, !dbg !1621
  %11 = load i8*, i8** %add.ptr51, align 8, !dbg !1622
  store i8* %11, i8** @xfpt_filename, align 8, !dbg !1623
  %12 = load i8*, i8** @xfpt_filename, align 8, !dbg !1624
  %13 = ptrtoint i8* %12 to i64, !dbg !1626
  %cmp52 = icmp ne i64 %13, 0, !dbg !1627
  br i1 %cmp52, label %if.then54, label %if.end72, !dbg !1628

if.then54:                                        ; preds = %if.end49
  %14 = load i8*, i8** @out_filename, align 8, !dbg !1629
  %15 = ptrtoint i8* %14 to i64, !dbg !1632
  %cmp55 = icmp eq i64 %15, 0, !dbg !1633
  br i1 %cmp55, label %if.then57, label %if.end71, !dbg !1634

if.then57:                                        ; preds = %if.then54
  %16 = load i8*, i8** @xfpt_filename, align 8, !dbg !1635
  %call58 = call i32 @strlen(i8* %16) #9, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1640, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1641, metadata !DIExpression()), !dbg !1469
  %add59 = add nsw i32 %call58, 5, !dbg !1642
  %call60 = call i8* @misc_malloc(i32 %add59), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %call60, metadata !1645, metadata !DIExpression()), !dbg !1469
  store i8* %call60, i8** @out_filename, align 8, !dbg !1646
  %17 = load i8*, i8** @out_filename, align 8, !dbg !1647
  %18 = load i8*, i8** @xfpt_filename, align 8, !dbg !1649
  %call61 = call i8* @strcpy(i8* %17, i8* %18) #6, !dbg !1650
  %19 = load i8*, i8** @out_filename, align 8, !dbg !1651
  %call62 = call i8* @strrchr(i8* %19, i32 46) #9, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %call62, metadata !1654, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8* %call62, metadata !1655, metadata !DIExpression()), !dbg !1469
  %20 = ptrtoint i8* %call62 to i64, !dbg !1656
  %cmp63 = icmp ne i64 %20, 0, !dbg !1658
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !1659

if.then65:                                        ; preds = %if.then57
  %21 = load i8*, i8** @out_filename, align 8, !dbg !1660
  %sub.ptr.lhs.cast = ptrtoint i8* %call62 to i64, !dbg !1662
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64, !dbg !1662
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1662
  %conv66 = trunc i64 %sub.ptr.sub to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %conv66, metadata !1641, metadata !DIExpression()), !dbg !1469
  br label %if.end67, !dbg !1664

if.end67:                                         ; preds = %if.then65, %if.then57
  %len.0 = phi i32 [ %conv66, %if.then65 ], [ %call58, %if.then57 ], !dbg !1665
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !1641, metadata !DIExpression()), !dbg !1469
  %22 = load i8*, i8** @out_filename, align 8, !dbg !1666
  %idx.ext68 = sext i32 %len.0 to i64, !dbg !1669
  %add.ptr69 = getelementptr inbounds i8, i8* %22, i64 %idx.ext68, !dbg !1669
  %call70 = call i8* @strcpy(i8* %add.ptr69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0)) #6, !dbg !1670
  br label %if.end71, !dbg !1671

if.end71:                                         ; preds = %if.end67, %if.then54
  br label %if.end72, !dbg !1672

if.end72:                                         ; preds = %if.end71, %if.end49
  br label %return, !dbg !1673

return:                                           ; preds = %if.end72, %if.then48, %if.else41, %if.then34, %if.then29, %if.then23, %if.then12
  %retval.0 = phi i32 [ 0, %if.then48 ], [ 1, %if.end72 ], [ 0, %if.then12 ], [ 0, %if.then23 ], [ 0, %if.then29 ], [ 0, %if.then34 ], [ 0, %if.else41 ], !dbg !1492
  ret i32 %retval.0, !dbg !1674
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define i8* @read_nextline() #0 !dbg !1675 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.declare(metadata !4, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.declare(metadata !4, metadata !1683, metadata !DIExpression()), !dbg !1684
  %0 = load i8*, i8** @next_line, align 8, !dbg !1685
  %1 = ptrtoint i8* %0 to i64, !dbg !1688
  %cmp = icmp ne i64 %1, 0, !dbg !1689
  br i1 %cmp, label %if.then, label %if.end, !dbg !1690

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @next_line, align 8, !dbg !1691
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  store i8* null, i8** @next_line, align 8, !dbg !1695
  br label %return, !dbg !1696

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @popto, align 4, !dbg !1697
  %cmp1 = icmp eq i32 %3, 0, !dbg !1699
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1700

if.then2:                                         ; preds = %if.end
  %4 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.pushstr* %4, metadata !1703, metadata !DIExpression()), !dbg !1694
  %5 = ptrtoint %struct.pushstr* %4 to i64, !dbg !1704
  %cmp3 = icmp eq i64 %5, 0, !dbg !1706
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1707

if.then4:                                         ; preds = %if.then2
  call void (i32, ...) @error(i32 12), !dbg !1708
  br label %if.end5, !dbg !1712

if.else:                                          ; preds = %if.then2
  store i32 -1, i32* @popto, align 4, !dbg !1713
  %6 = load i8*, i8** @inbuffer, align 8, !dbg !1716
  %string = getelementptr inbounds %struct.pushstr, %struct.pushstr* %4, i32 0, i32 2, !dbg !1718
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %string, i32 0, i32 0, !dbg !1719
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay) #6, !dbg !1720
  %next = getelementptr inbounds %struct.pushstr, %struct.pushstr* %4, i32 0, i32 0, !dbg !1721
  %7 = load %struct.pushstr*, %struct.pushstr** %next, align 8, !dbg !1721
  store %struct.pushstr* %7, %struct.pushstr** @pushed, align 8, !dbg !1722
  %8 = bitcast %struct.pushstr* %4 to i8*, !dbg !1723
  call void @free(i8* %8) #6, !dbg !1725
  %9 = load i8*, i8** @inbuffer, align 8, !dbg !1726
  br label %return, !dbg !1727

if.end5:                                          ; preds = %if.then4
  br label %if.end6, !dbg !1728

if.end6:                                          ; preds = %if.end5, %if.end
  %10 = load i32, i32* @popto, align 4, !dbg !1729
  %cmp7 = icmp sgt i32 %10, 0, !dbg !1731
  br i1 %cmp7, label %if.then8, label %if.end16, !dbg !1732

if.then8:                                         ; preds = %if.end6
  %11 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.pushstr* %11, metadata !1735, metadata !DIExpression()), !dbg !1694
  %letter = getelementptr inbounds %struct.pushstr, %struct.pushstr* %11, i32 0, i32 1, !dbg !1736
  %12 = load i32, i32* %letter, align 8, !dbg !1736
  %13 = load i32, i32* @popto, align 4, !dbg !1738
  %cmp9 = icmp eq i32 %12, %13, !dbg !1739
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1740

if.then10:                                        ; preds = %if.then8
  store i32 -1, i32* @popto, align 4, !dbg !1741
  br label %if.end11, !dbg !1743

if.end11:                                         ; preds = %if.then10, %if.then8
  %14 = load i8*, i8** @inbuffer, align 8, !dbg !1744
  %string12 = getelementptr inbounds %struct.pushstr, %struct.pushstr* %11, i32 0, i32 2, !dbg !1747
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %string12, i32 0, i32 0, !dbg !1748
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay13) #6, !dbg !1749
  %next15 = getelementptr inbounds %struct.pushstr, %struct.pushstr* %11, i32 0, i32 0, !dbg !1750
  %15 = load %struct.pushstr*, %struct.pushstr** %next15, align 8, !dbg !1750
  store %struct.pushstr* %15, %struct.pushstr** @pushed, align 8, !dbg !1751
  %16 = bitcast %struct.pushstr* %11 to i8*, !dbg !1752
  call void @free(i8* %16) #6, !dbg !1754
  %17 = load i8*, i8** @inbuffer, align 8, !dbg !1755
  br label %return, !dbg !1756

if.end16:                                         ; preds = %if.end6
  br label %while.body, !dbg !1757

while.body:                                       ; preds = %if.end105, %if.end16
  br label %while_continue___3, !dbg !1760

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !1760

while_continue:                                   ; preds = %while_continue___3
  %18 = load i32, i32* @from_type_ptr, align 4, !dbg !1761
  %idxprom = sext i32 %18 to i64, !dbg !1764
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !1764
  %19 = load i32, i32* %arrayidx, align 4, !dbg !1764
  %cmp17 = icmp eq i32 %19, 1, !dbg !1765
  br i1 %cmp17, label %if.then18, label %if.else29, !dbg !1766

if.then18:                                        ; preds = %while_continue
  %20 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1767
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %20, i32 0, i32 3, !dbg !1770
  %21 = load %struct.argstr*, %struct.argstr** %nextline, align 8, !dbg !1770
  %22 = ptrtoint %struct.argstr* %21 to i64, !dbg !1771
  %cmp19 = icmp eq i64 %22, 0, !dbg !1772
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !1773

if.then20:                                        ; preds = %if.then18
  %23 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.macroexe* %23, metadata !1777, metadata !DIExpression()), !dbg !1694
  %24 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1778
  %prev21 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %24, i32 0, i32 0, !dbg !1779
  %25 = load %struct.macroexe*, %struct.macroexe** %prev21, align 8, !dbg !1779
  store %struct.macroexe* %25, %struct.macroexe** @macrocurrent, align 8, !dbg !1780
  %26 = bitcast %struct.macroexe* %23 to i8*, !dbg !1781
  call void @free(i8* %26) #6, !dbg !1783
  br label %if.end28, !dbg !1784

if.else22:                                        ; preds = %if.then18
  %27 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1785
  %nextline23 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %27, i32 0, i32 3, !dbg !1789
  %28 = load %struct.argstr*, %struct.argstr** %nextline23, align 8, !dbg !1789
  %string24 = getelementptr inbounds %struct.argstr, %struct.argstr* %28, i32 0, i32 1, !dbg !1790
  %29 = load i8*, i8** %string24, align 8, !dbg !1790
  %30 = load i8*, i8** @inbuffer, align 8, !dbg !1791
  call void @read_process_macroline(i8* %29, i8* %30), !dbg !1792
  %31 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1793
  %nextline25 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %31, i32 0, i32 3, !dbg !1794
  %32 = load %struct.argstr*, %struct.argstr** %nextline25, align 8, !dbg !1794
  %next26 = getelementptr inbounds %struct.argstr, %struct.argstr* %32, i32 0, i32 0, !dbg !1795
  %33 = load %struct.argstr*, %struct.argstr** %next26, align 8, !dbg !1795
  %34 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !1796
  %nextline27 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %34, i32 0, i32 3, !dbg !1797
  store %struct.argstr* %33, %struct.argstr** %nextline27, align 8, !dbg !1798
  br label %while_break, !dbg !1799

if.end28:                                         ; preds = %if.then20
  br label %if.end105, !dbg !1800

if.else29:                                        ; preds = %while_continue
  %35 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1801
  %36 = ptrtoint %struct.istackstr* %35 to i64, !dbg !1804
  %cmp30 = icmp eq i64 %36, 0, !dbg !1805
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1806

if.then31:                                        ; preds = %if.else29
  br label %return, !dbg !1807

if.end32:                                         ; preds = %if.else29
  %37 = load i8*, i8** @inbuffer, align 8, !dbg !1809
  %38 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1812
  %file = getelementptr inbounds %struct.istackstr, %struct.istackstr* %38, i32 0, i32 2, !dbg !1813
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !dbg !1813
  %call33 = call i8* @fgets(i8* %37, i32 1024, %struct._IO_FILE* %39), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %call33, metadata !1815, metadata !DIExpression()), !dbg !1694
  %40 = ptrtoint i8* %call33 to i64, !dbg !1816
  %cmp34 = icmp eq i64 %40, 0, !dbg !1818
  br i1 %cmp34, label %if.then35, label %if.else39, !dbg !1819

if.then35:                                        ; preds = %if.end32
  %41 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1820
  %prev36 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %41, i32 0, i32 0, !dbg !1823
  %42 = load %struct.istackstr*, %struct.istackstr** %prev36, align 8, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.istackstr* %42, metadata !1824, metadata !DIExpression()), !dbg !1694
  %43 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1825
  %file37 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %43, i32 0, i32 2, !dbg !1827
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file37, align 8, !dbg !1827
  %call38 = call i32 @fclose(%struct._IO_FILE* %44), !dbg !1828
  %45 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1829
  %46 = bitcast %struct.istackstr* %45 to i8*, !dbg !1831
  call void @free(i8* %46) #6, !dbg !1832
  store %struct.istackstr* %42, %struct.istackstr** @istack, align 8, !dbg !1833
  br label %if.end104, !dbg !1834

if.else39:                                        ; preds = %if.end32
  %47 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1835
  %linenumber = getelementptr inbounds %struct.istackstr, %struct.istackstr* %47, i32 0, i32 1, !dbg !1838
  %48 = load i32, i32* %linenumber, align 8, !dbg !1839
  %inc = add nsw i32 %48, 1, !dbg !1839
  store i32 %inc, i32* %linenumber, align 8, !dbg !1839
  %49 = load i8*, i8** @inbuffer, align 8, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %49, metadata !1841, metadata !DIExpression()), !dbg !1694
  %call40 = call i32 @strlen(i8* %49) #9, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %call40, metadata !1844, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %call40, metadata !1845, metadata !DIExpression()), !dbg !1694
  br label %while.body42, !dbg !1846

while.body42:                                     ; preds = %if.end103, %if.else39
  %q.0 = phi i8* [ %49, %if.else39 ], [ %add.ptr67, %if.end103 ], !dbg !1849
  %len.0 = phi i32 [ %call40, %if.else39 ], [ %call98, %if.end103 ], !dbg !1849
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !1845, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !1841, metadata !DIExpression()), !dbg !1694
  br label %while_continue___4, !dbg !1850

while_continue___4:                               ; preds = %while.body42
  br label %while_continue___0, !dbg !1850

while_continue___0:                               ; preds = %while_continue___4
  %idx.ext = sext i32 %len.0 to i64, !dbg !1851
  %add.ptr = getelementptr inbounds i8, i8* %q.0, i64 %idx.ext, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while.body44, !dbg !1854

while.body44:                                     ; preds = %if.end55, %while_continue___0
  %p.0 = phi i8* [ %add.ptr, %while_continue___0 ], [ %incdec.ptr, %if.end55 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while_continue___5, !dbg !1858

while_continue___5:                               ; preds = %while.body44
  br label %while_continue___1, !dbg !1858

while_continue___1:                               ; preds = %while_continue___5
  %50 = ptrtoint i8* %p.0 to i64, !dbg !1859
  %51 = ptrtoint i8* %q.0 to i64, !dbg !1862
  %cmp45 = icmp ugt i64 %50, %51, !dbg !1863
  br i1 %cmp45, label %if.then46, label %if.else54, !dbg !1864

if.then46:                                        ; preds = %while_continue___1
  %call47 = call i16** @__ctype_b_loc() #8, !dbg !1865
  call void @llvm.dbg.value(metadata i16** %call47, metadata !1869, metadata !DIExpression()), !dbg !1694
  %52 = load i16*, i16** %call47, align 8, !dbg !1870
  %add.ptr48 = getelementptr inbounds i8, i8* %p.0, i64 -1, !dbg !1872
  %53 = load i8, i8* %add.ptr48, align 1, !dbg !1873
  %conv = zext i8 %53 to i32, !dbg !1874
  %idx.ext49 = sext i32 %conv to i64, !dbg !1875
  %add.ptr50 = getelementptr inbounds i16, i16* %52, i64 %idx.ext49, !dbg !1875
  %54 = load i16, i16* %add.ptr50, align 2, !dbg !1876
  %conv51 = zext i16 %54 to i32, !dbg !1877
  %and = and i32 %conv51, 8192, !dbg !1878
  %tobool = icmp ne i32 %and, 0, !dbg !1878
  br i1 %tobool, label %if.end53, label %if.then52, !dbg !1879

if.then52:                                        ; preds = %if.then46
  br label %while_break___1, !dbg !1880

if.end53:                                         ; preds = %if.then46
  br label %if.end55, !dbg !1882

if.else54:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1883

if.end55:                                         ; preds = %if.end53
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i32 -1, !dbg !1885
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while.body44, !dbg !1854, !llvm.loop !1886

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !1888

while_break___1:                                  ; preds = %while_break___5, %if.else54, %if.then52
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64, !dbg !1889
  %sub.ptr.rhs.cast = ptrtoint i8* %q.0 to i64, !dbg !1889
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1889
  %cmp56 = icmp slt i64 %sub.ptr.sub, 3, !dbg !1891
  br i1 %cmp56, label %if.then58, label %if.else59, !dbg !1892

if.then58:                                        ; preds = %while_break___1
  br label %while_break___0, !dbg !1893

if.else59:                                        ; preds = %while_break___1
  %add.ptr60 = getelementptr inbounds i8, i8* %p.0, i64 -3, !dbg !1895
  %call61 = call i32 @strncmp(i8* %add.ptr60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 3) #9, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1900, metadata !DIExpression()), !dbg !1694
  %cmp62 = icmp ne i32 %call61, 0, !dbg !1901
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1903

if.then64:                                        ; preds = %if.else59
  br label %while_break___0, !dbg !1904

if.end65:                                         ; preds = %if.else59
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  %add.ptr67 = getelementptr inbounds i8, i8* %p.0, i64 -3, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %add.ptr67, metadata !1841, metadata !DIExpression()), !dbg !1694
  store i8 0, i8* %add.ptr67, align 1, !dbg !1907
  %55 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1908
  %56 = ptrtoint %struct.istackstr* %55 to i64, !dbg !1910
  %cmp68 = icmp eq i64 %56, 0, !dbg !1911
  br i1 %cmp68, label %if.then70, label %if.else71, !dbg !1912

if.then70:                                        ; preds = %if.end66
  br label %while_break___0, !dbg !1913

if.else71:                                        ; preds = %if.end66
  %57 = load i8*, i8** @inbuffer, align 8, !dbg !1915
  %sub.ptr.lhs.cast72 = ptrtoint i8* %add.ptr67 to i64, !dbg !1919
  %sub.ptr.rhs.cast73 = ptrtoint i8* %57 to i64, !dbg !1919
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73, !dbg !1919
  %sub = sub nsw i64 1024, %sub.ptr.sub74, !dbg !1920
  %conv75 = trunc i64 %sub to i32, !dbg !1921
  %58 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1922
  %file76 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %58, i32 0, i32 2, !dbg !1923
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file76, align 8, !dbg !1923
  %call77 = call i8* @fgets(i8* %add.ptr67, i32 %conv75, %struct._IO_FILE* %59), !dbg !1924
  call void @llvm.dbg.value(metadata i8* %call77, metadata !1925, metadata !DIExpression()), !dbg !1694
  %60 = ptrtoint i8* %call77 to i64, !dbg !1926
  %cmp78 = icmp eq i64 %60, 0, !dbg !1928
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !1929

if.then80:                                        ; preds = %if.else71
  br label %while_break___0, !dbg !1930

if.end81:                                         ; preds = %if.else71
  br label %if.end82

if.end82:                                         ; preds = %if.end81
  %61 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !1932
  %linenumber83 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %61, i32 0, i32 1, !dbg !1933
  %62 = load i32, i32* %linenumber83, align 8, !dbg !1934
  %inc84 = add nsw i32 %62, 1, !dbg !1934
  store i32 %inc84, i32* %linenumber83, align 8, !dbg !1934
  call void @llvm.dbg.value(metadata i8* %add.ptr67, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while.body86, !dbg !1935

while.body86:                                     ; preds = %if.end96, %if.end82
  %p.1 = phi i8* [ %add.ptr67, %if.end82 ], [ %incdec.ptr97, %if.end96 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while_continue___6, !dbg !1938

while_continue___6:                               ; preds = %while.body86
  br label %while_continue___2, !dbg !1938

while_continue___2:                               ; preds = %while_continue___6
  %63 = load i8, i8* %p.1, align 1, !dbg !1939
  %conv87 = zext i8 %63 to i32, !dbg !1942
  %cmp88 = icmp eq i32 %conv87, 32, !dbg !1943
  br i1 %cmp88, label %if.end96, label %if.then90, !dbg !1944

if.then90:                                        ; preds = %while_continue___2
  %64 = load i8, i8* %p.1, align 1, !dbg !1945
  %conv91 = zext i8 %64 to i32, !dbg !1948
  %cmp92 = icmp eq i32 %conv91, 9, !dbg !1949
  br i1 %cmp92, label %if.end95, label %if.then94, !dbg !1950

if.then94:                                        ; preds = %if.then90
  br label %while_break___2, !dbg !1951

if.end95:                                         ; preds = %if.then90
  br label %if.end96, !dbg !1953

if.end96:                                         ; preds = %if.end95, %while_continue___2
  %incdec.ptr97 = getelementptr inbounds i8, i8* %p.1, i32 1, !dbg !1954
  call void @llvm.dbg.value(metadata i8* %incdec.ptr97, metadata !1853, metadata !DIExpression()), !dbg !1694
  br label %while.body86, !dbg !1935, !llvm.loop !1955

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !1957

while_break___2:                                  ; preds = %while_break___6, %if.then94
  %call98 = call i32 @strlen(i8* %p.1) #9, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %call98, metadata !1961, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %call98, metadata !1845, metadata !DIExpression()), !dbg !1694
  %65 = ptrtoint i8* %p.1 to i64, !dbg !1962
  %66 = ptrtoint i8* %add.ptr67 to i64, !dbg !1964
  %cmp99 = icmp ugt i64 %65, %66, !dbg !1965
  br i1 %cmp99, label %if.then101, label %if.end103, !dbg !1966

if.then101:                                       ; preds = %while_break___2
  %add = add nsw i32 %call98, 1, !dbg !1967
  %call102 = call i8* @memmove(i8* %add.ptr67, i8* %p.1, i32 %add) #6, !dbg !1971
  br label %if.end103, !dbg !1972

if.end103:                                        ; preds = %if.then101, %while_break___2
  br label %while.body42, !dbg !1846, !llvm.loop !1973

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !1975

while_break___0:                                  ; preds = %while_break___4, %if.then80, %if.then70, %if.then64, %if.then58
  br label %while_break, !dbg !1976

if.end104:                                        ; preds = %if.then35
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end28
  %67 = load i32, i32* @from_type_ptr, align 4, !dbg !1977
  %dec = add nsw i32 %67, -1, !dbg !1977
  store i32 %dec, i32* @from_type_ptr, align 4, !dbg !1977
  br label %while.body, !dbg !1757, !llvm.loop !1978

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !1980

while_break:                                      ; preds = %while_break___3, %while_break___0, %if.else22
  %68 = load i8*, i8** @inbuffer, align 8, !dbg !1981
  br label %return, !dbg !1982

return:                                           ; preds = %while_break, %if.then31, %if.end11, %if.else, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ %17, %if.end11 ], [ %68, %while_break ], [ null, %if.then31 ], [ %9, %if.else ], !dbg !1983
  ret i8* %retval.0, !dbg !1984
}

; Function Attrs: noinline nounwind ssp uwtable
define void @para_process(i8* %p) #0 !dbg !1985 {
entry:
  %fstack = alloca [40 x %struct.flagstr*], align 16
  %inliteraltext = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.declare(metadata [40 x %struct.flagstr*]* %fstack, metadata !1989, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.declare(metadata i32* %inliteraltext, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.declare(metadata !4, metadata !1996, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.declare(metadata !4, metadata !1998, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.declare(metadata !4, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata !4, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata !4, metadata !2004, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.declare(metadata !4, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.declare(metadata !4, metadata !2008, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.declare(metadata !4, metadata !2010, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.declare(metadata !4, metadata !2012, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.declare(metadata !4, metadata !2014, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.declare(metadata !4, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.declare(metadata !4, metadata !2018, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.declare(metadata !4, metadata !2020, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.declare(metadata !4, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.declare(metadata !4, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !2026, metadata !DIExpression()), !dbg !1988
  store i32 0, i32* %inliteraltext, align 4, !dbg !2027
  br label %while.body, !dbg !2029

while.body:                                       ; preds = %if.end226, %entry
  %fstackcount.0 = phi i32 [ 0, %entry ], [ %fstackcount.4, %if.end226 ], !dbg !2032
  %p.addr.0 = phi i8* [ %p, %entry ], [ %add.ptr231, %if.end226 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %fstackcount.0, metadata !2026, metadata !DIExpression()), !dbg !1988
  br label %while_continue___7, !dbg !2033

while_continue___7:                               ; preds = %while.body
  br label %while_continue, !dbg !2033

while_continue:                                   ; preds = %if.then215, %if.then193, %if.then166, %if.end135, %if.then103, %if.then96, %if.then65, %if.then61, %if.then55, %if.then49, %if.then44, %if.then38, %if.then33, %while_continue___7
  %fstackcount.1 = phi i32 [ %fstackcount.0, %while_continue___7 ], [ %fstackcount.2, %if.then33 ], [ %fstackcount.2, %if.then38 ], [ %fstackcount.2, %if.then55 ], [ %fstackcount.2, %if.then61 ], [ %fstackcount.2, %if.then65 ], [ %fstackcount.2, %if.then96 ], [ %fstackcount.2, %if.then103 ], [ %fstackcount.2, %if.end135 ], [ %fstackcount.2, %if.then166 ], [ %fstackcount.2, %if.then215 ], [ %fstackcount.2, %if.then193 ], [ %fstackcount.2, %if.then44 ], [ %fstackcount.2, %if.then49 ], !dbg !2034
  %p.addr.1 = phi i8* [ %p.addr.0, %while_continue___7 ], [ %incdec.ptr, %if.then33 ], [ %incdec.ptr, %if.then38 ], [ %incdec.ptr, %if.then55 ], [ %incdec.ptr, %if.then61 ], [ %incdec.ptr, %if.then65 ], [ %call97, %if.then96 ], [ %incdec.ptr, %if.then103 ], [ %q.1, %if.end135 ], [ %q___0.0, %if.then166 ], [ %incdec.ptr, %if.then215 ], [ %q___0.1, %if.then193 ], [ %incdec.ptr, %if.then44 ], [ %incdec.ptr, %if.then49 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %fstackcount.1, metadata !2026, metadata !DIExpression()), !dbg !1988
  %0 = load i8, i8* %p.addr.1, align 1, !dbg !2035
  %conv = zext i8 %0 to i32, !dbg !2038
  %cmp = icmp ne i32 %conv, 0, !dbg !2039
  br i1 %cmp, label %if.end, label %if.then, !dbg !2040

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2041

if.end:                                           ; preds = %while_continue
  %sub = sub nsw i32 %fstackcount.1, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2044, metadata !DIExpression()), !dbg !1988
  br label %while.body3, !dbg !2045

while.body3:                                      ; preds = %__Cont, %if.end
  %i.0 = phi i32 [ %sub, %if.end ], [ %dec, %__Cont ], !dbg !2048
  %fstackcount.2 = phi i32 [ %fstackcount.1, %if.end ], [ %fstackcount.3, %__Cont ], !dbg !2032
  %p.addr.2 = phi i8* [ %p.addr.1, %if.end ], [ %p.addr.3, %__Cont ]
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %fstackcount.2, metadata !2026, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2044, metadata !DIExpression()), !dbg !1988
  br label %while_continue___8, !dbg !2049

while_continue___8:                               ; preds = %while.body3
  br label %while_continue___0, !dbg !2049

while_continue___0:                               ; preds = %while_continue___8
  %cmp4 = icmp sge i32 %i.0, 0, !dbg !2050
  br i1 %cmp4, label %if.end7, label %if.then6, !dbg !2053

if.then6:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !2054

if.end7:                                          ; preds = %while_continue___0
  %idxprom = sext i32 %i.0 to i64, !dbg !2056
  %arrayidx = getelementptr inbounds [40 x %struct.flagstr*], [40 x %struct.flagstr*]* %fstack, i64 0, i64 %idxprom, !dbg !2056
  %1 = load %struct.flagstr*, %struct.flagstr** %arrayidx, align 8, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.flagstr* %1, metadata !2058, metadata !DIExpression()), !dbg !1988
  %flag2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 5, !dbg !2059
  %2 = load i8*, i8** %flag2, align 8, !dbg !2059
  %length2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 4, !dbg !2061
  %3 = load i32, i32* %length2, align 8, !dbg !2061
  %call = call i32 @strncmp(i8* %2, i8* %p.addr.2, i32 %3) #9, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %call, metadata !2063, metadata !DIExpression()), !dbg !1988
  %cmp8 = icmp eq i32 %call, 0, !dbg !2064
  br i1 %cmp8, label %if.then10, label %if.end24, !dbg !2066

if.then10:                                        ; preds = %if.end7
  %add = add nsw i32 %i.0, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %add, metadata !2069, metadata !DIExpression()), !dbg !1988
  br label %while.body12, !dbg !2070

while.body12:                                     ; preds = %if.end16, %if.then10
  %j.0 = phi i32 [ %add, %if.then10 ], [ %inc, %if.end16 ], !dbg !2073
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2069, metadata !DIExpression()), !dbg !1988
  br label %while_continue___9, !dbg !2074

while_continue___9:                               ; preds = %while.body12
  br label %while_continue___1, !dbg !2074

while_continue___1:                               ; preds = %while_continue___9
  %cmp13 = icmp slt i32 %j.0, %fstackcount.2, !dbg !2075
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !2078

if.then15:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2079

if.end16:                                         ; preds = %while_continue___1
  %idxprom17 = sext i32 %j.0 to i64, !dbg !2081
  %arrayidx18 = getelementptr inbounds [40 x %struct.flagstr*], [40 x %struct.flagstr*]* %fstack, i64 0, i64 %idxprom17, !dbg !2081
  %4 = load %struct.flagstr*, %struct.flagstr** %arrayidx18, align 8, !dbg !2081
  %flag219 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %4, i32 0, i32 5, !dbg !2084
  %5 = load i8*, i8** %flag219, align 8, !dbg !2084
  %flag220 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 5, !dbg !2085
  %6 = load i8*, i8** %flag220, align 8, !dbg !2085
  call void (i32, ...) @error(i32 8, i8* %5, i8* %6), !dbg !2086
  %inc = add nsw i32 %j.0, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2069, metadata !DIExpression()), !dbg !1988
  br label %while.body12, !dbg !2070, !llvm.loop !2088

while_break___9:                                  ; No predecessors!
  br label %while_break___1, !dbg !2090

while_break___1:                                  ; preds = %while_break___9, %if.then15
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2026, metadata !DIExpression()), !dbg !1988
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2091
  %rep2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 6, !dbg !2094
  %8 = load i8*, i8** %rep2, align 8, !dbg !2094
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %8), !dbg !2095
  %rep222 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 6, !dbg !2096
  %9 = load i8*, i8** %rep222, align 8, !dbg !2096
  call void @check_literal(i8* %9, i32* %inliteraltext), !dbg !2098
  %length223 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %1, i32 0, i32 4, !dbg !2099
  %10 = load i32, i32* %length223, align 8, !dbg !2099
  %idx.ext = sext i32 %10 to i64, !dbg !2100
  %add.ptr = getelementptr inbounds i8, i8* %p.addr.2, i64 %idx.ext, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2044, metadata !DIExpression()), !dbg !1988
  br label %__Cont, !dbg !2101

if.end24:                                         ; preds = %if.end7
  br label %__Cont, !dbg !2102

__Cont:                                           ; preds = %if.end24, %while_break___1
  %fstackcount.3 = phi i32 [ %i.0, %while_break___1 ], [ %fstackcount.2, %if.end24 ], !dbg !2032
  %p.addr.3 = phi i8* [ %add.ptr, %while_break___1 ], [ %p.addr.2, %if.end24 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %fstackcount.3, metadata !2026, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2044, metadata !DIExpression()), !dbg !1988
  %dec = add nsw i32 %i.0, -1, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2044, metadata !DIExpression()), !dbg !1988
  br label %while.body3, !dbg !2045, !llvm.loop !2104

while_break___8:                                  ; No predecessors!
  br label %while_break___0, !dbg !2106

while_break___0:                                  ; preds = %while_break___8, %if.then6
  %11 = load i8, i8* %p.addr.2, align 1, !dbg !2107
  %conv25 = zext i8 %11 to i32, !dbg !2109
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !2110
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2111

if.then28:                                        ; preds = %while_break___0
  br label %while_break, !dbg !2112

if.end29:                                         ; preds = %while_break___0
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !2114, metadata !DIExpression()), !dbg !1988
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.2, i32 1, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1987, metadata !DIExpression()), !dbg !1988
  %12 = load i8, i8* %p.addr.2, align 1, !dbg !2116
  %conv30 = zext i8 %12 to i32, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %conv30, metadata !2118, metadata !DIExpression()), !dbg !1988
  %cmp31 = icmp eq i32 %conv30, 60, !dbg !2119
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !2121

if.then33:                                        ; preds = %if.end29
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2122
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !2126
  br label %while_continue, !dbg !2127

if.end35:                                         ; preds = %if.end29
  %cmp36 = icmp eq i32 %conv30, 62, !dbg !2128
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !2130

if.then38:                                        ; preds = %if.end35
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2131
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !2135
  br label %while_continue, !dbg !2136

if.end40:                                         ; preds = %if.end35
  %15 = load i32, i32* %inliteraltext, align 4, !dbg !2137
  %tobool = icmp ne i32 %15, 0, !dbg !2137
  br i1 %tobool, label %if.end52, label %if.then41, !dbg !2139

if.then41:                                        ; preds = %if.end40
  %cmp42 = icmp eq i32 %conv30, 96, !dbg !2140
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !2143

if.then44:                                        ; preds = %if.then41
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2144
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)), !dbg !2148
  br label %while_continue, !dbg !2149

if.end46:                                         ; preds = %if.then41
  %cmp47 = icmp eq i32 %conv30, 39, !dbg !2150
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !2152

if.then49:                                        ; preds = %if.end46
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2153
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)), !dbg !2157
  br label %while_continue, !dbg !2158

if.end51:                                         ; preds = %if.end46
  br label %if.end52, !dbg !2159

if.end52:                                         ; preds = %if.end51, %if.end40
  %cmp53 = icmp ne i32 %conv30, 38, !dbg !2160
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !2162

if.then55:                                        ; preds = %if.end52
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2163
  %call56 = call i32 @fputc(i32 %conv30, %struct._IO_FILE* %18), !dbg !2167
  br label %while_continue, !dbg !2168

if.end57:                                         ; preds = %if.end52
  %19 = load i8, i8* %incdec.ptr, align 1, !dbg !2169
  %conv58 = zext i8 %19 to i32, !dbg !2171
  %cmp59 = icmp eq i32 %conv58, 0, !dbg !2172
  br i1 %cmp59, label %if.then61, label %if.else, !dbg !2173

if.then61:                                        ; preds = %if.end57
  call void (i32, ...) @error(i32 25), !dbg !2174
  br label %while_continue, !dbg !2178

if.else:                                          ; preds = %if.end57
  %20 = load i8, i8* %incdec.ptr, align 1, !dbg !2179
  %conv62 = zext i8 %20 to i32, !dbg !2181
  %cmp63 = icmp eq i32 %conv62, 10, !dbg !2182
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !2171

if.then65:                                        ; preds = %if.else
  call void (i32, ...) @error(i32 25), !dbg !2183
  br label %while_continue, !dbg !2187

if.end66:                                         ; preds = %if.else
  br label %if.end67

if.end67:                                         ; preds = %if.end66
  %call68 = call i16** @__ctype_b_loc() #8, !dbg !2188
  call void @llvm.dbg.value(metadata i16** %call68, metadata !2191, metadata !DIExpression()), !dbg !1988
  %21 = load i16*, i16** %call68, align 8, !dbg !2192
  %22 = load i8, i8* %incdec.ptr, align 1, !dbg !2194
  %conv69 = zext i8 %22 to i32, !dbg !2195
  %idx.ext70 = sext i32 %conv69 to i64, !dbg !2196
  %add.ptr71 = getelementptr inbounds i16, i16* %21, i64 %idx.ext70, !dbg !2196
  %23 = load i16, i16* %add.ptr71, align 2, !dbg !2197
  %conv72 = zext i16 %23 to i32, !dbg !2198
  %and = and i32 %conv72, 1024, !dbg !2199
  %tobool73 = icmp ne i32 %and, 0, !dbg !2199
  br i1 %tobool73, label %if.then74, label %if.end136, !dbg !2200

if.then74:                                        ; preds = %if.end67
  %add.ptr75 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1, !dbg !2201
  call void @llvm.dbg.value(metadata i8* %add.ptr75, metadata !2203, metadata !DIExpression()), !dbg !1988
  br label %while.body77, !dbg !2204

while.body77:                                     ; preds = %if.end91, %if.then74
  %q.0 = phi i8* [ %add.ptr75, %if.then74 ], [ %incdec.ptr92, %if.end91 ], !dbg !2207
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !2203, metadata !DIExpression()), !dbg !1988
  br label %while_continue___10, !dbg !2208

while_continue___10:                              ; preds = %while.body77
  br label %while_continue___2, !dbg !2208

while_continue___2:                               ; preds = %while_continue___10
  %call78 = call i16** @__ctype_b_loc() #8, !dbg !2209
  call void @llvm.dbg.value(metadata i16** %call78, metadata !2213, metadata !DIExpression()), !dbg !1988
  %24 = load i16*, i16** %call78, align 8, !dbg !2214
  %25 = load i8, i8* %q.0, align 1, !dbg !2216
  %conv79 = zext i8 %25 to i32, !dbg !2217
  %idx.ext80 = sext i32 %conv79 to i64, !dbg !2218
  %add.ptr81 = getelementptr inbounds i16, i16* %24, i64 %idx.ext80, !dbg !2218
  %26 = load i16, i16* %add.ptr81, align 2, !dbg !2219
  %conv82 = zext i16 %26 to i32, !dbg !2220
  %and83 = and i32 %conv82, 8, !dbg !2221
  %tobool84 = icmp ne i32 %and83, 0, !dbg !2221
  br i1 %tobool84, label %if.end91, label %if.then85, !dbg !2222

if.then85:                                        ; preds = %while_continue___2
  %27 = load i8, i8* %q.0, align 1, !dbg !2223
  %conv86 = zext i8 %27 to i32, !dbg !2226
  %cmp87 = icmp eq i32 %conv86, 46, !dbg !2227
  br i1 %cmp87, label %if.end90, label %if.then89, !dbg !2228

if.then89:                                        ; preds = %if.then85
  br label %while_break___2, !dbg !2229

if.end90:                                         ; preds = %if.then85
  br label %if.end91, !dbg !2231

if.end91:                                         ; preds = %if.end90, %while_continue___2
  %incdec.ptr92 = getelementptr inbounds i8, i8* %q.0, i32 1, !dbg !2232
  call void @llvm.dbg.value(metadata i8* %incdec.ptr92, metadata !2203, metadata !DIExpression()), !dbg !1988
  br label %while.body77, !dbg !2204, !llvm.loop !2233

while_break___10:                                 ; No predecessors!
  br label %while_break___2, !dbg !2235

while_break___2:                                  ; preds = %while_break___10, %if.then89
  %28 = load i8, i8* %q.0, align 1, !dbg !2236
  %conv93 = zext i8 %28 to i32, !dbg !2238
  %cmp94 = icmp eq i32 %conv93, 40, !dbg !2239
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !2240

if.then96:                                        ; preds = %while_break___2
  %call97 = call i8* @para_macro_process(i8* %incdec.ptr, i8* %q.0), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %call97, metadata !1987, metadata !DIExpression()), !dbg !1988
  br label %while_continue, !dbg !2245

if.end98:                                         ; preds = %while_break___2
  %sub.ptr.lhs.cast = ptrtoint i8* %q.0 to i64, !dbg !2246
  %sub.ptr.rhs.cast = ptrtoint i8* %incdec.ptr to i64, !dbg !2246
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2246
  %conv99 = trunc i64 %sub.ptr.sub to i32, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %conv99, metadata !2248, metadata !DIExpression()), !dbg !1988
  %29 = load i8, i8* %q.0, align 1, !dbg !2249
  %conv100 = zext i8 %29 to i32, !dbg !2251
  %cmp101 = icmp ne i32 %conv100, 59, !dbg !2252
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !2253

if.then103:                                       ; preds = %if.end98
  call void (i32, ...) @error(i32 3, i32 %conv99, i8* %incdec.ptr), !dbg !2254
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2258
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !2260
  br label %while_continue, !dbg !2261

if.end105:                                        ; preds = %if.end98
  %call106 = call i32 @strncmp(i8* %incdec.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %conv99) #9, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %call106, metadata !2265, metadata !DIExpression()), !dbg !1988
  %cmp107 = icmp eq i32 %call106, 0, !dbg !2266
  br i1 %cmp107, label %if.then109, label %if.else120, !dbg !2268

if.then109:                                       ; preds = %if.end105
  %31 = load i8*, i8** @revision, align 8, !dbg !2269
  %32 = ptrtoint i8* %31 to i64, !dbg !2272
  %cmp110 = icmp ne i64 %32, 0, !dbg !2273
  br i1 %cmp110, label %if.then112, label %if.end119, !dbg !2274

if.then112:                                       ; preds = %if.then109
  %33 = load i8*, i8** @revision, align 8, !dbg !2275
  %34 = load i8, i8* %33, align 1, !dbg !2278
  %conv113 = zext i8 %34 to i32, !dbg !2279
  %cmp114 = icmp ne i32 %conv113, 0, !dbg !2280
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !2281

if.then116:                                       ; preds = %if.then112
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2282
  %36 = load i8*, i8** @revision, align 8, !dbg !2286
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i8* %36), !dbg !2287
  br label %if.end118, !dbg !2288

if.end118:                                        ; preds = %if.then116, %if.then112
  br label %if.end119, !dbg !2289

if.end119:                                        ; preds = %if.end118, %if.then109
  br label %if.end129, !dbg !2290

if.else120:                                       ; preds = %if.end105
  store i8 0, i8* %q.0, align 1, !dbg !2291
  %37 = load %struct.tree_node*, %struct.tree_node** @entities, align 8, !dbg !2294
  %call121 = call %struct.tree_node* @tree_search(%struct.tree_node* %37, i8* %incdec.ptr), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.tree_node* %call121, metadata !2297, metadata !DIExpression()), !dbg !1988
  store i8 59, i8* %q.0, align 1, !dbg !2298
  %38 = ptrtoint %struct.tree_node* %call121 to i64, !dbg !2299
  %cmp122 = icmp ne i64 %38, 0, !dbg !2301
  br i1 %cmp122, label %if.then124, label %if.else126, !dbg !2302

if.then124:                                       ; preds = %if.else120
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2303
  %data = getelementptr inbounds %struct.tree_node, %struct.tree_node* %call121, i32 0, i32 2, !dbg !2307
  %40 = load i8*, i8** %data, align 8, !dbg !2307
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %40), !dbg !2308
  br label %if.end128, !dbg !2309

if.else126:                                       ; preds = %if.else120
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2310
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %conv99, i8* %incdec.ptr), !dbg !2314
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end119
  %42 = load i8, i8* %q.0, align 1, !dbg !2315
  %conv130 = zext i8 %42 to i32, !dbg !2317
  %cmp131 = icmp eq i32 %conv130, 59, !dbg !2318
  br i1 %cmp131, label %if.then133, label %if.end135, !dbg !2319

if.then133:                                       ; preds = %if.end129
  %incdec.ptr134 = getelementptr inbounds i8, i8* %q.0, i32 1, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %incdec.ptr134, metadata !2203, metadata !DIExpression()), !dbg !1988
  br label %if.end135, !dbg !2322

if.end135:                                        ; preds = %if.then133, %if.end129
  %q.1 = phi i8* [ %incdec.ptr134, %if.then133 ], [ %q.0, %if.end129 ], !dbg !2207
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !2203, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !1987, metadata !DIExpression()), !dbg !1988
  br label %while_continue, !dbg !2323

if.end136:                                        ; preds = %if.end67
  %43 = load i8, i8* %incdec.ptr, align 1, !dbg !2324
  %conv137 = zext i8 %43 to i32, !dbg !2326
  %cmp138 = icmp eq i32 %conv137, 35, !dbg !2327
  br i1 %cmp138, label %if.then140, label %if.end201, !dbg !2328

if.then140:                                       ; preds = %if.end136
  %add.ptr141 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %add.ptr141, metadata !2332, metadata !DIExpression()), !dbg !1988
  %call142 = call i16** @__ctype_b_loc() #8, !dbg !2333
  call void @llvm.dbg.value(metadata i16** %call142, metadata !2335, metadata !DIExpression()), !dbg !1988
  %44 = load i16*, i16** %call142, align 8, !dbg !2336
  %45 = load i8, i8* %add.ptr141, align 1, !dbg !2338
  %conv143 = zext i8 %45 to i32, !dbg !2339
  %idx.ext144 = sext i32 %conv143 to i64, !dbg !2340
  %add.ptr145 = getelementptr inbounds i16, i16* %44, i64 %idx.ext144, !dbg !2340
  %46 = load i16, i16* %add.ptr145, align 2, !dbg !2341
  %conv146 = zext i16 %46 to i32, !dbg !2342
  %and147 = and i32 %conv146, 2048, !dbg !2343
  %tobool148 = icmp ne i32 %and147, 0, !dbg !2343
  br i1 %tobool148, label %if.then149, label %if.else172, !dbg !2344

if.then149:                                       ; preds = %if.then140
  %incdec.ptr150 = getelementptr inbounds i8, i8* %add.ptr141, i32 1, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %incdec.ptr150, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while.body152, !dbg !2347

while.body152:                                    ; preds = %if.end161, %if.then149
  %q___0.0 = phi i8* [ %incdec.ptr150, %if.then149 ], [ %incdec.ptr162, %if.end161 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8* %q___0.0, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while_continue___11, !dbg !2351

while_continue___11:                              ; preds = %while.body152
  br label %while_continue___3, !dbg !2351

while_continue___3:                               ; preds = %while_continue___11
  %call153 = call i16** @__ctype_b_loc() #8, !dbg !2352
  call void @llvm.dbg.value(metadata i16** %call153, metadata !2356, metadata !DIExpression()), !dbg !1988
  %47 = load i16*, i16** %call153, align 8, !dbg !2357
  %48 = load i8, i8* %q___0.0, align 1, !dbg !2359
  %conv154 = zext i8 %48 to i32, !dbg !2360
  %idx.ext155 = sext i32 %conv154 to i64, !dbg !2361
  %add.ptr156 = getelementptr inbounds i16, i16* %47, i64 %idx.ext155, !dbg !2361
  %49 = load i16, i16* %add.ptr156, align 2, !dbg !2362
  %conv157 = zext i16 %49 to i32, !dbg !2363
  %and158 = and i32 %conv157, 2048, !dbg !2364
  %tobool159 = icmp ne i32 %and158, 0, !dbg !2364
  br i1 %tobool159, label %if.end161, label %if.then160, !dbg !2365

if.then160:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !2366

if.end161:                                        ; preds = %while_continue___3
  %incdec.ptr162 = getelementptr inbounds i8, i8* %q___0.0, i32 1, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %incdec.ptr162, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while.body152, !dbg !2347, !llvm.loop !2369

while_break___11:                                 ; No predecessors!
  br label %while_break___3, !dbg !2371

while_break___3:                                  ; preds = %while_break___11, %if.then160
  %50 = load i8, i8* %q___0.0, align 1, !dbg !2372
  %conv163 = zext i8 %50 to i32, !dbg !2374
  %cmp164 = icmp eq i32 %conv163, 59, !dbg !2375
  br i1 %cmp164, label %if.then166, label %if.end171, !dbg !2376

if.then166:                                       ; preds = %while_break___3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2377
  %sub.ptr.lhs.cast167 = ptrtoint i8* %q___0.0 to i64, !dbg !2381
  %sub.ptr.rhs.cast168 = ptrtoint i8* %incdec.ptr to i64, !dbg !2381
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168, !dbg !2381
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i64 %sub.ptr.sub169, i8* %incdec.ptr), !dbg !2382
  call void @llvm.dbg.value(metadata i8* %q___0.0, metadata !1987, metadata !DIExpression()), !dbg !1988
  br label %while_continue, !dbg !2383

if.end171:                                        ; preds = %while_break___3
  br label %if.end200, !dbg !2384

if.else172:                                       ; preds = %if.then140
  %52 = load i8, i8* %add.ptr141, align 1, !dbg !2385
  %conv173 = zext i8 %52 to i32, !dbg !2387
  %cmp174 = icmp eq i32 %conv173, 120, !dbg !2388
  br i1 %cmp174, label %if.then176, label %if.end199, !dbg !2389

if.then176:                                       ; preds = %if.else172
  %incdec.ptr177 = getelementptr inbounds i8, i8* %add.ptr141, i32 1, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %incdec.ptr177, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while.body179, !dbg !2392

while.body179:                                    ; preds = %if.end188, %if.then176
  %q___0.1 = phi i8* [ %incdec.ptr177, %if.then176 ], [ %incdec.ptr189, %if.end188 ], !dbg !2395
  call void @llvm.dbg.value(metadata i8* %q___0.1, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while_continue___12, !dbg !2396

while_continue___12:                              ; preds = %while.body179
  br label %while_continue___4, !dbg !2396

while_continue___4:                               ; preds = %while_continue___12
  %call180 = call i16** @__ctype_b_loc() #8, !dbg !2397
  call void @llvm.dbg.value(metadata i16** %call180, metadata !2401, metadata !DIExpression()), !dbg !1988
  %53 = load i16*, i16** %call180, align 8, !dbg !2402
  %54 = load i8, i8* %q___0.1, align 1, !dbg !2404
  %conv181 = zext i8 %54 to i32, !dbg !2405
  %idx.ext182 = sext i32 %conv181 to i64, !dbg !2406
  %add.ptr183 = getelementptr inbounds i16, i16* %53, i64 %idx.ext182, !dbg !2406
  %55 = load i16, i16* %add.ptr183, align 2, !dbg !2407
  %conv184 = zext i16 %55 to i32, !dbg !2408
  %and185 = and i32 %conv184, 4096, !dbg !2409
  %tobool186 = icmp ne i32 %and185, 0, !dbg !2409
  br i1 %tobool186, label %if.end188, label %if.then187, !dbg !2410

if.then187:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !2411

if.end188:                                        ; preds = %while_continue___4
  %incdec.ptr189 = getelementptr inbounds i8, i8* %q___0.1, i32 1, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %incdec.ptr189, metadata !2332, metadata !DIExpression()), !dbg !1988
  br label %while.body179, !dbg !2392, !llvm.loop !2414

while_break___12:                                 ; No predecessors!
  br label %while_break___4, !dbg !2416

while_break___4:                                  ; preds = %while_break___12, %if.then187
  %56 = load i8, i8* %q___0.1, align 1, !dbg !2417
  %conv190 = zext i8 %56 to i32, !dbg !2419
  %cmp191 = icmp eq i32 %conv190, 59, !dbg !2420
  br i1 %cmp191, label %if.then193, label %if.end198, !dbg !2421

if.then193:                                       ; preds = %while_break___4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2422
  %sub.ptr.lhs.cast194 = ptrtoint i8* %q___0.1 to i64, !dbg !2426
  %sub.ptr.rhs.cast195 = ptrtoint i8* %incdec.ptr to i64, !dbg !2426
  %sub.ptr.sub196 = sub i64 %sub.ptr.lhs.cast194, %sub.ptr.rhs.cast195, !dbg !2426
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i64 %sub.ptr.sub196, i8* %incdec.ptr), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %q___0.1, metadata !1987, metadata !DIExpression()), !dbg !1988
  br label %while_continue, !dbg !2428

if.end198:                                        ; preds = %while_break___4
  br label %if.end199, !dbg !2429

if.end199:                                        ; preds = %if.end198, %if.else172
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end171
  br label %if.end201, !dbg !2430

if.end201:                                        ; preds = %if.end200, %if.end136
  %58 = load %struct.flagstr*, %struct.flagstr** @flaglist, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.flagstr* %58, metadata !2058, metadata !DIExpression()), !dbg !1988
  br label %while.body203, !dbg !2432

while.body203:                                    ; preds = %if.end212, %if.end201
  %f.0 = phi %struct.flagstr* [ %58, %if.end201 ], [ %62, %if.end212 ], !dbg !2048
  call void @llvm.dbg.value(metadata %struct.flagstr* %f.0, metadata !2058, metadata !DIExpression()), !dbg !1988
  br label %while_continue___13, !dbg !2435

while_continue___13:                              ; preds = %while.body203
  br label %while_continue___5, !dbg !2435

while_continue___5:                               ; preds = %while_continue___13
  %59 = ptrtoint %struct.flagstr* %f.0 to i64, !dbg !2436
  %cmp204 = icmp ne i64 %59, 0, !dbg !2439
  br i1 %cmp204, label %if.end207, label %if.then206, !dbg !2440

if.then206:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !2441

if.end207:                                        ; preds = %while_continue___5
  %flag1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 2, !dbg !2443
  %60 = load i8*, i8** %flag1, align 8, !dbg !2443
  %length1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 1, !dbg !2446
  %61 = load i32, i32* %length1, align 8, !dbg !2446
  %call208 = call i32 @strncmp(i8* %incdec.ptr, i8* %60, i32 %61) #9, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %call208, metadata !2448, metadata !DIExpression()), !dbg !1988
  %cmp209 = icmp eq i32 %call208, 0, !dbg !2449
  br i1 %cmp209, label %if.then211, label %if.end212, !dbg !2451

if.then211:                                       ; preds = %if.end207
  br label %while_break___5, !dbg !2452

if.end212:                                        ; preds = %if.end207
  %next = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 0, !dbg !2454
  %62 = load %struct.flagstr*, %struct.flagstr** %next, align 8, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.flagstr* %62, metadata !2058, metadata !DIExpression()), !dbg !1988
  br label %while.body203, !dbg !2432, !llvm.loop !2455

while_break___13:                                 ; No predecessors!
  br label %while_break___5, !dbg !2457

while_break___5:                                  ; preds = %while_break___13, %if.then211, %if.then206
  %63 = ptrtoint %struct.flagstr* %f.0 to i64, !dbg !2458
  %cmp213 = icmp eq i64 %63, 0, !dbg !2460
  br i1 %cmp213, label %if.then215, label %if.end218, !dbg !2461

if.then215:                                       ; preds = %while_break___5
  %64 = load i8, i8* %incdec.ptr, align 1, !dbg !2462
  %conv216 = zext i8 %64 to i32, !dbg !2466
  call void (i32, ...) @error(i32 6, i32 %conv216), !dbg !2467
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2468
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !2470
  br label %while_continue, !dbg !2471

if.end218:                                        ; preds = %while_break___5
  %length2219 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 4, !dbg !2472
  %66 = load i32, i32* %length2219, align 8, !dbg !2472
  %cmp220 = icmp ne i32 %66, 0, !dbg !2474
  br i1 %cmp220, label %if.then222, label %if.end226, !dbg !2475

if.then222:                                       ; preds = %if.end218
  call void @llvm.dbg.value(metadata i32 %fstackcount.2, metadata !2476, metadata !DIExpression()), !dbg !1988
  %inc223 = add nsw i32 %fstackcount.2, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %inc223, metadata !2026, metadata !DIExpression()), !dbg !1988
  %idxprom224 = sext i32 %fstackcount.2 to i64, !dbg !2479
  %arrayidx225 = getelementptr inbounds [40 x %struct.flagstr*], [40 x %struct.flagstr*]* %fstack, i64 0, i64 %idxprom224, !dbg !2479
  store %struct.flagstr* %f.0, %struct.flagstr** %arrayidx225, align 8, !dbg !2480
  br label %if.end226, !dbg !2481

if.end226:                                        ; preds = %if.then222, %if.end218
  %fstackcount.4 = phi i32 [ %inc223, %if.then222 ], [ %fstackcount.2, %if.end218 ], !dbg !2032
  call void @llvm.dbg.value(metadata i32 %fstackcount.4, metadata !2026, metadata !DIExpression()), !dbg !1988
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2482
  %rep1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 3, !dbg !2485
  %68 = load i8*, i8** %rep1, align 8, !dbg !2485
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %68), !dbg !2486
  %rep1228 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 3, !dbg !2487
  %69 = load i8*, i8** %rep1228, align 8, !dbg !2487
  call void @check_literal(i8* %69, i32* %inliteraltext), !dbg !2489
  %length1229 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %f.0, i32 0, i32 1, !dbg !2490
  %70 = load i32, i32* %length1229, align 8, !dbg !2490
  %idx.ext230 = sext i32 %70 to i64, !dbg !2491
  %add.ptr231 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %idx.ext230, !dbg !2491
  call void @llvm.dbg.value(metadata i8* %add.ptr231, metadata !1987, metadata !DIExpression()), !dbg !1988
  br label %while.body, !dbg !2029, !llvm.loop !2492

while_break___7:                                  ; No predecessors!
  br label %while_break, !dbg !2494

while_break:                                      ; preds = %while_break___7, %if.then28, %if.then
  %fstackcount.5 = phi i32 [ %fstackcount.2, %if.then28 ], [ %fstackcount.1, %if.then ], [ undef, %while_break___7 ], !dbg !2034
  call void @llvm.dbg.value(metadata i32 %fstackcount.5, metadata !2026, metadata !DIExpression()), !dbg !1988
  br label %while.body232, !dbg !2495

while.body232:                                    ; preds = %if.end236, %while_break
  %fstackcount.6 = phi i32 [ %fstackcount.5, %while_break ], [ %dec237, %if.end236 ], !dbg !2032
  call void @llvm.dbg.value(metadata i32 %fstackcount.6, metadata !2026, metadata !DIExpression()), !dbg !1988
  br label %while_continue___14, !dbg !2498

while_continue___14:                              ; preds = %while.body232
  br label %while_continue___6, !dbg !2498

while_continue___6:                               ; preds = %while_continue___14
  %cmp233 = icmp sgt i32 %fstackcount.6, 0, !dbg !2499
  br i1 %cmp233, label %if.end236, label %if.then235, !dbg !2502

if.then235:                                       ; preds = %while_continue___6
  br label %while_break___6, !dbg !2503

if.end236:                                        ; preds = %while_continue___6
  %dec237 = add nsw i32 %fstackcount.6, -1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %dec237, metadata !2026, metadata !DIExpression()), !dbg !1988
  %idxprom238 = sext i32 %dec237 to i64, !dbg !2507
  %arrayidx239 = getelementptr inbounds [40 x %struct.flagstr*], [40 x %struct.flagstr*]* %fstack, i64 0, i64 %idxprom238, !dbg !2507
  %71 = load %struct.flagstr*, %struct.flagstr** %arrayidx239, align 8, !dbg !2507
  call void @llvm.dbg.value(metadata %struct.flagstr* %71, metadata !2058, metadata !DIExpression()), !dbg !1988
  %flag2240 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %71, i32 0, i32 5, !dbg !2508
  %72 = load i8*, i8** %flag2240, align 8, !dbg !2508
  call void (i32, ...) @error(i32 7, i8* %72), !dbg !2510
  br label %while.body232, !dbg !2495, !llvm.loop !2511

while_break___14:                                 ; No predecessors!
  br label %while_break___6, !dbg !2513

while_break___6:                                  ; preds = %while_break___14, %if.then235
  ret void, !dbg !2514
}

; Function Attrs: noinline nounwind ssp uwtable
define void @literal_process(i8* %p) #0 !dbg !2515 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.declare(metadata !4, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata !4, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata !4, metadata !2523, metadata !DIExpression()), !dbg !2524
  br label %while.body, !dbg !2525

while.body:                                       ; preds = %if.end19, %entry
  %p.addr.0 = phi i8* [ %p, %entry ], [ %incdec.ptr, %if.end19 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !2517, metadata !DIExpression()), !dbg !2518
  br label %while_continue___0, !dbg !2529

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2529

while_continue:                                   ; preds = %while_continue___0
  %0 = load i8, i8* %p.addr.0, align 1, !dbg !2530
  %conv = zext i8 %0 to i32, !dbg !2533
  %cmp = icmp ne i32 %conv, 0, !dbg !2534
  br i1 %cmp, label %if.end, label %if.then, !dbg !2535

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2536

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !2538, metadata !DIExpression()), !dbg !2518
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %1 = load i8, i8* %p.addr.0, align 1, !dbg !2540
  %conv2 = zext i8 %1 to i32, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %conv2, metadata !2542, metadata !DIExpression()), !dbg !2518
  %cmp3 = icmp eq i32 %conv2, 38, !dbg !2543
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !2545

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2546
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !2550
  br label %if.end19, !dbg !2551

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %conv2, 60, !dbg !2552
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !2554

if.then8:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2555
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !2559
  br label %if.end18, !dbg !2560

if.else10:                                        ; preds = %if.else
  %cmp11 = icmp eq i32 %conv2, 62, !dbg !2561
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !2563

if.then13:                                        ; preds = %if.else10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2564
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !2568
  br label %if.end17, !dbg !2569

if.else15:                                        ; preds = %if.else10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !2570
  %call16 = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %5), !dbg !2574
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then5
  br label %while.body, !dbg !2525, !llvm.loop !2575

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2577

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !2578
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @read_paragraph(i8* %p, i32* %nest_info) #0 !dbg !2579 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32* %nest_info, metadata !2584, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata !4, metadata !2585, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.declare(metadata !4, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata !4, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata !4, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load i8*, i8** @parabuffer, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()), !dbg !2583
  %call = call i32 @strlen(i8* %p) #9, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %call, metadata !2599, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %call, metadata !2600, metadata !DIExpression()), !dbg !2583
  %call1 = call i8* @memcpy(i8* %0, i8* %p, i32 %call) #6, !dbg !2601
  %idx.ext = sext i32 %call to i64, !dbg !2603
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext, !dbg !2603
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2596, metadata !DIExpression()), !dbg !2583
  store i32 0, i32* %nest_info, align 4, !dbg !2604
  br label %while.body, !dbg !2605

while.body:                                       ; preds = %__Cont, %entry
  %q.0 = phi i8* [ %add.ptr, %entry ], [ %q.1, %__Cont ], !dbg !2603
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !2596, metadata !DIExpression()), !dbg !2583
  br label %while_continue___3, !dbg !2608

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !2608

while_continue:                                   ; preds = %while_continue___3
  %call2 = call i8* @read_nextline(), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2582, metadata !DIExpression()), !dbg !2583
  %1 = ptrtoint i8* %call2 to i64, !dbg !2613
  %cmp = icmp eq i64 %1, 0, !dbg !2615
  br i1 %cmp, label %if.then, label %if.end, !dbg !2616

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2617

if.end:                                           ; preds = %while_continue
  %call3 = call i32 @strncmp(i8* %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 9) #9, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2622, metadata !DIExpression()), !dbg !2583
  %cmp4 = icmp eq i32 %call3, 0, !dbg !2623
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2625

if.then5:                                         ; preds = %if.end
  store i8* %call2, i8** @next_line, align 8, !dbg !2626
  br label %while_break, !dbg !2628

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @strncmp(i8* %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 6) #9, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2632, metadata !DIExpression()), !dbg !2583
  %cmp8 = icmp eq i32 %call7, 0, !dbg !2633
  br i1 %cmp8, label %if.then9, label %if.else51, !dbg !2635

if.then9:                                         ; preds = %if.end6
  %add.ptr10 = getelementptr inbounds i8, i8* %call2, i64 6, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %add.ptr10, metadata !2582, metadata !DIExpression()), !dbg !2583
  br label %while.body12, !dbg !2638

while.body12:                                     ; preds = %if.end18, %if.then9
  %p.addr.0 = phi i8* [ %add.ptr10, %if.then9 ], [ %incdec.ptr, %if.end18 ], !dbg !2641
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !2582, metadata !DIExpression()), !dbg !2583
  br label %while_continue___4, !dbg !2642

while_continue___4:                               ; preds = %while.body12
  br label %while_continue___0, !dbg !2642

while_continue___0:                               ; preds = %while_continue___4
  %call13 = call i16** @__ctype_b_loc() #8, !dbg !2643
  call void @llvm.dbg.value(metadata i16** %call13, metadata !2647, metadata !DIExpression()), !dbg !2583
  %2 = load i16*, i16** %call13, align 8, !dbg !2648
  %3 = load i8, i8* %p.addr.0, align 1, !dbg !2650
  %conv = zext i8 %3 to i32, !dbg !2651
  %idx.ext14 = sext i32 %conv to i64, !dbg !2652
  %add.ptr15 = getelementptr inbounds i16, i16* %2, i64 %idx.ext14, !dbg !2652
  %4 = load i16, i16* %add.ptr15, align 2, !dbg !2653
  %conv16 = zext i16 %4 to i32, !dbg !2654
  %and = and i32 %conv16, 8192, !dbg !2655
  %tobool = icmp ne i32 %and, 0, !dbg !2655
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !2656

if.then17:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2657

if.end18:                                         ; preds = %while_continue___0
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !2659
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2582, metadata !DIExpression()), !dbg !2583
  br label %while.body12, !dbg !2638, !llvm.loop !2660

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !2662

while_break___0:                                  ; preds = %while_break___4, %if.then17
  %call19 = call i32 @strlen(i8* %p.addr.0) #9, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2666, metadata !DIExpression()), !dbg !2583
  %idx.ext20 = sext i32 %call19 to i64, !dbg !2667
  %add.ptr21 = getelementptr inbounds i8, i8* %p.addr.0, i64 %idx.ext20, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %add.ptr21, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while.body23, !dbg !2669

while.body23:                                     ; preds = %if.end37, %while_break___0
  %s.0 = phi i8* [ %add.ptr21, %while_break___0 ], [ %incdec.ptr38, %if.end37 ], !dbg !2641
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while_continue___5, !dbg !2672

while_continue___5:                               ; preds = %while.body23
  br label %while_continue___1, !dbg !2672

while_continue___1:                               ; preds = %while_continue___5
  %5 = ptrtoint i8* %s.0 to i64, !dbg !2673
  %6 = ptrtoint i8* %p.addr.0 to i64, !dbg !2676
  %cmp24 = icmp ugt i64 %5, %6, !dbg !2677
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !2678

if.then26:                                        ; preds = %while_continue___1
  %call27 = call i16** @__ctype_b_loc() #8, !dbg !2679
  call void @llvm.dbg.value(metadata i16** %call27, metadata !2683, metadata !DIExpression()), !dbg !2583
  %7 = load i16*, i16** %call27, align 8, !dbg !2684
  %add.ptr28 = getelementptr inbounds i8, i8* %s.0, i64 -1, !dbg !2686
  %8 = load i8, i8* %add.ptr28, align 1, !dbg !2687
  %conv29 = zext i8 %8 to i32, !dbg !2688
  %idx.ext30 = sext i32 %conv29 to i64, !dbg !2689
  %add.ptr31 = getelementptr inbounds i16, i16* %7, i64 %idx.ext30, !dbg !2689
  %9 = load i16, i16* %add.ptr31, align 2, !dbg !2690
  %conv32 = zext i16 %9 to i32, !dbg !2691
  %and33 = and i32 %conv32, 8192, !dbg !2692
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2692
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !2693

if.then35:                                        ; preds = %if.then26
  br label %while_break___1, !dbg !2694

if.end36:                                         ; preds = %if.then26
  br label %if.end37, !dbg !2696

if.else:                                          ; preds = %while_continue___1
  br label %while_break___1, !dbg !2697

if.end37:                                         ; preds = %if.end36
  %incdec.ptr38 = getelementptr inbounds i8, i8* %s.0, i32 -1, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %incdec.ptr38, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while.body23, !dbg !2669, !llvm.loop !2700

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !2702

while_break___1:                                  ; preds = %while_break___5, %if.else, %if.then35
  store i8 0, i8* %s.0, align 1, !dbg !2703
  %call39 = call i32 @strcmp(i8* %p.addr.0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %call39, metadata !2707, metadata !DIExpression()), !dbg !2583
  %cmp40 = icmp eq i32 %call39, 0, !dbg !2708
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !2710

if.then42:                                        ; preds = %while_break___1
  store i32 1, i32* %nest_info, align 4, !dbg !2711
  br label %if.end50, !dbg !2713

if.else43:                                        ; preds = %while_break___1
  %call44 = call i32 @strcmp(i8* %p.addr.0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %call44, metadata !2718, metadata !DIExpression()), !dbg !2583
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2719
  br i1 %cmp45, label %if.then47, label %if.else48, !dbg !2721

if.then47:                                        ; preds = %if.else43
  store i32 2, i32* %nest_info, align 4, !dbg !2722
  br label %if.end49, !dbg !2724

if.else48:                                        ; preds = %if.else43
  call void (i32, ...) @error(i32 26, i8* %p.addr.0), !dbg !2725
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then42
  br label %while_break, !dbg !2729

if.else51:                                        ; preds = %if.end6
  %10 = load i8, i8* %call2, align 1, !dbg !2730
  %conv52 = zext i8 %10 to i32, !dbg !2732
  %cmp53 = icmp eq i32 %conv52, 46, !dbg !2733
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2734

if.then55:                                        ; preds = %if.else51
  call void @dot_process(i8* %call2), !dbg !2735
  br label %__Cont, !dbg !2739

if.end56:                                         ; preds = %if.else51
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while.body59, !dbg !2740

while.body59:                                     ; preds = %if.end69, %if.end57
  %s.1 = phi i8* [ %call2, %if.end57 ], [ %incdec.ptr70, %if.end69 ], !dbg !2743
  call void @llvm.dbg.value(metadata i8* %s.1, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while_continue___6, !dbg !2744

while_continue___6:                               ; preds = %while.body59
  br label %while_continue___2, !dbg !2744

while_continue___2:                               ; preds = %while_continue___6
  %11 = load i8, i8* %s.1, align 1, !dbg !2745
  %conv60 = zext i8 %11 to i32, !dbg !2748
  %cmp61 = icmp eq i32 %conv60, 32, !dbg !2749
  br i1 %cmp61, label %if.end69, label %if.then63, !dbg !2750

if.then63:                                        ; preds = %while_continue___2
  %12 = load i8, i8* %s.1, align 1, !dbg !2751
  %conv64 = zext i8 %12 to i32, !dbg !2754
  %cmp65 = icmp eq i32 %conv64, 9, !dbg !2755
  br i1 %cmp65, label %if.end68, label %if.then67, !dbg !2756

if.then67:                                        ; preds = %if.then63
  br label %while_break___2, !dbg !2757

if.end68:                                         ; preds = %if.then63
  br label %if.end69, !dbg !2759

if.end69:                                         ; preds = %if.end68, %while_continue___2
  %incdec.ptr70 = getelementptr inbounds i8, i8* %s.1, i32 1, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %incdec.ptr70, metadata !2668, metadata !DIExpression()), !dbg !2583
  br label %while.body59, !dbg !2740, !llvm.loop !2761

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !2763

while_break___2:                                  ; preds = %while_break___6, %if.then67
  %13 = load i8, i8* %s.1, align 1, !dbg !2764
  %conv71 = zext i8 %13 to i32, !dbg !2766
  %cmp72 = icmp eq i32 %conv71, 10, !dbg !2767
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !2768

if.then74:                                        ; preds = %while_break___2
  br label %while_break, !dbg !2769

if.end75:                                         ; preds = %while_break___2
  %call76 = call i32 @strlen(i8* %call2) #9, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %call76, metadata !2774, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %call76, metadata !2600, metadata !DIExpression()), !dbg !2583
  %call77 = call i8* @memcpy(i8* %q.0, i8* %call2, i32 %call76) #6, !dbg !2775
  %idx.ext78 = sext i32 %call76 to i64, !dbg !2777
  %add.ptr79 = getelementptr inbounds i8, i8* %q.0, i64 %idx.ext78, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %add.ptr79, metadata !2596, metadata !DIExpression()), !dbg !2583
  br label %__Cont, !dbg !2778

__Cont:                                           ; preds = %if.end75, %if.then55
  %q.1 = phi i8* [ %q.0, %if.then55 ], [ %add.ptr79, %if.end75 ], !dbg !2779
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !2596, metadata !DIExpression()), !dbg !2583
  br label %while.body, !dbg !2605, !llvm.loop !2780

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !2782

while_break:                                      ; preds = %while_break___3, %if.then74, %if.end50, %if.then5, %if.then
  store i8 0, i8* %q.0, align 1, !dbg !2783
  %14 = load i8*, i8** @parabuffer, align 8, !dbg !2784
  ret i8* %14, !dbg !2785
}

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: noinline nounwind ssp uwtable
define internal void @check_literal(i8* %s, i32* %b) #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32* %b, metadata !2792, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.declare(metadata !4, metadata !2793, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.declare(metadata !4, metadata !2795, metadata !DIExpression()), !dbg !2796
  br label %while.body, !dbg !2797

while.body:                                       ; preds = %if.end97, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr92, %if.end97 ]
  call void @llvm.dbg.value(metadata i8* %s.addr.0, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %while_continue___2, !dbg !2801

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !2801

while_continue:                                   ; preds = %while_continue___2
  %0 = load i8, i8* %s.addr.0, align 1, !dbg !2802
  %conv = zext i8 %0 to i32, !dbg !2805
  %cmp = icmp ne i32 %conv, 0, !dbg !2806
  br i1 %cmp, label %if.end, label %if.then, !dbg !2807

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2808

if.end:                                           ; preds = %while_continue
  %call = call i8* @strchr(i8* %s.addr.0, i32 60) #9, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %call, metadata !2813, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %call, metadata !2790, metadata !DIExpression()), !dbg !2791
  %1 = ptrtoint i8* %call to i64, !dbg !2814
  %cmp2 = icmp eq i64 %1, 0, !dbg !2816
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2817

if.then4:                                         ; preds = %if.end
  br label %return, !dbg !2818

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @strncmp(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0), i32 8) #9, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2823, metadata !DIExpression()), !dbg !2791
  %cmp7 = icmp eq i32 %call6, 0, !dbg !2824
  br i1 %cmp7, label %if.then9, label %if.else23, !dbg !2826

if.then9:                                         ; preds = %if.end5
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2827
  %2 = load i8, i8* %add.ptr, align 1, !dbg !2830
  %conv10 = zext i8 %2 to i32, !dbg !2831
  %cmp11 = icmp eq i32 %conv10, 62, !dbg !2832
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !2833

if.then13:                                        ; preds = %if.then9
  store i32 1, i32* %b, align 4, !dbg !2834
  br label %if.end22, !dbg !2836

if.else:                                          ; preds = %if.then9
  %call14 = call i16** @__ctype_b_loc() #8, !dbg !2837
  call void @llvm.dbg.value(metadata i16** %call14, metadata !2841, metadata !DIExpression()), !dbg !2791
  %3 = load i16*, i16** %call14, align 8, !dbg !2842
  %add.ptr15 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2844
  %4 = load i8, i8* %add.ptr15, align 1, !dbg !2845
  %conv16 = zext i8 %4 to i32, !dbg !2846
  %idx.ext = sext i32 %conv16 to i64, !dbg !2847
  %add.ptr17 = getelementptr inbounds i16, i16* %3, i64 %idx.ext, !dbg !2847
  %5 = load i16, i16* %add.ptr17, align 2, !dbg !2848
  %conv18 = zext i16 %5 to i32, !dbg !2849
  %and = and i32 %conv18, 8192, !dbg !2850
  %tobool = icmp ne i32 %and, 0, !dbg !2850
  br i1 %tobool, label %if.then19, label %if.else20, !dbg !2851

if.then19:                                        ; preds = %if.else
  store i32 1, i32* %b, align 4, !dbg !2852
  br label %if.end21, !dbg !2854

if.else20:                                        ; preds = %if.else
  br label %_L, !dbg !2855

if.end21:                                         ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then13
  br label %if.end46, !dbg !2857

if.else23:                                        ; preds = %if.end5
  br label %_L, !dbg !2858

_L:                                               ; preds = %if.else23, %if.else20
  %call24 = call i32 @strncmp(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 9) #9, !dbg !2859
  call void @llvm.dbg.value(metadata i32 %call24, metadata !2863, metadata !DIExpression()), !dbg !2791
  %cmp25 = icmp eq i32 %call24, 0, !dbg !2864
  br i1 %cmp25, label %if.then27, label %if.end45, !dbg !2866

if.then27:                                        ; preds = %_L
  %add.ptr28 = getelementptr inbounds i8, i8* %call, i64 9, !dbg !2867
  %6 = load i8, i8* %add.ptr28, align 1, !dbg !2870
  %conv29 = zext i8 %6 to i32, !dbg !2871
  %cmp30 = icmp eq i32 %conv29, 62, !dbg !2872
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !2873

if.then32:                                        ; preds = %if.then27
  store i32 0, i32* %b, align 4, !dbg !2874
  br label %if.end44, !dbg !2876

if.else33:                                        ; preds = %if.then27
  %call34 = call i16** @__ctype_b_loc() #8, !dbg !2877
  call void @llvm.dbg.value(metadata i16** %call34, metadata !2881, metadata !DIExpression()), !dbg !2791
  %7 = load i16*, i16** %call34, align 8, !dbg !2882
  %add.ptr35 = getelementptr inbounds i8, i8* %call, i64 9, !dbg !2884
  %8 = load i8, i8* %add.ptr35, align 1, !dbg !2885
  %conv36 = zext i8 %8 to i32, !dbg !2886
  %idx.ext37 = sext i32 %conv36 to i64, !dbg !2887
  %add.ptr38 = getelementptr inbounds i16, i16* %7, i64 %idx.ext37, !dbg !2887
  %9 = load i16, i16* %add.ptr38, align 2, !dbg !2888
  %conv39 = zext i16 %9 to i32, !dbg !2889
  %and40 = and i32 %conv39, 8192, !dbg !2890
  %tobool41 = icmp ne i32 %and40, 0, !dbg !2890
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2891

if.then42:                                        ; preds = %if.else33
  store i32 0, i32* %b, align 4, !dbg !2892
  br label %if.end43, !dbg !2894

if.end43:                                         ; preds = %if.then42, %if.else33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then32
  br label %if.end45, !dbg !2895

if.end45:                                         ; preds = %if.end44, %_L
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end22
  br label %while.body48, !dbg !2896

while.body48:                                     ; preds = %if.end90, %if.end46
  %s.addr.1 = phi i8* [ %call, %if.end46 ], [ %incdec.ptr91, %if.end90 ], !dbg !2899
  call void @llvm.dbg.value(metadata i8* %s.addr.1, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %while_continue___3, !dbg !2900

while_continue___3:                               ; preds = %while.body48
  br label %while_continue___0, !dbg !2900

while_continue___0:                               ; preds = %while_continue___3
  %10 = load i8, i8* %s.addr.1, align 1, !dbg !2901
  %conv49 = zext i8 %10 to i32, !dbg !2904
  %cmp50 = icmp ne i32 %conv49, 0, !dbg !2905
  br i1 %cmp50, label %if.then52, label %if.else58, !dbg !2906

if.then52:                                        ; preds = %while_continue___0
  %11 = load i8, i8* %s.addr.1, align 1, !dbg !2907
  %conv53 = zext i8 %11 to i32, !dbg !2910
  %cmp54 = icmp ne i32 %conv53, 62, !dbg !2911
  br i1 %cmp54, label %if.end57, label %if.then56, !dbg !2912

if.then56:                                        ; preds = %if.then52
  br label %while_break___0, !dbg !2913

if.end57:                                         ; preds = %if.then52
  br label %if.end59, !dbg !2915

if.else58:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2916

if.end59:                                         ; preds = %if.end57
  %12 = load i8, i8* %s.addr.1, align 1, !dbg !2918
  %conv60 = zext i8 %12 to i32, !dbg !2920
  %cmp61 = icmp eq i32 %conv60, 34, !dbg !2921
  br i1 %cmp61, label %if.then63, label %if.else64, !dbg !2922

if.then63:                                        ; preds = %if.end59
  br label %_L___0, !dbg !2923

if.else64:                                        ; preds = %if.end59
  %13 = load i8, i8* %s.addr.1, align 1, !dbg !2925
  %conv65 = zext i8 %13 to i32, !dbg !2927
  %cmp66 = icmp eq i32 %conv65, 39, !dbg !2928
  br i1 %cmp66, label %if.then68, label %if.end89, !dbg !2920

if.then68:                                        ; preds = %if.else64
  br label %_L___0, !dbg !2929

_L___0:                                           ; preds = %if.then68, %if.then63
  call void @llvm.dbg.value(metadata i8* %s.addr.1, metadata !2930, metadata !DIExpression()), !dbg !2791
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.1, i32 1, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2790, metadata !DIExpression()), !dbg !2791
  %14 = load i8, i8* %s.addr.1, align 1, !dbg !2933
  %conv69 = zext i8 %14 to i32, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %conv69, metadata !2935, metadata !DIExpression()), !dbg !2791
  br label %while.body71, !dbg !2936

while.body71:                                     ; preds = %if.end82, %_L___0
  %s.addr.2 = phi i8* [ %incdec.ptr, %_L___0 ], [ %incdec.ptr83, %if.end82 ], !dbg !2939
  call void @llvm.dbg.value(metadata i8* %s.addr.2, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %while_continue___4, !dbg !2940

while_continue___4:                               ; preds = %while.body71
  br label %while_continue___1, !dbg !2940

while_continue___1:                               ; preds = %while_continue___4
  %15 = load i8, i8* %s.addr.2, align 1, !dbg !2941
  %conv72 = zext i8 %15 to i32, !dbg !2944
  %cmp73 = icmp ne i32 %conv72, 0, !dbg !2945
  br i1 %cmp73, label %if.then75, label %if.else81, !dbg !2946

if.then75:                                        ; preds = %while_continue___1
  %16 = load i8, i8* %s.addr.2, align 1, !dbg !2947
  %conv76 = zext i8 %16 to i32, !dbg !2950
  %cmp77 = icmp ne i32 %conv76, %conv69, !dbg !2951
  br i1 %cmp77, label %if.end80, label %if.then79, !dbg !2952

if.then79:                                        ; preds = %if.then75
  br label %while_break___1, !dbg !2953

if.end80:                                         ; preds = %if.then75
  br label %if.end82, !dbg !2955

if.else81:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2956

if.end82:                                         ; preds = %if.end80
  %incdec.ptr83 = getelementptr inbounds i8, i8* %s.addr.2, i32 1, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %incdec.ptr83, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %while.body71, !dbg !2936, !llvm.loop !2959

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !2961

while_break___1:                                  ; preds = %while_break___4, %if.else81, %if.then79
  %17 = load i8, i8* %s.addr.2, align 1, !dbg !2962
  %conv84 = zext i8 %17 to i32, !dbg !2964
  %cmp85 = icmp eq i32 %conv84, 0, !dbg !2965
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !2966

if.then87:                                        ; preds = %while_break___1
  br label %return, !dbg !2967

if.end88:                                         ; preds = %while_break___1
  br label %if.end89, !dbg !2969

if.end89:                                         ; preds = %if.end88, %if.else64
  %s.addr.3 = phi i8* [ %s.addr.2, %if.end88 ], [ %s.addr.1, %if.else64 ], !dbg !2899
  call void @llvm.dbg.value(metadata i8* %s.addr.3, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %if.end90

if.end90:                                         ; preds = %if.end89
  %incdec.ptr91 = getelementptr inbounds i8, i8* %s.addr.3, i32 1, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %incdec.ptr91, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %while.body48, !dbg !2896, !llvm.loop !2971

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !2973

while_break___0:                                  ; preds = %while_break___3, %if.else58, %if.then56
  call void @llvm.dbg.value(metadata i8* %s.addr.1, metadata !2974, metadata !DIExpression()), !dbg !2791
  %incdec.ptr92 = getelementptr inbounds i8, i8* %s.addr.1, i32 1, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %incdec.ptr92, metadata !2790, metadata !DIExpression()), !dbg !2791
  %18 = load i8, i8* %s.addr.1, align 1, !dbg !2976
  %conv93 = zext i8 %18 to i32, !dbg !2978
  %cmp94 = icmp eq i32 %conv93, 0, !dbg !2979
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2980

if.then96:                                        ; preds = %while_break___0
  br label %return, !dbg !2981

if.end97:                                         ; preds = %while_break___0
  br label %while.body, !dbg !2797, !llvm.loop !2983

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !2985

while_break:                                      ; preds = %while_break___2, %if.then
  br label %return, !dbg !2986

return:                                           ; preds = %while_break, %if.then96, %if.then87, %if.then4
  ret void, !dbg !2987
}

declare i32 @fputc(i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @para_macro_process(i8* %p, i8* %q) #0 !dbg !2988 {
entry:
  %length = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %p, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %q, metadata !2993, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %length, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata !4, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata !4, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.declare(metadata !4, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.declare(metadata !4, metadata !3004, metadata !DIExpression()), !dbg !3005
  %sub.ptr.lhs.cast = ptrtoint i8* %q to i64, !dbg !3006
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64, !dbg !3006
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3006
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !3008
  store i32 %conv, i32* %length, align 4, !dbg !3009
  %0 = load %struct.macrodef*, %struct.macrodef** @macrolist, align 8, !dbg !3010
  call void @llvm.dbg.value(metadata %struct.macrodef* %0, metadata !3011, metadata !DIExpression()), !dbg !2992
  br label %while.body, !dbg !3012

while.body:                                       ; preds = %if.end9, %entry
  %md.0 = phi %struct.macrodef* [ %0, %entry ], [ %6, %if.end9 ], !dbg !3015
  call void @llvm.dbg.value(metadata %struct.macrodef* %md.0, metadata !3011, metadata !DIExpression()), !dbg !2992
  br label %while_continue___5, !dbg !3016

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !3016

while_continue:                                   ; preds = %while_continue___5
  %1 = ptrtoint %struct.macrodef* %md.0 to i64, !dbg !3017
  %cmp = icmp ne i64 %1, 0, !dbg !3020
  br i1 %cmp, label %if.end, label %if.then, !dbg !3021

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3022

if.end:                                           ; preds = %while_continue
  %2 = load i32, i32* %length, align 4, !dbg !3024
  %namelength = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 4, !dbg !3026
  %3 = load i32, i32* %namelength, align 8, !dbg !3026
  %cmp2 = icmp eq i32 %2, %3, !dbg !3027
  br i1 %cmp2, label %if.then4, label %if.end9, !dbg !3028

if.then4:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 3, !dbg !3029
  %4 = load i8*, i8** %name, align 8, !dbg !3029
  %5 = load i32, i32* %length, align 4, !dbg !3033
  %call = call i32 @strncmp(i8* %p, i8* %4, i32 %5) #9, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %call, metadata !3035, metadata !DIExpression()), !dbg !2992
  %cmp5 = icmp eq i32 %call, 0, !dbg !3036
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !3038

if.then7:                                         ; preds = %if.then4
  br label %while_break, !dbg !3039

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !3041

if.end9:                                          ; preds = %if.end8, %if.end
  %next = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 0, !dbg !3042
  %6 = load %struct.macrodef*, %struct.macrodef** %next, align 8, !dbg !3042
  call void @llvm.dbg.value(metadata %struct.macrodef* %6, metadata !3011, metadata !DIExpression()), !dbg !2992
  br label %while.body, !dbg !3012, !llvm.loop !3043

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !3045

while_break:                                      ; preds = %while_break___5, %if.then7, %if.then
  %7 = ptrtoint %struct.macrodef* %md.0 to i64, !dbg !3046
  %cmp10 = icmp eq i64 %7, 0, !dbg !3048
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !3049

if.then12:                                        ; preds = %while_break
  %8 = load i32, i32* %length, align 4, !dbg !3050
  call void (i32, ...) @error(i32 23, i32 %8, i8* %p), !dbg !3054
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !3055
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !3057
  br label %return, !dbg !3058

if.end14:                                         ; preds = %while_break
  %call15 = call i8* @misc_malloc(i32 32), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %call15, metadata !3062, metadata !DIExpression()), !dbg !2992
  %10 = bitcast i8* %call15 to %struct.macroexe*, !dbg !3063
  call void @llvm.dbg.value(metadata %struct.macroexe* %10, metadata !3064, metadata !DIExpression()), !dbg !2992
  %11 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3065
  %prev = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 0, !dbg !3066
  store %struct.macroexe* %11, %struct.macroexe** %prev, align 8, !dbg !3067
  store %struct.macroexe* %10, %struct.macroexe** @macrocurrent, align 8, !dbg !3068
  %macro = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 1, !dbg !3069
  store %struct.macrodef* %md.0, %struct.macrodef** %macro, align 8, !dbg !3070
  %lines = getelementptr inbounds %struct.macrodef, %struct.macrodef* %md.0, i32 0, i32 1, !dbg !3071
  %12 = load %struct.argstr*, %struct.argstr** %lines, align 8, !dbg !3071
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 3, !dbg !3072
  store %struct.argstr* %12, %struct.argstr** %nextline, align 8, !dbg !3073
  %13 = load i32, i32* @from_type_ptr, align 4, !dbg !3074
  %inc = add nsw i32 %13, 1, !dbg !3074
  store i32 %inc, i32* @from_type_ptr, align 4, !dbg !3074
  %14 = load i32, i32* @from_type_ptr, align 4, !dbg !3075
  %idxprom = sext i32 %14 to i64, !dbg !3076
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !3076
  store i32 1, i32* %arrayidx, align 4, !dbg !3077
  %args = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 2, !dbg !3078
  store %struct.argstr* null, %struct.argstr** %args, align 8, !dbg !3079
  %args16 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 2, !dbg !3080
  call void @llvm.dbg.value(metadata %struct.argstr** %args16, metadata !3081, metadata !DIExpression()), !dbg !2992
  br label %while.body17, !dbg !3082

while.body17:                                     ; preds = %if.end22, %if.end14
  %q.addr.0 = phi i8* [ %q, %if.end14 ], [ %incdec.ptr, %if.end22 ]
  call void @llvm.dbg.value(metadata i8* %q.addr.0, metadata !2993, metadata !DIExpression()), !dbg !2992
  br label %while_continue___6, !dbg !3085

while_continue___6:                               ; preds = %while.body17
  br label %while_continue___0, !dbg !3085

while_continue___0:                               ; preds = %while_continue___6
  %call18 = call i16** @__ctype_b_loc() #8, !dbg !3086
  call void @llvm.dbg.value(metadata i16** %call18, metadata !3090, metadata !DIExpression()), !dbg !2992
  %incdec.ptr = getelementptr inbounds i8, i8* %q.addr.0, i32 1, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2993, metadata !DIExpression()), !dbg !2992
  %15 = load i16*, i16** %call18, align 8, !dbg !3092
  %16 = load i8, i8* %incdec.ptr, align 1, !dbg !3094
  %conv19 = zext i8 %16 to i32, !dbg !3095
  %idx.ext = sext i32 %conv19 to i64, !dbg !3096
  %add.ptr = getelementptr inbounds i16, i16* %15, i64 %idx.ext, !dbg !3096
  %17 = load i16, i16* %add.ptr, align 2, !dbg !3097
  %conv20 = zext i16 %17 to i32, !dbg !3098
  %and = and i32 %conv20, 8192, !dbg !3099
  %tobool = icmp ne i32 %and, 0, !dbg !3099
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !3100

if.then21:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !3101

if.end22:                                         ; preds = %while_continue___0
  br label %while.body17, !dbg !3082, !llvm.loop !3103

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !3105

while_break___0:                                  ; preds = %while_break___6, %if.then21
  br label %while.body23, !dbg !3106

while.body23:                                     ; preds = %if.end56, %while_break___0
  %pp.0 = phi %struct.argstr** [ %args16, %while_break___0 ], [ %next36, %if.end56 ], !dbg !3015
  %q.addr.1 = phi i8* [ %incdec.ptr, %while_break___0 ], [ %q.addr.3, %if.end56 ], !dbg !3015
  call void @llvm.dbg.value(metadata i8* %q.addr.1, metadata !2993, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata %struct.argstr** %pp.0, metadata !3081, metadata !DIExpression()), !dbg !2992
  br label %while_continue___7, !dbg !3109

while_continue___7:                               ; preds = %while.body23
  br label %while_continue___1, !dbg !3109

while_continue___1:                               ; preds = %while_continue___7
  %18 = load i8, i8* %q.addr.1, align 1, !dbg !3110
  %conv24 = zext i8 %18 to i32, !dbg !3113
  %cmp25 = icmp ne i32 %conv24, 0, !dbg !3114
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !3115

if.then27:                                        ; preds = %while_continue___1
  %19 = load i8, i8* %q.addr.1, align 1, !dbg !3116
  %conv28 = zext i8 %19 to i32, !dbg !3119
  %cmp29 = icmp ne i32 %conv28, 41, !dbg !3120
  br i1 %cmp29, label %if.end32, label %if.then31, !dbg !3121

if.then31:                                        ; preds = %if.then27
  br label %while_break___1, !dbg !3122

if.end32:                                         ; preds = %if.then27
  br label %if.end33, !dbg !3124

if.else:                                          ; preds = %while_continue___1
  br label %while_break___1, !dbg !3125

if.end33:                                         ; preds = %if.end32
  %call34 = call i8* @misc_malloc(i32 16), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %call34, metadata !3130, metadata !DIExpression()), !dbg !2992
  %20 = bitcast i8* %call34 to %struct.argstr*, !dbg !3131
  call void @llvm.dbg.value(metadata %struct.argstr* %20, metadata !3132, metadata !DIExpression()), !dbg !2992
  %next35 = getelementptr inbounds %struct.argstr, %struct.argstr* %20, i32 0, i32 0, !dbg !3133
  store %struct.argstr* null, %struct.argstr** %next35, align 8, !dbg !3134
  store %struct.argstr* %20, %struct.argstr** %pp.0, align 8, !dbg !3135
  %next36 = getelementptr inbounds %struct.argstr, %struct.argstr* %20, i32 0, i32 0, !dbg !3136
  call void @llvm.dbg.value(metadata %struct.argstr** %next36, metadata !3081, metadata !DIExpression()), !dbg !2992
  %call37 = call i8* @misc_readitem(i8* %q.addr.1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i32* %length, i8* null, i32 0), !dbg !3137
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %20, i32 0, i32 1, !dbg !3139
  store i8* %call37, i8** %string, align 8, !dbg !3140
  %21 = load i32, i32* %length, align 4, !dbg !3141
  %idx.ext38 = sext i32 %21 to i64, !dbg !3142
  %add.ptr39 = getelementptr inbounds i8, i8* %q.addr.1, i64 %idx.ext38, !dbg !3142
  call void @llvm.dbg.value(metadata i8* %add.ptr39, metadata !2993, metadata !DIExpression()), !dbg !2992
  %22 = load i8, i8* %add.ptr39, align 1, !dbg !3143
  %conv40 = zext i8 %22 to i32, !dbg !3145
  %cmp41 = icmp eq i32 %conv40, 44, !dbg !3146
  br i1 %cmp41, label %if.then43, label %if.end56, !dbg !3147

if.then43:                                        ; preds = %if.end33
  br label %while.body45, !dbg !3148

while.body45:                                     ; preds = %if.end55, %if.then43
  %q.addr.2 = phi i8* [ %add.ptr39, %if.then43 ], [ %incdec.ptr47, %if.end55 ], !dbg !3152
  call void @llvm.dbg.value(metadata i8* %q.addr.2, metadata !2993, metadata !DIExpression()), !dbg !2992
  br label %while_continue___8, !dbg !3153

while_continue___8:                               ; preds = %while.body45
  br label %while_continue___2, !dbg !3153

while_continue___2:                               ; preds = %while_continue___8
  %call46 = call i16** @__ctype_b_loc() #8, !dbg !3154
  call void @llvm.dbg.value(metadata i16** %call46, metadata !3158, metadata !DIExpression()), !dbg !2992
  %incdec.ptr47 = getelementptr inbounds i8, i8* %q.addr.2, i32 1, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %incdec.ptr47, metadata !2993, metadata !DIExpression()), !dbg !2992
  %23 = load i16*, i16** %call46, align 8, !dbg !3160
  %24 = load i8, i8* %incdec.ptr47, align 1, !dbg !3162
  %conv48 = zext i8 %24 to i32, !dbg !3163
  %idx.ext49 = sext i32 %conv48 to i64, !dbg !3164
  %add.ptr50 = getelementptr inbounds i16, i16* %23, i64 %idx.ext49, !dbg !3164
  %25 = load i16, i16* %add.ptr50, align 2, !dbg !3165
  %conv51 = zext i16 %25 to i32, !dbg !3166
  %and52 = and i32 %conv51, 8192, !dbg !3167
  %tobool53 = icmp ne i32 %and52, 0, !dbg !3167
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !3168

if.then54:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !3169

if.end55:                                         ; preds = %while_continue___2
  br label %while.body45, !dbg !3148, !llvm.loop !3171

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !3173

while_break___2:                                  ; preds = %while_break___8, %if.then54
  br label %if.end56, !dbg !3174

if.end56:                                         ; preds = %while_break___2, %if.end33
  %q.addr.3 = phi i8* [ %incdec.ptr47, %while_break___2 ], [ %add.ptr39, %if.end33 ], !dbg !3152
  call void @llvm.dbg.value(metadata i8* %q.addr.3, metadata !2993, metadata !DIExpression()), !dbg !2992
  br label %while.body23, !dbg !3106, !llvm.loop !3175

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !3177

while_break___1:                                  ; preds = %while_break___7, %if.else, %if.then31
  %26 = load i8, i8* %q.addr.1, align 1, !dbg !3178
  %conv57 = zext i8 %26 to i32, !dbg !3180
  %cmp58 = icmp ne i32 %conv57, 41, !dbg !3181
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !3182

if.then60:                                        ; preds = %while_break___1
  call void (i32, ...) @error(i32 24, i8* %p), !dbg !3183
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !dbg !3187
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !3189
  br label %return, !dbg !3190

if.end62:                                         ; preds = %while_break___1
  %28 = load i32, i32* @para_inline_macro, align 4, !dbg !3191
  %inc63 = add nsw i32 %28, 1, !dbg !3191
  store i32 %inc63, i32* @para_inline_macro, align 4, !dbg !3191
  br label %while.body64, !dbg !3192

while.body64:                                     ; preds = %if.end112, %if.end62
  br label %while_continue___9, !dbg !3195

while_continue___9:                               ; preds = %while.body64
  br label %while_continue___3, !dbg !3195

while_continue___3:                               ; preds = %while_continue___9
  %29 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3196
  %nextline65 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %29, i32 0, i32 3, !dbg !3200
  %30 = load %struct.argstr*, %struct.argstr** %nextline65, align 8, !dbg !3200
  %string66 = getelementptr inbounds %struct.argstr, %struct.argstr* %30, i32 0, i32 1, !dbg !3201
  %31 = load i8*, i8** %string66, align 8, !dbg !3201
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3202
  call void @read_process_macroline(i8* %31, i8* %arraydecay), !dbg !3203
  %arrayidx67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0, !dbg !3204
  %32 = load i8, i8* %arrayidx67, align 16, !dbg !3204
  %conv68 = zext i8 %32 to i32, !dbg !3206
  %cmp69 = icmp eq i32 %conv68, 46, !dbg !3207
  br i1 %cmp69, label %if.then71, label %if.else77, !dbg !3208

if.then71:                                        ; preds = %while_continue___3
  %arraydecay72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3209
  call void @dot_process(i8* %arraydecay72), !dbg !3213
  %33 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3214
  %34 = ptrtoint %struct.macroexe* %33 to i64, !dbg !3216
  %35 = ptrtoint %struct.macroexe* %10 to i64, !dbg !3217
  %cmp73 = icmp ne i64 %34, %35, !dbg !3218
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !3219

if.then75:                                        ; preds = %if.then71
  br label %while_break___3, !dbg !3220

if.end76:                                         ; preds = %if.then71
  br label %if.end103, !dbg !3222

if.else77:                                        ; preds = %while_continue___3
  %arraydecay78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3223
  %call79 = call i32 @strlen(i8* %arraydecay78) #9, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %call79, metadata !3228, metadata !DIExpression()), !dbg !2992
  %arraydecay80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3229
  %idx.ext81 = sext i32 %call79 to i64, !dbg !3230
  %add.ptr82 = getelementptr inbounds i8, i8* %arraydecay80, i64 %idx.ext81, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %add.ptr82, metadata !3231, metadata !DIExpression()), !dbg !2992
  br label %while.body84, !dbg !3232

while.body84:                                     ; preds = %if.end100, %if.else77
  %qq.0 = phi i8* [ %add.ptr82, %if.else77 ], [ %incdec.ptr101, %if.end100 ], !dbg !3235
  call void @llvm.dbg.value(metadata i8* %qq.0, metadata !3231, metadata !DIExpression()), !dbg !2992
  br label %while_continue___10, !dbg !3236

while_continue___10:                              ; preds = %while.body84
  br label %while_continue___4, !dbg !3236

while_continue___4:                               ; preds = %while_continue___10
  %36 = ptrtoint i8* %qq.0 to i64, !dbg !3237
  %arraydecay85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3240
  %37 = ptrtoint i8* %arraydecay85 to i64, !dbg !3241
  %cmp86 = icmp ugt i64 %36, %37, !dbg !3242
  br i1 %cmp86, label %if.then88, label %if.else99, !dbg !3243

if.then88:                                        ; preds = %while_continue___4
  %call89 = call i16** @__ctype_b_loc() #8, !dbg !3244
  call void @llvm.dbg.value(metadata i16** %call89, metadata !3248, metadata !DIExpression()), !dbg !2992
  %38 = load i16*, i16** %call89, align 8, !dbg !3249
  %add.ptr90 = getelementptr inbounds i8, i8* %qq.0, i64 -1, !dbg !3251
  %39 = load i8, i8* %add.ptr90, align 1, !dbg !3252
  %conv91 = zext i8 %39 to i32, !dbg !3253
  %idx.ext92 = sext i32 %conv91 to i64, !dbg !3254
  %add.ptr93 = getelementptr inbounds i16, i16* %38, i64 %idx.ext92, !dbg !3254
  %40 = load i16, i16* %add.ptr93, align 2, !dbg !3255
  %conv94 = zext i16 %40 to i32, !dbg !3256
  %and95 = and i32 %conv94, 8192, !dbg !3257
  %tobool96 = icmp ne i32 %and95, 0, !dbg !3257
  br i1 %tobool96, label %if.end98, label %if.then97, !dbg !3258

if.then97:                                        ; preds = %if.then88
  br label %while_break___4, !dbg !3259

if.end98:                                         ; preds = %if.then88
  br label %if.end100, !dbg !3261

if.else99:                                        ; preds = %while_continue___4
  br label %while_break___4, !dbg !3262

if.end100:                                        ; preds = %if.end98
  %incdec.ptr101 = getelementptr inbounds i8, i8* %qq.0, i32 -1, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %incdec.ptr101, metadata !3231, metadata !DIExpression()), !dbg !2992
  br label %while.body84, !dbg !3232, !llvm.loop !3265

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !3267

while_break___4:                                  ; preds = %while_break___10, %if.else99, %if.then97
  store i8 0, i8* %qq.0, align 1, !dbg !3268
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !3270
  call void @para_process(i8* %arraydecay102), !dbg !3272
  br label %if.end103

if.end103:                                        ; preds = %while_break___4, %if.end76
  %41 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3273
  %nextline104 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %41, i32 0, i32 3, !dbg !3274
  %42 = load %struct.argstr*, %struct.argstr** %nextline104, align 8, !dbg !3274
  %next105 = getelementptr inbounds %struct.argstr, %struct.argstr* %42, i32 0, i32 0, !dbg !3275
  %43 = load %struct.argstr*, %struct.argstr** %next105, align 8, !dbg !3275
  %44 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3276
  %nextline106 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %44, i32 0, i32 3, !dbg !3277
  store %struct.argstr* %43, %struct.argstr** %nextline106, align 8, !dbg !3278
  %45 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3279
  %nextline107 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %45, i32 0, i32 3, !dbg !3281
  %46 = load %struct.argstr*, %struct.argstr** %nextline107, align 8, !dbg !3281
  %47 = ptrtoint %struct.argstr* %46 to i64, !dbg !3282
  %cmp108 = icmp eq i64 %47, 0, !dbg !3283
  br i1 %cmp108, label %if.then110, label %if.end112, !dbg !3284

if.then110:                                       ; preds = %if.end103
  %48 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.macroexe* %48, metadata !3288, metadata !DIExpression()), !dbg !2992
  %49 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3289
  %prev111 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %49, i32 0, i32 0, !dbg !3290
  %50 = load %struct.macroexe*, %struct.macroexe** %prev111, align 8, !dbg !3290
  store %struct.macroexe* %50, %struct.macroexe** @macrocurrent, align 8, !dbg !3291
  %51 = bitcast %struct.macroexe* %48 to i8*, !dbg !3292
  call void @free(i8* %51) #6, !dbg !3294
  %52 = load i32, i32* @from_type_ptr, align 4, !dbg !3295
  %dec = add nsw i32 %52, -1, !dbg !3295
  store i32 %dec, i32* @from_type_ptr, align 4, !dbg !3295
  br label %while_break___3, !dbg !3296

if.end112:                                        ; preds = %if.end103
  br label %while.body64, !dbg !3192, !llvm.loop !3297

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !3299

while_break___3:                                  ; preds = %while_break___9, %if.then110, %if.then75
  %53 = load i32, i32* @para_inline_macro, align 4, !dbg !3300
  %dec113 = add nsw i32 %53, -1, !dbg !3300
  store i32 %dec113, i32* @para_inline_macro, align 4, !dbg !3300
  %add.ptr114 = getelementptr inbounds i8, i8* %q.addr.1, i64 1, !dbg !3301
  br label %return, !dbg !3302

return:                                           ; preds = %while_break___3, %if.then60, %if.then12
  %retval.0 = phi i8* [ %p, %if.then12 ], [ %p, %if.then60 ], [ %add.ptr114, %while_break___3 ], !dbg !3015
  ret i8* %retval.0, !dbg !3303
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.tree_node* @tree_search(%struct.tree_node* %p, i8* %name) #0 !dbg !3304 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_node* %p, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %name, metadata !3310, metadata !DIExpression()), !dbg !3309
  br label %while.body, !dbg !3311

while.body:                                       ; preds = %if.end7, %entry
  %p.addr.0 = phi %struct.tree_node* [ %p, %entry ], [ %p.addr.1, %if.end7 ]
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.addr.0, metadata !3308, metadata !DIExpression()), !dbg !3309
  br label %while_continue___0, !dbg !3315

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3315

while_continue:                                   ; preds = %while_continue___0
  %0 = ptrtoint %struct.tree_node* %p.addr.0 to i64, !dbg !3316
  %cmp = icmp ne i64 %0, 0, !dbg !3319
  br i1 %cmp, label %if.end, label %if.then, !dbg !3320

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3321

if.end:                                           ; preds = %while_continue
  %name1 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.addr.0, i32 0, i32 4, !dbg !3323
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %name1, i32 0, i32 0, !dbg !3326
  %call = call i32 @strcmp(i8* %name, i8* %arraydecay) #9, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %call, metadata !3328, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %call, metadata !3329, metadata !DIExpression()), !dbg !3309
  %cmp2 = icmp eq i32 %call, 0, !dbg !3330
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3332

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !3333

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %call, 0, !dbg !3335
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !3337

if.then6:                                         ; preds = %if.end4
  %left = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.addr.0, i32 0, i32 0, !dbg !3338
  %1 = load %struct.tree_node*, %struct.tree_node** %left, align 8, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.tree_node* %1, metadata !3308, metadata !DIExpression()), !dbg !3309
  br label %if.end7, !dbg !3340

if.else:                                          ; preds = %if.end4
  %right = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.addr.0, i32 0, i32 1, !dbg !3341
  %2 = load %struct.tree_node*, %struct.tree_node** %right, align 8, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.tree_node* %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %p.addr.1 = phi %struct.tree_node* [ %1, %if.then6 ], [ %2, %if.else ], !dbg !3343
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.addr.1, metadata !3308, metadata !DIExpression()), !dbg !3309
  br label %while.body, !dbg !3311, !llvm.loop !3344

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3346

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !3347

return:                                           ; preds = %while_break, %if.then3
  %retval.0 = phi %struct.tree_node* [ %p.addr.0, %if.then3 ], [ null, %while_break ], !dbg !3348
  ret %struct.tree_node* %retval.0, !dbg !3349
}

; Function Attrs: noinline nounwind ssp uwtable
define void @read_process_macroline(i8* %p, i8* %b) #0 !dbg !3350 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %b, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.declare(metadata !4, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.declare(metadata !4, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata !4, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 0, metadata !3362, metadata !DIExpression()), !dbg !3354
  br label %while.body, !dbg !3363

while.body:                                       ; preds = %if.end185, %entry
  %optend.0 = phi i32 [ 0, %entry ], [ %optend.1, %if.end185 ], !dbg !3367
  %b.addr.0 = phi i8* [ %b, %entry ], [ %b.addr.2, %if.end185 ]
  %p.addr.0 = phi i8* [ %p, %entry ], [ %incdec.ptr127, %if.end185 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %b.addr.0, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %optend.0, metadata !3362, metadata !DIExpression()), !dbg !3354
  br label %while_continue___6, !dbg !3368

while_continue___6:                               ; preds = %while.body
  br label %while_continue, !dbg !3368

while_continue:                                   ; preds = %if.then142, %if.then118, %if.end108, %if.then46, %if.then30, %if.then17, %if.then10, %if.then5, %while_continue___6
  %optend.1 = phi i32 [ %optend.0, %while_continue___6 ], [ 0, %if.then5 ], [ %optend.1, %if.then10 ], [ %optend.1, %if.then17 ], [ %optend.1, %if.then30 ], [ %conv67, %if.end108 ], [ %optend.1, %if.then46 ], [ %optend.1, %if.then142 ], [ %optend.1, %if.then118 ], !dbg !3369
  %b.addr.1 = phi i8* [ %b.addr.0, %while_continue___6 ], [ %b.addr.1, %if.then5 ], [ %incdec.ptr11, %if.then10 ], [ %incdec.ptr19, %if.then17 ], [ %incdec.ptr32, %if.then30 ], [ %b.addr.1, %if.end108 ], [ %incdec.ptr50, %if.then46 ], [ %b.addr.1, %if.then142 ], [ %incdec.ptr121, %if.then118 ]
  %p.addr.1 = phi i8* [ %p.addr.0, %while_continue___6 ], [ %incdec.ptr, %if.then5 ], [ %incdec.ptr12, %if.then10 ], [ %incdec.ptr20, %if.then17 ], [ %incdec.ptr33, %if.then30 ], [ %p.addr.6, %if.end108 ], [ %incdec.ptr51, %if.then46 ], [ %incdec.ptr127, %if.then142 ], [ %incdec.ptr122, %if.then118 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %optend.1, metadata !3362, metadata !DIExpression()), !dbg !3354
  %0 = load i8, i8* %p.addr.1, align 1, !dbg !3370
  %conv = zext i8 %0 to i32, !dbg !3373
  %cmp = icmp ne i32 %conv, 0, !dbg !3374
  br i1 %cmp, label %if.end, label %if.then, !dbg !3375

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !3376

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 0, metadata !3378, metadata !DIExpression()), !dbg !3354
  %1 = load i8, i8* %p.addr.1, align 1, !dbg !3379
  %conv2 = zext i8 %1 to i32, !dbg !3381
  %cmp3 = icmp eq i32 %conv2, %optend.1, !dbg !3382
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !3383

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !3362, metadata !DIExpression()), !dbg !3354
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %while_continue, !dbg !3386

if.end6:                                          ; preds = %if.end
  %2 = load i8, i8* %p.addr.1, align 1, !dbg !3387
  %conv7 = zext i8 %2 to i32, !dbg !3389
  %cmp8 = icmp ne i32 %conv7, 36, !dbg !3390
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !3391

if.then10:                                        ; preds = %if.end6
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3392, metadata !DIExpression()), !dbg !3354
  %incdec.ptr11 = getelementptr inbounds i8, i8* %b.addr.1, i32 1, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %incdec.ptr11, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !3395, metadata !DIExpression()), !dbg !3354
  %incdec.ptr12 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !3353, metadata !DIExpression()), !dbg !3354
  %3 = load i8, i8* %p.addr.1, align 1, !dbg !3396
  store i8 %3, i8* %b.addr.1, align 1, !dbg !3397
  br label %while_continue, !dbg !3398

if.end13:                                         ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8, i8* %p.addr.1, i64 1, !dbg !3399
  %4 = load i8, i8* %add.ptr, align 1, !dbg !3401
  %conv14 = zext i8 %4 to i32, !dbg !3402
  %cmp15 = icmp eq i32 %conv14, 36, !dbg !3403
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !3404

if.then17:                                        ; preds = %if.end13
  %incdec.ptr18 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3407, metadata !DIExpression()), !dbg !3354
  %incdec.ptr19 = getelementptr inbounds i8, i8* %b.addr.1, i32 1, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %incdec.ptr19, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !3408, metadata !DIExpression()), !dbg !3354
  %incdec.ptr20 = getelementptr inbounds i8, i8* %incdec.ptr18, i32 1, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %incdec.ptr20, metadata !3353, metadata !DIExpression()), !dbg !3354
  %5 = load i8, i8* %incdec.ptr18, align 1, !dbg !3409
  store i8 %5, i8* %b.addr.1, align 1, !dbg !3410
  br label %while_continue, !dbg !3411

if.end21:                                         ; preds = %if.end13
  %add.ptr22 = getelementptr inbounds i8, i8* %p.addr.1, i64 1, !dbg !3412
  %6 = load i8, i8* %add.ptr22, align 1, !dbg !3414
  %conv23 = zext i8 %6 to i32, !dbg !3415
  %cmp24 = icmp eq i32 %conv23, 43, !dbg !3416
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !3417

if.then26:                                        ; preds = %if.end21
  %incdec.ptr27 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %incdec.ptr27, metadata !3353, metadata !DIExpression()), !dbg !3354
  %7 = load %struct.argstr*, %struct.argstr** @macro_argbase, align 8, !dbg !3420
  %8 = ptrtoint %struct.argstr* %7 to i64, !dbg !3422
  %cmp28 = icmp eq i64 %8, 0, !dbg !3423
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !3424

if.then30:                                        ; preds = %if.then26
  call void (i32, ...) @error(i32 18), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3429, metadata !DIExpression()), !dbg !3354
  %incdec.ptr31 = getelementptr inbounds i8, i8* %b.addr.1, i32 1, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31, metadata !3355, metadata !DIExpression()), !dbg !3354
  store i8 43, i8* %b.addr.1, align 1, !dbg !3431
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31, metadata !3432, metadata !DIExpression()), !dbg !3354
  %incdec.ptr32 = getelementptr inbounds i8, i8* %incdec.ptr31, i32 1, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %incdec.ptr27, metadata !3434, metadata !DIExpression()), !dbg !3354
  %incdec.ptr33 = getelementptr inbounds i8, i8* %incdec.ptr27, i32 1, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %incdec.ptr33, metadata !3353, metadata !DIExpression()), !dbg !3354
  %9 = load i8, i8* %incdec.ptr27, align 1, !dbg !3435
  store i8 %9, i8* %incdec.ptr31, align 1, !dbg !3436
  br label %while_continue, !dbg !3437

if.end34:                                         ; preds = %if.then26
  %10 = load %struct.argstr*, %struct.argstr** @macro_argbase, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.argstr* %10, metadata !3439, metadata !DIExpression()), !dbg !3354
  br label %if.end35, !dbg !3440

if.else:                                          ; preds = %if.end21
  %11 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3441
  %args = getelementptr inbounds %struct.macroexe, %struct.macroexe* %11, i32 0, i32 2, !dbg !3443
  %12 = load %struct.argstr*, %struct.argstr** %args, align 8, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.argstr* %12, metadata !3439, metadata !DIExpression()), !dbg !3354
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end34
  %argbase.0 = phi %struct.argstr* [ %10, %if.end34 ], [ %12, %if.else ], !dbg !3444
  %p.addr.2 = phi i8* [ %incdec.ptr27, %if.end34 ], [ %p.addr.1, %if.else ]
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.argstr* %argbase.0, metadata !3439, metadata !DIExpression()), !dbg !3354
  %add.ptr36 = getelementptr inbounds i8, i8* %p.addr.2, i64 1, !dbg !3445
  %13 = load i8, i8* %add.ptr36, align 1, !dbg !3447
  %conv37 = zext i8 %13 to i32, !dbg !3448
  %cmp38 = icmp eq i32 %conv37, 61, !dbg !3449
  br i1 %cmp38, label %if.then40, label %if.end109, !dbg !3450

if.then40:                                        ; preds = %if.end35
  %incdec.ptr41 = getelementptr inbounds i8, i8* %p.addr.2, i32 1, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, metadata !3353, metadata !DIExpression()), !dbg !3354
  %call = call i16** @__ctype_b_loc() #8, !dbg !3454
  call void @llvm.dbg.value(metadata i16** %call, metadata !3456, metadata !DIExpression()), !dbg !3354
  %14 = load i16*, i16** %call, align 8, !dbg !3457
  %add.ptr42 = getelementptr inbounds i8, i8* %incdec.ptr41, i64 1, !dbg !3459
  %15 = load i8, i8* %add.ptr42, align 1, !dbg !3460
  %conv43 = zext i8 %15 to i32, !dbg !3461
  %idx.ext = sext i32 %conv43 to i64, !dbg !3462
  %add.ptr44 = getelementptr inbounds i16, i16* %14, i64 %idx.ext, !dbg !3462
  %16 = load i16, i16* %add.ptr44, align 2, !dbg !3463
  %conv45 = zext i16 %16 to i32, !dbg !3464
  %and = and i32 %conv45, 2048, !dbg !3465
  %tobool = icmp ne i32 %and, 0, !dbg !3465
  br i1 %tobool, label %if.end52, label %if.then46, !dbg !3466

if.then46:                                        ; preds = %if.then40
  %add.ptr47 = getelementptr inbounds i8, i8* %incdec.ptr41, i64 1, !dbg !3467
  %17 = load i8, i8* %add.ptr47, align 1, !dbg !3471
  %conv48 = zext i8 %17 to i32, !dbg !3472
  call void (i32, ...) @error(i32 17, i32 %conv48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3474, metadata !DIExpression()), !dbg !3354
  %incdec.ptr49 = getelementptr inbounds i8, i8* %b.addr.1, i32 1, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !3355, metadata !DIExpression()), !dbg !3354
  store i8 36, i8* %b.addr.1, align 1, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !3477, metadata !DIExpression()), !dbg !3354
  %incdec.ptr50 = getelementptr inbounds i8, i8* %incdec.ptr49, i32 1, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %incdec.ptr50, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, metadata !3479, metadata !DIExpression()), !dbg !3354
  %incdec.ptr51 = getelementptr inbounds i8, i8* %incdec.ptr41, i32 1, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %incdec.ptr51, metadata !3353, metadata !DIExpression()), !dbg !3354
  %18 = load i8, i8* %incdec.ptr41, align 1, !dbg !3480
  store i8 %18, i8* %incdec.ptr49, align 1, !dbg !3481
  br label %while_continue, !dbg !3482

if.end52:                                         ; preds = %if.then40
  br label %while.body54, !dbg !3483

while.body54:                                     ; preds = %if.end64, %if.end52
  %argn.0 = phi i32 [ 0, %if.end52 ], [ %sub, %if.end64 ], !dbg !3486
  %p.addr.3 = phi i8* [ %incdec.ptr41, %if.end52 ], [ %incdec.ptr56, %if.end64 ], !dbg !3487
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %argn.0, metadata !3378, metadata !DIExpression()), !dbg !3354
  br label %while_continue___7, !dbg !3488

while_continue___7:                               ; preds = %while.body54
  br label %while_continue___0, !dbg !3488

while_continue___0:                               ; preds = %while_continue___7
  %call55 = call i16** @__ctype_b_loc() #8, !dbg !3489
  call void @llvm.dbg.value(metadata i16** %call55, metadata !3493, metadata !DIExpression()), !dbg !3354
  %incdec.ptr56 = getelementptr inbounds i8, i8* %p.addr.3, i32 1, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !3353, metadata !DIExpression()), !dbg !3354
  %19 = load i16*, i16** %call55, align 8, !dbg !3495
  %20 = load i8, i8* %incdec.ptr56, align 1, !dbg !3497
  %conv57 = zext i8 %20 to i32, !dbg !3498
  %idx.ext58 = sext i32 %conv57 to i64, !dbg !3499
  %add.ptr59 = getelementptr inbounds i16, i16* %19, i64 %idx.ext58, !dbg !3499
  %21 = load i16, i16* %add.ptr59, align 2, !dbg !3500
  %conv60 = zext i16 %21 to i32, !dbg !3501
  %and61 = and i32 %conv60, 2048, !dbg !3502
  %tobool62 = icmp ne i32 %and61, 0, !dbg !3502
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !3503

if.then63:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !3504

if.end64:                                         ; preds = %while_continue___0
  %mul = mul nsw i32 %argn.0, 10, !dbg !3506
  %22 = load i8, i8* %incdec.ptr56, align 1, !dbg !3507
  %conv65 = zext i8 %22 to i32, !dbg !3508
  %add = add nsw i32 %mul, %conv65, !dbg !3509
  %sub = sub nsw i32 %add, 48, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3378, metadata !DIExpression()), !dbg !3354
  br label %while.body54, !dbg !3483, !llvm.loop !3511

while_break___7:                                  ; No predecessors!
  br label %while_break___0, !dbg !3513

while_break___0:                                  ; preds = %while_break___7, %if.then63
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !3514, metadata !DIExpression()), !dbg !3354
  %incdec.ptr66 = getelementptr inbounds i8, i8* %incdec.ptr56, i32 1, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %incdec.ptr66, metadata !3353, metadata !DIExpression()), !dbg !3354
  %23 = load i8, i8* %incdec.ptr56, align 1, !dbg !3516
  %conv67 = zext i8 %23 to i32, !dbg !3517
  call void @llvm.dbg.value(metadata i32 %conv67, metadata !3362, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.argstr* %argbase.0, metadata !3518, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body69, !dbg !3520

while.body69:                                     ; preds = %if.end77, %while_break___0
  %arg.0 = phi %struct.argstr* [ %argbase.0, %while_break___0 ], [ %25, %if.end77 ], !dbg !3487
  %i.0 = phi i32 [ 1, %while_break___0 ], [ %inc, %if.end77 ], !dbg !3487
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3519, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.0, metadata !3518, metadata !DIExpression()), !dbg !3354
  br label %while_continue___8, !dbg !3523

while_continue___8:                               ; preds = %while.body69
  br label %while_continue___1, !dbg !3523

while_continue___1:                               ; preds = %while_continue___8
  %cmp70 = icmp slt i32 %i.0, %argn.0, !dbg !3524
  br i1 %cmp70, label %if.end73, label %if.then72, !dbg !3527

if.then72:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !3528

if.end73:                                         ; preds = %while_continue___1
  %24 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !3530
  %cmp74 = icmp eq i64 %24, 0, !dbg !3532
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !3533

if.then76:                                        ; preds = %if.end73
  br label %while_break___1, !dbg !3534

if.end77:                                         ; preds = %if.end73
  %next = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.0, i32 0, i32 0, !dbg !3536
  %25 = load %struct.argstr*, %struct.argstr** %next, align 8, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.argstr* %25, metadata !3518, metadata !DIExpression()), !dbg !3354
  %inc = add nsw i32 %i.0, 1, !dbg !3537
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body69, !dbg !3520, !llvm.loop !3538

while_break___8:                                  ; No predecessors!
  br label %while_break___1, !dbg !3540

while_break___1:                                  ; preds = %while_break___8, %if.then76, %if.then72
  %26 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !3541
  %cmp78 = icmp eq i64 %26, 0, !dbg !3543
  br i1 %cmp78, label %if.then80, label %if.else81, !dbg !3544

if.then80:                                        ; preds = %while_break___1
  br label %_L, !dbg !3545

if.else81:                                        ; preds = %while_break___1
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.0, i32 0, i32 1, !dbg !3547
  %27 = load i8*, i8** %string, align 8, !dbg !3547
  %add.ptr82 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !3549
  %28 = load i8, i8* %add.ptr82, align 1, !dbg !3550
  %conv83 = zext i8 %28 to i32, !dbg !3551
  %cmp84 = icmp eq i32 %conv83, 0, !dbg !3552
  br i1 %cmp84, label %if.then86, label %if.end107, !dbg !3541

if.then86:                                        ; preds = %if.else81
  br label %_L, !dbg !3553

_L:                                               ; preds = %if.then86, %if.then80
  br label %while.body88, !dbg !3554

while.body88:                                     ; preds = %if.end99, %_L
  %p.addr.4 = phi i8* [ %incdec.ptr66, %_L ], [ %incdec.ptr100, %if.end99 ], !dbg !3487
  call void @llvm.dbg.value(metadata i8* %p.addr.4, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %while_continue___9, !dbg !3558

while_continue___9:                               ; preds = %while.body88
  br label %while_continue___2, !dbg !3558

while_continue___2:                               ; preds = %while_continue___9
  %29 = load i8, i8* %p.addr.4, align 1, !dbg !3559
  %conv89 = zext i8 %29 to i32, !dbg !3562
  %cmp90 = icmp ne i32 %conv89, 0, !dbg !3563
  br i1 %cmp90, label %if.then92, label %if.else98, !dbg !3564

if.then92:                                        ; preds = %while_continue___2
  %30 = load i8, i8* %p.addr.4, align 1, !dbg !3565
  %conv93 = zext i8 %30 to i32, !dbg !3568
  %cmp94 = icmp ne i32 %conv93, %conv67, !dbg !3569
  br i1 %cmp94, label %if.end97, label %if.then96, !dbg !3570

if.then96:                                        ; preds = %if.then92
  br label %while_break___2, !dbg !3571

if.end97:                                         ; preds = %if.then92
  br label %if.end99, !dbg !3573

if.else98:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !3574

if.end99:                                         ; preds = %if.end97
  %incdec.ptr100 = getelementptr inbounds i8, i8* %p.addr.4, i32 1, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %incdec.ptr100, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %while.body88, !dbg !3554, !llvm.loop !3577

while_break___9:                                  ; No predecessors!
  br label %while_break___2, !dbg !3579

while_break___2:                                  ; preds = %while_break___9, %if.else98, %if.then96
  %31 = load i8, i8* %p.addr.4, align 1, !dbg !3580
  %conv101 = zext i8 %31 to i32, !dbg !3582
  %cmp102 = icmp eq i32 %conv101, %conv67, !dbg !3583
  br i1 %cmp102, label %if.then104, label %if.end106, !dbg !3584

if.then104:                                       ; preds = %while_break___2
  %incdec.ptr105 = getelementptr inbounds i8, i8* %p.addr.4, i32 1, !dbg !3585
  call void @llvm.dbg.value(metadata i8* %incdec.ptr105, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %if.end106, !dbg !3587

if.end106:                                        ; preds = %if.then104, %while_break___2
  %p.addr.5 = phi i8* [ %incdec.ptr105, %if.then104 ], [ %p.addr.4, %while_break___2 ], !dbg !3487
  call void @llvm.dbg.value(metadata i8* %p.addr.5, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %if.end107, !dbg !3588

if.end107:                                        ; preds = %if.end106, %if.else81
  %p.addr.6 = phi i8* [ %p.addr.5, %if.end106 ], [ %incdec.ptr66, %if.else81 ], !dbg !3487
  call void @llvm.dbg.value(metadata i8* %p.addr.6, metadata !3353, metadata !DIExpression()), !dbg !3354
  br label %if.end108

if.end108:                                        ; preds = %if.end107
  br label %while_continue, !dbg !3589

if.end109:                                        ; preds = %if.end35
  %call110 = call i16** @__ctype_b_loc() #8, !dbg !3590
  call void @llvm.dbg.value(metadata i16** %call110, metadata !3593, metadata !DIExpression()), !dbg !3354
  %32 = load i16*, i16** %call110, align 8, !dbg !3594
  %add.ptr111 = getelementptr inbounds i8, i8* %p.addr.2, i64 1, !dbg !3596
  %33 = load i8, i8* %add.ptr111, align 1, !dbg !3597
  %conv112 = zext i8 %33 to i32, !dbg !3598
  %idx.ext113 = sext i32 %conv112 to i64, !dbg !3599
  %add.ptr114 = getelementptr inbounds i16, i16* %32, i64 %idx.ext113, !dbg !3599
  %34 = load i16, i16* %add.ptr114, align 2, !dbg !3600
  %conv115 = zext i16 %34 to i32, !dbg !3601
  %and116 = and i32 %conv115, 2048, !dbg !3602
  %tobool117 = icmp ne i32 %and116, 0, !dbg !3602
  br i1 %tobool117, label %if.end123, label %if.then118, !dbg !3603

if.then118:                                       ; preds = %if.end109
  %add.ptr119 = getelementptr inbounds i8, i8* %p.addr.2, i64 1, !dbg !3604
  %35 = load i8, i8* %add.ptr119, align 1, !dbg !3608
  %conv120 = zext i8 %35 to i32, !dbg !3609
  call void (i32, ...) @error(i32 17, i32 %conv120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %b.addr.1, metadata !3611, metadata !DIExpression()), !dbg !3354
  %incdec.ptr121 = getelementptr inbounds i8, i8* %b.addr.1, i32 1, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %incdec.ptr121, metadata !3355, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !3613, metadata !DIExpression()), !dbg !3354
  %incdec.ptr122 = getelementptr inbounds i8, i8* %p.addr.2, i32 1, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %incdec.ptr122, metadata !3353, metadata !DIExpression()), !dbg !3354
  %36 = load i8, i8* %p.addr.2, align 1, !dbg !3614
  store i8 %36, i8* %b.addr.1, align 1, !dbg !3615
  br label %while_continue, !dbg !3616

if.end123:                                        ; preds = %if.end109
  br label %while.body125, !dbg !3617

while.body125:                                    ; preds = %if.end135, %if.end123
  %argn.1 = phi i32 [ 0, %if.end123 ], [ %sub139, %if.end135 ], !dbg !3486
  %p.addr.7 = phi i8* [ %p.addr.2, %if.end123 ], [ %incdec.ptr127, %if.end135 ], !dbg !3486
  call void @llvm.dbg.value(metadata i8* %p.addr.7, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %argn.1, metadata !3378, metadata !DIExpression()), !dbg !3354
  br label %while_continue___10, !dbg !3620

while_continue___10:                              ; preds = %while.body125
  br label %while_continue___3, !dbg !3620

while_continue___3:                               ; preds = %while_continue___10
  %call126 = call i16** @__ctype_b_loc() #8, !dbg !3621
  call void @llvm.dbg.value(metadata i16** %call126, metadata !3625, metadata !DIExpression()), !dbg !3354
  %incdec.ptr127 = getelementptr inbounds i8, i8* %p.addr.7, i32 1, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %incdec.ptr127, metadata !3353, metadata !DIExpression()), !dbg !3354
  %37 = load i16*, i16** %call126, align 8, !dbg !3627
  %38 = load i8, i8* %incdec.ptr127, align 1, !dbg !3629
  %conv128 = zext i8 %38 to i32, !dbg !3630
  %idx.ext129 = sext i32 %conv128 to i64, !dbg !3631
  %add.ptr130 = getelementptr inbounds i16, i16* %37, i64 %idx.ext129, !dbg !3631
  %39 = load i16, i16* %add.ptr130, align 2, !dbg !3632
  %conv131 = zext i16 %39 to i32, !dbg !3633
  %and132 = and i32 %conv131, 2048, !dbg !3634
  %tobool133 = icmp ne i32 %and132, 0, !dbg !3634
  br i1 %tobool133, label %if.end135, label %if.then134, !dbg !3635

if.then134:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !3636

if.end135:                                        ; preds = %while_continue___3
  %mul136 = mul nsw i32 %argn.1, 10, !dbg !3638
  %40 = load i8, i8* %incdec.ptr127, align 1, !dbg !3639
  %conv137 = zext i8 %40 to i32, !dbg !3640
  %add138 = add nsw i32 %mul136, %conv137, !dbg !3641
  %sub139 = sub nsw i32 %add138, 48, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %sub139, metadata !3378, metadata !DIExpression()), !dbg !3354
  br label %while.body125, !dbg !3617, !llvm.loop !3643

while_break___10:                                 ; No predecessors!
  br label %while_break___3, !dbg !3645

while_break___3:                                  ; preds = %while_break___10, %if.then134
  %cmp140 = icmp eq i32 %argn.1, 0, !dbg !3646
  br i1 %cmp140, label %if.then142, label %if.end143, !dbg !3648

if.then142:                                       ; preds = %while_break___3
  br label %while_continue, !dbg !3649

if.end143:                                        ; preds = %while_break___3
  call void @llvm.dbg.value(metadata %struct.argstr* %argbase.0, metadata !3518, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body145, !dbg !3651

while.body145:                                    ; preds = %if.end153, %if.end143
  %arg.1 = phi %struct.argstr* [ %argbase.0, %if.end143 ], [ %42, %if.end153 ], !dbg !3486
  %i.1 = phi i32 [ 1, %if.end143 ], [ %inc155, %if.end153 ], !dbg !3486
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3519, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.1, metadata !3518, metadata !DIExpression()), !dbg !3354
  br label %while_continue___11, !dbg !3654

while_continue___11:                              ; preds = %while.body145
  br label %while_continue___4, !dbg !3654

while_continue___4:                               ; preds = %while_continue___11
  %cmp146 = icmp slt i32 %i.1, %argn.1, !dbg !3655
  br i1 %cmp146, label %if.end149, label %if.then148, !dbg !3658

if.then148:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !3659

if.end149:                                        ; preds = %while_continue___4
  %41 = ptrtoint %struct.argstr* %arg.1 to i64, !dbg !3661
  %cmp150 = icmp eq i64 %41, 0, !dbg !3663
  br i1 %cmp150, label %if.then152, label %if.end153, !dbg !3664

if.then152:                                       ; preds = %if.end149
  br label %while_break___4, !dbg !3665

if.end153:                                        ; preds = %if.end149
  %next154 = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.1, i32 0, i32 0, !dbg !3667
  %42 = load %struct.argstr*, %struct.argstr** %next154, align 8, !dbg !3667
  call void @llvm.dbg.value(metadata %struct.argstr* %42, metadata !3518, metadata !DIExpression()), !dbg !3354
  %inc155 = add nsw i32 %i.1, 1, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %inc155, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body145, !dbg !3651, !llvm.loop !3669

while_break___11:                                 ; No predecessors!
  br label %while_break___4, !dbg !3671

while_break___4:                                  ; preds = %while_break___11, %if.then152, %if.then148
  %43 = ptrtoint %struct.argstr* %arg.1 to i64, !dbg !3672
  %cmp156 = icmp eq i64 %43, 0, !dbg !3674
  br i1 %cmp156, label %if.then158, label %if.end177, !dbg !3675

if.then158:                                       ; preds = %while_break___4
  %44 = ptrtoint %struct.argstr* %argbase.0 to i64, !dbg !3676
  %45 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3679
  %args159 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %45, i32 0, i32 2, !dbg !3680
  %46 = load %struct.argstr*, %struct.argstr** %args159, align 8, !dbg !3680
  %47 = ptrtoint %struct.argstr* %46 to i64, !dbg !3681
  %cmp160 = icmp eq i64 %44, %47, !dbg !3682
  br i1 %cmp160, label %if.then162, label %if.end176, !dbg !3683

if.then162:                                       ; preds = %if.then158
  %48 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !3684
  %macro = getelementptr inbounds %struct.macroexe, %struct.macroexe* %48, i32 0, i32 1, !dbg !3686
  %49 = load %struct.macrodef*, %struct.macrodef** %macro, align 8, !dbg !3686
  %args163 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %49, i32 0, i32 2, !dbg !3687
  %50 = load %struct.argstr*, %struct.argstr** %args163, align 8, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.argstr* %50, metadata !3518, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body165, !dbg !3688

while.body165:                                    ; preds = %if.end173, %if.then162
  %arg.2 = phi %struct.argstr* [ %50, %if.then162 ], [ %52, %if.end173 ], !dbg !3691
  %i.2 = phi i32 [ 1, %if.then162 ], [ %inc175, %if.end173 ], !dbg !3691
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3519, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.2, metadata !3518, metadata !DIExpression()), !dbg !3354
  br label %while_continue___12, !dbg !3692

while_continue___12:                              ; preds = %while.body165
  br label %while_continue___5, !dbg !3692

while_continue___5:                               ; preds = %while_continue___12
  %cmp166 = icmp slt i32 %i.2, %argn.1, !dbg !3693
  br i1 %cmp166, label %if.end169, label %if.then168, !dbg !3696

if.then168:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !3697

if.end169:                                        ; preds = %while_continue___5
  %51 = ptrtoint %struct.argstr* %arg.2 to i64, !dbg !3699
  %cmp170 = icmp eq i64 %51, 0, !dbg !3701
  br i1 %cmp170, label %if.then172, label %if.end173, !dbg !3702

if.then172:                                       ; preds = %if.end169
  br label %while_break___5, !dbg !3703

if.end173:                                        ; preds = %if.end169
  %next174 = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.2, i32 0, i32 0, !dbg !3705
  %52 = load %struct.argstr*, %struct.argstr** %next174, align 8, !dbg !3705
  call void @llvm.dbg.value(metadata %struct.argstr* %52, metadata !3518, metadata !DIExpression()), !dbg !3354
  %inc175 = add nsw i32 %i.2, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %inc175, metadata !3519, metadata !DIExpression()), !dbg !3354
  br label %while.body165, !dbg !3688, !llvm.loop !3707

while_break___12:                                 ; No predecessors!
  br label %while_break___5, !dbg !3709

while_break___5:                                  ; preds = %while_break___12, %if.then172, %if.then168
  br label %if.end176, !dbg !3710

if.end176:                                        ; preds = %while_break___5, %if.then158
  %arg.3 = phi %struct.argstr* [ %arg.2, %while_break___5 ], [ %arg.1, %if.then158 ], !dbg !3486
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.3, metadata !3518, metadata !DIExpression()), !dbg !3354
  br label %if.end177, !dbg !3711

if.end177:                                        ; preds = %if.end176, %while_break___4
  %arg.4 = phi %struct.argstr* [ %arg.3, %if.end176 ], [ %arg.1, %while_break___4 ], !dbg !3486
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.4, metadata !3518, metadata !DIExpression()), !dbg !3354
  %53 = ptrtoint %struct.argstr* %arg.4 to i64, !dbg !3712
  %cmp178 = icmp ne i64 %53, 0, !dbg !3714
  br i1 %cmp178, label %if.then180, label %if.end185, !dbg !3715

if.then180:                                       ; preds = %if.end177
  %string181 = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.4, i32 0, i32 1, !dbg !3716
  %54 = load i8*, i8** %string181, align 8, !dbg !3716
  %call182 = call i32 (i8*, i8*, ...) @sprintf(i8* %b.addr.1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %54) #6, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %call182, metadata !3721, metadata !DIExpression()), !dbg !3354
  %idx.ext183 = sext i32 %call182 to i64, !dbg !3722
  %add.ptr184 = getelementptr inbounds i8, i8* %b.addr.1, i64 %idx.ext183, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %add.ptr184, metadata !3355, metadata !DIExpression()), !dbg !3354
  br label %if.end185, !dbg !3723

if.end185:                                        ; preds = %if.then180, %if.end177
  %b.addr.2 = phi i8* [ %add.ptr184, %if.then180 ], [ %b.addr.1, %if.end177 ]
  call void @llvm.dbg.value(metadata i8* %b.addr.2, metadata !3355, metadata !DIExpression()), !dbg !3354
  br label %while.body, !dbg !3363, !llvm.loop !3724

while_break___6:                                  ; No predecessors!
  br label %while_break, !dbg !3726

while_break:                                      ; preds = %while_break___6, %if.then
  store i8 0, i8* %b.addr.1, align 1, !dbg !3727
  ret void, !dbg !3728
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i32) #5

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #5

; Function Attrs: noinline nounwind ssp uwtable
define i32 @tree_insertnode(%struct.tree_node** %treebase, %struct.tree_node* %node) #0 !dbg !3729 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_node** %treebase, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.tree_node* %node, metadata !3735, metadata !DIExpression()), !dbg !3734
  %0 = load %struct.tree_node*, %struct.tree_node** %treebase, align 8, !dbg !3736
  call void @llvm.dbg.value(metadata %struct.tree_node* %0, metadata !3738, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.tree_node* null, metadata !3739, metadata !DIExpression()), !dbg !3734
  %right = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 1, !dbg !3740
  store %struct.tree_node* null, %struct.tree_node** %right, align 8, !dbg !3741
  %left = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 0, !dbg !3740
  store %struct.tree_node* null, %struct.tree_node** %left, align 8, !dbg !3742
  %balance = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 3, !dbg !3743
  store i8 0, i8* %balance, align 8, !dbg !3744
  %1 = ptrtoint %struct.tree_node* %0 to i64, !dbg !3745
  %cmp = icmp eq i64 %1, 0, !dbg !3747
  br i1 %cmp, label %if.then, label %if.end, !dbg !3748

if.then:                                          ; preds = %entry
  store %struct.tree_node* %node, %struct.tree_node** %treebase, align 8, !dbg !3749
  br label %return, !dbg !3751

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.tree_node** %treebase, metadata !3752, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.tree_node** %treebase, metadata !3753, metadata !DIExpression()), !dbg !3734
  br label %while.body, !dbg !3754

while.body:                                       ; preds = %if.end18, %if.end
  %p.0 = phi %struct.tree_node* [ %0, %if.end ], [ %2, %if.end18 ], !dbg !3757
  %t.0 = phi %struct.tree_node** [ %treebase, %if.end ], [ %t.1, %if.end18 ], !dbg !3757
  call void @llvm.dbg.value(metadata %struct.tree_node** %t.0, metadata !3753, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.0, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %while_continue___1, !dbg !3758

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !3758

while_continue:                                   ; preds = %while_continue___1
  %name = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 4, !dbg !3759
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %name, i32 0, i32 0, !dbg !3763
  %name1 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.0, i32 0, i32 4, !dbg !3764
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %name1, i32 0, i32 0, !dbg !3765
  %call = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay2) #9, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %call, metadata !3767, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 %call, metadata !3768, metadata !DIExpression()), !dbg !3734
  %cmp3 = icmp eq i32 %call, 0, !dbg !3769
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3771

if.then4:                                         ; preds = %while_continue
  br label %return, !dbg !3772

if.end5:                                          ; preds = %while_continue
  %cmp6 = icmp sgt i32 %call, 0, !dbg !3774
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !3776

if.then7:                                         ; preds = %if.end5
  %right8 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.0, i32 0, i32 1, !dbg !3777
  call void @llvm.dbg.value(metadata %struct.tree_node** %right8, metadata !3752, metadata !DIExpression()), !dbg !3734
  br label %if.end10, !dbg !3779

if.else:                                          ; preds = %if.end5
  %left9 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.0, i32 0, i32 0, !dbg !3780
  call void @llvm.dbg.value(metadata %struct.tree_node** %left9, metadata !3752, metadata !DIExpression()), !dbg !3734
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %q.0 = phi %struct.tree_node** [ %right8, %if.then7 ], [ %left9, %if.else ], !dbg !3782
  call void @llvm.dbg.value(metadata %struct.tree_node** %q.0, metadata !3752, metadata !DIExpression()), !dbg !3734
  %2 = load %struct.tree_node*, %struct.tree_node** %q.0, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.tree_node* %2, metadata !3738, metadata !DIExpression()), !dbg !3734
  %3 = ptrtoint %struct.tree_node* %2 to i64, !dbg !3784
  %cmp11 = icmp eq i64 %3, 0, !dbg !3786
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3787

if.then12:                                        ; preds = %if.end10
  br label %while_break, !dbg !3788

if.end13:                                         ; preds = %if.end10
  %balance14 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %2, i32 0, i32 3, !dbg !3790
  %4 = load i8, i8* %balance14, align 8, !dbg !3790
  %conv = zext i8 %4 to i32, !dbg !3792
  %cmp15 = icmp ne i32 %conv, 0, !dbg !3793
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3794

if.then17:                                        ; preds = %if.end13
  call void @llvm.dbg.value(metadata %struct.tree_node** %q.0, metadata !3753, metadata !DIExpression()), !dbg !3734
  br label %if.end18, !dbg !3795

if.end18:                                         ; preds = %if.then17, %if.end13
  %t.1 = phi %struct.tree_node** [ %q.0, %if.then17 ], [ %t.0, %if.end13 ], !dbg !3757
  call void @llvm.dbg.value(metadata %struct.tree_node** %t.1, metadata !3753, metadata !DIExpression()), !dbg !3734
  br label %while.body, !dbg !3754, !llvm.loop !3797

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !3799

while_break:                                      ; preds = %while_break___1, %if.then12
  store %struct.tree_node* %node, %struct.tree_node** %q.0, align 8, !dbg !3800
  %5 = load %struct.tree_node*, %struct.tree_node** %t.0, align 8, !dbg !3802
  call void @llvm.dbg.value(metadata %struct.tree_node* %5, metadata !3803, metadata !DIExpression()), !dbg !3734
  %name19 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 4, !dbg !3804
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %name19, i32 0, i32 0, !dbg !3806
  %name21 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 4, !dbg !3807
  %arraydecay22 = getelementptr inbounds [1 x i8], [1 x i8]* %name21, i32 0, i32 0, !dbg !3808
  %call23 = call i32 @strcmp(i8* %arraydecay20, i8* %arraydecay22) #9, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %call23, metadata !3810, metadata !DIExpression()), !dbg !3734
  %cmp24 = icmp sgt i32 %call23, 0, !dbg !3811
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !3813

if.then26:                                        ; preds = %while_break
  %right27 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 1, !dbg !3814
  %6 = load %struct.tree_node*, %struct.tree_node** %right27, align 8, !dbg !3814
  call void @llvm.dbg.value(metadata %struct.tree_node* %6, metadata !3816, metadata !DIExpression()), !dbg !3734
  br label %if.end30, !dbg !3817

if.else28:                                        ; preds = %while_break
  %left29 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 0, !dbg !3818
  %7 = load %struct.tree_node*, %struct.tree_node** %left29, align 8, !dbg !3818
  call void @llvm.dbg.value(metadata %struct.tree_node* %7, metadata !3816, metadata !DIExpression()), !dbg !3734
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %r.0 = phi %struct.tree_node* [ %6, %if.then26 ], [ %7, %if.else28 ], !dbg !3820
  call void @llvm.dbg.value(metadata %struct.tree_node* %r.0, metadata !3816, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.tree_node* %r.0, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %while.body31, !dbg !3821

while.body31:                                     ; preds = %if.end49, %if.end30
  %p.1 = phi %struct.tree_node* [ %r.0, %if.end30 ], [ %p.2, %if.end49 ], !dbg !3757
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.1, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %while_continue___2, !dbg !3824

while_continue___2:                               ; preds = %while.body31
  br label %while_continue___0, !dbg !3824

while_continue___0:                               ; preds = %while_continue___2
  %8 = ptrtoint %struct.tree_node* %p.1 to i64, !dbg !3825
  %9 = ptrtoint %struct.tree_node* %node to i64, !dbg !3828
  %cmp32 = icmp ne i64 %8, %9, !dbg !3829
  br i1 %cmp32, label %if.end35, label %if.then34, !dbg !3830

if.then34:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !3831

if.end35:                                         ; preds = %while_continue___0
  %name36 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 4, !dbg !3833
  %arraydecay37 = getelementptr inbounds [1 x i8], [1 x i8]* %name36, i32 0, i32 0, !dbg !3836
  %name38 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.1, i32 0, i32 4, !dbg !3837
  %arraydecay39 = getelementptr inbounds [1 x i8], [1 x i8]* %name38, i32 0, i32 0, !dbg !3838
  %call40 = call i32 @strcmp(i8* %arraydecay37, i8* %arraydecay39) #9, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %call40, metadata !3840, metadata !DIExpression()), !dbg !3734
  %cmp41 = icmp slt i32 %call40, 0, !dbg !3841
  br i1 %cmp41, label %if.then43, label %if.else46, !dbg !3843

if.then43:                                        ; preds = %if.end35
  %balance44 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.1, i32 0, i32 3, !dbg !3844
  store i8 1, i8* %balance44, align 8, !dbg !3846
  %left45 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.1, i32 0, i32 0, !dbg !3847
  %10 = load %struct.tree_node*, %struct.tree_node** %left45, align 8, !dbg !3847
  call void @llvm.dbg.value(metadata %struct.tree_node* %10, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %if.end49, !dbg !3848

if.else46:                                        ; preds = %if.end35
  %balance47 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.1, i32 0, i32 3, !dbg !3849
  store i8 2, i8* %balance47, align 8, !dbg !3851
  %right48 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.1, i32 0, i32 1, !dbg !3852
  %11 = load %struct.tree_node*, %struct.tree_node** %right48, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.tree_node* %11, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then43
  %p.2 = phi %struct.tree_node* [ %10, %if.then43 ], [ %11, %if.else46 ], !dbg !3853
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.2, metadata !3738, metadata !DIExpression()), !dbg !3734
  br label %while.body31, !dbg !3821, !llvm.loop !3854

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !3856

while_break___0:                                  ; preds = %while_break___2, %if.then34
  %name50 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %node, i32 0, i32 4, !dbg !3857
  %arraydecay51 = getelementptr inbounds [1 x i8], [1 x i8]* %name50, i32 0, i32 0, !dbg !3860
  %name52 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 4, !dbg !3861
  %arraydecay53 = getelementptr inbounds [1 x i8], [1 x i8]* %name52, i32 0, i32 0, !dbg !3862
  %call54 = call i32 @strcmp(i8* %arraydecay51, i8* %arraydecay53) #9, !dbg !3863
  call void @llvm.dbg.value(metadata i32 %call54, metadata !3864, metadata !DIExpression()), !dbg !3734
  %cmp55 = icmp slt i32 %call54, 0, !dbg !3865
  br i1 %cmp55, label %if.then57, label %if.else58, !dbg !3867

if.then57:                                        ; preds = %while_break___0
  call void @llvm.dbg.value(metadata i32 1, metadata !3868, metadata !DIExpression()), !dbg !3734
  br label %if.end59, !dbg !3869

if.else58:                                        ; preds = %while_break___0
  call void @llvm.dbg.value(metadata i32 2, metadata !3868, metadata !DIExpression()), !dbg !3734
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  %a.0 = phi i32 [ 1, %if.then57 ], [ 2, %if.else58 ], !dbg !3871
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !3868, metadata !DIExpression()), !dbg !3734
  %balance60 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3872
  %12 = load i8, i8* %balance60, align 8, !dbg !3872
  %conv61 = zext i8 %12 to i32, !dbg !3874
  %cmp62 = icmp eq i32 %conv61, 0, !dbg !3875
  br i1 %cmp62, label %if.then64, label %if.else67, !dbg !3876

if.then64:                                        ; preds = %if.end59
  %conv65 = trunc i32 %a.0 to i8, !dbg !3877
  %balance66 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3879
  store i8 %conv65, i8* %balance66, align 8, !dbg !3880
  br label %if.end155, !dbg !3881

if.else67:                                        ; preds = %if.end59
  %balance68 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3882
  %13 = load i8, i8* %balance68, align 8, !dbg !3882
  %conv69 = zext i8 %13 to i32, !dbg !3884
  %conv70 = trunc i32 %a.0 to i8, !dbg !3885
  %conv71 = zext i8 %conv70 to i32, !dbg !3886
  %cmp72 = icmp ne i32 %conv69, %conv71, !dbg !3887
  br i1 %cmp72, label %if.then74, label %if.else76, !dbg !3888

if.then74:                                        ; preds = %if.else67
  %balance75 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3889
  store i8 0, i8* %balance75, align 8, !dbg !3891
  br label %if.end154, !dbg !3892

if.else76:                                        ; preds = %if.else67
  %balance77 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 3, !dbg !3893
  %14 = load i8, i8* %balance77, align 8, !dbg !3893
  %conv78 = zext i8 %14 to i32, !dbg !3896
  %conv79 = trunc i32 %a.0 to i8, !dbg !3897
  %conv80 = zext i8 %conv79 to i32, !dbg !3898
  %cmp81 = icmp eq i32 %conv78, %conv80, !dbg !3899
  br i1 %cmp81, label %if.then83, label %if.else97, !dbg !3900

if.then83:                                        ; preds = %if.else76
  call void @llvm.dbg.value(metadata %struct.tree_node* %r.0, metadata !3738, metadata !DIExpression()), !dbg !3734
  %cmp84 = icmp eq i32 %a.0, 2, !dbg !3901
  br i1 %cmp84, label %if.then86, label %if.else90, !dbg !3904

if.then86:                                        ; preds = %if.then83
  %left87 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 0, !dbg !3905
  %15 = load %struct.tree_node*, %struct.tree_node** %left87, align 8, !dbg !3905
  %right88 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 1, !dbg !3907
  store %struct.tree_node* %15, %struct.tree_node** %right88, align 8, !dbg !3908
  %left89 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 0, !dbg !3909
  store %struct.tree_node* %5, %struct.tree_node** %left89, align 8, !dbg !3910
  br label %if.end94, !dbg !3911

if.else90:                                        ; preds = %if.then83
  %right91 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 1, !dbg !3912
  %16 = load %struct.tree_node*, %struct.tree_node** %right91, align 8, !dbg !3912
  %left92 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 0, !dbg !3914
  store %struct.tree_node* %16, %struct.tree_node** %left92, align 8, !dbg !3915
  %right93 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 1, !dbg !3916
  store %struct.tree_node* %5, %struct.tree_node** %right93, align 8, !dbg !3917
  br label %if.end94

if.end94:                                         ; preds = %if.else90, %if.then86
  %balance95 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3918
  store i8 0, i8* %balance95, align 8, !dbg !3919
  %balance96 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 3, !dbg !3920
  store i8 0, i8* %balance96, align 8, !dbg !3921
  br label %if.end153, !dbg !3922

if.else97:                                        ; preds = %if.else76
  %cmp98 = icmp eq i32 %a.0, 2, !dbg !3923
  br i1 %cmp98, label %if.then100, label %if.else113, !dbg !3926

if.then100:                                       ; preds = %if.else97
  %left101 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 0, !dbg !3927
  %17 = load %struct.tree_node*, %struct.tree_node** %left101, align 8, !dbg !3927
  %18 = ptrtoint %struct.tree_node* %17 to i64, !dbg !3930
  %cmp102 = icmp eq i64 %18, 0, !dbg !3931
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !3932

if.then104:                                       ; preds = %if.then100
  br label %return, !dbg !3933

if.end105:                                        ; preds = %if.then100
  %left106 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 0, !dbg !3935
  %19 = load %struct.tree_node*, %struct.tree_node** %left106, align 8, !dbg !3935
  call void @llvm.dbg.value(metadata %struct.tree_node* %19, metadata !3738, metadata !DIExpression()), !dbg !3734
  %right107 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %19, i32 0, i32 1, !dbg !3936
  %20 = load %struct.tree_node*, %struct.tree_node** %right107, align 8, !dbg !3936
  %left108 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 0, !dbg !3937
  store %struct.tree_node* %20, %struct.tree_node** %left108, align 8, !dbg !3938
  %right109 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %19, i32 0, i32 1, !dbg !3939
  store %struct.tree_node* %r.0, %struct.tree_node** %right109, align 8, !dbg !3940
  %left110 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %19, i32 0, i32 0, !dbg !3941
  %21 = load %struct.tree_node*, %struct.tree_node** %left110, align 8, !dbg !3941
  %right111 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 1, !dbg !3942
  store %struct.tree_node* %21, %struct.tree_node** %right111, align 8, !dbg !3943
  %left112 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %19, i32 0, i32 0, !dbg !3944
  store %struct.tree_node* %5, %struct.tree_node** %left112, align 8, !dbg !3945
  br label %if.end126, !dbg !3946

if.else113:                                       ; preds = %if.else97
  %right114 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 1, !dbg !3947
  %22 = load %struct.tree_node*, %struct.tree_node** %right114, align 8, !dbg !3947
  %23 = ptrtoint %struct.tree_node* %22 to i64, !dbg !3950
  %cmp115 = icmp eq i64 %23, 0, !dbg !3951
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !3952

if.then117:                                       ; preds = %if.else113
  br label %return, !dbg !3953

if.end118:                                        ; preds = %if.else113
  %right119 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 1, !dbg !3955
  %24 = load %struct.tree_node*, %struct.tree_node** %right119, align 8, !dbg !3955
  call void @llvm.dbg.value(metadata %struct.tree_node* %24, metadata !3738, metadata !DIExpression()), !dbg !3734
  %left120 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 0, !dbg !3956
  %25 = load %struct.tree_node*, %struct.tree_node** %left120, align 8, !dbg !3956
  %right121 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 1, !dbg !3957
  store %struct.tree_node* %25, %struct.tree_node** %right121, align 8, !dbg !3958
  %left122 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 0, !dbg !3959
  store %struct.tree_node* %r.0, %struct.tree_node** %left122, align 8, !dbg !3960
  %right123 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 1, !dbg !3961
  %26 = load %struct.tree_node*, %struct.tree_node** %right123, align 8, !dbg !3961
  %left124 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 0, !dbg !3962
  store %struct.tree_node* %26, %struct.tree_node** %left124, align 8, !dbg !3963
  %right125 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 1, !dbg !3964
  store %struct.tree_node* %5, %struct.tree_node** %right125, align 8, !dbg !3965
  br label %if.end126

if.end126:                                        ; preds = %if.end118, %if.end105
  %p.3 = phi %struct.tree_node* [ %19, %if.end105 ], [ %24, %if.end118 ], !dbg !3966
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.3, metadata !3738, metadata !DIExpression()), !dbg !3734
  %balance127 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.3, i32 0, i32 3, !dbg !3967
  %27 = load i8, i8* %balance127, align 8, !dbg !3967
  %conv128 = zext i8 %27 to i32, !dbg !3969
  %conv129 = trunc i32 %a.0 to i8, !dbg !3970
  %conv130 = zext i8 %conv129 to i32, !dbg !3971
  %cmp131 = icmp eq i32 %conv128, %conv130, !dbg !3972
  br i1 %cmp131, label %if.then133, label %if.else136, !dbg !3973

if.then133:                                       ; preds = %if.end126
  %xor = xor i32 %a.0, 3, !dbg !3974
  %conv134 = trunc i32 %xor to i8, !dbg !3976
  %balance135 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3977
  store i8 %conv134, i8* %balance135, align 8, !dbg !3978
  br label %if.end138, !dbg !3979

if.else136:                                       ; preds = %if.end126
  %balance137 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 3, !dbg !3980
  store i8 0, i8* %balance137, align 8, !dbg !3982
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %if.then133
  %balance139 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.3, i32 0, i32 3, !dbg !3983
  %28 = load i8, i8* %balance139, align 8, !dbg !3983
  %conv140 = zext i8 %28 to i32, !dbg !3985
  %xor141 = xor i32 %a.0, 3, !dbg !3986
  %conv142 = trunc i32 %xor141 to i8, !dbg !3987
  %conv143 = zext i8 %conv142 to i32, !dbg !3988
  %cmp144 = icmp eq i32 %conv140, %conv143, !dbg !3989
  br i1 %cmp144, label %if.then146, label %if.else149, !dbg !3990

if.then146:                                       ; preds = %if.end138
  %conv147 = trunc i32 %a.0 to i8, !dbg !3991
  %balance148 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 3, !dbg !3993
  store i8 %conv147, i8* %balance148, align 8, !dbg !3994
  br label %if.end151, !dbg !3995

if.else149:                                       ; preds = %if.end138
  %balance150 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %r.0, i32 0, i32 3, !dbg !3996
  store i8 0, i8* %balance150, align 8, !dbg !3998
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %if.then146
  %balance152 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %p.3, i32 0, i32 3, !dbg !3999
  store i8 0, i8* %balance152, align 8, !dbg !4000
  br label %if.end153

if.end153:                                        ; preds = %if.end151, %if.end94
  %p.4 = phi %struct.tree_node* [ %r.0, %if.end94 ], [ %p.3, %if.end151 ], !dbg !4001
  call void @llvm.dbg.value(metadata %struct.tree_node* %p.4, metadata !3738, metadata !DIExpression()), !dbg !3734
  store %struct.tree_node* %p.4, %struct.tree_node** %t.0, align 8, !dbg !4002
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then74
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then64
  br label %return, !dbg !4003

return:                                           ; preds = %if.end155, %if.then117, %if.then104, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then4 ], [ 1, %if.end155 ], [ 1, %if.then104 ], [ 1, %if.then117 ], !dbg !3757
  ret i32 %retval.0, !dbg !4004
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #5

; Function Attrs: noinline nounwind ssp uwtable
define i8* @misc_copystring(i8* %p, i32 %length) #0 !dbg !4005 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %length, metadata !4010, metadata !DIExpression()), !dbg !4009
  %add = add nsw i32 %length, 1, !dbg !4011
  %call = call i8* @misc_malloc(i32 %add), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %call, metadata !4016, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8* %call, metadata !4017, metadata !DIExpression()), !dbg !4009
  %call1 = call i8* @memcpy(i8* %call, i8* %p, i32 %length) #6, !dbg !4018
  %idx.ext = sext i32 %length to i64, !dbg !4020
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !4020
  store i8 0, i8* %add.ptr, align 1, !dbg !4021
  ret i8* %call, !dbg !4022
}

; Function Attrs: noinline nounwind ssp uwtable
define i8* @misc_readstring(i8* %p, i32* %lptr, i8* %buffer, i32 %blength) #0 !dbg !4023 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32* %lptr, metadata !4028, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !4029, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %blength, metadata !4030, metadata !DIExpression()), !dbg !4027
  %0 = load i8, i8* %p, align 1, !dbg !4031
  %conv = zext i8 %0 to i32, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4034, metadata !DIExpression()), !dbg !4027
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !4036, metadata !DIExpression()), !dbg !4027
  br label %while.body, !dbg !4037

while.body:                                       ; preds = %if.end13, %entry
  %pp.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr14, %if.end13 ], !dbg !4040
  call void @llvm.dbg.value(metadata i8* %pp.0, metadata !4036, metadata !DIExpression()), !dbg !4027
  br label %while_continue___1, !dbg !4041

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !4041

while_continue:                                   ; preds = %while_continue___1
  %1 = load i8, i8* %pp.0, align 1, !dbg !4042
  %conv1 = zext i8 %1 to i32, !dbg !4045
  %cmp = icmp eq i32 %conv1, 0, !dbg !4046
  br i1 %cmp, label %if.then, label %if.end, !dbg !4047

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !4048

if.end:                                           ; preds = %while_continue
  %2 = load i8, i8* %pp.0, align 1, !dbg !4050
  %conv3 = zext i8 %2 to i32, !dbg !4052
  %cmp4 = icmp eq i32 %conv3, %conv, !dbg !4053
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !4054

if.then6:                                         ; preds = %if.end
  %add.ptr7 = getelementptr inbounds i8, i8* %pp.0, i64 1, !dbg !4055
  %3 = load i8, i8* %add.ptr7, align 1, !dbg !4058
  %conv8 = zext i8 %3 to i32, !dbg !4059
  %cmp9 = icmp ne i32 %conv8, %conv, !dbg !4060
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4061

if.then11:                                        ; preds = %if.then6
  br label %while_break, !dbg !4062

if.end12:                                         ; preds = %if.then6
  %incdec.ptr = getelementptr inbounds i8, i8* %pp.0, i32 1, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4036, metadata !DIExpression()), !dbg !4027
  br label %if.end13, !dbg !4065

if.end13:                                         ; preds = %if.end12, %if.end
  %pp.1 = phi i8* [ %incdec.ptr, %if.end12 ], [ %pp.0, %if.end ], !dbg !4040
  call void @llvm.dbg.value(metadata i8* %pp.1, metadata !4036, metadata !DIExpression()), !dbg !4027
  %incdec.ptr14 = getelementptr inbounds i8, i8* %pp.1, i32 1, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %incdec.ptr14, metadata !4036, metadata !DIExpression()), !dbg !4027
  br label %while.body, !dbg !4037, !llvm.loop !4067

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !4069

while_break:                                      ; preds = %while_break___1, %if.then11, %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %pp.0 to i64, !dbg !4070
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64, !dbg !4070
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4070
  %conv15 = trunc i64 %sub.ptr.sub to i32, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !4072, metadata !DIExpression()), !dbg !4027
  %4 = ptrtoint i32* %lptr to i64, !dbg !4073
  %cmp16 = icmp ne i64 %4, 0, !dbg !4075
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !4076

if.then18:                                        ; preds = %while_break
  %add = add nsw i32 %conv15, 1, !dbg !4077
  store i32 %add, i32* %lptr, align 4, !dbg !4079
  br label %if.end19, !dbg !4080

if.end19:                                         ; preds = %if.then18, %while_break
  %5 = ptrtoint i8* %buffer to i64, !dbg !4081
  %cmp20 = icmp eq i64 %5, 0, !dbg !4083
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !4084

if.then22:                                        ; preds = %if.end19
  %add23 = add nsw i32 %conv15, 1, !dbg !4085
  %call = call i8* @misc_malloc(i32 %add23), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %call, metadata !4090, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %call, metadata !4036, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %call, metadata !4091, metadata !DIExpression()), !dbg !4027
  br label %if.end30, !dbg !4092

if.else:                                          ; preds = %if.end19
  %add24 = add nsw i32 %conv15, 1, !dbg !4093
  %cmp25 = icmp sgt i32 %add24, %blength, !dbg !4096
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !4097

if.then27:                                        ; preds = %if.else
  %add28 = add nsw i32 %conv15, 1, !dbg !4098
  call void (i32, ...) @error(i32 20, i32 %add28, i32 %blength), !dbg !4102
  br label %if.end29, !dbg !4103

if.end29:                                         ; preds = %if.then27, %if.else
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !4036, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !4091, metadata !DIExpression()), !dbg !4027
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then22
  %pp.2 = phi i8* [ %call, %if.then22 ], [ %buffer, %if.end29 ], !dbg !4104
  %yield.0 = phi i8* [ %call, %if.then22 ], [ %buffer, %if.end29 ], !dbg !4104
  call void @llvm.dbg.value(metadata i8* %yield.0, metadata !4091, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %pp.2, metadata !4036, metadata !DIExpression()), !dbg !4027
  %incdec.ptr31 = getelementptr inbounds i8, i8* %p, i32 1, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31, metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %while.body32, !dbg !4106

while.body32:                                     ; preds = %if.end49, %if.end30
  %pp.3 = phi i8* [ %pp.2, %if.end30 ], [ %incdec.ptr50, %if.end49 ], !dbg !4040
  %p.addr.0 = phi i8* [ %incdec.ptr31, %if.end30 ], [ %incdec.ptr51, %if.end49 ], !dbg !4040
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %pp.3, metadata !4036, metadata !DIExpression()), !dbg !4027
  br label %while_continue___2, !dbg !4109

while_continue___2:                               ; preds = %while.body32
  br label %while_continue___0, !dbg !4109

while_continue___0:                               ; preds = %while_continue___2
  %6 = load i8, i8* %p.addr.0, align 1, !dbg !4110
  %conv33 = zext i8 %6 to i32, !dbg !4113
  %cmp34 = icmp eq i32 %conv33, 0, !dbg !4114
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !4115

if.then36:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !4116

if.end37:                                         ; preds = %while_continue___0
  %7 = load i8, i8* %p.addr.0, align 1, !dbg !4118
  %conv38 = zext i8 %7 to i32, !dbg !4120
  %cmp39 = icmp eq i32 %conv38, %conv, !dbg !4121
  br i1 %cmp39, label %if.then41, label %if.end49, !dbg !4122

if.then41:                                        ; preds = %if.end37
  %add.ptr42 = getelementptr inbounds i8, i8* %p.addr.0, i64 1, !dbg !4123
  %8 = load i8, i8* %add.ptr42, align 1, !dbg !4126
  %conv43 = zext i8 %8 to i32, !dbg !4127
  %cmp44 = icmp ne i32 %conv43, %conv, !dbg !4128
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !4129

if.then46:                                        ; preds = %if.then41
  br label %while_break___0, !dbg !4130

if.end47:                                         ; preds = %if.then41
  %incdec.ptr48 = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !4132
  call void @llvm.dbg.value(metadata i8* %incdec.ptr48, metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %if.end49, !dbg !4133

if.end49:                                         ; preds = %if.end47, %if.end37
  %p.addr.1 = phi i8* [ %incdec.ptr48, %if.end47 ], [ %p.addr.0, %if.end37 ], !dbg !4040
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %pp.3, metadata !4134, metadata !DIExpression()), !dbg !4027
  %incdec.ptr50 = getelementptr inbounds i8, i8* %pp.3, i32 1, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %incdec.ptr50, metadata !4036, metadata !DIExpression()), !dbg !4027
  %9 = load i8, i8* %p.addr.1, align 1, !dbg !4136
  store i8 %9, i8* %pp.3, align 1, !dbg !4137
  %incdec.ptr51 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %incdec.ptr51, metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %while.body32, !dbg !4106, !llvm.loop !4139

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !4141

while_break___0:                                  ; preds = %while_break___2, %if.then46, %if.then36
  store i8 0, i8* %pp.3, align 1, !dbg !4142
  ret i8* %yield.0, !dbg !4143
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_arg(i8* %p) #0 !dbg !4144 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.declare(metadata !4, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.declare(metadata !4, metadata !4149, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.declare(metadata !4, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !4153, metadata !DIExpression()), !dbg !4146
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4154
  %idxprom = sext i32 %0 to i64, !dbg !4157
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4157
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4157
  %cmp = icmp ne i32 %1, 1, !dbg !4158
  br i1 %cmp, label %if.then, label %if.end, !dbg !4159

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)), !dbg !4160
  br label %return, !dbg !4164

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !4165
  %conv = zext i8 %2 to i32, !dbg !4167
  %cmp1 = icmp eq i32 %conv, 45, !dbg !4168
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !4169

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !4153, metadata !DIExpression()), !dbg !4146
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i32 1, !dbg !4170
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4145, metadata !DIExpression()), !dbg !4146
  br label %if.end4, !dbg !4172

if.end4:                                          ; preds = %if.then3, %if.end
  %mustexist.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end ], !dbg !4173
  %p.addr.0 = phi i8* [ %incdec.ptr, %if.then3 ], [ %p, %if.end ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %mustexist.0, metadata !4153, metadata !DIExpression()), !dbg !4146
  %call = call i32 @readnumber(i8* %p.addr.0), !dbg !4174
  call void @llvm.dbg.value(metadata i32 %call, metadata !4177, metadata !DIExpression()), !dbg !4146
  %cmp5 = icmp slt i32 %call, 0, !dbg !4178
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4180

if.then7:                                         ; preds = %if.end4
  br label %return, !dbg !4181

if.end8:                                          ; preds = %if.end4
  %3 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !4183
  %args = getelementptr inbounds %struct.macroexe, %struct.macroexe* %3, i32 0, i32 2, !dbg !4184
  %4 = load %struct.argstr*, %struct.argstr** %args, align 8, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.argstr* %4, metadata !4185, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 1, metadata !4186, metadata !DIExpression()), !dbg !4146
  br label %while.body, !dbg !4187

while.body:                                       ; preds = %if.end16, %if.end8
  %i.0 = phi i32 [ 1, %if.end8 ], [ %inc, %if.end16 ], !dbg !4173
  %arg.0 = phi %struct.argstr* [ %4, %if.end8 ], [ %6, %if.end16 ], !dbg !4173
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.0, metadata !4185, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4186, metadata !DIExpression()), !dbg !4146
  br label %while_continue___0, !dbg !4190

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4190

while_continue:                                   ; preds = %while_continue___0
  %5 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !4191
  %cmp9 = icmp ne i64 %5, 0, !dbg !4194
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !4195

if.then11:                                        ; preds = %while_continue
  %cmp12 = icmp slt i32 %i.0, %call, !dbg !4196
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !4199

if.then14:                                        ; preds = %if.then11
  br label %while_break, !dbg !4200

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !4202

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !4203

if.end16:                                         ; preds = %if.end15
  %next = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.0, i32 0, i32 0, !dbg !4205
  %6 = load %struct.argstr*, %struct.argstr** %next, align 8, !dbg !4205
  call void @llvm.dbg.value(metadata %struct.argstr* %6, metadata !4185, metadata !DIExpression()), !dbg !4146
  %inc = add nsw i32 %i.0, 1, !dbg !4206
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4186, metadata !DIExpression()), !dbg !4146
  br label %while.body, !dbg !4187, !llvm.loop !4207

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4209

while_break:                                      ; preds = %while_break___0, %if.else, %if.then14
  %7 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !4210
  %cmp17 = icmp ne i64 %7, 0, !dbg !4212
  br i1 %cmp17, label %if.then19, label %if.else26, !dbg !4213

if.then19:                                        ; preds = %while_break
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.0, i32 0, i32 1, !dbg !4214
  %8 = load i8*, i8** %string, align 8, !dbg !4214
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 0, !dbg !4217
  %9 = load i8, i8* %add.ptr, align 1, !dbg !4218
  %conv20 = zext i8 %9 to i32, !dbg !4219
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !4220
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !4221

if.then23:                                        ; preds = %if.then19
  call void @llvm.dbg.value(metadata i32 1, metadata !4222, metadata !DIExpression()), !dbg !4146
  br label %if.end25, !dbg !4223

if.else24:                                        ; preds = %if.then19
  call void @llvm.dbg.value(metadata i32 0, metadata !4222, metadata !DIExpression()), !dbg !4146
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %tmp.0 = phi i32 [ 1, %if.then23 ], [ 0, %if.else24 ], !dbg !4225
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !4222, metadata !DIExpression()), !dbg !4146
  br label %if.end27, !dbg !4226

if.else26:                                        ; preds = %while_break
  call void @llvm.dbg.value(metadata i32 0, metadata !4222, metadata !DIExpression()), !dbg !4146
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.end25
  %tmp.1 = phi i32 [ %tmp.0, %if.end25 ], [ 0, %if.else26 ], !dbg !4227
  call void @llvm.dbg.value(metadata i32 %tmp.1, metadata !4222, metadata !DIExpression()), !dbg !4146
  %cmp28 = icmp ne i32 %mustexist.0, %tmp.1, !dbg !4228
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4213

if.then30:                                        ; preds = %if.end27
  call void @skipto(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)), !dbg !4230
  br label %if.end31, !dbg !4234

if.end31:                                         ; preds = %if.then30, %if.end27
  br label %return, !dbg !4235

return:                                           ; preds = %if.end31, %if.then7, %if.then
  ret void, !dbg !4236
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_eacharg(i8* %p) #0 !dbg !4237 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.declare(metadata !4, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.declare(metadata !4, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.declare(metadata !4, metadata !4244, metadata !DIExpression()), !dbg !4245
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4246
  %idxprom = sext i32 %0 to i64, !dbg !4249
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4249
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4249
  %cmp = icmp ne i32 %1, 1, !dbg !4250
  br i1 %cmp, label %if.then, label %if.end, !dbg !4251

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)), !dbg !4252
  br label %return, !dbg !4256

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !4257
  %conv = zext i8 %2 to i32, !dbg !4259
  %cmp1 = icmp eq i32 %conv, 0, !dbg !4260
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !4261

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !4262, metadata !DIExpression()), !dbg !4239
  br label %if.end4, !dbg !4263

if.else:                                          ; preds = %if.end
  %call = call i32 @readnumber(i8* %p), !dbg !4265
  call void @llvm.dbg.value(metadata i32 %call, metadata !4269, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 %call, metadata !4262, metadata !DIExpression()), !dbg !4239
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %argn.0 = phi i32 [ 1, %if.then3 ], [ %call, %if.else ], !dbg !4270
  call void @llvm.dbg.value(metadata i32 %argn.0, metadata !4262, metadata !DIExpression()), !dbg !4239
  %cmp5 = icmp slt i32 %argn.0, 0, !dbg !4271
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4273

if.then7:                                         ; preds = %if.end4
  br label %return, !dbg !4274

if.end8:                                          ; preds = %if.end4
  %3 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !4276
  %args = getelementptr inbounds %struct.macroexe, %struct.macroexe* %3, i32 0, i32 2, !dbg !4277
  %4 = load %struct.argstr*, %struct.argstr** %args, align 8, !dbg !4277
  call void @llvm.dbg.value(metadata %struct.argstr* %4, metadata !4278, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4239
  br label %while.body, !dbg !4280

while.body:                                       ; preds = %if.end17, %if.end8
  %arg.0 = phi %struct.argstr* [ %4, %if.end8 ], [ %6, %if.end17 ], !dbg !4283
  %i.0 = phi i32 [ 1, %if.end8 ], [ %inc, %if.end17 ], !dbg !4283
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4279, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata %struct.argstr* %arg.0, metadata !4278, metadata !DIExpression()), !dbg !4239
  br label %while_continue___0, !dbg !4284

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4284

while_continue:                                   ; preds = %while_continue___0
  %5 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !4285
  %cmp9 = icmp ne i64 %5, 0, !dbg !4288
  br i1 %cmp9, label %if.then11, label %if.else16, !dbg !4289

if.then11:                                        ; preds = %while_continue
  %cmp12 = icmp slt i32 %i.0, %argn.0, !dbg !4290
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !4293

if.then14:                                        ; preds = %if.then11
  br label %while_break, !dbg !4294

if.end15:                                         ; preds = %if.then11
  br label %if.end17, !dbg !4296

if.else16:                                        ; preds = %while_continue
  br label %while_break, !dbg !4297

if.end17:                                         ; preds = %if.end15
  %next = getelementptr inbounds %struct.argstr, %struct.argstr* %arg.0, i32 0, i32 0, !dbg !4299
  %6 = load %struct.argstr*, %struct.argstr** %next, align 8, !dbg !4299
  call void @llvm.dbg.value(metadata %struct.argstr* %6, metadata !4278, metadata !DIExpression()), !dbg !4239
  %inc = add nsw i32 %i.0, 1, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4279, metadata !DIExpression()), !dbg !4239
  br label %while.body, !dbg !4280, !llvm.loop !4301

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4303

while_break:                                      ; preds = %while_break___0, %if.else16, %if.then14
  %7 = ptrtoint %struct.argstr* %arg.0 to i64, !dbg !4304
  %cmp18 = icmp eq i64 %7, 0, !dbg !4306
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !4307

if.then20:                                        ; preds = %while_break
  call void @skipto(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)), !dbg !4308
  br label %if.end22, !dbg !4312

if.else21:                                        ; preds = %while_break
  store %struct.argstr* %arg.0, %struct.argstr** @macro_argbase, align 8, !dbg !4313
  %8 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !4315
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %8, i32 0, i32 3, !dbg !4316
  %9 = load %struct.argstr*, %struct.argstr** %nextline, align 8, !dbg !4316
  store %struct.argstr* %9, %struct.argstr** @macro_starteach, align 8, !dbg !4317
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  br label %return, !dbg !4318

return:                                           ; preds = %if.end22, %if.then7, %if.then
  ret void, !dbg !4319
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_echo(i8* %p) #0 !dbg !4320 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata !4, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4325
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %p), !dbg !4329
  ret void, !dbg !4330
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_endarg(i8* %p) #0 !dbg !4331 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.declare(metadata !4, metadata !4334, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.declare(metadata !4, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4338
  %idxprom = sext i32 %0 to i64, !dbg !4341
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4341
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4341
  %cmp = icmp ne i32 %1, 1, !dbg !4342
  br i1 %cmp, label %if.then, label %if.end, !dbg !4343

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)), !dbg !4344
  br label %return, !dbg !4348

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !4349
  %conv = zext i8 %2 to i32, !dbg !4351
  %cmp1 = icmp ne i32 %conv, 0, !dbg !4352
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !4353

if.then3:                                         ; preds = %if.end
  %call = call i32 @strlen(i8* %p) #9, !dbg !4354
  call void @llvm.dbg.value(metadata i32 %call, metadata !4358, metadata !DIExpression()), !dbg !4333
  %3 = load i8*, i8** @spaces, align 8, !dbg !4359
  %4 = load i8*, i8** @circumflexes, align 8, !dbg !4361
  call void (i32, ...) @error(i32 19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* %p, i32 8, i8* %3, i32 %call, i8* %4), !dbg !4362
  br label %if.end4, !dbg !4363

if.end4:                                          ; preds = %if.then3, %if.end
  br label %return, !dbg !4364

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !4365
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_endeach(i8* %p) #0 !dbg !4366 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata !4, metadata !4369, metadata !DIExpression()), !dbg !4370
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4371
  %idxprom = sext i32 %0 to i64, !dbg !4374
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4374
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4374
  %cmp = icmp ne i32 %1, 1, !dbg !4375
  br i1 %cmp, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)), !dbg !4377
  br label %return, !dbg !4381

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !4382
  %conv = zext i8 %2 to i32, !dbg !4384
  %cmp1 = icmp eq i32 %conv, 0, !dbg !4385
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !4386

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !4387, metadata !DIExpression()), !dbg !4368
  br label %if.end4, !dbg !4388

if.else:                                          ; preds = %if.end
  %call = call i32 @readnumber(i8* %p), !dbg !4390
  call void @llvm.dbg.value(metadata i32 %call, metadata !4394, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i32 %call, metadata !4387, metadata !DIExpression()), !dbg !4368
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %count.0 = phi i32 [ 1, %if.then3 ], [ %call, %if.else ], !dbg !4395
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !4387, metadata !DIExpression()), !dbg !4368
  %cmp5 = icmp slt i32 %count.0, 0, !dbg !4396
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4398

if.then7:                                         ; preds = %if.end4
  br label %return, !dbg !4399

if.end8:                                          ; preds = %if.end4
  br label %while.body, !dbg !4401

while.body:                                       ; preds = %if.end17, %if.end8
  %count.1 = phi i32 [ %count.0, %if.end8 ], [ %dec, %if.end17 ], !dbg !4404
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !4387, metadata !DIExpression()), !dbg !4368
  br label %while_continue___0, !dbg !4405

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4405

while_continue:                                   ; preds = %while_continue___0
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !4406, metadata !DIExpression()), !dbg !4368
  %dec = add nsw i32 %count.1, -1, !dbg !4407
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4387, metadata !DIExpression()), !dbg !4368
  %cmp9 = icmp sgt i32 %count.1, 0, !dbg !4409
  br i1 %cmp9, label %if.then11, label %if.else16, !dbg !4411

if.then11:                                        ; preds = %while_continue
  %3 = load %struct.argstr*, %struct.argstr** @macro_argbase, align 8, !dbg !4412
  %4 = ptrtoint %struct.argstr* %3 to i64, !dbg !4415
  %cmp12 = icmp ne i64 %4, 0, !dbg !4416
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !4417

if.then14:                                        ; preds = %if.then11
  br label %while_break, !dbg !4418

if.end15:                                         ; preds = %if.then11
  br label %if.end17, !dbg !4420

if.else16:                                        ; preds = %while_continue
  br label %while_break, !dbg !4421

if.end17:                                         ; preds = %if.end15
  %5 = load %struct.argstr*, %struct.argstr** @macro_argbase, align 8, !dbg !4423
  %next = getelementptr inbounds %struct.argstr, %struct.argstr* %5, i32 0, i32 0, !dbg !4424
  %6 = load %struct.argstr*, %struct.argstr** %next, align 8, !dbg !4424
  store %struct.argstr* %6, %struct.argstr** @macro_argbase, align 8, !dbg !4425
  br label %while.body, !dbg !4401, !llvm.loop !4426

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4428

while_break:                                      ; preds = %while_break___0, %if.else16, %if.then14
  %7 = load %struct.argstr*, %struct.argstr** @macro_argbase, align 8, !dbg !4429
  %8 = ptrtoint %struct.argstr* %7 to i64, !dbg !4431
  %cmp18 = icmp eq i64 %8, 0, !dbg !4432
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !4433

if.then20:                                        ; preds = %while_break
  store %struct.argstr* null, %struct.argstr** @macro_starteach, align 8, !dbg !4434
  br label %if.end22, !dbg !4436

if.else21:                                        ; preds = %while_break
  %9 = load %struct.argstr*, %struct.argstr** @macro_starteach, align 8, !dbg !4437
  %10 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !4439
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %10, i32 0, i32 3, !dbg !4440
  store %struct.argstr* %9, %struct.argstr** %nextline, align 8, !dbg !4441
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  br label %return, !dbg !4442

return:                                           ; preds = %if.end22, %if.then7, %if.then
  ret void, !dbg !4443
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_endinliteral(i8* %p) #0 !dbg !4444 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4445, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.declare(metadata !4, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.declare(metadata !4, metadata !4449, metadata !DIExpression()), !dbg !4450
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4451
  %idxprom = sext i32 %0 to i64, !dbg !4454
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4454
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4454
  %cmp = icmp ne i32 %1, 1, !dbg !4455
  br i1 %cmp, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0)), !dbg !4457
  br label %return, !dbg !4461

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %p, align 1, !dbg !4462
  %conv = zext i8 %2 to i32, !dbg !4464
  %cmp1 = icmp ne i32 %conv, 0, !dbg !4465
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !4466

if.then3:                                         ; preds = %if.end
  %call = call i32 @strlen(i8* %p) #9, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %call, metadata !4471, metadata !DIExpression()), !dbg !4446
  %3 = load i8*, i8** @spaces, align 8, !dbg !4472
  %4 = load i8*, i8** @circumflexes, align 8, !dbg !4474
  call void (i32, ...) @error(i32 19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* %p, i32 8, i8* %3, i32 %call, i8* %4), !dbg !4475
  br label %if.end4, !dbg !4476

if.end4:                                          ; preds = %if.then3, %if.end
  br label %return, !dbg !4477

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !4478
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_flag(i8* %p) #0 !dbg !4479 {
entry:
  %length = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !4480, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.declare(metadata i32* %length, metadata !4482, metadata !DIExpression()), !dbg !4483
  %call = call i8* @misc_malloc(i32 56), !dbg !4484
  call void @llvm.dbg.value(metadata i8* %call, metadata !4488, metadata !DIExpression()), !dbg !4481
  %0 = bitcast i8* %call to %struct.flagstr*, !dbg !4489
  call void @llvm.dbg.value(metadata %struct.flagstr* %0, metadata !4490, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i8* %p, metadata !4491, metadata !DIExpression()), !dbg !4481
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i32 1, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4480, metadata !DIExpression()), !dbg !4481
  %1 = load i8, i8* %p, align 1, !dbg !4493
  %conv = zext i8 %1 to i32, !dbg !4495
  %cmp = icmp ne i32 %conv, 38, !dbg !4496
  br i1 %cmp, label %if.then, label %if.end, !dbg !4497

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 9), !dbg !4498
  br label %return, !dbg !4502

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while.body, !dbg !4504

while.body:                                       ; preds = %if.end11, %if.end
  %pp.0 = phi i8* [ %incdec.ptr, %if.end ], [ %incdec.ptr12, %if.end11 ], !dbg !4507
  call void @llvm.dbg.value(metadata i8* %pp.0, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while_continue___5, !dbg !4508

while_continue___5:                               ; preds = %while.body
  br label %while_continue, !dbg !4508

while_continue:                                   ; preds = %while_continue___5
  %2 = load i8, i8* %pp.0, align 1, !dbg !4509
  %conv2 = zext i8 %2 to i32, !dbg !4512
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !4513
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !4514

if.then5:                                         ; preds = %while_continue
  %call6 = call i16** @__ctype_b_loc() #8, !dbg !4515
  call void @llvm.dbg.value(metadata i16** %call6, metadata !4519, metadata !DIExpression()), !dbg !4481
  %3 = load i16*, i16** %call6, align 8, !dbg !4520
  %4 = load i8, i8* %pp.0, align 1, !dbg !4522
  %conv7 = zext i8 %4 to i32, !dbg !4523
  %idx.ext = sext i32 %conv7 to i64, !dbg !4524
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %idx.ext, !dbg !4524
  %5 = load i16, i16* %add.ptr, align 2, !dbg !4525
  %conv8 = zext i16 %5 to i32, !dbg !4526
  %and = and i32 %conv8, 8192, !dbg !4527
  %tobool = icmp ne i32 %and, 0, !dbg !4527
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !4528

if.then9:                                         ; preds = %if.then5
  br label %while_break, !dbg !4529

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !4531

if.else:                                          ; preds = %while_continue
  br label %while_break, !dbg !4532

if.end11:                                         ; preds = %if.end10
  %incdec.ptr12 = getelementptr inbounds i8, i8* %pp.0, i32 1, !dbg !4534
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while.body, !dbg !4504, !llvm.loop !4535

while_break___5:                                  ; No predecessors!
  br label %while_break, !dbg !4537

while_break:                                      ; preds = %while_break___5, %if.else, %if.then9
  %sub.ptr.lhs.cast = ptrtoint i8* %pp.0 to i64, !dbg !4538
  %sub.ptr.rhs.cast = ptrtoint i8* %incdec.ptr to i64, !dbg !4538
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4538
  %conv13 = trunc i64 %sub.ptr.sub to i32, !dbg !4539
  store i32 %conv13, i32* %length, align 4, !dbg !4540
  %6 = load i32, i32* %length, align 4, !dbg !4541
  %cmp14 = icmp eq i32 %6, 0, !dbg !4543
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !4544

if.then16:                                        ; preds = %while_break
  call void (i32, ...) @error(i32 10), !dbg !4545
  br label %return, !dbg !4549

if.end17:                                         ; preds = %while_break
  %7 = load i32, i32* %length, align 4, !dbg !4550
  %length1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 1, !dbg !4552
  store i32 %7, i32* %length1, align 8, !dbg !4553
  %8 = load i32, i32* %length, align 4, !dbg !4554
  %call18 = call i8* @misc_copystring(i8* %incdec.ptr, i32 %8), !dbg !4556
  %flag1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 2, !dbg !4557
  store i8* %call18, i8** %flag1, align 8, !dbg !4558
  %call19 = call i32 @strlen(i8* %pp.0) #9, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %call19, metadata !4561, metadata !DIExpression()), !dbg !4481
  %idx.ext20 = sext i32 %call19 to i64, !dbg !4562
  %add.ptr21 = getelementptr inbounds i8, i8* %pp.0, i64 %idx.ext20, !dbg !4562
  call void @llvm.dbg.value(metadata i8* %add.ptr21, metadata !4563, metadata !DIExpression()), !dbg !4481
  %incdec.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i32 -1, !dbg !4564
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, metadata !4563, metadata !DIExpression()), !dbg !4481
  %9 = load i8, i8* %incdec.ptr22, align 1, !dbg !4565
  %conv23 = zext i8 %9 to i32, !dbg !4567
  %cmp24 = icmp ne i32 %conv23, 34, !dbg !4568
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !4569

if.then26:                                        ; preds = %if.end17
  %10 = load i8, i8* %incdec.ptr22, align 1, !dbg !4570
  %conv27 = zext i8 %10 to i32, !dbg !4573
  %cmp28 = icmp ne i32 %conv27, 39, !dbg !4574
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4575

if.then30:                                        ; preds = %if.then26
  %11 = load i8*, i8** @thisdir, align 8, !dbg !4576
  call void (i32, ...) @error(i32 11, i8* %11), !dbg !4580
  br label %return, !dbg !4581

if.end31:                                         ; preds = %if.then26
  br label %if.end32, !dbg !4582

if.end32:                                         ; preds = %if.end31, %if.end17
  %12 = load i8, i8* %incdec.ptr22, align 1, !dbg !4583
  %conv33 = zext i8 %12 to i32, !dbg !4584
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !4585, metadata !DIExpression()), !dbg !4481
  br label %while.body34, !dbg !4586

while.body34:                                     ; preds = %if.end52, %if.end32
  %q.0 = phi i8* [ %incdec.ptr22, %if.end32 ], [ %q.1, %if.end52 ], !dbg !4507
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !4563, metadata !DIExpression()), !dbg !4481
  br label %while_continue___6, !dbg !4589

while_continue___6:                               ; preds = %while.body34
  br label %while_continue___0, !dbg !4589

while_continue___0:                               ; preds = %while_continue___6
  %incdec.ptr35 = getelementptr inbounds i8, i8* %q.0, i32 -1, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %incdec.ptr35, metadata !4563, metadata !DIExpression()), !dbg !4481
  %13 = ptrtoint i8* %incdec.ptr35 to i64, !dbg !4592
  %14 = ptrtoint i8* %pp.0 to i64, !dbg !4594
  %cmp36 = icmp ugt i64 %13, %14, !dbg !4595
  br i1 %cmp36, label %if.end39, label %if.then38, !dbg !4596

if.then38:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !4597

if.end39:                                         ; preds = %while_continue___0
  %15 = load i8, i8* %incdec.ptr35, align 1, !dbg !4599
  %conv40 = zext i8 %15 to i32, !dbg !4601
  %cmp41 = icmp eq i32 %conv40, %conv33, !dbg !4602
  br i1 %cmp41, label %if.then43, label %if.end52, !dbg !4603

if.then43:                                        ; preds = %if.end39
  %add.ptr44 = getelementptr inbounds i8, i8* %incdec.ptr35, i64 -1, !dbg !4604
  %16 = load i8, i8* %add.ptr44, align 1, !dbg !4607
  %conv45 = zext i8 %16 to i32, !dbg !4608
  %cmp46 = icmp eq i32 %conv45, %conv33, !dbg !4609
  br i1 %cmp46, label %if.then48, label %if.else50, !dbg !4610

if.then48:                                        ; preds = %if.then43
  %incdec.ptr49 = getelementptr inbounds i8, i8* %incdec.ptr35, i32 -1, !dbg !4611
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !4563, metadata !DIExpression()), !dbg !4481
  br label %if.end51, !dbg !4613

if.else50:                                        ; preds = %if.then43
  br label %while_break___0, !dbg !4614

if.end51:                                         ; preds = %if.then48
  br label %if.end52, !dbg !4616

if.end52:                                         ; preds = %if.end51, %if.end39
  %q.1 = phi i8* [ %incdec.ptr49, %if.end51 ], [ %incdec.ptr35, %if.end39 ], !dbg !4617
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !4563, metadata !DIExpression()), !dbg !4481
  br label %while.body34, !dbg !4586, !llvm.loop !4618

while_break___6:                                  ; No predecessors!
  br label %while_break___0, !dbg !4620

while_break___0:                                  ; preds = %while_break___6, %if.else50, %if.then38
  %17 = ptrtoint i8* %incdec.ptr35 to i64, !dbg !4621
  %18 = ptrtoint i8* %pp.0 to i64, !dbg !4623
  %cmp53 = icmp ule i64 %17, %18, !dbg !4624
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !4625

if.then55:                                        ; preds = %while_break___0
  %19 = load i8*, i8** @thisdir, align 8, !dbg !4626
  call void (i32, ...) @error(i32 11, i8* %19), !dbg !4630
  br label %return, !dbg !4631

if.end56:                                         ; preds = %while_break___0
  br label %while.body57, !dbg !4632

while.body57:                                     ; preds = %if.end66, %if.end56
  %pp.1 = phi i8* [ %pp.0, %if.end56 ], [ %incdec.ptr67, %if.end66 ], !dbg !4507
  call void @llvm.dbg.value(metadata i8* %pp.1, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while_continue___7, !dbg !4635

while_continue___7:                               ; preds = %while.body57
  br label %while_continue___1, !dbg !4635

while_continue___1:                               ; preds = %while_continue___7
  %call58 = call i16** @__ctype_b_loc() #8, !dbg !4636
  call void @llvm.dbg.value(metadata i16** %call58, metadata !4640, metadata !DIExpression()), !dbg !4481
  %20 = load i16*, i16** %call58, align 8, !dbg !4641
  %21 = load i8, i8* %pp.1, align 1, !dbg !4643
  %conv59 = zext i8 %21 to i32, !dbg !4644
  %idx.ext60 = sext i32 %conv59 to i64, !dbg !4645
  %add.ptr61 = getelementptr inbounds i16, i16* %20, i64 %idx.ext60, !dbg !4645
  %22 = load i16, i16* %add.ptr61, align 2, !dbg !4646
  %conv62 = zext i16 %22 to i32, !dbg !4647
  %and63 = and i32 %conv62, 8192, !dbg !4648
  %tobool64 = icmp ne i32 %and63, 0, !dbg !4648
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !4649

if.then65:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !4650

if.end66:                                         ; preds = %while_continue___1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %pp.1, i32 1, !dbg !4652
  call void @llvm.dbg.value(metadata i8* %incdec.ptr67, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while.body57, !dbg !4632, !llvm.loop !4653

while_break___7:                                  ; No predecessors!
  br label %while_break___1, !dbg !4655

while_break___1:                                  ; preds = %while_break___7, %if.then65
  %23 = ptrtoint i8* %pp.1 to i64, !dbg !4656
  %24 = ptrtoint i8* %incdec.ptr35 to i64, !dbg !4658
  %cmp68 = icmp eq i64 %23, %24, !dbg !4659
  br i1 %cmp68, label %if.then70, label %if.else72, !dbg !4660

if.then70:                                        ; preds = %while_break___1
  %call71 = call i8* @misc_readstring(i8* %incdec.ptr35, i32* null, i8* null, i32 0), !dbg !4661
  %rep1 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 3, !dbg !4665
  store i8* %call71, i8** %rep1, align 8, !dbg !4666
  %length2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 4, !dbg !4667
  store i32 0, i32* %length2, align 8, !dbg !4668
  call void @llvm.dbg.value(metadata i8* null, metadata !4669, metadata !DIExpression()), !dbg !4481
  %rep2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 6, !dbg !4670
  store i8* null, i8** %rep2, align 8, !dbg !4671
  %flag2 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 5, !dbg !4670
  store i8* null, i8** %flag2, align 8, !dbg !4672
  br label %if.end132, !dbg !4673

if.else72:                                        ; preds = %while_break___1
  %call73 = call i8* @misc_readstring(i8* %incdec.ptr35, i32* null, i8* null, i32 0), !dbg !4674
  %rep274 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 6, !dbg !4678
  store i8* %call73, i8** %rep274, align 8, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %pp.1, metadata !4480, metadata !DIExpression()), !dbg !4481
  br label %while.body75, !dbg !4680

while.body75:                                     ; preds = %if.end90, %if.else72
  %pp.2 = phi i8* [ %pp.1, %if.else72 ], [ %incdec.ptr91, %if.end90 ], !dbg !4507
  call void @llvm.dbg.value(metadata i8* %pp.2, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while_continue___8, !dbg !4683

while_continue___8:                               ; preds = %while.body75
  br label %while_continue___2, !dbg !4683

while_continue___2:                               ; preds = %while_continue___8
  %25 = load i8, i8* %pp.2, align 1, !dbg !4684
  %conv76 = zext i8 %25 to i32, !dbg !4687
  %cmp77 = icmp ne i32 %conv76, 0, !dbg !4688
  br i1 %cmp77, label %if.then79, label %if.else89, !dbg !4689

if.then79:                                        ; preds = %while_continue___2
  %call80 = call i16** @__ctype_b_loc() #8, !dbg !4690
  call void @llvm.dbg.value(metadata i16** %call80, metadata !4694, metadata !DIExpression()), !dbg !4481
  %26 = load i16*, i16** %call80, align 8, !dbg !4695
  %27 = load i8, i8* %pp.2, align 1, !dbg !4697
  %conv81 = zext i8 %27 to i32, !dbg !4698
  %idx.ext82 = sext i32 %conv81 to i64, !dbg !4699
  %add.ptr83 = getelementptr inbounds i16, i16* %26, i64 %idx.ext82, !dbg !4699
  %28 = load i16, i16* %add.ptr83, align 2, !dbg !4700
  %conv84 = zext i16 %28 to i32, !dbg !4701
  %and85 = and i32 %conv84, 8192, !dbg !4702
  %tobool86 = icmp ne i32 %and85, 0, !dbg !4702
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !4703

if.then87:                                        ; preds = %if.then79
  br label %while_break___2, !dbg !4704

if.end88:                                         ; preds = %if.then79
  br label %if.end90, !dbg !4706

if.else89:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !4707

if.end90:                                         ; preds = %if.end88
  %incdec.ptr91 = getelementptr inbounds i8, i8* %pp.2, i32 1, !dbg !4709
  call void @llvm.dbg.value(metadata i8* %incdec.ptr91, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while.body75, !dbg !4680, !llvm.loop !4710

while_break___8:                                  ; No predecessors!
  br label %while_break___2, !dbg !4712

while_break___2:                                  ; preds = %while_break___8, %if.else89, %if.then87
  %sub.ptr.lhs.cast92 = ptrtoint i8* %pp.2 to i64, !dbg !4713
  %sub.ptr.rhs.cast93 = ptrtoint i8* %pp.1 to i64, !dbg !4713
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93, !dbg !4713
  %conv95 = trunc i64 %sub.ptr.sub94 to i32, !dbg !4714
  store i32 %conv95, i32* %length, align 4, !dbg !4715
  %29 = load i32, i32* %length, align 4, !dbg !4716
  %cmp96 = icmp eq i32 %29, 0, !dbg !4718
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !4719

if.then98:                                        ; preds = %while_break___2
  call void (i32, ...) @error(i32 10), !dbg !4720
  br label %return, !dbg !4724

if.end99:                                         ; preds = %while_break___2
  %30 = load i32, i32* %length, align 4, !dbg !4725
  %length2100 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 4, !dbg !4727
  store i32 %30, i32* %length2100, align 8, !dbg !4728
  %31 = load i32, i32* %length, align 4, !dbg !4729
  %call101 = call i8* @misc_copystring(i8* %pp.1, i32 %31), !dbg !4731
  %flag2102 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 5, !dbg !4732
  store i8* %call101, i8** %flag2102, align 8, !dbg !4733
  br label %while.body103, !dbg !4734

while.body103:                                    ; preds = %if.end112, %if.end99
  %pp.3 = phi i8* [ %pp.2, %if.end99 ], [ %incdec.ptr113, %if.end112 ], !dbg !4507
  call void @llvm.dbg.value(metadata i8* %pp.3, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while_continue___9, !dbg !4737

while_continue___9:                               ; preds = %while.body103
  br label %while_continue___3, !dbg !4737

while_continue___3:                               ; preds = %while_continue___9
  %call104 = call i16** @__ctype_b_loc() #8, !dbg !4738
  call void @llvm.dbg.value(metadata i16** %call104, metadata !4742, metadata !DIExpression()), !dbg !4481
  %32 = load i16*, i16** %call104, align 8, !dbg !4743
  %33 = load i8, i8* %pp.3, align 1, !dbg !4745
  %conv105 = zext i8 %33 to i32, !dbg !4746
  %idx.ext106 = sext i32 %conv105 to i64, !dbg !4747
  %add.ptr107 = getelementptr inbounds i16, i16* %32, i64 %idx.ext106, !dbg !4747
  %34 = load i16, i16* %add.ptr107, align 2, !dbg !4748
  %conv108 = zext i16 %34 to i32, !dbg !4749
  %and109 = and i32 %conv108, 8192, !dbg !4750
  %tobool110 = icmp ne i32 %and109, 0, !dbg !4750
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !4751

if.then111:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !4752

if.end112:                                        ; preds = %while_continue___3
  %incdec.ptr113 = getelementptr inbounds i8, i8* %pp.3, i32 1, !dbg !4754
  call void @llvm.dbg.value(metadata i8* %incdec.ptr113, metadata !4503, metadata !DIExpression()), !dbg !4481
  br label %while.body103, !dbg !4734, !llvm.loop !4755

while_break___9:                                  ; No predecessors!
  br label %while_break___3, !dbg !4757

while_break___3:                                  ; preds = %while_break___9, %if.then111
  %35 = load i8, i8* %pp.3, align 1, !dbg !4758
  %conv114 = zext i8 %35 to i32, !dbg !4760
  %cmp115 = icmp ne i32 %conv114, 34, !dbg !4761
  br i1 %cmp115, label %if.then117, label %if.end123, !dbg !4762

if.then117:                                       ; preds = %while_break___3
  %36 = load i8, i8* %pp.3, align 1, !dbg !4763
  %conv118 = zext i8 %36 to i32, !dbg !4766
  %cmp119 = icmp ne i32 %conv118, 39, !dbg !4767
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !4768

if.then121:                                       ; preds = %if.then117
  %37 = load i8*, i8** @thisdir, align 8, !dbg !4769
  call void (i32, ...) @error(i32 11, i8* %37), !dbg !4773
  br label %return, !dbg !4774

if.end122:                                        ; preds = %if.then117
  br label %if.end123, !dbg !4775

if.end123:                                        ; preds = %if.end122, %while_break___3
  %call124 = call i8* @misc_readstring(i8* %pp.3, i32* %length, i8* null, i32 0), !dbg !4776
  %rep1125 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 3, !dbg !4779
  store i8* %call124, i8** %rep1125, align 8, !dbg !4780
  %38 = load i32, i32* %length, align 4, !dbg !4781
  %idx.ext126 = sext i32 %38 to i64, !dbg !4783
  %add.ptr127 = getelementptr inbounds i8, i8* %pp.3, i64 %idx.ext126, !dbg !4783
  %39 = ptrtoint i8* %add.ptr127 to i64, !dbg !4784
  %40 = ptrtoint i8* %incdec.ptr35 to i64, !dbg !4785
  %cmp128 = icmp uge i64 %39, %40, !dbg !4786
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !4787

if.then130:                                       ; preds = %if.end123
  %41 = load i8*, i8** @thisdir, align 8, !dbg !4788
  call void (i32, ...) @error(i32 11, i8* %41), !dbg !4792
  br label %return, !dbg !4793

if.end131:                                        ; preds = %if.end123
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then70
  call void @llvm.dbg.value(metadata %struct.flagstr** @flaglist, metadata !4794, metadata !DIExpression()), !dbg !4481
  br label %while.body133, !dbg !4796

while.body133:                                    ; preds = %if.end144, %if.end132
  %ff.0 = phi %struct.flagstr** [ @flaglist, %if.end132 ], [ %next, %if.end144 ], !dbg !4507
  call void @llvm.dbg.value(metadata %struct.flagstr** %ff.0, metadata !4794, metadata !DIExpression()), !dbg !4481
  br label %while_continue___10, !dbg !4799

while_continue___10:                              ; preds = %while.body133
  br label %while_continue___4, !dbg !4799

while_continue___4:                               ; preds = %while_continue___10
  %42 = load %struct.flagstr*, %struct.flagstr** %ff.0, align 8, !dbg !4800
  %43 = ptrtoint %struct.flagstr* %42 to i64, !dbg !4803
  %cmp134 = icmp ne i64 %43, 0, !dbg !4804
  br i1 %cmp134, label %if.then136, label %if.else143, !dbg !4805

if.then136:                                       ; preds = %while_continue___4
  %length1137 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 1, !dbg !4806
  %44 = load i32, i32* %length1137, align 8, !dbg !4806
  %45 = load %struct.flagstr*, %struct.flagstr** %ff.0, align 8, !dbg !4809
  %length1138 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %45, i32 0, i32 1, !dbg !4810
  %46 = load i32, i32* %length1138, align 8, !dbg !4810
  %cmp139 = icmp slt i32 %44, %46, !dbg !4811
  br i1 %cmp139, label %if.end142, label %if.then141, !dbg !4812

if.then141:                                       ; preds = %if.then136
  br label %while_break___4, !dbg !4813

if.end142:                                        ; preds = %if.then136
  br label %if.end144, !dbg !4815

if.else143:                                       ; preds = %while_continue___4
  br label %while_break___4, !dbg !4816

if.end144:                                        ; preds = %if.end142
  %47 = load %struct.flagstr*, %struct.flagstr** %ff.0, align 8, !dbg !4818
  %next = getelementptr inbounds %struct.flagstr, %struct.flagstr* %47, i32 0, i32 0, !dbg !4819
  call void @llvm.dbg.value(metadata %struct.flagstr** %next, metadata !4794, metadata !DIExpression()), !dbg !4481
  br label %while.body133, !dbg !4796, !llvm.loop !4820

while_break___10:                                 ; No predecessors!
  br label %while_break___4, !dbg !4822

while_break___4:                                  ; preds = %while_break___10, %if.else143, %if.then141
  %48 = load %struct.flagstr*, %struct.flagstr** %ff.0, align 8, !dbg !4823
  %next145 = getelementptr inbounds %struct.flagstr, %struct.flagstr* %0, i32 0, i32 0, !dbg !4824
  store %struct.flagstr* %48, %struct.flagstr** %next145, align 8, !dbg !4825
  store %struct.flagstr* %0, %struct.flagstr** %ff.0, align 8, !dbg !4826
  br label %return, !dbg !4827

return:                                           ; preds = %while_break___4, %if.then130, %if.then121, %if.then98, %if.then55, %if.then30, %if.then16, %if.then
  ret void, !dbg !4828
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_include(i8* %p) #0 !dbg !4829 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata !4, metadata !4832, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.declare(metadata !4, metadata !4834, metadata !DIExpression()), !dbg !4835
  %call = call i8* @misc_malloc(i32 280), !dbg !4836
  call void @llvm.dbg.value(metadata i8* %call, metadata !4840, metadata !DIExpression()), !dbg !4831
  %0 = bitcast i8* %call to %struct.istackstr*, !dbg !4841
  call void @llvm.dbg.value(metadata %struct.istackstr* %0, metadata !4842, metadata !DIExpression()), !dbg !4831
  %1 = load %struct.istackstr*, %struct.istackstr** @istack, align 8, !dbg !4843
  %prev = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 0, !dbg !4844
  store %struct.istackstr* %1, %struct.istackstr** %prev, align 8, !dbg !4845
  store %struct.istackstr* %0, %struct.istackstr** @istack, align 8, !dbg !4846
  %linenumber = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 1, !dbg !4847
  store i32 0, i32* %linenumber, align 8, !dbg !4848
  %call1 = call i8* @strchr(i8* %p, i32 47) #9, !dbg !4849
  call void @llvm.dbg.value(metadata i8* %call1, metadata !4851, metadata !DIExpression()), !dbg !4831
  %2 = ptrtoint i8* %call1 to i64, !dbg !4852
  %cmp = icmp ne i64 %2, 0, !dbg !4854
  br i1 %cmp, label %if.then, label %if.else, !dbg !4855

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 3, !dbg !4856
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %filename, i32 0, i32 0, !dbg !4860
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* %p) #6, !dbg !4861
  br label %if.end, !dbg !4862

if.else:                                          ; preds = %entry
  %filename3 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 3, !dbg !4863
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %filename3, i32 0, i32 0, !dbg !4867
  %3 = load i8*, i8** @xfpt_share, align 8, !dbg !4868
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* %3, i8* %p) #6, !dbg !4869
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %filename6 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 3, !dbg !4870
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %filename6, i32 0, i32 0, !dbg !4873
  %call8 = call %struct._IO_FILE* @fopen(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !4874
  %file = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 2, !dbg !4875
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %file, align 8, !dbg !4876
  %file9 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 2, !dbg !4877
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file9, align 8, !dbg !4877
  %5 = ptrtoint %struct._IO_FILE* %4 to i64, !dbg !4879
  %cmp10 = icmp eq i64 %5, 0, !dbg !4880
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !4881

if.then11:                                        ; preds = %if.end
  %call12 = call i32* @__errno_location() #8, !dbg !4882
  call void @llvm.dbg.value(metadata i32* %call12, metadata !4886, metadata !DIExpression()), !dbg !4831
  %6 = load i32, i32* %call12, align 4, !dbg !4887
  %call13 = call i8* @strerror(i32 %6) #6, !dbg !4889
  call void @llvm.dbg.value(metadata i8* %call13, metadata !4890, metadata !DIExpression()), !dbg !4831
  %filename14 = getelementptr inbounds %struct.istackstr, %struct.istackstr* %0, i32 0, i32 3, !dbg !4891
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %filename14, i32 0, i32 0, !dbg !4893
  call void (i32, ...) @error(i32 0, i8* %arraydecay15, i8* %call13), !dbg !4894
  br label %if.end16, !dbg !4895

if.end16:                                         ; preds = %if.then11, %if.end
  %7 = load i32, i32* @from_type_ptr, align 4, !dbg !4896
  %inc = add nsw i32 %7, 1, !dbg !4896
  store i32 %inc, i32* @from_type_ptr, align 4, !dbg !4896
  %8 = load i32, i32* @from_type_ptr, align 4, !dbg !4897
  %idxprom = sext i32 %8 to i64, !dbg !4898
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4898
  store i32 0, i32* %arrayidx, align 4, !dbg !4899
  ret void, !dbg !4900
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_inliteral(i8* %p) #0 !dbg !4901 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4902, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.declare(metadata !4, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata !4, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.declare(metadata !4, metadata !4908, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.declare(metadata !4, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata !4, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata !4, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata !4, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 -1, metadata !4918, metadata !DIExpression()), !dbg !4903
  %0 = load i32, i32* @from_type_ptr, align 4, !dbg !4919
  %idxprom = sext i32 %0 to i64, !dbg !4922
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @from_type, i64 0, i64 %idxprom, !dbg !4922
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4922
  %cmp = icmp ne i32 %1, 1, !dbg !4923
  br i1 %cmp, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)), !dbg !4925
  br label %return, !dbg !4929

if.end:                                           ; preds = %entry
  %call = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #9, !dbg !4930
  call void @llvm.dbg.value(metadata i32 %call, metadata !4933, metadata !DIExpression()), !dbg !4903
  %cmp1 = icmp eq i32 %call, 0, !dbg !4934
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4936

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end18, !dbg !4937

if.else:                                          ; preds = %if.end
  %call3 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !4939
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4943, metadata !DIExpression()), !dbg !4903
  %cmp4 = icmp eq i32 %call3, 0, !dbg !4944
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !4946

if.then5:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 2, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end17, !dbg !4947

if.else6:                                         ; preds = %if.else
  %call7 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)) #9, !dbg !4949
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4953, metadata !DIExpression()), !dbg !4903
  %cmp8 = icmp eq i32 %call7, 0, !dbg !4954
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !4956

if.then9:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata i32 0, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end16, !dbg !4957

if.else10:                                        ; preds = %if.else6
  %call11 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0)) #9, !dbg !4959
  call void @llvm.dbg.value(metadata i32 %call11, metadata !4963, metadata !DIExpression()), !dbg !4903
  %cmp12 = icmp eq i32 %call11, 0, !dbg !4964
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !4966

if.then13:                                        ; preds = %if.else10
  call void @llvm.dbg.value(metadata i32 3, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end15, !dbg !4967

if.else14:                                        ; preds = %if.else10
  call void (i32, ...) @error(i32 5, i8* %p), !dbg !4969
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %state.0 = phi i32 [ 3, %if.then13 ], [ -1, %if.else14 ], !dbg !4973
  call void @llvm.dbg.value(metadata i32 %state.0, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  %state.1 = phi i32 [ 0, %if.then9 ], [ %state.0, %if.end15 ], !dbg !4974
  call void @llvm.dbg.value(metadata i32 %state.1, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  %state.2 = phi i32 [ 2, %if.then5 ], [ %state.1, %if.end16 ], !dbg !4975
  call void @llvm.dbg.value(metadata i32 %state.2, metadata !4918, metadata !DIExpression()), !dbg !4903
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %state.3 = phi i32 [ 1, %if.then2 ], [ %state.2, %if.end17 ], !dbg !4976
  call void @llvm.dbg.value(metadata i32 %state.3, metadata !4918, metadata !DIExpression()), !dbg !4903
  %2 = load i32, i32* @literal_state, align 4, !dbg !4977
  %cmp19 = icmp ne i32 %2, %state.3, !dbg !4979
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4980

if.then20:                                        ; preds = %if.end18
  call void @skipto(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0)), !dbg !4981
  br label %if.end21, !dbg !4985

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %return, !dbg !4986

return:                                           ; preds = %if.end21, %if.then
  ret void, !dbg !4987
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_literal(i8* %p) #0 !dbg !4988 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4989, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.declare(metadata !4, metadata !4991, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.declare(metadata !4, metadata !4993, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata !4, metadata !4995, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata !4, metadata !4997, metadata !DIExpression()), !dbg !4998
  %call = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #9, !dbg !4999
  call void @llvm.dbg.value(metadata i32 %call, metadata !5003, metadata !DIExpression()), !dbg !4990
  %cmp = icmp eq i32 %call, 0, !dbg !5004
  br i1 %cmp, label %if.then, label %if.else, !dbg !5006

if.then:                                          ; preds = %entry
  store i32 1, i32* @literal_state, align 4, !dbg !5007
  br label %if.end15, !dbg !5009

if.else:                                          ; preds = %entry
  %call1 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !5010
  call void @llvm.dbg.value(metadata i32 %call1, metadata !5014, metadata !DIExpression()), !dbg !4990
  %cmp2 = icmp eq i32 %call1, 0, !dbg !5015
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !5017

if.then3:                                         ; preds = %if.else
  store i32 2, i32* @literal_state, align 4, !dbg !5018
  br label %if.end14, !dbg !5020

if.else4:                                         ; preds = %if.else
  %call5 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)) #9, !dbg !5021
  call void @llvm.dbg.value(metadata i32 %call5, metadata !5025, metadata !DIExpression()), !dbg !4990
  %cmp6 = icmp eq i32 %call5, 0, !dbg !5026
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !5028

if.then7:                                         ; preds = %if.else4
  store i32 0, i32* @literal_state, align 4, !dbg !5029
  br label %if.end13, !dbg !5031

if.else8:                                         ; preds = %if.else4
  %call9 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0)) #9, !dbg !5032
  call void @llvm.dbg.value(metadata i32 %call9, metadata !5036, metadata !DIExpression()), !dbg !4990
  %cmp10 = icmp eq i32 %call9, 0, !dbg !5037
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5039

if.then11:                                        ; preds = %if.else8
  store i32 3, i32* @literal_state, align 4, !dbg !5040
  br label %if.end, !dbg !5042

if.else12:                                        ; preds = %if.else8
  call void (i32, ...) @error(i32 5, i8* %p), !dbg !5043
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then3
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  ret void, !dbg !5047
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_macro(i8* %p) #0 !dbg !5048 {
entry:
  %length = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata i32* %length, metadata !5051, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata !4, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata !4, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata !4, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata !4, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 0, metadata !5061, metadata !DIExpression()), !dbg !5050
  %call = call i8* @misc_malloc(i32 40), !dbg !5062
  call void @llvm.dbg.value(metadata i8* %call, metadata !5066, metadata !DIExpression()), !dbg !5050
  %0 = bitcast i8* %call to %struct.macrodef*, !dbg !5067
  call void @llvm.dbg.value(metadata %struct.macrodef* %0, metadata !5068, metadata !DIExpression()), !dbg !5050
  %call1 = call i8* @misc_readitem(i8* %p, i8* null, i32* %length, i8* null, i32 0), !dbg !5069
  %name = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 3, !dbg !5071
  store i8* %call1, i8** %name, align 8, !dbg !5072
  %name2 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 3, !dbg !5073
  %1 = load i8*, i8** %name2, align 8, !dbg !5073
  %call3 = call i32 @strlen(i8* %1) #9, !dbg !5075
  call void @llvm.dbg.value(metadata i32 %call3, metadata !5076, metadata !DIExpression()), !dbg !5050
  %namelength = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 4, !dbg !5077
  store i32 %call3, i32* %namelength, align 8, !dbg !5078
  %2 = load i32, i32* %length, align 4, !dbg !5079
  %idx.ext = sext i32 %2 to i64, !dbg !5080
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.ext, !dbg !5080
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !5049, metadata !DIExpression()), !dbg !5050
  %3 = load i32, i32* %length, align 4, !dbg !5081
  %cmp = icmp eq i32 %3, 0, !dbg !5083
  br i1 %cmp, label %if.then, label %if.end, !dbg !5084

if.then:                                          ; preds = %entry
  call void (i32, ...) @error(i32 14), !dbg !5085
  br label %return, !dbg !5089

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.argstr* null, metadata !5090, metadata !DIExpression()), !dbg !5050
  %args = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 2, !dbg !5091
  store %struct.argstr* null, %struct.argstr** %args, align 8, !dbg !5092
  %lines = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5091
  store %struct.argstr* null, %struct.argstr** %lines, align 8, !dbg !5093
  %4 = load %struct.macrodef*, %struct.macrodef** @macrolist, align 8, !dbg !5094
  %next = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 0, !dbg !5095
  store %struct.macrodef* %4, %struct.macrodef** %next, align 8, !dbg !5096
  store %struct.macrodef* %0, %struct.macrodef** @macrolist, align 8, !dbg !5097
  %args4 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 2, !dbg !5098
  call void @llvm.dbg.value(metadata %struct.argstr** %args4, metadata !5099, metadata !DIExpression()), !dbg !5050
  br label %while.body, !dbg !5100

while.body:                                       ; preds = %if.end8, %if.end
  %pp.0 = phi %struct.argstr** [ %args4, %if.end ], [ %next11, %if.end8 ], !dbg !5103
  %p.addr.0 = phi i8* [ %add.ptr, %if.end ], [ %add.ptr14, %if.end8 ], !dbg !5103
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata %struct.argstr** %pp.0, metadata !5099, metadata !DIExpression()), !dbg !5050
  br label %while_continue___1, !dbg !5104

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !5104

while_continue:                                   ; preds = %while_continue___1
  %5 = load i8, i8* %p.addr.0, align 1, !dbg !5105
  %conv = zext i8 %5 to i32, !dbg !5108
  %cmp5 = icmp ne i32 %conv, 0, !dbg !5109
  br i1 %cmp5, label %if.end8, label %if.then7, !dbg !5110

if.then7:                                         ; preds = %while_continue
  br label %while_break, !dbg !5111

if.end8:                                          ; preds = %while_continue
  %call9 = call i8* @misc_malloc(i32 16), !dbg !5113
  call void @llvm.dbg.value(metadata i8* %call9, metadata !5116, metadata !DIExpression()), !dbg !5050
  %6 = bitcast i8* %call9 to %struct.argstr*, !dbg !5117
  call void @llvm.dbg.value(metadata %struct.argstr* %6, metadata !5118, metadata !DIExpression()), !dbg !5050
  %next10 = getelementptr inbounds %struct.argstr, %struct.argstr* %6, i32 0, i32 0, !dbg !5119
  store %struct.argstr* null, %struct.argstr** %next10, align 8, !dbg !5120
  store %struct.argstr* %6, %struct.argstr** %pp.0, align 8, !dbg !5121
  %next11 = getelementptr inbounds %struct.argstr, %struct.argstr* %6, i32 0, i32 0, !dbg !5122
  call void @llvm.dbg.value(metadata %struct.argstr** %next11, metadata !5099, metadata !DIExpression()), !dbg !5050
  %call12 = call i8* @misc_readitem(i8* %p.addr.0, i8* null, i32* %length, i8* null, i32 0), !dbg !5123
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %6, i32 0, i32 1, !dbg !5125
  store i8* %call12, i8** %string, align 8, !dbg !5126
  %7 = load i32, i32* %length, align 4, !dbg !5127
  %idx.ext13 = sext i32 %7 to i64, !dbg !5128
  %add.ptr14 = getelementptr inbounds i8, i8* %p.addr.0, i64 %idx.ext13, !dbg !5128
  call void @llvm.dbg.value(metadata i8* %add.ptr14, metadata !5049, metadata !DIExpression()), !dbg !5050
  br label %while.body, !dbg !5100, !llvm.loop !5129

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !5131

while_break:                                      ; preds = %while_break___1, %if.then7
  %lines15 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5132
  call void @llvm.dbg.value(metadata %struct.argstr** %lines15, metadata !5099, metadata !DIExpression()), !dbg !5050
  br label %while.body16, !dbg !5133

while.body16:                                     ; preds = %if.end50, %while_break
  %pp.1 = phi %struct.argstr** [ %lines15, %while_break ], [ %next53, %if.end50 ], !dbg !5103
  %nest.0 = phi i32 [ 0, %while_break ], [ %nest.3, %if.end50 ], !dbg !5103
  call void @llvm.dbg.value(metadata i32 %nest.0, metadata !5061, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata %struct.argstr** %pp.1, metadata !5099, metadata !DIExpression()), !dbg !5050
  br label %while_continue___2, !dbg !5136

while_continue___2:                               ; preds = %while.body16
  br label %while_continue___0, !dbg !5136

while_continue___0:                               ; preds = %while_continue___2
  %call17 = call i8* @read_nextline(), !dbg !5137
  call void @llvm.dbg.value(metadata i8* %call17, metadata !5141, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata i8* %call17, metadata !5142, metadata !DIExpression()), !dbg !5050
  %8 = ptrtoint i8* %call17 to i64, !dbg !5143
  %cmp18 = icmp eq i64 %8, 0, !dbg !5145
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5146

if.then20:                                        ; preds = %while_continue___0
  call void (i32, ...) @error(i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0)), !dbg !5147
  br label %return, !dbg !5151

if.end21:                                         ; preds = %while_continue___0
  %call22 = call i32 @strncmp(i8* %call17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 7) #9, !dbg !5152
  call void @llvm.dbg.value(metadata i32 %call22, metadata !5155, metadata !DIExpression()), !dbg !5050
  %cmp23 = icmp eq i32 %call22, 0, !dbg !5156
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !5158

if.then25:                                        ; preds = %if.end21
  %inc = add nsw i32 %nest.0, 1, !dbg !5159
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5061, metadata !DIExpression()), !dbg !5050
  br label %if.end50, !dbg !5161

if.else:                                          ; preds = %if.end21
  %call26 = call i32 @strncmp(i8* %call17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 9) #9, !dbg !5162
  call void @llvm.dbg.value(metadata i32 %call26, metadata !5166, metadata !DIExpression()), !dbg !5050
  %cmp27 = icmp eq i32 %call26, 0, !dbg !5167
  br i1 %cmp27, label %if.then29, label %if.end49, !dbg !5169

if.then29:                                        ; preds = %if.else
  %call30 = call i16** @__ctype_b_loc() #8, !dbg !5170
  call void @llvm.dbg.value(metadata i16** %call30, metadata !5174, metadata !DIExpression()), !dbg !5050
  %9 = load i16*, i16** %call30, align 8, !dbg !5175
  %add.ptr31 = getelementptr inbounds i8, i8* %call17, i64 9, !dbg !5177
  %10 = load i8, i8* %add.ptr31, align 1, !dbg !5178
  %conv32 = zext i8 %10 to i32, !dbg !5179
  %idx.ext33 = sext i32 %conv32 to i64, !dbg !5180
  %add.ptr34 = getelementptr inbounds i16, i16* %9, i64 %idx.ext33, !dbg !5180
  %11 = load i16, i16* %add.ptr34, align 2, !dbg !5181
  %conv35 = zext i16 %11 to i32, !dbg !5182
  %and = and i32 %conv35, 8192, !dbg !5183
  %tobool = icmp ne i32 %and, 0, !dbg !5183
  br i1 %tobool, label %if.then36, label %if.else37, !dbg !5184

if.then36:                                        ; preds = %if.then29
  br label %_L, !dbg !5185

if.else37:                                        ; preds = %if.then29
  %add.ptr38 = getelementptr inbounds i8, i8* %call17, i64 9, !dbg !5187
  %12 = load i8, i8* %add.ptr38, align 1, !dbg !5189
  %conv39 = zext i8 %12 to i32, !dbg !5190
  %cmp40 = icmp eq i32 %conv39, 10, !dbg !5191
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !5182

if.then42:                                        ; preds = %if.else37
  br label %_L, !dbg !5192

_L:                                               ; preds = %if.then42, %if.then36
  %dec = add nsw i32 %nest.0, -1, !dbg !5193
  call void @llvm.dbg.value(metadata i32 %dec, metadata !5061, metadata !DIExpression()), !dbg !5050
  %cmp43 = icmp slt i32 %dec, 0, !dbg !5195
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !5197

if.then45:                                        ; preds = %_L
  br label %while_break___0, !dbg !5198

if.end46:                                         ; preds = %_L
  br label %if.end47, !dbg !5200

if.end47:                                         ; preds = %if.end46, %if.else37
  %nest.1 = phi i32 [ %dec, %if.end46 ], [ %nest.0, %if.else37 ], !dbg !5103
  call void @llvm.dbg.value(metadata i32 %nest.1, metadata !5061, metadata !DIExpression()), !dbg !5050
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49, !dbg !5201

if.end49:                                         ; preds = %if.end48, %if.else
  %nest.2 = phi i32 [ %nest.1, %if.end48 ], [ %nest.0, %if.else ], !dbg !5103
  call void @llvm.dbg.value(metadata i32 %nest.2, metadata !5061, metadata !DIExpression()), !dbg !5050
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then25
  %nest.3 = phi i32 [ %inc, %if.then25 ], [ %nest.2, %if.end49 ], !dbg !5202
  call void @llvm.dbg.value(metadata i32 %nest.3, metadata !5061, metadata !DIExpression()), !dbg !5050
  %call51 = call i8* @misc_malloc(i32 16), !dbg !5203
  call void @llvm.dbg.value(metadata i8* %call51, metadata !5206, metadata !DIExpression()), !dbg !5050
  %13 = bitcast i8* %call51 to %struct.argstr*, !dbg !5207
  call void @llvm.dbg.value(metadata %struct.argstr* %13, metadata !5208, metadata !DIExpression()), !dbg !5050
  %next52 = getelementptr inbounds %struct.argstr, %struct.argstr* %13, i32 0, i32 0, !dbg !5209
  store %struct.argstr* null, %struct.argstr** %next52, align 8, !dbg !5210
  store %struct.argstr* %13, %struct.argstr** %pp.1, align 8, !dbg !5211
  %next53 = getelementptr inbounds %struct.argstr, %struct.argstr* %13, i32 0, i32 0, !dbg !5212
  call void @llvm.dbg.value(metadata %struct.argstr** %next53, metadata !5099, metadata !DIExpression()), !dbg !5050
  %call54 = call i32 @strlen(i8* %call17) #9, !dbg !5213
  call void @llvm.dbg.value(metadata i32 %call54, metadata !5215, metadata !DIExpression()), !dbg !5050
  %call55 = call i8* @misc_copystring(i8* %call17, i32 %call54), !dbg !5216
  %string56 = getelementptr inbounds %struct.argstr, %struct.argstr* %13, i32 0, i32 1, !dbg !5218
  store i8* %call55, i8** %string56, align 8, !dbg !5219
  br label %while.body16, !dbg !5133, !llvm.loop !5220

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !5222

while_break___0:                                  ; preds = %while_break___2, %if.then45
  %lines57 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5223
  %14 = load %struct.argstr*, %struct.argstr** %lines57, align 8, !dbg !5223
  %15 = ptrtoint %struct.argstr* %14 to i64, !dbg !5225
  %cmp58 = icmp eq i64 %15, 0, !dbg !5226
  br i1 %cmp58, label %if.then60, label %if.end68, !dbg !5227

if.then60:                                        ; preds = %while_break___0
  %call61 = call i8* @misc_malloc(i32 16), !dbg !5228
  call void @llvm.dbg.value(metadata i8* %call61, metadata !5232, metadata !DIExpression()), !dbg !5050
  %16 = bitcast i8* %call61 to %struct.argstr*, !dbg !5233
  %lines62 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5234
  store %struct.argstr* %16, %struct.argstr** %lines62, align 8, !dbg !5235
  %lines63 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5236
  %17 = load %struct.argstr*, %struct.argstr** %lines63, align 8, !dbg !5236
  %next64 = getelementptr inbounds %struct.argstr, %struct.argstr* %17, i32 0, i32 0, !dbg !5237
  store %struct.argstr* null, %struct.argstr** %next64, align 8, !dbg !5238
  %call65 = call i8* @misc_copystring(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i32 13), !dbg !5239
  %lines66 = getelementptr inbounds %struct.macrodef, %struct.macrodef* %0, i32 0, i32 1, !dbg !5241
  %18 = load %struct.argstr*, %struct.argstr** %lines66, align 8, !dbg !5241
  %string67 = getelementptr inbounds %struct.argstr, %struct.argstr* %18, i32 0, i32 1, !dbg !5242
  store i8* %call65, i8** %string67, align 8, !dbg !5243
  br label %if.end68, !dbg !5244

if.end68:                                         ; preds = %if.then60, %while_break___0
  br label %return, !dbg !5245

return:                                           ; preds = %if.end68, %if.then20, %if.then
  ret void, !dbg !5246
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_nest(i8* %p) #0 !dbg !5247 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !5248, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.declare(metadata !4, metadata !5250, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.declare(metadata !4, metadata !5252, metadata !DIExpression()), !dbg !5253
  %call = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #9, !dbg !5254
  call void @llvm.dbg.value(metadata i32 %call, metadata !5258, metadata !DIExpression()), !dbg !5249
  %cmp = icmp eq i32 %call, 0, !dbg !5259
  br i1 %cmp, label %if.then, label %if.else3, !dbg !5261

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @nest_level, align 4, !dbg !5262
  %cmp1 = icmp sge i32 %0, 3, !dbg !5265
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5266

if.then2:                                         ; preds = %if.then
  call void (i32, ...) @error(i32 27), !dbg !5267
  br label %if.end, !dbg !5271

if.else:                                          ; preds = %if.then
  %1 = load i32, i32* @nest_level, align 4, !dbg !5272
  call void @llvm.dbg.value(metadata i32 %1, metadata !5274, metadata !DIExpression()), !dbg !5249
  %2 = load i32, i32* @nest_level, align 4, !dbg !5275
  %inc = add nsw i32 %2, 1, !dbg !5275
  store i32 %inc, i32* @nest_level, align 4, !dbg !5275
  %3 = load i32, i32* @literal_state, align 4, !dbg !5276
  %idxprom = sext i32 %1 to i64, !dbg !5277
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @nest_literal_stack, i64 0, i64 %idxprom, !dbg !5277
  store i32 %3, i32* %arrayidx, align 4, !dbg !5278
  store i32 0, i32* @literal_state, align 4, !dbg !5279
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end15, !dbg !5280

if.else3:                                         ; preds = %entry
  %call4 = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !5281
  call void @llvm.dbg.value(metadata i32 %call4, metadata !5285, metadata !DIExpression()), !dbg !5249
  %cmp5 = icmp eq i32 %call4, 0, !dbg !5286
  br i1 %cmp5, label %if.then6, label %if.else13, !dbg !5288

if.then6:                                         ; preds = %if.else3
  %4 = load i32, i32* @nest_level, align 4, !dbg !5289
  %cmp7 = icmp sle i32 %4, 0, !dbg !5292
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !5293

if.then8:                                         ; preds = %if.then6
  call void (i32, ...) @error(i32 28), !dbg !5294
  br label %if.end12, !dbg !5298

if.else9:                                         ; preds = %if.then6
  %5 = load i32, i32* @nest_level, align 4, !dbg !5299
  %dec = add nsw i32 %5, -1, !dbg !5299
  store i32 %dec, i32* @nest_level, align 4, !dbg !5299
  %6 = load i32, i32* @nest_level, align 4, !dbg !5301
  %idxprom10 = sext i32 %6 to i64, !dbg !5302
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* @nest_literal_stack, i64 0, i64 %idxprom10, !dbg !5302
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !5302
  store i32 %7, i32* @literal_state, align 4, !dbg !5303
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then8
  br label %if.end14, !dbg !5304

if.else13:                                        ; preds = %if.else3
  call void (i32, ...) @error(i32 26, i8* %p), !dbg !5305
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.end12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  ret void, !dbg !5309
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_nonl(i8* %p) #0 !dbg !5310 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !5311, metadata !DIExpression()), !dbg !5312
  %call = call i32 @strlen(i8* %p) #9, !dbg !5313
  call void @llvm.dbg.value(metadata i32 %call, metadata !5317, metadata !DIExpression()), !dbg !5312
  %add = add nsw i32 %call, 1, !dbg !5318
  call void @llvm.dbg.value(metadata i32 %add, metadata !5319, metadata !DIExpression()), !dbg !5312
  %cmp = icmp sgt i32 %add, 1024, !dbg !5320
  br i1 %cmp, label %if.then, label %if.end, !dbg !5322

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1024, metadata !5319, metadata !DIExpression()), !dbg !5312
  br label %if.end, !dbg !5323

if.end:                                           ; preds = %if.then, %entry
  %len.0 = phi i32 [ 1024, %if.then ], [ %add, %entry ], !dbg !5325
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !5319, metadata !DIExpression()), !dbg !5312
  %call1 = call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @nonlbuffer, i32 0, i32 0), i8* %p, i32 %len.0) #6, !dbg !5326
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @nonlbuffer, i32 0, i32 0), i8** @next_line, align 8, !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_pop(i8* %p) #0 !dbg !5331 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load i8, i8* %p, align 1, !dbg !5334
  %conv = zext i8 %0 to i32, !dbg !5337
  %cmp = icmp eq i32 %conv, 0, !dbg !5338
  br i1 %cmp, label %if.then, label %if.end, !dbg !5339

if.then:                                          ; preds = %entry
  store i32 0, i32* @popto, align 4, !dbg !5340
  br label %return, !dbg !5342

if.end:                                           ; preds = %entry
  %call = call i16** @__ctype_b_loc() #8, !dbg !5343
  call void @llvm.dbg.value(metadata i16** %call, metadata !5346, metadata !DIExpression()), !dbg !5333
  %1 = load i16*, i16** %call, align 8, !dbg !5347
  %2 = load i8, i8* %p, align 1, !dbg !5349
  %conv2 = zext i8 %2 to i32, !dbg !5350
  %idx.ext = sext i32 %conv2 to i64, !dbg !5351
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 %idx.ext, !dbg !5351
  %3 = load i16, i16* %add.ptr, align 2, !dbg !5352
  %conv3 = zext i16 %3 to i32, !dbg !5353
  %and = and i32 %conv3, 256, !dbg !5354
  %tobool = icmp ne i32 %and, 0, !dbg !5354
  br i1 %tobool, label %if.then4, label %if.else, !dbg !5355

if.then4:                                         ; preds = %if.end
  %add.ptr5 = getelementptr inbounds i8, i8* %p, i64 1, !dbg !5356
  %4 = load i8, i8* %add.ptr5, align 1, !dbg !5359
  %conv6 = zext i8 %4 to i32, !dbg !5360
  %cmp7 = icmp ne i32 %conv6, 0, !dbg !5361
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5362

if.then9:                                         ; preds = %if.then4
  %5 = load i8*, i8** @thisdir, align 8, !dbg !5363
  call void (i32, ...) @error(i32 11, i8* %5), !dbg !5367
  br label %return, !dbg !5368

if.end10:                                         ; preds = %if.then4
  br label %if.end11, !dbg !5369

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** @thisdir, align 8, !dbg !5370
  call void (i32, ...) @error(i32 11, i8* %6), !dbg !5374
  br label %return, !dbg !5375

if.end11:                                         ; preds = %if.end10
  %7 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !5376
  call void @llvm.dbg.value(metadata %struct.pushstr* %7, metadata !5377, metadata !DIExpression()), !dbg !5333
  br label %while.body, !dbg !5378

while.body:                                       ; preds = %if.end20, %if.end11
  %ps.0 = phi %struct.pushstr* [ %7, %if.end11 ], [ %11, %if.end20 ], !dbg !5381
  call void @llvm.dbg.value(metadata %struct.pushstr* %ps.0, metadata !5377, metadata !DIExpression()), !dbg !5333
  br label %while_continue___0, !dbg !5382

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !5382

while_continue:                                   ; preds = %while_continue___0
  %8 = ptrtoint %struct.pushstr* %ps.0 to i64, !dbg !5383
  %cmp12 = icmp ne i64 %8, 0, !dbg !5386
  br i1 %cmp12, label %if.end15, label %if.then14, !dbg !5387

if.then14:                                        ; preds = %while_continue
  br label %while_break, !dbg !5388

if.end15:                                         ; preds = %while_continue
  %letter = getelementptr inbounds %struct.pushstr, %struct.pushstr* %ps.0, i32 0, i32 1, !dbg !5390
  %9 = load i32, i32* %letter, align 8, !dbg !5390
  %10 = load i8, i8* %p, align 1, !dbg !5392
  %conv16 = zext i8 %10 to i32, !dbg !5393
  %cmp17 = icmp eq i32 %9, %conv16, !dbg !5394
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5395

if.then19:                                        ; preds = %if.end15
  br label %while_break, !dbg !5396

if.end20:                                         ; preds = %if.end15
  %next = getelementptr inbounds %struct.pushstr, %struct.pushstr* %ps.0, i32 0, i32 0, !dbg !5398
  %11 = load %struct.pushstr*, %struct.pushstr** %next, align 8, !dbg !5398
  call void @llvm.dbg.value(metadata %struct.pushstr* %11, metadata !5377, metadata !DIExpression()), !dbg !5333
  br label %while.body, !dbg !5378, !llvm.loop !5399

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !5401

while_break:                                      ; preds = %while_break___0, %if.then19, %if.then14
  %12 = ptrtoint %struct.pushstr* %ps.0 to i64, !dbg !5402
  %cmp21 = icmp ne i64 %12, 0, !dbg !5404
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !5405

if.then23:                                        ; preds = %while_break
  %13 = load i8, i8* %p, align 1, !dbg !5406
  %conv24 = zext i8 %13 to i32, !dbg !5408
  store i32 %conv24, i32* @popto, align 4, !dbg !5409
  br label %if.end25, !dbg !5410

if.end25:                                         ; preds = %if.then23, %while_break
  br label %return, !dbg !5411

return:                                           ; preds = %if.end25, %if.else, %if.then9, %if.then
  ret void, !dbg !5412
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_push(i8* %p) #0 !dbg !5413 {
entry:
  %length = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %p, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata i32* %length, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !5418, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.declare(metadata !4, metadata !5420, metadata !DIExpression()), !dbg !5421
  call void @llvm.dbg.declare(metadata !4, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.value(metadata i32 0, metadata !5424, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i8* %p, metadata !5425, metadata !DIExpression()), !dbg !5415
  %call = call i16** @__ctype_b_loc() #8, !dbg !5426
  call void @llvm.dbg.value(metadata i16** %call, metadata !5430, metadata !DIExpression()), !dbg !5415
  %0 = load i16*, i16** %call, align 8, !dbg !5431
  %1 = load i8, i8* %p, align 1, !dbg !5433
  %conv = zext i8 %1 to i32, !dbg !5434
  %idx.ext = sext i32 %conv to i64, !dbg !5435
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext, !dbg !5435
  %2 = load i16, i16* %add.ptr, align 2, !dbg !5436
  %conv1 = zext i16 %2 to i32, !dbg !5437
  %and = and i32 %conv1, 256, !dbg !5438
  %tobool = icmp ne i32 %and, 0, !dbg !5438
  br i1 %tobool, label %if.then, label %if.end27, !dbg !5439

if.then:                                          ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %p, i64 1, !dbg !5440
  %3 = load i8, i8* %add.ptr2, align 1, !dbg !5443
  %conv3 = zext i8 %3 to i32, !dbg !5444
  %cmp = icmp eq i32 %conv3, 0, !dbg !5445
  br i1 %cmp, label %if.then5, label %if.else, !dbg !5446

if.then5:                                         ; preds = %if.then
  br label %_L, !dbg !5447

if.else:                                          ; preds = %if.then
  %call6 = call i16** @__ctype_b_loc() #8, !dbg !5449
  call void @llvm.dbg.value(metadata i16** %call6, metadata !5453, metadata !DIExpression()), !dbg !5415
  %4 = load i16*, i16** %call6, align 8, !dbg !5454
  %add.ptr7 = getelementptr inbounds i8, i8* %p, i64 1, !dbg !5456
  %5 = load i8, i8* %add.ptr7, align 1, !dbg !5457
  %conv8 = zext i8 %5 to i32, !dbg !5458
  %idx.ext9 = sext i32 %conv8 to i64, !dbg !5459
  %add.ptr10 = getelementptr inbounds i16, i16* %4, i64 %idx.ext9, !dbg !5459
  %6 = load i16, i16* %add.ptr10, align 2, !dbg !5460
  %conv11 = zext i16 %6 to i32, !dbg !5461
  %and12 = and i32 %conv11, 8192, !dbg !5462
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5462
  br i1 %tobool13, label %if.then14, label %if.end25, !dbg !5463

if.then14:                                        ; preds = %if.else
  br label %_L, !dbg !5464

_L:                                               ; preds = %if.then14, %if.then5
  call void @llvm.dbg.value(metadata i8* %p, metadata !5465, metadata !DIExpression()), !dbg !5415
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i32 1, !dbg !5466
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5414, metadata !DIExpression()), !dbg !5415
  %7 = load i8, i8* %p, align 1, !dbg !5468
  %conv15 = zext i8 %7 to i32, !dbg !5469
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !5424, metadata !DIExpression()), !dbg !5415
  br label %while.body, !dbg !5470

while.body:                                       ; preds = %if.end, %_L
  %p.addr.0 = phi i8* [ %incdec.ptr, %_L ], [ %incdec.ptr24, %if.end ], !dbg !5473
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %while_continue___1, !dbg !5474

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !5474

while_continue:                                   ; preds = %while_continue___1
  %call16 = call i16** @__ctype_b_loc() #8, !dbg !5475
  call void @llvm.dbg.value(metadata i16** %call16, metadata !5479, metadata !DIExpression()), !dbg !5415
  %8 = load i16*, i16** %call16, align 8, !dbg !5480
  %9 = load i8, i8* %p.addr.0, align 1, !dbg !5482
  %conv17 = zext i8 %9 to i32, !dbg !5483
  %idx.ext18 = sext i32 %conv17 to i64, !dbg !5484
  %add.ptr19 = getelementptr inbounds i16, i16* %8, i64 %idx.ext18, !dbg !5484
  %10 = load i16, i16* %add.ptr19, align 2, !dbg !5485
  %conv20 = zext i16 %10 to i32, !dbg !5486
  %and21 = and i32 %conv20, 8192, !dbg !5487
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5487
  br i1 %tobool22, label %if.end, label %if.then23, !dbg !5488

if.then23:                                        ; preds = %while_continue
  br label %while_break, !dbg !5489

if.end:                                           ; preds = %while_continue
  %incdec.ptr24 = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !5491
  call void @llvm.dbg.value(metadata i8* %incdec.ptr24, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %while.body, !dbg !5470, !llvm.loop !5492

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !5494

while_break:                                      ; preds = %while_break___1, %if.then23
  br label %if.end25, !dbg !5495

if.end25:                                         ; preds = %while_break, %if.else
  %letter.0 = phi i32 [ %conv15, %while_break ], [ 0, %if.else ], !dbg !5496
  %p.addr.1 = phi i8* [ %p.addr.0, %while_break ], [ %p, %if.else ]
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i32 %letter.0, metadata !5424, metadata !DIExpression()), !dbg !5415
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %if.end27, !dbg !5497

if.end27:                                         ; preds = %if.end26, %entry
  %letter.1 = phi i32 [ %letter.0, %if.end26 ], [ 0, %entry ], !dbg !5496
  %p.addr.2 = phi i8* [ %p.addr.1, %if.end26 ], [ %p, %entry ]
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i32 %letter.1, metadata !5424, metadata !DIExpression()), !dbg !5415
  %11 = load i8, i8* %p.addr.2, align 1, !dbg !5498
  %conv28 = zext i8 %11 to i32, !dbg !5500
  %cmp29 = icmp eq i32 %conv28, 34, !dbg !5501
  br i1 %cmp29, label %if.then31, label %if.end52, !dbg !5502

if.then31:                                        ; preds = %if.end27
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !5503
  %call32 = call i8* @misc_readitem(i8* %p.addr.2, i8* null, i32* %length, i8* %arraydecay, i32 1024), !dbg !5507
  call void @llvm.dbg.value(metadata i8* %call32, metadata !5508, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i8* %call32, metadata !5509, metadata !DIExpression()), !dbg !5415
  %12 = load i32, i32* %length, align 4, !dbg !5510
  %idx.ext33 = sext i32 %12 to i64, !dbg !5511
  %add.ptr34 = getelementptr inbounds i8, i8* %p.addr.2, i64 %idx.ext33, !dbg !5511
  call void @llvm.dbg.value(metadata i8* %add.ptr34, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %while.body35, !dbg !5512

while.body35:                                     ; preds = %if.end44, %if.then31
  %p.addr.3 = phi i8* [ %add.ptr34, %if.then31 ], [ %incdec.ptr45, %if.end44 ], !dbg !5515
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %while_continue___2, !dbg !5516

while_continue___2:                               ; preds = %while.body35
  br label %while_continue___0, !dbg !5516

while_continue___0:                               ; preds = %while_continue___2
  %call36 = call i16** @__ctype_b_loc() #8, !dbg !5517
  call void @llvm.dbg.value(metadata i16** %call36, metadata !5521, metadata !DIExpression()), !dbg !5415
  %13 = load i16*, i16** %call36, align 8, !dbg !5522
  %14 = load i8, i8* %p.addr.3, align 1, !dbg !5524
  %conv37 = zext i8 %14 to i32, !dbg !5525
  %idx.ext38 = sext i32 %conv37 to i64, !dbg !5526
  %add.ptr39 = getelementptr inbounds i16, i16* %13, i64 %idx.ext38, !dbg !5526
  %15 = load i16, i16* %add.ptr39, align 2, !dbg !5527
  %conv40 = zext i16 %15 to i32, !dbg !5528
  %and41 = and i32 %conv40, 8192, !dbg !5529
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5529
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5530

if.then43:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !5531

if.end44:                                         ; preds = %while_continue___0
  %incdec.ptr45 = getelementptr inbounds i8, i8* %p.addr.3, i32 1, !dbg !5533
  call void @llvm.dbg.value(metadata i8* %incdec.ptr45, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %while.body35, !dbg !5512, !llvm.loop !5534

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !5536

while_break___0:                                  ; preds = %while_break___2, %if.then43
  %16 = load i8, i8* %p.addr.3, align 1, !dbg !5537
  %conv46 = zext i8 %16 to i32, !dbg !5539
  %cmp47 = icmp ne i32 %conv46, 0, !dbg !5540
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !5541

if.then49:                                        ; preds = %while_break___0
  %call50 = call i32 @strlen(i8* %p.addr.3) #9, !dbg !5542
  call void @llvm.dbg.value(metadata i32 %call50, metadata !5546, metadata !DIExpression()), !dbg !5415
  %sub.ptr.lhs.cast = ptrtoint i8* %p.addr.3 to i64, !dbg !5547
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64, !dbg !5547
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5547
  %add = add nsw i64 %sub.ptr.sub, 6, !dbg !5549
  %17 = load i8*, i8** @spaces, align 8, !dbg !5550
  %18 = load i8*, i8** @circumflexes, align 8, !dbg !5551
  call void (i32, ...) @error(i32 19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* %p, i64 %add, i8* %17, i32 %call50, i8* %18), !dbg !5552
  br label %if.end51, !dbg !5553

if.end51:                                         ; preds = %if.then49, %while_break___0
  call void @llvm.dbg.value(metadata i8* %call32, metadata !5414, metadata !DIExpression()), !dbg !5415
  br label %if.end52, !dbg !5554

if.end52:                                         ; preds = %if.end51, %if.end27
  %p.addr.4 = phi i8* [ %call32, %if.end51 ], [ %p.addr.2, %if.end27 ], !dbg !5496
  call void @llvm.dbg.value(metadata i8* %p.addr.4, metadata !5414, metadata !DIExpression()), !dbg !5415
  %call53 = call i32 @strlen(i8* %p.addr.4) #9, !dbg !5555
  call void @llvm.dbg.value(metadata i32 %call53, metadata !5558, metadata !DIExpression()), !dbg !5415
  store i32 %call53, i32* %length, align 4, !dbg !5559
  %19 = load i32, i32* %length, align 4, !dbg !5560
  %conv54 = sext i32 %19 to i64, !dbg !5562
  %add55 = add i64 16, %conv54, !dbg !5563
  %conv56 = trunc i64 %add55 to i32, !dbg !5564
  %call57 = call i8* @misc_malloc(i32 %conv56), !dbg !5565
  call void @llvm.dbg.value(metadata i8* %call57, metadata !5566, metadata !DIExpression()), !dbg !5415
  %20 = bitcast i8* %call57 to %struct.pushstr*, !dbg !5567
  call void @llvm.dbg.value(metadata %struct.pushstr* %20, metadata !5568, metadata !DIExpression()), !dbg !5415
  %letter58 = getelementptr inbounds %struct.pushstr, %struct.pushstr* %20, i32 0, i32 1, !dbg !5569
  store i32 %letter.1, i32* %letter58, align 8, !dbg !5570
  %string = getelementptr inbounds %struct.pushstr, %struct.pushstr* %20, i32 0, i32 2, !dbg !5571
  %arraydecay59 = getelementptr inbounds [1 x i8], [1 x i8]* %string, i32 0, i32 0, !dbg !5573
  %21 = load i32, i32* %length, align 4, !dbg !5574
  %call60 = call i8* @memcpy(i8* %arraydecay59, i8* %p.addr.4, i32 %21) #6, !dbg !5575
  %string61 = getelementptr inbounds %struct.pushstr, %struct.pushstr* %20, i32 0, i32 2, !dbg !5576
  %22 = load i32, i32* %length, align 4, !dbg !5577
  %idxprom = sext i32 %22 to i64, !dbg !5578
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %string61, i64 0, i64 %idxprom, !dbg !5578
  store i8 0, i8* %arrayidx, align 1, !dbg !5579
  %23 = load %struct.pushstr*, %struct.pushstr** @pushed, align 8, !dbg !5580
  %next = getelementptr inbounds %struct.pushstr, %struct.pushstr* %20, i32 0, i32 0, !dbg !5581
  store %struct.pushstr* %23, %struct.pushstr** %next, align 8, !dbg !5582
  store %struct.pushstr* %20, %struct.pushstr** @pushed, align 8, !dbg !5583
  ret void, !dbg !5584
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_revision(i8* %p) #0 !dbg !5585 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !5586, metadata !DIExpression()), !dbg !5587
  call void @llvm.dbg.declare(metadata !4, metadata !5588, metadata !DIExpression()), !dbg !5589
  %0 = load i8*, i8** @revision, align 8, !dbg !5590
  %1 = ptrtoint i8* %0 to i64, !dbg !5593
  %cmp = icmp ne i64 %1, 0, !dbg !5594
  br i1 %cmp, label %if.then, label %if.end, !dbg !5595

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @revision, align 8, !dbg !5596
  call void @free(i8* %2) #6, !dbg !5600
  store i8* null, i8** @revision, align 8, !dbg !5601
  br label %if.end, !dbg !5602

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %p, align 1, !dbg !5603
  %conv = zext i8 %3 to i32, !dbg !5605
  %cmp1 = icmp ne i32 %conv, 0, !dbg !5606
  br i1 %cmp1, label %if.then3, label %if.end11, !dbg !5607

if.then3:                                         ; preds = %if.end
  %call = call i32 @strcmp(i8* %p, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)) #9, !dbg !5608
  call void @llvm.dbg.value(metadata i32 %call, metadata !5612, metadata !DIExpression()), !dbg !5587
  %cmp4 = icmp ne i32 %call, 0, !dbg !5613
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !5615

if.then6:                                         ; preds = %if.then3
  %call7 = call i32 @strlen(i8* %p) #9, !dbg !5616
  call void @llvm.dbg.value(metadata i32 %call7, metadata !5620, metadata !DIExpression()), !dbg !5587
  %add = add nsw i32 %call7, 1, !dbg !5621
  %call8 = call i8* @misc_malloc(i32 %add), !dbg !5623
  call void @llvm.dbg.value(metadata i8* %call8, metadata !5624, metadata !DIExpression()), !dbg !5587
  store i8* %call8, i8** @revision, align 8, !dbg !5625
  %4 = load i8*, i8** @revision, align 8, !dbg !5626
  %call9 = call i8* @strcpy(i8* %4, i8* %p) #6, !dbg !5628
  br label %if.end10, !dbg !5629

if.end10:                                         ; preds = %if.then6, %if.then3
  br label %if.end11, !dbg !5630

if.end11:                                         ; preds = %if.end10, %if.end
  ret void, !dbg !5631
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_set(i8* %p) #0 !dbg !5632 {
entry:
  %length = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %p, metadata !5633, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.declare(metadata i32* %length, metadata !5635, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !5637, metadata !DIExpression()), !dbg !5638
  call void @llvm.dbg.declare(metadata !4, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata !4, metadata !5641, metadata !DIExpression()), !dbg !5642
  call void @llvm.dbg.value(metadata i8* %p, metadata !5643, metadata !DIExpression()), !dbg !5634
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0, !dbg !5644
  %call = call i8* @misc_readitem(i8* %p, i8* null, i32* %length, i8* %arraydecay, i32 1024), !dbg !5648
  call void @llvm.dbg.value(metadata i8* %call, metadata !5649, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.value(metadata i8* %call, metadata !5650, metadata !DIExpression()), !dbg !5634
  %0 = load i32, i32* %length, align 4, !dbg !5651
  %idx.ext = sext i32 %0 to i64, !dbg !5652
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.ext, !dbg !5652
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while.body, !dbg !5653

while.body:                                       ; preds = %if.end, %entry
  %p.addr.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %if.end ], !dbg !5656
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while_continue___1, !dbg !5657

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !5657

while_continue:                                   ; preds = %while_continue___1
  %call1 = call i16** @__ctype_b_loc() #8, !dbg !5658
  call void @llvm.dbg.value(metadata i16** %call1, metadata !5662, metadata !DIExpression()), !dbg !5634
  %1 = load i16*, i16** %call1, align 8, !dbg !5663
  %2 = load i8, i8* %p.addr.0, align 1, !dbg !5665
  %conv = zext i8 %2 to i32, !dbg !5666
  %idx.ext2 = sext i32 %conv to i64, !dbg !5667
  %add.ptr3 = getelementptr inbounds i16, i16* %1, i64 %idx.ext2, !dbg !5667
  %3 = load i16, i16* %add.ptr3, align 2, !dbg !5668
  %conv4 = zext i16 %3 to i32, !dbg !5669
  %and = and i32 %conv4, 8192, !dbg !5670
  %tobool = icmp ne i32 %and, 0, !dbg !5670
  br i1 %tobool, label %if.end, label %if.then, !dbg !5671

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !5672

if.end:                                           ; preds = %while_continue
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !5674
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while.body, !dbg !5653, !llvm.loop !5675

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !5677

while_break:                                      ; preds = %while_break___1, %if.then
  %call5 = call i32 @strlen(i8* %call) #9, !dbg !5678
  call void @llvm.dbg.value(metadata i32 %call5, metadata !5681, metadata !DIExpression()), !dbg !5634
  %conv6 = sext i32 %call5 to i64, !dbg !5682
  %add = add i64 32, %conv6, !dbg !5684
  %conv7 = trunc i64 %add to i32, !dbg !5685
  %call8 = call i8* @misc_malloc(i32 %conv7), !dbg !5686
  call void @llvm.dbg.value(metadata i8* %call8, metadata !5687, metadata !DIExpression()), !dbg !5634
  %4 = bitcast i8* %call8 to %struct.tree_node*, !dbg !5688
  call void @llvm.dbg.value(metadata %struct.tree_node* %4, metadata !5689, metadata !DIExpression()), !dbg !5634
  %name9 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 4, !dbg !5690
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %name9, i32 0, i32 0, !dbg !5692
  %call11 = call i8* @strcpy(i8* %arraydecay10, i8* %call) #6, !dbg !5693
  %call12 = call i8* @misc_readitem(i8* %p.addr.0, i8* null, i32* %length, i8* null, i32 0), !dbg !5694
  %data = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 2, !dbg !5696
  store i8* %call12, i8** %data, align 8, !dbg !5697
  %5 = load i32, i32* %length, align 4, !dbg !5698
  %idx.ext13 = sext i32 %5 to i64, !dbg !5699
  %add.ptr14 = getelementptr inbounds i8, i8* %p.addr.0, i64 %idx.ext13, !dbg !5699
  call void @llvm.dbg.value(metadata i8* %add.ptr14, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while.body15, !dbg !5700

while.body15:                                     ; preds = %if.end24, %while_break
  %p.addr.1 = phi i8* [ %add.ptr14, %while_break ], [ %incdec.ptr25, %if.end24 ], !dbg !5656
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while_continue___2, !dbg !5703

while_continue___2:                               ; preds = %while.body15
  br label %while_continue___0, !dbg !5703

while_continue___0:                               ; preds = %while_continue___2
  %call16 = call i16** @__ctype_b_loc() #8, !dbg !5704
  call void @llvm.dbg.value(metadata i16** %call16, metadata !5708, metadata !DIExpression()), !dbg !5634
  %6 = load i16*, i16** %call16, align 8, !dbg !5709
  %7 = load i8, i8* %p.addr.1, align 1, !dbg !5711
  %conv17 = zext i8 %7 to i32, !dbg !5712
  %idx.ext18 = sext i32 %conv17 to i64, !dbg !5713
  %add.ptr19 = getelementptr inbounds i16, i16* %6, i64 %idx.ext18, !dbg !5713
  %8 = load i16, i16* %add.ptr19, align 2, !dbg !5714
  %conv20 = zext i16 %8 to i32, !dbg !5715
  %and21 = and i32 %conv20, 8192, !dbg !5716
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5716
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5717

if.then23:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !5718

if.end24:                                         ; preds = %while_continue___0
  %incdec.ptr25 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !5720
  call void @llvm.dbg.value(metadata i8* %incdec.ptr25, metadata !5633, metadata !DIExpression()), !dbg !5634
  br label %while.body15, !dbg !5700, !llvm.loop !5721

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !5723

while_break___0:                                  ; preds = %while_break___2, %if.then23
  %9 = load i8, i8* %p.addr.1, align 1, !dbg !5724
  %conv26 = zext i8 %9 to i32, !dbg !5726
  %cmp = icmp ne i32 %conv26, 0, !dbg !5727
  br i1 %cmp, label %if.then28, label %if.end31, !dbg !5728

if.then28:                                        ; preds = %while_break___0
  %call29 = call i32 @strlen(i8* %p.addr.1) #9, !dbg !5729
  call void @llvm.dbg.value(metadata i32 %call29, metadata !5733, metadata !DIExpression()), !dbg !5634
  %sub.ptr.lhs.cast = ptrtoint i8* %p.addr.1 to i64, !dbg !5734
  %sub.ptr.rhs.cast = ptrtoint i8* %p to i64, !dbg !5734
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5734
  %add30 = add nsw i64 %sub.ptr.sub, 5, !dbg !5736
  %10 = load i8*, i8** @spaces, align 8, !dbg !5737
  %11 = load i8*, i8** @circumflexes, align 8, !dbg !5738
  call void (i32, ...) @error(i32 19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* %p, i64 %add30, i8* %10, i32 %call29, i8* %11), !dbg !5739
  br label %if.end31, !dbg !5740

if.end31:                                         ; preds = %if.then28, %while_break___0
  %call32 = call i32 @tree_insertnode(%struct.tree_node** @entities, %struct.tree_node* %4), !dbg !5741
  call void @llvm.dbg.value(metadata i32 %call32, metadata !5744, metadata !DIExpression()), !dbg !5634
  %tobool33 = icmp ne i32 %call32, 0, !dbg !5745
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !5747

if.then34:                                        ; preds = %if.end31
  call void (i32, ...) @error(i32 21, i8* %call), !dbg !5748
  br label %if.end35, !dbg !5752

if.end35:                                         ; preds = %if.then34, %if.end31
  ret void, !dbg !5753
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @readnumber(i8* %p) #0 !dbg !5754 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !5757, metadata !DIExpression()), !dbg !5758
  call void @llvm.dbg.value(metadata i32 0, metadata !5759, metadata !DIExpression()), !dbg !5758
  %call = call i16** @__ctype_b_loc() #8, !dbg !5760
  call void @llvm.dbg.value(metadata i16** %call, metadata !5764, metadata !DIExpression()), !dbg !5758
  %0 = load i16*, i16** %call, align 8, !dbg !5765
  %1 = load i8, i8* %p, align 1, !dbg !5767
  %conv = zext i8 %1 to i32, !dbg !5768
  %idx.ext = sext i32 %conv to i64, !dbg !5769
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext, !dbg !5769
  %2 = load i16, i16* %add.ptr, align 2, !dbg !5770
  %conv1 = zext i16 %2 to i32, !dbg !5771
  %and = and i32 %conv1, 2048, !dbg !5772
  %tobool = icmp ne i32 %and, 0, !dbg !5772
  br i1 %tobool, label %if.end, label %if.then, !dbg !5773

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @thisdir, align 8, !dbg !5774
  call void (i32, ...) @error(i32 11, i8* %3), !dbg !5778
  br label %return, !dbg !5779

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !5780

while.body:                                       ; preds = %if.end10, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ %sub, %if.end10 ], !dbg !5783
  %p.addr.0 = phi i8* [ %p, %if.end ], [ %incdec.ptr, %if.end10 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !5757, metadata !DIExpression()), !dbg !5758
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !5759, metadata !DIExpression()), !dbg !5758
  br label %while_continue___1, !dbg !5784

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !5784

while_continue:                                   ; preds = %while_continue___1
  %call2 = call i16** @__ctype_b_loc() #8, !dbg !5785
  call void @llvm.dbg.value(metadata i16** %call2, metadata !5789, metadata !DIExpression()), !dbg !5758
  %4 = load i16*, i16** %call2, align 8, !dbg !5790
  %5 = load i8, i8* %p.addr.0, align 1, !dbg !5792
  %conv3 = zext i8 %5 to i32, !dbg !5793
  %idx.ext4 = sext i32 %conv3 to i64, !dbg !5794
  %add.ptr5 = getelementptr inbounds i16, i16* %4, i64 %idx.ext4, !dbg !5794
  %6 = load i16, i16* %add.ptr5, align 2, !dbg !5795
  %conv6 = zext i16 %6 to i32, !dbg !5796
  %and7 = and i32 %conv6, 2048, !dbg !5797
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5797
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5798

if.then9:                                         ; preds = %while_continue
  br label %while_break, !dbg !5799

if.end10:                                         ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !5801, metadata !DIExpression()), !dbg !5758
  %incdec.ptr = getelementptr inbounds i8, i8* %p.addr.0, i32 1, !dbg !5802
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %mul = mul nsw i32 %n.0, 10, !dbg !5803
  %7 = load i8, i8* %p.addr.0, align 1, !dbg !5804
  %conv11 = zext i8 %7 to i32, !dbg !5805
  %add = add nsw i32 %mul, %conv11, !dbg !5806
  %sub = sub nsw i32 %add, 48, !dbg !5807
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5759, metadata !DIExpression()), !dbg !5758
  br label %while.body, !dbg !5780, !llvm.loop !5808

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !5810

while_break:                                      ; preds = %while_break___1, %if.then9
  br label %while.body12, !dbg !5811

while.body12:                                     ; preds = %if.end21, %while_break
  %p.addr.1 = phi i8* [ %p.addr.0, %while_break ], [ %incdec.ptr22, %if.end21 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !5757, metadata !DIExpression()), !dbg !5758
  br label %while_continue___2, !dbg !5814

while_continue___2:                               ; preds = %while.body12
  br label %while_continue___0, !dbg !5814

while_continue___0:                               ; preds = %while_continue___2
  %call13 = call i16** @__ctype_b_loc() #8, !dbg !5815
  call void @llvm.dbg.value(metadata i16** %call13, metadata !5819, metadata !DIExpression()), !dbg !5758
  %8 = load i16*, i16** %call13, align 8, !dbg !5820
  %9 = load i8, i8* %p.addr.1, align 1, !dbg !5822
  %conv14 = zext i8 %9 to i32, !dbg !5823
  %idx.ext15 = sext i32 %conv14 to i64, !dbg !5824
  %add.ptr16 = getelementptr inbounds i16, i16* %8, i64 %idx.ext15, !dbg !5824
  %10 = load i16, i16* %add.ptr16, align 2, !dbg !5825
  %conv17 = zext i16 %10 to i32, !dbg !5826
  %and18 = and i32 %conv17, 8192, !dbg !5827
  %tobool19 = icmp ne i32 %and18, 0, !dbg !5827
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5828

if.then20:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !5829

if.end21:                                         ; preds = %while_continue___0
  %incdec.ptr22 = getelementptr inbounds i8, i8* %p.addr.1, i32 1, !dbg !5831
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, metadata !5757, metadata !DIExpression()), !dbg !5758
  br label %while.body12, !dbg !5811, !llvm.loop !5832

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !5834

while_break___0:                                  ; preds = %while_break___2, %if.then20
  %11 = load i8, i8* %p.addr.1, align 1, !dbg !5835
  %conv23 = zext i8 %11 to i32, !dbg !5837
  %cmp = icmp ne i32 %conv23, 0, !dbg !5838
  br i1 %cmp, label %if.then25, label %if.end26, !dbg !5839

if.then25:                                        ; preds = %while_break___0
  %12 = load i8*, i8** @thisdir, align 8, !dbg !5840
  call void (i32, ...) @error(i32 11, i8* %12), !dbg !5844
  br label %return, !dbg !5845

if.end26:                                         ; preds = %while_break___0
  br label %return, !dbg !5846

return:                                           ; preds = %if.end26, %if.then25, %if.then
  %retval.0 = phi i32 [ -1, %if.then25 ], [ %n.0, %if.end26 ], [ -1, %if.then ], !dbg !5783
  ret i32 %retval.0, !dbg !5847
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @skipto(i8* %s, i8* %t) #0 !dbg !5848 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !5849, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i8* %t, metadata !5851, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 -1, metadata !5852, metadata !DIExpression()), !dbg !5850
  %call = call i32 @strlen(i8* %s) #9, !dbg !5853
  call void @llvm.dbg.value(metadata i32 %call, metadata !5857, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %call, metadata !5858, metadata !DIExpression()), !dbg !5850
  %call1 = call i32 @strlen(i8* %t) #9, !dbg !5859
  call void @llvm.dbg.value(metadata i32 %call1, metadata !5861, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %call1, metadata !5862, metadata !DIExpression()), !dbg !5850
  %0 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5863
  %nextline = getelementptr inbounds %struct.macroexe, %struct.macroexe* %0, i32 0, i32 3, !dbg !5864
  %1 = load %struct.argstr*, %struct.argstr** %nextline, align 8, !dbg !5864
  %2 = ptrtoint %struct.argstr* %1 to i64, !dbg !5865
  %cmp = icmp eq i64 %2, 0, !dbg !5866
  %conv = zext i1 %cmp to i32, !dbg !5866
  call void @llvm.dbg.value(metadata i32 %conv, metadata !5867, metadata !DIExpression()), !dbg !5850
  br label %while.body, !dbg !5868

while.body:                                       ; preds = %if.end62, %entry
  %nest.0 = phi i32 [ -1, %entry ], [ %nest.5, %if.end62 ], !dbg !5871
  %done.0 = phi i32 [ %conv, %entry ], [ %tmp___4.2, %if.end62 ], !dbg !5871
  call void @llvm.dbg.value(metadata i32 %done.0, metadata !5867, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %nest.0, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %while_continue___0, !dbg !5872

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !5872

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne i32 %done.0, 0, !dbg !5873
  br i1 %tobool, label %if.then, label %if.end, !dbg !5876

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !5877

if.end:                                           ; preds = %while_continue
  %3 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5879
  %nextline2 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %3, i32 0, i32 3, !dbg !5881
  %4 = load %struct.argstr*, %struct.argstr** %nextline2, align 8, !dbg !5881
  %string = getelementptr inbounds %struct.argstr, %struct.argstr* %4, i32 0, i32 1, !dbg !5882
  %5 = load i8*, i8** %string, align 8, !dbg !5882
  call void @llvm.dbg.value(metadata i8* %5, metadata !5883, metadata !DIExpression()), !dbg !5850
  %call3 = call i32 @strncmp(i8* %5, i8* %t, i32 %call1) #9, !dbg !5884
  call void @llvm.dbg.value(metadata i32 %call3, metadata !5886, metadata !DIExpression()), !dbg !5850
  %cmp4 = icmp eq i32 %call3, 0, !dbg !5887
  br i1 %cmp4, label %if.then6, label %if.else28, !dbg !5889

if.then6:                                         ; preds = %if.end
  %idx.ext = sext i32 %call1 to i64, !dbg !5890
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext, !dbg !5890
  %6 = load i8, i8* %add.ptr, align 1, !dbg !5893
  %conv7 = zext i8 %6 to i32, !dbg !5894
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !5895
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !5896

if.then10:                                        ; preds = %if.then6
  br label %_L, !dbg !5897

if.else:                                          ; preds = %if.then6
  %call11 = call i16** @__ctype_b_loc() #8, !dbg !5899
  call void @llvm.dbg.value(metadata i16** %call11, metadata !5903, metadata !DIExpression()), !dbg !5850
  %7 = load i16*, i16** %call11, align 8, !dbg !5904
  %idx.ext12 = sext i32 %call1 to i64, !dbg !5906
  %add.ptr13 = getelementptr inbounds i8, i8* %5, i64 %idx.ext12, !dbg !5906
  %8 = load i8, i8* %add.ptr13, align 1, !dbg !5907
  %conv14 = zext i8 %8 to i32, !dbg !5908
  %idx.ext15 = sext i32 %conv14 to i64, !dbg !5909
  %add.ptr16 = getelementptr inbounds i16, i16* %7, i64 %idx.ext15, !dbg !5909
  %9 = load i16, i16* %add.ptr16, align 2, !dbg !5910
  %conv17 = zext i16 %9 to i32, !dbg !5911
  %and = and i32 %conv17, 8192, !dbg !5912
  %tobool18 = icmp ne i32 %and, 0, !dbg !5912
  br i1 %tobool18, label %if.then19, label %if.else25, !dbg !5913

if.then19:                                        ; preds = %if.else
  br label %_L, !dbg !5914

_L:                                               ; preds = %if.then19, %if.then10
  call void @llvm.dbg.value(metadata i32 %nest.0, metadata !5915, metadata !DIExpression()), !dbg !5850
  %dec = add nsw i32 %nest.0, -1, !dbg !5916
  call void @llvm.dbg.value(metadata i32 %dec, metadata !5852, metadata !DIExpression()), !dbg !5850
  %cmp20 = icmp sle i32 %nest.0, 0, !dbg !5918
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !5920

if.then22:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i32 1, metadata !5921, metadata !DIExpression()), !dbg !5850
  br label %if.end24, !dbg !5922

if.else23:                                        ; preds = %_L
  call void @llvm.dbg.value(metadata i32 0, metadata !5921, metadata !DIExpression()), !dbg !5850
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  %tmp___4.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.else23 ], !dbg !5924
  call void @llvm.dbg.value(metadata i32 %tmp___4.0, metadata !5921, metadata !DIExpression()), !dbg !5850
  br label %if.end26, !dbg !5925

if.else25:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !5921, metadata !DIExpression()), !dbg !5850
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.end24
  %nest.1 = phi i32 [ %dec, %if.end24 ], [ %nest.0, %if.else25 ], !dbg !5871
  %tmp___4.1 = phi i32 [ %tmp___4.0, %if.end24 ], [ 0, %if.else25 ], !dbg !5926
  call void @llvm.dbg.value(metadata i32 %tmp___4.1, metadata !5921, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %nest.1, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %if.end29, !dbg !5927

if.else28:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !5921, metadata !DIExpression()), !dbg !5850
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end27
  %nest.2 = phi i32 [ %nest.1, %if.end27 ], [ %nest.0, %if.else28 ], !dbg !5871
  %tmp___4.2 = phi i32 [ %tmp___4.1, %if.end27 ], [ 0, %if.else28 ], !dbg !5928
  call void @llvm.dbg.value(metadata i32 %tmp___4.2, metadata !5921, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %nest.2, metadata !5852, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.value(metadata i32 %tmp___4.2, metadata !5867, metadata !DIExpression()), !dbg !5850
  %call30 = call i32 @strncmp(i8* %5, i8* %s, i32 %call) #9, !dbg !5929
  call void @llvm.dbg.value(metadata i32 %call30, metadata !5932, metadata !DIExpression()), !dbg !5850
  %cmp31 = icmp eq i32 %call30, 0, !dbg !5933
  br i1 %cmp31, label %if.then33, label %if.end54, !dbg !5935

if.then33:                                        ; preds = %if.end29
  %idx.ext34 = sext i32 %call to i64, !dbg !5936
  %add.ptr35 = getelementptr inbounds i8, i8* %5, i64 %idx.ext34, !dbg !5936
  %10 = load i8, i8* %add.ptr35, align 1, !dbg !5939
  %conv36 = zext i8 %10 to i32, !dbg !5940
  %cmp37 = icmp eq i32 %conv36, 0, !dbg !5941
  br i1 %cmp37, label %if.then39, label %if.else40, !dbg !5942

if.then39:                                        ; preds = %if.then33
  %inc = add nsw i32 %nest.2, 1, !dbg !5943
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %if.end53, !dbg !5945

if.else40:                                        ; preds = %if.then33
  %call41 = call i16** @__ctype_b_loc() #8, !dbg !5946
  call void @llvm.dbg.value(metadata i16** %call41, metadata !5950, metadata !DIExpression()), !dbg !5850
  %11 = load i16*, i16** %call41, align 8, !dbg !5951
  %idx.ext42 = sext i32 %call to i64, !dbg !5953
  %add.ptr43 = getelementptr inbounds i8, i8* %5, i64 %idx.ext42, !dbg !5953
  %12 = load i8, i8* %add.ptr43, align 1, !dbg !5954
  %conv44 = zext i8 %12 to i32, !dbg !5955
  %idx.ext45 = sext i32 %conv44 to i64, !dbg !5956
  %add.ptr46 = getelementptr inbounds i16, i16* %11, i64 %idx.ext45, !dbg !5956
  %13 = load i16, i16* %add.ptr46, align 2, !dbg !5957
  %conv47 = zext i16 %13 to i32, !dbg !5958
  %and48 = and i32 %conv47, 8192, !dbg !5959
  %tobool49 = icmp ne i32 %and48, 0, !dbg !5959
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !5960

if.then50:                                        ; preds = %if.else40
  %inc51 = add nsw i32 %nest.2, 1, !dbg !5961
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %if.end52, !dbg !5963

if.end52:                                         ; preds = %if.then50, %if.else40
  %nest.3 = phi i32 [ %inc51, %if.then50 ], [ %nest.2, %if.else40 ], !dbg !5964
  call void @llvm.dbg.value(metadata i32 %nest.3, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then39
  %nest.4 = phi i32 [ %inc, %if.then39 ], [ %nest.3, %if.end52 ], !dbg !5965
  call void @llvm.dbg.value(metadata i32 %nest.4, metadata !5852, metadata !DIExpression()), !dbg !5850
  br label %if.end54, !dbg !5966

if.end54:                                         ; preds = %if.end53, %if.end29
  %nest.5 = phi i32 [ %nest.4, %if.end53 ], [ %nest.2, %if.end29 ], !dbg !5964
  call void @llvm.dbg.value(metadata i32 %nest.5, metadata !5852, metadata !DIExpression()), !dbg !5850
  %14 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5967
  %nextline55 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %14, i32 0, i32 3, !dbg !5968
  %15 = load %struct.argstr*, %struct.argstr** %nextline55, align 8, !dbg !5968
  %next = getelementptr inbounds %struct.argstr, %struct.argstr* %15, i32 0, i32 0, !dbg !5969
  %16 = load %struct.argstr*, %struct.argstr** %next, align 8, !dbg !5969
  %17 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5970
  %nextline56 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %17, i32 0, i32 3, !dbg !5971
  store %struct.argstr* %16, %struct.argstr** %nextline56, align 8, !dbg !5972
  %18 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5973
  %nextline57 = getelementptr inbounds %struct.macroexe, %struct.macroexe* %18, i32 0, i32 3, !dbg !5975
  %19 = load %struct.argstr*, %struct.argstr** %nextline57, align 8, !dbg !5975
  %20 = ptrtoint %struct.argstr* %19 to i64, !dbg !5976
  %cmp58 = icmp eq i64 %20, 0, !dbg !5977
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !5978

if.then60:                                        ; preds = %if.end54
  %21 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5979
  call void @llvm.dbg.value(metadata %struct.macroexe* %21, metadata !5982, metadata !DIExpression()), !dbg !5850
  %22 = load %struct.macroexe*, %struct.macroexe** @macrocurrent, align 8, !dbg !5983
  %prev = getelementptr inbounds %struct.macroexe, %struct.macroexe* %22, i32 0, i32 0, !dbg !5984
  %23 = load %struct.macroexe*, %struct.macroexe** %prev, align 8, !dbg !5984
  store %struct.macroexe* %23, %struct.macroexe** @macrocurrent, align 8, !dbg !5985
  %24 = bitcast %struct.macroexe* %21 to i8*, !dbg !5986
  call void @free(i8* %24) #6, !dbg !5988
  %25 = load i32, i32* @from_type_ptr, align 4, !dbg !5989
  %dec61 = add nsw i32 %25, -1, !dbg !5989
  store i32 %dec61, i32* @from_type_ptr, align 4, !dbg !5989
  br label %while_break, !dbg !5990

if.end62:                                         ; preds = %if.end54
  br label %while.body, !dbg !5868, !llvm.loop !5991

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !5993

while_break:                                      ; preds = %while_break___0, %if.then60, %if.then
  ret void, !dbg !5994
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal void @usage() #0 !dbg !5995 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !5998, metadata !DIExpression()), !dbg !5999
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !6000
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.76, i32 0, i32 0)), !dbg !6004
  ret void, !dbg !6005
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!258, !259, !260, !261, !262}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!263}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thisdir", scope: !2, file: !209, line: 22, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !152, nameTableKind: GNU)
!3 = !DIFile(filename: "c/xfpt-0.07.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !10, !13, !17, !18, !19, !27, !78, !93, !98, !105, !110, !117, !118, !14, !127, !129, !137, !139, !151, !86}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 211, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uschar", file: !15, line: 33, baseType: !16)
!15 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/mytypes.h", directory: "")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 49, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !23, line: 271, size: 1728, elements: !24)
!23 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!24 = !{!25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !46, !47, !48, !49, !53, !55, !57, !61, !64, !68, !69, !70, !71, !72, !73, !74}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !23, line: 272, baseType: !6, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !22, file: !23, line: 273, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !22, file: !23, line: 274, baseType: !27, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !22, file: !23, line: 275, baseType: !27, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !22, file: !23, line: 276, baseType: !27, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !22, file: !23, line: 277, baseType: !27, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !22, file: !23, line: 278, baseType: !27, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !22, file: !23, line: 279, baseType: !27, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !22, file: !23, line: 280, baseType: !27, size: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !22, file: !23, line: 281, baseType: !27, size: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !22, file: !23, line: 282, baseType: !27, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !22, file: !23, line: 283, baseType: !27, size: 64, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !22, file: !23, line: 284, baseType: !39, size: 64, offset: 768)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !23, line: 186, size: 192, elements: !41)
!41 = !{!42, !43, !45}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !40, file: !23, line: 187, baseType: !39, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !40, file: !23, line: 188, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !40, file: !23, line: 189, baseType: !6, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !22, file: !23, line: 285, baseType: !44, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !22, file: !23, line: 286, baseType: !6, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !23, line: 287, baseType: !6, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !22, file: !23, line: 288, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 141, baseType: !52)
!51 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !22, file: !23, line: 289, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !22, file: !23, line: 290, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !22, file: !23, line: 291, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !23, line: 292, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !23, line: 180, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !23, line: 293, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 142, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !51, line: 56, baseType: !67)
!67 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !22, file: !23, line: 294, baseType: !17, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !22, file: !23, line: 295, baseType: !17, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !22, file: !23, line: 296, baseType: !17, size: 64, offset: 1344)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !22, file: !23, line: 297, baseType: !17, size: 64, offset: 1408)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !22, file: !23, line: 298, baseType: !10, size: 32, offset: 1472)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !22, file: !23, line: 299, baseType: !6, size: 32, offset: 1504)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !22, file: !23, line: 300, baseType: !75, size: 192, offset: 1536)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 24)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "macroexe", file: !80, line: 59, baseType: !81)
!80 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/structs.h", directory: "")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroexe", file: !80, line: 59, size: 256, elements: !82)
!82 = !{!83, !85, !103, !104}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !80, line: 60, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !81, file: !80, line: 61, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "macrodef", file: !80, line: 49, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macrodef", file: !80, line: 49, size: 320, elements: !89)
!89 = !{!90, !92, !100, !101, !102}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !80, line: 50, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !88, file: !80, line: 51, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "argstr", file: !80, line: 42, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "argstr", file: !80, line: 42, size: 128, elements: !96)
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !80, line: 43, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !95, file: !80, line: 44, baseType: !13, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !88, file: !80, line: 52, baseType: !93, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !80, line: 53, baseType: !13, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "namelength", scope: !88, file: !80, line: 54, baseType: !6, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !81, file: !80, line: 62, baseType: !93, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nextline", scope: !81, file: !80, line: 63, baseType: !93, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "istackstr", file: !80, line: 13, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "istackstr", file: !80, line: 13, size: 2240, elements: !108)
!108 = !{!109, !111, !112, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !80, line: 14, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !107, file: !80, line: 15, baseType: !6, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !107, file: !80, line: 16, baseType: !19, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !107, file: !80, line: 17, baseType: !114, size: 2048, offset: 192)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 256)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pushstr", file: !80, line: 34, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pushstr", file: !80, line: 34, size: 128, elements: !121)
!121 = !{!122, !124, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !80, line: 35, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "letter", scope: !120, file: !80, line: 36, baseType: !6, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !120, file: !80, line: 37, baseType: !126, size: 8, offset: 96)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !59)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_node", file: !80, line: 68, size: 256, elements: !131)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !130, file: !80, line: 69, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !130, file: !80, line: 70, baseType: !129, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !130, file: !80, line: 71, baseType: !13, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !130, file: !80, line: 72, baseType: !14, size: 8, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !80, line: 73, baseType: !126, size: 8, offset: 200)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_node", file: !80, line: 68, baseType: !130)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "flagstr", file: !80, line: 22, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flagstr", file: !80, line: 22, size: 448, elements: !142)
!142 = !{!143, !145, !146, !147, !148, !149, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !80, line: 23, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "length1", scope: !141, file: !80, line: 24, baseType: !6, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flag1", scope: !141, file: !80, line: 25, baseType: !13, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rep1", scope: !141, file: !80, line: 26, baseType: !13, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length2", scope: !141, file: !80, line: 27, baseType: !6, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flag2", scope: !141, file: !80, line: 28, baseType: !13, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rep2", scope: !141, file: !80, line: 29, baseType: !13, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!152 = !{!153, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !202, !0, !207, !210, !227, !232, !234, !236, !239, !241, !252, !254, !256}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "xfpt_share", scope: !2, file: !155, line: 13, type: !13, isLocal: false, isDefinition: true)
!155 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/globals.c", directory: "")
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "xfpt_version", scope: !2, file: !155, line: 14, type: !13, isLocal: false, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "entities", scope: !2, file: !155, line: 16, type: !137, isLocal: false, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "flaglist", scope: !2, file: !155, line: 18, type: !139, isLocal: false, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "from_type_ptr", scope: !2, file: !155, line: 20, type: !6, isLocal: false, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "inbuffer", scope: !2, file: !155, line: 22, type: !13, isLocal: false, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "istack", scope: !2, file: !155, line: 23, type: !105, isLocal: false, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "literal_state", scope: !2, file: !155, line: 25, type: !6, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "nest_level", scope: !2, file: !155, line: 27, type: !6, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "next_line", scope: !2, file: !155, line: 29, type: !13, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "macrocurrent", scope: !2, file: !155, line: 31, type: !78, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "macrolist", scope: !2, file: !155, line: 32, type: !86, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "macro_argbase", scope: !2, file: !155, line: 34, type: !93, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "macro_starteach", scope: !2, file: !155, line: 35, type: !93, isLocal: false, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "outfile", scope: !2, file: !155, line: 37, type: !19, isLocal: false, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "para_inline_macro", scope: !2, file: !155, line: 39, type: !6, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "parabuffer", scope: !2, file: !155, line: 40, type: !13, isLocal: false, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "popto", scope: !2, file: !155, line: 41, type: !6, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "pushed", scope: !2, file: !155, line: 42, type: !118, isLocal: false, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "return_code", scope: !2, file: !155, line: 44, type: !6, isLocal: false, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "revision", scope: !2, file: !155, line: 45, type: !13, isLocal: false, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "from_type", scope: !2, file: !198, line: 21, type: !199, isLocal: false, isDefinition: true)
!198 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/globals.h", directory: "")
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 20)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "nest_literal_stack", scope: !2, file: !198, line: 30, type: !204, isLocal: false, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 4)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "cmdcount", scope: !2, file: !209, line: 753, type: !6, isLocal: true, isDefinition: true)
!209 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/dot.c", directory: "")
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "dirs", scope: !2, file: !209, line: 733, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4352, elements: !225)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "dirstr", file: !209, line: 724, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirstr", file: !209, line: 724, size: 256, elements: !215)
!215 = !{!216, !217, !218, !222, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !209, line: 725, baseType: !13, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !209, line: 726, baseType: !6, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !214, file: !209, line: 727, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !13}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "onearg", scope: !214, file: !209, line: 728, baseType: !223, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !15, line: 32, baseType: !6)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "okinline", scope: !214, file: !209, line: 729, baseType: !223, size: 32, offset: 224)
!225 = !{!226}
!226 = !DISubrange(count: 17)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "nonlbuffer", scope: !2, file: !209, line: 556, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1024)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "spaces", scope: !2, file: !209, line: 20, type: !13, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "circumflexes", scope: !2, file: !209, line: 18, type: !13, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "xfpt_filename", scope: !2, file: !238, line: 18, type: !13, isLocal: true, isDefinition: true)
!238 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/xfpt.c", directory: "")
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "out_filename", scope: !2, file: !238, line: 19, type: !13, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "error_data", scope: !2, file: !243, line: 42, type: !244, isLocal: true, isDefinition: true)
!243 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/error.c", directory: "")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 3712, elements: !250)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_struct", file: !243, line: 36, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_error_struct_27", file: !243, line: 36, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !246, file: !243, line: 37, baseType: !9, size: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !246, file: !243, line: 38, baseType: !7, size: 64, offset: 64)
!250 = !{!251}
!251 = !DISubrange(count: 29)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "suppress_warnings", scope: !2, file: !243, line: 28, type: !223, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "warning_count", scope: !2, file: !243, line: 27, type: !6, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "error_count", scope: !2, file: !243, line: 26, type: !6, isLocal: true, isDefinition: true)
!258 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!259 = !{i32 2, !"Dwarf Version", i32 4}
!260 = !{i32 2, !"Debug Info Version", i32 3}
!261 = !{i32 1, !"wchar_size", i32 4}
!262 = !{i32 7, !"PIC Level", i32 2}
!263 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!264 = distinct !DISubprogram(name: "dot_process", scope: !209, file: !209, line: 768, type: !220, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!265 = !DILocalVariable(name: "p", arg: 1, scope: !264, file: !209, line: 768, type: !13)
!266 = !DILocation(line: 0, scope: !264)
!267 = !DILocalVariable(name: "length", scope: !264, file: !209, line: 775, type: !6)
!268 = !DILocation(line: 775, column: 7, scope: !264)
!269 = !DILocalVariable(name: "buffer", scope: !264, file: !209, line: 780, type: !229)
!270 = !DILocation(line: 780, column: 10, scope: !264)
!271 = !DILocalVariable(name: "alength", scope: !264, file: !209, line: 782, type: !6)
!272 = !DILocation(line: 782, column: 7, scope: !264)
!273 = !DILocalVariable(name: "__cil_tmp25", scope: !264, file: !209, line: 793, type: !17)
!274 = !DILocation(line: 793, column: 9, scope: !264)
!275 = !DILocalVariable(name: "__cil_tmp26", scope: !264, file: !209, line: 794, type: !27)
!276 = !DILocation(line: 794, column: 9, scope: !264)
!277 = !DILocation(line: 776, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !209, line: 797, column: 3)
!279 = distinct !DILexicalBlock(scope: !264, file: !209, line: 796, column: 3)
!280 = !DILocation(line: 778, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !209, line: 777, column: 3)
!282 = !DILocation(line: 780, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !209, line: 780, column: 7)
!284 = !DILocation(line: 780, column: 13, scope: !283)
!285 = !DILocation(line: 780, column: 7, scope: !283)
!286 = !DILocation(line: 780, column: 22, scope: !283)
!287 = !DILocation(line: 780, column: 7, scope: !279)
!288 = !DILocation(line: 780, column: 5, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !209, line: 780, column: 28)
!290 = !DILocation(line: 780, column: 11, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !209, line: 783, column: 5)
!292 = distinct !DILexicalBlock(scope: !293, file: !209, line: 782, column: 5)
!293 = distinct !DILexicalBlock(scope: !283, file: !209, line: 781, column: 10)
!294 = !DILocalVariable(name: "tmp", scope: !264, file: !209, line: 776, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!298 = !DILocation(line: 780, column: 25, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !209, line: 780, column: 9)
!300 = !DILocation(line: 780, column: 42, scope: !299)
!301 = !DILocation(line: 780, column: 38, scope: !299)
!302 = !DILocation(line: 780, column: 32, scope: !299)
!303 = !DILocation(line: 780, column: 30, scope: !299)
!304 = !DILocation(line: 780, column: 23, scope: !299)
!305 = !DILocation(line: 780, column: 9, scope: !299)
!306 = !DILocation(line: 780, column: 48, scope: !299)
!307 = !DILocation(line: 780, column: 9, scope: !293)
!308 = !DILocation(line: 780, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !209, line: 780, column: 56)
!310 = !DILocalVariable(name: "bot", scope: !264, file: !209, line: 774, type: !6)
!311 = !DILocation(line: 785, column: 9, scope: !279)
!312 = !DILocalVariable(name: "top", scope: !264, file: !209, line: 773, type: !6)
!313 = !DILocation(line: 787, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !209, line: 787, column: 3)
!315 = distinct !DILexicalBlock(scope: !279, file: !209, line: 786, column: 3)
!316 = !DILocation(line: 0, scope: !279)
!317 = !DILocation(line: 784, column: 7, scope: !279)
!318 = !DILocation(line: 787, column: 13, scope: !314)
!319 = !DILocation(line: 787, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !209, line: 787, column: 9)
!321 = distinct !DILexicalBlock(scope: !314, file: !209, line: 787, column: 13)
!322 = !DILocation(line: 787, column: 9, scope: !321)
!323 = !DILocation(line: 787, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !209, line: 787, column: 24)
!325 = !DILocation(line: 790, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !209, line: 789, column: 5)
!327 = !DILocation(line: 790, column: 23, scope: !326)
!328 = !DILocalVariable(name: "mid", scope: !264, file: !209, line: 778, type: !6)
!329 = !DILocation(line: 791, column: 16, scope: !326)
!330 = !DILocalVariable(name: "dir", scope: !264, file: !209, line: 779, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!332 = !DILocation(line: 793, column: 19, scope: !326)
!333 = !DILocation(line: 793, column: 12, scope: !326)
!334 = !DILocation(line: 794, column: 57, scope: !335)
!335 = distinct !DILexicalBlock(scope: !326, file: !209, line: 794, column: 5)
!336 = !DILocation(line: 794, column: 72, scope: !335)
!337 = !DILocation(line: 794, column: 9, scope: !335)
!338 = !DILocalVariable(name: "c", scope: !264, file: !209, line: 777, type: !6)
!339 = !DILocation(line: 800, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !321, file: !209, line: 800, column: 9)
!341 = !DILocation(line: 800, column: 9, scope: !321)
!342 = !DILocation(line: 800, column: 23, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !209, line: 800, column: 11)
!344 = distinct !DILexicalBlock(scope: !340, file: !209, line: 800, column: 17)
!345 = !DILocation(line: 800, column: 21, scope: !343)
!346 = !DILocation(line: 800, column: 17, scope: !343)
!347 = !DILocation(line: 800, column: 11, scope: !343)
!348 = !DILocation(line: 800, column: 31, scope: !343)
!349 = !DILocation(line: 800, column: 11, scope: !344)
!350 = !DILocation(line: 800, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !343, file: !209, line: 800, column: 37)
!352 = !DILocation(line: 800, column: 19, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !209, line: 803, column: 9)
!354 = distinct !DILexicalBlock(scope: !355, file: !209, line: 802, column: 9)
!355 = distinct !DILexicalBlock(scope: !343, file: !209, line: 801, column: 14)
!356 = !DILocalVariable(name: "tmp___3", scope: !264, file: !209, line: 786, type: !295)
!357 = !DILocation(line: 800, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !209, line: 800, column: 13)
!359 = !DILocation(line: 800, column: 52, scope: !358)
!360 = !DILocation(line: 800, column: 50, scope: !358)
!361 = !DILocation(line: 800, column: 46, scope: !358)
!362 = !DILocation(line: 800, column: 40, scope: !358)
!363 = !DILocation(line: 800, column: 38, scope: !358)
!364 = !DILocation(line: 800, column: 27, scope: !358)
!365 = !DILocation(line: 800, column: 13, scope: !358)
!366 = !DILocation(line: 800, column: 61, scope: !358)
!367 = !DILocation(line: 800, column: 13, scope: !355)
!368 = !DILocation(line: 800, column: 69, scope: !358)
!369 = !DILocation(line: 803, column: 16, scope: !370)
!370 = distinct !DILexicalBlock(scope: !358, file: !209, line: 800, column: 69)
!371 = !DILocation(line: 803, column: 13, scope: !370)
!372 = !DILocation(line: 804, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !209, line: 805, column: 11)
!374 = distinct !DILexicalBlock(scope: !370, file: !209, line: 804, column: 11)
!375 = !DILocation(line: 0, scope: !370)
!376 = !DILocation(line: 804, column: 21, scope: !373)
!377 = !DILocation(line: 804, column: 23, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !209, line: 808, column: 13)
!379 = distinct !DILexicalBlock(scope: !380, file: !209, line: 807, column: 13)
!380 = distinct !DILexicalBlock(scope: !373, file: !209, line: 804, column: 21)
!381 = !DILocalVariable(name: "tmp___0", scope: !264, file: !209, line: 781, type: !295)
!382 = !DILocation(line: 804, column: 36, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !209, line: 804, column: 17)
!384 = !DILocation(line: 804, column: 53, scope: !383)
!385 = !DILocation(line: 804, column: 47, scope: !383)
!386 = !DILocation(line: 804, column: 45, scope: !383)
!387 = !DILocation(line: 804, column: 34, scope: !383)
!388 = !DILocation(line: 804, column: 20, scope: !383)
!389 = !DILocation(line: 804, column: 57, scope: !383)
!390 = !DILocation(line: 804, column: 17, scope: !380)
!391 = !DILocation(line: 804, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !209, line: 804, column: 66)
!393 = !DILocation(line: 804, column: 15, scope: !380)
!394 = distinct !{!394, !372, !395}
!395 = !DILocation(line: 805, column: 11, scope: !373)
!396 = !DILocation(line: 807, column: 11, scope: !373)
!397 = !DILocation(line: 806, column: 20, scope: !398)
!398 = distinct !DILexicalBlock(scope: !370, file: !209, line: 806, column: 15)
!399 = !DILocation(line: 806, column: 15, scope: !398)
!400 = !DILocation(line: 806, column: 15, scope: !370)
!401 = !DILocation(line: 809, column: 74, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !209, line: 808, column: 13)
!403 = distinct !DILexicalBlock(scope: !404, file: !209, line: 807, column: 13)
!404 = distinct !DILexicalBlock(scope: !398, file: !209, line: 806, column: 28)
!405 = !DILocation(line: 809, column: 23, scope: !402)
!406 = !DILocalVariable(name: "tmp___1", scope: !264, file: !209, line: 784, type: !13)
!407 = !DILocalVariable(name: "s", scope: !264, file: !209, line: 783, type: !13)
!408 = !DILocation(line: 810, column: 29, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !209, line: 810, column: 17)
!410 = !DILocation(line: 810, column: 27, scope: !409)
!411 = !DILocation(line: 810, column: 23, scope: !409)
!412 = !DILocation(line: 810, column: 17, scope: !409)
!413 = !DILocation(line: 810, column: 38, scope: !409)
!414 = !DILocation(line: 810, column: 17, scope: !404)
!415 = !DILocation(line: 811, column: 25, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !209, line: 812, column: 15)
!417 = distinct !DILexicalBlock(scope: !418, file: !209, line: 811, column: 15)
!418 = distinct !DILexicalBlock(scope: !409, file: !209, line: 810, column: 44)
!419 = !DILocalVariable(name: "tmp___2", scope: !264, file: !209, line: 785, type: !10)
!420 = !DILocation(line: 811, column: 30, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !209, line: 813, column: 15)
!422 = !DILocation(line: 811, column: 40, scope: !421)
!423 = !DILocation(line: 811, column: 50, scope: !421)
!424 = !DILocation(line: 811, column: 48, scope: !421)
!425 = !DILocation(line: 811, column: 58, scope: !421)
!426 = !DILocation(line: 811, column: 63, scope: !421)
!427 = !DILocation(line: 811, column: 87, scope: !421)
!428 = !DILocation(line: 811, column: 85, scope: !421)
!429 = !DILocation(line: 812, column: 21, scope: !421)
!430 = !DILocation(line: 811, column: 15, scope: !421)
!431 = !DILocation(line: 815, column: 13, scope: !418)
!432 = !DILocation(line: 814, column: 11, scope: !404)
!433 = !DILocation(line: 818, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !370, file: !209, line: 818, column: 15)
!435 = !DILocation(line: 818, column: 33, scope: !434)
!436 = !DILocation(line: 818, column: 15, scope: !370)
!437 = !DILocation(line: 818, column: 21, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !209, line: 820, column: 13)
!439 = distinct !DILexicalBlock(scope: !440, file: !209, line: 819, column: 13)
!440 = distinct !DILexicalBlock(scope: !434, file: !209, line: 818, column: 39)
!441 = !DILocation(line: 818, column: 13, scope: !438)
!442 = !DILocation(line: 821, column: 11, scope: !440)
!443 = !DILocation(line: 818, column: 20, scope: !444)
!444 = distinct !DILexicalBlock(scope: !434, file: !209, line: 818, column: 15)
!445 = !DILocation(line: 818, column: 15, scope: !444)
!446 = !DILocation(line: 818, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !209, line: 820, column: 13)
!448 = distinct !DILexicalBlock(scope: !449, file: !209, line: 819, column: 13)
!449 = distinct !DILexicalBlock(scope: !444, file: !209, line: 818, column: 30)
!450 = !DILocation(line: 818, column: 13, scope: !447)
!451 = !DILocation(line: 821, column: 11, scope: !449)
!452 = !DILocation(line: 819, column: 28, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !209, line: 823, column: 13)
!454 = distinct !DILexicalBlock(scope: !455, file: !209, line: 822, column: 13)
!455 = distinct !DILexicalBlock(scope: !444, file: !209, line: 821, column: 18)
!456 = !DILocation(line: 819, column: 13, scope: !453)
!457 = !DILocation(line: 821, column: 11, scope: !370)
!458 = !DILocation(line: 824, column: 5, scope: !344)
!459 = !DILocation(line: 826, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !321, file: !209, line: 826, column: 9)
!461 = !DILocation(line: 826, column: 9, scope: !321)
!462 = !DILocation(line: 827, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !209, line: 826, column: 16)
!464 = !DILocation(line: 826, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !209, line: 827, column: 12)
!466 = distinct !{!466, !313, !467}
!467 = !DILocation(line: 828, column: 3, scope: !314)
!468 = !DILocation(line: 830, column: 3, scope: !314)
!469 = !DILocation(line: 832, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !279, file: !209, line: 832, column: 7)
!471 = !DILocation(line: 832, column: 25, scope: !470)
!472 = !DILocation(line: 832, column: 7, scope: !279)
!473 = !DILocation(line: 834, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !209, line: 834, column: 5)
!475 = distinct !DILexicalBlock(scope: !476, file: !209, line: 833, column: 5)
!476 = distinct !DILexicalBlock(scope: !470, file: !209, line: 832, column: 30)
!477 = !DILocation(line: 835, column: 5, scope: !476)
!478 = !DILocation(line: 838, column: 8, scope: !279)
!479 = !DILocalVariable(name: "md", scope: !264, file: !209, line: 770, type: !86)
!480 = !DILocation(line: 838, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !209, line: 840, column: 3)
!482 = distinct !DILexicalBlock(scope: !279, file: !209, line: 839, column: 3)
!483 = !DILocation(line: 838, column: 13, scope: !481)
!484 = !DILocation(line: 838, column: 12, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !209, line: 838, column: 9)
!486 = distinct !DILexicalBlock(scope: !481, file: !209, line: 838, column: 13)
!487 = !DILocation(line: 838, column: 31, scope: !485)
!488 = !DILocation(line: 838, column: 9, scope: !486)
!489 = !DILocation(line: 838, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !209, line: 838, column: 64)
!491 = !DILocation(line: 840, column: 18, scope: !492)
!492 = distinct !DILexicalBlock(scope: !486, file: !209, line: 840, column: 5)
!493 = !DILocation(line: 840, column: 12, scope: !492)
!494 = !DILocation(line: 841, column: 42, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !209, line: 841, column: 5)
!496 = !DILocation(line: 841, column: 68, scope: !495)
!497 = !DILocation(line: 841, column: 83, scope: !495)
!498 = !DILocation(line: 841, column: 15, scope: !495)
!499 = !DILocalVariable(name: "tmp___4", scope: !264, file: !209, line: 787, type: !6)
!500 = !DILocation(line: 841, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !486, file: !209, line: 841, column: 9)
!502 = !DILocation(line: 841, column: 9, scope: !486)
!503 = !DILocation(line: 841, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !209, line: 841, column: 11)
!505 = distinct !DILexicalBlock(scope: !501, file: !209, line: 841, column: 23)
!506 = !DILocation(line: 841, column: 31, scope: !504)
!507 = !DILocation(line: 841, column: 21, scope: !504)
!508 = !DILocation(line: 841, column: 17, scope: !504)
!509 = !DILocation(line: 841, column: 11, scope: !504)
!510 = !DILocation(line: 841, column: 37, scope: !504)
!511 = !DILocation(line: 841, column: 11, scope: !505)
!512 = !DILocation(line: 844, column: 14, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !209, line: 841, column: 43)
!514 = !DILocation(line: 844, column: 21, scope: !513)
!515 = !DILocation(line: 844, column: 11, scope: !513)
!516 = !DILocation(line: 845, column: 9, scope: !513)
!517 = !DILocation(line: 841, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !209, line: 848, column: 9)
!519 = distinct !DILexicalBlock(scope: !520, file: !209, line: 847, column: 9)
!520 = distinct !DILexicalBlock(scope: !504, file: !209, line: 846, column: 14)
!521 = !DILocalVariable(name: "tmp___5", scope: !264, file: !209, line: 788, type: !295)
!522 = !DILocation(line: 841, column: 29, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !209, line: 841, column: 13)
!524 = !DILocation(line: 841, column: 53, scope: !523)
!525 = !DILocation(line: 841, column: 60, scope: !523)
!526 = !DILocation(line: 841, column: 50, scope: !523)
!527 = !DILocation(line: 841, column: 46, scope: !523)
!528 = !DILocation(line: 841, column: 40, scope: !523)
!529 = !DILocation(line: 841, column: 38, scope: !523)
!530 = !DILocation(line: 841, column: 27, scope: !523)
!531 = !DILocation(line: 841, column: 13, scope: !523)
!532 = !DILocation(line: 841, column: 67, scope: !523)
!533 = !DILocation(line: 841, column: 13, scope: !520)
!534 = !DILocation(line: 844, column: 16, scope: !535)
!535 = distinct !DILexicalBlock(scope: !523, file: !209, line: 841, column: 75)
!536 = !DILocation(line: 844, column: 23, scope: !535)
!537 = !DILocation(line: 844, column: 13, scope: !535)
!538 = !DILocation(line: 845, column: 11, scope: !535)
!539 = !DILocation(line: 848, column: 5, scope: !505)
!540 = !DILocation(line: 838, column: 14, scope: !486)
!541 = distinct !{!541, !480, !542}
!542 = !DILocation(line: 839, column: 3, scope: !481)
!543 = !DILocation(line: 841, column: 3, scope: !481)
!544 = !DILocation(line: 852, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !279, file: !209, line: 852, column: 7)
!546 = !DILocation(line: 852, column: 26, scope: !545)
!547 = !DILocation(line: 852, column: 7, scope: !279)
!548 = !DILocation(line: 857, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !209, line: 857, column: 9)
!550 = distinct !DILexicalBlock(scope: !551, file: !209, line: 853, column: 5)
!551 = distinct !DILexicalBlock(scope: !545, file: !209, line: 852, column: 58)
!552 = !DILocation(line: 857, column: 23, scope: !549)
!553 = !DILocation(line: 857, column: 9, scope: !550)
!554 = !DILocation(line: 857, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !209, line: 857, column: 29)
!556 = !DILocation(line: 857, column: 9, scope: !557)
!557 = distinct !DILexicalBlock(scope: !550, file: !209, line: 857, column: 9)
!558 = !DILocation(line: 857, column: 23, scope: !557)
!559 = !DILocation(line: 857, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !209, line: 857, column: 29)
!561 = !DILocation(line: 861, column: 5, scope: !550)
!562 = !DILocation(line: 858, column: 38, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !209, line: 865, column: 5)
!564 = distinct !DILexicalBlock(scope: !550, file: !209, line: 864, column: 5)
!565 = !DILocation(line: 858, column: 5, scope: !563)
!566 = !DILocation(line: 859, column: 5, scope: !550)
!567 = !DILocation(line: 862, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !209, line: 862, column: 5)
!569 = distinct !DILexicalBlock(scope: !550, file: !209, line: 861, column: 5)
!570 = !DILocation(line: 863, column: 5, scope: !550)
!571 = !DILocation(line: 865, column: 5, scope: !551)
!572 = !DILocation(line: 870, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !209, line: 868, column: 3)
!574 = distinct !DILexicalBlock(scope: !279, file: !209, line: 867, column: 3)
!575 = !DILocalVariable(name: "tmp___6", scope: !264, file: !209, line: 789, type: !17)
!576 = !DILocation(line: 870, column: 8, scope: !574)
!577 = !DILocalVariable(name: "me", scope: !264, file: !209, line: 771, type: !78)
!578 = !DILocation(line: 871, column: 14, scope: !574)
!579 = !DILocation(line: 871, column: 7, scope: !574)
!580 = !DILocation(line: 871, column: 12, scope: !574)
!581 = !DILocation(line: 872, column: 16, scope: !574)
!582 = !DILocation(line: 873, column: 7, scope: !574)
!583 = !DILocation(line: 873, column: 13, scope: !574)
!584 = !DILocation(line: 874, column: 22, scope: !574)
!585 = !DILocation(line: 874, column: 7, scope: !574)
!586 = !DILocation(line: 874, column: 16, scope: !574)
!587 = !DILocation(line: 875, column: 17, scope: !574)
!588 = !DILocation(line: 875, column: 13, scope: !574)
!589 = !DILocation(line: 875, column: 3, scope: !574)
!590 = !DILocation(line: 875, column: 28, scope: !574)
!591 = !DILocation(line: 877, column: 7, scope: !574)
!592 = !DILocation(line: 877, column: 12, scope: !574)
!593 = !DILocation(line: 878, column: 14, scope: !574)
!594 = !DILocalVariable(name: "pp", scope: !264, file: !209, line: 772, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!596 = !DILocation(line: 880, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !209, line: 881, column: 3)
!598 = distinct !DILexicalBlock(scope: !279, file: !209, line: 880, column: 3)
!599 = !DILocation(line: 880, column: 13, scope: !597)
!600 = !DILocation(line: 880, column: 15, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !209, line: 884, column: 5)
!602 = distinct !DILexicalBlock(scope: !603, file: !209, line: 883, column: 5)
!603 = distinct !DILexicalBlock(scope: !597, file: !209, line: 880, column: 13)
!604 = !DILocalVariable(name: "tmp___7", scope: !264, file: !209, line: 790, type: !295)
!605 = !DILocation(line: 880, column: 28, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !209, line: 880, column: 9)
!607 = !DILocation(line: 880, column: 45, scope: !606)
!608 = !DILocation(line: 880, column: 39, scope: !606)
!609 = !DILocation(line: 880, column: 37, scope: !606)
!610 = !DILocation(line: 880, column: 26, scope: !606)
!611 = !DILocation(line: 880, column: 12, scope: !606)
!612 = !DILocation(line: 880, column: 49, scope: !606)
!613 = !DILocation(line: 880, column: 9, scope: !603)
!614 = !DILocation(line: 880, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !606, file: !209, line: 880, column: 58)
!616 = !DILocation(line: 880, column: 7, scope: !603)
!617 = distinct !{!617, !596, !618}
!618 = !DILocation(line: 881, column: 3, scope: !597)
!619 = !DILocation(line: 883, column: 3, scope: !597)
!620 = !DILocation(line: 881, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !209, line: 887, column: 3)
!622 = distinct !DILexicalBlock(scope: !279, file: !209, line: 886, column: 3)
!623 = !DILocation(line: 881, column: 13, scope: !621)
!624 = !DILocation(line: 881, column: 18, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !209, line: 881, column: 9)
!626 = distinct !DILexicalBlock(scope: !621, file: !209, line: 881, column: 13)
!627 = !DILocation(line: 881, column: 12, scope: !625)
!628 = !DILocation(line: 881, column: 21, scope: !625)
!629 = !DILocation(line: 881, column: 9, scope: !626)
!630 = !DILocation(line: 881, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !625, file: !209, line: 881, column: 28)
!632 = !DILocation(line: 883, column: 15, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !209, line: 884, column: 5)
!634 = distinct !DILexicalBlock(scope: !626, file: !209, line: 883, column: 5)
!635 = !DILocalVariable(name: "tmp___8", scope: !264, file: !209, line: 792, type: !17)
!636 = !DILocation(line: 883, column: 10, scope: !634)
!637 = !DILocalVariable(name: "as", scope: !264, file: !209, line: 791, type: !93)
!638 = !DILocation(line: 884, column: 9, scope: !634)
!639 = !DILocation(line: 884, column: 14, scope: !634)
!640 = !DILocation(line: 885, column: 9, scope: !634)
!641 = !DILocation(line: 886, column: 16, scope: !634)
!642 = !DILocation(line: 887, column: 18, scope: !643)
!643 = distinct !DILexicalBlock(scope: !634, file: !209, line: 887, column: 5)
!644 = !DILocation(line: 887, column: 9, scope: !643)
!645 = !DILocation(line: 887, column: 16, scope: !643)
!646 = !DILocation(line: 888, column: 10, scope: !634)
!647 = !DILocation(line: 888, column: 7, scope: !634)
!648 = distinct !{!648, !620, !649}
!649 = !DILocation(line: 890, column: 3, scope: !621)
!650 = !DILocation(line: 892, column: 3, scope: !621)
!651 = !DILocation(line: 890, column: 3, scope: !279)
!652 = !DILocation(line: 892, column: 1, scope: !264)
!653 = distinct !DISubprogram(name: "misc_detrail", scope: !654, file: !654, line: 25, type: !220, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!654 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/misc.c", directory: "")
!655 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !654, line: 25, type: !13)
!656 = !DILocation(line: 0, scope: !653)
!657 = !DILocation(line: 28, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !654, line: 33, column: 3)
!659 = distinct !DILexicalBlock(scope: !660, file: !654, line: 32, column: 3)
!660 = distinct !DILexicalBlock(scope: !653, file: !654, line: 31, column: 3)
!661 = !DILocalVariable(name: "tmp", scope: !653, file: !654, line: 28, type: !10)
!662 = !DILocation(line: 28, column: 9, scope: !659)
!663 = !DILocalVariable(name: "q", scope: !653, file: !654, line: 27, type: !13)
!664 = !DILocation(line: 29, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !654, line: 31, column: 3)
!666 = distinct !DILexicalBlock(scope: !660, file: !654, line: 30, column: 3)
!667 = !DILocation(line: 0, scope: !660)
!668 = !DILocation(line: 29, column: 13, scope: !665)
!669 = !DILocation(line: 29, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !654, line: 29, column: 9)
!671 = distinct !DILexicalBlock(scope: !665, file: !654, line: 29, column: 13)
!672 = !DILocation(line: 29, column: 29, scope: !670)
!673 = !DILocation(line: 29, column: 27, scope: !670)
!674 = !DILocation(line: 29, column: 9, scope: !671)
!675 = !DILocation(line: 29, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !654, line: 31, column: 7)
!677 = distinct !DILexicalBlock(scope: !678, file: !654, line: 30, column: 7)
!678 = distinct !DILexicalBlock(scope: !670, file: !654, line: 29, column: 48)
!679 = !DILocalVariable(name: "tmp___0", scope: !653, file: !654, line: 29, type: !295)
!680 = !DILocation(line: 29, column: 30, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !654, line: 29, column: 11)
!682 = !DILocation(line: 29, column: 51, scope: !681)
!683 = !DILocation(line: 29, column: 47, scope: !681)
!684 = !DILocation(line: 29, column: 41, scope: !681)
!685 = !DILocation(line: 29, column: 39, scope: !681)
!686 = !DILocation(line: 29, column: 28, scope: !681)
!687 = !DILocation(line: 29, column: 14, scope: !681)
!688 = !DILocation(line: 29, column: 58, scope: !681)
!689 = !DILocation(line: 29, column: 11, scope: !678)
!690 = !DILocation(line: 29, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !681, file: !654, line: 29, column: 67)
!692 = !DILocation(line: 31, column: 5, scope: !678)
!693 = !DILocation(line: 29, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !670, file: !654, line: 31, column: 12)
!695 = !DILocation(line: 29, column: 7, scope: !671)
!696 = distinct !{!696, !664, !697}
!697 = !DILocation(line: 30, column: 3, scope: !665)
!698 = !DILocation(line: 32, column: 3, scope: !665)
!699 = !DILocation(line: 30, column: 6, scope: !660)
!700 = !DILocation(line: 31, column: 3, scope: !660)
!701 = distinct !DISubprogram(name: "misc_readitem", scope: !654, file: !654, line: 153, type: !702, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!702 = !DISubroutineType(types: !703)
!703 = !{!13, !13, !13, !151, !13, !6}
!704 = !DILocalVariable(name: "p", arg: 1, scope: !701, file: !654, line: 153, type: !13)
!705 = !DILocation(line: 0, scope: !701)
!706 = !DILocalVariable(name: "term", arg: 2, scope: !701, file: !654, line: 153, type: !13)
!707 = !DILocalVariable(name: "lptr", arg: 3, scope: !701, file: !654, line: 153, type: !151)
!708 = !DILocalVariable(name: "buffer", arg: 4, scope: !701, file: !654, line: 153, type: !13)
!709 = !DILocalVariable(name: "blength", arg: 5, scope: !701, file: !654, line: 153, type: !6)
!710 = !DILocalVariable(name: "length", scope: !701, file: !654, line: 156, type: !6)
!711 = !DILocation(line: 156, column: 7, scope: !701)
!712 = !DILocation(line: 159, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !654, line: 159, column: 7)
!714 = distinct !DILexicalBlock(scope: !701, file: !654, line: 163, column: 3)
!715 = !DILocation(line: 159, column: 7, scope: !713)
!716 = !DILocation(line: 159, column: 16, scope: !713)
!717 = !DILocation(line: 159, column: 7, scope: !714)
!718 = !DILocation(line: 161, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !654, line: 161, column: 5)
!720 = distinct !DILexicalBlock(scope: !721, file: !654, line: 160, column: 5)
!721 = distinct !DILexicalBlock(scope: !713, file: !654, line: 159, column: 23)
!722 = !DILocalVariable(name: "yield", scope: !701, file: !654, line: 155, type: !13)
!723 = !DILocation(line: 162, column: 10, scope: !720)
!724 = !DILocation(line: 162, column: 7, scope: !720)
!725 = !DILocation(line: 164, column: 3, scope: !721)
!726 = !DILocation(line: 159, column: 13, scope: !727)
!727 = distinct !DILexicalBlock(scope: !713, file: !654, line: 159, column: 7)
!728 = !DILocation(line: 159, column: 7, scope: !727)
!729 = !DILocation(line: 159, column: 16, scope: !727)
!730 = !DILocation(line: 161, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !654, line: 161, column: 5)
!732 = distinct !DILexicalBlock(scope: !733, file: !654, line: 160, column: 5)
!733 = distinct !DILexicalBlock(scope: !727, file: !654, line: 159, column: 23)
!734 = !DILocation(line: 162, column: 10, scope: !732)
!735 = !DILocation(line: 162, column: 7, scope: !732)
!736 = !DILocation(line: 164, column: 3, scope: !733)
!737 = !DILocalVariable(name: "pp", scope: !701, file: !654, line: 157, type: !13)
!738 = !DILocation(line: 168, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !654, line: 168, column: 9)
!740 = distinct !DILexicalBlock(scope: !727, file: !654, line: 164, column: 10)
!741 = !DILocation(line: 168, column: 30, scope: !739)
!742 = !DILocation(line: 168, column: 9, scope: !740)
!743 = !DILocation(line: 169, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !654, line: 170, column: 7)
!745 = distinct !DILexicalBlock(scope: !746, file: !654, line: 169, column: 7)
!746 = distinct !DILexicalBlock(scope: !739, file: !654, line: 168, column: 62)
!747 = !DILocation(line: 169, column: 17, scope: !744)
!748 = !DILocation(line: 169, column: 19, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !654, line: 169, column: 13)
!750 = distinct !DILexicalBlock(scope: !744, file: !654, line: 169, column: 17)
!751 = !DILocation(line: 169, column: 13, scope: !749)
!752 = !DILocation(line: 169, column: 22, scope: !749)
!753 = !DILocation(line: 169, column: 13, scope: !750)
!754 = !DILocation(line: 169, column: 17, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !654, line: 171, column: 11)
!756 = distinct !DILexicalBlock(scope: !757, file: !654, line: 170, column: 11)
!757 = distinct !DILexicalBlock(scope: !749, file: !654, line: 169, column: 28)
!758 = !DILocalVariable(name: "tmp", scope: !701, file: !654, line: 158, type: !295)
!759 = !DILocation(line: 169, column: 31, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !654, line: 169, column: 15)
!761 = !DILocation(line: 169, column: 44, scope: !760)
!762 = !DILocation(line: 169, column: 38, scope: !760)
!763 = !DILocation(line: 169, column: 36, scope: !760)
!764 = !DILocation(line: 169, column: 29, scope: !760)
!765 = !DILocation(line: 169, column: 15, scope: !760)
!766 = !DILocation(line: 169, column: 48, scope: !760)
!767 = !DILocation(line: 169, column: 15, scope: !757)
!768 = !DILocation(line: 169, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !760, file: !654, line: 169, column: 56)
!770 = !DILocation(line: 171, column: 9, scope: !757)
!771 = !DILocation(line: 169, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !749, file: !654, line: 171, column: 16)
!773 = !DILocation(line: 169, column: 11, scope: !750)
!774 = distinct !{!774, !743, !775}
!775 = !DILocation(line: 170, column: 7, scope: !744)
!776 = !DILocation(line: 172, column: 7, scope: !744)
!777 = !DILocation(line: 175, column: 5, scope: !746)
!778 = !DILocation(line: 171, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !654, line: 177, column: 7)
!780 = distinct !DILexicalBlock(scope: !781, file: !654, line: 176, column: 7)
!781 = distinct !DILexicalBlock(scope: !739, file: !654, line: 175, column: 12)
!782 = !DILocation(line: 171, column: 17, scope: !779)
!783 = !DILocation(line: 171, column: 54, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !654, line: 175, column: 9)
!785 = distinct !DILexicalBlock(scope: !786, file: !654, line: 174, column: 9)
!786 = distinct !DILexicalBlock(scope: !779, file: !654, line: 171, column: 17)
!787 = !DILocation(line: 171, column: 48, scope: !784)
!788 = !DILocation(line: 171, column: 19, scope: !784)
!789 = !DILocalVariable(name: "tmp___0", scope: !701, file: !654, line: 159, type: !27)
!790 = !DILocation(line: 171, column: 16, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !654, line: 171, column: 13)
!792 = !DILocation(line: 171, column: 59, scope: !791)
!793 = !DILocation(line: 171, column: 13, scope: !786)
!794 = !DILocation(line: 171, column: 11, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !654, line: 171, column: 92)
!796 = !DILocation(line: 171, column: 11, scope: !786)
!797 = distinct !{!797, !778, !798}
!798 = !DILocation(line: 172, column: 7, scope: !779)
!799 = !DILocation(line: 174, column: 7, scope: !779)
!800 = !DILocation(line: 173, column: 23, scope: !740)
!801 = !DILocation(line: 173, column: 14, scope: !740)
!802 = !DILocation(line: 173, column: 12, scope: !740)
!803 = !DILocation(line: 174, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !740, file: !654, line: 174, column: 9)
!805 = !DILocation(line: 174, column: 32, scope: !804)
!806 = !DILocation(line: 174, column: 9, scope: !740)
!807 = !DILocation(line: 176, column: 29, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !654, line: 176, column: 7)
!809 = distinct !DILexicalBlock(scope: !810, file: !654, line: 175, column: 7)
!810 = distinct !DILexicalBlock(scope: !804, file: !654, line: 174, column: 64)
!811 = !DILocation(line: 176, column: 36, scope: !808)
!812 = !DILocation(line: 176, column: 17, scope: !808)
!813 = !DILocalVariable(name: "tmp___1", scope: !701, file: !654, line: 160, type: !17)
!814 = !DILocation(line: 178, column: 5, scope: !810)
!815 = !DILocation(line: 180, column: 11, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !654, line: 180, column: 11)
!817 = distinct !DILexicalBlock(scope: !804, file: !654, line: 178, column: 12)
!818 = !DILocation(line: 180, column: 18, scope: !816)
!819 = !DILocation(line: 180, column: 22, scope: !816)
!820 = !DILocation(line: 180, column: 11, scope: !817)
!821 = !DILocation(line: 180, column: 19, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !654, line: 182, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !654, line: 181, column: 9)
!824 = distinct !DILexicalBlock(scope: !816, file: !654, line: 180, column: 33)
!825 = !DILocation(line: 180, column: 26, scope: !822)
!826 = !DILocation(line: 180, column: 9, scope: !822)
!827 = !DILocation(line: 183, column: 7, scope: !824)
!828 = !DILocation(line: 0, scope: !804)
!829 = !DILocation(line: 183, column: 90, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !654, line: 184, column: 5)
!831 = distinct !DILexicalBlock(scope: !740, file: !654, line: 183, column: 5)
!832 = !DILocation(line: 183, column: 5, scope: !830)
!833 = !DILocation(line: 184, column: 15, scope: !831)
!834 = !DILocation(line: 184, column: 13, scope: !831)
!835 = !DILocation(line: 184, column: 23, scope: !831)
!836 = !DILocation(line: 0, scope: !727)
!837 = !DILocation(line: 0, scope: !713)
!838 = !DILocation(line: 187, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !654, line: 188, column: 3)
!840 = distinct !DILexicalBlock(scope: !714, file: !654, line: 187, column: 3)
!841 = !DILocation(line: 0, scope: !714)
!842 = !DILocation(line: 187, column: 13, scope: !839)
!843 = !DILocation(line: 187, column: 15, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !654, line: 191, column: 5)
!845 = distinct !DILexicalBlock(scope: !846, file: !654, line: 190, column: 5)
!846 = distinct !DILexicalBlock(scope: !839, file: !654, line: 187, column: 13)
!847 = !DILocalVariable(name: "tmp___2", scope: !701, file: !654, line: 161, type: !295)
!848 = !DILocation(line: 187, column: 28, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !654, line: 187, column: 9)
!850 = !DILocation(line: 187, column: 45, scope: !849)
!851 = !DILocation(line: 187, column: 39, scope: !849)
!852 = !DILocation(line: 187, column: 37, scope: !849)
!853 = !DILocation(line: 187, column: 26, scope: !849)
!854 = !DILocation(line: 187, column: 12, scope: !849)
!855 = !DILocation(line: 187, column: 49, scope: !849)
!856 = !DILocation(line: 187, column: 9, scope: !846)
!857 = !DILocation(line: 187, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !849, file: !654, line: 187, column: 58)
!859 = !DILocation(line: 189, column: 7, scope: !846)
!860 = !DILocation(line: 190, column: 12, scope: !846)
!861 = distinct !{!861, !838, !862}
!862 = !DILocation(line: 191, column: 3, scope: !839)
!863 = !DILocation(line: 193, column: 3, scope: !839)
!864 = !DILocation(line: 193, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !714, file: !654, line: 193, column: 7)
!866 = !DILocation(line: 193, column: 28, scope: !865)
!867 = !DILocation(line: 193, column: 7, scope: !714)
!868 = !DILocation(line: 193, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !654, line: 193, column: 60)
!870 = !DILocation(line: 193, column: 11, scope: !869)
!871 = !DILocation(line: 194, column: 3, scope: !869)
!872 = !DILocation(line: 194, column: 3, scope: !714)
!873 = distinct !DISubprogram(name: "error", scope: !243, file: !243, line: 102, type: !874, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !6, null}
!876 = !DILocalVariable(name: "n", arg: 1, scope: !873, file: !243, line: 102, type: !6)
!877 = !DILocation(line: 0, scope: !873)
!878 = !DILocalVariable(name: "ap", scope: !873, file: !243, line: 108, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !880, line: 102, baseType: !881)
!880 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stdarg.h", directory: "")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !880, line: 40, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 108, baseType: !883)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 192, elements: !59)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 108, size: 192, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !884, file: !3, line: 108, baseType: !12, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !884, file: !3, line: 108, baseType: !12, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !884, file: !3, line: 108, baseType: !17, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !884, file: !3, line: 108, baseType: !17, size: 64, offset: 128)
!890 = !DILocation(line: 108, column: 11, scope: !873)
!891 = !DILocalVariable(name: "__cil_tmp7", scope: !873, file: !243, line: 109, type: !27)
!892 = !DILocation(line: 109, column: 9, scope: !873)
!893 = !DILocalVariable(name: "__cil_tmp8", scope: !873, file: !243, line: 110, type: !27)
!894 = !DILocation(line: 110, column: 9, scope: !873)
!895 = !DILocalVariable(name: "__cil_tmp9", scope: !873, file: !243, line: 111, type: !27)
!896 = !DILocation(line: 111, column: 9, scope: !873)
!897 = !DILocalVariable(name: "__cil_tmp10", scope: !873, file: !243, line: 112, type: !27)
!898 = !DILocation(line: 112, column: 9, scope: !873)
!899 = !DILocalVariable(name: "__cil_tmp11", scope: !873, file: !243, line: 113, type: !27)
!900 = !DILocation(line: 113, column: 9, scope: !873)
!901 = !DILocalVariable(name: "__cil_tmp12", scope: !873, file: !243, line: 114, type: !27)
!902 = !DILocation(line: 114, column: 9, scope: !873)
!903 = !DILocalVariable(name: "__cil_tmp13", scope: !873, file: !243, line: 115, type: !27)
!904 = !DILocation(line: 115, column: 9, scope: !873)
!905 = !DILocalVariable(name: "__cil_tmp14", scope: !873, file: !243, line: 116, type: !27)
!906 = !DILocation(line: 116, column: 9, scope: !873)
!907 = !DILocalVariable(name: "__cil_tmp15", scope: !873, file: !243, line: 117, type: !27)
!908 = !DILocation(line: 117, column: 9, scope: !873)
!909 = !DILocalVariable(name: "__cil_tmp16", scope: !873, file: !243, line: 118, type: !27)
!910 = !DILocation(line: 118, column: 9, scope: !873)
!911 = !DILocalVariable(name: "__cil_tmp17", scope: !873, file: !243, line: 119, type: !27)
!912 = !DILocation(line: 119, column: 9, scope: !873)
!913 = !DILocation(line: 109, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !243, line: 123, column: 3)
!915 = distinct !DILexicalBlock(scope: !916, file: !243, line: 122, column: 3)
!916 = distinct !DILexicalBlock(scope: !873, file: !243, line: 121, column: 3)
!917 = !DILocation(line: 111, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !243, line: 111, column: 7)
!919 = !DILocation(line: 111, column: 7, scope: !916)
!920 = !DILocation(line: 113, column: 38, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !243, line: 113, column: 5)
!922 = distinct !DILexicalBlock(scope: !923, file: !243, line: 112, column: 5)
!923 = distinct !DILexicalBlock(scope: !918, file: !243, line: 111, column: 15)
!924 = !DILocation(line: 113, column: 5, scope: !921)
!925 = !DILocalVariable(name: "ec", scope: !873, file: !243, line: 104, type: !6)
!926 = !DILocation(line: 116, column: 3, scope: !923)
!927 = !DILocation(line: 118, column: 16, scope: !928)
!928 = distinct !DILexicalBlock(scope: !918, file: !243, line: 116, column: 10)
!929 = !DILocation(line: 118, column: 30, scope: !928)
!930 = !DILocation(line: 118, column: 10, scope: !928)
!931 = !DILocation(line: 119, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !243, line: 119, column: 9)
!933 = !DILocation(line: 119, column: 9, scope: !928)
!934 = !DILocation(line: 121, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !243, line: 121, column: 11)
!936 = distinct !DILexicalBlock(scope: !932, file: !243, line: 119, column: 18)
!937 = !DILocation(line: 121, column: 11, scope: !936)
!938 = !DILocation(line: 121, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !243, line: 121, column: 30)
!940 = !DILocation(line: 122, column: 40, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !243, line: 124, column: 7)
!942 = distinct !DILexicalBlock(scope: !936, file: !243, line: 123, column: 7)
!943 = !DILocation(line: 122, column: 7, scope: !941)
!944 = !DILocation(line: 125, column: 5, scope: !936)
!945 = !DILocation(line: 124, column: 12, scope: !946)
!946 = distinct !DILexicalBlock(scope: !932, file: !243, line: 124, column: 9)
!947 = !DILocation(line: 124, column: 9, scope: !932)
!948 = !DILocation(line: 125, column: 40, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !243, line: 126, column: 7)
!950 = distinct !DILexicalBlock(scope: !951, file: !243, line: 125, column: 7)
!951 = distinct !DILexicalBlock(scope: !946, file: !243, line: 124, column: 17)
!952 = !DILocation(line: 125, column: 7, scope: !949)
!953 = !DILocation(line: 128, column: 5, scope: !951)
!954 = !DILocation(line: 126, column: 39, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !243, line: 130, column: 5)
!956 = distinct !DILexicalBlock(scope: !928, file: !243, line: 129, column: 5)
!957 = !DILocation(line: 126, column: 80, scope: !955)
!958 = !DILocation(line: 126, column: 94, scope: !955)
!959 = !DILocation(line: 127, column: 14, scope: !955)
!960 = !DILocation(line: 126, column: 5, scope: !955)
!961 = !DILocation(line: 127, column: 38, scope: !962)
!962 = distinct !DILexicalBlock(scope: !956, file: !243, line: 129, column: 5)
!963 = !DILocation(line: 127, column: 5, scope: !962)
!964 = !DILocation(line: 0, scope: !918)
!965 = !DILocation(line: 130, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !243, line: 132, column: 3)
!967 = distinct !DILexicalBlock(scope: !916, file: !243, line: 131, column: 3)
!968 = !DILocation(line: 132, column: 8, scope: !967)
!969 = !DILocalVariable(name: "me", scope: !873, file: !243, line: 106, type: !78)
!970 = !DILocation(line: 133, column: 8, scope: !967)
!971 = !DILocalVariable(name: "fe", scope: !873, file: !243, line: 107, type: !105)
!972 = !DILocation(line: 135, column: 7, scope: !967)
!973 = !DILocalVariable(name: "i", scope: !873, file: !243, line: 105, type: !6)
!974 = !DILocation(line: 135, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !243, line: 138, column: 3)
!976 = distinct !DILexicalBlock(scope: !916, file: !243, line: 137, column: 3)
!977 = !DILocation(line: 0, scope: !916)
!978 = !DILocation(line: 133, column: 6, scope: !967)
!979 = !DILocation(line: 135, column: 13, scope: !975)
!980 = !DILocation(line: 135, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !243, line: 135, column: 9)
!982 = distinct !DILexicalBlock(scope: !975, file: !243, line: 135, column: 13)
!983 = !DILocation(line: 135, column: 9, scope: !982)
!984 = !DILocation(line: 135, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !243, line: 135, column: 21)
!986 = !DILocation(line: 137, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !243, line: 137, column: 9)
!988 = !DILocation(line: 137, column: 22, scope: !987)
!989 = !DILocation(line: 137, column: 9, scope: !982)
!990 = !DILocation(line: 139, column: 40, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !243, line: 139, column: 7)
!992 = distinct !DILexicalBlock(scope: !993, file: !243, line: 138, column: 7)
!993 = distinct !DILexicalBlock(scope: !987, file: !243, line: 137, column: 28)
!994 = !DILocation(line: 140, column: 20, scope: !991)
!995 = !DILocation(line: 140, column: 28, scope: !991)
!996 = !DILocation(line: 139, column: 7, scope: !991)
!997 = !DILocation(line: 140, column: 16, scope: !992)
!998 = !DILocation(line: 142, column: 5, scope: !993)
!999 = !DILocation(line: 144, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !987, file: !243, line: 144, column: 9)
!1001 = !DILocation(line: 144, column: 28, scope: !1000)
!1002 = !DILocation(line: 144, column: 9, scope: !987)
!1003 = !DILocation(line: 146, column: 40, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !243, line: 146, column: 7)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !243, line: 145, column: 7)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !243, line: 144, column: 60)
!1007 = !DILocation(line: 147, column: 19, scope: !1004)
!1008 = !DILocation(line: 147, column: 35, scope: !1004)
!1009 = !DILocation(line: 147, column: 31, scope: !1004)
!1010 = !DILocation(line: 146, column: 7, scope: !1004)
!1011 = !DILocation(line: 148, column: 16, scope: !1005)
!1012 = !DILocation(line: 150, column: 5, scope: !1006)
!1013 = !DILocation(line: 152, column: 40, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !243, line: 152, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !243, line: 151, column: 7)
!1016 = distinct !DILexicalBlock(scope: !1000, file: !243, line: 150, column: 12)
!1017 = !DILocation(line: 152, column: 7, scope: !1014)
!1018 = !DILocation(line: 135, column: 7, scope: !982)
!1019 = distinct !{!1019, !974, !1020}
!1020 = !DILocation(line: 136, column: 3, scope: !975)
!1021 = !DILocation(line: 138, column: 3, scope: !975)
!1022 = !DILocation(line: 157, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !916, file: !243, line: 157, column: 7)
!1024 = !DILocation(line: 157, column: 7, scope: !916)
!1025 = !DILocation(line: 159, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !243, line: 157, column: 16)
!1027 = !DILocation(line: 160, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1026, file: !243, line: 160, column: 9)
!1029 = !DILocation(line: 160, column: 23, scope: !1028)
!1030 = !DILocation(line: 160, column: 9, scope: !1026)
!1031 = !DILocation(line: 162, column: 40, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !243, line: 162, column: 7)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !243, line: 161, column: 7)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !243, line: 160, column: 29)
!1035 = !DILocation(line: 162, column: 7, scope: !1032)
!1036 = !DILocation(line: 163, column: 25, scope: !1033)
!1037 = !DILocation(line: 165, column: 5, scope: !1034)
!1038 = !DILocation(line: 166, column: 3, scope: !1026)
!1039 = !DILocation(line: 167, column: 10, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1023, file: !243, line: 167, column: 7)
!1041 = !DILocation(line: 167, column: 7, scope: !1023)
!1042 = !DILocation(line: 169, column: 17, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !243, line: 167, column: 15)
!1044 = !DILocation(line: 170, column: 17, scope: !1043)
!1045 = !DILocation(line: 171, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !243, line: 171, column: 9)
!1047 = !DILocation(line: 171, column: 21, scope: !1046)
!1048 = !DILocation(line: 171, column: 9, scope: !1043)
!1049 = !DILocation(line: 173, column: 40, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !243, line: 173, column: 7)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !243, line: 172, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !243, line: 171, column: 27)
!1053 = !DILocation(line: 173, column: 7, scope: !1050)
!1054 = !DILocation(line: 176, column: 5, scope: !1052)
!1055 = !DILocation(line: 177, column: 3, scope: !1043)
!1056 = !DILocation(line: 178, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !916, file: !243, line: 178, column: 7)
!1058 = !DILocation(line: 178, column: 7, scope: !916)
!1059 = !DILocation(line: 180, column: 38, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !243, line: 180, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !243, line: 179, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !243, line: 178, column: 16)
!1063 = !DILocation(line: 180, column: 5, scope: !1060)
!1064 = !DILocation(line: 181, column: 5, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !243, line: 182, column: 5)
!1066 = !DILocation(line: 184, column: 36, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !243, line: 186, column: 3)
!1068 = distinct !DILexicalBlock(scope: !916, file: !243, line: 185, column: 3)
!1069 = !DILocation(line: 184, column: 3, scope: !1067)
!1070 = !DILocation(line: 185, column: 3, scope: !916)
!1071 = !DILocation(line: 187, column: 1, scope: !873)
!1072 = distinct !DISubprogram(name: "misc_malloc", scope: !654, file: !654, line: 44, type: !1073, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!17, !6}
!1075 = !DILocalVariable(name: "size", arg: 1, scope: !1072, file: !654, line: 44, type: !6)
!1076 = !DILocation(line: 0, scope: !1072)
!1077 = !DILocation(line: 47, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !654, line: 51, column: 3)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !654, line: 50, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !654, line: 49, column: 3)
!1081 = !DILocalVariable(name: "tmp", scope: !1072, file: !654, line: 47, type: !17)
!1082 = !DILocalVariable(name: "yield", scope: !1072, file: !654, line: 46, type: !17)
!1083 = !DILocation(line: 48, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !654, line: 48, column: 7)
!1085 = !DILocation(line: 48, column: 29, scope: !1084)
!1086 = !DILocation(line: 48, column: 7, scope: !1080)
!1087 = !DILocation(line: 48, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !654, line: 50, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !654, line: 49, column: 5)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !654, line: 48, column: 61)
!1091 = !DILocation(line: 51, column: 3, scope: !1090)
!1092 = !DILocation(line: 49, column: 3, scope: !1080)
!1093 = distinct !DISubprogram(name: "main", scope: !238, file: !238, line: 117, type: !1094, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!6, !6, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1097 = !DILocalVariable(name: "argc", arg: 1, scope: !1093, file: !238, line: 117, type: !6)
!1098 = !DILocation(line: 0, scope: !1093)
!1099 = !DILocalVariable(name: "argv", arg: 2, scope: !1093, file: !238, line: 117, type: !1096)
!1100 = !DILocalVariable(name: "para_unfinished", scope: !1093, file: !238, line: 119, type: !1101)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !205)
!1102 = !DILocation(line: 119, column: 8, scope: !1093)
!1103 = !DILocalVariable(name: "nest_info", scope: !1093, file: !238, line: 132, type: !6)
!1104 = !DILocation(line: 132, column: 7, scope: !1093)
!1105 = !DILocalVariable(name: "__cil_tmp18", scope: !1093, file: !238, line: 134, type: !17)
!1106 = !DILocation(line: 134, column: 9, scope: !1093)
!1107 = !DILocalVariable(name: "__cil_tmp19", scope: !1093, file: !238, line: 135, type: !27)
!1108 = !DILocation(line: 135, column: 9, scope: !1093)
!1109 = !DILocalVariable(name: "__cil_tmp20", scope: !1093, file: !238, line: 136, type: !27)
!1110 = !DILocation(line: 136, column: 9, scope: !1093)
!1111 = !DILocalVariable(name: "__cil_tmp21", scope: !1093, file: !238, line: 137, type: !27)
!1112 = !DILocation(line: 137, column: 9, scope: !1093)
!1113 = !DILocalVariable(name: "__cil_tmp22", scope: !1093, file: !238, line: 138, type: !27)
!1114 = !DILocation(line: 138, column: 9, scope: !1093)
!1115 = !DILocalVariable(name: "__cil_tmp23", scope: !1093, file: !238, line: 139, type: !27)
!1116 = !DILocation(line: 139, column: 9, scope: !1093)
!1117 = !DILocalVariable(name: "__cil_tmp24", scope: !1093, file: !238, line: 140, type: !27)
!1118 = !DILocation(line: 140, column: 9, scope: !1093)
!1119 = !DILocalVariable(name: "__cil_tmp25", scope: !1093, file: !238, line: 141, type: !27)
!1120 = !DILocation(line: 141, column: 9, scope: !1093)
!1121 = !DILocalVariable(name: "__cil_tmp26", scope: !1093, file: !238, line: 142, type: !27)
!1122 = !DILocation(line: 142, column: 9, scope: !1093)
!1123 = !DILocalVariable(name: "__cil_tmp27", scope: !1093, file: !238, line: 143, type: !27)
!1124 = !DILocation(line: 143, column: 9, scope: !1093)
!1125 = !DILocalVariable(name: "__cil_tmp28", scope: !1093, file: !238, line: 144, type: !27)
!1126 = !DILocation(line: 144, column: 9, scope: !1093)
!1127 = !DILocation(line: 123, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !238, line: 148, column: 3)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 147, column: 3)
!1130 = distinct !DILexicalBlock(scope: !1093, file: !238, line: 146, column: 3)
!1131 = !DILocalVariable(name: "tmp", scope: !1093, file: !238, line: 122, type: !223)
!1132 = !DILocation(line: 123, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 123, column: 7)
!1134 = !DILocation(line: 123, column: 7, scope: !1130)
!1135 = !DILocation(line: 123, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !238, line: 123, column: 14)
!1137 = !DILocation(line: 125, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !238, line: 126, column: 3)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 125, column: 3)
!1140 = !DILocalVariable(name: "tmp___0", scope: !1093, file: !238, line: 123, type: !17)
!1141 = !DILocation(line: 125, column: 12, scope: !1139)
!1142 = !DILocation(line: 126, column: 13, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !238, line: 126, column: 3)
!1144 = !DILocalVariable(name: "tmp___1", scope: !1093, file: !238, line: 124, type: !17)
!1145 = !DILocation(line: 126, column: 14, scope: !1139)
!1146 = !DILocation(line: 130, column: 13, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !238, line: 127, column: 3)
!1148 = !DILocalVariable(name: "tmp___2", scope: !1093, file: !238, line: 125, type: !17)
!1149 = !DILocation(line: 130, column: 12, scope: !1139)
!1150 = !DILocation(line: 130, column: 10, scope: !1139)
!1151 = !DILocation(line: 131, column: 3, scope: !1139)
!1152 = !DILocation(line: 131, column: 11, scope: !1139)
!1153 = !DILocation(line: 131, column: 16, scope: !1139)
!1154 = !DILocation(line: 132, column: 3, scope: !1139)
!1155 = !DILocation(line: 132, column: 11, scope: !1139)
!1156 = !DILocation(line: 132, column: 22, scope: !1139)
!1157 = !DILocation(line: 134, column: 17, scope: !1139)
!1158 = !DILocation(line: 135, column: 13, scope: !1139)
!1159 = !DILocation(line: 135, column: 3, scope: !1139)
!1160 = !DILocation(line: 135, column: 28, scope: !1139)
!1161 = !DILocation(line: 137, column: 23, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 137, column: 7)
!1163 = !DILocation(line: 137, column: 7, scope: !1162)
!1164 = !DILocation(line: 137, column: 37, scope: !1162)
!1165 = !DILocation(line: 137, column: 7, scope: !1130)
!1166 = !DILocation(line: 139, column: 20, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !238, line: 138, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !238, line: 137, column: 69)
!1169 = !DILocation(line: 139, column: 5, scope: !1167)
!1170 = !DILocation(line: 139, column: 13, scope: !1167)
!1171 = !DILocation(line: 139, column: 18, scope: !1167)
!1172 = !DILocation(line: 140, column: 47, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !238, line: 140, column: 5)
!1174 = !DILocation(line: 140, column: 55, scope: !1173)
!1175 = !DILocation(line: 140, column: 46, scope: !1173)
!1176 = !DILocation(line: 140, column: 5, scope: !1173)
!1177 = !DILocation(line: 143, column: 3, scope: !1168)
!1178 = !DILocation(line: 144, column: 47, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !238, line: 145, column: 5)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !238, line: 144, column: 5)
!1181 = distinct !DILexicalBlock(scope: !1162, file: !238, line: 143, column: 10)
!1182 = !DILocation(line: 144, column: 55, scope: !1179)
!1183 = !DILocation(line: 144, column: 46, scope: !1179)
!1184 = !DILocation(line: 144, column: 117, scope: !1179)
!1185 = !DILocation(line: 144, column: 5, scope: !1179)
!1186 = !DILocation(line: 145, column: 76, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !238, line: 146, column: 5)
!1188 = !DILocation(line: 145, column: 20, scope: !1187)
!1189 = !DILocation(line: 145, column: 5, scope: !1187)
!1190 = !DILocation(line: 145, column: 13, scope: !1187)
!1191 = !DILocation(line: 145, column: 18, scope: !1187)
!1192 = !DILocation(line: 146, column: 25, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1181, file: !238, line: 146, column: 9)
!1194 = !DILocation(line: 146, column: 33, scope: !1193)
!1195 = !DILocation(line: 146, column: 9, scope: !1193)
!1196 = !DILocation(line: 146, column: 38, scope: !1193)
!1197 = !DILocation(line: 146, column: 9, scope: !1181)
!1198 = !DILocation(line: 147, column: 17, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !238, line: 148, column: 7)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !238, line: 147, column: 7)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !238, line: 146, column: 70)
!1202 = !DILocalVariable(name: "tmp___3", scope: !1093, file: !238, line: 126, type: !151)
!1203 = !DILocation(line: 147, column: 26, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !238, line: 149, column: 7)
!1205 = !DILocation(line: 147, column: 17, scope: !1204)
!1206 = !DILocalVariable(name: "tmp___4", scope: !1093, file: !238, line: 127, type: !27)
!1207 = !DILocation(line: 147, column: 16, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1200, file: !238, line: 149, column: 7)
!1209 = !DILocation(line: 147, column: 24, scope: !1208)
!1210 = !DILocation(line: 147, column: 7, scope: !1208)
!1211 = !DILocation(line: 150, column: 5, scope: !1201)
!1212 = !DILocation(line: 152, column: 23, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 152, column: 7)
!1214 = !DILocation(line: 152, column: 7, scope: !1213)
!1215 = !DILocation(line: 152, column: 36, scope: !1213)
!1216 = !DILocation(line: 152, column: 7, scope: !1130)
!1217 = !DILocation(line: 154, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !238, line: 152, column: 68)
!1219 = !DILocation(line: 154, column: 13, scope: !1218)
!1220 = !DILocation(line: 155, column: 3, scope: !1218)
!1221 = !DILocation(line: 152, column: 38, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !238, line: 157, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !238, line: 156, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1213, file: !238, line: 155, column: 10)
!1225 = !DILocation(line: 152, column: 15, scope: !1222)
!1226 = !DILocalVariable(name: "tmp___7", scope: !1093, file: !238, line: 130, type: !6)
!1227 = !DILocation(line: 152, column: 17, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !238, line: 152, column: 9)
!1229 = !DILocation(line: 152, column: 9, scope: !1224)
!1230 = !DILocation(line: 154, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !238, line: 152, column: 23)
!1232 = !DILocation(line: 154, column: 15, scope: !1231)
!1233 = !DILocation(line: 155, column: 5, scope: !1231)
!1234 = !DILocation(line: 158, column: 73, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !238, line: 157, column: 7)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !238, line: 156, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1228, file: !238, line: 155, column: 12)
!1238 = !DILocation(line: 158, column: 17, scope: !1235)
!1239 = !DILocation(line: 158, column: 15, scope: !1235)
!1240 = !DILocation(line: 159, column: 27, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !238, line: 159, column: 11)
!1242 = !DILocation(line: 159, column: 11, scope: !1241)
!1243 = !DILocation(line: 159, column: 35, scope: !1241)
!1244 = !DILocation(line: 159, column: 11, scope: !1237)
!1245 = !DILocation(line: 160, column: 19, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !238, line: 161, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !238, line: 160, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !238, line: 159, column: 67)
!1249 = !DILocalVariable(name: "tmp___5", scope: !1093, file: !238, line: 128, type: !151)
!1250 = !DILocation(line: 160, column: 28, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !238, line: 162, column: 9)
!1252 = !DILocation(line: 160, column: 19, scope: !1251)
!1253 = !DILocalVariable(name: "tmp___6", scope: !1093, file: !238, line: 129, type: !27)
!1254 = !DILocation(line: 160, column: 18, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !238, line: 162, column: 9)
!1256 = !DILocation(line: 160, column: 9, scope: !1255)
!1257 = !DILocation(line: 163, column: 7, scope: !1248)
!1258 = !DILocation(line: 165, column: 14, scope: !1130)
!1259 = !DILocation(line: 166, column: 3, scope: !1130)
!1260 = !DILocation(line: 166, column: 22, scope: !1130)
!1261 = !DILocation(line: 168, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !238, line: 168, column: 3)
!1263 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 167, column: 3)
!1264 = !DILocation(line: 168, column: 13, scope: !1262)
!1265 = !DILocation(line: 168, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !238, line: 172, column: 5)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !238, line: 171, column: 5)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !238, line: 168, column: 13)
!1269 = !DILocalVariable(name: "p", scope: !1093, file: !238, line: 120, type: !13)
!1270 = !DILocation(line: 168, column: 12, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !238, line: 168, column: 9)
!1272 = !DILocation(line: 168, column: 30, scope: !1271)
!1273 = !DILocation(line: 168, column: 9, scope: !1268)
!1274 = !DILocation(line: 168, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !238, line: 168, column: 63)
!1276 = !DILocation(line: 170, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1268, file: !238, line: 170, column: 9)
!1278 = !DILocation(line: 170, column: 9, scope: !1277)
!1279 = !DILocation(line: 170, column: 18, scope: !1277)
!1280 = !DILocation(line: 170, column: 9, scope: !1268)
!1281 = !DILocation(line: 170, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !238, line: 172, column: 7)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !238, line: 171, column: 7)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !238, line: 170, column: 25)
!1285 = !DILocation(line: 173, column: 5, scope: !1284)
!1286 = !DILocation(line: 172, column: 11, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 172, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !238, line: 174, column: 7)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !238, line: 173, column: 12)
!1290 = !DILocation(line: 172, column: 25, scope: !1287)
!1291 = !DILocation(line: 172, column: 11, scope: !1288)
!1292 = !DILocation(line: 172, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1287, file: !238, line: 172, column: 31)
!1294 = !DILocation(line: 176, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 176, column: 11)
!1296 = !DILocation(line: 176, column: 25, scope: !1295)
!1297 = !DILocation(line: 176, column: 11, scope: !1288)
!1298 = !DILocation(line: 176, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !238, line: 176, column: 31)
!1300 = !DILocation(line: 180, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 180, column: 11)
!1302 = !DILocation(line: 180, column: 25, scope: !1301)
!1303 = !DILocation(line: 180, column: 11, scope: !1288)
!1304 = !DILocation(line: 180, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !238, line: 180, column: 31)
!1306 = !DILocation(line: 184, column: 7, scope: !1288)
!1307 = !DILocation(line: 173, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !238, line: 187, column: 7)
!1309 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 186, column: 7)
!1310 = !DILocation(line: 174, column: 7, scope: !1288)
!1311 = !DILocation(line: 177, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !238, line: 177, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 176, column: 7)
!1314 = !DILocation(line: 178, column: 7, scope: !1288)
!1315 = !DILocation(line: 181, column: 40, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !238, line: 181, column: 7)
!1317 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 180, column: 7)
!1318 = !DILocation(line: 181, column: 7, scope: !1316)
!1319 = !DILocation(line: 182, column: 7, scope: !1288)
!1320 = !DILocalVariable(name: "q", scope: !1093, file: !238, line: 121, type: !13)
!1321 = !DILocation(line: 187, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !238, line: 188, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 187, column: 7)
!1324 = !DILocation(line: 0, scope: !1288)
!1325 = !DILocation(line: 187, column: 17, scope: !1322)
!1326 = !DILocation(line: 187, column: 19, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !238, line: 191, column: 9)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !238, line: 190, column: 9)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !238, line: 187, column: 17)
!1330 = !DILocalVariable(name: "tmp___8", scope: !1093, file: !238, line: 131, type: !295)
!1331 = !DILocation(line: 187, column: 32, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !238, line: 187, column: 13)
!1333 = !DILocation(line: 187, column: 49, scope: !1332)
!1334 = !DILocation(line: 187, column: 43, scope: !1332)
!1335 = !DILocation(line: 187, column: 41, scope: !1332)
!1336 = !DILocation(line: 187, column: 30, scope: !1332)
!1337 = !DILocation(line: 187, column: 16, scope: !1332)
!1338 = !DILocation(line: 187, column: 53, scope: !1332)
!1339 = !DILocation(line: 187, column: 13, scope: !1329)
!1340 = !DILocation(line: 187, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1332, file: !238, line: 187, column: 62)
!1342 = !DILocation(line: 187, column: 11, scope: !1329)
!1343 = distinct !{!1343, !1321, !1344}
!1344 = !DILocation(line: 188, column: 7, scope: !1322)
!1345 = !DILocation(line: 190, column: 7, scope: !1322)
!1346 = !DILocation(line: 188, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1288, file: !238, line: 188, column: 11)
!1348 = !DILocation(line: 188, column: 11, scope: !1347)
!1349 = !DILocation(line: 188, column: 20, scope: !1347)
!1350 = !DILocation(line: 188, column: 11, scope: !1288)
!1351 = !DILocation(line: 191, column: 13, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !238, line: 190, column: 9)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !238, line: 189, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !238, line: 188, column: 26)
!1355 = !DILocation(line: 192, column: 31, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1354, file: !238, line: 192, column: 13)
!1357 = !DILocation(line: 192, column: 15, scope: !1356)
!1358 = !DILocation(line: 192, column: 13, scope: !1354)
!1359 = !DILocation(line: 194, column: 44, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !238, line: 194, column: 11)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !238, line: 193, column: 11)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !238, line: 192, column: 44)
!1363 = !DILocation(line: 194, column: 11, scope: !1360)
!1364 = !DILocation(line: 195, column: 11, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !238, line: 196, column: 11)
!1366 = !DILocation(line: 196, column: 44, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !238, line: 197, column: 11)
!1368 = !DILocation(line: 196, column: 11, scope: !1367)
!1369 = !DILocation(line: 199, column: 9, scope: !1362)
!1370 = !DILocation(line: 199, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !238, line: 201, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1354, file: !238, line: 200, column: 9)
!1373 = !DILocation(line: 200, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1354, file: !238, line: 200, column: 13)
!1375 = !DILocation(line: 200, column: 23, scope: !1374)
!1376 = !DILocation(line: 200, column: 13, scope: !1354)
!1377 = !DILocation(line: 202, column: 15, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !238, line: 202, column: 15)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !238, line: 200, column: 29)
!1380 = !DILocation(line: 202, column: 26, scope: !1378)
!1381 = !DILocation(line: 202, column: 15, scope: !1379)
!1382 = !DILocation(line: 202, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !238, line: 204, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !238, line: 203, column: 13)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !238, line: 202, column: 32)
!1386 = !DILocation(line: 205, column: 11, scope: !1385)
!1387 = !DILocation(line: 204, column: 46, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1378, file: !238, line: 205, column: 18)
!1389 = !DILocation(line: 204, column: 32, scope: !1388)
!1390 = !DILocation(line: 204, column: 13, scope: !1388)
!1391 = !DILocation(line: 204, column: 44, scope: !1388)
!1392 = !DILocation(line: 205, column: 23, scope: !1388)
!1393 = !DILocalVariable(name: "tmp___9", scope: !1093, file: !238, line: 133, type: !6)
!1394 = !DILocation(line: 205, column: 24, scope: !1388)
!1395 = !DILocation(line: 205, column: 13, scope: !1388)
!1396 = !DILocation(line: 205, column: 38, scope: !1388)
!1397 = !DILocation(line: 207, column: 9, scope: !1379)
!1398 = !DILocation(line: 208, column: 44, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !238, line: 209, column: 11)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !238, line: 208, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1374, file: !238, line: 207, column: 16)
!1402 = !DILocation(line: 208, column: 11, scope: !1399)
!1403 = !DILocation(line: 210, column: 25, scope: !1354)
!1404 = !DILocation(line: 210, column: 9, scope: !1354)
!1405 = !DILocation(line: 210, column: 37, scope: !1354)
!1406 = !DILocation(line: 212, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1354, file: !238, line: 212, column: 13)
!1408 = !DILocation(line: 212, column: 23, scope: !1407)
!1409 = !DILocation(line: 212, column: 13, scope: !1354)
!1410 = !DILocation(line: 214, column: 15, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !238, line: 214, column: 15)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !238, line: 212, column: 29)
!1413 = !DILocation(line: 214, column: 26, scope: !1411)
!1414 = !DILocation(line: 214, column: 15, scope: !1412)
!1415 = !DILocation(line: 214, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !238, line: 216, column: 13)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !238, line: 215, column: 13)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !238, line: 214, column: 32)
!1419 = !DILocation(line: 217, column: 11, scope: !1418)
!1420 = !DILocation(line: 215, column: 24, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1411, file: !238, line: 217, column: 18)
!1422 = !DILocation(line: 215, column: 48, scope: !1421)
!1423 = !DILocation(line: 215, column: 29, scope: !1421)
!1424 = !DILocation(line: 215, column: 27, scope: !1421)
!1425 = !DILocation(line: 217, column: 9, scope: !1412)
!1426 = !DILocation(line: 218, column: 7, scope: !1354)
!1427 = !DILocation(line: 218, column: 7, scope: !1288)
!1428 = distinct !{!1428, !1261, !1429}
!1429 = !DILocation(line: 222, column: 3, scope: !1262)
!1430 = !DILocation(line: 224, column: 3, scope: !1262)
!1431 = !DILocation(line: 224, column: 3, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !238, line: 228, column: 3)
!1433 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 227, column: 3)
!1434 = !DILocation(line: 224, column: 13, scope: !1432)
!1435 = !DILocation(line: 224, column: 28, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !238, line: 224, column: 9)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !238, line: 224, column: 13)
!1438 = !DILocation(line: 224, column: 12, scope: !1436)
!1439 = !DILocation(line: 224, column: 35, scope: !1436)
!1440 = !DILocation(line: 224, column: 9, scope: !1437)
!1441 = !DILocation(line: 224, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !238, line: 224, column: 71)
!1443 = !DILocation(line: 226, column: 18, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !238, line: 227, column: 5)
!1445 = distinct !DILexicalBlock(scope: !1437, file: !238, line: 226, column: 5)
!1446 = !DILocation(line: 226, column: 26, scope: !1444)
!1447 = !DILocation(line: 226, column: 5, scope: !1444)
!1448 = !DILocation(line: 227, column: 38, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !238, line: 228, column: 5)
!1450 = !DILocation(line: 227, column: 5, scope: !1449)
!1451 = !DILocation(line: 228, column: 14, scope: !1445)
!1452 = !DILocation(line: 228, column: 22, scope: !1445)
!1453 = !DILocation(line: 228, column: 12, scope: !1445)
!1454 = distinct !{!1454, !1431, !1455}
!1455 = !DILocation(line: 230, column: 3, scope: !1432)
!1456 = !DILocation(line: 232, column: 3, scope: !1432)
!1457 = !DILocation(line: 231, column: 10, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !238, line: 236, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1130, file: !238, line: 235, column: 3)
!1460 = !DILocation(line: 231, column: 3, scope: !1458)
!1461 = !DILocation(line: 233, column: 11, scope: !1130)
!1462 = !DILocation(line: 233, column: 3, scope: !1130)
!1463 = !DILocation(line: 0, scope: !1130)
!1464 = !DILocation(line: 235, column: 1, scope: !1093)
!1465 = distinct !DISubprogram(name: "xfpt_decode_arg", scope: !238, file: !238, line: 50, type: !1466, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!223, !6, !1096}
!1468 = !DILocalVariable(name: "argc", arg: 1, scope: !1465, file: !238, line: 50, type: !6)
!1469 = !DILocation(line: 0, scope: !1465)
!1470 = !DILocalVariable(name: "argv", arg: 2, scope: !1465, file: !238, line: 50, type: !1096)
!1471 = !DILocalVariable(name: "__cil_tmp15", scope: !1465, file: !238, line: 64, type: !27)
!1472 = !DILocation(line: 64, column: 9, scope: !1465)
!1473 = !DILocalVariable(name: "__cil_tmp16", scope: !1465, file: !238, line: 65, type: !27)
!1474 = !DILocation(line: 65, column: 9, scope: !1465)
!1475 = !DILocalVariable(name: "__cil_tmp17", scope: !1465, file: !238, line: 66, type: !27)
!1476 = !DILocation(line: 66, column: 9, scope: !1465)
!1477 = !DILocalVariable(name: "__cil_tmp18", scope: !1465, file: !238, line: 67, type: !27)
!1478 = !DILocation(line: 67, column: 9, scope: !1465)
!1479 = !DILocalVariable(name: "__cil_tmp19", scope: !1465, file: !238, line: 68, type: !27)
!1480 = !DILocation(line: 68, column: 9, scope: !1465)
!1481 = !DILocalVariable(name: "__cil_tmp20", scope: !1465, file: !238, line: 69, type: !27)
!1482 = !DILocation(line: 69, column: 9, scope: !1465)
!1483 = !DILocalVariable(name: "__cil_tmp21", scope: !1465, file: !238, line: 70, type: !27)
!1484 = !DILocation(line: 70, column: 9, scope: !1465)
!1485 = !DILocalVariable(name: "__cil_tmp22", scope: !1465, file: !238, line: 71, type: !27)
!1486 = !DILocation(line: 71, column: 9, scope: !1465)
!1487 = !DILocalVariable(name: "i", scope: !1465, file: !238, line: 52, type: !6)
!1488 = !DILocation(line: 54, column: 3, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !238, line: 56, column: 3)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !238, line: 55, column: 3)
!1491 = distinct !DILexicalBlock(scope: !1465, file: !238, line: 73, column: 3)
!1492 = !DILocation(line: 0, scope: !1491)
!1493 = !DILocation(line: 54, column: 13, scope: !1489)
!1494 = !DILocation(line: 54, column: 14, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !238, line: 54, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !238, line: 54, column: 13)
!1497 = !DILocation(line: 54, column: 9, scope: !1496)
!1498 = !DILocation(line: 54, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !238, line: 54, column: 23)
!1500 = !DILocation(line: 56, column: 35, scope: !1496)
!1501 = !DILocation(line: 56, column: 28, scope: !1496)
!1502 = !DILocalVariable(name: "arg", scope: !1465, file: !238, line: 53, type: !13)
!1503 = !DILocation(line: 57, column: 15, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !238, line: 57, column: 9)
!1505 = !DILocation(line: 57, column: 9, scope: !1504)
!1506 = !DILocation(line: 57, column: 20, scope: !1504)
!1507 = !DILocation(line: 57, column: 9, scope: !1496)
!1508 = !DILocation(line: 57, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !238, line: 57, column: 27)
!1510 = !DILocation(line: 58, column: 15, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !238, line: 60, column: 5)
!1512 = distinct !DILexicalBlock(scope: !1496, file: !238, line: 59, column: 5)
!1513 = !DILocalVariable(name: "tmp___3", scope: !1465, file: !238, line: 58, type: !6)
!1514 = !DILocation(line: 58, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1496, file: !238, line: 58, column: 9)
!1516 = !DILocation(line: 58, column: 9, scope: !1496)
!1517 = !DILocation(line: 60, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !238, line: 58, column: 23)
!1519 = !DILocation(line: 60, column: 46, scope: !1518)
!1520 = !DILocation(line: 60, column: 39, scope: !1518)
!1521 = !DILocation(line: 60, column: 20, scope: !1518)
!1522 = !DILocation(line: 61, column: 27, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !238, line: 61, column: 11)
!1524 = !DILocation(line: 61, column: 11, scope: !1523)
!1525 = !DILocation(line: 61, column: 40, scope: !1523)
!1526 = !DILocation(line: 61, column: 11, scope: !1518)
!1527 = !DILocation(line: 61, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !238, line: 63, column: 9)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !238, line: 62, column: 9)
!1530 = distinct !DILexicalBlock(scope: !1523, file: !238, line: 61, column: 72)
!1531 = !DILocation(line: 61, column: 9, scope: !1530)
!1532 = !DILocation(line: 63, column: 5, scope: !1518)
!1533 = !DILocation(line: 63, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !238, line: 65, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !238, line: 64, column: 7)
!1536 = distinct !DILexicalBlock(scope: !1515, file: !238, line: 63, column: 12)
!1537 = !DILocalVariable(name: "tmp___2", scope: !1465, file: !238, line: 57, type: !6)
!1538 = !DILocation(line: 63, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !238, line: 63, column: 11)
!1540 = !DILocation(line: 63, column: 11, scope: !1536)
!1541 = !DILocation(line: 65, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !238, line: 63, column: 25)
!1543 = !DILocation(line: 65, column: 46, scope: !1542)
!1544 = !DILocation(line: 65, column: 39, scope: !1542)
!1545 = !DILocation(line: 65, column: 20, scope: !1542)
!1546 = !DILocation(line: 66, column: 29, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !238, line: 66, column: 13)
!1548 = !DILocation(line: 66, column: 13, scope: !1547)
!1549 = !DILocation(line: 66, column: 40, scope: !1547)
!1550 = !DILocation(line: 66, column: 13, scope: !1542)
!1551 = !DILocation(line: 66, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !238, line: 68, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !238, line: 67, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !238, line: 66, column: 72)
!1555 = !DILocation(line: 66, column: 11, scope: !1554)
!1556 = !DILocation(line: 68, column: 7, scope: !1542)
!1557 = !DILocation(line: 68, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !238, line: 70, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !238, line: 69, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1539, file: !238, line: 68, column: 14)
!1561 = !DILocalVariable(name: "tmp___0", scope: !1465, file: !238, line: 55, type: !6)
!1562 = !DILocation(line: 68, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !238, line: 68, column: 13)
!1564 = !DILocation(line: 68, column: 13, scope: !1560)
!1565 = !DILocation(line: 70, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !238, line: 70, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !238, line: 69, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !238, line: 68, column: 27)
!1569 = !DILocation(line: 71, column: 11, scope: !1568)
!1570 = !DILocation(line: 68, column: 21, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !238, line: 74, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !238, line: 73, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1563, file: !238, line: 72, column: 16)
!1574 = !DILocalVariable(name: "tmp___1", scope: !1465, file: !238, line: 56, type: !6)
!1575 = !DILocation(line: 68, column: 23, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !238, line: 68, column: 15)
!1577 = !DILocation(line: 68, column: 15, scope: !1573)
!1578 = !DILocation(line: 70, column: 13, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !238, line: 70, column: 13)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !238, line: 69, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !238, line: 68, column: 29)
!1582 = !DILocation(line: 71, column: 13, scope: !1581)
!1583 = !DILocation(line: 73, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !238, line: 74, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !238, line: 73, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1576, file: !238, line: 72, column: 18)
!1587 = !DILocalVariable(name: "tmp", scope: !1465, file: !238, line: 54, type: !6)
!1588 = !DILocation(line: 73, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !238, line: 73, column: 17)
!1590 = !DILocation(line: 73, column: 17, scope: !1586)
!1591 = !DILocation(line: 75, column: 48, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !238, line: 75, column: 15)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !238, line: 74, column: 15)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !238, line: 73, column: 27)
!1595 = !DILocation(line: 76, column: 23, scope: !1592)
!1596 = !DILocation(line: 75, column: 15, scope: !1592)
!1597 = !DILocation(line: 76, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !238, line: 78, column: 15)
!1599 = !DILocation(line: 80, column: 48, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !238, line: 81, column: 15)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !238, line: 80, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1589, file: !238, line: 79, column: 20)
!1603 = !DILocation(line: 80, column: 15, scope: !1600)
!1604 = !DILocation(line: 81, column: 15, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !238, line: 83, column: 15)
!1606 = !DILocation(line: 82, column: 15, scope: !1602)
!1607 = !DILocation(line: 0, scope: !1515)
!1608 = !DILocation(line: 54, column: 7, scope: !1496)
!1609 = distinct !{!1609, !1488, !1610}
!1610 = !DILocation(line: 55, column: 3, scope: !1489)
!1611 = !DILocation(line: 57, column: 3, scope: !1489)
!1612 = !DILocation(line: 88, column: 16, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1491, file: !238, line: 88, column: 7)
!1614 = !DILocation(line: 88, column: 12, scope: !1613)
!1615 = !DILocation(line: 88, column: 7, scope: !1491)
!1616 = !DILocation(line: 90, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !238, line: 90, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !238, line: 89, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !238, line: 88, column: 21)
!1620 = !DILocation(line: 91, column: 5, scope: !1619)
!1621 = !DILocation(line: 97, column: 43, scope: !1491)
!1622 = !DILocation(line: 97, column: 36, scope: !1491)
!1623 = !DILocation(line: 97, column: 17, scope: !1491)
!1624 = !DILocation(line: 98, column: 23, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1491, file: !238, line: 98, column: 7)
!1626 = !DILocation(line: 98, column: 7, scope: !1625)
!1627 = !DILocation(line: 98, column: 37, scope: !1625)
!1628 = !DILocation(line: 98, column: 7, scope: !1491)
!1629 = !DILocation(line: 98, column: 25, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !238, line: 98, column: 9)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !238, line: 98, column: 69)
!1632 = !DILocation(line: 98, column: 9, scope: !1630)
!1633 = !DILocation(line: 98, column: 38, scope: !1630)
!1634 = !DILocation(line: 98, column: 9, scope: !1631)
!1635 = !DILocation(line: 101, column: 40, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !238, line: 100, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !238, line: 99, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !238, line: 98, column: 70)
!1639 = !DILocation(line: 101, column: 17, scope: !1636)
!1640 = !DILocalVariable(name: "tmp___4", scope: !1465, file: !238, line: 61, type: !10)
!1641 = !DILocalVariable(name: "len", scope: !1465, file: !238, line: 60, type: !6)
!1642 = !DILocation(line: 102, column: 33, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !238, line: 102, column: 7)
!1644 = !DILocation(line: 102, column: 17, scope: !1643)
!1645 = !DILocalVariable(name: "tmp___5", scope: !1465, file: !238, line: 62, type: !17)
!1646 = !DILocation(line: 102, column: 20, scope: !1637)
!1647 = !DILocation(line: 103, column: 48, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1637, file: !238, line: 103, column: 7)
!1649 = !DILocation(line: 103, column: 113, scope: !1648)
!1650 = !DILocation(line: 103, column: 7, scope: !1648)
!1651 = !DILocation(line: 104, column: 41, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1637, file: !238, line: 105, column: 7)
!1653 = !DILocation(line: 104, column: 17, scope: !1652)
!1654 = !DILocalVariable(name: "tmp___6", scope: !1465, file: !238, line: 63, type: !27)
!1655 = !DILocalVariable(name: "p", scope: !1465, file: !238, line: 59, type: !13)
!1656 = !DILocation(line: 104, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1638, file: !238, line: 104, column: 11)
!1658 = !DILocation(line: 104, column: 29, scope: !1657)
!1659 = !DILocation(line: 104, column: 11, scope: !1638)
!1660 = !DILocation(line: 104, column: 26, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !238, line: 104, column: 61)
!1662 = !DILocation(line: 104, column: 24, scope: !1661)
!1663 = !DILocation(line: 104, column: 15, scope: !1661)
!1664 = !DILocation(line: 105, column: 7, scope: !1661)
!1665 = !DILocation(line: 0, scope: !1638)
!1666 = !DILocation(line: 105, column: 49, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !238, line: 107, column: 7)
!1668 = distinct !DILexicalBlock(scope: !1638, file: !238, line: 106, column: 7)
!1669 = !DILocation(line: 105, column: 62, scope: !1667)
!1670 = !DILocation(line: 105, column: 7, scope: !1667)
!1671 = !DILocation(line: 108, column: 5, scope: !1638)
!1672 = !DILocation(line: 109, column: 3, scope: !1631)
!1673 = !DILocation(line: 108, column: 3, scope: !1491)
!1674 = !DILocation(line: 110, column: 1, scope: !1465)
!1675 = distinct !DISubprogram(name: "read_nextline", scope: !1676, file: !1676, line: 181, type: !1677, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1676 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/read.c", directory: "")
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!13}
!1679 = !DILocalVariable(name: "__cil_tmp15", scope: !1675, file: !1676, line: 197, type: !27)
!1680 = !DILocation(line: 197, column: 9, scope: !1675)
!1681 = !DILocalVariable(name: "__cil_tmp16", scope: !1675, file: !1676, line: 198, type: !27)
!1682 = !DILocation(line: 198, column: 9, scope: !1675)
!1683 = !DILocalVariable(name: "__cil_tmp17", scope: !1675, file: !1676, line: 199, type: !27)
!1684 = !DILocation(line: 199, column: 9, scope: !1675)
!1685 = !DILocation(line: 189, column: 23, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1676, line: 189, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1675, file: !1676, line: 201, column: 3)
!1688 = !DILocation(line: 189, column: 7, scope: !1686)
!1689 = !DILocation(line: 189, column: 33, scope: !1686)
!1690 = !DILocation(line: 189, column: 7, scope: !1687)
!1691 = !DILocation(line: 191, column: 13, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !1676, line: 189, column: 65)
!1693 = !DILocalVariable(name: "yield", scope: !1675, file: !1676, line: 186, type: !13)
!1694 = !DILocation(line: 0, scope: !1675)
!1695 = !DILocation(line: 192, column: 15, scope: !1692)
!1696 = !DILocation(line: 193, column: 5, scope: !1692)
!1697 = !DILocation(line: 198, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1687, file: !1676, line: 198, column: 7)
!1699 = !DILocation(line: 198, column: 13, scope: !1698)
!1700 = !DILocation(line: 198, column: 7, scope: !1687)
!1701 = !DILocation(line: 200, column: 10, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !1676, line: 198, column: 19)
!1703 = !DILocalVariable(name: "ps", scope: !1675, file: !1676, line: 187, type: !118)
!1704 = !DILocation(line: 201, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !1676, line: 201, column: 9)
!1706 = !DILocation(line: 201, column: 28, scope: !1705)
!1707 = !DILocation(line: 201, column: 9, scope: !1702)
!1708 = !DILocation(line: 201, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !1676, line: 203, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !1676, line: 202, column: 7)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !1676, line: 201, column: 60)
!1712 = !DILocation(line: 204, column: 5, scope: !1711)
!1713 = !DILocation(line: 203, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !1676, line: 205, column: 7)
!1715 = distinct !DILexicalBlock(scope: !1705, file: !1676, line: 204, column: 12)
!1716 = !DILocation(line: 204, column: 49, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !1676, line: 204, column: 7)
!1718 = !DILocation(line: 205, column: 19, scope: !1717)
!1719 = !DILocation(line: 205, column: 15, scope: !1717)
!1720 = !DILocation(line: 204, column: 7, scope: !1717)
!1721 = !DILocation(line: 205, column: 20, scope: !1714)
!1722 = !DILocation(line: 205, column: 14, scope: !1714)
!1723 = !DILocation(line: 206, column: 12, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1714, file: !1676, line: 206, column: 7)
!1725 = !DILocation(line: 206, column: 7, scope: !1724)
!1726 = !DILocation(line: 207, column: 15, scope: !1715)
!1727 = !DILocation(line: 207, column: 7, scope: !1715)
!1728 = !DILocation(line: 209, column: 3, scope: !1702)
!1729 = !DILocation(line: 216, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1687, file: !1676, line: 216, column: 7)
!1731 = !DILocation(line: 216, column: 13, scope: !1730)
!1732 = !DILocation(line: 216, column: 7, scope: !1687)
!1733 = !DILocation(line: 218, column: 14, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !1676, line: 216, column: 18)
!1735 = !DILocalVariable(name: "ps___0", scope: !1675, file: !1676, line: 188, type: !118)
!1736 = !DILocation(line: 219, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !1676, line: 219, column: 9)
!1738 = !DILocation(line: 219, column: 27, scope: !1737)
!1739 = !DILocation(line: 219, column: 24, scope: !1737)
!1740 = !DILocation(line: 219, column: 9, scope: !1734)
!1741 = !DILocation(line: 219, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !1676, line: 219, column: 34)
!1743 = !DILocation(line: 220, column: 5, scope: !1742)
!1744 = !DILocation(line: 220, column: 47, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1676, line: 222, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1734, file: !1676, line: 221, column: 5)
!1747 = !DILocation(line: 221, column: 21, scope: !1745)
!1748 = !DILocation(line: 221, column: 13, scope: !1745)
!1749 = !DILocation(line: 220, column: 5, scope: !1745)
!1750 = !DILocation(line: 221, column: 22, scope: !1746)
!1751 = !DILocation(line: 221, column: 12, scope: !1746)
!1752 = !DILocation(line: 222, column: 10, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !1676, line: 222, column: 5)
!1754 = !DILocation(line: 222, column: 5, scope: !1753)
!1755 = !DILocation(line: 223, column: 13, scope: !1734)
!1756 = !DILocation(line: 223, column: 5, scope: !1734)
!1757 = !DILocation(line: 229, column: 3, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1676, line: 226, column: 3)
!1759 = distinct !DILexicalBlock(scope: !1687, file: !1676, line: 225, column: 3)
!1760 = !DILocation(line: 229, column: 13, scope: !1758)
!1761 = !DILocation(line: 231, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !1676, line: 231, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !1676, line: 229, column: 13)
!1764 = !DILocation(line: 231, column: 9, scope: !1762)
!1765 = !DILocation(line: 231, column: 34, scope: !1762)
!1766 = !DILocation(line: 231, column: 9, scope: !1763)
!1767 = !DILocation(line: 233, column: 27, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !1676, line: 233, column: 11)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !1676, line: 231, column: 40)
!1770 = !DILocation(line: 233, column: 41, scope: !1768)
!1771 = !DILocation(line: 233, column: 11, scope: !1768)
!1772 = !DILocation(line: 233, column: 50, scope: !1768)
!1773 = !DILocation(line: 233, column: 11, scope: !1769)
!1774 = !DILocation(line: 235, column: 16, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1676, line: 234, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1768, file: !1676, line: 233, column: 82)
!1777 = !DILocalVariable(name: "temp", scope: !1675, file: !1676, line: 189, type: !78)
!1778 = !DILocation(line: 236, column: 24, scope: !1775)
!1779 = !DILocation(line: 236, column: 38, scope: !1775)
!1780 = !DILocation(line: 236, column: 22, scope: !1775)
!1781 = !DILocation(line: 237, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1775, file: !1676, line: 237, column: 9)
!1783 = !DILocation(line: 237, column: 9, scope: !1782)
!1784 = !DILocation(line: 240, column: 7, scope: !1776)
!1785 = !DILocation(line: 241, column: 33, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !1676, line: 242, column: 9)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1676, line: 241, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1768, file: !1676, line: 240, column: 14)
!1789 = !DILocation(line: 241, column: 47, scope: !1786)
!1790 = !DILocation(line: 241, column: 58, scope: !1786)
!1791 = !DILocation(line: 241, column: 66, scope: !1786)
!1792 = !DILocation(line: 241, column: 9, scope: !1786)
!1793 = !DILocation(line: 242, column: 35, scope: !1787)
!1794 = !DILocation(line: 242, column: 49, scope: !1787)
!1795 = !DILocation(line: 242, column: 60, scope: !1787)
!1796 = !DILocation(line: 242, column: 9, scope: !1787)
!1797 = !DILocation(line: 242, column: 23, scope: !1787)
!1798 = !DILocation(line: 242, column: 32, scope: !1787)
!1799 = !DILocation(line: 243, column: 9, scope: !1788)
!1800 = !DILocation(line: 245, column: 5, scope: !1769)
!1801 = !DILocation(line: 252, column: 27, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1676, line: 252, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1762, file: !1676, line: 245, column: 12)
!1804 = !DILocation(line: 252, column: 11, scope: !1802)
!1805 = !DILocation(line: 252, column: 34, scope: !1802)
!1806 = !DILocation(line: 252, column: 11, scope: !1803)
!1807 = !DILocation(line: 252, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1802, file: !1676, line: 252, column: 66)
!1809 = !DILocation(line: 253, column: 57, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !1676, line: 255, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !1676, line: 254, column: 7)
!1812 = !DILocation(line: 253, column: 99, scope: !1810)
!1813 = !DILocation(line: 253, column: 107, scope: !1810)
!1814 = !DILocation(line: 253, column: 17, scope: !1810)
!1815 = !DILocalVariable(name: "tmp___4", scope: !1675, file: !1676, line: 196, type: !27)
!1816 = !DILocation(line: 253, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1803, file: !1676, line: 253, column: 11)
!1818 = !DILocation(line: 253, column: 54, scope: !1817)
!1819 = !DILocation(line: 253, column: 11, scope: !1803)
!1820 = !DILocation(line: 255, column: 16, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !1676, line: 254, column: 9)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !1676, line: 253, column: 86)
!1823 = !DILocation(line: 255, column: 24, scope: !1821)
!1824 = !DILocalVariable(name: "prev", scope: !1675, file: !1676, line: 190, type: !105)
!1825 = !DILocation(line: 256, column: 16, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !1676, line: 256, column: 9)
!1827 = !DILocation(line: 256, column: 24, scope: !1826)
!1828 = !DILocation(line: 256, column: 9, scope: !1826)
!1829 = !DILocation(line: 257, column: 22, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1821, file: !1676, line: 258, column: 9)
!1831 = !DILocation(line: 257, column: 14, scope: !1830)
!1832 = !DILocation(line: 257, column: 9, scope: !1830)
!1833 = !DILocation(line: 258, column: 16, scope: !1821)
!1834 = !DILocation(line: 260, column: 7, scope: !1822)
!1835 = !DILocation(line: 262, column: 10, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1676, line: 261, column: 9)
!1837 = distinct !DILexicalBlock(scope: !1817, file: !1676, line: 260, column: 14)
!1838 = !DILocation(line: 262, column: 18, scope: !1836)
!1839 = !DILocation(line: 262, column: 30, scope: !1836)
!1840 = !DILocation(line: 264, column: 13, scope: !1836)
!1841 = !DILocalVariable(name: "q", scope: !1675, file: !1676, line: 185, type: !13)
!1842 = !DILocation(line: 265, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !1676, line: 265, column: 9)
!1844 = !DILocalVariable(name: "tmp", scope: !1675, file: !1676, line: 191, type: !10)
!1845 = !DILocalVariable(name: "len", scope: !1675, file: !1676, line: 183, type: !6)
!1846 = !DILocation(line: 267, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !1676, line: 268, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1837, file: !1676, line: 267, column: 9)
!1849 = !DILocation(line: 0, scope: !1837)
!1850 = !DILocation(line: 267, column: 19, scope: !1847)
!1851 = !DILocation(line: 269, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !1676, line: 267, column: 19)
!1853 = !DILocalVariable(name: "p", scope: !1675, file: !1676, line: 184, type: !13)
!1854 = !DILocation(line: 270, column: 11, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !1676, line: 271, column: 11)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 270, column: 11)
!1857 = !DILocation(line: 0, scope: !1852)
!1858 = !DILocation(line: 270, column: 21, scope: !1855)
!1859 = !DILocation(line: 270, column: 17, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !1676, line: 270, column: 17)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !1676, line: 270, column: 21)
!1862 = !DILocation(line: 270, column: 37, scope: !1860)
!1863 = !DILocation(line: 270, column: 35, scope: !1860)
!1864 = !DILocation(line: 270, column: 17, scope: !1861)
!1865 = !DILocation(line: 270, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !1676, line: 272, column: 15)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !1676, line: 271, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !1676, line: 270, column: 56)
!1869 = !DILocalVariable(name: "tmp___0", scope: !1675, file: !1676, line: 192, type: !295)
!1870 = !DILocation(line: 270, column: 38, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !1676, line: 270, column: 19)
!1872 = !DILocation(line: 270, column: 59, scope: !1871)
!1873 = !DILocation(line: 270, column: 55, scope: !1871)
!1874 = !DILocation(line: 270, column: 49, scope: !1871)
!1875 = !DILocation(line: 270, column: 47, scope: !1871)
!1876 = !DILocation(line: 270, column: 36, scope: !1871)
!1877 = !DILocation(line: 270, column: 22, scope: !1871)
!1878 = !DILocation(line: 270, column: 66, scope: !1871)
!1879 = !DILocation(line: 270, column: 19, scope: !1868)
!1880 = !DILocation(line: 270, column: 17, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1871, file: !1676, line: 270, column: 75)
!1882 = !DILocation(line: 272, column: 13, scope: !1868)
!1883 = !DILocation(line: 270, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1860, file: !1676, line: 272, column: 20)
!1885 = !DILocation(line: 270, column: 15, scope: !1861)
!1886 = distinct !{!1886, !1854, !1887}
!1887 = !DILocation(line: 271, column: 11, scope: !1855)
!1888 = !DILocation(line: 273, column: 11, scope: !1855)
!1889 = !DILocation(line: 272, column: 17, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 272, column: 15)
!1891 = !DILocation(line: 272, column: 21, scope: !1890)
!1892 = !DILocation(line: 272, column: 15, scope: !1852)
!1893 = !DILocation(line: 272, column: 13, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !1676, line: 272, column: 27)
!1895 = !DILocation(line: 272, column: 50, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !1676, line: 275, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1676, line: 274, column: 13)
!1898 = distinct !DILexicalBlock(scope: !1890, file: !1676, line: 273, column: 18)
!1899 = !DILocation(line: 272, column: 23, scope: !1896)
!1900 = !DILocalVariable(name: "tmp___1", scope: !1675, file: !1676, line: 193, type: !6)
!1901 = !DILocation(line: 272, column: 25, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !1676, line: 272, column: 17)
!1903 = !DILocation(line: 272, column: 17, scope: !1898)
!1904 = !DILocation(line: 272, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !1676, line: 272, column: 31)
!1906 = !DILocation(line: 274, column: 17, scope: !1852)
!1907 = !DILocation(line: 275, column: 14, scope: !1852)
!1908 = !DILocation(line: 277, column: 31, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 277, column: 15)
!1910 = !DILocation(line: 277, column: 15, scope: !1909)
!1911 = !DILocation(line: 277, column: 38, scope: !1909)
!1912 = !DILocation(line: 277, column: 15, scope: !1852)
!1913 = !DILocation(line: 279, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !1676, line: 277, column: 70)
!1915 = !DILocation(line: 277, column: 87, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1676, line: 282, column: 13)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !1676, line: 281, column: 13)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !1676, line: 280, column: 18)
!1919 = !DILocation(line: 277, column: 85, scope: !1916)
!1920 = !DILocation(line: 277, column: 80, scope: !1916)
!1921 = !DILocation(line: 277, column: 67, scope: !1916)
!1922 = !DILocation(line: 278, column: 54, scope: !1916)
!1923 = !DILocation(line: 278, column: 62, scope: !1916)
!1924 = !DILocation(line: 277, column: 23, scope: !1916)
!1925 = !DILocalVariable(name: "tmp___2", scope: !1675, file: !1676, line: 194, type: !27)
!1926 = !DILocation(line: 277, column: 17, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1918, file: !1676, line: 277, column: 17)
!1928 = !DILocation(line: 277, column: 60, scope: !1927)
!1929 = !DILocation(line: 277, column: 17, scope: !1918)
!1930 = !DILocation(line: 279, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !1676, line: 277, column: 92)
!1932 = !DILocation(line: 281, column: 12, scope: !1852)
!1933 = !DILocation(line: 281, column: 20, scope: !1852)
!1934 = !DILocation(line: 281, column: 32, scope: !1852)
!1935 = !DILocation(line: 283, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1676, line: 284, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 283, column: 11)
!1938 = !DILocation(line: 283, column: 21, scope: !1936)
!1939 = !DILocation(line: 283, column: 26, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !1676, line: 283, column: 17)
!1941 = distinct !DILexicalBlock(scope: !1936, file: !1676, line: 283, column: 21)
!1942 = !DILocation(line: 283, column: 20, scope: !1940)
!1943 = !DILocation(line: 283, column: 29, scope: !1940)
!1944 = !DILocation(line: 283, column: 17, scope: !1941)
!1945 = !DILocation(line: 283, column: 28, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !1676, line: 283, column: 19)
!1947 = distinct !DILexicalBlock(scope: !1940, file: !1676, line: 283, column: 37)
!1948 = !DILocation(line: 283, column: 22, scope: !1946)
!1949 = !DILocation(line: 283, column: 31, scope: !1946)
!1950 = !DILocation(line: 283, column: 19, scope: !1947)
!1951 = !DILocation(line: 283, column: 17, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1946, file: !1676, line: 283, column: 38)
!1953 = !DILocation(line: 285, column: 13, scope: !1947)
!1954 = !DILocation(line: 283, column: 15, scope: !1941)
!1955 = distinct !{!1955, !1935, !1956}
!1956 = !DILocation(line: 284, column: 11, scope: !1936)
!1957 = !DILocation(line: 286, column: 11, scope: !1936)
!1958 = !DILocation(line: 284, column: 21, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1676, line: 290, column: 11)
!1960 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 289, column: 11)
!1961 = !DILocalVariable(name: "tmp___3", scope: !1675, file: !1676, line: 195, type: !10)
!1962 = !DILocation(line: 285, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1852, file: !1676, line: 285, column: 15)
!1964 = !DILocation(line: 285, column: 35, scope: !1963)
!1965 = !DILocation(line: 285, column: 33, scope: !1963)
!1966 = !DILocation(line: 285, column: 15, scope: !1852)
!1967 = !DILocation(line: 285, column: 65, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1676, line: 287, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1676, line: 286, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !1676, line: 285, column: 54)
!1971 = !DILocation(line: 285, column: 13, scope: !1968)
!1972 = !DILocation(line: 288, column: 11, scope: !1970)
!1973 = distinct !{!1973, !1846, !1974}
!1974 = !DILocation(line: 289, column: 9, scope: !1847)
!1975 = !DILocation(line: 291, column: 9, scope: !1847)
!1976 = !DILocation(line: 288, column: 9, scope: !1837)
!1977 = !DILocation(line: 296, column: 19, scope: !1763)
!1978 = distinct !{!1978, !1757, !1979}
!1979 = !DILocation(line: 297, column: 3, scope: !1758)
!1980 = !DILocation(line: 299, column: 3, scope: !1758)
!1981 = !DILocation(line: 299, column: 11, scope: !1687)
!1982 = !DILocation(line: 299, column: 3, scope: !1687)
!1983 = !DILocation(line: 0, scope: !1687)
!1984 = !DILocation(line: 301, column: 1, scope: !1675)
!1985 = distinct !DISubprogram(name: "para_process", scope: !1986, file: !1986, line: 194, type: !220, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1986 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/para.c", directory: "")
!1987 = !DILocalVariable(name: "p", arg: 1, scope: !1985, file: !1986, line: 194, type: !13)
!1988 = !DILocation(line: 0, scope: !1985)
!1989 = !DILocalVariable(name: "fstack", scope: !1985, file: !1986, line: 197, type: !1990)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 2560, elements: !1991)
!1991 = !{!1992}
!1992 = !DISubrange(count: 40)
!1993 = !DILocation(line: 197, column: 12, scope: !1985)
!1994 = !DILocalVariable(name: "inliteraltext", scope: !1985, file: !1986, line: 199, type: !223)
!1995 = !DILocation(line: 199, column: 8, scope: !1985)
!1996 = !DILocalVariable(name: "__cil_tmp23", scope: !1985, file: !1986, line: 217, type: !17)
!1997 = !DILocation(line: 217, column: 9, scope: !1985)
!1998 = !DILocalVariable(name: "__cil_tmp24", scope: !1985, file: !1986, line: 218, type: !27)
!1999 = !DILocation(line: 218, column: 9, scope: !1985)
!2000 = !DILocalVariable(name: "__cil_tmp25", scope: !1985, file: !1986, line: 219, type: !27)
!2001 = !DILocation(line: 219, column: 9, scope: !1985)
!2002 = !DILocalVariable(name: "__cil_tmp26", scope: !1985, file: !1986, line: 220, type: !27)
!2003 = !DILocation(line: 220, column: 9, scope: !1985)
!2004 = !DILocalVariable(name: "__cil_tmp27", scope: !1985, file: !1986, line: 221, type: !27)
!2005 = !DILocation(line: 221, column: 9, scope: !1985)
!2006 = !DILocalVariable(name: "__cil_tmp28", scope: !1985, file: !1986, line: 222, type: !27)
!2007 = !DILocation(line: 222, column: 9, scope: !1985)
!2008 = !DILocalVariable(name: "__cil_tmp29", scope: !1985, file: !1986, line: 223, type: !27)
!2009 = !DILocation(line: 223, column: 9, scope: !1985)
!2010 = !DILocalVariable(name: "__cil_tmp30", scope: !1985, file: !1986, line: 224, type: !27)
!2011 = !DILocation(line: 224, column: 9, scope: !1985)
!2012 = !DILocalVariable(name: "__cil_tmp31", scope: !1985, file: !1986, line: 225, type: !27)
!2013 = !DILocation(line: 225, column: 9, scope: !1985)
!2014 = !DILocalVariable(name: "__cil_tmp32", scope: !1985, file: !1986, line: 226, type: !27)
!2015 = !DILocation(line: 226, column: 9, scope: !1985)
!2016 = !DILocalVariable(name: "__cil_tmp33", scope: !1985, file: !1986, line: 227, type: !27)
!2017 = !DILocation(line: 227, column: 9, scope: !1985)
!2018 = !DILocalVariable(name: "__cil_tmp34", scope: !1985, file: !1986, line: 228, type: !27)
!2019 = !DILocation(line: 228, column: 9, scope: !1985)
!2020 = !DILocalVariable(name: "__cil_tmp35", scope: !1985, file: !1986, line: 229, type: !27)
!2021 = !DILocation(line: 229, column: 9, scope: !1985)
!2022 = !DILocalVariable(name: "__cil_tmp36", scope: !1985, file: !1986, line: 230, type: !27)
!2023 = !DILocation(line: 230, column: 9, scope: !1985)
!2024 = !DILocalVariable(name: "__cil_tmp37", scope: !1985, file: !1986, line: 231, type: !27)
!2025 = !DILocation(line: 231, column: 9, scope: !1985)
!2026 = !DILocalVariable(name: "fstackcount", scope: !1985, file: !1986, line: 198, type: !6)
!2027 = !DILocation(line: 200, column: 17, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1985, file: !1986, line: 233, column: 3)
!2029 = !DILocation(line: 202, column: 3, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !1986, line: 202, column: 3)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !1986, line: 201, column: 3)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocation(line: 202, column: 13, scope: !2030)
!2034 = !DILocation(line: 199, column: 15, scope: !2028)
!2035 = !DILocation(line: 202, column: 18, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 202, column: 9)
!2037 = distinct !DILexicalBlock(scope: !2030, file: !1986, line: 202, column: 13)
!2038 = !DILocation(line: 202, column: 12, scope: !2036)
!2039 = !DILocation(line: 202, column: 21, scope: !2036)
!2040 = !DILocation(line: 202, column: 9, scope: !2037)
!2041 = !DILocation(line: 202, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !1986, line: 202, column: 28)
!2043 = !DILocation(line: 209, column: 21, scope: !2037)
!2044 = !DILocalVariable(name: "i", scope: !1985, file: !1986, line: 201, type: !6)
!2045 = !DILocation(line: 209, column: 5, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1986, line: 211, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 210, column: 5)
!2048 = !DILocation(line: 0, scope: !2037)
!2049 = !DILocation(line: 209, column: 15, scope: !2046)
!2050 = !DILocation(line: 209, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1986, line: 209, column: 11)
!2052 = distinct !DILexicalBlock(scope: !2046, file: !1986, line: 209, column: 15)
!2053 = !DILocation(line: 209, column: 11, scope: !2052)
!2054 = !DILocation(line: 209, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !1986, line: 209, column: 23)
!2056 = !DILocation(line: 211, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !1986, line: 211, column: 7)
!2058 = !DILocalVariable(name: "f", scope: !1985, file: !1986, line: 196, type: !139)
!2059 = !DILocation(line: 212, column: 40, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !1986, line: 212, column: 7)
!2061 = !DILocation(line: 212, column: 78, scope: !2060)
!2062 = !DILocation(line: 212, column: 13, scope: !2060)
!2063 = !DILocalVariable(name: "tmp", scope: !1985, file: !1986, line: 203, type: !6)
!2064 = !DILocation(line: 212, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2052, file: !1986, line: 212, column: 11)
!2066 = !DILocation(line: 212, column: 11, scope: !2052)
!2067 = !DILocation(line: 215, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !1986, line: 212, column: 21)
!2069 = !DILocalVariable(name: "j", scope: !1985, file: !1986, line: 202, type: !6)
!2070 = !DILocation(line: 215, column: 9, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !1986, line: 217, column: 9)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !1986, line: 216, column: 9)
!2073 = !DILocation(line: 0, scope: !2068)
!2074 = !DILocation(line: 215, column: 19, scope: !2071)
!2075 = !DILocation(line: 215, column: 20, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !1986, line: 215, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !1986, line: 215, column: 19)
!2078 = !DILocation(line: 215, column: 15, scope: !2077)
!2079 = !DILocation(line: 215, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !1986, line: 215, column: 36)
!2081 = !DILocation(line: 216, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1986, line: 218, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2077, file: !1986, line: 217, column: 11)
!2084 = !DILocation(line: 216, column: 33, scope: !2082)
!2085 = !DILocation(line: 216, column: 43, scope: !2082)
!2086 = !DILocation(line: 216, column: 11, scope: !2082)
!2087 = !DILocation(line: 215, column: 13, scope: !2083)
!2088 = distinct !{!2088, !2070, !2089}
!2089 = !DILocation(line: 217, column: 9, scope: !2071)
!2090 = !DILocation(line: 219, column: 9, scope: !2071)
!2091 = !DILocation(line: 218, column: 42, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !1986, line: 218, column: 9)
!2093 = distinct !DILexicalBlock(scope: !2068, file: !1986, line: 222, column: 9)
!2094 = !DILocation(line: 219, column: 28, scope: !2092)
!2095 = !DILocation(line: 218, column: 9, scope: !2092)
!2096 = !DILocation(line: 219, column: 26, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !1986, line: 221, column: 9)
!2098 = !DILocation(line: 219, column: 9, scope: !2097)
!2099 = !DILocation(line: 220, column: 17, scope: !2093)
!2100 = !DILocation(line: 220, column: 11, scope: !2093)
!2101 = !DILocation(line: 222, column: 9, scope: !2068)
!2102 = !DILocation(line: 212, column: 18, scope: !2065)
!2103 = !DILocation(line: 209, column: 9, scope: !2052)
!2104 = distinct !{!2104, !2045, !2105}
!2105 = !DILocation(line: 210, column: 5, scope: !2046)
!2106 = !DILocation(line: 212, column: 5, scope: !2046)
!2107 = !DILocation(line: 229, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 229, column: 9)
!2109 = !DILocation(line: 229, column: 9, scope: !2108)
!2110 = !DILocation(line: 229, column: 18, scope: !2108)
!2111 = !DILocation(line: 229, column: 9, scope: !2037)
!2112 = !DILocation(line: 229, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !1986, line: 229, column: 24)
!2114 = !DILocalVariable(name: "tmp___0", scope: !1985, file: !1986, line: 204, type: !13)
!2115 = !DILocation(line: 235, column: 7, scope: !2037)
!2116 = !DILocation(line: 235, column: 15, scope: !2037)
!2117 = !DILocation(line: 235, column: 9, scope: !2037)
!2118 = !DILocalVariable(name: "c", scope: !1985, file: !1986, line: 200, type: !6)
!2119 = !DILocation(line: 236, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 236, column: 9)
!2121 = !DILocation(line: 236, column: 9, scope: !2037)
!2122 = !DILocation(line: 236, column: 40, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !1986, line: 238, column: 7)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !1986, line: 237, column: 7)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !1986, line: 236, column: 18)
!2126 = !DILocation(line: 236, column: 7, scope: !2123)
!2127 = !DILocation(line: 236, column: 7, scope: !2125)
!2128 = !DILocation(line: 237, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 237, column: 9)
!2130 = !DILocation(line: 237, column: 9, scope: !2037)
!2131 = !DILocation(line: 237, column: 40, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !1986, line: 239, column: 7)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1986, line: 238, column: 7)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !1986, line: 237, column: 18)
!2135 = !DILocation(line: 237, column: 7, scope: !2132)
!2136 = !DILocation(line: 237, column: 7, scope: !2134)
!2137 = !DILocation(line: 239, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 239, column: 9)
!2139 = !DILocation(line: 239, column: 9, scope: !2037)
!2140 = !DILocation(line: 241, column: 13, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !1986, line: 241, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !1986, line: 239, column: 26)
!2143 = !DILocation(line: 241, column: 11, scope: !2142)
!2144 = !DILocation(line: 243, column: 42, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1986, line: 243, column: 9)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1986, line: 242, column: 9)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !1986, line: 241, column: 20)
!2148 = !DILocation(line: 243, column: 9, scope: !2145)
!2149 = !DILocation(line: 244, column: 9, scope: !2147)
!2150 = !DILocation(line: 247, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !1986, line: 247, column: 11)
!2152 = !DILocation(line: 247, column: 11, scope: !2142)
!2153 = !DILocation(line: 249, column: 42, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1986, line: 249, column: 9)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !1986, line: 248, column: 9)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !1986, line: 247, column: 20)
!2157 = !DILocation(line: 249, column: 9, scope: !2154)
!2158 = !DILocation(line: 250, column: 9, scope: !2156)
!2159 = !DILocation(line: 252, column: 5, scope: !2142)
!2160 = !DILocation(line: 254, column: 11, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 254, column: 9)
!2162 = !DILocation(line: 254, column: 9, scope: !2037)
!2163 = !DILocation(line: 254, column: 16, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !1986, line: 256, column: 7)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !1986, line: 255, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !1986, line: 254, column: 18)
!2167 = !DILocation(line: 254, column: 7, scope: !2164)
!2168 = !DILocation(line: 254, column: 7, scope: !2166)
!2169 = !DILocation(line: 258, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 258, column: 9)
!2171 = !DILocation(line: 258, column: 9, scope: !2170)
!2172 = !DILocation(line: 258, column: 18, scope: !2170)
!2173 = !DILocation(line: 258, column: 9, scope: !2037)
!2174 = !DILocation(line: 260, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !1986, line: 260, column: 7)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1986, line: 259, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2170, file: !1986, line: 258, column: 24)
!2178 = !DILocation(line: 261, column: 7, scope: !2177)
!2179 = !DILocation(line: 258, column: 15, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !1986, line: 258, column: 9)
!2181 = !DILocation(line: 258, column: 9, scope: !2180)
!2182 = !DILocation(line: 258, column: 18, scope: !2180)
!2183 = !DILocation(line: 260, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !1986, line: 260, column: 7)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !1986, line: 259, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !1986, line: 258, column: 25)
!2187 = !DILocation(line: 261, column: 7, scope: !2186)
!2188 = !DILocation(line: 267, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !1986, line: 264, column: 5)
!2190 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 263, column: 5)
!2191 = !DILocalVariable(name: "tmp___3", scope: !1985, file: !1986, line: 210, type: !295)
!2192 = !DILocation(line: 267, column: 25, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 267, column: 9)
!2194 = !DILocation(line: 267, column: 42, scope: !2193)
!2195 = !DILocation(line: 267, column: 36, scope: !2193)
!2196 = !DILocation(line: 267, column: 34, scope: !2193)
!2197 = !DILocation(line: 267, column: 23, scope: !2193)
!2198 = !DILocation(line: 267, column: 9, scope: !2193)
!2199 = !DILocation(line: 267, column: 46, scope: !2193)
!2200 = !DILocation(line: 267, column: 9, scope: !2037)
!2201 = !DILocation(line: 270, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2193, file: !1986, line: 267, column: 54)
!2203 = !DILocalVariable(name: "q", scope: !1985, file: !1986, line: 206, type: !13)
!2204 = !DILocation(line: 271, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !1986, line: 272, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 271, column: 7)
!2207 = !DILocation(line: 0, scope: !2202)
!2208 = !DILocation(line: 271, column: 17, scope: !2205)
!2209 = !DILocation(line: 271, column: 19, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !1986, line: 275, column: 9)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !1986, line: 274, column: 9)
!2212 = distinct !DILexicalBlock(scope: !2205, file: !1986, line: 271, column: 17)
!2213 = !DILocalVariable(name: "tmp___1", scope: !1985, file: !1986, line: 207, type: !295)
!2214 = !DILocation(line: 271, column: 32, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !1986, line: 271, column: 13)
!2216 = !DILocation(line: 271, column: 49, scope: !2215)
!2217 = !DILocation(line: 271, column: 43, scope: !2215)
!2218 = !DILocation(line: 271, column: 41, scope: !2215)
!2219 = !DILocation(line: 271, column: 30, scope: !2215)
!2220 = !DILocation(line: 271, column: 16, scope: !2215)
!2221 = !DILocation(line: 271, column: 53, scope: !2215)
!2222 = !DILocation(line: 271, column: 13, scope: !2212)
!2223 = !DILocation(line: 271, column: 24, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !1986, line: 271, column: 15)
!2225 = distinct !DILexicalBlock(scope: !2215, file: !1986, line: 271, column: 59)
!2226 = !DILocation(line: 271, column: 18, scope: !2224)
!2227 = !DILocation(line: 271, column: 27, scope: !2224)
!2228 = !DILocation(line: 271, column: 15, scope: !2225)
!2229 = !DILocation(line: 271, column: 13, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !1986, line: 271, column: 35)
!2231 = !DILocation(line: 273, column: 9, scope: !2225)
!2232 = !DILocation(line: 271, column: 11, scope: !2212)
!2233 = distinct !{!2233, !2204, !2234}
!2234 = !DILocation(line: 272, column: 7, scope: !2205)
!2235 = !DILocation(line: 274, column: 7, scope: !2205)
!2236 = !DILocation(line: 276, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 276, column: 11)
!2238 = !DILocation(line: 276, column: 11, scope: !2237)
!2239 = !DILocation(line: 276, column: 20, scope: !2237)
!2240 = !DILocation(line: 276, column: 11, scope: !2202)
!2241 = !DILocation(line: 278, column: 13, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !1986, line: 278, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !1986, line: 277, column: 9)
!2244 = distinct !DILexicalBlock(scope: !2237, file: !1986, line: 276, column: 27)
!2245 = !DILocation(line: 279, column: 9, scope: !2244)
!2246 = !DILocation(line: 288, column: 25, scope: !2202)
!2247 = !DILocation(line: 288, column: 16, scope: !2202)
!2248 = !DILocalVariable(name: "entlen", scope: !1985, file: !1986, line: 205, type: !6)
!2249 = !DILocation(line: 290, column: 17, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 290, column: 11)
!2251 = !DILocation(line: 290, column: 11, scope: !2250)
!2252 = !DILocation(line: 290, column: 20, scope: !2250)
!2253 = !DILocation(line: 290, column: 11, scope: !2202)
!2254 = !DILocation(line: 292, column: 9, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !1986, line: 292, column: 9)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !1986, line: 291, column: 9)
!2257 = distinct !DILexicalBlock(scope: !2250, file: !1986, line: 290, column: 27)
!2258 = !DILocation(line: 293, column: 42, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !1986, line: 294, column: 9)
!2260 = !DILocation(line: 293, column: 9, scope: !2259)
!2261 = !DILocation(line: 294, column: 9, scope: !2257)
!2262 = !DILocation(line: 299, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !1986, line: 297, column: 7)
!2264 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 296, column: 7)
!2265 = !DILocalVariable(name: "tmp___2", scope: !1985, file: !1986, line: 209, type: !6)
!2266 = !DILocation(line: 299, column: 19, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 299, column: 11)
!2268 = !DILocation(line: 299, column: 11, scope: !2202)
!2269 = !DILocation(line: 301, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !1986, line: 301, column: 13)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !1986, line: 299, column: 25)
!2272 = !DILocation(line: 301, column: 13, scope: !2270)
!2273 = !DILocation(line: 301, column: 38, scope: !2270)
!2274 = !DILocation(line: 301, column: 13, scope: !2271)
!2275 = !DILocation(line: 301, column: 22, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !1986, line: 301, column: 15)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !1986, line: 301, column: 70)
!2278 = !DILocation(line: 301, column: 21, scope: !2276)
!2279 = !DILocation(line: 301, column: 15, scope: !2276)
!2280 = !DILocation(line: 301, column: 31, scope: !2276)
!2281 = !DILocation(line: 301, column: 15, scope: !2277)
!2282 = !DILocation(line: 302, column: 46, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !1986, line: 303, column: 13)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !1986, line: 302, column: 13)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !1986, line: 301, column: 37)
!2286 = !DILocation(line: 303, column: 21, scope: !2283)
!2287 = !DILocation(line: 302, column: 13, scope: !2283)
!2288 = !DILocation(line: 306, column: 11, scope: !2285)
!2289 = !DILocation(line: 307, column: 9, scope: !2277)
!2290 = !DILocation(line: 308, column: 7, scope: !2271)
!2291 = !DILocation(line: 310, column: 12, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !1986, line: 309, column: 9)
!2293 = distinct !DILexicalBlock(scope: !2267, file: !1986, line: 308, column: 14)
!2294 = !DILocation(line: 311, column: 25, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !1986, line: 311, column: 9)
!2296 = !DILocation(line: 311, column: 13, scope: !2295)
!2297 = !DILocalVariable(name: "t", scope: !1985, file: !1986, line: 208, type: !137)
!2298 = !DILocation(line: 312, column: 12, scope: !2292)
!2299 = !DILocation(line: 313, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !1986, line: 313, column: 13)
!2301 = !DILocation(line: 313, column: 31, scope: !2300)
!2302 = !DILocation(line: 313, column: 13, scope: !2293)
!2303 = !DILocation(line: 314, column: 44, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !1986, line: 315, column: 11)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !1986, line: 314, column: 11)
!2306 = distinct !DILexicalBlock(scope: !2300, file: !1986, line: 313, column: 63)
!2307 = !DILocation(line: 315, column: 30, scope: !2304)
!2308 = !DILocation(line: 314, column: 11, scope: !2304)
!2309 = !DILocation(line: 318, column: 9, scope: !2306)
!2310 = !DILocation(line: 316, column: 44, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !1986, line: 320, column: 11)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !1986, line: 319, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2300, file: !1986, line: 318, column: 16)
!2314 = !DILocation(line: 316, column: 11, scope: !2311)
!2315 = !DILocation(line: 319, column: 17, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2202, file: !1986, line: 319, column: 11)
!2317 = !DILocation(line: 319, column: 11, scope: !2316)
!2318 = !DILocation(line: 319, column: 20, scope: !2316)
!2319 = !DILocation(line: 319, column: 11, scope: !2202)
!2320 = !DILocation(line: 319, column: 11, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !1986, line: 319, column: 27)
!2322 = !DILocation(line: 320, column: 7, scope: !2321)
!2323 = !DILocation(line: 321, column: 7, scope: !2202)
!2324 = !DILocation(line: 327, column: 15, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 327, column: 9)
!2326 = !DILocation(line: 327, column: 9, scope: !2325)
!2327 = !DILocation(line: 327, column: 18, scope: !2325)
!2328 = !DILocation(line: 327, column: 9, scope: !2037)
!2329 = !DILocation(line: 329, column: 17, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1986, line: 328, column: 7)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !1986, line: 327, column: 25)
!2332 = !DILocalVariable(name: "q___0", scope: !1985, file: !1986, line: 211, type: !13)
!2333 = !DILocation(line: 330, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !1986, line: 330, column: 7)
!2335 = !DILocalVariable(name: "tmp___6", scope: !1985, file: !1986, line: 214, type: !295)
!2336 = !DILocation(line: 330, column: 27, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2331, file: !1986, line: 330, column: 11)
!2338 = !DILocation(line: 330, column: 44, scope: !2337)
!2339 = !DILocation(line: 330, column: 38, scope: !2337)
!2340 = !DILocation(line: 330, column: 36, scope: !2337)
!2341 = !DILocation(line: 330, column: 25, scope: !2337)
!2342 = !DILocation(line: 330, column: 11, scope: !2337)
!2343 = !DILocation(line: 330, column: 52, scope: !2337)
!2344 = !DILocation(line: 330, column: 11, scope: !2331)
!2345 = !DILocation(line: 332, column: 15, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2337, file: !1986, line: 330, column: 60)
!2347 = !DILocation(line: 332, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !1986, line: 334, column: 9)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !1986, line: 333, column: 9)
!2350 = !DILocation(line: 0, scope: !2346)
!2351 = !DILocation(line: 332, column: 19, scope: !2348)
!2352 = !DILocation(line: 332, column: 21, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !1986, line: 336, column: 11)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !1986, line: 335, column: 11)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !1986, line: 332, column: 19)
!2356 = !DILocalVariable(name: "tmp___4", scope: !1985, file: !1986, line: 212, type: !295)
!2357 = !DILocation(line: 332, column: 34, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !1986, line: 332, column: 15)
!2359 = !DILocation(line: 332, column: 51, scope: !2358)
!2360 = !DILocation(line: 332, column: 45, scope: !2358)
!2361 = !DILocation(line: 332, column: 43, scope: !2358)
!2362 = !DILocation(line: 332, column: 32, scope: !2358)
!2363 = !DILocation(line: 332, column: 18, scope: !2358)
!2364 = !DILocation(line: 332, column: 59, scope: !2358)
!2365 = !DILocation(line: 332, column: 15, scope: !2355)
!2366 = !DILocation(line: 332, column: 13, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2358, file: !1986, line: 332, column: 68)
!2368 = !DILocation(line: 332, column: 17, scope: !2355)
!2369 = distinct !{!2369, !2347, !2370}
!2370 = !DILocation(line: 333, column: 9, scope: !2348)
!2371 = !DILocation(line: 335, column: 9, scope: !2348)
!2372 = !DILocation(line: 333, column: 19, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2346, file: !1986, line: 333, column: 13)
!2374 = !DILocation(line: 333, column: 13, scope: !2373)
!2375 = !DILocation(line: 333, column: 26, scope: !2373)
!2376 = !DILocation(line: 333, column: 13, scope: !2346)
!2377 = !DILocation(line: 335, column: 44, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !1986, line: 335, column: 11)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !1986, line: 334, column: 11)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !1986, line: 333, column: 33)
!2381 = !DILocation(line: 336, column: 25, scope: !2378)
!2382 = !DILocation(line: 335, column: 11, scope: !2378)
!2383 = !DILocation(line: 337, column: 11, scope: !2380)
!2384 = !DILocation(line: 339, column: 7, scope: !2346)
!2385 = !DILocation(line: 341, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2337, file: !1986, line: 341, column: 11)
!2387 = !DILocation(line: 341, column: 11, scope: !2386)
!2388 = !DILocation(line: 341, column: 24, scope: !2386)
!2389 = !DILocation(line: 341, column: 11, scope: !2337)
!2390 = !DILocation(line: 343, column: 15, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !1986, line: 341, column: 32)
!2392 = !DILocation(line: 343, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !1986, line: 345, column: 9)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !1986, line: 344, column: 9)
!2395 = !DILocation(line: 0, scope: !2391)
!2396 = !DILocation(line: 343, column: 19, scope: !2393)
!2397 = !DILocation(line: 343, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !1986, line: 347, column: 11)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !1986, line: 346, column: 11)
!2400 = distinct !DILexicalBlock(scope: !2393, file: !1986, line: 343, column: 19)
!2401 = !DILocalVariable(name: "tmp___5", scope: !1985, file: !1986, line: 213, type: !295)
!2402 = !DILocation(line: 343, column: 34, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !1986, line: 343, column: 15)
!2404 = !DILocation(line: 343, column: 51, scope: !2403)
!2405 = !DILocation(line: 343, column: 45, scope: !2403)
!2406 = !DILocation(line: 343, column: 43, scope: !2403)
!2407 = !DILocation(line: 343, column: 32, scope: !2403)
!2408 = !DILocation(line: 343, column: 18, scope: !2403)
!2409 = !DILocation(line: 343, column: 59, scope: !2403)
!2410 = !DILocation(line: 343, column: 15, scope: !2400)
!2411 = !DILocation(line: 343, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2403, file: !1986, line: 343, column: 68)
!2413 = !DILocation(line: 343, column: 17, scope: !2400)
!2414 = distinct !{!2414, !2392, !2415}
!2415 = !DILocation(line: 344, column: 9, scope: !2393)
!2416 = !DILocation(line: 346, column: 9, scope: !2393)
!2417 = !DILocation(line: 344, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2391, file: !1986, line: 344, column: 13)
!2419 = !DILocation(line: 344, column: 13, scope: !2418)
!2420 = !DILocation(line: 344, column: 26, scope: !2418)
!2421 = !DILocation(line: 344, column: 13, scope: !2391)
!2422 = !DILocation(line: 346, column: 44, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !1986, line: 346, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !1986, line: 345, column: 11)
!2425 = distinct !DILexicalBlock(scope: !2418, file: !1986, line: 344, column: 33)
!2426 = !DILocation(line: 347, column: 25, scope: !2423)
!2427 = !DILocation(line: 346, column: 11, scope: !2423)
!2428 = !DILocation(line: 348, column: 11, scope: !2425)
!2429 = !DILocation(line: 350, column: 7, scope: !2391)
!2430 = !DILocation(line: 351, column: 5, scope: !2331)
!2431 = !DILocation(line: 355, column: 9, scope: !2037)
!2432 = !DILocation(line: 355, column: 5, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !1986, line: 357, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 356, column: 5)
!2435 = !DILocation(line: 355, column: 15, scope: !2433)
!2436 = !DILocation(line: 355, column: 14, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !1986, line: 355, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !1986, line: 355, column: 15)
!2439 = !DILocation(line: 355, column: 32, scope: !2437)
!2440 = !DILocation(line: 355, column: 11, scope: !2438)
!2441 = !DILocation(line: 355, column: 9, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !1986, line: 355, column: 65)
!2443 = !DILocation(line: 356, column: 63, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !1986, line: 358, column: 7)
!2445 = distinct !DILexicalBlock(scope: !2438, file: !1986, line: 357, column: 7)
!2446 = !DILocation(line: 356, column: 82, scope: !2444)
!2447 = !DILocation(line: 356, column: 17, scope: !2444)
!2448 = !DILocalVariable(name: "tmp___7", scope: !1985, file: !1986, line: 215, type: !6)
!2449 = !DILocation(line: 356, column: 19, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2438, file: !1986, line: 356, column: 11)
!2451 = !DILocation(line: 356, column: 11, scope: !2438)
!2452 = !DILocation(line: 356, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !1986, line: 356, column: 25)
!2454 = !DILocation(line: 355, column: 14, scope: !2438)
!2455 = distinct !{!2455, !2432, !2456}
!2456 = !DILocation(line: 356, column: 5, scope: !2433)
!2457 = !DILocation(line: 358, column: 5, scope: !2433)
!2458 = !DILocation(line: 358, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 358, column: 9)
!2460 = !DILocation(line: 358, column: 27, scope: !2459)
!2461 = !DILocation(line: 358, column: 9, scope: !2037)
!2462 = !DILocation(line: 360, column: 22, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !1986, line: 360, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !1986, line: 359, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !1986, line: 358, column: 59)
!2466 = !DILocation(line: 360, column: 16, scope: !2463)
!2467 = !DILocation(line: 360, column: 7, scope: !2463)
!2468 = !DILocation(line: 361, column: 40, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !1986, line: 362, column: 7)
!2470 = !DILocation(line: 361, column: 7, scope: !2469)
!2471 = !DILocation(line: 362, column: 7, scope: !2465)
!2472 = !DILocation(line: 368, column: 12, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 368, column: 9)
!2474 = !DILocation(line: 368, column: 20, scope: !2473)
!2475 = !DILocation(line: 368, column: 9, scope: !2037)
!2476 = !DILocalVariable(name: "tmp___8", scope: !1985, file: !1986, line: 216, type: !6)
!2477 = !DILocation(line: 368, column: 19, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2473, file: !1986, line: 368, column: 26)
!2479 = !DILocation(line: 368, column: 7, scope: !2478)
!2480 = !DILocation(line: 368, column: 23, scope: !2478)
!2481 = !DILocation(line: 369, column: 5, scope: !2478)
!2482 = !DILocation(line: 369, column: 38, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !1986, line: 371, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2037, file: !1986, line: 370, column: 5)
!2485 = !DILocation(line: 370, column: 24, scope: !2483)
!2486 = !DILocation(line: 369, column: 5, scope: !2483)
!2487 = !DILocation(line: 370, column: 22, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !1986, line: 372, column: 5)
!2489 = !DILocation(line: 370, column: 5, scope: !2488)
!2490 = !DILocation(line: 371, column: 13, scope: !2484)
!2491 = !DILocation(line: 371, column: 7, scope: !2484)
!2492 = distinct !{!2492, !2029, !2493}
!2493 = !DILocation(line: 373, column: 3, scope: !2030)
!2494 = !DILocation(line: 375, column: 3, scope: !2030)
!2495 = !DILocation(line: 377, column: 3, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !1986, line: 379, column: 3)
!2497 = distinct !DILexicalBlock(scope: !2028, file: !1986, line: 378, column: 3)
!2498 = !DILocation(line: 377, column: 13, scope: !2496)
!2499 = !DILocation(line: 377, column: 24, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !1986, line: 377, column: 9)
!2501 = distinct !DILexicalBlock(scope: !2496, file: !1986, line: 377, column: 13)
!2502 = !DILocation(line: 377, column: 9, scope: !2501)
!2503 = !DILocation(line: 377, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !1986, line: 377, column: 30)
!2505 = !DILocation(line: 379, column: 17, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !1986, line: 379, column: 5)
!2507 = !DILocation(line: 379, column: 9, scope: !2506)
!2508 = !DILocation(line: 380, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !1986, line: 380, column: 5)
!2510 = !DILocation(line: 380, column: 5, scope: !2509)
!2511 = distinct !{!2511, !2495, !2512}
!2512 = !DILocation(line: 383, column: 3, scope: !2496)
!2513 = !DILocation(line: 385, column: 3, scope: !2496)
!2514 = !DILocation(line: 382, column: 3, scope: !2028)
!2515 = distinct !DISubprogram(name: "literal_process", scope: !2516, file: !2516, line: 25, type: !220, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2516 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/literal.c", directory: "")
!2517 = !DILocalVariable(name: "p", arg: 1, scope: !2515, file: !2516, line: 25, type: !13)
!2518 = !DILocation(line: 0, scope: !2515)
!2519 = !DILocalVariable(name: "__cil_tmp4", scope: !2515, file: !2516, line: 29, type: !27)
!2520 = !DILocation(line: 29, column: 9, scope: !2515)
!2521 = !DILocalVariable(name: "__cil_tmp5", scope: !2515, file: !2516, line: 30, type: !27)
!2522 = !DILocation(line: 30, column: 9, scope: !2515)
!2523 = !DILocalVariable(name: "__cil_tmp6", scope: !2515, file: !2516, line: 31, type: !27)
!2524 = !DILocation(line: 31, column: 9, scope: !2515)
!2525 = !DILocation(line: 28, column: 3, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2516, line: 35, column: 3)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !2516, line: 34, column: 3)
!2528 = distinct !DILexicalBlock(scope: !2515, file: !2516, line: 33, column: 3)
!2529 = !DILocation(line: 28, column: 13, scope: !2526)
!2530 = !DILocation(line: 28, column: 18, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !2516, line: 28, column: 9)
!2532 = distinct !DILexicalBlock(scope: !2526, file: !2516, line: 28, column: 13)
!2533 = !DILocation(line: 28, column: 12, scope: !2531)
!2534 = !DILocation(line: 28, column: 21, scope: !2531)
!2535 = !DILocation(line: 28, column: 9, scope: !2532)
!2536 = !DILocation(line: 28, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2531, file: !2516, line: 28, column: 28)
!2538 = !DILocalVariable(name: "tmp", scope: !2515, file: !2516, line: 28, type: !13)
!2539 = !DILocation(line: 30, column: 7, scope: !2532)
!2540 = !DILocation(line: 30, column: 15, scope: !2532)
!2541 = !DILocation(line: 30, column: 9, scope: !2532)
!2542 = !DILocalVariable(name: "c", scope: !2515, file: !2516, line: 27, type: !6)
!2543 = !DILocation(line: 31, column: 11, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2532, file: !2516, line: 31, column: 9)
!2545 = !DILocation(line: 31, column: 9, scope: !2532)
!2546 = !DILocation(line: 31, column: 40, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !2516, line: 33, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !2516, line: 32, column: 7)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !2516, line: 31, column: 18)
!2550 = !DILocation(line: 31, column: 7, scope: !2547)
!2551 = !DILocation(line: 34, column: 5, scope: !2549)
!2552 = !DILocation(line: 32, column: 11, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2544, file: !2516, line: 32, column: 9)
!2554 = !DILocation(line: 32, column: 9, scope: !2544)
!2555 = !DILocation(line: 32, column: 40, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !2516, line: 34, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2516, line: 33, column: 7)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !2516, line: 32, column: 18)
!2559 = !DILocation(line: 32, column: 7, scope: !2556)
!2560 = !DILocation(line: 35, column: 5, scope: !2558)
!2561 = !DILocation(line: 33, column: 11, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2553, file: !2516, line: 33, column: 9)
!2563 = !DILocation(line: 33, column: 9, scope: !2553)
!2564 = !DILocation(line: 33, column: 40, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !2516, line: 35, column: 7)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !2516, line: 34, column: 7)
!2567 = distinct !DILexicalBlock(scope: !2562, file: !2516, line: 33, column: 18)
!2568 = !DILocation(line: 33, column: 7, scope: !2565)
!2569 = !DILocation(line: 36, column: 5, scope: !2567)
!2570 = !DILocation(line: 34, column: 16, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !2516, line: 38, column: 7)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !2516, line: 37, column: 7)
!2573 = distinct !DILexicalBlock(scope: !2562, file: !2516, line: 36, column: 12)
!2574 = !DILocation(line: 34, column: 7, scope: !2571)
!2575 = distinct !{!2575, !2525, !2576}
!2576 = !DILocation(line: 38, column: 3, scope: !2526)
!2577 = !DILocation(line: 40, column: 3, scope: !2526)
!2578 = !DILocation(line: 36, column: 3, scope: !2528)
!2579 = distinct !DISubprogram(name: "read_paragraph", scope: !1676, file: !1676, line: 329, type: !2580, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!13, !13, !151}
!2582 = !DILocalVariable(name: "p", arg: 1, scope: !2579, file: !1676, line: 329, type: !13)
!2583 = !DILocation(line: 0, scope: !2579)
!2584 = !DILocalVariable(name: "nest_info", arg: 2, scope: !2579, file: !1676, line: 329, type: !151)
!2585 = !DILocalVariable(name: "__cil_tmp15", scope: !2579, file: !1676, line: 343, type: !27)
!2586 = !DILocation(line: 343, column: 9, scope: !2579)
!2587 = !DILocalVariable(name: "__cil_tmp16", scope: !2579, file: !1676, line: 344, type: !27)
!2588 = !DILocation(line: 344, column: 9, scope: !2579)
!2589 = !DILocalVariable(name: "__cil_tmp17", scope: !2579, file: !1676, line: 345, type: !27)
!2590 = !DILocation(line: 345, column: 9, scope: !2579)
!2591 = !DILocalVariable(name: "__cil_tmp18", scope: !2579, file: !1676, line: 346, type: !27)
!2592 = !DILocation(line: 346, column: 9, scope: !2579)
!2593 = !DILocation(line: 332, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !1676, line: 349, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2579, file: !1676, line: 348, column: 3)
!2596 = !DILocalVariable(name: "q", scope: !2579, file: !1676, line: 331, type: !13)
!2597 = !DILocation(line: 333, column: 9, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !1676, line: 333, column: 3)
!2599 = !DILocalVariable(name: "tmp", scope: !2579, file: !1676, line: 333, type: !10)
!2600 = !DILocalVariable(name: "length", scope: !2579, file: !1676, line: 332, type: !6)
!2601 = !DILocation(line: 335, column: 3, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2594, file: !1676, line: 334, column: 3)
!2603 = !DILocation(line: 336, column: 5, scope: !2594)
!2604 = !DILocation(line: 338, column: 14, scope: !2594)
!2605 = !DILocation(line: 340, column: 3, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !1676, line: 341, column: 3)
!2607 = distinct !DILexicalBlock(scope: !2595, file: !1676, line: 340, column: 3)
!2608 = !DILocation(line: 340, column: 13, scope: !2606)
!2609 = !DILocation(line: 344, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !1676, line: 344, column: 5)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 343, column: 5)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !1676, line: 340, column: 13)
!2613 = !DILocation(line: 344, column: 9, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 344, column: 9)
!2615 = !DILocation(line: 344, column: 27, scope: !2614)
!2616 = !DILocation(line: 344, column: 9, scope: !2612)
!2617 = !DILocation(line: 344, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !1676, line: 344, column: 59)
!2619 = !DILocation(line: 346, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !1676, line: 347, column: 5)
!2621 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 346, column: 5)
!2622 = !DILocalVariable(name: "tmp___0", scope: !2579, file: !1676, line: 335, type: !6)
!2623 = !DILocation(line: 346, column: 17, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 346, column: 9)
!2625 = !DILocation(line: 346, column: 9, scope: !2612)
!2626 = !DILocation(line: 348, column: 17, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !1676, line: 346, column: 23)
!2628 = !DILocation(line: 349, column: 7, scope: !2627)
!2629 = !DILocation(line: 352, column: 15, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !1676, line: 352, column: 5)
!2631 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 351, column: 5)
!2632 = !DILocalVariable(name: "tmp___6", scope: !2579, file: !1676, line: 341, type: !6)
!2633 = !DILocation(line: 352, column: 17, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 352, column: 9)
!2635 = !DILocation(line: 352, column: 9, scope: !2612)
!2636 = !DILocation(line: 354, column: 9, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !1676, line: 352, column: 23)
!2638 = !DILocation(line: 355, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !1676, line: 356, column: 7)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !1676, line: 355, column: 7)
!2641 = !DILocation(line: 0, scope: !2637)
!2642 = !DILocation(line: 355, column: 17, scope: !2639)
!2643 = !DILocation(line: 355, column: 19, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !1676, line: 359, column: 9)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !1676, line: 358, column: 9)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !1676, line: 355, column: 17)
!2647 = !DILocalVariable(name: "tmp___1", scope: !2579, file: !1676, line: 336, type: !295)
!2648 = !DILocation(line: 355, column: 32, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !1676, line: 355, column: 13)
!2650 = !DILocation(line: 355, column: 49, scope: !2649)
!2651 = !DILocation(line: 355, column: 43, scope: !2649)
!2652 = !DILocation(line: 355, column: 41, scope: !2649)
!2653 = !DILocation(line: 355, column: 30, scope: !2649)
!2654 = !DILocation(line: 355, column: 16, scope: !2649)
!2655 = !DILocation(line: 355, column: 53, scope: !2649)
!2656 = !DILocation(line: 355, column: 13, scope: !2646)
!2657 = !DILocation(line: 355, column: 11, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2649, file: !1676, line: 355, column: 62)
!2659 = !DILocation(line: 355, column: 11, scope: !2646)
!2660 = distinct !{!2660, !2638, !2661}
!2661 = !DILocation(line: 356, column: 7, scope: !2639)
!2662 = !DILocation(line: 358, column: 7, scope: !2639)
!2663 = !DILocation(line: 356, column: 17, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !1676, line: 362, column: 7)
!2665 = distinct !DILexicalBlock(scope: !2637, file: !1676, line: 361, column: 7)
!2666 = !DILocalVariable(name: "tmp___2", scope: !2579, file: !1676, line: 337, type: !10)
!2667 = !DILocation(line: 356, column: 13, scope: !2665)
!2668 = !DILocalVariable(name: "s", scope: !2579, file: !1676, line: 334, type: !13)
!2669 = !DILocation(line: 357, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !1676, line: 359, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2637, file: !1676, line: 358, column: 7)
!2672 = !DILocation(line: 357, column: 17, scope: !2670)
!2673 = !DILocation(line: 357, column: 13, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !1676, line: 357, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !1676, line: 357, column: 17)
!2676 = !DILocation(line: 357, column: 33, scope: !2674)
!2677 = !DILocation(line: 357, column: 31, scope: !2674)
!2678 = !DILocation(line: 357, column: 13, scope: !2675)
!2679 = !DILocation(line: 357, column: 21, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !1676, line: 359, column: 11)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !1676, line: 358, column: 11)
!2682 = distinct !DILexicalBlock(scope: !2674, file: !1676, line: 357, column: 52)
!2683 = !DILocalVariable(name: "tmp___3", scope: !2579, file: !1676, line: 338, type: !295)
!2684 = !DILocation(line: 357, column: 34, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !1676, line: 357, column: 15)
!2686 = !DILocation(line: 357, column: 55, scope: !2685)
!2687 = !DILocation(line: 357, column: 51, scope: !2685)
!2688 = !DILocation(line: 357, column: 45, scope: !2685)
!2689 = !DILocation(line: 357, column: 43, scope: !2685)
!2690 = !DILocation(line: 357, column: 32, scope: !2685)
!2691 = !DILocation(line: 357, column: 18, scope: !2685)
!2692 = !DILocation(line: 357, column: 62, scope: !2685)
!2693 = !DILocation(line: 357, column: 15, scope: !2682)
!2694 = !DILocation(line: 357, column: 13, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2685, file: !1676, line: 357, column: 71)
!2696 = !DILocation(line: 359, column: 9, scope: !2682)
!2697 = !DILocation(line: 357, column: 11, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2674, file: !1676, line: 359, column: 16)
!2699 = !DILocation(line: 357, column: 11, scope: !2675)
!2700 = distinct !{!2700, !2669, !2701}
!2701 = !DILocation(line: 358, column: 7, scope: !2670)
!2702 = !DILocation(line: 360, column: 7, scope: !2670)
!2703 = !DILocation(line: 358, column: 10, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2637, file: !1676, line: 363, column: 7)
!2705 = !DILocation(line: 359, column: 17, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2704, file: !1676, line: 359, column: 7)
!2707 = !DILocalVariable(name: "tmp___5", scope: !2579, file: !1676, line: 340, type: !6)
!2708 = !DILocation(line: 359, column: 19, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2637, file: !1676, line: 359, column: 11)
!2710 = !DILocation(line: 359, column: 11, scope: !2637)
!2711 = !DILocation(line: 359, column: 20, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !1676, line: 359, column: 25)
!2713 = !DILocation(line: 360, column: 7, scope: !2712)
!2714 = !DILocation(line: 360, column: 19, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !1676, line: 362, column: 9)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !1676, line: 361, column: 9)
!2717 = distinct !DILexicalBlock(scope: !2709, file: !1676, line: 360, column: 14)
!2718 = !DILocalVariable(name: "tmp___4", scope: !2579, file: !1676, line: 339, type: !6)
!2719 = !DILocation(line: 360, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !1676, line: 360, column: 13)
!2721 = !DILocation(line: 360, column: 13, scope: !2717)
!2722 = !DILocation(line: 360, column: 22, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !1676, line: 360, column: 27)
!2724 = !DILocation(line: 361, column: 9, scope: !2723)
!2725 = !DILocation(line: 361, column: 11, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !1676, line: 363, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !1676, line: 362, column: 11)
!2728 = distinct !DILexicalBlock(scope: !2720, file: !1676, line: 361, column: 16)
!2729 = !DILocation(line: 362, column: 7, scope: !2637)
!2730 = !DILocation(line: 365, column: 15, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2634, file: !1676, line: 365, column: 9)
!2732 = !DILocation(line: 365, column: 9, scope: !2731)
!2733 = !DILocation(line: 365, column: 18, scope: !2731)
!2734 = !DILocation(line: 365, column: 9, scope: !2634)
!2735 = !DILocation(line: 367, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !1676, line: 367, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !1676, line: 366, column: 7)
!2738 = distinct !DILexicalBlock(scope: !2731, file: !1676, line: 365, column: 25)
!2739 = !DILocation(line: 368, column: 7, scope: !2738)
!2740 = !DILocation(line: 373, column: 5, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !1676, line: 375, column: 5)
!2742 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 374, column: 5)
!2743 = !DILocation(line: 0, scope: !2612)
!2744 = !DILocation(line: 373, column: 15, scope: !2741)
!2745 = !DILocation(line: 373, column: 20, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !1676, line: 373, column: 11)
!2747 = distinct !DILexicalBlock(scope: !2741, file: !1676, line: 373, column: 15)
!2748 = !DILocation(line: 373, column: 14, scope: !2746)
!2749 = !DILocation(line: 373, column: 23, scope: !2746)
!2750 = !DILocation(line: 373, column: 11, scope: !2747)
!2751 = !DILocation(line: 373, column: 22, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !1676, line: 373, column: 13)
!2753 = distinct !DILexicalBlock(scope: !2746, file: !1676, line: 373, column: 31)
!2754 = !DILocation(line: 373, column: 16, scope: !2752)
!2755 = !DILocation(line: 373, column: 25, scope: !2752)
!2756 = !DILocation(line: 373, column: 13, scope: !2753)
!2757 = !DILocation(line: 373, column: 11, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2752, file: !1676, line: 373, column: 32)
!2759 = !DILocation(line: 375, column: 7, scope: !2753)
!2760 = !DILocation(line: 373, column: 9, scope: !2747)
!2761 = distinct !{!2761, !2740, !2762}
!2762 = !DILocation(line: 374, column: 5, scope: !2741)
!2763 = !DILocation(line: 376, column: 5, scope: !2741)
!2764 = !DILocation(line: 374, column: 15, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 374, column: 9)
!2766 = !DILocation(line: 374, column: 9, scope: !2765)
!2767 = !DILocation(line: 374, column: 18, scope: !2765)
!2768 = !DILocation(line: 374, column: 9, scope: !2612)
!2769 = !DILocation(line: 374, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !1676, line: 374, column: 25)
!2771 = !DILocation(line: 376, column: 15, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !1676, line: 377, column: 5)
!2773 = distinct !DILexicalBlock(scope: !2612, file: !1676, line: 376, column: 5)
!2774 = !DILocalVariable(name: "tmp___7", scope: !2579, file: !1676, line: 342, type: !10)
!2775 = !DILocation(line: 377, column: 5, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !1676, line: 377, column: 5)
!2777 = !DILocation(line: 378, column: 7, scope: !2773)
!2778 = !DILocation(line: 379, column: 5, scope: !2773)
!2779 = !DILocation(line: 0, scope: !2595)
!2780 = distinct !{!2780, !2605, !2781}
!2781 = !DILocation(line: 381, column: 3, scope: !2606)
!2782 = !DILocation(line: 383, column: 3, scope: !2606)
!2783 = !DILocation(line: 381, column: 6, scope: !2595)
!2784 = !DILocation(line: 382, column: 11, scope: !2595)
!2785 = !DILocation(line: 382, column: 3, scope: !2595)
!2786 = distinct !DISubprogram(name: "check_literal", scope: !1986, file: !1986, line: 152, type: !2787, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !13, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2790 = !DILocalVariable(name: "s", arg: 1, scope: !2786, file: !1986, line: 152, type: !13)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocalVariable(name: "b", arg: 2, scope: !2786, file: !1986, line: 152, type: !2789)
!2793 = !DILocalVariable(name: "__cil_tmp11", scope: !2786, file: !1986, line: 162, type: !27)
!2794 = !DILocation(line: 162, column: 9, scope: !2786)
!2795 = !DILocalVariable(name: "__cil_tmp12", scope: !2786, file: !1986, line: 163, type: !27)
!2796 = !DILocation(line: 163, column: 9, scope: !2786)
!2797 = !DILocation(line: 155, column: 3, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !1986, line: 167, column: 3)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !1986, line: 166, column: 3)
!2800 = distinct !DILexicalBlock(scope: !2786, file: !1986, line: 165, column: 3)
!2801 = !DILocation(line: 155, column: 13, scope: !2798)
!2802 = !DILocation(line: 155, column: 18, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 155, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !1986, line: 155, column: 13)
!2805 = !DILocation(line: 155, column: 12, scope: !2803)
!2806 = !DILocation(line: 155, column: 21, scope: !2803)
!2807 = !DILocation(line: 155, column: 9, scope: !2804)
!2808 = !DILocation(line: 155, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !1986, line: 155, column: 28)
!2810 = !DILocation(line: 157, column: 11, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !1986, line: 158, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 157, column: 5)
!2813 = !DILocalVariable(name: "tmp", scope: !2786, file: !1986, line: 154, type: !27)
!2814 = !DILocation(line: 158, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 158, column: 9)
!2816 = !DILocation(line: 158, column: 27, scope: !2815)
!2817 = !DILocation(line: 158, column: 9, scope: !2804)
!2818 = !DILocation(line: 158, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !1986, line: 158, column: 59)
!2820 = !DILocation(line: 160, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !1986, line: 161, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 160, column: 5)
!2823 = !DILocalVariable(name: "tmp___2", scope: !2786, file: !1986, line: 157, type: !6)
!2824 = !DILocation(line: 160, column: 17, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 160, column: 9)
!2826 = !DILocation(line: 160, column: 9, scope: !2804)
!2827 = !DILocation(line: 160, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !1986, line: 160, column: 11)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !1986, line: 160, column: 23)
!2830 = !DILocation(line: 160, column: 17, scope: !2828)
!2831 = !DILocation(line: 160, column: 11, scope: !2828)
!2832 = !DILocation(line: 160, column: 26, scope: !2828)
!2833 = !DILocation(line: 160, column: 11, scope: !2829)
!2834 = !DILocation(line: 161, column: 12, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !1986, line: 160, column: 33)
!2836 = !DILocation(line: 162, column: 7, scope: !2835)
!2837 = !DILocation(line: 160, column: 19, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !1986, line: 164, column: 9)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !1986, line: 163, column: 9)
!2840 = distinct !DILexicalBlock(scope: !2828, file: !1986, line: 162, column: 14)
!2841 = !DILocalVariable(name: "tmp___3", scope: !2786, file: !1986, line: 158, type: !295)
!2842 = !DILocation(line: 160, column: 29, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !1986, line: 160, column: 13)
!2844 = !DILocation(line: 160, column: 50, scope: !2843)
!2845 = !DILocation(line: 160, column: 46, scope: !2843)
!2846 = !DILocation(line: 160, column: 40, scope: !2843)
!2847 = !DILocation(line: 160, column: 38, scope: !2843)
!2848 = !DILocation(line: 160, column: 27, scope: !2843)
!2849 = !DILocation(line: 160, column: 13, scope: !2843)
!2850 = !DILocation(line: 160, column: 56, scope: !2843)
!2851 = !DILocation(line: 160, column: 13, scope: !2840)
!2852 = !DILocation(line: 161, column: 14, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2843, file: !1986, line: 160, column: 64)
!2854 = !DILocation(line: 162, column: 9, scope: !2853)
!2855 = !DILocation(line: 160, column: 11, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2843, file: !1986, line: 162, column: 16)
!2857 = !DILocation(line: 163, column: 5, scope: !2829)
!2858 = !DILocation(line: 163, column: 12, scope: !2825)
!2859 = !DILocation(line: 162, column: 17, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !1986, line: 166, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1986, line: 165, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2825, file: !1986, line: 163, column: 12)
!2863 = !DILocalVariable(name: "tmp___0", scope: !2786, file: !1986, line: 155, type: !6)
!2864 = !DILocation(line: 162, column: 19, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !1986, line: 162, column: 11)
!2866 = !DILocation(line: 162, column: 11, scope: !2862)
!2867 = !DILocation(line: 162, column: 23, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !1986, line: 162, column: 13)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !1986, line: 162, column: 25)
!2870 = !DILocation(line: 162, column: 19, scope: !2868)
!2871 = !DILocation(line: 162, column: 13, scope: !2868)
!2872 = !DILocation(line: 162, column: 28, scope: !2868)
!2873 = !DILocation(line: 162, column: 13, scope: !2869)
!2874 = !DILocation(line: 163, column: 14, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2868, file: !1986, line: 162, column: 35)
!2876 = !DILocation(line: 164, column: 9, scope: !2875)
!2877 = !DILocation(line: 162, column: 21, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !1986, line: 166, column: 11)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !1986, line: 165, column: 11)
!2880 = distinct !DILexicalBlock(scope: !2868, file: !1986, line: 164, column: 16)
!2881 = !DILocalVariable(name: "tmp___1", scope: !2786, file: !1986, line: 156, type: !295)
!2882 = !DILocation(line: 162, column: 31, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !1986, line: 162, column: 15)
!2884 = !DILocation(line: 162, column: 52, scope: !2883)
!2885 = !DILocation(line: 162, column: 48, scope: !2883)
!2886 = !DILocation(line: 162, column: 42, scope: !2883)
!2887 = !DILocation(line: 162, column: 40, scope: !2883)
!2888 = !DILocation(line: 162, column: 29, scope: !2883)
!2889 = !DILocation(line: 162, column: 15, scope: !2883)
!2890 = !DILocation(line: 162, column: 58, scope: !2883)
!2891 = !DILocation(line: 162, column: 15, scope: !2880)
!2892 = !DILocation(line: 163, column: 16, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2883, file: !1986, line: 162, column: 66)
!2894 = !DILocation(line: 164, column: 11, scope: !2893)
!2895 = !DILocation(line: 166, column: 7, scope: !2869)
!2896 = !DILocation(line: 165, column: 5, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !1986, line: 169, column: 5)
!2898 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 168, column: 5)
!2899 = !DILocation(line: 0, scope: !2804)
!2900 = !DILocation(line: 165, column: 15, scope: !2897)
!2901 = !DILocation(line: 165, column: 17, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !1986, line: 165, column: 11)
!2903 = distinct !DILexicalBlock(scope: !2897, file: !1986, line: 165, column: 15)
!2904 = !DILocation(line: 165, column: 11, scope: !2902)
!2905 = !DILocation(line: 165, column: 20, scope: !2902)
!2906 = !DILocation(line: 165, column: 11, scope: !2903)
!2907 = !DILocation(line: 165, column: 22, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !1986, line: 165, column: 13)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !1986, line: 165, column: 26)
!2910 = !DILocation(line: 165, column: 16, scope: !2908)
!2911 = !DILocation(line: 165, column: 25, scope: !2908)
!2912 = !DILocation(line: 165, column: 13, scope: !2909)
!2913 = !DILocation(line: 165, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !1986, line: 165, column: 33)
!2915 = !DILocation(line: 167, column: 7, scope: !2909)
!2916 = !DILocation(line: 165, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2902, file: !1986, line: 167, column: 14)
!2918 = !DILocation(line: 167, column: 17, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2903, file: !1986, line: 167, column: 11)
!2920 = !DILocation(line: 167, column: 11, scope: !2919)
!2921 = !DILocation(line: 167, column: 20, scope: !2919)
!2922 = !DILocation(line: 167, column: 11, scope: !2903)
!2923 = !DILocation(line: 167, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2919, file: !1986, line: 167, column: 27)
!2925 = !DILocation(line: 167, column: 17, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2919, file: !1986, line: 167, column: 11)
!2927 = !DILocation(line: 167, column: 11, scope: !2926)
!2928 = !DILocation(line: 167, column: 20, scope: !2926)
!2929 = !DILocation(line: 167, column: 27, scope: !2926)
!2930 = !DILocalVariable(name: "tmp___4", scope: !2786, file: !1986, line: 160, type: !13)
!2931 = !DILocation(line: 169, column: 11, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2926, file: !1986, line: 167, column: 27)
!2933 = !DILocation(line: 169, column: 19, scope: !2932)
!2934 = !DILocation(line: 169, column: 13, scope: !2932)
!2935 = !DILocalVariable(name: "t", scope: !2786, file: !1986, line: 159, type: !6)
!2936 = !DILocation(line: 170, column: 9, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !1986, line: 171, column: 9)
!2938 = distinct !DILexicalBlock(scope: !2932, file: !1986, line: 170, column: 9)
!2939 = !DILocation(line: 0, scope: !2932)
!2940 = !DILocation(line: 170, column: 19, scope: !2937)
!2941 = !DILocation(line: 170, column: 21, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !1986, line: 170, column: 15)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !1986, line: 170, column: 19)
!2944 = !DILocation(line: 170, column: 15, scope: !2942)
!2945 = !DILocation(line: 170, column: 24, scope: !2942)
!2946 = !DILocation(line: 170, column: 15, scope: !2943)
!2947 = !DILocation(line: 170, column: 26, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !1986, line: 170, column: 17)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !1986, line: 170, column: 30)
!2950 = !DILocation(line: 170, column: 20, scope: !2948)
!2951 = !DILocation(line: 170, column: 29, scope: !2948)
!2952 = !DILocation(line: 170, column: 17, scope: !2949)
!2953 = !DILocation(line: 170, column: 15, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2948, file: !1986, line: 170, column: 36)
!2955 = !DILocation(line: 172, column: 11, scope: !2949)
!2956 = !DILocation(line: 170, column: 13, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2942, file: !1986, line: 172, column: 18)
!2958 = !DILocation(line: 170, column: 13, scope: !2943)
!2959 = distinct !{!2959, !2936, !2960}
!2960 = !DILocation(line: 171, column: 9, scope: !2937)
!2961 = !DILocation(line: 173, column: 9, scope: !2937)
!2962 = !DILocation(line: 171, column: 19, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2932, file: !1986, line: 171, column: 13)
!2964 = !DILocation(line: 171, column: 13, scope: !2963)
!2965 = !DILocation(line: 171, column: 22, scope: !2963)
!2966 = !DILocation(line: 171, column: 13, scope: !2932)
!2967 = !DILocation(line: 171, column: 11, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !1986, line: 171, column: 28)
!2969 = !DILocation(line: 173, column: 7, scope: !2932)
!2970 = !DILocation(line: 173, column: 9, scope: !2903)
!2971 = distinct !{!2971, !2896, !2972}
!2972 = !DILocation(line: 174, column: 5, scope: !2897)
!2973 = !DILocation(line: 176, column: 5, scope: !2897)
!2974 = !DILocalVariable(name: "tmp___5", scope: !2786, file: !1986, line: 161, type: !13)
!2975 = !DILocation(line: 176, column: 7, scope: !2804)
!2976 = !DILocation(line: 176, column: 15, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2804, file: !1986, line: 176, column: 9)
!2978 = !DILocation(line: 176, column: 9, scope: !2977)
!2979 = !DILocation(line: 176, column: 24, scope: !2977)
!2980 = !DILocation(line: 176, column: 9, scope: !2804)
!2981 = !DILocation(line: 176, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !1986, line: 176, column: 30)
!2983 = distinct !{!2983, !2797, !2984}
!2984 = !DILocation(line: 178, column: 3, scope: !2798)
!2985 = !DILocation(line: 180, column: 3, scope: !2798)
!2986 = !DILocation(line: 178, column: 3, scope: !2800)
!2987 = !DILocation(line: 180, column: 1, scope: !2786)
!2988 = distinct !DISubprogram(name: "para_macro_process", scope: !1986, file: !1986, line: 28, type: !2989, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!13, !13, !13}
!2991 = !DILocalVariable(name: "p", arg: 1, scope: !2988, file: !1986, line: 28, type: !13)
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !DILocalVariable(name: "q", arg: 2, scope: !2988, file: !1986, line: 28, type: !13)
!2994 = !DILocalVariable(name: "length", scope: !2988, file: !1986, line: 30, type: !6)
!2995 = !DILocation(line: 30, column: 7, scope: !2988)
!2996 = !DILocalVariable(name: "buffer", scope: !2988, file: !1986, line: 40, type: !229)
!2997 = !DILocation(line: 40, column: 10, scope: !2988)
!2998 = !DILocalVariable(name: "__cil_tmp18", scope: !2988, file: !1986, line: 45, type: !17)
!2999 = !DILocation(line: 45, column: 9, scope: !2988)
!3000 = !DILocalVariable(name: "__cil_tmp19", scope: !2988, file: !1986, line: 46, type: !27)
!3001 = !DILocation(line: 46, column: 9, scope: !2988)
!3002 = !DILocalVariable(name: "__cil_tmp20", scope: !2988, file: !1986, line: 47, type: !27)
!3003 = !DILocation(line: 47, column: 9, scope: !2988)
!3004 = !DILocalVariable(name: "__cil_tmp21", scope: !2988, file: !1986, line: 48, type: !27)
!3005 = !DILocation(line: 48, column: 9, scope: !2988)
!3006 = !DILocation(line: 31, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2988, file: !1986, line: 50, column: 3)
!3008 = !DILocation(line: 31, column: 12, scope: !3007)
!3009 = !DILocation(line: 31, column: 10, scope: !3007)
!3010 = !DILocation(line: 36, column: 8, scope: !3007)
!3011 = !DILocalVariable(name: "md", scope: !2988, file: !1986, line: 32, type: !86)
!3012 = !DILocation(line: 36, column: 3, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !1986, line: 38, column: 3)
!3014 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 37, column: 3)
!3015 = !DILocation(line: 0, scope: !3007)
!3016 = !DILocation(line: 36, column: 13, scope: !3013)
!3017 = !DILocation(line: 36, column: 12, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !1986, line: 36, column: 9)
!3019 = distinct !DILexicalBlock(scope: !3013, file: !1986, line: 36, column: 13)
!3020 = !DILocation(line: 36, column: 31, scope: !3018)
!3021 = !DILocation(line: 36, column: 9, scope: !3019)
!3022 = !DILocation(line: 36, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !1986, line: 36, column: 64)
!3024 = !DILocation(line: 38, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3019, file: !1986, line: 38, column: 9)
!3026 = !DILocation(line: 38, column: 23, scope: !3025)
!3027 = !DILocation(line: 38, column: 16, scope: !3025)
!3028 = !DILocation(line: 38, column: 9, scope: !3019)
!3029 = !DILocation(line: 38, column: 60, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !1986, line: 40, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !1986, line: 39, column: 7)
!3032 = distinct !DILexicalBlock(scope: !3025, file: !1986, line: 38, column: 35)
!3033 = !DILocation(line: 38, column: 75, scope: !3030)
!3034 = !DILocation(line: 38, column: 13, scope: !3030)
!3035 = !DILocalVariable(name: "tmp", scope: !2988, file: !1986, line: 34, type: !6)
!3036 = !DILocation(line: 38, column: 15, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !1986, line: 38, column: 11)
!3038 = !DILocation(line: 38, column: 11, scope: !3032)
!3039 = !DILocation(line: 38, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !1986, line: 38, column: 21)
!3041 = !DILocation(line: 40, column: 5, scope: !3032)
!3042 = !DILocation(line: 36, column: 14, scope: !3019)
!3043 = distinct !{!3043, !3012, !3044}
!3044 = !DILocation(line: 37, column: 3, scope: !3013)
!3045 = !DILocation(line: 39, column: 3, scope: !3013)
!3046 = !DILocation(line: 41, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 41, column: 7)
!3048 = !DILocation(line: 41, column: 26, scope: !3047)
!3049 = !DILocation(line: 41, column: 7, scope: !3007)
!3050 = !DILocation(line: 43, column: 15, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !1986, line: 43, column: 5)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !1986, line: 42, column: 5)
!3053 = distinct !DILexicalBlock(scope: !3047, file: !1986, line: 41, column: 58)
!3054 = !DILocation(line: 43, column: 5, scope: !3051)
!3055 = !DILocation(line: 44, column: 38, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !1986, line: 45, column: 5)
!3057 = !DILocation(line: 44, column: 5, scope: !3056)
!3058 = !DILocation(line: 45, column: 5, scope: !3053)
!3059 = !DILocation(line: 51, column: 13, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !1986, line: 48, column: 3)
!3061 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 47, column: 3)
!3062 = !DILocalVariable(name: "tmp___0", scope: !2988, file: !1986, line: 35, type: !17)
!3063 = !DILocation(line: 51, column: 8, scope: !3061)
!3064 = !DILocalVariable(name: "me", scope: !2988, file: !1986, line: 33, type: !78)
!3065 = !DILocation(line: 52, column: 14, scope: !3061)
!3066 = !DILocation(line: 52, column: 7, scope: !3061)
!3067 = !DILocation(line: 52, column: 12, scope: !3061)
!3068 = !DILocation(line: 53, column: 16, scope: !3061)
!3069 = !DILocation(line: 54, column: 7, scope: !3061)
!3070 = !DILocation(line: 54, column: 13, scope: !3061)
!3071 = !DILocation(line: 55, column: 22, scope: !3061)
!3072 = !DILocation(line: 55, column: 7, scope: !3061)
!3073 = !DILocation(line: 55, column: 16, scope: !3061)
!3074 = !DILocation(line: 56, column: 17, scope: !3061)
!3075 = !DILocation(line: 56, column: 13, scope: !3061)
!3076 = !DILocation(line: 56, column: 3, scope: !3061)
!3077 = !DILocation(line: 56, column: 28, scope: !3061)
!3078 = !DILocation(line: 58, column: 7, scope: !3061)
!3079 = !DILocation(line: 58, column: 12, scope: !3061)
!3080 = !DILocation(line: 59, column: 14, scope: !3061)
!3081 = !DILocalVariable(name: "pp", scope: !2988, file: !1986, line: 31, type: !595)
!3082 = !DILocation(line: 61, column: 3, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !1986, line: 62, column: 3)
!3084 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 61, column: 3)
!3085 = !DILocation(line: 61, column: 13, scope: !3083)
!3086 = !DILocation(line: 61, column: 15, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !1986, line: 65, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !1986, line: 64, column: 5)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !1986, line: 61, column: 13)
!3090 = !DILocalVariable(name: "tmp___1", scope: !2988, file: !1986, line: 36, type: !295)
!3091 = !DILocation(line: 61, column: 7, scope: !3088)
!3092 = !DILocation(line: 61, column: 28, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !1986, line: 61, column: 9)
!3094 = !DILocation(line: 61, column: 45, scope: !3093)
!3095 = !DILocation(line: 61, column: 39, scope: !3093)
!3096 = !DILocation(line: 61, column: 37, scope: !3093)
!3097 = !DILocation(line: 61, column: 26, scope: !3093)
!3098 = !DILocation(line: 61, column: 12, scope: !3093)
!3099 = !DILocation(line: 61, column: 49, scope: !3093)
!3100 = !DILocation(line: 61, column: 9, scope: !3089)
!3101 = !DILocation(line: 61, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3093, file: !1986, line: 61, column: 58)
!3103 = distinct !{!3103, !3082, !3104}
!3104 = !DILocation(line: 63, column: 3, scope: !3083)
!3105 = !DILocation(line: 65, column: 3, scope: !3083)
!3106 = !DILocation(line: 62, column: 3, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1986, line: 69, column: 3)
!3108 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 68, column: 3)
!3109 = !DILocation(line: 62, column: 13, scope: !3107)
!3110 = !DILocation(line: 62, column: 15, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !1986, line: 62, column: 9)
!3112 = distinct !DILexicalBlock(scope: !3107, file: !1986, line: 62, column: 13)
!3113 = !DILocation(line: 62, column: 9, scope: !3111)
!3114 = !DILocation(line: 62, column: 18, scope: !3111)
!3115 = !DILocation(line: 62, column: 9, scope: !3112)
!3116 = !DILocation(line: 62, column: 20, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !1986, line: 62, column: 11)
!3118 = distinct !DILexicalBlock(scope: !3111, file: !1986, line: 62, column: 24)
!3119 = !DILocation(line: 62, column: 14, scope: !3117)
!3120 = !DILocation(line: 62, column: 23, scope: !3117)
!3121 = !DILocation(line: 62, column: 11, scope: !3118)
!3122 = !DILocation(line: 62, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3117, file: !1986, line: 62, column: 31)
!3124 = !DILocation(line: 64, column: 5, scope: !3118)
!3125 = !DILocation(line: 62, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3111, file: !1986, line: 64, column: 12)
!3127 = !DILocation(line: 64, column: 15, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !1986, line: 65, column: 5)
!3129 = distinct !DILexicalBlock(scope: !3112, file: !1986, line: 64, column: 5)
!3130 = !DILocalVariable(name: "tmp___2", scope: !2988, file: !1986, line: 38, type: !17)
!3131 = !DILocation(line: 64, column: 10, scope: !3129)
!3132 = !DILocalVariable(name: "as", scope: !2988, file: !1986, line: 37, type: !93)
!3133 = !DILocation(line: 65, column: 9, scope: !3129)
!3134 = !DILocation(line: 65, column: 14, scope: !3129)
!3135 = !DILocation(line: 66, column: 9, scope: !3129)
!3136 = !DILocation(line: 67, column: 16, scope: !3129)
!3137 = !DILocation(line: 68, column: 18, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3129, file: !1986, line: 68, column: 5)
!3139 = !DILocation(line: 68, column: 9, scope: !3138)
!3140 = !DILocation(line: 68, column: 16, scope: !3138)
!3141 = !DILocation(line: 69, column: 10, scope: !3129)
!3142 = !DILocation(line: 69, column: 7, scope: !3129)
!3143 = !DILocation(line: 70, column: 15, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3112, file: !1986, line: 70, column: 9)
!3145 = !DILocation(line: 70, column: 9, scope: !3144)
!3146 = !DILocation(line: 70, column: 18, scope: !3144)
!3147 = !DILocation(line: 70, column: 9, scope: !3112)
!3148 = !DILocation(line: 70, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !1986, line: 72, column: 7)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !1986, line: 71, column: 7)
!3151 = distinct !DILexicalBlock(scope: !3144, file: !1986, line: 70, column: 25)
!3152 = !DILocation(line: 0, scope: !3112)
!3153 = !DILocation(line: 70, column: 17, scope: !3149)
!3154 = !DILocation(line: 70, column: 19, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !1986, line: 74, column: 9)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !1986, line: 73, column: 9)
!3157 = distinct !DILexicalBlock(scope: !3149, file: !1986, line: 70, column: 17)
!3158 = !DILocalVariable(name: "tmp___3", scope: !2988, file: !1986, line: 39, type: !295)
!3159 = !DILocation(line: 70, column: 11, scope: !3156)
!3160 = !DILocation(line: 70, column: 32, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !1986, line: 70, column: 13)
!3162 = !DILocation(line: 70, column: 49, scope: !3161)
!3163 = !DILocation(line: 70, column: 43, scope: !3161)
!3164 = !DILocation(line: 70, column: 41, scope: !3161)
!3165 = !DILocation(line: 70, column: 30, scope: !3161)
!3166 = !DILocation(line: 70, column: 16, scope: !3161)
!3167 = !DILocation(line: 70, column: 53, scope: !3161)
!3168 = !DILocation(line: 70, column: 13, scope: !3157)
!3169 = !DILocation(line: 70, column: 11, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3161, file: !1986, line: 70, column: 62)
!3171 = distinct !{!3171, !3148, !3172}
!3172 = !DILocation(line: 72, column: 7, scope: !3149)
!3173 = !DILocation(line: 74, column: 7, scope: !3149)
!3174 = !DILocation(line: 77, column: 5, scope: !3151)
!3175 = distinct !{!3175, !3106, !3176}
!3176 = !DILocation(line: 78, column: 3, scope: !3107)
!3177 = !DILocation(line: 80, column: 3, scope: !3107)
!3178 = !DILocation(line: 73, column: 13, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 73, column: 7)
!3180 = !DILocation(line: 73, column: 7, scope: !3179)
!3181 = !DILocation(line: 73, column: 16, scope: !3179)
!3182 = !DILocation(line: 73, column: 7, scope: !3007)
!3183 = !DILocation(line: 75, column: 5, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !1986, line: 75, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !1986, line: 74, column: 5)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !1986, line: 73, column: 23)
!3187 = !DILocation(line: 76, column: 38, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !1986, line: 77, column: 5)
!3189 = !DILocation(line: 76, column: 5, scope: !3188)
!3190 = !DILocation(line: 77, column: 5, scope: !3186)
!3191 = !DILocation(line: 85, column: 21, scope: !3007)
!3192 = !DILocation(line: 87, column: 3, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !1986, line: 87, column: 3)
!3194 = distinct !DILexicalBlock(scope: !3007, file: !1986, line: 86, column: 3)
!3195 = !DILocation(line: 87, column: 13, scope: !3193)
!3196 = !DILocation(line: 91, column: 29, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !1986, line: 91, column: 5)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !1986, line: 90, column: 5)
!3199 = distinct !DILexicalBlock(scope: !3193, file: !1986, line: 87, column: 13)
!3200 = !DILocation(line: 91, column: 43, scope: !3197)
!3201 = !DILocation(line: 91, column: 54, scope: !3197)
!3202 = !DILocation(line: 91, column: 62, scope: !3197)
!3203 = !DILocation(line: 91, column: 5, scope: !3197)
!3204 = !DILocation(line: 97, column: 15, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3199, file: !1986, line: 97, column: 9)
!3206 = !DILocation(line: 97, column: 9, scope: !3205)
!3207 = !DILocation(line: 97, column: 25, scope: !3205)
!3208 = !DILocation(line: 97, column: 9, scope: !3199)
!3209 = !DILocation(line: 99, column: 19, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !1986, line: 99, column: 7)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !1986, line: 98, column: 7)
!3212 = distinct !DILexicalBlock(scope: !3205, file: !1986, line: 97, column: 32)
!3213 = !DILocation(line: 99, column: 7, scope: !3210)
!3214 = !DILocation(line: 100, column: 27, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !1986, line: 100, column: 11)
!3216 = !DILocation(line: 100, column: 11, scope: !3215)
!3217 = !DILocation(line: 100, column: 43, scope: !3215)
!3218 = !DILocation(line: 100, column: 40, scope: !3215)
!3219 = !DILocation(line: 100, column: 11, scope: !3212)
!3220 = !DILocation(line: 100, column: 9, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3215, file: !1986, line: 100, column: 63)
!3222 = !DILocation(line: 102, column: 5, scope: !3212)
!3223 = !DILocation(line: 107, column: 40, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !1986, line: 104, column: 7)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !1986, line: 103, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3205, file: !1986, line: 102, column: 12)
!3227 = !DILocation(line: 107, column: 17, scope: !3224)
!3228 = !DILocalVariable(name: "tmp___4", scope: !2988, file: !1986, line: 42, type: !10)
!3229 = !DILocation(line: 107, column: 12, scope: !3225)
!3230 = !DILocation(line: 107, column: 19, scope: !3225)
!3231 = !DILocalVariable(name: "qq", scope: !2988, file: !1986, line: 41, type: !13)
!3232 = !DILocation(line: 108, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !1986, line: 110, column: 7)
!3234 = distinct !DILexicalBlock(scope: !3226, file: !1986, line: 109, column: 7)
!3235 = !DILocation(line: 0, scope: !3226)
!3236 = !DILocation(line: 108, column: 17, scope: !3233)
!3237 = !DILocation(line: 108, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !1986, line: 108, column: 13)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !1986, line: 108, column: 17)
!3240 = !DILocation(line: 108, column: 50, scope: !3238)
!3241 = !DILocation(line: 108, column: 34, scope: !3238)
!3242 = !DILocation(line: 108, column: 32, scope: !3238)
!3243 = !DILocation(line: 108, column: 13, scope: !3239)
!3244 = !DILocation(line: 108, column: 21, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !1986, line: 110, column: 11)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !1986, line: 109, column: 11)
!3247 = distinct !DILexicalBlock(scope: !3238, file: !1986, line: 108, column: 60)
!3248 = !DILocalVariable(name: "tmp___5", scope: !2988, file: !1986, line: 43, type: !295)
!3249 = !DILocation(line: 108, column: 34, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !1986, line: 108, column: 15)
!3251 = !DILocation(line: 108, column: 56, scope: !3250)
!3252 = !DILocation(line: 108, column: 51, scope: !3250)
!3253 = !DILocation(line: 108, column: 45, scope: !3250)
!3254 = !DILocation(line: 108, column: 43, scope: !3250)
!3255 = !DILocation(line: 108, column: 32, scope: !3250)
!3256 = !DILocation(line: 108, column: 18, scope: !3250)
!3257 = !DILocation(line: 108, column: 63, scope: !3250)
!3258 = !DILocation(line: 108, column: 15, scope: !3247)
!3259 = !DILocation(line: 108, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3250, file: !1986, line: 108, column: 72)
!3261 = !DILocation(line: 110, column: 9, scope: !3247)
!3262 = !DILocation(line: 108, column: 11, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3238, file: !1986, line: 110, column: 16)
!3264 = !DILocation(line: 108, column: 12, scope: !3239)
!3265 = distinct !{!3265, !3232, !3266}
!3266 = !DILocation(line: 109, column: 7, scope: !3233)
!3267 = !DILocation(line: 111, column: 7, scope: !3233)
!3268 = !DILocation(line: 109, column: 11, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3226, file: !1986, line: 114, column: 7)
!3270 = !DILocation(line: 110, column: 20, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !1986, line: 110, column: 7)
!3272 = !DILocation(line: 110, column: 7, scope: !3271)
!3273 = !DILocation(line: 116, column: 31, scope: !3199)
!3274 = !DILocation(line: 116, column: 45, scope: !3199)
!3275 = !DILocation(line: 116, column: 56, scope: !3199)
!3276 = !DILocation(line: 116, column: 5, scope: !3199)
!3277 = !DILocation(line: 116, column: 19, scope: !3199)
!3278 = !DILocation(line: 116, column: 28, scope: !3199)
!3279 = !DILocation(line: 117, column: 25, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3199, file: !1986, line: 117, column: 9)
!3281 = !DILocation(line: 117, column: 39, scope: !3280)
!3282 = !DILocation(line: 117, column: 9, scope: !3280)
!3283 = !DILocation(line: 117, column: 48, scope: !3280)
!3284 = !DILocation(line: 117, column: 9, scope: !3199)
!3285 = !DILocation(line: 119, column: 14, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !1986, line: 118, column: 7)
!3287 = distinct !DILexicalBlock(scope: !3280, file: !1986, line: 117, column: 80)
!3288 = !DILocalVariable(name: "temp", scope: !2988, file: !1986, line: 44, type: !78)
!3289 = !DILocation(line: 120, column: 22, scope: !3286)
!3290 = !DILocation(line: 120, column: 36, scope: !3286)
!3291 = !DILocation(line: 120, column: 20, scope: !3286)
!3292 = !DILocation(line: 121, column: 12, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3286, file: !1986, line: 121, column: 7)
!3294 = !DILocation(line: 121, column: 7, scope: !3293)
!3295 = !DILocation(line: 122, column: 21, scope: !3286)
!3296 = !DILocation(line: 123, column: 7, scope: !3287)
!3297 = distinct !{!3297, !3192, !3298}
!3298 = !DILocation(line: 125, column: 3, scope: !3193)
!3299 = !DILocation(line: 127, column: 3, scope: !3193)
!3300 = !DILocation(line: 130, column: 21, scope: !3007)
!3301 = !DILocation(line: 131, column: 13, scope: !3007)
!3302 = !DILocation(line: 131, column: 3, scope: !3007)
!3303 = !DILocation(line: 133, column: 1, scope: !2988)
!3304 = distinct !DISubprogram(name: "tree_search", scope: !3305, file: !3305, line: 203, type: !3306, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3305 = !DIFile(filename: "/home/wslee/benchmarks/textformat/xfpt-0.07/src/tree.c", directory: "")
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!137, !137, !13}
!3308 = !DILocalVariable(name: "p", arg: 1, scope: !3304, file: !3305, line: 203, type: !137)
!3309 = !DILocation(line: 0, scope: !3304)
!3310 = !DILocalVariable(name: "name", arg: 2, scope: !3304, file: !3305, line: 203, type: !13)
!3311 = !DILocation(line: 206, column: 3, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !3305, line: 210, column: 3)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3305, line: 209, column: 3)
!3314 = distinct !DILexicalBlock(scope: !3304, file: !3305, line: 208, column: 3)
!3315 = !DILocation(line: 206, column: 13, scope: !3312)
!3316 = !DILocation(line: 206, column: 12, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3305, line: 206, column: 9)
!3318 = distinct !DILexicalBlock(scope: !3312, file: !3305, line: 206, column: 13)
!3319 = !DILocation(line: 206, column: 30, scope: !3317)
!3320 = !DILocation(line: 206, column: 9, scope: !3318)
!3321 = !DILocation(line: 206, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3317, file: !3305, line: 206, column: 63)
!3323 = !DILocation(line: 208, column: 60, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3305, line: 209, column: 5)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !3305, line: 208, column: 5)
!3326 = !DILocation(line: 208, column: 56, scope: !3324)
!3327 = !DILocation(line: 208, column: 11, scope: !3324)
!3328 = !DILocalVariable(name: "tmp", scope: !3304, file: !3305, line: 206, type: !6)
!3329 = !DILocalVariable(name: "c", scope: !3304, file: !3305, line: 205, type: !6)
!3330 = !DILocation(line: 209, column: 11, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3318, file: !3305, line: 209, column: 9)
!3332 = !DILocation(line: 209, column: 9, scope: !3318)
!3333 = !DILocation(line: 209, column: 7, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !3305, line: 209, column: 17)
!3335 = !DILocation(line: 210, column: 11, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3318, file: !3305, line: 210, column: 9)
!3337 = !DILocation(line: 210, column: 9, scope: !3318)
!3338 = !DILocation(line: 210, column: 14, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !3305, line: 210, column: 16)
!3340 = !DILocation(line: 211, column: 5, scope: !3339)
!3341 = !DILocation(line: 210, column: 14, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3336, file: !3305, line: 211, column: 12)
!3343 = !DILocation(line: 0, scope: !3336)
!3344 = distinct !{!3344, !3311, !3345}
!3345 = !DILocation(line: 212, column: 3, scope: !3312)
!3346 = !DILocation(line: 214, column: 3, scope: !3312)
!3347 = !DILocation(line: 212, column: 3, scope: !3314)
!3348 = !DILocation(line: 0, scope: !3314)
!3349 = !DILocation(line: 214, column: 1, scope: !3304)
!3350 = distinct !DISubprogram(name: "read_process_macroline", scope: !1676, file: !1676, line: 31, type: !3351, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !13, !13}
!3353 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !1676, line: 31, type: !13)
!3354 = !DILocation(line: 0, scope: !3350)
!3355 = !DILocalVariable(name: "b", arg: 2, scope: !3350, file: !1676, line: 31, type: !13)
!3356 = !DILocalVariable(name: "__cil_tmp26", scope: !3350, file: !1676, line: 56, type: !27)
!3357 = !DILocation(line: 56, column: 9, scope: !3350)
!3358 = !DILocalVariable(name: "__cil_tmp27", scope: !3350, file: !1676, line: 57, type: !27)
!3359 = !DILocation(line: 57, column: 9, scope: !3350)
!3360 = !DILocalVariable(name: "__cil_tmp28", scope: !3350, file: !1676, line: 58, type: !27)
!3361 = !DILocation(line: 58, column: 9, scope: !3350)
!3362 = !DILocalVariable(name: "optend", scope: !3350, file: !1676, line: 33, type: !6)
!3363 = !DILocation(line: 36, column: 3, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !1676, line: 36, column: 3)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !1676, line: 35, column: 3)
!3366 = distinct !DILexicalBlock(scope: !3350, file: !1676, line: 60, column: 3)
!3367 = !DILocation(line: 34, column: 10, scope: !3366)
!3368 = !DILocation(line: 36, column: 13, scope: !3364)
!3369 = !DILocation(line: 0, scope: !3366)
!3370 = !DILocation(line: 36, column: 18, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 36, column: 9)
!3372 = distinct !DILexicalBlock(scope: !3364, file: !1676, line: 36, column: 13)
!3373 = !DILocation(line: 36, column: 12, scope: !3371)
!3374 = !DILocation(line: 36, column: 21, scope: !3371)
!3375 = !DILocation(line: 36, column: 9, scope: !3372)
!3376 = !DILocation(line: 36, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3371, file: !1676, line: 36, column: 28)
!3378 = !DILocalVariable(name: "argn", scope: !3350, file: !1676, line: 35, type: !6)
!3379 = !DILocation(line: 45, column: 15, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 45, column: 9)
!3381 = !DILocation(line: 45, column: 9, scope: !3380)
!3382 = !DILocation(line: 45, column: 18, scope: !3380)
!3383 = !DILocation(line: 45, column: 9, scope: !3372)
!3384 = !DILocation(line: 48, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !1676, line: 45, column: 29)
!3386 = !DILocation(line: 49, column: 7, scope: !3385)
!3387 = !DILocation(line: 54, column: 15, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 54, column: 9)
!3389 = !DILocation(line: 54, column: 9, scope: !3388)
!3390 = !DILocation(line: 54, column: 18, scope: !3388)
!3391 = !DILocation(line: 54, column: 9, scope: !3372)
!3392 = !DILocalVariable(name: "tmp", scope: !3350, file: !1676, line: 38, type: !13)
!3393 = !DILocation(line: 54, column: 9, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !1676, line: 54, column: 25)
!3395 = !DILocalVariable(name: "tmp___0", scope: !3350, file: !1676, line: 39, type: !13)
!3396 = !DILocation(line: 54, column: 14, scope: !3394)
!3397 = !DILocation(line: 54, column: 12, scope: !3394)
!3398 = !DILocation(line: 54, column: 7, scope: !3394)
!3399 = !DILocation(line: 58, column: 19, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 58, column: 9)
!3401 = !DILocation(line: 58, column: 15, scope: !3400)
!3402 = !DILocation(line: 58, column: 9, scope: !3400)
!3403 = !DILocation(line: 58, column: 24, scope: !3400)
!3404 = !DILocation(line: 58, column: 9, scope: !3372)
!3405 = !DILocation(line: 58, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3400, file: !1676, line: 58, column: 31)
!3407 = !DILocalVariable(name: "tmp___1", scope: !3350, file: !1676, line: 40, type: !13)
!3408 = !DILocalVariable(name: "tmp___2", scope: !3350, file: !1676, line: 41, type: !13)
!3409 = !DILocation(line: 58, column: 18, scope: !3406)
!3410 = !DILocation(line: 58, column: 16, scope: !3406)
!3411 = !DILocation(line: 58, column: 7, scope: !3406)
!3412 = !DILocation(line: 64, column: 19, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 64, column: 9)
!3414 = !DILocation(line: 64, column: 15, scope: !3413)
!3415 = !DILocation(line: 64, column: 9, scope: !3413)
!3416 = !DILocation(line: 64, column: 24, scope: !3413)
!3417 = !DILocation(line: 64, column: 9, scope: !3372)
!3418 = !DILocation(line: 66, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3413, file: !1676, line: 64, column: 31)
!3420 = !DILocation(line: 67, column: 27, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3419, file: !1676, line: 67, column: 11)
!3422 = !DILocation(line: 67, column: 11, scope: !3421)
!3423 = !DILocation(line: 67, column: 41, scope: !3421)
!3424 = !DILocation(line: 67, column: 11, scope: !3419)
!3425 = !DILocation(line: 69, column: 9, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !1676, line: 69, column: 9)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !1676, line: 68, column: 9)
!3428 = distinct !DILexicalBlock(scope: !3421, file: !1676, line: 67, column: 73)
!3429 = !DILocalVariable(name: "tmp___3", scope: !3350, file: !1676, line: 42, type: !13)
!3430 = !DILocation(line: 70, column: 11, scope: !3427)
!3431 = !DILocation(line: 70, column: 18, scope: !3427)
!3432 = !DILocalVariable(name: "tmp___4", scope: !3350, file: !1676, line: 43, type: !13)
!3433 = !DILocation(line: 71, column: 11, scope: !3427)
!3434 = !DILocalVariable(name: "tmp___5", scope: !3350, file: !1676, line: 44, type: !13)
!3435 = !DILocation(line: 71, column: 20, scope: !3427)
!3436 = !DILocation(line: 71, column: 18, scope: !3427)
!3437 = !DILocation(line: 72, column: 9, scope: !3428)
!3438 = !DILocation(line: 74, column: 17, scope: !3419)
!3439 = !DILocalVariable(name: "argbase", scope: !3350, file: !1676, line: 36, type: !93)
!3440 = !DILocation(line: 75, column: 5, scope: !3419)
!3441 = !DILocation(line: 76, column: 17, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3413, file: !1676, line: 75, column: 12)
!3443 = !DILocation(line: 76, column: 31, scope: !3442)
!3444 = !DILocation(line: 0, scope: !3413)
!3445 = !DILocation(line: 80, column: 19, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 80, column: 9)
!3447 = !DILocation(line: 80, column: 15, scope: !3446)
!3448 = !DILocation(line: 80, column: 9, scope: !3446)
!3449 = !DILocation(line: 80, column: 24, scope: !3446)
!3450 = !DILocation(line: 80, column: 9, scope: !3372)
!3451 = !DILocation(line: 82, column: 9, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !1676, line: 81, column: 7)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !1676, line: 80, column: 31)
!3454 = !DILocation(line: 83, column: 17, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3452, file: !1676, line: 83, column: 7)
!3456 = !DILocalVariable(name: "tmp___9", scope: !3350, file: !1676, line: 48, type: !295)
!3457 = !DILocation(line: 83, column: 30, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3453, file: !1676, line: 83, column: 11)
!3459 = !DILocation(line: 83, column: 51, scope: !3458)
!3460 = !DILocation(line: 83, column: 47, scope: !3458)
!3461 = !DILocation(line: 83, column: 41, scope: !3458)
!3462 = !DILocation(line: 83, column: 39, scope: !3458)
!3463 = !DILocation(line: 83, column: 28, scope: !3458)
!3464 = !DILocation(line: 83, column: 14, scope: !3458)
!3465 = !DILocation(line: 83, column: 57, scope: !3458)
!3466 = !DILocation(line: 83, column: 11, scope: !3453)
!3467 = !DILocation(line: 85, column: 29, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !1676, line: 85, column: 9)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !1676, line: 84, column: 9)
!3470 = distinct !DILexicalBlock(scope: !3458, file: !1676, line: 83, column: 66)
!3471 = !DILocation(line: 85, column: 25, scope: !3468)
!3472 = !DILocation(line: 85, column: 19, scope: !3468)
!3473 = !DILocation(line: 85, column: 9, scope: !3468)
!3474 = !DILocalVariable(name: "tmp___6", scope: !3350, file: !1676, line: 45, type: !13)
!3475 = !DILocation(line: 86, column: 11, scope: !3469)
!3476 = !DILocation(line: 86, column: 18, scope: !3469)
!3477 = !DILocalVariable(name: "tmp___7", scope: !3350, file: !1676, line: 46, type: !13)
!3478 = !DILocation(line: 87, column: 11, scope: !3469)
!3479 = !DILocalVariable(name: "tmp___8", scope: !3350, file: !1676, line: 47, type: !13)
!3480 = !DILocation(line: 87, column: 20, scope: !3469)
!3481 = !DILocation(line: 87, column: 18, scope: !3469)
!3482 = !DILocation(line: 88, column: 9, scope: !3470)
!3483 = !DILocation(line: 90, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !1676, line: 91, column: 7)
!3485 = distinct !DILexicalBlock(scope: !3453, file: !1676, line: 90, column: 7)
!3486 = !DILocation(line: 0, scope: !3372)
!3487 = !DILocation(line: 0, scope: !3453)
!3488 = !DILocation(line: 90, column: 17, scope: !3484)
!3489 = !DILocation(line: 90, column: 20, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !1676, line: 94, column: 9)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !1676, line: 93, column: 9)
!3492 = distinct !DILexicalBlock(scope: !3484, file: !1676, line: 90, column: 17)
!3493 = !DILocalVariable(name: "tmp___10", scope: !3350, file: !1676, line: 49, type: !295)
!3494 = !DILocation(line: 90, column: 11, scope: !3491)
!3495 = !DILocation(line: 90, column: 32, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !1676, line: 90, column: 13)
!3497 = !DILocation(line: 90, column: 50, scope: !3496)
!3498 = !DILocation(line: 90, column: 44, scope: !3496)
!3499 = !DILocation(line: 90, column: 42, scope: !3496)
!3500 = !DILocation(line: 90, column: 30, scope: !3496)
!3501 = !DILocation(line: 90, column: 16, scope: !3496)
!3502 = !DILocation(line: 90, column: 54, scope: !3496)
!3503 = !DILocation(line: 90, column: 13, scope: !3492)
!3504 = !DILocation(line: 90, column: 11, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3496, file: !1676, line: 90, column: 63)
!3506 = !DILocation(line: 90, column: 22, scope: !3492)
!3507 = !DILocation(line: 90, column: 35, scope: !3492)
!3508 = !DILocation(line: 90, column: 29, scope: !3492)
!3509 = !DILocation(line: 90, column: 27, scope: !3492)
!3510 = !DILocation(line: 90, column: 39, scope: !3492)
!3511 = distinct !{!3511, !3483, !3512}
!3512 = !DILocation(line: 91, column: 7, scope: !3484)
!3513 = !DILocation(line: 93, column: 7, scope: !3484)
!3514 = !DILocalVariable(name: "tmp___11", scope: !3350, file: !1676, line: 50, type: !13)
!3515 = !DILocation(line: 92, column: 9, scope: !3453)
!3516 = !DILocation(line: 92, column: 22, scope: !3453)
!3517 = !DILocation(line: 92, column: 16, scope: !3453)
!3518 = !DILocalVariable(name: "arg", scope: !3350, file: !1676, line: 37, type: !93)
!3519 = !DILocalVariable(name: "i", scope: !3350, file: !1676, line: 34, type: !6)
!3520 = !DILocation(line: 95, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !1676, line: 97, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3453, file: !1676, line: 96, column: 7)
!3523 = !DILocation(line: 95, column: 17, scope: !3521)
!3524 = !DILocation(line: 95, column: 18, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !1676, line: 95, column: 13)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !1676, line: 95, column: 17)
!3527 = !DILocation(line: 95, column: 13, scope: !3526)
!3528 = !DILocation(line: 95, column: 11, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !1676, line: 95, column: 27)
!3530 = !DILocation(line: 97, column: 13, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3526, file: !1676, line: 97, column: 13)
!3532 = !DILocation(line: 97, column: 33, scope: !3531)
!3533 = !DILocation(line: 97, column: 13, scope: !3526)
!3534 = !DILocation(line: 97, column: 11, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !1676, line: 97, column: 65)
!3536 = !DILocation(line: 98, column: 20, scope: !3526)
!3537 = !DILocation(line: 95, column: 11, scope: !3526)
!3538 = distinct !{!3538, !3520, !3539}
!3539 = !DILocation(line: 96, column: 7, scope: !3521)
!3540 = !DILocation(line: 98, column: 7, scope: !3521)
!3541 = !DILocation(line: 101, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3453, file: !1676, line: 101, column: 11)
!3543 = !DILocation(line: 101, column: 31, scope: !3542)
!3544 = !DILocation(line: 101, column: 11, scope: !3453)
!3545 = !DILocation(line: 101, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !1676, line: 101, column: 63)
!3547 = !DILocation(line: 101, column: 24, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3542, file: !1676, line: 101, column: 11)
!3549 = !DILocation(line: 101, column: 31, scope: !3548)
!3550 = !DILocation(line: 101, column: 17, scope: !3548)
!3551 = !DILocation(line: 101, column: 11, scope: !3548)
!3552 = !DILocation(line: 101, column: 36, scope: !3548)
!3553 = !DILocation(line: 101, column: 42, scope: !3548)
!3554 = !DILocation(line: 103, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !1676, line: 104, column: 9)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !1676, line: 103, column: 9)
!3557 = distinct !DILexicalBlock(scope: !3548, file: !1676, line: 101, column: 42)
!3558 = !DILocation(line: 103, column: 19, scope: !3555)
!3559 = !DILocation(line: 103, column: 21, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !1676, line: 103, column: 15)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !1676, line: 103, column: 19)
!3562 = !DILocation(line: 103, column: 15, scope: !3560)
!3563 = !DILocation(line: 103, column: 24, scope: !3560)
!3564 = !DILocation(line: 103, column: 15, scope: !3561)
!3565 = !DILocation(line: 103, column: 26, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1676, line: 103, column: 17)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !1676, line: 103, column: 30)
!3568 = !DILocation(line: 103, column: 20, scope: !3566)
!3569 = !DILocation(line: 103, column: 29, scope: !3566)
!3570 = !DILocation(line: 103, column: 17, scope: !3567)
!3571 = !DILocation(line: 103, column: 15, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3566, file: !1676, line: 103, column: 41)
!3573 = !DILocation(line: 105, column: 11, scope: !3567)
!3574 = !DILocation(line: 103, column: 13, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3560, file: !1676, line: 105, column: 18)
!3576 = !DILocation(line: 103, column: 13, scope: !3561)
!3577 = distinct !{!3577, !3554, !3578}
!3578 = !DILocation(line: 104, column: 9, scope: !3555)
!3579 = !DILocation(line: 106, column: 9, scope: !3555)
!3580 = !DILocation(line: 104, column: 19, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3557, file: !1676, line: 104, column: 13)
!3582 = !DILocation(line: 104, column: 13, scope: !3581)
!3583 = !DILocation(line: 104, column: 22, scope: !3581)
!3584 = !DILocation(line: 104, column: 13, scope: !3557)
!3585 = !DILocation(line: 104, column: 13, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3581, file: !1676, line: 104, column: 33)
!3587 = !DILocation(line: 105, column: 9, scope: !3586)
!3588 = !DILocation(line: 106, column: 7, scope: !3557)
!3589 = !DILocation(line: 107, column: 7, scope: !3453)
!3590 = !DILocation(line: 112, column: 16, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !1676, line: 110, column: 5)
!3592 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 109, column: 5)
!3593 = !DILocalVariable(name: "tmp___14", scope: !3350, file: !1676, line: 53, type: !295)
!3594 = !DILocation(line: 112, column: 28, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 112, column: 9)
!3596 = !DILocation(line: 112, column: 50, scope: !3595)
!3597 = !DILocation(line: 112, column: 46, scope: !3595)
!3598 = !DILocation(line: 112, column: 40, scope: !3595)
!3599 = !DILocation(line: 112, column: 38, scope: !3595)
!3600 = !DILocation(line: 112, column: 26, scope: !3595)
!3601 = !DILocation(line: 112, column: 12, scope: !3595)
!3602 = !DILocation(line: 112, column: 56, scope: !3595)
!3603 = !DILocation(line: 112, column: 9, scope: !3372)
!3604 = !DILocation(line: 114, column: 27, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !1676, line: 114, column: 7)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !1676, line: 113, column: 7)
!3607 = distinct !DILexicalBlock(scope: !3595, file: !1676, line: 112, column: 65)
!3608 = !DILocation(line: 114, column: 23, scope: !3605)
!3609 = !DILocation(line: 114, column: 17, scope: !3605)
!3610 = !DILocation(line: 114, column: 7, scope: !3605)
!3611 = !DILocalVariable(name: "tmp___12", scope: !3350, file: !1676, line: 51, type: !13)
!3612 = !DILocation(line: 115, column: 9, scope: !3606)
!3613 = !DILocalVariable(name: "tmp___13", scope: !3350, file: !1676, line: 52, type: !13)
!3614 = !DILocation(line: 115, column: 19, scope: !3606)
!3615 = !DILocation(line: 115, column: 17, scope: !3606)
!3616 = !DILocation(line: 116, column: 7, scope: !3607)
!3617 = !DILocation(line: 119, column: 5, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !1676, line: 119, column: 5)
!3619 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 118, column: 5)
!3620 = !DILocation(line: 119, column: 15, scope: !3618)
!3621 = !DILocation(line: 119, column: 18, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !1676, line: 123, column: 7)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !1676, line: 122, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3618, file: !1676, line: 119, column: 15)
!3625 = !DILocalVariable(name: "tmp___15", scope: !3350, file: !1676, line: 54, type: !295)
!3626 = !DILocation(line: 119, column: 9, scope: !3623)
!3627 = !DILocation(line: 119, column: 30, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3624, file: !1676, line: 119, column: 11)
!3629 = !DILocation(line: 119, column: 48, scope: !3628)
!3630 = !DILocation(line: 119, column: 42, scope: !3628)
!3631 = !DILocation(line: 119, column: 40, scope: !3628)
!3632 = !DILocation(line: 119, column: 28, scope: !3628)
!3633 = !DILocation(line: 119, column: 14, scope: !3628)
!3634 = !DILocation(line: 119, column: 52, scope: !3628)
!3635 = !DILocation(line: 119, column: 11, scope: !3624)
!3636 = !DILocation(line: 119, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3628, file: !1676, line: 119, column: 61)
!3638 = !DILocation(line: 119, column: 20, scope: !3624)
!3639 = !DILocation(line: 119, column: 33, scope: !3624)
!3640 = !DILocation(line: 119, column: 27, scope: !3624)
!3641 = !DILocation(line: 119, column: 25, scope: !3624)
!3642 = !DILocation(line: 119, column: 37, scope: !3624)
!3643 = distinct !{!3643, !3617, !3644}
!3644 = !DILocation(line: 120, column: 5, scope: !3618)
!3645 = !DILocation(line: 122, column: 5, scope: !3618)
!3646 = !DILocation(line: 123, column: 14, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 123, column: 9)
!3648 = !DILocation(line: 123, column: 9, scope: !3372)
!3649 = !DILocation(line: 125, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !1676, line: 123, column: 20)
!3651 = !DILocation(line: 131, column: 5, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !1676, line: 133, column: 5)
!3653 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 132, column: 5)
!3654 = !DILocation(line: 131, column: 15, scope: !3652)
!3655 = !DILocation(line: 131, column: 16, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !1676, line: 131, column: 11)
!3657 = distinct !DILexicalBlock(scope: !3652, file: !1676, line: 131, column: 15)
!3658 = !DILocation(line: 131, column: 11, scope: !3657)
!3659 = !DILocation(line: 131, column: 9, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !1676, line: 131, column: 25)
!3661 = !DILocation(line: 133, column: 11, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3657, file: !1676, line: 133, column: 11)
!3663 = !DILocation(line: 133, column: 31, scope: !3662)
!3664 = !DILocation(line: 133, column: 11, scope: !3657)
!3665 = !DILocation(line: 133, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3662, file: !1676, line: 133, column: 63)
!3667 = !DILocation(line: 134, column: 18, scope: !3657)
!3668 = !DILocation(line: 131, column: 9, scope: !3657)
!3669 = distinct !{!3669, !3651, !3670}
!3670 = !DILocation(line: 132, column: 5, scope: !3652)
!3671 = !DILocation(line: 134, column: 5, scope: !3652)
!3672 = !DILocation(line: 140, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 140, column: 9)
!3674 = !DILocation(line: 140, column: 29, scope: !3673)
!3675 = !DILocation(line: 140, column: 9, scope: !3372)
!3676 = !DILocation(line: 140, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !1676, line: 140, column: 11)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !1676, line: 140, column: 61)
!3679 = !DILocation(line: 140, column: 54, scope: !3677)
!3680 = !DILocation(line: 140, column: 68, scope: !3677)
!3681 = !DILocation(line: 140, column: 38, scope: !3677)
!3682 = !DILocation(line: 140, column: 35, scope: !3677)
!3683 = !DILocation(line: 140, column: 11, scope: !3678)
!3684 = !DILocation(line: 142, column: 16, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3677, file: !1676, line: 140, column: 74)
!3686 = !DILocation(line: 142, column: 30, scope: !3685)
!3687 = !DILocation(line: 142, column: 38, scope: !3685)
!3688 = !DILocation(line: 143, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !1676, line: 145, column: 9)
!3690 = distinct !DILexicalBlock(scope: !3685, file: !1676, line: 144, column: 9)
!3691 = !DILocation(line: 0, scope: !3685)
!3692 = !DILocation(line: 143, column: 19, scope: !3689)
!3693 = !DILocation(line: 143, column: 20, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !1676, line: 143, column: 15)
!3695 = distinct !DILexicalBlock(scope: !3689, file: !1676, line: 143, column: 19)
!3696 = !DILocation(line: 143, column: 15, scope: !3695)
!3697 = !DILocation(line: 143, column: 13, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3694, file: !1676, line: 143, column: 29)
!3699 = !DILocation(line: 145, column: 15, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3695, file: !1676, line: 145, column: 15)
!3701 = !DILocation(line: 145, column: 35, scope: !3700)
!3702 = !DILocation(line: 145, column: 15, scope: !3695)
!3703 = !DILocation(line: 145, column: 13, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !1676, line: 145, column: 67)
!3705 = !DILocation(line: 146, column: 22, scope: !3695)
!3706 = !DILocation(line: 143, column: 13, scope: !3695)
!3707 = distinct !{!3707, !3688, !3708}
!3708 = !DILocation(line: 144, column: 9, scope: !3689)
!3709 = !DILocation(line: 146, column: 9, scope: !3689)
!3710 = !DILocation(line: 149, column: 7, scope: !3685)
!3711 = !DILocation(line: 150, column: 5, scope: !3678)
!3712 = !DILocation(line: 152, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3372, file: !1676, line: 152, column: 9)
!3714 = !DILocation(line: 152, column: 29, scope: !3713)
!3715 = !DILocation(line: 152, column: 9, scope: !3372)
!3716 = !DILocation(line: 153, column: 31, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !1676, line: 154, column: 7)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !1676, line: 153, column: 7)
!3719 = distinct !DILexicalBlock(scope: !3713, file: !1676, line: 152, column: 61)
!3720 = !DILocation(line: 152, column: 18, scope: !3717)
!3721 = !DILocalVariable(name: "tmp___16", scope: !3350, file: !1676, line: 55, type: !6)
!3722 = !DILocation(line: 152, column: 9, scope: !3718)
!3723 = !DILocation(line: 154, column: 5, scope: !3719)
!3724 = distinct !{!3724, !3363, !3725}
!3725 = !DILocation(line: 155, column: 3, scope: !3364)
!3726 = !DILocation(line: 157, column: 3, scope: !3364)
!3727 = !DILocation(line: 155, column: 6, scope: !3366)
!3728 = !DILocation(line: 156, column: 3, scope: !3366)
!3729 = distinct !DISubprogram(name: "tree_insertnode", scope: !3305, file: !3305, line: 49, type: !3730, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!6, !3732, !137}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3733 = !DILocalVariable(name: "treebase", arg: 1, scope: !3729, file: !3305, line: 49, type: !3732)
!3734 = !DILocation(line: 0, scope: !3729)
!3735 = !DILocalVariable(name: "node", arg: 2, scope: !3729, file: !3305, line: 49, type: !137)
!3736 = !DILocation(line: 52, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !3305, line: 64, column: 3)
!3738 = !DILocalVariable(name: "p", scope: !3729, file: !3305, line: 51, type: !137)
!3739 = !DILocalVariable(name: "tmp", scope: !3729, file: !3305, line: 57, type: !129)
!3740 = !DILocation(line: 56, column: 9, scope: !3737)
!3741 = !DILocation(line: 56, column: 15, scope: !3737)
!3742 = !DILocation(line: 56, column: 14, scope: !3737)
!3743 = !DILocation(line: 57, column: 9, scope: !3737)
!3744 = !DILocation(line: 57, column: 17, scope: !3737)
!3745 = !DILocation(line: 61, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 61, column: 7)
!3747 = !DILocation(line: 61, column: 25, scope: !3746)
!3748 = !DILocation(line: 61, column: 7, scope: !3737)
!3749 = !DILocation(line: 63, column: 15, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !3305, line: 61, column: 57)
!3751 = !DILocation(line: 64, column: 5, scope: !3750)
!3752 = !DILocalVariable(name: "q", scope: !3729, file: !3305, line: 52, type: !3732)
!3753 = !DILocalVariable(name: "t", scope: !3729, file: !3305, line: 55, type: !3732)
!3754 = !DILocation(line: 76, column: 3, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3305, line: 74, column: 3)
!3756 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 73, column: 3)
!3757 = !DILocation(line: 0, scope: !3737)
!3758 = !DILocation(line: 76, column: 13, scope: !3755)
!3759 = !DILocation(line: 78, column: 45, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3305, line: 80, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3305, line: 79, column: 5)
!3762 = distinct !DILexicalBlock(scope: !3755, file: !3305, line: 76, column: 13)
!3763 = !DILocation(line: 78, column: 38, scope: !3760)
!3764 = !DILocation(line: 78, column: 72, scope: !3760)
!3765 = !DILocation(line: 78, column: 68, scope: !3760)
!3766 = !DILocation(line: 78, column: 15, scope: !3760)
!3767 = !DILocalVariable(name: "tmp___0", scope: !3729, file: !3305, line: 59, type: !6)
!3768 = !DILocalVariable(name: "c", scope: !3729, file: !3305, line: 58, type: !6)
!3769 = !DILocation(line: 79, column: 11, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3762, file: !3305, line: 79, column: 9)
!3771 = !DILocation(line: 79, column: 9, scope: !3762)
!3772 = !DILocation(line: 79, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3770, file: !3305, line: 79, column: 17)
!3774 = !DILocation(line: 84, column: 11, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3762, file: !3305, line: 84, column: 9)
!3776 = !DILocation(line: 84, column: 9, scope: !3762)
!3777 = !DILocation(line: 84, column: 16, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3775, file: !3305, line: 84, column: 16)
!3779 = !DILocation(line: 85, column: 5, scope: !3778)
!3780 = !DILocation(line: 84, column: 16, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3775, file: !3305, line: 85, column: 12)
!3782 = !DILocation(line: 0, scope: !3775)
!3783 = !DILocation(line: 85, column: 9, scope: !3762)
!3784 = !DILocation(line: 86, column: 9, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3762, file: !3305, line: 86, column: 9)
!3786 = !DILocation(line: 86, column: 27, scope: !3785)
!3787 = !DILocation(line: 86, column: 9, scope: !3762)
!3788 = !DILocation(line: 86, column: 7, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3785, file: !3305, line: 86, column: 59)
!3790 = !DILocation(line: 91, column: 18, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3762, file: !3305, line: 91, column: 9)
!3792 = !DILocation(line: 91, column: 9, scope: !3791)
!3793 = !DILocation(line: 91, column: 26, scope: !3791)
!3794 = !DILocation(line: 91, column: 9, scope: !3762)
!3795 = !DILocation(line: 92, column: 5, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3791, file: !3305, line: 91, column: 32)
!3797 = distinct !{!3797, !3754, !3798}
!3798 = !DILocation(line: 93, column: 3, scope: !3755)
!3799 = !DILocation(line: 95, column: 3, scope: !3755)
!3800 = !DILocation(line: 97, column: 6, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 98, column: 3)
!3802 = !DILocation(line: 102, column: 7, scope: !3801)
!3803 = !DILocalVariable(name: "s", scope: !3729, file: !3305, line: 54, type: !137)
!3804 = !DILocation(line: 103, column: 43, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !3305, line: 103, column: 3)
!3806 = !DILocation(line: 103, column: 36, scope: !3805)
!3807 = !DILocation(line: 103, column: 70, scope: !3805)
!3808 = !DILocation(line: 103, column: 66, scope: !3805)
!3809 = !DILocation(line: 103, column: 13, scope: !3805)
!3810 = !DILocalVariable(name: "tmp___2", scope: !3729, file: !3305, line: 60, type: !6)
!3811 = !DILocation(line: 103, column: 15, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 103, column: 7)
!3813 = !DILocation(line: 103, column: 7, scope: !3737)
!3814 = !DILocation(line: 103, column: 12, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3305, line: 103, column: 20)
!3816 = !DILocalVariable(name: "r", scope: !3729, file: !3305, line: 53, type: !137)
!3817 = !DILocation(line: 104, column: 3, scope: !3815)
!3818 = !DILocation(line: 103, column: 12, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3812, file: !3305, line: 104, column: 10)
!3820 = !DILocation(line: 0, scope: !3812)
!3821 = !DILocation(line: 109, column: 3, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3305, line: 109, column: 3)
!3823 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 108, column: 3)
!3824 = !DILocation(line: 109, column: 13, scope: !3822)
!3825 = !DILocation(line: 109, column: 12, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3305, line: 109, column: 9)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !3305, line: 109, column: 13)
!3828 = !DILocation(line: 109, column: 33, scope: !3826)
!3829 = !DILocation(line: 109, column: 30, scope: !3826)
!3830 = !DILocation(line: 109, column: 9, scope: !3827)
!3831 = !DILocation(line: 109, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3826, file: !3305, line: 109, column: 56)
!3833 = !DILocation(line: 111, column: 45, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3305, line: 112, column: 5)
!3835 = distinct !DILexicalBlock(scope: !3827, file: !3305, line: 111, column: 5)
!3836 = !DILocation(line: 111, column: 38, scope: !3834)
!3837 = !DILocation(line: 111, column: 72, scope: !3834)
!3838 = !DILocation(line: 111, column: 68, scope: !3834)
!3839 = !DILocation(line: 111, column: 15, scope: !3834)
!3840 = !DILocalVariable(name: "tmp___3", scope: !3729, file: !3305, line: 61, type: !6)
!3841 = !DILocation(line: 111, column: 17, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3827, file: !3305, line: 111, column: 9)
!3843 = !DILocation(line: 111, column: 9, scope: !3827)
!3844 = !DILocation(line: 113, column: 10, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !3305, line: 111, column: 22)
!3846 = !DILocation(line: 113, column: 18, scope: !3845)
!3847 = !DILocation(line: 114, column: 14, scope: !3845)
!3848 = !DILocation(line: 115, column: 5, scope: !3845)
!3849 = !DILocation(line: 118, column: 10, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3842, file: !3305, line: 115, column: 12)
!3851 = !DILocation(line: 118, column: 18, scope: !3850)
!3852 = !DILocation(line: 119, column: 14, scope: !3850)
!3853 = !DILocation(line: 0, scope: !3842)
!3854 = distinct !{!3854, !3821, !3855}
!3855 = !DILocation(line: 121, column: 3, scope: !3822)
!3856 = !DILocation(line: 123, column: 3, scope: !3822)
!3857 = !DILocation(line: 125, column: 43, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3305, line: 127, column: 3)
!3859 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 126, column: 3)
!3860 = !DILocation(line: 125, column: 36, scope: !3858)
!3861 = !DILocation(line: 125, column: 70, scope: !3858)
!3862 = !DILocation(line: 125, column: 66, scope: !3858)
!3863 = !DILocation(line: 125, column: 13, scope: !3858)
!3864 = !DILocalVariable(name: "tmp___5", scope: !3729, file: !3305, line: 62, type: !6)
!3865 = !DILocation(line: 125, column: 15, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 125, column: 7)
!3867 = !DILocation(line: 125, column: 7, scope: !3737)
!3868 = !DILocalVariable(name: "a", scope: !3729, file: !3305, line: 56, type: !6)
!3869 = !DILocation(line: 126, column: 3, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !3305, line: 125, column: 20)
!3871 = !DILocation(line: 0, scope: !3866)
!3872 = !DILocation(line: 127, column: 16, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3737, file: !3305, line: 127, column: 7)
!3874 = !DILocation(line: 127, column: 7, scope: !3873)
!3875 = !DILocation(line: 127, column: 24, scope: !3873)
!3876 = !DILocation(line: 127, column: 7, scope: !3737)
!3877 = !DILocation(line: 127, column: 18, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !3305, line: 127, column: 30)
!3879 = !DILocation(line: 127, column: 8, scope: !3878)
!3880 = !DILocation(line: 127, column: 16, scope: !3878)
!3881 = !DILocation(line: 128, column: 3, scope: !3878)
!3882 = !DILocation(line: 128, column: 16, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !3305, line: 128, column: 7)
!3884 = !DILocation(line: 128, column: 7, scope: !3883)
!3885 = !DILocation(line: 128, column: 34, scope: !3883)
!3886 = !DILocation(line: 128, column: 27, scope: !3883)
!3887 = !DILocation(line: 128, column: 24, scope: !3883)
!3888 = !DILocation(line: 128, column: 7, scope: !3873)
!3889 = !DILocation(line: 128, column: 8, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3883, file: !3305, line: 128, column: 47)
!3891 = !DILocation(line: 128, column: 16, scope: !3890)
!3892 = !DILocation(line: 129, column: 3, scope: !3890)
!3893 = !DILocation(line: 133, column: 18, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3305, line: 133, column: 9)
!3895 = distinct !DILexicalBlock(scope: !3883, file: !3305, line: 129, column: 10)
!3896 = !DILocation(line: 133, column: 9, scope: !3894)
!3897 = !DILocation(line: 133, column: 36, scope: !3894)
!3898 = !DILocation(line: 133, column: 29, scope: !3894)
!3899 = !DILocation(line: 133, column: 26, scope: !3894)
!3900 = !DILocation(line: 133, column: 9, scope: !3895)
!3901 = !DILocation(line: 136, column: 13, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !3305, line: 136, column: 11)
!3903 = distinct !DILexicalBlock(scope: !3894, file: !3305, line: 133, column: 49)
!3904 = !DILocation(line: 136, column: 11, scope: !3903)
!3905 = !DILocation(line: 138, column: 23, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !3305, line: 136, column: 19)
!3907 = !DILocation(line: 138, column: 12, scope: !3906)
!3908 = !DILocation(line: 138, column: 18, scope: !3906)
!3909 = !DILocation(line: 139, column: 12, scope: !3906)
!3910 = !DILocation(line: 139, column: 17, scope: !3906)
!3911 = !DILocation(line: 140, column: 7, scope: !3906)
!3912 = !DILocation(line: 143, column: 22, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3902, file: !3305, line: 140, column: 14)
!3914 = !DILocation(line: 143, column: 12, scope: !3913)
!3915 = !DILocation(line: 143, column: 17, scope: !3913)
!3916 = !DILocation(line: 144, column: 12, scope: !3913)
!3917 = !DILocation(line: 144, column: 18, scope: !3913)
!3918 = !DILocation(line: 146, column: 10, scope: !3903)
!3919 = !DILocation(line: 146, column: 18, scope: !3903)
!3920 = !DILocation(line: 147, column: 10, scope: !3903)
!3921 = !DILocation(line: 147, column: 18, scope: !3903)
!3922 = !DILocation(line: 148, column: 5, scope: !3903)
!3923 = !DILocation(line: 157, column: 13, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3305, line: 157, column: 11)
!3925 = distinct !DILexicalBlock(scope: !3894, file: !3305, line: 148, column: 12)
!3926 = !DILocation(line: 157, column: 11, scope: !3925)
!3927 = !DILocation(line: 159, column: 32, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3305, line: 159, column: 13)
!3929 = distinct !DILexicalBlock(scope: !3924, file: !3305, line: 157, column: 19)
!3930 = !DILocation(line: 159, column: 13, scope: !3928)
!3931 = !DILocation(line: 159, column: 37, scope: !3928)
!3932 = !DILocation(line: 159, column: 13, scope: !3929)
!3933 = !DILocation(line: 159, column: 11, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3928, file: !3305, line: 159, column: 69)
!3935 = !DILocation(line: 160, column: 16, scope: !3929)
!3936 = !DILocation(line: 161, column: 22, scope: !3929)
!3937 = !DILocation(line: 161, column: 12, scope: !3929)
!3938 = !DILocation(line: 161, column: 17, scope: !3929)
!3939 = !DILocation(line: 162, column: 12, scope: !3929)
!3940 = !DILocation(line: 162, column: 18, scope: !3929)
!3941 = !DILocation(line: 163, column: 23, scope: !3929)
!3942 = !DILocation(line: 163, column: 12, scope: !3929)
!3943 = !DILocation(line: 163, column: 18, scope: !3929)
!3944 = !DILocation(line: 164, column: 12, scope: !3929)
!3945 = !DILocation(line: 164, column: 17, scope: !3929)
!3946 = !DILocation(line: 165, column: 7, scope: !3929)
!3947 = !DILocation(line: 168, column: 32, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !3305, line: 168, column: 13)
!3949 = distinct !DILexicalBlock(scope: !3924, file: !3305, line: 165, column: 14)
!3950 = !DILocation(line: 168, column: 13, scope: !3948)
!3951 = !DILocation(line: 168, column: 38, scope: !3948)
!3952 = !DILocation(line: 168, column: 13, scope: !3949)
!3953 = !DILocation(line: 168, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3948, file: !3305, line: 168, column: 70)
!3955 = !DILocation(line: 169, column: 16, scope: !3949)
!3956 = !DILocation(line: 170, column: 23, scope: !3949)
!3957 = !DILocation(line: 170, column: 12, scope: !3949)
!3958 = !DILocation(line: 170, column: 18, scope: !3949)
!3959 = !DILocation(line: 171, column: 12, scope: !3949)
!3960 = !DILocation(line: 171, column: 17, scope: !3949)
!3961 = !DILocation(line: 172, column: 22, scope: !3949)
!3962 = !DILocation(line: 172, column: 12, scope: !3949)
!3963 = !DILocation(line: 172, column: 17, scope: !3949)
!3964 = !DILocation(line: 173, column: 12, scope: !3949)
!3965 = !DILocation(line: 173, column: 18, scope: !3949)
!3966 = !DILocation(line: 0, scope: !3924)
!3967 = !DILocation(line: 176, column: 20, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3925, file: !3305, line: 176, column: 11)
!3969 = !DILocation(line: 176, column: 11, scope: !3968)
!3970 = !DILocation(line: 176, column: 38, scope: !3968)
!3971 = !DILocation(line: 176, column: 31, scope: !3968)
!3972 = !DILocation(line: 176, column: 28, scope: !3968)
!3973 = !DILocation(line: 176, column: 11, scope: !3925)
!3974 = !DILocation(line: 176, column: 34, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !3305, line: 176, column: 51)
!3976 = !DILocation(line: 176, column: 22, scope: !3975)
!3977 = !DILocation(line: 176, column: 12, scope: !3975)
!3978 = !DILocation(line: 176, column: 20, scope: !3975)
!3979 = !DILocation(line: 177, column: 7, scope: !3975)
!3980 = !DILocation(line: 176, column: 12, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3968, file: !3305, line: 177, column: 14)
!3982 = !DILocation(line: 176, column: 20, scope: !3981)
!3983 = !DILocation(line: 177, column: 20, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3925, file: !3305, line: 177, column: 11)
!3985 = !DILocation(line: 177, column: 11, scope: !3984)
!3986 = !DILocation(line: 177, column: 50, scope: !3984)
!3987 = !DILocation(line: 177, column: 38, scope: !3984)
!3988 = !DILocation(line: 177, column: 31, scope: !3984)
!3989 = !DILocation(line: 177, column: 28, scope: !3984)
!3990 = !DILocation(line: 177, column: 11, scope: !3925)
!3991 = !DILocation(line: 177, column: 22, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3984, file: !3305, line: 177, column: 57)
!3993 = !DILocation(line: 177, column: 12, scope: !3992)
!3994 = !DILocation(line: 177, column: 20, scope: !3992)
!3995 = !DILocation(line: 178, column: 7, scope: !3992)
!3996 = !DILocation(line: 177, column: 12, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3984, file: !3305, line: 178, column: 14)
!3998 = !DILocation(line: 177, column: 20, scope: !3997)
!3999 = !DILocation(line: 178, column: 10, scope: !3925)
!4000 = !DILocation(line: 178, column: 18, scope: !3925)
!4001 = !DILocation(line: 0, scope: !3894)
!4002 = !DILocation(line: 183, column: 8, scope: !3895)
!4003 = !DILocation(line: 186, column: 3, scope: !3737)
!4004 = !DILocation(line: 188, column: 1, scope: !3729)
!4005 = distinct !DISubprogram(name: "misc_copystring", scope: !654, file: !654, line: 65, type: !4006, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!13, !13, !6}
!4008 = !DILocalVariable(name: "p", arg: 1, scope: !4005, file: !654, line: 65, type: !13)
!4009 = !DILocation(line: 0, scope: !4005)
!4010 = !DILocalVariable(name: "length", arg: 2, scope: !4005, file: !654, line: 65, type: !6)
!4011 = !DILocation(line: 68, column: 28, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !654, line: 72, column: 3)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !654, line: 71, column: 3)
!4014 = distinct !DILexicalBlock(scope: !4005, file: !654, line: 70, column: 3)
!4015 = !DILocation(line: 68, column: 9, scope: !4012)
!4016 = !DILocalVariable(name: "tmp", scope: !4005, file: !654, line: 68, type: !17)
!4017 = !DILocalVariable(name: "yield", scope: !4005, file: !654, line: 67, type: !13)
!4018 = !DILocation(line: 69, column: 3, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4013, file: !654, line: 69, column: 3)
!4020 = !DILocation(line: 70, column: 11, scope: !4013)
!4021 = !DILocation(line: 70, column: 21, scope: !4013)
!4022 = !DILocation(line: 71, column: 3, scope: !4014)
!4023 = distinct !DISubprogram(name: "misc_readstring", scope: !654, file: !654, line: 95, type: !4024, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!13, !13, !151, !13, !6}
!4026 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !654, line: 95, type: !13)
!4027 = !DILocation(line: 0, scope: !4023)
!4028 = !DILocalVariable(name: "lptr", arg: 2, scope: !4023, file: !654, line: 95, type: !151)
!4029 = !DILocalVariable(name: "buffer", arg: 3, scope: !4023, file: !654, line: 95, type: !13)
!4030 = !DILocalVariable(name: "blength", arg: 4, scope: !4023, file: !654, line: 95, type: !6)
!4031 = !DILocation(line: 98, column: 16, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4023, file: !654, line: 104, column: 3)
!4033 = !DILocation(line: 98, column: 10, scope: !4032)
!4034 = !DILocalVariable(name: "term", scope: !4023, file: !654, line: 97, type: !6)
!4035 = !DILocation(line: 102, column: 10, scope: !4032)
!4036 = !DILocalVariable(name: "pp", scope: !4023, file: !654, line: 99, type: !13)
!4037 = !DILocation(line: 102, column: 3, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !654, line: 104, column: 3)
!4039 = distinct !DILexicalBlock(scope: !4032, file: !654, line: 103, column: 3)
!4040 = !DILocation(line: 0, scope: !4032)
!4041 = !DILocation(line: 102, column: 13, scope: !4038)
!4042 = !DILocation(line: 104, column: 15, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !654, line: 104, column: 9)
!4044 = distinct !DILexicalBlock(scope: !4038, file: !654, line: 102, column: 13)
!4045 = !DILocation(line: 104, column: 9, scope: !4043)
!4046 = !DILocation(line: 104, column: 19, scope: !4043)
!4047 = !DILocation(line: 104, column: 9, scope: !4044)
!4048 = !DILocation(line: 104, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4043, file: !654, line: 104, column: 25)
!4050 = !DILocation(line: 105, column: 15, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4044, file: !654, line: 105, column: 9)
!4052 = !DILocation(line: 105, column: 9, scope: !4051)
!4053 = !DILocation(line: 105, column: 19, scope: !4051)
!4054 = !DILocation(line: 105, column: 9, scope: !4044)
!4055 = !DILocation(line: 105, column: 22, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !654, line: 105, column: 11)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !654, line: 105, column: 28)
!4058 = !DILocation(line: 105, column: 17, scope: !4056)
!4059 = !DILocation(line: 105, column: 11, scope: !4056)
!4060 = !DILocation(line: 105, column: 27, scope: !4056)
!4061 = !DILocation(line: 105, column: 11, scope: !4057)
!4062 = !DILocation(line: 105, column: 9, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4056, file: !654, line: 105, column: 36)
!4064 = !DILocation(line: 105, column: 10, scope: !4057)
!4065 = !DILocation(line: 106, column: 5, scope: !4057)
!4066 = !DILocation(line: 102, column: 8, scope: !4044)
!4067 = distinct !{!4067, !4037, !4068}
!4068 = !DILocation(line: 103, column: 3, scope: !4038)
!4069 = !DILocation(line: 105, column: 3, scope: !4038)
!4070 = !DILocation(line: 108, column: 22, scope: !4032)
!4071 = !DILocation(line: 108, column: 12, scope: !4032)
!4072 = !DILocalVariable(name: "length", scope: !4023, file: !654, line: 98, type: !6)
!4073 = !DILocation(line: 109, column: 7, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4032, file: !654, line: 109, column: 7)
!4075 = !DILocation(line: 109, column: 28, scope: !4074)
!4076 = !DILocation(line: 109, column: 7, scope: !4032)
!4077 = !DILocation(line: 109, column: 20, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4074, file: !654, line: 109, column: 60)
!4079 = !DILocation(line: 109, column: 11, scope: !4078)
!4080 = !DILocation(line: 110, column: 3, scope: !4078)
!4081 = !DILocation(line: 111, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4032, file: !654, line: 111, column: 7)
!4083 = !DILocation(line: 111, column: 30, scope: !4082)
!4084 = !DILocation(line: 111, column: 7, scope: !4032)
!4085 = !DILocation(line: 113, column: 30, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !654, line: 113, column: 5)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !654, line: 112, column: 5)
!4088 = distinct !DILexicalBlock(scope: !4082, file: !654, line: 111, column: 62)
!4089 = !DILocation(line: 113, column: 11, scope: !4086)
!4090 = !DILocalVariable(name: "tmp", scope: !4023, file: !654, line: 101, type: !17)
!4091 = !DILocalVariable(name: "yield", scope: !4023, file: !654, line: 100, type: !13)
!4092 = !DILocation(line: 115, column: 3, scope: !4088)
!4093 = !DILocation(line: 117, column: 16, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !654, line: 117, column: 9)
!4095 = distinct !DILexicalBlock(scope: !4082, file: !654, line: 115, column: 10)
!4096 = !DILocation(line: 117, column: 20, scope: !4094)
!4097 = !DILocation(line: 117, column: 9, scope: !4095)
!4098 = !DILocation(line: 117, column: 24, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !654, line: 119, column: 7)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !654, line: 118, column: 7)
!4101 = distinct !DILexicalBlock(scope: !4094, file: !654, line: 117, column: 31)
!4102 = !DILocation(line: 117, column: 7, scope: !4099)
!4103 = !DILocation(line: 120, column: 5, scope: !4101)
!4104 = !DILocation(line: 0, scope: !4082)
!4105 = !DILocation(line: 121, column: 5, scope: !4032)
!4106 = !DILocation(line: 121, column: 3, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !654, line: 123, column: 3)
!4108 = distinct !DILexicalBlock(scope: !4032, file: !654, line: 122, column: 3)
!4109 = !DILocation(line: 121, column: 13, scope: !4107)
!4110 = !DILocation(line: 123, column: 15, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !654, line: 123, column: 9)
!4112 = distinct !DILexicalBlock(scope: !4107, file: !654, line: 121, column: 13)
!4113 = !DILocation(line: 123, column: 9, scope: !4111)
!4114 = !DILocation(line: 123, column: 18, scope: !4111)
!4115 = !DILocation(line: 123, column: 9, scope: !4112)
!4116 = !DILocation(line: 123, column: 7, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4111, file: !654, line: 123, column: 24)
!4118 = !DILocation(line: 124, column: 15, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4112, file: !654, line: 124, column: 9)
!4120 = !DILocation(line: 124, column: 9, scope: !4119)
!4121 = !DILocation(line: 124, column: 18, scope: !4119)
!4122 = !DILocation(line: 124, column: 9, scope: !4112)
!4123 = !DILocation(line: 124, column: 21, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !654, line: 124, column: 11)
!4125 = distinct !DILexicalBlock(scope: !4119, file: !654, line: 124, column: 27)
!4126 = !DILocation(line: 124, column: 17, scope: !4124)
!4127 = !DILocation(line: 124, column: 11, scope: !4124)
!4128 = !DILocation(line: 124, column: 26, scope: !4124)
!4129 = !DILocation(line: 124, column: 11, scope: !4125)
!4130 = !DILocation(line: 124, column: 9, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4124, file: !654, line: 124, column: 35)
!4132 = !DILocation(line: 124, column: 9, scope: !4125)
!4133 = !DILocation(line: 125, column: 5, scope: !4125)
!4134 = !DILocalVariable(name: "tmp___0", scope: !4023, file: !654, line: 102, type: !13)
!4135 = !DILocation(line: 125, column: 8, scope: !4112)
!4136 = !DILocation(line: 125, column: 16, scope: !4112)
!4137 = !DILocation(line: 125, column: 14, scope: !4112)
!4138 = !DILocation(line: 121, column: 7, scope: !4112)
!4139 = distinct !{!4139, !4106, !4140}
!4140 = !DILocation(line: 122, column: 3, scope: !4107)
!4141 = !DILocation(line: 124, column: 3, scope: !4107)
!4142 = !DILocation(line: 128, column: 7, scope: !4032)
!4143 = !DILocation(line: 130, column: 3, scope: !4032)
!4144 = distinct !DISubprogram(name: "do_arg", scope: !209, file: !209, line: 107, type: !220, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4145 = !DILocalVariable(name: "p", arg: 1, scope: !4144, file: !209, line: 107, type: !13)
!4146 = !DILocation(line: 0, scope: !4144)
!4147 = !DILocalVariable(name: "__cil_tmp7", scope: !4144, file: !209, line: 114, type: !27)
!4148 = !DILocation(line: 114, column: 9, scope: !4144)
!4149 = !DILocalVariable(name: "__cil_tmp8", scope: !4144, file: !209, line: 115, type: !27)
!4150 = !DILocation(line: 115, column: 9, scope: !4144)
!4151 = !DILocalVariable(name: "__cil_tmp9", scope: !4144, file: !209, line: 116, type: !27)
!4152 = !DILocation(line: 116, column: 9, scope: !4144)
!4153 = !DILocalVariable(name: "mustexist", scope: !4144, file: !209, line: 109, type: !223)
!4154 = !DILocation(line: 114, column: 17, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 114, column: 7)
!4156 = distinct !DILexicalBlock(scope: !4144, file: !209, line: 118, column: 3)
!4157 = !DILocation(line: 114, column: 7, scope: !4155)
!4158 = !DILocation(line: 114, column: 32, scope: !4155)
!4159 = !DILocation(line: 114, column: 7, scope: !4156)
!4160 = !DILocation(line: 114, column: 5, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !209, line: 116, column: 5)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !209, line: 115, column: 5)
!4163 = distinct !DILexicalBlock(scope: !4155, file: !209, line: 114, column: 38)
!4164 = !DILocation(line: 114, column: 5, scope: !4163)
!4165 = !DILocation(line: 116, column: 13, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 116, column: 7)
!4167 = !DILocation(line: 116, column: 7, scope: !4166)
!4168 = !DILocation(line: 116, column: 16, scope: !4166)
!4169 = !DILocation(line: 116, column: 7, scope: !4156)
!4170 = !DILocation(line: 119, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4166, file: !209, line: 116, column: 23)
!4172 = !DILocation(line: 120, column: 3, scope: !4171)
!4173 = !DILocation(line: 0, scope: !4156)
!4174 = !DILocation(line: 122, column: 10, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !209, line: 122, column: 3)
!4176 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 121, column: 3)
!4177 = !DILocalVariable(name: "argn", scope: !4144, file: !209, line: 112, type: !6)
!4178 = !DILocation(line: 123, column: 12, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 123, column: 7)
!4180 = !DILocation(line: 123, column: 7, scope: !4156)
!4181 = !DILocation(line: 123, column: 5, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !209, line: 123, column: 17)
!4183 = !DILocation(line: 125, column: 9, scope: !4156)
!4184 = !DILocation(line: 125, column: 23, scope: !4156)
!4185 = !DILocalVariable(name: "arg", scope: !4144, file: !209, line: 110, type: !93)
!4186 = !DILocalVariable(name: "i", scope: !4144, file: !209, line: 111, type: !6)
!4187 = !DILocation(line: 126, column: 3, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !209, line: 128, column: 3)
!4189 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 127, column: 3)
!4190 = !DILocation(line: 126, column: 13, scope: !4188)
!4191 = !DILocation(line: 126, column: 9, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !209, line: 126, column: 9)
!4193 = distinct !DILexicalBlock(scope: !4188, file: !209, line: 126, column: 13)
!4194 = !DILocation(line: 126, column: 29, scope: !4192)
!4195 = !DILocation(line: 126, column: 9, scope: !4193)
!4196 = !DILocation(line: 126, column: 16, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !209, line: 126, column: 11)
!4198 = distinct !DILexicalBlock(scope: !4192, file: !209, line: 126, column: 61)
!4199 = !DILocation(line: 126, column: 11, scope: !4198)
!4200 = !DILocation(line: 126, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !209, line: 126, column: 25)
!4202 = !DILocation(line: 128, column: 5, scope: !4198)
!4203 = !DILocation(line: 126, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4192, file: !209, line: 128, column: 12)
!4205 = !DILocation(line: 126, column: 16, scope: !4193)
!4206 = !DILocation(line: 126, column: 7, scope: !4193)
!4207 = distinct !{!4207, !4187, !4208}
!4208 = !DILocation(line: 127, column: 3, scope: !4188)
!4209 = !DILocation(line: 129, column: 3, scope: !4188)
!4210 = !DILocation(line: 128, column: 7, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 128, column: 7)
!4212 = !DILocation(line: 128, column: 27, scope: !4211)
!4213 = !DILocation(line: 128, column: 7, scope: !4156)
!4214 = !DILocation(line: 128, column: 22, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !209, line: 128, column: 9)
!4216 = distinct !DILexicalBlock(scope: !4211, file: !209, line: 128, column: 59)
!4217 = !DILocation(line: 128, column: 29, scope: !4215)
!4218 = !DILocation(line: 128, column: 15, scope: !4215)
!4219 = !DILocation(line: 128, column: 9, scope: !4215)
!4220 = !DILocation(line: 128, column: 34, scope: !4215)
!4221 = !DILocation(line: 128, column: 9, scope: !4216)
!4222 = !DILocalVariable(name: "tmp", scope: !4144, file: !209, line: 113, type: !6)
!4223 = !DILocation(line: 129, column: 5, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4215, file: !209, line: 128, column: 40)
!4225 = !DILocation(line: 0, scope: !4215)
!4226 = !DILocation(line: 130, column: 3, scope: !4216)
!4227 = !DILocation(line: 0, scope: !4211)
!4228 = !DILocation(line: 128, column: 17, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4156, file: !209, line: 128, column: 7)
!4230 = !DILocation(line: 129, column: 5, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !209, line: 130, column: 5)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !209, line: 129, column: 5)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !209, line: 128, column: 25)
!4234 = !DILocation(line: 132, column: 3, scope: !4233)
!4235 = !DILocation(line: 130, column: 3, scope: !4156)
!4236 = !DILocation(line: 132, column: 1, scope: !4144)
!4237 = distinct !DISubprogram(name: "do_eacharg", scope: !209, file: !209, line: 145, type: !220, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4238 = !DILocalVariable(name: "p", arg: 1, scope: !4237, file: !209, line: 145, type: !13)
!4239 = !DILocation(line: 0, scope: !4237)
!4240 = !DILocalVariable(name: "__cil_tmp6", scope: !4237, file: !209, line: 151, type: !27)
!4241 = !DILocation(line: 151, column: 9, scope: !4237)
!4242 = !DILocalVariable(name: "__cil_tmp7", scope: !4237, file: !209, line: 152, type: !27)
!4243 = !DILocation(line: 152, column: 9, scope: !4237)
!4244 = !DILocalVariable(name: "__cil_tmp8", scope: !4237, file: !209, line: 153, type: !27)
!4245 = !DILocation(line: 153, column: 9, scope: !4237)
!4246 = !DILocation(line: 151, column: 17, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !209, line: 151, column: 7)
!4248 = distinct !DILexicalBlock(scope: !4237, file: !209, line: 155, column: 3)
!4249 = !DILocation(line: 151, column: 7, scope: !4247)
!4250 = !DILocation(line: 151, column: 32, scope: !4247)
!4251 = !DILocation(line: 151, column: 7, scope: !4248)
!4252 = !DILocation(line: 151, column: 5, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !209, line: 153, column: 5)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !209, line: 152, column: 5)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !209, line: 151, column: 38)
!4256 = !DILocation(line: 151, column: 5, scope: !4255)
!4257 = !DILocation(line: 153, column: 13, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4248, file: !209, line: 153, column: 7)
!4259 = !DILocation(line: 153, column: 7, scope: !4258)
!4260 = !DILocation(line: 153, column: 16, scope: !4258)
!4261 = !DILocation(line: 153, column: 7, scope: !4248)
!4262 = !DILocalVariable(name: "argn", scope: !4237, file: !209, line: 148, type: !6)
!4263 = !DILocation(line: 154, column: 3, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4258, file: !209, line: 153, column: 22)
!4265 = !DILocation(line: 153, column: 11, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !209, line: 156, column: 5)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !209, line: 155, column: 5)
!4268 = distinct !DILexicalBlock(scope: !4258, file: !209, line: 154, column: 10)
!4269 = !DILocalVariable(name: "tmp", scope: !4237, file: !209, line: 150, type: !6)
!4270 = !DILocation(line: 0, scope: !4258)
!4271 = !DILocation(line: 154, column: 12, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4248, file: !209, line: 154, column: 7)
!4273 = !DILocation(line: 154, column: 7, scope: !4248)
!4274 = !DILocation(line: 154, column: 5, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4272, file: !209, line: 154, column: 17)
!4276 = !DILocation(line: 156, column: 9, scope: !4248)
!4277 = !DILocation(line: 156, column: 23, scope: !4248)
!4278 = !DILocalVariable(name: "arg", scope: !4237, file: !209, line: 147, type: !93)
!4279 = !DILocalVariable(name: "i", scope: !4237, file: !209, line: 149, type: !6)
!4280 = !DILocation(line: 157, column: 3, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !209, line: 159, column: 3)
!4282 = distinct !DILexicalBlock(scope: !4248, file: !209, line: 158, column: 3)
!4283 = !DILocation(line: 0, scope: !4248)
!4284 = !DILocation(line: 157, column: 13, scope: !4281)
!4285 = !DILocation(line: 157, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !209, line: 157, column: 9)
!4287 = distinct !DILexicalBlock(scope: !4281, file: !209, line: 157, column: 13)
!4288 = !DILocation(line: 157, column: 29, scope: !4286)
!4289 = !DILocation(line: 157, column: 9, scope: !4287)
!4290 = !DILocation(line: 157, column: 16, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !209, line: 157, column: 11)
!4292 = distinct !DILexicalBlock(scope: !4286, file: !209, line: 157, column: 61)
!4293 = !DILocation(line: 157, column: 11, scope: !4292)
!4294 = !DILocation(line: 157, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !209, line: 157, column: 25)
!4296 = !DILocation(line: 159, column: 5, scope: !4292)
!4297 = !DILocation(line: 157, column: 7, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4286, file: !209, line: 159, column: 12)
!4299 = !DILocation(line: 157, column: 16, scope: !4287)
!4300 = !DILocation(line: 157, column: 7, scope: !4287)
!4301 = distinct !{!4301, !4280, !4302}
!4302 = !DILocation(line: 158, column: 3, scope: !4281)
!4303 = !DILocation(line: 160, column: 3, scope: !4281)
!4304 = !DILocation(line: 162, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4248, file: !209, line: 162, column: 7)
!4306 = !DILocation(line: 162, column: 27, scope: !4305)
!4307 = !DILocation(line: 162, column: 7, scope: !4248)
!4308 = !DILocation(line: 162, column: 5, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !209, line: 164, column: 5)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !209, line: 163, column: 5)
!4311 = distinct !DILexicalBlock(scope: !4305, file: !209, line: 162, column: 59)
!4312 = !DILocation(line: 165, column: 3, scope: !4311)
!4313 = !DILocation(line: 164, column: 19, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4305, file: !209, line: 165, column: 10)
!4315 = !DILocation(line: 165, column: 23, scope: !4314)
!4316 = !DILocation(line: 165, column: 37, scope: !4314)
!4317 = !DILocation(line: 165, column: 21, scope: !4314)
!4318 = !DILocation(line: 167, column: 3, scope: !4248)
!4319 = !DILocation(line: 169, column: 1, scope: !4237)
!4320 = distinct !DISubprogram(name: "do_echo", scope: !209, file: !209, line: 181, type: !220, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4321 = !DILocalVariable(name: "p", arg: 1, scope: !4320, file: !209, line: 181, type: !13)
!4322 = !DILocation(line: 0, scope: !4320)
!4323 = !DILocalVariable(name: "__cil_tmp2", scope: !4320, file: !209, line: 183, type: !27)
!4324 = !DILocation(line: 183, column: 9, scope: !4320)
!4325 = !DILocation(line: 184, column: 36, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !209, line: 187, column: 3)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !209, line: 186, column: 3)
!4328 = distinct !DILexicalBlock(scope: !4320, file: !209, line: 185, column: 3)
!4329 = !DILocation(line: 184, column: 3, scope: !4326)
!4330 = !DILocation(line: 185, column: 3, scope: !4328)
!4331 = distinct !DISubprogram(name: "do_endarg", scope: !209, file: !209, line: 200, type: !220, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4332 = !DILocalVariable(name: "p", arg: 1, scope: !4331, file: !209, line: 200, type: !13)
!4333 = !DILocation(line: 0, scope: !4331)
!4334 = !DILocalVariable(name: "__cil_tmp3", scope: !4331, file: !209, line: 203, type: !27)
!4335 = !DILocation(line: 203, column: 9, scope: !4331)
!4336 = !DILocalVariable(name: "__cil_tmp4", scope: !4331, file: !209, line: 204, type: !27)
!4337 = !DILocation(line: 204, column: 9, scope: !4331)
!4338 = !DILocation(line: 203, column: 17, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !209, line: 203, column: 7)
!4340 = distinct !DILexicalBlock(scope: !4331, file: !209, line: 206, column: 3)
!4341 = !DILocation(line: 203, column: 7, scope: !4339)
!4342 = !DILocation(line: 203, column: 32, scope: !4339)
!4343 = !DILocation(line: 203, column: 7, scope: !4340)
!4344 = !DILocation(line: 203, column: 5, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !209, line: 205, column: 5)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !209, line: 204, column: 5)
!4347 = distinct !DILexicalBlock(scope: !4339, file: !209, line: 203, column: 38)
!4348 = !DILocation(line: 203, column: 5, scope: !4347)
!4349 = !DILocation(line: 204, column: 13, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4340, file: !209, line: 204, column: 7)
!4351 = !DILocation(line: 204, column: 7, scope: !4350)
!4352 = !DILocation(line: 204, column: 16, scope: !4350)
!4353 = !DILocation(line: 204, column: 7, scope: !4340)
!4354 = !DILocation(line: 204, column: 11, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !209, line: 206, column: 5)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !209, line: 205, column: 5)
!4357 = distinct !DILexicalBlock(scope: !4350, file: !209, line: 204, column: 22)
!4358 = !DILocalVariable(name: "tmp", scope: !4331, file: !209, line: 202, type: !10)
!4359 = !DILocation(line: 204, column: 32, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !209, line: 206, column: 5)
!4361 = !DILocation(line: 204, column: 51, scope: !4360)
!4362 = !DILocation(line: 204, column: 5, scope: !4360)
!4363 = !DILocation(line: 207, column: 3, scope: !4357)
!4364 = !DILocation(line: 205, column: 3, scope: !4340)
!4365 = !DILocation(line: 207, column: 1, scope: !4331)
!4366 = distinct !DISubprogram(name: "do_endeach", scope: !209, file: !209, line: 221, type: !220, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4367 = !DILocalVariable(name: "p", arg: 1, scope: !4366, file: !209, line: 221, type: !13)
!4368 = !DILocation(line: 0, scope: !4366)
!4369 = !DILocalVariable(name: "__cil_tmp5", scope: !4366, file: !209, line: 226, type: !27)
!4370 = !DILocation(line: 226, column: 9, scope: !4366)
!4371 = !DILocation(line: 226, column: 17, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !209, line: 226, column: 7)
!4373 = distinct !DILexicalBlock(scope: !4366, file: !209, line: 228, column: 3)
!4374 = !DILocation(line: 226, column: 7, scope: !4372)
!4375 = !DILocation(line: 226, column: 32, scope: !4372)
!4376 = !DILocation(line: 226, column: 7, scope: !4373)
!4377 = !DILocation(line: 226, column: 5, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !209, line: 228, column: 5)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !209, line: 227, column: 5)
!4380 = distinct !DILexicalBlock(scope: !4372, file: !209, line: 226, column: 38)
!4381 = !DILocation(line: 226, column: 5, scope: !4380)
!4382 = !DILocation(line: 228, column: 13, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4373, file: !209, line: 228, column: 7)
!4384 = !DILocation(line: 228, column: 7, scope: !4383)
!4385 = !DILocation(line: 228, column: 16, scope: !4383)
!4386 = !DILocation(line: 228, column: 7, scope: !4373)
!4387 = !DILocalVariable(name: "count", scope: !4366, file: !209, line: 223, type: !6)
!4388 = !DILocation(line: 229, column: 3, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4383, file: !209, line: 228, column: 22)
!4390 = !DILocation(line: 228, column: 11, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !209, line: 231, column: 5)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !209, line: 230, column: 5)
!4393 = distinct !DILexicalBlock(scope: !4383, file: !209, line: 229, column: 10)
!4394 = !DILocalVariable(name: "tmp", scope: !4366, file: !209, line: 224, type: !6)
!4395 = !DILocation(line: 0, scope: !4383)
!4396 = !DILocation(line: 229, column: 13, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4373, file: !209, line: 229, column: 7)
!4398 = !DILocation(line: 229, column: 7, scope: !4373)
!4399 = !DILocation(line: 229, column: 5, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4397, file: !209, line: 229, column: 18)
!4401 = !DILocation(line: 231, column: 3, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !209, line: 232, column: 3)
!4403 = distinct !DILexicalBlock(scope: !4373, file: !209, line: 231, column: 3)
!4404 = !DILocation(line: 0, scope: !4373)
!4405 = !DILocation(line: 231, column: 13, scope: !4402)
!4406 = !DILocalVariable(name: "tmp___0", scope: !4366, file: !209, line: 225, type: !6)
!4407 = !DILocation(line: 231, column: 11, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4402, file: !209, line: 231, column: 13)
!4409 = !DILocation(line: 231, column: 17, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !209, line: 231, column: 9)
!4411 = !DILocation(line: 231, column: 9, scope: !4408)
!4412 = !DILocation(line: 231, column: 30, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !209, line: 231, column: 11)
!4414 = distinct !DILexicalBlock(scope: !4410, file: !209, line: 231, column: 22)
!4415 = !DILocation(line: 231, column: 14, scope: !4413)
!4416 = !DILocation(line: 231, column: 44, scope: !4413)
!4417 = !DILocation(line: 231, column: 11, scope: !4414)
!4418 = !DILocation(line: 231, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4413, file: !209, line: 231, column: 77)
!4420 = !DILocation(line: 233, column: 5, scope: !4414)
!4421 = !DILocation(line: 231, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4410, file: !209, line: 233, column: 12)
!4423 = !DILocation(line: 232, column: 21, scope: !4408)
!4424 = !DILocation(line: 232, column: 36, scope: !4408)
!4425 = !DILocation(line: 232, column: 19, scope: !4408)
!4426 = distinct !{!4426, !4401, !4427}
!4427 = !DILocation(line: 233, column: 3, scope: !4402)
!4428 = !DILocation(line: 235, column: 3, scope: !4402)
!4429 = !DILocation(line: 234, column: 23, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4373, file: !209, line: 234, column: 7)
!4431 = !DILocation(line: 234, column: 7, scope: !4430)
!4432 = !DILocation(line: 234, column: 37, scope: !4430)
!4433 = !DILocation(line: 234, column: 7, scope: !4373)
!4434 = !DILocation(line: 234, column: 21, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !209, line: 234, column: 69)
!4436 = !DILocation(line: 235, column: 3, scope: !4435)
!4437 = !DILocation(line: 235, column: 30, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4430, file: !209, line: 235, column: 10)
!4439 = !DILocation(line: 235, column: 5, scope: !4438)
!4440 = !DILocation(line: 235, column: 19, scope: !4438)
!4441 = !DILocation(line: 235, column: 28, scope: !4438)
!4442 = !DILocation(line: 236, column: 3, scope: !4373)
!4443 = !DILocation(line: 238, column: 1, scope: !4366)
!4444 = distinct !DISubprogram(name: "do_endinliteral", scope: !209, file: !209, line: 252, type: !220, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4445 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !209, line: 252, type: !13)
!4446 = !DILocation(line: 0, scope: !4444)
!4447 = !DILocalVariable(name: "__cil_tmp3", scope: !4444, file: !209, line: 255, type: !27)
!4448 = !DILocation(line: 255, column: 9, scope: !4444)
!4449 = !DILocalVariable(name: "__cil_tmp4", scope: !4444, file: !209, line: 256, type: !27)
!4450 = !DILocation(line: 256, column: 9, scope: !4444)
!4451 = !DILocation(line: 255, column: 17, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !209, line: 255, column: 7)
!4453 = distinct !DILexicalBlock(scope: !4444, file: !209, line: 258, column: 3)
!4454 = !DILocation(line: 255, column: 7, scope: !4452)
!4455 = !DILocation(line: 255, column: 32, scope: !4452)
!4456 = !DILocation(line: 255, column: 7, scope: !4453)
!4457 = !DILocation(line: 255, column: 5, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !209, line: 257, column: 5)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !209, line: 256, column: 5)
!4460 = distinct !DILexicalBlock(scope: !4452, file: !209, line: 255, column: 38)
!4461 = !DILocation(line: 255, column: 5, scope: !4460)
!4462 = !DILocation(line: 256, column: 13, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4453, file: !209, line: 256, column: 7)
!4464 = !DILocation(line: 256, column: 7, scope: !4463)
!4465 = !DILocation(line: 256, column: 16, scope: !4463)
!4466 = !DILocation(line: 256, column: 7, scope: !4453)
!4467 = !DILocation(line: 256, column: 11, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !209, line: 258, column: 5)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !209, line: 257, column: 5)
!4470 = distinct !DILexicalBlock(scope: !4463, file: !209, line: 256, column: 22)
!4471 = !DILocalVariable(name: "tmp", scope: !4444, file: !209, line: 254, type: !10)
!4472 = !DILocation(line: 256, column: 38, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !209, line: 258, column: 5)
!4474 = !DILocation(line: 256, column: 57, scope: !4473)
!4475 = !DILocation(line: 256, column: 5, scope: !4473)
!4476 = !DILocation(line: 259, column: 3, scope: !4470)
!4477 = !DILocation(line: 257, column: 3, scope: !4453)
!4478 = !DILocation(line: 259, column: 1, scope: !4444)
!4479 = distinct !DISubprogram(name: "do_flag", scope: !209, file: !209, line: 278, type: !220, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4480 = !DILocalVariable(name: "p", arg: 1, scope: !4479, file: !209, line: 278, type: !13)
!4481 = !DILocation(line: 0, scope: !4479)
!4482 = !DILocalVariable(name: "length", scope: !4479, file: !209, line: 282, type: !6)
!4483 = !DILocation(line: 282, column: 7, scope: !4479)
!4484 = !DILocation(line: 285, column: 9, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !209, line: 297, column: 3)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 296, column: 3)
!4487 = distinct !DILexicalBlock(scope: !4479, file: !209, line: 295, column: 3)
!4488 = !DILocalVariable(name: "tmp", scope: !4479, file: !209, line: 286, type: !17)
!4489 = !DILocation(line: 285, column: 7, scope: !4486)
!4490 = !DILocalVariable(name: "f", scope: !4479, file: !209, line: 284, type: !139)
!4491 = !DILocalVariable(name: "tmp___0", scope: !4479, file: !209, line: 287, type: !13)
!4492 = !DILocation(line: 289, column: 5, scope: !4486)
!4493 = !DILocation(line: 289, column: 13, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 289, column: 7)
!4495 = !DILocation(line: 289, column: 7, scope: !4494)
!4496 = !DILocation(line: 289, column: 22, scope: !4494)
!4497 = !DILocation(line: 289, column: 7, scope: !4487)
!4498 = !DILocation(line: 289, column: 5, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !209, line: 291, column: 5)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !209, line: 290, column: 5)
!4501 = distinct !DILexicalBlock(scope: !4494, file: !209, line: 289, column: 29)
!4502 = !DILocation(line: 289, column: 5, scope: !4501)
!4503 = !DILocalVariable(name: "pp", scope: !4479, file: !209, line: 280, type: !13)
!4504 = !DILocation(line: 291, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !209, line: 293, column: 3)
!4506 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 292, column: 3)
!4507 = !DILocation(line: 0, scope: !4487)
!4508 = !DILocation(line: 291, column: 13, scope: !4505)
!4509 = !DILocation(line: 291, column: 15, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !209, line: 291, column: 9)
!4511 = distinct !DILexicalBlock(scope: !4505, file: !209, line: 291, column: 13)
!4512 = !DILocation(line: 291, column: 9, scope: !4510)
!4513 = !DILocation(line: 291, column: 19, scope: !4510)
!4514 = !DILocation(line: 291, column: 9, scope: !4511)
!4515 = !DILocation(line: 291, column: 17, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !209, line: 293, column: 7)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !209, line: 292, column: 7)
!4518 = distinct !DILexicalBlock(scope: !4510, file: !209, line: 291, column: 25)
!4519 = !DILocalVariable(name: "tmp___1", scope: !4479, file: !209, line: 288, type: !295)
!4520 = !DILocation(line: 291, column: 27, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4518, file: !209, line: 291, column: 11)
!4522 = !DILocation(line: 291, column: 44, scope: !4521)
!4523 = !DILocation(line: 291, column: 38, scope: !4521)
!4524 = !DILocation(line: 291, column: 36, scope: !4521)
!4525 = !DILocation(line: 291, column: 25, scope: !4521)
!4526 = !DILocation(line: 291, column: 11, scope: !4521)
!4527 = !DILocation(line: 291, column: 49, scope: !4521)
!4528 = !DILocation(line: 291, column: 11, scope: !4518)
!4529 = !DILocation(line: 291, column: 9, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4521, file: !209, line: 291, column: 57)
!4531 = !DILocation(line: 293, column: 5, scope: !4518)
!4532 = !DILocation(line: 291, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4510, file: !209, line: 293, column: 12)
!4534 = !DILocation(line: 291, column: 8, scope: !4511)
!4535 = distinct !{!4535, !4504, !4536}
!4536 = !DILocation(line: 292, column: 3, scope: !4505)
!4537 = !DILocation(line: 294, column: 3, scope: !4505)
!4538 = !DILocation(line: 292, column: 22, scope: !4487)
!4539 = !DILocation(line: 292, column: 12, scope: !4487)
!4540 = !DILocation(line: 292, column: 10, scope: !4487)
!4541 = !DILocation(line: 293, column: 7, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 293, column: 7)
!4543 = !DILocation(line: 293, column: 14, scope: !4542)
!4544 = !DILocation(line: 293, column: 7, scope: !4487)
!4545 = !DILocation(line: 293, column: 5, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !209, line: 295, column: 5)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !209, line: 294, column: 5)
!4548 = distinct !DILexicalBlock(scope: !4542, file: !209, line: 293, column: 20)
!4549 = !DILocation(line: 293, column: 5, scope: !4548)
!4550 = !DILocation(line: 295, column: 16, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 295, column: 3)
!4552 = !DILocation(line: 295, column: 6, scope: !4551)
!4553 = !DILocation(line: 295, column: 14, scope: !4551)
!4554 = !DILocation(line: 296, column: 33, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !209, line: 296, column: 3)
!4556 = !DILocation(line: 296, column: 14, scope: !4555)
!4557 = !DILocation(line: 296, column: 6, scope: !4555)
!4558 = !DILocation(line: 296, column: 12, scope: !4555)
!4559 = !DILocation(line: 301, column: 13, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4551, file: !209, line: 298, column: 3)
!4561 = !DILocalVariable(name: "tmp___2", scope: !4479, file: !209, line: 289, type: !10)
!4562 = !DILocation(line: 301, column: 10, scope: !4551)
!4563 = !DILocalVariable(name: "q", scope: !4479, file: !209, line: 281, type: !13)
!4564 = !DILocation(line: 302, column: 5, scope: !4551)
!4565 = !DILocation(line: 302, column: 13, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 302, column: 7)
!4567 = !DILocation(line: 302, column: 7, scope: !4566)
!4568 = !DILocation(line: 302, column: 16, scope: !4566)
!4569 = !DILocation(line: 302, column: 7, scope: !4487)
!4570 = !DILocation(line: 302, column: 15, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !209, line: 302, column: 9)
!4572 = distinct !DILexicalBlock(scope: !4566, file: !209, line: 302, column: 23)
!4573 = !DILocation(line: 302, column: 9, scope: !4571)
!4574 = !DILocation(line: 302, column: 18, scope: !4571)
!4575 = !DILocation(line: 302, column: 9, scope: !4572)
!4576 = !DILocation(line: 302, column: 17, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !209, line: 304, column: 7)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !209, line: 303, column: 7)
!4579 = distinct !DILexicalBlock(scope: !4571, file: !209, line: 302, column: 25)
!4580 = !DILocation(line: 302, column: 7, scope: !4577)
!4581 = !DILocation(line: 302, column: 7, scope: !4579)
!4582 = !DILocation(line: 304, column: 3, scope: !4572)
!4583 = !DILocation(line: 304, column: 16, scope: !4487)
!4584 = !DILocation(line: 304, column: 10, scope: !4487)
!4585 = !DILocalVariable(name: "term", scope: !4479, file: !209, line: 283, type: !6)
!4586 = !DILocation(line: 305, column: 3, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4588, file: !209, line: 306, column: 3)
!4588 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 305, column: 3)
!4589 = !DILocation(line: 305, column: 13, scope: !4587)
!4590 = !DILocation(line: 305, column: 7, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4587, file: !209, line: 305, column: 13)
!4592 = !DILocation(line: 305, column: 12, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4591, file: !209, line: 305, column: 9)
!4594 = !DILocation(line: 305, column: 32, scope: !4593)
!4595 = !DILocation(line: 305, column: 30, scope: !4593)
!4596 = !DILocation(line: 305, column: 9, scope: !4591)
!4597 = !DILocation(line: 305, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4593, file: !209, line: 305, column: 53)
!4599 = !DILocation(line: 307, column: 15, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4591, file: !209, line: 307, column: 9)
!4601 = !DILocation(line: 307, column: 9, scope: !4600)
!4602 = !DILocation(line: 307, column: 18, scope: !4600)
!4603 = !DILocation(line: 307, column: 9, scope: !4591)
!4604 = !DILocation(line: 307, column: 21, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !209, line: 307, column: 11)
!4606 = distinct !DILexicalBlock(scope: !4600, file: !209, line: 307, column: 27)
!4607 = !DILocation(line: 307, column: 17, scope: !4605)
!4608 = !DILocation(line: 307, column: 11, scope: !4605)
!4609 = !DILocation(line: 307, column: 27, scope: !4605)
!4610 = !DILocation(line: 307, column: 11, scope: !4606)
!4611 = !DILocation(line: 307, column: 11, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4605, file: !209, line: 307, column: 36)
!4613 = !DILocation(line: 308, column: 7, scope: !4612)
!4614 = !DILocation(line: 307, column: 9, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4605, file: !209, line: 308, column: 14)
!4616 = !DILocation(line: 309, column: 5, scope: !4606)
!4617 = !DILocation(line: 0, scope: !4591)
!4618 = distinct !{!4618, !4586, !4619}
!4619 = !DILocation(line: 310, column: 3, scope: !4587)
!4620 = !DILocation(line: 312, column: 3, scope: !4587)
!4621 = !DILocation(line: 310, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 310, column: 7)
!4623 = !DILocation(line: 310, column: 28, scope: !4622)
!4624 = !DILocation(line: 310, column: 25, scope: !4622)
!4625 = !DILocation(line: 310, column: 7, scope: !4487)
!4626 = !DILocation(line: 310, column: 15, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !209, line: 312, column: 5)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !209, line: 311, column: 5)
!4629 = distinct !DILexicalBlock(scope: !4622, file: !209, line: 310, column: 48)
!4630 = !DILocation(line: 310, column: 5, scope: !4627)
!4631 = !DILocation(line: 310, column: 5, scope: !4629)
!4632 = !DILocation(line: 315, column: 3, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !209, line: 313, column: 3)
!4634 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 312, column: 3)
!4635 = !DILocation(line: 315, column: 13, scope: !4633)
!4636 = !DILocation(line: 315, column: 15, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !209, line: 319, column: 5)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !209, line: 318, column: 5)
!4639 = distinct !DILexicalBlock(scope: !4633, file: !209, line: 315, column: 13)
!4640 = !DILocalVariable(name: "tmp___3", scope: !4479, file: !209, line: 290, type: !295)
!4641 = !DILocation(line: 315, column: 28, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4639, file: !209, line: 315, column: 9)
!4643 = !DILocation(line: 315, column: 45, scope: !4642)
!4644 = !DILocation(line: 315, column: 39, scope: !4642)
!4645 = !DILocation(line: 315, column: 37, scope: !4642)
!4646 = !DILocation(line: 315, column: 26, scope: !4642)
!4647 = !DILocation(line: 315, column: 12, scope: !4642)
!4648 = !DILocation(line: 315, column: 50, scope: !4642)
!4649 = !DILocation(line: 315, column: 9, scope: !4639)
!4650 = !DILocation(line: 315, column: 7, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4642, file: !209, line: 315, column: 59)
!4652 = !DILocation(line: 315, column: 8, scope: !4639)
!4653 = distinct !{!4653, !4632, !4654}
!4654 = !DILocation(line: 316, column: 3, scope: !4633)
!4655 = !DILocation(line: 318, column: 3, scope: !4633)
!4656 = !DILocation(line: 316, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 316, column: 7)
!4658 = !DILocation(line: 316, column: 29, scope: !4657)
!4659 = !DILocation(line: 316, column: 26, scope: !4657)
!4660 = !DILocation(line: 316, column: 7, scope: !4487)
!4661 = !DILocation(line: 318, column: 15, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !209, line: 318, column: 5)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !209, line: 317, column: 5)
!4664 = distinct !DILexicalBlock(scope: !4657, file: !209, line: 316, column: 48)
!4665 = !DILocation(line: 318, column: 8, scope: !4662)
!4666 = !DILocation(line: 318, column: 13, scope: !4662)
!4667 = !DILocation(line: 319, column: 8, scope: !4663)
!4668 = !DILocation(line: 319, column: 16, scope: !4663)
!4669 = !DILocalVariable(name: "tmp___4", scope: !4479, file: !209, line: 291, type: !13)
!4670 = !DILocation(line: 320, column: 8, scope: !4663)
!4671 = !DILocation(line: 320, column: 13, scope: !4663)
!4672 = !DILocation(line: 320, column: 14, scope: !4663)
!4673 = !DILocation(line: 322, column: 3, scope: !4664)
!4674 = !DILocation(line: 327, column: 15, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !209, line: 324, column: 5)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 323, column: 5)
!4677 = distinct !DILexicalBlock(scope: !4657, file: !209, line: 322, column: 10)
!4678 = !DILocation(line: 327, column: 8, scope: !4675)
!4679 = !DILocation(line: 327, column: 13, scope: !4675)
!4680 = !DILocation(line: 329, column: 5, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !209, line: 331, column: 5)
!4682 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 330, column: 5)
!4683 = !DILocation(line: 329, column: 15, scope: !4681)
!4684 = !DILocation(line: 329, column: 17, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !209, line: 329, column: 11)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !209, line: 329, column: 15)
!4687 = !DILocation(line: 329, column: 11, scope: !4685)
!4688 = !DILocation(line: 329, column: 21, scope: !4685)
!4689 = !DILocation(line: 329, column: 11, scope: !4686)
!4690 = !DILocation(line: 329, column: 19, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !209, line: 331, column: 9)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !209, line: 330, column: 9)
!4693 = distinct !DILexicalBlock(scope: !4685, file: !209, line: 329, column: 27)
!4694 = !DILocalVariable(name: "tmp___5", scope: !4479, file: !209, line: 292, type: !295)
!4695 = !DILocation(line: 329, column: 29, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !209, line: 329, column: 13)
!4697 = !DILocation(line: 329, column: 46, scope: !4696)
!4698 = !DILocation(line: 329, column: 40, scope: !4696)
!4699 = !DILocation(line: 329, column: 38, scope: !4696)
!4700 = !DILocation(line: 329, column: 27, scope: !4696)
!4701 = !DILocation(line: 329, column: 13, scope: !4696)
!4702 = !DILocation(line: 329, column: 51, scope: !4696)
!4703 = !DILocation(line: 329, column: 13, scope: !4693)
!4704 = !DILocation(line: 329, column: 11, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4696, file: !209, line: 329, column: 59)
!4706 = !DILocation(line: 331, column: 7, scope: !4693)
!4707 = !DILocation(line: 329, column: 9, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4685, file: !209, line: 331, column: 14)
!4709 = !DILocation(line: 329, column: 10, scope: !4686)
!4710 = distinct !{!4710, !4680, !4711}
!4711 = !DILocation(line: 330, column: 5, scope: !4681)
!4712 = !DILocation(line: 332, column: 5, scope: !4681)
!4713 = !DILocation(line: 330, column: 24, scope: !4677)
!4714 = !DILocation(line: 330, column: 14, scope: !4677)
!4715 = !DILocation(line: 330, column: 12, scope: !4677)
!4716 = !DILocation(line: 331, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 331, column: 9)
!4718 = !DILocation(line: 331, column: 16, scope: !4717)
!4719 = !DILocation(line: 331, column: 9, scope: !4677)
!4720 = !DILocation(line: 331, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !209, line: 333, column: 7)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !209, line: 332, column: 7)
!4723 = distinct !DILexicalBlock(scope: !4717, file: !209, line: 331, column: 22)
!4724 = !DILocation(line: 331, column: 7, scope: !4723)
!4725 = !DILocation(line: 332, column: 18, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 333, column: 5)
!4727 = !DILocation(line: 332, column: 8, scope: !4726)
!4728 = !DILocation(line: 332, column: 16, scope: !4726)
!4729 = !DILocation(line: 333, column: 35, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !209, line: 333, column: 5)
!4731 = !DILocation(line: 333, column: 16, scope: !4730)
!4732 = !DILocation(line: 333, column: 8, scope: !4730)
!4733 = !DILocation(line: 333, column: 14, scope: !4730)
!4734 = !DILocation(line: 334, column: 5, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4736, file: !209, line: 337, column: 5)
!4736 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 336, column: 5)
!4737 = !DILocation(line: 334, column: 15, scope: !4735)
!4738 = !DILocation(line: 334, column: 17, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !209, line: 338, column: 7)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !209, line: 337, column: 7)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !209, line: 334, column: 15)
!4742 = !DILocalVariable(name: "tmp___6", scope: !4479, file: !209, line: 293, type: !295)
!4743 = !DILocation(line: 334, column: 30, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !209, line: 334, column: 11)
!4745 = !DILocation(line: 334, column: 47, scope: !4744)
!4746 = !DILocation(line: 334, column: 41, scope: !4744)
!4747 = !DILocation(line: 334, column: 39, scope: !4744)
!4748 = !DILocation(line: 334, column: 28, scope: !4744)
!4749 = !DILocation(line: 334, column: 14, scope: !4744)
!4750 = !DILocation(line: 334, column: 52, scope: !4744)
!4751 = !DILocation(line: 334, column: 11, scope: !4741)
!4752 = !DILocation(line: 334, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4744, file: !209, line: 334, column: 61)
!4754 = !DILocation(line: 334, column: 10, scope: !4741)
!4755 = distinct !{!4755, !4734, !4756}
!4756 = !DILocation(line: 335, column: 5, scope: !4735)
!4757 = !DILocation(line: 337, column: 5, scope: !4735)
!4758 = !DILocation(line: 335, column: 15, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 335, column: 9)
!4760 = !DILocation(line: 335, column: 9, scope: !4759)
!4761 = !DILocation(line: 335, column: 19, scope: !4759)
!4762 = !DILocation(line: 335, column: 9, scope: !4677)
!4763 = !DILocation(line: 335, column: 17, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !209, line: 335, column: 11)
!4765 = distinct !DILexicalBlock(scope: !4759, file: !209, line: 335, column: 26)
!4766 = !DILocation(line: 335, column: 11, scope: !4764)
!4767 = !DILocation(line: 335, column: 21, scope: !4764)
!4768 = !DILocation(line: 335, column: 11, scope: !4765)
!4769 = !DILocation(line: 335, column: 19, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !209, line: 337, column: 9)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !209, line: 336, column: 9)
!4772 = distinct !DILexicalBlock(scope: !4764, file: !209, line: 335, column: 28)
!4773 = !DILocation(line: 335, column: 9, scope: !4770)
!4774 = !DILocation(line: 335, column: 9, scope: !4772)
!4775 = !DILocation(line: 337, column: 5, scope: !4765)
!4776 = !DILocation(line: 336, column: 15, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !209, line: 339, column: 5)
!4778 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 338, column: 5)
!4779 = !DILocation(line: 336, column: 8, scope: !4777)
!4780 = !DILocation(line: 336, column: 13, scope: !4777)
!4781 = !DILocation(line: 337, column: 31, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4677, file: !209, line: 337, column: 9)
!4783 = !DILocation(line: 337, column: 29, scope: !4782)
!4784 = !DILocation(line: 337, column: 9, scope: !4782)
!4785 = !DILocation(line: 337, column: 42, scope: !4782)
!4786 = !DILocation(line: 337, column: 39, scope: !4782)
!4787 = !DILocation(line: 337, column: 9, scope: !4677)
!4788 = !DILocation(line: 337, column: 17, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !209, line: 339, column: 7)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !209, line: 338, column: 7)
!4791 = distinct !DILexicalBlock(scope: !4782, file: !209, line: 337, column: 61)
!4792 = !DILocation(line: 337, column: 7, scope: !4789)
!4793 = !DILocation(line: 337, column: 7, scope: !4791)
!4794 = !DILocalVariable(name: "ff", scope: !4479, file: !209, line: 285, type: !4795)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!4796 = !DILocation(line: 344, column: 3, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !209, line: 345, column: 3)
!4798 = distinct !DILexicalBlock(scope: !4487, file: !209, line: 344, column: 3)
!4799 = !DILocation(line: 344, column: 13, scope: !4797)
!4800 = !DILocation(line: 344, column: 25, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !209, line: 344, column: 9)
!4802 = distinct !DILexicalBlock(scope: !4797, file: !209, line: 344, column: 13)
!4803 = !DILocation(line: 344, column: 9, scope: !4801)
!4804 = !DILocation(line: 344, column: 29, scope: !4801)
!4805 = !DILocation(line: 344, column: 9, scope: !4802)
!4806 = !DILocation(line: 344, column: 17, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !209, line: 344, column: 11)
!4808 = distinct !DILexicalBlock(scope: !4801, file: !209, line: 344, column: 61)
!4809 = !DILocation(line: 344, column: 28, scope: !4807)
!4810 = !DILocation(line: 344, column: 34, scope: !4807)
!4811 = !DILocation(line: 344, column: 25, scope: !4807)
!4812 = !DILocation(line: 344, column: 11, scope: !4808)
!4813 = !DILocation(line: 344, column: 9, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4807, file: !209, line: 344, column: 44)
!4815 = !DILocation(line: 346, column: 5, scope: !4808)
!4816 = !DILocation(line: 344, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4801, file: !209, line: 346, column: 12)
!4818 = !DILocation(line: 344, column: 13, scope: !4802)
!4819 = !DILocation(line: 344, column: 19, scope: !4802)
!4820 = distinct !{!4820, !4796, !4821}
!4821 = !DILocation(line: 345, column: 3, scope: !4797)
!4822 = !DILocation(line: 347, column: 3, scope: !4797)
!4823 = !DILocation(line: 345, column: 13, scope: !4487)
!4824 = !DILocation(line: 345, column: 6, scope: !4487)
!4825 = !DILocation(line: 345, column: 11, scope: !4487)
!4826 = !DILocation(line: 346, column: 7, scope: !4487)
!4827 = !DILocation(line: 347, column: 3, scope: !4487)
!4828 = !DILocation(line: 349, column: 1, scope: !4479)
!4829 = distinct !DISubprogram(name: "do_include", scope: !209, file: !209, line: 361, type: !220, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4830 = !DILocalVariable(name: "p", arg: 1, scope: !4829, file: !209, line: 361, type: !13)
!4831 = !DILocation(line: 0, scope: !4829)
!4832 = !DILocalVariable(name: "__cil_tmp7", scope: !4829, file: !209, line: 368, type: !27)
!4833 = !DILocation(line: 368, column: 9, scope: !4829)
!4834 = !DILocalVariable(name: "__cil_tmp8", scope: !4829, file: !209, line: 369, type: !27)
!4835 = !DILocation(line: 369, column: 9, scope: !4829)
!4836 = !DILocation(line: 366, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !209, line: 373, column: 3)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !209, line: 372, column: 3)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !209, line: 371, column: 3)
!4840 = !DILocalVariable(name: "tmp", scope: !4829, file: !209, line: 364, type: !17)
!4841 = !DILocation(line: 366, column: 9, scope: !4838)
!4842 = !DILocalVariable(name: "ist", scope: !4829, file: !209, line: 363, type: !105)
!4843 = !DILocation(line: 367, column: 15, scope: !4838)
!4844 = !DILocation(line: 367, column: 8, scope: !4838)
!4845 = !DILocation(line: 367, column: 13, scope: !4838)
!4846 = !DILocation(line: 368, column: 10, scope: !4838)
!4847 = !DILocation(line: 369, column: 8, scope: !4838)
!4848 = !DILocation(line: 369, column: 19, scope: !4838)
!4849 = !DILocation(line: 371, column: 13, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4838, file: !209, line: 370, column: 3)
!4851 = !DILocalVariable(name: "tmp___0", scope: !4829, file: !209, line: 365, type: !27)
!4852 = !DILocation(line: 371, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4839, file: !209, line: 371, column: 7)
!4854 = !DILocation(line: 371, column: 50, scope: !4853)
!4855 = !DILocation(line: 371, column: 7, scope: !4839)
!4856 = !DILocation(line: 371, column: 52, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !209, line: 373, column: 5)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !209, line: 372, column: 5)
!4859 = distinct !DILexicalBlock(scope: !4853, file: !209, line: 371, column: 82)
!4860 = !DILocation(line: 371, column: 46, scope: !4857)
!4861 = !DILocation(line: 371, column: 5, scope: !4857)
!4862 = !DILocation(line: 374, column: 3, scope: !4859)
!4863 = !DILocation(line: 372, column: 53, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !209, line: 376, column: 5)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !209, line: 375, column: 5)
!4866 = distinct !DILexicalBlock(scope: !4853, file: !209, line: 374, column: 10)
!4867 = !DILocation(line: 372, column: 47, scope: !4864)
!4868 = !DILocation(line: 373, column: 13, scope: !4864)
!4869 = !DILocation(line: 372, column: 5, scope: !4864)
!4870 = !DILocation(line: 374, column: 77, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !209, line: 378, column: 3)
!4872 = distinct !DILexicalBlock(scope: !4839, file: !209, line: 377, column: 3)
!4873 = !DILocation(line: 374, column: 71, scope: !4871)
!4874 = !DILocation(line: 374, column: 15, scope: !4871)
!4875 = !DILocation(line: 374, column: 8, scope: !4871)
!4876 = !DILocation(line: 374, column: 13, scope: !4871)
!4877 = !DILocation(line: 375, column: 28, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4839, file: !209, line: 375, column: 7)
!4879 = !DILocation(line: 375, column: 7, scope: !4878)
!4880 = !DILocation(line: 375, column: 33, scope: !4878)
!4881 = !DILocation(line: 375, column: 7, scope: !4839)
!4882 = !DILocation(line: 375, column: 15, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !209, line: 377, column: 5)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !209, line: 376, column: 5)
!4885 = distinct !DILexicalBlock(scope: !4878, file: !209, line: 375, column: 65)
!4886 = !DILocalVariable(name: "tmp___1", scope: !4829, file: !209, line: 366, type: !151)
!4887 = !DILocation(line: 375, column: 24, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4884, file: !209, line: 377, column: 5)
!4889 = !DILocation(line: 375, column: 15, scope: !4888)
!4890 = !DILocalVariable(name: "tmp___2", scope: !4829, file: !209, line: 367, type: !27)
!4891 = !DILocation(line: 375, column: 19, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4884, file: !209, line: 377, column: 5)
!4893 = !DILocation(line: 375, column: 14, scope: !4892)
!4894 = !DILocation(line: 375, column: 5, scope: !4892)
!4895 = !DILocation(line: 378, column: 3, scope: !4885)
!4896 = !DILocation(line: 377, column: 17, scope: !4839)
!4897 = !DILocation(line: 377, column: 13, scope: !4839)
!4898 = !DILocation(line: 377, column: 3, scope: !4839)
!4899 = !DILocation(line: 377, column: 28, scope: !4839)
!4900 = !DILocation(line: 378, column: 3, scope: !4839)
!4901 = distinct !DISubprogram(name: "do_inliteral", scope: !209, file: !209, line: 394, type: !220, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4902 = !DILocalVariable(name: "p", arg: 1, scope: !4901, file: !209, line: 394, type: !13)
!4903 = !DILocation(line: 0, scope: !4901)
!4904 = !DILocalVariable(name: "__cil_tmp7", scope: !4901, file: !209, line: 401, type: !27)
!4905 = !DILocation(line: 401, column: 9, scope: !4901)
!4906 = !DILocalVariable(name: "__cil_tmp8", scope: !4901, file: !209, line: 402, type: !27)
!4907 = !DILocation(line: 402, column: 9, scope: !4901)
!4908 = !DILocalVariable(name: "__cil_tmp9", scope: !4901, file: !209, line: 403, type: !27)
!4909 = !DILocation(line: 403, column: 9, scope: !4901)
!4910 = !DILocalVariable(name: "__cil_tmp10", scope: !4901, file: !209, line: 404, type: !27)
!4911 = !DILocation(line: 404, column: 9, scope: !4901)
!4912 = !DILocalVariable(name: "__cil_tmp11", scope: !4901, file: !209, line: 405, type: !27)
!4913 = !DILocation(line: 405, column: 9, scope: !4901)
!4914 = !DILocalVariable(name: "__cil_tmp12", scope: !4901, file: !209, line: 406, type: !27)
!4915 = !DILocation(line: 406, column: 9, scope: !4901)
!4916 = !DILocalVariable(name: "__cil_tmp13", scope: !4901, file: !209, line: 407, type: !27)
!4917 = !DILocation(line: 407, column: 9, scope: !4901)
!4918 = !DILocalVariable(name: "state", scope: !4901, file: !209, line: 396, type: !6)
!4919 = !DILocation(line: 398, column: 17, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !209, line: 398, column: 7)
!4921 = distinct !DILexicalBlock(scope: !4901, file: !209, line: 409, column: 3)
!4922 = !DILocation(line: 398, column: 7, scope: !4920)
!4923 = !DILocation(line: 398, column: 32, scope: !4920)
!4924 = !DILocation(line: 398, column: 7, scope: !4921)
!4925 = !DILocation(line: 398, column: 5, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !209, line: 400, column: 5)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !209, line: 399, column: 5)
!4928 = distinct !DILexicalBlock(scope: !4920, file: !209, line: 398, column: 38)
!4929 = !DILocation(line: 398, column: 5, scope: !4928)
!4930 = !DILocation(line: 399, column: 13, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !209, line: 401, column: 3)
!4932 = distinct !DILexicalBlock(scope: !4921, file: !209, line: 400, column: 3)
!4933 = !DILocalVariable(name: "tmp___2", scope: !4901, file: !209, line: 400, type: !6)
!4934 = !DILocation(line: 399, column: 15, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4921, file: !209, line: 399, column: 7)
!4936 = !DILocation(line: 399, column: 7, scope: !4921)
!4937 = !DILocation(line: 400, column: 3, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !209, line: 399, column: 21)
!4939 = !DILocation(line: 400, column: 15, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !209, line: 402, column: 5)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !209, line: 401, column: 5)
!4942 = distinct !DILexicalBlock(scope: !4935, file: !209, line: 400, column: 10)
!4943 = !DILocalVariable(name: "tmp___1", scope: !4901, file: !209, line: 399, type: !6)
!4944 = !DILocation(line: 400, column: 17, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4942, file: !209, line: 400, column: 9)
!4946 = !DILocation(line: 400, column: 9, scope: !4942)
!4947 = !DILocation(line: 401, column: 5, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !209, line: 400, column: 23)
!4949 = !DILocation(line: 401, column: 17, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !209, line: 403, column: 7)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !209, line: 402, column: 7)
!4952 = distinct !DILexicalBlock(scope: !4945, file: !209, line: 401, column: 12)
!4953 = !DILocalVariable(name: "tmp___0", scope: !4901, file: !209, line: 398, type: !6)
!4954 = !DILocation(line: 401, column: 19, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !209, line: 401, column: 11)
!4956 = !DILocation(line: 401, column: 11, scope: !4952)
!4957 = !DILocation(line: 402, column: 7, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !209, line: 401, column: 25)
!4959 = !DILocation(line: 402, column: 15, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !209, line: 404, column: 9)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !209, line: 403, column: 9)
!4962 = distinct !DILexicalBlock(scope: !4955, file: !209, line: 402, column: 14)
!4963 = !DILocalVariable(name: "tmp", scope: !4901, file: !209, line: 397, type: !6)
!4964 = !DILocation(line: 402, column: 17, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4962, file: !209, line: 402, column: 13)
!4966 = !DILocation(line: 402, column: 13, scope: !4962)
!4967 = !DILocation(line: 403, column: 9, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4965, file: !209, line: 402, column: 23)
!4969 = !DILocation(line: 403, column: 11, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !209, line: 405, column: 11)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !209, line: 404, column: 11)
!4972 = distinct !DILexicalBlock(scope: !4965, file: !209, line: 403, column: 16)
!4973 = !DILocation(line: 0, scope: !4921)
!4974 = !DILocation(line: 0, scope: !4955)
!4975 = !DILocation(line: 0, scope: !4945)
!4976 = !DILocation(line: 0, scope: !4935)
!4977 = !DILocation(line: 404, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4921, file: !209, line: 404, column: 7)
!4979 = !DILocation(line: 404, column: 21, scope: !4978)
!4980 = !DILocation(line: 404, column: 7, scope: !4921)
!4981 = !DILocation(line: 404, column: 5, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !209, line: 406, column: 5)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !209, line: 405, column: 5)
!4984 = distinct !DILexicalBlock(scope: !4978, file: !209, line: 404, column: 31)
!4985 = !DILocation(line: 407, column: 3, scope: !4984)
!4986 = !DILocation(line: 405, column: 3, scope: !4921)
!4987 = !DILocation(line: 407, column: 1, scope: !4901)
!4988 = distinct !DISubprogram(name: "do_literal", scope: !209, file: !209, line: 419, type: !220, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4989 = !DILocalVariable(name: "p", arg: 1, scope: !4988, file: !209, line: 419, type: !13)
!4990 = !DILocation(line: 0, scope: !4988)
!4991 = !DILocalVariable(name: "__cil_tmp6", scope: !4988, file: !209, line: 425, type: !27)
!4992 = !DILocation(line: 425, column: 9, scope: !4988)
!4993 = !DILocalVariable(name: "__cil_tmp7", scope: !4988, file: !209, line: 426, type: !27)
!4994 = !DILocation(line: 426, column: 9, scope: !4988)
!4995 = !DILocalVariable(name: "__cil_tmp8", scope: !4988, file: !209, line: 427, type: !27)
!4996 = !DILocation(line: 427, column: 9, scope: !4988)
!4997 = !DILocalVariable(name: "__cil_tmp9", scope: !4988, file: !209, line: 428, type: !27)
!4998 = !DILocation(line: 428, column: 9, scope: !4988)
!4999 = !DILocation(line: 422, column: 13, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !209, line: 432, column: 3)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !209, line: 431, column: 3)
!5002 = distinct !DILexicalBlock(scope: !4988, file: !209, line: 430, column: 3)
!5003 = !DILocalVariable(name: "tmp___2", scope: !4988, file: !209, line: 424, type: !6)
!5004 = !DILocation(line: 422, column: 15, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5002, file: !209, line: 422, column: 7)
!5006 = !DILocation(line: 422, column: 7, scope: !5002)
!5007 = !DILocation(line: 422, column: 19, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5005, file: !209, line: 422, column: 21)
!5009 = !DILocation(line: 423, column: 3, scope: !5008)
!5010 = !DILocation(line: 423, column: 15, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !209, line: 425, column: 5)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !209, line: 424, column: 5)
!5013 = distinct !DILexicalBlock(scope: !5005, file: !209, line: 423, column: 10)
!5014 = !DILocalVariable(name: "tmp___1", scope: !4988, file: !209, line: 423, type: !6)
!5015 = !DILocation(line: 423, column: 17, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5013, file: !209, line: 423, column: 9)
!5017 = !DILocation(line: 423, column: 9, scope: !5013)
!5018 = !DILocation(line: 423, column: 21, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !209, line: 423, column: 23)
!5020 = !DILocation(line: 424, column: 5, scope: !5019)
!5021 = !DILocation(line: 424, column: 17, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !209, line: 426, column: 7)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !209, line: 425, column: 7)
!5024 = distinct !DILexicalBlock(scope: !5016, file: !209, line: 424, column: 12)
!5025 = !DILocalVariable(name: "tmp___0", scope: !4988, file: !209, line: 422, type: !6)
!5026 = !DILocation(line: 424, column: 19, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5024, file: !209, line: 424, column: 11)
!5028 = !DILocation(line: 424, column: 11, scope: !5024)
!5029 = !DILocation(line: 424, column: 23, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !209, line: 424, column: 25)
!5031 = !DILocation(line: 425, column: 7, scope: !5030)
!5032 = !DILocation(line: 425, column: 15, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !209, line: 427, column: 9)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !209, line: 426, column: 9)
!5035 = distinct !DILexicalBlock(scope: !5027, file: !209, line: 425, column: 14)
!5036 = !DILocalVariable(name: "tmp", scope: !4988, file: !209, line: 421, type: !6)
!5037 = !DILocation(line: 425, column: 17, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5035, file: !209, line: 425, column: 13)
!5039 = !DILocation(line: 425, column: 13, scope: !5035)
!5040 = !DILocation(line: 425, column: 25, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5038, file: !209, line: 425, column: 23)
!5042 = !DILocation(line: 426, column: 9, scope: !5041)
!5043 = !DILocation(line: 426, column: 11, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !209, line: 428, column: 11)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !209, line: 427, column: 11)
!5046 = distinct !DILexicalBlock(scope: !5038, file: !209, line: 426, column: 16)
!5047 = !DILocation(line: 427, column: 3, scope: !5002)
!5048 = distinct !DISubprogram(name: "do_macro", scope: !209, file: !209, line: 441, type: !220, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5049 = !DILocalVariable(name: "p", arg: 1, scope: !5048, file: !209, line: 441, type: !13)
!5050 = !DILocation(line: 0, scope: !5048)
!5051 = !DILocalVariable(name: "length", scope: !5048, file: !209, line: 443, type: !6)
!5052 = !DILocation(line: 443, column: 7, scope: !5048)
!5053 = !DILocalVariable(name: "__cil_tmp20", scope: !5048, file: !209, line: 461, type: !27)
!5054 = !DILocation(line: 461, column: 9, scope: !5048)
!5055 = !DILocalVariable(name: "__cil_tmp21", scope: !5048, file: !209, line: 462, type: !27)
!5056 = !DILocation(line: 462, column: 9, scope: !5048)
!5057 = !DILocalVariable(name: "__cil_tmp22", scope: !5048, file: !209, line: 463, type: !27)
!5058 = !DILocation(line: 463, column: 9, scope: !5048)
!5059 = !DILocalVariable(name: "__cil_tmp23", scope: !5048, file: !209, line: 464, type: !27)
!5060 = !DILocation(line: 464, column: 9, scope: !5048)
!5061 = !DILocalVariable(name: "nest", scope: !5048, file: !209, line: 444, type: !6)
!5062 = !DILocation(line: 447, column: 9, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !209, line: 446, column: 3)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !209, line: 467, column: 3)
!5065 = distinct !DILexicalBlock(scope: !5048, file: !209, line: 466, column: 3)
!5066 = !DILocalVariable(name: "tmp", scope: !5048, file: !209, line: 447, type: !17)
!5067 = !DILocation(line: 447, column: 8, scope: !5064)
!5068 = !DILocalVariable(name: "md", scope: !5048, file: !209, line: 446, type: !86)
!5069 = !DILocation(line: 449, column: 14, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !209, line: 448, column: 3)
!5071 = !DILocation(line: 449, column: 7, scope: !5070)
!5072 = !DILocation(line: 449, column: 12, scope: !5070)
!5073 = !DILocation(line: 450, column: 40, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5064, file: !209, line: 452, column: 3)
!5075 = !DILocation(line: 450, column: 13, scope: !5074)
!5076 = !DILocalVariable(name: "tmp___0", scope: !5048, file: !209, line: 448, type: !10)
!5077 = !DILocation(line: 450, column: 7, scope: !5064)
!5078 = !DILocation(line: 450, column: 18, scope: !5064)
!5079 = !DILocation(line: 451, column: 8, scope: !5064)
!5080 = !DILocation(line: 451, column: 5, scope: !5064)
!5081 = !DILocation(line: 453, column: 7, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5065, file: !209, line: 453, column: 7)
!5083 = !DILocation(line: 453, column: 14, scope: !5082)
!5084 = !DILocation(line: 453, column: 7, scope: !5065)
!5085 = !DILocation(line: 455, column: 5, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !209, line: 455, column: 5)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !209, line: 454, column: 5)
!5088 = distinct !DILexicalBlock(scope: !5082, file: !209, line: 453, column: 20)
!5089 = !DILocation(line: 456, column: 5, scope: !5088)
!5090 = !DILocalVariable(name: "tmp___1", scope: !5048, file: !209, line: 449, type: !93)
!5091 = !DILocation(line: 459, column: 7, scope: !5065)
!5092 = !DILocation(line: 459, column: 12, scope: !5065)
!5093 = !DILocation(line: 459, column: 13, scope: !5065)
!5094 = !DILocation(line: 460, column: 14, scope: !5065)
!5095 = !DILocation(line: 460, column: 7, scope: !5065)
!5096 = !DILocation(line: 460, column: 12, scope: !5065)
!5097 = !DILocation(line: 461, column: 13, scope: !5065)
!5098 = !DILocation(line: 463, column: 14, scope: !5065)
!5099 = !DILocalVariable(name: "pp", scope: !5048, file: !209, line: 445, type: !595)
!5100 = !DILocation(line: 464, column: 3, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !209, line: 465, column: 3)
!5102 = distinct !DILexicalBlock(scope: !5065, file: !209, line: 464, column: 3)
!5103 = !DILocation(line: 0, scope: !5065)
!5104 = !DILocation(line: 464, column: 13, scope: !5101)
!5105 = !DILocation(line: 464, column: 18, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !209, line: 464, column: 9)
!5107 = distinct !DILexicalBlock(scope: !5101, file: !209, line: 464, column: 13)
!5108 = !DILocation(line: 464, column: 12, scope: !5106)
!5109 = !DILocation(line: 464, column: 21, scope: !5106)
!5110 = !DILocation(line: 464, column: 9, scope: !5107)
!5111 = !DILocation(line: 464, column: 7, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5106, file: !209, line: 464, column: 28)
!5113 = !DILocation(line: 466, column: 15, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !209, line: 467, column: 5)
!5115 = distinct !DILexicalBlock(scope: !5107, file: !209, line: 466, column: 5)
!5116 = !DILocalVariable(name: "tmp___2", scope: !5048, file: !209, line: 451, type: !17)
!5117 = !DILocation(line: 466, column: 10, scope: !5115)
!5118 = !DILocalVariable(name: "as", scope: !5048, file: !209, line: 450, type: !93)
!5119 = !DILocation(line: 467, column: 9, scope: !5115)
!5120 = !DILocation(line: 467, column: 14, scope: !5115)
!5121 = !DILocation(line: 468, column: 9, scope: !5115)
!5122 = !DILocation(line: 469, column: 16, scope: !5115)
!5123 = !DILocation(line: 470, column: 18, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5115, file: !209, line: 470, column: 5)
!5125 = !DILocation(line: 470, column: 9, scope: !5124)
!5126 = !DILocation(line: 470, column: 16, scope: !5124)
!5127 = !DILocation(line: 471, column: 10, scope: !5115)
!5128 = !DILocation(line: 471, column: 7, scope: !5115)
!5129 = distinct !{!5129, !5100, !5130}
!5130 = !DILocation(line: 473, column: 3, scope: !5101)
!5131 = !DILocation(line: 475, column: 3, scope: !5101)
!5132 = !DILocation(line: 474, column: 14, scope: !5065)
!5133 = !DILocation(line: 475, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !209, line: 476, column: 3)
!5135 = distinct !DILexicalBlock(scope: !5065, file: !209, line: 475, column: 3)
!5136 = !DILocation(line: 475, column: 13, scope: !5134)
!5137 = !DILocation(line: 478, column: 15, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !209, line: 479, column: 5)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !209, line: 478, column: 5)
!5140 = distinct !DILexicalBlock(scope: !5134, file: !209, line: 475, column: 13)
!5141 = !DILocalVariable(name: "tmp___3", scope: !5048, file: !209, line: 454, type: !13)
!5142 = !DILocalVariable(name: "line", scope: !5048, file: !209, line: 453, type: !13)
!5143 = !DILocation(line: 479, column: 9, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !209, line: 479, column: 9)
!5145 = !DILocation(line: 479, column: 30, scope: !5144)
!5146 = !DILocation(line: 479, column: 9, scope: !5140)
!5147 = !DILocation(line: 479, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !209, line: 481, column: 7)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !209, line: 480, column: 7)
!5150 = distinct !DILexicalBlock(scope: !5144, file: !209, line: 479, column: 62)
!5151 = !DILocation(line: 479, column: 7, scope: !5150)
!5152 = !DILocation(line: 481, column: 15, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !209, line: 482, column: 5)
!5154 = distinct !DILexicalBlock(scope: !5140, file: !209, line: 481, column: 5)
!5155 = !DILocalVariable(name: "tmp___6", scope: !5048, file: !209, line: 457, type: !6)
!5156 = !DILocation(line: 481, column: 17, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5140, file: !209, line: 481, column: 9)
!5158 = !DILocation(line: 481, column: 9, scope: !5140)
!5159 = !DILocation(line: 481, column: 12, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5157, file: !209, line: 481, column: 23)
!5161 = !DILocation(line: 482, column: 5, scope: !5160)
!5162 = !DILocation(line: 482, column: 17, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !209, line: 484, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !209, line: 483, column: 7)
!5165 = distinct !DILexicalBlock(scope: !5157, file: !209, line: 482, column: 12)
!5166 = !DILocalVariable(name: "tmp___5", scope: !5048, file: !209, line: 456, type: !6)
!5167 = !DILocation(line: 482, column: 19, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5165, file: !209, line: 482, column: 11)
!5169 = !DILocation(line: 482, column: 11, scope: !5165)
!5170 = !DILocation(line: 484, column: 19, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !209, line: 484, column: 9)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !209, line: 483, column: 9)
!5173 = distinct !DILexicalBlock(scope: !5168, file: !209, line: 482, column: 25)
!5174 = !DILocalVariable(name: "tmp___4", scope: !5048, file: !209, line: 455, type: !295)
!5175 = !DILocation(line: 484, column: 29, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !209, line: 484, column: 13)
!5177 = !DILocation(line: 484, column: 53, scope: !5176)
!5178 = !DILocation(line: 484, column: 46, scope: !5176)
!5179 = !DILocation(line: 484, column: 40, scope: !5176)
!5180 = !DILocation(line: 484, column: 38, scope: !5176)
!5181 = !DILocation(line: 484, column: 27, scope: !5176)
!5182 = !DILocation(line: 484, column: 13, scope: !5176)
!5183 = !DILocation(line: 484, column: 59, scope: !5176)
!5184 = !DILocation(line: 484, column: 13, scope: !5173)
!5185 = !DILocation(line: 484, column: 11, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5176, file: !209, line: 484, column: 67)
!5187 = !DILocation(line: 484, column: 26, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5176, file: !209, line: 484, column: 13)
!5189 = !DILocation(line: 484, column: 19, scope: !5188)
!5190 = !DILocation(line: 484, column: 13, scope: !5188)
!5191 = !DILocation(line: 484, column: 31, scope: !5188)
!5192 = !DILocation(line: 484, column: 38, scope: !5188)
!5193 = !DILocation(line: 485, column: 16, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5188, file: !209, line: 484, column: 38)
!5195 = !DILocation(line: 485, column: 20, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5194, file: !209, line: 485, column: 15)
!5197 = !DILocation(line: 485, column: 15, scope: !5194)
!5198 = !DILocation(line: 485, column: 13, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5196, file: !209, line: 485, column: 25)
!5200 = !DILocation(line: 487, column: 9, scope: !5194)
!5201 = !DILocation(line: 488, column: 7, scope: !5173)
!5202 = !DILocation(line: 0, scope: !5157)
!5203 = !DILocation(line: 488, column: 15, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !209, line: 491, column: 5)
!5205 = distinct !DILexicalBlock(scope: !5140, file: !209, line: 490, column: 5)
!5206 = !DILocalVariable(name: "tmp___7", scope: !5048, file: !209, line: 458, type: !17)
!5207 = !DILocation(line: 488, column: 14, scope: !5205)
!5208 = !DILocalVariable(name: "as___0", scope: !5048, file: !209, line: 452, type: !93)
!5209 = !DILocation(line: 489, column: 13, scope: !5205)
!5210 = !DILocation(line: 489, column: 18, scope: !5205)
!5211 = !DILocation(line: 490, column: 9, scope: !5205)
!5212 = !DILocation(line: 491, column: 20, scope: !5205)
!5213 = !DILocation(line: 492, column: 15, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5205, file: !209, line: 492, column: 5)
!5215 = !DILocalVariable(name: "tmp___8", scope: !5048, file: !209, line: 459, type: !10)
!5216 = !DILocation(line: 492, column: 22, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5205, file: !209, line: 494, column: 5)
!5218 = !DILocation(line: 492, column: 13, scope: !5217)
!5219 = !DILocation(line: 492, column: 20, scope: !5217)
!5220 = distinct !{!5220, !5133, !5221}
!5221 = !DILocation(line: 495, column: 3, scope: !5134)
!5222 = !DILocation(line: 497, column: 3, scope: !5134)
!5223 = !DILocation(line: 498, column: 27, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5065, file: !209, line: 498, column: 7)
!5225 = !DILocation(line: 498, column: 7, scope: !5224)
!5226 = !DILocation(line: 498, column: 33, scope: !5224)
!5227 = !DILocation(line: 498, column: 7, scope: !5065)
!5228 = !DILocation(line: 500, column: 15, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !209, line: 500, column: 5)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !209, line: 499, column: 5)
!5231 = distinct !DILexicalBlock(scope: !5224, file: !209, line: 498, column: 65)
!5232 = !DILocalVariable(name: "tmp___9", scope: !5048, file: !209, line: 460, type: !17)
!5233 = !DILocation(line: 500, column: 17, scope: !5230)
!5234 = !DILocation(line: 500, column: 9, scope: !5230)
!5235 = !DILocation(line: 500, column: 15, scope: !5230)
!5236 = !DILocation(line: 501, column: 10, scope: !5230)
!5237 = !DILocation(line: 501, column: 18, scope: !5230)
!5238 = !DILocation(line: 501, column: 23, scope: !5230)
!5239 = !DILocation(line: 502, column: 27, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5230, file: !209, line: 502, column: 5)
!5241 = !DILocation(line: 502, column: 10, scope: !5240)
!5242 = !DILocation(line: 502, column: 18, scope: !5240)
!5243 = !DILocation(line: 502, column: 25, scope: !5240)
!5244 = !DILocation(line: 505, column: 3, scope: !5231)
!5245 = !DILocation(line: 504, column: 3, scope: !5065)
!5246 = !DILocation(line: 506, column: 1, scope: !5048)
!5247 = distinct !DISubprogram(name: "do_nest", scope: !209, file: !209, line: 520, type: !220, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5248 = !DILocalVariable(name: "p", arg: 1, scope: !5247, file: !209, line: 520, type: !13)
!5249 = !DILocation(line: 0, scope: !5247)
!5250 = !DILocalVariable(name: "__cil_tmp5", scope: !5247, file: !209, line: 525, type: !27)
!5251 = !DILocation(line: 525, column: 9, scope: !5247)
!5252 = !DILocalVariable(name: "__cil_tmp6", scope: !5247, file: !209, line: 526, type: !27)
!5253 = !DILocation(line: 526, column: 9, scope: !5247)
!5254 = !DILocation(line: 523, column: 13, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !209, line: 530, column: 3)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !209, line: 529, column: 3)
!5257 = distinct !DILexicalBlock(scope: !5247, file: !209, line: 528, column: 3)
!5258 = !DILocalVariable(name: "tmp___1", scope: !5247, file: !209, line: 524, type: !6)
!5259 = !DILocation(line: 523, column: 15, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5257, file: !209, line: 523, column: 7)
!5261 = !DILocation(line: 523, column: 7, scope: !5257)
!5262 = !DILocation(line: 525, column: 9, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5264, file: !209, line: 525, column: 9)
!5264 = distinct !DILexicalBlock(scope: !5260, file: !209, line: 523, column: 21)
!5265 = !DILocation(line: 525, column: 20, scope: !5263)
!5266 = !DILocation(line: 525, column: 9, scope: !5264)
!5267 = !DILocation(line: 525, column: 7, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !209, line: 527, column: 7)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !209, line: 526, column: 7)
!5270 = distinct !DILexicalBlock(scope: !5263, file: !209, line: 525, column: 26)
!5271 = !DILocation(line: 528, column: 5, scope: !5270)
!5272 = !DILocation(line: 527, column: 13, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5263, file: !209, line: 528, column: 12)
!5274 = !DILocalVariable(name: "tmp", scope: !5247, file: !209, line: 522, type: !6)
!5275 = !DILocation(line: 527, column: 18, scope: !5273)
!5276 = !DILocation(line: 527, column: 33, scope: !5273)
!5277 = !DILocation(line: 527, column: 7, scope: !5273)
!5278 = !DILocation(line: 527, column: 31, scope: !5273)
!5279 = !DILocation(line: 528, column: 21, scope: !5273)
!5280 = !DILocation(line: 530, column: 3, scope: !5264)
!5281 = !DILocation(line: 531, column: 15, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !209, line: 532, column: 5)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !209, line: 531, column: 5)
!5284 = distinct !DILexicalBlock(scope: !5260, file: !209, line: 530, column: 10)
!5285 = !DILocalVariable(name: "tmp___0", scope: !5247, file: !209, line: 523, type: !6)
!5286 = !DILocation(line: 531, column: 17, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5284, file: !209, line: 531, column: 9)
!5288 = !DILocation(line: 531, column: 9, scope: !5284)
!5289 = !DILocation(line: 533, column: 11, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5291, file: !209, line: 533, column: 11)
!5291 = distinct !DILexicalBlock(scope: !5287, file: !209, line: 531, column: 23)
!5292 = !DILocation(line: 533, column: 22, scope: !5290)
!5293 = !DILocation(line: 533, column: 11, scope: !5291)
!5294 = !DILocation(line: 533, column: 9, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !209, line: 535, column: 9)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !209, line: 534, column: 9)
!5297 = distinct !DILexicalBlock(scope: !5290, file: !209, line: 533, column: 28)
!5298 = !DILocation(line: 536, column: 7, scope: !5297)
!5299 = !DILocation(line: 534, column: 20, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5290, file: !209, line: 536, column: 14)
!5301 = !DILocation(line: 534, column: 44, scope: !5300)
!5302 = !DILocation(line: 534, column: 25, scope: !5300)
!5303 = !DILocation(line: 534, column: 23, scope: !5300)
!5304 = !DILocation(line: 536, column: 5, scope: !5291)
!5305 = !DILocation(line: 536, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !209, line: 538, column: 7)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !209, line: 537, column: 7)
!5308 = distinct !DILexicalBlock(scope: !5287, file: !209, line: 536, column: 12)
!5309 = !DILocation(line: 537, column: 3, scope: !5257)
!5310 = distinct !DISubprogram(name: "do_nonl", scope: !209, file: !209, line: 553, type: !220, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5311 = !DILocalVariable(name: "p", arg: 1, scope: !5310, file: !209, line: 553, type: !13)
!5312 = !DILocation(line: 0, scope: !5310)
!5313 = !DILocation(line: 557, column: 9, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !209, line: 560, column: 3)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !209, line: 559, column: 3)
!5316 = distinct !DILexicalBlock(scope: !5310, file: !209, line: 558, column: 3)
!5317 = !DILocalVariable(name: "tmp", scope: !5310, file: !209, line: 556, type: !10)
!5318 = !DILocation(line: 557, column: 19, scope: !5315)
!5319 = !DILocalVariable(name: "len", scope: !5310, file: !209, line: 555, type: !6)
!5320 = !DILocation(line: 558, column: 11, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5316, file: !209, line: 558, column: 7)
!5322 = !DILocation(line: 558, column: 7, scope: !5316)
!5323 = !DILocation(line: 559, column: 3, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !209, line: 558, column: 19)
!5325 = !DILocation(line: 0, scope: !5316)
!5326 = !DILocation(line: 559, column: 3, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !209, line: 561, column: 3)
!5328 = distinct !DILexicalBlock(scope: !5316, file: !209, line: 560, column: 3)
!5329 = !DILocation(line: 560, column: 13, scope: !5328)
!5330 = !DILocation(line: 561, column: 3, scope: !5316)
!5331 = distinct !DISubprogram(name: "do_pop", scope: !209, file: !209, line: 577, type: !220, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5332 = !DILocalVariable(name: "p", arg: 1, scope: !5331, file: !209, line: 577, type: !13)
!5333 = !DILocation(line: 0, scope: !5331)
!5334 = !DILocation(line: 582, column: 13, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !209, line: 582, column: 7)
!5336 = distinct !DILexicalBlock(scope: !5331, file: !209, line: 582, column: 3)
!5337 = !DILocation(line: 582, column: 7, scope: !5335)
!5338 = !DILocation(line: 582, column: 16, scope: !5335)
!5339 = !DILocation(line: 582, column: 7, scope: !5336)
!5340 = !DILocation(line: 584, column: 11, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5335, file: !209, line: 582, column: 22)
!5342 = !DILocation(line: 585, column: 5, scope: !5341)
!5343 = !DILocation(line: 588, column: 9, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !209, line: 588, column: 3)
!5345 = distinct !DILexicalBlock(scope: !5336, file: !209, line: 587, column: 3)
!5346 = !DILocalVariable(name: "tmp", scope: !5331, file: !209, line: 580, type: !295)
!5347 = !DILocation(line: 588, column: 23, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5336, file: !209, line: 588, column: 7)
!5349 = !DILocation(line: 588, column: 36, scope: !5348)
!5350 = !DILocation(line: 588, column: 30, scope: !5348)
!5351 = !DILocation(line: 588, column: 28, scope: !5348)
!5352 = !DILocation(line: 588, column: 21, scope: !5348)
!5353 = !DILocation(line: 588, column: 7, scope: !5348)
!5354 = !DILocation(line: 588, column: 40, scope: !5348)
!5355 = !DILocation(line: 588, column: 7, scope: !5336)
!5356 = !DILocation(line: 588, column: 19, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !209, line: 588, column: 9)
!5358 = distinct !DILexicalBlock(scope: !5348, file: !209, line: 588, column: 47)
!5359 = !DILocation(line: 588, column: 15, scope: !5357)
!5360 = !DILocation(line: 588, column: 9, scope: !5357)
!5361 = !DILocation(line: 588, column: 24, scope: !5357)
!5362 = !DILocation(line: 588, column: 9, scope: !5358)
!5363 = !DILocation(line: 588, column: 17, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5365, file: !209, line: 590, column: 7)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !209, line: 589, column: 7)
!5366 = distinct !DILexicalBlock(scope: !5357, file: !209, line: 588, column: 30)
!5367 = !DILocation(line: 588, column: 7, scope: !5364)
!5368 = !DILocation(line: 588, column: 7, scope: !5366)
!5369 = !DILocation(line: 590, column: 3, scope: !5358)
!5370 = !DILocation(line: 588, column: 15, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !209, line: 592, column: 5)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !209, line: 591, column: 5)
!5373 = distinct !DILexicalBlock(scope: !5348, file: !209, line: 590, column: 10)
!5374 = !DILocation(line: 588, column: 5, scope: !5371)
!5375 = !DILocation(line: 588, column: 5, scope: !5373)
!5376 = !DILocation(line: 590, column: 8, scope: !5336)
!5377 = !DILocalVariable(name: "ps", scope: !5331, file: !209, line: 579, type: !118)
!5378 = !DILocation(line: 590, column: 3, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !209, line: 592, column: 3)
!5380 = distinct !DILexicalBlock(scope: !5336, file: !209, line: 591, column: 3)
!5381 = !DILocation(line: 0, scope: !5336)
!5382 = !DILocation(line: 590, column: 13, scope: !5379)
!5383 = !DILocation(line: 590, column: 12, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !209, line: 590, column: 9)
!5385 = distinct !DILexicalBlock(scope: !5379, file: !209, line: 590, column: 13)
!5386 = !DILocation(line: 590, column: 31, scope: !5384)
!5387 = !DILocation(line: 590, column: 9, scope: !5385)
!5388 = !DILocation(line: 590, column: 7, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5384, file: !209, line: 590, column: 64)
!5390 = !DILocation(line: 591, column: 13, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5385, file: !209, line: 591, column: 9)
!5392 = !DILocation(line: 591, column: 29, scope: !5391)
!5393 = !DILocation(line: 591, column: 23, scope: !5391)
!5394 = !DILocation(line: 591, column: 20, scope: !5391)
!5395 = !DILocation(line: 591, column: 9, scope: !5385)
!5396 = !DILocation(line: 591, column: 7, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5391, file: !209, line: 591, column: 33)
!5398 = !DILocation(line: 590, column: 14, scope: !5385)
!5399 = distinct !{!5399, !5378, !5400}
!5400 = !DILocation(line: 591, column: 3, scope: !5379)
!5401 = !DILocation(line: 593, column: 3, scope: !5379)
!5402 = !DILocation(line: 593, column: 7, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5336, file: !209, line: 593, column: 7)
!5404 = !DILocation(line: 593, column: 26, scope: !5403)
!5405 = !DILocation(line: 593, column: 7, scope: !5336)
!5406 = !DILocation(line: 593, column: 19, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5403, file: !209, line: 593, column: 58)
!5408 = !DILocation(line: 593, column: 13, scope: !5407)
!5409 = !DILocation(line: 593, column: 11, scope: !5407)
!5410 = !DILocation(line: 594, column: 3, scope: !5407)
!5411 = !DILocation(line: 594, column: 3, scope: !5336)
!5412 = !DILocation(line: 596, column: 1, scope: !5331)
!5413 = distinct !DISubprogram(name: "do_push", scope: !209, file: !209, line: 611, type: !220, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5414 = !DILocalVariable(name: "p", arg: 1, scope: !5413, file: !209, line: 611, type: !13)
!5415 = !DILocation(line: 0, scope: !5413)
!5416 = !DILocalVariable(name: "length", scope: !5413, file: !209, line: 613, type: !6)
!5417 = !DILocation(line: 613, column: 7, scope: !5413)
!5418 = !DILocalVariable(name: "buffer", scope: !5413, file: !209, line: 617, type: !229)
!5419 = !DILocation(line: 617, column: 10, scope: !5413)
!5420 = !DILocalVariable(name: "__cil_tmp17", scope: !5413, file: !209, line: 628, type: !17)
!5421 = !DILocation(line: 628, column: 9, scope: !5413)
!5422 = !DILocalVariable(name: "__cil_tmp18", scope: !5413, file: !209, line: 629, type: !27)
!5423 = !DILocation(line: 629, column: 9, scope: !5413)
!5424 = !DILocalVariable(name: "letter", scope: !5413, file: !209, line: 614, type: !6)
!5425 = !DILocalVariable(name: "porig", scope: !5413, file: !209, line: 616, type: !13)
!5426 = !DILocation(line: 620, column: 13, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5428, file: !209, line: 618, column: 3)
!5428 = distinct !DILexicalBlock(scope: !5429, file: !209, line: 632, column: 3)
!5429 = distinct !DILexicalBlock(scope: !5413, file: !209, line: 631, column: 3)
!5430 = !DILocalVariable(name: "tmp___1", scope: !5413, file: !209, line: 620, type: !295)
!5431 = !DILocation(line: 620, column: 23, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !209, line: 620, column: 7)
!5433 = !DILocation(line: 620, column: 40, scope: !5432)
!5434 = !DILocation(line: 620, column: 34, scope: !5432)
!5435 = !DILocation(line: 620, column: 32, scope: !5432)
!5436 = !DILocation(line: 620, column: 21, scope: !5432)
!5437 = !DILocation(line: 620, column: 7, scope: !5432)
!5438 = !DILocation(line: 620, column: 44, scope: !5432)
!5439 = !DILocation(line: 620, column: 7, scope: !5429)
!5440 = !DILocation(line: 620, column: 19, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !209, line: 620, column: 9)
!5442 = distinct !DILexicalBlock(scope: !5432, file: !209, line: 620, column: 51)
!5443 = !DILocation(line: 620, column: 15, scope: !5441)
!5444 = !DILocation(line: 620, column: 9, scope: !5441)
!5445 = !DILocation(line: 620, column: 24, scope: !5441)
!5446 = !DILocation(line: 620, column: 9, scope: !5442)
!5447 = !DILocation(line: 620, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5441, file: !209, line: 620, column: 30)
!5449 = !DILocation(line: 620, column: 17, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !209, line: 623, column: 7)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !209, line: 622, column: 7)
!5452 = distinct !DILexicalBlock(scope: !5441, file: !209, line: 621, column: 12)
!5453 = !DILocalVariable(name: "tmp___2", scope: !5413, file: !209, line: 621, type: !295)
!5454 = !DILocation(line: 620, column: 27, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5452, file: !209, line: 620, column: 11)
!5456 = !DILocation(line: 620, column: 48, scope: !5455)
!5457 = !DILocation(line: 620, column: 44, scope: !5455)
!5458 = !DILocation(line: 620, column: 38, scope: !5455)
!5459 = !DILocation(line: 620, column: 36, scope: !5455)
!5460 = !DILocation(line: 620, column: 25, scope: !5455)
!5461 = !DILocation(line: 620, column: 11, scope: !5455)
!5462 = !DILocation(line: 620, column: 54, scope: !5455)
!5463 = !DILocation(line: 620, column: 11, scope: !5452)
!5464 = !DILocation(line: 620, column: 62, scope: !5455)
!5465 = !DILocalVariable(name: "tmp", scope: !5413, file: !209, line: 618, type: !13)
!5466 = !DILocation(line: 622, column: 11, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5455, file: !209, line: 620, column: 62)
!5468 = !DILocation(line: 622, column: 24, scope: !5467)
!5469 = !DILocation(line: 622, column: 18, scope: !5467)
!5470 = !DILocation(line: 623, column: 9, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5472, file: !209, line: 624, column: 9)
!5472 = distinct !DILexicalBlock(scope: !5467, file: !209, line: 623, column: 9)
!5473 = !DILocation(line: 0, scope: !5467)
!5474 = !DILocation(line: 623, column: 19, scope: !5471)
!5475 = !DILocation(line: 623, column: 21, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !209, line: 627, column: 11)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !209, line: 626, column: 11)
!5478 = distinct !DILexicalBlock(scope: !5471, file: !209, line: 623, column: 19)
!5479 = !DILocalVariable(name: "tmp___0", scope: !5413, file: !209, line: 619, type: !295)
!5480 = !DILocation(line: 623, column: 34, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5478, file: !209, line: 623, column: 15)
!5482 = !DILocation(line: 623, column: 51, scope: !5481)
!5483 = !DILocation(line: 623, column: 45, scope: !5481)
!5484 = !DILocation(line: 623, column: 43, scope: !5481)
!5485 = !DILocation(line: 623, column: 32, scope: !5481)
!5486 = !DILocation(line: 623, column: 18, scope: !5481)
!5487 = !DILocation(line: 623, column: 55, scope: !5481)
!5488 = !DILocation(line: 623, column: 15, scope: !5478)
!5489 = !DILocation(line: 623, column: 13, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5481, file: !209, line: 623, column: 64)
!5491 = !DILocation(line: 623, column: 13, scope: !5478)
!5492 = distinct !{!5492, !5470, !5493}
!5493 = !DILocation(line: 624, column: 9, scope: !5471)
!5494 = !DILocation(line: 626, column: 9, scope: !5471)
!5495 = !DILocation(line: 629, column: 7, scope: !5467)
!5496 = !DILocation(line: 0, scope: !5429)
!5497 = !DILocation(line: 631, column: 3, scope: !5442)
!5498 = !DILocation(line: 626, column: 13, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5429, file: !209, line: 626, column: 7)
!5500 = !DILocation(line: 626, column: 7, scope: !5499)
!5501 = !DILocation(line: 626, column: 16, scope: !5499)
!5502 = !DILocation(line: 626, column: 7, scope: !5429)
!5503 = !DILocation(line: 628, column: 65, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5505, file: !209, line: 628, column: 5)
!5505 = distinct !DILexicalBlock(scope: !5506, file: !209, line: 627, column: 5)
!5506 = distinct !DILexicalBlock(scope: !5499, file: !209, line: 626, column: 23)
!5507 = !DILocation(line: 628, column: 15, scope: !5504)
!5508 = !DILocalVariable(name: "tmp___3", scope: !5413, file: !209, line: 623, type: !13)
!5509 = !DILocalVariable(name: "s", scope: !5413, file: !209, line: 622, type: !13)
!5510 = !DILocation(line: 629, column: 10, scope: !5505)
!5511 = !DILocation(line: 629, column: 7, scope: !5505)
!5512 = !DILocation(line: 630, column: 5, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5514, file: !209, line: 632, column: 5)
!5514 = distinct !DILexicalBlock(scope: !5506, file: !209, line: 631, column: 5)
!5515 = !DILocation(line: 0, scope: !5506)
!5516 = !DILocation(line: 630, column: 15, scope: !5513)
!5517 = !DILocation(line: 630, column: 17, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !209, line: 634, column: 7)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !209, line: 633, column: 7)
!5520 = distinct !DILexicalBlock(scope: !5513, file: !209, line: 630, column: 15)
!5521 = !DILocalVariable(name: "tmp___4", scope: !5413, file: !209, line: 624, type: !295)
!5522 = !DILocation(line: 630, column: 30, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5520, file: !209, line: 630, column: 11)
!5524 = !DILocation(line: 630, column: 47, scope: !5523)
!5525 = !DILocation(line: 630, column: 41, scope: !5523)
!5526 = !DILocation(line: 630, column: 39, scope: !5523)
!5527 = !DILocation(line: 630, column: 28, scope: !5523)
!5528 = !DILocation(line: 630, column: 14, scope: !5523)
!5529 = !DILocation(line: 630, column: 51, scope: !5523)
!5530 = !DILocation(line: 630, column: 11, scope: !5520)
!5531 = !DILocation(line: 630, column: 9, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5523, file: !209, line: 630, column: 60)
!5533 = !DILocation(line: 630, column: 9, scope: !5520)
!5534 = distinct !{!5534, !5512, !5535}
!5535 = !DILocation(line: 631, column: 5, scope: !5513)
!5536 = !DILocation(line: 633, column: 5, scope: !5513)
!5537 = !DILocation(line: 631, column: 15, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5506, file: !209, line: 631, column: 9)
!5539 = !DILocation(line: 631, column: 9, scope: !5538)
!5540 = !DILocation(line: 631, column: 18, scope: !5538)
!5541 = !DILocation(line: 631, column: 9, scope: !5506)
!5542 = !DILocation(line: 631, column: 17, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5544, file: !209, line: 633, column: 7)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !209, line: 632, column: 7)
!5545 = distinct !DILexicalBlock(scope: !5538, file: !209, line: 631, column: 24)
!5546 = !DILocalVariable(name: "tmp___5", scope: !5413, file: !209, line: 625, type: !10)
!5547 = !DILocation(line: 631, column: 36, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5544, file: !209, line: 633, column: 7)
!5549 = !DILocation(line: 631, column: 45, scope: !5548)
!5550 = !DILocation(line: 631, column: 51, scope: !5548)
!5551 = !DILocation(line: 631, column: 74, scope: !5548)
!5552 = !DILocation(line: 631, column: 7, scope: !5548)
!5553 = !DILocation(line: 634, column: 5, scope: !5545)
!5554 = !DILocation(line: 634, column: 3, scope: !5506)
!5555 = !DILocation(line: 636, column: 13, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !209, line: 636, column: 3)
!5557 = distinct !DILexicalBlock(scope: !5429, file: !209, line: 635, column: 3)
!5558 = !DILocalVariable(name: "tmp___6", scope: !5413, file: !209, line: 626, type: !10)
!5559 = !DILocation(line: 636, column: 10, scope: !5557)
!5560 = !DILocation(line: 637, column: 67, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5557, file: !209, line: 637, column: 3)
!5562 = !DILocation(line: 637, column: 51, scope: !5561)
!5563 = !DILocation(line: 637, column: 49, scope: !5561)
!5564 = !DILocation(line: 637, column: 25, scope: !5561)
!5565 = !DILocation(line: 637, column: 13, scope: !5561)
!5566 = !DILocalVariable(name: "tmp___7", scope: !5413, file: !209, line: 627, type: !17)
!5567 = !DILocation(line: 637, column: 8, scope: !5557)
!5568 = !DILocalVariable(name: "ps", scope: !5413, file: !209, line: 615, type: !118)
!5569 = !DILocation(line: 638, column: 7, scope: !5557)
!5570 = !DILocation(line: 638, column: 14, scope: !5557)
!5571 = !DILocation(line: 639, column: 40, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5557, file: !209, line: 639, column: 3)
!5573 = !DILocation(line: 639, column: 35, scope: !5572)
!5574 = !DILocation(line: 640, column: 19, scope: !5572)
!5575 = !DILocation(line: 639, column: 3, scope: !5572)
!5576 = !DILocation(line: 640, column: 7, scope: !5557)
!5577 = !DILocation(line: 640, column: 14, scope: !5557)
!5578 = !DILocation(line: 640, column: 3, scope: !5557)
!5579 = !DILocation(line: 640, column: 22, scope: !5557)
!5580 = !DILocation(line: 641, column: 14, scope: !5557)
!5581 = !DILocation(line: 641, column: 7, scope: !5557)
!5582 = !DILocation(line: 641, column: 12, scope: !5557)
!5583 = !DILocation(line: 642, column: 10, scope: !5557)
!5584 = !DILocation(line: 643, column: 3, scope: !5429)
!5585 = distinct !DISubprogram(name: "do_revision", scope: !209, file: !209, line: 659, type: !220, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5586 = !DILocalVariable(name: "p", arg: 1, scope: !5585, file: !209, line: 659, type: !13)
!5587 = !DILocation(line: 0, scope: !5585)
!5588 = !DILocalVariable(name: "__cil_tmp5", scope: !5585, file: !209, line: 664, type: !27)
!5589 = !DILocation(line: 664, column: 9, scope: !5585)
!5590 = !DILocation(line: 662, column: 23, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !209, line: 662, column: 7)
!5592 = distinct !DILexicalBlock(scope: !5585, file: !209, line: 666, column: 3)
!5593 = !DILocation(line: 662, column: 7, scope: !5591)
!5594 = !DILocation(line: 662, column: 32, scope: !5591)
!5595 = !DILocation(line: 662, column: 7, scope: !5592)
!5596 = !DILocation(line: 664, column: 18, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !209, line: 664, column: 5)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !209, line: 663, column: 5)
!5599 = distinct !DILexicalBlock(scope: !5591, file: !209, line: 662, column: 64)
!5600 = !DILocation(line: 664, column: 5, scope: !5597)
!5601 = !DILocation(line: 665, column: 14, scope: !5598)
!5602 = !DILocation(line: 667, column: 3, scope: !5599)
!5603 = !DILocation(line: 668, column: 13, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5592, file: !209, line: 668, column: 7)
!5605 = !DILocation(line: 668, column: 7, scope: !5604)
!5606 = !DILocation(line: 668, column: 16, scope: !5604)
!5607 = !DILocation(line: 668, column: 7, scope: !5592)
!5608 = !DILocation(line: 668, column: 15, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !209, line: 670, column: 5)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !209, line: 669, column: 5)
!5611 = distinct !DILexicalBlock(scope: !5604, file: !209, line: 668, column: 22)
!5612 = !DILocalVariable(name: "tmp___1", scope: !5585, file: !209, line: 663, type: !6)
!5613 = !DILocation(line: 668, column: 17, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5611, file: !209, line: 668, column: 9)
!5615 = !DILocation(line: 668, column: 9, scope: !5611)
!5616 = !DILocation(line: 670, column: 13, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !209, line: 670, column: 7)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !209, line: 669, column: 7)
!5619 = distinct !DILexicalBlock(scope: !5614, file: !209, line: 668, column: 23)
!5620 = !DILocalVariable(name: "tmp", scope: !5585, file: !209, line: 661, type: !10)
!5621 = !DILocation(line: 670, column: 39, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5618, file: !209, line: 672, column: 7)
!5623 = !DILocation(line: 670, column: 17, scope: !5622)
!5624 = !DILocalVariable(name: "tmp___0", scope: !5585, file: !209, line: 662, type: !17)
!5625 = !DILocation(line: 670, column: 16, scope: !5618)
!5626 = !DILocation(line: 671, column: 48, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5618, file: !209, line: 671, column: 7)
!5628 = !DILocation(line: 671, column: 7, scope: !5627)
!5629 = !DILocation(line: 674, column: 5, scope: !5619)
!5630 = !DILocation(line: 675, column: 3, scope: !5611)
!5631 = !DILocation(line: 673, column: 3, scope: !5592)
!5632 = distinct !DISubprogram(name: "do_set", scope: !209, file: !209, line: 688, type: !220, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5633 = !DILocalVariable(name: "p", arg: 1, scope: !5632, file: !209, line: 688, type: !13)
!5634 = !DILocation(line: 0, scope: !5632)
!5635 = !DILocalVariable(name: "length", scope: !5632, file: !209, line: 690, type: !6)
!5636 = !DILocation(line: 690, column: 7, scope: !5632)
!5637 = !DILocalVariable(name: "buffer", scope: !5632, file: !209, line: 693, type: !229)
!5638 = !DILocation(line: 693, column: 10, scope: !5632)
!5639 = !DILocalVariable(name: "__cil_tmp14", scope: !5632, file: !209, line: 702, type: !17)
!5640 = !DILocation(line: 702, column: 9, scope: !5632)
!5641 = !DILocalVariable(name: "__cil_tmp15", scope: !5632, file: !209, line: 703, type: !27)
!5642 = !DILocation(line: 703, column: 9, scope: !5632)
!5643 = !DILocalVariable(name: "porig", scope: !5632, file: !209, line: 692, type: !13)
!5644 = !DILocation(line: 695, column: 59, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !209, line: 694, column: 3)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 706, column: 3)
!5647 = distinct !DILexicalBlock(scope: !5632, file: !209, line: 705, column: 3)
!5648 = !DILocation(line: 695, column: 9, scope: !5645)
!5649 = !DILocalVariable(name: "tmp", scope: !5632, file: !209, line: 695, type: !13)
!5650 = !DILocalVariable(name: "name", scope: !5632, file: !209, line: 694, type: !13)
!5651 = !DILocation(line: 697, column: 8, scope: !5646)
!5652 = !DILocation(line: 697, column: 5, scope: !5646)
!5653 = !DILocation(line: 698, column: 3, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !209, line: 700, column: 3)
!5655 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 699, column: 3)
!5656 = !DILocation(line: 0, scope: !5647)
!5657 = !DILocation(line: 698, column: 13, scope: !5654)
!5658 = !DILocation(line: 698, column: 15, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !209, line: 702, column: 5)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !209, line: 701, column: 5)
!5661 = distinct !DILexicalBlock(scope: !5654, file: !209, line: 698, column: 13)
!5662 = !DILocalVariable(name: "tmp___0", scope: !5632, file: !209, line: 696, type: !295)
!5663 = !DILocation(line: 698, column: 28, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5661, file: !209, line: 698, column: 9)
!5665 = !DILocation(line: 698, column: 45, scope: !5664)
!5666 = !DILocation(line: 698, column: 39, scope: !5664)
!5667 = !DILocation(line: 698, column: 37, scope: !5664)
!5668 = !DILocation(line: 698, column: 26, scope: !5664)
!5669 = !DILocation(line: 698, column: 12, scope: !5664)
!5670 = !DILocation(line: 698, column: 49, scope: !5664)
!5671 = !DILocation(line: 698, column: 9, scope: !5661)
!5672 = !DILocation(line: 698, column: 7, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5664, file: !209, line: 698, column: 58)
!5674 = !DILocation(line: 698, column: 7, scope: !5661)
!5675 = distinct !{!5675, !5653, !5676}
!5676 = !DILocation(line: 699, column: 3, scope: !5654)
!5677 = !DILocation(line: 701, column: 3, scope: !5654)
!5678 = !DILocation(line: 700, column: 13, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !209, line: 705, column: 3)
!5680 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 704, column: 3)
!5681 = !DILocalVariable(name: "tmp___1", scope: !5632, file: !209, line: 697, type: !10)
!5682 = !DILocation(line: 700, column: 53, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !209, line: 702, column: 3)
!5684 = !DILocation(line: 700, column: 51, scope: !5683)
!5685 = !DILocation(line: 700, column: 25, scope: !5683)
!5686 = !DILocation(line: 700, column: 13, scope: !5683)
!5687 = !DILocalVariable(name: "tmp___2", scope: !5632, file: !209, line: 698, type: !17)
!5688 = !DILocation(line: 700, column: 7, scope: !5680)
!5689 = !DILocalVariable(name: "t", scope: !5632, file: !209, line: 691, type: !137)
!5690 = !DILocation(line: 701, column: 48, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5680, file: !209, line: 701, column: 3)
!5692 = !DILocation(line: 701, column: 44, scope: !5691)
!5693 = !DILocation(line: 701, column: 3, scope: !5691)
!5694 = !DILocation(line: 703, column: 13, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5680, file: !209, line: 703, column: 3)
!5696 = !DILocation(line: 703, column: 6, scope: !5695)
!5697 = !DILocation(line: 703, column: 11, scope: !5695)
!5698 = !DILocation(line: 705, column: 8, scope: !5680)
!5699 = !DILocation(line: 705, column: 5, scope: !5680)
!5700 = !DILocation(line: 706, column: 3, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !209, line: 708, column: 3)
!5702 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 707, column: 3)
!5703 = !DILocation(line: 706, column: 13, scope: !5701)
!5704 = !DILocation(line: 706, column: 15, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !209, line: 710, column: 5)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !209, line: 709, column: 5)
!5707 = distinct !DILexicalBlock(scope: !5701, file: !209, line: 706, column: 13)
!5708 = !DILocalVariable(name: "tmp___3", scope: !5632, file: !209, line: 699, type: !295)
!5709 = !DILocation(line: 706, column: 28, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5707, file: !209, line: 706, column: 9)
!5711 = !DILocation(line: 706, column: 45, scope: !5710)
!5712 = !DILocation(line: 706, column: 39, scope: !5710)
!5713 = !DILocation(line: 706, column: 37, scope: !5710)
!5714 = !DILocation(line: 706, column: 26, scope: !5710)
!5715 = !DILocation(line: 706, column: 12, scope: !5710)
!5716 = !DILocation(line: 706, column: 49, scope: !5710)
!5717 = !DILocation(line: 706, column: 9, scope: !5707)
!5718 = !DILocation(line: 706, column: 7, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5710, file: !209, line: 706, column: 58)
!5720 = !DILocation(line: 706, column: 7, scope: !5707)
!5721 = distinct !{!5721, !5700, !5722}
!5722 = !DILocation(line: 707, column: 3, scope: !5701)
!5723 = !DILocation(line: 709, column: 3, scope: !5701)
!5724 = !DILocation(line: 707, column: 13, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 707, column: 7)
!5726 = !DILocation(line: 707, column: 7, scope: !5725)
!5727 = !DILocation(line: 707, column: 16, scope: !5725)
!5728 = !DILocation(line: 707, column: 7, scope: !5647)
!5729 = !DILocation(line: 707, column: 15, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !209, line: 709, column: 5)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !209, line: 708, column: 5)
!5732 = distinct !DILexicalBlock(scope: !5725, file: !209, line: 707, column: 22)
!5733 = !DILocalVariable(name: "tmp___4", scope: !5632, file: !209, line: 700, type: !10)
!5734 = !DILocation(line: 707, column: 33, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5731, file: !209, line: 709, column: 5)
!5736 = !DILocation(line: 707, column: 42, scope: !5735)
!5737 = !DILocation(line: 707, column: 48, scope: !5735)
!5738 = !DILocation(line: 707, column: 71, scope: !5735)
!5739 = !DILocation(line: 707, column: 5, scope: !5735)
!5740 = !DILocation(line: 710, column: 3, scope: !5732)
!5741 = !DILocation(line: 710, column: 13, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !209, line: 712, column: 3)
!5743 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 711, column: 3)
!5744 = !DILocalVariable(name: "tmp___5", scope: !5632, file: !209, line: 701, type: !6)
!5745 = !DILocation(line: 710, column: 9, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5647, file: !209, line: 710, column: 7)
!5747 = !DILocation(line: 710, column: 7, scope: !5647)
!5748 = !DILocation(line: 710, column: 5, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !209, line: 712, column: 5)
!5750 = distinct !DILexicalBlock(scope: !5751, file: !209, line: 711, column: 5)
!5751 = distinct !DILexicalBlock(scope: !5746, file: !209, line: 710, column: 18)
!5752 = !DILocation(line: 713, column: 3, scope: !5751)
!5753 = !DILocation(line: 711, column: 3, scope: !5647)
!5754 = distinct !DISubprogram(name: "readnumber", scope: !209, file: !209, line: 36, type: !5755, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!6, !13}
!5757 = !DILocalVariable(name: "p", arg: 1, scope: !5754, file: !209, line: 36, type: !13)
!5758 = !DILocation(line: 0, scope: !5754)
!5759 = !DILocalVariable(name: "n", scope: !5754, file: !209, line: 38, type: !6)
!5760 = !DILocation(line: 40, column: 9, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !209, line: 40, column: 3)
!5762 = distinct !DILexicalBlock(scope: !5763, file: !209, line: 45, column: 3)
!5763 = distinct !DILexicalBlock(scope: !5754, file: !209, line: 44, column: 3)
!5764 = !DILocalVariable(name: "tmp", scope: !5754, file: !209, line: 39, type: !295)
!5765 = !DILocation(line: 40, column: 26, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5763, file: !209, line: 40, column: 7)
!5767 = !DILocation(line: 40, column: 39, scope: !5766)
!5768 = !DILocation(line: 40, column: 33, scope: !5766)
!5769 = !DILocation(line: 40, column: 31, scope: !5766)
!5770 = !DILocation(line: 40, column: 24, scope: !5766)
!5771 = !DILocation(line: 40, column: 10, scope: !5766)
!5772 = !DILocation(line: 40, column: 43, scope: !5766)
!5773 = !DILocation(line: 40, column: 7, scope: !5763)
!5774 = !DILocation(line: 40, column: 15, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !209, line: 42, column: 5)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !209, line: 41, column: 5)
!5777 = distinct !DILexicalBlock(scope: !5766, file: !209, line: 40, column: 52)
!5778 = !DILocation(line: 40, column: 5, scope: !5775)
!5779 = !DILocation(line: 40, column: 5, scope: !5777)
!5780 = !DILocation(line: 41, column: 3, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5782, file: !209, line: 43, column: 3)
!5782 = distinct !DILexicalBlock(scope: !5763, file: !209, line: 42, column: 3)
!5783 = !DILocation(line: 0, scope: !5763)
!5784 = !DILocation(line: 41, column: 13, scope: !5781)
!5785 = !DILocation(line: 41, column: 15, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5787, file: !209, line: 45, column: 5)
!5787 = distinct !DILexicalBlock(scope: !5788, file: !209, line: 44, column: 5)
!5788 = distinct !DILexicalBlock(scope: !5781, file: !209, line: 41, column: 13)
!5789 = !DILocalVariable(name: "tmp___1", scope: !5754, file: !209, line: 41, type: !295)
!5790 = !DILocation(line: 41, column: 28, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5788, file: !209, line: 41, column: 9)
!5792 = !DILocation(line: 41, column: 45, scope: !5791)
!5793 = !DILocation(line: 41, column: 39, scope: !5791)
!5794 = !DILocation(line: 41, column: 37, scope: !5791)
!5795 = !DILocation(line: 41, column: 26, scope: !5791)
!5796 = !DILocation(line: 41, column: 12, scope: !5791)
!5797 = !DILocation(line: 41, column: 49, scope: !5791)
!5798 = !DILocation(line: 41, column: 9, scope: !5788)
!5799 = !DILocation(line: 41, column: 7, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5791, file: !209, line: 41, column: 58)
!5801 = !DILocalVariable(name: "tmp___0", scope: !5754, file: !209, line: 40, type: !13)
!5802 = !DILocation(line: 41, column: 7, scope: !5788)
!5803 = !DILocation(line: 41, column: 12, scope: !5788)
!5804 = !DILocation(line: 41, column: 25, scope: !5788)
!5805 = !DILocation(line: 41, column: 19, scope: !5788)
!5806 = !DILocation(line: 41, column: 17, scope: !5788)
!5807 = !DILocation(line: 41, column: 35, scope: !5788)
!5808 = distinct !{!5808, !5780, !5809}
!5809 = !DILocation(line: 42, column: 3, scope: !5781)
!5810 = !DILocation(line: 44, column: 3, scope: !5781)
!5811 = !DILocation(line: 42, column: 3, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5813, file: !209, line: 48, column: 3)
!5813 = distinct !DILexicalBlock(scope: !5763, file: !209, line: 47, column: 3)
!5814 = !DILocation(line: 42, column: 13, scope: !5812)
!5815 = !DILocation(line: 42, column: 15, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !209, line: 46, column: 5)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !209, line: 45, column: 5)
!5818 = distinct !DILexicalBlock(scope: !5812, file: !209, line: 42, column: 13)
!5819 = !DILocalVariable(name: "tmp___2", scope: !5754, file: !209, line: 42, type: !295)
!5820 = !DILocation(line: 42, column: 28, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5818, file: !209, line: 42, column: 9)
!5822 = !DILocation(line: 42, column: 45, scope: !5821)
!5823 = !DILocation(line: 42, column: 39, scope: !5821)
!5824 = !DILocation(line: 42, column: 37, scope: !5821)
!5825 = !DILocation(line: 42, column: 26, scope: !5821)
!5826 = !DILocation(line: 42, column: 12, scope: !5821)
!5827 = !DILocation(line: 42, column: 49, scope: !5821)
!5828 = !DILocation(line: 42, column: 9, scope: !5818)
!5829 = !DILocation(line: 42, column: 7, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5821, file: !209, line: 42, column: 58)
!5831 = !DILocation(line: 42, column: 7, scope: !5818)
!5832 = distinct !{!5832, !5811, !5833}
!5833 = !DILocation(line: 43, column: 3, scope: !5812)
!5834 = !DILocation(line: 45, column: 3, scope: !5812)
!5835 = !DILocation(line: 43, column: 13, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5763, file: !209, line: 43, column: 7)
!5837 = !DILocation(line: 43, column: 7, scope: !5836)
!5838 = !DILocation(line: 43, column: 16, scope: !5836)
!5839 = !DILocation(line: 43, column: 7, scope: !5763)
!5840 = !DILocation(line: 43, column: 15, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !209, line: 45, column: 5)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !209, line: 44, column: 5)
!5843 = distinct !DILexicalBlock(scope: !5836, file: !209, line: 43, column: 22)
!5844 = !DILocation(line: 43, column: 5, scope: !5841)
!5845 = !DILocation(line: 43, column: 5, scope: !5843)
!5846 = !DILocation(line: 44, column: 3, scope: !5763)
!5847 = !DILocation(line: 46, column: 1, scope: !5754)
!5848 = distinct !DISubprogram(name: "skipto", scope: !209, file: !209, line: 63, type: !3351, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5849 = !DILocalVariable(name: "s", arg: 1, scope: !5848, file: !209, line: 63, type: !13)
!5850 = !DILocation(line: 0, scope: !5848)
!5851 = !DILocalVariable(name: "t", arg: 2, scope: !5848, file: !209, line: 63, type: !13)
!5852 = !DILocalVariable(name: "nest", scope: !5848, file: !209, line: 65, type: !6)
!5853 = !DILocation(line: 67, column: 9, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5855, file: !209, line: 67, column: 3)
!5855 = distinct !DILexicalBlock(scope: !5856, file: !209, line: 81, column: 3)
!5856 = distinct !DILexicalBlock(scope: !5848, file: !209, line: 80, column: 3)
!5857 = !DILocalVariable(name: "tmp", scope: !5848, file: !209, line: 67, type: !10)
!5858 = !DILocalVariable(name: "slength", scope: !5848, file: !209, line: 66, type: !6)
!5859 = !DILocation(line: 68, column: 13, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5855, file: !209, line: 68, column: 3)
!5861 = !DILocalVariable(name: "tmp___0", scope: !5848, file: !209, line: 69, type: !10)
!5862 = !DILocalVariable(name: "tlength", scope: !5848, file: !209, line: 68, type: !6)
!5863 = !DILocation(line: 69, column: 26, scope: !5855)
!5864 = !DILocation(line: 69, column: 40, scope: !5855)
!5865 = !DILocation(line: 69, column: 10, scope: !5855)
!5866 = !DILocation(line: 69, column: 49, scope: !5855)
!5867 = !DILocalVariable(name: "done", scope: !5848, file: !209, line: 70, type: !223)
!5868 = !DILocation(line: 70, column: 3, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !209, line: 72, column: 3)
!5870 = distinct !DILexicalBlock(scope: !5856, file: !209, line: 71, column: 3)
!5871 = !DILocation(line: 0, scope: !5856)
!5872 = !DILocation(line: 70, column: 13, scope: !5869)
!5873 = !DILocation(line: 70, column: 14, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 70, column: 9)
!5875 = distinct !DILexicalBlock(scope: !5869, file: !209, line: 70, column: 13)
!5876 = !DILocation(line: 70, column: 9, scope: !5875)
!5877 = !DILocation(line: 70, column: 7, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !209, line: 70, column: 21)
!5879 = !DILocation(line: 72, column: 10, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 72, column: 5)
!5881 = !DILocation(line: 72, column: 24, scope: !5880)
!5882 = !DILocation(line: 72, column: 35, scope: !5880)
!5883 = !DILocalVariable(name: "p", scope: !5848, file: !209, line: 71, type: !13)
!5884 = !DILocation(line: 73, column: 15, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5880, file: !209, line: 73, column: 5)
!5886 = !DILocalVariable(name: "tmp___1", scope: !5848, file: !209, line: 72, type: !6)
!5887 = !DILocation(line: 73, column: 17, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 73, column: 9)
!5889 = !DILocation(line: 73, column: 9, scope: !5875)
!5890 = !DILocation(line: 73, column: 21, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !209, line: 73, column: 11)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !209, line: 73, column: 23)
!5893 = !DILocation(line: 73, column: 17, scope: !5891)
!5894 = !DILocation(line: 73, column: 11, scope: !5891)
!5895 = !DILocation(line: 73, column: 32, scope: !5891)
!5896 = !DILocation(line: 73, column: 11, scope: !5892)
!5897 = !DILocation(line: 73, column: 9, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5891, file: !209, line: 73, column: 38)
!5899 = !DILocation(line: 73, column: 19, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5901, file: !209, line: 76, column: 9)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !209, line: 75, column: 9)
!5902 = distinct !DILexicalBlock(scope: !5891, file: !209, line: 74, column: 14)
!5903 = !DILocalVariable(name: "tmp___2", scope: !5848, file: !209, line: 73, type: !295)
!5904 = !DILocation(line: 73, column: 29, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5902, file: !209, line: 73, column: 13)
!5906 = !DILocation(line: 73, column: 50, scope: !5905)
!5907 = !DILocation(line: 73, column: 46, scope: !5905)
!5908 = !DILocation(line: 73, column: 40, scope: !5905)
!5909 = !DILocation(line: 73, column: 38, scope: !5905)
!5910 = !DILocation(line: 73, column: 27, scope: !5905)
!5911 = !DILocation(line: 73, column: 13, scope: !5905)
!5912 = !DILocation(line: 73, column: 62, scope: !5905)
!5913 = !DILocation(line: 73, column: 13, scope: !5902)
!5914 = !DILocation(line: 73, column: 70, scope: !5905)
!5915 = !DILocalVariable(name: "tmp___3", scope: !5848, file: !209, line: 74, type: !6)
!5916 = !DILocation(line: 73, column: 16, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5905, file: !209, line: 73, column: 70)
!5918 = !DILocation(line: 73, column: 23, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5917, file: !209, line: 73, column: 15)
!5920 = !DILocation(line: 73, column: 15, scope: !5917)
!5921 = !DILocalVariable(name: "tmp___4", scope: !5848, file: !209, line: 75, type: !6)
!5922 = !DILocation(line: 74, column: 11, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5919, file: !209, line: 73, column: 29)
!5924 = !DILocation(line: 0, scope: !5919)
!5925 = !DILocation(line: 75, column: 9, scope: !5917)
!5926 = !DILocation(line: 0, scope: !5905)
!5927 = !DILocation(line: 76, column: 5, scope: !5892)
!5928 = !DILocation(line: 0, scope: !5888)
!5929 = !DILocation(line: 76, column: 15, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5931, file: !209, line: 74, column: 5)
!5931 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 75, column: 5)
!5932 = !DILocalVariable(name: "tmp___5", scope: !5848, file: !209, line: 76, type: !6)
!5933 = !DILocation(line: 76, column: 17, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 76, column: 9)
!5935 = !DILocation(line: 76, column: 9, scope: !5875)
!5936 = !DILocation(line: 76, column: 21, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !209, line: 76, column: 11)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !209, line: 76, column: 23)
!5939 = !DILocation(line: 76, column: 17, scope: !5937)
!5940 = !DILocation(line: 76, column: 11, scope: !5937)
!5941 = !DILocation(line: 76, column: 32, scope: !5937)
!5942 = !DILocation(line: 76, column: 11, scope: !5938)
!5943 = !DILocation(line: 77, column: 14, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5937, file: !209, line: 76, column: 38)
!5945 = !DILocation(line: 78, column: 7, scope: !5944)
!5946 = !DILocation(line: 76, column: 19, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !209, line: 80, column: 9)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !209, line: 79, column: 9)
!5949 = distinct !DILexicalBlock(scope: !5937, file: !209, line: 78, column: 14)
!5950 = !DILocalVariable(name: "tmp___6", scope: !5848, file: !209, line: 77, type: !295)
!5951 = !DILocation(line: 76, column: 29, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !209, line: 76, column: 13)
!5953 = !DILocation(line: 76, column: 50, scope: !5952)
!5954 = !DILocation(line: 76, column: 46, scope: !5952)
!5955 = !DILocation(line: 76, column: 40, scope: !5952)
!5956 = !DILocation(line: 76, column: 38, scope: !5952)
!5957 = !DILocation(line: 76, column: 27, scope: !5952)
!5958 = !DILocation(line: 76, column: 13, scope: !5952)
!5959 = !DILocation(line: 76, column: 62, scope: !5952)
!5960 = !DILocation(line: 76, column: 13, scope: !5949)
!5961 = !DILocation(line: 77, column: 16, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5952, file: !209, line: 76, column: 70)
!5963 = !DILocation(line: 78, column: 9, scope: !5962)
!5964 = !DILocation(line: 0, scope: !5875)
!5965 = !DILocation(line: 0, scope: !5937)
!5966 = !DILocation(line: 80, column: 5, scope: !5938)
!5967 = !DILocation(line: 78, column: 31, scope: !5875)
!5968 = !DILocation(line: 78, column: 45, scope: !5875)
!5969 = !DILocation(line: 78, column: 56, scope: !5875)
!5970 = !DILocation(line: 78, column: 5, scope: !5875)
!5971 = !DILocation(line: 78, column: 19, scope: !5875)
!5972 = !DILocation(line: 78, column: 28, scope: !5875)
!5973 = !DILocation(line: 79, column: 25, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5875, file: !209, line: 79, column: 9)
!5975 = !DILocation(line: 79, column: 39, scope: !5974)
!5976 = !DILocation(line: 79, column: 9, scope: !5974)
!5977 = !DILocation(line: 79, column: 48, scope: !5974)
!5978 = !DILocation(line: 79, column: 9, scope: !5875)
!5979 = !DILocation(line: 81, column: 14, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !209, line: 80, column: 7)
!5981 = distinct !DILexicalBlock(scope: !5974, file: !209, line: 79, column: 80)
!5982 = !DILocalVariable(name: "temp", scope: !5848, file: !209, line: 78, type: !78)
!5983 = !DILocation(line: 82, column: 22, scope: !5980)
!5984 = !DILocation(line: 82, column: 36, scope: !5980)
!5985 = !DILocation(line: 82, column: 20, scope: !5980)
!5986 = !DILocation(line: 83, column: 12, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5980, file: !209, line: 83, column: 7)
!5988 = !DILocation(line: 83, column: 7, scope: !5987)
!5989 = !DILocation(line: 84, column: 21, scope: !5980)
!5990 = !DILocation(line: 85, column: 7, scope: !5981)
!5991 = distinct !{!5991, !5868, !5992}
!5992 = !DILocation(line: 87, column: 3, scope: !5869)
!5993 = !DILocation(line: 89, column: 3, scope: !5869)
!5994 = !DILocation(line: 88, column: 3, scope: !5856)
!5995 = distinct !DISubprogram(name: "usage", scope: !238, file: !238, line: 28, type: !5996, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{null}
!5998 = !DILocalVariable(name: "__cil_tmp1", scope: !5995, file: !238, line: 30, type: !27)
!5999 = !DILocation(line: 30, column: 9, scope: !5995)
!6000 = !DILocation(line: 31, column: 36, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !238, line: 34, column: 3)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !238, line: 33, column: 3)
!6003 = distinct !DILexicalBlock(scope: !5995, file: !238, line: 32, column: 3)
!6004 = !DILocation(line: 31, column: 3, scope: !6001)
!6005 = !DILocation(line: 37, column: 3, scope: !6003)
